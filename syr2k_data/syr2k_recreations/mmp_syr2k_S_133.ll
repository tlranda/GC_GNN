; ModuleID = 'syr2k_recreations//mmp_syr2k_S_133.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_133.c"
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
  %call = tail call i8* @polybench_alloc_data(i64 6400, i32 8) #6
  %call839 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
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
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start490, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1550, label %vector.ph1360

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
  br i1 %cmp.n1364, label %for.inc6.i, label %for.body3.i46.preheader1550

for.body3.i46.preheader1550:                      ; preds = %for.body3.i46.preheader, %middle.block1357
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1357 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1550, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1550 ]
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
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start291, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1417 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1417, label %for.body3.i60.preheader1547, label %vector.ph1418

vector.ph1418:                                    ; preds = %for.body3.i60.preheader
  %n.vec1420 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1416

vector.body1416:                                  ; preds = %vector.body1416, %vector.ph1418
  %index1421 = phi i64 [ 0, %vector.ph1418 ], [ %index.next1422, %vector.body1416 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i52, i64 %index1421
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1425 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1425, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1422 = add i64 %index1421, 4
  %57 = icmp eq i64 %index.next1422, %n.vec1420
  br i1 %57, label %middle.block1414, label %vector.body1416, !llvm.loop !57

middle.block1414:                                 ; preds = %vector.body1416
  %cmp.n1424 = icmp eq i64 %indvars.iv21.i52, %n.vec1420
  br i1 %cmp.n1424, label %for.inc6.i63, label %for.body3.i60.preheader1547

for.body3.i60.preheader1547:                      ; preds = %for.body3.i60.preheader, %middle.block1414
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1420, %middle.block1414 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1547, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1547 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1414, %for.cond1.preheader.i54
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
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1481 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1481, label %for.body3.i99.preheader1544, label %vector.ph1482

vector.ph1482:                                    ; preds = %for.body3.i99.preheader
  %n.vec1484 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1480

vector.body1480:                                  ; preds = %vector.body1480, %vector.ph1482
  %index1485 = phi i64 [ 0, %vector.ph1482 ], [ %index.next1486, %vector.body1480 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i91, i64 %index1485
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1489 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1489, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1486 = add i64 %index1485, 4
  %68 = icmp eq i64 %index.next1486, %n.vec1484
  br i1 %68, label %middle.block1478, label %vector.body1480, !llvm.loop !59

middle.block1478:                                 ; preds = %vector.body1480
  %cmp.n1488 = icmp eq i64 %indvars.iv21.i91, %n.vec1484
  br i1 %cmp.n1488, label %for.inc6.i102, label %for.body3.i99.preheader1544

for.body3.i99.preheader1544:                      ; preds = %for.body3.i99.preheader, %middle.block1478
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1484, %middle.block1478 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1544, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1544 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1478, %for.cond1.preheader.i93
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
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !61
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
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
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !63

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !64

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  %malloccall136 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1493 = phi i64 [ %indvar.next1494, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1493, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1495 = icmp ult i64 %88, 4
  br i1 %min.iters.check1495, label %polly.loop_header192.preheader, label %vector.ph1496

vector.ph1496:                                    ; preds = %polly.loop_header
  %n.vec1498 = and i64 %88, -4
  br label %vector.body1492

vector.body1492:                                  ; preds = %vector.body1492, %vector.ph1496
  %index1499 = phi i64 [ 0, %vector.ph1496 ], [ %index.next1500, %vector.body1492 ]
  %90 = shl nuw nsw i64 %index1499, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1503 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1503, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1500 = add i64 %index1499, 4
  %95 = icmp eq i64 %index.next1500, %n.vec1498
  br i1 %95, label %middle.block1490, label %vector.body1492, !llvm.loop !72

middle.block1490:                                 ; preds = %vector.body1492
  %cmp.n1502 = icmp eq i64 %88, %n.vec1498
  br i1 %cmp.n1502, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1490
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1498, %middle.block1490 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1490
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond936.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1494 = add i64 %indvar1493, 1
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
  %97 = shl nuw nsw i64 %polly.indvar225, 4
  %98 = mul nsw i64 %polly.indvar225, -16
  %99 = add nuw nsw i64 %97, 16
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit259
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next930 = add nsw i64 %indvars.iv929, -16
  %exitcond932.not = icmp eq i64 %polly.indvar_next226, 5
  br i1 %exitcond932.not, label %polly.loop_header222.1, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit259, %polly.loop_header222
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit259 ], [ 0, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit259 ], [ %97, %polly.loop_header222 ]
  %smin1507 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 15)
  %100 = add nuw nsw i64 %smin1507, 1
  %smin926 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 15)
  %101 = add nsw i64 %polly.indvar231, %98
  %.not = icmp ult i64 %polly.indvar231, %99
  %polly.access.mul.call1251 = mul nuw nsw i64 %polly.indvar231, 60
  br i1 %.not, label %polly.loop_header234.us, label %polly.loop_header234

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.merge.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.merge.us ], [ 0, %polly.loop_header228 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 80
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header234.us
  %polly.indvar243.us = phi i64 [ 0, %polly.loop_header234.us ], [ %polly.indvar_next244.us, %polly.loop_header240.us ]
  %102 = add nuw nsw i64 %polly.indvar243.us, %97
  %polly.access.mul.call1247.us = mul nuw nsw i64 %102, 60
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
  %103 = mul nuw nsw i64 %polly.indvar231, 640
  %scevgep285 = getelementptr i8, i8* %call, i64 %103
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
  %104 = add nuw nsw i64 %polly.indvar243, %97
  %polly.access.mul.call1247 = mul nuw nsw i64 %104, 60
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
  %polly.access.add.Packed_MemRef_call1255 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1, %101
  %polly.access.Packed_MemRef_call1256 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255
  store double %polly.access.call1253.load, double* %polly.access.Packed_MemRef_call1256, align 8
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond922.not = icmp eq i64 %polly.indvar_next238, 50
  br i1 %exitcond922.not, label %polly.loop_exit236, label %polly.loop_header234

polly.loop_header257:                             ; preds = %polly.loop_exit265, %polly.loop_exit236
  %polly.indvar260 = phi i64 [ 0, %polly.loop_exit236 ], [ %polly.indvar_next261, %polly.loop_exit265 ]
  %polly.access.mul.Packed_MemRef_call1269 = mul nuw nsw i64 %polly.indvar260, 80
  %polly.access.add.Packed_MemRef_call2274 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1269, %polly.indvar231
  %polly.access.Packed_MemRef_call2275 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2274
  %_p_scalar_276 = load double, double* %polly.access.Packed_MemRef_call2275, align 8
  %polly.access.add.Packed_MemRef_call1282 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1269, %101
  %polly.access.Packed_MemRef_call1283 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282
  %_p_scalar_284 = load double, double* %polly.access.Packed_MemRef_call1283, align 8
  %min.iters.check1508 = icmp ult i64 %smin1507, 3
  br i1 %min.iters.check1508, label %polly.loop_header263.preheader, label %vector.ph1509

vector.ph1509:                                    ; preds = %polly.loop_header257
  %n.vec1511 = and i64 %100, 28
  %broadcast.splatinsert1517 = insertelement <4 x double> poison, double %_p_scalar_276, i32 0
  %broadcast.splat1518 = shufflevector <4 x double> %broadcast.splatinsert1517, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1520 = insertelement <4 x double> poison, double %_p_scalar_284, i32 0
  %broadcast.splat1521 = shufflevector <4 x double> %broadcast.splatinsert1520, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1506

vector.body1506:                                  ; preds = %vector.body1506, %vector.ph1509
  %index1512 = phi i64 [ 0, %vector.ph1509 ], [ %index.next1513, %vector.body1506 ]
  %105 = add nuw nsw i64 %index1512, %97
  %106 = add nuw nsw i64 %index1512, %polly.access.mul.Packed_MemRef_call1269
  %107 = getelementptr double, double* %Packed_MemRef_call1, i64 %106
  %108 = bitcast double* %107 to <4 x double>*
  %wide.load1516 = load <4 x double>, <4 x double>* %108, align 8
  %109 = fmul fast <4 x double> %broadcast.splat1518, %wide.load1516
  %110 = add nuw nsw i64 %105, %polly.access.mul.Packed_MemRef_call1269
  %111 = getelementptr double, double* %Packed_MemRef_call2, i64 %110
  %112 = bitcast double* %111 to <4 x double>*
  %wide.load1519 = load <4 x double>, <4 x double>* %112, align 8
  %113 = fmul fast <4 x double> %broadcast.splat1521, %wide.load1519
  %114 = shl i64 %105, 3
  %115 = getelementptr i8, i8* %scevgep285, i64 %114
  %116 = bitcast i8* %115 to <4 x double>*
  %wide.load1522 = load <4 x double>, <4 x double>* %116, align 8, !alias.scope !65, !noalias !67
  %117 = fadd fast <4 x double> %113, %109
  %118 = fmul fast <4 x double> %117, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %119 = fadd fast <4 x double> %118, %wide.load1522
  %120 = bitcast i8* %115 to <4 x double>*
  store <4 x double> %119, <4 x double>* %120, align 8, !alias.scope !65, !noalias !67
  %index.next1513 = add i64 %index1512, 4
  %121 = icmp eq i64 %index.next1513, %n.vec1511
  br i1 %121, label %middle.block1504, label %vector.body1506, !llvm.loop !77

middle.block1504:                                 ; preds = %vector.body1506
  %cmp.n1515 = icmp eq i64 %100, %n.vec1511
  br i1 %cmp.n1515, label %polly.loop_exit265, label %polly.loop_header263.preheader

polly.loop_header263.preheader:                   ; preds = %polly.loop_header257, %middle.block1504
  %polly.indvar266.ph = phi i64 [ 0, %polly.loop_header257 ], [ %n.vec1511, %middle.block1504 ]
  br label %polly.loop_header263

polly.loop_exit265:                               ; preds = %polly.loop_header263, %middle.block1504
  %polly.indvar_next261 = add nuw nsw i64 %polly.indvar260, 1
  %exitcond928.not = icmp eq i64 %polly.indvar_next261, 50
  br i1 %exitcond928.not, label %polly.loop_exit259, label %polly.loop_header257

polly.loop_header263:                             ; preds = %polly.loop_header263.preheader, %polly.loop_header263
  %polly.indvar266 = phi i64 [ %polly.indvar_next267, %polly.loop_header263 ], [ %polly.indvar266.ph, %polly.loop_header263.preheader ]
  %122 = add nuw nsw i64 %polly.indvar266, %97
  %polly.access.add.Packed_MemRef_call1270 = add nuw nsw i64 %polly.indvar266, %polly.access.mul.Packed_MemRef_call1269
  %polly.access.Packed_MemRef_call1271 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1270
  %_p_scalar_272 = load double, double* %polly.access.Packed_MemRef_call1271, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_276, %_p_scalar_272
  %polly.access.add.Packed_MemRef_call2278 = add nuw nsw i64 %122, %polly.access.mul.Packed_MemRef_call1269
  %polly.access.Packed_MemRef_call2279 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2278
  %_p_scalar_280 = load double, double* %polly.access.Packed_MemRef_call2279, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_284, %_p_scalar_280
  %123 = shl i64 %122, 3
  %scevgep286 = getelementptr i8, i8* %scevgep285, i64 %123
  %scevgep286287 = bitcast i8* %scevgep286 to double*
  %_p_scalar_288 = load double, double* %scevgep286287, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_288
  store double %p_add42.i118, double* %scevgep286287, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next267 = add nuw nsw i64 %polly.indvar266, 1
  %exitcond927.not = icmp eq i64 %polly.indvar266, %smin926
  br i1 %exitcond927.not, label %polly.loop_exit265, label %polly.loop_header263, !llvm.loop !78

polly.start291:                                   ; preds = %kernel_syr2k.exit
  %malloccall293 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  %malloccall295 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header379

polly.loop_header379:                             ; preds = %polly.loop_exit387, %polly.start291
  %indvar1429 = phi i64 [ %indvar.next1430, %polly.loop_exit387 ], [ 0, %polly.start291 ]
  %polly.indvar382 = phi i64 [ %polly.indvar_next383, %polly.loop_exit387 ], [ 1, %polly.start291 ]
  %124 = add i64 %indvar1429, 1
  %125 = mul nuw nsw i64 %polly.indvar382, 640
  %scevgep391 = getelementptr i8, i8* %call, i64 %125
  %min.iters.check1431 = icmp ult i64 %124, 4
  br i1 %min.iters.check1431, label %polly.loop_header385.preheader, label %vector.ph1432

vector.ph1432:                                    ; preds = %polly.loop_header379
  %n.vec1434 = and i64 %124, -4
  br label %vector.body1428

vector.body1428:                                  ; preds = %vector.body1428, %vector.ph1432
  %index1435 = phi i64 [ 0, %vector.ph1432 ], [ %index.next1436, %vector.body1428 ]
  %126 = shl nuw nsw i64 %index1435, 3
  %127 = getelementptr i8, i8* %scevgep391, i64 %126
  %128 = bitcast i8* %127 to <4 x double>*
  %wide.load1439 = load <4 x double>, <4 x double>* %128, align 8, !alias.scope !79, !noalias !81
  %129 = fmul fast <4 x double> %wide.load1439, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %130 = bitcast i8* %127 to <4 x double>*
  store <4 x double> %129, <4 x double>* %130, align 8, !alias.scope !79, !noalias !81
  %index.next1436 = add i64 %index1435, 4
  %131 = icmp eq i64 %index.next1436, %n.vec1434
  br i1 %131, label %middle.block1426, label %vector.body1428, !llvm.loop !86

middle.block1426:                                 ; preds = %vector.body1428
  %cmp.n1438 = icmp eq i64 %124, %n.vec1434
  br i1 %cmp.n1438, label %polly.loop_exit387, label %polly.loop_header385.preheader

polly.loop_header385.preheader:                   ; preds = %polly.loop_header379, %middle.block1426
  %polly.indvar388.ph = phi i64 [ 0, %polly.loop_header379 ], [ %n.vec1434, %middle.block1426 ]
  br label %polly.loop_header385

polly.loop_exit387:                               ; preds = %polly.loop_header385, %middle.block1426
  %polly.indvar_next383 = add nuw nsw i64 %polly.indvar382, 1
  %exitcond955.not = icmp eq i64 %polly.indvar_next383, 80
  %indvar.next1430 = add i64 %indvar1429, 1
  br i1 %exitcond955.not, label %polly.loop_header395.preheader, label %polly.loop_header379

polly.loop_header395.preheader:                   ; preds = %polly.loop_exit387
  %Packed_MemRef_call1294 = bitcast i8* %malloccall293 to double*
  %Packed_MemRef_call2296 = bitcast i8* %malloccall295 to double*
  br label %polly.loop_header395

polly.loop_header385:                             ; preds = %polly.loop_header385.preheader, %polly.loop_header385
  %polly.indvar388 = phi i64 [ %polly.indvar_next389, %polly.loop_header385 ], [ %polly.indvar388.ph, %polly.loop_header385.preheader ]
  %132 = shl nuw nsw i64 %polly.indvar388, 3
  %scevgep392 = getelementptr i8, i8* %scevgep391, i64 %132
  %scevgep392393 = bitcast i8* %scevgep392 to double*
  %_p_scalar_394 = load double, double* %scevgep392393, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_394, 1.200000e+00
  store double %p_mul.i57, double* %scevgep392393, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next389 = add nuw nsw i64 %polly.indvar388, 1
  %exitcond954.not = icmp eq i64 %polly.indvar_next389, %polly.indvar382
  br i1 %exitcond954.not, label %polly.loop_exit387, label %polly.loop_header385, !llvm.loop !87

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
  %polly.access.call2410.load = load double, double* %polly.access.call2410, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call2296 = add nuw nsw i64 %polly.indvar404, %polly.access.mul.Packed_MemRef_call2296
  %polly.access.Packed_MemRef_call2296 = getelementptr double, double* %Packed_MemRef_call2296, i64 %polly.access.add.Packed_MemRef_call2296
  store double %polly.access.call2410.load, double* %polly.access.Packed_MemRef_call2296, align 8
  %polly.indvar_next405 = add nuw nsw i64 %polly.indvar404, 1
  %exitcond952.not = icmp eq i64 %polly.indvar_next405, 80
  br i1 %exitcond952.not, label %polly.loop_exit403, label %polly.loop_header401

polly.loop_header417:                             ; preds = %polly.loop_exit403, %polly.loop_exit425
  %indvars.iv948 = phi i64 [ %indvars.iv.next949, %polly.loop_exit425 ], [ 80, %polly.loop_exit403 ]
  %polly.indvar420 = phi i64 [ %polly.indvar_next421, %polly.loop_exit425 ], [ 0, %polly.loop_exit403 ]
  %133 = shl nuw nsw i64 %polly.indvar420, 4
  %134 = mul nsw i64 %polly.indvar420, -16
  %135 = add nuw nsw i64 %133, 16
  br label %polly.loop_header423

polly.loop_exit425:                               ; preds = %polly.loop_exit458
  %polly.indvar_next421 = add nuw nsw i64 %polly.indvar420, 1
  %indvars.iv.next949 = add nsw i64 %indvars.iv948, -16
  %exitcond951.not = icmp eq i64 %polly.indvar_next421, 5
  br i1 %exitcond951.not, label %polly.loop_header417.1, label %polly.loop_header417

polly.loop_header423:                             ; preds = %polly.loop_exit458, %polly.loop_header417
  %indvars.iv937 = phi i64 [ %indvars.iv.next938, %polly.loop_exit458 ], [ 0, %polly.loop_header417 ]
  %polly.indvar426 = phi i64 [ %polly.indvar_next427, %polly.loop_exit458 ], [ %133, %polly.loop_header417 ]
  %smin1443 = call i64 @llvm.smin.i64(i64 %indvars.iv937, i64 15)
  %136 = add nuw nsw i64 %smin1443, 1
  %smin945 = call i64 @llvm.smin.i64(i64 %indvars.iv937, i64 15)
  %137 = add nsw i64 %polly.indvar426, %134
  %.not893 = icmp ult i64 %polly.indvar426, %135
  %polly.access.mul.call1450 = mul nuw nsw i64 %polly.indvar426, 60
  br i1 %.not893, label %polly.loop_header429.us, label %polly.loop_header429

polly.loop_header429.us:                          ; preds = %polly.loop_header423, %polly.merge446.us
  %polly.indvar432.us = phi i64 [ %polly.indvar_next433.us, %polly.merge446.us ], [ 0, %polly.loop_header423 ]
  %polly.access.mul.Packed_MemRef_call1294.us = mul nuw nsw i64 %polly.indvar432.us, 80
  br label %polly.loop_header435.us

polly.loop_header435.us:                          ; preds = %polly.loop_header435.us, %polly.loop_header429.us
  %polly.indvar438.us = phi i64 [ 0, %polly.loop_header429.us ], [ %polly.indvar_next439.us, %polly.loop_header435.us ]
  %138 = add nuw nsw i64 %polly.indvar438.us, %133
  %polly.access.mul.call1442.us = mul nuw nsw i64 %138, 60
  %polly.access.add.call1443.us = add nuw nsw i64 %polly.access.mul.call1442.us, %polly.indvar432.us
  %polly.access.call1444.us = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1443.us
  %polly.access.call1444.load.us = load double, double* %polly.access.call1444.us, align 8, !alias.scope !82, !noalias !89
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
  %139 = mul nuw nsw i64 %polly.indvar426, 640
  %scevgep484 = getelementptr i8, i8* %call, i64 %139
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
  %140 = add nuw nsw i64 %polly.indvar438, %133
  %polly.access.mul.call1442 = mul nuw nsw i64 %140, 60
  %polly.access.add.call1443 = add nuw nsw i64 %polly.access.mul.call1442, %polly.indvar432
  %polly.access.call1444 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1443
  %polly.access.call1444.load = load double, double* %polly.access.call1444, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1294 = add nuw nsw i64 %polly.indvar438, %polly.access.mul.Packed_MemRef_call1294
  %polly.access.Packed_MemRef_call1294 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294
  store double %polly.access.call1444.load, double* %polly.access.Packed_MemRef_call1294, align 8
  %polly.indvar_next439 = add nuw nsw i64 %polly.indvar438, 1
  %exitcond940.not = icmp eq i64 %polly.indvar438, %smin945
  br i1 %exitcond940.not, label %polly.then447, label %polly.loop_header435

polly.then447:                                    ; preds = %polly.loop_header435
  %polly.access.add.call1451 = add nuw nsw i64 %polly.indvar432, %polly.access.mul.call1450
  %polly.access.call1452 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1451
  %polly.access.call1452.load = load double, double* %polly.access.call1452, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1294454 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1294, %137
  %polly.access.Packed_MemRef_call1294455 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294454
  store double %polly.access.call1452.load, double* %polly.access.Packed_MemRef_call1294455, align 8
  %polly.indvar_next433 = add nuw nsw i64 %polly.indvar432, 1
  %exitcond941.not = icmp eq i64 %polly.indvar_next433, 50
  br i1 %exitcond941.not, label %polly.loop_exit431, label %polly.loop_header429

polly.loop_header456:                             ; preds = %polly.loop_exit464, %polly.loop_exit431
  %polly.indvar459 = phi i64 [ 0, %polly.loop_exit431 ], [ %polly.indvar_next460, %polly.loop_exit464 ]
  %polly.access.mul.Packed_MemRef_call1294468 = mul nuw nsw i64 %polly.indvar459, 80
  %polly.access.add.Packed_MemRef_call2296473 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1294468, %polly.indvar426
  %polly.access.Packed_MemRef_call2296474 = getelementptr double, double* %Packed_MemRef_call2296, i64 %polly.access.add.Packed_MemRef_call2296473
  %_p_scalar_475 = load double, double* %polly.access.Packed_MemRef_call2296474, align 8
  %polly.access.add.Packed_MemRef_call1294481 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1294468, %137
  %polly.access.Packed_MemRef_call1294482 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294481
  %_p_scalar_483 = load double, double* %polly.access.Packed_MemRef_call1294482, align 8
  %min.iters.check1444 = icmp ult i64 %smin1443, 3
  br i1 %min.iters.check1444, label %polly.loop_header462.preheader, label %vector.ph1445

vector.ph1445:                                    ; preds = %polly.loop_header456
  %n.vec1447 = and i64 %136, 28
  %broadcast.splatinsert1453 = insertelement <4 x double> poison, double %_p_scalar_475, i32 0
  %broadcast.splat1454 = shufflevector <4 x double> %broadcast.splatinsert1453, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1456 = insertelement <4 x double> poison, double %_p_scalar_483, i32 0
  %broadcast.splat1457 = shufflevector <4 x double> %broadcast.splatinsert1456, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1442

vector.body1442:                                  ; preds = %vector.body1442, %vector.ph1445
  %index1448 = phi i64 [ 0, %vector.ph1445 ], [ %index.next1449, %vector.body1442 ]
  %141 = add nuw nsw i64 %index1448, %133
  %142 = add nuw nsw i64 %index1448, %polly.access.mul.Packed_MemRef_call1294468
  %143 = getelementptr double, double* %Packed_MemRef_call1294, i64 %142
  %144 = bitcast double* %143 to <4 x double>*
  %wide.load1452 = load <4 x double>, <4 x double>* %144, align 8
  %145 = fmul fast <4 x double> %broadcast.splat1454, %wide.load1452
  %146 = add nuw nsw i64 %141, %polly.access.mul.Packed_MemRef_call1294468
  %147 = getelementptr double, double* %Packed_MemRef_call2296, i64 %146
  %148 = bitcast double* %147 to <4 x double>*
  %wide.load1455 = load <4 x double>, <4 x double>* %148, align 8
  %149 = fmul fast <4 x double> %broadcast.splat1457, %wide.load1455
  %150 = shl i64 %141, 3
  %151 = getelementptr i8, i8* %scevgep484, i64 %150
  %152 = bitcast i8* %151 to <4 x double>*
  %wide.load1458 = load <4 x double>, <4 x double>* %152, align 8, !alias.scope !79, !noalias !81
  %153 = fadd fast <4 x double> %149, %145
  %154 = fmul fast <4 x double> %153, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %155 = fadd fast <4 x double> %154, %wide.load1458
  %156 = bitcast i8* %151 to <4 x double>*
  store <4 x double> %155, <4 x double>* %156, align 8, !alias.scope !79, !noalias !81
  %index.next1449 = add i64 %index1448, 4
  %157 = icmp eq i64 %index.next1449, %n.vec1447
  br i1 %157, label %middle.block1440, label %vector.body1442, !llvm.loop !90

middle.block1440:                                 ; preds = %vector.body1442
  %cmp.n1451 = icmp eq i64 %136, %n.vec1447
  br i1 %cmp.n1451, label %polly.loop_exit464, label %polly.loop_header462.preheader

polly.loop_header462.preheader:                   ; preds = %polly.loop_header456, %middle.block1440
  %polly.indvar465.ph = phi i64 [ 0, %polly.loop_header456 ], [ %n.vec1447, %middle.block1440 ]
  br label %polly.loop_header462

polly.loop_exit464:                               ; preds = %polly.loop_header462, %middle.block1440
  %polly.indvar_next460 = add nuw nsw i64 %polly.indvar459, 1
  %exitcond947.not = icmp eq i64 %polly.indvar_next460, 50
  br i1 %exitcond947.not, label %polly.loop_exit458, label %polly.loop_header456

polly.loop_header462:                             ; preds = %polly.loop_header462.preheader, %polly.loop_header462
  %polly.indvar465 = phi i64 [ %polly.indvar_next466, %polly.loop_header462 ], [ %polly.indvar465.ph, %polly.loop_header462.preheader ]
  %158 = add nuw nsw i64 %polly.indvar465, %133
  %polly.access.add.Packed_MemRef_call1294469 = add nuw nsw i64 %polly.indvar465, %polly.access.mul.Packed_MemRef_call1294468
  %polly.access.Packed_MemRef_call1294470 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294469
  %_p_scalar_471 = load double, double* %polly.access.Packed_MemRef_call1294470, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_475, %_p_scalar_471
  %polly.access.add.Packed_MemRef_call2296477 = add nuw nsw i64 %158, %polly.access.mul.Packed_MemRef_call1294468
  %polly.access.Packed_MemRef_call2296478 = getelementptr double, double* %Packed_MemRef_call2296, i64 %polly.access.add.Packed_MemRef_call2296477
  %_p_scalar_479 = load double, double* %polly.access.Packed_MemRef_call2296478, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_483, %_p_scalar_479
  %159 = shl i64 %158, 3
  %scevgep485 = getelementptr i8, i8* %scevgep484, i64 %159
  %scevgep485486 = bitcast i8* %scevgep485 to double*
  %_p_scalar_487 = load double, double* %scevgep485486, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_487
  store double %p_add42.i79, double* %scevgep485486, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next466 = add nuw nsw i64 %polly.indvar465, 1
  %exitcond946.not = icmp eq i64 %polly.indvar465, %smin945
  br i1 %exitcond946.not, label %polly.loop_exit464, label %polly.loop_header462, !llvm.loop !91

polly.start490:                                   ; preds = %init_array.exit
  %malloccall492 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  %malloccall494 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header578

polly.loop_header578:                             ; preds = %polly.loop_exit586, %polly.start490
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit586 ], [ 0, %polly.start490 ]
  %polly.indvar581 = phi i64 [ %polly.indvar_next582, %polly.loop_exit586 ], [ 1, %polly.start490 ]
  %160 = add i64 %indvar, 1
  %161 = mul nuw nsw i64 %polly.indvar581, 640
  %scevgep590 = getelementptr i8, i8* %call, i64 %161
  %min.iters.check1368 = icmp ult i64 %160, 4
  br i1 %min.iters.check1368, label %polly.loop_header584.preheader, label %vector.ph1369

