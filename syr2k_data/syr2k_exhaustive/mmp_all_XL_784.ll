; ModuleID = 'syr2k_exhaustive/mmp_all_XL_784.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_784.c"
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
  %call888 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1740 = bitcast i8* %call1 to double*
  %polly.access.call1749 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2750 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1749, %call2
  %polly.access.call2769 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2769, %call1
  %2 = or i1 %0, %1
  %polly.access.call789 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call789, %call2
  %4 = icmp ule i8* %polly.access.call2769, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call789, %call1
  %8 = icmp ule i8* %polly.access.call1749, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header862, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1221 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1220 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1219 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1218 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1218, %scevgep1221
  %bound1 = icmp ult i8* %scevgep1220, %scevgep1219
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
  br i1 %exitcond18.not.i, label %vector.ph1225, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1225:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1232 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1233 = shufflevector <4 x i64> %broadcast.splatinsert1232, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1224

vector.body1224:                                  ; preds = %vector.body1224, %vector.ph1225
  %index1226 = phi i64 [ 0, %vector.ph1225 ], [ %index.next1227, %vector.body1224 ]
  %vec.ind1230 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1225 ], [ %vec.ind.next1231, %vector.body1224 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1230, %broadcast.splat1233
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv7.i, i64 %index1226
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1227 = add i64 %index1226, 4
  %vec.ind.next1231 = add <4 x i64> %vec.ind1230, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1227, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1224, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1224
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1225, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit923
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start523, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1288 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1288, label %for.body3.i46.preheader1443, label %vector.ph1289

vector.ph1289:                                    ; preds = %for.body3.i46.preheader
  %n.vec1291 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1287

vector.body1287:                                  ; preds = %vector.body1287, %vector.ph1289
  %index1292 = phi i64 [ 0, %vector.ph1289 ], [ %index.next1293, %vector.body1287 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i, i64 %index1292
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1293 = add i64 %index1292, 4
  %46 = icmp eq i64 %index.next1293, %n.vec1291
  br i1 %46, label %middle.block1285, label %vector.body1287, !llvm.loop !18

middle.block1285:                                 ; preds = %vector.body1287
  %cmp.n1295 = icmp eq i64 %indvars.iv21.i, %n.vec1291
  br i1 %cmp.n1295, label %for.inc6.i, label %for.body3.i46.preheader1443

for.body3.i46.preheader1443:                      ; preds = %for.body3.i46.preheader, %middle.block1285
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1291, %middle.block1285 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1443, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1443 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1285, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting524
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start308, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1335 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1335, label %for.body3.i60.preheader1439, label %vector.ph1336

vector.ph1336:                                    ; preds = %for.body3.i60.preheader
  %n.vec1338 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1334

vector.body1334:                                  ; preds = %vector.body1334, %vector.ph1336
  %index1339 = phi i64 [ 0, %vector.ph1336 ], [ %index.next1340, %vector.body1334 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i52, i64 %index1339
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1343 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1343, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1340 = add i64 %index1339, 4
  %57 = icmp eq i64 %index.next1340, %n.vec1338
  br i1 %57, label %middle.block1332, label %vector.body1334, !llvm.loop !64

middle.block1332:                                 ; preds = %vector.body1334
  %cmp.n1342 = icmp eq i64 %indvars.iv21.i52, %n.vec1338
  br i1 %cmp.n1342, label %for.inc6.i63, label %for.body3.i60.preheader1439

for.body3.i60.preheader1439:                      ; preds = %for.body3.i60.preheader, %middle.block1332
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1338, %middle.block1332 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1439, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1439 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1332, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting309
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1385 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1385, label %for.body3.i99.preheader1435, label %vector.ph1386

vector.ph1386:                                    ; preds = %for.body3.i99.preheader
  %n.vec1388 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1384

vector.body1384:                                  ; preds = %vector.body1384, %vector.ph1386
  %index1389 = phi i64 [ 0, %vector.ph1386 ], [ %index.next1390, %vector.body1384 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i91, i64 %index1389
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1393 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1393, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1390 = add i64 %index1389, 4
  %68 = icmp eq i64 %index.next1390, %n.vec1388
  br i1 %68, label %middle.block1382, label %vector.body1384, !llvm.loop !66

middle.block1382:                                 ; preds = %vector.body1384
  %cmp.n1392 = icmp eq i64 %indvars.iv21.i91, %n.vec1388
  br i1 %cmp.n1392, label %for.inc6.i102, label %for.body3.i99.preheader1435

for.body3.i99.preheader1435:                      ; preds = %for.body3.i99.preheader, %middle.block1382
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1388, %middle.block1382 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1435, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1435 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1382, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  %malloccall136 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1397 = phi i64 [ %indvar.next1398, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1397, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1399 = icmp ult i64 %88, 4
  br i1 %min.iters.check1399, label %polly.loop_header192.preheader, label %vector.ph1400

vector.ph1400:                                    ; preds = %polly.loop_header
  %n.vec1402 = and i64 %88, -4
  br label %vector.body1396

vector.body1396:                                  ; preds = %vector.body1396, %vector.ph1400
  %index1403 = phi i64 [ 0, %vector.ph1400 ], [ %index.next1404, %vector.body1396 ]
  %90 = shl nuw nsw i64 %index1403, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1407 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1407, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1404 = add i64 %index1403, 4
  %95 = icmp eq i64 %index.next1404, %n.vec1402
  br i1 %95, label %middle.block1394, label %vector.body1396, !llvm.loop !79

middle.block1394:                                 ; preds = %vector.body1396
  %cmp.n1406 = icmp eq i64 %88, %n.vec1402
  br i1 %cmp.n1406, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1394
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1402, %middle.block1394 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1394
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1398 = add i64 %indvar1397, 1
  br i1 %exitcond1110.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1109.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1109.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar203, 50
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1108.not = icmp eq i64 %polly.indvar_next204, 20
  br i1 %exitcond1108.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1098 = phi i64 [ %indvars.iv.next1099, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1092 = phi i64 [ %indvars.iv.next1093, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %98 = mul nuw nsw i64 %polly.indvar209, 20
  %99 = and i64 %98, 9223372036854775744
  %100 = and i64 %98, 60
  %101 = mul nsw i64 %polly.indvar209, -20
  %102 = add i64 %101, %99
  %103 = shl nuw nsw i64 %indvars.iv1094, 2
  %104 = and i64 %103, 9223372036854775744
  %105 = sub nsw i64 %indvars.iv1092, %104
  %106 = add i64 %indvars.iv1098, %104
  %107 = mul nsw i64 %polly.indvar209, -20
  %108 = mul nuw nsw i64 %polly.indvar209, 20
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %109 = add nsw i64 %107, 1199
  %110 = mul nuw nsw i64 %polly.indvar209, 5
  %pexp.p_div_q = lshr i64 %110, 4
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit267
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -20
  %indvars.iv.next1093 = add nuw nsw i64 %indvars.iv1092, 20
  %indvars.iv.next1095 = add nuw nsw i64 %indvars.iv1094, 5
  %indvars.iv.next1099 = add nsw i64 %indvars.iv1098, -20
  %exitcond1107.not = icmp eq i64 %polly.indvar_next210, 60
  br i1 %exitcond1107.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %111 = add nuw nsw i64 %polly.indvar215, %97
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar_next216, 50
  br i1 %exitcond1088.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %112 = add nuw nsw i64 %polly.indvar221, %108
  %polly.access.mul.call2225 = mul nuw nsw i64 %112, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %111, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit267, %polly.loop_exit214
  %indvar1411 = phi i64 [ %indvar.next1412, %polly.loop_exit267 ], [ 0, %polly.loop_exit214 ]
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit267 ], [ %106, %polly.loop_exit214 ]
  %indvars.iv1096 = phi i64 [ %indvars.iv.next1097, %polly.loop_exit267 ], [ %105, %polly.loop_exit214 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit267 ], [ %pexp.p_div_q, %polly.loop_exit214 ]
  %113 = mul nsw i64 %indvar1411, -64
  %114 = or i64 %100, %113
  %smax1413 = call i64 @llvm.smax.i64(i64 %114, i64 0)
  %115 = shl nuw nsw i64 %indvar1411, 6
  %116 = add i64 %102, %115
  %117 = add i64 %smax1413, %116
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1096, i64 0)
  %118 = add i64 %smax, %indvars.iv1100
  %119 = shl nsw i64 %polly.indvar231, 6
  %120 = add nsw i64 %119, %107
  %121 = add nsw i64 %120, -1
  %.inv = icmp sgt i64 %120, 19
  %122 = select i1 %.inv, i64 19, i64 %121
  %polly.loop_guard = icmp sgt i64 %122, -1
  %123 = icmp sgt i64 %120, 0
  %124 = select i1 %123, i64 %120, i64 0
  %125 = add nsw i64 %120, 63
  %126 = icmp slt i64 %109, %125
  %127 = select i1 %126, i64 %109, i64 %125
  %polly.loop_guard254.not = icmp sgt i64 %124, %127
  br i1 %polly.loop_guard, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.loop_exit253.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_exit253.us ], [ 0, %polly.loop_header228 ]
  %128 = add nuw nsw i64 %polly.indvar237.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header234.us ]
  %129 = add nuw nsw i64 %polly.indvar243.us, %108
  %polly.access.mul.call1247.us = mul nuw nsw i64 %129, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %128, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw i64 %polly.indvar243.us, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar243.us, %122
  br i1 %exitcond1090.not, label %polly.loop_exit242.loopexit.us, label %polly.loop_header240.us

polly.loop_header251.us:                          ; preds = %polly.loop_exit242.loopexit.us, %polly.loop_header251.us
  %polly.indvar255.us = phi i64 [ %polly.indvar_next256.us, %polly.loop_header251.us ], [ %124, %polly.loop_exit242.loopexit.us ]
  %130 = add nuw nsw i64 %polly.indvar255.us, %108
  %polly.access.mul.call1259.us = mul nsw i64 %130, 1000
  %polly.access.add.call1260.us = add nuw nsw i64 %128, %polly.access.mul.call1259.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us = add nuw nsw i64 %polly.indvar255.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %polly.indvar_next256.us = add nuw nsw i64 %polly.indvar255.us, 1
  %polly.loop_cond257.not.not.us = icmp slt i64 %polly.indvar255.us, %127
  br i1 %polly.loop_cond257.not.not.us, label %polly.loop_header251.us, label %polly.loop_exit253.us

polly.loop_exit253.us:                            ; preds = %polly.loop_header251.us, %polly.loop_exit242.loopexit.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar_next238.us, 50
  br i1 %exitcond1091.not, label %polly.loop_header265.preheader, label %polly.loop_header234.us

polly.loop_exit242.loopexit.us:                   ; preds = %polly.loop_header240.us
  br i1 %polly.loop_guard254.not, label %polly.loop_exit253.us, label %polly.loop_header251.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard254.not, label %polly.loop_header265.preheader, label %polly.loop_header234

polly.loop_exit267:                               ; preds = %polly.loop_exit274, %polly.loop_header265.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1097 = add i64 %indvars.iv1096, -64
  %indvars.iv.next1101 = add i64 %indvars.iv1100, 64
  %exitcond1106.not = icmp eq i64 %polly.indvar_next232, 19
  %indvar.next1412 = add i64 %indvar1411, 1
  br i1 %exitcond1106.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_exit253
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit253 ], [ 0, %polly.loop_header228.split ]
  %131 = add nuw nsw i64 %polly.indvar237, %97
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar237, 1200
  br label %polly.loop_header251

polly.loop_exit253:                               ; preds = %polly.loop_header251
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next238, 50
  br i1 %exitcond1089.not, label %polly.loop_header265.preheader, label %polly.loop_header234

polly.loop_header265.preheader:                   ; preds = %polly.loop_exit253, %polly.loop_exit253.us, %polly.loop_header228.split
  %132 = sub nsw i64 %108, %119
  %133 = icmp sgt i64 %132, 0
  %134 = select i1 %133, i64 %132, i64 0
  %135 = mul nsw i64 %polly.indvar231, -64
  %136 = icmp slt i64 %135, -1136
  %137 = select i1 %136, i64 %135, i64 -1136
  %138 = add nsw i64 %137, 1199
  %polly.loop_guard275.not = icmp sgt i64 %134, %138
  br i1 %polly.loop_guard275.not, label %polly.loop_exit267, label %polly.loop_header265

polly.loop_header251:                             ; preds = %polly.loop_header234, %polly.loop_header251
  %polly.indvar255 = phi i64 [ %polly.indvar_next256, %polly.loop_header251 ], [ %124, %polly.loop_header234 ]
  %139 = add nuw nsw i64 %polly.indvar255, %108
  %polly.access.mul.call1259 = mul nsw i64 %139, 1000
  %polly.access.add.call1260 = add nuw nsw i64 %131, %polly.access.mul.call1259
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263 = add nuw nsw i64 %polly.indvar255, %polly.access.mul.Packed_MemRef_call1262
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next256 = add nuw nsw i64 %polly.indvar255, 1
  %polly.loop_cond257.not.not = icmp slt i64 %polly.indvar255, %127
  br i1 %polly.loop_cond257.not.not, label %polly.loop_header251, label %polly.loop_exit253

polly.loop_header265:                             ; preds = %polly.loop_header265.preheader, %polly.loop_exit274
  %polly.indvar268 = phi i64 [ %polly.indvar_next269, %polly.loop_exit274 ], [ 0, %polly.loop_header265.preheader ]
  %polly.access.mul.Packed_MemRef_call1287 = mul nuw nsw i64 %polly.indvar268, 1200
  br label %polly.loop_header272

polly.loop_exit274:                               ; preds = %polly.loop_exit282
  %polly.indvar_next269 = add nuw nsw i64 %polly.indvar268, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar_next269, 50
  br i1 %exitcond1105.not, label %polly.loop_exit267, label %polly.loop_header265

polly.loop_header272:                             ; preds = %polly.loop_header265, %polly.loop_exit282
  %indvar1414 = phi i64 [ 0, %polly.loop_header265 ], [ %indvar.next1415, %polly.loop_exit282 ]
  %indvars.iv1102 = phi i64 [ %118, %polly.loop_header265 ], [ %indvars.iv.next1103, %polly.loop_exit282 ]
  %polly.indvar276 = phi i64 [ %134, %polly.loop_header265 ], [ %polly.indvar_next277, %polly.loop_exit282 ]
  %140 = add i64 %117, %indvar1414
  %smin1416 = call i64 @llvm.smin.i64(i64 %140, i64 19)
  %141 = add nsw i64 %smin1416, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1102, i64 19)
  %142 = add nsw i64 %polly.indvar276, %120
  %polly.loop_guard2831204 = icmp sgt i64 %142, -1
  br i1 %polly.loop_guard2831204, label %polly.loop_header280.preheader, label %polly.loop_exit282

polly.loop_header280.preheader:                   ; preds = %polly.loop_header272
  %143 = add nuw nsw i64 %polly.indvar276, %119
  %polly.access.add.Packed_MemRef_call2292 = add nsw i64 %142, %polly.access.mul.Packed_MemRef_call1287
  %polly.access.Packed_MemRef_call2293 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2292
  %_p_scalar_294 = load double, double* %polly.access.Packed_MemRef_call2293, align 8
  %polly.access.Packed_MemRef_call1301 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2292
  %_p_scalar_302 = load double, double* %polly.access.Packed_MemRef_call1301, align 8
  %144 = mul i64 %143, 9600
  %min.iters.check1417 = icmp ult i64 %141, 4
  br i1 %min.iters.check1417, label %polly.loop_header280.preheader1432, label %vector.ph1418

vector.ph1418:                                    ; preds = %polly.loop_header280.preheader
  %n.vec1420 = and i64 %141, -4
  %broadcast.splatinsert1426 = insertelement <4 x double> poison, double %_p_scalar_294, i32 0
  %broadcast.splat1427 = shufflevector <4 x double> %broadcast.splatinsert1426, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1429 = insertelement <4 x double> poison, double %_p_scalar_302, i32 0
  %broadcast.splat1430 = shufflevector <4 x double> %broadcast.splatinsert1429, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1410

vector.body1410:                                  ; preds = %vector.body1410, %vector.ph1418
  %index1421 = phi i64 [ 0, %vector.ph1418 ], [ %index.next1422, %vector.body1410 ]
  %145 = add nuw nsw i64 %index1421, %108
  %146 = add nuw nsw i64 %index1421, %polly.access.mul.Packed_MemRef_call1287
  %147 = getelementptr double, double* %Packed_MemRef_call1, i64 %146
  %148 = bitcast double* %147 to <4 x double>*
  %wide.load1425 = load <4 x double>, <4 x double>* %148, align 8
  %149 = fmul fast <4 x double> %broadcast.splat1427, %wide.load1425
  %150 = getelementptr double, double* %Packed_MemRef_call2, i64 %146
  %151 = bitcast double* %150 to <4 x double>*
  %wide.load1428 = load <4 x double>, <4 x double>* %151, align 8
  %152 = fmul fast <4 x double> %broadcast.splat1430, %wide.load1428
  %153 = shl i64 %145, 3
  %154 = add i64 %153, %144
  %155 = getelementptr i8, i8* %call, i64 %154
  %156 = bitcast i8* %155 to <4 x double>*
  %wide.load1431 = load <4 x double>, <4 x double>* %156, align 8, !alias.scope !72, !noalias !74
  %157 = fadd fast <4 x double> %152, %149
  %158 = fmul fast <4 x double> %157, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %159 = fadd fast <4 x double> %158, %wide.load1431
  %160 = bitcast i8* %155 to <4 x double>*
  store <4 x double> %159, <4 x double>* %160, align 8, !alias.scope !72, !noalias !74
  %index.next1422 = add i64 %index1421, 4
  %161 = icmp eq i64 %index.next1422, %n.vec1420
  br i1 %161, label %middle.block1408, label %vector.body1410, !llvm.loop !84

middle.block1408:                                 ; preds = %vector.body1410
  %cmp.n1424 = icmp eq i64 %141, %n.vec1420
  br i1 %cmp.n1424, label %polly.loop_exit282, label %polly.loop_header280.preheader1432

polly.loop_header280.preheader1432:               ; preds = %polly.loop_header280.preheader, %middle.block1408
  %polly.indvar284.ph = phi i64 [ 0, %polly.loop_header280.preheader ], [ %n.vec1420, %middle.block1408 ]
  br label %polly.loop_header280

polly.loop_exit282:                               ; preds = %polly.loop_header280, %middle.block1408, %polly.loop_header272
  %polly.indvar_next277 = add nuw nsw i64 %polly.indvar276, 1
  %polly.loop_cond278.not.not = icmp slt i64 %polly.indvar276, %138
  %indvars.iv.next1103 = add i64 %indvars.iv1102, 1
  %indvar.next1415 = add i64 %indvar1414, 1
  br i1 %polly.loop_cond278.not.not, label %polly.loop_header272, label %polly.loop_exit274

polly.loop_header280:                             ; preds = %polly.loop_header280.preheader1432, %polly.loop_header280
  %polly.indvar284 = phi i64 [ %polly.indvar_next285, %polly.loop_header280 ], [ %polly.indvar284.ph, %polly.loop_header280.preheader1432 ]
  %162 = add nuw nsw i64 %polly.indvar284, %108
  %polly.access.add.Packed_MemRef_call1288 = add nuw nsw i64 %polly.indvar284, %polly.access.mul.Packed_MemRef_call1287
  %polly.access.Packed_MemRef_call1289 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1288
  %_p_scalar_290 = load double, double* %polly.access.Packed_MemRef_call1289, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_294, %_p_scalar_290
  %polly.access.Packed_MemRef_call2297 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1288
  %_p_scalar_298 = load double, double* %polly.access.Packed_MemRef_call2297, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_302, %_p_scalar_298
  %163 = shl i64 %162, 3
  %164 = add i64 %163, %144
  %scevgep303 = getelementptr i8, i8* %call, i64 %164
  %scevgep303304 = bitcast i8* %scevgep303 to double*
  %_p_scalar_305 = load double, double* %scevgep303304, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_305
  store double %p_add42.i118, double* %scevgep303304, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next285 = add nuw nsw i64 %polly.indvar284, 1
  %exitcond1104.not = icmp eq i64 %polly.indvar284, %smin
  br i1 %exitcond1104.not, label %polly.loop_exit282, label %polly.loop_header280, !llvm.loop !85

polly.start308:                                   ; preds = %kernel_syr2k.exit
  %malloccall310 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  %malloccall312 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  br label %polly.loop_header396

polly.exiting309:                                 ; preds = %polly.loop_exit420
  tail call void @free(i8* %malloccall310)
  tail call void @free(i8* %malloccall312)
  br label %kernel_syr2k.exit90

polly.loop_header396:                             ; preds = %polly.loop_exit404, %polly.start308
  %indvar1347 = phi i64 [ %indvar.next1348, %polly.loop_exit404 ], [ 0, %polly.start308 ]
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit404 ], [ 1, %polly.start308 ]
  %165 = add i64 %indvar1347, 1
  %166 = mul nuw nsw i64 %polly.indvar399, 9600
  %scevgep408 = getelementptr i8, i8* %call, i64 %166
  %min.iters.check1349 = icmp ult i64 %165, 4
  br i1 %min.iters.check1349, label %polly.loop_header402.preheader, label %vector.ph1350

