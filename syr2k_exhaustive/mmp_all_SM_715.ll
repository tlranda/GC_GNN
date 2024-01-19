; ModuleID = 'syr2k_exhaustive/mmp_all_SM_715.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_715.c"
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
  %scevgep1289 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1288 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1287 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1286 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1286, %scevgep1289
  %bound1 = icmp ult i8* %scevgep1288, %scevgep1287
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
  br i1 %exitcond18.not.i, label %vector.ph1293, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1293:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1300 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1301 = shufflevector <4 x i64> %broadcast.splatinsert1300, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1292

vector.body1292:                                  ; preds = %vector.body1292, %vector.ph1293
  %index1294 = phi i64 [ 0, %vector.ph1293 ], [ %index.next1295, %vector.body1292 ]
  %vec.ind1298 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1293 ], [ %vec.ind.next1299, %vector.body1292 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1298, %broadcast.splat1301
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call917, i64 %indvars.iv7.i, i64 %index1294
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1295 = add i64 %index1294, 4
  %vec.ind.next1299 = add <4 x i64> %vec.ind1298, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1295, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1292, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1292
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1293, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit952
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start541, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1356 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1356, label %for.body3.i46.preheader1508, label %vector.ph1357

vector.ph1357:                                    ; preds = %for.body3.i46.preheader
  %n.vec1359 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1355

vector.body1355:                                  ; preds = %vector.body1355, %vector.ph1357
  %index1360 = phi i64 [ 0, %vector.ph1357 ], [ %index.next1361, %vector.body1355 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call917, i64 %indvars.iv21.i, i64 %index1360
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1361 = add i64 %index1360, 4
  %46 = icmp eq i64 %index.next1361, %n.vec1359
  br i1 %46, label %middle.block1353, label %vector.body1355, !llvm.loop !18

middle.block1353:                                 ; preds = %vector.body1355
  %cmp.n1363 = icmp eq i64 %indvars.iv21.i, %n.vec1359
  br i1 %cmp.n1363, label %for.inc6.i, label %for.body3.i46.preheader1508

for.body3.i46.preheader1508:                      ; preds = %for.body3.i46.preheader, %middle.block1353
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1359, %middle.block1353 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1508, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1508 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call917, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1353, %for.cond1.preheader.i45
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
  %min.iters.check1403 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1403, label %for.body3.i60.preheader1505, label %vector.ph1404

vector.ph1404:                                    ; preds = %for.body3.i60.preheader
  %n.vec1406 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1402

vector.body1402:                                  ; preds = %vector.body1402, %vector.ph1404
  %index1407 = phi i64 [ 0, %vector.ph1404 ], [ %index.next1408, %vector.body1402 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call917, i64 %indvars.iv21.i52, i64 %index1407
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1411 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1411, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1408 = add i64 %index1407, 4
  %57 = icmp eq i64 %index.next1408, %n.vec1406
  br i1 %57, label %middle.block1400, label %vector.body1402, !llvm.loop !64

middle.block1400:                                 ; preds = %vector.body1402
  %cmp.n1410 = icmp eq i64 %indvars.iv21.i52, %n.vec1406
  br i1 %cmp.n1410, label %for.inc6.i63, label %for.body3.i60.preheader1505

for.body3.i60.preheader1505:                      ; preds = %for.body3.i60.preheader, %middle.block1400
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1406, %middle.block1400 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1505, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1505 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call917, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1400, %for.cond1.preheader.i54
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
  %min.iters.check1453 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1453, label %for.body3.i99.preheader1502, label %vector.ph1454

vector.ph1454:                                    ; preds = %for.body3.i99.preheader
  %n.vec1456 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1452

vector.body1452:                                  ; preds = %vector.body1452, %vector.ph1454
  %index1457 = phi i64 [ 0, %vector.ph1454 ], [ %index.next1458, %vector.body1452 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call917, i64 %indvars.iv21.i91, i64 %index1457
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1461 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1461, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1458 = add i64 %index1457, 4
  %68 = icmp eq i64 %index.next1458, %n.vec1456
  br i1 %68, label %middle.block1450, label %vector.body1452, !llvm.loop !66

middle.block1450:                                 ; preds = %vector.body1452
  %cmp.n1460 = icmp eq i64 %indvars.iv21.i91, %n.vec1456
  br i1 %cmp.n1460, label %for.inc6.i102, label %for.body3.i99.preheader1502

for.body3.i99.preheader1502:                      ; preds = %for.body3.i99.preheader, %middle.block1450
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1456, %middle.block1450 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1502, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1502 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call917, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1450, %for.cond1.preheader.i93
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
  %indvar1465 = phi i64 [ %indvar.next1466, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1465, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1467 = icmp ult i64 %88, 4
  br i1 %min.iters.check1467, label %polly.loop_header192.preheader, label %vector.ph1468

vector.ph1468:                                    ; preds = %polly.loop_header
  %n.vec1470 = and i64 %88, -4
  br label %vector.body1464

vector.body1464:                                  ; preds = %vector.body1464, %vector.ph1468
  %index1471 = phi i64 [ 0, %vector.ph1468 ], [ %index.next1472, %vector.body1464 ]
  %90 = shl nuw nsw i64 %index1471, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1475 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1475, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1472 = add i64 %index1471, 4
  %95 = icmp eq i64 %index.next1472, %n.vec1470
  br i1 %95, label %middle.block1462, label %vector.body1464, !llvm.loop !79

middle.block1462:                                 ; preds = %vector.body1464
  %cmp.n1474 = icmp eq i64 %88, %n.vec1470
  br i1 %cmp.n1474, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1462
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1470, %middle.block1462 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1462
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1163.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1466 = add i64 %indvar1465, 1
  br i1 %exitcond1163.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1162.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1162.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit224
  %indvars.iv1153 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1154, %polly.loop_exit224 ]
  %indvars.iv1148 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1149, %polly.loop_exit224 ]
  %indvars.iv1142 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1143, %polly.loop_exit224 ]
  %indvars.iv1140 = phi i64 [ 49, %polly.loop_header200.preheader ], [ %indvars.iv.next1141, %polly.loop_exit224 ]
  %indvars.iv = phi i64 [ 1200, %polly.loop_header200.preheader ], [ %indvars.iv.next, %polly.loop_exit224 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit224 ]
  %97 = shl nuw nsw i64 %polly.indvar203, 2
  %98 = shl nuw nsw i64 %polly.indvar203, 1
  %99 = udiv i64 %98, 25
  %100 = mul nuw nsw i64 %99, 50
  %101 = sub nsw i64 %97, %100
  %102 = mul nsw i64 %polly.indvar203, -4
  %103 = add i64 %102, %100
  %104 = udiv i64 %indvars.iv1142, 25
  %105 = mul nuw nsw i64 %104, 50
  %106 = sub nsw i64 %indvars.iv1148, %105
  %107 = add i64 %indvars.iv1153, %105
  %108 = add i64 %indvars.iv1140, %105
  %109 = shl nsw i64 %polly.indvar203, 2
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit214
  %110 = mul nsw i64 %polly.indvar203, -4
  %111 = shl nuw nsw i64 %polly.indvar203, 1
  %pexp.p_div_q = udiv i64 %111, 25
  %112 = or i64 %111, 1
  %polly.access.mul.call1241 = mul nsw i64 %polly.indvar203, 4000
  %113 = or i64 %109, 1
  %polly.access.mul.call1241.1 = mul nuw nsw i64 %113, 1000
  %114 = or i64 %109, 2
  %polly.access.mul.call1241.2 = mul nuw nsw i64 %114, 1000
  %115 = or i64 %109, 3
  %polly.access.mul.call1241.3 = mul nuw nsw i64 %115, 1000
  %polly.access.mul.call1241.us991 = mul nsw i64 %polly.indvar203, 4000
  %116 = or i64 %109, 1
  %polly.access.mul.call1241.us991.1 = mul nuw nsw i64 %116, 1000
  %117 = or i64 %109, 2
  %polly.access.mul.call1241.us991.2 = mul nuw nsw i64 %117, 1000
  %118 = or i64 %109, 3
  %polly.access.mul.call1241.us991.3 = mul nuw nsw i64 %118, 1000
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit274
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  %indvars.iv.next1141 = add nsw i64 %indvars.iv1140, -4
  %indvars.iv.next1143 = add nuw nsw i64 %indvars.iv1142, 2
  %indvars.iv.next1149 = add nuw nsw i64 %indvars.iv1148, 4
  %indvars.iv.next1154 = add nsw i64 %indvars.iv1153, -4
  %exitcond1161.not = icmp eq i64 %polly.indvar_next204, 300
  br i1 %exitcond1161.not, label %polly.exiting, label %polly.loop_header200

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
  %119 = add nuw nsw i64 %polly.indvar215, %109
  %polly.access.mul.call2219 = mul nuw nsw i64 %119, 1000
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
  %indvar1479 = phi i64 [ %indvar.next1480, %polly.loop_exit274 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv1155 = phi i64 [ %indvars.iv.next1156, %polly.loop_exit274 ], [ %107, %polly.loop_exit208 ]
  %indvars.iv1150 = phi i64 [ %indvars.iv.next1151, %polly.loop_exit274 ], [ %106, %polly.loop_exit208 ]
  %indvars.iv1144 = phi i64 [ %indvars.iv.next1145, %polly.loop_exit274 ], [ %108, %polly.loop_exit208 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit274 ], [ %pexp.p_div_q, %polly.loop_exit208 ]
  %120 = mul nsw i64 %indvar1479, -50
  %121 = add i64 %101, %120
  %smax1481 = call i64 @llvm.smax.i64(i64 %121, i64 0)
  %122 = mul nuw nsw i64 %indvar1479, 50
  %123 = add i64 %103, %122
  %124 = add i64 %smax1481, %123
  %smax1152 = call i64 @llvm.smax.i64(i64 %indvars.iv1150, i64 0)
  %125 = add i64 %smax1152, %indvars.iv1155
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1144, i64 0)
  %126 = mul nuw nsw i64 %polly.indvar225, 25
  %.not = icmp ult i64 %126, %112
  %127 = mul nuw nsw i64 %polly.indvar225, 50
  %128 = add nsw i64 %127, %110
  %129 = icmp sgt i64 %128, 4
  %130 = select i1 %129, i64 %128, i64 4
  %131 = add nsw i64 %128, 49
  %polly.loop_guard261 = icmp sgt i64 %128, -50
  br i1 %.not, label %polly.loop_header228.us, label %polly.loop_header222.split

polly.loop_header228.us:                          ; preds = %polly.loop_header222, %polly.merge.us
  %polly.indvar231.us = phi i64 [ %polly.indvar_next232.us, %polly.merge.us ], [ 0, %polly.loop_header222 ]
  br i1 %polly.loop_guard261, label %polly.loop_header258.preheader.us, label %polly.merge.us

polly.loop_header258.us:                          ; preds = %polly.loop_header258.preheader.us, %polly.loop_header258.us
  %polly.indvar262.us = phi i64 [ %polly.indvar_next263.us, %polly.loop_header258.us ], [ 0, %polly.loop_header258.preheader.us ]
  %132 = add nuw nsw i64 %polly.indvar262.us, %109
  %polly.access.mul.call1266.us = mul nuw nsw i64 %132, 1000
  %polly.access.add.call1267.us = add nuw nsw i64 %polly.access.mul.call1266.us, %polly.indvar231.us
  %polly.access.call1268.us = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1267.us
  %polly.access.call1268.load.us = load double, double* %polly.access.call1268.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1270.us = add nuw nsw i64 %polly.indvar262.us, %polly.access.mul.Packed_MemRef_call1269.us
  %polly.access.Packed_MemRef_call1271.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1270.us
  store double %polly.access.call1268.load.us, double* %polly.access.Packed_MemRef_call1271.us, align 8
  %polly.indvar_next263.us = add nuw nsw i64 %polly.indvar262.us, 1
  %exitcond1146.not = icmp eq i64 %polly.indvar262.us, %smax
  br i1 %exitcond1146.not, label %polly.merge.us, label %polly.loop_header258.us

polly.merge.us:                                   ; preds = %polly.loop_header258.us, %polly.loop_header228.us
  %polly.indvar_next232.us = add nuw nsw i64 %polly.indvar231.us, 1
  %exitcond1147.not = icmp eq i64 %polly.indvar_next232.us, 1000
  br i1 %exitcond1147.not, label %polly.loop_header272.preheader, label %polly.loop_header228.us

polly.loop_header258.preheader.us:                ; preds = %polly.loop_header228.us
  %polly.access.mul.Packed_MemRef_call1269.us = mul nuw nsw i64 %polly.indvar231.us, 1200
  br label %polly.loop_header258.us

polly.loop_header222.split:                       ; preds = %polly.loop_header222
  %polly.loop_guard.not = icmp sgt i64 %130, %131
  br i1 %polly.loop_guard.not, label %polly.loop_header228.us987, label %polly.loop_header228

polly.loop_header228.us987:                       ; preds = %polly.loop_header222.split, %polly.loop_header228.us987
  %polly.indvar231.us988 = phi i64 [ %polly.indvar_next232.us1023, %polly.loop_header228.us987 ], [ 0, %polly.loop_header222.split ]
  %polly.access.mul.Packed_MemRef_call1.us1031 = mul nuw nsw i64 %polly.indvar231.us988, 1200
  %polly.access.add.call1242.us992 = add nuw nsw i64 %polly.access.mul.call1241.us991, %polly.indvar231.us988
  %polly.access.call1243.us993 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1242.us992
  %polly.access.call1243.load.us994 = load double, double* %polly.access.call1243.us993, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1.us996 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1.us1031
  store double %polly.access.call1243.load.us994, double* %polly.access.Packed_MemRef_call1.us996, align 8
  %polly.access.add.call1242.us992.1 = add nuw nsw i64 %polly.access.mul.call1241.us991.1, %polly.indvar231.us988
  %polly.access.call1243.us993.1 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1242.us992.1
  %polly.access.call1243.load.us994.1 = load double, double* %polly.access.call1243.us993.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us995.1 = or i64 %polly.access.mul.Packed_MemRef_call1.us1031, 1
  %polly.access.Packed_MemRef_call1.us996.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us995.1
  store double %polly.access.call1243.load.us994.1, double* %polly.access.Packed_MemRef_call1.us996.1, align 8
  %polly.access.add.call1242.us992.2 = add nuw nsw i64 %polly.access.mul.call1241.us991.2, %polly.indvar231.us988
  %polly.access.call1243.us993.2 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1242.us992.2
  %polly.access.call1243.load.us994.2 = load double, double* %polly.access.call1243.us993.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us995.2 = or i64 %polly.access.mul.Packed_MemRef_call1.us1031, 2
  %polly.access.Packed_MemRef_call1.us996.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us995.2
  store double %polly.access.call1243.load.us994.2, double* %polly.access.Packed_MemRef_call1.us996.2, align 8
  %polly.access.add.call1242.us992.3 = add nuw nsw i64 %polly.access.mul.call1241.us991.3, %polly.indvar231.us988
  %polly.access.call1243.us993.3 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1242.us992.3
  %polly.access.call1243.load.us994.3 = load double, double* %polly.access.call1243.us993.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us995.3 = or i64 %polly.access.mul.Packed_MemRef_call1.us1031, 3
  %polly.access.Packed_MemRef_call1.us996.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us995.3
  store double %polly.access.call1243.load.us994.3, double* %polly.access.Packed_MemRef_call1.us996.3, align 8
  %polly.indvar_next232.us1023 = add nuw nsw i64 %polly.indvar231.us988, 1
  %exitcond1139.not = icmp eq i64 %polly.indvar_next232.us1023, 1000
  br i1 %exitcond1139.not, label %polly.loop_header272.preheader, label %polly.loop_header228.us987

polly.loop_exit274:                               ; preds = %polly.loop_exit281.loopexit.us, %polly.loop_header272.preheader
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %polly.loop_cond227 = icmp ult i64 %polly.indvar225, 23
  %indvars.iv.next1145 = add i64 %indvars.iv1144, 50
  %indvars.iv.next1151 = add i64 %indvars.iv1150, -50
  %indvars.iv.next1156 = add i64 %indvars.iv1155, 50
  %indvar.next1480 = add i64 %indvar1479, 1
  br i1 %polly.loop_cond227, label %polly.loop_header222, label %polly.loop_exit224

polly.loop_header228:                             ; preds = %polly.loop_header222.split, %polly.merge
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.merge ], [ 0, %polly.loop_header222.split ]
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar231, 1200
  %polly.access.add.call1242 = add nuw nsw i64 %polly.access.mul.call1241, %polly.indvar231
  %polly.access.call1243 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1242
  %polly.access.call1243.load = load double, double* %polly.access.call1243, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1
  store double %polly.access.call1243.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.access.add.call1242.1 = add nuw nsw i64 %polly.access.mul.call1241.1, %polly.indvar231
  %polly.access.call1243.1 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1242.1
  %polly.access.call1243.load.1 = load double, double* %polly.access.call1243.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.1 = or i64 %polly.access.mul.Packed_MemRef_call1, 1
  %polly.access.Packed_MemRef_call1.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.1
  store double %polly.access.call1243.load.1, double* %polly.access.Packed_MemRef_call1.1, align 8
  %polly.access.add.call1242.2 = add nuw nsw i64 %polly.access.mul.call1241.2, %polly.indvar231
  %polly.access.call1243.2 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1242.2
  %polly.access.call1243.load.2 = load double, double* %polly.access.call1243.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.2 = or i64 %polly.access.mul.Packed_MemRef_call1, 2
  %polly.access.Packed_MemRef_call1.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.2
  store double %polly.access.call1243.load.2, double* %polly.access.Packed_MemRef_call1.2, align 8
  %polly.access.add.call1242.3 = add nuw nsw i64 %polly.access.mul.call1241.3, %polly.indvar231
  %polly.access.call1243.3 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1242.3
  %polly.access.call1243.load.3 = load double, double* %polly.access.call1243.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.3 = or i64 %polly.access.mul.Packed_MemRef_call1, 3
  %polly.access.Packed_MemRef_call1.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.3
  store double %polly.access.call1243.load.3, double* %polly.access.Packed_MemRef_call1.3, align 8
  br label %polly.loop_header244

polly.merge:                                      ; preds = %polly.loop_header244
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %exitcond1137.not = icmp eq i64 %polly.indvar_next232, 1000
  br i1 %exitcond1137.not, label %polly.loop_header272.preheader, label %polly.loop_header228

polly.loop_header272.preheader:                   ; preds = %polly.merge, %polly.loop_header228.us987, %polly.merge.us
  %133 = sub nsw i64 %109, %127
  %134 = icmp sgt i64 %133, 0
  %135 = select i1 %134, i64 %133, i64 0
  %polly.loop_guard282 = icmp slt i64 %135, 50
  br i1 %polly.loop_guard282, label %polly.loop_header272.us, label %polly.loop_exit274

polly.loop_header272.us:                          ; preds = %polly.loop_header272.preheader, %polly.loop_exit281.loopexit.us
  %polly.indvar275.us = phi i64 [ %polly.indvar_next276.us, %polly.loop_exit281.loopexit.us ], [ 0, %polly.loop_header272.preheader ]
  %polly.access.mul.Packed_MemRef_call1294.us = mul nuw nsw i64 %polly.indvar275.us, 1200
  br label %polly.loop_header279.us

polly.loop_header279.us:                          ; preds = %polly.loop_header272.us, %polly.loop_exit289.us
  %indvar1482 = phi i64 [ 0, %polly.loop_header272.us ], [ %indvar.next1483, %polly.loop_exit289.us ]
  %indvars.iv1157 = phi i64 [ %125, %polly.loop_header272.us ], [ %indvars.iv.next1158, %polly.loop_exit289.us ]
  %polly.indvar283.us = phi i64 [ %135, %polly.loop_header272.us ], [ %polly.indvar_next284.us, %polly.loop_exit289.us ]
  %136 = add i64 %124, %indvar1482
  %smin1484 = call i64 @llvm.smin.i64(i64 %136, i64 3)
  %137 = add nsw i64 %smin1484, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1157, i64 3)
  %138 = add nuw i64 %polly.indvar283.us, %127
  %139 = add i64 %138, %110
  %polly.loop_guard290.us1269 = icmp sgt i64 %139, -1
  br i1 %polly.loop_guard290.us1269, label %polly.loop_header287.preheader.us, label %polly.loop_exit289.us