vector.ph1369:                                    ; preds = %polly.loop_header578
  %n.vec1371 = and i64 %160, -4
  br label %vector.body1367

vector.body1367:                                  ; preds = %vector.body1367, %vector.ph1369
  %index1372 = phi i64 [ 0, %vector.ph1369 ], [ %index.next1373, %vector.body1367 ]
  %162 = shl nuw nsw i64 %index1372, 3
  %163 = getelementptr i8, i8* %scevgep590, i64 %162
  %164 = bitcast i8* %163 to <4 x double>*
  %wide.load1376 = load <4 x double>, <4 x double>* %164, align 8, !alias.scope !92, !noalias !94
  %165 = fmul fast <4 x double> %wide.load1376, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %166 = bitcast i8* %163 to <4 x double>*
  store <4 x double> %165, <4 x double>* %166, align 8, !alias.scope !92, !noalias !94
  %index.next1373 = add i64 %index1372, 4
  %167 = icmp eq i64 %index.next1373, %n.vec1371
  br i1 %167, label %middle.block1365, label %vector.body1367, !llvm.loop !99

middle.block1365:                                 ; preds = %vector.body1367
  %cmp.n1375 = icmp eq i64 %160, %n.vec1371
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
  %168 = shl nuw nsw i64 %polly.indvar587, 3
  %scevgep591 = getelementptr i8, i8* %scevgep590, i64 %168
  %scevgep591592 = bitcast i8* %scevgep591 to double*
  %_p_scalar_593 = load double, double* %scevgep591592, align 8, !alias.scope !92, !noalias !94
  %p_mul.i = fmul fast double %_p_scalar_593, 1.200000e+00
  store double %p_mul.i, double* %scevgep591592, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next588 = add nuw nsw i64 %polly.indvar587, 1
  %exitcond973.not = icmp eq i64 %polly.indvar_next588, %polly.indvar581
  br i1 %exitcond973.not, label %polly.loop_exit586, label %polly.loop_header584, !llvm.loop !100

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
  %polly.access.call2609.load = load double, double* %polly.access.call2609, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2495 = add nuw nsw i64 %polly.indvar603, %polly.access.mul.Packed_MemRef_call2495
  %polly.access.Packed_MemRef_call2495 = getelementptr double, double* %Packed_MemRef_call2495, i64 %polly.access.add.Packed_MemRef_call2495
  store double %polly.access.call2609.load, double* %polly.access.Packed_MemRef_call2495, align 8
  %polly.indvar_next604 = add nuw nsw i64 %polly.indvar603, 1
  %exitcond971.not = icmp eq i64 %polly.indvar_next604, 80
  br i1 %exitcond971.not, label %polly.loop_exit602, label %polly.loop_header600

polly.loop_header616:                             ; preds = %polly.loop_exit602, %polly.loop_exit624
  %indvars.iv967 = phi i64 [ %indvars.iv.next968, %polly.loop_exit624 ], [ 80, %polly.loop_exit602 ]
  %polly.indvar619 = phi i64 [ %polly.indvar_next620, %polly.loop_exit624 ], [ 0, %polly.loop_exit602 ]
  %169 = shl nuw nsw i64 %polly.indvar619, 4
  %170 = mul nsw i64 %polly.indvar619, -16
  %171 = add nuw nsw i64 %169, 16
  br label %polly.loop_header622

polly.loop_exit624:                               ; preds = %polly.loop_exit657
  %polly.indvar_next620 = add nuw nsw i64 %polly.indvar619, 1
  %indvars.iv.next968 = add nsw i64 %indvars.iv967, -16
  %exitcond970.not = icmp eq i64 %polly.indvar_next620, 5
  br i1 %exitcond970.not, label %polly.loop_header616.1, label %polly.loop_header616

polly.loop_header622:                             ; preds = %polly.loop_exit657, %polly.loop_header616
  %indvars.iv956 = phi i64 [ %indvars.iv.next957, %polly.loop_exit657 ], [ 0, %polly.loop_header616 ]
  %polly.indvar625 = phi i64 [ %polly.indvar_next626, %polly.loop_exit657 ], [ %169, %polly.loop_header616 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv956, i64 15)
  %172 = add nuw nsw i64 %smin, 1
  %smin964 = call i64 @llvm.smin.i64(i64 %indvars.iv956, i64 15)
  %173 = add nsw i64 %polly.indvar625, %170
  %.not894 = icmp ult i64 %polly.indvar625, %171
  %polly.access.mul.call1649 = mul nuw nsw i64 %polly.indvar625, 60
  br i1 %.not894, label %polly.loop_header628.us, label %polly.loop_header628

polly.loop_header628.us:                          ; preds = %polly.loop_header622, %polly.merge645.us
  %polly.indvar631.us = phi i64 [ %polly.indvar_next632.us, %polly.merge645.us ], [ 0, %polly.loop_header622 ]
  %polly.access.mul.Packed_MemRef_call1493.us = mul nuw nsw i64 %polly.indvar631.us, 80
  br label %polly.loop_header634.us

