; ModuleID = 'syr2k_recreations//mmp_syr2k_S_26.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_26.c"
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
  %call = tail call i8* @polybench_alloc_data(i64 6400, i32 8) #8
  %call839 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #8
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #8
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1691 = bitcast i8* %call1 to double*
  %polly.access.call1700 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2701 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1700, %call2
  %polly.access.call2720 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2720, %call1
  %2 = or i1 %0, %1
  %polly.access.call740 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call740, %call2
  %4 = icmp ule i8* %polly.access.call2720, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call740, %call1
  %8 = icmp ule i8* %polly.access.call1700, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header825, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1074 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1073 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1072 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1071 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1071, %scevgep1074
  %bound1 = icmp ult i8* %scevgep1073, %scevgep1072
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
  %16 = urem <4 x i32> %15, <i32 80, i32 80, i32 80, i32 80>
  %17 = sitofp <4 x i32> %16 to <4 x double>
  %18 = fmul fast <4 x double> %17, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %19 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %index
  %20 = bitcast double* %19 to <4 x double>*
  store <4 x double> %18, <4 x double>* %20, align 8, !tbaa !2, !alias.scope !6, !noalias !9
  %21 = add <4 x i32> %14, <i32 2, i32 2, i32 2, i32 2>
  %22 = urem <4 x i32> %21, <i32 60, i32 60, i32 60, i32 60>
  %23 = sitofp <4 x i32> %22 to <4 x double>
  %24 = fmul fast <4 x double> %23, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %25 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv16.i, i64 %index
  %26 = bitcast double* %25 to <4 x double>*
  store <4 x double> %24, <4 x double>* %26, align 8, !tbaa !2, !alias.scope !9
  %index.next = add i64 %index, 4
  %vec.ind.next = add <4 x i64> %vec.ind, <i64 4, i64 4, i64 4, i64 4>
  %27 = icmp eq i64 %index.next, 60
  br i1 %27, label %for.inc17.i, label %vector.body, !llvm.loop !11

for.body3.i:                                      ; preds = %for.cond1.preheader.i, %for.body3.i
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %for.body3.i ], [ 0, %for.cond1.preheader.i ]
  %28 = mul nuw nsw i64 %indvars.iv10.i, %indvars.iv16.i
  %29 = trunc i64 %28 to i32
  %30 = add i32 %29, 1
  %rem.i = urem i32 %30, 80
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fmul fast double %conv.i, 1.250000e-02
  %arrayidx6.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %indvars.iv10.i
  store double %div.i, double* %arrayidx6.i, align 8, !tbaa !2
  %31 = add i32 %29, 2
  %rem9.i = urem i32 %31, 60
  %conv10.i = sitofp i32 %rem9.i to double
  %div12.i = fmul fast double %conv10.i, 0x3F91111111111111
  %arrayidx16.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv16.i, i64 %indvars.iv10.i
  store double %div12.i, double* %arrayidx16.i, align 8, !tbaa !2
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond15.not.i = icmp eq i64 %indvars.iv.next11.i, 60
  br i1 %exitcond15.not.i, label %for.inc17.i, label %for.body3.i, !llvm.loop !14

for.inc17.i:                                      ; preds = %vector.body, %for.body3.i
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next17.i, 80
  br i1 %exitcond18.not.i, label %vector.ph1078, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1078:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1085 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1086 = shufflevector <4 x i64> %broadcast.splatinsert1085, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1077

vector.body1077:                                  ; preds = %vector.body1077, %vector.ph1078
  %index1079 = phi i64 [ 0, %vector.ph1078 ], [ %index.next1080, %vector.body1077 ]
  %vec.ind1083 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1078 ], [ %vec.ind.next1084, %vector.body1077 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1083, %broadcast.splat1086
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv7.i, i64 %index1079
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1080 = add i64 %index1079, 4
  %vec.ind.next1084 = add <4 x i64> %vec.ind1083, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1080, 80
  br i1 %40, label %for.inc41.i, label %vector.body1077, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1077
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1078, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit886.1.2
  tail call void (...) @polybench_timer_start() #8
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start490, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1504, label %vector.ph1360

vector.ph1360:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1359

vector.body1359:                                  ; preds = %vector.body1359, %vector.ph1360
  %index1361 = phi i64 [ 0, %vector.ph1360 ], [ %index.next1362, %vector.body1359 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i, i64 %index1361
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1362 = add i64 %index1361, 4
  %46 = icmp eq i64 %index.next1362, %n.vec
  br i1 %46, label %middle.block1357, label %vector.body1359, !llvm.loop !18

middle.block1357:                                 ; preds = %vector.body1359
  %cmp.n1364 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1364, label %for.inc6.i, label %for.body3.i46.preheader1504

for.body3.i46.preheader1504:                      ; preds = %for.body3.i46.preheader, %middle.block1357
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1357 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1504, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1504 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1357, %for.cond1.preheader.i45
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next22.i, 80
  br i1 %exitcond23.not.i, label %for.cond12.preheader.i, label %for.cond1.preheader.i45, !llvm.loop !20

for.cond12.preheader.i:                           ; preds = %for.inc6.i, %for.inc49.i
  %indvars.iv15.i = phi i64 [ %indvars.iv.next16.i, %for.inc49.i ], [ 0, %for.inc6.i ]
  %indvars.iv13.i = phi i64 [ %indvars.iv.next14.i, %for.inc49.i ], [ 1, %for.inc6.i ]
  br label %for.cond15.preheader.i

for.cond15.preheader.i:                           ; preds = %for.inc46.i, %for.cond12.preheader.i
  %indvars.iv10.i47 = phi i64 [ 0, %for.cond12.preheader.i ], [ %indvars.iv.next11.i51, %for.inc46.i ]
  %arrayidx26.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv15.i, i64 %indvars.iv10.i47
  %arrayidx36.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv15.i, i64 %indvars.iv10.i47
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i, %for.cond15.preheader.i
  %indvars.iv.i48 = phi i64 [ 0, %for.cond15.preheader.i ], [ %indvars.iv.next.i49, %for.body17.i ]
  %arrayidx21.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2, !llvm.access !21
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2, !llvm.access !22
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2, !llvm.access !22
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 60
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !33

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 80
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !45

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit618.1
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  tail call void (...) @polybench_timer_start() #8
  br i1 %41, label %polly.start291, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1399 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1399, label %for.body3.i60.preheader1501, label %vector.ph1400

vector.ph1400:                                    ; preds = %for.body3.i60.preheader
  %n.vec1402 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1398

vector.body1398:                                  ; preds = %vector.body1398, %vector.ph1400
  %index1403 = phi i64 [ 0, %vector.ph1400 ], [ %index.next1404, %vector.body1398 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i52, i64 %index1403
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1407 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1407, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1404 = add i64 %index1403, 4
  %57 = icmp eq i64 %index.next1404, %n.vec1402
  br i1 %57, label %middle.block1396, label %vector.body1398, !llvm.loop !57

middle.block1396:                                 ; preds = %vector.body1398
  %cmp.n1406 = icmp eq i64 %indvars.iv21.i52, %n.vec1402
  br i1 %cmp.n1406, label %for.inc6.i63, label %for.body3.i60.preheader1501

for.body3.i60.preheader1501:                      ; preds = %for.body3.i60.preheader, %middle.block1396
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1402, %middle.block1396 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1501, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1501 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1396, %for.cond1.preheader.i54
  %indvars.iv.next22.i61 = add nuw nsw i64 %indvars.iv21.i52, 1
  %exitcond23.not.i62 = icmp eq i64 %indvars.iv.next22.i61, 80
  br i1 %exitcond23.not.i62, label %for.cond12.preheader.i66, label %for.cond1.preheader.i54, !llvm.loop !20

for.cond12.preheader.i66:                         ; preds = %for.inc6.i63, %for.inc49.i89
  %indvars.iv15.i64 = phi i64 [ %indvars.iv.next16.i86, %for.inc49.i89 ], [ 0, %for.inc6.i63 ]
  %indvars.iv13.i65 = phi i64 [ %indvars.iv.next14.i87, %for.inc49.i89 ], [ 1, %for.inc6.i63 ]
  br label %for.cond15.preheader.i70

for.cond15.preheader.i70:                         ; preds = %for.inc46.i85, %for.cond12.preheader.i66
  %indvars.iv10.i67 = phi i64 [ 0, %for.cond12.preheader.i66 ], [ %indvars.iv.next11.i83, %for.inc46.i85 ]
  %arrayidx26.i68 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv15.i64, i64 %indvars.iv10.i67
  %arrayidx36.i69 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv15.i64, i64 %indvars.iv10.i67
  br label %for.body17.i82

for.body17.i82:                                   ; preds = %for.body17.i82, %for.cond15.preheader.i70
  %indvars.iv.i71 = phi i64 [ 0, %for.cond15.preheader.i70 ], [ %indvars.iv.next.i80, %for.body17.i82 ]
  %arrayidx21.i72 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2, !llvm.access !21
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2, !llvm.access !22
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2, !llvm.access !22
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 60
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !33

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 80
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !45

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit419.1
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  tail call void (...) @polybench_timer_start() #8
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1449 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1449, label %for.body3.i99.preheader1498, label %vector.ph1450

vector.ph1450:                                    ; preds = %for.body3.i99.preheader
  %n.vec1452 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1448

vector.body1448:                                  ; preds = %vector.body1448, %vector.ph1450
  %index1453 = phi i64 [ 0, %vector.ph1450 ], [ %index.next1454, %vector.body1448 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i91, i64 %index1453
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1457 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1457, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1454 = add i64 %index1453, 4
  %68 = icmp eq i64 %index.next1454, %n.vec1452
  br i1 %68, label %middle.block1446, label %vector.body1448, !llvm.loop !59

middle.block1446:                                 ; preds = %vector.body1448
  %cmp.n1456 = icmp eq i64 %indvars.iv21.i91, %n.vec1452
  br i1 %cmp.n1456, label %for.inc6.i102, label %for.body3.i99.preheader1498

for.body3.i99.preheader1498:                      ; preds = %for.body3.i99.preheader, %middle.block1446
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1452, %middle.block1446 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1498, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1498 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1446, %for.cond1.preheader.i93
  %indvars.iv.next22.i100 = add nuw nsw i64 %indvars.iv21.i91, 1
  %exitcond23.not.i101 = icmp eq i64 %indvars.iv.next22.i100, 80
  br i1 %exitcond23.not.i101, label %for.cond12.preheader.i105, label %for.cond1.preheader.i93, !llvm.loop !20

for.cond12.preheader.i105:                        ; preds = %for.inc6.i102, %for.inc49.i128
  %indvars.iv15.i103 = phi i64 [ %indvars.iv.next16.i125, %for.inc49.i128 ], [ 0, %for.inc6.i102 ]
  %indvars.iv13.i104 = phi i64 [ %indvars.iv.next14.i126, %for.inc49.i128 ], [ 1, %for.inc6.i102 ]
  br label %for.cond15.preheader.i109

for.cond15.preheader.i109:                        ; preds = %for.inc46.i124, %for.cond12.preheader.i105
  %indvars.iv10.i106 = phi i64 [ 0, %for.cond12.preheader.i105 ], [ %indvars.iv.next11.i122, %for.inc46.i124 ]
  %arrayidx26.i107 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv15.i103, i64 %indvars.iv10.i106
  %arrayidx36.i108 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv15.i103, i64 %indvars.iv10.i106
  br label %for.body17.i121

for.body17.i121:                                  ; preds = %for.body17.i121, %for.cond15.preheader.i109
  %indvars.iv.i110 = phi i64 [ 0, %for.cond15.preheader.i109 ], [ %indvars.iv.next.i119, %for.body17.i121 ]
  %arrayidx21.i111 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2, !llvm.access !21
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2, !llvm.access !22
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2, !llvm.access !22
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 60
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !33

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 80
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !45

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit224.1
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !61
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #9
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %79 = mul nuw nsw i64 %indvars.iv4.i, 80
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i41 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i43, %if.end.i ]
  %80 = add nuw nsw i64 %indvars.iv.i41, %79
  %81 = trunc i64 %80 to i32
  %rem.i42 = urem i32 %81, 20
  %cmp5.i = icmp eq i32 %rem.i42, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #9
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !63

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !64

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #9
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #8
  tail call void @free(i8* %call1) #8
  tail call void @free(i8* %call2) #8
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #8
  %malloccall136 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #8
  br label %polly.loop_header

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1461 = phi i64 [ %indvar.next1462, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1461, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1463 = icmp ult i64 %88, 4
  br i1 %min.iters.check1463, label %polly.loop_header192.preheader, label %vector.ph1464

vector.ph1464:                                    ; preds = %polly.loop_header
  %n.vec1466 = and i64 %88, -4
  br label %vector.body1460

vector.body1460:                                  ; preds = %vector.body1460, %vector.ph1464
  %index1467 = phi i64 [ 0, %vector.ph1464 ], [ %index.next1468, %vector.body1460 ]
  %90 = shl nuw nsw i64 %index1467, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1471 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1471, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1468 = add i64 %index1467, 4
  %95 = icmp eq i64 %index.next1468, %n.vec1466
  br i1 %95, label %middle.block1458, label %vector.body1460, !llvm.loop !72

middle.block1458:                                 ; preds = %vector.body1460
  %cmp.n1470 = icmp eq i64 %88, %n.vec1466
  br i1 %cmp.n1470, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1458
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1466, %middle.block1458 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1458
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond936.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1462 = add i64 %indvar1461, 1
  br i1 %exitcond936.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond935.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond935.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 80
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond934.not = icmp eq i64 %polly.indvar_next204, 60
  br i1 %exitcond934.not, label %polly.loop_header222, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 60
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2701, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !69, !noalias !75
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond933.not = icmp eq i64 %polly.indvar_next210, 80
  br i1 %exitcond933.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header222:                             ; preds = %polly.loop_exit208, %polly.loop_exit230
  %indvars.iv929 = phi i64 [ %indvars.iv.next930, %polly.loop_exit230 ], [ 80, %polly.loop_exit208 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit230 ], [ 0, %polly.loop_exit208 ]
  %97 = shl nuw nsw i64 %polly.indvar225, 2
  %98 = mul nsw i64 %polly.indvar225, -4
  %99 = add nuw nsw i64 %97, 4
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit259
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next930 = add nsw i64 %indvars.iv929, -4
  %exitcond932.not = icmp eq i64 %polly.indvar_next226, 20
  br i1 %exitcond932.not, label %polly.loop_header222.1, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit259, %polly.loop_header222
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit259 ], [ 0, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit259 ], [ %97, %polly.loop_header222 ]
  %smin1475 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 3)
  %smin926 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 3)
  %100 = add nsw i64 %polly.indvar231, %98
  %.not = icmp ult i64 %polly.indvar231, %99
  %polly.access.mul.call1251 = mul nuw nsw i64 %polly.indvar231, 60
  br i1 %.not, label %polly.loop_header234.us, label %polly.loop_header234

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.merge.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.merge.us ], [ 0, %polly.loop_header228 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 80
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header234.us
  %polly.indvar243.us = phi i64 [ 0, %polly.loop_header234.us ], [ %polly.indvar_next244.us, %polly.loop_header240.us ]
  %101 = add nuw nsw i64 %polly.indvar243.us, %97
  %polly.access.mul.call1247.us = mul nuw nsw i64 %101, 60
  %polly.access.add.call1248.us = add nuw nsw i64 %polly.access.mul.call1247.us, %polly.indvar237.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond924.not = icmp eq i64 %polly.indvar243.us, %smin926
  br i1 %exitcond924.not, label %polly.merge.us, label %polly.loop_header240.us

polly.merge.us:                                   ; preds = %polly.loop_header240.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond925.not = icmp eq i64 %polly.indvar_next238.us, 50
  br i1 %exitcond925.not, label %polly.loop_exit236, label %polly.loop_header234.us

polly.loop_exit236:                               ; preds = %polly.then, %polly.merge.us
  %102 = mul nuw nsw i64 %polly.indvar231, 640
  %scevgep285 = getelementptr i8, i8* %call, i64 %102
  br label %polly.loop_header257

polly.loop_exit259:                               ; preds = %polly.loop_exit265
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond931.not = icmp eq i64 %indvars.iv.next, %indvars.iv929
  br i1 %exitcond931.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header228, %polly.then
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.then ], [ 0, %polly.loop_header228 ]
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar237, 80
  br label %polly.loop_header240

polly.loop_header240:                             ; preds = %polly.loop_header240, %polly.loop_header234
  %polly.indvar243 = phi i64 [ 0, %polly.loop_header234 ], [ %polly.indvar_next244, %polly.loop_header240 ]
  %103 = add nuw nsw i64 %polly.indvar243, %97
  %polly.access.mul.call1247 = mul nuw nsw i64 %103, 60
  %polly.access.add.call1248 = add nuw nsw i64 %polly.access.mul.call1247, %polly.indvar237
  %polly.access.call1249 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1248
  %polly.access.call1249.load = load double, double* %polly.access.call1249, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1 = add nuw nsw i64 %polly.indvar243, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1
  store double %polly.access.call1249.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.indvar_next244 = add nuw nsw i64 %polly.indvar243, 1
  %exitcond.not = icmp eq i64 %polly.indvar243, %smin926
  br i1 %exitcond.not, label %polly.then, label %polly.loop_header240

polly.then:                                       ; preds = %polly.loop_header240
  %polly.access.add.call1252 = add nuw nsw i64 %polly.indvar237, %polly.access.mul.call1251
  %polly.access.call1253 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1252
  %polly.access.call1253.load = load double, double* %polly.access.call1253, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1255 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1, %100
  %polly.access.Packed_MemRef_call1256 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255
  store double %polly.access.call1253.load, double* %polly.access.Packed_MemRef_call1256, align 8
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond922.not = icmp eq i64 %polly.indvar_next238, 50
  br i1 %exitcond922.not, label %polly.loop_exit236, label %polly.loop_header234

