; ModuleID = 'syr2k_recreations//mmp_syr2k_S_123.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_123.c"
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
  %scevgep1071 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1070 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1069 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1068 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1068, %scevgep1071
  %bound1 = icmp ult i8* %scevgep1070, %scevgep1069
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
  br i1 %exitcond18.not.i, label %vector.ph1075, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1075:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1082 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1083 = shufflevector <4 x i64> %broadcast.splatinsert1082, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1074

vector.body1074:                                  ; preds = %vector.body1074, %vector.ph1075
  %index1076 = phi i64 [ 0, %vector.ph1075 ], [ %index.next1077, %vector.body1074 ]
  %vec.ind1080 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1075 ], [ %vec.ind.next1081, %vector.body1074 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1080, %broadcast.splat1083
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv7.i, i64 %index1076
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1077 = add i64 %index1076, 4
  %vec.ind.next1081 = add <4 x i64> %vec.ind1080, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1077, 80
  br i1 %40, label %for.inc41.i, label %vector.body1074, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1074
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1075, !llvm.loop !17

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
  br i1 %min.iters.check, label %for.body3.i46.preheader1498, label %vector.ph1357

vector.ph1357:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1356

vector.body1356:                                  ; preds = %vector.body1356, %vector.ph1357
  %index1358 = phi i64 [ 0, %vector.ph1357 ], [ %index.next1359, %vector.body1356 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i, i64 %index1358
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1359 = add i64 %index1358, 4
  %46 = icmp eq i64 %index.next1359, %n.vec
  br i1 %46, label %middle.block1354, label %vector.body1356, !llvm.loop !18

middle.block1354:                                 ; preds = %vector.body1356
  %cmp.n1361 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1361, label %for.inc6.i, label %for.body3.i46.preheader1498

for.body3.i46.preheader1498:                      ; preds = %for.body3.i46.preheader, %middle.block1354
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1354 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1498, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1498 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1354, %for.cond1.preheader.i45
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting491
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  tail call void (...) @polybench_timer_start() #8
  br i1 %41, label %polly.start291, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1396 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1396, label %for.body3.i60.preheader1496, label %vector.ph1397

vector.ph1397:                                    ; preds = %for.body3.i60.preheader
  %n.vec1399 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1395

vector.body1395:                                  ; preds = %vector.body1395, %vector.ph1397
  %index1400 = phi i64 [ 0, %vector.ph1397 ], [ %index.next1401, %vector.body1395 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i52, i64 %index1400
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1404 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1404, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1401 = add i64 %index1400, 4
  %57 = icmp eq i64 %index.next1401, %n.vec1399
  br i1 %57, label %middle.block1393, label %vector.body1395, !llvm.loop !57

middle.block1393:                                 ; preds = %vector.body1395
  %cmp.n1403 = icmp eq i64 %indvars.iv21.i52, %n.vec1399
  br i1 %cmp.n1403, label %for.inc6.i63, label %for.body3.i60.preheader1496

for.body3.i60.preheader1496:                      ; preds = %for.body3.i60.preheader, %middle.block1393
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1399, %middle.block1393 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1496, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1496 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1393, %for.cond1.preheader.i54
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting292
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  tail call void (...) @polybench_timer_start() #8
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1446 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1446, label %for.body3.i99.preheader1494, label %vector.ph1447

vector.ph1447:                                    ; preds = %for.body3.i99.preheader
  %n.vec1449 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1445

vector.body1445:                                  ; preds = %vector.body1445, %vector.ph1447
  %index1450 = phi i64 [ 0, %vector.ph1447 ], [ %index.next1451, %vector.body1445 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i91, i64 %index1450
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1454 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1454, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1451 = add i64 %index1450, 4
  %68 = icmp eq i64 %index.next1451, %n.vec1449
  br i1 %68, label %middle.block1443, label %vector.body1445, !llvm.loop !59

middle.block1443:                                 ; preds = %vector.body1445
  %cmp.n1453 = icmp eq i64 %indvars.iv21.i91, %n.vec1449
  br i1 %cmp.n1453, label %for.inc6.i102, label %for.body3.i99.preheader1494

for.body3.i99.preheader1494:                      ; preds = %for.body3.i99.preheader, %middle.block1443
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1449, %middle.block1443 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1494, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1494 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1443, %for.cond1.preheader.i93
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
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
  %malloccall = tail call dereferenceable_or_null(12800) i8* @malloc(i64 12800) #8
  %malloccall136 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #8
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1458 = phi i64 [ %indvar.next1459, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1458, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1460 = icmp ult i64 %88, 4
  br i1 %min.iters.check1460, label %polly.loop_header192.preheader, label %vector.ph1461

vector.ph1461:                                    ; preds = %polly.loop_header
  %n.vec1463 = and i64 %88, -4
  br label %vector.body1457

vector.body1457:                                  ; preds = %vector.body1457, %vector.ph1461
  %index1464 = phi i64 [ 0, %vector.ph1461 ], [ %index.next1465, %vector.body1457 ]
  %90 = shl nuw nsw i64 %index1464, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1468 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1468, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1465 = add i64 %index1464, 4
  %95 = icmp eq i64 %index.next1465, %n.vec1463
  br i1 %95, label %middle.block1455, label %vector.body1457, !llvm.loop !72

middle.block1455:                                 ; preds = %vector.body1457
  %cmp.n1467 = icmp eq i64 %88, %n.vec1463
  br i1 %cmp.n1467, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1455
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1463, %middle.block1455 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1455
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond937.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1459 = add i64 %indvar1458, 1
  br i1 %exitcond937.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond936.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond936.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 80
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond935.not = icmp eq i64 %polly.indvar_next204, 60
  br i1 %exitcond935.not, label %polly.loop_header216, label %polly.loop_header200

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
  %exitcond934.not = icmp eq i64 %polly.indvar_next210, 80
  br i1 %exitcond934.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = mul nuw nsw i64 %polly.indvar219, 20
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %exitcond933.not = icmp eq i64 %polly.indvar_next220, 3
  br i1 %exitcond933.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %indvars.iv929 = phi i64 [ %indvars.iv.next930, %polly.loop_exit230 ], [ 80, %polly.loop_header216 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit230 ], [ 0, %polly.loop_header216 ]
  %98 = shl nuw nsw i64 %polly.indvar225, 2
  %99 = mul nsw i64 %polly.indvar225, -4
  %100 = add nuw nsw i64 %98, 4
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit259
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next930 = add nsw i64 %indvars.iv929, -4
  %exitcond932.not = icmp eq i64 %polly.indvar_next226, 20
  br i1 %exitcond932.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit259, %polly.loop_header222
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit259 ], [ 0, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit259 ], [ %98, %polly.loop_header222 ]
  %smin1472 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 3)
  %smin926 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 3)
  %101 = add nsw i64 %polly.indvar231, %99
  %.not = icmp ult i64 %polly.indvar231, %100
  %polly.access.mul.call1251 = mul nuw nsw i64 %polly.indvar231, 60
  br i1 %.not, label %polly.loop_header234.us, label %polly.loop_header234

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.merge.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.merge.us ], [ 0, %polly.loop_header228 ]
  %102 = add nuw nsw i64 %polly.indvar237.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 80
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header234.us
  %polly.indvar243.us = phi i64 [ 0, %polly.loop_header234.us ], [ %polly.indvar_next244.us, %polly.loop_header240.us ]
  %103 = add nuw nsw i64 %polly.indvar243.us, %98
  %polly.access.mul.call1247.us = mul nuw nsw i64 %103, 60
  %polly.access.add.call1248.us = add nuw nsw i64 %polly.access.mul.call1247.us, %102
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
  %exitcond925.not = icmp eq i64 %polly.indvar_next238.us, 20
  br i1 %exitcond925.not, label %polly.loop_preheader258, label %polly.loop_header234.us

polly.loop_exit259:                               ; preds = %polly.loop_exit265
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond931.not = icmp eq i64 %indvars.iv.next, %indvars.iv929
  br i1 %exitcond931.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header228, %polly.then
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.then ], [ 0, %polly.loop_header228 ]
  %104 = add nuw nsw i64 %polly.indvar237, %97
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar237, 80
  br label %polly.loop_header240

polly.loop_header240:                             ; preds = %polly.loop_header240, %polly.loop_header234
  %polly.indvar243 = phi i64 [ 0, %polly.loop_header234 ], [ %polly.indvar_next244, %polly.loop_header240 ]
  %105 = add nuw nsw i64 %polly.indvar243, %98
  %polly.access.mul.call1247 = mul nuw nsw i64 %105, 60
  %polly.access.add.call1248 = add nuw nsw i64 %polly.access.mul.call1247, %104
  %polly.access.call1249 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1248
  %polly.access.call1249.load = load double, double* %polly.access.call1249, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1 = add nuw nsw i64 %polly.indvar243, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1
  store double %polly.access.call1249.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.indvar_next244 = add nuw nsw i64 %polly.indvar243, 1
  %exitcond.not = icmp eq i64 %polly.indvar243, %smin926
  br i1 %exitcond.not, label %polly.then, label %polly.loop_header240

polly.then:                                       ; preds = %polly.loop_header240
  %polly.access.add.call1252 = add nuw nsw i64 %104, %polly.access.mul.call1251
  %polly.access.call1253 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1252
  %polly.access.call1253.load = load double, double* %polly.access.call1253, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1255 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1, %101
  %polly.access.Packed_MemRef_call1256 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255
  store double %polly.access.call1253.load, double* %polly.access.Packed_MemRef_call1256, align 8
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond922.not = icmp eq i64 %polly.indvar_next238, 20
  br i1 %exitcond922.not, label %polly.loop_preheader258, label %polly.loop_header234

polly.loop_header257:                             ; preds = %polly.loop_exit265, %polly.loop_preheader258
  %polly.indvar260 = phi i64 [ 0, %polly.loop_preheader258 ], [ %polly.indvar_next261, %polly.loop_exit265 ]
  %polly.access.mul.Packed_MemRef_call1269 = mul nuw nsw i64 %polly.indvar260, 80
  %106 = add nuw nsw i64 %polly.indvar260, %97
  %polly.access.mul.Packed_MemRef_call2273 = mul nuw nsw i64 %106, 80
  %polly.access.add.Packed_MemRef_call1282 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1269, %101
  %polly.access.Packed_MemRef_call1283 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282
  %_p_scalar_284 = load double, double* %polly.access.Packed_MemRef_call1283, align 8
  %polly.access.add.Packed_MemRef_call2274 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273, %polly.indvar231
  %polly.access.Packed_MemRef_call2275 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2274
  %_p_scalar_276 = load double, double* %polly.access.Packed_MemRef_call2275, align 8
  %broadcast.splatinsert1481 = insertelement <4 x i64> poison, i64 %smin1472, i32 0
  %broadcast.splat1482 = shufflevector <4 x i64> %broadcast.splatinsert1481, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1487 = insertelement <4 x double> poison, double %_p_scalar_276, i32 0
  %broadcast.splat1488 = shufflevector <4 x double> %broadcast.splatinsert1487, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1490 = insertelement <4 x double> poison, double %_p_scalar_284, i32 0
  %broadcast.splat1491 = shufflevector <4 x double> %broadcast.splatinsert1490, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1471

vector.body1471:                                  ; preds = %vector.body1471, %polly.loop_header257
  %index1477 = phi i64 [ 0, %polly.loop_header257 ], [ %index.next1478, %vector.body1471 ]
  %broadcast.splatinsert1483 = insertelement <4 x i64> poison, i64 %index1477, i32 0
  %broadcast.splat1484 = shufflevector <4 x i64> %broadcast.splatinsert1483, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1485 = or <4 x i64> %broadcast.splat1484, <i64 0, i64 1, i64 2, i64 3>
  %107 = icmp ule <4 x i64> %induction1485, %broadcast.splat1482
  %108 = add nuw nsw i64 %index1477, %98
  %109 = add nuw nsw i64 %index1477, %polly.access.mul.Packed_MemRef_call1269
  %110 = getelementptr double, double* %Packed_MemRef_call1, i64 %109
  %111 = bitcast double* %110 to <4 x double>*
  %wide.masked.load1486 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %111, i32 8, <4 x i1> %107, <4 x double> poison)
  %112 = fmul fast <4 x double> %broadcast.splat1488, %wide.masked.load1486
  %113 = add nuw nsw i64 %108, %polly.access.mul.Packed_MemRef_call2273
  %114 = getelementptr double, double* %Packed_MemRef_call2, i64 %113
  %115 = bitcast double* %114 to <4 x double>*
  %wide.masked.load1489 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %115, i32 8, <4 x i1> %107, <4 x double> poison)
  %116 = fmul fast <4 x double> %broadcast.splat1491, %wide.masked.load1489
  %117 = shl i64 %108, 3
  %118 = getelementptr i8, i8* %scevgep285, i64 %117
  %119 = bitcast i8* %118 to <4 x double>*
  %wide.masked.load1492 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %119, i32 8, <4 x i1> %107, <4 x double> poison), !alias.scope !65, !noalias !67
  %120 = fadd fast <4 x double> %116, %112
  %121 = fmul fast <4 x double> %120, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %122 = fadd fast <4 x double> %121, %wide.masked.load1492
  %123 = bitcast i8* %118 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %122, <4 x double>* %123, i32 8, <4 x i1> %107), !alias.scope !65, !noalias !67
  %index.next1478 = add i64 %index1477, 4
  %124 = icmp eq i64 %index1477, 0
  br i1 %124, label %polly.loop_exit265, label %vector.body1471, !llvm.loop !77