polly.loop_header634.us:                          ; preds = %polly.loop_header634.us, %polly.loop_header628.us
  %polly.indvar637.us = phi i64 [ 0, %polly.loop_header628.us ], [ %polly.indvar_next638.us, %polly.loop_header634.us ]
  %174 = add nuw nsw i64 %polly.indvar637.us, %169
  %polly.access.mul.call1641.us = mul nuw nsw i64 %174, 60
  %polly.access.add.call1642.us = add nuw nsw i64 %polly.access.mul.call1641.us, %polly.indvar631.us
  %polly.access.call1643.us = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1642.us
  %polly.access.call1643.load.us = load double, double* %polly.access.call1643.us, align 8, !alias.scope !95, !noalias !102
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
  %175 = mul nuw nsw i64 %polly.indvar625, 640
  %scevgep683 = getelementptr i8, i8* %call, i64 %175
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
  %176 = add nuw nsw i64 %polly.indvar637, %169
  %polly.access.mul.call1641 = mul nuw nsw i64 %176, 60
  %polly.access.add.call1642 = add nuw nsw i64 %polly.access.mul.call1641, %polly.indvar631
  %polly.access.call1643 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1642
  %polly.access.call1643.load = load double, double* %polly.access.call1643, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1493 = add nuw nsw i64 %polly.indvar637, %polly.access.mul.Packed_MemRef_call1493
  %polly.access.Packed_MemRef_call1493 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493
  store double %polly.access.call1643.load, double* %polly.access.Packed_MemRef_call1493, align 8
  %polly.indvar_next638 = add nuw nsw i64 %polly.indvar637, 1
  %exitcond959.not = icmp eq i64 %polly.indvar637, %smin964
  br i1 %exitcond959.not, label %polly.then646, label %polly.loop_header634

polly.then646:                                    ; preds = %polly.loop_header634
  %polly.access.add.call1650 = add nuw nsw i64 %polly.indvar631, %polly.access.mul.call1649
  %polly.access.call1651 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1650
  %polly.access.call1651.load = load double, double* %polly.access.call1651, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1493653 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1493, %173
  %polly.access.Packed_MemRef_call1493654 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493653
  store double %polly.access.call1651.load, double* %polly.access.Packed_MemRef_call1493654, align 8
  %polly.indvar_next632 = add nuw nsw i64 %polly.indvar631, 1
  %exitcond960.not = icmp eq i64 %polly.indvar_next632, 50
  br i1 %exitcond960.not, label %polly.loop_exit630, label %polly.loop_header628

polly.loop_header655:                             ; preds = %polly.loop_exit663, %polly.loop_exit630
  %polly.indvar658 = phi i64 [ 0, %polly.loop_exit630 ], [ %polly.indvar_next659, %polly.loop_exit663 ]
  %polly.access.mul.Packed_MemRef_call1493667 = mul nuw nsw i64 %polly.indvar658, 80
  %polly.access.add.Packed_MemRef_call2495672 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1493667, %polly.indvar625
  %polly.access.Packed_MemRef_call2495673 = getelementptr double, double* %Packed_MemRef_call2495, i64 %polly.access.add.Packed_MemRef_call2495672
  %_p_scalar_674 = load double, double* %polly.access.Packed_MemRef_call2495673, align 8
  %polly.access.add.Packed_MemRef_call1493680 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1493667, %173
  %polly.access.Packed_MemRef_call1493681 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493680
  %_p_scalar_682 = load double, double* %polly.access.Packed_MemRef_call1493681, align 8
  %min.iters.check1380 = icmp ult i64 %smin, 3
  br i1 %min.iters.check1380, label %polly.loop_header661.preheader, label %vector.ph1381

vector.ph1381:                                    ; preds = %polly.loop_header655
  %n.vec1383 = and i64 %172, 28
  %broadcast.splatinsert1389 = insertelement <4 x double> poison, double %_p_scalar_674, i32 0
  %broadcast.splat1390 = shufflevector <4 x double> %broadcast.splatinsert1389, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1392 = insertelement <4 x double> poison, double %_p_scalar_682, i32 0
  %broadcast.splat1393 = shufflevector <4 x double> %broadcast.splatinsert1392, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1379

vector.body1379:                                  ; preds = %vector.body1379, %vector.ph1381
  %index1384 = phi i64 [ 0, %vector.ph1381 ], [ %index.next1385, %vector.body1379 ]
  %177 = add nuw nsw i64 %index1384, %169
  %178 = add nuw nsw i64 %index1384, %polly.access.mul.Packed_MemRef_call1493667
  %179 = getelementptr double, double* %Packed_MemRef_call1493, i64 %178
  %180 = bitcast double* %179 to <4 x double>*
  %wide.load1388 = load <4 x double>, <4 x double>* %180, align 8
  %181 = fmul fast <4 x double> %broadcast.splat1390, %wide.load1388
  %182 = add nuw nsw i64 %177, %polly.access.mul.Packed_MemRef_call1493667
  %183 = getelementptr double, double* %Packed_MemRef_call2495, i64 %182
  %184 = bitcast double* %183 to <4 x double>*
  %wide.load1391 = load <4 x double>, <4 x double>* %184, align 8
  %185 = fmul fast <4 x double> %broadcast.splat1393, %wide.load1391
  %186 = shl i64 %177, 3
  %187 = getelementptr i8, i8* %scevgep683, i64 %186
  %188 = bitcast i8* %187 to <4 x double>*
  %wide.load1394 = load <4 x double>, <4 x double>* %188, align 8, !alias.scope !92, !noalias !94
  %189 = fadd fast <4 x double> %185, %181
  %190 = fmul fast <4 x double> %189, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %191 = fadd fast <4 x double> %190, %wide.load1394
  %192 = bitcast i8* %187 to <4 x double>*
  store <4 x double> %191, <4 x double>* %192, align 8, !alias.scope !92, !noalias !94
  %index.next1385 = add i64 %index1384, 4
  %193 = icmp eq i64 %index.next1385, %n.vec1383
  br i1 %193, label %middle.block1377, label %vector.body1379, !llvm.loop !103

middle.block1377:                                 ; preds = %vector.body1379
  %cmp.n1387 = icmp eq i64 %172, %n.vec1383
  br i1 %cmp.n1387, label %polly.loop_exit663, label %polly.loop_header661.preheader

polly.loop_header661.preheader:                   ; preds = %polly.loop_header655, %middle.block1377
  %polly.indvar664.ph = phi i64 [ 0, %polly.loop_header655 ], [ %n.vec1383, %middle.block1377 ]
  br label %polly.loop_header661

polly.loop_exit663:                               ; preds = %polly.loop_header661, %middle.block1377
  %polly.indvar_next659 = add nuw nsw i64 %polly.indvar658, 1
  %exitcond966.not = icmp eq i64 %polly.indvar_next659, 50
  br i1 %exitcond966.not, label %polly.loop_exit657, label %polly.loop_header655

polly.loop_header661:                             ; preds = %polly.loop_header661.preheader, %polly.loop_header661
  %polly.indvar664 = phi i64 [ %polly.indvar_next665, %polly.loop_header661 ], [ %polly.indvar664.ph, %polly.loop_header661.preheader ]
  %194 = add nuw nsw i64 %polly.indvar664, %169
  %polly.access.add.Packed_MemRef_call1493668 = add nuw nsw i64 %polly.indvar664, %polly.access.mul.Packed_MemRef_call1493667
  %polly.access.Packed_MemRef_call1493669 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493668
  %_p_scalar_670 = load double, double* %polly.access.Packed_MemRef_call1493669, align 8
  %p_mul27.i = fmul fast double %_p_scalar_674, %_p_scalar_670
  %polly.access.add.Packed_MemRef_call2495676 = add nuw nsw i64 %194, %polly.access.mul.Packed_MemRef_call1493667
  %polly.access.Packed_MemRef_call2495677 = getelementptr double, double* %Packed_MemRef_call2495, i64 %polly.access.add.Packed_MemRef_call2495676
  %_p_scalar_678 = load double, double* %polly.access.Packed_MemRef_call2495677, align 8
  %p_mul37.i = fmul fast double %_p_scalar_682, %_p_scalar_678
  %195 = shl i64 %194, 3
  %scevgep684 = getelementptr i8, i8* %scevgep683, i64 %195
  %scevgep684685 = bitcast i8* %scevgep684 to double*
  %_p_scalar_686 = load double, double* %scevgep684685, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_686
  store double %p_add42.i, double* %scevgep684685, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next665 = add nuw nsw i64 %polly.indvar664, 1
  %exitcond965.not = icmp eq i64 %polly.indvar664, %smin964
  br i1 %exitcond965.not, label %polly.loop_exit663, label %polly.loop_header661, !llvm.loop !104

polly.loop_header825:                             ; preds = %entry, %polly.loop_exit833
  %polly.indvar828 = phi i64 [ %polly.indvar_next829, %polly.loop_exit833 ], [ 0, %entry ]
  %196 = mul nuw nsw i64 %polly.indvar828, 640
  %197 = trunc i64 %polly.indvar828 to i32
  %broadcast.splatinsert1099 = insertelement <4 x i32> poison, i32 %197, i32 0
  %broadcast.splat1100 = shufflevector <4 x i32> %broadcast.splatinsert1099, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1089

vector.body1089:                                  ; preds = %vector.body1089, %polly.loop_header825
  %index1091 = phi i64 [ 0, %polly.loop_header825 ], [ %index.next1092, %vector.body1089 ]
  %vec.ind1097 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header825 ], [ %vec.ind.next1098, %vector.body1089 ]
  %198 = mul <4 x i32> %vec.ind1097, %broadcast.splat1100
  %199 = add <4 x i32> %198, <i32 3, i32 3, i32 3, i32 3>
  %200 = urem <4 x i32> %199, <i32 80, i32 80, i32 80, i32 80>
  %201 = sitofp <4 x i32> %200 to <4 x double>
  %202 = fmul fast <4 x double> %201, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %203 = shl i64 %index1091, 3
  %204 = add nuw nsw i64 %203, %196
  %205 = getelementptr i8, i8* %call, i64 %204
  %206 = bitcast i8* %205 to <4 x double>*
  store <4 x double> %202, <4 x double>* %206, align 8, !alias.scope !105, !noalias !107
  %index.next1092 = add i64 %index1091, 4
  %vec.ind.next1098 = add <4 x i32> %vec.ind1097, <i32 4, i32 4, i32 4, i32 4>
  %207 = icmp eq i64 %index.next1092, 32
  br i1 %207, label %polly.loop_exit833, label %vector.body1089, !llvm.loop !110

polly.loop_exit833:                               ; preds = %vector.body1089
  %polly.indvar_next829 = add nuw nsw i64 %polly.indvar828, 1
  %exitcond994.not = icmp eq i64 %polly.indvar_next829, 32
  br i1 %exitcond994.not, label %polly.loop_header825.1, label %polly.loop_header825

polly.loop_header852:                             ; preds = %polly.loop_exit833.2.2, %polly.loop_exit860
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_exit833.2.2 ]
  %208 = mul nuw nsw i64 %polly.indvar855, 480
  %209 = trunc i64 %polly.indvar855 to i32
  %broadcast.splatinsert1213 = insertelement <4 x i32> poison, i32 %209, i32 0
  %broadcast.splat1214 = shufflevector <4 x i32> %broadcast.splatinsert1213, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1203

vector.body1203:                                  ; preds = %vector.body1203, %polly.loop_header852
  %index1205 = phi i64 [ 0, %polly.loop_header852 ], [ %index.next1206, %vector.body1203 ]
  %vec.ind1211 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header852 ], [ %vec.ind.next1212, %vector.body1203 ]
  %210 = mul <4 x i32> %vec.ind1211, %broadcast.splat1214
  %211 = add <4 x i32> %210, <i32 2, i32 2, i32 2, i32 2>
  %212 = urem <4 x i32> %211, <i32 60, i32 60, i32 60, i32 60>
  %213 = sitofp <4 x i32> %212 to <4 x double>
  %214 = fmul fast <4 x double> %213, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %215 = shl i64 %index1205, 3
  %216 = add i64 %215, %208
  %217 = getelementptr i8, i8* %call2, i64 %216
  %218 = bitcast i8* %217 to <4 x double>*
  store <4 x double> %214, <4 x double>* %218, align 8, !alias.scope !109, !noalias !111
  %index.next1206 = add i64 %index1205, 4
  %vec.ind.next1212 = add <4 x i32> %vec.ind1211, <i32 4, i32 4, i32 4, i32 4>
  %219 = icmp eq i64 %index.next1206, 32
  br i1 %219, label %polly.loop_exit860, label %vector.body1203, !llvm.loop !112

polly.loop_exit860:                               ; preds = %vector.body1203
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %exitcond985.not = icmp eq i64 %polly.indvar_next856, 32
  br i1 %exitcond985.not, label %polly.loop_header852.1, label %polly.loop_header852

polly.loop_header878:                             ; preds = %polly.loop_exit860.1.2, %polly.loop_exit886
  %polly.indvar881 = phi i64 [ %polly.indvar_next882, %polly.loop_exit886 ], [ 0, %polly.loop_exit860.1.2 ]
  %220 = mul nuw nsw i64 %polly.indvar881, 480
  %221 = trunc i64 %polly.indvar881 to i32
  %broadcast.splatinsert1291 = insertelement <4 x i32> poison, i32 %221, i32 0
  %broadcast.splat1292 = shufflevector <4 x i32> %broadcast.splatinsert1291, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1281

vector.body1281:                                  ; preds = %vector.body1281, %polly.loop_header878
  %index1283 = phi i64 [ 0, %polly.loop_header878 ], [ %index.next1284, %vector.body1281 ]
  %vec.ind1289 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header878 ], [ %vec.ind.next1290, %vector.body1281 ]
  %222 = mul <4 x i32> %vec.ind1289, %broadcast.splat1292
  %223 = add <4 x i32> %222, <i32 1, i32 1, i32 1, i32 1>
  %224 = urem <4 x i32> %223, <i32 80, i32 80, i32 80, i32 80>
  %225 = sitofp <4 x i32> %224 to <4 x double>
  %226 = fmul fast <4 x double> %225, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %227 = shl i64 %index1283, 3
  %228 = add i64 %227, %220
  %229 = getelementptr i8, i8* %call1, i64 %228
  %230 = bitcast i8* %229 to <4 x double>*
  store <4 x double> %226, <4 x double>* %230, align 8, !alias.scope !108, !noalias !113
  %index.next1284 = add i64 %index1283, 4
  %vec.ind.next1290 = add <4 x i32> %vec.ind1289, <i32 4, i32 4, i32 4, i32 4>
  %231 = icmp eq i64 %index.next1284, 32
  br i1 %231, label %polly.loop_exit886, label %vector.body1281, !llvm.loop !114

polly.loop_exit886:                               ; preds = %vector.body1281
  %polly.indvar_next882 = add nuw nsw i64 %polly.indvar881, 1
  %exitcond979.not = icmp eq i64 %polly.indvar_next882, 32
  br i1 %exitcond979.not, label %polly.loop_header878.1, label %polly.loop_header878

polly.loop_header222.1:                           ; preds = %polly.loop_exit230, %polly.loop_exit230.1
  %indvars.iv929.1 = phi i64 [ %indvars.iv.next930.1, %polly.loop_exit230.1 ], [ 80, %polly.loop_exit230 ]
  %polly.indvar225.1 = phi i64 [ %polly.indvar_next226.1, %polly.loop_exit230.1 ], [ 0, %polly.loop_exit230 ]
  %232 = shl nuw nsw i64 %polly.indvar225.1, 4
  %233 = mul nsw i64 %polly.indvar225.1, -16
  %234 = add nuw nsw i64 %232, 16
  br label %polly.loop_header228.1

polly.loop_header228.1:                           ; preds = %polly.loop_exit259.1, %polly.loop_header222.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit259.1 ], [ 0, %polly.loop_header222.1 ]
  %polly.indvar231.1 = phi i64 [ %polly.indvar_next232.1, %polly.loop_exit259.1 ], [ %232, %polly.loop_header222.1 ]
  %smin1526 = call i64 @llvm.smin.i64(i64 %indvars.iv.1, i64 15)
  %235 = add nuw nsw i64 %smin1526, 1
  %smin926.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.1, i64 15)
  %236 = add nsw i64 %polly.indvar231.1, %233
  %.not.1 = icmp ult i64 %polly.indvar231.1, %234
  %polly.access.mul.call1251.1 = mul nuw nsw i64 %polly.indvar231.1, 60
  br i1 %.not.1, label %polly.loop_header234.us.1, label %polly.loop_header234.1

polly.loop_header234.1:                           ; preds = %polly.loop_header228.1, %polly.then.1
  %polly.indvar237.1 = phi i64 [ %polly.indvar_next238.1, %polly.then.1 ], [ 0, %polly.loop_header228.1 ]
  %237 = add nuw nsw i64 %polly.indvar237.1, 50
  %polly.access.mul.Packed_MemRef_call1.1 = mul nuw nsw i64 %polly.indvar237.1, 80
  br label %polly.loop_header240.1