polly.loop_header257:                             ; preds = %polly.loop_exit265, %polly.loop_exit236
  %polly.indvar260 = phi i64 [ 0, %polly.loop_exit236 ], [ %polly.indvar_next261, %polly.loop_exit265 ]
  %polly.access.mul.Packed_MemRef_call1269 = mul nuw nsw i64 %polly.indvar260, 80
  %polly.access.add.Packed_MemRef_call1282 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1269, %100
  %polly.access.Packed_MemRef_call1283 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282
  %_p_scalar_284 = load double, double* %polly.access.Packed_MemRef_call1283, align 8
  %polly.access.add.Packed_MemRef_call2274 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1269, %polly.indvar231
  %polly.access.Packed_MemRef_call2275 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2274
  %_p_scalar_276 = load double, double* %polly.access.Packed_MemRef_call2275, align 8
  %broadcast.splatinsert1484 = insertelement <4 x i64> poison, i64 %smin1475, i32 0
  %broadcast.splat1485 = shufflevector <4 x i64> %broadcast.splatinsert1484, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1490 = insertelement <4 x double> poison, double %_p_scalar_276, i32 0
  %broadcast.splat1491 = shufflevector <4 x double> %broadcast.splatinsert1490, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1493 = insertelement <4 x double> poison, double %_p_scalar_284, i32 0
  %broadcast.splat1494 = shufflevector <4 x double> %broadcast.splatinsert1493, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1474

vector.body1474:                                  ; preds = %vector.body1474, %polly.loop_header257
  %index1480 = phi i64 [ 0, %polly.loop_header257 ], [ %index.next1481, %vector.body1474 ]
  %broadcast.splatinsert1486 = insertelement <4 x i64> poison, i64 %index1480, i32 0
  %broadcast.splat1487 = shufflevector <4 x i64> %broadcast.splatinsert1486, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1488 = or <4 x i64> %broadcast.splat1487, <i64 0, i64 1, i64 2, i64 3>
  %104 = icmp ule <4 x i64> %induction1488, %broadcast.splat1485
  %105 = add nuw nsw i64 %index1480, %97
  %106 = add nuw nsw i64 %index1480, %polly.access.mul.Packed_MemRef_call1269
  %107 = getelementptr double, double* %Packed_MemRef_call1, i64 %106
  %108 = bitcast double* %107 to <4 x double>*
  %wide.masked.load1489 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %108, i32 8, <4 x i1> %104, <4 x double> poison)
  %109 = fmul fast <4 x double> %broadcast.splat1491, %wide.masked.load1489
  %110 = add nuw nsw i64 %105, %polly.access.mul.Packed_MemRef_call1269
  %111 = getelementptr double, double* %Packed_MemRef_call2, i64 %110
  %112 = bitcast double* %111 to <4 x double>*
  %wide.masked.load1492 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %112, i32 8, <4 x i1> %104, <4 x double> poison)
  %113 = fmul fast <4 x double> %broadcast.splat1494, %wide.masked.load1492
  %114 = shl i64 %105, 3
  %115 = getelementptr i8, i8* %scevgep285, i64 %114
  %116 = bitcast i8* %115 to <4 x double>*
  %wide.masked.load1495 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %116, i32 8, <4 x i1> %104, <4 x double> poison), !alias.scope !65, !noalias !67
  %117 = fadd fast <4 x double> %113, %109
  %118 = fmul fast <4 x double> %117, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %119 = fadd fast <4 x double> %118, %wide.masked.load1495
  %120 = bitcast i8* %115 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %119, <4 x double>* %120, i32 8, <4 x i1> %104), !alias.scope !65, !noalias !67
  %index.next1481 = add i64 %index1480, 4
  %121 = icmp eq i64 %index1480, 0
  br i1 %121, label %polly.loop_exit265, label %vector.body1474, !llvm.loop !77

polly.loop_exit265:                               ; preds = %vector.body1474
  %polly.indvar_next261 = add nuw nsw i64 %polly.indvar260, 1
  %exitcond928.not = icmp eq i64 %polly.indvar_next261, 50
  br i1 %exitcond928.not, label %polly.loop_exit259, label %polly.loop_header257

polly.start291:                                   ; preds = %kernel_syr2k.exit
  %malloccall293 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #8
  %malloccall295 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #8
  br label %polly.loop_header379

polly.loop_header379:                             ; preds = %polly.loop_exit387, %polly.start291
  %indvar1411 = phi i64 [ %indvar.next1412, %polly.loop_exit387 ], [ 0, %polly.start291 ]
  %polly.indvar382 = phi i64 [ %polly.indvar_next383, %polly.loop_exit387 ], [ 1, %polly.start291 ]
  %122 = add i64 %indvar1411, 1
  %123 = mul nuw nsw i64 %polly.indvar382, 640
  %scevgep391 = getelementptr i8, i8* %call, i64 %123
  %min.iters.check1413 = icmp ult i64 %122, 4
  br i1 %min.iters.check1413, label %polly.loop_header385.preheader, label %vector.ph1414

vector.ph1414:                                    ; preds = %polly.loop_header379
  %n.vec1416 = and i64 %122, -4
  br label %vector.body1410

vector.body1410:                                  ; preds = %vector.body1410, %vector.ph1414
  %index1417 = phi i64 [ 0, %vector.ph1414 ], [ %index.next1418, %vector.body1410 ]
  %124 = shl nuw nsw i64 %index1417, 3
  %125 = getelementptr i8, i8* %scevgep391, i64 %124
  %126 = bitcast i8* %125 to <4 x double>*
  %wide.load1421 = load <4 x double>, <4 x double>* %126, align 8, !alias.scope !78, !noalias !80
  %127 = fmul fast <4 x double> %wide.load1421, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %128 = bitcast i8* %125 to <4 x double>*
  store <4 x double> %127, <4 x double>* %128, align 8, !alias.scope !78, !noalias !80
  %index.next1418 = add i64 %index1417, 4
  %129 = icmp eq i64 %index.next1418, %n.vec1416
  br i1 %129, label %middle.block1408, label %vector.body1410, !llvm.loop !85

middle.block1408:                                 ; preds = %vector.body1410
  %cmp.n1420 = icmp eq i64 %122, %n.vec1416
  br i1 %cmp.n1420, label %polly.loop_exit387, label %polly.loop_header385.preheader

polly.loop_header385.preheader:                   ; preds = %polly.loop_header379, %middle.block1408
  %polly.indvar388.ph = phi i64 [ 0, %polly.loop_header379 ], [ %n.vec1416, %middle.block1408 ]
  br label %polly.loop_header385

polly.loop_exit387:                               ; preds = %polly.loop_header385, %middle.block1408
  %polly.indvar_next383 = add nuw nsw i64 %polly.indvar382, 1
  %exitcond955.not = icmp eq i64 %polly.indvar_next383, 80
  %indvar.next1412 = add i64 %indvar1411, 1
  br i1 %exitcond955.not, label %polly.loop_header395.preheader, label %polly.loop_header379

polly.loop_header395.preheader:                   ; preds = %polly.loop_exit387
  %Packed_MemRef_call1294 = bitcast i8* %malloccall293 to double*
  %Packed_MemRef_call2296 = bitcast i8* %malloccall295 to double*
  br label %polly.loop_header395

polly.loop_header385:                             ; preds = %polly.loop_header385.preheader, %polly.loop_header385
  %polly.indvar388 = phi i64 [ %polly.indvar_next389, %polly.loop_header385 ], [ %polly.indvar388.ph, %polly.loop_header385.preheader ]
  %130 = shl nuw nsw i64 %polly.indvar388, 3
  %scevgep392 = getelementptr i8, i8* %scevgep391, i64 %130
  %scevgep392393 = bitcast i8* %scevgep392 to double*
  %_p_scalar_394 = load double, double* %scevgep392393, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_394, 1.200000e+00
  store double %p_mul.i57, double* %scevgep392393, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next389 = add nuw nsw i64 %polly.indvar388, 1
  %exitcond954.not = icmp eq i64 %polly.indvar_next389, %polly.indvar382
  br i1 %exitcond954.not, label %polly.loop_exit387, label %polly.loop_header385, !llvm.loop !86

polly.loop_header395:                             ; preds = %polly.loop_header395.preheader, %polly.loop_exit403
  %polly.indvar398 = phi i64 [ %polly.indvar_next399, %polly.loop_exit403 ], [ 0, %polly.loop_header395.preheader ]
  %polly.access.mul.Packed_MemRef_call2296 = mul nuw nsw i64 %polly.indvar398, 80
  br label %polly.loop_header401

polly.loop_exit403:                               ; preds = %polly.loop_header401
  %polly.indvar_next399 = add nuw nsw i64 %polly.indvar398, 1
  %exitcond953.not = icmp eq i64 %polly.indvar_next399, 60
  br i1 %exitcond953.not, label %polly.loop_header417, label %polly.loop_header395

polly.loop_header401:                             ; preds = %polly.loop_header401, %polly.loop_header395
  %polly.indvar404 = phi i64 [ 0, %polly.loop_header395 ], [ %polly.indvar_next405, %polly.loop_header401 ]
  %polly.access.mul.call2408 = mul nuw nsw i64 %polly.indvar404, 60
  %polly.access.add.call2409 = add nuw nsw i64 %polly.access.mul.call2408, %polly.indvar398
  %polly.access.call2410 = getelementptr double, double* %polly.access.cast.call2701, i64 %polly.access.add.call2409
  %polly.access.call2410.load = load double, double* %polly.access.call2410, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call2296 = add nuw nsw i64 %polly.indvar404, %polly.access.mul.Packed_MemRef_call2296
  %polly.access.Packed_MemRef_call2296 = getelementptr double, double* %Packed_MemRef_call2296, i64 %polly.access.add.Packed_MemRef_call2296
  store double %polly.access.call2410.load, double* %polly.access.Packed_MemRef_call2296, align 8
  %polly.indvar_next405 = add nuw nsw i64 %polly.indvar404, 1
  %exitcond952.not = icmp eq i64 %polly.indvar_next405, 80
  br i1 %exitcond952.not, label %polly.loop_exit403, label %polly.loop_header401

polly.loop_header417:                             ; preds = %polly.loop_exit403, %polly.loop_exit425
  %indvars.iv948 = phi i64 [ %indvars.iv.next949, %polly.loop_exit425 ], [ 80, %polly.loop_exit403 ]
  %polly.indvar420 = phi i64 [ %polly.indvar_next421, %polly.loop_exit425 ], [ 0, %polly.loop_exit403 ]
  %131 = shl nuw nsw i64 %polly.indvar420, 2
  %132 = mul nsw i64 %polly.indvar420, -4
  %133 = add nuw nsw i64 %131, 4
  br label %polly.loop_header423

polly.loop_exit425:                               ; preds = %polly.loop_exit458
  %polly.indvar_next421 = add nuw nsw i64 %polly.indvar420, 1
  %indvars.iv.next949 = add nsw i64 %indvars.iv948, -4
  %exitcond951.not = icmp eq i64 %polly.indvar_next421, 20
  br i1 %exitcond951.not, label %polly.loop_header417.1, label %polly.loop_header417

polly.loop_header423:                             ; preds = %polly.loop_exit458, %polly.loop_header417
  %indvars.iv937 = phi i64 [ %indvars.iv.next938, %polly.loop_exit458 ], [ 0, %polly.loop_header417 ]
  %polly.indvar426 = phi i64 [ %polly.indvar_next427, %polly.loop_exit458 ], [ %131, %polly.loop_header417 ]
  %smin1425 = call i64 @llvm.smin.i64(i64 %indvars.iv937, i64 3)
  %smin945 = call i64 @llvm.smin.i64(i64 %indvars.iv937, i64 3)
  %134 = add nsw i64 %polly.indvar426, %132
  %.not893 = icmp ult i64 %polly.indvar426, %133
  %polly.access.mul.call1450 = mul nuw nsw i64 %polly.indvar426, 60
  br i1 %.not893, label %polly.loop_header429.us, label %polly.loop_header429

polly.loop_header429.us:                          ; preds = %polly.loop_header423, %polly.merge446.us
  %polly.indvar432.us = phi i64 [ %polly.indvar_next433.us, %polly.merge446.us ], [ 0, %polly.loop_header423 ]
  %polly.access.mul.Packed_MemRef_call1294.us = mul nuw nsw i64 %polly.indvar432.us, 80
  br label %polly.loop_header435.us

polly.loop_header435.us:                          ; preds = %polly.loop_header435.us, %polly.loop_header429.us
  %polly.indvar438.us = phi i64 [ 0, %polly.loop_header429.us ], [ %polly.indvar_next439.us, %polly.loop_header435.us ]
  %135 = add nuw nsw i64 %polly.indvar438.us, %131
  %polly.access.mul.call1442.us = mul nuw nsw i64 %135, 60
  %polly.access.add.call1443.us = add nuw nsw i64 %polly.access.mul.call1442.us, %polly.indvar432.us
  %polly.access.call1444.us = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1443.us
  %polly.access.call1444.load.us = load double, double* %polly.access.call1444.us, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1294.us = add nuw nsw i64 %polly.indvar438.us, %polly.access.mul.Packed_MemRef_call1294.us
  %polly.access.Packed_MemRef_call1294.us = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294.us
  store double %polly.access.call1444.load.us, double* %polly.access.Packed_MemRef_call1294.us, align 8
  %polly.indvar_next439.us = add nuw nsw i64 %polly.indvar438.us, 1
  %exitcond943.not = icmp eq i64 %polly.indvar438.us, %smin945
  br i1 %exitcond943.not, label %polly.merge446.us, label %polly.loop_header435.us

polly.merge446.us:                                ; preds = %polly.loop_header435.us
  %polly.indvar_next433.us = add nuw nsw i64 %polly.indvar432.us, 1
  %exitcond944.not = icmp eq i64 %polly.indvar_next433.us, 50
  br i1 %exitcond944.not, label %polly.loop_exit431, label %polly.loop_header429.us

polly.loop_exit431:                               ; preds = %polly.then447, %polly.merge446.us
  %136 = mul nuw nsw i64 %polly.indvar426, 640
  %scevgep484 = getelementptr i8, i8* %call, i64 %136
  br label %polly.loop_header456

polly.loop_exit458:                               ; preds = %polly.loop_exit464
  %polly.indvar_next427 = add nuw nsw i64 %polly.indvar426, 1
  %indvars.iv.next938 = add nuw nsw i64 %indvars.iv937, 1
  %exitcond950.not = icmp eq i64 %indvars.iv.next938, %indvars.iv948
  br i1 %exitcond950.not, label %polly.loop_exit425, label %polly.loop_header423

polly.loop_header429:                             ; preds = %polly.loop_header423, %polly.then447
  %polly.indvar432 = phi i64 [ %polly.indvar_next433, %polly.then447 ], [ 0, %polly.loop_header423 ]
  %polly.access.mul.Packed_MemRef_call1294 = mul nuw nsw i64 %polly.indvar432, 80
  br label %polly.loop_header435

polly.loop_header435:                             ; preds = %polly.loop_header435, %polly.loop_header429
  %polly.indvar438 = phi i64 [ 0, %polly.loop_header429 ], [ %polly.indvar_next439, %polly.loop_header435 ]
  %137 = add nuw nsw i64 %polly.indvar438, %131
  %polly.access.mul.call1442 = mul nuw nsw i64 %137, 60
  %polly.access.add.call1443 = add nuw nsw i64 %polly.access.mul.call1442, %polly.indvar432
  %polly.access.call1444 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1443
  %polly.access.call1444.load = load double, double* %polly.access.call1444, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1294 = add nuw nsw i64 %polly.indvar438, %polly.access.mul.Packed_MemRef_call1294
  %polly.access.Packed_MemRef_call1294 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294
  store double %polly.access.call1444.load, double* %polly.access.Packed_MemRef_call1294, align 8
  %polly.indvar_next439 = add nuw nsw i64 %polly.indvar438, 1
  %exitcond940.not = icmp eq i64 %polly.indvar438, %smin945
  br i1 %exitcond940.not, label %polly.then447, label %polly.loop_header435

polly.then447:                                    ; preds = %polly.loop_header435
  %polly.access.add.call1451 = add nuw nsw i64 %polly.indvar432, %polly.access.mul.call1450
  %polly.access.call1452 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1451
  %polly.access.call1452.load = load double, double* %polly.access.call1452, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1294454 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1294, %134
  %polly.access.Packed_MemRef_call1294455 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294454
  store double %polly.access.call1452.load, double* %polly.access.Packed_MemRef_call1294455, align 8
  %polly.indvar_next433 = add nuw nsw i64 %polly.indvar432, 1
  %exitcond941.not = icmp eq i64 %polly.indvar_next433, 50
  br i1 %exitcond941.not, label %polly.loop_exit431, label %polly.loop_header429

polly.loop_header456:                             ; preds = %polly.loop_exit464, %polly.loop_exit431
  %polly.indvar459 = phi i64 [ 0, %polly.loop_exit431 ], [ %polly.indvar_next460, %polly.loop_exit464 ]
  %polly.access.mul.Packed_MemRef_call1294468 = mul nuw nsw i64 %polly.indvar459, 80
  %polly.access.add.Packed_MemRef_call1294481 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1294468, %134
  %polly.access.Packed_MemRef_call1294482 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294481
  %_p_scalar_483 = load double, double* %polly.access.Packed_MemRef_call1294482, align 8
  %polly.access.add.Packed_MemRef_call2296473 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1294468, %polly.indvar426
  %polly.access.Packed_MemRef_call2296474 = getelementptr double, double* %Packed_MemRef_call2296, i64 %polly.access.add.Packed_MemRef_call2296473
  %_p_scalar_475 = load double, double* %polly.access.Packed_MemRef_call2296474, align 8
  %broadcast.splatinsert1434 = insertelement <4 x i64> poison, i64 %smin1425, i32 0
  %broadcast.splat1435 = shufflevector <4 x i64> %broadcast.splatinsert1434, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1440 = insertelement <4 x double> poison, double %_p_scalar_475, i32 0
  %broadcast.splat1441 = shufflevector <4 x double> %broadcast.splatinsert1440, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1443 = insertelement <4 x double> poison, double %_p_scalar_483, i32 0
  %broadcast.splat1444 = shufflevector <4 x double> %broadcast.splatinsert1443, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1424

