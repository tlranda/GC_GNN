; ModuleID = 'syr2k_exhaustive/mmp_all_XL_965.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_965.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @polybench_alloc_data(i64 1440000, i32 8) #6
  %call917 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1769 = bitcast i8* %call1 to double*
  %polly.access.call1778 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2779 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1778, %call2
  %polly.access.call2798 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2798, %call1
  %2 = or i1 %0, %1
  %polly.access.call818 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call818, %call2
  %4 = icmp ule i8* %polly.access.call2798, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call818, %call1
  %8 = icmp ule i8* %polly.access.call1778, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header891, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1268 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1267 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1266 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1265 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1265, %scevgep1268
  %bound1 = icmp ult i8* %scevgep1267, %scevgep1266
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body3.i, label %vector.ph

vector.ph:                                        ; preds = %for.cond1.preheader.i
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %indvars.iv16.i, i32 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %13 = mul nuw nsw <4 x i64> %vec.ind, %broadcast.splat
  %14 = trunc <4 x i64> %13 to <4 x i32>
  %15 = add <4 x i32> %14, <i32 1, i32 1, i32 1, i32 1>
  %16 = urem <4 x i32> %15, <i32 1200, i32 1200, i32 1200, i32 1200>
  %17 = sitofp <4 x i32> %16 to <4 x double>
  %18 = fmul fast <4 x double> %17, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %19 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %index
  %20 = bitcast double* %19 to <4 x double>*
  store <4 x double> %18, <4 x double>* %20, align 8, !tbaa !2, !alias.scope !6, !noalias !9
  %21 = add <4 x i32> %14, <i32 2, i32 2, i32 2, i32 2>
  %22 = urem <4 x i32> %21, <i32 1000, i32 1000, i32 1000, i32 1000>
  %23 = sitofp <4 x i32> %22 to <4 x double>
  %24 = fmul fast <4 x double> %23, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %25 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv16.i, i64 %index
  %26 = bitcast double* %25 to <4 x double>*
  store <4 x double> %24, <4 x double>* %26, align 8, !tbaa !2, !alias.scope !9
  %index.next = add i64 %index, 4
  %vec.ind.next = add <4 x i64> %vec.ind, <i64 4, i64 4, i64 4, i64 4>
  %27 = icmp eq i64 %index.next, 1000
  br i1 %27, label %for.inc17.i, label %vector.body, !llvm.loop !11

for.body3.i:                                      ; preds = %for.cond1.preheader.i, %for.body3.i
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %for.body3.i ], [ 0, %for.cond1.preheader.i ]
  %28 = mul nuw nsw i64 %indvars.iv10.i, %indvars.iv16.i
  %29 = trunc i64 %28 to i32
  %30 = add i32 %29, 1
  %rem.i = urem i32 %30, 1200
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fmul fast double %conv.i, 0x3F4B4E81B4E81B4F
  %arrayidx6.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %indvars.iv10.i
  store double %div.i, double* %arrayidx6.i, align 8, !tbaa !2
  %31 = add i32 %29, 2
  %rem9.i = urem i32 %31, 1000
  %conv10.i = sitofp i32 %rem9.i to double
  %div12.i = fmul fast double %conv10.i, 1.000000e-03
  %arrayidx16.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv16.i, i64 %indvars.iv10.i
  store double %div12.i, double* %arrayidx16.i, align 8, !tbaa !2
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond15.not.i = icmp eq i64 %indvars.iv.next11.i, 1000
  br i1 %exitcond15.not.i, label %for.inc17.i, label %for.body3.i, !llvm.loop !14

for.inc17.i:                                      ; preds = %vector.body, %for.body3.i
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next17.i, 1200
  br i1 %exitcond18.not.i, label %vector.ph1272, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1272:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1279 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1280 = shufflevector <4 x i64> %broadcast.splatinsert1279, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1271