polly.loop_exit265:                               ; preds = %vector.body1471
  %polly.indvar_next261 = add nuw nsw i64 %polly.indvar260, 1
  %exitcond928.not = icmp eq i64 %polly.indvar_next261, 20
  br i1 %exitcond928.not, label %polly.loop_exit259, label %polly.loop_header257

polly.loop_preheader258:                          ; preds = %polly.then, %polly.merge.us
  %125 = mul nuw nsw i64 %polly.indvar231, 640
  %scevgep285 = getelementptr i8, i8* %call, i64 %125
  br label %polly.loop_header257

polly.start291:                                   ; preds = %kernel_syr2k.exit
  %malloccall293 = tail call dereferenceable_or_null(12800) i8* @malloc(i64 12800) #8
  %malloccall295 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #8
  br label %polly.loop_header379

polly.exiting292:                                 ; preds = %polly.loop_exit419
  tail call void @free(i8* nonnull %malloccall293)
  tail call void @free(i8* nonnull %malloccall295)
  br label %kernel_syr2k.exit90

polly.loop_header379:                             ; preds = %polly.loop_exit387, %polly.start291
  %indvar1408 = phi i64 [ %indvar.next1409, %polly.loop_exit387 ], [ 0, %polly.start291 ]
  %polly.indvar382 = phi i64 [ %polly.indvar_next383, %polly.loop_exit387 ], [ 1, %polly.start291 ]
  %126 = add i64 %indvar1408, 1
  %127 = mul nuw nsw i64 %polly.indvar382, 640
  %scevgep391 = getelementptr i8, i8* %call, i64 %127
  %min.iters.check1410 = icmp ult i64 %126, 4
  br i1 %min.iters.check1410, label %polly.loop_header385.preheader, label %vector.ph1411

vector.ph1411:                                    ; preds = %polly.loop_header379
  %n.vec1413 = and i64 %126, -4
  br label %vector.body1407

vector.body1407:                                  ; preds = %vector.body1407, %vector.ph1411
  %index1414 = phi i64 [ 0, %vector.ph1411 ], [ %index.next1415, %vector.body1407 ]
  %128 = shl nuw nsw i64 %index1414, 3
  %129 = getelementptr i8, i8* %scevgep391, i64 %128
  %130 = bitcast i8* %129 to <4 x double>*
  %wide.load1418 = load <4 x double>, <4 x double>* %130, align 8, !alias.scope !78, !noalias !80
  %131 = fmul fast <4 x double> %wide.load1418, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %132 = bitcast i8* %129 to <4 x double>*
  store <4 x double> %131, <4 x double>* %132, align 8, !alias.scope !78, !noalias !80
  %index.next1415 = add i64 %index1414, 4
  %133 = icmp eq i64 %index.next1415, %n.vec1413
  br i1 %133, label %middle.block1405, label %vector.body1407, !llvm.loop !85

middle.block1405:                                 ; preds = %vector.body1407
  %cmp.n1417 = icmp eq i64 %126, %n.vec1413
  br i1 %cmp.n1417, label %polly.loop_exit387, label %polly.loop_header385.preheader

polly.loop_header385.preheader:                   ; preds = %polly.loop_header379, %middle.block1405
  %polly.indvar388.ph = phi i64 [ 0, %polly.loop_header379 ], [ %n.vec1413, %middle.block1405 ]
  br label %polly.loop_header385

polly.loop_exit387:                               ; preds = %polly.loop_header385, %middle.block1405
  %polly.indvar_next383 = add nuw nsw i64 %polly.indvar382, 1
  %exitcond957.not = icmp eq i64 %polly.indvar_next383, 80
  %indvar.next1409 = add i64 %indvar1408, 1
  br i1 %exitcond957.not, label %polly.loop_header395.preheader, label %polly.loop_header379

polly.loop_header395.preheader:                   ; preds = %polly.loop_exit387
  %Packed_MemRef_call1294 = bitcast i8* %malloccall293 to double*
  %Packed_MemRef_call2296 = bitcast i8* %malloccall295 to double*
  br label %polly.loop_header395

polly.loop_header385:                             ; preds = %polly.loop_header385.preheader, %polly.loop_header385
  %polly.indvar388 = phi i64 [ %polly.indvar_next389, %polly.loop_header385 ], [ %polly.indvar388.ph, %polly.loop_header385.preheader ]
  %134 = shl nuw nsw i64 %polly.indvar388, 3
  %scevgep392 = getelementptr i8, i8* %scevgep391, i64 %134
  %scevgep392393 = bitcast i8* %scevgep392 to double*
  %_p_scalar_394 = load double, double* %scevgep392393, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_394, 1.200000e+00
  store double %p_mul.i57, double* %scevgep392393, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next389 = add nuw nsw i64 %polly.indvar388, 1
  %exitcond956.not = icmp eq i64 %polly.indvar_next389, %polly.indvar382
  br i1 %exitcond956.not, label %polly.loop_exit387, label %polly.loop_header385, !llvm.loop !86

polly.loop_header395:                             ; preds = %polly.loop_header395.preheader, %polly.loop_exit403
  %polly.indvar398 = phi i64 [ %polly.indvar_next399, %polly.loop_exit403 ], [ 0, %polly.loop_header395.preheader ]
  %polly.access.mul.Packed_MemRef_call2296 = mul nuw nsw i64 %polly.indvar398, 80
  br label %polly.loop_header401

polly.loop_exit403:                               ; preds = %polly.loop_header401
  %polly.indvar_next399 = add nuw nsw i64 %polly.indvar398, 1
  %exitcond955.not = icmp eq i64 %polly.indvar_next399, 60
  br i1 %exitcond955.not, label %polly.loop_header411, label %polly.loop_header395

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
  %exitcond954.not = icmp eq i64 %polly.indvar_next405, 80
  br i1 %exitcond954.not, label %polly.loop_exit403, label %polly.loop_header401

polly.loop_header411:                             ; preds = %polly.loop_exit403, %polly.loop_exit419
  %polly.indvar414 = phi i64 [ %polly.indvar_next415, %polly.loop_exit419 ], [ 0, %polly.loop_exit403 ]
  %135 = mul nuw nsw i64 %polly.indvar414, 20
  br label %polly.loop_header417

polly.loop_exit419:                               ; preds = %polly.loop_exit425
  %polly.indvar_next415 = add nuw nsw i64 %polly.indvar414, 1
  %exitcond953.not = icmp eq i64 %polly.indvar_next415, 3
  br i1 %exitcond953.not, label %polly.exiting292, label %polly.loop_header411

polly.loop_header417:                             ; preds = %polly.loop_exit425, %polly.loop_header411
  %indvars.iv949 = phi i64 [ %indvars.iv.next950, %polly.loop_exit425 ], [ 80, %polly.loop_header411 ]
  %polly.indvar420 = phi i64 [ %polly.indvar_next421, %polly.loop_exit425 ], [ 0, %polly.loop_header411 ]
  %136 = shl nuw nsw i64 %polly.indvar420, 2
  %137 = mul nsw i64 %polly.indvar420, -4
  %138 = add nuw nsw i64 %136, 4
  br label %polly.loop_header423

polly.loop_exit425:                               ; preds = %polly.loop_exit458
  %polly.indvar_next421 = add nuw nsw i64 %polly.indvar420, 1
  %indvars.iv.next950 = add nsw i64 %indvars.iv949, -4
  %exitcond952.not = icmp eq i64 %polly.indvar_next421, 20
  br i1 %exitcond952.not, label %polly.loop_exit419, label %polly.loop_header417

polly.loop_header423:                             ; preds = %polly.loop_exit458, %polly.loop_header417
  %indvars.iv938 = phi i64 [ %indvars.iv.next939, %polly.loop_exit458 ], [ 0, %polly.loop_header417 ]
  %polly.indvar426 = phi i64 [ %polly.indvar_next427, %polly.loop_exit458 ], [ %136, %polly.loop_header417 ]
  %smin1422 = call i64 @llvm.smin.i64(i64 %indvars.iv938, i64 3)
  %smin946 = call i64 @llvm.smin.i64(i64 %indvars.iv938, i64 3)
  %139 = add nsw i64 %polly.indvar426, %137
  %.not893 = icmp ult i64 %polly.indvar426, %138
  %polly.access.mul.call1450 = mul nuw nsw i64 %polly.indvar426, 60
  br i1 %.not893, label %polly.loop_header429.us, label %polly.loop_header429

polly.loop_header429.us:                          ; preds = %polly.loop_header423, %polly.merge446.us
  %polly.indvar432.us = phi i64 [ %polly.indvar_next433.us, %polly.merge446.us ], [ 0, %polly.loop_header423 ]
  %140 = add nuw nsw i64 %polly.indvar432.us, %135
  %polly.access.mul.Packed_MemRef_call1294.us = mul nuw nsw i64 %polly.indvar432.us, 80
  br label %polly.loop_header435.us

polly.loop_header435.us:                          ; preds = %polly.loop_header435.us, %polly.loop_header429.us
  %polly.indvar438.us = phi i64 [ 0, %polly.loop_header429.us ], [ %polly.indvar_next439.us, %polly.loop_header435.us ]
  %141 = add nuw nsw i64 %polly.indvar438.us, %136
  %polly.access.mul.call1442.us = mul nuw nsw i64 %141, 60
  %polly.access.add.call1443.us = add nuw nsw i64 %polly.access.mul.call1442.us, %140
  %polly.access.call1444.us = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1443.us
  %polly.access.call1444.load.us = load double, double* %polly.access.call1444.us, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1294.us = add nuw nsw i64 %polly.indvar438.us, %polly.access.mul.Packed_MemRef_call1294.us
  %polly.access.Packed_MemRef_call1294.us = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294.us
  store double %polly.access.call1444.load.us, double* %polly.access.Packed_MemRef_call1294.us, align 8
  %polly.indvar_next439.us = add nuw nsw i64 %polly.indvar438.us, 1
  %exitcond944.not = icmp eq i64 %polly.indvar438.us, %smin946
  br i1 %exitcond944.not, label %polly.merge446.us, label %polly.loop_header435.us

polly.merge446.us:                                ; preds = %polly.loop_header435.us
  %polly.indvar_next433.us = add nuw nsw i64 %polly.indvar432.us, 1
  %exitcond945.not = icmp eq i64 %polly.indvar_next433.us, 20
  br i1 %exitcond945.not, label %polly.loop_preheader457, label %polly.loop_header429.us

polly.loop_exit458:                               ; preds = %polly.loop_exit464
  %polly.indvar_next427 = add nuw nsw i64 %polly.indvar426, 1
  %indvars.iv.next939 = add nuw nsw i64 %indvars.iv938, 1
  %exitcond951.not = icmp eq i64 %indvars.iv.next939, %indvars.iv949
  br i1 %exitcond951.not, label %polly.loop_exit425, label %polly.loop_header423

polly.loop_header429:                             ; preds = %polly.loop_header423, %polly.then447
  %polly.indvar432 = phi i64 [ %polly.indvar_next433, %polly.then447 ], [ 0, %polly.loop_header423 ]
  %142 = add nuw nsw i64 %polly.indvar432, %135
  %polly.access.mul.Packed_MemRef_call1294 = mul nuw nsw i64 %polly.indvar432, 80
  br label %polly.loop_header435