vector.ph1350:                                    ; preds = %polly.loop_header396
  %n.vec1352 = and i64 %165, -4
  br label %vector.body1346

vector.body1346:                                  ; preds = %vector.body1346, %vector.ph1350
  %index1353 = phi i64 [ 0, %vector.ph1350 ], [ %index.next1354, %vector.body1346 ]
  %167 = shl nuw nsw i64 %index1353, 3
  %168 = getelementptr i8, i8* %scevgep408, i64 %167
  %169 = bitcast i8* %168 to <4 x double>*
  %wide.load1357 = load <4 x double>, <4 x double>* %169, align 8, !alias.scope !86, !noalias !88
  %170 = fmul fast <4 x double> %wide.load1357, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %171 = bitcast i8* %168 to <4 x double>*
  store <4 x double> %170, <4 x double>* %171, align 8, !alias.scope !86, !noalias !88
  %index.next1354 = add i64 %index1353, 4
  %172 = icmp eq i64 %index.next1354, %n.vec1352
  br i1 %172, label %middle.block1344, label %vector.body1346, !llvm.loop !93

middle.block1344:                                 ; preds = %vector.body1346
  %cmp.n1356 = icmp eq i64 %165, %n.vec1352
  br i1 %cmp.n1356, label %polly.loop_exit404, label %polly.loop_header402.preheader