vector.body1271:                                  ; preds = %vector.body1271, %vector.ph1272
  %index1273 = phi i64 [ 0, %vector.ph1272 ], [ %index.next1274, %vector.body1271 ]
  %vec.ind1277 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1272 ], [ %vec.ind.next1278, %vector.body1271 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1277, %broadcast.splat1280
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call917, i64 %indvars.iv7.i, i64 %index1273
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1274 = add i64 %index1273, 4
  %vec.ind.next1278 = add <4 x i64> %vec.ind1277, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1274, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1271, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1271
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1272, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit952
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start541, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1335 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1335, label %for.body3.i46.preheader1484, label %vector.ph1336

vector.ph1336:                                    ; preds = %for.body3.i46.preheader
  %n.vec1338 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1334

vector.body1334:                                  ; preds = %vector.body1334, %vector.ph1336
  %index1339 = phi i64 [ 0, %vector.ph1336 ], [ %index.next1340, %vector.body1334 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call917, i64 %indvars.iv21.i, i64 %index1339
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1340 = add i64 %index1339, 4
  %46 = icmp eq i64 %index.next1340, %n.vec1338
  br i1 %46, label %middle.block1332, label %vector.body1334, !llvm.loop !18

middle.block1332:                                 ; preds = %vector.body1334
  %cmp.n1342 = icmp eq i64 %indvars.iv21.i, %n.vec1338
  br i1 %cmp.n1342, label %for.inc6.i, label %for.body3.i46.preheader1484

for.body3.i46.preheader1484:                      ; preds = %for.body3.i46.preheader, %middle.block1332
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1338, %middle.block1332 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1484, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1484 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call917, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1332, %for.cond1.preheader.i45
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next22.i, 1200
  br i1 %exitcond23.not.i, label %for.cond12.preheader.i, label %for.cond1.preheader.i45, !llvm.loop !20

for.cond12.preheader.i:                           ; preds = %for.inc6.i, %for.inc49.i
  %indvars.iv15.i = phi i64 [ %indvars.iv.next16.i, %for.inc49.i ], [ 0, %for.inc6.i ]
  %indvars.iv13.i = phi i64 [ %indvars.iv.next14.i, %for.inc49.i ], [ 1, %for.inc6.i ]
  br label %for.cond15.preheader.i

for.cond15.preheader.i:                           ; preds = %for.inc46.i, %for.cond12.preheader.i
  %indvars.iv10.i47 = phi i64 [ 0, %for.cond12.preheader.i ], [ %indvars.iv.next11.i51, %for.inc46.i ]
  %arrayidx26.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv15.i, i64 %indvars.iv10.i47
  %arrayidx36.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv15.i, i64 %indvars.iv10.i47
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i, %for.cond15.preheader.i
  %indvars.iv.i48 = phi i64 [ 0, %for.cond15.preheader.i ], [ %indvars.iv.next.i49, %for.body17.i ]
  %arrayidx21.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2, !llvm.access !21
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2, !llvm.access !22
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2, !llvm.access !22
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call917, i64 %indvars.iv15.i, i64 %indvars.iv.i48
  %52 = load double, double* %arrayidx41.i, align 8, !tbaa !2
  %reass.add.i = fadd fast double %mul37.i, %mul27.i
  %reass.mul.i = fmul fast double %reass.add.i, 1.500000e+00
  %add42.i = fadd fast double %reass.mul.i, %52
  store double %add42.i, double* %arrayidx41.i, align 8, !tbaa !2
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %indvars.iv13.i
  br i1 %exitcond.not.i50, label %for.inc46.i, label %for.body17.i, !llvm.loop !23

for.inc46.i:                                      ; preds = %for.body17.i
  %indvars.iv.next11.i51 = add nuw nsw i64 %indvars.iv10.i47, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 1000
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !33

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 1200
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !47

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting542
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start315, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1382 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1382, label %for.body3.i60.preheader1482, label %vector.ph1383

vector.ph1383:                                    ; preds = %for.body3.i60.preheader
  %n.vec1385 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1381

vector.body1381:                                  ; preds = %vector.body1381, %vector.ph1383
  %index1386 = phi i64 [ 0, %vector.ph1383 ], [ %index.next1387, %vector.body1381 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call917, i64 %indvars.iv21.i52, i64 %index1386
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1390 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1390, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1387 = add i64 %index1386, 4
  %57 = icmp eq i64 %index.next1387, %n.vec1385
  br i1 %57, label %middle.block1379, label %vector.body1381, !llvm.loop !64

middle.block1379:                                 ; preds = %vector.body1381
  %cmp.n1389 = icmp eq i64 %indvars.iv21.i52, %n.vec1385
  br i1 %cmp.n1389, label %for.inc6.i63, label %for.body3.i60.preheader1482

for.body3.i60.preheader1482:                      ; preds = %for.body3.i60.preheader, %middle.block1379
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1385, %middle.block1379 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1482, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1482 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call917, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1379, %for.cond1.preheader.i54
  %indvars.iv.next22.i61 = add nuw nsw i64 %indvars.iv21.i52, 1
  %exitcond23.not.i62 = icmp eq i64 %indvars.iv.next22.i61, 1200
  br i1 %exitcond23.not.i62, label %for.cond12.preheader.i66, label %for.cond1.preheader.i54, !llvm.loop !20

for.cond12.preheader.i66:                         ; preds = %for.inc6.i63, %for.inc49.i89
  %indvars.iv15.i64 = phi i64 [ %indvars.iv.next16.i86, %for.inc49.i89 ], [ 0, %for.inc6.i63 ]
  %indvars.iv13.i65 = phi i64 [ %indvars.iv.next14.i87, %for.inc49.i89 ], [ 1, %for.inc6.i63 ]
  br label %for.cond15.preheader.i70

for.cond15.preheader.i70:                         ; preds = %for.inc46.i85, %for.cond12.preheader.i66
  %indvars.iv10.i67 = phi i64 [ 0, %for.cond12.preheader.i66 ], [ %indvars.iv.next11.i83, %for.inc46.i85 ]
  %arrayidx26.i68 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv15.i64, i64 %indvars.iv10.i67
  %arrayidx36.i69 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv15.i64, i64 %indvars.iv10.i67
  br label %for.body17.i82

for.body17.i82:                                   ; preds = %for.body17.i82, %for.cond15.preheader.i70
  %indvars.iv.i71 = phi i64 [ 0, %for.cond15.preheader.i70 ], [ %indvars.iv.next.i80, %for.body17.i82 ]
  %arrayidx21.i72 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2, !llvm.access !21
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2, !llvm.access !22
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2, !llvm.access !22
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call917, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
  %63 = load double, double* %arrayidx41.i76, align 8, !tbaa !2
  %reass.add.i77 = fadd fast double %mul37.i75, %mul27.i73
  %reass.mul.i78 = fmul fast double %reass.add.i77, 1.500000e+00
  %add42.i79 = fadd fast double %reass.mul.i78, %63
  store double %add42.i79, double* %arrayidx41.i76, align 8, !tbaa !2
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i71, 1
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %indvars.iv13.i65
  br i1 %exitcond.not.i81, label %for.inc46.i85, label %for.body17.i82, !llvm.loop !23

for.inc46.i85:                                    ; preds = %for.body17.i82
  %indvars.iv.next11.i83 = add nuw nsw i64 %indvars.iv10.i67, 1
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 1000
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !33

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 1200
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !47

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting316
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1432 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1432, label %for.body3.i99.preheader1480, label %vector.ph1433

vector.ph1433:                                    ; preds = %for.body3.i99.preheader
  %n.vec1435 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1431

vector.body1431:                                  ; preds = %vector.body1431, %vector.ph1433
  %index1436 = phi i64 [ 0, %vector.ph1433 ], [ %index.next1437, %vector.body1431 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call917, i64 %indvars.iv21.i91, i64 %index1436
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1440 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1440, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1437 = add i64 %index1436, 4
  %68 = icmp eq i64 %index.next1437, %n.vec1435
  br i1 %68, label %middle.block1429, label %vector.body1431, !llvm.loop !66

middle.block1429:                                 ; preds = %vector.body1431
  %cmp.n1439 = icmp eq i64 %indvars.iv21.i91, %n.vec1435
  br i1 %cmp.n1439, label %for.inc6.i102, label %for.body3.i99.preheader1480

for.body3.i99.preheader1480:                      ; preds = %for.body3.i99.preheader, %middle.block1429
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1435, %middle.block1429 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1480, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1480 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call917, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1429, %for.cond1.preheader.i93
  %indvars.iv.next22.i100 = add nuw nsw i64 %indvars.iv21.i91, 1
  %exitcond23.not.i101 = icmp eq i64 %indvars.iv.next22.i100, 1200
  br i1 %exitcond23.not.i101, label %for.cond12.preheader.i105, label %for.cond1.preheader.i93, !llvm.loop !20

for.cond12.preheader.i105:                        ; preds = %for.inc6.i102, %for.inc49.i128
  %indvars.iv15.i103 = phi i64 [ %indvars.iv.next16.i125, %for.inc49.i128 ], [ 0, %for.inc6.i102 ]
  %indvars.iv13.i104 = phi i64 [ %indvars.iv.next14.i126, %for.inc49.i128 ], [ 1, %for.inc6.i102 ]
  br label %for.cond15.preheader.i109

for.cond15.preheader.i109:                        ; preds = %for.inc46.i124, %for.cond12.preheader.i105
  %indvars.iv10.i106 = phi i64 [ 0, %for.cond12.preheader.i105 ], [ %indvars.iv.next11.i122, %for.inc46.i124 ]
  %arrayidx26.i107 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv15.i103, i64 %indvars.iv10.i106
  %arrayidx36.i108 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv15.i103, i64 %indvars.iv10.i106
  br label %for.body17.i121

for.body17.i121:                                  ; preds = %for.body17.i121, %for.cond15.preheader.i109
  %indvars.iv.i110 = phi i64 [ 0, %for.cond15.preheader.i109 ], [ %indvars.iv.next.i119, %for.body17.i121 ]
  %arrayidx21.i111 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2, !llvm.access !21
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2, !llvm.access !22
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2, !llvm.access !22
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call917, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
  %74 = load double, double* %arrayidx41.i115, align 8, !tbaa !2
  %reass.add.i116 = fadd fast double %mul37.i114, %mul27.i112
  %reass.mul.i117 = fmul fast double %reass.add.i116, 1.500000e+00
  %add42.i118 = fadd fast double %reass.mul.i117, %74
  store double %add42.i118, double* %arrayidx41.i115, align 8, !tbaa !2
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i110, 1
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, %indvars.iv13.i104
  br i1 %exitcond.not.i120, label %for.inc46.i124, label %for.body17.i121, !llvm.loop !23

for.inc46.i124:                                   ; preds = %for.body17.i121
  %indvars.iv.next11.i122 = add nuw nsw i64 %indvars.iv10.i106, 1
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 1000
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !33

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 1200
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !47

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !68
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %79 = mul nuw nsw i64 %indvars.iv4.i, 1200
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i41 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i43, %if.end.i ]
  %80 = add nuw nsw i64 %indvars.iv.i41, %79
  %81 = trunc i64 %80 to i32
  %rem.i42 = urem i32 %81, 20
  %cmp5.i = icmp eq i32 %rem.i42, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call917, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !70

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !71

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall136 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1444 = phi i64 [ %indvar.next1445, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1444, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1446 = icmp ult i64 %88, 4
  br i1 %min.iters.check1446, label %polly.loop_header192.preheader, label %vector.ph1447

vector.ph1447:                                    ; preds = %polly.loop_header
  %n.vec1449 = and i64 %88, -4
  br label %vector.body1443

vector.body1443:                                  ; preds = %vector.body1443, %vector.ph1447
  %index1450 = phi i64 [ 0, %vector.ph1447 ], [ %index.next1451, %vector.body1443 ]
  %90 = shl nuw nsw i64 %index1450, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1454 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1454, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1451 = add i64 %index1450, 4
  %95 = icmp eq i64 %index.next1451, %n.vec1449
  br i1 %95, label %middle.block1441, label %vector.body1443, !llvm.loop !79

middle.block1441:                                 ; preds = %vector.body1443
  %cmp.n1453 = icmp eq i64 %88, %n.vec1449
  br i1 %cmp.n1453, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1441
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1449, %middle.block1441 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1441
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1159.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1445 = add i64 %indvar1444, 1
  br i1 %exitcond1159.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !72, !noalias !74
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1158.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1158.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit224
  %indvars.iv1149 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1150, %polly.loop_exit224 ]
  %indvars.iv1144 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1145, %polly.loop_exit224 ]
  %indvars.iv1136 = phi i64 [ 79, %polly.loop_header200.preheader ], [ %indvars.iv.next1137, %polly.loop_exit224 ]
  %indvars.iv = phi i64 [ 1200, %polly.loop_header200.preheader ], [ %indvars.iv.next, %polly.loop_exit224 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit224 ]
  %97 = mul nuw nsw i64 %polly.indvar203, 100
  %98 = lshr i64 %polly.indvar203, 2
  %99 = add nuw i64 %polly.indvar203, %98
  %100 = mul nuw nsw i64 %99, 80
  %101 = sub i64 %97, %100
  %102 = mul nsw i64 %polly.indvar203, -100
  %103 = add i64 %102, %100
  %104 = lshr i64 %polly.indvar203, 2
  %105 = add nuw i64 %polly.indvar203, %104
  %106 = mul nuw nsw i64 %105, 80
  %107 = sub i64 %indvars.iv1144, %106
  %108 = add i64 %indvars.iv1149, %106
  %109 = add i64 %indvars.iv1136, %106
  %110 = mul nuw nsw i64 %polly.indvar203, 100
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit214
  %111 = mul nsw i64 %polly.indvar203, -100
  %112 = mul nuw nsw i64 %polly.indvar203, 5
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit274
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -100
  %indvars.iv.next1137 = add nsw i64 %indvars.iv1136, -100
  %indvars.iv.next1145 = add nuw nsw i64 %indvars.iv1144, 100
  %indvars.iv.next1150 = add nsw i64 %indvars.iv1149, -100
  %exitcond1157.not = icmp eq i64 %polly.indvar_next204, 12
  br i1 %exitcond1157.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit214, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_exit214 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar209, 1200
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_header212
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1135.not = icmp eq i64 %polly.indvar_next210, 1000
  br i1 %exitcond1135.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_header212, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_header212 ]
  %113 = add nuw nsw i64 %polly.indvar215, %110
  %polly.access.mul.call2219 = mul nuw nsw i64 %113, 1000
  %polly.access.add.call2220 = add nuw nsw i64 %polly.access.mul.call2219, %polly.indvar209
  %polly.access.call2221 = getelementptr double, double* %polly.access.cast.call2779, i64 %polly.access.add.call2220
  %polly.access.call2221.load = load double, double* %polly.access.call2221, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar215, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2221.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next216, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header222:                             ; preds = %polly.loop_exit274, %polly.loop_exit208
  %indvar1458 = phi i64 [ %indvar.next1459, %polly.loop_exit274 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv1151 = phi i64 [ %indvars.iv.next1152, %polly.loop_exit274 ], [ %108, %polly.loop_exit208 ]
  %indvars.iv1146 = phi i64 [ %indvars.iv.next1147, %polly.loop_exit274 ], [ %107, %polly.loop_exit208 ]
  %indvars.iv1138 = phi i64 [ %indvars.iv.next1139, %polly.loop_exit274 ], [ %109, %polly.loop_exit208 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit274 ], [ %105, %polly.loop_exit208 ]
  %114 = mul nsw i64 %indvar1458, -80
  %115 = add i64 %101, %114
  %smax1460 = call i64 @llvm.smax.i64(i64 %115, i64 0)
  %116 = mul nuw nsw i64 %indvar1458, 80
  %117 = add i64 %103, %116
  %118 = add i64 %smax1460, %117
  %smax1148 = call i64 @llvm.smax.i64(i64 %indvars.iv1146, i64 0)
  %119 = add i64 %smax1148, %indvars.iv1151
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1138, i64 0)
  %120 = shl nsw i64 %polly.indvar225, 2
  %.not.not = icmp ugt i64 %120, %112
  %121 = mul nuw nsw i64 %polly.indvar225, 80
  %122 = add nsw i64 %121, %111
  %123 = icmp sgt i64 %122, 100
  %124 = select i1 %123, i64 %122, i64 100
  %125 = add nsw i64 %122, 79
  %polly.loop_guard.not = icmp sgt i64 %124, %125
  br i1 %.not.not, label %polly.loop_header228.us, label %polly.loop_header222.split

polly.loop_header228.us:                          ; preds = %polly.loop_header222, %polly.merge.us
  %polly.indvar231.us = phi i64 [ %polly.indvar_next232.us, %polly.merge.us ], [ 0, %polly.loop_header222 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar231.us, 1200
  br label %polly.loop_header234.us

polly.loop_header234.us:                          ; preds = %polly.loop_header228.us, %polly.loop_header234.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_header234.us ], [ 0, %polly.loop_header228.us ]
  %126 = add nuw nsw i64 %polly.indvar237.us, %110
  %polly.access.mul.call1241.us = mul nuw nsw i64 %126, 1000
  %polly.access.add.call1242.us = add nuw nsw i64 %polly.access.mul.call1241.us, %polly.indvar231.us
  %polly.access.call1243.us = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1242.us
  %polly.access.call1243.load.us = load double, double* %polly.access.call1243.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar237.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1243.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1142.not = icmp eq i64 %polly.indvar_next238.us, 100
  br i1 %exitcond1142.not, label %polly.loop_exit236.us, label %polly.loop_header234.us

polly.loop_exit236.us:                            ; preds = %polly.loop_header234.us
  br i1 %polly.loop_guard.not, label %polly.merge.us, label %polly.loop_header244.us

polly.loop_header244.us:                          ; preds = %polly.loop_exit236.us, %polly.loop_header244.us
  %polly.indvar247.us = phi i64 [ %polly.indvar_next248.us, %polly.loop_header244.us ], [ %124, %polly.loop_exit236.us ]
  %127 = add nuw nsw i64 %polly.indvar247.us, %110
  %polly.access.mul.call1251.us = mul nsw i64 %127, 1000
  %polly.access.add.call1252.us = add nuw nsw i64 %polly.access.mul.call1251.us, %polly.indvar231.us
  %polly.access.call1253.us = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1252.us
  %polly.access.call1253.load.us = load double, double* %polly.access.call1253.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1255.us = add nuw nsw i64 %polly.indvar247.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1256.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255.us
  store double %polly.access.call1253.load.us, double* %polly.access.Packed_MemRef_call1256.us, align 8
  %polly.indvar_next248.us = add nuw nsw i64 %polly.indvar247.us, 1
  %polly.loop_cond249.not.not.us = icmp slt i64 %polly.indvar247.us, %125
  br i1 %polly.loop_cond249.not.not.us, label %polly.loop_header244.us, label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.loop_header244.us, %polly.loop_exit236.us
  %polly.indvar_next232.us = add nuw nsw i64 %polly.indvar231.us, 1
  %exitcond1143.not = icmp eq i64 %polly.indvar_next232.us, 1000
  br i1 %exitcond1143.not, label %polly.loop_header272.preheader, label %polly.loop_header228.us

polly.loop_header222.split:                       ; preds = %polly.loop_header222
  %polly.loop_guard261 = icmp sgt i64 %122, -80
  br i1 %polly.loop_guard261, label %polly.loop_header228.us987, label %polly.loop_header272.preheader

polly.loop_header228.us987:                       ; preds = %polly.loop_header222.split, %polly.merge.loopexit973.us1031
  %polly.indvar231.us988 = phi i64 [ %polly.indvar_next232.us1023, %polly.merge.loopexit973.us1031 ], [ 0, %polly.loop_header222.split ]
  %polly.access.mul.Packed_MemRef_call1269.us1030 = mul nuw nsw i64 %polly.indvar231.us988, 1200
  br label %polly.loop_header258.us990

polly.loop_header258.us990:                       ; preds = %polly.loop_header228.us987, %polly.loop_header258.us990
  %polly.indvar262.us991 = phi i64 [ %polly.indvar_next263.us998, %polly.loop_header258.us990 ], [ 0, %polly.loop_header228.us987 ]
  %128 = add nuw nsw i64 %polly.indvar262.us991, %110
  %polly.access.mul.call1266.us992 = mul nuw nsw i64 %128, 1000
  %polly.access.add.call1267.us993 = add nuw nsw i64 %polly.access.mul.call1266.us992, %polly.indvar231.us988
  %polly.access.call1268.us994 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1267.us993
  %polly.access.call1268.load.us995 = load double, double* %polly.access.call1268.us994, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1270.us996 = add nuw nsw i64 %polly.indvar262.us991, %polly.access.mul.Packed_MemRef_call1269.us1030
  %polly.access.Packed_MemRef_call1271.us997 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1270.us996
  store double %polly.access.call1268.load.us995, double* %polly.access.Packed_MemRef_call1271.us997, align 8
  %polly.indvar_next263.us998 = add nuw nsw i64 %polly.indvar262.us991, 1
  %exitcond1140.not = icmp eq i64 %polly.indvar262.us991, %smax
  br i1 %exitcond1140.not, label %polly.merge.loopexit973.us1031, label %polly.loop_header258.us990

polly.merge.loopexit973.us1031:                   ; preds = %polly.loop_header258.us990
  %polly.indvar_next232.us1023 = add nuw nsw i64 %polly.indvar231.us988, 1
  %exitcond1141.not = icmp eq i64 %polly.indvar_next232.us1023, 1000
  br i1 %exitcond1141.not, label %polly.loop_header272.preheader, label %polly.loop_header228.us987

polly.loop_exit274:                               ; preds = %polly.loop_exit281.loopexit.us, %polly.loop_header272.preheader
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %polly.loop_cond227 = icmp ult i64 %polly.indvar225, 14
  %indvars.iv.next1139 = add i64 %indvars.iv1138, 80
  %indvars.iv.next1147 = add i64 %indvars.iv1146, -80
  %indvars.iv.next1152 = add i64 %indvars.iv1151, 80
  %indvar.next1459 = add i64 %indvar1458, 1
  br i1 %polly.loop_cond227, label %polly.loop_header222, label %polly.loop_exit224

polly.loop_header272.preheader:                   ; preds = %polly.merge.loopexit973.us1031, %polly.merge.us, %polly.loop_header222.split
  %129 = sub nsw i64 %110, %121
  %130 = icmp sgt i64 %129, 0
  %131 = select i1 %130, i64 %129, i64 0
  %polly.loop_guard282 = icmp slt i64 %131, 80
  br i1 %polly.loop_guard282, label %polly.loop_header272.us, label %polly.loop_exit274

polly.loop_header272.us:                          ; preds = %polly.loop_header272.preheader, %polly.loop_exit281.loopexit.us
  %polly.indvar275.us = phi i64 [ %polly.indvar_next276.us, %polly.loop_exit281.loopexit.us ], [ 0, %polly.loop_header272.preheader ]
  %polly.access.mul.Packed_MemRef_call1294.us = mul nuw nsw i64 %polly.indvar275.us, 1200
  br label %polly.loop_header279.us

polly.loop_header279.us:                          ; preds = %polly.loop_header272.us, %polly.loop_exit289.us
  %indvar1461 = phi i64 [ 0, %polly.loop_header272.us ], [ %indvar.next1462, %polly.loop_exit289.us ]
  %indvars.iv1153 = phi i64 [ %119, %polly.loop_header272.us ], [ %indvars.iv.next1154, %polly.loop_exit289.us ]
  %polly.indvar283.us = phi i64 [ %131, %polly.loop_header272.us ], [ %polly.indvar_next284.us, %polly.loop_exit289.us ]
  %132 = add i64 %118, %indvar1461
  %smin1463 = call i64 @llvm.smin.i64(i64 %132, i64 99)
  %133 = add nsw i64 %smin1463, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1153, i64 99)
  %134 = add nuw i64 %polly.indvar283.us, %121
  %135 = add i64 %134, %111
  %polly.loop_guard290.us1254 = icmp sgt i64 %135, -1
  br i1 %polly.loop_guard290.us1254, label %polly.loop_header287.preheader.us, label %polly.loop_exit289.us