polly.loop_header287.us:                          ; preds = %polly.loop_header287.us.preheader, %polly.loop_header287.us
  %polly.indvar291.us = phi i64 [ %polly.indvar_next292.us, %polly.loop_header287.us ], [ %polly.indvar291.us.ph, %polly.loop_header287.us.preheader ]
  %140 = add nuw nsw i64 %polly.indvar291.us, %109
  %polly.access.add.Packed_MemRef_call1295.us = add nuw nsw i64 %polly.indvar291.us, %polly.access.mul.Packed_MemRef_call1294.us
  %polly.access.Packed_MemRef_call1296.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1295.us
  %_p_scalar_297.us = load double, double* %polly.access.Packed_MemRef_call1296.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_301.us, %_p_scalar_297.us
  %polly.access.Packed_MemRef_call2304.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1295.us
  %_p_scalar_305.us = load double, double* %polly.access.Packed_MemRef_call2304.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_309.us, %_p_scalar_305.us
  %141 = shl i64 %140, 3
  %142 = add i64 %141, %143
  %scevgep310.us = getelementptr i8, i8* %call, i64 %142
  %scevgep310311.us = bitcast i8* %scevgep310.us to double*
  %_p_scalar_312.us = load double, double* %scevgep310311.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_312.us
  store double %p_add42.i118.us, double* %scevgep310311.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next292.us = add nuw nsw i64 %polly.indvar291.us, 1
  %exitcond1159.not = icmp eq i64 %polly.indvar291.us, %smin
  br i1 %exitcond1159.not, label %polly.loop_exit289.us, label %polly.loop_header287.us, !llvm.loop !84

polly.loop_exit289.us:                            ; preds = %polly.loop_header287.us, %middle.block1476, %polly.loop_header279.us
  %polly.indvar_next284.us = add nuw nsw i64 %polly.indvar283.us, 1
  %polly.loop_cond285.us = icmp ult i64 %polly.indvar283.us, 49
  %indvars.iv.next1158 = add i64 %indvars.iv1157, 1
  %indvar.next1483 = add i64 %indvar1482, 1
  br i1 %polly.loop_cond285.us, label %polly.loop_header279.us, label %polly.loop_exit281.loopexit.us

polly.loop_header287.preheader.us:                ; preds = %polly.loop_header279.us
  %polly.access.add.Packed_MemRef_call2299.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1294.us, %139
  %polly.access.Packed_MemRef_call2300.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2299.us
  %_p_scalar_301.us = load double, double* %polly.access.Packed_MemRef_call2300.us, align 8
  %polly.access.Packed_MemRef_call1308.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2299.us
  %_p_scalar_309.us = load double, double* %polly.access.Packed_MemRef_call1308.us, align 8
  %143 = mul i64 %138, 9600
  %min.iters.check1485 = icmp ult i64 %137, 4
  br i1 %min.iters.check1485, label %polly.loop_header287.us.preheader, label %vector.ph1486

vector.ph1486:                                    ; preds = %polly.loop_header287.preheader.us
  %n.vec1488 = and i64 %137, -4
  %broadcast.splatinsert1494 = insertelement <4 x double> poison, double %_p_scalar_301.us, i32 0
  %broadcast.splat1495 = shufflevector <4 x double> %broadcast.splatinsert1494, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1497 = insertelement <4 x double> poison, double %_p_scalar_309.us, i32 0
  %broadcast.splat1498 = shufflevector <4 x double> %broadcast.splatinsert1497, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1478

vector.body1478:                                  ; preds = %vector.body1478, %vector.ph1486
  %index1489 = phi i64 [ 0, %vector.ph1486 ], [ %index.next1490, %vector.body1478 ]
  %144 = add nuw nsw i64 %index1489, %109
  %145 = add nuw nsw i64 %index1489, %polly.access.mul.Packed_MemRef_call1294.us
  %146 = getelementptr double, double* %Packed_MemRef_call1, i64 %145
  %147 = bitcast double* %146 to <4 x double>*
  %wide.load1493 = load <4 x double>, <4 x double>* %147, align 8
  %148 = fmul fast <4 x double> %broadcast.splat1495, %wide.load1493
  %149 = getelementptr double, double* %Packed_MemRef_call2, i64 %145
  %150 = bitcast double* %149 to <4 x double>*
  %wide.load1496 = load <4 x double>, <4 x double>* %150, align 8
  %151 = fmul fast <4 x double> %broadcast.splat1498, %wide.load1496
  %152 = shl i64 %144, 3
  %153 = add i64 %152, %143
  %154 = getelementptr i8, i8* %call, i64 %153
  %155 = bitcast i8* %154 to <4 x double>*
  %wide.load1499 = load <4 x double>, <4 x double>* %155, align 8, !alias.scope !72, !noalias !74
  %156 = fadd fast <4 x double> %151, %148
  %157 = fmul fast <4 x double> %156, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %158 = fadd fast <4 x double> %157, %wide.load1499
  %159 = bitcast i8* %154 to <4 x double>*
  store <4 x double> %158, <4 x double>* %159, align 8, !alias.scope !72, !noalias !74
  %index.next1490 = add i64 %index1489, 4
  %160 = icmp eq i64 %index.next1490, %n.vec1488
  br i1 %160, label %middle.block1476, label %vector.body1478, !llvm.loop !85

middle.block1476:                                 ; preds = %vector.body1478
  %cmp.n1492 = icmp eq i64 %137, %n.vec1488
  br i1 %cmp.n1492, label %polly.loop_exit289.us, label %polly.loop_header287.us.preheader

polly.loop_header287.us.preheader:                ; preds = %polly.loop_header287.preheader.us, %middle.block1476
  %polly.indvar291.us.ph = phi i64 [ 0, %polly.loop_header287.preheader.us ], [ %n.vec1488, %middle.block1476 ]
  br label %polly.loop_header287.us

polly.loop_exit281.loopexit.us:                   ; preds = %polly.loop_exit289.us
  %polly.indvar_next276.us = add nuw nsw i64 %polly.indvar275.us, 1
  %exitcond1160.not = icmp eq i64 %polly.indvar_next276.us, 1000
  br i1 %exitcond1160.not, label %polly.loop_exit274, label %polly.loop_header272.us

polly.loop_header244:                             ; preds = %polly.loop_header228, %polly.loop_header244
  %polly.indvar247 = phi i64 [ %polly.indvar_next248, %polly.loop_header244 ], [ %130, %polly.loop_header228 ]
  %161 = add nuw nsw i64 %polly.indvar247, %109
  %polly.access.mul.call1251 = mul nsw i64 %161, 1000
  %polly.access.add.call1252 = add nuw nsw i64 %polly.access.mul.call1251, %polly.indvar231
  %polly.access.call1253 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1252
  %polly.access.call1253.load = load double, double* %polly.access.call1253, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1255 = add nuw nsw i64 %polly.indvar247, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1256 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255
  store double %polly.access.call1253.load, double* %polly.access.Packed_MemRef_call1256, align 8
  %polly.indvar_next248 = add nuw nsw i64 %polly.indvar247, 1
  %polly.loop_cond249.not.not = icmp slt i64 %polly.indvar247, %131
  br i1 %polly.loop_cond249.not.not, label %polly.loop_header244, label %polly.merge