polly.loop_header402.preheader:                   ; preds = %polly.loop_header396, %middle.block1344
  %polly.indvar405.ph = phi i64 [ 0, %polly.loop_header396 ], [ %n.vec1352, %middle.block1344 ]
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_header402, %middle.block1344
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond1138.not = icmp eq i64 %polly.indvar_next400, 1200
  %indvar.next1348 = add i64 %indvar1347, 1
  br i1 %exitcond1138.not, label %polly.loop_header412.preheader, label %polly.loop_header396

polly.loop_header412.preheader:                   ; preds = %polly.loop_exit404
  %Packed_MemRef_call1311 = bitcast i8* %malloccall310 to double*
  %Packed_MemRef_call2313 = bitcast i8* %malloccall312 to double*
  br label %polly.loop_header412

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_header402
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_header402 ], [ %polly.indvar405.ph, %polly.loop_header402.preheader ]
  %173 = shl nuw nsw i64 %polly.indvar405, 3
  %scevgep409 = getelementptr i8, i8* %scevgep408, i64 %173
  %scevgep409410 = bitcast i8* %scevgep409 to double*
  %_p_scalar_411 = load double, double* %scevgep409410, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_411, 1.200000e+00
  store double %p_mul.i57, double* %scevgep409410, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond1137.not = icmp eq i64 %polly.indvar_next406, %polly.indvar399
  br i1 %exitcond1137.not, label %polly.loop_exit404, label %polly.loop_header402, !llvm.loop !94

polly.loop_header412:                             ; preds = %polly.loop_header412.preheader, %polly.loop_exit420
  %polly.indvar415 = phi i64 [ %polly.indvar_next416, %polly.loop_exit420 ], [ 0, %polly.loop_header412.preheader ]
  %174 = mul nuw nsw i64 %polly.indvar415, 50
  br label %polly.loop_header418

polly.loop_exit420:                               ; preds = %polly.loop_exit443
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %exitcond1136.not = icmp eq i64 %polly.indvar_next416, 20
  br i1 %exitcond1136.not, label %polly.exiting309, label %polly.loop_header412