polly.loop_header287.us:                          ; preds = %polly.loop_header287.us.preheader, %polly.loop_header287.us
  %polly.indvar291.us = phi i64 [ %polly.indvar_next292.us, %polly.loop_header287.us ], [ %polly.indvar291.us.ph, %polly.loop_header287.us.preheader ]
  %136 = add nuw nsw i64 %polly.indvar291.us, %110
  %polly.access.add.Packed_MemRef_call1295.us = add nuw nsw i64 %polly.indvar291.us, %polly.access.mul.Packed_MemRef_call1294.us
  %polly.access.Packed_MemRef_call1296.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1295.us
  %_p_scalar_297.us = load double, double* %polly.access.Packed_MemRef_call1296.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_301.us, %_p_scalar_297.us
  %polly.access.Packed_MemRef_call2304.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1295.us
  %_p_scalar_305.us = load double, double* %polly.access.Packed_MemRef_call2304.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_309.us, %_p_scalar_305.us
  %137 = shl i64 %136, 3
  %138 = add i64 %137, %139
  %scevgep310.us = getelementptr i8, i8* %call, i64 %138
  %scevgep310311.us = bitcast i8* %scevgep310.us to double*
  %_p_scalar_312.us = load double, double* %scevgep310311.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_312.us
  store double %p_add42.i118.us, double* %scevgep310311.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next292.us = add nuw nsw i64 %polly.indvar291.us, 1
  %exitcond1155.not = icmp eq i64 %polly.indvar291.us, %smin
  br i1 %exitcond1155.not, label %polly.loop_exit289.us, label %polly.loop_header287.us, !llvm.loop !84

polly.loop_exit289.us:                            ; preds = %polly.loop_header287.us, %middle.block1455, %polly.loop_header279.us
  %polly.indvar_next284.us = add nuw nsw i64 %polly.indvar283.us, 1
  %polly.loop_cond285.us = icmp ult i64 %polly.indvar283.us, 79
  %indvars.iv.next1154 = add i64 %indvars.iv1153, 1
  %indvar.next1462 = add i64 %indvar1461, 1
  br i1 %polly.loop_cond285.us, label %polly.loop_header279.us, label %polly.loop_exit281.loopexit.us

polly.loop_header287.preheader.us:                ; preds = %polly.loop_header279.us
  %polly.access.add.Packed_MemRef_call2299.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1294.us, %135
  %polly.access.Packed_MemRef_call2300.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2299.us
  %_p_scalar_301.us = load double, double* %polly.access.Packed_MemRef_call2300.us, align 8
  %polly.access.Packed_MemRef_call1308.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2299.us
  %_p_scalar_309.us = load double, double* %polly.access.Packed_MemRef_call1308.us, align 8
  %139 = mul i64 %134, 9600
  %min.iters.check1464 = icmp ult i64 %133, 4
  br i1 %min.iters.check1464, label %polly.loop_header287.us.preheader, label %vector.ph1465

vector.ph1465:                                    ; preds = %polly.loop_header287.preheader.us
  %n.vec1467 = and i64 %133, -4
  %broadcast.splatinsert1473 = insertelement <4 x double> poison, double %_p_scalar_301.us, i32 0
  %broadcast.splat1474 = shufflevector <4 x double> %broadcast.splatinsert1473, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1476 = insertelement <4 x double> poison, double %_p_scalar_309.us, i32 0
  %broadcast.splat1477 = shufflevector <4 x double> %broadcast.splatinsert1476, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1457

vector.body1457:                                  ; preds = %vector.body1457, %vector.ph1465
  %index1468 = phi i64 [ 0, %vector.ph1465 ], [ %index.next1469, %vector.body1457 ]
  %140 = add nuw nsw i64 %index1468, %110
  %141 = add nuw nsw i64 %index1468, %polly.access.mul.Packed_MemRef_call1294.us
  %142 = getelementptr double, double* %Packed_MemRef_call1, i64 %141
  %143 = bitcast double* %142 to <4 x double>*
  %wide.load1472 = load <4 x double>, <4 x double>* %143, align 8
  %144 = fmul fast <4 x double> %broadcast.splat1474, %wide.load1472
  %145 = getelementptr double, double* %Packed_MemRef_call2, i64 %141
  %146 = bitcast double* %145 to <4 x double>*
  %wide.load1475 = load <4 x double>, <4 x double>* %146, align 8
  %147 = fmul fast <4 x double> %broadcast.splat1477, %wide.load1475
  %148 = shl i64 %140, 3
  %149 = add i64 %148, %139
  %150 = getelementptr i8, i8* %call, i64 %149
  %151 = bitcast i8* %150 to <4 x double>*
  %wide.load1478 = load <4 x double>, <4 x double>* %151, align 8, !alias.scope !72, !noalias !74
  %152 = fadd fast <4 x double> %147, %144
  %153 = fmul fast <4 x double> %152, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %154 = fadd fast <4 x double> %153, %wide.load1478
  %155 = bitcast i8* %150 to <4 x double>*
  store <4 x double> %154, <4 x double>* %155, align 8, !alias.scope !72, !noalias !74
  %index.next1469 = add i64 %index1468, 4
  %156 = icmp eq i64 %index.next1469, %n.vec1467
  br i1 %156, label %middle.block1455, label %vector.body1457, !llvm.loop !85

middle.block1455:                                 ; preds = %vector.body1457
  %cmp.n1471 = icmp eq i64 %133, %n.vec1467
  br i1 %cmp.n1471, label %polly.loop_exit289.us, label %polly.loop_header287.us.preheader

polly.loop_header287.us.preheader:                ; preds = %polly.loop_header287.preheader.us, %middle.block1455
  %polly.indvar291.us.ph = phi i64 [ 0, %polly.loop_header287.preheader.us ], [ %n.vec1467, %middle.block1455 ]
  br label %polly.loop_header287.us

polly.loop_exit281.loopexit.us:                   ; preds = %polly.loop_exit289.us
  %polly.indvar_next276.us = add nuw nsw i64 %polly.indvar275.us, 1
  %exitcond1156.not = icmp eq i64 %polly.indvar_next276.us, 1000
  br i1 %exitcond1156.not, label %polly.loop_exit274, label %polly.loop_header272.us

polly.start315:                                   ; preds = %kernel_syr2k.exit
  %malloccall317 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall319 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header403

polly.exiting316:                                 ; preds = %polly.loop_exit444
  tail call void @free(i8* %malloccall317)
  tail call void @free(i8* %malloccall319)
  br label %kernel_syr2k.exit90

polly.loop_header403:                             ; preds = %polly.loop_exit411, %polly.start315
  %indvar1394 = phi i64 [ %indvar.next1395, %polly.loop_exit411 ], [ 0, %polly.start315 ]
  %polly.indvar406 = phi i64 [ %polly.indvar_next407, %polly.loop_exit411 ], [ 1, %polly.start315 ]
  %157 = add i64 %indvar1394, 1
  %158 = mul nuw nsw i64 %polly.indvar406, 9600
  %scevgep415 = getelementptr i8, i8* %call, i64 %158
  %min.iters.check1396 = icmp ult i64 %157, 4
  br i1 %min.iters.check1396, label %polly.loop_header409.preheader, label %vector.ph1397

vector.ph1397:                                    ; preds = %polly.loop_header403
  %n.vec1399 = and i64 %157, -4
  br label %vector.body1393

vector.body1393:                                  ; preds = %vector.body1393, %vector.ph1397
  %index1400 = phi i64 [ 0, %vector.ph1397 ], [ %index.next1401, %vector.body1393 ]
  %159 = shl nuw nsw i64 %index1400, 3
  %160 = getelementptr i8, i8* %scevgep415, i64 %159
  %161 = bitcast i8* %160 to <4 x double>*
  %wide.load1404 = load <4 x double>, <4 x double>* %161, align 8, !alias.scope !86, !noalias !88
  %162 = fmul fast <4 x double> %wide.load1404, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %163 = bitcast i8* %160 to <4 x double>*
  store <4 x double> %162, <4 x double>* %163, align 8, !alias.scope !86, !noalias !88
  %index.next1401 = add i64 %index1400, 4
  %164 = icmp eq i64 %index.next1401, %n.vec1399
  br i1 %164, label %middle.block1391, label %vector.body1393, !llvm.loop !93

middle.block1391:                                 ; preds = %vector.body1393
  %cmp.n1403 = icmp eq i64 %157, %n.vec1399
  br i1 %cmp.n1403, label %polly.loop_exit411, label %polly.loop_header409.preheader

polly.loop_header409.preheader:                   ; preds = %polly.loop_header403, %middle.block1391
  %polly.indvar412.ph = phi i64 [ 0, %polly.loop_header403 ], [ %n.vec1399, %middle.block1391 ]
  br label %polly.loop_header409

polly.loop_exit411:                               ; preds = %polly.loop_header409, %middle.block1391
  %polly.indvar_next407 = add nuw nsw i64 %polly.indvar406, 1
  %exitcond1189.not = icmp eq i64 %polly.indvar_next407, 1200
  %indvar.next1395 = add i64 %indvar1394, 1
  br i1 %exitcond1189.not, label %polly.loop_header419.preheader, label %polly.loop_header403

polly.loop_header419.preheader:                   ; preds = %polly.loop_exit411
  %Packed_MemRef_call1318 = bitcast i8* %malloccall317 to double*
  %Packed_MemRef_call2320 = bitcast i8* %malloccall319 to double*
  br label %polly.loop_header419

polly.loop_header409:                             ; preds = %polly.loop_header409.preheader, %polly.loop_header409
  %polly.indvar412 = phi i64 [ %polly.indvar_next413, %polly.loop_header409 ], [ %polly.indvar412.ph, %polly.loop_header409.preheader ]
  %165 = shl nuw nsw i64 %polly.indvar412, 3
  %scevgep416 = getelementptr i8, i8* %scevgep415, i64 %165
  %scevgep416417 = bitcast i8* %scevgep416 to double*
  %_p_scalar_418 = load double, double* %scevgep416417, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_418, 1.200000e+00
  store double %p_mul.i57, double* %scevgep416417, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next413 = add nuw nsw i64 %polly.indvar412, 1
  %exitcond1188.not = icmp eq i64 %polly.indvar_next413, %polly.indvar406
  br i1 %exitcond1188.not, label %polly.loop_exit411, label %polly.loop_header409, !llvm.loop !94

polly.loop_header419:                             ; preds = %polly.loop_header419.preheader, %polly.loop_exit444
  %indvars.iv1178 = phi i64 [ 0, %polly.loop_header419.preheader ], [ %indvars.iv.next1179, %polly.loop_exit444 ]
  %indvars.iv1173 = phi i64 [ 0, %polly.loop_header419.preheader ], [ %indvars.iv.next1174, %polly.loop_exit444 ]
  %indvars.iv1164 = phi i64 [ 79, %polly.loop_header419.preheader ], [ %indvars.iv.next1165, %polly.loop_exit444 ]
  %indvars.iv1160 = phi i64 [ 1200, %polly.loop_header419.preheader ], [ %indvars.iv.next1161, %polly.loop_exit444 ]
  %polly.indvar422 = phi i64 [ 0, %polly.loop_header419.preheader ], [ %polly.indvar_next423, %polly.loop_exit444 ]
  %166 = mul nuw nsw i64 %polly.indvar422, 100
  %167 = lshr i64 %polly.indvar422, 2
  %168 = add nuw i64 %polly.indvar422, %167
  %169 = mul nuw nsw i64 %168, 80
  %170 = sub i64 %166, %169
  %171 = mul nsw i64 %polly.indvar422, -100
  %172 = add i64 %171, %169
  %173 = lshr i64 %polly.indvar422, 2
  %174 = add nuw i64 %polly.indvar422, %173
  %175 = mul nuw nsw i64 %174, 80
  %176 = sub i64 %indvars.iv1173, %175
  %177 = add i64 %indvars.iv1178, %175
  %178 = add i64 %indvars.iv1164, %175
  %179 = mul nuw nsw i64 %polly.indvar422, 100
  br label %polly.loop_header425

polly.loop_exit427:                               ; preds = %polly.loop_exit433
  %180 = mul nsw i64 %polly.indvar422, -100
  %181 = mul nuw nsw i64 %polly.indvar422, 5
  br label %polly.loop_header442

polly.loop_exit444:                               ; preds = %polly.loop_exit500
  %polly.indvar_next423 = add nuw nsw i64 %polly.indvar422, 1
  %indvars.iv.next1161 = add nsw i64 %indvars.iv1160, -100
  %indvars.iv.next1165 = add nsw i64 %indvars.iv1164, -100
  %indvars.iv.next1174 = add nuw nsw i64 %indvars.iv1173, 100
  %indvars.iv.next1179 = add nsw i64 %indvars.iv1178, -100
  %exitcond1187.not = icmp eq i64 %polly.indvar_next423, 12
  br i1 %exitcond1187.not, label %polly.exiting316, label %polly.loop_header419

polly.loop_header425:                             ; preds = %polly.loop_exit433, %polly.loop_header419
  %polly.indvar428 = phi i64 [ 0, %polly.loop_header419 ], [ %polly.indvar_next429, %polly.loop_exit433 ]
  %polly.access.mul.Packed_MemRef_call2320 = mul nuw nsw i64 %polly.indvar428, 1200
  br label %polly.loop_header431

polly.loop_exit433:                               ; preds = %polly.loop_header431
  %polly.indvar_next429 = add nuw nsw i64 %polly.indvar428, 1
  %exitcond1163.not = icmp eq i64 %polly.indvar_next429, 1000
  br i1 %exitcond1163.not, label %polly.loop_exit427, label %polly.loop_header425