polly.loop_header435:                             ; preds = %polly.loop_header435, %polly.loop_header429
  %polly.indvar438 = phi i64 [ 0, %polly.loop_header429 ], [ %polly.indvar_next439, %polly.loop_header435 ]
  %143 = add nuw nsw i64 %polly.indvar438, %136
  %polly.access.mul.call1442 = mul nuw nsw i64 %143, 60
  %polly.access.add.call1443 = add nuw nsw i64 %polly.access.mul.call1442, %142
  %polly.access.call1444 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1443
  %polly.access.call1444.load = load double, double* %polly.access.call1444, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1294 = add nuw nsw i64 %polly.indvar438, %polly.access.mul.Packed_MemRef_call1294
  %polly.access.Packed_MemRef_call1294 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294
  store double %polly.access.call1444.load, double* %polly.access.Packed_MemRef_call1294, align 8
  %polly.indvar_next439 = add nuw nsw i64 %polly.indvar438, 1
  %exitcond941.not = icmp eq i64 %polly.indvar438, %smin946
  br i1 %exitcond941.not, label %polly.then447, label %polly.loop_header435

polly.then447:                                    ; preds = %polly.loop_header435
  %polly.access.add.call1451 = add nuw nsw i64 %142, %polly.access.mul.call1450
  %polly.access.call1452 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1451
  %polly.access.call1452.load = load double, double* %polly.access.call1452, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1294454 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1294, %139
  %polly.access.Packed_MemRef_call1294455 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294454
  store double %polly.access.call1452.load, double* %polly.access.Packed_MemRef_call1294455, align 8
  %polly.indvar_next433 = add nuw nsw i64 %polly.indvar432, 1
  %exitcond942.not = icmp eq i64 %polly.indvar_next433, 20
  br i1 %exitcond942.not, label %polly.loop_preheader457, label %polly.loop_header429

polly.loop_header456:                             ; preds = %polly.loop_exit464, %polly.loop_preheader457
  %polly.indvar459 = phi i64 [ 0, %polly.loop_preheader457 ], [ %polly.indvar_next460, %polly.loop_exit464 ]
  %polly.access.mul.Packed_MemRef_call1294468 = mul nuw nsw i64 %polly.indvar459, 80
  %144 = add nuw nsw i64 %polly.indvar459, %135
  %polly.access.mul.Packed_MemRef_call2296472 = mul nuw nsw i64 %144, 80
  %polly.access.add.Packed_MemRef_call1294481 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1294468, %139
  %polly.access.Packed_MemRef_call1294482 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294481
  %_p_scalar_483 = load double, double* %polly.access.Packed_MemRef_call1294482, align 8
  %polly.access.add.Packed_MemRef_call2296473 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2296472, %polly.indvar426
  %polly.access.Packed_MemRef_call2296474 = getelementptr double, double* %Packed_MemRef_call2296, i64 %polly.access.add.Packed_MemRef_call2296473
  %_p_scalar_475 = load double, double* %polly.access.Packed_MemRef_call2296474, align 8
  %broadcast.splatinsert1431 = insertelement <4 x i64> poison, i64 %smin1422, i32 0
  %broadcast.splat1432 = shufflevector <4 x i64> %broadcast.splatinsert1431, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1437 = insertelement <4 x double> poison, double %_p_scalar_475, i32 0
  %broadcast.splat1438 = shufflevector <4 x double> %broadcast.splatinsert1437, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1440 = insertelement <4 x double> poison, double %_p_scalar_483, i32 0
  %broadcast.splat1441 = shufflevector <4 x double> %broadcast.splatinsert1440, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1421

vector.body1421:                                  ; preds = %vector.body1421, %polly.loop_header456
  %index1427 = phi i64 [ 0, %polly.loop_header456 ], [ %index.next1428, %vector.body1421 ]
  %broadcast.splatinsert1433 = insertelement <4 x i64> poison, i64 %index1427, i32 0
  %broadcast.splat1434 = shufflevector <4 x i64> %broadcast.splatinsert1433, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1435 = or <4 x i64> %broadcast.splat1434, <i64 0, i64 1, i64 2, i64 3>
  %145 = icmp ule <4 x i64> %induction1435, %broadcast.splat1432
  %146 = add nuw nsw i64 %index1427, %136
  %147 = add nuw nsw i64 %index1427, %polly.access.mul.Packed_MemRef_call1294468
  %148 = getelementptr double, double* %Packed_MemRef_call1294, i64 %147
  %149 = bitcast double* %148 to <4 x double>*
  %wide.masked.load1436 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %149, i32 8, <4 x i1> %145, <4 x double> poison)
  %150 = fmul fast <4 x double> %broadcast.splat1438, %wide.masked.load1436
  %151 = add nuw nsw i64 %146, %polly.access.mul.Packed_MemRef_call2296472
  %152 = getelementptr double, double* %Packed_MemRef_call2296, i64 %151
  %153 = bitcast double* %152 to <4 x double>*
  %wide.masked.load1439 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %153, i32 8, <4 x i1> %145, <4 x double> poison)
  %154 = fmul fast <4 x double> %broadcast.splat1441, %wide.masked.load1439
  %155 = shl i64 %146, 3
  %156 = getelementptr i8, i8* %scevgep484, i64 %155
  %157 = bitcast i8* %156 to <4 x double>*
  %wide.masked.load1442 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %157, i32 8, <4 x i1> %145, <4 x double> poison), !alias.scope !78, !noalias !80
  %158 = fadd fast <4 x double> %154, %150
  %159 = fmul fast <4 x double> %158, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %160 = fadd fast <4 x double> %159, %wide.masked.load1442
  %161 = bitcast i8* %156 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %160, <4 x double>* %161, i32 8, <4 x i1> %145), !alias.scope !78, !noalias !80
  %index.next1428 = add i64 %index1427, 4
  %162 = icmp eq i64 %index1427, 0
  br i1 %162, label %polly.loop_exit464, label %vector.body1421, !llvm.loop !89

polly.loop_exit464:                               ; preds = %vector.body1421
  %polly.indvar_next460 = add nuw nsw i64 %polly.indvar459, 1
  %exitcond948.not = icmp eq i64 %polly.indvar_next460, 20
  br i1 %exitcond948.not, label %polly.loop_exit458, label %polly.loop_header456

polly.loop_preheader457:                          ; preds = %polly.then447, %polly.merge446.us
  %163 = mul nuw nsw i64 %polly.indvar426, 640
  %scevgep484 = getelementptr i8, i8* %call, i64 %163
  br label %polly.loop_header456

polly.start490:                                   ; preds = %init_array.exit
  %malloccall492 = tail call dereferenceable_or_null(12800) i8* @malloc(i64 12800) #8
  %malloccall494 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #8
  br label %polly.loop_header578

polly.exiting491:                                 ; preds = %polly.loop_exit618
  tail call void @free(i8* nonnull %malloccall492)
  tail call void @free(i8* nonnull %malloccall494)
  br label %kernel_syr2k.exit

polly.loop_header578:                             ; preds = %polly.loop_exit586, %polly.start490
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit586 ], [ 0, %polly.start490 ]
  %polly.indvar581 = phi i64 [ %polly.indvar_next582, %polly.loop_exit586 ], [ 1, %polly.start490 ]
  %164 = add i64 %indvar, 1
  %165 = mul nuw nsw i64 %polly.indvar581, 640
  %scevgep590 = getelementptr i8, i8* %call, i64 %165
  %min.iters.check1365 = icmp ult i64 %164, 4
  br i1 %min.iters.check1365, label %polly.loop_header584.preheader, label %vector.ph1366

vector.ph1366:                                    ; preds = %polly.loop_header578
  %n.vec1368 = and i64 %164, -4
  br label %vector.body1364

vector.body1364:                                  ; preds = %vector.body1364, %vector.ph1366
  %index1369 = phi i64 [ 0, %vector.ph1366 ], [ %index.next1370, %vector.body1364 ]
  %166 = shl nuw nsw i64 %index1369, 3
  %167 = getelementptr i8, i8* %scevgep590, i64 %166
  %168 = bitcast i8* %167 to <4 x double>*
  %wide.load1373 = load <4 x double>, <4 x double>* %168, align 8, !alias.scope !90, !noalias !92
  %169 = fmul fast <4 x double> %wide.load1373, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %170 = bitcast i8* %167 to <4 x double>*
  store <4 x double> %169, <4 x double>* %170, align 8, !alias.scope !90, !noalias !92
  %index.next1370 = add i64 %index1369, 4
  %171 = icmp eq i64 %index.next1370, %n.vec1368
  br i1 %171, label %middle.block1362, label %vector.body1364, !llvm.loop !97

middle.block1362:                                 ; preds = %vector.body1364
  %cmp.n1372 = icmp eq i64 %164, %n.vec1368
  br i1 %cmp.n1372, label %polly.loop_exit586, label %polly.loop_header584.preheader

polly.loop_header584.preheader:                   ; preds = %polly.loop_header578, %middle.block1362
  %polly.indvar587.ph = phi i64 [ 0, %polly.loop_header578 ], [ %n.vec1368, %middle.block1362 ]
  br label %polly.loop_header584

polly.loop_exit586:                               ; preds = %polly.loop_header584, %middle.block1362
  %polly.indvar_next582 = add nuw nsw i64 %polly.indvar581, 1
  %exitcond977.not = icmp eq i64 %polly.indvar_next582, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond977.not, label %polly.loop_header594.preheader, label %polly.loop_header578

polly.loop_header594.preheader:                   ; preds = %polly.loop_exit586
  %Packed_MemRef_call1493 = bitcast i8* %malloccall492 to double*
  %Packed_MemRef_call2495 = bitcast i8* %malloccall494 to double*
  br label %polly.loop_header594

polly.loop_header584:                             ; preds = %polly.loop_header584.preheader, %polly.loop_header584
  %polly.indvar587 = phi i64 [ %polly.indvar_next588, %polly.loop_header584 ], [ %polly.indvar587.ph, %polly.loop_header584.preheader ]
  %172 = shl nuw nsw i64 %polly.indvar587, 3
  %scevgep591 = getelementptr i8, i8* %scevgep590, i64 %172
  %scevgep591592 = bitcast i8* %scevgep591 to double*
  %_p_scalar_593 = load double, double* %scevgep591592, align 8, !alias.scope !90, !noalias !92
  %p_mul.i = fmul fast double %_p_scalar_593, 1.200000e+00
  store double %p_mul.i, double* %scevgep591592, align 8, !alias.scope !90, !noalias !92
  %polly.indvar_next588 = add nuw nsw i64 %polly.indvar587, 1
  %exitcond976.not = icmp eq i64 %polly.indvar_next588, %polly.indvar581
  br i1 %exitcond976.not, label %polly.loop_exit586, label %polly.loop_header584, !llvm.loop !98

polly.loop_header594:                             ; preds = %polly.loop_header594.preheader, %polly.loop_exit602
  %polly.indvar597 = phi i64 [ %polly.indvar_next598, %polly.loop_exit602 ], [ 0, %polly.loop_header594.preheader ]
  %polly.access.mul.Packed_MemRef_call2495 = mul nuw nsw i64 %polly.indvar597, 80
  br label %polly.loop_header600

polly.loop_exit602:                               ; preds = %polly.loop_header600
  %polly.indvar_next598 = add nuw nsw i64 %polly.indvar597, 1
  %exitcond975.not = icmp eq i64 %polly.indvar_next598, 60
  br i1 %exitcond975.not, label %polly.loop_header610, label %polly.loop_header594

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
  %exitcond974.not = icmp eq i64 %polly.indvar_next604, 80
  br i1 %exitcond974.not, label %polly.loop_exit602, label %polly.loop_header600

polly.loop_header610:                             ; preds = %polly.loop_exit602, %polly.loop_exit618
  %polly.indvar613 = phi i64 [ %polly.indvar_next614, %polly.loop_exit618 ], [ 0, %polly.loop_exit602 ]
  %173 = mul nuw nsw i64 %polly.indvar613, 20
  br label %polly.loop_header616

polly.loop_exit618:                               ; preds = %polly.loop_exit624
  %polly.indvar_next614 = add nuw nsw i64 %polly.indvar613, 1
  %exitcond973.not = icmp eq i64 %polly.indvar_next614, 3
  br i1 %exitcond973.not, label %polly.exiting491, label %polly.loop_header610

polly.loop_header616:                             ; preds = %polly.loop_exit624, %polly.loop_header610
  %indvars.iv969 = phi i64 [ %indvars.iv.next970, %polly.loop_exit624 ], [ 80, %polly.loop_header610 ]
  %polly.indvar619 = phi i64 [ %polly.indvar_next620, %polly.loop_exit624 ], [ 0, %polly.loop_header610 ]
  %174 = shl nuw nsw i64 %polly.indvar619, 2
  %175 = mul nsw i64 %polly.indvar619, -4
  %176 = add nuw nsw i64 %174, 4
  br label %polly.loop_header622