polly.loop_header418:                             ; preds = %polly.loop_exit443, %polly.loop_header412
  %indvars.iv1125 = phi i64 [ %indvars.iv.next1126, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1120 = phi i64 [ %indvars.iv.next1121, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1118 = phi i64 [ %indvars.iv.next1119, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1111 = phi i64 [ %indvars.iv.next1112, %polly.loop_exit443 ], [ 1200, %polly.loop_header412 ]
  %polly.indvar421 = phi i64 [ %polly.indvar_next422, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %175 = mul nuw nsw i64 %polly.indvar421, 20
  %176 = and i64 %175, 9223372036854775744
  %177 = and i64 %175, 60
  %178 = mul nsw i64 %polly.indvar421, -20
  %179 = add i64 %178, %176
  %180 = shl nuw nsw i64 %indvars.iv1120, 2
  %181 = and i64 %180, 9223372036854775744
  %182 = sub nsw i64 %indvars.iv1118, %181
  %183 = add i64 %indvars.iv1125, %181
  %184 = mul nsw i64 %polly.indvar421, -20
  %185 = mul nuw nsw i64 %polly.indvar421, 20
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_exit432
  %186 = add nsw i64 %184, 1199
  %187 = mul nuw nsw i64 %polly.indvar421, 5
  %pexp.p_div_q440 = lshr i64 %187, 4
  br label %polly.loop_header441

polly.loop_exit443:                               ; preds = %polly.loop_exit482
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %indvars.iv.next1112 = add nsw i64 %indvars.iv1111, -20
  %indvars.iv.next1119 = add nuw nsw i64 %indvars.iv1118, 20
  %indvars.iv.next1121 = add nuw nsw i64 %indvars.iv1120, 5
  %indvars.iv.next1126 = add nsw i64 %indvars.iv1125, -20
  %exitcond1135.not = icmp eq i64 %polly.indvar_next422, 60
  br i1 %exitcond1135.not, label %polly.loop_exit420, label %polly.loop_header418

polly.loop_header424:                             ; preds = %polly.loop_exit432, %polly.loop_header418
  %polly.indvar427 = phi i64 [ 0, %polly.loop_header418 ], [ %polly.indvar_next428, %polly.loop_exit432 ]
  %188 = add nuw nsw i64 %polly.indvar427, %174
  %polly.access.mul.Packed_MemRef_call2313 = mul nuw nsw i64 %polly.indvar427, 1200
  br label %polly.loop_header430

polly.loop_exit432:                               ; preds = %polly.loop_header430
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %exitcond1114.not = icmp eq i64 %polly.indvar_next428, 50
  br i1 %exitcond1114.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header430:                             ; preds = %polly.loop_header430, %polly.loop_header424
  %polly.indvar433 = phi i64 [ 0, %polly.loop_header424 ], [ %polly.indvar_next434, %polly.loop_header430 ]
  %189 = add nuw nsw i64 %polly.indvar433, %185
  %polly.access.mul.call2437 = mul nuw nsw i64 %189, 1000
  %polly.access.add.call2438 = add nuw nsw i64 %188, %polly.access.mul.call2437
  %polly.access.call2439 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2438
  %polly.access.call2439.load = load double, double* %polly.access.call2439, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2313 = add nuw nsw i64 %polly.indvar433, %polly.access.mul.Packed_MemRef_call2313
  %polly.access.Packed_MemRef_call2313 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313
  store double %polly.access.call2439.load, double* %polly.access.Packed_MemRef_call2313, align 8
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar_next434, %indvars.iv1111
  br i1 %exitcond1113.not, label %polly.loop_exit432, label %polly.loop_header430

polly.loop_header441:                             ; preds = %polly.loop_exit482, %polly.loop_exit426
  %indvar1361 = phi i64 [ %indvar.next1362, %polly.loop_exit482 ], [ 0, %polly.loop_exit426 ]
  %indvars.iv1127 = phi i64 [ %indvars.iv.next1128, %polly.loop_exit482 ], [ %183, %polly.loop_exit426 ]
  %indvars.iv1122 = phi i64 [ %indvars.iv.next1123, %polly.loop_exit482 ], [ %182, %polly.loop_exit426 ]
  %polly.indvar444 = phi i64 [ %polly.indvar_next445, %polly.loop_exit482 ], [ %pexp.p_div_q440, %polly.loop_exit426 ]
  %190 = mul nsw i64 %indvar1361, -64
  %191 = or i64 %177, %190
  %smax1363 = call i64 @llvm.smax.i64(i64 %191, i64 0)
  %192 = shl nuw nsw i64 %indvar1361, 6
  %193 = add i64 %179, %192
  %194 = add i64 %smax1363, %193
  %smax1124 = call i64 @llvm.smax.i64(i64 %indvars.iv1122, i64 0)
  %195 = add i64 %smax1124, %indvars.iv1127
  %196 = shl nsw i64 %polly.indvar444, 6
  %197 = add nsw i64 %196, %184
  %198 = add nsw i64 %197, -1
  %.inv942 = icmp sgt i64 %197, 19
  %199 = select i1 %.inv942, i64 19, i64 %198
  %polly.loop_guard457 = icmp sgt i64 %199, -1
  %200 = icmp sgt i64 %197, 0
  %201 = select i1 %200, i64 %197, i64 0
  %202 = add nsw i64 %197, 63
  %203 = icmp slt i64 %186, %202
  %204 = select i1 %203, i64 %186, i64 %202
  %polly.loop_guard469.not = icmp sgt i64 %201, %204
  br i1 %polly.loop_guard457, label %polly.loop_header447.us, label %polly.loop_header441.split

polly.loop_header447.us:                          ; preds = %polly.loop_header441, %polly.loop_exit468.us
  %polly.indvar450.us = phi i64 [ %polly.indvar_next451.us, %polly.loop_exit468.us ], [ 0, %polly.loop_header441 ]
  %205 = add nuw nsw i64 %polly.indvar450.us, %174
  %polly.access.mul.Packed_MemRef_call1311.us = mul nuw nsw i64 %polly.indvar450.us, 1200
  br label %polly.loop_header454.us

polly.loop_header454.us:                          ; preds = %polly.loop_header447.us, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ 0, %polly.loop_header447.us ]
  %206 = add nuw nsw i64 %polly.indvar458.us, %185
  %polly.access.mul.call1462.us = mul nuw nsw i64 %206, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %205, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1311.us = add nuw nsw i64 %polly.indvar458.us, %polly.access.mul.Packed_MemRef_call1311.us
  %polly.access.Packed_MemRef_call1311.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1311.us, align 8
  %polly.indvar_next459.us = add nuw i64 %polly.indvar458.us, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar458.us, %199
  br i1 %exitcond1116.not, label %polly.loop_exit456.loopexit.us, label %polly.loop_header454.us

polly.loop_header466.us:                          ; preds = %polly.loop_exit456.loopexit.us, %polly.loop_header466.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_header466.us ], [ %201, %polly.loop_exit456.loopexit.us ]
  %207 = add nuw nsw i64 %polly.indvar470.us, %185
  %polly.access.mul.call1474.us = mul nsw i64 %207, 1000
  %polly.access.add.call1475.us = add nuw nsw i64 %205, %polly.access.mul.call1474.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.us
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1311478.us = add nuw nsw i64 %polly.indvar470.us, %polly.access.mul.Packed_MemRef_call1311.us
  %polly.access.Packed_MemRef_call1311479.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.us
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1311479.us, align 8
  %polly.indvar_next471.us = add nuw nsw i64 %polly.indvar470.us, 1
  %polly.loop_cond472.not.not.us = icmp slt i64 %polly.indvar470.us, %204
  br i1 %polly.loop_cond472.not.not.us, label %polly.loop_header466.us, label %polly.loop_exit468.us

polly.loop_exit468.us:                            ; preds = %polly.loop_header466.us, %polly.loop_exit456.loopexit.us
  %polly.indvar_next451.us = add nuw nsw i64 %polly.indvar450.us, 1
  %exitcond1117.not = icmp eq i64 %polly.indvar_next451.us, 50
  br i1 %exitcond1117.not, label %polly.loop_header480.preheader, label %polly.loop_header447.us

polly.loop_exit456.loopexit.us:                   ; preds = %polly.loop_header454.us
  br i1 %polly.loop_guard469.not, label %polly.loop_exit468.us, label %polly.loop_header466.us

polly.loop_header441.split:                       ; preds = %polly.loop_header441
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header447

polly.loop_exit482:                               ; preds = %polly.loop_exit489, %polly.loop_header480.preheader
  %polly.indvar_next445 = add nuw nsw i64 %polly.indvar444, 1
  %indvars.iv.next1123 = add i64 %indvars.iv1122, -64
  %indvars.iv.next1128 = add i64 %indvars.iv1127, 64
  %exitcond1134.not = icmp eq i64 %polly.indvar_next445, 19
  %indvar.next1362 = add i64 %indvar1361, 1
  br i1 %exitcond1134.not, label %polly.loop_exit443, label %polly.loop_header441

polly.loop_header447:                             ; preds = %polly.loop_header441.split, %polly.loop_exit468
  %polly.indvar450 = phi i64 [ %polly.indvar_next451, %polly.loop_exit468 ], [ 0, %polly.loop_header441.split ]
  %208 = add nuw nsw i64 %polly.indvar450, %174
  %polly.access.mul.Packed_MemRef_call1311477 = mul nuw nsw i64 %polly.indvar450, 1200
  br label %polly.loop_header466

polly.loop_exit468:                               ; preds = %polly.loop_header466
  %polly.indvar_next451 = add nuw nsw i64 %polly.indvar450, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar_next451, 50
  br i1 %exitcond1115.not, label %polly.loop_header480.preheader, label %polly.loop_header447

polly.loop_header480.preheader:                   ; preds = %polly.loop_exit468, %polly.loop_exit468.us, %polly.loop_header441.split
  %209 = sub nsw i64 %185, %196
  %210 = icmp sgt i64 %209, 0
  %211 = select i1 %210, i64 %209, i64 0
  %212 = mul nsw i64 %polly.indvar444, -64
  %213 = icmp slt i64 %212, -1136
  %214 = select i1 %213, i64 %212, i64 -1136
  %215 = add nsw i64 %214, 1199
  %polly.loop_guard490.not = icmp sgt i64 %211, %215
  br i1 %polly.loop_guard490.not, label %polly.loop_exit482, label %polly.loop_header480

polly.loop_header466:                             ; preds = %polly.loop_header447, %polly.loop_header466
  %polly.indvar470 = phi i64 [ %polly.indvar_next471, %polly.loop_header466 ], [ %201, %polly.loop_header447 ]
  %216 = add nuw nsw i64 %polly.indvar470, %185
  %polly.access.mul.call1474 = mul nsw i64 %216, 1000
  %polly.access.add.call1475 = add nuw nsw i64 %208, %polly.access.mul.call1474
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1311478 = add nuw nsw i64 %polly.indvar470, %polly.access.mul.Packed_MemRef_call1311477
  %polly.access.Packed_MemRef_call1311479 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1311479, align 8
  %polly.indvar_next471 = add nuw nsw i64 %polly.indvar470, 1
  %polly.loop_cond472.not.not = icmp slt i64 %polly.indvar470, %204
  br i1 %polly.loop_cond472.not.not, label %polly.loop_header466, label %polly.loop_exit468

polly.loop_header480:                             ; preds = %polly.loop_header480.preheader, %polly.loop_exit489
  %polly.indvar483 = phi i64 [ %polly.indvar_next484, %polly.loop_exit489 ], [ 0, %polly.loop_header480.preheader ]
  %polly.access.mul.Packed_MemRef_call1311502 = mul nuw nsw i64 %polly.indvar483, 1200
  br label %polly.loop_header487

polly.loop_exit489:                               ; preds = %polly.loop_exit497
  %polly.indvar_next484 = add nuw nsw i64 %polly.indvar483, 1
  %exitcond1133.not = icmp eq i64 %polly.indvar_next484, 50
  br i1 %exitcond1133.not, label %polly.loop_exit482, label %polly.loop_header480

polly.loop_header487:                             ; preds = %polly.loop_header480, %polly.loop_exit497
  %indvar1364 = phi i64 [ 0, %polly.loop_header480 ], [ %indvar.next1365, %polly.loop_exit497 ]
  %indvars.iv1129 = phi i64 [ %195, %polly.loop_header480 ], [ %indvars.iv.next1130, %polly.loop_exit497 ]
  %polly.indvar491 = phi i64 [ %211, %polly.loop_header480 ], [ %polly.indvar_next492, %polly.loop_exit497 ]
  %217 = add i64 %194, %indvar1364
  %smin1366 = call i64 @llvm.smin.i64(i64 %217, i64 19)
  %218 = add nsw i64 %smin1366, 1
  %smin1131 = call i64 @llvm.smin.i64(i64 %indvars.iv1129, i64 19)
  %219 = add nsw i64 %polly.indvar491, %197
  %polly.loop_guard4981205 = icmp sgt i64 %219, -1
  br i1 %polly.loop_guard4981205, label %polly.loop_header495.preheader, label %polly.loop_exit497

polly.loop_header495.preheader:                   ; preds = %polly.loop_header487
  %220 = add nuw nsw i64 %polly.indvar491, %196
  %polly.access.add.Packed_MemRef_call2313507 = add nsw i64 %219, %polly.access.mul.Packed_MemRef_call1311502
  %polly.access.Packed_MemRef_call2313508 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313507
  %_p_scalar_509 = load double, double* %polly.access.Packed_MemRef_call2313508, align 8
  %polly.access.Packed_MemRef_call1311516 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call2313507
  %_p_scalar_517 = load double, double* %polly.access.Packed_MemRef_call1311516, align 8
  %221 = mul i64 %220, 9600
  %min.iters.check1367 = icmp ult i64 %218, 4
  br i1 %min.iters.check1367, label %polly.loop_header495.preheader1436, label %vector.ph1368

vector.ph1368:                                    ; preds = %polly.loop_header495.preheader
  %n.vec1370 = and i64 %218, -4
  %broadcast.splatinsert1376 = insertelement <4 x double> poison, double %_p_scalar_509, i32 0
  %broadcast.splat1377 = shufflevector <4 x double> %broadcast.splatinsert1376, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1379 = insertelement <4 x double> poison, double %_p_scalar_517, i32 0
  %broadcast.splat1380 = shufflevector <4 x double> %broadcast.splatinsert1379, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1360

vector.body1360:                                  ; preds = %vector.body1360, %vector.ph1368
  %index1371 = phi i64 [ 0, %vector.ph1368 ], [ %index.next1372, %vector.body1360 ]
  %222 = add nuw nsw i64 %index1371, %185
  %223 = add nuw nsw i64 %index1371, %polly.access.mul.Packed_MemRef_call1311502
  %224 = getelementptr double, double* %Packed_MemRef_call1311, i64 %223
  %225 = bitcast double* %224 to <4 x double>*
  %wide.load1375 = load <4 x double>, <4 x double>* %225, align 8
  %226 = fmul fast <4 x double> %broadcast.splat1377, %wide.load1375
  %227 = getelementptr double, double* %Packed_MemRef_call2313, i64 %223
  %228 = bitcast double* %227 to <4 x double>*
  %wide.load1378 = load <4 x double>, <4 x double>* %228, align 8
  %229 = fmul fast <4 x double> %broadcast.splat1380, %wide.load1378
  %230 = shl i64 %222, 3
  %231 = add i64 %230, %221
  %232 = getelementptr i8, i8* %call, i64 %231
  %233 = bitcast i8* %232 to <4 x double>*
  %wide.load1381 = load <4 x double>, <4 x double>* %233, align 8, !alias.scope !86, !noalias !88
  %234 = fadd fast <4 x double> %229, %226
  %235 = fmul fast <4 x double> %234, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %236 = fadd fast <4 x double> %235, %wide.load1381
  %237 = bitcast i8* %232 to <4 x double>*
  store <4 x double> %236, <4 x double>* %237, align 8, !alias.scope !86, !noalias !88
  %index.next1372 = add i64 %index1371, 4
  %238 = icmp eq i64 %index.next1372, %n.vec1370
  br i1 %238, label %middle.block1358, label %vector.body1360, !llvm.loop !97

middle.block1358:                                 ; preds = %vector.body1360
  %cmp.n1374 = icmp eq i64 %218, %n.vec1370
  br i1 %cmp.n1374, label %polly.loop_exit497, label %polly.loop_header495.preheader1436

polly.loop_header495.preheader1436:               ; preds = %polly.loop_header495.preheader, %middle.block1358
  %polly.indvar499.ph = phi i64 [ 0, %polly.loop_header495.preheader ], [ %n.vec1370, %middle.block1358 ]
  br label %polly.loop_header495

polly.loop_exit497:                               ; preds = %polly.loop_header495, %middle.block1358, %polly.loop_header487
  %polly.indvar_next492 = add nuw nsw i64 %polly.indvar491, 1
  %polly.loop_cond493.not.not = icmp slt i64 %polly.indvar491, %215
  %indvars.iv.next1130 = add i64 %indvars.iv1129, 1
  %indvar.next1365 = add i64 %indvar1364, 1
  br i1 %polly.loop_cond493.not.not, label %polly.loop_header487, label %polly.loop_exit489

polly.loop_header495:                             ; preds = %polly.loop_header495.preheader1436, %polly.loop_header495
  %polly.indvar499 = phi i64 [ %polly.indvar_next500, %polly.loop_header495 ], [ %polly.indvar499.ph, %polly.loop_header495.preheader1436 ]
  %239 = add nuw nsw i64 %polly.indvar499, %185
  %polly.access.add.Packed_MemRef_call1311503 = add nuw nsw i64 %polly.indvar499, %polly.access.mul.Packed_MemRef_call1311502
  %polly.access.Packed_MemRef_call1311504 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311503
  %_p_scalar_505 = load double, double* %polly.access.Packed_MemRef_call1311504, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_509, %_p_scalar_505
  %polly.access.Packed_MemRef_call2313512 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call1311503
  %_p_scalar_513 = load double, double* %polly.access.Packed_MemRef_call2313512, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_517, %_p_scalar_513
  %240 = shl i64 %239, 3
  %241 = add i64 %240, %221
  %scevgep518 = getelementptr i8, i8* %call, i64 %241
  %scevgep518519 = bitcast i8* %scevgep518 to double*
  %_p_scalar_520 = load double, double* %scevgep518519, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_520
  store double %p_add42.i79, double* %scevgep518519, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next500 = add nuw nsw i64 %polly.indvar499, 1
  %exitcond1132.not = icmp eq i64 %polly.indvar499, %smin1131
  br i1 %exitcond1132.not, label %polly.loop_exit497, label %polly.loop_header495, !llvm.loop !98

polly.start523:                                   ; preds = %init_array.exit
  %malloccall525 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  %malloccall527 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  br label %polly.loop_header611

polly.exiting524:                                 ; preds = %polly.loop_exit635
  tail call void @free(i8* %malloccall525)
  tail call void @free(i8* %malloccall527)
  br label %kernel_syr2k.exit

polly.loop_header611:                             ; preds = %polly.loop_exit619, %polly.start523
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit619 ], [ 0, %polly.start523 ]
  %polly.indvar614 = phi i64 [ %polly.indvar_next615, %polly.loop_exit619 ], [ 1, %polly.start523 ]
  %242 = add i64 %indvar, 1
  %243 = mul nuw nsw i64 %polly.indvar614, 9600
  %scevgep623 = getelementptr i8, i8* %call, i64 %243
  %min.iters.check1299 = icmp ult i64 %242, 4
  br i1 %min.iters.check1299, label %polly.loop_header617.preheader, label %vector.ph1300

vector.ph1300:                                    ; preds = %polly.loop_header611
  %n.vec1302 = and i64 %242, -4
  br label %vector.body1298

vector.body1298:                                  ; preds = %vector.body1298, %vector.ph1300
  %index1303 = phi i64 [ 0, %vector.ph1300 ], [ %index.next1304, %vector.body1298 ]
  %244 = shl nuw nsw i64 %index1303, 3
  %245 = getelementptr i8, i8* %scevgep623, i64 %244
  %246 = bitcast i8* %245 to <4 x double>*
  %wide.load1307 = load <4 x double>, <4 x double>* %246, align 8, !alias.scope !99, !noalias !101
  %247 = fmul fast <4 x double> %wide.load1307, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %248 = bitcast i8* %245 to <4 x double>*
  store <4 x double> %247, <4 x double>* %248, align 8, !alias.scope !99, !noalias !101
  %index.next1304 = add i64 %index1303, 4
  %249 = icmp eq i64 %index.next1304, %n.vec1302
  br i1 %249, label %middle.block1296, label %vector.body1298, !llvm.loop !106

middle.block1296:                                 ; preds = %vector.body1298
  %cmp.n1306 = icmp eq i64 %242, %n.vec1302
  br i1 %cmp.n1306, label %polly.loop_exit619, label %polly.loop_header617.preheader

polly.loop_header617.preheader:                   ; preds = %polly.loop_header611, %middle.block1296
  %polly.indvar620.ph = phi i64 [ 0, %polly.loop_header611 ], [ %n.vec1302, %middle.block1296 ]
  br label %polly.loop_header617

polly.loop_exit619:                               ; preds = %polly.loop_header617, %middle.block1296
  %polly.indvar_next615 = add nuw nsw i64 %polly.indvar614, 1
  %exitcond1166.not = icmp eq i64 %polly.indvar_next615, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1166.not, label %polly.loop_header627.preheader, label %polly.loop_header611

polly.loop_header627.preheader:                   ; preds = %polly.loop_exit619
  %Packed_MemRef_call1526 = bitcast i8* %malloccall525 to double*
  %Packed_MemRef_call2528 = bitcast i8* %malloccall527 to double*
  br label %polly.loop_header627

polly.loop_header617:                             ; preds = %polly.loop_header617.preheader, %polly.loop_header617
  %polly.indvar620 = phi i64 [ %polly.indvar_next621, %polly.loop_header617 ], [ %polly.indvar620.ph, %polly.loop_header617.preheader ]
  %250 = shl nuw nsw i64 %polly.indvar620, 3
  %scevgep624 = getelementptr i8, i8* %scevgep623, i64 %250
  %scevgep624625 = bitcast i8* %scevgep624 to double*
  %_p_scalar_626 = load double, double* %scevgep624625, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_626, 1.200000e+00
  store double %p_mul.i, double* %scevgep624625, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next621 = add nuw nsw i64 %polly.indvar620, 1
  %exitcond1165.not = icmp eq i64 %polly.indvar_next621, %polly.indvar614
  br i1 %exitcond1165.not, label %polly.loop_exit619, label %polly.loop_header617, !llvm.loop !107

polly.loop_header627:                             ; preds = %polly.loop_header627.preheader, %polly.loop_exit635
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.loop_exit635 ], [ 0, %polly.loop_header627.preheader ]
  %251 = mul nuw nsw i64 %polly.indvar630, 50
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit658
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %exitcond1164.not = icmp eq i64 %polly.indvar_next631, 20
  br i1 %exitcond1164.not, label %polly.exiting524, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_exit658, %polly.loop_header627
  %indvars.iv1153 = phi i64 [ %indvars.iv.next1154, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1148 = phi i64 [ %indvars.iv.next1149, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1146 = phi i64 [ %indvars.iv.next1147, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1139 = phi i64 [ %indvars.iv.next1140, %polly.loop_exit658 ], [ 1200, %polly.loop_header627 ]
  %polly.indvar636 = phi i64 [ %polly.indvar_next637, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %252 = mul nuw nsw i64 %polly.indvar636, 20
  %253 = and i64 %252, 9223372036854775744
  %254 = and i64 %252, 60
  %255 = mul nsw i64 %polly.indvar636, -20
  %256 = add i64 %255, %253
  %257 = shl nuw nsw i64 %indvars.iv1148, 2
  %258 = and i64 %257, 9223372036854775744
  %259 = sub nsw i64 %indvars.iv1146, %258
  %260 = add i64 %indvars.iv1153, %258
  %261 = mul nsw i64 %polly.indvar636, -20
  %262 = mul nuw nsw i64 %polly.indvar636, 20
  br label %polly.loop_header639

polly.loop_exit641:                               ; preds = %polly.loop_exit647
  %263 = add nsw i64 %261, 1199
  %264 = mul nuw nsw i64 %polly.indvar636, 5
  %pexp.p_div_q655 = lshr i64 %264, 4
  br label %polly.loop_header656

polly.loop_exit658:                               ; preds = %polly.loop_exit697
  %polly.indvar_next637 = add nuw nsw i64 %polly.indvar636, 1
  %indvars.iv.next1140 = add nsw i64 %indvars.iv1139, -20
  %indvars.iv.next1147 = add nuw nsw i64 %indvars.iv1146, 20
  %indvars.iv.next1149 = add nuw nsw i64 %indvars.iv1148, 5
  %indvars.iv.next1154 = add nsw i64 %indvars.iv1153, -20
  %exitcond1163.not = icmp eq i64 %polly.indvar_next637, 60
  br i1 %exitcond1163.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header639:                             ; preds = %polly.loop_exit647, %polly.loop_header633
  %polly.indvar642 = phi i64 [ 0, %polly.loop_header633 ], [ %polly.indvar_next643, %polly.loop_exit647 ]
  %265 = add nuw nsw i64 %polly.indvar642, %251
  %polly.access.mul.Packed_MemRef_call2528 = mul nuw nsw i64 %polly.indvar642, 1200
  br label %polly.loop_header645

polly.loop_exit647:                               ; preds = %polly.loop_header645
  %polly.indvar_next643 = add nuw nsw i64 %polly.indvar642, 1
  %exitcond1142.not = icmp eq i64 %polly.indvar_next643, 50
  br i1 %exitcond1142.not, label %polly.loop_exit641, label %polly.loop_header639

polly.loop_header645:                             ; preds = %polly.loop_header645, %polly.loop_header639
  %polly.indvar648 = phi i64 [ 0, %polly.loop_header639 ], [ %polly.indvar_next649, %polly.loop_header645 ]
  %266 = add nuw nsw i64 %polly.indvar648, %262
  %polly.access.mul.call2652 = mul nuw nsw i64 %266, 1000
  %polly.access.add.call2653 = add nuw nsw i64 %265, %polly.access.mul.call2652
  %polly.access.call2654 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2653
  %polly.access.call2654.load = load double, double* %polly.access.call2654, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2528 = add nuw nsw i64 %polly.indvar648, %polly.access.mul.Packed_MemRef_call2528
  %polly.access.Packed_MemRef_call2528 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528
  store double %polly.access.call2654.load, double* %polly.access.Packed_MemRef_call2528, align 8
  %polly.indvar_next649 = add nuw nsw i64 %polly.indvar648, 1
  %exitcond1141.not = icmp eq i64 %polly.indvar_next649, %indvars.iv1139
  br i1 %exitcond1141.not, label %polly.loop_exit647, label %polly.loop_header645

polly.loop_header656:                             ; preds = %polly.loop_exit697, %polly.loop_exit641
  %indvar1311 = phi i64 [ %indvar.next1312, %polly.loop_exit697 ], [ 0, %polly.loop_exit641 ]
  %indvars.iv1155 = phi i64 [ %indvars.iv.next1156, %polly.loop_exit697 ], [ %260, %polly.loop_exit641 ]
  %indvars.iv1150 = phi i64 [ %indvars.iv.next1151, %polly.loop_exit697 ], [ %259, %polly.loop_exit641 ]
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_exit697 ], [ %pexp.p_div_q655, %polly.loop_exit641 ]
  %267 = mul nsw i64 %indvar1311, -64
  %268 = or i64 %254, %267
  %smax1313 = call i64 @llvm.smax.i64(i64 %268, i64 0)
  %269 = shl nuw nsw i64 %indvar1311, 6
  %270 = add i64 %256, %269
  %271 = add i64 %smax1313, %270
  %smax1152 = call i64 @llvm.smax.i64(i64 %indvars.iv1150, i64 0)
  %272 = add i64 %smax1152, %indvars.iv1155
  %273 = shl nsw i64 %polly.indvar659, 6
  %274 = add nsw i64 %273, %261
  %275 = add nsw i64 %274, -1
  %.inv943 = icmp sgt i64 %274, 19
  %276 = select i1 %.inv943, i64 19, i64 %275
  %polly.loop_guard672 = icmp sgt i64 %276, -1
  %277 = icmp sgt i64 %274, 0
  %278 = select i1 %277, i64 %274, i64 0
  %279 = add nsw i64 %274, 63
  %280 = icmp slt i64 %263, %279
  %281 = select i1 %280, i64 %263, i64 %279
  %polly.loop_guard684.not = icmp sgt i64 %278, %281
  br i1 %polly.loop_guard672, label %polly.loop_header662.us, label %polly.loop_header656.split

polly.loop_header662.us:                          ; preds = %polly.loop_header656, %polly.loop_exit683.us
  %polly.indvar665.us = phi i64 [ %polly.indvar_next666.us, %polly.loop_exit683.us ], [ 0, %polly.loop_header656 ]
  %282 = add nuw nsw i64 %polly.indvar665.us, %251
  %polly.access.mul.Packed_MemRef_call1526.us = mul nuw nsw i64 %polly.indvar665.us, 1200
  br label %polly.loop_header669.us

polly.loop_header669.us:                          ; preds = %polly.loop_header662.us, %polly.loop_header669.us
  %polly.indvar673.us = phi i64 [ %polly.indvar_next674.us, %polly.loop_header669.us ], [ 0, %polly.loop_header662.us ]
  %283 = add nuw nsw i64 %polly.indvar673.us, %262
  %polly.access.mul.call1677.us = mul nuw nsw i64 %283, 1000
  %polly.access.add.call1678.us = add nuw nsw i64 %282, %polly.access.mul.call1677.us
  %polly.access.call1679.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1678.us
  %polly.access.call1679.load.us = load double, double* %polly.access.call1679.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us = add nuw nsw i64 %polly.indvar673.us, %polly.access.mul.Packed_MemRef_call1526.us
  %polly.access.Packed_MemRef_call1526.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us
  store double %polly.access.call1679.load.us, double* %polly.access.Packed_MemRef_call1526.us, align 8
  %polly.indvar_next674.us = add nuw i64 %polly.indvar673.us, 1
  %exitcond1144.not = icmp eq i64 %polly.indvar673.us, %276
  br i1 %exitcond1144.not, label %polly.loop_exit671.loopexit.us, label %polly.loop_header669.us

polly.loop_header681.us:                          ; preds = %polly.loop_exit671.loopexit.us, %polly.loop_header681.us
  %polly.indvar685.us = phi i64 [ %polly.indvar_next686.us, %polly.loop_header681.us ], [ %278, %polly.loop_exit671.loopexit.us ]
  %284 = add nuw nsw i64 %polly.indvar685.us, %262
  %polly.access.mul.call1689.us = mul nsw i64 %284, 1000
  %polly.access.add.call1690.us = add nuw nsw i64 %282, %polly.access.mul.call1689.us
  %polly.access.call1691.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.us
  %polly.access.call1691.load.us = load double, double* %polly.access.call1691.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526693.us = add nuw nsw i64 %polly.indvar685.us, %polly.access.mul.Packed_MemRef_call1526.us
  %polly.access.Packed_MemRef_call1526694.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.us
  store double %polly.access.call1691.load.us, double* %polly.access.Packed_MemRef_call1526694.us, align 8
  %polly.indvar_next686.us = add nuw nsw i64 %polly.indvar685.us, 1
  %polly.loop_cond687.not.not.us = icmp slt i64 %polly.indvar685.us, %281
  br i1 %polly.loop_cond687.not.not.us, label %polly.loop_header681.us, label %polly.loop_exit683.us

polly.loop_exit683.us:                            ; preds = %polly.loop_header681.us, %polly.loop_exit671.loopexit.us
  %polly.indvar_next666.us = add nuw nsw i64 %polly.indvar665.us, 1
  %exitcond1145.not = icmp eq i64 %polly.indvar_next666.us, 50
  br i1 %exitcond1145.not, label %polly.loop_header695.preheader, label %polly.loop_header662.us

polly.loop_exit671.loopexit.us:                   ; preds = %polly.loop_header669.us
  br i1 %polly.loop_guard684.not, label %polly.loop_exit683.us, label %polly.loop_header681.us

polly.loop_header656.split:                       ; preds = %polly.loop_header656
  br i1 %polly.loop_guard684.not, label %polly.loop_header695.preheader, label %polly.loop_header662

polly.loop_exit697:                               ; preds = %polly.loop_exit704, %polly.loop_header695.preheader
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %indvars.iv.next1151 = add i64 %indvars.iv1150, -64
  %indvars.iv.next1156 = add i64 %indvars.iv1155, 64
  %exitcond1162.not = icmp eq i64 %polly.indvar_next660, 19
  %indvar.next1312 = add i64 %indvar1311, 1
  br i1 %exitcond1162.not, label %polly.loop_exit658, label %polly.loop_header656

polly.loop_header662:                             ; preds = %polly.loop_header656.split, %polly.loop_exit683
  %polly.indvar665 = phi i64 [ %polly.indvar_next666, %polly.loop_exit683 ], [ 0, %polly.loop_header656.split ]
  %285 = add nuw nsw i64 %polly.indvar665, %251
  %polly.access.mul.Packed_MemRef_call1526692 = mul nuw nsw i64 %polly.indvar665, 1200
  br label %polly.loop_header681

polly.loop_exit683:                               ; preds = %polly.loop_header681
  %polly.indvar_next666 = add nuw nsw i64 %polly.indvar665, 1
  %exitcond1143.not = icmp eq i64 %polly.indvar_next666, 50
  br i1 %exitcond1143.not, label %polly.loop_header695.preheader, label %polly.loop_header662

polly.loop_header695.preheader:                   ; preds = %polly.loop_exit683, %polly.loop_exit683.us, %polly.loop_header656.split
  %286 = sub nsw i64 %262, %273
  %287 = icmp sgt i64 %286, 0
  %288 = select i1 %287, i64 %286, i64 0
  %289 = mul nsw i64 %polly.indvar659, -64
  %290 = icmp slt i64 %289, -1136
  %291 = select i1 %290, i64 %289, i64 -1136
  %292 = add nsw i64 %291, 1199
  %polly.loop_guard705.not = icmp sgt i64 %288, %292
  br i1 %polly.loop_guard705.not, label %polly.loop_exit697, label %polly.loop_header695

polly.loop_header681:                             ; preds = %polly.loop_header662, %polly.loop_header681
  %polly.indvar685 = phi i64 [ %polly.indvar_next686, %polly.loop_header681 ], [ %278, %polly.loop_header662 ]
  %293 = add nuw nsw i64 %polly.indvar685, %262
  %polly.access.mul.call1689 = mul nsw i64 %293, 1000
  %polly.access.add.call1690 = add nuw nsw i64 %285, %polly.access.mul.call1689
  %polly.access.call1691 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690
  %polly.access.call1691.load = load double, double* %polly.access.call1691, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526693 = add nuw nsw i64 %polly.indvar685, %polly.access.mul.Packed_MemRef_call1526692
  %polly.access.Packed_MemRef_call1526694 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693
  store double %polly.access.call1691.load, double* %polly.access.Packed_MemRef_call1526694, align 8
  %polly.indvar_next686 = add nuw nsw i64 %polly.indvar685, 1
  %polly.loop_cond687.not.not = icmp slt i64 %polly.indvar685, %281
  br i1 %polly.loop_cond687.not.not, label %polly.loop_header681, label %polly.loop_exit683

polly.loop_header695:                             ; preds = %polly.loop_header695.preheader, %polly.loop_exit704
  %polly.indvar698 = phi i64 [ %polly.indvar_next699, %polly.loop_exit704 ], [ 0, %polly.loop_header695.preheader ]
  %polly.access.mul.Packed_MemRef_call1526717 = mul nuw nsw i64 %polly.indvar698, 1200
  br label %polly.loop_header702

polly.loop_exit704:                               ; preds = %polly.loop_exit712
  %polly.indvar_next699 = add nuw nsw i64 %polly.indvar698, 1
  %exitcond1161.not = icmp eq i64 %polly.indvar_next699, 50
  br i1 %exitcond1161.not, label %polly.loop_exit697, label %polly.loop_header695

polly.loop_header702:                             ; preds = %polly.loop_header695, %polly.loop_exit712
  %indvar1314 = phi i64 [ 0, %polly.loop_header695 ], [ %indvar.next1315, %polly.loop_exit712 ]
  %indvars.iv1157 = phi i64 [ %272, %polly.loop_header695 ], [ %indvars.iv.next1158, %polly.loop_exit712 ]
  %polly.indvar706 = phi i64 [ %288, %polly.loop_header695 ], [ %polly.indvar_next707, %polly.loop_exit712 ]
  %294 = add i64 %271, %indvar1314
  %smin1316 = call i64 @llvm.smin.i64(i64 %294, i64 19)
  %295 = add nsw i64 %smin1316, 1
  %smin1159 = call i64 @llvm.smin.i64(i64 %indvars.iv1157, i64 19)
  %296 = add nsw i64 %polly.indvar706, %274
  %polly.loop_guard7131206 = icmp sgt i64 %296, -1
  br i1 %polly.loop_guard7131206, label %polly.loop_header710.preheader, label %polly.loop_exit712

polly.loop_header710.preheader:                   ; preds = %polly.loop_header702
  %297 = add nuw nsw i64 %polly.indvar706, %273
  %polly.access.add.Packed_MemRef_call2528722 = add nsw i64 %296, %polly.access.mul.Packed_MemRef_call1526717
  %polly.access.Packed_MemRef_call2528723 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528722
  %_p_scalar_724 = load double, double* %polly.access.Packed_MemRef_call2528723, align 8
  %polly.access.Packed_MemRef_call1526731 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528722
  %_p_scalar_732 = load double, double* %polly.access.Packed_MemRef_call1526731, align 8
  %298 = mul i64 %297, 9600
  %min.iters.check1317 = icmp ult i64 %295, 4
  br i1 %min.iters.check1317, label %polly.loop_header710.preheader1440, label %vector.ph1318

vector.ph1318:                                    ; preds = %polly.loop_header710.preheader
  %n.vec1320 = and i64 %295, -4
  %broadcast.splatinsert1326 = insertelement <4 x double> poison, double %_p_scalar_724, i32 0
  %broadcast.splat1327 = shufflevector <4 x double> %broadcast.splatinsert1326, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1329 = insertelement <4 x double> poison, double %_p_scalar_732, i32 0
  %broadcast.splat1330 = shufflevector <4 x double> %broadcast.splatinsert1329, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1310

vector.body1310:                                  ; preds = %vector.body1310, %vector.ph1318
  %index1321 = phi i64 [ 0, %vector.ph1318 ], [ %index.next1322, %vector.body1310 ]
  %299 = add nuw nsw i64 %index1321, %262
  %300 = add nuw nsw i64 %index1321, %polly.access.mul.Packed_MemRef_call1526717
  %301 = getelementptr double, double* %Packed_MemRef_call1526, i64 %300
  %302 = bitcast double* %301 to <4 x double>*
  %wide.load1325 = load <4 x double>, <4 x double>* %302, align 8
  %303 = fmul fast <4 x double> %broadcast.splat1327, %wide.load1325
  %304 = getelementptr double, double* %Packed_MemRef_call2528, i64 %300
  %305 = bitcast double* %304 to <4 x double>*
  %wide.load1328 = load <4 x double>, <4 x double>* %305, align 8
  %306 = fmul fast <4 x double> %broadcast.splat1330, %wide.load1328
  %307 = shl i64 %299, 3
  %308 = add i64 %307, %298
  %309 = getelementptr i8, i8* %call, i64 %308
  %310 = bitcast i8* %309 to <4 x double>*
  %wide.load1331 = load <4 x double>, <4 x double>* %310, align 8, !alias.scope !99, !noalias !101
  %311 = fadd fast <4 x double> %306, %303
  %312 = fmul fast <4 x double> %311, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %313 = fadd fast <4 x double> %312, %wide.load1331
  %314 = bitcast i8* %309 to <4 x double>*
  store <4 x double> %313, <4 x double>* %314, align 8, !alias.scope !99, !noalias !101
  %index.next1322 = add i64 %index1321, 4
  %315 = icmp eq i64 %index.next1322, %n.vec1320
  br i1 %315, label %middle.block1308, label %vector.body1310, !llvm.loop !110

middle.block1308:                                 ; preds = %vector.body1310
  %cmp.n1324 = icmp eq i64 %295, %n.vec1320
  br i1 %cmp.n1324, label %polly.loop_exit712, label %polly.loop_header710.preheader1440

polly.loop_header710.preheader1440:               ; preds = %polly.loop_header710.preheader, %middle.block1308
  %polly.indvar714.ph = phi i64 [ 0, %polly.loop_header710.preheader ], [ %n.vec1320, %middle.block1308 ]
  br label %polly.loop_header710

polly.loop_exit712:                               ; preds = %polly.loop_header710, %middle.block1308, %polly.loop_header702
  %polly.indvar_next707 = add nuw nsw i64 %polly.indvar706, 1
  %polly.loop_cond708.not.not = icmp slt i64 %polly.indvar706, %292
  %indvars.iv.next1158 = add i64 %indvars.iv1157, 1
  %indvar.next1315 = add i64 %indvar1314, 1
  br i1 %polly.loop_cond708.not.not, label %polly.loop_header702, label %polly.loop_exit704

polly.loop_header710:                             ; preds = %polly.loop_header710.preheader1440, %polly.loop_header710
  %polly.indvar714 = phi i64 [ %polly.indvar_next715, %polly.loop_header710 ], [ %polly.indvar714.ph, %polly.loop_header710.preheader1440 ]
  %316 = add nuw nsw i64 %polly.indvar714, %262
  %polly.access.add.Packed_MemRef_call1526718 = add nuw nsw i64 %polly.indvar714, %polly.access.mul.Packed_MemRef_call1526717
  %polly.access.Packed_MemRef_call1526719 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526718
  %_p_scalar_720 = load double, double* %polly.access.Packed_MemRef_call1526719, align 8
  %p_mul27.i = fmul fast double %_p_scalar_724, %_p_scalar_720
  %polly.access.Packed_MemRef_call2528727 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526718
  %_p_scalar_728 = load double, double* %polly.access.Packed_MemRef_call2528727, align 8
  %p_mul37.i = fmul fast double %_p_scalar_732, %_p_scalar_728
  %317 = shl i64 %316, 3
  %318 = add i64 %317, %298
  %scevgep733 = getelementptr i8, i8* %call, i64 %318
  %scevgep733734 = bitcast i8* %scevgep733 to double*
  %_p_scalar_735 = load double, double* %scevgep733734, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_735
  store double %p_add42.i, double* %scevgep733734, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next715 = add nuw nsw i64 %polly.indvar714, 1
  %exitcond1160.not = icmp eq i64 %polly.indvar714, %smin1159
  br i1 %exitcond1160.not, label %polly.loop_exit712, label %polly.loop_header710, !llvm.loop !111

polly.loop_header862:                             ; preds = %entry, %polly.loop_exit870
  %indvars.iv1191 = phi i64 [ %indvars.iv.next1192, %polly.loop_exit870 ], [ 0, %entry ]
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_exit870 ], [ 0, %entry ]
  %smin1193 = call i64 @llvm.smin.i64(i64 %indvars.iv1191, i64 -1168)
  %319 = shl nsw i64 %polly.indvar865, 5
  %320 = add nsw i64 %smin1193, 1199
  br label %polly.loop_header868

polly.loop_exit870:                               ; preds = %polly.loop_exit876
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %indvars.iv.next1192 = add nsw i64 %indvars.iv1191, -32
  %exitcond1196.not = icmp eq i64 %polly.indvar_next866, 38
  br i1 %exitcond1196.not, label %polly.loop_header889, label %polly.loop_header862

polly.loop_header868:                             ; preds = %polly.loop_exit876, %polly.loop_header862
  %indvars.iv1187 = phi i64 [ %indvars.iv.next1188, %polly.loop_exit876 ], [ 0, %polly.loop_header862 ]
  %polly.indvar871 = phi i64 [ %polly.indvar_next872, %polly.loop_exit876 ], [ 0, %polly.loop_header862 ]
  %321 = mul nsw i64 %polly.indvar871, -32
  %smin1237 = call i64 @llvm.smin.i64(i64 %321, i64 -1168)
  %322 = add nsw i64 %smin1237, 1200
  %smin1189 = call i64 @llvm.smin.i64(i64 %indvars.iv1187, i64 -1168)
  %323 = shl nsw i64 %polly.indvar871, 5
  %324 = add nsw i64 %smin1189, 1199
  br label %polly.loop_header874

polly.loop_exit876:                               ; preds = %polly.loop_exit882
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %indvars.iv.next1188 = add nsw i64 %indvars.iv1187, -32
  %exitcond1195.not = icmp eq i64 %polly.indvar_next872, 38
  br i1 %exitcond1195.not, label %polly.loop_exit870, label %polly.loop_header868

polly.loop_header874:                             ; preds = %polly.loop_exit882, %polly.loop_header868
  %polly.indvar877 = phi i64 [ 0, %polly.loop_header868 ], [ %polly.indvar_next878, %polly.loop_exit882 ]
  %325 = add nuw nsw i64 %polly.indvar877, %319
  %326 = trunc i64 %325 to i32
  %327 = mul nuw nsw i64 %325, 9600
  %min.iters.check = icmp eq i64 %322, 0
  br i1 %min.iters.check, label %polly.loop_header880, label %vector.ph1238

vector.ph1238:                                    ; preds = %polly.loop_header874
  %broadcast.splatinsert1245 = insertelement <4 x i64> poison, i64 %323, i32 0
  %broadcast.splat1246 = shufflevector <4 x i64> %broadcast.splatinsert1245, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1247 = insertelement <4 x i32> poison, i32 %326, i32 0
  %broadcast.splat1248 = shufflevector <4 x i32> %broadcast.splatinsert1247, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1236

vector.body1236:                                  ; preds = %vector.body1236, %vector.ph1238
  %index1239 = phi i64 [ 0, %vector.ph1238 ], [ %index.next1240, %vector.body1236 ]
  %vec.ind1243 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1238 ], [ %vec.ind.next1244, %vector.body1236 ]
  %328 = add nuw nsw <4 x i64> %vec.ind1243, %broadcast.splat1246
  %329 = trunc <4 x i64> %328 to <4 x i32>
  %330 = mul <4 x i32> %broadcast.splat1248, %329
  %331 = add <4 x i32> %330, <i32 3, i32 3, i32 3, i32 3>
  %332 = urem <4 x i32> %331, <i32 1200, i32 1200, i32 1200, i32 1200>
  %333 = sitofp <4 x i32> %332 to <4 x double>
  %334 = fmul fast <4 x double> %333, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %335 = extractelement <4 x i64> %328, i32 0
  %336 = shl i64 %335, 3
  %337 = add nuw nsw i64 %336, %327
  %338 = getelementptr i8, i8* %call, i64 %337
  %339 = bitcast i8* %338 to <4 x double>*
  store <4 x double> %334, <4 x double>* %339, align 8, !alias.scope !112, !noalias !114
  %index.next1240 = add i64 %index1239, 4
  %vec.ind.next1244 = add <4 x i64> %vec.ind1243, <i64 4, i64 4, i64 4, i64 4>
  %340 = icmp eq i64 %index.next1240, %322
  br i1 %340, label %polly.loop_exit882, label %vector.body1236, !llvm.loop !117

polly.loop_exit882:                               ; preds = %vector.body1236, %polly.loop_header880
  %polly.indvar_next878 = add nuw nsw i64 %polly.indvar877, 1
  %exitcond1194.not = icmp eq i64 %polly.indvar877, %320
  br i1 %exitcond1194.not, label %polly.loop_exit876, label %polly.loop_header874

polly.loop_header880:                             ; preds = %polly.loop_header874, %polly.loop_header880
  %polly.indvar883 = phi i64 [ %polly.indvar_next884, %polly.loop_header880 ], [ 0, %polly.loop_header874 ]
  %341 = add nuw nsw i64 %polly.indvar883, %323
  %342 = trunc i64 %341 to i32
  %343 = mul i32 %342, %326
  %344 = add i32 %343, 3
  %345 = urem i32 %344, 1200
  %p_conv31.i = sitofp i32 %345 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %346 = shl i64 %341, 3
  %347 = add nuw nsw i64 %346, %327
  %scevgep886 = getelementptr i8, i8* %call, i64 %347
  %scevgep886887 = bitcast i8* %scevgep886 to double*
  store double %p_div33.i, double* %scevgep886887, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next884 = add nuw nsw i64 %polly.indvar883, 1
  %exitcond1190.not = icmp eq i64 %polly.indvar883, %324
  br i1 %exitcond1190.not, label %polly.loop_exit882, label %polly.loop_header880, !llvm.loop !118

polly.loop_header889:                             ; preds = %polly.loop_exit870, %polly.loop_exit897
  %indvars.iv1181 = phi i64 [ %indvars.iv.next1182, %polly.loop_exit897 ], [ 0, %polly.loop_exit870 ]
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_exit897 ], [ 0, %polly.loop_exit870 ]
  %smin1183 = call i64 @llvm.smin.i64(i64 %indvars.iv1181, i64 -1168)
  %348 = shl nsw i64 %polly.indvar892, 5
  %349 = add nsw i64 %smin1183, 1199
  br label %polly.loop_header895