polly.start315:                                   ; preds = %kernel_syr2k.exit
  %malloccall317 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall319 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header403

polly.exiting316:                                 ; preds = %polly.loop_exit444
  tail call void @free(i8* %malloccall317)
  tail call void @free(i8* %malloccall319)
  br label %kernel_syr2k.exit90

polly.loop_header403:                             ; preds = %polly.loop_exit411, %polly.start315
  %indvar1415 = phi i64 [ %indvar.next1416, %polly.loop_exit411 ], [ 0, %polly.start315 ]
  %polly.indvar406 = phi i64 [ %polly.indvar_next407, %polly.loop_exit411 ], [ 1, %polly.start315 ]
  %162 = add i64 %indvar1415, 1
  %163 = mul nuw nsw i64 %polly.indvar406, 9600
  %scevgep415 = getelementptr i8, i8* %call, i64 %163
  %min.iters.check1417 = icmp ult i64 %162, 4
  br i1 %min.iters.check1417, label %polly.loop_header409.preheader, label %vector.ph1418

vector.ph1418:                                    ; preds = %polly.loop_header403
  %n.vec1420 = and i64 %162, -4
  br label %vector.body1414

vector.body1414:                                  ; preds = %vector.body1414, %vector.ph1418
  %index1421 = phi i64 [ 0, %vector.ph1418 ], [ %index.next1422, %vector.body1414 ]
  %164 = shl nuw nsw i64 %index1421, 3
  %165 = getelementptr i8, i8* %scevgep415, i64 %164
  %166 = bitcast i8* %165 to <4 x double>*
  %wide.load1425 = load <4 x double>, <4 x double>* %166, align 8, !alias.scope !86, !noalias !88
  %167 = fmul fast <4 x double> %wide.load1425, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %168 = bitcast i8* %165 to <4 x double>*
  store <4 x double> %167, <4 x double>* %168, align 8, !alias.scope !86, !noalias !88
  %index.next1422 = add i64 %index1421, 4
  %169 = icmp eq i64 %index.next1422, %n.vec1420
  br i1 %169, label %middle.block1412, label %vector.body1414, !llvm.loop !93

middle.block1412:                                 ; preds = %vector.body1414
  %cmp.n1424 = icmp eq i64 %162, %n.vec1420
  br i1 %cmp.n1424, label %polly.loop_exit411, label %polly.loop_header409.preheader

polly.loop_header409.preheader:                   ; preds = %polly.loop_header403, %middle.block1412
  %polly.indvar412.ph = phi i64 [ 0, %polly.loop_header403 ], [ %n.vec1420, %middle.block1412 ]
  br label %polly.loop_header409

polly.loop_exit411:                               ; preds = %polly.loop_header409, %middle.block1412
  %polly.indvar_next407 = add nuw nsw i64 %polly.indvar406, 1
  %exitcond1197.not = icmp eq i64 %polly.indvar_next407, 1200
  %indvar.next1416 = add i64 %indvar1415, 1
  br i1 %exitcond1197.not, label %polly.loop_header419.preheader, label %polly.loop_header403

polly.loop_header419.preheader:                   ; preds = %polly.loop_exit411
  %Packed_MemRef_call1318 = bitcast i8* %malloccall317 to double*
  %Packed_MemRef_call2320 = bitcast i8* %malloccall319 to double*
  br label %polly.loop_header419

polly.loop_header409:                             ; preds = %polly.loop_header409.preheader, %polly.loop_header409
  %polly.indvar412 = phi i64 [ %polly.indvar_next413, %polly.loop_header409 ], [ %polly.indvar412.ph, %polly.loop_header409.preheader ]
  %170 = shl nuw nsw i64 %polly.indvar412, 3
  %scevgep416 = getelementptr i8, i8* %scevgep415, i64 %170
  %scevgep416417 = bitcast i8* %scevgep416 to double*
  %_p_scalar_418 = load double, double* %scevgep416417, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_418, 1.200000e+00
  store double %p_mul.i57, double* %scevgep416417, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next413 = add nuw nsw i64 %polly.indvar412, 1
  %exitcond1196.not = icmp eq i64 %polly.indvar_next413, %polly.indvar406
  br i1 %exitcond1196.not, label %polly.loop_exit411, label %polly.loop_header409, !llvm.loop !94

polly.loop_header419:                             ; preds = %polly.loop_header419.preheader, %polly.loop_exit444
  %indvars.iv1186 = phi i64 [ 0, %polly.loop_header419.preheader ], [ %indvars.iv.next1187, %polly.loop_exit444 ]
  %indvars.iv1181 = phi i64 [ 0, %polly.loop_header419.preheader ], [ %indvars.iv.next1182, %polly.loop_exit444 ]
  %indvars.iv1174 = phi i64 [ 0, %polly.loop_header419.preheader ], [ %indvars.iv.next1175, %polly.loop_exit444 ]
  %indvars.iv1172 = phi i64 [ 49, %polly.loop_header419.preheader ], [ %indvars.iv.next1173, %polly.loop_exit444 ]
  %indvars.iv1164 = phi i64 [ 1200, %polly.loop_header419.preheader ], [ %indvars.iv.next1165, %polly.loop_exit444 ]
  %polly.indvar422 = phi i64 [ 0, %polly.loop_header419.preheader ], [ %polly.indvar_next423, %polly.loop_exit444 ]
  %171 = shl nuw nsw i64 %polly.indvar422, 2
  %172 = shl nuw nsw i64 %polly.indvar422, 1
  %173 = udiv i64 %172, 25
  %174 = mul nuw nsw i64 %173, 50
  %175 = sub nsw i64 %171, %174
  %176 = mul nsw i64 %polly.indvar422, -4
  %177 = add i64 %176, %174
  %178 = udiv i64 %indvars.iv1174, 25
  %179 = mul nuw nsw i64 %178, 50
  %180 = sub nsw i64 %indvars.iv1181, %179
  %181 = add i64 %indvars.iv1186, %179
  %182 = add i64 %indvars.iv1172, %179
  %183 = shl nsw i64 %polly.indvar422, 2
  br label %polly.loop_header425

polly.loop_exit427:                               ; preds = %polly.loop_exit433
  %184 = mul nsw i64 %polly.indvar422, -4
  %185 = shl nuw nsw i64 %polly.indvar422, 1
  %pexp.p_div_q441 = udiv i64 %185, 25
  %186 = or i64 %185, 1
  %polly.access.mul.call1465 = mul nsw i64 %polly.indvar422, 4000
  %187 = or i64 %183, 1
  %polly.access.mul.call1465.1 = mul nuw nsw i64 %187, 1000
  %188 = or i64 %183, 2
  %polly.access.mul.call1465.2 = mul nuw nsw i64 %188, 1000
  %189 = or i64 %183, 3
  %polly.access.mul.call1465.3 = mul nuw nsw i64 %189, 1000
  %polly.access.mul.call1465.us1036 = mul nsw i64 %polly.indvar422, 4000
  %190 = or i64 %183, 1
  %polly.access.mul.call1465.us1036.1 = mul nuw nsw i64 %190, 1000
  %191 = or i64 %183, 2
  %polly.access.mul.call1465.us1036.2 = mul nuw nsw i64 %191, 1000
  %192 = or i64 %183, 3
  %polly.access.mul.call1465.us1036.3 = mul nuw nsw i64 %192, 1000
  br label %polly.loop_header442

polly.loop_exit444:                               ; preds = %polly.loop_exit500
  %polly.indvar_next423 = add nuw nsw i64 %polly.indvar422, 1
  %indvars.iv.next1165 = add nsw i64 %indvars.iv1164, -4
  %indvars.iv.next1173 = add nsw i64 %indvars.iv1172, -4
  %indvars.iv.next1175 = add nuw nsw i64 %indvars.iv1174, 2
  %indvars.iv.next1182 = add nuw nsw i64 %indvars.iv1181, 4
  %indvars.iv.next1187 = add nsw i64 %indvars.iv1186, -4
  %exitcond1195.not = icmp eq i64 %polly.indvar_next423, 300
  br i1 %exitcond1195.not, label %polly.exiting316, label %polly.loop_header419

polly.loop_header425:                             ; preds = %polly.loop_exit433, %polly.loop_header419
  %polly.indvar428 = phi i64 [ 0, %polly.loop_header419 ], [ %polly.indvar_next429, %polly.loop_exit433 ]
  %polly.access.mul.Packed_MemRef_call2320 = mul nuw nsw i64 %polly.indvar428, 1200
  br label %polly.loop_header431

polly.loop_exit433:                               ; preds = %polly.loop_header431
  %polly.indvar_next429 = add nuw nsw i64 %polly.indvar428, 1
  %exitcond1167.not = icmp eq i64 %polly.indvar_next429, 1000
  br i1 %exitcond1167.not, label %polly.loop_exit427, label %polly.loop_header425

polly.loop_header431:                             ; preds = %polly.loop_header431, %polly.loop_header425
  %polly.indvar434 = phi i64 [ 0, %polly.loop_header425 ], [ %polly.indvar_next435, %polly.loop_header431 ]
  %193 = add nuw nsw i64 %polly.indvar434, %183
  %polly.access.mul.call2438 = mul nuw nsw i64 %193, 1000
  %polly.access.add.call2439 = add nuw nsw i64 %polly.access.mul.call2438, %polly.indvar428
  %polly.access.call2440 = getelementptr double, double* %polly.access.cast.call2779, i64 %polly.access.add.call2439
  %polly.access.call2440.load = load double, double* %polly.access.call2440, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2320 = add nuw nsw i64 %polly.indvar434, %polly.access.mul.Packed_MemRef_call2320
  %polly.access.Packed_MemRef_call2320 = getelementptr double, double* %Packed_MemRef_call2320, i64 %polly.access.add.Packed_MemRef_call2320
  store double %polly.access.call2440.load, double* %polly.access.Packed_MemRef_call2320, align 8
  %polly.indvar_next435 = add nuw nsw i64 %polly.indvar434, 1
  %exitcond1166.not = icmp eq i64 %polly.indvar_next435, %indvars.iv1164
  br i1 %exitcond1166.not, label %polly.loop_exit433, label %polly.loop_header431

polly.loop_header442:                             ; preds = %polly.loop_exit500, %polly.loop_exit427
  %indvar1429 = phi i64 [ %indvar.next1430, %polly.loop_exit500 ], [ 0, %polly.loop_exit427 ]
  %indvars.iv1188 = phi i64 [ %indvars.iv.next1189, %polly.loop_exit500 ], [ %181, %polly.loop_exit427 ]
  %indvars.iv1183 = phi i64 [ %indvars.iv.next1184, %polly.loop_exit500 ], [ %180, %polly.loop_exit427 ]
  %indvars.iv1176 = phi i64 [ %indvars.iv.next1177, %polly.loop_exit500 ], [ %182, %polly.loop_exit427 ]
  %polly.indvar445 = phi i64 [ %polly.indvar_next446, %polly.loop_exit500 ], [ %pexp.p_div_q441, %polly.loop_exit427 ]
  %194 = mul nsw i64 %indvar1429, -50
  %195 = add i64 %175, %194
  %smax1431 = call i64 @llvm.smax.i64(i64 %195, i64 0)
  %196 = mul nuw nsw i64 %indvar1429, 50
  %197 = add i64 %177, %196
  %198 = add i64 %smax1431, %197
  %smax1185 = call i64 @llvm.smax.i64(i64 %indvars.iv1183, i64 0)
  %199 = add i64 %smax1185, %indvars.iv1188
  %smax1178 = call i64 @llvm.smax.i64(i64 %indvars.iv1176, i64 0)
  %200 = mul nuw nsw i64 %polly.indvar445, 25
  %.not971 = icmp ult i64 %200, %186
  %201 = mul nuw nsw i64 %polly.indvar445, 50
  %202 = add nsw i64 %201, %184
  %203 = icmp sgt i64 %202, 4
  %204 = select i1 %203, i64 %202, i64 4
  %205 = add nsw i64 %202, 49
  %polly.loop_guard487 = icmp sgt i64 %202, -50
  br i1 %.not971, label %polly.loop_header448.us, label %polly.loop_header442.split

polly.loop_header448.us:                          ; preds = %polly.loop_header442, %polly.merge455.us
  %polly.indvar451.us = phi i64 [ %polly.indvar_next452.us, %polly.merge455.us ], [ 0, %polly.loop_header442 ]
  br i1 %polly.loop_guard487, label %polly.loop_header484.preheader.us, label %polly.merge455.us

polly.loop_header484.us:                          ; preds = %polly.loop_header484.preheader.us, %polly.loop_header484.us
  %polly.indvar488.us = phi i64 [ %polly.indvar_next489.us, %polly.loop_header484.us ], [ 0, %polly.loop_header484.preheader.us ]
  %206 = add nuw nsw i64 %polly.indvar488.us, %183
  %polly.access.mul.call1492.us = mul nuw nsw i64 %206, 1000
  %polly.access.add.call1493.us = add nuw nsw i64 %polly.access.mul.call1492.us, %polly.indvar451.us
  %polly.access.call1494.us = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1493.us
  %polly.access.call1494.load.us = load double, double* %polly.access.call1494.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1318496.us = add nuw nsw i64 %polly.indvar488.us, %polly.access.mul.Packed_MemRef_call1318495.us
  %polly.access.Packed_MemRef_call1318497.us = getelementptr double, double* %Packed_MemRef_call1318, i64 %polly.access.add.Packed_MemRef_call1318496.us
  store double %polly.access.call1494.load.us, double* %polly.access.Packed_MemRef_call1318497.us, align 8
  %polly.indvar_next489.us = add nuw nsw i64 %polly.indvar488.us, 1
  %exitcond1179.not = icmp eq i64 %polly.indvar488.us, %smax1178
  br i1 %exitcond1179.not, label %polly.merge455.us, label %polly.loop_header484.us