polly.loop_header431:                             ; preds = %polly.loop_header431, %polly.loop_header425
  %polly.indvar434 = phi i64 [ 0, %polly.loop_header425 ], [ %polly.indvar_next435, %polly.loop_header431 ]
  %182 = add nuw nsw i64 %polly.indvar434, %179
  %polly.access.mul.call2438 = mul nuw nsw i64 %182, 1000
  %polly.access.add.call2439 = add nuw nsw i64 %polly.access.mul.call2438, %polly.indvar428
  %polly.access.call2440 = getelementptr double, double* %polly.access.cast.call2779, i64 %polly.access.add.call2439
  %polly.access.call2440.load = load double, double* %polly.access.call2440, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2320 = add nuw nsw i64 %polly.indvar434, %polly.access.mul.Packed_MemRef_call2320
  %polly.access.Packed_MemRef_call2320 = getelementptr double, double* %Packed_MemRef_call2320, i64 %polly.access.add.Packed_MemRef_call2320
  store double %polly.access.call2440.load, double* %polly.access.Packed_MemRef_call2320, align 8
  %polly.indvar_next435 = add nuw nsw i64 %polly.indvar434, 1
  %exitcond1162.not = icmp eq i64 %polly.indvar_next435, %indvars.iv1160
  br i1 %exitcond1162.not, label %polly.loop_exit433, label %polly.loop_header431

polly.loop_header442:                             ; preds = %polly.loop_exit500, %polly.loop_exit427
  %indvar1408 = phi i64 [ %indvar.next1409, %polly.loop_exit500 ], [ 0, %polly.loop_exit427 ]
  %indvars.iv1180 = phi i64 [ %indvars.iv.next1181, %polly.loop_exit500 ], [ %177, %polly.loop_exit427 ]
  %indvars.iv1175 = phi i64 [ %indvars.iv.next1176, %polly.loop_exit500 ], [ %176, %polly.loop_exit427 ]
  %indvars.iv1166 = phi i64 [ %indvars.iv.next1167, %polly.loop_exit500 ], [ %178, %polly.loop_exit427 ]
  %polly.indvar445 = phi i64 [ %polly.indvar_next446, %polly.loop_exit500 ], [ %174, %polly.loop_exit427 ]
  %183 = mul nsw i64 %indvar1408, -80
  %184 = add i64 %170, %183
  %smax1410 = call i64 @llvm.smax.i64(i64 %184, i64 0)
  %185 = mul nuw nsw i64 %indvar1408, 80
  %186 = add i64 %172, %185
  %187 = add i64 %smax1410, %186
  %smax1177 = call i64 @llvm.smax.i64(i64 %indvars.iv1175, i64 0)
  %188 = add i64 %smax1177, %indvars.iv1180
  %smax1168 = call i64 @llvm.smax.i64(i64 %indvars.iv1166, i64 0)
  %189 = shl nsw i64 %polly.indvar445, 2
  %.not.not971 = icmp ugt i64 %189, %181
  %190 = mul nuw nsw i64 %polly.indvar445, 80
  %191 = add nsw i64 %190, %180
  %192 = icmp sgt i64 %191, 100
  %193 = select i1 %192, i64 %191, i64 100
  %194 = add nsw i64 %191, 79
  %polly.loop_guard472.not = icmp sgt i64 %193, %194
  br i1 %.not.not971, label %polly.loop_header448.us, label %polly.loop_header442.split

polly.loop_header448.us:                          ; preds = %polly.loop_header442, %polly.merge455.us
  %polly.indvar451.us = phi i64 [ %polly.indvar_next452.us, %polly.merge455.us ], [ 0, %polly.loop_header442 ]
  %polly.access.mul.Packed_MemRef_call1318.us = mul nuw nsw i64 %polly.indvar451.us, 1200
  br label %polly.loop_header458.us

polly.loop_header458.us:                          ; preds = %polly.loop_header448.us, %polly.loop_header458.us
  %polly.indvar461.us = phi i64 [ %polly.indvar_next462.us, %polly.loop_header458.us ], [ 0, %polly.loop_header448.us ]
  %195 = add nuw nsw i64 %polly.indvar461.us, %179
  %polly.access.mul.call1465.us = mul nuw nsw i64 %195, 1000
  %polly.access.add.call1466.us = add nuw nsw i64 %polly.access.mul.call1465.us, %polly.indvar451.us
  %polly.access.call1467.us = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1466.us
  %polly.access.call1467.load.us = load double, double* %polly.access.call1467.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1318.us = add nuw nsw i64 %polly.indvar461.us, %polly.access.mul.Packed_MemRef_call1318.us
  %polly.access.Packed_MemRef_call1318.us = getelementptr double, double* %Packed_MemRef_call1318, i64 %polly.access.add.Packed_MemRef_call1318.us
  store double %polly.access.call1467.load.us, double* %polly.access.Packed_MemRef_call1318.us, align 8
  %polly.indvar_next462.us = add nuw nsw i64 %polly.indvar461.us, 1
  %exitcond1171.not = icmp eq i64 %polly.indvar_next462.us, 100
  br i1 %exitcond1171.not, label %polly.loop_exit460.us, label %polly.loop_header458.us

polly.loop_exit460.us:                            ; preds = %polly.loop_header458.us
  br i1 %polly.loop_guard472.not, label %polly.merge455.us, label %polly.loop_header469.us

polly.loop_header469.us:                          ; preds = %polly.loop_exit460.us, %polly.loop_header469.us
  %polly.indvar473.us = phi i64 [ %polly.indvar_next474.us, %polly.loop_header469.us ], [ %193, %polly.loop_exit460.us ]
  %196 = add nuw nsw i64 %polly.indvar473.us, %179
  %polly.access.mul.call1477.us = mul nsw i64 %196, 1000
  %polly.access.add.call1478.us = add nuw nsw i64 %polly.access.mul.call1477.us, %polly.indvar451.us
  %polly.access.call1479.us = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1478.us
  %polly.access.call1479.load.us = load double, double* %polly.access.call1479.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1318481.us = add nuw nsw i64 %polly.indvar473.us, %polly.access.mul.Packed_MemRef_call1318.us
  %polly.access.Packed_MemRef_call1318482.us = getelementptr double, double* %Packed_MemRef_call1318, i64 %polly.access.add.Packed_MemRef_call1318481.us
  store double %polly.access.call1479.load.us, double* %polly.access.Packed_MemRef_call1318482.us, align 8
  %polly.indvar_next474.us = add nuw nsw i64 %polly.indvar473.us, 1
  %polly.loop_cond475.not.not.us = icmp slt i64 %polly.indvar473.us, %194
  br i1 %polly.loop_cond475.not.not.us, label %polly.loop_header469.us, label %polly.merge455.us

polly.merge455.us:                                ; preds = %polly.loop_header469.us, %polly.loop_exit460.us
  %polly.indvar_next452.us = add nuw nsw i64 %polly.indvar451.us, 1
  %exitcond1172.not = icmp eq i64 %polly.indvar_next452.us, 1000
  br i1 %exitcond1172.not, label %polly.loop_header498.preheader, label %polly.loop_header448.us

polly.loop_header442.split:                       ; preds = %polly.loop_header442
  %polly.loop_guard487 = icmp sgt i64 %191, -80
  br i1 %polly.loop_guard487, label %polly.loop_header448.us1032, label %polly.loop_header498.preheader

polly.loop_header448.us1032:                      ; preds = %polly.loop_header442.split, %polly.merge455.loopexit974.us1076
  %polly.indvar451.us1033 = phi i64 [ %polly.indvar_next452.us1068, %polly.merge455.loopexit974.us1076 ], [ 0, %polly.loop_header442.split ]
  %polly.access.mul.Packed_MemRef_call1318495.us1075 = mul nuw nsw i64 %polly.indvar451.us1033, 1200
  br label %polly.loop_header484.us1035

polly.loop_header484.us1035:                      ; preds = %polly.loop_header448.us1032, %polly.loop_header484.us1035
  %polly.indvar488.us1036 = phi i64 [ %polly.indvar_next489.us1043, %polly.loop_header484.us1035 ], [ 0, %polly.loop_header448.us1032 ]
  %197 = add nuw nsw i64 %polly.indvar488.us1036, %179
  %polly.access.mul.call1492.us1037 = mul nuw nsw i64 %197, 1000
  %polly.access.add.call1493.us1038 = add nuw nsw i64 %polly.access.mul.call1492.us1037, %polly.indvar451.us1033
  %polly.access.call1494.us1039 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1493.us1038
  %polly.access.call1494.load.us1040 = load double, double* %polly.access.call1494.us1039, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1318496.us1041 = add nuw nsw i64 %polly.indvar488.us1036, %polly.access.mul.Packed_MemRef_call1318495.us1075
  %polly.access.Packed_MemRef_call1318497.us1042 = getelementptr double, double* %Packed_MemRef_call1318, i64 %polly.access.add.Packed_MemRef_call1318496.us1041
  store double %polly.access.call1494.load.us1040, double* %polly.access.Packed_MemRef_call1318497.us1042, align 8
  %polly.indvar_next489.us1043 = add nuw nsw i64 %polly.indvar488.us1036, 1
  %exitcond1169.not = icmp eq i64 %polly.indvar488.us1036, %smax1168
  br i1 %exitcond1169.not, label %polly.merge455.loopexit974.us1076, label %polly.loop_header484.us1035

polly.merge455.loopexit974.us1076:                ; preds = %polly.loop_header484.us1035
  %polly.indvar_next452.us1068 = add nuw nsw i64 %polly.indvar451.us1033, 1
  %exitcond1170.not = icmp eq i64 %polly.indvar_next452.us1068, 1000
  br i1 %exitcond1170.not, label %polly.loop_header498.preheader, label %polly.loop_header448.us1032

polly.loop_exit500:                               ; preds = %polly.loop_exit507.loopexit.us, %polly.loop_header498.preheader
  %polly.indvar_next446 = add nuw nsw i64 %polly.indvar445, 1
  %polly.loop_cond447 = icmp ult i64 %polly.indvar445, 14
  %indvars.iv.next1167 = add i64 %indvars.iv1166, 80
  %indvars.iv.next1176 = add i64 %indvars.iv1175, -80
  %indvars.iv.next1181 = add i64 %indvars.iv1180, 80
  %indvar.next1409 = add i64 %indvar1408, 1
  br i1 %polly.loop_cond447, label %polly.loop_header442, label %polly.loop_exit444

polly.loop_header498.preheader:                   ; preds = %polly.merge455.loopexit974.us1076, %polly.merge455.us, %polly.loop_header442.split
  %198 = sub nsw i64 %179, %190
  %199 = icmp sgt i64 %198, 0
  %200 = select i1 %199, i64 %198, i64 0
  %polly.loop_guard508 = icmp slt i64 %200, 80
  br i1 %polly.loop_guard508, label %polly.loop_header498.us, label %polly.loop_exit500

polly.loop_header498.us:                          ; preds = %polly.loop_header498.preheader, %polly.loop_exit507.loopexit.us
  %polly.indvar501.us = phi i64 [ %polly.indvar_next502.us, %polly.loop_exit507.loopexit.us ], [ 0, %polly.loop_header498.preheader ]
  %polly.access.mul.Packed_MemRef_call1318520.us = mul nuw nsw i64 %polly.indvar501.us, 1200
  br label %polly.loop_header505.us

polly.loop_header505.us:                          ; preds = %polly.loop_header498.us, %polly.loop_exit515.us
  %indvar1411 = phi i64 [ 0, %polly.loop_header498.us ], [ %indvar.next1412, %polly.loop_exit515.us ]
  %indvars.iv1182 = phi i64 [ %188, %polly.loop_header498.us ], [ %indvars.iv.next1183, %polly.loop_exit515.us ]
  %polly.indvar509.us = phi i64 [ %200, %polly.loop_header498.us ], [ %polly.indvar_next510.us, %polly.loop_exit515.us ]
  %201 = add i64 %187, %indvar1411
  %smin1413 = call i64 @llvm.smin.i64(i64 %201, i64 99)
  %202 = add nsw i64 %smin1413, 1
  %smin1184 = call i64 @llvm.smin.i64(i64 %indvars.iv1182, i64 99)
  %203 = add nuw i64 %polly.indvar509.us, %190
  %204 = add i64 %203, %180
  %polly.loop_guard516.us1255 = icmp sgt i64 %204, -1
  br i1 %polly.loop_guard516.us1255, label %polly.loop_header513.preheader.us, label %polly.loop_exit515.us

polly.loop_header513.us:                          ; preds = %polly.loop_header513.us.preheader, %polly.loop_header513.us
  %polly.indvar517.us = phi i64 [ %polly.indvar_next518.us, %polly.loop_header513.us ], [ %polly.indvar517.us.ph, %polly.loop_header513.us.preheader ]
  %205 = add nuw nsw i64 %polly.indvar517.us, %179
  %polly.access.add.Packed_MemRef_call1318521.us = add nuw nsw i64 %polly.indvar517.us, %polly.access.mul.Packed_MemRef_call1318520.us
  %polly.access.Packed_MemRef_call1318522.us = getelementptr double, double* %Packed_MemRef_call1318, i64 %polly.access.add.Packed_MemRef_call1318521.us
  %_p_scalar_523.us = load double, double* %polly.access.Packed_MemRef_call1318522.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_527.us, %_p_scalar_523.us
  %polly.access.Packed_MemRef_call2320530.us = getelementptr double, double* %Packed_MemRef_call2320, i64 %polly.access.add.Packed_MemRef_call1318521.us
  %_p_scalar_531.us = load double, double* %polly.access.Packed_MemRef_call2320530.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_535.us, %_p_scalar_531.us
  %206 = shl i64 %205, 3
  %207 = add i64 %206, %208
  %scevgep536.us = getelementptr i8, i8* %call, i64 %207
  %scevgep536537.us = bitcast i8* %scevgep536.us to double*
  %_p_scalar_538.us = load double, double* %scevgep536537.us, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_538.us
  store double %p_add42.i79.us, double* %scevgep536537.us, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next518.us = add nuw nsw i64 %polly.indvar517.us, 1
  %exitcond1185.not = icmp eq i64 %polly.indvar517.us, %smin1184
  br i1 %exitcond1185.not, label %polly.loop_exit515.us, label %polly.loop_header513.us, !llvm.loop !97