polly.loop_exit624:                               ; preds = %polly.loop_exit657
  %polly.indvar_next620 = add nuw nsw i64 %polly.indvar619, 1
  %indvars.iv.next970 = add nsw i64 %indvars.iv969, -4
  %exitcond972.not = icmp eq i64 %polly.indvar_next620, 20
  br i1 %exitcond972.not, label %polly.loop_exit618, label %polly.loop_header616

polly.loop_header622:                             ; preds = %polly.loop_exit657, %polly.loop_header616
  %indvars.iv958 = phi i64 [ %indvars.iv.next959, %polly.loop_exit657 ], [ 0, %polly.loop_header616 ]
  %polly.indvar625 = phi i64 [ %polly.indvar_next626, %polly.loop_exit657 ], [ %174, %polly.loop_header616 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv958, i64 3)
  %smin966 = call i64 @llvm.smin.i64(i64 %indvars.iv958, i64 3)
  %177 = add nsw i64 %polly.indvar625, %175
  %.not894 = icmp ult i64 %polly.indvar625, %176
  %polly.access.mul.call1649 = mul nuw nsw i64 %polly.indvar625, 60
  br i1 %.not894, label %polly.loop_header628.us, label %polly.loop_header628

polly.loop_header628.us:                          ; preds = %polly.loop_header622, %polly.merge645.us
  %polly.indvar631.us = phi i64 [ %polly.indvar_next632.us, %polly.merge645.us ], [ 0, %polly.loop_header622 ]
  %178 = add nuw nsw i64 %polly.indvar631.us, %173
  %polly.access.mul.Packed_MemRef_call1493.us = mul nuw nsw i64 %polly.indvar631.us, 80
  br label %polly.loop_header634.us

polly.loop_header634.us:                          ; preds = %polly.loop_header634.us, %polly.loop_header628.us
  %polly.indvar637.us = phi i64 [ 0, %polly.loop_header628.us ], [ %polly.indvar_next638.us, %polly.loop_header634.us ]
  %179 = add nuw nsw i64 %polly.indvar637.us, %174
  %polly.access.mul.call1641.us = mul nuw nsw i64 %179, 60
  %polly.access.add.call1642.us = add nuw nsw i64 %polly.access.mul.call1641.us, %178
  %polly.access.call1643.us = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1642.us
  %polly.access.call1643.load.us = load double, double* %polly.access.call1643.us, align 8, !alias.scope !93, !noalias !100
  %polly.access.add.Packed_MemRef_call1493.us = add nuw nsw i64 %polly.indvar637.us, %polly.access.mul.Packed_MemRef_call1493.us
  %polly.access.Packed_MemRef_call1493.us = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493.us
  store double %polly.access.call1643.load.us, double* %polly.access.Packed_MemRef_call1493.us, align 8
  %polly.indvar_next638.us = add nuw nsw i64 %polly.indvar637.us, 1
  %exitcond964.not = icmp eq i64 %polly.indvar637.us, %smin966
  br i1 %exitcond964.not, label %polly.merge645.us, label %polly.loop_header634.us

polly.merge645.us:                                ; preds = %polly.loop_header634.us
  %polly.indvar_next632.us = add nuw nsw i64 %polly.indvar631.us, 1
  %exitcond965.not = icmp eq i64 %polly.indvar_next632.us, 20
  br i1 %exitcond965.not, label %polly.loop_preheader656, label %polly.loop_header628.us

polly.loop_exit657:                               ; preds = %polly.loop_exit663
  %polly.indvar_next626 = add nuw nsw i64 %polly.indvar625, 1
  %indvars.iv.next959 = add nuw nsw i64 %indvars.iv958, 1
  %exitcond971.not = icmp eq i64 %indvars.iv.next959, %indvars.iv969
  br i1 %exitcond971.not, label %polly.loop_exit624, label %polly.loop_header622

polly.loop_header628:                             ; preds = %polly.loop_header622, %polly.then646
  %polly.indvar631 = phi i64 [ %polly.indvar_next632, %polly.then646 ], [ 0, %polly.loop_header622 ]
  %180 = add nuw nsw i64 %polly.indvar631, %173
  %polly.access.mul.Packed_MemRef_call1493 = mul nuw nsw i64 %polly.indvar631, 80
  br label %polly.loop_header634

polly.loop_header634:                             ; preds = %polly.loop_header634, %polly.loop_header628
  %polly.indvar637 = phi i64 [ 0, %polly.loop_header628 ], [ %polly.indvar_next638, %polly.loop_header634 ]
  %181 = add nuw nsw i64 %polly.indvar637, %174
  %polly.access.mul.call1641 = mul nuw nsw i64 %181, 60
  %polly.access.add.call1642 = add nuw nsw i64 %polly.access.mul.call1641, %180
  %polly.access.call1643 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1642
  %polly.access.call1643.load = load double, double* %polly.access.call1643, align 8, !alias.scope !93, !noalias !100
  %polly.access.add.Packed_MemRef_call1493 = add nuw nsw i64 %polly.indvar637, %polly.access.mul.Packed_MemRef_call1493
  %polly.access.Packed_MemRef_call1493 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493
  store double %polly.access.call1643.load, double* %polly.access.Packed_MemRef_call1493, align 8
  %polly.indvar_next638 = add nuw nsw i64 %polly.indvar637, 1
  %exitcond961.not = icmp eq i64 %polly.indvar637, %smin966
  br i1 %exitcond961.not, label %polly.then646, label %polly.loop_header634

polly.then646:                                    ; preds = %polly.loop_header634
  %polly.access.add.call1650 = add nuw nsw i64 %180, %polly.access.mul.call1649
  %polly.access.call1651 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1650
  %polly.access.call1651.load = load double, double* %polly.access.call1651, align 8, !alias.scope !93, !noalias !100
  %polly.access.add.Packed_MemRef_call1493653 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1493, %177
  %polly.access.Packed_MemRef_call1493654 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493653
  store double %polly.access.call1651.load, double* %polly.access.Packed_MemRef_call1493654, align 8
  %polly.indvar_next632 = add nuw nsw i64 %polly.indvar631, 1
  %exitcond962.not = icmp eq i64 %polly.indvar_next632, 20
  br i1 %exitcond962.not, label %polly.loop_preheader656, label %polly.loop_header628

polly.loop_header655:                             ; preds = %polly.loop_exit663, %polly.loop_preheader656
  %polly.indvar658 = phi i64 [ 0, %polly.loop_preheader656 ], [ %polly.indvar_next659, %polly.loop_exit663 ]
  %polly.access.mul.Packed_MemRef_call1493667 = mul nuw nsw i64 %polly.indvar658, 80
  %182 = add nuw nsw i64 %polly.indvar658, %173
  %polly.access.mul.Packed_MemRef_call2495671 = mul nuw nsw i64 %182, 80
  %polly.access.add.Packed_MemRef_call1493680 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1493667, %177
  %polly.access.Packed_MemRef_call1493681 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493680
  %_p_scalar_682 = load double, double* %polly.access.Packed_MemRef_call1493681, align 8
  %polly.access.add.Packed_MemRef_call2495672 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2495671, %polly.indvar625
  %polly.access.Packed_MemRef_call2495673 = getelementptr double, double* %Packed_MemRef_call2495, i64 %polly.access.add.Packed_MemRef_call2495672
  %_p_scalar_674 = load double, double* %polly.access.Packed_MemRef_call2495673, align 8
  %broadcast.splatinsert1383 = insertelement <4 x i64> poison, i64 %smin, i32 0
  %broadcast.splat1384 = shufflevector <4 x i64> %broadcast.splatinsert1383, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1387 = insertelement <4 x double> poison, double %_p_scalar_674, i32 0
  %broadcast.splat1388 = shufflevector <4 x double> %broadcast.splatinsert1387, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1390 = insertelement <4 x double> poison, double %_p_scalar_682, i32 0
  %broadcast.splat1391 = shufflevector <4 x double> %broadcast.splatinsert1390, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1376

vector.body1376:                                  ; preds = %vector.body1376, %polly.loop_header655
  %index1380 = phi i64 [ 0, %polly.loop_header655 ], [ %index.next1381, %vector.body1376 ]
  %broadcast.splatinsert1385 = insertelement <4 x i64> poison, i64 %index1380, i32 0
  %broadcast.splat1386 = shufflevector <4 x i64> %broadcast.splatinsert1385, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or <4 x i64> %broadcast.splat1386, <i64 0, i64 1, i64 2, i64 3>
  %183 = icmp ule <4 x i64> %induction, %broadcast.splat1384
  %184 = add nuw nsw i64 %index1380, %174
  %185 = add nuw nsw i64 %index1380, %polly.access.mul.Packed_MemRef_call1493667
  %186 = getelementptr double, double* %Packed_MemRef_call1493, i64 %185
  %187 = bitcast double* %186 to <4 x double>*
  %wide.masked.load = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %187, i32 8, <4 x i1> %183, <4 x double> poison)
  %188 = fmul fast <4 x double> %broadcast.splat1388, %wide.masked.load
  %189 = add nuw nsw i64 %184, %polly.access.mul.Packed_MemRef_call2495671
  %190 = getelementptr double, double* %Packed_MemRef_call2495, i64 %189
  %191 = bitcast double* %190 to <4 x double>*
  %wide.masked.load1389 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %191, i32 8, <4 x i1> %183, <4 x double> poison)
  %192 = fmul fast <4 x double> %broadcast.splat1391, %wide.masked.load1389
  %193 = shl i64 %184, 3
  %194 = getelementptr i8, i8* %scevgep683, i64 %193
  %195 = bitcast i8* %194 to <4 x double>*
  %wide.masked.load1392 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %195, i32 8, <4 x i1> %183, <4 x double> poison), !alias.scope !90, !noalias !92
  %196 = fadd fast <4 x double> %192, %188
  %197 = fmul fast <4 x double> %196, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %198 = fadd fast <4 x double> %197, %wide.masked.load1392
  %199 = bitcast i8* %194 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %198, <4 x double>* %199, i32 8, <4 x i1> %183), !alias.scope !90, !noalias !92
  %index.next1381 = add i64 %index1380, 4
  %200 = icmp eq i64 %index1380, 0
  br i1 %200, label %polly.loop_exit663, label %vector.body1376, !llvm.loop !101

polly.loop_exit663:                               ; preds = %vector.body1376
  %polly.indvar_next659 = add nuw nsw i64 %polly.indvar658, 1
  %exitcond968.not = icmp eq i64 %polly.indvar_next659, 20
  br i1 %exitcond968.not, label %polly.loop_exit657, label %polly.loop_header655

polly.loop_preheader656:                          ; preds = %polly.then646, %polly.merge645.us
  %201 = mul nuw nsw i64 %polly.indvar625, 640
  %scevgep683 = getelementptr i8, i8* %call, i64 %201
  br label %polly.loop_header655

polly.loop_header825:                             ; preds = %entry, %polly.loop_exit833
  %polly.indvar828 = phi i64 [ %polly.indvar_next829, %polly.loop_exit833 ], [ 0, %entry ]
  %202 = mul nuw nsw i64 %polly.indvar828, 640
  %203 = trunc i64 %polly.indvar828 to i32
  %broadcast.splatinsert1096 = insertelement <4 x i32> poison, i32 %203, i32 0
  %broadcast.splat1097 = shufflevector <4 x i32> %broadcast.splatinsert1096, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1086

vector.body1086:                                  ; preds = %vector.body1086, %polly.loop_header825
  %index1088 = phi i64 [ 0, %polly.loop_header825 ], [ %index.next1089, %vector.body1086 ]
  %vec.ind1094 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header825 ], [ %vec.ind.next1095, %vector.body1086 ]
  %204 = mul <4 x i32> %vec.ind1094, %broadcast.splat1097
  %205 = add <4 x i32> %204, <i32 3, i32 3, i32 3, i32 3>
  %206 = urem <4 x i32> %205, <i32 80, i32 80, i32 80, i32 80>
  %207 = sitofp <4 x i32> %206 to <4 x double>
  %208 = fmul fast <4 x double> %207, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %209 = shl i64 %index1088, 3
  %210 = add nuw nsw i64 %209, %202
  %211 = getelementptr i8, i8* %call, i64 %210
  %212 = bitcast i8* %211 to <4 x double>*
  store <4 x double> %208, <4 x double>* %212, align 8, !alias.scope !102, !noalias !104
  %index.next1089 = add i64 %index1088, 4
  %vec.ind.next1095 = add <4 x i32> %vec.ind1094, <i32 4, i32 4, i32 4, i32 4>
  %213 = icmp eq i64 %index.next1089, 32
  br i1 %213, label %polly.loop_exit833, label %vector.body1086, !llvm.loop !107