polly.loop_exit897:                               ; preds = %polly.loop_exit903
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %indvars.iv.next1182 = add nsw i64 %indvars.iv1181, -32
  %exitcond1186.not = icmp eq i64 %polly.indvar_next893, 38
  br i1 %exitcond1186.not, label %polly.loop_header915, label %polly.loop_header889

polly.loop_header895:                             ; preds = %polly.loop_exit903, %polly.loop_header889
  %indvars.iv1177 = phi i64 [ %indvars.iv.next1178, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %350 = mul nsw i64 %polly.indvar898, -32
  %smin1252 = call i64 @llvm.smin.i64(i64 %350, i64 -968)
  %351 = add nsw i64 %smin1252, 1000
  %smin1179 = call i64 @llvm.smin.i64(i64 %indvars.iv1177, i64 -968)
  %352 = shl nsw i64 %polly.indvar898, 5
  %353 = add nsw i64 %smin1179, 999
  br label %polly.loop_header901

polly.loop_exit903:                               ; preds = %polly.loop_exit909
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %indvars.iv.next1178 = add nsw i64 %indvars.iv1177, -32
  %exitcond1185.not = icmp eq i64 %polly.indvar_next899, 32
  br i1 %exitcond1185.not, label %polly.loop_exit897, label %polly.loop_header895

polly.loop_header901:                             ; preds = %polly.loop_exit909, %polly.loop_header895
  %polly.indvar904 = phi i64 [ 0, %polly.loop_header895 ], [ %polly.indvar_next905, %polly.loop_exit909 ]
  %354 = add nuw nsw i64 %polly.indvar904, %348
  %355 = trunc i64 %354 to i32
  %356 = mul nuw nsw i64 %354, 8000
  %min.iters.check1253 = icmp eq i64 %351, 0
  br i1 %min.iters.check1253, label %polly.loop_header907, label %vector.ph1254

vector.ph1254:                                    ; preds = %polly.loop_header901
  %broadcast.splatinsert1263 = insertelement <4 x i64> poison, i64 %352, i32 0
  %broadcast.splat1264 = shufflevector <4 x i64> %broadcast.splatinsert1263, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1265 = insertelement <4 x i32> poison, i32 %355, i32 0
  %broadcast.splat1266 = shufflevector <4 x i32> %broadcast.splatinsert1265, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1251

vector.body1251:                                  ; preds = %vector.body1251, %vector.ph1254
  %index1257 = phi i64 [ 0, %vector.ph1254 ], [ %index.next1258, %vector.body1251 ]
  %vec.ind1261 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1254 ], [ %vec.ind.next1262, %vector.body1251 ]
  %357 = add nuw nsw <4 x i64> %vec.ind1261, %broadcast.splat1264
  %358 = trunc <4 x i64> %357 to <4 x i32>
  %359 = mul <4 x i32> %broadcast.splat1266, %358
  %360 = add <4 x i32> %359, <i32 2, i32 2, i32 2, i32 2>
  %361 = urem <4 x i32> %360, <i32 1000, i32 1000, i32 1000, i32 1000>
  %362 = sitofp <4 x i32> %361 to <4 x double>
  %363 = fmul fast <4 x double> %362, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %364 = extractelement <4 x i64> %357, i32 0
  %365 = shl i64 %364, 3
  %366 = add nuw nsw i64 %365, %356
  %367 = getelementptr i8, i8* %call2, i64 %366
  %368 = bitcast i8* %367 to <4 x double>*
  store <4 x double> %363, <4 x double>* %368, align 8, !alias.scope !116, !noalias !119
  %index.next1258 = add i64 %index1257, 4
  %vec.ind.next1262 = add <4 x i64> %vec.ind1261, <i64 4, i64 4, i64 4, i64 4>
  %369 = icmp eq i64 %index.next1258, %351
  br i1 %369, label %polly.loop_exit909, label %vector.body1251, !llvm.loop !120