polly.loop_exit515.us:                            ; preds = %polly.loop_header513.us, %middle.block1405, %polly.loop_header505.us
  %polly.indvar_next510.us = add nuw nsw i64 %polly.indvar509.us, 1
  %polly.loop_cond511.us = icmp ult i64 %polly.indvar509.us, 79
  %indvars.iv.next1183 = add i64 %indvars.iv1182, 1
  %indvar.next1412 = add i64 %indvar1411, 1
  br i1 %polly.loop_cond511.us, label %polly.loop_header505.us, label %polly.loop_exit507.loopexit.us

polly.loop_header513.preheader.us:                ; preds = %polly.loop_header505.us
  %polly.access.add.Packed_MemRef_call2320525.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1318520.us, %204
  %polly.access.Packed_MemRef_call2320526.us = getelementptr double, double* %Packed_MemRef_call2320, i64 %polly.access.add.Packed_MemRef_call2320525.us
  %_p_scalar_527.us = load double, double* %polly.access.Packed_MemRef_call2320526.us, align 8
  %polly.access.Packed_MemRef_call1318534.us = getelementptr double, double* %Packed_MemRef_call1318, i64 %polly.access.add.Packed_MemRef_call2320525.us
  %_p_scalar_535.us = load double, double* %polly.access.Packed_MemRef_call1318534.us, align 8
  %208 = mul i64 %203, 9600
  %min.iters.check1414 = icmp ult i64 %202, 4
  br i1 %min.iters.check1414, label %polly.loop_header513.us.preheader, label %vector.ph1415

vector.ph1415:                                    ; preds = %polly.loop_header513.preheader.us
  %n.vec1417 = and i64 %202, -4
  %broadcast.splatinsert1423 = insertelement <4 x double> poison, double %_p_scalar_527.us, i32 0
  %broadcast.splat1424 = shufflevector <4 x double> %broadcast.splatinsert1423, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1426 = insertelement <4 x double> poison, double %_p_scalar_535.us, i32 0
  %broadcast.splat1427 = shufflevector <4 x double> %broadcast.splatinsert1426, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1407

vector.body1407:                                  ; preds = %vector.body1407, %vector.ph1415
  %index1418 = phi i64 [ 0, %vector.ph1415 ], [ %index.next1419, %vector.body1407 ]
  %209 = add nuw nsw i64 %index1418, %179
  %210 = add nuw nsw i64 %index1418, %polly.access.mul.Packed_MemRef_call1318520.us
  %211 = getelementptr double, double* %Packed_MemRef_call1318, i64 %210
  %212 = bitcast double* %211 to <4 x double>*
  %wide.load1422 = load <4 x double>, <4 x double>* %212, align 8
  %213 = fmul fast <4 x double> %broadcast.splat1424, %wide.load1422
  %214 = getelementptr double, double* %Packed_MemRef_call2320, i64 %210
  %215 = bitcast double* %214 to <4 x double>*
  %wide.load1425 = load <4 x double>, <4 x double>* %215, align 8
  %216 = fmul fast <4 x double> %broadcast.splat1427, %wide.load1425
  %217 = shl i64 %209, 3
  %218 = add i64 %217, %208
  %219 = getelementptr i8, i8* %call, i64 %218
  %220 = bitcast i8* %219 to <4 x double>*
  %wide.load1428 = load <4 x double>, <4 x double>* %220, align 8, !alias.scope !86, !noalias !88
  %221 = fadd fast <4 x double> %216, %213
  %222 = fmul fast <4 x double> %221, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %223 = fadd fast <4 x double> %222, %wide.load1428
  %224 = bitcast i8* %219 to <4 x double>*
  store <4 x double> %223, <4 x double>* %224, align 8, !alias.scope !86, !noalias !88
  %index.next1419 = add i64 %index1418, 4
  %225 = icmp eq i64 %index.next1419, %n.vec1417
  br i1 %225, label %middle.block1405, label %vector.body1407, !llvm.loop !98

middle.block1405:                                 ; preds = %vector.body1407
  %cmp.n1421 = icmp eq i64 %202, %n.vec1417
  br i1 %cmp.n1421, label %polly.loop_exit515.us, label %polly.loop_header513.us.preheader

polly.loop_header513.us.preheader:                ; preds = %polly.loop_header513.preheader.us, %middle.block1405
  %polly.indvar517.us.ph = phi i64 [ 0, %polly.loop_header513.preheader.us ], [ %n.vec1417, %middle.block1405 ]
  br label %polly.loop_header513.us

polly.loop_exit507.loopexit.us:                   ; preds = %polly.loop_exit515.us
  %polly.indvar_next502.us = add nuw nsw i64 %polly.indvar501.us, 1
  %exitcond1186.not = icmp eq i64 %polly.indvar_next502.us, 1000
  br i1 %exitcond1186.not, label %polly.loop_exit500, label %polly.loop_header498.us

polly.start541:                                   ; preds = %init_array.exit
  %malloccall543 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall545 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header629

polly.exiting542:                                 ; preds = %polly.loop_exit670
  tail call void @free(i8* %malloccall543)
  tail call void @free(i8* %malloccall545)
  br label %kernel_syr2k.exit

polly.loop_header629:                             ; preds = %polly.loop_exit637, %polly.start541
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit637 ], [ 0, %polly.start541 ]
  %polly.indvar632 = phi i64 [ %polly.indvar_next633, %polly.loop_exit637 ], [ 1, %polly.start541 ]
  %226 = add i64 %indvar, 1
  %227 = mul nuw nsw i64 %polly.indvar632, 9600
  %scevgep641 = getelementptr i8, i8* %call, i64 %227
  %min.iters.check1346 = icmp ult i64 %226, 4
  br i1 %min.iters.check1346, label %polly.loop_header635.preheader, label %vector.ph1347

vector.ph1347:                                    ; preds = %polly.loop_header629
  %n.vec1349 = and i64 %226, -4
  br label %vector.body1345

vector.body1345:                                  ; preds = %vector.body1345, %vector.ph1347
  %index1350 = phi i64 [ 0, %vector.ph1347 ], [ %index.next1351, %vector.body1345 ]
  %228 = shl nuw nsw i64 %index1350, 3
  %229 = getelementptr i8, i8* %scevgep641, i64 %228
  %230 = bitcast i8* %229 to <4 x double>*
  %wide.load1354 = load <4 x double>, <4 x double>* %230, align 8, !alias.scope !99, !noalias !101
  %231 = fmul fast <4 x double> %wide.load1354, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %232 = bitcast i8* %229 to <4 x double>*
  store <4 x double> %231, <4 x double>* %232, align 8, !alias.scope !99, !noalias !101
  %index.next1351 = add i64 %index1350, 4
  %233 = icmp eq i64 %index.next1351, %n.vec1349
  br i1 %233, label %middle.block1343, label %vector.body1345, !llvm.loop !106

middle.block1343:                                 ; preds = %vector.body1345
  %cmp.n1353 = icmp eq i64 %226, %n.vec1349
  br i1 %cmp.n1353, label %polly.loop_exit637, label %polly.loop_header635.preheader

polly.loop_header635.preheader:                   ; preds = %polly.loop_header629, %middle.block1343
  %polly.indvar638.ph = phi i64 [ 0, %polly.loop_header629 ], [ %n.vec1349, %middle.block1343 ]
  br label %polly.loop_header635

polly.loop_exit637:                               ; preds = %polly.loop_header635, %middle.block1343
  %polly.indvar_next633 = add nuw nsw i64 %polly.indvar632, 1
  %exitcond1219.not = icmp eq i64 %polly.indvar_next633, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1219.not, label %polly.loop_header645.preheader, label %polly.loop_header629

polly.loop_header645.preheader:                   ; preds = %polly.loop_exit637
  %Packed_MemRef_call1544 = bitcast i8* %malloccall543 to double*
  %Packed_MemRef_call2546 = bitcast i8* %malloccall545 to double*
  br label %polly.loop_header645

polly.loop_header635:                             ; preds = %polly.loop_header635.preheader, %polly.loop_header635
  %polly.indvar638 = phi i64 [ %polly.indvar_next639, %polly.loop_header635 ], [ %polly.indvar638.ph, %polly.loop_header635.preheader ]
  %234 = shl nuw nsw i64 %polly.indvar638, 3
  %scevgep642 = getelementptr i8, i8* %scevgep641, i64 %234
  %scevgep642643 = bitcast i8* %scevgep642 to double*
  %_p_scalar_644 = load double, double* %scevgep642643, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_644, 1.200000e+00
  store double %p_mul.i, double* %scevgep642643, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next639 = add nuw nsw i64 %polly.indvar638, 1
  %exitcond1218.not = icmp eq i64 %polly.indvar_next639, %polly.indvar632
  br i1 %exitcond1218.not, label %polly.loop_exit637, label %polly.loop_header635, !llvm.loop !107

polly.loop_header645:                             ; preds = %polly.loop_header645.preheader, %polly.loop_exit670
  %indvars.iv1208 = phi i64 [ 0, %polly.loop_header645.preheader ], [ %indvars.iv.next1209, %polly.loop_exit670 ]
  %indvars.iv1203 = phi i64 [ 0, %polly.loop_header645.preheader ], [ %indvars.iv.next1204, %polly.loop_exit670 ]
  %indvars.iv1194 = phi i64 [ 79, %polly.loop_header645.preheader ], [ %indvars.iv.next1195, %polly.loop_exit670 ]
  %indvars.iv1190 = phi i64 [ 1200, %polly.loop_header645.preheader ], [ %indvars.iv.next1191, %polly.loop_exit670 ]
  %polly.indvar648 = phi i64 [ 0, %polly.loop_header645.preheader ], [ %polly.indvar_next649, %polly.loop_exit670 ]
  %235 = mul nuw nsw i64 %polly.indvar648, 100
  %236 = lshr i64 %polly.indvar648, 2
  %237 = add nuw i64 %polly.indvar648, %236
  %238 = mul nuw nsw i64 %237, 80
  %239 = sub i64 %235, %238
  %240 = mul nsw i64 %polly.indvar648, -100
  %241 = add i64 %240, %238
  %242 = lshr i64 %polly.indvar648, 2
  %243 = add nuw i64 %polly.indvar648, %242
  %244 = mul nuw nsw i64 %243, 80
  %245 = sub i64 %indvars.iv1203, %244
  %246 = add i64 %indvars.iv1208, %244
  %247 = add i64 %indvars.iv1194, %244
  %248 = mul nuw nsw i64 %polly.indvar648, 100
  br label %polly.loop_header651

polly.loop_exit653:                               ; preds = %polly.loop_exit659
  %249 = mul nsw i64 %polly.indvar648, -100
  %250 = mul nuw nsw i64 %polly.indvar648, 5
  br label %polly.loop_header668

polly.loop_exit670:                               ; preds = %polly.loop_exit726
  %polly.indvar_next649 = add nuw nsw i64 %polly.indvar648, 1
  %indvars.iv.next1191 = add nsw i64 %indvars.iv1190, -100
  %indvars.iv.next1195 = add nsw i64 %indvars.iv1194, -100
  %indvars.iv.next1204 = add nuw nsw i64 %indvars.iv1203, 100
  %indvars.iv.next1209 = add nsw i64 %indvars.iv1208, -100
  %exitcond1217.not = icmp eq i64 %polly.indvar_next649, 12
  br i1 %exitcond1217.not, label %polly.exiting542, label %polly.loop_header645

polly.loop_header651:                             ; preds = %polly.loop_exit659, %polly.loop_header645
  %polly.indvar654 = phi i64 [ 0, %polly.loop_header645 ], [ %polly.indvar_next655, %polly.loop_exit659 ]
  %polly.access.mul.Packed_MemRef_call2546 = mul nuw nsw i64 %polly.indvar654, 1200
  br label %polly.loop_header657

polly.loop_exit659:                               ; preds = %polly.loop_header657
  %polly.indvar_next655 = add nuw nsw i64 %polly.indvar654, 1
  %exitcond1193.not = icmp eq i64 %polly.indvar_next655, 1000
  br i1 %exitcond1193.not, label %polly.loop_exit653, label %polly.loop_header651

polly.loop_header657:                             ; preds = %polly.loop_header657, %polly.loop_header651
  %polly.indvar660 = phi i64 [ 0, %polly.loop_header651 ], [ %polly.indvar_next661, %polly.loop_header657 ]
  %251 = add nuw nsw i64 %polly.indvar660, %248
  %polly.access.mul.call2664 = mul nuw nsw i64 %251, 1000
  %polly.access.add.call2665 = add nuw nsw i64 %polly.access.mul.call2664, %polly.indvar654
  %polly.access.call2666 = getelementptr double, double* %polly.access.cast.call2779, i64 %polly.access.add.call2665
  %polly.access.call2666.load = load double, double* %polly.access.call2666, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2546 = add nuw nsw i64 %polly.indvar660, %polly.access.mul.Packed_MemRef_call2546
  %polly.access.Packed_MemRef_call2546 = getelementptr double, double* %Packed_MemRef_call2546, i64 %polly.access.add.Packed_MemRef_call2546
  store double %polly.access.call2666.load, double* %polly.access.Packed_MemRef_call2546, align 8
  %polly.indvar_next661 = add nuw nsw i64 %polly.indvar660, 1
  %exitcond1192.not = icmp eq i64 %polly.indvar_next661, %indvars.iv1190
  br i1 %exitcond1192.not, label %polly.loop_exit659, label %polly.loop_header657