polly.loop_exit833:                               ; preds = %vector.body1086
  %polly.indvar_next829 = add nuw nsw i64 %polly.indvar828, 1
  %exitcond997.not = icmp eq i64 %polly.indvar_next829, 32
  br i1 %exitcond997.not, label %polly.loop_header825.1, label %polly.loop_header825

polly.loop_header852:                             ; preds = %polly.loop_exit833.2.2, %polly.loop_exit860
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_exit833.2.2 ]
  %214 = mul nuw nsw i64 %polly.indvar855, 480
  %215 = trunc i64 %polly.indvar855 to i32
  %broadcast.splatinsert1210 = insertelement <4 x i32> poison, i32 %215, i32 0
  %broadcast.splat1211 = shufflevector <4 x i32> %broadcast.splatinsert1210, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1200

vector.body1200:                                  ; preds = %vector.body1200, %polly.loop_header852
  %index1202 = phi i64 [ 0, %polly.loop_header852 ], [ %index.next1203, %vector.body1200 ]
  %vec.ind1208 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header852 ], [ %vec.ind.next1209, %vector.body1200 ]
  %216 = mul <4 x i32> %vec.ind1208, %broadcast.splat1211
  %217 = add <4 x i32> %216, <i32 2, i32 2, i32 2, i32 2>
  %218 = urem <4 x i32> %217, <i32 60, i32 60, i32 60, i32 60>
  %219 = sitofp <4 x i32> %218 to <4 x double>
  %220 = fmul fast <4 x double> %219, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %221 = shl i64 %index1202, 3
  %222 = add i64 %221, %214
  %223 = getelementptr i8, i8* %call2, i64 %222
  %224 = bitcast i8* %223 to <4 x double>*
  store <4 x double> %220, <4 x double>* %224, align 8, !alias.scope !106, !noalias !108
  %index.next1203 = add i64 %index1202, 4
  %vec.ind.next1209 = add <4 x i32> %vec.ind1208, <i32 4, i32 4, i32 4, i32 4>
  %225 = icmp eq i64 %index.next1203, 32
  br i1 %225, label %polly.loop_exit860, label %vector.body1200, !llvm.loop !109

polly.loop_exit860:                               ; preds = %vector.body1200
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %exitcond988.not = icmp eq i64 %polly.indvar_next856, 32
  br i1 %exitcond988.not, label %polly.loop_header852.1, label %polly.loop_header852

polly.loop_header878:                             ; preds = %polly.loop_exit860.1.2, %polly.loop_exit886
  %polly.indvar881 = phi i64 [ %polly.indvar_next882, %polly.loop_exit886 ], [ 0, %polly.loop_exit860.1.2 ]
  %226 = mul nuw nsw i64 %polly.indvar881, 480
  %227 = trunc i64 %polly.indvar881 to i32
  %broadcast.splatinsert1288 = insertelement <4 x i32> poison, i32 %227, i32 0
  %broadcast.splat1289 = shufflevector <4 x i32> %broadcast.splatinsert1288, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1278

vector.body1278:                                  ; preds = %vector.body1278, %polly.loop_header878
  %index1280 = phi i64 [ 0, %polly.loop_header878 ], [ %index.next1281, %vector.body1278 ]
  %vec.ind1286 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header878 ], [ %vec.ind.next1287, %vector.body1278 ]
  %228 = mul <4 x i32> %vec.ind1286, %broadcast.splat1289
  %229 = add <4 x i32> %228, <i32 1, i32 1, i32 1, i32 1>
  %230 = urem <4 x i32> %229, <i32 80, i32 80, i32 80, i32 80>
  %231 = sitofp <4 x i32> %230 to <4 x double>
  %232 = fmul fast <4 x double> %231, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %233 = shl i64 %index1280, 3
  %234 = add i64 %233, %226
  %235 = getelementptr i8, i8* %call1, i64 %234
  %236 = bitcast i8* %235 to <4 x double>*
  store <4 x double> %232, <4 x double>* %236, align 8, !alias.scope !105, !noalias !110
  %index.next1281 = add i64 %index1280, 4
  %vec.ind.next1287 = add <4 x i32> %vec.ind1286, <i32 4, i32 4, i32 4, i32 4>
  %237 = icmp eq i64 %index.next1281, 32
  br i1 %237, label %polly.loop_exit886, label %vector.body1278, !llvm.loop !111

polly.loop_exit886:                               ; preds = %vector.body1278
  %polly.indvar_next882 = add nuw nsw i64 %polly.indvar881, 1
  %exitcond982.not = icmp eq i64 %polly.indvar_next882, 32
  br i1 %exitcond982.not, label %polly.loop_header878.1, label %polly.loop_header878

polly.loop_header878.1:                           ; preds = %polly.loop_exit886, %polly.loop_exit886.1
  %polly.indvar881.1 = phi i64 [ %polly.indvar_next882.1, %polly.loop_exit886.1 ], [ 0, %polly.loop_exit886 ]
  %238 = mul nuw nsw i64 %polly.indvar881.1, 480
  %239 = trunc i64 %polly.indvar881.1 to i32
  %broadcast.splatinsert1300 = insertelement <4 x i32> poison, i32 %239, i32 0
  %broadcast.splat1301 = shufflevector <4 x i32> %broadcast.splatinsert1300, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1292

vector.body1292:                                  ; preds = %vector.body1292, %polly.loop_header878.1
  %index1294 = phi i64 [ 0, %polly.loop_header878.1 ], [ %index.next1295, %vector.body1292 ]
  %vec.ind1298 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header878.1 ], [ %vec.ind.next1299, %vector.body1292 ]
  %240 = add nuw nsw <4 x i64> %vec.ind1298, <i64 32, i64 32, i64 32, i64 32>
  %241 = trunc <4 x i64> %240 to <4 x i32>
  %242 = mul <4 x i32> %broadcast.splat1301, %241
  %243 = add <4 x i32> %242, <i32 1, i32 1, i32 1, i32 1>
  %244 = urem <4 x i32> %243, <i32 80, i32 80, i32 80, i32 80>
  %245 = sitofp <4 x i32> %244 to <4 x double>
  %246 = fmul fast <4 x double> %245, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %247 = extractelement <4 x i64> %240, i32 0
  %248 = shl i64 %247, 3
  %249 = add i64 %248, %238
  %250 = getelementptr i8, i8* %call1, i64 %249
  %251 = bitcast i8* %250 to <4 x double>*
  store <4 x double> %246, <4 x double>* %251, align 8, !alias.scope !105, !noalias !110
  %index.next1295 = add i64 %index1294, 4
  %vec.ind.next1299 = add <4 x i64> %vec.ind1298, <i64 4, i64 4, i64 4, i64 4>
  %252 = icmp eq i64 %index.next1295, 28
  br i1 %252, label %polly.loop_exit886.1, label %vector.body1292, !llvm.loop !112

polly.loop_exit886.1:                             ; preds = %vector.body1292
  %polly.indvar_next882.1 = add nuw nsw i64 %polly.indvar881.1, 1
  %exitcond982.1.not = icmp eq i64 %polly.indvar_next882.1, 32
  br i1 %exitcond982.1.not, label %polly.loop_header878.11005, label %polly.loop_header878.1

polly.loop_header878.11005:                       ; preds = %polly.loop_exit886.1, %polly.loop_exit886.11016
  %polly.indvar881.11004 = phi i64 [ %polly.indvar_next882.11014, %polly.loop_exit886.11016 ], [ 0, %polly.loop_exit886.1 ]
  %253 = add nuw nsw i64 %polly.indvar881.11004, 32
  %254 = mul nuw nsw i64 %253, 480
  %255 = trunc i64 %253 to i32
  %broadcast.splatinsert1314 = insertelement <4 x i32> poison, i32 %255, i32 0
  %broadcast.splat1315 = shufflevector <4 x i32> %broadcast.splatinsert1314, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1304

vector.body1304:                                  ; preds = %vector.body1304, %polly.loop_header878.11005
  %index1306 = phi i64 [ 0, %polly.loop_header878.11005 ], [ %index.next1307, %vector.body1304 ]
  %vec.ind1312 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header878.11005 ], [ %vec.ind.next1313, %vector.body1304 ]
  %256 = mul <4 x i32> %vec.ind1312, %broadcast.splat1315
  %257 = add <4 x i32> %256, <i32 1, i32 1, i32 1, i32 1>
  %258 = urem <4 x i32> %257, <i32 80, i32 80, i32 80, i32 80>
  %259 = sitofp <4 x i32> %258 to <4 x double>
  %260 = fmul fast <4 x double> %259, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %261 = shl i64 %index1306, 3
  %262 = add i64 %261, %254
  %263 = getelementptr i8, i8* %call1, i64 %262
  %264 = bitcast i8* %263 to <4 x double>*
  store <4 x double> %260, <4 x double>* %264, align 8, !alias.scope !105, !noalias !110
  %index.next1307 = add i64 %index1306, 4
  %vec.ind.next1313 = add <4 x i32> %vec.ind1312, <i32 4, i32 4, i32 4, i32 4>
  %265 = icmp eq i64 %index.next1307, 32
  br i1 %265, label %polly.loop_exit886.11016, label %vector.body1304, !llvm.loop !113

polly.loop_exit886.11016:                         ; preds = %vector.body1304
  %polly.indvar_next882.11014 = add nuw nsw i64 %polly.indvar881.11004, 1
  %exitcond982.11015.not = icmp eq i64 %polly.indvar_next882.11014, 32
  br i1 %exitcond982.11015.not, label %polly.loop_header878.1.1, label %polly.loop_header878.11005

polly.loop_header878.1.1:                         ; preds = %polly.loop_exit886.11016, %polly.loop_exit886.1.1
  %polly.indvar881.1.1 = phi i64 [ %polly.indvar_next882.1.1, %polly.loop_exit886.1.1 ], [ 0, %polly.loop_exit886.11016 ]
  %266 = add nuw nsw i64 %polly.indvar881.1.1, 32
  %267 = mul nuw nsw i64 %266, 480
  %268 = trunc i64 %266 to i32
  %broadcast.splatinsert1326 = insertelement <4 x i32> poison, i32 %268, i32 0
  %broadcast.splat1327 = shufflevector <4 x i32> %broadcast.splatinsert1326, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1318

vector.body1318:                                  ; preds = %vector.body1318, %polly.loop_header878.1.1
  %index1320 = phi i64 [ 0, %polly.loop_header878.1.1 ], [ %index.next1321, %vector.body1318 ]
  %vec.ind1324 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header878.1.1 ], [ %vec.ind.next1325, %vector.body1318 ]
  %269 = add nuw nsw <4 x i64> %vec.ind1324, <i64 32, i64 32, i64 32, i64 32>
  %270 = trunc <4 x i64> %269 to <4 x i32>
  %271 = mul <4 x i32> %broadcast.splat1327, %270
  %272 = add <4 x i32> %271, <i32 1, i32 1, i32 1, i32 1>
  %273 = urem <4 x i32> %272, <i32 80, i32 80, i32 80, i32 80>
  %274 = sitofp <4 x i32> %273 to <4 x double>
  %275 = fmul fast <4 x double> %274, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %276 = extractelement <4 x i64> %269, i32 0
  %277 = shl i64 %276, 3
  %278 = add i64 %277, %267
  %279 = getelementptr i8, i8* %call1, i64 %278
  %280 = bitcast i8* %279 to <4 x double>*
  store <4 x double> %275, <4 x double>* %280, align 8, !alias.scope !105, !noalias !110
  %index.next1321 = add i64 %index1320, 4
  %vec.ind.next1325 = add <4 x i64> %vec.ind1324, <i64 4, i64 4, i64 4, i64 4>
  %281 = icmp eq i64 %index.next1321, 28
  br i1 %281, label %polly.loop_exit886.1.1, label %vector.body1318, !llvm.loop !114

polly.loop_exit886.1.1:                           ; preds = %vector.body1318
  %polly.indvar_next882.1.1 = add nuw nsw i64 %polly.indvar881.1.1, 1
  %exitcond982.1.1.not = icmp eq i64 %polly.indvar_next882.1.1, 32
  br i1 %exitcond982.1.1.not, label %polly.loop_header878.2, label %polly.loop_header878.1.1

polly.loop_header878.2:                           ; preds = %polly.loop_exit886.1.1, %polly.loop_exit886.2
  %polly.indvar881.2 = phi i64 [ %polly.indvar_next882.2, %polly.loop_exit886.2 ], [ 0, %polly.loop_exit886.1.1 ]
  %282 = add nuw nsw i64 %polly.indvar881.2, 64
  %283 = mul nuw nsw i64 %282, 480
  %284 = trunc i64 %282 to i32
  %broadcast.splatinsert1340 = insertelement <4 x i32> poison, i32 %284, i32 0
  %broadcast.splat1341 = shufflevector <4 x i32> %broadcast.splatinsert1340, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1330