polly.loop_exit909:                               ; preds = %vector.body1251, %polly.loop_header907
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %exitcond1184.not = icmp eq i64 %polly.indvar904, %349
  br i1 %exitcond1184.not, label %polly.loop_exit903, label %polly.loop_header901

polly.loop_header907:                             ; preds = %polly.loop_header901, %polly.loop_header907
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_header907 ], [ 0, %polly.loop_header901 ]
  %370 = add nuw nsw i64 %polly.indvar910, %352
  %371 = trunc i64 %370 to i32
  %372 = mul i32 %371, %355
  %373 = add i32 %372, 2
  %374 = urem i32 %373, 1000
  %p_conv10.i = sitofp i32 %374 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %375 = shl i64 %370, 3
  %376 = add nuw nsw i64 %375, %356
  %scevgep913 = getelementptr i8, i8* %call2, i64 %376
  %scevgep913914 = bitcast i8* %scevgep913 to double*
  store double %p_div12.i, double* %scevgep913914, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %exitcond1180.not = icmp eq i64 %polly.indvar910, %353
  br i1 %exitcond1180.not, label %polly.loop_exit909, label %polly.loop_header907, !llvm.loop !121

polly.loop_header915:                             ; preds = %polly.loop_exit897, %polly.loop_exit923
  %indvars.iv1171 = phi i64 [ %indvars.iv.next1172, %polly.loop_exit923 ], [ 0, %polly.loop_exit897 ]
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_exit923 ], [ 0, %polly.loop_exit897 ]
  %smin1173 = call i64 @llvm.smin.i64(i64 %indvars.iv1171, i64 -1168)
  %377 = shl nsw i64 %polly.indvar918, 5
  %378 = add nsw i64 %smin1173, 1199
  br label %polly.loop_header921