polly.loop_header668:                             ; preds = %polly.loop_exit726, %polly.loop_exit653
  %indvar1358 = phi i64 [ %indvar.next1359, %polly.loop_exit726 ], [ 0, %polly.loop_exit653 ]
  %indvars.iv1210 = phi i64 [ %indvars.iv.next1211, %polly.loop_exit726 ], [ %246, %polly.loop_exit653 ]
  %indvars.iv1205 = phi i64 [ %indvars.iv.next1206, %polly.loop_exit726 ], [ %245, %polly.loop_exit653 ]
  %indvars.iv1196 = phi i64 [ %indvars.iv.next1197, %polly.loop_exit726 ], [ %247, %polly.loop_exit653 ]
  %polly.indvar671 = phi i64 [ %polly.indvar_next672, %polly.loop_exit726 ], [ %243, %polly.loop_exit653 ]
  %252 = mul nsw i64 %indvar1358, -80
  %253 = add i64 %239, %252
  %smax1360 = call i64 @llvm.smax.i64(i64 %253, i64 0)
  %254 = mul nuw nsw i64 %indvar1358, 80
  %255 = add i64 %241, %254
  %256 = add i64 %smax1360, %255
  %smax1207 = call i64 @llvm.smax.i64(i64 %indvars.iv1205, i64 0)
  %257 = add i64 %smax1207, %indvars.iv1210
  %smax1198 = call i64 @llvm.smax.i64(i64 %indvars.iv1196, i64 0)
  %258 = shl nsw i64 %polly.indvar671, 2
  %.not.not972 = icmp ugt i64 %258, %250
  %259 = mul nuw nsw i64 %polly.indvar671, 80
  %260 = add nsw i64 %259, %249
  %261 = icmp sgt i64 %260, 100
  %262 = select i1 %261, i64 %260, i64 100
  %263 = add nsw i64 %260, 79
  %polly.loop_guard698.not = icmp sgt i64 %262, %263
  br i1 %.not.not972, label %polly.loop_header674.us, label %polly.loop_header668.split

polly.loop_header674.us:                          ; preds = %polly.loop_header668, %polly.merge681.us
  %polly.indvar677.us = phi i64 [ %polly.indvar_next678.us, %polly.merge681.us ], [ 0, %polly.loop_header668 ]
  %polly.access.mul.Packed_MemRef_call1544.us = mul nuw nsw i64 %polly.indvar677.us, 1200
  br label %polly.loop_header684.us

polly.loop_header684.us:                          ; preds = %polly.loop_header674.us, %polly.loop_header684.us
  %polly.indvar687.us = phi i64 [ %polly.indvar_next688.us, %polly.loop_header684.us ], [ 0, %polly.loop_header674.us ]
  %264 = add nuw nsw i64 %polly.indvar687.us, %248
  %polly.access.mul.call1691.us = mul nuw nsw i64 %264, 1000
  %polly.access.add.call1692.us = add nuw nsw i64 %polly.access.mul.call1691.us, %polly.indvar677.us
  %polly.access.call1693.us = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1692.us
  %polly.access.call1693.load.us = load double, double* %polly.access.call1693.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1544.us = add nuw nsw i64 %polly.indvar687.us, %polly.access.mul.Packed_MemRef_call1544.us
  %polly.access.Packed_MemRef_call1544.us = getelementptr double, double* %Packed_MemRef_call1544, i64 %polly.access.add.Packed_MemRef_call1544.us
  store double %polly.access.call1693.load.us, double* %polly.access.Packed_MemRef_call1544.us, align 8
  %polly.indvar_next688.us = add nuw nsw i64 %polly.indvar687.us, 1
  %exitcond1201.not = icmp eq i64 %polly.indvar_next688.us, 100
  br i1 %exitcond1201.not, label %polly.loop_exit686.us, label %polly.loop_header684.us

polly.loop_exit686.us:                            ; preds = %polly.loop_header684.us
  br i1 %polly.loop_guard698.not, label %polly.merge681.us, label %polly.loop_header695.us

polly.loop_header695.us:                          ; preds = %polly.loop_exit686.us, %polly.loop_header695.us
  %polly.indvar699.us = phi i64 [ %polly.indvar_next700.us, %polly.loop_header695.us ], [ %262, %polly.loop_exit686.us ]
  %265 = add nuw nsw i64 %polly.indvar699.us, %248
  %polly.access.mul.call1703.us = mul nsw i64 %265, 1000
  %polly.access.add.call1704.us = add nuw nsw i64 %polly.access.mul.call1703.us, %polly.indvar677.us
  %polly.access.call1705.us = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1704.us
  %polly.access.call1705.load.us = load double, double* %polly.access.call1705.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1544707.us = add nuw nsw i64 %polly.indvar699.us, %polly.access.mul.Packed_MemRef_call1544.us
  %polly.access.Packed_MemRef_call1544708.us = getelementptr double, double* %Packed_MemRef_call1544, i64 %polly.access.add.Packed_MemRef_call1544707.us
  store double %polly.access.call1705.load.us, double* %polly.access.Packed_MemRef_call1544708.us, align 8
  %polly.indvar_next700.us = add nuw nsw i64 %polly.indvar699.us, 1
  %polly.loop_cond701.not.not.us = icmp slt i64 %polly.indvar699.us, %263
  br i1 %polly.loop_cond701.not.not.us, label %polly.loop_header695.us, label %polly.merge681.us

polly.merge681.us:                                ; preds = %polly.loop_header695.us, %polly.loop_exit686.us
  %polly.indvar_next678.us = add nuw nsw i64 %polly.indvar677.us, 1
  %exitcond1202.not = icmp eq i64 %polly.indvar_next678.us, 1000
  br i1 %exitcond1202.not, label %polly.loop_header724.preheader, label %polly.loop_header674.us

polly.loop_header668.split:                       ; preds = %polly.loop_header668
  %polly.loop_guard713 = icmp sgt i64 %260, -80
  br i1 %polly.loop_guard713, label %polly.loop_header674.us1077, label %polly.loop_header724.preheader

polly.loop_header674.us1077:                      ; preds = %polly.loop_header668.split, %polly.merge681.loopexit975.us1121
  %polly.indvar677.us1078 = phi i64 [ %polly.indvar_next678.us1113, %polly.merge681.loopexit975.us1121 ], [ 0, %polly.loop_header668.split ]
  %polly.access.mul.Packed_MemRef_call1544721.us1120 = mul nuw nsw i64 %polly.indvar677.us1078, 1200
  br label %polly.loop_header710.us1080

polly.loop_header710.us1080:                      ; preds = %polly.loop_header674.us1077, %polly.loop_header710.us1080
  %polly.indvar714.us1081 = phi i64 [ %polly.indvar_next715.us1088, %polly.loop_header710.us1080 ], [ 0, %polly.loop_header674.us1077 ]
  %266 = add nuw nsw i64 %polly.indvar714.us1081, %248
  %polly.access.mul.call1718.us1082 = mul nuw nsw i64 %266, 1000
  %polly.access.add.call1719.us1083 = add nuw nsw i64 %polly.access.mul.call1718.us1082, %polly.indvar677.us1078
  %polly.access.call1720.us1084 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1719.us1083
  %polly.access.call1720.load.us1085 = load double, double* %polly.access.call1720.us1084, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1544722.us1086 = add nuw nsw i64 %polly.indvar714.us1081, %polly.access.mul.Packed_MemRef_call1544721.us1120
  %polly.access.Packed_MemRef_call1544723.us1087 = getelementptr double, double* %Packed_MemRef_call1544, i64 %polly.access.add.Packed_MemRef_call1544722.us1086
  store double %polly.access.call1720.load.us1085, double* %polly.access.Packed_MemRef_call1544723.us1087, align 8
  %polly.indvar_next715.us1088 = add nuw nsw i64 %polly.indvar714.us1081, 1
  %exitcond1199.not = icmp eq i64 %polly.indvar714.us1081, %smax1198
  br i1 %exitcond1199.not, label %polly.merge681.loopexit975.us1121, label %polly.loop_header710.us1080

polly.merge681.loopexit975.us1121:                ; preds = %polly.loop_header710.us1080
  %polly.indvar_next678.us1113 = add nuw nsw i64 %polly.indvar677.us1078, 1
  %exitcond1200.not = icmp eq i64 %polly.indvar_next678.us1113, 1000
  br i1 %exitcond1200.not, label %polly.loop_header724.preheader, label %polly.loop_header674.us1077

polly.loop_exit726:                               ; preds = %polly.loop_exit733.loopexit.us, %polly.loop_header724.preheader
  %polly.indvar_next672 = add nuw nsw i64 %polly.indvar671, 1
  %polly.loop_cond673 = icmp ult i64 %polly.indvar671, 14
  %indvars.iv.next1197 = add i64 %indvars.iv1196, 80
  %indvars.iv.next1206 = add i64 %indvars.iv1205, -80
  %indvars.iv.next1211 = add i64 %indvars.iv1210, 80
  %indvar.next1359 = add i64 %indvar1358, 1
  br i1 %polly.loop_cond673, label %polly.loop_header668, label %polly.loop_exit670

polly.loop_header724.preheader:                   ; preds = %polly.merge681.loopexit975.us1121, %polly.merge681.us, %polly.loop_header668.split
  %267 = sub nsw i64 %248, %259
  %268 = icmp sgt i64 %267, 0
  %269 = select i1 %268, i64 %267, i64 0
  %polly.loop_guard734 = icmp slt i64 %269, 80
  br i1 %polly.loop_guard734, label %polly.loop_header724.us, label %polly.loop_exit726

polly.loop_header724.us:                          ; preds = %polly.loop_header724.preheader, %polly.loop_exit733.loopexit.us
  %polly.indvar727.us = phi i64 [ %polly.indvar_next728.us, %polly.loop_exit733.loopexit.us ], [ 0, %polly.loop_header724.preheader ]
  %polly.access.mul.Packed_MemRef_call1544746.us = mul nuw nsw i64 %polly.indvar727.us, 1200
  br label %polly.loop_header731.us

polly.loop_header731.us:                          ; preds = %polly.loop_header724.us, %polly.loop_exit741.us
  %indvar1361 = phi i64 [ 0, %polly.loop_header724.us ], [ %indvar.next1362, %polly.loop_exit741.us ]
  %indvars.iv1212 = phi i64 [ %257, %polly.loop_header724.us ], [ %indvars.iv.next1213, %polly.loop_exit741.us ]
  %polly.indvar735.us = phi i64 [ %269, %polly.loop_header724.us ], [ %polly.indvar_next736.us, %polly.loop_exit741.us ]
  %270 = add i64 %256, %indvar1361
  %smin1363 = call i64 @llvm.smin.i64(i64 %270, i64 99)
  %271 = add nsw i64 %smin1363, 1
  %smin1214 = call i64 @llvm.smin.i64(i64 %indvars.iv1212, i64 99)
  %272 = add nuw i64 %polly.indvar735.us, %259
  %273 = add i64 %272, %249
  %polly.loop_guard742.us1256 = icmp sgt i64 %273, -1
  br i1 %polly.loop_guard742.us1256, label %polly.loop_header739.preheader.us, label %polly.loop_exit741.us

polly.loop_header739.us:                          ; preds = %polly.loop_header739.us.preheader, %polly.loop_header739.us
  %polly.indvar743.us = phi i64 [ %polly.indvar_next744.us, %polly.loop_header739.us ], [ %polly.indvar743.us.ph, %polly.loop_header739.us.preheader ]
  %274 = add nuw nsw i64 %polly.indvar743.us, %248
  %polly.access.add.Packed_MemRef_call1544747.us = add nuw nsw i64 %polly.indvar743.us, %polly.access.mul.Packed_MemRef_call1544746.us
  %polly.access.Packed_MemRef_call1544748.us = getelementptr double, double* %Packed_MemRef_call1544, i64 %polly.access.add.Packed_MemRef_call1544747.us
  %_p_scalar_749.us = load double, double* %polly.access.Packed_MemRef_call1544748.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_753.us, %_p_scalar_749.us
  %polly.access.Packed_MemRef_call2546756.us = getelementptr double, double* %Packed_MemRef_call2546, i64 %polly.access.add.Packed_MemRef_call1544747.us
  %_p_scalar_757.us = load double, double* %polly.access.Packed_MemRef_call2546756.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_761.us, %_p_scalar_757.us
  %275 = shl i64 %274, 3
  %276 = add i64 %275, %277
  %scevgep762.us = getelementptr i8, i8* %call, i64 %276
  %scevgep762763.us = bitcast i8* %scevgep762.us to double*
  %_p_scalar_764.us = load double, double* %scevgep762763.us, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_764.us
  store double %p_add42.i.us, double* %scevgep762763.us, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next744.us = add nuw nsw i64 %polly.indvar743.us, 1
  %exitcond1215.not = icmp eq i64 %polly.indvar743.us, %smin1214
  br i1 %exitcond1215.not, label %polly.loop_exit741.us, label %polly.loop_header739.us, !llvm.loop !110

polly.loop_exit741.us:                            ; preds = %polly.loop_header739.us, %middle.block1355, %polly.loop_header731.us
  %polly.indvar_next736.us = add nuw nsw i64 %polly.indvar735.us, 1
  %polly.loop_cond737.us = icmp ult i64 %polly.indvar735.us, 79
  %indvars.iv.next1213 = add i64 %indvars.iv1212, 1
  %indvar.next1362 = add i64 %indvar1361, 1
  br i1 %polly.loop_cond737.us, label %polly.loop_header731.us, label %polly.loop_exit733.loopexit.us