vector.body1330:                                  ; preds = %vector.body1330, %polly.loop_header878.2
  %index1332 = phi i64 [ 0, %polly.loop_header878.2 ], [ %index.next1333, %vector.body1330 ]
  %vec.ind1338 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header878.2 ], [ %vec.ind.next1339, %vector.body1330 ]
  %285 = mul <4 x i32> %vec.ind1338, %broadcast.splat1341
  %286 = add <4 x i32> %285, <i32 1, i32 1, i32 1, i32 1>
  %287 = urem <4 x i32> %286, <i32 80, i32 80, i32 80, i32 80>
  %288 = sitofp <4 x i32> %287 to <4 x double>
  %289 = fmul fast <4 x double> %288, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %290 = shl i64 %index1332, 3
  %291 = add i64 %290, %283
  %292 = getelementptr i8, i8* %call1, i64 %291
  %293 = bitcast i8* %292 to <4 x double>*
  store <4 x double> %289, <4 x double>* %293, align 8, !alias.scope !105, !noalias !110
  %index.next1333 = add i64 %index1332, 4
  %vec.ind.next1339 = add <4 x i32> %vec.ind1338, <i32 4, i32 4, i32 4, i32 4>
  %294 = icmp eq i64 %index.next1333, 32
  br i1 %294, label %polly.loop_exit886.2, label %vector.body1330, !llvm.loop !115

polly.loop_exit886.2:                             ; preds = %vector.body1330
  %polly.indvar_next882.2 = add nuw nsw i64 %polly.indvar881.2, 1
  %exitcond982.2.not = icmp eq i64 %polly.indvar_next882.2, 16
  br i1 %exitcond982.2.not, label %polly.loop_header878.1.2, label %polly.loop_header878.2

polly.loop_header878.1.2:                         ; preds = %polly.loop_exit886.2, %polly.loop_exit886.1.2
  %polly.indvar881.1.2 = phi i64 [ %polly.indvar_next882.1.2, %polly.loop_exit886.1.2 ], [ 0, %polly.loop_exit886.2 ]
  %295 = add nuw nsw i64 %polly.indvar881.1.2, 64
  %296 = mul nuw nsw i64 %295, 480
  %297 = trunc i64 %295 to i32
  %broadcast.splatinsert1352 = insertelement <4 x i32> poison, i32 %297, i32 0
  %broadcast.splat1353 = shufflevector <4 x i32> %broadcast.splatinsert1352, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1344

vector.body1344:                                  ; preds = %vector.body1344, %polly.loop_header878.1.2
  %index1346 = phi i64 [ 0, %polly.loop_header878.1.2 ], [ %index.next1347, %vector.body1344 ]
  %vec.ind1350 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header878.1.2 ], [ %vec.ind.next1351, %vector.body1344 ]
  %298 = add nuw nsw <4 x i64> %vec.ind1350, <i64 32, i64 32, i64 32, i64 32>
  %299 = trunc <4 x i64> %298 to <4 x i32>
  %300 = mul <4 x i32> %broadcast.splat1353, %299
  %301 = add <4 x i32> %300, <i32 1, i32 1, i32 1, i32 1>
  %302 = urem <4 x i32> %301, <i32 80, i32 80, i32 80, i32 80>
  %303 = sitofp <4 x i32> %302 to <4 x double>
  %304 = fmul fast <4 x double> %303, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %305 = extractelement <4 x i64> %298, i32 0
  %306 = shl i64 %305, 3
  %307 = add i64 %306, %296
  %308 = getelementptr i8, i8* %call1, i64 %307
  %309 = bitcast i8* %308 to <4 x double>*
  store <4 x double> %304, <4 x double>* %309, align 8, !alias.scope !105, !noalias !110
  %index.next1347 = add i64 %index1346, 4
  %vec.ind.next1351 = add <4 x i64> %vec.ind1350, <i64 4, i64 4, i64 4, i64 4>
  %310 = icmp eq i64 %index.next1347, 28
  br i1 %310, label %polly.loop_exit886.1.2, label %vector.body1344, !llvm.loop !116

polly.loop_exit886.1.2:                           ; preds = %vector.body1344
  %polly.indvar_next882.1.2 = add nuw nsw i64 %polly.indvar881.1.2, 1
  %exitcond982.1.2.not = icmp eq i64 %polly.indvar_next882.1.2, 16
  br i1 %exitcond982.1.2.not, label %init_array.exit, label %polly.loop_header878.1.2

polly.loop_header852.1:                           ; preds = %polly.loop_exit860, %polly.loop_exit860.1
  %polly.indvar855.1 = phi i64 [ %polly.indvar_next856.1, %polly.loop_exit860.1 ], [ 0, %polly.loop_exit860 ]
  %311 = mul nuw nsw i64 %polly.indvar855.1, 480
  %312 = trunc i64 %polly.indvar855.1 to i32
  %broadcast.splatinsert1222 = insertelement <4 x i32> poison, i32 %312, i32 0
  %broadcast.splat1223 = shufflevector <4 x i32> %broadcast.splatinsert1222, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1214

vector.body1214:                                  ; preds = %vector.body1214, %polly.loop_header852.1
  %index1216 = phi i64 [ 0, %polly.loop_header852.1 ], [ %index.next1217, %vector.body1214 ]
  %vec.ind1220 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header852.1 ], [ %vec.ind.next1221, %vector.body1214 ]
  %313 = add nuw nsw <4 x i64> %vec.ind1220, <i64 32, i64 32, i64 32, i64 32>
  %314 = trunc <4 x i64> %313 to <4 x i32>
  %315 = mul <4 x i32> %broadcast.splat1223, %314
  %316 = add <4 x i32> %315, <i32 2, i32 2, i32 2, i32 2>
  %317 = urem <4 x i32> %316, <i32 60, i32 60, i32 60, i32 60>
  %318 = sitofp <4 x i32> %317 to <4 x double>
  %319 = fmul fast <4 x double> %318, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %320 = extractelement <4 x i64> %313, i32 0
  %321 = shl i64 %320, 3
  %322 = add i64 %321, %311
  %323 = getelementptr i8, i8* %call2, i64 %322
  %324 = bitcast i8* %323 to <4 x double>*
  store <4 x double> %319, <4 x double>* %324, align 8, !alias.scope !106, !noalias !108
  %index.next1217 = add i64 %index1216, 4
  %vec.ind.next1221 = add <4 x i64> %vec.ind1220, <i64 4, i64 4, i64 4, i64 4>
  %325 = icmp eq i64 %index.next1217, 28
  br i1 %325, label %polly.loop_exit860.1, label %vector.body1214, !llvm.loop !117

polly.loop_exit860.1:                             ; preds = %vector.body1214
  %polly.indvar_next856.1 = add nuw nsw i64 %polly.indvar855.1, 1
  %exitcond988.1.not = icmp eq i64 %polly.indvar_next856.1, 32
  br i1 %exitcond988.1.not, label %polly.loop_header852.11019, label %polly.loop_header852.1

polly.loop_header852.11019:                       ; preds = %polly.loop_exit860.1, %polly.loop_exit860.11030
  %polly.indvar855.11018 = phi i64 [ %polly.indvar_next856.11028, %polly.loop_exit860.11030 ], [ 0, %polly.loop_exit860.1 ]
  %326 = add nuw nsw i64 %polly.indvar855.11018, 32
  %327 = mul nuw nsw i64 %326, 480
  %328 = trunc i64 %326 to i32
  %broadcast.splatinsert1236 = insertelement <4 x i32> poison, i32 %328, i32 0
  %broadcast.splat1237 = shufflevector <4 x i32> %broadcast.splatinsert1236, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1226

vector.body1226:                                  ; preds = %vector.body1226, %polly.loop_header852.11019
  %index1228 = phi i64 [ 0, %polly.loop_header852.11019 ], [ %index.next1229, %vector.body1226 ]
  %vec.ind1234 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header852.11019 ], [ %vec.ind.next1235, %vector.body1226 ]
  %329 = mul <4 x i32> %vec.ind1234, %broadcast.splat1237
  %330 = add <4 x i32> %329, <i32 2, i32 2, i32 2, i32 2>
  %331 = urem <4 x i32> %330, <i32 60, i32 60, i32 60, i32 60>
  %332 = sitofp <4 x i32> %331 to <4 x double>
  %333 = fmul fast <4 x double> %332, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %334 = shl i64 %index1228, 3
  %335 = add i64 %334, %327
  %336 = getelementptr i8, i8* %call2, i64 %335
  %337 = bitcast i8* %336 to <4 x double>*
  store <4 x double> %333, <4 x double>* %337, align 8, !alias.scope !106, !noalias !108
  %index.next1229 = add i64 %index1228, 4
  %vec.ind.next1235 = add <4 x i32> %vec.ind1234, <i32 4, i32 4, i32 4, i32 4>
  %338 = icmp eq i64 %index.next1229, 32
  br i1 %338, label %polly.loop_exit860.11030, label %vector.body1226, !llvm.loop !118

polly.loop_exit860.11030:                         ; preds = %vector.body1226
  %polly.indvar_next856.11028 = add nuw nsw i64 %polly.indvar855.11018, 1
  %exitcond988.11029.not = icmp eq i64 %polly.indvar_next856.11028, 32
  br i1 %exitcond988.11029.not, label %polly.loop_header852.1.1, label %polly.loop_header852.11019

polly.loop_header852.1.1:                         ; preds = %polly.loop_exit860.11030, %polly.loop_exit860.1.1
  %polly.indvar855.1.1 = phi i64 [ %polly.indvar_next856.1.1, %polly.loop_exit860.1.1 ], [ 0, %polly.loop_exit860.11030 ]
  %339 = add nuw nsw i64 %polly.indvar855.1.1, 32
  %340 = mul nuw nsw i64 %339, 480
  %341 = trunc i64 %339 to i32
  %broadcast.splatinsert1248 = insertelement <4 x i32> poison, i32 %341, i32 0
  %broadcast.splat1249 = shufflevector <4 x i32> %broadcast.splatinsert1248, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1240

vector.body1240:                                  ; preds = %vector.body1240, %polly.loop_header852.1.1
  %index1242 = phi i64 [ 0, %polly.loop_header852.1.1 ], [ %index.next1243, %vector.body1240 ]
  %vec.ind1246 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header852.1.1 ], [ %vec.ind.next1247, %vector.body1240 ]
  %342 = add nuw nsw <4 x i64> %vec.ind1246, <i64 32, i64 32, i64 32, i64 32>
  %343 = trunc <4 x i64> %342 to <4 x i32>
  %344 = mul <4 x i32> %broadcast.splat1249, %343
  %345 = add <4 x i32> %344, <i32 2, i32 2, i32 2, i32 2>
  %346 = urem <4 x i32> %345, <i32 60, i32 60, i32 60, i32 60>
  %347 = sitofp <4 x i32> %346 to <4 x double>
  %348 = fmul fast <4 x double> %347, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %349 = extractelement <4 x i64> %342, i32 0
  %350 = shl i64 %349, 3
  %351 = add i64 %350, %340
  %352 = getelementptr i8, i8* %call2, i64 %351
  %353 = bitcast i8* %352 to <4 x double>*
  store <4 x double> %348, <4 x double>* %353, align 8, !alias.scope !106, !noalias !108
  %index.next1243 = add i64 %index1242, 4
  %vec.ind.next1247 = add <4 x i64> %vec.ind1246, <i64 4, i64 4, i64 4, i64 4>
  %354 = icmp eq i64 %index.next1243, 28
  br i1 %354, label %polly.loop_exit860.1.1, label %vector.body1240, !llvm.loop !119

polly.loop_exit860.1.1:                           ; preds = %vector.body1240
  %polly.indvar_next856.1.1 = add nuw nsw i64 %polly.indvar855.1.1, 1
  %exitcond988.1.1.not = icmp eq i64 %polly.indvar_next856.1.1, 32
  br i1 %exitcond988.1.1.not, label %polly.loop_header852.2, label %polly.loop_header852.1.1

polly.loop_header852.2:                           ; preds = %polly.loop_exit860.1.1, %polly.loop_exit860.2
  %polly.indvar855.2 = phi i64 [ %polly.indvar_next856.2, %polly.loop_exit860.2 ], [ 0, %polly.loop_exit860.1.1 ]
  %355 = add nuw nsw i64 %polly.indvar855.2, 64
  %356 = mul nuw nsw i64 %355, 480
  %357 = trunc i64 %355 to i32
  %broadcast.splatinsert1262 = insertelement <4 x i32> poison, i32 %357, i32 0
  %broadcast.splat1263 = shufflevector <4 x i32> %broadcast.splatinsert1262, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1252