vector.body1424:                                  ; preds = %vector.body1424, %polly.loop_header456
  %index1430 = phi i64 [ 0, %polly.loop_header456 ], [ %index.next1431, %vector.body1424 ]
  %broadcast.splatinsert1436 = insertelement <4 x i64> poison, i64 %index1430, i32 0
  %broadcast.splat1437 = shufflevector <4 x i64> %broadcast.splatinsert1436, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1438 = or <4 x i64> %broadcast.splat1437, <i64 0, i64 1, i64 2, i64 3>
  %138 = icmp ule <4 x i64> %induction1438, %broadcast.splat1435
  %139 = add nuw nsw i64 %index1430, %131
  %140 = add nuw nsw i64 %index1430, %polly.access.mul.Packed_MemRef_call1294468
  %141 = getelementptr double, double* %Packed_MemRef_call1294, i64 %140
  %142 = bitcast double* %141 to <4 x double>*
  %wide.masked.load1439 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %142, i32 8, <4 x i1> %138, <4 x double> poison)
  %143 = fmul fast <4 x double> %broadcast.splat1441, %wide.masked.load1439
  %144 = add nuw nsw i64 %139, %polly.access.mul.Packed_MemRef_call1294468
  %145 = getelementptr double, double* %Packed_MemRef_call2296, i64 %144
  %146 = bitcast double* %145 to <4 x double>*
  %wide.masked.load1442 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %146, i32 8, <4 x i1> %138, <4 x double> poison)
  %147 = fmul fast <4 x double> %broadcast.splat1444, %wide.masked.load1442
  %148 = shl i64 %139, 3
  %149 = getelementptr i8, i8* %scevgep484, i64 %148
  %150 = bitcast i8* %149 to <4 x double>*
  %wide.masked.load1445 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %150, i32 8, <4 x i1> %138, <4 x double> poison), !alias.scope !78, !noalias !80
  %151 = fadd fast <4 x double> %147, %143
  %152 = fmul fast <4 x double> %151, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %153 = fadd fast <4 x double> %152, %wide.masked.load1445
  %154 = bitcast i8* %149 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %153, <4 x double>* %154, i32 8, <4 x i1> %138), !alias.scope !78, !noalias !80
  %index.next1431 = add i64 %index1430, 4
  %155 = icmp eq i64 %index1430, 0
  br i1 %155, label %polly.loop_exit464, label %vector.body1424, !llvm.loop !89

polly.loop_exit464:                               ; preds = %vector.body1424
  %polly.indvar_next460 = add nuw nsw i64 %polly.indvar459, 1
  %exitcond947.not = icmp eq i64 %polly.indvar_next460, 50
  br i1 %exitcond947.not, label %polly.loop_exit458, label %polly.loop_header456

polly.start490:                                   ; preds = %init_array.exit
  %malloccall492 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #8
  %malloccall494 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #8
  br label %polly.loop_header578

polly.loop_header578:                             ; preds = %polly.loop_exit586, %polly.start490
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit586 ], [ 0, %polly.start490 ]
  %polly.indvar581 = phi i64 [ %polly.indvar_next582, %polly.loop_exit586 ], [ 1, %polly.start490 ]
  %156 = add i64 %indvar, 1
  %157 = mul nuw nsw i64 %polly.indvar581, 640
  %scevgep590 = getelementptr i8, i8* %call, i64 %157
  %min.iters.check1368 = icmp ult i64 %156, 4
  br i1 %min.iters.check1368, label %polly.loop_header584.preheader, label %vector.ph1369

vector.ph1369:                                    ; preds = %polly.loop_header578
  %n.vec1371 = and i64 %156, -4
  br label %vector.body1367

vector.body1367:                                  ; preds = %vector.body1367, %vector.ph1369
  %index1372 = phi i64 [ 0, %vector.ph1369 ], [ %index.next1373, %vector.body1367 ]
  %158 = shl nuw nsw i64 %index1372, 3
  %159 = getelementptr i8, i8* %scevgep590, i64 %158
  %160 = bitcast i8* %159 to <4 x double>*
  %wide.load1376 = load <4 x double>, <4 x double>* %160, align 8, !alias.scope !90, !noalias !92
  %161 = fmul fast <4 x double> %wide.load1376, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %162 = bitcast i8* %159 to <4 x double>*
  store <4 x double> %161, <4 x double>* %162, align 8, !alias.scope !90, !noalias !92
  %index.next1373 = add i64 %index1372, 4
  %163 = icmp eq i64 %index.next1373, %n.vec1371
  br i1 %163, label %middle.block1365, label %vector.body1367, !llvm.loop !97

middle.block1365:                                 ; preds = %vector.body1367
  %cmp.n1375 = icmp eq i64 %156, %n.vec1371
  br i1 %cmp.n1375, label %polly.loop_exit586, label %polly.loop_header584.preheader

polly.loop_header584.preheader:                   ; preds = %polly.loop_header578, %middle.block1365
  %polly.indvar587.ph = phi i64 [ 0, %polly.loop_header578 ], [ %n.vec1371, %middle.block1365 ]
  br label %polly.loop_header584

polly.loop_exit586:                               ; preds = %polly.loop_header584, %middle.block1365
  %polly.indvar_next582 = add nuw nsw i64 %polly.indvar581, 1
  %exitcond974.not = icmp eq i64 %polly.indvar_next582, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond974.not, label %polly.loop_header594.preheader, label %polly.loop_header578

polly.loop_header594.preheader:                   ; preds = %polly.loop_exit586
  %Packed_MemRef_call1493 = bitcast i8* %malloccall492 to double*
  %Packed_MemRef_call2495 = bitcast i8* %malloccall494 to double*
  br label %polly.loop_header594

polly.loop_header584:                             ; preds = %polly.loop_header584.preheader, %polly.loop_header584
  %polly.indvar587 = phi i64 [ %polly.indvar_next588, %polly.loop_header584 ], [ %polly.indvar587.ph, %polly.loop_header584.preheader ]
  %164 = shl nuw nsw i64 %polly.indvar587, 3
  %scevgep591 = getelementptr i8, i8* %scevgep590, i64 %164
  %scevgep591592 = bitcast i8* %scevgep591 to double*
  %_p_scalar_593 = load double, double* %scevgep591592, align 8, !alias.scope !90, !noalias !92
  %p_mul.i = fmul fast double %_p_scalar_593, 1.200000e+00
  store double %p_mul.i, double* %scevgep591592, align 8, !alias.scope !90, !noalias !92
  %polly.indvar_next588 = add nuw nsw i64 %polly.indvar587, 1
  %exitcond973.not = icmp eq i64 %polly.indvar_next588, %polly.indvar581
  br i1 %exitcond973.not, label %polly.loop_exit586, label %polly.loop_header584, !llvm.loop !98

polly.loop_header594:                             ; preds = %polly.loop_header594.preheader, %polly.loop_exit602
  %polly.indvar597 = phi i64 [ %polly.indvar_next598, %polly.loop_exit602 ], [ 0, %polly.loop_header594.preheader ]
  %polly.access.mul.Packed_MemRef_call2495 = mul nuw nsw i64 %polly.indvar597, 80
  br label %polly.loop_header600

polly.loop_exit602:                               ; preds = %polly.loop_header600
  %polly.indvar_next598 = add nuw nsw i64 %polly.indvar597, 1
  %exitcond972.not = icmp eq i64 %polly.indvar_next598, 60
  br i1 %exitcond972.not, label %polly.loop_header616, label %polly.loop_header594

polly.loop_header600:                             ; preds = %polly.loop_header600, %polly.loop_header594
  %polly.indvar603 = phi i64 [ 0, %polly.loop_header594 ], [ %polly.indvar_next604, %polly.loop_header600 ]
  %polly.access.mul.call2607 = mul nuw nsw i64 %polly.indvar603, 60
  %polly.access.add.call2608 = add nuw nsw i64 %polly.access.mul.call2607, %polly.indvar597
  %polly.access.call2609 = getelementptr double, double* %polly.access.cast.call2701, i64 %polly.access.add.call2608
  %polly.access.call2609.load = load double, double* %polly.access.call2609, align 8, !alias.scope !94, !noalias !99
  %polly.access.add.Packed_MemRef_call2495 = add nuw nsw i64 %polly.indvar603, %polly.access.mul.Packed_MemRef_call2495
  %polly.access.Packed_MemRef_call2495 = getelementptr double, double* %Packed_MemRef_call2495, i64 %polly.access.add.Packed_MemRef_call2495
  store double %polly.access.call2609.load, double* %polly.access.Packed_MemRef_call2495, align 8
  %polly.indvar_next604 = add nuw nsw i64 %polly.indvar603, 1
  %exitcond971.not = icmp eq i64 %polly.indvar_next604, 80
  br i1 %exitcond971.not, label %polly.loop_exit602, label %polly.loop_header600

polly.loop_header616:                             ; preds = %polly.loop_exit602, %polly.loop_exit624
  %indvars.iv967 = phi i64 [ %indvars.iv.next968, %polly.loop_exit624 ], [ 80, %polly.loop_exit602 ]
  %polly.indvar619 = phi i64 [ %polly.indvar_next620, %polly.loop_exit624 ], [ 0, %polly.loop_exit602 ]
  %165 = shl nuw nsw i64 %polly.indvar619, 2
  %166 = mul nsw i64 %polly.indvar619, -4
  %167 = add nuw nsw i64 %165, 4
  br label %polly.loop_header622

polly.loop_exit624:                               ; preds = %polly.loop_exit657
  %polly.indvar_next620 = add nuw nsw i64 %polly.indvar619, 1
  %indvars.iv.next968 = add nsw i64 %indvars.iv967, -4
  %exitcond970.not = icmp eq i64 %polly.indvar_next620, 20
  br i1 %exitcond970.not, label %polly.loop_header616.1, label %polly.loop_header616

polly.loop_header622:                             ; preds = %polly.loop_exit657, %polly.loop_header616
  %indvars.iv956 = phi i64 [ %indvars.iv.next957, %polly.loop_exit657 ], [ 0, %polly.loop_header616 ]
  %polly.indvar625 = phi i64 [ %polly.indvar_next626, %polly.loop_exit657 ], [ %165, %polly.loop_header616 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv956, i64 3)
  %smin964 = call i64 @llvm.smin.i64(i64 %indvars.iv956, i64 3)
  %168 = add nsw i64 %polly.indvar625, %166
  %.not894 = icmp ult i64 %polly.indvar625, %167
  %polly.access.mul.call1649 = mul nuw nsw i64 %polly.indvar625, 60
  br i1 %.not894, label %polly.loop_header628.us, label %polly.loop_header628

polly.loop_header628.us:                          ; preds = %polly.loop_header622, %polly.merge645.us
  %polly.indvar631.us = phi i64 [ %polly.indvar_next632.us, %polly.merge645.us ], [ 0, %polly.loop_header622 ]
  %polly.access.mul.Packed_MemRef_call1493.us = mul nuw nsw i64 %polly.indvar631.us, 80
  br label %polly.loop_header634.us

polly.loop_header634.us:                          ; preds = %polly.loop_header634.us, %polly.loop_header628.us
  %polly.indvar637.us = phi i64 [ 0, %polly.loop_header628.us ], [ %polly.indvar_next638.us, %polly.loop_header634.us ]
  %169 = add nuw nsw i64 %polly.indvar637.us, %165
  %polly.access.mul.call1641.us = mul nuw nsw i64 %169, 60
  %polly.access.add.call1642.us = add nuw nsw i64 %polly.access.mul.call1641.us, %polly.indvar631.us
  %polly.access.call1643.us = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1642.us
  %polly.access.call1643.load.us = load double, double* %polly.access.call1643.us, align 8, !alias.scope !93, !noalias !100
  %polly.access.add.Packed_MemRef_call1493.us = add nuw nsw i64 %polly.indvar637.us, %polly.access.mul.Packed_MemRef_call1493.us
  %polly.access.Packed_MemRef_call1493.us = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493.us
  store double %polly.access.call1643.load.us, double* %polly.access.Packed_MemRef_call1493.us, align 8
  %polly.indvar_next638.us = add nuw nsw i64 %polly.indvar637.us, 1
  %exitcond962.not = icmp eq i64 %polly.indvar637.us, %smin964
  br i1 %exitcond962.not, label %polly.merge645.us, label %polly.loop_header634.us

polly.merge645.us:                                ; preds = %polly.loop_header634.us
  %polly.indvar_next632.us = add nuw nsw i64 %polly.indvar631.us, 1
  %exitcond963.not = icmp eq i64 %polly.indvar_next632.us, 50
  br i1 %exitcond963.not, label %polly.loop_exit630, label %polly.loop_header628.us

polly.loop_exit630:                               ; preds = %polly.then646, %polly.merge645.us
  %170 = mul nuw nsw i64 %polly.indvar625, 640
  %scevgep683 = getelementptr i8, i8* %call, i64 %170
  br label %polly.loop_header655

polly.loop_exit657:                               ; preds = %polly.loop_exit663
  %polly.indvar_next626 = add nuw nsw i64 %polly.indvar625, 1
  %indvars.iv.next957 = add nuw nsw i64 %indvars.iv956, 1
  %exitcond969.not = icmp eq i64 %indvars.iv.next957, %indvars.iv967
  br i1 %exitcond969.not, label %polly.loop_exit624, label %polly.loop_header622

polly.loop_header628:                             ; preds = %polly.loop_header622, %polly.then646
  %polly.indvar631 = phi i64 [ %polly.indvar_next632, %polly.then646 ], [ 0, %polly.loop_header622 ]
  %polly.access.mul.Packed_MemRef_call1493 = mul nuw nsw i64 %polly.indvar631, 80
  br label %polly.loop_header634

polly.loop_header634:                             ; preds = %polly.loop_header634, %polly.loop_header628
  %polly.indvar637 = phi i64 [ 0, %polly.loop_header628 ], [ %polly.indvar_next638, %polly.loop_header634 ]
  %171 = add nuw nsw i64 %polly.indvar637, %165
  %polly.access.mul.call1641 = mul nuw nsw i64 %171, 60
  %polly.access.add.call1642 = add nuw nsw i64 %polly.access.mul.call1641, %polly.indvar631
  %polly.access.call1643 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1642
  %polly.access.call1643.load = load double, double* %polly.access.call1643, align 8, !alias.scope !93, !noalias !100
  %polly.access.add.Packed_MemRef_call1493 = add nuw nsw i64 %polly.indvar637, %polly.access.mul.Packed_MemRef_call1493
  %polly.access.Packed_MemRef_call1493 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493
  store double %polly.access.call1643.load, double* %polly.access.Packed_MemRef_call1493, align 8
  %polly.indvar_next638 = add nuw nsw i64 %polly.indvar637, 1
  %exitcond959.not = icmp eq i64 %polly.indvar637, %smin964
  br i1 %exitcond959.not, label %polly.then646, label %polly.loop_header634

polly.then646:                                    ; preds = %polly.loop_header634
  %polly.access.add.call1650 = add nuw nsw i64 %polly.indvar631, %polly.access.mul.call1649
  %polly.access.call1651 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1650
  %polly.access.call1651.load = load double, double* %polly.access.call1651, align 8, !alias.scope !93, !noalias !100
  %polly.access.add.Packed_MemRef_call1493653 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1493, %168
  %polly.access.Packed_MemRef_call1493654 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493653
  store double %polly.access.call1651.load, double* %polly.access.Packed_MemRef_call1493654, align 8
  %polly.indvar_next632 = add nuw nsw i64 %polly.indvar631, 1
  %exitcond960.not = icmp eq i64 %polly.indvar_next632, 50
  br i1 %exitcond960.not, label %polly.loop_exit630, label %polly.loop_header628

polly.loop_header655:                             ; preds = %polly.loop_exit663, %polly.loop_exit630
  %polly.indvar658 = phi i64 [ 0, %polly.loop_exit630 ], [ %polly.indvar_next659, %polly.loop_exit663 ]
  %polly.access.mul.Packed_MemRef_call1493667 = mul nuw nsw i64 %polly.indvar658, 80
  %polly.access.add.Packed_MemRef_call1493680 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1493667, %168
  %polly.access.Packed_MemRef_call1493681 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493680
  %_p_scalar_682 = load double, double* %polly.access.Packed_MemRef_call1493681, align 8
  %polly.access.add.Packed_MemRef_call2495672 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1493667, %polly.indvar625
  %polly.access.Packed_MemRef_call2495673 = getelementptr double, double* %Packed_MemRef_call2495, i64 %polly.access.add.Packed_MemRef_call2495672
  %_p_scalar_674 = load double, double* %polly.access.Packed_MemRef_call2495673, align 8
  %broadcast.splatinsert1386 = insertelement <4 x i64> poison, i64 %smin, i32 0
  %broadcast.splat1387 = shufflevector <4 x i64> %broadcast.splatinsert1386, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1390 = insertelement <4 x double> poison, double %_p_scalar_674, i32 0
  %broadcast.splat1391 = shufflevector <4 x double> %broadcast.splatinsert1390, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1393 = insertelement <4 x double> poison, double %_p_scalar_682, i32 0
  %broadcast.splat1394 = shufflevector <4 x double> %broadcast.splatinsert1393, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1379

vector.body1379:                                  ; preds = %vector.body1379, %polly.loop_header655
  %index1383 = phi i64 [ 0, %polly.loop_header655 ], [ %index.next1384, %vector.body1379 ]
  %broadcast.splatinsert1388 = insertelement <4 x i64> poison, i64 %index1383, i32 0
  %broadcast.splat1389 = shufflevector <4 x i64> %broadcast.splatinsert1388, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or <4 x i64> %broadcast.splat1389, <i64 0, i64 1, i64 2, i64 3>
  %172 = icmp ule <4 x i64> %induction, %broadcast.splat1387
  %173 = add nuw nsw i64 %index1383, %165
  %174 = add nuw nsw i64 %index1383, %polly.access.mul.Packed_MemRef_call1493667
  %175 = getelementptr double, double* %Packed_MemRef_call1493, i64 %174
  %176 = bitcast double* %175 to <4 x double>*
  %wide.masked.load = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %176, i32 8, <4 x i1> %172, <4 x double> poison)
  %177 = fmul fast <4 x double> %broadcast.splat1391, %wide.masked.load
  %178 = add nuw nsw i64 %173, %polly.access.mul.Packed_MemRef_call1493667
  %179 = getelementptr double, double* %Packed_MemRef_call2495, i64 %178
  %180 = bitcast double* %179 to <4 x double>*
  %wide.masked.load1392 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %180, i32 8, <4 x i1> %172, <4 x double> poison)
  %181 = fmul fast <4 x double> %broadcast.splat1394, %wide.masked.load1392
  %182 = shl i64 %173, 3
  %183 = getelementptr i8, i8* %scevgep683, i64 %182
  %184 = bitcast i8* %183 to <4 x double>*
  %wide.masked.load1395 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %184, i32 8, <4 x i1> %172, <4 x double> poison), !alias.scope !90, !noalias !92
  %185 = fadd fast <4 x double> %181, %177
  %186 = fmul fast <4 x double> %185, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %187 = fadd fast <4 x double> %186, %wide.masked.load1395
  %188 = bitcast i8* %183 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %187, <4 x double>* %188, i32 8, <4 x i1> %172), !alias.scope !90, !noalias !92
  %index.next1384 = add i64 %index1383, 4
  %189 = icmp eq i64 %index1383, 0
  br i1 %189, label %polly.loop_exit663, label %vector.body1379, !llvm.loop !101