polly.merge455.us:                                ; preds = %polly.loop_header484.us, %polly.loop_header448.us
  %polly.indvar_next452.us = add nuw nsw i64 %polly.indvar451.us, 1
  %exitcond1180.not = icmp eq i64 %polly.indvar_next452.us, 1000
  br i1 %exitcond1180.not, label %polly.loop_header498.preheader, label %polly.loop_header448.us

polly.loop_header484.preheader.us:                ; preds = %polly.loop_header448.us
  %polly.access.mul.Packed_MemRef_call1318495.us = mul nuw nsw i64 %polly.indvar451.us, 1200
  br label %polly.loop_header484.us

polly.loop_header442.split:                       ; preds = %polly.loop_header442
  %polly.loop_guard472.not = icmp sgt i64 %204, %205
  br i1 %polly.loop_guard472.not, label %polly.loop_header448.us1032, label %polly.loop_header448

polly.loop_header448.us1032:                      ; preds = %polly.loop_header442.split, %polly.loop_header448.us1032
  %polly.indvar451.us1033 = phi i64 [ %polly.indvar_next452.us1068, %polly.loop_header448.us1032 ], [ 0, %polly.loop_header442.split ]
  %polly.access.mul.Packed_MemRef_call1318.us1076 = mul nuw nsw i64 %polly.indvar451.us1033, 1200
  %polly.access.add.call1466.us1037 = add nuw nsw i64 %polly.access.mul.call1465.us1036, %polly.indvar451.us1033
  %polly.access.call1467.us1038 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1466.us1037
  %polly.access.call1467.load.us1039 = load double, double* %polly.access.call1467.us1038, align 8, !alias.scope !89, !noalias !96
  %polly.access.Packed_MemRef_call1318.us1041 = getelementptr double, double* %Packed_MemRef_call1318, i64 %polly.access.mul.Packed_MemRef_call1318.us1076
  store double %polly.access.call1467.load.us1039, double* %polly.access.Packed_MemRef_call1318.us1041, align 8
  %polly.access.add.call1466.us1037.1 = add nuw nsw i64 %polly.access.mul.call1465.us1036.1, %polly.indvar451.us1033
  %polly.access.call1467.us1038.1 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1466.us1037.1
  %polly.access.call1467.load.us1039.1 = load double, double* %polly.access.call1467.us1038.1, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1318.us1040.1 = or i64 %polly.access.mul.Packed_MemRef_call1318.us1076, 1
  %polly.access.Packed_MemRef_call1318.us1041.1 = getelementptr double, double* %Packed_MemRef_call1318, i64 %polly.access.add.Packed_MemRef_call1318.us1040.1
  store double %polly.access.call1467.load.us1039.1, double* %polly.access.Packed_MemRef_call1318.us1041.1, align 8
  %polly.access.add.call1466.us1037.2 = add nuw nsw i64 %polly.access.mul.call1465.us1036.2, %polly.indvar451.us1033
  %polly.access.call1467.us1038.2 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1466.us1037.2
  %polly.access.call1467.load.us1039.2 = load double, double* %polly.access.call1467.us1038.2, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1318.us1040.2 = or i64 %polly.access.mul.Packed_MemRef_call1318.us1076, 2
  %polly.access.Packed_MemRef_call1318.us1041.2 = getelementptr double, double* %Packed_MemRef_call1318, i64 %polly.access.add.Packed_MemRef_call1318.us1040.2
  store double %polly.access.call1467.load.us1039.2, double* %polly.access.Packed_MemRef_call1318.us1041.2, align 8
  %polly.access.add.call1466.us1037.3 = add nuw nsw i64 %polly.access.mul.call1465.us1036.3, %polly.indvar451.us1033
  %polly.access.call1467.us1038.3 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1466.us1037.3
  %polly.access.call1467.load.us1039.3 = load double, double* %polly.access.call1467.us1038.3, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1318.us1040.3 = or i64 %polly.access.mul.Packed_MemRef_call1318.us1076, 3
  %polly.access.Packed_MemRef_call1318.us1041.3 = getelementptr double, double* %Packed_MemRef_call1318, i64 %polly.access.add.Packed_MemRef_call1318.us1040.3
  store double %polly.access.call1467.load.us1039.3, double* %polly.access.Packed_MemRef_call1318.us1041.3, align 8
  %polly.indvar_next452.us1068 = add nuw nsw i64 %polly.indvar451.us1033, 1
  %exitcond1171.not = icmp eq i64 %polly.indvar_next452.us1068, 1000
  br i1 %exitcond1171.not, label %polly.loop_header498.preheader, label %polly.loop_header448.us1032

polly.loop_exit500:                               ; preds = %polly.loop_exit507.loopexit.us, %polly.loop_header498.preheader
  %polly.indvar_next446 = add nuw nsw i64 %polly.indvar445, 1
  %polly.loop_cond447 = icmp ult i64 %polly.indvar445, 23
  %indvars.iv.next1177 = add i64 %indvars.iv1176, 50
  %indvars.iv.next1184 = add i64 %indvars.iv1183, -50
  %indvars.iv.next1189 = add i64 %indvars.iv1188, 50
  %indvar.next1430 = add i64 %indvar1429, 1
  br i1 %polly.loop_cond447, label %polly.loop_header442, label %polly.loop_exit444

polly.loop_header448:                             ; preds = %polly.loop_header442.split, %polly.merge455
  %polly.indvar451 = phi i64 [ %polly.indvar_next452, %polly.merge455 ], [ 0, %polly.loop_header442.split ]
  %polly.access.mul.Packed_MemRef_call1318 = mul nuw nsw i64 %polly.indvar451, 1200
  %polly.access.add.call1466 = add nuw nsw i64 %polly.access.mul.call1465, %polly.indvar451
  %polly.access.call1467 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1466
  %polly.access.call1467.load = load double, double* %polly.access.call1467, align 8, !alias.scope !89, !noalias !96
  %polly.access.Packed_MemRef_call1318 = getelementptr double, double* %Packed_MemRef_call1318, i64 %polly.access.mul.Packed_MemRef_call1318
  store double %polly.access.call1467.load, double* %polly.access.Packed_MemRef_call1318, align 8
  %polly.access.add.call1466.1 = add nuw nsw i64 %polly.access.mul.call1465.1, %polly.indvar451
  %polly.access.call1467.1 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1466.1
  %polly.access.call1467.load.1 = load double, double* %polly.access.call1467.1, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1318.1 = or i64 %polly.access.mul.Packed_MemRef_call1318, 1
  %polly.access.Packed_MemRef_call1318.1 = getelementptr double, double* %Packed_MemRef_call1318, i64 %polly.access.add.Packed_MemRef_call1318.1
  store double %polly.access.call1467.load.1, double* %polly.access.Packed_MemRef_call1318.1, align 8
  %polly.access.add.call1466.2 = add nuw nsw i64 %polly.access.mul.call1465.2, %polly.indvar451
  %polly.access.call1467.2 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1466.2
  %polly.access.call1467.load.2 = load double, double* %polly.access.call1467.2, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1318.2 = or i64 %polly.access.mul.Packed_MemRef_call1318, 2
  %polly.access.Packed_MemRef_call1318.2 = getelementptr double, double* %Packed_MemRef_call1318, i64 %polly.access.add.Packed_MemRef_call1318.2
  store double %polly.access.call1467.load.2, double* %polly.access.Packed_MemRef_call1318.2, align 8
  %polly.access.add.call1466.3 = add nuw nsw i64 %polly.access.mul.call1465.3, %polly.indvar451
  %polly.access.call1467.3 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1466.3
  %polly.access.call1467.load.3 = load double, double* %polly.access.call1467.3, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1318.3 = or i64 %polly.access.mul.Packed_MemRef_call1318, 3
  %polly.access.Packed_MemRef_call1318.3 = getelementptr double, double* %Packed_MemRef_call1318, i64 %polly.access.add.Packed_MemRef_call1318.3
  store double %polly.access.call1467.load.3, double* %polly.access.Packed_MemRef_call1318.3, align 8
  br label %polly.loop_header469

polly.merge455:                                   ; preds = %polly.loop_header469
  %polly.indvar_next452 = add nuw nsw i64 %polly.indvar451, 1
  %exitcond1169.not = icmp eq i64 %polly.indvar_next452, 1000
  br i1 %exitcond1169.not, label %polly.loop_header498.preheader, label %polly.loop_header448

polly.loop_header498.preheader:                   ; preds = %polly.merge455, %polly.loop_header448.us1032, %polly.merge455.us
  %207 = sub nsw i64 %183, %201
  %208 = icmp sgt i64 %207, 0
  %209 = select i1 %208, i64 %207, i64 0
  %polly.loop_guard508 = icmp slt i64 %209, 50
  br i1 %polly.loop_guard508, label %polly.loop_header498.us, label %polly.loop_exit500

polly.loop_header498.us:                          ; preds = %polly.loop_header498.preheader, %polly.loop_exit507.loopexit.us
  %polly.indvar501.us = phi i64 [ %polly.indvar_next502.us, %polly.loop_exit507.loopexit.us ], [ 0, %polly.loop_header498.preheader ]
  %polly.access.mul.Packed_MemRef_call1318520.us = mul nuw nsw i64 %polly.indvar501.us, 1200
  br label %polly.loop_header505.us

polly.loop_header505.us:                          ; preds = %polly.loop_header498.us, %polly.loop_exit515.us
  %indvar1432 = phi i64 [ 0, %polly.loop_header498.us ], [ %indvar.next1433, %polly.loop_exit515.us ]
  %indvars.iv1190 = phi i64 [ %199, %polly.loop_header498.us ], [ %indvars.iv.next1191, %polly.loop_exit515.us ]
  %polly.indvar509.us = phi i64 [ %209, %polly.loop_header498.us ], [ %polly.indvar_next510.us, %polly.loop_exit515.us ]
  %210 = add i64 %198, %indvar1432
  %smin1434 = call i64 @llvm.smin.i64(i64 %210, i64 3)
  %211 = add nsw i64 %smin1434, 1
  %smin1192 = call i64 @llvm.smin.i64(i64 %indvars.iv1190, i64 3)
  %212 = add nuw i64 %polly.indvar509.us, %201
  %213 = add i64 %212, %184
  %polly.loop_guard516.us1270 = icmp sgt i64 %213, -1
  br i1 %polly.loop_guard516.us1270, label %polly.loop_header513.preheader.us, label %polly.loop_exit515.us

polly.loop_header513.us:                          ; preds = %polly.loop_header513.us.preheader, %polly.loop_header513.us
  %polly.indvar517.us = phi i64 [ %polly.indvar_next518.us, %polly.loop_header513.us ], [ %polly.indvar517.us.ph, %polly.loop_header513.us.preheader ]
  %214 = add nuw nsw i64 %polly.indvar517.us, %183
  %polly.access.add.Packed_MemRef_call1318521.us = add nuw nsw i64 %polly.indvar517.us, %polly.access.mul.Packed_MemRef_call1318520.us
  %polly.access.Packed_MemRef_call1318522.us = getelementptr double, double* %Packed_MemRef_call1318, i64 %polly.access.add.Packed_MemRef_call1318521.us
  %_p_scalar_523.us = load double, double* %polly.access.Packed_MemRef_call1318522.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_527.us, %_p_scalar_523.us
  %polly.access.Packed_MemRef_call2320530.us = getelementptr double, double* %Packed_MemRef_call2320, i64 %polly.access.add.Packed_MemRef_call1318521.us
  %_p_scalar_531.us = load double, double* %polly.access.Packed_MemRef_call2320530.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_535.us, %_p_scalar_531.us
  %215 = shl i64 %214, 3
  %216 = add i64 %215, %217
  %scevgep536.us = getelementptr i8, i8* %call, i64 %216
  %scevgep536537.us = bitcast i8* %scevgep536.us to double*
  %_p_scalar_538.us = load double, double* %scevgep536537.us, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_538.us
  store double %p_add42.i79.us, double* %scevgep536537.us, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next518.us = add nuw nsw i64 %polly.indvar517.us, 1
  %exitcond1193.not = icmp eq i64 %polly.indvar517.us, %smin1192
  br i1 %exitcond1193.not, label %polly.loop_exit515.us, label %polly.loop_header513.us, !llvm.loop !97

polly.loop_exit515.us:                            ; preds = %polly.loop_header513.us, %middle.block1426, %polly.loop_header505.us
  %polly.indvar_next510.us = add nuw nsw i64 %polly.indvar509.us, 1
  %polly.loop_cond511.us = icmp ult i64 %polly.indvar509.us, 49
  %indvars.iv.next1191 = add i64 %indvars.iv1190, 1
  %indvar.next1433 = add i64 %indvar1432, 1
  br i1 %polly.loop_cond511.us, label %polly.loop_header505.us, label %polly.loop_exit507.loopexit.us