polly.loop_header240.1:                           ; preds = %polly.loop_header240.1, %polly.loop_header234.1
  %polly.indvar243.1 = phi i64 [ 0, %polly.loop_header234.1 ], [ %polly.indvar_next244.1, %polly.loop_header240.1 ]
  %238 = add nuw nsw i64 %polly.indvar243.1, %232
  %polly.access.mul.call1247.1 = mul nuw nsw i64 %238, 60
  %polly.access.add.call1248.1 = add nuw nsw i64 %polly.access.mul.call1247.1, %237
  %polly.access.call1249.1 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1248.1
  %polly.access.call1249.load.1 = load double, double* %polly.access.call1249.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.1 = add nuw nsw i64 %polly.indvar243.1, %polly.access.mul.Packed_MemRef_call1.1
  %polly.access.Packed_MemRef_call1.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.1
  store double %polly.access.call1249.load.1, double* %polly.access.Packed_MemRef_call1.1, align 8
  %polly.indvar_next244.1 = add nuw nsw i64 %polly.indvar243.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar243.1, %smin926.1
  br i1 %exitcond.1.not, label %polly.then.1, label %polly.loop_header240.1

polly.then.1:                                     ; preds = %polly.loop_header240.1
  %polly.access.add.call1252.1 = add nuw nsw i64 %237, %polly.access.mul.call1251.1
  %polly.access.call1253.1 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1252.1
  %polly.access.call1253.load.1 = load double, double* %polly.access.call1253.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1255.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1.1, %236
  %polly.access.Packed_MemRef_call1256.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255.1
  store double %polly.access.call1253.load.1, double* %polly.access.Packed_MemRef_call1256.1, align 8
  %polly.indvar_next238.1 = add nuw nsw i64 %polly.indvar237.1, 1
  %exitcond922.1.not = icmp eq i64 %polly.indvar_next238.1, 10
  br i1 %exitcond922.1.not, label %polly.loop_exit236.1, label %polly.loop_header234.1

polly.loop_header234.us.1:                        ; preds = %polly.loop_header228.1, %polly.merge.us.1
  %polly.indvar237.us.1 = phi i64 [ %polly.indvar_next238.us.1, %polly.merge.us.1 ], [ 0, %polly.loop_header228.1 ]
  %239 = add nuw nsw i64 %polly.indvar237.us.1, 50
  %polly.access.mul.Packed_MemRef_call1.us.1 = mul nuw nsw i64 %polly.indvar237.us.1, 80
  br label %polly.loop_header240.us.1

polly.loop_header240.us.1:                        ; preds = %polly.loop_header240.us.1, %polly.loop_header234.us.1
  %polly.indvar243.us.1 = phi i64 [ 0, %polly.loop_header234.us.1 ], [ %polly.indvar_next244.us.1, %polly.loop_header240.us.1 ]
  %240 = add nuw nsw i64 %polly.indvar243.us.1, %232
  %polly.access.mul.call1247.us.1 = mul nuw nsw i64 %240, 60
  %polly.access.add.call1248.us.1 = add nuw nsw i64 %polly.access.mul.call1247.us.1, %239
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
  %241 = mul nuw nsw i64 %polly.indvar231.1, 640
  %scevgep285.1 = getelementptr i8, i8* %call, i64 %241
  br label %polly.loop_header257.1

polly.loop_header257.1:                           ; preds = %polly.loop_exit265.1, %polly.loop_exit236.1
  %polly.indvar260.1 = phi i64 [ 0, %polly.loop_exit236.1 ], [ %polly.indvar_next261.1, %polly.loop_exit265.1 ]
  %polly.access.mul.Packed_MemRef_call1269.1 = mul nuw nsw i64 %polly.indvar260.1, 80
  %242 = mul i64 %polly.indvar260.1, 80
  %polly.access.mul.Packed_MemRef_call2273.1 = add i64 %242, 4000
  %polly.access.add.Packed_MemRef_call2274.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273.1, %polly.indvar231.1
  %polly.access.Packed_MemRef_call2275.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2274.1
  %_p_scalar_276.1 = load double, double* %polly.access.Packed_MemRef_call2275.1, align 8
  %polly.access.add.Packed_MemRef_call1282.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1269.1, %236
  %polly.access.Packed_MemRef_call1283.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.1
  %_p_scalar_284.1 = load double, double* %polly.access.Packed_MemRef_call1283.1, align 8
  %min.iters.check1527 = icmp ult i64 %smin1526, 3
  br i1 %min.iters.check1527, label %polly.loop_header263.1.preheader, label %vector.ph1528

vector.ph1528:                                    ; preds = %polly.loop_header257.1
  %n.vec1530 = and i64 %235, 28
  %broadcast.splatinsert1536 = insertelement <4 x double> poison, double %_p_scalar_276.1, i32 0
  %broadcast.splat1537 = shufflevector <4 x double> %broadcast.splatinsert1536, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1539 = insertelement <4 x double> poison, double %_p_scalar_284.1, i32 0
  %broadcast.splat1540 = shufflevector <4 x double> %broadcast.splatinsert1539, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1525

vector.body1525:                                  ; preds = %vector.body1525, %vector.ph1528
  %index1531 = phi i64 [ 0, %vector.ph1528 ], [ %index.next1532, %vector.body1525 ]
  %243 = add nuw nsw i64 %index1531, %232
  %244 = add nuw nsw i64 %index1531, %polly.access.mul.Packed_MemRef_call1269.1
  %245 = getelementptr double, double* %Packed_MemRef_call1, i64 %244
  %246 = bitcast double* %245 to <4 x double>*
  %wide.load1535 = load <4 x double>, <4 x double>* %246, align 8
  %247 = fmul fast <4 x double> %broadcast.splat1537, %wide.load1535
  %248 = add nuw nsw i64 %243, %polly.access.mul.Packed_MemRef_call2273.1
  %249 = getelementptr double, double* %Packed_MemRef_call2, i64 %248
  %250 = bitcast double* %249 to <4 x double>*
  %wide.load1538 = load <4 x double>, <4 x double>* %250, align 8
  %251 = fmul fast <4 x double> %broadcast.splat1540, %wide.load1538
  %252 = shl i64 %243, 3
  %253 = getelementptr i8, i8* %scevgep285.1, i64 %252
  %254 = bitcast i8* %253 to <4 x double>*
  %wide.load1541 = load <4 x double>, <4 x double>* %254, align 8, !alias.scope !65, !noalias !67
  %255 = fadd fast <4 x double> %251, %247
  %256 = fmul fast <4 x double> %255, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %257 = fadd fast <4 x double> %256, %wide.load1541
  %258 = bitcast i8* %253 to <4 x double>*
  store <4 x double> %257, <4 x double>* %258, align 8, !alias.scope !65, !noalias !67
  %index.next1532 = add i64 %index1531, 4
  %259 = icmp eq i64 %index.next1532, %n.vec1530
  br i1 %259, label %middle.block1523, label %vector.body1525, !llvm.loop !115

middle.block1523:                                 ; preds = %vector.body1525
  %cmp.n1534 = icmp eq i64 %235, %n.vec1530
  br i1 %cmp.n1534, label %polly.loop_exit265.1, label %polly.loop_header263.1.preheader

polly.loop_header263.1.preheader:                 ; preds = %polly.loop_header257.1, %middle.block1523
  %polly.indvar266.1.ph = phi i64 [ 0, %polly.loop_header257.1 ], [ %n.vec1530, %middle.block1523 ]
  br label %polly.loop_header263.1

polly.loop_header263.1:                           ; preds = %polly.loop_header263.1.preheader, %polly.loop_header263.1
  %polly.indvar266.1 = phi i64 [ %polly.indvar_next267.1, %polly.loop_header263.1 ], [ %polly.indvar266.1.ph, %polly.loop_header263.1.preheader ]
  %260 = add nuw nsw i64 %polly.indvar266.1, %232
  %polly.access.add.Packed_MemRef_call1270.1 = add nuw nsw i64 %polly.indvar266.1, %polly.access.mul.Packed_MemRef_call1269.1
  %polly.access.Packed_MemRef_call1271.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1270.1
  %_p_scalar_272.1 = load double, double* %polly.access.Packed_MemRef_call1271.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_276.1, %_p_scalar_272.1
  %polly.access.add.Packed_MemRef_call2278.1 = add nuw nsw i64 %260, %polly.access.mul.Packed_MemRef_call2273.1
  %polly.access.Packed_MemRef_call2279.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2278.1
  %_p_scalar_280.1 = load double, double* %polly.access.Packed_MemRef_call2279.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_284.1, %_p_scalar_280.1
  %261 = shl i64 %260, 3
  %scevgep286.1 = getelementptr i8, i8* %scevgep285.1, i64 %261
  %scevgep286287.1 = bitcast i8* %scevgep286.1 to double*
  %_p_scalar_288.1 = load double, double* %scevgep286287.1, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_288.1
  store double %p_add42.i118.1, double* %scevgep286287.1, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next267.1 = add nuw nsw i64 %polly.indvar266.1, 1
  %exitcond927.1.not = icmp eq i64 %polly.indvar266.1, %smin926.1
  br i1 %exitcond927.1.not, label %polly.loop_exit265.1, label %polly.loop_header263.1, !llvm.loop !116

polly.loop_exit265.1:                             ; preds = %polly.loop_header263.1, %middle.block1523
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
  %indvars.iv.next930.1 = add nsw i64 %indvars.iv929.1, -16
  %exitcond932.1.not = icmp eq i64 %polly.indvar_next226.1, 5
  br i1 %exitcond932.1.not, label %polly.loop_exit224.1, label %polly.loop_header222.1

polly.loop_exit224.1:                             ; preds = %polly.loop_exit230.1
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header417.1:                           ; preds = %polly.loop_exit425, %polly.loop_exit425.1
  %indvars.iv948.1 = phi i64 [ %indvars.iv.next949.1, %polly.loop_exit425.1 ], [ 80, %polly.loop_exit425 ]
  %polly.indvar420.1 = phi i64 [ %polly.indvar_next421.1, %polly.loop_exit425.1 ], [ 0, %polly.loop_exit425 ]
  %262 = shl nuw nsw i64 %polly.indvar420.1, 4
  %263 = mul nsw i64 %polly.indvar420.1, -16
  %264 = add nuw nsw i64 %262, 16
  br label %polly.loop_header423.1

polly.loop_header423.1:                           ; preds = %polly.loop_exit458.1, %polly.loop_header417.1
  %indvars.iv937.1 = phi i64 [ %indvars.iv.next938.1, %polly.loop_exit458.1 ], [ 0, %polly.loop_header417.1 ]
  %polly.indvar426.1 = phi i64 [ %polly.indvar_next427.1, %polly.loop_exit458.1 ], [ %262, %polly.loop_header417.1 ]
  %smin1462 = call i64 @llvm.smin.i64(i64 %indvars.iv937.1, i64 15)
  %265 = add nuw nsw i64 %smin1462, 1
  %smin945.1 = call i64 @llvm.smin.i64(i64 %indvars.iv937.1, i64 15)
  %266 = add nsw i64 %polly.indvar426.1, %263
  %.not893.1 = icmp ult i64 %polly.indvar426.1, %264
  %polly.access.mul.call1450.1 = mul nuw nsw i64 %polly.indvar426.1, 60
  br i1 %.not893.1, label %polly.loop_header429.us.1, label %polly.loop_header429.1

polly.loop_header429.1:                           ; preds = %polly.loop_header423.1, %polly.then447.1
  %polly.indvar432.1 = phi i64 [ %polly.indvar_next433.1, %polly.then447.1 ], [ 0, %polly.loop_header423.1 ]
  %267 = add nuw nsw i64 %polly.indvar432.1, 50
  %polly.access.mul.Packed_MemRef_call1294.1 = mul nuw nsw i64 %polly.indvar432.1, 80
  br label %polly.loop_header435.1

polly.loop_header435.1:                           ; preds = %polly.loop_header435.1, %polly.loop_header429.1
  %polly.indvar438.1 = phi i64 [ 0, %polly.loop_header429.1 ], [ %polly.indvar_next439.1, %polly.loop_header435.1 ]
  %268 = add nuw nsw i64 %polly.indvar438.1, %262
  %polly.access.mul.call1442.1 = mul nuw nsw i64 %268, 60
  %polly.access.add.call1443.1 = add nuw nsw i64 %polly.access.mul.call1442.1, %267
  %polly.access.call1444.1 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1443.1
  %polly.access.call1444.load.1 = load double, double* %polly.access.call1444.1, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1294.1 = add nuw nsw i64 %polly.indvar438.1, %polly.access.mul.Packed_MemRef_call1294.1
  %polly.access.Packed_MemRef_call1294.1 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294.1
  store double %polly.access.call1444.load.1, double* %polly.access.Packed_MemRef_call1294.1, align 8
  %polly.indvar_next439.1 = add nuw nsw i64 %polly.indvar438.1, 1
  %exitcond940.1.not = icmp eq i64 %polly.indvar438.1, %smin945.1
  br i1 %exitcond940.1.not, label %polly.then447.1, label %polly.loop_header435.1

polly.then447.1:                                  ; preds = %polly.loop_header435.1
  %polly.access.add.call1451.1 = add nuw nsw i64 %267, %polly.access.mul.call1450.1
  %polly.access.call1452.1 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1451.1
  %polly.access.call1452.load.1 = load double, double* %polly.access.call1452.1, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1294454.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1294.1, %266
  %polly.access.Packed_MemRef_call1294455.1 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294454.1
  store double %polly.access.call1452.load.1, double* %polly.access.Packed_MemRef_call1294455.1, align 8
  %polly.indvar_next433.1 = add nuw nsw i64 %polly.indvar432.1, 1
  %exitcond941.1.not = icmp eq i64 %polly.indvar_next433.1, 10
  br i1 %exitcond941.1.not, label %polly.loop_exit431.1, label %polly.loop_header429.1

polly.loop_header429.us.1:                        ; preds = %polly.loop_header423.1, %polly.merge446.us.1
  %polly.indvar432.us.1 = phi i64 [ %polly.indvar_next433.us.1, %polly.merge446.us.1 ], [ 0, %polly.loop_header423.1 ]
  %269 = add nuw nsw i64 %polly.indvar432.us.1, 50
  %polly.access.mul.Packed_MemRef_call1294.us.1 = mul nuw nsw i64 %polly.indvar432.us.1, 80
  br label %polly.loop_header435.us.1

polly.loop_header435.us.1:                        ; preds = %polly.loop_header435.us.1, %polly.loop_header429.us.1
  %polly.indvar438.us.1 = phi i64 [ 0, %polly.loop_header429.us.1 ], [ %polly.indvar_next439.us.1, %polly.loop_header435.us.1 ]
  %270 = add nuw nsw i64 %polly.indvar438.us.1, %262
  %polly.access.mul.call1442.us.1 = mul nuw nsw i64 %270, 60
  %polly.access.add.call1443.us.1 = add nuw nsw i64 %polly.access.mul.call1442.us.1, %269
  %polly.access.call1444.us.1 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1443.us.1
  %polly.access.call1444.load.us.1 = load double, double* %polly.access.call1444.us.1, align 8, !alias.scope !82, !noalias !89
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
  %271 = mul nuw nsw i64 %polly.indvar426.1, 640
  %scevgep484.1 = getelementptr i8, i8* %call, i64 %271
  br label %polly.loop_header456.1

polly.loop_header456.1:                           ; preds = %polly.loop_exit464.1, %polly.loop_exit431.1
  %polly.indvar459.1 = phi i64 [ 0, %polly.loop_exit431.1 ], [ %polly.indvar_next460.1, %polly.loop_exit464.1 ]
  %polly.access.mul.Packed_MemRef_call1294468.1 = mul nuw nsw i64 %polly.indvar459.1, 80
  %272 = mul i64 %polly.indvar459.1, 80
  %polly.access.mul.Packed_MemRef_call2296472.1 = add i64 %272, 4000
  %polly.access.add.Packed_MemRef_call2296473.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2296472.1, %polly.indvar426.1
  %polly.access.Packed_MemRef_call2296474.1 = getelementptr double, double* %Packed_MemRef_call2296, i64 %polly.access.add.Packed_MemRef_call2296473.1
  %_p_scalar_475.1 = load double, double* %polly.access.Packed_MemRef_call2296474.1, align 8
  %polly.access.add.Packed_MemRef_call1294481.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1294468.1, %266
  %polly.access.Packed_MemRef_call1294482.1 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294481.1
  %_p_scalar_483.1 = load double, double* %polly.access.Packed_MemRef_call1294482.1, align 8
  %min.iters.check1463 = icmp ult i64 %smin1462, 3
  br i1 %min.iters.check1463, label %polly.loop_header462.1.preheader, label %vector.ph1464