polly.loop_exit663:                               ; preds = %vector.body1379
  %polly.indvar_next659 = add nuw nsw i64 %polly.indvar658, 1
  %exitcond966.not = icmp eq i64 %polly.indvar_next659, 50
  br i1 %exitcond966.not, label %polly.loop_exit657, label %polly.loop_header655

polly.loop_header825:                             ; preds = %entry, %polly.loop_exit833
  %polly.indvar828 = phi i64 [ %polly.indvar_next829, %polly.loop_exit833 ], [ 0, %entry ]
  %190 = mul nuw nsw i64 %polly.indvar828, 640
  %191 = trunc i64 %polly.indvar828 to i32
  %broadcast.splatinsert1099 = insertelement <4 x i32> poison, i32 %191, i32 0
  %broadcast.splat1100 = shufflevector <4 x i32> %broadcast.splatinsert1099, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1089

vector.body1089:                                  ; preds = %vector.body1089, %polly.loop_header825
  %index1091 = phi i64 [ 0, %polly.loop_header825 ], [ %index.next1092, %vector.body1089 ]
  %vec.ind1097 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header825 ], [ %vec.ind.next1098, %vector.body1089 ]
  %192 = mul <4 x i32> %vec.ind1097, %broadcast.splat1100
  %193 = add <4 x i32> %192, <i32 3, i32 3, i32 3, i32 3>
  %194 = urem <4 x i32> %193, <i32 80, i32 80, i32 80, i32 80>
  %195 = sitofp <4 x i32> %194 to <4 x double>
  %196 = fmul fast <4 x double> %195, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %197 = shl i64 %index1091, 3
  %198 = add nuw nsw i64 %197, %190
  %199 = getelementptr i8, i8* %call, i64 %198
  %200 = bitcast i8* %199 to <4 x double>*
  store <4 x double> %196, <4 x double>* %200, align 8, !alias.scope !102, !noalias !104
  %index.next1092 = add i64 %index1091, 4
  %vec.ind.next1098 = add <4 x i32> %vec.ind1097, <i32 4, i32 4, i32 4, i32 4>
  %201 = icmp eq i64 %index.next1092, 32
  br i1 %201, label %polly.loop_exit833, label %vector.body1089, !llvm.loop !107

polly.loop_exit833:                               ; preds = %vector.body1089
  %polly.indvar_next829 = add nuw nsw i64 %polly.indvar828, 1
  %exitcond994.not = icmp eq i64 %polly.indvar_next829, 32
  br i1 %exitcond994.not, label %polly.loop_header825.1, label %polly.loop_header825

polly.loop_header852:                             ; preds = %polly.loop_exit833.2.2, %polly.loop_exit860
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_exit833.2.2 ]
  %202 = mul nuw nsw i64 %polly.indvar855, 480
  %203 = trunc i64 %polly.indvar855 to i32
  %broadcast.splatinsert1213 = insertelement <4 x i32> poison, i32 %203, i32 0
  %broadcast.splat1214 = shufflevector <4 x i32> %broadcast.splatinsert1213, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1203

vector.body1203:                                  ; preds = %vector.body1203, %polly.loop_header852
  %index1205 = phi i64 [ 0, %polly.loop_header852 ], [ %index.next1206, %vector.body1203 ]
  %vec.ind1211 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header852 ], [ %vec.ind.next1212, %vector.body1203 ]
  %204 = mul <4 x i32> %vec.ind1211, %broadcast.splat1214
  %205 = add <4 x i32> %204, <i32 2, i32 2, i32 2, i32 2>
  %206 = urem <4 x i32> %205, <i32 60, i32 60, i32 60, i32 60>
  %207 = sitofp <4 x i32> %206 to <4 x double>
  %208 = fmul fast <4 x double> %207, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %209 = shl i64 %index1205, 3
  %210 = add i64 %209, %202
  %211 = getelementptr i8, i8* %call2, i64 %210
  %212 = bitcast i8* %211 to <4 x double>*
  store <4 x double> %208, <4 x double>* %212, align 8, !alias.scope !106, !noalias !108
  %index.next1206 = add i64 %index1205, 4
  %vec.ind.next1212 = add <4 x i32> %vec.ind1211, <i32 4, i32 4, i32 4, i32 4>
  %213 = icmp eq i64 %index.next1206, 32
  br i1 %213, label %polly.loop_exit860, label %vector.body1203, !llvm.loop !109

polly.loop_exit860:                               ; preds = %vector.body1203
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %exitcond985.not = icmp eq i64 %polly.indvar_next856, 32
  br i1 %exitcond985.not, label %polly.loop_header852.1, label %polly.loop_header852

polly.loop_header878:                             ; preds = %polly.loop_exit860.1.2, %polly.loop_exit886
  %polly.indvar881 = phi i64 [ %polly.indvar_next882, %polly.loop_exit886 ], [ 0, %polly.loop_exit860.1.2 ]
  %214 = mul nuw nsw i64 %polly.indvar881, 480
  %215 = trunc i64 %polly.indvar881 to i32
  %broadcast.splatinsert1291 = insertelement <4 x i32> poison, i32 %215, i32 0
  %broadcast.splat1292 = shufflevector <4 x i32> %broadcast.splatinsert1291, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1281

vector.body1281:                                  ; preds = %vector.body1281, %polly.loop_header878
  %index1283 = phi i64 [ 0, %polly.loop_header878 ], [ %index.next1284, %vector.body1281 ]
  %vec.ind1289 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header878 ], [ %vec.ind.next1290, %vector.body1281 ]
  %216 = mul <4 x i32> %vec.ind1289, %broadcast.splat1292
  %217 = add <4 x i32> %216, <i32 1, i32 1, i32 1, i32 1>
  %218 = urem <4 x i32> %217, <i32 80, i32 80, i32 80, i32 80>
  %219 = sitofp <4 x i32> %218 to <4 x double>
  %220 = fmul fast <4 x double> %219, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %221 = shl i64 %index1283, 3
  %222 = add i64 %221, %214
  %223 = getelementptr i8, i8* %call1, i64 %222
  %224 = bitcast i8* %223 to <4 x double>*
  store <4 x double> %220, <4 x double>* %224, align 8, !alias.scope !105, !noalias !110
  %index.next1284 = add i64 %index1283, 4
  %vec.ind.next1290 = add <4 x i32> %vec.ind1289, <i32 4, i32 4, i32 4, i32 4>
  %225 = icmp eq i64 %index.next1284, 32
  br i1 %225, label %polly.loop_exit886, label %vector.body1281, !llvm.loop !111

polly.loop_exit886:                               ; preds = %vector.body1281
  %polly.indvar_next882 = add nuw nsw i64 %polly.indvar881, 1
  %exitcond979.not = icmp eq i64 %polly.indvar_next882, 32
  br i1 %exitcond979.not, label %polly.loop_header878.1, label %polly.loop_header878

polly.loop_header222.1:                           ; preds = %polly.loop_exit230, %polly.loop_exit230.1
  %indvars.iv929.1 = phi i64 [ %indvars.iv.next930.1, %polly.loop_exit230.1 ], [ 80, %polly.loop_exit230 ]
  %polly.indvar225.1 = phi i64 [ %polly.indvar_next226.1, %polly.loop_exit230.1 ], [ 0, %polly.loop_exit230 ]
  %226 = shl nuw nsw i64 %polly.indvar225.1, 2
  %227 = mul nsw i64 %polly.indvar225.1, -4
  %228 = add nuw nsw i64 %226, 4
  br label %polly.loop_header228.1

polly.loop_header228.1:                           ; preds = %polly.loop_exit259.1, %polly.loop_header222.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit259.1 ], [ 0, %polly.loop_header222.1 ]
  %polly.indvar231.1 = phi i64 [ %polly.indvar_next232.1, %polly.loop_exit259.1 ], [ %226, %polly.loop_header222.1 ]
  %smin926.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.1, i64 3)
  %229 = add nsw i64 %polly.indvar231.1, %227
  %.not.1 = icmp ult i64 %polly.indvar231.1, %228
  %polly.access.mul.call1251.1 = mul nuw nsw i64 %polly.indvar231.1, 60
  br i1 %.not.1, label %polly.loop_header234.us.1, label %polly.loop_header234.1

polly.loop_header234.1:                           ; preds = %polly.loop_header228.1, %polly.then.1
  %polly.indvar237.1 = phi i64 [ %polly.indvar_next238.1, %polly.then.1 ], [ 0, %polly.loop_header228.1 ]
  %230 = add nuw nsw i64 %polly.indvar237.1, 50
  %polly.access.mul.Packed_MemRef_call1.1 = mul nuw nsw i64 %polly.indvar237.1, 80
  br label %polly.loop_header240.1

polly.loop_header240.1:                           ; preds = %polly.loop_header240.1, %polly.loop_header234.1
  %polly.indvar243.1 = phi i64 [ 0, %polly.loop_header234.1 ], [ %polly.indvar_next244.1, %polly.loop_header240.1 ]
  %231 = add nuw nsw i64 %polly.indvar243.1, %226
  %polly.access.mul.call1247.1 = mul nuw nsw i64 %231, 60
  %polly.access.add.call1248.1 = add nuw nsw i64 %polly.access.mul.call1247.1, %230
  %polly.access.call1249.1 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1248.1
  %polly.access.call1249.load.1 = load double, double* %polly.access.call1249.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.1 = add nuw nsw i64 %polly.indvar243.1, %polly.access.mul.Packed_MemRef_call1.1
  %polly.access.Packed_MemRef_call1.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.1
  store double %polly.access.call1249.load.1, double* %polly.access.Packed_MemRef_call1.1, align 8
  %polly.indvar_next244.1 = add nuw nsw i64 %polly.indvar243.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar243.1, %smin926.1
  br i1 %exitcond.1.not, label %polly.then.1, label %polly.loop_header240.1

polly.then.1:                                     ; preds = %polly.loop_header240.1
  %polly.access.add.call1252.1 = add nuw nsw i64 %230, %polly.access.mul.call1251.1
  %polly.access.call1253.1 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1252.1
  %polly.access.call1253.load.1 = load double, double* %polly.access.call1253.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1255.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1.1, %229
  %polly.access.Packed_MemRef_call1256.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255.1
  store double %polly.access.call1253.load.1, double* %polly.access.Packed_MemRef_call1256.1, align 8
  %polly.indvar_next238.1 = add nuw nsw i64 %polly.indvar237.1, 1
  %exitcond922.1.not = icmp eq i64 %polly.indvar_next238.1, 10
  br i1 %exitcond922.1.not, label %polly.loop_exit236.1, label %polly.loop_header234.1

polly.loop_header234.us.1:                        ; preds = %polly.loop_header228.1, %polly.merge.us.1
  %polly.indvar237.us.1 = phi i64 [ %polly.indvar_next238.us.1, %polly.merge.us.1 ], [ 0, %polly.loop_header228.1 ]
  %232 = add nuw nsw i64 %polly.indvar237.us.1, 50
  %polly.access.mul.Packed_MemRef_call1.us.1 = mul nuw nsw i64 %polly.indvar237.us.1, 80
  br label %polly.loop_header240.us.1

polly.loop_header240.us.1:                        ; preds = %polly.loop_header240.us.1, %polly.loop_header234.us.1
  %polly.indvar243.us.1 = phi i64 [ 0, %polly.loop_header234.us.1 ], [ %polly.indvar_next244.us.1, %polly.loop_header240.us.1 ]
  %233 = add nuw nsw i64 %polly.indvar243.us.1, %226
  %polly.access.mul.call1247.us.1 = mul nuw nsw i64 %233, 60
  %polly.access.add.call1248.us.1 = add nuw nsw i64 %polly.access.mul.call1247.us.1, %232
  %polly.access.call1249.us.1 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1248.us.1
  %polly.access.call1249.load.us.1 = load double, double* %polly.access.call1249.us.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar243.us.1, %polly.access.mul.Packed_MemRef_call1.us.1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1249.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next244.us.1 = add nuw nsw i64 %polly.indvar243.us.1, 1
  %exitcond924.1.not = icmp eq i64 %polly.indvar243.us.1, %smin926.1
  br i1 %exitcond924.1.not, label %polly.merge.us.1, label %polly.loop_header240.us.1

polly.merge.us.1:                                 ; preds = %polly.loop_header240.us.1
  %polly.indvar_next238.us.1 = add nuw nsw i64 %polly.indvar237.us.1, 1
  %exitcond925.1.not = icmp eq i64 %polly.indvar_next238.us.1, 10
  br i1 %exitcond925.1.not, label %polly.loop_exit236.1, label %polly.loop_header234.us.1

polly.loop_exit236.1:                             ; preds = %polly.then.1, %polly.merge.us.1
  %234 = mul nuw nsw i64 %polly.indvar231.1, 640
  %scevgep285.1 = getelementptr i8, i8* %call, i64 %234
  br label %polly.loop_header257.1

polly.loop_header257.1:                           ; preds = %polly.loop_exit265.1, %polly.loop_exit236.1
  %polly.indvar260.1 = phi i64 [ 0, %polly.loop_exit236.1 ], [ %polly.indvar_next261.1, %polly.loop_exit265.1 ]
  %polly.access.mul.Packed_MemRef_call1269.1 = mul nuw nsw i64 %polly.indvar260.1, 80
  %235 = mul i64 %polly.indvar260.1, 80
  %polly.access.mul.Packed_MemRef_call2273.1 = add i64 %235, 4000
  %polly.access.add.Packed_MemRef_call2274.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273.1, %polly.indvar231.1
  %polly.access.Packed_MemRef_call2275.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2274.1
  %_p_scalar_276.1 = load double, double* %polly.access.Packed_MemRef_call2275.1, align 8
  %polly.access.add.Packed_MemRef_call1282.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1269.1, %229
  %polly.access.Packed_MemRef_call1283.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.1
  %_p_scalar_284.1 = load double, double* %polly.access.Packed_MemRef_call1283.1, align 8
  br label %polly.loop_header263.1

polly.loop_header263.1:                           ; preds = %polly.loop_header263.1, %polly.loop_header257.1
  %polly.indvar266.1 = phi i64 [ 0, %polly.loop_header257.1 ], [ %polly.indvar_next267.1, %polly.loop_header263.1 ]
  %236 = add nuw nsw i64 %polly.indvar266.1, %226
  %polly.access.add.Packed_MemRef_call1270.1 = add nuw nsw i64 %polly.indvar266.1, %polly.access.mul.Packed_MemRef_call1269.1
  %polly.access.Packed_MemRef_call1271.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1270.1
  %_p_scalar_272.1 = load double, double* %polly.access.Packed_MemRef_call1271.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_276.1, %_p_scalar_272.1
  %polly.access.add.Packed_MemRef_call2278.1 = add nuw nsw i64 %236, %polly.access.mul.Packed_MemRef_call2273.1
  %polly.access.Packed_MemRef_call2279.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2278.1
  %_p_scalar_280.1 = load double, double* %polly.access.Packed_MemRef_call2279.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_284.1, %_p_scalar_280.1
  %237 = shl i64 %236, 3
  %scevgep286.1 = getelementptr i8, i8* %scevgep285.1, i64 %237
  %scevgep286287.1 = bitcast i8* %scevgep286.1 to double*
  %_p_scalar_288.1 = load double, double* %scevgep286287.1, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_288.1
  store double %p_add42.i118.1, double* %scevgep286287.1, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next267.1 = add nuw nsw i64 %polly.indvar266.1, 1
  %exitcond927.1.not = icmp eq i64 %polly.indvar266.1, %smin926.1
  br i1 %exitcond927.1.not, label %polly.loop_exit265.1, label %polly.loop_header263.1

polly.loop_exit265.1:                             ; preds = %polly.loop_header263.1
  %polly.indvar_next261.1 = add nuw nsw i64 %polly.indvar260.1, 1
  %exitcond928.1.not = icmp eq i64 %polly.indvar_next261.1, 10
  br i1 %exitcond928.1.not, label %polly.loop_exit259.1, label %polly.loop_header257.1

polly.loop_exit259.1:                             ; preds = %polly.loop_exit265.1
  %polly.indvar_next232.1 = add nuw nsw i64 %polly.indvar231.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond931.1.not = icmp eq i64 %indvars.iv.next.1, %indvars.iv929.1
  br i1 %exitcond931.1.not, label %polly.loop_exit230.1, label %polly.loop_header228.1

polly.loop_exit230.1:                             ; preds = %polly.loop_exit259.1
  %polly.indvar_next226.1 = add nuw nsw i64 %polly.indvar225.1, 1
  %indvars.iv.next930.1 = add nsw i64 %indvars.iv929.1, -4
  %exitcond932.1.not = icmp eq i64 %polly.indvar_next226.1, 20
  br i1 %exitcond932.1.not, label %polly.loop_exit224.1, label %polly.loop_header222.1