polly.loop_exit923:                               ; preds = %polly.loop_exit929
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %indvars.iv.next1172 = add nsw i64 %indvars.iv1171, -32
  %exitcond1176.not = icmp eq i64 %polly.indvar_next919, 38
  br i1 %exitcond1176.not, label %init_array.exit, label %polly.loop_header915

polly.loop_header921:                             ; preds = %polly.loop_exit929, %polly.loop_header915
  %indvars.iv1167 = phi i64 [ %indvars.iv.next1168, %polly.loop_exit929 ], [ 0, %polly.loop_header915 ]
  %polly.indvar924 = phi i64 [ %polly.indvar_next925, %polly.loop_exit929 ], [ 0, %polly.loop_header915 ]
  %379 = mul nsw i64 %polly.indvar924, -32
  %smin1270 = call i64 @llvm.smin.i64(i64 %379, i64 -968)
  %380 = add nsw i64 %smin1270, 1000
  %smin1169 = call i64 @llvm.smin.i64(i64 %indvars.iv1167, i64 -968)
  %381 = shl nsw i64 %polly.indvar924, 5
  %382 = add nsw i64 %smin1169, 999
  br label %polly.loop_header927

polly.loop_exit929:                               ; preds = %polly.loop_exit935
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %indvars.iv.next1168 = add nsw i64 %indvars.iv1167, -32
  %exitcond1175.not = icmp eq i64 %polly.indvar_next925, 32
  br i1 %exitcond1175.not, label %polly.loop_exit923, label %polly.loop_header921