vector.body1252:                                  ; preds = %vector.body1252, %polly.loop_header852.2
  %index1254 = phi i64 [ 0, %polly.loop_header852.2 ], [ %index.next1255, %vector.body1252 ]
  %vec.ind1260 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header852.2 ], [ %vec.ind.next1261, %vector.body1252 ]
  %358 = mul <4 x i32> %vec.ind1260, %broadcast.splat1263
  %359 = add <4 x i32> %358, <i32 2, i32 2, i32 2, i32 2>
  %360 = urem <4 x i32> %359, <i32 60, i32 60, i32 60, i32 60>
  %361 = sitofp <4 x i32> %360 to <4 x double>
  %362 = fmul fast <4 x double> %361, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %363 = shl i64 %index1254, 3
  %364 = add i64 %363, %356
  %365 = getelementptr i8, i8* %call2, i64 %364
  %366 = bitcast i8* %365 to <4 x double>*
  store <4 x double> %362, <4 x double>* %366, align 8, !alias.scope !106, !noalias !108
  %index.next1255 = add i64 %index1254, 4
  %vec.ind.next1261 = add <4 x i32> %vec.ind1260, <i32 4, i32 4, i32 4, i32 4>
  %367 = icmp eq i64 %index.next1255, 32
  br i1 %367, label %polly.loop_exit860.2, label %vector.body1252, !llvm.loop !120

polly.loop_exit860.2:                             ; preds = %vector.body1252
  %polly.indvar_next856.2 = add nuw nsw i64 %polly.indvar855.2, 1
  %exitcond988.2.not = icmp eq i64 %polly.indvar_next856.2, 16
  br i1 %exitcond988.2.not, label %polly.loop_header852.1.2, label %polly.loop_header852.2

polly.loop_header852.1.2:                         ; preds = %polly.loop_exit860.2, %polly.loop_exit860.1.2
  %polly.indvar855.1.2 = phi i64 [ %polly.indvar_next856.1.2, %polly.loop_exit860.1.2 ], [ 0, %polly.loop_exit860.2 ]
  %368 = add nuw nsw i64 %polly.indvar855.1.2, 64
  %369 = mul nuw nsw i64 %368, 480
  %370 = trunc i64 %368 to i32
  %broadcast.splatinsert1274 = insertelement <4 x i32> poison, i32 %370, i32 0
  %broadcast.splat1275 = shufflevector <4 x i32> %broadcast.splatinsert1274, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1266

vector.body1266:                                  ; preds = %vector.body1266, %polly.loop_header852.1.2
  %index1268 = phi i64 [ 0, %polly.loop_header852.1.2 ], [ %index.next1269, %vector.body1266 ]
  %vec.ind1272 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header852.1.2 ], [ %vec.ind.next1273, %vector.body1266 ]
  %371 = add nuw nsw <4 x i64> %vec.ind1272, <i64 32, i64 32, i64 32, i64 32>
  %372 = trunc <4 x i64> %371 to <4 x i32>
  %373 = mul <4 x i32> %broadcast.splat1275, %372
  %374 = add <4 x i32> %373, <i32 2, i32 2, i32 2, i32 2>
  %375 = urem <4 x i32> %374, <i32 60, i32 60, i32 60, i32 60>
  %376 = sitofp <4 x i32> %375 to <4 x double>
  %377 = fmul fast <4 x double> %376, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %378 = extractelement <4 x i64> %371, i32 0
  %379 = shl i64 %378, 3
  %380 = add i64 %379, %369
  %381 = getelementptr i8, i8* %call2, i64 %380
  %382 = bitcast i8* %381 to <4 x double>*
  store <4 x double> %377, <4 x double>* %382, align 8, !alias.scope !106, !noalias !108
  %index.next1269 = add i64 %index1268, 4
  %vec.ind.next1273 = add <4 x i64> %vec.ind1272, <i64 4, i64 4, i64 4, i64 4>
  %383 = icmp eq i64 %index.next1269, 28
  br i1 %383, label %polly.loop_exit860.1.2, label %vector.body1266, !llvm.loop !121

polly.loop_exit860.1.2:                           ; preds = %vector.body1266
  %polly.indvar_next856.1.2 = add nuw nsw i64 %polly.indvar855.1.2, 1
  %exitcond988.1.2.not = icmp eq i64 %polly.indvar_next856.1.2, 16
  br i1 %exitcond988.1.2.not, label %polly.loop_header878, label %polly.loop_header852.1.2

polly.loop_header825.1:                           ; preds = %polly.loop_exit833, %polly.loop_exit833.1
  %polly.indvar828.1 = phi i64 [ %polly.indvar_next829.1, %polly.loop_exit833.1 ], [ 0, %polly.loop_exit833 ]
  %384 = mul nuw nsw i64 %polly.indvar828.1, 640
  %385 = trunc i64 %polly.indvar828.1 to i32
  %broadcast.splatinsert1108 = insertelement <4 x i32> poison, i32 %385, i32 0
  %broadcast.splat1109 = shufflevector <4 x i32> %broadcast.splatinsert1108, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1100

vector.body1100:                                  ; preds = %vector.body1100, %polly.loop_header825.1
  %index1102 = phi i64 [ 0, %polly.loop_header825.1 ], [ %index.next1103, %vector.body1100 ]
  %vec.ind1106 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.1 ], [ %vec.ind.next1107, %vector.body1100 ]
  %386 = add nuw nsw <4 x i64> %vec.ind1106, <i64 32, i64 32, i64 32, i64 32>
  %387 = trunc <4 x i64> %386 to <4 x i32>
  %388 = mul <4 x i32> %broadcast.splat1109, %387
  %389 = add <4 x i32> %388, <i32 3, i32 3, i32 3, i32 3>
  %390 = urem <4 x i32> %389, <i32 80, i32 80, i32 80, i32 80>
  %391 = sitofp <4 x i32> %390 to <4 x double>
  %392 = fmul fast <4 x double> %391, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %393 = extractelement <4 x i64> %386, i32 0
  %394 = shl i64 %393, 3
  %395 = add nuw nsw i64 %394, %384
  %396 = getelementptr i8, i8* %call, i64 %395
  %397 = bitcast i8* %396 to <4 x double>*
  store <4 x double> %392, <4 x double>* %397, align 8, !alias.scope !102, !noalias !104
  %index.next1103 = add i64 %index1102, 4
  %vec.ind.next1107 = add <4 x i64> %vec.ind1106, <i64 4, i64 4, i64 4, i64 4>
  %398 = icmp eq i64 %index.next1103, 32
  br i1 %398, label %polly.loop_exit833.1, label %vector.body1100, !llvm.loop !122

polly.loop_exit833.1:                             ; preds = %vector.body1100
  %polly.indvar_next829.1 = add nuw nsw i64 %polly.indvar828.1, 1
  %exitcond997.1.not = icmp eq i64 %polly.indvar_next829.1, 32
  br i1 %exitcond997.1.not, label %polly.loop_header825.2, label %polly.loop_header825.1

polly.loop_header825.2:                           ; preds = %polly.loop_exit833.1, %polly.loop_exit833.2
  %polly.indvar828.2 = phi i64 [ %polly.indvar_next829.2, %polly.loop_exit833.2 ], [ 0, %polly.loop_exit833.1 ]
  %399 = mul nuw nsw i64 %polly.indvar828.2, 640
  %400 = trunc i64 %polly.indvar828.2 to i32
  %broadcast.splatinsert1120 = insertelement <4 x i32> poison, i32 %400, i32 0
  %broadcast.splat1121 = shufflevector <4 x i32> %broadcast.splatinsert1120, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1112

vector.body1112:                                  ; preds = %vector.body1112, %polly.loop_header825.2
  %index1114 = phi i64 [ 0, %polly.loop_header825.2 ], [ %index.next1115, %vector.body1112 ]
  %vec.ind1118 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.2 ], [ %vec.ind.next1119, %vector.body1112 ]
  %401 = add nuw nsw <4 x i64> %vec.ind1118, <i64 64, i64 64, i64 64, i64 64>
  %402 = trunc <4 x i64> %401 to <4 x i32>
  %403 = mul <4 x i32> %broadcast.splat1121, %402
  %404 = add <4 x i32> %403, <i32 3, i32 3, i32 3, i32 3>
  %405 = urem <4 x i32> %404, <i32 80, i32 80, i32 80, i32 80>
  %406 = sitofp <4 x i32> %405 to <4 x double>
  %407 = fmul fast <4 x double> %406, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %408 = extractelement <4 x i64> %401, i32 0
  %409 = shl i64 %408, 3
  %410 = add nuw nsw i64 %409, %399
  %411 = getelementptr i8, i8* %call, i64 %410
  %412 = bitcast i8* %411 to <4 x double>*
  store <4 x double> %407, <4 x double>* %412, align 8, !alias.scope !102, !noalias !104
  %index.next1115 = add i64 %index1114, 4
  %vec.ind.next1119 = add <4 x i64> %vec.ind1118, <i64 4, i64 4, i64 4, i64 4>
  %413 = icmp eq i64 %index.next1115, 16
  br i1 %413, label %polly.loop_exit833.2, label %vector.body1112, !llvm.loop !123

polly.loop_exit833.2:                             ; preds = %vector.body1112
  %polly.indvar_next829.2 = add nuw nsw i64 %polly.indvar828.2, 1
  %exitcond997.2.not = icmp eq i64 %polly.indvar_next829.2, 32
  br i1 %exitcond997.2.not, label %polly.loop_header825.11033, label %polly.loop_header825.2

polly.loop_header825.11033:                       ; preds = %polly.loop_exit833.2, %polly.loop_exit833.11044
  %polly.indvar828.11032 = phi i64 [ %polly.indvar_next829.11042, %polly.loop_exit833.11044 ], [ 0, %polly.loop_exit833.2 ]
  %414 = add nuw nsw i64 %polly.indvar828.11032, 32
  %415 = mul nuw nsw i64 %414, 640
  %416 = trunc i64 %414 to i32
  %broadcast.splatinsert1134 = insertelement <4 x i32> poison, i32 %416, i32 0
  %broadcast.splat1135 = shufflevector <4 x i32> %broadcast.splatinsert1134, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1124

vector.body1124:                                  ; preds = %vector.body1124, %polly.loop_header825.11033
  %index1126 = phi i64 [ 0, %polly.loop_header825.11033 ], [ %index.next1127, %vector.body1124 ]
  %vec.ind1132 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header825.11033 ], [ %vec.ind.next1133, %vector.body1124 ]
  %417 = mul <4 x i32> %vec.ind1132, %broadcast.splat1135
  %418 = add <4 x i32> %417, <i32 3, i32 3, i32 3, i32 3>
  %419 = urem <4 x i32> %418, <i32 80, i32 80, i32 80, i32 80>
  %420 = sitofp <4 x i32> %419 to <4 x double>
  %421 = fmul fast <4 x double> %420, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %422 = shl i64 %index1126, 3
  %423 = add nuw nsw i64 %422, %415
  %424 = getelementptr i8, i8* %call, i64 %423
  %425 = bitcast i8* %424 to <4 x double>*
  store <4 x double> %421, <4 x double>* %425, align 8, !alias.scope !102, !noalias !104
  %index.next1127 = add i64 %index1126, 4
  %vec.ind.next1133 = add <4 x i32> %vec.ind1132, <i32 4, i32 4, i32 4, i32 4>
  %426 = icmp eq i64 %index.next1127, 32
  br i1 %426, label %polly.loop_exit833.11044, label %vector.body1124, !llvm.loop !124

polly.loop_exit833.11044:                         ; preds = %vector.body1124
  %polly.indvar_next829.11042 = add nuw nsw i64 %polly.indvar828.11032, 1
  %exitcond997.11043.not = icmp eq i64 %polly.indvar_next829.11042, 32
  br i1 %exitcond997.11043.not, label %polly.loop_header825.1.1, label %polly.loop_header825.11033

polly.loop_header825.1.1:                         ; preds = %polly.loop_exit833.11044, %polly.loop_exit833.1.1
  %polly.indvar828.1.1 = phi i64 [ %polly.indvar_next829.1.1, %polly.loop_exit833.1.1 ], [ 0, %polly.loop_exit833.11044 ]
  %427 = add nuw nsw i64 %polly.indvar828.1.1, 32
  %428 = mul nuw nsw i64 %427, 640
  %429 = trunc i64 %427 to i32
  %broadcast.splatinsert1146 = insertelement <4 x i32> poison, i32 %429, i32 0
  %broadcast.splat1147 = shufflevector <4 x i32> %broadcast.splatinsert1146, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1138