polly.loop_header739.preheader.us:                ; preds = %polly.loop_header731.us
  %polly.access.add.Packed_MemRef_call2546751.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1544746.us, %273
  %polly.access.Packed_MemRef_call2546752.us = getelementptr double, double* %Packed_MemRef_call2546, i64 %polly.access.add.Packed_MemRef_call2546751.us
  %_p_scalar_753.us = load double, double* %polly.access.Packed_MemRef_call2546752.us, align 8
  %polly.access.Packed_MemRef_call1544760.us = getelementptr double, double* %Packed_MemRef_call1544, i64 %polly.access.add.Packed_MemRef_call2546751.us
  %_p_scalar_761.us = load double, double* %polly.access.Packed_MemRef_call1544760.us, align 8
  %277 = mul i64 %272, 9600
  %min.iters.check1364 = icmp ult i64 %271, 4
  br i1 %min.iters.check1364, label %polly.loop_header739.us.preheader, label %vector.ph1365

vector.ph1365:                                    ; preds = %polly.loop_header739.preheader.us
  %n.vec1367 = and i64 %271, -4
  %broadcast.splatinsert1373 = insertelement <4 x double> poison, double %_p_scalar_753.us, i32 0
  %broadcast.splat1374 = shufflevector <4 x double> %broadcast.splatinsert1373, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1376 = insertelement <4 x double> poison, double %_p_scalar_761.us, i32 0
  %broadcast.splat1377 = shufflevector <4 x double> %broadcast.splatinsert1376, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1357

vector.body1357:                                  ; preds = %vector.body1357, %vector.ph1365
  %index1368 = phi i64 [ 0, %vector.ph1365 ], [ %index.next1369, %vector.body1357 ]
  %278 = add nuw nsw i64 %index1368, %248
  %279 = add nuw nsw i64 %index1368, %polly.access.mul.Packed_MemRef_call1544746.us
  %280 = getelementptr double, double* %Packed_MemRef_call1544, i64 %279
  %281 = bitcast double* %280 to <4 x double>*
  %wide.load1372 = load <4 x double>, <4 x double>* %281, align 8
  %282 = fmul fast <4 x double> %broadcast.splat1374, %wide.load1372
  %283 = getelementptr double, double* %Packed_MemRef_call2546, i64 %279
  %284 = bitcast double* %283 to <4 x double>*
  %wide.load1375 = load <4 x double>, <4 x double>* %284, align 8
  %285 = fmul fast <4 x double> %broadcast.splat1377, %wide.load1375
  %286 = shl i64 %278, 3
  %287 = add i64 %286, %277
  %288 = getelementptr i8, i8* %call, i64 %287
  %289 = bitcast i8* %288 to <4 x double>*
  %wide.load1378 = load <4 x double>, <4 x double>* %289, align 8, !alias.scope !99, !noalias !101
  %290 = fadd fast <4 x double> %285, %282
  %291 = fmul fast <4 x double> %290, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %292 = fadd fast <4 x double> %291, %wide.load1378
  %293 = bitcast i8* %288 to <4 x double>*
  store <4 x double> %292, <4 x double>* %293, align 8, !alias.scope !99, !noalias !101
  %index.next1369 = add i64 %index1368, 4
  %294 = icmp eq i64 %index.next1369, %n.vec1367
  br i1 %294, label %middle.block1355, label %vector.body1357, !llvm.loop !111

middle.block1355:                                 ; preds = %vector.body1357
  %cmp.n1371 = icmp eq i64 %271, %n.vec1367
  br i1 %cmp.n1371, label %polly.loop_exit741.us, label %polly.loop_header739.us.preheader

polly.loop_header739.us.preheader:                ; preds = %polly.loop_header739.preheader.us, %middle.block1355
  %polly.indvar743.us.ph = phi i64 [ 0, %polly.loop_header739.preheader.us ], [ %n.vec1367, %middle.block1355 ]
  br label %polly.loop_header739.us

polly.loop_exit733.loopexit.us:                   ; preds = %polly.loop_exit741.us
  %polly.indvar_next728.us = add nuw nsw i64 %polly.indvar727.us, 1
  %exitcond1216.not = icmp eq i64 %polly.indvar_next728.us, 1000
  br i1 %exitcond1216.not, label %polly.loop_exit726, label %polly.loop_header724.us

polly.loop_header891:                             ; preds = %entry, %polly.loop_exit899
  %indvars.iv1244 = phi i64 [ %indvars.iv.next1245, %polly.loop_exit899 ], [ 0, %entry ]
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_exit899 ], [ 0, %entry ]
  %smin1246 = call i64 @llvm.smin.i64(i64 %indvars.iv1244, i64 -1168)
  %295 = shl nsw i64 %polly.indvar894, 5
  %296 = add nsw i64 %smin1246, 1199
  br label %polly.loop_header897

polly.loop_exit899:                               ; preds = %polly.loop_exit905
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %indvars.iv.next1245 = add nsw i64 %indvars.iv1244, -32
  %exitcond1249.not = icmp eq i64 %polly.indvar_next895, 38
  br i1 %exitcond1249.not, label %polly.loop_header918, label %polly.loop_header891

polly.loop_header897:                             ; preds = %polly.loop_exit905, %polly.loop_header891
  %indvars.iv1240 = phi i64 [ %indvars.iv.next1241, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %297 = mul nsw i64 %polly.indvar900, -32
  %smin1284 = call i64 @llvm.smin.i64(i64 %297, i64 -1168)
  %298 = add nsw i64 %smin1284, 1200
  %smin1242 = call i64 @llvm.smin.i64(i64 %indvars.iv1240, i64 -1168)
  %299 = shl nsw i64 %polly.indvar900, 5
  %300 = add nsw i64 %smin1242, 1199
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1241 = add nsw i64 %indvars.iv1240, -32
  %exitcond1248.not = icmp eq i64 %polly.indvar_next901, 38
  br i1 %exitcond1248.not, label %polly.loop_exit899, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %polly.indvar906 = phi i64 [ 0, %polly.loop_header897 ], [ %polly.indvar_next907, %polly.loop_exit911 ]
  %301 = add nuw nsw i64 %polly.indvar906, %295
  %302 = trunc i64 %301 to i32
  %303 = mul nuw nsw i64 %301, 9600
  %min.iters.check = icmp eq i64 %298, 0
  br i1 %min.iters.check, label %polly.loop_header909, label %vector.ph1285

vector.ph1285:                                    ; preds = %polly.loop_header903
  %broadcast.splatinsert1292 = insertelement <4 x i64> poison, i64 %299, i32 0
  %broadcast.splat1293 = shufflevector <4 x i64> %broadcast.splatinsert1292, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1294 = insertelement <4 x i32> poison, i32 %302, i32 0
  %broadcast.splat1295 = shufflevector <4 x i32> %broadcast.splatinsert1294, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1283

vector.body1283:                                  ; preds = %vector.body1283, %vector.ph1285
  %index1286 = phi i64 [ 0, %vector.ph1285 ], [ %index.next1287, %vector.body1283 ]
  %vec.ind1290 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1285 ], [ %vec.ind.next1291, %vector.body1283 ]
  %304 = add nuw nsw <4 x i64> %vec.ind1290, %broadcast.splat1293
  %305 = trunc <4 x i64> %304 to <4 x i32>
  %306 = mul <4 x i32> %broadcast.splat1295, %305
  %307 = add <4 x i32> %306, <i32 3, i32 3, i32 3, i32 3>
  %308 = urem <4 x i32> %307, <i32 1200, i32 1200, i32 1200, i32 1200>
  %309 = sitofp <4 x i32> %308 to <4 x double>
  %310 = fmul fast <4 x double> %309, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %311 = extractelement <4 x i64> %304, i32 0
  %312 = shl i64 %311, 3
  %313 = add nuw nsw i64 %312, %303
  %314 = getelementptr i8, i8* %call, i64 %313
  %315 = bitcast i8* %314 to <4 x double>*
  store <4 x double> %310, <4 x double>* %315, align 8, !alias.scope !112, !noalias !114
  %index.next1287 = add i64 %index1286, 4
  %vec.ind.next1291 = add <4 x i64> %vec.ind1290, <i64 4, i64 4, i64 4, i64 4>
  %316 = icmp eq i64 %index.next1287, %298
  br i1 %316, label %polly.loop_exit911, label %vector.body1283, !llvm.loop !117

polly.loop_exit911:                               ; preds = %vector.body1283, %polly.loop_header909
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %exitcond1247.not = icmp eq i64 %polly.indvar906, %296
  br i1 %exitcond1247.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_header903, %polly.loop_header909
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_header909 ], [ 0, %polly.loop_header903 ]
  %317 = add nuw nsw i64 %polly.indvar912, %299
  %318 = trunc i64 %317 to i32
  %319 = mul i32 %318, %302
  %320 = add i32 %319, 3
  %321 = urem i32 %320, 1200
  %p_conv31.i = sitofp i32 %321 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %322 = shl i64 %317, 3
  %323 = add nuw nsw i64 %322, %303
  %scevgep915 = getelementptr i8, i8* %call, i64 %323
  %scevgep915916 = bitcast i8* %scevgep915 to double*
  store double %p_div33.i, double* %scevgep915916, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1243.not = icmp eq i64 %polly.indvar912, %300
  br i1 %exitcond1243.not, label %polly.loop_exit911, label %polly.loop_header909, !llvm.loop !118

polly.loop_header918:                             ; preds = %polly.loop_exit899, %polly.loop_exit926
  %indvars.iv1234 = phi i64 [ %indvars.iv.next1235, %polly.loop_exit926 ], [ 0, %polly.loop_exit899 ]
  %polly.indvar921 = phi i64 [ %polly.indvar_next922, %polly.loop_exit926 ], [ 0, %polly.loop_exit899 ]
  %smin1236 = call i64 @llvm.smin.i64(i64 %indvars.iv1234, i64 -1168)
  %324 = shl nsw i64 %polly.indvar921, 5
  %325 = add nsw i64 %smin1236, 1199
  br label %polly.loop_header924

polly.loop_exit926:                               ; preds = %polly.loop_exit932
  %polly.indvar_next922 = add nuw nsw i64 %polly.indvar921, 1
  %indvars.iv.next1235 = add nsw i64 %indvars.iv1234, -32
  %exitcond1239.not = icmp eq i64 %polly.indvar_next922, 38
  br i1 %exitcond1239.not, label %polly.loop_header944, label %polly.loop_header918

polly.loop_header924:                             ; preds = %polly.loop_exit932, %polly.loop_header918
  %indvars.iv1230 = phi i64 [ %indvars.iv.next1231, %polly.loop_exit932 ], [ 0, %polly.loop_header918 ]
  %polly.indvar927 = phi i64 [ %polly.indvar_next928, %polly.loop_exit932 ], [ 0, %polly.loop_header918 ]
  %326 = mul nsw i64 %polly.indvar927, -32
  %smin1299 = call i64 @llvm.smin.i64(i64 %326, i64 -968)
  %327 = add nsw i64 %smin1299, 1000
  %smin1232 = call i64 @llvm.smin.i64(i64 %indvars.iv1230, i64 -968)
  %328 = shl nsw i64 %polly.indvar927, 5
  %329 = add nsw i64 %smin1232, 999
  br label %polly.loop_header930

polly.loop_exit932:                               ; preds = %polly.loop_exit938
  %polly.indvar_next928 = add nuw nsw i64 %polly.indvar927, 1
  %indvars.iv.next1231 = add nsw i64 %indvars.iv1230, -32
  %exitcond1238.not = icmp eq i64 %polly.indvar_next928, 32
  br i1 %exitcond1238.not, label %polly.loop_exit926, label %polly.loop_header924

polly.loop_header930:                             ; preds = %polly.loop_exit938, %polly.loop_header924
  %polly.indvar933 = phi i64 [ 0, %polly.loop_header924 ], [ %polly.indvar_next934, %polly.loop_exit938 ]
  %330 = add nuw nsw i64 %polly.indvar933, %324
  %331 = trunc i64 %330 to i32
  %332 = mul nuw nsw i64 %330, 8000
  %min.iters.check1300 = icmp eq i64 %327, 0
  br i1 %min.iters.check1300, label %polly.loop_header936, label %vector.ph1301

vector.ph1301:                                    ; preds = %polly.loop_header930
  %broadcast.splatinsert1310 = insertelement <4 x i64> poison, i64 %328, i32 0
  %broadcast.splat1311 = shufflevector <4 x i64> %broadcast.splatinsert1310, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1312 = insertelement <4 x i32> poison, i32 %331, i32 0
  %broadcast.splat1313 = shufflevector <4 x i32> %broadcast.splatinsert1312, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1298

vector.body1298:                                  ; preds = %vector.body1298, %vector.ph1301
  %index1304 = phi i64 [ 0, %vector.ph1301 ], [ %index.next1305, %vector.body1298 ]
  %vec.ind1308 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1301 ], [ %vec.ind.next1309, %vector.body1298 ]
  %333 = add nuw nsw <4 x i64> %vec.ind1308, %broadcast.splat1311
  %334 = trunc <4 x i64> %333 to <4 x i32>
  %335 = mul <4 x i32> %broadcast.splat1313, %334
  %336 = add <4 x i32> %335, <i32 2, i32 2, i32 2, i32 2>
  %337 = urem <4 x i32> %336, <i32 1000, i32 1000, i32 1000, i32 1000>
  %338 = sitofp <4 x i32> %337 to <4 x double>
  %339 = fmul fast <4 x double> %338, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %340 = extractelement <4 x i64> %333, i32 0
  %341 = shl i64 %340, 3
  %342 = add nuw nsw i64 %341, %332
  %343 = getelementptr i8, i8* %call2, i64 %342
  %344 = bitcast i8* %343 to <4 x double>*
  store <4 x double> %339, <4 x double>* %344, align 8, !alias.scope !116, !noalias !119
  %index.next1305 = add i64 %index1304, 4
  %vec.ind.next1309 = add <4 x i64> %vec.ind1308, <i64 4, i64 4, i64 4, i64 4>
  %345 = icmp eq i64 %index.next1305, %327
  br i1 %345, label %polly.loop_exit938, label %vector.body1298, !llvm.loop !120