vector.ph1464:                                    ; preds = %polly.loop_header456.1
  %n.vec1466 = and i64 %265, 28
  %broadcast.splatinsert1472 = insertelement <4 x double> poison, double %_p_scalar_475.1, i32 0
  %broadcast.splat1473 = shufflevector <4 x double> %broadcast.splatinsert1472, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1475 = insertelement <4 x double> poison, double %_p_scalar_483.1, i32 0
  %broadcast.splat1476 = shufflevector <4 x double> %broadcast.splatinsert1475, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1461

vector.body1461:                                  ; preds = %vector.body1461, %vector.ph1464
  %index1467 = phi i64 [ 0, %vector.ph1464 ], [ %index.next1468, %vector.body1461 ]
  %273 = add nuw nsw i64 %index1467, %262
  %274 = add nuw nsw i64 %index1467, %polly.access.mul.Packed_MemRef_call1294468.1
  %275 = getelementptr double, double* %Packed_MemRef_call1294, i64 %274
  %276 = bitcast double* %275 to <4 x double>*
  %wide.load1471 = load <4 x double>, <4 x double>* %276, align 8
  %277 = fmul fast <4 x double> %broadcast.splat1473, %wide.load1471
  %278 = add nuw nsw i64 %273, %polly.access.mul.Packed_MemRef_call2296472.1
  %279 = getelementptr double, double* %Packed_MemRef_call2296, i64 %278
  %280 = bitcast double* %279 to <4 x double>*
  %wide.load1474 = load <4 x double>, <4 x double>* %280, align 8
  %281 = fmul fast <4 x double> %broadcast.splat1476, %wide.load1474
  %282 = shl i64 %273, 3
  %283 = getelementptr i8, i8* %scevgep484.1, i64 %282
  %284 = bitcast i8* %283 to <4 x double>*
  %wide.load1477 = load <4 x double>, <4 x double>* %284, align 8, !alias.scope !79, !noalias !81
  %285 = fadd fast <4 x double> %281, %277
  %286 = fmul fast <4 x double> %285, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %287 = fadd fast <4 x double> %286, %wide.load1477
  %288 = bitcast i8* %283 to <4 x double>*
  store <4 x double> %287, <4 x double>* %288, align 8, !alias.scope !79, !noalias !81
  %index.next1468 = add i64 %index1467, 4
  %289 = icmp eq i64 %index.next1468, %n.vec1466
  br i1 %289, label %middle.block1459, label %vector.body1461, !llvm.loop !117

middle.block1459:                                 ; preds = %vector.body1461
  %cmp.n1470 = icmp eq i64 %265, %n.vec1466
  br i1 %cmp.n1470, label %polly.loop_exit464.1, label %polly.loop_header462.1.preheader

polly.loop_header462.1.preheader:                 ; preds = %polly.loop_header456.1, %middle.block1459
  %polly.indvar465.1.ph = phi i64 [ 0, %polly.loop_header456.1 ], [ %n.vec1466, %middle.block1459 ]
  br label %polly.loop_header462.1

polly.loop_header462.1:                           ; preds = %polly.loop_header462.1.preheader, %polly.loop_header462.1
  %polly.indvar465.1 = phi i64 [ %polly.indvar_next466.1, %polly.loop_header462.1 ], [ %polly.indvar465.1.ph, %polly.loop_header462.1.preheader ]
  %290 = add nuw nsw i64 %polly.indvar465.1, %262
  %polly.access.add.Packed_MemRef_call1294469.1 = add nuw nsw i64 %polly.indvar465.1, %polly.access.mul.Packed_MemRef_call1294468.1
  %polly.access.Packed_MemRef_call1294470.1 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294469.1
  %_p_scalar_471.1 = load double, double* %polly.access.Packed_MemRef_call1294470.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_475.1, %_p_scalar_471.1
  %polly.access.add.Packed_MemRef_call2296477.1 = add nuw nsw i64 %290, %polly.access.mul.Packed_MemRef_call2296472.1
  %polly.access.Packed_MemRef_call2296478.1 = getelementptr double, double* %Packed_MemRef_call2296, i64 %polly.access.add.Packed_MemRef_call2296477.1
  %_p_scalar_479.1 = load double, double* %polly.access.Packed_MemRef_call2296478.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_483.1, %_p_scalar_479.1
  %291 = shl i64 %290, 3
  %scevgep485.1 = getelementptr i8, i8* %scevgep484.1, i64 %291
  %scevgep485486.1 = bitcast i8* %scevgep485.1 to double*
  %_p_scalar_487.1 = load double, double* %scevgep485486.1, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_487.1
  store double %p_add42.i79.1, double* %scevgep485486.1, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next466.1 = add nuw nsw i64 %polly.indvar465.1, 1
  %exitcond946.1.not = icmp eq i64 %polly.indvar465.1, %smin945.1
  br i1 %exitcond946.1.not, label %polly.loop_exit464.1, label %polly.loop_header462.1, !llvm.loop !118

polly.loop_exit464.1:                             ; preds = %polly.loop_header462.1, %middle.block1459
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
  %indvars.iv.next949.1 = add nsw i64 %indvars.iv948.1, -16
  %exitcond951.1.not = icmp eq i64 %polly.indvar_next421.1, 5
  br i1 %exitcond951.1.not, label %polly.loop_exit419.1, label %polly.loop_header417.1

polly.loop_exit419.1:                             ; preds = %polly.loop_exit425.1
  tail call void @free(i8* nonnull %malloccall293)
  tail call void @free(i8* nonnull %malloccall295)
  br label %kernel_syr2k.exit90

polly.loop_header616.1:                           ; preds = %polly.loop_exit624, %polly.loop_exit624.1
  %indvars.iv967.1 = phi i64 [ %indvars.iv.next968.1, %polly.loop_exit624.1 ], [ 80, %polly.loop_exit624 ]
  %polly.indvar619.1 = phi i64 [ %polly.indvar_next620.1, %polly.loop_exit624.1 ], [ 0, %polly.loop_exit624 ]
  %292 = shl nuw nsw i64 %polly.indvar619.1, 4
  %293 = mul nsw i64 %polly.indvar619.1, -16
  %294 = add nuw nsw i64 %292, 16
  br label %polly.loop_header622.1

polly.loop_header622.1:                           ; preds = %polly.loop_exit657.1, %polly.loop_header616.1
  %indvars.iv956.1 = phi i64 [ %indvars.iv.next957.1, %polly.loop_exit657.1 ], [ 0, %polly.loop_header616.1 ]
  %polly.indvar625.1 = phi i64 [ %polly.indvar_next626.1, %polly.loop_exit657.1 ], [ %292, %polly.loop_header616.1 ]
  %smin1398 = call i64 @llvm.smin.i64(i64 %indvars.iv956.1, i64 15)
  %295 = add nuw nsw i64 %smin1398, 1
  %smin964.1 = call i64 @llvm.smin.i64(i64 %indvars.iv956.1, i64 15)
  %296 = add nsw i64 %polly.indvar625.1, %293
  %.not894.1 = icmp ult i64 %polly.indvar625.1, %294
  %polly.access.mul.call1649.1 = mul nuw nsw i64 %polly.indvar625.1, 60
  br i1 %.not894.1, label %polly.loop_header628.us.1, label %polly.loop_header628.1

polly.loop_header628.1:                           ; preds = %polly.loop_header622.1, %polly.then646.1
  %polly.indvar631.1 = phi i64 [ %polly.indvar_next632.1, %polly.then646.1 ], [ 0, %polly.loop_header622.1 ]
  %297 = add nuw nsw i64 %polly.indvar631.1, 50
  %polly.access.mul.Packed_MemRef_call1493.1 = mul nuw nsw i64 %polly.indvar631.1, 80
  br label %polly.loop_header634.1

polly.loop_header634.1:                           ; preds = %polly.loop_header634.1, %polly.loop_header628.1
  %polly.indvar637.1 = phi i64 [ 0, %polly.loop_header628.1 ], [ %polly.indvar_next638.1, %polly.loop_header634.1 ]
  %298 = add nuw nsw i64 %polly.indvar637.1, %292
  %polly.access.mul.call1641.1 = mul nuw nsw i64 %298, 60
  %polly.access.add.call1642.1 = add nuw nsw i64 %polly.access.mul.call1641.1, %297
  %polly.access.call1643.1 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1642.1
  %polly.access.call1643.load.1 = load double, double* %polly.access.call1643.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1493.1 = add nuw nsw i64 %polly.indvar637.1, %polly.access.mul.Packed_MemRef_call1493.1
  %polly.access.Packed_MemRef_call1493.1 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493.1
  store double %polly.access.call1643.load.1, double* %polly.access.Packed_MemRef_call1493.1, align 8
  %polly.indvar_next638.1 = add nuw nsw i64 %polly.indvar637.1, 1
  %exitcond959.1.not = icmp eq i64 %polly.indvar637.1, %smin964.1
  br i1 %exitcond959.1.not, label %polly.then646.1, label %polly.loop_header634.1

polly.then646.1:                                  ; preds = %polly.loop_header634.1
  %polly.access.add.call1650.1 = add nuw nsw i64 %297, %polly.access.mul.call1649.1
  %polly.access.call1651.1 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1650.1
  %polly.access.call1651.load.1 = load double, double* %polly.access.call1651.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1493653.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1493.1, %296
  %polly.access.Packed_MemRef_call1493654.1 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493653.1
  store double %polly.access.call1651.load.1, double* %polly.access.Packed_MemRef_call1493654.1, align 8
  %polly.indvar_next632.1 = add nuw nsw i64 %polly.indvar631.1, 1
  %exitcond960.1.not = icmp eq i64 %polly.indvar_next632.1, 10
  br i1 %exitcond960.1.not, label %polly.loop_exit630.1, label %polly.loop_header628.1

polly.loop_header628.us.1:                        ; preds = %polly.loop_header622.1, %polly.merge645.us.1
  %polly.indvar631.us.1 = phi i64 [ %polly.indvar_next632.us.1, %polly.merge645.us.1 ], [ 0, %polly.loop_header622.1 ]
  %299 = add nuw nsw i64 %polly.indvar631.us.1, 50
  %polly.access.mul.Packed_MemRef_call1493.us.1 = mul nuw nsw i64 %polly.indvar631.us.1, 80
  br label %polly.loop_header634.us.1

polly.loop_header634.us.1:                        ; preds = %polly.loop_header634.us.1, %polly.loop_header628.us.1
  %polly.indvar637.us.1 = phi i64 [ 0, %polly.loop_header628.us.1 ], [ %polly.indvar_next638.us.1, %polly.loop_header634.us.1 ]
  %300 = add nuw nsw i64 %polly.indvar637.us.1, %292
  %polly.access.mul.call1641.us.1 = mul nuw nsw i64 %300, 60
  %polly.access.add.call1642.us.1 = add nuw nsw i64 %polly.access.mul.call1641.us.1, %299
  %polly.access.call1643.us.1 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1642.us.1
  %polly.access.call1643.load.us.1 = load double, double* %polly.access.call1643.us.1, align 8, !alias.scope !95, !noalias !102
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
  %301 = mul nuw nsw i64 %polly.indvar625.1, 640
  %scevgep683.1 = getelementptr i8, i8* %call, i64 %301
  br label %polly.loop_header655.1

polly.loop_header655.1:                           ; preds = %polly.loop_exit663.1, %polly.loop_exit630.1
  %polly.indvar658.1 = phi i64 [ 0, %polly.loop_exit630.1 ], [ %polly.indvar_next659.1, %polly.loop_exit663.1 ]
  %polly.access.mul.Packed_MemRef_call1493667.1 = mul nuw nsw i64 %polly.indvar658.1, 80
  %302 = mul i64 %polly.indvar658.1, 80
  %polly.access.mul.Packed_MemRef_call2495671.1 = add i64 %302, 4000
  %polly.access.add.Packed_MemRef_call2495672.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2495671.1, %polly.indvar625.1
  %polly.access.Packed_MemRef_call2495673.1 = getelementptr double, double* %Packed_MemRef_call2495, i64 %polly.access.add.Packed_MemRef_call2495672.1
  %_p_scalar_674.1 = load double, double* %polly.access.Packed_MemRef_call2495673.1, align 8
  %polly.access.add.Packed_MemRef_call1493680.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1493667.1, %296
  %polly.access.Packed_MemRef_call1493681.1 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493680.1
  %_p_scalar_682.1 = load double, double* %polly.access.Packed_MemRef_call1493681.1, align 8
  %min.iters.check1399 = icmp ult i64 %smin1398, 3
  br i1 %min.iters.check1399, label %polly.loop_header661.1.preheader, label %vector.ph1400

vector.ph1400:                                    ; preds = %polly.loop_header655.1
  %n.vec1402 = and i64 %295, 28
  %broadcast.splatinsert1408 = insertelement <4 x double> poison, double %_p_scalar_674.1, i32 0
  %broadcast.splat1409 = shufflevector <4 x double> %broadcast.splatinsert1408, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1411 = insertelement <4 x double> poison, double %_p_scalar_682.1, i32 0
  %broadcast.splat1412 = shufflevector <4 x double> %broadcast.splatinsert1411, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1397

vector.body1397:                                  ; preds = %vector.body1397, %vector.ph1400
  %index1403 = phi i64 [ 0, %vector.ph1400 ], [ %index.next1404, %vector.body1397 ]
  %303 = add nuw nsw i64 %index1403, %292
  %304 = add nuw nsw i64 %index1403, %polly.access.mul.Packed_MemRef_call1493667.1
  %305 = getelementptr double, double* %Packed_MemRef_call1493, i64 %304
  %306 = bitcast double* %305 to <4 x double>*
  %wide.load1407 = load <4 x double>, <4 x double>* %306, align 8
  %307 = fmul fast <4 x double> %broadcast.splat1409, %wide.load1407
  %308 = add nuw nsw i64 %303, %polly.access.mul.Packed_MemRef_call2495671.1
  %309 = getelementptr double, double* %Packed_MemRef_call2495, i64 %308
  %310 = bitcast double* %309 to <4 x double>*
  %wide.load1410 = load <4 x double>, <4 x double>* %310, align 8
  %311 = fmul fast <4 x double> %broadcast.splat1412, %wide.load1410
  %312 = shl i64 %303, 3
  %313 = getelementptr i8, i8* %scevgep683.1, i64 %312
  %314 = bitcast i8* %313 to <4 x double>*
  %wide.load1413 = load <4 x double>, <4 x double>* %314, align 8, !alias.scope !92, !noalias !94
  %315 = fadd fast <4 x double> %311, %307
  %316 = fmul fast <4 x double> %315, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %317 = fadd fast <4 x double> %316, %wide.load1413
  %318 = bitcast i8* %313 to <4 x double>*
  store <4 x double> %317, <4 x double>* %318, align 8, !alias.scope !92, !noalias !94
  %index.next1404 = add i64 %index1403, 4
  %319 = icmp eq i64 %index.next1404, %n.vec1402
  br i1 %319, label %middle.block1395, label %vector.body1397, !llvm.loop !119

middle.block1395:                                 ; preds = %vector.body1397
  %cmp.n1406 = icmp eq i64 %295, %n.vec1402
  br i1 %cmp.n1406, label %polly.loop_exit663.1, label %polly.loop_header661.1.preheader

polly.loop_header661.1.preheader:                 ; preds = %polly.loop_header655.1, %middle.block1395
  %polly.indvar664.1.ph = phi i64 [ 0, %polly.loop_header655.1 ], [ %n.vec1402, %middle.block1395 ]
  br label %polly.loop_header661.1