polly.loop_header513.preheader.us:                ; preds = %polly.loop_header505.us
  %polly.access.add.Packed_MemRef_call2320525.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1318520.us, %213
  %polly.access.Packed_MemRef_call2320526.us = getelementptr double, double* %Packed_MemRef_call2320, i64 %polly.access.add.Packed_MemRef_call2320525.us
  %_p_scalar_527.us = load double, double* %polly.access.Packed_MemRef_call2320526.us, align 8
  %polly.access.Packed_MemRef_call1318534.us = getelementptr double, double* %Packed_MemRef_call1318, i64 %polly.access.add.Packed_MemRef_call2320525.us
  %_p_scalar_535.us = load double, double* %polly.access.Packed_MemRef_call1318534.us, align 8
  %217 = mul i64 %212, 9600
  %min.iters.check1435 = icmp ult i64 %211, 4
  br i1 %min.iters.check1435, label %polly.loop_header513.us.preheader, label %vector.ph1436

vector.ph1436:                                    ; preds = %polly.loop_header513.preheader.us
  %n.vec1438 = and i64 %211, -4
  %broadcast.splatinsert1444 = insertelement <4 x double> poison, double %_p_scalar_527.us, i32 0
  %broadcast.splat1445 = shufflevector <4 x double> %broadcast.splatinsert1444, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1447 = insertelement <4 x double> poison, double %_p_scalar_535.us, i32 0
  %broadcast.splat1448 = shufflevector <4 x double> %broadcast.splatinsert1447, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1428

vector.body1428:                                  ; preds = %vector.body1428, %vector.ph1436
  %index1439 = phi i64 [ 0, %vector.ph1436 ], [ %index.next1440, %vector.body1428 ]
  %218 = add nuw nsw i64 %index1439, %183
  %219 = add nuw nsw i64 %index1439, %polly.access.mul.Packed_MemRef_call1318520.us
  %220 = getelementptr double, double* %Packed_MemRef_call1318, i64 %219
  %221 = bitcast double* %220 to <4 x double>*
  %wide.load1443 = load <4 x double>, <4 x double>* %221, align 8
  %222 = fmul fast <4 x double> %broadcast.splat1445, %wide.load1443
  %223 = getelementptr double, double* %Packed_MemRef_call2320, i64 %219
  %224 = bitcast double* %223 to <4 x double>*
  %wide.load1446 = load <4 x double>, <4 x double>* %224, align 8
  %225 = fmul fast <4 x double> %broadcast.splat1448, %wide.load1446
  %226 = shl i64 %218, 3
  %227 = add i64 %226, %217
  %228 = getelementptr i8, i8* %call, i64 %227
  %229 = bitcast i8* %228 to <4 x double>*
  %wide.load1449 = load <4 x double>, <4 x double>* %229, align 8, !alias.scope !86, !noalias !88
  %230 = fadd fast <4 x double> %225, %222
  %231 = fmul fast <4 x double> %230, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %232 = fadd fast <4 x double> %231, %wide.load1449
  %233 = bitcast i8* %228 to <4 x double>*
  store <4 x double> %232, <4 x double>* %233, align 8, !alias.scope !86, !noalias !88
  %index.next1440 = add i64 %index1439, 4
  %234 = icmp eq i64 %index.next1440, %n.vec1438
  br i1 %234, label %middle.block1426, label %vector.body1428, !llvm.loop !98

middle.block1426:                                 ; preds = %vector.body1428
  %cmp.n1442 = icmp eq i64 %211, %n.vec1438
  br i1 %cmp.n1442, label %polly.loop_exit515.us, label %polly.loop_header513.us.preheader

polly.loop_header513.us.preheader:                ; preds = %polly.loop_header513.preheader.us, %middle.block1426
  %polly.indvar517.us.ph = phi i64 [ 0, %polly.loop_header513.preheader.us ], [ %n.vec1438, %middle.block1426 ]
  br label %polly.loop_header513.us

polly.loop_exit507.loopexit.us:                   ; preds = %polly.loop_exit515.us
  %polly.indvar_next502.us = add nuw nsw i64 %polly.indvar501.us, 1
  %exitcond1194.not = icmp eq i64 %polly.indvar_next502.us, 1000
  br i1 %exitcond1194.not, label %polly.loop_exit500, label %polly.loop_header498.us

polly.loop_header469:                             ; preds = %polly.loop_header448, %polly.loop_header469
  %polly.indvar473 = phi i64 [ %polly.indvar_next474, %polly.loop_header469 ], [ %204, %polly.loop_header448 ]
  %235 = add nuw nsw i64 %polly.indvar473, %183
  %polly.access.mul.call1477 = mul nsw i64 %235, 1000
  %polly.access.add.call1478 = add nuw nsw i64 %polly.access.mul.call1477, %polly.indvar451
  %polly.access.call1479 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1478
  %polly.access.call1479.load = load double, double* %polly.access.call1479, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1318481 = add nuw nsw i64 %polly.indvar473, %polly.access.mul.Packed_MemRef_call1318
  %polly.access.Packed_MemRef_call1318482 = getelementptr double, double* %Packed_MemRef_call1318, i64 %polly.access.add.Packed_MemRef_call1318481
  store double %polly.access.call1479.load, double* %polly.access.Packed_MemRef_call1318482, align 8
  %polly.indvar_next474 = add nuw nsw i64 %polly.indvar473, 1
  %polly.loop_cond475.not.not = icmp slt i64 %polly.indvar473, %205
  br i1 %polly.loop_cond475.not.not, label %polly.loop_header469, label %polly.merge455

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
  %236 = add i64 %indvar, 1
  %237 = mul nuw nsw i64 %polly.indvar632, 9600
  %scevgep641 = getelementptr i8, i8* %call, i64 %237
  %min.iters.check1367 = icmp ult i64 %236, 4
  br i1 %min.iters.check1367, label %polly.loop_header635.preheader, label %vector.ph1368

vector.ph1368:                                    ; preds = %polly.loop_header629
  %n.vec1370 = and i64 %236, -4
  br label %vector.body1366

vector.body1366:                                  ; preds = %vector.body1366, %vector.ph1368
  %index1371 = phi i64 [ 0, %vector.ph1368 ], [ %index.next1372, %vector.body1366 ]
  %238 = shl nuw nsw i64 %index1371, 3
  %239 = getelementptr i8, i8* %scevgep641, i64 %238
  %240 = bitcast i8* %239 to <4 x double>*
  %wide.load1375 = load <4 x double>, <4 x double>* %240, align 8, !alias.scope !99, !noalias !101
  %241 = fmul fast <4 x double> %wide.load1375, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %242 = bitcast i8* %239 to <4 x double>*
  store <4 x double> %241, <4 x double>* %242, align 8, !alias.scope !99, !noalias !101
  %index.next1372 = add i64 %index1371, 4
  %243 = icmp eq i64 %index.next1372, %n.vec1370
  br i1 %243, label %middle.block1364, label %vector.body1366, !llvm.loop !106

middle.block1364:                                 ; preds = %vector.body1366
  %cmp.n1374 = icmp eq i64 %236, %n.vec1370
  br i1 %cmp.n1374, label %polly.loop_exit637, label %polly.loop_header635.preheader

polly.loop_header635.preheader:                   ; preds = %polly.loop_header629, %middle.block1364
  %polly.indvar638.ph = phi i64 [ 0, %polly.loop_header629 ], [ %n.vec1370, %middle.block1364 ]
  br label %polly.loop_header635

polly.loop_exit637:                               ; preds = %polly.loop_header635, %middle.block1364
  %polly.indvar_next633 = add nuw nsw i64 %polly.indvar632, 1
  %exitcond1231.not = icmp eq i64 %polly.indvar_next633, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1231.not, label %polly.loop_header645.preheader, label %polly.loop_header629

polly.loop_header645.preheader:                   ; preds = %polly.loop_exit637
  %Packed_MemRef_call1544 = bitcast i8* %malloccall543 to double*
  %Packed_MemRef_call2546 = bitcast i8* %malloccall545 to double*
  br label %polly.loop_header645

polly.loop_header635:                             ; preds = %polly.loop_header635.preheader, %polly.loop_header635
  %polly.indvar638 = phi i64 [ %polly.indvar_next639, %polly.loop_header635 ], [ %polly.indvar638.ph, %polly.loop_header635.preheader ]
  %244 = shl nuw nsw i64 %polly.indvar638, 3
  %scevgep642 = getelementptr i8, i8* %scevgep641, i64 %244
  %scevgep642643 = bitcast i8* %scevgep642 to double*
  %_p_scalar_644 = load double, double* %scevgep642643, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_644, 1.200000e+00
  store double %p_mul.i, double* %scevgep642643, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next639 = add nuw nsw i64 %polly.indvar638, 1
  %exitcond1230.not = icmp eq i64 %polly.indvar_next639, %polly.indvar632
  br i1 %exitcond1230.not, label %polly.loop_exit637, label %polly.loop_header635, !llvm.loop !107

polly.loop_header645:                             ; preds = %polly.loop_header645.preheader, %polly.loop_exit670
  %indvars.iv1220 = phi i64 [ 0, %polly.loop_header645.preheader ], [ %indvars.iv.next1221, %polly.loop_exit670 ]
  %indvars.iv1215 = phi i64 [ 0, %polly.loop_header645.preheader ], [ %indvars.iv.next1216, %polly.loop_exit670 ]
  %indvars.iv1208 = phi i64 [ 0, %polly.loop_header645.preheader ], [ %indvars.iv.next1209, %polly.loop_exit670 ]
  %indvars.iv1206 = phi i64 [ 49, %polly.loop_header645.preheader ], [ %indvars.iv.next1207, %polly.loop_exit670 ]
  %indvars.iv1198 = phi i64 [ 1200, %polly.loop_header645.preheader ], [ %indvars.iv.next1199, %polly.loop_exit670 ]
  %polly.indvar648 = phi i64 [ 0, %polly.loop_header645.preheader ], [ %polly.indvar_next649, %polly.loop_exit670 ]
  %245 = shl nuw nsw i64 %polly.indvar648, 2
  %246 = shl nuw nsw i64 %polly.indvar648, 1
  %247 = udiv i64 %246, 25
  %248 = mul nuw nsw i64 %247, 50
  %249 = sub nsw i64 %245, %248
  %250 = mul nsw i64 %polly.indvar648, -4
  %251 = add i64 %250, %248
  %252 = udiv i64 %indvars.iv1208, 25
  %253 = mul nuw nsw i64 %252, 50
  %254 = sub nsw i64 %indvars.iv1215, %253
  %255 = add i64 %indvars.iv1220, %253
  %256 = add i64 %indvars.iv1206, %253
  %257 = shl nsw i64 %polly.indvar648, 2
  br label %polly.loop_header651

polly.loop_exit653:                               ; preds = %polly.loop_exit659
  %258 = mul nsw i64 %polly.indvar648, -4
  %259 = shl nuw nsw i64 %polly.indvar648, 1
  %pexp.p_div_q667 = udiv i64 %259, 25
  %260 = or i64 %259, 1
  %polly.access.mul.call1691 = mul nsw i64 %polly.indvar648, 4000
  %261 = or i64 %257, 1
  %polly.access.mul.call1691.1 = mul nuw nsw i64 %261, 1000
  %262 = or i64 %257, 2
  %polly.access.mul.call1691.2 = mul nuw nsw i64 %262, 1000
  %263 = or i64 %257, 3
  %polly.access.mul.call1691.3 = mul nuw nsw i64 %263, 1000
  %polly.access.mul.call1691.us1081 = mul nsw i64 %polly.indvar648, 4000
  %264 = or i64 %257, 1
  %polly.access.mul.call1691.us1081.1 = mul nuw nsw i64 %264, 1000
  %265 = or i64 %257, 2
  %polly.access.mul.call1691.us1081.2 = mul nuw nsw i64 %265, 1000
  %266 = or i64 %257, 3
  %polly.access.mul.call1691.us1081.3 = mul nuw nsw i64 %266, 1000
  br label %polly.loop_header668

polly.loop_exit670:                               ; preds = %polly.loop_exit726
  %polly.indvar_next649 = add nuw nsw i64 %polly.indvar648, 1
  %indvars.iv.next1199 = add nsw i64 %indvars.iv1198, -4
  %indvars.iv.next1207 = add nsw i64 %indvars.iv1206, -4
  %indvars.iv.next1209 = add nuw nsw i64 %indvars.iv1208, 2
  %indvars.iv.next1216 = add nuw nsw i64 %indvars.iv1215, 4
  %indvars.iv.next1221 = add nsw i64 %indvars.iv1220, -4
  %exitcond1229.not = icmp eq i64 %polly.indvar_next649, 300
  br i1 %exitcond1229.not, label %polly.exiting542, label %polly.loop_header645

polly.loop_header651:                             ; preds = %polly.loop_exit659, %polly.loop_header645
  %polly.indvar654 = phi i64 [ 0, %polly.loop_header645 ], [ %polly.indvar_next655, %polly.loop_exit659 ]
  %polly.access.mul.Packed_MemRef_call2546 = mul nuw nsw i64 %polly.indvar654, 1200
  br label %polly.loop_header657

polly.loop_exit659:                               ; preds = %polly.loop_header657
  %polly.indvar_next655 = add nuw nsw i64 %polly.indvar654, 1
  %exitcond1201.not = icmp eq i64 %polly.indvar_next655, 1000
  br i1 %exitcond1201.not, label %polly.loop_exit653, label %polly.loop_header651