polly.loop_exit224.1:                             ; preds = %polly.loop_exit230.1
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header417.1:                           ; preds = %polly.loop_exit425, %polly.loop_exit425.1
  %indvars.iv948.1 = phi i64 [ %indvars.iv.next949.1, %polly.loop_exit425.1 ], [ 80, %polly.loop_exit425 ]
  %polly.indvar420.1 = phi i64 [ %polly.indvar_next421.1, %polly.loop_exit425.1 ], [ 0, %polly.loop_exit425 ]
  %238 = shl nuw nsw i64 %polly.indvar420.1, 2
  %239 = mul nsw i64 %polly.indvar420.1, -4
  %240 = add nuw nsw i64 %238, 4
  br label %polly.loop_header423.1

polly.loop_header423.1:                           ; preds = %polly.loop_exit458.1, %polly.loop_header417.1
  %indvars.iv937.1 = phi i64 [ %indvars.iv.next938.1, %polly.loop_exit458.1 ], [ 0, %polly.loop_header417.1 ]
  %polly.indvar426.1 = phi i64 [ %polly.indvar_next427.1, %polly.loop_exit458.1 ], [ %238, %polly.loop_header417.1 ]
  %smin945.1 = call i64 @llvm.smin.i64(i64 %indvars.iv937.1, i64 3)
  %241 = add nsw i64 %polly.indvar426.1, %239
  %.not893.1 = icmp ult i64 %polly.indvar426.1, %240
  %polly.access.mul.call1450.1 = mul nuw nsw i64 %polly.indvar426.1, 60
  br i1 %.not893.1, label %polly.loop_header429.us.1, label %polly.loop_header429.1

polly.loop_header429.1:                           ; preds = %polly.loop_header423.1, %polly.then447.1
  %polly.indvar432.1 = phi i64 [ %polly.indvar_next433.1, %polly.then447.1 ], [ 0, %polly.loop_header423.1 ]
  %242 = add nuw nsw i64 %polly.indvar432.1, 50
  %polly.access.mul.Packed_MemRef_call1294.1 = mul nuw nsw i64 %polly.indvar432.1, 80
  br label %polly.loop_header435.1

polly.loop_header435.1:                           ; preds = %polly.loop_header435.1, %polly.loop_header429.1
  %polly.indvar438.1 = phi i64 [ 0, %polly.loop_header429.1 ], [ %polly.indvar_next439.1, %polly.loop_header435.1 ]
  %243 = add nuw nsw i64 %polly.indvar438.1, %238
  %polly.access.mul.call1442.1 = mul nuw nsw i64 %243, 60
  %polly.access.add.call1443.1 = add nuw nsw i64 %polly.access.mul.call1442.1, %242
  %polly.access.call1444.1 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1443.1
  %polly.access.call1444.load.1 = load double, double* %polly.access.call1444.1, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1294.1 = add nuw nsw i64 %polly.indvar438.1, %polly.access.mul.Packed_MemRef_call1294.1
  %polly.access.Packed_MemRef_call1294.1 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294.1
  store double %polly.access.call1444.load.1, double* %polly.access.Packed_MemRef_call1294.1, align 8
  %polly.indvar_next439.1 = add nuw nsw i64 %polly.indvar438.1, 1
  %exitcond940.1.not = icmp eq i64 %polly.indvar438.1, %smin945.1
  br i1 %exitcond940.1.not, label %polly.then447.1, label %polly.loop_header435.1

polly.then447.1:                                  ; preds = %polly.loop_header435.1
  %polly.access.add.call1451.1 = add nuw nsw i64 %242, %polly.access.mul.call1450.1
  %polly.access.call1452.1 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1451.1
  %polly.access.call1452.load.1 = load double, double* %polly.access.call1452.1, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1294454.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1294.1, %241
  %polly.access.Packed_MemRef_call1294455.1 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294454.1
  store double %polly.access.call1452.load.1, double* %polly.access.Packed_MemRef_call1294455.1, align 8
  %polly.indvar_next433.1 = add nuw nsw i64 %polly.indvar432.1, 1
  %exitcond941.1.not = icmp eq i64 %polly.indvar_next433.1, 10
  br i1 %exitcond941.1.not, label %polly.loop_exit431.1, label %polly.loop_header429.1

polly.loop_header429.us.1:                        ; preds = %polly.loop_header423.1, %polly.merge446.us.1
  %polly.indvar432.us.1 = phi i64 [ %polly.indvar_next433.us.1, %polly.merge446.us.1 ], [ 0, %polly.loop_header423.1 ]
  %244 = add nuw nsw i64 %polly.indvar432.us.1, 50
  %polly.access.mul.Packed_MemRef_call1294.us.1 = mul nuw nsw i64 %polly.indvar432.us.1, 80
  br label %polly.loop_header435.us.1

polly.loop_header435.us.1:                        ; preds = %polly.loop_header435.us.1, %polly.loop_header429.us.1
  %polly.indvar438.us.1 = phi i64 [ 0, %polly.loop_header429.us.1 ], [ %polly.indvar_next439.us.1, %polly.loop_header435.us.1 ]
  %245 = add nuw nsw i64 %polly.indvar438.us.1, %238
  %polly.access.mul.call1442.us.1 = mul nuw nsw i64 %245, 60
  %polly.access.add.call1443.us.1 = add nuw nsw i64 %polly.access.mul.call1442.us.1, %244
  %polly.access.call1444.us.1 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1443.us.1
  %polly.access.call1444.load.us.1 = load double, double* %polly.access.call1444.us.1, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1294.us.1 = add nuw nsw i64 %polly.indvar438.us.1, %polly.access.mul.Packed_MemRef_call1294.us.1
  %polly.access.Packed_MemRef_call1294.us.1 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294.us.1
  store double %polly.access.call1444.load.us.1, double* %polly.access.Packed_MemRef_call1294.us.1, align 8
  %polly.indvar_next439.us.1 = add nuw nsw i64 %polly.indvar438.us.1, 1
  %exitcond943.1.not = icmp eq i64 %polly.indvar438.us.1, %smin945.1
  br i1 %exitcond943.1.not, label %polly.merge446.us.1, label %polly.loop_header435.us.1

polly.merge446.us.1:                              ; preds = %polly.loop_header435.us.1
  %polly.indvar_next433.us.1 = add nuw nsw i64 %polly.indvar432.us.1, 1
  %exitcond944.1.not = icmp eq i64 %polly.indvar_next433.us.1, 10
  br i1 %exitcond944.1.not, label %polly.loop_exit431.1, label %polly.loop_header429.us.1

polly.loop_exit431.1:                             ; preds = %polly.then447.1, %polly.merge446.us.1
  %246 = mul nuw nsw i64 %polly.indvar426.1, 640
  %scevgep484.1 = getelementptr i8, i8* %call, i64 %246
  br label %polly.loop_header456.1

polly.loop_header456.1:                           ; preds = %polly.loop_exit464.1, %polly.loop_exit431.1
  %polly.indvar459.1 = phi i64 [ 0, %polly.loop_exit431.1 ], [ %polly.indvar_next460.1, %polly.loop_exit464.1 ]
  %polly.access.mul.Packed_MemRef_call1294468.1 = mul nuw nsw i64 %polly.indvar459.1, 80
  %247 = mul i64 %polly.indvar459.1, 80
  %polly.access.mul.Packed_MemRef_call2296472.1 = add i64 %247, 4000
  %polly.access.add.Packed_MemRef_call2296473.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2296472.1, %polly.indvar426.1
  %polly.access.Packed_MemRef_call2296474.1 = getelementptr double, double* %Packed_MemRef_call2296, i64 %polly.access.add.Packed_MemRef_call2296473.1
  %_p_scalar_475.1 = load double, double* %polly.access.Packed_MemRef_call2296474.1, align 8
  %polly.access.add.Packed_MemRef_call1294481.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1294468.1, %241
  %polly.access.Packed_MemRef_call1294482.1 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294481.1
  %_p_scalar_483.1 = load double, double* %polly.access.Packed_MemRef_call1294482.1, align 8
  br label %polly.loop_header462.1

polly.loop_header462.1:                           ; preds = %polly.loop_header462.1, %polly.loop_header456.1
  %polly.indvar465.1 = phi i64 [ 0, %polly.loop_header456.1 ], [ %polly.indvar_next466.1, %polly.loop_header462.1 ]
  %248 = add nuw nsw i64 %polly.indvar465.1, %238
  %polly.access.add.Packed_MemRef_call1294469.1 = add nuw nsw i64 %polly.indvar465.1, %polly.access.mul.Packed_MemRef_call1294468.1
  %polly.access.Packed_MemRef_call1294470.1 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294469.1
  %_p_scalar_471.1 = load double, double* %polly.access.Packed_MemRef_call1294470.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_475.1, %_p_scalar_471.1
  %polly.access.add.Packed_MemRef_call2296477.1 = add nuw nsw i64 %248, %polly.access.mul.Packed_MemRef_call2296472.1
  %polly.access.Packed_MemRef_call2296478.1 = getelementptr double, double* %Packed_MemRef_call2296, i64 %polly.access.add.Packed_MemRef_call2296477.1
  %_p_scalar_479.1 = load double, double* %polly.access.Packed_MemRef_call2296478.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_483.1, %_p_scalar_479.1
  %249 = shl i64 %248, 3
  %scevgep485.1 = getelementptr i8, i8* %scevgep484.1, i64 %249
  %scevgep485486.1 = bitcast i8* %scevgep485.1 to double*
  %_p_scalar_487.1 = load double, double* %scevgep485486.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_487.1
  store double %p_add42.i79.1, double* %scevgep485486.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next466.1 = add nuw nsw i64 %polly.indvar465.1, 1
  %exitcond946.1.not = icmp eq i64 %polly.indvar465.1, %smin945.1
  br i1 %exitcond946.1.not, label %polly.loop_exit464.1, label %polly.loop_header462.1

polly.loop_exit464.1:                             ; preds = %polly.loop_header462.1
  %polly.indvar_next460.1 = add nuw nsw i64 %polly.indvar459.1, 1
  %exitcond947.1.not = icmp eq i64 %polly.indvar_next460.1, 10
  br i1 %exitcond947.1.not, label %polly.loop_exit458.1, label %polly.loop_header456.1

polly.loop_exit458.1:                             ; preds = %polly.loop_exit464.1
  %polly.indvar_next427.1 = add nuw nsw i64 %polly.indvar426.1, 1
  %indvars.iv.next938.1 = add nuw nsw i64 %indvars.iv937.1, 1
  %exitcond950.1.not = icmp eq i64 %indvars.iv.next938.1, %indvars.iv948.1
  br i1 %exitcond950.1.not, label %polly.loop_exit425.1, label %polly.loop_header423.1

polly.loop_exit425.1:                             ; preds = %polly.loop_exit458.1
  %polly.indvar_next421.1 = add nuw nsw i64 %polly.indvar420.1, 1
  %indvars.iv.next949.1 = add nsw i64 %indvars.iv948.1, -4
  %exitcond951.1.not = icmp eq i64 %polly.indvar_next421.1, 20
  br i1 %exitcond951.1.not, label %polly.loop_exit419.1, label %polly.loop_header417.1

polly.loop_exit419.1:                             ; preds = %polly.loop_exit425.1
  tail call void @free(i8* nonnull %malloccall293)
  tail call void @free(i8* nonnull %malloccall295)
  br label %kernel_syr2k.exit90

polly.loop_header616.1:                           ; preds = %polly.loop_exit624, %polly.loop_exit624.1
  %indvars.iv967.1 = phi i64 [ %indvars.iv.next968.1, %polly.loop_exit624.1 ], [ 80, %polly.loop_exit624 ]
  %polly.indvar619.1 = phi i64 [ %polly.indvar_next620.1, %polly.loop_exit624.1 ], [ 0, %polly.loop_exit624 ]
  %250 = shl nuw nsw i64 %polly.indvar619.1, 2
  %251 = mul nsw i64 %polly.indvar619.1, -4
  %252 = add nuw nsw i64 %250, 4
  br label %polly.loop_header622.1

polly.loop_header622.1:                           ; preds = %polly.loop_exit657.1, %polly.loop_header616.1
  %indvars.iv956.1 = phi i64 [ %indvars.iv.next957.1, %polly.loop_exit657.1 ], [ 0, %polly.loop_header616.1 ]
  %polly.indvar625.1 = phi i64 [ %polly.indvar_next626.1, %polly.loop_exit657.1 ], [ %250, %polly.loop_header616.1 ]
  %smin964.1 = call i64 @llvm.smin.i64(i64 %indvars.iv956.1, i64 3)
  %253 = add nsw i64 %polly.indvar625.1, %251
  %.not894.1 = icmp ult i64 %polly.indvar625.1, %252
  %polly.access.mul.call1649.1 = mul nuw nsw i64 %polly.indvar625.1, 60
  br i1 %.not894.1, label %polly.loop_header628.us.1, label %polly.loop_header628.1

polly.loop_header628.1:                           ; preds = %polly.loop_header622.1, %polly.then646.1
  %polly.indvar631.1 = phi i64 [ %polly.indvar_next632.1, %polly.then646.1 ], [ 0, %polly.loop_header622.1 ]
  %254 = add nuw nsw i64 %polly.indvar631.1, 50
  %polly.access.mul.Packed_MemRef_call1493.1 = mul nuw nsw i64 %polly.indvar631.1, 80
  br label %polly.loop_header634.1

polly.loop_header634.1:                           ; preds = %polly.loop_header634.1, %polly.loop_header628.1
  %polly.indvar637.1 = phi i64 [ 0, %polly.loop_header628.1 ], [ %polly.indvar_next638.1, %polly.loop_header634.1 ]
  %255 = add nuw nsw i64 %polly.indvar637.1, %250
  %polly.access.mul.call1641.1 = mul nuw nsw i64 %255, 60
  %polly.access.add.call1642.1 = add nuw nsw i64 %polly.access.mul.call1641.1, %254
  %polly.access.call1643.1 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1642.1
  %polly.access.call1643.load.1 = load double, double* %polly.access.call1643.1, align 8, !alias.scope !93, !noalias !100
  %polly.access.add.Packed_MemRef_call1493.1 = add nuw nsw i64 %polly.indvar637.1, %polly.access.mul.Packed_MemRef_call1493.1
  %polly.access.Packed_MemRef_call1493.1 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493.1
  store double %polly.access.call1643.load.1, double* %polly.access.Packed_MemRef_call1493.1, align 8
  %polly.indvar_next638.1 = add nuw nsw i64 %polly.indvar637.1, 1
  %exitcond959.1.not = icmp eq i64 %polly.indvar637.1, %smin964.1
  br i1 %exitcond959.1.not, label %polly.then646.1, label %polly.loop_header634.1

polly.then646.1:                                  ; preds = %polly.loop_header634.1
  %polly.access.add.call1650.1 = add nuw nsw i64 %254, %polly.access.mul.call1649.1
  %polly.access.call1651.1 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1650.1
  %polly.access.call1651.load.1 = load double, double* %polly.access.call1651.1, align 8, !alias.scope !93, !noalias !100
  %polly.access.add.Packed_MemRef_call1493653.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1493.1, %253
  %polly.access.Packed_MemRef_call1493654.1 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493653.1
  store double %polly.access.call1651.load.1, double* %polly.access.Packed_MemRef_call1493654.1, align 8
  %polly.indvar_next632.1 = add nuw nsw i64 %polly.indvar631.1, 1
  %exitcond960.1.not = icmp eq i64 %polly.indvar_next632.1, 10
  br i1 %exitcond960.1.not, label %polly.loop_exit630.1, label %polly.loop_header628.1

polly.loop_header628.us.1:                        ; preds = %polly.loop_header622.1, %polly.merge645.us.1
  %polly.indvar631.us.1 = phi i64 [ %polly.indvar_next632.us.1, %polly.merge645.us.1 ], [ 0, %polly.loop_header622.1 ]
  %256 = add nuw nsw i64 %polly.indvar631.us.1, 50
  %polly.access.mul.Packed_MemRef_call1493.us.1 = mul nuw nsw i64 %polly.indvar631.us.1, 80
  br label %polly.loop_header634.us.1

polly.loop_header634.us.1:                        ; preds = %polly.loop_header634.us.1, %polly.loop_header628.us.1
  %polly.indvar637.us.1 = phi i64 [ 0, %polly.loop_header628.us.1 ], [ %polly.indvar_next638.us.1, %polly.loop_header634.us.1 ]
  %257 = add nuw nsw i64 %polly.indvar637.us.1, %250
  %polly.access.mul.call1641.us.1 = mul nuw nsw i64 %257, 60
  %polly.access.add.call1642.us.1 = add nuw nsw i64 %polly.access.mul.call1641.us.1, %256
  %polly.access.call1643.us.1 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1642.us.1
  %polly.access.call1643.load.us.1 = load double, double* %polly.access.call1643.us.1, align 8, !alias.scope !93, !noalias !100
  %polly.access.add.Packed_MemRef_call1493.us.1 = add nuw nsw i64 %polly.indvar637.us.1, %polly.access.mul.Packed_MemRef_call1493.us.1
  %polly.access.Packed_MemRef_call1493.us.1 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493.us.1
  store double %polly.access.call1643.load.us.1, double* %polly.access.Packed_MemRef_call1493.us.1, align 8
  %polly.indvar_next638.us.1 = add nuw nsw i64 %polly.indvar637.us.1, 1
  %exitcond962.1.not = icmp eq i64 %polly.indvar637.us.1, %smin964.1
  br i1 %exitcond962.1.not, label %polly.merge645.us.1, label %polly.loop_header634.us.1

polly.merge645.us.1:                              ; preds = %polly.loop_header634.us.1
  %polly.indvar_next632.us.1 = add nuw nsw i64 %polly.indvar631.us.1, 1
  %exitcond963.1.not = icmp eq i64 %polly.indvar_next632.us.1, 10
  br i1 %exitcond963.1.not, label %polly.loop_exit630.1, label %polly.loop_header628.us.1

polly.loop_exit630.1:                             ; preds = %polly.then646.1, %polly.merge645.us.1
  %258 = mul nuw nsw i64 %polly.indvar625.1, 640
  %scevgep683.1 = getelementptr i8, i8* %call, i64 %258
  br label %polly.loop_header655.1