vector.body1138:                                  ; preds = %vector.body1138, %polly.loop_header825.1.1
  %index1140 = phi i64 [ 0, %polly.loop_header825.1.1 ], [ %index.next1141, %vector.body1138 ]
  %vec.ind1144 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.1.1 ], [ %vec.ind.next1145, %vector.body1138 ]
  %430 = add nuw nsw <4 x i64> %vec.ind1144, <i64 32, i64 32, i64 32, i64 32>
  %431 = trunc <4 x i64> %430 to <4 x i32>
  %432 = mul <4 x i32> %broadcast.splat1147, %431
  %433 = add <4 x i32> %432, <i32 3, i32 3, i32 3, i32 3>
  %434 = urem <4 x i32> %433, <i32 80, i32 80, i32 80, i32 80>
  %435 = sitofp <4 x i32> %434 to <4 x double>
  %436 = fmul fast <4 x double> %435, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %437 = extractelement <4 x i64> %430, i32 0
  %438 = shl i64 %437, 3
  %439 = add nuw nsw i64 %438, %428
  %440 = getelementptr i8, i8* %call, i64 %439
  %441 = bitcast i8* %440 to <4 x double>*
  store <4 x double> %436, <4 x double>* %441, align 8, !alias.scope !102, !noalias !104
  %index.next1141 = add i64 %index1140, 4
  %vec.ind.next1145 = add <4 x i64> %vec.ind1144, <i64 4, i64 4, i64 4, i64 4>
  %442 = icmp eq i64 %index.next1141, 32
  br i1 %442, label %polly.loop_exit833.1.1, label %vector.body1138, !llvm.loop !125

polly.loop_exit833.1.1:                           ; preds = %vector.body1138
  %polly.indvar_next829.1.1 = add nuw nsw i64 %polly.indvar828.1.1, 1
  %exitcond997.1.1.not = icmp eq i64 %polly.indvar_next829.1.1, 32
  br i1 %exitcond997.1.1.not, label %polly.loop_header825.2.1, label %polly.loop_header825.1.1

polly.loop_header825.2.1:                         ; preds = %polly.loop_exit833.1.1, %polly.loop_exit833.2.1
  %polly.indvar828.2.1 = phi i64 [ %polly.indvar_next829.2.1, %polly.loop_exit833.2.1 ], [ 0, %polly.loop_exit833.1.1 ]
  %443 = add nuw nsw i64 %polly.indvar828.2.1, 32
  %444 = mul nuw nsw i64 %443, 640
  %445 = trunc i64 %443 to i32
  %broadcast.splatinsert1158 = insertelement <4 x i32> poison, i32 %445, i32 0
  %broadcast.splat1159 = shufflevector <4 x i32> %broadcast.splatinsert1158, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1150

vector.body1150:                                  ; preds = %vector.body1150, %polly.loop_header825.2.1
  %index1152 = phi i64 [ 0, %polly.loop_header825.2.1 ], [ %index.next1153, %vector.body1150 ]
  %vec.ind1156 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.2.1 ], [ %vec.ind.next1157, %vector.body1150 ]
  %446 = add nuw nsw <4 x i64> %vec.ind1156, <i64 64, i64 64, i64 64, i64 64>
  %447 = trunc <4 x i64> %446 to <4 x i32>
  %448 = mul <4 x i32> %broadcast.splat1159, %447
  %449 = add <4 x i32> %448, <i32 3, i32 3, i32 3, i32 3>
  %450 = urem <4 x i32> %449, <i32 80, i32 80, i32 80, i32 80>
  %451 = sitofp <4 x i32> %450 to <4 x double>
  %452 = fmul fast <4 x double> %451, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %453 = extractelement <4 x i64> %446, i32 0
  %454 = shl i64 %453, 3
  %455 = add nuw nsw i64 %454, %444
  %456 = getelementptr i8, i8* %call, i64 %455
  %457 = bitcast i8* %456 to <4 x double>*
  store <4 x double> %452, <4 x double>* %457, align 8, !alias.scope !102, !noalias !104
  %index.next1153 = add i64 %index1152, 4
  %vec.ind.next1157 = add <4 x i64> %vec.ind1156, <i64 4, i64 4, i64 4, i64 4>
  %458 = icmp eq i64 %index.next1153, 16
  br i1 %458, label %polly.loop_exit833.2.1, label %vector.body1150, !llvm.loop !126

polly.loop_exit833.2.1:                           ; preds = %vector.body1150
  %polly.indvar_next829.2.1 = add nuw nsw i64 %polly.indvar828.2.1, 1
  %exitcond997.2.1.not = icmp eq i64 %polly.indvar_next829.2.1, 32
  br i1 %exitcond997.2.1.not, label %polly.loop_header825.21047, label %polly.loop_header825.2.1

polly.loop_header825.21047:                       ; preds = %polly.loop_exit833.2.1, %polly.loop_exit833.21058
  %polly.indvar828.21046 = phi i64 [ %polly.indvar_next829.21056, %polly.loop_exit833.21058 ], [ 0, %polly.loop_exit833.2.1 ]
  %459 = add nuw nsw i64 %polly.indvar828.21046, 64
  %460 = mul nuw nsw i64 %459, 640
  %461 = trunc i64 %459 to i32
  %broadcast.splatinsert1172 = insertelement <4 x i32> poison, i32 %461, i32 0
  %broadcast.splat1173 = shufflevector <4 x i32> %broadcast.splatinsert1172, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1162

vector.body1162:                                  ; preds = %vector.body1162, %polly.loop_header825.21047
  %index1164 = phi i64 [ 0, %polly.loop_header825.21047 ], [ %index.next1165, %vector.body1162 ]
  %vec.ind1170 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header825.21047 ], [ %vec.ind.next1171, %vector.body1162 ]
  %462 = mul <4 x i32> %vec.ind1170, %broadcast.splat1173
  %463 = add <4 x i32> %462, <i32 3, i32 3, i32 3, i32 3>
  %464 = urem <4 x i32> %463, <i32 80, i32 80, i32 80, i32 80>
  %465 = sitofp <4 x i32> %464 to <4 x double>
  %466 = fmul fast <4 x double> %465, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %467 = shl i64 %index1164, 3
  %468 = add nuw nsw i64 %467, %460
  %469 = getelementptr i8, i8* %call, i64 %468
  %470 = bitcast i8* %469 to <4 x double>*
  store <4 x double> %466, <4 x double>* %470, align 8, !alias.scope !102, !noalias !104
  %index.next1165 = add i64 %index1164, 4
  %vec.ind.next1171 = add <4 x i32> %vec.ind1170, <i32 4, i32 4, i32 4, i32 4>
  %471 = icmp eq i64 %index.next1165, 32
  br i1 %471, label %polly.loop_exit833.21058, label %vector.body1162, !llvm.loop !127

polly.loop_exit833.21058:                         ; preds = %vector.body1162
  %polly.indvar_next829.21056 = add nuw nsw i64 %polly.indvar828.21046, 1
  %exitcond997.21057.not = icmp eq i64 %polly.indvar_next829.21056, 16
  br i1 %exitcond997.21057.not, label %polly.loop_header825.1.2, label %polly.loop_header825.21047

polly.loop_header825.1.2:                         ; preds = %polly.loop_exit833.21058, %polly.loop_exit833.1.2
  %polly.indvar828.1.2 = phi i64 [ %polly.indvar_next829.1.2, %polly.loop_exit833.1.2 ], [ 0, %polly.loop_exit833.21058 ]
  %472 = add nuw nsw i64 %polly.indvar828.1.2, 64
  %473 = mul nuw nsw i64 %472, 640
  %474 = trunc i64 %472 to i32
  %broadcast.splatinsert1184 = insertelement <4 x i32> poison, i32 %474, i32 0
  %broadcast.splat1185 = shufflevector <4 x i32> %broadcast.splatinsert1184, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1176

vector.body1176:                                  ; preds = %vector.body1176, %polly.loop_header825.1.2
  %index1178 = phi i64 [ 0, %polly.loop_header825.1.2 ], [ %index.next1179, %vector.body1176 ]
  %vec.ind1182 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.1.2 ], [ %vec.ind.next1183, %vector.body1176 ]
  %475 = add nuw nsw <4 x i64> %vec.ind1182, <i64 32, i64 32, i64 32, i64 32>
  %476 = trunc <4 x i64> %475 to <4 x i32>
  %477 = mul <4 x i32> %broadcast.splat1185, %476
  %478 = add <4 x i32> %477, <i32 3, i32 3, i32 3, i32 3>
  %479 = urem <4 x i32> %478, <i32 80, i32 80, i32 80, i32 80>
  %480 = sitofp <4 x i32> %479 to <4 x double>
  %481 = fmul fast <4 x double> %480, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %482 = extractelement <4 x i64> %475, i32 0
  %483 = shl i64 %482, 3
  %484 = add nuw nsw i64 %483, %473
  %485 = getelementptr i8, i8* %call, i64 %484
  %486 = bitcast i8* %485 to <4 x double>*
  store <4 x double> %481, <4 x double>* %486, align 8, !alias.scope !102, !noalias !104
  %index.next1179 = add i64 %index1178, 4
  %vec.ind.next1183 = add <4 x i64> %vec.ind1182, <i64 4, i64 4, i64 4, i64 4>
  %487 = icmp eq i64 %index.next1179, 32
  br i1 %487, label %polly.loop_exit833.1.2, label %vector.body1176, !llvm.loop !128

polly.loop_exit833.1.2:                           ; preds = %vector.body1176
  %polly.indvar_next829.1.2 = add nuw nsw i64 %polly.indvar828.1.2, 1
  %exitcond997.1.2.not = icmp eq i64 %polly.indvar_next829.1.2, 16
  br i1 %exitcond997.1.2.not, label %polly.loop_header825.2.2, label %polly.loop_header825.1.2

polly.loop_header825.2.2:                         ; preds = %polly.loop_exit833.1.2, %polly.loop_exit833.2.2
  %polly.indvar828.2.2 = phi i64 [ %polly.indvar_next829.2.2, %polly.loop_exit833.2.2 ], [ 0, %polly.loop_exit833.1.2 ]
  %488 = add nuw nsw i64 %polly.indvar828.2.2, 64
  %489 = mul nuw nsw i64 %488, 640
  %490 = trunc i64 %488 to i32
  %broadcast.splatinsert1196 = insertelement <4 x i32> poison, i32 %490, i32 0
  %broadcast.splat1197 = shufflevector <4 x i32> %broadcast.splatinsert1196, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1188

vector.body1188:                                  ; preds = %vector.body1188, %polly.loop_header825.2.2
  %index1190 = phi i64 [ 0, %polly.loop_header825.2.2 ], [ %index.next1191, %vector.body1188 ]
  %vec.ind1194 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.2.2 ], [ %vec.ind.next1195, %vector.body1188 ]
  %491 = add nuw nsw <4 x i64> %vec.ind1194, <i64 64, i64 64, i64 64, i64 64>
  %492 = trunc <4 x i64> %491 to <4 x i32>
  %493 = mul <4 x i32> %broadcast.splat1197, %492
  %494 = add <4 x i32> %493, <i32 3, i32 3, i32 3, i32 3>
  %495 = urem <4 x i32> %494, <i32 80, i32 80, i32 80, i32 80>
  %496 = sitofp <4 x i32> %495 to <4 x double>
  %497 = fmul fast <4 x double> %496, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %498 = extractelement <4 x i64> %491, i32 0
  %499 = shl i64 %498, 3
  %500 = add nuw nsw i64 %499, %489
  %501 = getelementptr i8, i8* %call, i64 %500
  %502 = bitcast i8* %501 to <4 x double>*
  store <4 x double> %497, <4 x double>* %502, align 8, !alias.scope !102, !noalias !104
  %index.next1191 = add i64 %index1190, 4
  %vec.ind.next1195 = add <4 x i64> %vec.ind1194, <i64 4, i64 4, i64 4, i64 4>
  %503 = icmp eq i64 %index.next1191, 16
  br i1 %503, label %polly.loop_exit833.2.2, label %vector.body1188, !llvm.loop !129

polly.loop_exit833.2.2:                           ; preds = %vector.body1188
  %polly.indvar_next829.2.2 = add nuw nsw i64 %polly.indvar828.2.2, 1
  %exitcond997.2.2.not = icmp eq i64 %polly.indvar_next829.2.2, 16
  br i1 %exitcond997.2.2.not, label %polly.loop_header852, label %polly.loop_header825.2.2
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
!35 = !{!"llvm.loop.tile.size", i32 20}
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
!49 = !{!"llvm.loop.tile.size", i32 96}
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