polly.loop_header657:                             ; preds = %polly.loop_header657, %polly.loop_header651
  %polly.indvar660 = phi i64 [ 0, %polly.loop_header651 ], [ %polly.indvar_next661, %polly.loop_header657 ]
  %267 = add nuw nsw i64 %polly.indvar660, %257
  %polly.access.mul.call2664 = mul nuw nsw i64 %267, 1000
  %polly.access.add.call2665 = add nuw nsw i64 %polly.access.mul.call2664, %polly.indvar654
  %polly.access.call2666 = getelementptr double, double* %polly.access.cast.call2779, i64 %polly.access.add.call2665
  %polly.access.call2666.load = load double, double* %polly.access.call2666, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2546 = add nuw nsw i64 %polly.indvar660, %polly.access.mul.Packed_MemRef_call2546
  %polly.access.Packed_MemRef_call2546 = getelementptr double, double* %Packed_MemRef_call2546, i64 %polly.access.add.Packed_MemRef_call2546
  store double %polly.access.call2666.load, double* %polly.access.Packed_MemRef_call2546, align 8
  %polly.indvar_next661 = add nuw nsw i64 %polly.indvar660, 1
  %exitcond1200.not = icmp eq i64 %polly.indvar_next661, %indvars.iv1198
  br i1 %exitcond1200.not, label %polly.loop_exit659, label %polly.loop_header657

polly.loop_header668:                             ; preds = %polly.loop_exit726, %polly.loop_exit653
  %indvar1379 = phi i64 [ %indvar.next1380, %polly.loop_exit726 ], [ 0, %polly.loop_exit653 ]
  %indvars.iv1222 = phi i64 [ %indvars.iv.next1223, %polly.loop_exit726 ], [ %255, %polly.loop_exit653 ]
  %indvars.iv1217 = phi i64 [ %indvars.iv.next1218, %polly.loop_exit726 ], [ %254, %polly.loop_exit653 ]
  %indvars.iv1210 = phi i64 [ %indvars.iv.next1211, %polly.loop_exit726 ], [ %256, %polly.loop_exit653 ]
  %polly.indvar671 = phi i64 [ %polly.indvar_next672, %polly.loop_exit726 ], [ %pexp.p_div_q667, %polly.loop_exit653 ]
  %268 = mul nsw i64 %indvar1379, -50
  %269 = add i64 %249, %268
  %smax1381 = call i64 @llvm.smax.i64(i64 %269, i64 0)
  %270 = mul nuw nsw i64 %indvar1379, 50
  %271 = add i64 %251, %270
  %272 = add i64 %smax1381, %271
  %smax1219 = call i64 @llvm.smax.i64(i64 %indvars.iv1217, i64 0)
  %273 = add i64 %smax1219, %indvars.iv1222
  %smax1212 = call i64 @llvm.smax.i64(i64 %indvars.iv1210, i64 0)
  %274 = mul nuw nsw i64 %polly.indvar671, 25
  %.not972 = icmp ult i64 %274, %260
  %275 = mul nuw nsw i64 %polly.indvar671, 50
  %276 = add nsw i64 %275, %258
  %277 = icmp sgt i64 %276, 4
  %278 = select i1 %277, i64 %276, i64 4
  %279 = add nsw i64 %276, 49
  %polly.loop_guard713 = icmp sgt i64 %276, -50
  br i1 %.not972, label %polly.loop_header674.us, label %polly.loop_header668.split

polly.loop_header674.us:                          ; preds = %polly.loop_header668, %polly.merge681.us
  %polly.indvar677.us = phi i64 [ %polly.indvar_next678.us, %polly.merge681.us ], [ 0, %polly.loop_header668 ]
  br i1 %polly.loop_guard713, label %polly.loop_header710.preheader.us, label %polly.merge681.us

polly.loop_header710.us:                          ; preds = %polly.loop_header710.preheader.us, %polly.loop_header710.us
  %polly.indvar714.us = phi i64 [ %polly.indvar_next715.us, %polly.loop_header710.us ], [ 0, %polly.loop_header710.preheader.us ]
  %280 = add nuw nsw i64 %polly.indvar714.us, %257
  %polly.access.mul.call1718.us = mul nuw nsw i64 %280, 1000
  %polly.access.add.call1719.us = add nuw nsw i64 %polly.access.mul.call1718.us, %polly.indvar677.us
  %polly.access.call1720.us = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1719.us
  %polly.access.call1720.load.us = load double, double* %polly.access.call1720.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1544722.us = add nuw nsw i64 %polly.indvar714.us, %polly.access.mul.Packed_MemRef_call1544721.us
  %polly.access.Packed_MemRef_call1544723.us = getelementptr double, double* %Packed_MemRef_call1544, i64 %polly.access.add.Packed_MemRef_call1544722.us
  store double %polly.access.call1720.load.us, double* %polly.access.Packed_MemRef_call1544723.us, align 8
  %polly.indvar_next715.us = add nuw nsw i64 %polly.indvar714.us, 1
  %exitcond1213.not = icmp eq i64 %polly.indvar714.us, %smax1212
  br i1 %exitcond1213.not, label %polly.merge681.us, label %polly.loop_header710.us

polly.merge681.us:                                ; preds = %polly.loop_header710.us, %polly.loop_header674.us
  %polly.indvar_next678.us = add nuw nsw i64 %polly.indvar677.us, 1
  %exitcond1214.not = icmp eq i64 %polly.indvar_next678.us, 1000
  br i1 %exitcond1214.not, label %polly.loop_header724.preheader, label %polly.loop_header674.us

polly.loop_header710.preheader.us:                ; preds = %polly.loop_header674.us
  %polly.access.mul.Packed_MemRef_call1544721.us = mul nuw nsw i64 %polly.indvar677.us, 1200
  br label %polly.loop_header710.us

polly.loop_header668.split:                       ; preds = %polly.loop_header668
  %polly.loop_guard698.not = icmp sgt i64 %278, %279
  br i1 %polly.loop_guard698.not, label %polly.loop_header674.us1077, label %polly.loop_header674

polly.loop_header674.us1077:                      ; preds = %polly.loop_header668.split, %polly.loop_header674.us1077
  %polly.indvar677.us1078 = phi i64 [ %polly.indvar_next678.us1113, %polly.loop_header674.us1077 ], [ 0, %polly.loop_header668.split ]
  %polly.access.mul.Packed_MemRef_call1544.us1121 = mul nuw nsw i64 %polly.indvar677.us1078, 1200
  %polly.access.add.call1692.us1082 = add nuw nsw i64 %polly.access.mul.call1691.us1081, %polly.indvar677.us1078
  %polly.access.call1693.us1083 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1692.us1082
  %polly.access.call1693.load.us1084 = load double, double* %polly.access.call1693.us1083, align 8, !alias.scope !102, !noalias !109
  %polly.access.Packed_MemRef_call1544.us1086 = getelementptr double, double* %Packed_MemRef_call1544, i64 %polly.access.mul.Packed_MemRef_call1544.us1121
  store double %polly.access.call1693.load.us1084, double* %polly.access.Packed_MemRef_call1544.us1086, align 8
  %polly.access.add.call1692.us1082.1 = add nuw nsw i64 %polly.access.mul.call1691.us1081.1, %polly.indvar677.us1078
  %polly.access.call1693.us1083.1 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1692.us1082.1
  %polly.access.call1693.load.us1084.1 = load double, double* %polly.access.call1693.us1083.1, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1544.us1085.1 = or i64 %polly.access.mul.Packed_MemRef_call1544.us1121, 1
  %polly.access.Packed_MemRef_call1544.us1086.1 = getelementptr double, double* %Packed_MemRef_call1544, i64 %polly.access.add.Packed_MemRef_call1544.us1085.1
  store double %polly.access.call1693.load.us1084.1, double* %polly.access.Packed_MemRef_call1544.us1086.1, align 8
  %polly.access.add.call1692.us1082.2 = add nuw nsw i64 %polly.access.mul.call1691.us1081.2, %polly.indvar677.us1078
  %polly.access.call1693.us1083.2 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1692.us1082.2
  %polly.access.call1693.load.us1084.2 = load double, double* %polly.access.call1693.us1083.2, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1544.us1085.2 = or i64 %polly.access.mul.Packed_MemRef_call1544.us1121, 2
  %polly.access.Packed_MemRef_call1544.us1086.2 = getelementptr double, double* %Packed_MemRef_call1544, i64 %polly.access.add.Packed_MemRef_call1544.us1085.2
  store double %polly.access.call1693.load.us1084.2, double* %polly.access.Packed_MemRef_call1544.us1086.2, align 8
  %polly.access.add.call1692.us1082.3 = add nuw nsw i64 %polly.access.mul.call1691.us1081.3, %polly.indvar677.us1078
  %polly.access.call1693.us1083.3 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1692.us1082.3
  %polly.access.call1693.load.us1084.3 = load double, double* %polly.access.call1693.us1083.3, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1544.us1085.3 = or i64 %polly.access.mul.Packed_MemRef_call1544.us1121, 3
  %polly.access.Packed_MemRef_call1544.us1086.3 = getelementptr double, double* %Packed_MemRef_call1544, i64 %polly.access.add.Packed_MemRef_call1544.us1085.3
  store double %polly.access.call1693.load.us1084.3, double* %polly.access.Packed_MemRef_call1544.us1086.3, align 8
  %polly.indvar_next678.us1113 = add nuw nsw i64 %polly.indvar677.us1078, 1
  %exitcond1205.not = icmp eq i64 %polly.indvar_next678.us1113, 1000
  br i1 %exitcond1205.not, label %polly.loop_header724.preheader, label %polly.loop_header674.us1077

polly.loop_exit726:                               ; preds = %polly.loop_exit733.loopexit.us, %polly.loop_header724.preheader
  %polly.indvar_next672 = add nuw nsw i64 %polly.indvar671, 1
  %polly.loop_cond673 = icmp ult i64 %polly.indvar671, 23
  %indvars.iv.next1211 = add i64 %indvars.iv1210, 50
  %indvars.iv.next1218 = add i64 %indvars.iv1217, -50
  %indvars.iv.next1223 = add i64 %indvars.iv1222, 50
  %indvar.next1380 = add i64 %indvar1379, 1
  br i1 %polly.loop_cond673, label %polly.loop_header668, label %polly.loop_exit670

polly.loop_header674:                             ; preds = %polly.loop_header668.split, %polly.merge681
  %polly.indvar677 = phi i64 [ %polly.indvar_next678, %polly.merge681 ], [ 0, %polly.loop_header668.split ]
  %polly.access.mul.Packed_MemRef_call1544 = mul nuw nsw i64 %polly.indvar677, 1200
  %polly.access.add.call1692 = add nuw nsw i64 %polly.access.mul.call1691, %polly.indvar677
  %polly.access.call1693 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1692
  %polly.access.call1693.load = load double, double* %polly.access.call1693, align 8, !alias.scope !102, !noalias !109
  %polly.access.Packed_MemRef_call1544 = getelementptr double, double* %Packed_MemRef_call1544, i64 %polly.access.mul.Packed_MemRef_call1544
  store double %polly.access.call1693.load, double* %polly.access.Packed_MemRef_call1544, align 8
  %polly.access.add.call1692.1 = add nuw nsw i64 %polly.access.mul.call1691.1, %polly.indvar677
  %polly.access.call1693.1 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1692.1
  %polly.access.call1693.load.1 = load double, double* %polly.access.call1693.1, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1544.1 = or i64 %polly.access.mul.Packed_MemRef_call1544, 1
  %polly.access.Packed_MemRef_call1544.1 = getelementptr double, double* %Packed_MemRef_call1544, i64 %polly.access.add.Packed_MemRef_call1544.1
  store double %polly.access.call1693.load.1, double* %polly.access.Packed_MemRef_call1544.1, align 8
  %polly.access.add.call1692.2 = add nuw nsw i64 %polly.access.mul.call1691.2, %polly.indvar677
  %polly.access.call1693.2 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1692.2
  %polly.access.call1693.load.2 = load double, double* %polly.access.call1693.2, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1544.2 = or i64 %polly.access.mul.Packed_MemRef_call1544, 2
  %polly.access.Packed_MemRef_call1544.2 = getelementptr double, double* %Packed_MemRef_call1544, i64 %polly.access.add.Packed_MemRef_call1544.2
  store double %polly.access.call1693.load.2, double* %polly.access.Packed_MemRef_call1544.2, align 8
  %polly.access.add.call1692.3 = add nuw nsw i64 %polly.access.mul.call1691.3, %polly.indvar677
  %polly.access.call1693.3 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1692.3
  %polly.access.call1693.load.3 = load double, double* %polly.access.call1693.3, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1544.3 = or i64 %polly.access.mul.Packed_MemRef_call1544, 3
  %polly.access.Packed_MemRef_call1544.3 = getelementptr double, double* %Packed_MemRef_call1544, i64 %polly.access.add.Packed_MemRef_call1544.3
  store double %polly.access.call1693.load.3, double* %polly.access.Packed_MemRef_call1544.3, align 8
  br label %polly.loop_header695

polly.merge681:                                   ; preds = %polly.loop_header695
  %polly.indvar_next678 = add nuw nsw i64 %polly.indvar677, 1
  %exitcond1203.not = icmp eq i64 %polly.indvar_next678, 1000
  br i1 %exitcond1203.not, label %polly.loop_header724.preheader, label %polly.loop_header674

polly.loop_header724.preheader:                   ; preds = %polly.merge681, %polly.loop_header674.us1077, %polly.merge681.us
  %281 = sub nsw i64 %257, %275
  %282 = icmp sgt i64 %281, 0
  %283 = select i1 %282, i64 %281, i64 0
  %polly.loop_guard734 = icmp slt i64 %283, 50
  br i1 %polly.loop_guard734, label %polly.loop_header724.us, label %polly.loop_exit726