polly.loop_header655.1:                           ; preds = %polly.loop_exit663.1, %polly.loop_exit630.1
  %polly.indvar658.1 = phi i64 [ 0, %polly.loop_exit630.1 ], [ %polly.indvar_next659.1, %polly.loop_exit663.1 ]
  %polly.access.mul.Packed_MemRef_call1493667.1 = mul nuw nsw i64 %polly.indvar658.1, 80
  %259 = mul i64 %polly.indvar658.1, 80
  %polly.access.mul.Packed_MemRef_call2495671.1 = add i64 %259, 4000
  %polly.access.add.Packed_MemRef_call2495672.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2495671.1, %polly.indvar625.1
  %polly.access.Packed_MemRef_call2495673.1 = getelementptr double, double* %Packed_MemRef_call2495, i64 %polly.access.add.Packed_MemRef_call2495672.1
  %_p_scalar_674.1 = load double, double* %polly.access.Packed_MemRef_call2495673.1, align 8
  %polly.access.add.Packed_MemRef_call1493680.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1493667.1, %253
  %polly.access.Packed_MemRef_call1493681.1 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493680.1
  %_p_scalar_682.1 = load double, double* %polly.access.Packed_MemRef_call1493681.1, align 8
  br label %polly.loop_header661.1

polly.loop_header661.1:                           ; preds = %polly.loop_header661.1, %polly.loop_header655.1
  %polly.indvar664.1 = phi i64 [ 0, %polly.loop_header655.1 ], [ %polly.indvar_next665.1, %polly.loop_header661.1 ]
  %260 = add nuw nsw i64 %polly.indvar664.1, %250
  %polly.access.add.Packed_MemRef_call1493668.1 = add nuw nsw i64 %polly.indvar664.1, %polly.access.mul.Packed_MemRef_call1493667.1
  %polly.access.Packed_MemRef_call1493669.1 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493668.1
  %_p_scalar_670.1 = load double, double* %polly.access.Packed_MemRef_call1493669.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_674.1, %_p_scalar_670.1
  %polly.access.add.Packed_MemRef_call2495676.1 = add nuw nsw i64 %260, %polly.access.mul.Packed_MemRef_call2495671.1
  %polly.access.Packed_MemRef_call2495677.1 = getelementptr double, double* %Packed_MemRef_call2495, i64 %polly.access.add.Packed_MemRef_call2495676.1
  %_p_scalar_678.1 = load double, double* %polly.access.Packed_MemRef_call2495677.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_682.1, %_p_scalar_678.1
  %261 = shl i64 %260, 3
  %scevgep684.1 = getelementptr i8, i8* %scevgep683.1, i64 %261
  %scevgep684685.1 = bitcast i8* %scevgep684.1 to double*
  %_p_scalar_686.1 = load double, double* %scevgep684685.1, align 8, !alias.scope !90, !noalias !92
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_686.1
  store double %p_add42.i.1, double* %scevgep684685.1, align 8, !alias.scope !90, !noalias !92
  %polly.indvar_next665.1 = add nuw nsw i64 %polly.indvar664.1, 1
  %exitcond965.1.not = icmp eq i64 %polly.indvar664.1, %smin964.1
  br i1 %exitcond965.1.not, label %polly.loop_exit663.1, label %polly.loop_header661.1

polly.loop_exit663.1:                             ; preds = %polly.loop_header661.1
  %polly.indvar_next659.1 = add nuw nsw i64 %polly.indvar658.1, 1
  %exitcond966.1.not = icmp eq i64 %polly.indvar_next659.1, 10
  br i1 %exitcond966.1.not, label %polly.loop_exit657.1, label %polly.loop_header655.1

polly.loop_exit657.1:                             ; preds = %polly.loop_exit663.1
  %polly.indvar_next626.1 = add nuw nsw i64 %polly.indvar625.1, 1
  %indvars.iv.next957.1 = add nuw nsw i64 %indvars.iv956.1, 1
  %exitcond969.1.not = icmp eq i64 %indvars.iv.next957.1, %indvars.iv967.1
  br i1 %exitcond969.1.not, label %polly.loop_exit624.1, label %polly.loop_header622.1

polly.loop_exit624.1:                             ; preds = %polly.loop_exit657.1
  %polly.indvar_next620.1 = add nuw nsw i64 %polly.indvar619.1, 1
  %indvars.iv.next968.1 = add nsw i64 %indvars.iv967.1, -4
  %exitcond970.1.not = icmp eq i64 %polly.indvar_next620.1, 20
  br i1 %exitcond970.1.not, label %polly.loop_exit618.1, label %polly.loop_header616.1

polly.loop_exit618.1:                             ; preds = %polly.loop_exit624.1
  tail call void @free(i8* nonnull %malloccall492)
  tail call void @free(i8* nonnull %malloccall494)
  br label %kernel_syr2k.exit

polly.loop_header878.1:                           ; preds = %polly.loop_exit886, %polly.loop_exit886.1
  %polly.indvar881.1 = phi i64 [ %polly.indvar_next882.1, %polly.loop_exit886.1 ], [ 0, %polly.loop_exit886 ]
  %262 = mul nuw nsw i64 %polly.indvar881.1, 480
  %263 = trunc i64 %polly.indvar881.1 to i32
  %broadcast.splatinsert1303 = insertelement <4 x i32> poison, i32 %263, i32 0
  %broadcast.splat1304 = shufflevector <4 x i32> %broadcast.splatinsert1303, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1295

vector.body1295:                                  ; preds = %vector.body1295, %polly.loop_header878.1
  %index1297 = phi i64 [ 0, %polly.loop_header878.1 ], [ %index.next1298, %vector.body1295 ]
  %vec.ind1301 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header878.1 ], [ %vec.ind.next1302, %vector.body1295 ]
  %264 = add nuw nsw <4 x i64> %vec.ind1301, <i64 32, i64 32, i64 32, i64 32>
  %265 = trunc <4 x i64> %264 to <4 x i32>
  %266 = mul <4 x i32> %broadcast.splat1304, %265
  %267 = add <4 x i32> %266, <i32 1, i32 1, i32 1, i32 1>
  %268 = urem <4 x i32> %267, <i32 80, i32 80, i32 80, i32 80>
  %269 = sitofp <4 x i32> %268 to <4 x double>
  %270 = fmul fast <4 x double> %269, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %271 = extractelement <4 x i64> %264, i32 0
  %272 = shl i64 %271, 3
  %273 = add i64 %272, %262
  %274 = getelementptr i8, i8* %call1, i64 %273
  %275 = bitcast i8* %274 to <4 x double>*
  store <4 x double> %270, <4 x double>* %275, align 8, !alias.scope !105, !noalias !110
  %index.next1298 = add i64 %index1297, 4
  %vec.ind.next1302 = add <4 x i64> %vec.ind1301, <i64 4, i64 4, i64 4, i64 4>
  %276 = icmp eq i64 %index.next1298, 28
  br i1 %276, label %polly.loop_exit886.1, label %vector.body1295, !llvm.loop !112

polly.loop_exit886.1:                             ; preds = %vector.body1295
  %polly.indvar_next882.1 = add nuw nsw i64 %polly.indvar881.1, 1
  %exitcond979.1.not = icmp eq i64 %polly.indvar_next882.1, 32
  br i1 %exitcond979.1.not, label %polly.loop_header878.11002, label %polly.loop_header878.1

polly.loop_header878.11002:                       ; preds = %polly.loop_exit886.1, %polly.loop_exit886.11013
  %polly.indvar881.11001 = phi i64 [ %polly.indvar_next882.11011, %polly.loop_exit886.11013 ], [ 0, %polly.loop_exit886.1 ]
  %277 = add nuw nsw i64 %polly.indvar881.11001, 32
  %278 = mul nuw nsw i64 %277, 480
  %279 = trunc i64 %277 to i32
  %broadcast.splatinsert1317 = insertelement <4 x i32> poison, i32 %279, i32 0
  %broadcast.splat1318 = shufflevector <4 x i32> %broadcast.splatinsert1317, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1307

vector.body1307:                                  ; preds = %vector.body1307, %polly.loop_header878.11002
  %index1309 = phi i64 [ 0, %polly.loop_header878.11002 ], [ %index.next1310, %vector.body1307 ]
  %vec.ind1315 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header878.11002 ], [ %vec.ind.next1316, %vector.body1307 ]
  %280 = mul <4 x i32> %vec.ind1315, %broadcast.splat1318
  %281 = add <4 x i32> %280, <i32 1, i32 1, i32 1, i32 1>
  %282 = urem <4 x i32> %281, <i32 80, i32 80, i32 80, i32 80>
  %283 = sitofp <4 x i32> %282 to <4 x double>
  %284 = fmul fast <4 x double> %283, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %285 = shl i64 %index1309, 3
  %286 = add i64 %285, %278
  %287 = getelementptr i8, i8* %call1, i64 %286
  %288 = bitcast i8* %287 to <4 x double>*
  store <4 x double> %284, <4 x double>* %288, align 8, !alias.scope !105, !noalias !110
  %index.next1310 = add i64 %index1309, 4
  %vec.ind.next1316 = add <4 x i32> %vec.ind1315, <i32 4, i32 4, i32 4, i32 4>
  %289 = icmp eq i64 %index.next1310, 32
  br i1 %289, label %polly.loop_exit886.11013, label %vector.body1307, !llvm.loop !113

polly.loop_exit886.11013:                         ; preds = %vector.body1307
  %polly.indvar_next882.11011 = add nuw nsw i64 %polly.indvar881.11001, 1
  %exitcond979.11012.not = icmp eq i64 %polly.indvar_next882.11011, 32
  br i1 %exitcond979.11012.not, label %polly.loop_header878.1.1, label %polly.loop_header878.11002

polly.loop_header878.1.1:                         ; preds = %polly.loop_exit886.11013, %polly.loop_exit886.1.1
  %polly.indvar881.1.1 = phi i64 [ %polly.indvar_next882.1.1, %polly.loop_exit886.1.1 ], [ 0, %polly.loop_exit886.11013 ]
  %290 = add nuw nsw i64 %polly.indvar881.1.1, 32
  %291 = mul nuw nsw i64 %290, 480
  %292 = trunc i64 %290 to i32
  %broadcast.splatinsert1329 = insertelement <4 x i32> poison, i32 %292, i32 0
  %broadcast.splat1330 = shufflevector <4 x i32> %broadcast.splatinsert1329, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1321

vector.body1321:                                  ; preds = %vector.body1321, %polly.loop_header878.1.1
  %index1323 = phi i64 [ 0, %polly.loop_header878.1.1 ], [ %index.next1324, %vector.body1321 ]
  %vec.ind1327 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header878.1.1 ], [ %vec.ind.next1328, %vector.body1321 ]
  %293 = add nuw nsw <4 x i64> %vec.ind1327, <i64 32, i64 32, i64 32, i64 32>
  %294 = trunc <4 x i64> %293 to <4 x i32>
  %295 = mul <4 x i32> %broadcast.splat1330, %294
  %296 = add <4 x i32> %295, <i32 1, i32 1, i32 1, i32 1>
  %297 = urem <4 x i32> %296, <i32 80, i32 80, i32 80, i32 80>
  %298 = sitofp <4 x i32> %297 to <4 x double>
  %299 = fmul fast <4 x double> %298, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %300 = extractelement <4 x i64> %293, i32 0
  %301 = shl i64 %300, 3
  %302 = add i64 %301, %291
  %303 = getelementptr i8, i8* %call1, i64 %302
  %304 = bitcast i8* %303 to <4 x double>*
  store <4 x double> %299, <4 x double>* %304, align 8, !alias.scope !105, !noalias !110
  %index.next1324 = add i64 %index1323, 4
  %vec.ind.next1328 = add <4 x i64> %vec.ind1327, <i64 4, i64 4, i64 4, i64 4>
  %305 = icmp eq i64 %index.next1324, 28
  br i1 %305, label %polly.loop_exit886.1.1, label %vector.body1321, !llvm.loop !114

polly.loop_exit886.1.1:                           ; preds = %vector.body1321
  %polly.indvar_next882.1.1 = add nuw nsw i64 %polly.indvar881.1.1, 1
  %exitcond979.1.1.not = icmp eq i64 %polly.indvar_next882.1.1, 32
  br i1 %exitcond979.1.1.not, label %polly.loop_header878.2, label %polly.loop_header878.1.1

polly.loop_header878.2:                           ; preds = %polly.loop_exit886.1.1, %polly.loop_exit886.2
  %polly.indvar881.2 = phi i64 [ %polly.indvar_next882.2, %polly.loop_exit886.2 ], [ 0, %polly.loop_exit886.1.1 ]
  %306 = add nuw nsw i64 %polly.indvar881.2, 64
  %307 = mul nuw nsw i64 %306, 480
  %308 = trunc i64 %306 to i32
  %broadcast.splatinsert1343 = insertelement <4 x i32> poison, i32 %308, i32 0
  %broadcast.splat1344 = shufflevector <4 x i32> %broadcast.splatinsert1343, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1333

vector.body1333:                                  ; preds = %vector.body1333, %polly.loop_header878.2
  %index1335 = phi i64 [ 0, %polly.loop_header878.2 ], [ %index.next1336, %vector.body1333 ]
  %vec.ind1341 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header878.2 ], [ %vec.ind.next1342, %vector.body1333 ]
  %309 = mul <4 x i32> %vec.ind1341, %broadcast.splat1344
  %310 = add <4 x i32> %309, <i32 1, i32 1, i32 1, i32 1>
  %311 = urem <4 x i32> %310, <i32 80, i32 80, i32 80, i32 80>
  %312 = sitofp <4 x i32> %311 to <4 x double>
  %313 = fmul fast <4 x double> %312, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %314 = shl i64 %index1335, 3
  %315 = add i64 %314, %307
  %316 = getelementptr i8, i8* %call1, i64 %315
  %317 = bitcast i8* %316 to <4 x double>*
  store <4 x double> %313, <4 x double>* %317, align 8, !alias.scope !105, !noalias !110
  %index.next1336 = add i64 %index1335, 4
  %vec.ind.next1342 = add <4 x i32> %vec.ind1341, <i32 4, i32 4, i32 4, i32 4>
  %318 = icmp eq i64 %index.next1336, 32
  br i1 %318, label %polly.loop_exit886.2, label %vector.body1333, !llvm.loop !115

polly.loop_exit886.2:                             ; preds = %vector.body1333
  %polly.indvar_next882.2 = add nuw nsw i64 %polly.indvar881.2, 1
  %exitcond979.2.not = icmp eq i64 %polly.indvar_next882.2, 16
  br i1 %exitcond979.2.not, label %polly.loop_header878.1.2, label %polly.loop_header878.2

polly.loop_header878.1.2:                         ; preds = %polly.loop_exit886.2, %polly.loop_exit886.1.2
  %polly.indvar881.1.2 = phi i64 [ %polly.indvar_next882.1.2, %polly.loop_exit886.1.2 ], [ 0, %polly.loop_exit886.2 ]
  %319 = add nuw nsw i64 %polly.indvar881.1.2, 64
  %320 = mul nuw nsw i64 %319, 480
  %321 = trunc i64 %319 to i32
  %broadcast.splatinsert1355 = insertelement <4 x i32> poison, i32 %321, i32 0
  %broadcast.splat1356 = shufflevector <4 x i32> %broadcast.splatinsert1355, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1347

vector.body1347:                                  ; preds = %vector.body1347, %polly.loop_header878.1.2
  %index1349 = phi i64 [ 0, %polly.loop_header878.1.2 ], [ %index.next1350, %vector.body1347 ]
  %vec.ind1353 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header878.1.2 ], [ %vec.ind.next1354, %vector.body1347 ]
  %322 = add nuw nsw <4 x i64> %vec.ind1353, <i64 32, i64 32, i64 32, i64 32>
  %323 = trunc <4 x i64> %322 to <4 x i32>
  %324 = mul <4 x i32> %broadcast.splat1356, %323
  %325 = add <4 x i32> %324, <i32 1, i32 1, i32 1, i32 1>
  %326 = urem <4 x i32> %325, <i32 80, i32 80, i32 80, i32 80>
  %327 = sitofp <4 x i32> %326 to <4 x double>
  %328 = fmul fast <4 x double> %327, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %329 = extractelement <4 x i64> %322, i32 0
  %330 = shl i64 %329, 3
  %331 = add i64 %330, %320
  %332 = getelementptr i8, i8* %call1, i64 %331
  %333 = bitcast i8* %332 to <4 x double>*
  store <4 x double> %328, <4 x double>* %333, align 8, !alias.scope !105, !noalias !110
  %index.next1350 = add i64 %index1349, 4
  %vec.ind.next1354 = add <4 x i64> %vec.ind1353, <i64 4, i64 4, i64 4, i64 4>
  %334 = icmp eq i64 %index.next1350, 28
  br i1 %334, label %polly.loop_exit886.1.2, label %vector.body1347, !llvm.loop !116

polly.loop_exit886.1.2:                           ; preds = %vector.body1347
  %polly.indvar_next882.1.2 = add nuw nsw i64 %polly.indvar881.1.2, 1
  %exitcond979.1.2.not = icmp eq i64 %polly.indvar_next882.1.2, 16
  br i1 %exitcond979.1.2.not, label %init_array.exit, label %polly.loop_header878.1.2

polly.loop_header852.1:                           ; preds = %polly.loop_exit860, %polly.loop_exit860.1
  %polly.indvar855.1 = phi i64 [ %polly.indvar_next856.1, %polly.loop_exit860.1 ], [ 0, %polly.loop_exit860 ]
  %335 = mul nuw nsw i64 %polly.indvar855.1, 480
  %336 = trunc i64 %polly.indvar855.1 to i32
  %broadcast.splatinsert1225 = insertelement <4 x i32> poison, i32 %336, i32 0
  %broadcast.splat1226 = shufflevector <4 x i32> %broadcast.splatinsert1225, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1217