polly.loop_exit938:                               ; preds = %vector.body1298, %polly.loop_header936
  %polly.indvar_next934 = add nuw nsw i64 %polly.indvar933, 1
  %exitcond1237.not = icmp eq i64 %polly.indvar933, %325
  br i1 %exitcond1237.not, label %polly.loop_exit932, label %polly.loop_header930

polly.loop_header936:                             ; preds = %polly.loop_header930, %polly.loop_header936
  %polly.indvar939 = phi i64 [ %polly.indvar_next940, %polly.loop_header936 ], [ 0, %polly.loop_header930 ]
  %346 = add nuw nsw i64 %polly.indvar939, %328
  %347 = trunc i64 %346 to i32
  %348 = mul i32 %347, %331
  %349 = add i32 %348, 2
  %350 = urem i32 %349, 1000
  %p_conv10.i = sitofp i32 %350 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %351 = shl i64 %346, 3
  %352 = add nuw nsw i64 %351, %332
  %scevgep942 = getelementptr i8, i8* %call2, i64 %352
  %scevgep942943 = bitcast i8* %scevgep942 to double*
  store double %p_div12.i, double* %scevgep942943, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next940 = add nuw nsw i64 %polly.indvar939, 1
  %exitcond1233.not = icmp eq i64 %polly.indvar939, %329
  br i1 %exitcond1233.not, label %polly.loop_exit938, label %polly.loop_header936, !llvm.loop !121

polly.loop_header944:                             ; preds = %polly.loop_exit926, %polly.loop_exit952
  %indvars.iv1224 = phi i64 [ %indvars.iv.next1225, %polly.loop_exit952 ], [ 0, %polly.loop_exit926 ]
  %polly.indvar947 = phi i64 [ %polly.indvar_next948, %polly.loop_exit952 ], [ 0, %polly.loop_exit926 ]
  %smin1226 = call i64 @llvm.smin.i64(i64 %indvars.iv1224, i64 -1168)
  %353 = shl nsw i64 %polly.indvar947, 5
  %354 = add nsw i64 %smin1226, 1199
  br label %polly.loop_header950

polly.loop_exit952:                               ; preds = %polly.loop_exit958
  %polly.indvar_next948 = add nuw nsw i64 %polly.indvar947, 1
  %indvars.iv.next1225 = add nsw i64 %indvars.iv1224, -32
  %exitcond1229.not = icmp eq i64 %polly.indvar_next948, 38
  br i1 %exitcond1229.not, label %init_array.exit, label %polly.loop_header944

polly.loop_header950:                             ; preds = %polly.loop_exit958, %polly.loop_header944
  %indvars.iv1220 = phi i64 [ %indvars.iv.next1221, %polly.loop_exit958 ], [ 0, %polly.loop_header944 ]
  %polly.indvar953 = phi i64 [ %polly.indvar_next954, %polly.loop_exit958 ], [ 0, %polly.loop_header944 ]
  %355 = mul nsw i64 %polly.indvar953, -32
  %smin1317 = call i64 @llvm.smin.i64(i64 %355, i64 -968)
  %356 = add nsw i64 %smin1317, 1000
  %smin1222 = call i64 @llvm.smin.i64(i64 %indvars.iv1220, i64 -968)
  %357 = shl nsw i64 %polly.indvar953, 5
  %358 = add nsw i64 %smin1222, 999
  br label %polly.loop_header956

polly.loop_exit958:                               ; preds = %polly.loop_exit964
  %polly.indvar_next954 = add nuw nsw i64 %polly.indvar953, 1
  %indvars.iv.next1221 = add nsw i64 %indvars.iv1220, -32
  %exitcond1228.not = icmp eq i64 %polly.indvar_next954, 32
  br i1 %exitcond1228.not, label %polly.loop_exit952, label %polly.loop_header950

polly.loop_header956:                             ; preds = %polly.loop_exit964, %polly.loop_header950
  %polly.indvar959 = phi i64 [ 0, %polly.loop_header950 ], [ %polly.indvar_next960, %polly.loop_exit964 ]
  %359 = add nuw nsw i64 %polly.indvar959, %353
  %360 = trunc i64 %359 to i32
  %361 = mul nuw nsw i64 %359, 8000
  %min.iters.check1318 = icmp eq i64 %356, 0
  br i1 %min.iters.check1318, label %polly.loop_header962, label %vector.ph1319

vector.ph1319:                                    ; preds = %polly.loop_header956
  %broadcast.splatinsert1328 = insertelement <4 x i64> poison, i64 %357, i32 0
  %broadcast.splat1329 = shufflevector <4 x i64> %broadcast.splatinsert1328, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1330 = insertelement <4 x i32> poison, i32 %360, i32 0
  %broadcast.splat1331 = shufflevector <4 x i32> %broadcast.splatinsert1330, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1316

vector.body1316:                                  ; preds = %vector.body1316, %vector.ph1319
  %index1322 = phi i64 [ 0, %vector.ph1319 ], [ %index.next1323, %vector.body1316 ]
  %vec.ind1326 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1319 ], [ %vec.ind.next1327, %vector.body1316 ]
  %362 = add nuw nsw <4 x i64> %vec.ind1326, %broadcast.splat1329
  %363 = trunc <4 x i64> %362 to <4 x i32>
  %364 = mul <4 x i32> %broadcast.splat1331, %363
  %365 = add <4 x i32> %364, <i32 1, i32 1, i32 1, i32 1>
  %366 = urem <4 x i32> %365, <i32 1200, i32 1200, i32 1200, i32 1200>
  %367 = sitofp <4 x i32> %366 to <4 x double>
  %368 = fmul fast <4 x double> %367, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %369 = extractelement <4 x i64> %362, i32 0
  %370 = shl i64 %369, 3
  %371 = add nuw nsw i64 %370, %361
  %372 = getelementptr i8, i8* %call1, i64 %371
  %373 = bitcast i8* %372 to <4 x double>*
  store <4 x double> %368, <4 x double>* %373, align 8, !alias.scope !115, !noalias !122
  %index.next1323 = add i64 %index1322, 4
  %vec.ind.next1327 = add <4 x i64> %vec.ind1326, <i64 4, i64 4, i64 4, i64 4>
  %374 = icmp eq i64 %index.next1323, %356
  br i1 %374, label %polly.loop_exit964, label %vector.body1316, !llvm.loop !123

polly.loop_exit964:                               ; preds = %vector.body1316, %polly.loop_header962
  %polly.indvar_next960 = add nuw nsw i64 %polly.indvar959, 1
  %exitcond1227.not = icmp eq i64 %polly.indvar959, %354
  br i1 %exitcond1227.not, label %polly.loop_exit958, label %polly.loop_header956

polly.loop_header962:                             ; preds = %polly.loop_header956, %polly.loop_header962
  %polly.indvar965 = phi i64 [ %polly.indvar_next966, %polly.loop_header962 ], [ 0, %polly.loop_header956 ]
  %375 = add nuw nsw i64 %polly.indvar965, %357
  %376 = trunc i64 %375 to i32
  %377 = mul i32 %376, %360
  %378 = add i32 %377, 1
  %379 = urem i32 %378, 1200
  %p_conv.i = sitofp i32 %379 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %380 = shl i64 %375, 3
  %381 = add nuw nsw i64 %380, %361
  %scevgep969 = getelementptr i8, i8* %call1, i64 %381
  %scevgep969970 = bitcast i8* %scevgep969 to double*
  store double %p_div.i, double* %scevgep969970, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next966 = add nuw nsw i64 %polly.indvar965, 1
  %exitcond1223.not = icmp eq i64 %polly.indvar965, %358
  br i1 %exitcond1223.not, label %polly.loop_exit964, label %polly.loop_header962, !llvm.loop !124
}

declare dso_local i8* @polybench_alloc_data(i64, i32) local_unnamed_addr #1

declare dso_local void @polybench_timer_start(...) local_unnamed_addr #1

declare dso_local void @polybench_timer_stop(...) local_unnamed_addr #1

declare dso_local void @polybench_timer_print(...) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

declare noalias i8* @malloc(i64)

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #1 = { "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #3 = { nofree nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #4 = { nofree nounwind }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 13.0.0 (https://github.com/SOLLVE/llvm-project.git a48e6204b7f1f0d6ea84ab2f2f4c04e15a4338fb)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"double", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7}
!7 = distinct !{!7, !8}
!8 = distinct !{!8, !"LVerDomain"}
!9 = !{!10}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12, !13}
!19 = distinct !{!19, !12, !13}
!20 = distinct !{!20, !12}
!21 = distinct !{!"A"}
!22 = distinct !{!"B"}
!23 = distinct !{!23, !12, !24, !25, !26, !27, !30}
!24 = !{!"llvm.loop.disable_nonforced"}
!25 = !{!"llvm.loop.id", !"k"}
!26 = !{!"llvm.loop.tile.size", i32 100}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 2048}
!36 = !{!"llvm.loop.tile.followup_floor", !37}
!37 = distinct !{!37, !12, !24, !38}
!38 = !{!"llvm.loop.id", !"j1"}
!39 = !{!"llvm.loop.tile.followup_tile", !40}
!40 = distinct !{!40, !12, !24, !41, !42}
!41 = !{!"llvm.loop.id", !"j2"}
!42 = !{!"llvm.loop.interchange.followup_interchanged", !43}
!43 = distinct !{!43, !12, !24, !41, !44, !45, !46}
!44 = !{!"llvm.data.pack.enable", i1 true}
!45 = !{!"llvm.data.pack.array", !21}
!46 = !{!"llvm.data.pack.allocate", !"malloc"}
!47 = distinct !{!47, !12, !24, !48, !49, !50, !51, !52, !61}
!48 = !{!"llvm.loop.id", !"i"}
!49 = !{!"llvm.loop.tile.enable", i1 true}
!50 = !{!"llvm.loop.tile.depth", i32 3}
!51 = !{!"llvm.loop.tile.size", i32 80}
!52 = !{!"llvm.loop.tile.followup_floor", !53}
!53 = distinct !{!53, !12, !24, !54, !55, !56, !57, !58}
!54 = !{!"llvm.loop.id", !"i1"}
!55 = !{!"llvm.loop.interchange.enable", i1 true}
!56 = !{!"llvm.loop.interchange.depth", i32 5}
!57 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!58 = !{!"llvm.loop.interchange.followup_interchanged", !59}
!59 = distinct !{!59, !12, !24, !54, !44, !60, !46}
!60 = !{!"llvm.data.pack.array", !22}
!61 = !{!"llvm.loop.tile.followup_tile", !62}
!62 = distinct !{!62, !12, !24, !63}
!63 = !{!"llvm.loop.id", !"i2"}
!64 = distinct !{!64, !12, !13}
!65 = distinct !{!65, !12, !13}
!66 = distinct !{!66, !12, !13}
!67 = distinct !{!67, !12, !13}
!68 = !{!69, !69, i64 0}
!69 = !{!"any pointer", !4, i64 0}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !12}
!72 = distinct !{!72, !73, !"polly.alias.scope.MemRef_call"}
!73 = distinct !{!73, !"polly.alias.scope.domain"}
!74 = !{!75, !76, !77, !78}
!75 = distinct !{!75, !73, !"polly.alias.scope.MemRef_call1"}
!76 = distinct !{!76, !73, !"polly.alias.scope.MemRef_call2"}
!77 = distinct !{!77, !73, !"polly.alias.scope.Packed_MemRef_call1"}
!78 = distinct !{!78, !73, !"polly.alias.scope.Packed_MemRef_call2"}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !81, !13}
!81 = !{!"llvm.loop.unroll.runtime.disable"}
!82 = !{!72, !75, !77, !78}
!83 = !{!72, !76, !77, !78}
!84 = distinct !{!84, !81, !13}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !87, !"polly.alias.scope.MemRef_call"}
!87 = distinct !{!87, !"polly.alias.scope.domain"}
!88 = !{!89, !90, !91, !92}
!89 = distinct !{!89, !87, !"polly.alias.scope.MemRef_call1"}
!90 = distinct !{!90, !87, !"polly.alias.scope.MemRef_call2"}
!91 = distinct !{!91, !87, !"polly.alias.scope.Packed_MemRef_call1"}
!92 = distinct !{!92, !87, !"polly.alias.scope.Packed_MemRef_call2"}
!93 = distinct !{!93, !13}
!94 = distinct !{!94, !81, !13}
!95 = !{!86, !89, !91, !92}
!96 = !{!86, !90, !91, !92}
!97 = distinct !{!97, !81, !13}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !100, !"polly.alias.scope.MemRef_call"}
!100 = distinct !{!100, !"polly.alias.scope.domain"}
!101 = !{!102, !103, !104, !105}
!102 = distinct !{!102, !100, !"polly.alias.scope.MemRef_call1"}
!103 = distinct !{!103, !100, !"polly.alias.scope.MemRef_call2"}
!104 = distinct !{!104, !100, !"polly.alias.scope.Packed_MemRef_call1"}
!105 = distinct !{!105, !100, !"polly.alias.scope.Packed_MemRef_call2"}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !81, !13}
!108 = !{!99, !102, !104, !105}
!109 = !{!99, !103, !104, !105}
!110 = distinct !{!110, !81, !13}
!111 = distinct !{!111, !13}
!112 = distinct !{!112, !113, !"polly.alias.scope.MemRef_call"}
!113 = distinct !{!113, !"polly.alias.scope.domain"}
!114 = !{!115, !116}
!115 = distinct !{!115, !113, !"polly.alias.scope.MemRef_call1"}
!116 = distinct !{!116, !113, !"polly.alias.scope.MemRef_call2"}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !81, !13}
!119 = !{!115, !112}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !81, !13}
!122 = !{!116, !112}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !81, !13}