polly.loop_header724.us:                          ; preds = %polly.loop_header724.preheader, %polly.loop_exit733.loopexit.us
  %polly.indvar727.us = phi i64 [ %polly.indvar_next728.us, %polly.loop_exit733.loopexit.us ], [ 0, %polly.loop_header724.preheader ]
  %polly.access.mul.Packed_MemRef_call1544746.us = mul nuw nsw i64 %polly.indvar727.us, 1200
  br label %polly.loop_header731.us

polly.loop_header731.us:                          ; preds = %polly.loop_header724.us, %polly.loop_exit741.us
  %indvar1382 = phi i64 [ 0, %polly.loop_header724.us ], [ %indvar.next1383, %polly.loop_exit741.us ]
  %indvars.iv1224 = phi i64 [ %273, %polly.loop_header724.us ], [ %indvars.iv.next1225, %polly.loop_exit741.us ]
  %polly.indvar735.us = phi i64 [ %283, %polly.loop_header724.us ], [ %polly.indvar_next736.us, %polly.loop_exit741.us ]
  %284 = add i64 %272, %indvar1382
  %smin1384 = call i64 @llvm.smin.i64(i64 %284, i64 3)
  %285 = add nsw i64 %smin1384, 1
  %smin1226 = call i64 @llvm.smin.i64(i64 %indvars.iv1224, i64 3)
  %286 = add nuw i64 %polly.indvar735.us, %275
  %287 = add i64 %286, %258
  %polly.loop_guard742.us1271 = icmp sgt i64 %287, -1
  br i1 %polly.loop_guard742.us1271, label %polly.loop_header739.preheader.us, label %polly.loop_exit741.us

polly.loop_header739.us:                          ; preds = %polly.loop_header739.us.preheader, %polly.loop_header739.us
  %polly.indvar743.us = phi i64 [ %polly.indvar_next744.us, %polly.loop_header739.us ], [ %polly.indvar743.us.ph, %polly.loop_header739.us.preheader ]
  %288 = add nuw nsw i64 %polly.indvar743.us, %257
  %polly.access.add.Packed_MemRef_call1544747.us = add nuw nsw i64 %polly.indvar743.us, %polly.access.mul.Packed_MemRef_call1544746.us
  %polly.access.Packed_MemRef_call1544748.us = getelementptr double, double* %Packed_MemRef_call1544, i64 %polly.access.add.Packed_MemRef_call1544747.us
  %_p_scalar_749.us = load double, double* %polly.access.Packed_MemRef_call1544748.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_753.us, %_p_scalar_749.us
  %polly.access.Packed_MemRef_call2546756.us = getelementptr double, double* %Packed_MemRef_call2546, i64 %polly.access.add.Packed_MemRef_call1544747.us
  %_p_scalar_757.us = load double, double* %polly.access.Packed_MemRef_call2546756.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_761.us, %_p_scalar_757.us
  %289 = shl i64 %288, 3
  %290 = add i64 %289, %291
  %scevgep762.us = getelementptr i8, i8* %call, i64 %290
  %scevgep762763.us = bitcast i8* %scevgep762.us to double*
  %_p_scalar_764.us = load double, double* %scevgep762763.us, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_764.us
  store double %p_add42.i.us, double* %scevgep762763.us, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next744.us = add nuw nsw i64 %polly.indvar743.us, 1
  %exitcond1227.not = icmp eq i64 %polly.indvar743.us, %smin1226
  br i1 %exitcond1227.not, label %polly.loop_exit741.us, label %polly.loop_header739.us, !llvm.loop !110

polly.loop_exit741.us:                            ; preds = %polly.loop_header739.us, %middle.block1376, %polly.loop_header731.us
  %polly.indvar_next736.us = add nuw nsw i64 %polly.indvar735.us, 1
  %polly.loop_cond737.us = icmp ult i64 %polly.indvar735.us, 49
  %indvars.iv.next1225 = add i64 %indvars.iv1224, 1
  %indvar.next1383 = add i64 %indvar1382, 1
  br i1 %polly.loop_cond737.us, label %polly.loop_header731.us, label %polly.loop_exit733.loopexit.us

polly.loop_header739.preheader.us:                ; preds = %polly.loop_header731.us
  %polly.access.add.Packed_MemRef_call2546751.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1544746.us, %287
  %polly.access.Packed_MemRef_call2546752.us = getelementptr double, double* %Packed_MemRef_call2546, i64 %polly.access.add.Packed_MemRef_call2546751.us
  %_p_scalar_753.us = load double, double* %polly.access.Packed_MemRef_call2546752.us, align 8
  %polly.access.Packed_MemRef_call1544760.us = getelementptr double, double* %Packed_MemRef_call1544, i64 %polly.access.add.Packed_MemRef_call2546751.us
  %_p_scalar_761.us = load double, double* %polly.access.Packed_MemRef_call1544760.us, align 8
  %291 = mul i64 %286, 9600
  %min.iters.check1385 = icmp ult i64 %285, 4
  br i1 %min.iters.check1385, label %polly.loop_header739.us.preheader, label %vector.ph1386

vector.ph1386:                                    ; preds = %polly.loop_header739.preheader.us
  %n.vec1388 = and i64 %285, -4
  %broadcast.splatinsert1394 = insertelement <4 x double> poison, double %_p_scalar_753.us, i32 0
  %broadcast.splat1395 = shufflevector <4 x double> %broadcast.splatinsert1394, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1397 = insertelement <4 x double> poison, double %_p_scalar_761.us, i32 0
  %broadcast.splat1398 = shufflevector <4 x double> %broadcast.splatinsert1397, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1378

vector.body1378:                                  ; preds = %vector.body1378, %vector.ph1386
  %index1389 = phi i64 [ 0, %vector.ph1386 ], [ %index.next1390, %vector.body1378 ]
  %292 = add nuw nsw i64 %index1389, %257
  %293 = add nuw nsw i64 %index1389, %polly.access.mul.Packed_MemRef_call1544746.us
  %294 = getelementptr double, double* %Packed_MemRef_call1544, i64 %293
  %295 = bitcast double* %294 to <4 x double>*
  %wide.load1393 = load <4 x double>, <4 x double>* %295, align 8
  %296 = fmul fast <4 x double> %broadcast.splat1395, %wide.load1393
  %297 = getelementptr double, double* %Packed_MemRef_call2546, i64 %293
  %298 = bitcast double* %297 to <4 x double>*
  %wide.load1396 = load <4 x double>, <4 x double>* %298, align 8
  %299 = fmul fast <4 x double> %broadcast.splat1398, %wide.load1396
  %300 = shl i64 %292, 3
  %301 = add i64 %300, %291
  %302 = getelementptr i8, i8* %call, i64 %301
  %303 = bitcast i8* %302 to <4 x double>*
  %wide.load1399 = load <4 x double>, <4 x double>* %303, align 8, !alias.scope !99, !noalias !101
  %304 = fadd fast <4 x double> %299, %296
  %305 = fmul fast <4 x double> %304, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %306 = fadd fast <4 x double> %305, %wide.load1399
  %307 = bitcast i8* %302 to <4 x double>*
  store <4 x double> %306, <4 x double>* %307, align 8, !alias.scope !99, !noalias !101
  %index.next1390 = add i64 %index1389, 4
  %308 = icmp eq i64 %index.next1390, %n.vec1388
  br i1 %308, label %middle.block1376, label %vector.body1378, !llvm.loop !111

middle.block1376:                                 ; preds = %vector.body1378
  %cmp.n1392 = icmp eq i64 %285, %n.vec1388
  br i1 %cmp.n1392, label %polly.loop_exit741.us, label %polly.loop_header739.us.preheader

polly.loop_header739.us.preheader:                ; preds = %polly.loop_header739.preheader.us, %middle.block1376
  %polly.indvar743.us.ph = phi i64 [ 0, %polly.loop_header739.preheader.us ], [ %n.vec1388, %middle.block1376 ]
  br label %polly.loop_header739.us

polly.loop_exit733.loopexit.us:                   ; preds = %polly.loop_exit741.us
  %polly.indvar_next728.us = add nuw nsw i64 %polly.indvar727.us, 1
  %exitcond1228.not = icmp eq i64 %polly.indvar_next728.us, 1000
  br i1 %exitcond1228.not, label %polly.loop_exit726, label %polly.loop_header724.us

polly.loop_header695:                             ; preds = %polly.loop_header674, %polly.loop_header695
  %polly.indvar699 = phi i64 [ %polly.indvar_next700, %polly.loop_header695 ], [ %278, %polly.loop_header674 ]
  %309 = add nuw nsw i64 %polly.indvar699, %257
  %polly.access.mul.call1703 = mul nsw i64 %309, 1000
  %polly.access.add.call1704 = add nuw nsw i64 %polly.access.mul.call1703, %polly.indvar677
  %polly.access.call1705 = getelementptr double, double* %polly.access.cast.call1769, i64 %polly.access.add.call1704
  %polly.access.call1705.load = load double, double* %polly.access.call1705, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1544707 = add nuw nsw i64 %polly.indvar699, %polly.access.mul.Packed_MemRef_call1544
  %polly.access.Packed_MemRef_call1544708 = getelementptr double, double* %Packed_MemRef_call1544, i64 %polly.access.add.Packed_MemRef_call1544707
  store double %polly.access.call1705.load, double* %polly.access.Packed_MemRef_call1544708, align 8
  %polly.indvar_next700 = add nuw nsw i64 %polly.indvar699, 1
  %polly.loop_cond701.not.not = icmp slt i64 %polly.indvar699, %279
  br i1 %polly.loop_cond701.not.not, label %polly.loop_header695, label %polly.merge681

polly.loop_header891:                             ; preds = %entry, %polly.loop_exit899
  %indvars.iv1256 = phi i64 [ %indvars.iv.next1257, %polly.loop_exit899 ], [ 0, %entry ]
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_exit899 ], [ 0, %entry ]
  %smin1258 = call i64 @llvm.smin.i64(i64 %indvars.iv1256, i64 -1168)
  %310 = shl nsw i64 %polly.indvar894, 5
  %311 = add nsw i64 %smin1258, 1199
  br label %polly.loop_header897

polly.loop_exit899:                               ; preds = %polly.loop_exit905
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %indvars.iv.next1257 = add nsw i64 %indvars.iv1256, -32
  %exitcond1261.not = icmp eq i64 %polly.indvar_next895, 38
  br i1 %exitcond1261.not, label %polly.loop_header918, label %polly.loop_header891

polly.loop_header897:                             ; preds = %polly.loop_exit905, %polly.loop_header891
  %indvars.iv1252 = phi i64 [ %indvars.iv.next1253, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %312 = mul nsw i64 %polly.indvar900, -32
  %smin1305 = call i64 @llvm.smin.i64(i64 %312, i64 -1168)
  %313 = add nsw i64 %smin1305, 1200
  %smin1254 = call i64 @llvm.smin.i64(i64 %indvars.iv1252, i64 -1168)
  %314 = shl nsw i64 %polly.indvar900, 5
  %315 = add nsw i64 %smin1254, 1199
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1253 = add nsw i64 %indvars.iv1252, -32
  %exitcond1260.not = icmp eq i64 %polly.indvar_next901, 38
  br i1 %exitcond1260.not, label %polly.loop_exit899, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %polly.indvar906 = phi i64 [ 0, %polly.loop_header897 ], [ %polly.indvar_next907, %polly.loop_exit911 ]
  %316 = add nuw nsw i64 %polly.indvar906, %310
  %317 = trunc i64 %316 to i32
  %318 = mul nuw nsw i64 %316, 9600
  %min.iters.check = icmp eq i64 %313, 0
  br i1 %min.iters.check, label %polly.loop_header909, label %vector.ph1306

vector.ph1306:                                    ; preds = %polly.loop_header903
  %broadcast.splatinsert1313 = insertelement <4 x i64> poison, i64 %314, i32 0
  %broadcast.splat1314 = shufflevector <4 x i64> %broadcast.splatinsert1313, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1315 = insertelement <4 x i32> poison, i32 %317, i32 0
  %broadcast.splat1316 = shufflevector <4 x i32> %broadcast.splatinsert1315, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1304

vector.body1304:                                  ; preds = %vector.body1304, %vector.ph1306
  %index1307 = phi i64 [ 0, %vector.ph1306 ], [ %index.next1308, %vector.body1304 ]
  %vec.ind1311 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1306 ], [ %vec.ind.next1312, %vector.body1304 ]
  %319 = add nuw nsw <4 x i64> %vec.ind1311, %broadcast.splat1314
  %320 = trunc <4 x i64> %319 to <4 x i32>
  %321 = mul <4 x i32> %broadcast.splat1316, %320
  %322 = add <4 x i32> %321, <i32 3, i32 3, i32 3, i32 3>
  %323 = urem <4 x i32> %322, <i32 1200, i32 1200, i32 1200, i32 1200>
  %324 = sitofp <4 x i32> %323 to <4 x double>
  %325 = fmul fast <4 x double> %324, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %326 = extractelement <4 x i64> %319, i32 0
  %327 = shl i64 %326, 3
  %328 = add nuw nsw i64 %327, %318
  %329 = getelementptr i8, i8* %call, i64 %328
  %330 = bitcast i8* %329 to <4 x double>*
  store <4 x double> %325, <4 x double>* %330, align 8, !alias.scope !112, !noalias !114
  %index.next1308 = add i64 %index1307, 4
  %vec.ind.next1312 = add <4 x i64> %vec.ind1311, <i64 4, i64 4, i64 4, i64 4>
  %331 = icmp eq i64 %index.next1308, %313
  br i1 %331, label %polly.loop_exit911, label %vector.body1304, !llvm.loop !117