polly.loop_header661.1:                           ; preds = %polly.loop_header661.1.preheader, %polly.loop_header661.1
  %polly.indvar664.1 = phi i64 [ %polly.indvar_next665.1, %polly.loop_header661.1 ], [ %polly.indvar664.1.ph, %polly.loop_header661.1.preheader ]
  %320 = add nuw nsw i64 %polly.indvar664.1, %292
  %polly.access.add.Packed_MemRef_call1493668.1 = add nuw nsw i64 %polly.indvar664.1, %polly.access.mul.Packed_MemRef_call1493667.1
  %polly.access.Packed_MemRef_call1493669.1 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493668.1
  %_p_scalar_670.1 = load double, double* %polly.access.Packed_MemRef_call1493669.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_674.1, %_p_scalar_670.1
  %polly.access.add.Packed_MemRef_call2495676.1 = add nuw nsw i64 %320, %polly.access.mul.Packed_MemRef_call2495671.1
  %polly.access.Packed_MemRef_call2495677.1 = getelementptr double, double* %Packed_MemRef_call2495, i64 %polly.access.add.Packed_MemRef_call2495676.1
  %_p_scalar_678.1 = load double, double* %polly.access.Packed_MemRef_call2495677.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_682.1, %_p_scalar_678.1
  %321 = shl i64 %320, 3
  %scevgep684.1 = getelementptr i8, i8* %scevgep683.1, i64 %321
  %scevgep684685.1 = bitcast i8* %scevgep684.1 to double*
  %_p_scalar_686.1 = load double, double* %scevgep684685.1, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_686.1
  store double %p_add42.i.1, double* %scevgep684685.1, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next665.1 = add nuw nsw i64 %polly.indvar664.1, 1
  %exitcond965.1.not = icmp eq i64 %polly.indvar664.1, %smin964.1
  br i1 %exitcond965.1.not, label %polly.loop_exit663.1, label %polly.loop_header661.1, !llvm.loop !120

polly.loop_exit663.1:                             ; preds = %polly.loop_header661.1, %middle.block1395
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
  %indvars.iv.next968.1 = add nsw i64 %indvars.iv967.1, -16
  %exitcond970.1.not = icmp eq i64 %polly.indvar_next620.1, 5
  br i1 %exitcond970.1.not, label %polly.loop_exit618.1, label %polly.loop_header616.1

polly.loop_exit618.1:                             ; preds = %polly.loop_exit624.1
  tail call void @free(i8* nonnull %malloccall492)
  tail call void @free(i8* nonnull %malloccall494)
  br label %kernel_syr2k.exit

polly.loop_header878.1:                           ; preds = %polly.loop_exit886, %polly.loop_exit886.1
  %polly.indvar881.1 = phi i64 [ %polly.indvar_next882.1, %polly.loop_exit886.1 ], [ 0, %polly.loop_exit886 ]
  %322 = mul nuw nsw i64 %polly.indvar881.1, 480
  %323 = trunc i64 %polly.indvar881.1 to i32
  %broadcast.splatinsert1303 = insertelement <4 x i32> poison, i32 %323, i32 0
  %broadcast.splat1304 = shufflevector <4 x i32> %broadcast.splatinsert1303, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1295

vector.body1295:                                  ; preds = %vector.body1295, %polly.loop_header878.1
  %index1297 = phi i64 [ 0, %polly.loop_header878.1 ], [ %index.next1298, %vector.body1295 ]
  %vec.ind1301 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header878.1 ], [ %vec.ind.next1302, %vector.body1295 ]
  %324 = add nuw nsw <4 x i64> %vec.ind1301, <i64 32, i64 32, i64 32, i64 32>
  %325 = trunc <4 x i64> %324 to <4 x i32>
  %326 = mul <4 x i32> %broadcast.splat1304, %325
  %327 = add <4 x i32> %326, <i32 1, i32 1, i32 1, i32 1>
  %328 = urem <4 x i32> %327, <i32 80, i32 80, i32 80, i32 80>
  %329 = sitofp <4 x i32> %328 to <4 x double>
  %330 = fmul fast <4 x double> %329, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %331 = extractelement <4 x i64> %324, i32 0
  %332 = shl i64 %331, 3
  %333 = add i64 %332, %322
  %334 = getelementptr i8, i8* %call1, i64 %333
  %335 = bitcast i8* %334 to <4 x double>*
  store <4 x double> %330, <4 x double>* %335, align 8, !alias.scope !108, !noalias !113
  %index.next1298 = add i64 %index1297, 4
  %vec.ind.next1302 = add <4 x i64> %vec.ind1301, <i64 4, i64 4, i64 4, i64 4>
  %336 = icmp eq i64 %index.next1298, 28
  br i1 %336, label %polly.loop_exit886.1, label %vector.body1295, !llvm.loop !121

polly.loop_exit886.1:                             ; preds = %vector.body1295
  %polly.indvar_next882.1 = add nuw nsw i64 %polly.indvar881.1, 1
  %exitcond979.1.not = icmp eq i64 %polly.indvar_next882.1, 32
  br i1 %exitcond979.1.not, label %polly.loop_header878.11002, label %polly.loop_header878.1

polly.loop_header878.11002:                       ; preds = %polly.loop_exit886.1, %polly.loop_exit886.11013
  %polly.indvar881.11001 = phi i64 [ %polly.indvar_next882.11011, %polly.loop_exit886.11013 ], [ 0, %polly.loop_exit886.1 ]
  %337 = add nuw nsw i64 %polly.indvar881.11001, 32
  %338 = mul nuw nsw i64 %337, 480
  %339 = trunc i64 %337 to i32
  %broadcast.splatinsert1317 = insertelement <4 x i32> poison, i32 %339, i32 0
  %broadcast.splat1318 = shufflevector <4 x i32> %broadcast.splatinsert1317, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1307

vector.body1307:                                  ; preds = %vector.body1307, %polly.loop_header878.11002
  %index1309 = phi i64 [ 0, %polly.loop_header878.11002 ], [ %index.next1310, %vector.body1307 ]
  %vec.ind1315 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header878.11002 ], [ %vec.ind.next1316, %vector.body1307 ]
  %340 = mul <4 x i32> %vec.ind1315, %broadcast.splat1318
  %341 = add <4 x i32> %340, <i32 1, i32 1, i32 1, i32 1>
  %342 = urem <4 x i32> %341, <i32 80, i32 80, i32 80, i32 80>
  %343 = sitofp <4 x i32> %342 to <4 x double>
  %344 = fmul fast <4 x double> %343, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %345 = shl i64 %index1309, 3
  %346 = add i64 %345, %338
  %347 = getelementptr i8, i8* %call1, i64 %346
  %348 = bitcast i8* %347 to <4 x double>*
  store <4 x double> %344, <4 x double>* %348, align 8, !alias.scope !108, !noalias !113
  %index.next1310 = add i64 %index1309, 4
  %vec.ind.next1316 = add <4 x i32> %vec.ind1315, <i32 4, i32 4, i32 4, i32 4>
  %349 = icmp eq i64 %index.next1310, 32
  br i1 %349, label %polly.loop_exit886.11013, label %vector.body1307, !llvm.loop !122

polly.loop_exit886.11013:                         ; preds = %vector.body1307
  %polly.indvar_next882.11011 = add nuw nsw i64 %polly.indvar881.11001, 1
  %exitcond979.11012.not = icmp eq i64 %polly.indvar_next882.11011, 32
  br i1 %exitcond979.11012.not, label %polly.loop_header878.1.1, label %polly.loop_header878.11002

polly.loop_header878.1.1:                         ; preds = %polly.loop_exit886.11013, %polly.loop_exit886.1.1
  %polly.indvar881.1.1 = phi i64 [ %polly.indvar_next882.1.1, %polly.loop_exit886.1.1 ], [ 0, %polly.loop_exit886.11013 ]
  %350 = add nuw nsw i64 %polly.indvar881.1.1, 32
  %351 = mul nuw nsw i64 %350, 480
  %352 = trunc i64 %350 to i32
  %broadcast.splatinsert1329 = insertelement <4 x i32> poison, i32 %352, i32 0
  %broadcast.splat1330 = shufflevector <4 x i32> %broadcast.splatinsert1329, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1321

vector.body1321:                                  ; preds = %vector.body1321, %polly.loop_header878.1.1
  %index1323 = phi i64 [ 0, %polly.loop_header878.1.1 ], [ %index.next1324, %vector.body1321 ]
  %vec.ind1327 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header878.1.1 ], [ %vec.ind.next1328, %vector.body1321 ]
  %353 = add nuw nsw <4 x i64> %vec.ind1327, <i64 32, i64 32, i64 32, i64 32>
  %354 = trunc <4 x i64> %353 to <4 x i32>
  %355 = mul <4 x i32> %broadcast.splat1330, %354
  %356 = add <4 x i32> %355, <i32 1, i32 1, i32 1, i32 1>
  %357 = urem <4 x i32> %356, <i32 80, i32 80, i32 80, i32 80>
  %358 = sitofp <4 x i32> %357 to <4 x double>
  %359 = fmul fast <4 x double> %358, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %360 = extractelement <4 x i64> %353, i32 0
  %361 = shl i64 %360, 3
  %362 = add i64 %361, %351
  %363 = getelementptr i8, i8* %call1, i64 %362
  %364 = bitcast i8* %363 to <4 x double>*
  store <4 x double> %359, <4 x double>* %364, align 8, !alias.scope !108, !noalias !113
  %index.next1324 = add i64 %index1323, 4
  %vec.ind.next1328 = add <4 x i64> %vec.ind1327, <i64 4, i64 4, i64 4, i64 4>
  %365 = icmp eq i64 %index.next1324, 28
  br i1 %365, label %polly.loop_exit886.1.1, label %vector.body1321, !llvm.loop !123

polly.loop_exit886.1.1:                           ; preds = %vector.body1321
  %polly.indvar_next882.1.1 = add nuw nsw i64 %polly.indvar881.1.1, 1
  %exitcond979.1.1.not = icmp eq i64 %polly.indvar_next882.1.1, 32
  br i1 %exitcond979.1.1.not, label %polly.loop_header878.2, label %polly.loop_header878.1.1

polly.loop_header878.2:                           ; preds = %polly.loop_exit886.1.1, %polly.loop_exit886.2
  %polly.indvar881.2 = phi i64 [ %polly.indvar_next882.2, %polly.loop_exit886.2 ], [ 0, %polly.loop_exit886.1.1 ]
  %366 = add nuw nsw i64 %polly.indvar881.2, 64
  %367 = mul nuw nsw i64 %366, 480
  %368 = trunc i64 %366 to i32
  %broadcast.splatinsert1343 = insertelement <4 x i32> poison, i32 %368, i32 0
  %broadcast.splat1344 = shufflevector <4 x i32> %broadcast.splatinsert1343, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1333

vector.body1333:                                  ; preds = %vector.body1333, %polly.loop_header878.2
  %index1335 = phi i64 [ 0, %polly.loop_header878.2 ], [ %index.next1336, %vector.body1333 ]
  %vec.ind1341 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header878.2 ], [ %vec.ind.next1342, %vector.body1333 ]
  %369 = mul <4 x i32> %vec.ind1341, %broadcast.splat1344
  %370 = add <4 x i32> %369, <i32 1, i32 1, i32 1, i32 1>
  %371 = urem <4 x i32> %370, <i32 80, i32 80, i32 80, i32 80>
  %372 = sitofp <4 x i32> %371 to <4 x double>
  %373 = fmul fast <4 x double> %372, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %374 = shl i64 %index1335, 3
  %375 = add i64 %374, %367
  %376 = getelementptr i8, i8* %call1, i64 %375
  %377 = bitcast i8* %376 to <4 x double>*
  store <4 x double> %373, <4 x double>* %377, align 8, !alias.scope !108, !noalias !113
  %index.next1336 = add i64 %index1335, 4
  %vec.ind.next1342 = add <4 x i32> %vec.ind1341, <i32 4, i32 4, i32 4, i32 4>
  %378 = icmp eq i64 %index.next1336, 32
  br i1 %378, label %polly.loop_exit886.2, label %vector.body1333, !llvm.loop !124

polly.loop_exit886.2:                             ; preds = %vector.body1333
  %polly.indvar_next882.2 = add nuw nsw i64 %polly.indvar881.2, 1
  %exitcond979.2.not = icmp eq i64 %polly.indvar_next882.2, 16
  br i1 %exitcond979.2.not, label %polly.loop_header878.1.2, label %polly.loop_header878.2

polly.loop_header878.1.2:                         ; preds = %polly.loop_exit886.2, %polly.loop_exit886.1.2
  %polly.indvar881.1.2 = phi i64 [ %polly.indvar_next882.1.2, %polly.loop_exit886.1.2 ], [ 0, %polly.loop_exit886.2 ]
  %379 = add nuw nsw i64 %polly.indvar881.1.2, 64
  %380 = mul nuw nsw i64 %379, 480
  %381 = trunc i64 %379 to i32
  %broadcast.splatinsert1355 = insertelement <4 x i32> poison, i32 %381, i32 0
  %broadcast.splat1356 = shufflevector <4 x i32> %broadcast.splatinsert1355, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1347

vector.body1347:                                  ; preds = %vector.body1347, %polly.loop_header878.1.2
  %index1349 = phi i64 [ 0, %polly.loop_header878.1.2 ], [ %index.next1350, %vector.body1347 ]
  %vec.ind1353 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header878.1.2 ], [ %vec.ind.next1354, %vector.body1347 ]
  %382 = add nuw nsw <4 x i64> %vec.ind1353, <i64 32, i64 32, i64 32, i64 32>
  %383 = trunc <4 x i64> %382 to <4 x i32>
  %384 = mul <4 x i32> %broadcast.splat1356, %383
  %385 = add <4 x i32> %384, <i32 1, i32 1, i32 1, i32 1>
  %386 = urem <4 x i32> %385, <i32 80, i32 80, i32 80, i32 80>
  %387 = sitofp <4 x i32> %386 to <4 x double>
  %388 = fmul fast <4 x double> %387, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %389 = extractelement <4 x i64> %382, i32 0
  %390 = shl i64 %389, 3
  %391 = add i64 %390, %380
  %392 = getelementptr i8, i8* %call1, i64 %391
  %393 = bitcast i8* %392 to <4 x double>*
  store <4 x double> %388, <4 x double>* %393, align 8, !alias.scope !108, !noalias !113
  %index.next1350 = add i64 %index1349, 4
  %vec.ind.next1354 = add <4 x i64> %vec.ind1353, <i64 4, i64 4, i64 4, i64 4>
  %394 = icmp eq i64 %index.next1350, 28
  br i1 %394, label %polly.loop_exit886.1.2, label %vector.body1347, !llvm.loop !125

polly.loop_exit886.1.2:                           ; preds = %vector.body1347
  %polly.indvar_next882.1.2 = add nuw nsw i64 %polly.indvar881.1.2, 1
  %exitcond979.1.2.not = icmp eq i64 %polly.indvar_next882.1.2, 16
  br i1 %exitcond979.1.2.not, label %init_array.exit, label %polly.loop_header878.1.2

polly.loop_header852.1:                           ; preds = %polly.loop_exit860, %polly.loop_exit860.1
  %polly.indvar855.1 = phi i64 [ %polly.indvar_next856.1, %polly.loop_exit860.1 ], [ 0, %polly.loop_exit860 ]
  %395 = mul nuw nsw i64 %polly.indvar855.1, 480
  %396 = trunc i64 %polly.indvar855.1 to i32
  %broadcast.splatinsert1225 = insertelement <4 x i32> poison, i32 %396, i32 0
  %broadcast.splat1226 = shufflevector <4 x i32> %broadcast.splatinsert1225, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1217

vector.body1217:                                  ; preds = %vector.body1217, %polly.loop_header852.1
  %index1219 = phi i64 [ 0, %polly.loop_header852.1 ], [ %index.next1220, %vector.body1217 ]
  %vec.ind1223 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header852.1 ], [ %vec.ind.next1224, %vector.body1217 ]
  %397 = add nuw nsw <4 x i64> %vec.ind1223, <i64 32, i64 32, i64 32, i64 32>
  %398 = trunc <4 x i64> %397 to <4 x i32>
  %399 = mul <4 x i32> %broadcast.splat1226, %398
  %400 = add <4 x i32> %399, <i32 2, i32 2, i32 2, i32 2>
  %401 = urem <4 x i32> %400, <i32 60, i32 60, i32 60, i32 60>
  %402 = sitofp <4 x i32> %401 to <4 x double>
  %403 = fmul fast <4 x double> %402, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %404 = extractelement <4 x i64> %397, i32 0
  %405 = shl i64 %404, 3
  %406 = add i64 %405, %395
  %407 = getelementptr i8, i8* %call2, i64 %406
  %408 = bitcast i8* %407 to <4 x double>*
  store <4 x double> %403, <4 x double>* %408, align 8, !alias.scope !109, !noalias !111
  %index.next1220 = add i64 %index1219, 4
  %vec.ind.next1224 = add <4 x i64> %vec.ind1223, <i64 4, i64 4, i64 4, i64 4>
  %409 = icmp eq i64 %index.next1220, 28
  br i1 %409, label %polly.loop_exit860.1, label %vector.body1217, !llvm.loop !126