vector.body1217:                                  ; preds = %vector.body1217, %polly.loop_header852.1
  %index1219 = phi i64 [ 0, %polly.loop_header852.1 ], [ %index.next1220, %vector.body1217 ]
  %vec.ind1223 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header852.1 ], [ %vec.ind.next1224, %vector.body1217 ]
  %337 = add nuw nsw <4 x i64> %vec.ind1223, <i64 32, i64 32, i64 32, i64 32>
  %338 = trunc <4 x i64> %337 to <4 x i32>
  %339 = mul <4 x i32> %broadcast.splat1226, %338
  %340 = add <4 x i32> %339, <i32 2, i32 2, i32 2, i32 2>
  %341 = urem <4 x i32> %340, <i32 60, i32 60, i32 60, i32 60>
  %342 = sitofp <4 x i32> %341 to <4 x double>
  %343 = fmul fast <4 x double> %342, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %344 = extractelement <4 x i64> %337, i32 0
  %345 = shl i64 %344, 3
  %346 = add i64 %345, %335
  %347 = getelementptr i8, i8* %call2, i64 %346
  %348 = bitcast i8* %347 to <4 x double>*
  store <4 x double> %343, <4 x double>* %348, align 8, !alias.scope !106, !noalias !108
  %index.next1220 = add i64 %index1219, 4
  %vec.ind.next1224 = add <4 x i64> %vec.ind1223, <i64 4, i64 4, i64 4, i64 4>
  %349 = icmp eq i64 %index.next1220, 28
  br i1 %349, label %polly.loop_exit860.1, label %vector.body1217, !llvm.loop !117

polly.loop_exit860.1:                             ; preds = %vector.body1217
  %polly.indvar_next856.1 = add nuw nsw i64 %polly.indvar855.1, 1
  %exitcond985.1.not = icmp eq i64 %polly.indvar_next856.1, 32
  br i1 %exitcond985.1.not, label %polly.loop_header852.11016, label %polly.loop_header852.1

polly.loop_header852.11016:                       ; preds = %polly.loop_exit860.1, %polly.loop_exit860.11027
  %polly.indvar855.11015 = phi i64 [ %polly.indvar_next856.11025, %polly.loop_exit860.11027 ], [ 0, %polly.loop_exit860.1 ]
  %350 = add nuw nsw i64 %polly.indvar855.11015, 32
  %351 = mul nuw nsw i64 %350, 480
  %352 = trunc i64 %350 to i32
  %broadcast.splatinsert1239 = insertelement <4 x i32> poison, i32 %352, i32 0
  %broadcast.splat1240 = shufflevector <4 x i32> %broadcast.splatinsert1239, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1229

vector.body1229:                                  ; preds = %vector.body1229, %polly.loop_header852.11016
  %index1231 = phi i64 [ 0, %polly.loop_header852.11016 ], [ %index.next1232, %vector.body1229 ]
  %vec.ind1237 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header852.11016 ], [ %vec.ind.next1238, %vector.body1229 ]
  %353 = mul <4 x i32> %vec.ind1237, %broadcast.splat1240
  %354 = add <4 x i32> %353, <i32 2, i32 2, i32 2, i32 2>
  %355 = urem <4 x i32> %354, <i32 60, i32 60, i32 60, i32 60>
  %356 = sitofp <4 x i32> %355 to <4 x double>
  %357 = fmul fast <4 x double> %356, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %358 = shl i64 %index1231, 3
  %359 = add i64 %358, %351
  %360 = getelementptr i8, i8* %call2, i64 %359
  %361 = bitcast i8* %360 to <4 x double>*
  store <4 x double> %357, <4 x double>* %361, align 8, !alias.scope !106, !noalias !108
  %index.next1232 = add i64 %index1231, 4
  %vec.ind.next1238 = add <4 x i32> %vec.ind1237, <i32 4, i32 4, i32 4, i32 4>
  %362 = icmp eq i64 %index.next1232, 32
  br i1 %362, label %polly.loop_exit860.11027, label %vector.body1229, !llvm.loop !118

polly.loop_exit860.11027:                         ; preds = %vector.body1229
  %polly.indvar_next856.11025 = add nuw nsw i64 %polly.indvar855.11015, 1
  %exitcond985.11026.not = icmp eq i64 %polly.indvar_next856.11025, 32
  br i1 %exitcond985.11026.not, label %polly.loop_header852.1.1, label %polly.loop_header852.11016

polly.loop_header852.1.1:                         ; preds = %polly.loop_exit860.11027, %polly.loop_exit860.1.1
  %polly.indvar855.1.1 = phi i64 [ %polly.indvar_next856.1.1, %polly.loop_exit860.1.1 ], [ 0, %polly.loop_exit860.11027 ]
  %363 = add nuw nsw i64 %polly.indvar855.1.1, 32
  %364 = mul nuw nsw i64 %363, 480
  %365 = trunc i64 %363 to i32
  %broadcast.splatinsert1251 = insertelement <4 x i32> poison, i32 %365, i32 0
  %broadcast.splat1252 = shufflevector <4 x i32> %broadcast.splatinsert1251, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1243

vector.body1243:                                  ; preds = %vector.body1243, %polly.loop_header852.1.1
  %index1245 = phi i64 [ 0, %polly.loop_header852.1.1 ], [ %index.next1246, %vector.body1243 ]
  %vec.ind1249 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header852.1.1 ], [ %vec.ind.next1250, %vector.body1243 ]
  %366 = add nuw nsw <4 x i64> %vec.ind1249, <i64 32, i64 32, i64 32, i64 32>
  %367 = trunc <4 x i64> %366 to <4 x i32>
  %368 = mul <4 x i32> %broadcast.splat1252, %367
  %369 = add <4 x i32> %368, <i32 2, i32 2, i32 2, i32 2>
  %370 = urem <4 x i32> %369, <i32 60, i32 60, i32 60, i32 60>
  %371 = sitofp <4 x i32> %370 to <4 x double>
  %372 = fmul fast <4 x double> %371, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %373 = extractelement <4 x i64> %366, i32 0
  %374 = shl i64 %373, 3
  %375 = add i64 %374, %364
  %376 = getelementptr i8, i8* %call2, i64 %375
  %377 = bitcast i8* %376 to <4 x double>*
  store <4 x double> %372, <4 x double>* %377, align 8, !alias.scope !106, !noalias !108
  %index.next1246 = add i64 %index1245, 4
  %vec.ind.next1250 = add <4 x i64> %vec.ind1249, <i64 4, i64 4, i64 4, i64 4>
  %378 = icmp eq i64 %index.next1246, 28
  br i1 %378, label %polly.loop_exit860.1.1, label %vector.body1243, !llvm.loop !119

polly.loop_exit860.1.1:                           ; preds = %vector.body1243
  %polly.indvar_next856.1.1 = add nuw nsw i64 %polly.indvar855.1.1, 1
  %exitcond985.1.1.not = icmp eq i64 %polly.indvar_next856.1.1, 32
  br i1 %exitcond985.1.1.not, label %polly.loop_header852.2, label %polly.loop_header852.1.1

polly.loop_header852.2:                           ; preds = %polly.loop_exit860.1.1, %polly.loop_exit860.2
  %polly.indvar855.2 = phi i64 [ %polly.indvar_next856.2, %polly.loop_exit860.2 ], [ 0, %polly.loop_exit860.1.1 ]
  %379 = add nuw nsw i64 %polly.indvar855.2, 64
  %380 = mul nuw nsw i64 %379, 480
  %381 = trunc i64 %379 to i32
  %broadcast.splatinsert1265 = insertelement <4 x i32> poison, i32 %381, i32 0
  %broadcast.splat1266 = shufflevector <4 x i32> %broadcast.splatinsert1265, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1255

vector.body1255:                                  ; preds = %vector.body1255, %polly.loop_header852.2
  %index1257 = phi i64 [ 0, %polly.loop_header852.2 ], [ %index.next1258, %vector.body1255 ]
  %vec.ind1263 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header852.2 ], [ %vec.ind.next1264, %vector.body1255 ]
  %382 = mul <4 x i32> %vec.ind1263, %broadcast.splat1266
  %383 = add <4 x i32> %382, <i32 2, i32 2, i32 2, i32 2>
  %384 = urem <4 x i32> %383, <i32 60, i32 60, i32 60, i32 60>
  %385 = sitofp <4 x i32> %384 to <4 x double>
  %386 = fmul fast <4 x double> %385, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %387 = shl i64 %index1257, 3
  %388 = add i64 %387, %380
  %389 = getelementptr i8, i8* %call2, i64 %388
  %390 = bitcast i8* %389 to <4 x double>*
  store <4 x double> %386, <4 x double>* %390, align 8, !alias.scope !106, !noalias !108
  %index.next1258 = add i64 %index1257, 4
  %vec.ind.next1264 = add <4 x i32> %vec.ind1263, <i32 4, i32 4, i32 4, i32 4>
  %391 = icmp eq i64 %index.next1258, 32
  br i1 %391, label %polly.loop_exit860.2, label %vector.body1255, !llvm.loop !120

polly.loop_exit860.2:                             ; preds = %vector.body1255
  %polly.indvar_next856.2 = add nuw nsw i64 %polly.indvar855.2, 1
  %exitcond985.2.not = icmp eq i64 %polly.indvar_next856.2, 16
  br i1 %exitcond985.2.not, label %polly.loop_header852.1.2, label %polly.loop_header852.2

polly.loop_header852.1.2:                         ; preds = %polly.loop_exit860.2, %polly.loop_exit860.1.2
  %polly.indvar855.1.2 = phi i64 [ %polly.indvar_next856.1.2, %polly.loop_exit860.1.2 ], [ 0, %polly.loop_exit860.2 ]
  %392 = add nuw nsw i64 %polly.indvar855.1.2, 64
  %393 = mul nuw nsw i64 %392, 480
  %394 = trunc i64 %392 to i32
  %broadcast.splatinsert1277 = insertelement <4 x i32> poison, i32 %394, i32 0
  %broadcast.splat1278 = shufflevector <4 x i32> %broadcast.splatinsert1277, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1269

vector.body1269:                                  ; preds = %vector.body1269, %polly.loop_header852.1.2
  %index1271 = phi i64 [ 0, %polly.loop_header852.1.2 ], [ %index.next1272, %vector.body1269 ]
  %vec.ind1275 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header852.1.2 ], [ %vec.ind.next1276, %vector.body1269 ]
  %395 = add nuw nsw <4 x i64> %vec.ind1275, <i64 32, i64 32, i64 32, i64 32>
  %396 = trunc <4 x i64> %395 to <4 x i32>
  %397 = mul <4 x i32> %broadcast.splat1278, %396
  %398 = add <4 x i32> %397, <i32 2, i32 2, i32 2, i32 2>
  %399 = urem <4 x i32> %398, <i32 60, i32 60, i32 60, i32 60>
  %400 = sitofp <4 x i32> %399 to <4 x double>
  %401 = fmul fast <4 x double> %400, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %402 = extractelement <4 x i64> %395, i32 0
  %403 = shl i64 %402, 3
  %404 = add i64 %403, %393
  %405 = getelementptr i8, i8* %call2, i64 %404
  %406 = bitcast i8* %405 to <4 x double>*
  store <4 x double> %401, <4 x double>* %406, align 8, !alias.scope !106, !noalias !108
  %index.next1272 = add i64 %index1271, 4
  %vec.ind.next1276 = add <4 x i64> %vec.ind1275, <i64 4, i64 4, i64 4, i64 4>
  %407 = icmp eq i64 %index.next1272, 28
  br i1 %407, label %polly.loop_exit860.1.2, label %vector.body1269, !llvm.loop !121

polly.loop_exit860.1.2:                           ; preds = %vector.body1269
  %polly.indvar_next856.1.2 = add nuw nsw i64 %polly.indvar855.1.2, 1
  %exitcond985.1.2.not = icmp eq i64 %polly.indvar_next856.1.2, 16
  br i1 %exitcond985.1.2.not, label %polly.loop_header878, label %polly.loop_header852.1.2

polly.loop_header825.1:                           ; preds = %polly.loop_exit833, %polly.loop_exit833.1
  %polly.indvar828.1 = phi i64 [ %polly.indvar_next829.1, %polly.loop_exit833.1 ], [ 0, %polly.loop_exit833 ]
  %408 = mul nuw nsw i64 %polly.indvar828.1, 640
  %409 = trunc i64 %polly.indvar828.1 to i32
  %broadcast.splatinsert1111 = insertelement <4 x i32> poison, i32 %409, i32 0
  %broadcast.splat1112 = shufflevector <4 x i32> %broadcast.splatinsert1111, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1103

vector.body1103:                                  ; preds = %vector.body1103, %polly.loop_header825.1
  %index1105 = phi i64 [ 0, %polly.loop_header825.1 ], [ %index.next1106, %vector.body1103 ]
  %vec.ind1109 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.1 ], [ %vec.ind.next1110, %vector.body1103 ]
  %410 = add nuw nsw <4 x i64> %vec.ind1109, <i64 32, i64 32, i64 32, i64 32>
  %411 = trunc <4 x i64> %410 to <4 x i32>
  %412 = mul <4 x i32> %broadcast.splat1112, %411
  %413 = add <4 x i32> %412, <i32 3, i32 3, i32 3, i32 3>
  %414 = urem <4 x i32> %413, <i32 80, i32 80, i32 80, i32 80>
  %415 = sitofp <4 x i32> %414 to <4 x double>
  %416 = fmul fast <4 x double> %415, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %417 = extractelement <4 x i64> %410, i32 0
  %418 = shl i64 %417, 3
  %419 = add nuw nsw i64 %418, %408
  %420 = getelementptr i8, i8* %call, i64 %419
  %421 = bitcast i8* %420 to <4 x double>*
  store <4 x double> %416, <4 x double>* %421, align 8, !alias.scope !102, !noalias !104
  %index.next1106 = add i64 %index1105, 4
  %vec.ind.next1110 = add <4 x i64> %vec.ind1109, <i64 4, i64 4, i64 4, i64 4>
  %422 = icmp eq i64 %index.next1106, 32
  br i1 %422, label %polly.loop_exit833.1, label %vector.body1103, !llvm.loop !122

polly.loop_exit833.1:                             ; preds = %vector.body1103
  %polly.indvar_next829.1 = add nuw nsw i64 %polly.indvar828.1, 1
  %exitcond994.1.not = icmp eq i64 %polly.indvar_next829.1, 32
  br i1 %exitcond994.1.not, label %polly.loop_header825.2, label %polly.loop_header825.1

polly.loop_header825.2:                           ; preds = %polly.loop_exit833.1, %polly.loop_exit833.2
  %polly.indvar828.2 = phi i64 [ %polly.indvar_next829.2, %polly.loop_exit833.2 ], [ 0, %polly.loop_exit833.1 ]
  %423 = mul nuw nsw i64 %polly.indvar828.2, 640
  %424 = trunc i64 %polly.indvar828.2 to i32
  %broadcast.splatinsert1123 = insertelement <4 x i32> poison, i32 %424, i32 0
  %broadcast.splat1124 = shufflevector <4 x i32> %broadcast.splatinsert1123, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1115

vector.body1115:                                  ; preds = %vector.body1115, %polly.loop_header825.2
  %index1117 = phi i64 [ 0, %polly.loop_header825.2 ], [ %index.next1118, %vector.body1115 ]
  %vec.ind1121 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.2 ], [ %vec.ind.next1122, %vector.body1115 ]
  %425 = add nuw nsw <4 x i64> %vec.ind1121, <i64 64, i64 64, i64 64, i64 64>
  %426 = trunc <4 x i64> %425 to <4 x i32>
  %427 = mul <4 x i32> %broadcast.splat1124, %426
  %428 = add <4 x i32> %427, <i32 3, i32 3, i32 3, i32 3>
  %429 = urem <4 x i32> %428, <i32 80, i32 80, i32 80, i32 80>
  %430 = sitofp <4 x i32> %429 to <4 x double>
  %431 = fmul fast <4 x double> %430, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %432 = extractelement <4 x i64> %425, i32 0
  %433 = shl i64 %432, 3
  %434 = add nuw nsw i64 %433, %423
  %435 = getelementptr i8, i8* %call, i64 %434
  %436 = bitcast i8* %435 to <4 x double>*
  store <4 x double> %431, <4 x double>* %436, align 8, !alias.scope !102, !noalias !104
  %index.next1118 = add i64 %index1117, 4
  %vec.ind.next1122 = add <4 x i64> %vec.ind1121, <i64 4, i64 4, i64 4, i64 4>
  %437 = icmp eq i64 %index.next1118, 16
  br i1 %437, label %polly.loop_exit833.2, label %vector.body1115, !llvm.loop !123

polly.loop_exit833.2:                             ; preds = %vector.body1115
  %polly.indvar_next829.2 = add nuw nsw i64 %polly.indvar828.2, 1
  %exitcond994.2.not = icmp eq i64 %polly.indvar_next829.2, 32
  br i1 %exitcond994.2.not, label %polly.loop_header825.11030, label %polly.loop_header825.2

polly.loop_header825.11030:                       ; preds = %polly.loop_exit833.2, %polly.loop_exit833.11041
  %polly.indvar828.11029 = phi i64 [ %polly.indvar_next829.11039, %polly.loop_exit833.11041 ], [ 0, %polly.loop_exit833.2 ]
  %438 = add nuw nsw i64 %polly.indvar828.11029, 32
  %439 = mul nuw nsw i64 %438, 640
  %440 = trunc i64 %438 to i32
  %broadcast.splatinsert1137 = insertelement <4 x i32> poison, i32 %440, i32 0
  %broadcast.splat1138 = shufflevector <4 x i32> %broadcast.splatinsert1137, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1127

vector.body1127:                                  ; preds = %vector.body1127, %polly.loop_header825.11030
  %index1129 = phi i64 [ 0, %polly.loop_header825.11030 ], [ %index.next1130, %vector.body1127 ]
  %vec.ind1135 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header825.11030 ], [ %vec.ind.next1136, %vector.body1127 ]
  %441 = mul <4 x i32> %vec.ind1135, %broadcast.splat1138
  %442 = add <4 x i32> %441, <i32 3, i32 3, i32 3, i32 3>
  %443 = urem <4 x i32> %442, <i32 80, i32 80, i32 80, i32 80>
  %444 = sitofp <4 x i32> %443 to <4 x double>
  %445 = fmul fast <4 x double> %444, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %446 = shl i64 %index1129, 3
  %447 = add nuw nsw i64 %446, %439
  %448 = getelementptr i8, i8* %call, i64 %447
  %449 = bitcast i8* %448 to <4 x double>*
  store <4 x double> %445, <4 x double>* %449, align 8, !alias.scope !102, !noalias !104
  %index.next1130 = add i64 %index1129, 4
  %vec.ind.next1136 = add <4 x i32> %vec.ind1135, <i32 4, i32 4, i32 4, i32 4>
  %450 = icmp eq i64 %index.next1130, 32
  br i1 %450, label %polly.loop_exit833.11041, label %vector.body1127, !llvm.loop !124