polly.loop_exit911:                               ; preds = %vector.body1304, %polly.loop_header909
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %exitcond1259.not = icmp eq i64 %polly.indvar906, %311
  br i1 %exitcond1259.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_header903, %polly.loop_header909
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_header909 ], [ 0, %polly.loop_header903 ]
  %332 = add nuw nsw i64 %polly.indvar912, %314
  %333 = trunc i64 %332 to i32
  %334 = mul i32 %333, %317
  %335 = add i32 %334, 3
  %336 = urem i32 %335, 1200
  %p_conv31.i = sitofp i32 %336 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %337 = shl i64 %332, 3
  %338 = add nuw nsw i64 %337, %318
  %scevgep915 = getelementptr i8, i8* %call, i64 %338
  %scevgep915916 = bitcast i8* %scevgep915 to double*
  store double %p_div33.i, double* %scevgep915916, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1255.not = icmp eq i64 %polly.indvar912, %315
  br i1 %exitcond1255.not, label %polly.loop_exit911, label %polly.loop_header909, !llvm.loop !118

polly.loop_header918:                             ; preds = %polly.loop_exit899, %polly.loop_exit926
  %indvars.iv1246 = phi i64 [ %indvars.iv.next1247, %polly.loop_exit926 ], [ 0, %polly.loop_exit899 ]
  %polly.indvar921 = phi i64 [ %polly.indvar_next922, %polly.loop_exit926 ], [ 0, %polly.loop_exit899 ]
  %smin1248 = call i64 @llvm.smin.i64(i64 %indvars.iv1246, i64 -1168)
  %339 = shl nsw i64 %polly.indvar921, 5
  %340 = add nsw i64 %smin1248, 1199
  br label %polly.loop_header924

polly.loop_exit926:                               ; preds = %polly.loop_exit932
  %polly.indvar_next922 = add nuw nsw i64 %polly.indvar921, 1
  %indvars.iv.next1247 = add nsw i64 %indvars.iv1246, -32
  %exitcond1251.not = icmp eq i64 %polly.indvar_next922, 38
  br i1 %exitcond1251.not, label %polly.loop_header944, label %polly.loop_header918

polly.loop_header924:                             ; preds = %polly.loop_exit932, %polly.loop_header918
  %indvars.iv1242 = phi i64 [ %indvars.iv.next1243, %polly.loop_exit932 ], [ 0, %polly.loop_header918 ]
  %polly.indvar927 = phi i64 [ %polly.indvar_next928, %polly.loop_exit932 ], [ 0, %polly.loop_header918 ]
  %341 = mul nsw i64 %polly.indvar927, -32
  %smin1320 = call i64 @llvm.smin.i64(i64 %341, i64 -968)
  %342 = add nsw i64 %smin1320, 1000
  %smin1244 = call i64 @llvm.smin.i64(i64 %indvars.iv1242, i64 -968)
  %343 = shl nsw i64 %polly.indvar927, 5
  %344 = add nsw i64 %smin1244, 999
  br label %polly.loop_header930

polly.loop_exit932:                               ; preds = %polly.loop_exit938
  %polly.indvar_next928 = add nuw nsw i64 %polly.indvar927, 1
  %indvars.iv.next1243 = add nsw i64 %indvars.iv1242, -32
  %exitcond1250.not = icmp eq i64 %polly.indvar_next928, 32
  br i1 %exitcond1250.not, label %polly.loop_exit926, label %polly.loop_header924

polly.loop_header930:                             ; preds = %polly.loop_exit938, %polly.loop_header924
  %polly.indvar933 = phi i64 [ 0, %polly.loop_header924 ], [ %polly.indvar_next934, %polly.loop_exit938 ]
  %345 = add nuw nsw i64 %polly.indvar933, %339
  %346 = trunc i64 %345 to i32
  %347 = mul nuw nsw i64 %345, 8000
  %min.iters.check1321 = icmp eq i64 %342, 0
  br i1 %min.iters.check1321, label %polly.loop_header936, label %vector.ph1322

vector.ph1322:                                    ; preds = %polly.loop_header930
  %broadcast.splatinsert1331 = insertelement <4 x i64> poison, i64 %343, i32 0
  %broadcast.splat1332 = shufflevector <4 x i64> %broadcast.splatinsert1331, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1333 = insertelement <4 x i32> poison, i32 %346, i32 0
  %broadcast.splat1334 = shufflevector <4 x i32> %broadcast.splatinsert1333, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1319

vector.body1319:                                  ; preds = %vector.body1319, %vector.ph1322
  %index1325 = phi i64 [ 0, %vector.ph1322 ], [ %index.next1326, %vector.body1319 ]
  %vec.ind1329 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1322 ], [ %vec.ind.next1330, %vector.body1319 ]
  %348 = add nuw nsw <4 x i64> %vec.ind1329, %broadcast.splat1332
  %349 = trunc <4 x i64> %348 to <4 x i32>
  %350 = mul <4 x i32> %broadcast.splat1334, %349
  %351 = add <4 x i32> %350, <i32 2, i32 2, i32 2, i32 2>
  %352 = urem <4 x i32> %351, <i32 1000, i32 1000, i32 1000, i32 1000>
  %353 = sitofp <4 x i32> %352 to <4 x double>
  %354 = fmul fast <4 x double> %353, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %355 = extractelement <4 x i64> %348, i32 0
  %356 = shl i64 %355, 3
  %357 = add nuw nsw i64 %356, %347
  %358 = getelementptr i8, i8* %call2, i64 %357
  %359 = bitcast i8* %358 to <4 x double>*
  store <4 x double> %354, <4 x double>* %359, align 8, !alias.scope !116, !noalias !119
  %index.next1326 = add i64 %index1325, 4
  %vec.ind.next1330 = add <4 x i64> %vec.ind1329, <i64 4, i64 4, i64 4, i64 4>
  %360 = icmp eq i64 %index.next1326, %342
  br i1 %360, label %polly.loop_exit938, label %vector.body1319, !llvm.loop !120

polly.loop_exit938:                               ; preds = %vector.body1319, %polly.loop_header936
  %polly.indvar_next934 = add nuw nsw i64 %polly.indvar933, 1
  %exitcond1249.not = icmp eq i64 %polly.indvar933, %340
  br i1 %exitcond1249.not, label %polly.loop_exit932, label %polly.loop_header930

polly.loop_header936:                             ; preds = %polly.loop_header930, %polly.loop_header936
  %polly.indvar939 = phi i64 [ %polly.indvar_next940, %polly.loop_header936 ], [ 0, %polly.loop_header930 ]
  %361 = add nuw nsw i64 %polly.indvar939, %343
  %362 = trunc i64 %361 to i32
  %363 = mul i32 %362, %346
  %364 = add i32 %363, 2
  %365 = urem i32 %364, 1000
  %p_conv10.i = sitofp i32 %365 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %366 = shl i64 %361, 3
  %367 = add nuw nsw i64 %366, %347
  %scevgep942 = getelementptr i8, i8* %call2, i64 %367
  %scevgep942943 = bitcast i8* %scevgep942 to double*
  store double %p_div12.i, double* %scevgep942943, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next940 = add nuw nsw i64 %polly.indvar939, 1
  %exitcond1245.not = icmp eq i64 %polly.indvar939, %344
  br i1 %exitcond1245.not, label %polly.loop_exit938, label %polly.loop_header936, !llvm.loop !121

polly.loop_header944:                             ; preds = %polly.loop_exit926, %polly.loop_exit952
  %indvars.iv1236 = phi i64 [ %indvars.iv.next1237, %polly.loop_exit952 ], [ 0, %polly.loop_exit926 ]
  %polly.indvar947 = phi i64 [ %polly.indvar_next948, %polly.loop_exit952 ], [ 0, %polly.loop_exit926 ]
  %smin1238 = call i64 @llvm.smin.i64(i64 %indvars.iv1236, i64 -1168)
  %368 = shl nsw i64 %polly.indvar947, 5
  %369 = add nsw i64 %smin1238, 1199
  br label %polly.loop_header950

polly.loop_exit952:                               ; preds = %polly.loop_exit958
  %polly.indvar_next948 = add nuw nsw i64 %polly.indvar947, 1
  %indvars.iv.next1237 = add nsw i64 %indvars.iv1236, -32
  %exitcond1241.not = icmp eq i64 %polly.indvar_next948, 38
  br i1 %exitcond1241.not, label %init_array.exit, label %polly.loop_header944

polly.loop_header950:                             ; preds = %polly.loop_exit958, %polly.loop_header944
  %indvars.iv1232 = phi i64 [ %indvars.iv.next1233, %polly.loop_exit958 ], [ 0, %polly.loop_header944 ]
  %polly.indvar953 = phi i64 [ %polly.indvar_next954, %polly.loop_exit958 ], [ 0, %polly.loop_header944 ]
  %370 = mul nsw i64 %polly.indvar953, -32
  %smin1338 = call i64 @llvm.smin.i64(i64 %370, i64 -968)
  %371 = add nsw i64 %smin1338, 1000
  %smin1234 = call i64 @llvm.smin.i64(i64 %indvars.iv1232, i64 -968)
  %372 = shl nsw i64 %polly.indvar953, 5
  %373 = add nsw i64 %smin1234, 999
  br label %polly.loop_header956

polly.loop_exit958:                               ; preds = %polly.loop_exit964
  %polly.indvar_next954 = add nuw nsw i64 %polly.indvar953, 1
  %indvars.iv.next1233 = add nsw i64 %indvars.iv1232, -32
  %exitcond1240.not = icmp eq i64 %polly.indvar_next954, 32
  br i1 %exitcond1240.not, label %polly.loop_exit952, label %polly.loop_header950

polly.loop_header956:                             ; preds = %polly.loop_exit964, %polly.loop_header950
  %polly.indvar959 = phi i64 [ 0, %polly.loop_header950 ], [ %polly.indvar_next960, %polly.loop_exit964 ]
  %374 = add nuw nsw i64 %polly.indvar959, %368
  %375 = trunc i64 %374 to i32
  %376 = mul nuw nsw i64 %374, 8000
  %min.iters.check1339 = icmp eq i64 %371, 0
  br i1 %min.iters.check1339, label %polly.loop_header962, label %vector.ph1340

vector.ph1340:                                    ; preds = %polly.loop_header956
  %broadcast.splatinsert1349 = insertelement <4 x i64> poison, i64 %372, i32 0
  %broadcast.splat1350 = shufflevector <4 x i64> %broadcast.splatinsert1349, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1351 = insertelement <4 x i32> poison, i32 %375, i32 0
  %broadcast.splat1352 = shufflevector <4 x i32> %broadcast.splatinsert1351, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1337

vector.body1337:                                  ; preds = %vector.body1337, %vector.ph1340
  %index1343 = phi i64 [ 0, %vector.ph1340 ], [ %index.next1344, %vector.body1337 ]
  %vec.ind1347 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1340 ], [ %vec.ind.next1348, %vector.body1337 ]
  %377 = add nuw nsw <4 x i64> %vec.ind1347, %broadcast.splat1350
  %378 = trunc <4 x i64> %377 to <4 x i32>
  %379 = mul <4 x i32> %broadcast.splat1352, %378
  %380 = add <4 x i32> %379, <i32 1, i32 1, i32 1, i32 1>
  %381 = urem <4 x i32> %380, <i32 1200, i32 1200, i32 1200, i32 1200>
  %382 = sitofp <4 x i32> %381 to <4 x double>
  %383 = fmul fast <4 x double> %382, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %384 = extractelement <4 x i64> %377, i32 0
  %385 = shl i64 %384, 3
  %386 = add nuw nsw i64 %385, %376
  %387 = getelementptr i8, i8* %call1, i64 %386
  %388 = bitcast i8* %387 to <4 x double>*
  store <4 x double> %383, <4 x double>* %388, align 8, !alias.scope !115, !noalias !122
  %index.next1344 = add i64 %index1343, 4
  %vec.ind.next1348 = add <4 x i64> %vec.ind1347, <i64 4, i64 4, i64 4, i64 4>
  %389 = icmp eq i64 %index.next1344, %371
  br i1 %389, label %polly.loop_exit964, label %vector.body1337, !llvm.loop !123

polly.loop_exit964:                               ; preds = %vector.body1337, %polly.loop_header962
  %polly.indvar_next960 = add nuw nsw i64 %polly.indvar959, 1
  %exitcond1239.not = icmp eq i64 %polly.indvar959, %369
  br i1 %exitcond1239.not, label %polly.loop_exit958, label %polly.loop_header956

polly.loop_header962:                             ; preds = %polly.loop_header956, %polly.loop_header962
  %polly.indvar965 = phi i64 [ %polly.indvar_next966, %polly.loop_header962 ], [ 0, %polly.loop_header956 ]
  %390 = add nuw nsw i64 %polly.indvar965, %372
  %391 = trunc i64 %390 to i32
  %392 = mul i32 %391, %375
  %393 = add i32 %392, 1
  %394 = urem i32 %393, 1200
  %p_conv.i = sitofp i32 %394 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %395 = shl i64 %390, 3
  %396 = add nuw nsw i64 %395, %376
  %scevgep969 = getelementptr i8, i8* %call1, i64 %396
  %scevgep969970 = bitcast i8* %scevgep969 to double*
  store double %p_div.i, double* %scevgep969970, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next966 = add nuw nsw i64 %polly.indvar965, 1
  %exitcond1235.not = icmp eq i64 %polly.indvar965, %373
  br i1 %exitcond1235.not, label %polly.loop_exit964, label %polly.loop_header962, !llvm.loop !124
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
!26 = !{!"llvm.loop.tile.size", i32 4}
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
!51 = !{!"llvm.loop.tile.size", i32 50}
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