polly.loop_exit860.1:                             ; preds = %vector.body1217
  %polly.indvar_next856.1 = add nuw nsw i64 %polly.indvar855.1, 1
  %exitcond985.1.not = icmp eq i64 %polly.indvar_next856.1, 32
  br i1 %exitcond985.1.not, label %polly.loop_header852.11016, label %polly.loop_header852.1

polly.loop_header852.11016:                       ; preds = %polly.loop_exit860.1, %polly.loop_exit860.11027
  %polly.indvar855.11015 = phi i64 [ %polly.indvar_next856.11025, %polly.loop_exit860.11027 ], [ 0, %polly.loop_exit860.1 ]
  %410 = add nuw nsw i64 %polly.indvar855.11015, 32
  %411 = mul nuw nsw i64 %410, 480
  %412 = trunc i64 %410 to i32
  %broadcast.splatinsert1239 = insertelement <4 x i32> poison, i32 %412, i32 0
  %broadcast.splat1240 = shufflevector <4 x i32> %broadcast.splatinsert1239, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1229

vector.body1229:                                  ; preds = %vector.body1229, %polly.loop_header852.11016
  %index1231 = phi i64 [ 0, %polly.loop_header852.11016 ], [ %index.next1232, %vector.body1229 ]
  %vec.ind1237 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header852.11016 ], [ %vec.ind.next1238, %vector.body1229 ]
  %413 = mul <4 x i32> %vec.ind1237, %broadcast.splat1240
  %414 = add <4 x i32> %413, <i32 2, i32 2, i32 2, i32 2>
  %415 = urem <4 x i32> %414, <i32 60, i32 60, i32 60, i32 60>
  %416 = sitofp <4 x i32> %415 to <4 x double>
  %417 = fmul fast <4 x double> %416, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %418 = shl i64 %index1231, 3
  %419 = add i64 %418, %411
  %420 = getelementptr i8, i8* %call2, i64 %419
  %421 = bitcast i8* %420 to <4 x double>*
  store <4 x double> %417, <4 x double>* %421, align 8, !alias.scope !109, !noalias !111
  %index.next1232 = add i64 %index1231, 4
  %vec.ind.next1238 = add <4 x i32> %vec.ind1237, <i32 4, i32 4, i32 4, i32 4>
  %422 = icmp eq i64 %index.next1232, 32
  br i1 %422, label %polly.loop_exit860.11027, label %vector.body1229, !llvm.loop !127

polly.loop_exit860.11027:                         ; preds = %vector.body1229
  %polly.indvar_next856.11025 = add nuw nsw i64 %polly.indvar855.11015, 1
  %exitcond985.11026.not = icmp eq i64 %polly.indvar_next856.11025, 32
  br i1 %exitcond985.11026.not, label %polly.loop_header852.1.1, label %polly.loop_header852.11016

polly.loop_header852.1.1:                         ; preds = %polly.loop_exit860.11027, %polly.loop_exit860.1.1
  %polly.indvar855.1.1 = phi i64 [ %polly.indvar_next856.1.1, %polly.loop_exit860.1.1 ], [ 0, %polly.loop_exit860.11027 ]
  %423 = add nuw nsw i64 %polly.indvar855.1.1, 32
  %424 = mul nuw nsw i64 %423, 480
  %425 = trunc i64 %423 to i32
  %broadcast.splatinsert1251 = insertelement <4 x i32> poison, i32 %425, i32 0
  %broadcast.splat1252 = shufflevector <4 x i32> %broadcast.splatinsert1251, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1243

vector.body1243:                                  ; preds = %vector.body1243, %polly.loop_header852.1.1
  %index1245 = phi i64 [ 0, %polly.loop_header852.1.1 ], [ %index.next1246, %vector.body1243 ]
  %vec.ind1249 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header852.1.1 ], [ %vec.ind.next1250, %vector.body1243 ]
  %426 = add nuw nsw <4 x i64> %vec.ind1249, <i64 32, i64 32, i64 32, i64 32>
  %427 = trunc <4 x i64> %426 to <4 x i32>
  %428 = mul <4 x i32> %broadcast.splat1252, %427
  %429 = add <4 x i32> %428, <i32 2, i32 2, i32 2, i32 2>
  %430 = urem <4 x i32> %429, <i32 60, i32 60, i32 60, i32 60>
  %431 = sitofp <4 x i32> %430 to <4 x double>
  %432 = fmul fast <4 x double> %431, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %433 = extractelement <4 x i64> %426, i32 0
  %434 = shl i64 %433, 3
  %435 = add i64 %434, %424
  %436 = getelementptr i8, i8* %call2, i64 %435
  %437 = bitcast i8* %436 to <4 x double>*
  store <4 x double> %432, <4 x double>* %437, align 8, !alias.scope !109, !noalias !111
  %index.next1246 = add i64 %index1245, 4
  %vec.ind.next1250 = add <4 x i64> %vec.ind1249, <i64 4, i64 4, i64 4, i64 4>
  %438 = icmp eq i64 %index.next1246, 28
  br i1 %438, label %polly.loop_exit860.1.1, label %vector.body1243, !llvm.loop !128

polly.loop_exit860.1.1:                           ; preds = %vector.body1243
  %polly.indvar_next856.1.1 = add nuw nsw i64 %polly.indvar855.1.1, 1
  %exitcond985.1.1.not = icmp eq i64 %polly.indvar_next856.1.1, 32
  br i1 %exitcond985.1.1.not, label %polly.loop_header852.2, label %polly.loop_header852.1.1

polly.loop_header852.2:                           ; preds = %polly.loop_exit860.1.1, %polly.loop_exit860.2
  %polly.indvar855.2 = phi i64 [ %polly.indvar_next856.2, %polly.loop_exit860.2 ], [ 0, %polly.loop_exit860.1.1 ]
  %439 = add nuw nsw i64 %polly.indvar855.2, 64
  %440 = mul nuw nsw i64 %439, 480
  %441 = trunc i64 %439 to i32
  %broadcast.splatinsert1265 = insertelement <4 x i32> poison, i32 %441, i32 0
  %broadcast.splat1266 = shufflevector <4 x i32> %broadcast.splatinsert1265, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1255

vector.body1255:                                  ; preds = %vector.body1255, %polly.loop_header852.2
  %index1257 = phi i64 [ 0, %polly.loop_header852.2 ], [ %index.next1258, %vector.body1255 ]
  %vec.ind1263 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header852.2 ], [ %vec.ind.next1264, %vector.body1255 ]
  %442 = mul <4 x i32> %vec.ind1263, %broadcast.splat1266
  %443 = add <4 x i32> %442, <i32 2, i32 2, i32 2, i32 2>
  %444 = urem <4 x i32> %443, <i32 60, i32 60, i32 60, i32 60>
  %445 = sitofp <4 x i32> %444 to <4 x double>
  %446 = fmul fast <4 x double> %445, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %447 = shl i64 %index1257, 3
  %448 = add i64 %447, %440
  %449 = getelementptr i8, i8* %call2, i64 %448
  %450 = bitcast i8* %449 to <4 x double>*
  store <4 x double> %446, <4 x double>* %450, align 8, !alias.scope !109, !noalias !111
  %index.next1258 = add i64 %index1257, 4
  %vec.ind.next1264 = add <4 x i32> %vec.ind1263, <i32 4, i32 4, i32 4, i32 4>
  %451 = icmp eq i64 %index.next1258, 32
  br i1 %451, label %polly.loop_exit860.2, label %vector.body1255, !llvm.loop !129

polly.loop_exit860.2:                             ; preds = %vector.body1255
  %polly.indvar_next856.2 = add nuw nsw i64 %polly.indvar855.2, 1
  %exitcond985.2.not = icmp eq i64 %polly.indvar_next856.2, 16
  br i1 %exitcond985.2.not, label %polly.loop_header852.1.2, label %polly.loop_header852.2

polly.loop_header852.1.2:                         ; preds = %polly.loop_exit860.2, %polly.loop_exit860.1.2
  %polly.indvar855.1.2 = phi i64 [ %polly.indvar_next856.1.2, %polly.loop_exit860.1.2 ], [ 0, %polly.loop_exit860.2 ]
  %452 = add nuw nsw i64 %polly.indvar855.1.2, 64
  %453 = mul nuw nsw i64 %452, 480
  %454 = trunc i64 %452 to i32
  %broadcast.splatinsert1277 = insertelement <4 x i32> poison, i32 %454, i32 0
  %broadcast.splat1278 = shufflevector <4 x i32> %broadcast.splatinsert1277, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1269

vector.body1269:                                  ; preds = %vector.body1269, %polly.loop_header852.1.2
  %index1271 = phi i64 [ 0, %polly.loop_header852.1.2 ], [ %index.next1272, %vector.body1269 ]
  %vec.ind1275 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header852.1.2 ], [ %vec.ind.next1276, %vector.body1269 ]
  %455 = add nuw nsw <4 x i64> %vec.ind1275, <i64 32, i64 32, i64 32, i64 32>
  %456 = trunc <4 x i64> %455 to <4 x i32>
  %457 = mul <4 x i32> %broadcast.splat1278, %456
  %458 = add <4 x i32> %457, <i32 2, i32 2, i32 2, i32 2>
  %459 = urem <4 x i32> %458, <i32 60, i32 60, i32 60, i32 60>
  %460 = sitofp <4 x i32> %459 to <4 x double>
  %461 = fmul fast <4 x double> %460, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %462 = extractelement <4 x i64> %455, i32 0
  %463 = shl i64 %462, 3
  %464 = add i64 %463, %453
  %465 = getelementptr i8, i8* %call2, i64 %464
  %466 = bitcast i8* %465 to <4 x double>*
  store <4 x double> %461, <4 x double>* %466, align 8, !alias.scope !109, !noalias !111
  %index.next1272 = add i64 %index1271, 4
  %vec.ind.next1276 = add <4 x i64> %vec.ind1275, <i64 4, i64 4, i64 4, i64 4>
  %467 = icmp eq i64 %index.next1272, 28
  br i1 %467, label %polly.loop_exit860.1.2, label %vector.body1269, !llvm.loop !130

polly.loop_exit860.1.2:                           ; preds = %vector.body1269
  %polly.indvar_next856.1.2 = add nuw nsw i64 %polly.indvar855.1.2, 1
  %exitcond985.1.2.not = icmp eq i64 %polly.indvar_next856.1.2, 16
  br i1 %exitcond985.1.2.not, label %polly.loop_header878, label %polly.loop_header852.1.2

polly.loop_header825.1:                           ; preds = %polly.loop_exit833, %polly.loop_exit833.1
  %polly.indvar828.1 = phi i64 [ %polly.indvar_next829.1, %polly.loop_exit833.1 ], [ 0, %polly.loop_exit833 ]
  %468 = mul nuw nsw i64 %polly.indvar828.1, 640
  %469 = trunc i64 %polly.indvar828.1 to i32
  %broadcast.splatinsert1111 = insertelement <4 x i32> poison, i32 %469, i32 0
  %broadcast.splat1112 = shufflevector <4 x i32> %broadcast.splatinsert1111, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1103

vector.body1103:                                  ; preds = %vector.body1103, %polly.loop_header825.1
  %index1105 = phi i64 [ 0, %polly.loop_header825.1 ], [ %index.next1106, %vector.body1103 ]
  %vec.ind1109 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.1 ], [ %vec.ind.next1110, %vector.body1103 ]
  %470 = add nuw nsw <4 x i64> %vec.ind1109, <i64 32, i64 32, i64 32, i64 32>
  %471 = trunc <4 x i64> %470 to <4 x i32>
  %472 = mul <4 x i32> %broadcast.splat1112, %471
  %473 = add <4 x i32> %472, <i32 3, i32 3, i32 3, i32 3>
  %474 = urem <4 x i32> %473, <i32 80, i32 80, i32 80, i32 80>
  %475 = sitofp <4 x i32> %474 to <4 x double>
  %476 = fmul fast <4 x double> %475, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %477 = extractelement <4 x i64> %470, i32 0
  %478 = shl i64 %477, 3
  %479 = add nuw nsw i64 %478, %468
  %480 = getelementptr i8, i8* %call, i64 %479
  %481 = bitcast i8* %480 to <4 x double>*
  store <4 x double> %476, <4 x double>* %481, align 8, !alias.scope !105, !noalias !107
  %index.next1106 = add i64 %index1105, 4
  %vec.ind.next1110 = add <4 x i64> %vec.ind1109, <i64 4, i64 4, i64 4, i64 4>
  %482 = icmp eq i64 %index.next1106, 32
  br i1 %482, label %polly.loop_exit833.1, label %vector.body1103, !llvm.loop !131

polly.loop_exit833.1:                             ; preds = %vector.body1103
  %polly.indvar_next829.1 = add nuw nsw i64 %polly.indvar828.1, 1
  %exitcond994.1.not = icmp eq i64 %polly.indvar_next829.1, 32
  br i1 %exitcond994.1.not, label %polly.loop_header825.2, label %polly.loop_header825.1

polly.loop_header825.2:                           ; preds = %polly.loop_exit833.1, %polly.loop_exit833.2
  %polly.indvar828.2 = phi i64 [ %polly.indvar_next829.2, %polly.loop_exit833.2 ], [ 0, %polly.loop_exit833.1 ]
  %483 = mul nuw nsw i64 %polly.indvar828.2, 640
  %484 = trunc i64 %polly.indvar828.2 to i32
  %broadcast.splatinsert1123 = insertelement <4 x i32> poison, i32 %484, i32 0
  %broadcast.splat1124 = shufflevector <4 x i32> %broadcast.splatinsert1123, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1115

vector.body1115:                                  ; preds = %vector.body1115, %polly.loop_header825.2
  %index1117 = phi i64 [ 0, %polly.loop_header825.2 ], [ %index.next1118, %vector.body1115 ]
  %vec.ind1121 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.2 ], [ %vec.ind.next1122, %vector.body1115 ]
  %485 = add nuw nsw <4 x i64> %vec.ind1121, <i64 64, i64 64, i64 64, i64 64>
  %486 = trunc <4 x i64> %485 to <4 x i32>
  %487 = mul <4 x i32> %broadcast.splat1124, %486
  %488 = add <4 x i32> %487, <i32 3, i32 3, i32 3, i32 3>
  %489 = urem <4 x i32> %488, <i32 80, i32 80, i32 80, i32 80>
  %490 = sitofp <4 x i32> %489 to <4 x double>
  %491 = fmul fast <4 x double> %490, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %492 = extractelement <4 x i64> %485, i32 0
  %493 = shl i64 %492, 3
  %494 = add nuw nsw i64 %493, %483
  %495 = getelementptr i8, i8* %call, i64 %494
  %496 = bitcast i8* %495 to <4 x double>*
  store <4 x double> %491, <4 x double>* %496, align 8, !alias.scope !105, !noalias !107
  %index.next1118 = add i64 %index1117, 4
  %vec.ind.next1122 = add <4 x i64> %vec.ind1121, <i64 4, i64 4, i64 4, i64 4>
  %497 = icmp eq i64 %index.next1118, 16
  br i1 %497, label %polly.loop_exit833.2, label %vector.body1115, !llvm.loop !132

polly.loop_exit833.2:                             ; preds = %vector.body1115
  %polly.indvar_next829.2 = add nuw nsw i64 %polly.indvar828.2, 1
  %exitcond994.2.not = icmp eq i64 %polly.indvar_next829.2, 32
  br i1 %exitcond994.2.not, label %polly.loop_header825.11030, label %polly.loop_header825.2

polly.loop_header825.11030:                       ; preds = %polly.loop_exit833.2, %polly.loop_exit833.11041
  %polly.indvar828.11029 = phi i64 [ %polly.indvar_next829.11039, %polly.loop_exit833.11041 ], [ 0, %polly.loop_exit833.2 ]
  %498 = add nuw nsw i64 %polly.indvar828.11029, 32
  %499 = mul nuw nsw i64 %498, 640
  %500 = trunc i64 %498 to i32
  %broadcast.splatinsert1137 = insertelement <4 x i32> poison, i32 %500, i32 0
  %broadcast.splat1138 = shufflevector <4 x i32> %broadcast.splatinsert1137, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1127