polly.loop_header927:                             ; preds = %polly.loop_exit935, %polly.loop_header921
  %polly.indvar930 = phi i64 [ 0, %polly.loop_header921 ], [ %polly.indvar_next931, %polly.loop_exit935 ]
  %383 = add nuw nsw i64 %polly.indvar930, %377
  %384 = trunc i64 %383 to i32
  %385 = mul nuw nsw i64 %383, 8000
  %min.iters.check1271 = icmp eq i64 %380, 0
  br i1 %min.iters.check1271, label %polly.loop_header933, label %vector.ph1272

vector.ph1272:                                    ; preds = %polly.loop_header927
  %broadcast.splatinsert1281 = insertelement <4 x i64> poison, i64 %381, i32 0
  %broadcast.splat1282 = shufflevector <4 x i64> %broadcast.splatinsert1281, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1283 = insertelement <4 x i32> poison, i32 %384, i32 0
  %broadcast.splat1284 = shufflevector <4 x i32> %broadcast.splatinsert1283, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1269

vector.body1269:                                  ; preds = %vector.body1269, %vector.ph1272
  %index1275 = phi i64 [ 0, %vector.ph1272 ], [ %index.next1276, %vector.body1269 ]
  %vec.ind1279 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1272 ], [ %vec.ind.next1280, %vector.body1269 ]
  %386 = add nuw nsw <4 x i64> %vec.ind1279, %broadcast.splat1282
  %387 = trunc <4 x i64> %386 to <4 x i32>
  %388 = mul <4 x i32> %broadcast.splat1284, %387
  %389 = add <4 x i32> %388, <i32 1, i32 1, i32 1, i32 1>
  %390 = urem <4 x i32> %389, <i32 1200, i32 1200, i32 1200, i32 1200>
  %391 = sitofp <4 x i32> %390 to <4 x double>
  %392 = fmul fast <4 x double> %391, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %393 = extractelement <4 x i64> %386, i32 0
  %394 = shl i64 %393, 3
  %395 = add nuw nsw i64 %394, %385
  %396 = getelementptr i8, i8* %call1, i64 %395
  %397 = bitcast i8* %396 to <4 x double>*
  store <4 x double> %392, <4 x double>* %397, align 8, !alias.scope !115, !noalias !122
  %index.next1276 = add i64 %index1275, 4
  %vec.ind.next1280 = add <4 x i64> %vec.ind1279, <i64 4, i64 4, i64 4, i64 4>
  %398 = icmp eq i64 %index.next1276, %380
  br i1 %398, label %polly.loop_exit935, label %vector.body1269, !llvm.loop !123

polly.loop_exit935:                               ; preds = %vector.body1269, %polly.loop_header933
  %polly.indvar_next931 = add nuw nsw i64 %polly.indvar930, 1
  %exitcond1174.not = icmp eq i64 %polly.indvar930, %378
  br i1 %exitcond1174.not, label %polly.loop_exit929, label %polly.loop_header927

polly.loop_header933:                             ; preds = %polly.loop_header927, %polly.loop_header933
  %polly.indvar936 = phi i64 [ %polly.indvar_next937, %polly.loop_header933 ], [ 0, %polly.loop_header927 ]
  %399 = add nuw nsw i64 %polly.indvar936, %381
  %400 = trunc i64 %399 to i32
  %401 = mul i32 %400, %384
  %402 = add i32 %401, 1
  %403 = urem i32 %402, 1200
  %p_conv.i = sitofp i32 %403 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %404 = shl i64 %399, 3
  %405 = add nuw nsw i64 %404, %385
  %scevgep940 = getelementptr i8, i8* %call1, i64 %405
  %scevgep940941 = bitcast i8* %scevgep940 to double*
  store double %p_div.i, double* %scevgep940941, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next937 = add nuw nsw i64 %polly.indvar936, 1
  %exitcond1170.not = icmp eq i64 %polly.indvar936, %382
  br i1 %exitcond1170.not, label %polly.loop_exit935, label %polly.loop_header933, !llvm.loop !124
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
!26 = !{!"llvm.loop.tile.size", i32 20}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 50}
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
!51 = !{!"llvm.loop.tile.size", i32 64}
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
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !81, !13}
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
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !81, !13}
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
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !81, !13}
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