polly.loop_exit833.11041:                         ; preds = %vector.body1127
  %polly.indvar_next829.11039 = add nuw nsw i64 %polly.indvar828.11029, 1
  %exitcond994.11040.not = icmp eq i64 %polly.indvar_next829.11039, 32
  br i1 %exitcond994.11040.not, label %polly.loop_header825.1.1, label %polly.loop_header825.11030

polly.loop_header825.1.1:                         ; preds = %polly.loop_exit833.11041, %polly.loop_exit833.1.1
  %polly.indvar828.1.1 = phi i64 [ %polly.indvar_next829.1.1, %polly.loop_exit833.1.1 ], [ 0, %polly.loop_exit833.11041 ]
  %451 = add nuw nsw i64 %polly.indvar828.1.1, 32
  %452 = mul nuw nsw i64 %451, 640
  %453 = trunc i64 %451 to i32
  %broadcast.splatinsert1149 = insertelement <4 x i32> poison, i32 %453, i32 0
  %broadcast.splat1150 = shufflevector <4 x i32> %broadcast.splatinsert1149, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1141

vector.body1141:                                  ; preds = %vector.body1141, %polly.loop_header825.1.1
  %index1143 = phi i64 [ 0, %polly.loop_header825.1.1 ], [ %index.next1144, %vector.body1141 ]
  %vec.ind1147 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.1.1 ], [ %vec.ind.next1148, %vector.body1141 ]
  %454 = add nuw nsw <4 x i64> %vec.ind1147, <i64 32, i64 32, i64 32, i64 32>
  %455 = trunc <4 x i64> %454 to <4 x i32>
  %456 = mul <4 x i32> %broadcast.splat1150, %455
  %457 = add <4 x i32> %456, <i32 3, i32 3, i32 3, i32 3>
  %458 = urem <4 x i32> %457, <i32 80, i32 80, i32 80, i32 80>
  %459 = sitofp <4 x i32> %458 to <4 x double>
  %460 = fmul fast <4 x double> %459, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %461 = extractelement <4 x i64> %454, i32 0
  %462 = shl i64 %461, 3
  %463 = add nuw nsw i64 %462, %452
  %464 = getelementptr i8, i8* %call, i64 %463
  %465 = bitcast i8* %464 to <4 x double>*
  store <4 x double> %460, <4 x double>* %465, align 8, !alias.scope !102, !noalias !104
  %index.next1144 = add i64 %index1143, 4
  %vec.ind.next1148 = add <4 x i64> %vec.ind1147, <i64 4, i64 4, i64 4, i64 4>
  %466 = icmp eq i64 %index.next1144, 32
  br i1 %466, label %polly.loop_exit833.1.1, label %vector.body1141, !llvm.loop !125

polly.loop_exit833.1.1:                           ; preds = %vector.body1141
  %polly.indvar_next829.1.1 = add nuw nsw i64 %polly.indvar828.1.1, 1
  %exitcond994.1.1.not = icmp eq i64 %polly.indvar_next829.1.1, 32
  br i1 %exitcond994.1.1.not, label %polly.loop_header825.2.1, label %polly.loop_header825.1.1

polly.loop_header825.2.1:                         ; preds = %polly.loop_exit833.1.1, %polly.loop_exit833.2.1
  %polly.indvar828.2.1 = phi i64 [ %polly.indvar_next829.2.1, %polly.loop_exit833.2.1 ], [ 0, %polly.loop_exit833.1.1 ]
  %467 = add nuw nsw i64 %polly.indvar828.2.1, 32
  %468 = mul nuw nsw i64 %467, 640
  %469 = trunc i64 %467 to i32
  %broadcast.splatinsert1161 = insertelement <4 x i32> poison, i32 %469, i32 0
  %broadcast.splat1162 = shufflevector <4 x i32> %broadcast.splatinsert1161, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1153

vector.body1153:                                  ; preds = %vector.body1153, %polly.loop_header825.2.1
  %index1155 = phi i64 [ 0, %polly.loop_header825.2.1 ], [ %index.next1156, %vector.body1153 ]
  %vec.ind1159 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.2.1 ], [ %vec.ind.next1160, %vector.body1153 ]
  %470 = add nuw nsw <4 x i64> %vec.ind1159, <i64 64, i64 64, i64 64, i64 64>
  %471 = trunc <4 x i64> %470 to <4 x i32>
  %472 = mul <4 x i32> %broadcast.splat1162, %471
  %473 = add <4 x i32> %472, <i32 3, i32 3, i32 3, i32 3>
  %474 = urem <4 x i32> %473, <i32 80, i32 80, i32 80, i32 80>
  %475 = sitofp <4 x i32> %474 to <4 x double>
  %476 = fmul fast <4 x double> %475, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %477 = extractelement <4 x i64> %470, i32 0
  %478 = shl i64 %477, 3
  %479 = add nuw nsw i64 %478, %468
  %480 = getelementptr i8, i8* %call, i64 %479
  %481 = bitcast i8* %480 to <4 x double>*
  store <4 x double> %476, <4 x double>* %481, align 8, !alias.scope !102, !noalias !104
  %index.next1156 = add i64 %index1155, 4
  %vec.ind.next1160 = add <4 x i64> %vec.ind1159, <i64 4, i64 4, i64 4, i64 4>
  %482 = icmp eq i64 %index.next1156, 16
  br i1 %482, label %polly.loop_exit833.2.1, label %vector.body1153, !llvm.loop !126

polly.loop_exit833.2.1:                           ; preds = %vector.body1153
  %polly.indvar_next829.2.1 = add nuw nsw i64 %polly.indvar828.2.1, 1
  %exitcond994.2.1.not = icmp eq i64 %polly.indvar_next829.2.1, 32
  br i1 %exitcond994.2.1.not, label %polly.loop_header825.21044, label %polly.loop_header825.2.1

polly.loop_header825.21044:                       ; preds = %polly.loop_exit833.2.1, %polly.loop_exit833.21055
  %polly.indvar828.21043 = phi i64 [ %polly.indvar_next829.21053, %polly.loop_exit833.21055 ], [ 0, %polly.loop_exit833.2.1 ]
  %483 = add nuw nsw i64 %polly.indvar828.21043, 64
  %484 = mul nuw nsw i64 %483, 640
  %485 = trunc i64 %483 to i32
  %broadcast.splatinsert1175 = insertelement <4 x i32> poison, i32 %485, i32 0
  %broadcast.splat1176 = shufflevector <4 x i32> %broadcast.splatinsert1175, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1165

vector.body1165:                                  ; preds = %vector.body1165, %polly.loop_header825.21044
  %index1167 = phi i64 [ 0, %polly.loop_header825.21044 ], [ %index.next1168, %vector.body1165 ]
  %vec.ind1173 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header825.21044 ], [ %vec.ind.next1174, %vector.body1165 ]
  %486 = mul <4 x i32> %vec.ind1173, %broadcast.splat1176
  %487 = add <4 x i32> %486, <i32 3, i32 3, i32 3, i32 3>
  %488 = urem <4 x i32> %487, <i32 80, i32 80, i32 80, i32 80>
  %489 = sitofp <4 x i32> %488 to <4 x double>
  %490 = fmul fast <4 x double> %489, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %491 = shl i64 %index1167, 3
  %492 = add nuw nsw i64 %491, %484
  %493 = getelementptr i8, i8* %call, i64 %492
  %494 = bitcast i8* %493 to <4 x double>*
  store <4 x double> %490, <4 x double>* %494, align 8, !alias.scope !102, !noalias !104
  %index.next1168 = add i64 %index1167, 4
  %vec.ind.next1174 = add <4 x i32> %vec.ind1173, <i32 4, i32 4, i32 4, i32 4>
  %495 = icmp eq i64 %index.next1168, 32
  br i1 %495, label %polly.loop_exit833.21055, label %vector.body1165, !llvm.loop !127

polly.loop_exit833.21055:                         ; preds = %vector.body1165
  %polly.indvar_next829.21053 = add nuw nsw i64 %polly.indvar828.21043, 1
  %exitcond994.21054.not = icmp eq i64 %polly.indvar_next829.21053, 16
  br i1 %exitcond994.21054.not, label %polly.loop_header825.1.2, label %polly.loop_header825.21044

polly.loop_header825.1.2:                         ; preds = %polly.loop_exit833.21055, %polly.loop_exit833.1.2
  %polly.indvar828.1.2 = phi i64 [ %polly.indvar_next829.1.2, %polly.loop_exit833.1.2 ], [ 0, %polly.loop_exit833.21055 ]
  %496 = add nuw nsw i64 %polly.indvar828.1.2, 64
  %497 = mul nuw nsw i64 %496, 640
  %498 = trunc i64 %496 to i32
  %broadcast.splatinsert1187 = insertelement <4 x i32> poison, i32 %498, i32 0
  %broadcast.splat1188 = shufflevector <4 x i32> %broadcast.splatinsert1187, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1179

vector.body1179:                                  ; preds = %vector.body1179, %polly.loop_header825.1.2
  %index1181 = phi i64 [ 0, %polly.loop_header825.1.2 ], [ %index.next1182, %vector.body1179 ]
  %vec.ind1185 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.1.2 ], [ %vec.ind.next1186, %vector.body1179 ]
  %499 = add nuw nsw <4 x i64> %vec.ind1185, <i64 32, i64 32, i64 32, i64 32>
  %500 = trunc <4 x i64> %499 to <4 x i32>
  %501 = mul <4 x i32> %broadcast.splat1188, %500
  %502 = add <4 x i32> %501, <i32 3, i32 3, i32 3, i32 3>
  %503 = urem <4 x i32> %502, <i32 80, i32 80, i32 80, i32 80>
  %504 = sitofp <4 x i32> %503 to <4 x double>
  %505 = fmul fast <4 x double> %504, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %506 = extractelement <4 x i64> %499, i32 0
  %507 = shl i64 %506, 3
  %508 = add nuw nsw i64 %507, %497
  %509 = getelementptr i8, i8* %call, i64 %508
  %510 = bitcast i8* %509 to <4 x double>*
  store <4 x double> %505, <4 x double>* %510, align 8, !alias.scope !102, !noalias !104
  %index.next1182 = add i64 %index1181, 4
  %vec.ind.next1186 = add <4 x i64> %vec.ind1185, <i64 4, i64 4, i64 4, i64 4>
  %511 = icmp eq i64 %index.next1182, 32
  br i1 %511, label %polly.loop_exit833.1.2, label %vector.body1179, !llvm.loop !128

polly.loop_exit833.1.2:                           ; preds = %vector.body1179
  %polly.indvar_next829.1.2 = add nuw nsw i64 %polly.indvar828.1.2, 1
  %exitcond994.1.2.not = icmp eq i64 %polly.indvar_next829.1.2, 16
  br i1 %exitcond994.1.2.not, label %polly.loop_header825.2.2, label %polly.loop_header825.1.2

polly.loop_header825.2.2:                         ; preds = %polly.loop_exit833.1.2, %polly.loop_exit833.2.2
  %polly.indvar828.2.2 = phi i64 [ %polly.indvar_next829.2.2, %polly.loop_exit833.2.2 ], [ 0, %polly.loop_exit833.1.2 ]
  %512 = add nuw nsw i64 %polly.indvar828.2.2, 64
  %513 = mul nuw nsw i64 %512, 640
  %514 = trunc i64 %512 to i32
  %broadcast.splatinsert1199 = insertelement <4 x i32> poison, i32 %514, i32 0
  %broadcast.splat1200 = shufflevector <4 x i32> %broadcast.splatinsert1199, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1191

vector.body1191:                                  ; preds = %vector.body1191, %polly.loop_header825.2.2
  %index1193 = phi i64 [ 0, %polly.loop_header825.2.2 ], [ %index.next1194, %vector.body1191 ]
  %vec.ind1197 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.2.2 ], [ %vec.ind.next1198, %vector.body1191 ]
  %515 = add nuw nsw <4 x i64> %vec.ind1197, <i64 64, i64 64, i64 64, i64 64>
  %516 = trunc <4 x i64> %515 to <4 x i32>
  %517 = mul <4 x i32> %broadcast.splat1200, %516
  %518 = add <4 x i32> %517, <i32 3, i32 3, i32 3, i32 3>
  %519 = urem <4 x i32> %518, <i32 80, i32 80, i32 80, i32 80>
  %520 = sitofp <4 x i32> %519 to <4 x double>
  %521 = fmul fast <4 x double> %520, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %522 = extractelement <4 x i64> %515, i32 0
  %523 = shl i64 %522, 3
  %524 = add nuw nsw i64 %523, %513
  %525 = getelementptr i8, i8* %call, i64 %524
  %526 = bitcast i8* %525 to <4 x double>*
  store <4 x double> %521, <4 x double>* %526, align 8, !alias.scope !102, !noalias !104
  %index.next1194 = add i64 %index1193, 4
  %vec.ind.next1198 = add <4 x i64> %vec.ind1197, <i64 4, i64 4, i64 4, i64 4>
  %527 = icmp eq i64 %index.next1194, 16
  br i1 %527, label %polly.loop_exit833.2.2, label %vector.body1191, !llvm.loop !129

polly.loop_exit833.2.2:                           ; preds = %vector.body1191
  %polly.indvar_next829.2.2 = add nuw nsw i64 %polly.indvar828.2.2, 1
  %exitcond994.2.2.not = icmp eq i64 %polly.indvar_next829.2.2, 16
  br i1 %exitcond994.2.2.not, label %polly.loop_header852, label %polly.loop_header825.2.2
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
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: argmemonly nofree nosync nounwind readonly willreturn
declare <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>*, i32 immarg, <4 x i1>, <4 x double>) #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.v4f64.p0v4f64(<4 x double>, <4 x double>*, i32 immarg, <4 x i1>) #7

attributes #0 = { nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #1 = { "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #3 = { nofree nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #4 = { nofree nounwind }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nosync nounwind readonly willreturn }
attributes #7 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 50}
!36 = !{!"llvm.loop.tile.followup_floor", !37}
!37 = distinct !{!37, !12, !38}
!38 = !{!"llvm.loop.id", !"j1"}
!39 = !{!"llvm.loop.tile.followup_tile", !40}
!40 = distinct !{!40, !12, !24, !41, !42, !43, !44}
!41 = !{!"llvm.loop.id", !"j2"}
!42 = !{!"llvm.data.pack.enable", i1 true}
!43 = !{!"llvm.data.pack.array", !21}
!44 = !{!"llvm.data.pack.allocate", !"malloc"}
!45 = distinct !{!45, !12, !24, !46, !47, !48, !49, !50, !54}
!46 = !{!"llvm.loop.id", !"i"}
!47 = !{!"llvm.loop.tile.enable", i1 true}
!48 = !{!"llvm.loop.tile.depth", i32 3}
!49 = !{!"llvm.loop.tile.size", i32 128}
!50 = !{!"llvm.loop.tile.followup_floor", !51}
!51 = distinct !{!51, !12, !24, !52, !42, !53, !44}
!52 = !{!"llvm.loop.id", !"i1"}
!53 = !{!"llvm.data.pack.array", !22}
!54 = !{!"llvm.loop.tile.followup_tile", !55}
!55 = distinct !{!55, !12, !56}
!56 = !{!"llvm.loop.id", !"i2"}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = distinct !{!59, !12, !13}
!60 = distinct !{!60, !12, !13}
!61 = !{!62, !62, i64 0}
!62 = !{!"any pointer", !4, i64 0}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !66, !"polly.alias.scope.MemRef_call"}
!66 = distinct !{!66, !"polly.alias.scope.domain"}
!67 = !{!68, !69, !70, !71}
!68 = distinct !{!68, !66, !"polly.alias.scope.MemRef_call1"}
!69 = distinct !{!69, !66, !"polly.alias.scope.MemRef_call2"}
!70 = distinct !{!70, !66, !"polly.alias.scope.Packed_MemRef_call1"}
!71 = distinct !{!71, !66, !"polly.alias.scope.Packed_MemRef_call2"}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !74, !13}
!74 = !{!"llvm.loop.unroll.runtime.disable"}
!75 = !{!65, !68, !70, !71}
!76 = !{!65, !69, !70, !71}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82, !83, !84}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !79, !"polly.alias.scope.Packed_MemRef_call1"}
!84 = distinct !{!84, !79, !"polly.alias.scope.Packed_MemRef_call2"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !74, !13}
!87 = !{!78, !81, !83, !84}
!88 = !{!78, !82, !83, !84}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !91, !"polly.alias.scope.MemRef_call"}
!91 = distinct !{!91, !"polly.alias.scope.domain"}
!92 = !{!93, !94, !95, !96}
!93 = distinct !{!93, !91, !"polly.alias.scope.MemRef_call1"}
!94 = distinct !{!94, !91, !"polly.alias.scope.MemRef_call2"}
!95 = distinct !{!95, !91, !"polly.alias.scope.Packed_MemRef_call1"}
!96 = distinct !{!96, !91, !"polly.alias.scope.Packed_MemRef_call2"}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !74, !13}
!99 = !{!90, !93, !95, !96}
!100 = !{!90, !94, !95, !96}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !103, !"polly.alias.scope.MemRef_call"}
!103 = distinct !{!103, !"polly.alias.scope.domain"}
!104 = !{!105, !106}
!105 = distinct !{!105, !103, !"polly.alias.scope.MemRef_call1"}
!106 = distinct !{!106, !103, !"polly.alias.scope.MemRef_call2"}
!107 = distinct !{!107, !13}
!108 = !{!105, !102}
!109 = distinct !{!109, !13}
!110 = !{!106, !102}
!111 = distinct !{!111, !13}
!112 = distinct !{!112, !13}
!113 = distinct !{!113, !13}
!114 = distinct !{!114, !13}
!115 = distinct !{!115, !13}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !13}
!126 = distinct !{!126, !13}
!127 = distinct !{!127, !13}
!128 = distinct !{!128, !13}
!129 = distinct !{!129, !13}