vector.body1127:                                  ; preds = %vector.body1127, %polly.loop_header825.11030
  %index1129 = phi i64 [ 0, %polly.loop_header825.11030 ], [ %index.next1130, %vector.body1127 ]
  %vec.ind1135 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header825.11030 ], [ %vec.ind.next1136, %vector.body1127 ]
  %501 = mul <4 x i32> %vec.ind1135, %broadcast.splat1138
  %502 = add <4 x i32> %501, <i32 3, i32 3, i32 3, i32 3>
  %503 = urem <4 x i32> %502, <i32 80, i32 80, i32 80, i32 80>
  %504 = sitofp <4 x i32> %503 to <4 x double>
  %505 = fmul fast <4 x double> %504, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %506 = shl i64 %index1129, 3
  %507 = add nuw nsw i64 %506, %499
  %508 = getelementptr i8, i8* %call, i64 %507
  %509 = bitcast i8* %508 to <4 x double>*
  store <4 x double> %505, <4 x double>* %509, align 8, !alias.scope !105, !noalias !107
  %index.next1130 = add i64 %index1129, 4
  %vec.ind.next1136 = add <4 x i32> %vec.ind1135, <i32 4, i32 4, i32 4, i32 4>
  %510 = icmp eq i64 %index.next1130, 32
  br i1 %510, label %polly.loop_exit833.11041, label %vector.body1127, !llvm.loop !133

polly.loop_exit833.11041:                         ; preds = %vector.body1127
  %polly.indvar_next829.11039 = add nuw nsw i64 %polly.indvar828.11029, 1
  %exitcond994.11040.not = icmp eq i64 %polly.indvar_next829.11039, 32
  br i1 %exitcond994.11040.not, label %polly.loop_header825.1.1, label %polly.loop_header825.11030

polly.loop_header825.1.1:                         ; preds = %polly.loop_exit833.11041, %polly.loop_exit833.1.1
  %polly.indvar828.1.1 = phi i64 [ %polly.indvar_next829.1.1, %polly.loop_exit833.1.1 ], [ 0, %polly.loop_exit833.11041 ]
  %511 = add nuw nsw i64 %polly.indvar828.1.1, 32
  %512 = mul nuw nsw i64 %511, 640
  %513 = trunc i64 %511 to i32
  %broadcast.splatinsert1149 = insertelement <4 x i32> poison, i32 %513, i32 0
  %broadcast.splat1150 = shufflevector <4 x i32> %broadcast.splatinsert1149, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1141

vector.body1141:                                  ; preds = %vector.body1141, %polly.loop_header825.1.1
  %index1143 = phi i64 [ 0, %polly.loop_header825.1.1 ], [ %index.next1144, %vector.body1141 ]
  %vec.ind1147 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.1.1 ], [ %vec.ind.next1148, %vector.body1141 ]
  %514 = add nuw nsw <4 x i64> %vec.ind1147, <i64 32, i64 32, i64 32, i64 32>
  %515 = trunc <4 x i64> %514 to <4 x i32>
  %516 = mul <4 x i32> %broadcast.splat1150, %515
  %517 = add <4 x i32> %516, <i32 3, i32 3, i32 3, i32 3>
  %518 = urem <4 x i32> %517, <i32 80, i32 80, i32 80, i32 80>
  %519 = sitofp <4 x i32> %518 to <4 x double>
  %520 = fmul fast <4 x double> %519, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %521 = extractelement <4 x i64> %514, i32 0
  %522 = shl i64 %521, 3
  %523 = add nuw nsw i64 %522, %512
  %524 = getelementptr i8, i8* %call, i64 %523
  %525 = bitcast i8* %524 to <4 x double>*
  store <4 x double> %520, <4 x double>* %525, align 8, !alias.scope !105, !noalias !107
  %index.next1144 = add i64 %index1143, 4
  %vec.ind.next1148 = add <4 x i64> %vec.ind1147, <i64 4, i64 4, i64 4, i64 4>
  %526 = icmp eq i64 %index.next1144, 32
  br i1 %526, label %polly.loop_exit833.1.1, label %vector.body1141, !llvm.loop !134

polly.loop_exit833.1.1:                           ; preds = %vector.body1141
  %polly.indvar_next829.1.1 = add nuw nsw i64 %polly.indvar828.1.1, 1
  %exitcond994.1.1.not = icmp eq i64 %polly.indvar_next829.1.1, 32
  br i1 %exitcond994.1.1.not, label %polly.loop_header825.2.1, label %polly.loop_header825.1.1

polly.loop_header825.2.1:                         ; preds = %polly.loop_exit833.1.1, %polly.loop_exit833.2.1
  %polly.indvar828.2.1 = phi i64 [ %polly.indvar_next829.2.1, %polly.loop_exit833.2.1 ], [ 0, %polly.loop_exit833.1.1 ]
  %527 = add nuw nsw i64 %polly.indvar828.2.1, 32
  %528 = mul nuw nsw i64 %527, 640
  %529 = trunc i64 %527 to i32
  %broadcast.splatinsert1161 = insertelement <4 x i32> poison, i32 %529, i32 0
  %broadcast.splat1162 = shufflevector <4 x i32> %broadcast.splatinsert1161, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1153

vector.body1153:                                  ; preds = %vector.body1153, %polly.loop_header825.2.1
  %index1155 = phi i64 [ 0, %polly.loop_header825.2.1 ], [ %index.next1156, %vector.body1153 ]
  %vec.ind1159 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.2.1 ], [ %vec.ind.next1160, %vector.body1153 ]
  %530 = add nuw nsw <4 x i64> %vec.ind1159, <i64 64, i64 64, i64 64, i64 64>
  %531 = trunc <4 x i64> %530 to <4 x i32>
  %532 = mul <4 x i32> %broadcast.splat1162, %531
  %533 = add <4 x i32> %532, <i32 3, i32 3, i32 3, i32 3>
  %534 = urem <4 x i32> %533, <i32 80, i32 80, i32 80, i32 80>
  %535 = sitofp <4 x i32> %534 to <4 x double>
  %536 = fmul fast <4 x double> %535, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %537 = extractelement <4 x i64> %530, i32 0
  %538 = shl i64 %537, 3
  %539 = add nuw nsw i64 %538, %528
  %540 = getelementptr i8, i8* %call, i64 %539
  %541 = bitcast i8* %540 to <4 x double>*
  store <4 x double> %536, <4 x double>* %541, align 8, !alias.scope !105, !noalias !107
  %index.next1156 = add i64 %index1155, 4
  %vec.ind.next1160 = add <4 x i64> %vec.ind1159, <i64 4, i64 4, i64 4, i64 4>
  %542 = icmp eq i64 %index.next1156, 16
  br i1 %542, label %polly.loop_exit833.2.1, label %vector.body1153, !llvm.loop !135

polly.loop_exit833.2.1:                           ; preds = %vector.body1153
  %polly.indvar_next829.2.1 = add nuw nsw i64 %polly.indvar828.2.1, 1
  %exitcond994.2.1.not = icmp eq i64 %polly.indvar_next829.2.1, 32
  br i1 %exitcond994.2.1.not, label %polly.loop_header825.21044, label %polly.loop_header825.2.1

polly.loop_header825.21044:                       ; preds = %polly.loop_exit833.2.1, %polly.loop_exit833.21055
  %polly.indvar828.21043 = phi i64 [ %polly.indvar_next829.21053, %polly.loop_exit833.21055 ], [ 0, %polly.loop_exit833.2.1 ]
  %543 = add nuw nsw i64 %polly.indvar828.21043, 64
  %544 = mul nuw nsw i64 %543, 640
  %545 = trunc i64 %543 to i32
  %broadcast.splatinsert1175 = insertelement <4 x i32> poison, i32 %545, i32 0
  %broadcast.splat1176 = shufflevector <4 x i32> %broadcast.splatinsert1175, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1165

vector.body1165:                                  ; preds = %vector.body1165, %polly.loop_header825.21044
  %index1167 = phi i64 [ 0, %polly.loop_header825.21044 ], [ %index.next1168, %vector.body1165 ]
  %vec.ind1173 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header825.21044 ], [ %vec.ind.next1174, %vector.body1165 ]
  %546 = mul <4 x i32> %vec.ind1173, %broadcast.splat1176
  %547 = add <4 x i32> %546, <i32 3, i32 3, i32 3, i32 3>
  %548 = urem <4 x i32> %547, <i32 80, i32 80, i32 80, i32 80>
  %549 = sitofp <4 x i32> %548 to <4 x double>
  %550 = fmul fast <4 x double> %549, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %551 = shl i64 %index1167, 3
  %552 = add nuw nsw i64 %551, %544
  %553 = getelementptr i8, i8* %call, i64 %552
  %554 = bitcast i8* %553 to <4 x double>*
  store <4 x double> %550, <4 x double>* %554, align 8, !alias.scope !105, !noalias !107
  %index.next1168 = add i64 %index1167, 4
  %vec.ind.next1174 = add <4 x i32> %vec.ind1173, <i32 4, i32 4, i32 4, i32 4>
  %555 = icmp eq i64 %index.next1168, 32
  br i1 %555, label %polly.loop_exit833.21055, label %vector.body1165, !llvm.loop !136

polly.loop_exit833.21055:                         ; preds = %vector.body1165
  %polly.indvar_next829.21053 = add nuw nsw i64 %polly.indvar828.21043, 1
  %exitcond994.21054.not = icmp eq i64 %polly.indvar_next829.21053, 16
  br i1 %exitcond994.21054.not, label %polly.loop_header825.1.2, label %polly.loop_header825.21044

polly.loop_header825.1.2:                         ; preds = %polly.loop_exit833.21055, %polly.loop_exit833.1.2
  %polly.indvar828.1.2 = phi i64 [ %polly.indvar_next829.1.2, %polly.loop_exit833.1.2 ], [ 0, %polly.loop_exit833.21055 ]
  %556 = add nuw nsw i64 %polly.indvar828.1.2, 64
  %557 = mul nuw nsw i64 %556, 640
  %558 = trunc i64 %556 to i32
  %broadcast.splatinsert1187 = insertelement <4 x i32> poison, i32 %558, i32 0
  %broadcast.splat1188 = shufflevector <4 x i32> %broadcast.splatinsert1187, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1179

vector.body1179:                                  ; preds = %vector.body1179, %polly.loop_header825.1.2
  %index1181 = phi i64 [ 0, %polly.loop_header825.1.2 ], [ %index.next1182, %vector.body1179 ]
  %vec.ind1185 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.1.2 ], [ %vec.ind.next1186, %vector.body1179 ]
  %559 = add nuw nsw <4 x i64> %vec.ind1185, <i64 32, i64 32, i64 32, i64 32>
  %560 = trunc <4 x i64> %559 to <4 x i32>
  %561 = mul <4 x i32> %broadcast.splat1188, %560
  %562 = add <4 x i32> %561, <i32 3, i32 3, i32 3, i32 3>
  %563 = urem <4 x i32> %562, <i32 80, i32 80, i32 80, i32 80>
  %564 = sitofp <4 x i32> %563 to <4 x double>
  %565 = fmul fast <4 x double> %564, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %566 = extractelement <4 x i64> %559, i32 0
  %567 = shl i64 %566, 3
  %568 = add nuw nsw i64 %567, %557
  %569 = getelementptr i8, i8* %call, i64 %568
  %570 = bitcast i8* %569 to <4 x double>*
  store <4 x double> %565, <4 x double>* %570, align 8, !alias.scope !105, !noalias !107
  %index.next1182 = add i64 %index1181, 4
  %vec.ind.next1186 = add <4 x i64> %vec.ind1185, <i64 4, i64 4, i64 4, i64 4>
  %571 = icmp eq i64 %index.next1182, 32
  br i1 %571, label %polly.loop_exit833.1.2, label %vector.body1179, !llvm.loop !137

polly.loop_exit833.1.2:                           ; preds = %vector.body1179
  %polly.indvar_next829.1.2 = add nuw nsw i64 %polly.indvar828.1.2, 1
  %exitcond994.1.2.not = icmp eq i64 %polly.indvar_next829.1.2, 16
  br i1 %exitcond994.1.2.not, label %polly.loop_header825.2.2, label %polly.loop_header825.1.2

polly.loop_header825.2.2:                         ; preds = %polly.loop_exit833.1.2, %polly.loop_exit833.2.2
  %polly.indvar828.2.2 = phi i64 [ %polly.indvar_next829.2.2, %polly.loop_exit833.2.2 ], [ 0, %polly.loop_exit833.1.2 ]
  %572 = add nuw nsw i64 %polly.indvar828.2.2, 64
  %573 = mul nuw nsw i64 %572, 640
  %574 = trunc i64 %572 to i32
  %broadcast.splatinsert1199 = insertelement <4 x i32> poison, i32 %574, i32 0
  %broadcast.splat1200 = shufflevector <4 x i32> %broadcast.splatinsert1199, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1191

vector.body1191:                                  ; preds = %vector.body1191, %polly.loop_header825.2.2
  %index1193 = phi i64 [ 0, %polly.loop_header825.2.2 ], [ %index.next1194, %vector.body1191 ]
  %vec.ind1197 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.2.2 ], [ %vec.ind.next1198, %vector.body1191 ]
  %575 = add nuw nsw <4 x i64> %vec.ind1197, <i64 64, i64 64, i64 64, i64 64>
  %576 = trunc <4 x i64> %575 to <4 x i32>
  %577 = mul <4 x i32> %broadcast.splat1200, %576
  %578 = add <4 x i32> %577, <i32 3, i32 3, i32 3, i32 3>
  %579 = urem <4 x i32> %578, <i32 80, i32 80, i32 80, i32 80>
  %580 = sitofp <4 x i32> %579 to <4 x double>
  %581 = fmul fast <4 x double> %580, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %582 = extractelement <4 x i64> %575, i32 0
  %583 = shl i64 %582, 3
  %584 = add nuw nsw i64 %583, %573
  %585 = getelementptr i8, i8* %call, i64 %584
  %586 = bitcast i8* %585 to <4 x double>*
  store <4 x double> %581, <4 x double>* %586, align 8, !alias.scope !105, !noalias !107
  %index.next1194 = add i64 %index1193, 4
  %vec.ind.next1198 = add <4 x i64> %vec.ind1197, <i64 4, i64 4, i64 4, i64 4>
  %587 = icmp eq i64 %index.next1194, 16
  br i1 %587, label %polly.loop_exit833.2.2, label %vector.body1191, !llvm.loop !138

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
!26 = !{!"llvm.loop.tile.size", i32 16}
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
!49 = !{!"llvm.loop.tile.size", i32 100}
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
!78 = distinct !{!78, !74, !13}
!79 = distinct !{!79, !80, !"polly.alias.scope.MemRef_call"}
!80 = distinct !{!80, !"polly.alias.scope.domain"}
!81 = !{!82, !83, !84, !85}
!82 = distinct !{!82, !80, !"polly.alias.scope.MemRef_call1"}
!83 = distinct !{!83, !80, !"polly.alias.scope.MemRef_call2"}
!84 = distinct !{!84, !80, !"polly.alias.scope.Packed_MemRef_call1"}
!85 = distinct !{!85, !80, !"polly.alias.scope.Packed_MemRef_call2"}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !74, !13}
!88 = !{!79, !82, !84, !85}
!89 = !{!79, !83, !84, !85}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !74, !13}
!92 = distinct !{!92, !93, !"polly.alias.scope.MemRef_call"}
!93 = distinct !{!93, !"polly.alias.scope.domain"}
!94 = !{!95, !96, !97, !98}
!95 = distinct !{!95, !93, !"polly.alias.scope.MemRef_call1"}
!96 = distinct !{!96, !93, !"polly.alias.scope.MemRef_call2"}
!97 = distinct !{!97, !93, !"polly.alias.scope.Packed_MemRef_call1"}
!98 = distinct !{!98, !93, !"polly.alias.scope.Packed_MemRef_call2"}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !74, !13}
!101 = !{!92, !95, !97, !98}
!102 = !{!92, !96, !97, !98}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !74, !13}
!105 = distinct !{!105, !106, !"polly.alias.scope.MemRef_call"}
!106 = distinct !{!106, !"polly.alias.scope.domain"}
!107 = !{!108, !109}
!108 = distinct !{!108, !106, !"polly.alias.scope.MemRef_call1"}
!109 = distinct !{!109, !106, !"polly.alias.scope.MemRef_call2"}
!110 = distinct !{!110, !13}
!111 = !{!108, !105}
!112 = distinct !{!112, !13}
!113 = !{!109, !105}
!114 = distinct !{!114, !13}
!115 = distinct !{!115, !13}
!116 = distinct !{!116, !74, !13}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !74, !13}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !74, !13}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !13}
!126 = distinct !{!126, !13}
!127 = distinct !{!127, !13}
!128 = distinct !{!128, !13}
!129 = distinct !{!129, !13}
!130 = distinct !{!130, !13}
!131 = distinct !{!131, !13}
!132 = distinct !{!132, !13}
!133 = distinct !{!133, !13}
!134 = distinct !{!134, !13}
!135 = distinct !{!135, !13}
!136 = distinct !{!136, !13}
!137 = distinct !{!137, !13}
!138 = distinct !{!138, !13}
