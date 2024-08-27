; ModuleID = 'syr2k_recreations//mmp_syr2k_S_130.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_130.c"
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
  %call795 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1647 = bitcast i8* %call1 to double*
  %polly.access.call1656 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1656, %call2
  %polly.access.call2676 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2676, %call1
  %2 = or i1 %0, %1
  %polly.access.call696 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call696, %call2
  %4 = icmp ule i8* %polly.access.call2676, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call696, %call1
  %8 = icmp ule i8* %polly.access.call1656, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header781, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1118 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1117 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1116 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1115 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1115, %scevgep1118
  %bound1 = icmp ult i8* %scevgep1117, %scevgep1116
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
  br i1 %exitcond18.not.i, label %vector.ph1122, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1122:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1129 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1130 = shufflevector <4 x i64> %broadcast.splatinsert1129, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1121

vector.body1121:                                  ; preds = %vector.body1121, %vector.ph1122
  %index1123 = phi i64 [ 0, %vector.ph1122 ], [ %index.next1124, %vector.body1121 ]
  %vec.ind1127 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1122 ], [ %vec.ind.next1128, %vector.body1121 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1127, %broadcast.splat1130
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call795, i64 %indvars.iv7.i, i64 %index1123
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1124 = add i64 %index1123, 4
  %vec.ind.next1128 = add <4 x i64> %vec.ind1127, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1124, 80
  br i1 %40, label %for.inc41.i, label %vector.body1121, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1121
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1122, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit842.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start460, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1478, label %vector.ph1404

vector.ph1404:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1403

vector.body1403:                                  ; preds = %vector.body1403, %vector.ph1404
  %index1405 = phi i64 [ 0, %vector.ph1404 ], [ %index.next1406, %vector.body1403 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call795, i64 %indvars.iv21.i, i64 %index1405
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1406 = add i64 %index1405, 4
  %46 = icmp eq i64 %index.next1406, %n.vec
  br i1 %46, label %middle.block1401, label %vector.body1403, !llvm.loop !18

middle.block1401:                                 ; preds = %vector.body1403
  %cmp.n1408 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1408, label %for.inc6.i, label %for.body3.i46.preheader1478

for.body3.i46.preheader1478:                      ; preds = %for.body3.i46.preheader, %middle.block1401
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1401 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1478, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1478 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call795, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1401, %for.cond1.preheader.i45
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
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call795, i64 %indvars.iv15.i, i64 %indvars.iv.i48
  %52 = load double, double* %arrayidx41.i, align 8, !tbaa !2
  %reass.add.i = fadd fast double %mul37.i, %mul27.i
  %reass.mul.i = fmul fast double %reass.add.i, 1.500000e+00
  %add42.i = fadd fast double %reass.mul.i, %52
  store double %add42.i, double* %arrayidx41.i, align 8, !tbaa !2
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %indvars.iv13.i
  br i1 %exitcond.not.i50, label %for.inc46.i, label %for.body17.i, !llvm.loop !22

for.inc46.i:                                      ; preds = %for.body17.i
  %indvars.iv.next11.i51 = add nuw nsw i64 %indvars.iv10.i47, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 60
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !32

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 80
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !44

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting461
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start275, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1424 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1424, label %for.body3.i60.preheader1476, label %vector.ph1425

vector.ph1425:                                    ; preds = %for.body3.i60.preheader
  %n.vec1427 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1423

vector.body1423:                                  ; preds = %vector.body1423, %vector.ph1425
  %index1428 = phi i64 [ 0, %vector.ph1425 ], [ %index.next1429, %vector.body1423 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call795, i64 %indvars.iv21.i52, i64 %index1428
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1432 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1432, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1429 = add i64 %index1428, 4
  %57 = icmp eq i64 %index.next1429, %n.vec1427
  br i1 %57, label %middle.block1421, label %vector.body1423, !llvm.loop !55

middle.block1421:                                 ; preds = %vector.body1423
  %cmp.n1431 = icmp eq i64 %indvars.iv21.i52, %n.vec1427
  br i1 %cmp.n1431, label %for.inc6.i63, label %for.body3.i60.preheader1476

for.body3.i60.preheader1476:                      ; preds = %for.body3.i60.preheader, %middle.block1421
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1427, %middle.block1421 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1476, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1476 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call795, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1421, %for.cond1.preheader.i54
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
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call795, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
  %63 = load double, double* %arrayidx41.i76, align 8, !tbaa !2
  %reass.add.i77 = fadd fast double %mul37.i75, %mul27.i73
  %reass.mul.i78 = fmul fast double %reass.add.i77, 1.500000e+00
  %add42.i79 = fadd fast double %reass.mul.i78, %63
  store double %add42.i79, double* %arrayidx41.i76, align 8, !tbaa !2
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i71, 1
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %indvars.iv13.i65
  br i1 %exitcond.not.i81, label %for.inc46.i85, label %for.body17.i82, !llvm.loop !22

for.inc46.i85:                                    ; preds = %for.body17.i82
  %indvars.iv.next11.i83 = add nuw nsw i64 %indvars.iv10.i67, 1
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 60
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !32

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 80
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !44

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting276
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1450 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1450, label %for.body3.i99.preheader1474, label %vector.ph1451

vector.ph1451:                                    ; preds = %for.body3.i99.preheader
  %n.vec1453 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1449

vector.body1449:                                  ; preds = %vector.body1449, %vector.ph1451
  %index1454 = phi i64 [ 0, %vector.ph1451 ], [ %index.next1455, %vector.body1449 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call795, i64 %indvars.iv21.i91, i64 %index1454
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1458 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1458, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1455 = add i64 %index1454, 4
  %68 = icmp eq i64 %index.next1455, %n.vec1453
  br i1 %68, label %middle.block1447, label %vector.body1449, !llvm.loop !57

middle.block1447:                                 ; preds = %vector.body1449
  %cmp.n1457 = icmp eq i64 %indvars.iv21.i91, %n.vec1453
  br i1 %cmp.n1457, label %for.inc6.i102, label %for.body3.i99.preheader1474

for.body3.i99.preheader1474:                      ; preds = %for.body3.i99.preheader, %middle.block1447
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1453, %middle.block1447 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1474, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1474 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call795, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1447, %for.cond1.preheader.i93
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
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call795, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
  %74 = load double, double* %arrayidx41.i115, align 8, !tbaa !2
  %reass.add.i116 = fadd fast double %mul37.i114, %mul27.i112
  %reass.mul.i117 = fmul fast double %reass.add.i116, 1.500000e+00
  %add42.i118 = fadd fast double %reass.mul.i117, %74
  store double %add42.i118, double* %arrayidx41.i115, align 8, !tbaa !2
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i110, 1
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, %indvars.iv13.i104
  br i1 %exitcond.not.i120, label %for.inc46.i124, label %for.body17.i121, !llvm.loop !22

for.inc46.i124:                                   ; preds = %for.body17.i121
  %indvars.iv.next11.i122 = add nuw nsw i64 %indvars.iv10.i106, 1
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 60
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !32

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 80
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !44

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !59
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call795, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !61

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !62

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1462 = phi i64 [ %indvar.next1463, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1462, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1464 = icmp ult i64 %88, 4
  br i1 %min.iters.check1464, label %polly.loop_header191.preheader, label %vector.ph1465

vector.ph1465:                                    ; preds = %polly.loop_header
  %n.vec1467 = and i64 %88, -4
  br label %vector.body1461

vector.body1461:                                  ; preds = %vector.body1461, %vector.ph1465
  %index1468 = phi i64 [ 0, %vector.ph1465 ], [ %index.next1469, %vector.body1461 ]
  %90 = shl nuw nsw i64 %index1468, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1472 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1472, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1469 = add i64 %index1468, 4
  %95 = icmp eq i64 %index.next1469, %n.vec1467
  br i1 %95, label %middle.block1459, label %vector.body1461, !llvm.loop !69

middle.block1459:                                 ; preds = %vector.body1461
  %cmp.n1471 = icmp eq i64 %88, %n.vec1467
  br i1 %cmp.n1471, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1459
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1467, %middle.block1459 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1459
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond979.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1463 = add i64 %indvar1462, 1
  br i1 %exitcond979.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond978.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond978.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv972 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next973, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = lshr i64 %polly.indvar202, 1
  %smin974 = call i64 @llvm.smin.i64(i64 %indvars.iv972, i64 -48)
  %98 = shl nsw i64 %polly.indvar202, 5
  %99 = icmp eq i64 %polly.indvar202, 2
  %100 = add nsw i64 %smin974, 79
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %indvars.iv.next973 = add nsw i64 %indvars.iv972, -32
  %exitcond977.not = icmp eq i64 %polly.indvar_next203, 3
  br i1 %exitcond977.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv963 = phi i64 [ %indvars.iv.next964, %polly.loop_exit213 ], [ %indvars.iv, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %101 = shl nsw i64 %polly.indvar208, 6
  %102 = sub nsw i64 %98, %101
  %103 = icmp eq i64 %polly.indvar208, 0
  %104 = and i1 %99, %103
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit242
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next964 = add nsw i64 %indvars.iv963, -64
  %exitcond976.not = icmp eq i64 %polly.indvar208, %97
  br i1 %exitcond976.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit242, %polly.loop_header205
  %indvars.iv965 = phi i64 [ %indvars.iv.next966, %polly.loop_exit242 ], [ %indvars.iv963, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit242 ], [ 0, %polly.loop_header205 ]
  %smin969 = call i64 @llvm.smin.i64(i64 %indvars.iv965, i64 63)
  %105 = add nsw i64 %polly.indvar214, %102
  %polly.loop_guard1104 = icmp sgt i64 %105, -1
  %106 = add nuw nsw i64 %polly.indvar214, 64
  %polly.access.mul.call1234 = mul nuw nsw i64 %106, 60
  br i1 %polly.loop_guard1104, label %polly.loop_header217.us, label %polly.loop_header211.split

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.merge.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.merge.us ], [ 0, %polly.loop_header211 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 80
  br label %polly.loop_header223.us

polly.loop_header223.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header223.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_header223.us ], [ 0, %polly.loop_header217.us ]
  %107 = add nuw nsw i64 %polly.indvar226.us, %101
  %polly.access.mul.call1230.us = mul nuw nsw i64 %107, 60
  %polly.access.add.call1231.us = add nuw nsw i64 %polly.access.mul.call1230.us, %polly.indvar220.us
  %polly.access.call1232.us = getelementptr double, double* %polly.access.cast.call1647, i64 %polly.access.add.call1231.us
  %polly.access.call1232.load.us = load double, double* %polly.access.call1232.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar226.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1232.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond967.not = icmp eq i64 %polly.indvar226.us, %smin969
  br i1 %exitcond967.not, label %polly.cond.loopexit.us, label %polly.loop_header223.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1235.us = add nuw nsw i64 %polly.indvar220.us, %polly.access.mul.call1234
  %polly.access.call1236.us = getelementptr double, double* %polly.access.cast.call1647, i64 %polly.access.add.call1235.us
  %polly.access.call1236.load.us = load double, double* %polly.access.call1236.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1238.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %106
  %polly.access.Packed_MemRef_call1239.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1238.us
  store double %polly.access.call1236.load.us, double* %polly.access.Packed_MemRef_call1239.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond968.not = icmp eq i64 %polly.indvar_next221.us, 60
  br i1 %exitcond968.not, label %polly.loop_header240.preheader, label %polly.loop_header217.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header223.us
  br i1 %104, label %polly.then.us, label %polly.merge.us

polly.loop_header211.split:                       ; preds = %polly.loop_header211
  br i1 %104, label %polly.loop_header217.us872, label %polly.loop_exit242

polly.loop_header217.us872:                       ; preds = %polly.loop_header211.split, %polly.loop_header217.us872
  %polly.indvar220.us873 = phi i64 [ %polly.indvar_next221.us893, %polly.loop_header217.us872 ], [ 0, %polly.loop_header211.split ]
  %polly.access.add.call1235.us886 = add nuw nsw i64 %polly.indvar220.us873, %polly.access.mul.call1234
  %polly.access.call1236.us887 = getelementptr double, double* %polly.access.cast.call1647, i64 %polly.access.add.call1235.us886
  %polly.access.call1236.load.us888 = load double, double* %polly.access.call1236.us887, align 8, !alias.scope !66, !noalias !72
  %polly.access.mul.Packed_MemRef_call1237.us889 = mul nuw nsw i64 %polly.indvar220.us873, 80
  %polly.access.add.Packed_MemRef_call1238.us890 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1237.us889, %106
  %polly.access.Packed_MemRef_call1239.us891 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1238.us890
  store double %polly.access.call1236.load.us888, double* %polly.access.Packed_MemRef_call1239.us891, align 8
  %polly.indvar_next221.us893 = add nuw nsw i64 %polly.indvar220.us873, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221.us893, 60
  br i1 %exitcond.not, label %polly.loop_header240.preheader, label %polly.loop_header217.us872

polly.loop_exit242:                               ; preds = %polly.loop_exit249.loopexit.us, %polly.loop_header211.split, %polly.loop_header240.preheader
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next966 = add nsw i64 %indvars.iv965, 1
  %exitcond975.not = icmp eq i64 %polly.indvar214, %100
  br i1 %exitcond975.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header240.preheader:                   ; preds = %polly.loop_header217.us872, %polly.merge.us
  %108 = add nuw nsw i64 %polly.indvar214, %98
  %109 = mul nuw nsw i64 %108, 480
  %110 = mul nuw nsw i64 %108, 640
  br i1 %polly.loop_guard1104, label %polly.loop_header240.us, label %polly.loop_exit242

polly.loop_header240.us:                          ; preds = %polly.loop_header240.preheader, %polly.loop_exit249.loopexit.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_exit249.loopexit.us ], [ 0, %polly.loop_header240.preheader ]
  %111 = shl nuw nsw i64 %polly.indvar243.us, 3
  %scevgep258.us = getelementptr i8, i8* %call2, i64 %111
  %polly.access.mul.Packed_MemRef_call1254.us = mul nuw nsw i64 %polly.indvar243.us, 80
  %scevgep259.us = getelementptr i8, i8* %scevgep258.us, i64 %109
  %scevgep259260.us = bitcast i8* %scevgep259.us to double*
  %_p_scalar_261.us = load double, double* %scevgep259260.us, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1267.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1254.us, %105
  %polly.access.Packed_MemRef_call1268.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1267.us
  %_p_scalar_269.us = load double, double* %polly.access.Packed_MemRef_call1268.us, align 8
  br label %polly.loop_header247.us

polly.loop_header247.us:                          ; preds = %polly.loop_header247.us, %polly.loop_header240.us
  %polly.indvar251.us = phi i64 [ 0, %polly.loop_header240.us ], [ %polly.indvar_next252.us, %polly.loop_header247.us ]
  %112 = add nuw nsw i64 %polly.indvar251.us, %101
  %polly.access.add.Packed_MemRef_call1255.us = add nuw nsw i64 %polly.indvar251.us, %polly.access.mul.Packed_MemRef_call1254.us
  %polly.access.Packed_MemRef_call1256.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255.us
  %_p_scalar_257.us = load double, double* %polly.access.Packed_MemRef_call1256.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_261.us, %_p_scalar_257.us
  %113 = mul nuw nsw i64 %112, 480
  %scevgep263.us = getelementptr i8, i8* %scevgep258.us, i64 %113
  %scevgep263264.us = bitcast i8* %scevgep263.us to double*
  %_p_scalar_265.us = load double, double* %scevgep263264.us, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us = fmul fast double %_p_scalar_269.us, %_p_scalar_265.us
  %114 = shl i64 %112, 3
  %115 = add nuw nsw i64 %114, %110
  %scevgep270.us = getelementptr i8, i8* %call, i64 %115
  %scevgep270271.us = bitcast i8* %scevgep270.us to double*
  %_p_scalar_272.us = load double, double* %scevgep270271.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_272.us
  store double %p_add42.i118.us, double* %scevgep270271.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond970.not = icmp eq i64 %polly.indvar251.us, %smin969
  br i1 %exitcond970.not, label %polly.loop_exit249.loopexit.us, label %polly.loop_header247.us

polly.loop_exit249.loopexit.us:                   ; preds = %polly.loop_header247.us
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond971.not = icmp eq i64 %polly.indvar_next244.us, 60
  br i1 %exitcond971.not, label %polly.loop_exit242, label %polly.loop_header240.us

polly.start275:                                   ; preds = %kernel_syr2k.exit
  %malloccall277 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header361

polly.exiting276:                                 ; preds = %polly.loop_exit386
  tail call void @free(i8* %malloccall277)
  br label %kernel_syr2k.exit90

polly.loop_header361:                             ; preds = %polly.loop_exit369, %polly.start275
  %indvar1436 = phi i64 [ %indvar.next1437, %polly.loop_exit369 ], [ 0, %polly.start275 ]
  %polly.indvar364 = phi i64 [ %polly.indvar_next365, %polly.loop_exit369 ], [ 1, %polly.start275 ]
  %116 = add i64 %indvar1436, 1
  %117 = mul nuw nsw i64 %polly.indvar364, 640
  %scevgep373 = getelementptr i8, i8* %call, i64 %117
  %min.iters.check1438 = icmp ult i64 %116, 4
  br i1 %min.iters.check1438, label %polly.loop_header367.preheader, label %vector.ph1439

vector.ph1439:                                    ; preds = %polly.loop_header361
  %n.vec1441 = and i64 %116, -4
  br label %vector.body1435

vector.body1435:                                  ; preds = %vector.body1435, %vector.ph1439
  %index1442 = phi i64 [ 0, %vector.ph1439 ], [ %index.next1443, %vector.body1435 ]
  %118 = shl nuw nsw i64 %index1442, 3
  %119 = getelementptr i8, i8* %scevgep373, i64 %118
  %120 = bitcast i8* %119 to <4 x double>*
  %wide.load1446 = load <4 x double>, <4 x double>* %120, align 8, !alias.scope !74, !noalias !76
  %121 = fmul fast <4 x double> %wide.load1446, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %122 = bitcast i8* %119 to <4 x double>*
  store <4 x double> %121, <4 x double>* %122, align 8, !alias.scope !74, !noalias !76
  %index.next1443 = add i64 %index1442, 4
  %123 = icmp eq i64 %index.next1443, %n.vec1441
  br i1 %123, label %middle.block1433, label %vector.body1435, !llvm.loop !80

middle.block1433:                                 ; preds = %vector.body1435
  %cmp.n1445 = icmp eq i64 %116, %n.vec1441
  br i1 %cmp.n1445, label %polly.loop_exit369, label %polly.loop_header367.preheader

polly.loop_header367.preheader:                   ; preds = %polly.loop_header361, %middle.block1433
  %polly.indvar370.ph = phi i64 [ 0, %polly.loop_header361 ], [ %n.vec1441, %middle.block1433 ]
  br label %polly.loop_header367

polly.loop_exit369:                               ; preds = %polly.loop_header367, %middle.block1433
  %polly.indvar_next365 = add nuw nsw i64 %polly.indvar364, 1
  %exitcond1000.not = icmp eq i64 %polly.indvar_next365, 80
  %indvar.next1437 = add i64 %indvar1436, 1
  br i1 %exitcond1000.not, label %polly.loop_header377.preheader, label %polly.loop_header361

polly.loop_header377.preheader:                   ; preds = %polly.loop_exit369
  %Packed_MemRef_call1278 = bitcast i8* %malloccall277 to double*
  br label %polly.loop_header377

polly.loop_header367:                             ; preds = %polly.loop_header367.preheader, %polly.loop_header367
  %polly.indvar370 = phi i64 [ %polly.indvar_next371, %polly.loop_header367 ], [ %polly.indvar370.ph, %polly.loop_header367.preheader ]
  %124 = shl nuw nsw i64 %polly.indvar370, 3
  %scevgep374 = getelementptr i8, i8* %scevgep373, i64 %124
  %scevgep374375 = bitcast i8* %scevgep374 to double*
  %_p_scalar_376 = load double, double* %scevgep374375, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_376, 1.200000e+00
  store double %p_mul.i57, double* %scevgep374375, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %exitcond999.not = icmp eq i64 %polly.indvar_next371, %polly.indvar364
  br i1 %exitcond999.not, label %polly.loop_exit369, label %polly.loop_header367, !llvm.loop !81

polly.loop_header377:                             ; preds = %polly.loop_header377.preheader, %polly.loop_exit386
  %indvars.iv993 = phi i64 [ 0, %polly.loop_header377.preheader ], [ %indvars.iv.next994, %polly.loop_exit386 ]
  %indvars.iv981 = phi i64 [ 0, %polly.loop_header377.preheader ], [ %indvars.iv.next982, %polly.loop_exit386 ]
  %polly.indvar380 = phi i64 [ 0, %polly.loop_header377.preheader ], [ %polly.indvar_next381, %polly.loop_exit386 ]
  %125 = lshr i64 %polly.indvar380, 1
  %smin995 = call i64 @llvm.smin.i64(i64 %indvars.iv993, i64 -48)
  %126 = shl nsw i64 %polly.indvar380, 5
  %127 = icmp eq i64 %polly.indvar380, 2
  %128 = add nsw i64 %smin995, 79
  br label %polly.loop_header384

polly.loop_exit386:                               ; preds = %polly.loop_exit392
  %polly.indvar_next381 = add nuw nsw i64 %polly.indvar380, 1
  %indvars.iv.next982 = add nuw nsw i64 %indvars.iv981, 32
  %indvars.iv.next994 = add nsw i64 %indvars.iv993, -32
  %exitcond998.not = icmp eq i64 %polly.indvar_next381, 3
  br i1 %exitcond998.not, label %polly.exiting276, label %polly.loop_header377

polly.loop_header384:                             ; preds = %polly.loop_exit392, %polly.loop_header377
  %indvars.iv983 = phi i64 [ %indvars.iv.next984, %polly.loop_exit392 ], [ %indvars.iv981, %polly.loop_header377 ]
  %polly.indvar387 = phi i64 [ %polly.indvar_next388, %polly.loop_exit392 ], [ 0, %polly.loop_header377 ]
  %129 = shl nsw i64 %polly.indvar387, 6
  %130 = sub nsw i64 %126, %129
  %131 = icmp eq i64 %polly.indvar387, 0
  %132 = and i1 %127, %131
  br label %polly.loop_header390

polly.loop_exit392:                               ; preds = %polly.loop_exit427
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %indvars.iv.next984 = add nsw i64 %indvars.iv983, -64
  %exitcond997.not = icmp eq i64 %polly.indvar387, %125
  br i1 %exitcond997.not, label %polly.loop_exit386, label %polly.loop_header384

polly.loop_header390:                             ; preds = %polly.loop_exit427, %polly.loop_header384
  %indvars.iv985 = phi i64 [ %indvars.iv.next986, %polly.loop_exit427 ], [ %indvars.iv983, %polly.loop_header384 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit427 ], [ 0, %polly.loop_header384 ]
  %smin990 = call i64 @llvm.smin.i64(i64 %indvars.iv985, i64 63)
  %133 = add nsw i64 %polly.indvar393, %130
  %polly.loop_guard4061105 = icmp sgt i64 %133, -1
  %134 = add nuw nsw i64 %polly.indvar393, 64
  %polly.access.mul.call1419 = mul nuw nsw i64 %134, 60
  br i1 %polly.loop_guard4061105, label %polly.loop_header396.us, label %polly.loop_header390.split

polly.loop_header396.us:                          ; preds = %polly.loop_header390, %polly.merge415.us
  %polly.indvar399.us = phi i64 [ %polly.indvar_next400.us, %polly.merge415.us ], [ 0, %polly.loop_header390 ]
  %polly.access.mul.Packed_MemRef_call1278.us = mul nuw nsw i64 %polly.indvar399.us, 80
  br label %polly.loop_header403.us

polly.loop_header403.us:                          ; preds = %polly.loop_header396.us, %polly.loop_header403.us
  %polly.indvar407.us = phi i64 [ %polly.indvar_next408.us, %polly.loop_header403.us ], [ 0, %polly.loop_header396.us ]
  %135 = add nuw nsw i64 %polly.indvar407.us, %129
  %polly.access.mul.call1411.us = mul nuw nsw i64 %135, 60
  %polly.access.add.call1412.us = add nuw nsw i64 %polly.access.mul.call1411.us, %polly.indvar399.us
  %polly.access.call1413.us = getelementptr double, double* %polly.access.cast.call1647, i64 %polly.access.add.call1412.us
  %polly.access.call1413.load.us = load double, double* %polly.access.call1413.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1278.us = add nuw nsw i64 %polly.indvar407.us, %polly.access.mul.Packed_MemRef_call1278.us
  %polly.access.Packed_MemRef_call1278.us = getelementptr double, double* %Packed_MemRef_call1278, i64 %polly.access.add.Packed_MemRef_call1278.us
  store double %polly.access.call1413.load.us, double* %polly.access.Packed_MemRef_call1278.us, align 8
  %polly.indvar_next408.us = add nuw nsw i64 %polly.indvar407.us, 1
  %exitcond988.not = icmp eq i64 %polly.indvar407.us, %smin990
  br i1 %exitcond988.not, label %polly.cond414.loopexit.us, label %polly.loop_header403.us

polly.then416.us:                                 ; preds = %polly.cond414.loopexit.us
  %polly.access.add.call1420.us = add nuw nsw i64 %polly.indvar399.us, %polly.access.mul.call1419
  %polly.access.call1421.us = getelementptr double, double* %polly.access.cast.call1647, i64 %polly.access.add.call1420.us
  %polly.access.call1421.load.us = load double, double* %polly.access.call1421.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1278423.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1278.us, %134
  %polly.access.Packed_MemRef_call1278424.us = getelementptr double, double* %Packed_MemRef_call1278, i64 %polly.access.add.Packed_MemRef_call1278423.us
  store double %polly.access.call1421.load.us, double* %polly.access.Packed_MemRef_call1278424.us, align 8
  br label %polly.merge415.us

polly.merge415.us:                                ; preds = %polly.then416.us, %polly.cond414.loopexit.us
  %polly.indvar_next400.us = add nuw nsw i64 %polly.indvar399.us, 1
  %exitcond989.not = icmp eq i64 %polly.indvar_next400.us, 60
  br i1 %exitcond989.not, label %polly.loop_header425.preheader, label %polly.loop_header396.us

polly.cond414.loopexit.us:                        ; preds = %polly.loop_header403.us
  br i1 %132, label %polly.then416.us, label %polly.merge415.us

polly.loop_header390.split:                       ; preds = %polly.loop_header390
  br i1 %132, label %polly.loop_header396.us898, label %polly.loop_exit427

polly.loop_header396.us898:                       ; preds = %polly.loop_header390.split, %polly.loop_header396.us898
  %polly.indvar399.us899 = phi i64 [ %polly.indvar_next400.us919, %polly.loop_header396.us898 ], [ 0, %polly.loop_header390.split ]
  %polly.access.add.call1420.us912 = add nuw nsw i64 %polly.indvar399.us899, %polly.access.mul.call1419
  %polly.access.call1421.us913 = getelementptr double, double* %polly.access.cast.call1647, i64 %polly.access.add.call1420.us912
  %polly.access.call1421.load.us914 = load double, double* %polly.access.call1421.us913, align 8, !alias.scope !77, !noalias !82
  %polly.access.mul.Packed_MemRef_call1278422.us915 = mul nuw nsw i64 %polly.indvar399.us899, 80
  %polly.access.add.Packed_MemRef_call1278423.us916 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1278422.us915, %134
  %polly.access.Packed_MemRef_call1278424.us917 = getelementptr double, double* %Packed_MemRef_call1278, i64 %polly.access.add.Packed_MemRef_call1278423.us916
  store double %polly.access.call1421.load.us914, double* %polly.access.Packed_MemRef_call1278424.us917, align 8
  %polly.indvar_next400.us919 = add nuw nsw i64 %polly.indvar399.us899, 1
  %exitcond980.not = icmp eq i64 %polly.indvar_next400.us919, 60
  br i1 %exitcond980.not, label %polly.loop_header425.preheader, label %polly.loop_header396.us898

polly.loop_exit427:                               ; preds = %polly.loop_exit434.loopexit.us, %polly.loop_header390.split, %polly.loop_header425.preheader
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %indvars.iv.next986 = add nsw i64 %indvars.iv985, 1
  %exitcond996.not = icmp eq i64 %polly.indvar393, %128
  br i1 %exitcond996.not, label %polly.loop_exit392, label %polly.loop_header390

polly.loop_header425.preheader:                   ; preds = %polly.loop_header396.us898, %polly.merge415.us
  %136 = add nuw nsw i64 %polly.indvar393, %126
  %137 = mul nuw nsw i64 %136, 480
  %138 = mul nuw nsw i64 %136, 640
  br i1 %polly.loop_guard4061105, label %polly.loop_header425.us, label %polly.loop_exit427

polly.loop_header425.us:                          ; preds = %polly.loop_header425.preheader, %polly.loop_exit434.loopexit.us
  %polly.indvar428.us = phi i64 [ %polly.indvar_next429.us, %polly.loop_exit434.loopexit.us ], [ 0, %polly.loop_header425.preheader ]
  %139 = shl nuw nsw i64 %polly.indvar428.us, 3
  %scevgep443.us = getelementptr i8, i8* %call2, i64 %139
  %polly.access.mul.Packed_MemRef_call1278439.us = mul nuw nsw i64 %polly.indvar428.us, 80
  %scevgep444.us = getelementptr i8, i8* %scevgep443.us, i64 %137
  %scevgep444445.us = bitcast i8* %scevgep444.us to double*
  %_p_scalar_446.us = load double, double* %scevgep444445.us, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1278452.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1278439.us, %133
  %polly.access.Packed_MemRef_call1278453.us = getelementptr double, double* %Packed_MemRef_call1278, i64 %polly.access.add.Packed_MemRef_call1278452.us
  %_p_scalar_454.us = load double, double* %polly.access.Packed_MemRef_call1278453.us, align 8
  br label %polly.loop_header432.us

polly.loop_header432.us:                          ; preds = %polly.loop_header432.us, %polly.loop_header425.us
  %polly.indvar436.us = phi i64 [ 0, %polly.loop_header425.us ], [ %polly.indvar_next437.us, %polly.loop_header432.us ]
  %140 = add nuw nsw i64 %polly.indvar436.us, %129
  %polly.access.add.Packed_MemRef_call1278440.us = add nuw nsw i64 %polly.indvar436.us, %polly.access.mul.Packed_MemRef_call1278439.us
  %polly.access.Packed_MemRef_call1278441.us = getelementptr double, double* %Packed_MemRef_call1278, i64 %polly.access.add.Packed_MemRef_call1278440.us
  %_p_scalar_442.us = load double, double* %polly.access.Packed_MemRef_call1278441.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_446.us, %_p_scalar_442.us
  %141 = mul nuw nsw i64 %140, 480
  %scevgep448.us = getelementptr i8, i8* %scevgep443.us, i64 %141
  %scevgep448449.us = bitcast i8* %scevgep448.us to double*
  %_p_scalar_450.us = load double, double* %scevgep448449.us, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us = fmul fast double %_p_scalar_454.us, %_p_scalar_450.us
  %142 = shl i64 %140, 3
  %143 = add nuw nsw i64 %142, %138
  %scevgep455.us = getelementptr i8, i8* %call, i64 %143
  %scevgep455456.us = bitcast i8* %scevgep455.us to double*
  %_p_scalar_457.us = load double, double* %scevgep455456.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_457.us
  store double %p_add42.i79.us, double* %scevgep455456.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next437.us = add nuw nsw i64 %polly.indvar436.us, 1
  %exitcond991.not = icmp eq i64 %polly.indvar436.us, %smin990
  br i1 %exitcond991.not, label %polly.loop_exit434.loopexit.us, label %polly.loop_header432.us

polly.loop_exit434.loopexit.us:                   ; preds = %polly.loop_header432.us
  %polly.indvar_next429.us = add nuw nsw i64 %polly.indvar428.us, 1
  %exitcond992.not = icmp eq i64 %polly.indvar_next429.us, 60
  br i1 %exitcond992.not, label %polly.loop_exit427, label %polly.loop_header425.us

polly.start460:                                   ; preds = %init_array.exit
  %malloccall462 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header546

polly.exiting461:                                 ; preds = %polly.loop_exit571
  tail call void @free(i8* %malloccall462)
  br label %kernel_syr2k.exit

polly.loop_header546:                             ; preds = %polly.loop_exit554, %polly.start460
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit554 ], [ 0, %polly.start460 ]
  %polly.indvar549 = phi i64 [ %polly.indvar_next550, %polly.loop_exit554 ], [ 1, %polly.start460 ]
  %144 = add i64 %indvar, 1
  %145 = mul nuw nsw i64 %polly.indvar549, 640
  %scevgep558 = getelementptr i8, i8* %call, i64 %145
  %min.iters.check1412 = icmp ult i64 %144, 4
  br i1 %min.iters.check1412, label %polly.loop_header552.preheader, label %vector.ph1413

vector.ph1413:                                    ; preds = %polly.loop_header546
  %n.vec1415 = and i64 %144, -4
  br label %vector.body1411

vector.body1411:                                  ; preds = %vector.body1411, %vector.ph1413
  %index1416 = phi i64 [ 0, %vector.ph1413 ], [ %index.next1417, %vector.body1411 ]
  %146 = shl nuw nsw i64 %index1416, 3
  %147 = getelementptr i8, i8* %scevgep558, i64 %146
  %148 = bitcast i8* %147 to <4 x double>*
  %wide.load1420 = load <4 x double>, <4 x double>* %148, align 8, !alias.scope !84, !noalias !86
  %149 = fmul fast <4 x double> %wide.load1420, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %150 = bitcast i8* %147 to <4 x double>*
  store <4 x double> %149, <4 x double>* %150, align 8, !alias.scope !84, !noalias !86
  %index.next1417 = add i64 %index1416, 4
  %151 = icmp eq i64 %index.next1417, %n.vec1415
  br i1 %151, label %middle.block1409, label %vector.body1411, !llvm.loop !90

middle.block1409:                                 ; preds = %vector.body1411
  %cmp.n1419 = icmp eq i64 %144, %n.vec1415
  br i1 %cmp.n1419, label %polly.loop_exit554, label %polly.loop_header552.preheader

polly.loop_header552.preheader:                   ; preds = %polly.loop_header546, %middle.block1409
  %polly.indvar555.ph = phi i64 [ 0, %polly.loop_header546 ], [ %n.vec1415, %middle.block1409 ]
  br label %polly.loop_header552

polly.loop_exit554:                               ; preds = %polly.loop_header552, %middle.block1409
  %polly.indvar_next550 = add nuw nsw i64 %polly.indvar549, 1
  %exitcond1021.not = icmp eq i64 %polly.indvar_next550, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1021.not, label %polly.loop_header562.preheader, label %polly.loop_header546

polly.loop_header562.preheader:                   ; preds = %polly.loop_exit554
  %Packed_MemRef_call1463 = bitcast i8* %malloccall462 to double*
  br label %polly.loop_header562

polly.loop_header552:                             ; preds = %polly.loop_header552.preheader, %polly.loop_header552
  %polly.indvar555 = phi i64 [ %polly.indvar_next556, %polly.loop_header552 ], [ %polly.indvar555.ph, %polly.loop_header552.preheader ]
  %152 = shl nuw nsw i64 %polly.indvar555, 3
  %scevgep559 = getelementptr i8, i8* %scevgep558, i64 %152
  %scevgep559560 = bitcast i8* %scevgep559 to double*
  %_p_scalar_561 = load double, double* %scevgep559560, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_561, 1.200000e+00
  store double %p_mul.i, double* %scevgep559560, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next556 = add nuw nsw i64 %polly.indvar555, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar_next556, %polly.indvar549
  br i1 %exitcond1020.not, label %polly.loop_exit554, label %polly.loop_header552, !llvm.loop !91

polly.loop_header562:                             ; preds = %polly.loop_header562.preheader, %polly.loop_exit571
  %indvars.iv1014 = phi i64 [ 0, %polly.loop_header562.preheader ], [ %indvars.iv.next1015, %polly.loop_exit571 ]
  %indvars.iv1002 = phi i64 [ 0, %polly.loop_header562.preheader ], [ %indvars.iv.next1003, %polly.loop_exit571 ]
  %polly.indvar565 = phi i64 [ 0, %polly.loop_header562.preheader ], [ %polly.indvar_next566, %polly.loop_exit571 ]
  %153 = lshr i64 %polly.indvar565, 1
  %smin1016 = call i64 @llvm.smin.i64(i64 %indvars.iv1014, i64 -48)
  %154 = shl nsw i64 %polly.indvar565, 5
  %155 = icmp eq i64 %polly.indvar565, 2
  %156 = add nsw i64 %smin1016, 79
  br label %polly.loop_header569

polly.loop_exit571:                               ; preds = %polly.loop_exit577
  %polly.indvar_next566 = add nuw nsw i64 %polly.indvar565, 1
  %indvars.iv.next1003 = add nuw nsw i64 %indvars.iv1002, 32
  %indvars.iv.next1015 = add nsw i64 %indvars.iv1014, -32
  %exitcond1019.not = icmp eq i64 %polly.indvar_next566, 3
  br i1 %exitcond1019.not, label %polly.exiting461, label %polly.loop_header562

polly.loop_header569:                             ; preds = %polly.loop_exit577, %polly.loop_header562
  %indvars.iv1004 = phi i64 [ %indvars.iv.next1005, %polly.loop_exit577 ], [ %indvars.iv1002, %polly.loop_header562 ]
  %polly.indvar572 = phi i64 [ %polly.indvar_next573, %polly.loop_exit577 ], [ 0, %polly.loop_header562 ]
  %157 = shl nsw i64 %polly.indvar572, 6
  %158 = sub nsw i64 %154, %157
  %159 = icmp eq i64 %polly.indvar572, 0
  %160 = and i1 %155, %159
  br label %polly.loop_header575

polly.loop_exit577:                               ; preds = %polly.loop_exit612
  %polly.indvar_next573 = add nuw nsw i64 %polly.indvar572, 1
  %indvars.iv.next1005 = add nsw i64 %indvars.iv1004, -64
  %exitcond1018.not = icmp eq i64 %polly.indvar572, %153
  br i1 %exitcond1018.not, label %polly.loop_exit571, label %polly.loop_header569

polly.loop_header575:                             ; preds = %polly.loop_exit612, %polly.loop_header569
  %indvars.iv1006 = phi i64 [ %indvars.iv.next1007, %polly.loop_exit612 ], [ %indvars.iv1004, %polly.loop_header569 ]
  %polly.indvar578 = phi i64 [ %polly.indvar_next579, %polly.loop_exit612 ], [ 0, %polly.loop_header569 ]
  %smin1011 = call i64 @llvm.smin.i64(i64 %indvars.iv1006, i64 63)
  %161 = add nsw i64 %polly.indvar578, %158
  %polly.loop_guard5911106 = icmp sgt i64 %161, -1
  %162 = add nuw nsw i64 %polly.indvar578, 64
  %polly.access.mul.call1604 = mul nuw nsw i64 %162, 60
  br i1 %polly.loop_guard5911106, label %polly.loop_header581.us, label %polly.loop_header575.split

polly.loop_header581.us:                          ; preds = %polly.loop_header575, %polly.merge600.us
  %polly.indvar584.us = phi i64 [ %polly.indvar_next585.us, %polly.merge600.us ], [ 0, %polly.loop_header575 ]
  %polly.access.mul.Packed_MemRef_call1463.us = mul nuw nsw i64 %polly.indvar584.us, 80
  br label %polly.loop_header588.us

polly.loop_header588.us:                          ; preds = %polly.loop_header581.us, %polly.loop_header588.us
  %polly.indvar592.us = phi i64 [ %polly.indvar_next593.us, %polly.loop_header588.us ], [ 0, %polly.loop_header581.us ]
  %163 = add nuw nsw i64 %polly.indvar592.us, %157
  %polly.access.mul.call1596.us = mul nuw nsw i64 %163, 60
  %polly.access.add.call1597.us = add nuw nsw i64 %polly.access.mul.call1596.us, %polly.indvar584.us
  %polly.access.call1598.us = getelementptr double, double* %polly.access.cast.call1647, i64 %polly.access.add.call1597.us
  %polly.access.call1598.load.us = load double, double* %polly.access.call1598.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1463.us = add nuw nsw i64 %polly.indvar592.us, %polly.access.mul.Packed_MemRef_call1463.us
  %polly.access.Packed_MemRef_call1463.us = getelementptr double, double* %Packed_MemRef_call1463, i64 %polly.access.add.Packed_MemRef_call1463.us
  store double %polly.access.call1598.load.us, double* %polly.access.Packed_MemRef_call1463.us, align 8
  %polly.indvar_next593.us = add nuw nsw i64 %polly.indvar592.us, 1
  %exitcond1009.not = icmp eq i64 %polly.indvar592.us, %smin1011
  br i1 %exitcond1009.not, label %polly.cond599.loopexit.us, label %polly.loop_header588.us

polly.then601.us:                                 ; preds = %polly.cond599.loopexit.us
  %polly.access.add.call1605.us = add nuw nsw i64 %polly.indvar584.us, %polly.access.mul.call1604
  %polly.access.call1606.us = getelementptr double, double* %polly.access.cast.call1647, i64 %polly.access.add.call1605.us
  %polly.access.call1606.load.us = load double, double* %polly.access.call1606.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1463608.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1463.us, %162
  %polly.access.Packed_MemRef_call1463609.us = getelementptr double, double* %Packed_MemRef_call1463, i64 %polly.access.add.Packed_MemRef_call1463608.us
  store double %polly.access.call1606.load.us, double* %polly.access.Packed_MemRef_call1463609.us, align 8
  br label %polly.merge600.us

polly.merge600.us:                                ; preds = %polly.then601.us, %polly.cond599.loopexit.us
  %polly.indvar_next585.us = add nuw nsw i64 %polly.indvar584.us, 1
  %exitcond1010.not = icmp eq i64 %polly.indvar_next585.us, 60
  br i1 %exitcond1010.not, label %polly.loop_header610.preheader, label %polly.loop_header581.us

polly.cond599.loopexit.us:                        ; preds = %polly.loop_header588.us
  br i1 %160, label %polly.then601.us, label %polly.merge600.us

polly.loop_header575.split:                       ; preds = %polly.loop_header575
  br i1 %160, label %polly.loop_header581.us924, label %polly.loop_exit612

polly.loop_header581.us924:                       ; preds = %polly.loop_header575.split, %polly.loop_header581.us924
  %polly.indvar584.us925 = phi i64 [ %polly.indvar_next585.us945, %polly.loop_header581.us924 ], [ 0, %polly.loop_header575.split ]
  %polly.access.add.call1605.us938 = add nuw nsw i64 %polly.indvar584.us925, %polly.access.mul.call1604
  %polly.access.call1606.us939 = getelementptr double, double* %polly.access.cast.call1647, i64 %polly.access.add.call1605.us938
  %polly.access.call1606.load.us940 = load double, double* %polly.access.call1606.us939, align 8, !alias.scope !87, !noalias !92
  %polly.access.mul.Packed_MemRef_call1463607.us941 = mul nuw nsw i64 %polly.indvar584.us925, 80
  %polly.access.add.Packed_MemRef_call1463608.us942 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1463607.us941, %162
  %polly.access.Packed_MemRef_call1463609.us943 = getelementptr double, double* %Packed_MemRef_call1463, i64 %polly.access.add.Packed_MemRef_call1463608.us942
  store double %polly.access.call1606.load.us940, double* %polly.access.Packed_MemRef_call1463609.us943, align 8
  %polly.indvar_next585.us945 = add nuw nsw i64 %polly.indvar584.us925, 1
  %exitcond1001.not = icmp eq i64 %polly.indvar_next585.us945, 60
  br i1 %exitcond1001.not, label %polly.loop_header610.preheader, label %polly.loop_header581.us924

polly.loop_exit612:                               ; preds = %polly.loop_exit619.loopexit.us, %polly.loop_header575.split, %polly.loop_header610.preheader
  %polly.indvar_next579 = add nuw nsw i64 %polly.indvar578, 1
  %indvars.iv.next1007 = add nsw i64 %indvars.iv1006, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar578, %156
  br i1 %exitcond1017.not, label %polly.loop_exit577, label %polly.loop_header575

polly.loop_header610.preheader:                   ; preds = %polly.loop_header581.us924, %polly.merge600.us
  %164 = add nuw nsw i64 %polly.indvar578, %154
  %165 = mul nuw nsw i64 %164, 480
  %166 = mul nuw nsw i64 %164, 640
  br i1 %polly.loop_guard5911106, label %polly.loop_header610.us, label %polly.loop_exit612

polly.loop_header610.us:                          ; preds = %polly.loop_header610.preheader, %polly.loop_exit619.loopexit.us
  %polly.indvar613.us = phi i64 [ %polly.indvar_next614.us, %polly.loop_exit619.loopexit.us ], [ 0, %polly.loop_header610.preheader ]
  %167 = shl nuw nsw i64 %polly.indvar613.us, 3
  %scevgep628.us = getelementptr i8, i8* %call2, i64 %167
  %polly.access.mul.Packed_MemRef_call1463624.us = mul nuw nsw i64 %polly.indvar613.us, 80
  %scevgep629.us = getelementptr i8, i8* %scevgep628.us, i64 %165
  %scevgep629630.us = bitcast i8* %scevgep629.us to double*
  %_p_scalar_631.us = load double, double* %scevgep629630.us, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1463637.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1463624.us, %161
  %polly.access.Packed_MemRef_call1463638.us = getelementptr double, double* %Packed_MemRef_call1463, i64 %polly.access.add.Packed_MemRef_call1463637.us
  %_p_scalar_639.us = load double, double* %polly.access.Packed_MemRef_call1463638.us, align 8
  br label %polly.loop_header617.us

polly.loop_header617.us:                          ; preds = %polly.loop_header617.us, %polly.loop_header610.us
  %polly.indvar621.us = phi i64 [ 0, %polly.loop_header610.us ], [ %polly.indvar_next622.us, %polly.loop_header617.us ]
  %168 = add nuw nsw i64 %polly.indvar621.us, %157
  %polly.access.add.Packed_MemRef_call1463625.us = add nuw nsw i64 %polly.indvar621.us, %polly.access.mul.Packed_MemRef_call1463624.us
  %polly.access.Packed_MemRef_call1463626.us = getelementptr double, double* %Packed_MemRef_call1463, i64 %polly.access.add.Packed_MemRef_call1463625.us
  %_p_scalar_627.us = load double, double* %polly.access.Packed_MemRef_call1463626.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_631.us, %_p_scalar_627.us
  %169 = mul nuw nsw i64 %168, 480
  %scevgep633.us = getelementptr i8, i8* %scevgep628.us, i64 %169
  %scevgep633634.us = bitcast i8* %scevgep633.us to double*
  %_p_scalar_635.us = load double, double* %scevgep633634.us, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us = fmul fast double %_p_scalar_639.us, %_p_scalar_635.us
  %170 = shl i64 %168, 3
  %171 = add nuw nsw i64 %170, %166
  %scevgep640.us = getelementptr i8, i8* %call, i64 %171
  %scevgep640641.us = bitcast i8* %scevgep640.us to double*
  %_p_scalar_642.us = load double, double* %scevgep640641.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_642.us
  store double %p_add42.i.us, double* %scevgep640641.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next622.us = add nuw nsw i64 %polly.indvar621.us, 1
  %exitcond1012.not = icmp eq i64 %polly.indvar621.us, %smin1011
  br i1 %exitcond1012.not, label %polly.loop_exit619.loopexit.us, label %polly.loop_header617.us

polly.loop_exit619.loopexit.us:                   ; preds = %polly.loop_header617.us
  %polly.indvar_next614.us = add nuw nsw i64 %polly.indvar613.us, 1
  %exitcond1013.not = icmp eq i64 %polly.indvar_next614.us, 60
  br i1 %exitcond1013.not, label %polly.loop_exit612, label %polly.loop_header610.us

polly.loop_header781:                             ; preds = %entry, %polly.loop_exit789
  %polly.indvar784 = phi i64 [ %polly.indvar_next785, %polly.loop_exit789 ], [ 0, %entry ]
  %172 = mul nuw nsw i64 %polly.indvar784, 640
  %173 = trunc i64 %polly.indvar784 to i32
  %broadcast.splatinsert1143 = insertelement <4 x i32> poison, i32 %173, i32 0
  %broadcast.splat1144 = shufflevector <4 x i32> %broadcast.splatinsert1143, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1133

vector.body1133:                                  ; preds = %vector.body1133, %polly.loop_header781
  %index1135 = phi i64 [ 0, %polly.loop_header781 ], [ %index.next1136, %vector.body1133 ]
  %vec.ind1141 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header781 ], [ %vec.ind.next1142, %vector.body1133 ]
  %174 = mul <4 x i32> %vec.ind1141, %broadcast.splat1144
  %175 = add <4 x i32> %174, <i32 3, i32 3, i32 3, i32 3>
  %176 = urem <4 x i32> %175, <i32 80, i32 80, i32 80, i32 80>
  %177 = sitofp <4 x i32> %176 to <4 x double>
  %178 = fmul fast <4 x double> %177, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %179 = shl i64 %index1135, 3
  %180 = add nuw nsw i64 %179, %172
  %181 = getelementptr i8, i8* %call, i64 %180
  %182 = bitcast i8* %181 to <4 x double>*
  store <4 x double> %178, <4 x double>* %182, align 8, !alias.scope !94, !noalias !96
  %index.next1136 = add i64 %index1135, 4
  %vec.ind.next1142 = add <4 x i32> %vec.ind1141, <i32 4, i32 4, i32 4, i32 4>
  %183 = icmp eq i64 %index.next1136, 32
  br i1 %183, label %polly.loop_exit789, label %vector.body1133, !llvm.loop !99

polly.loop_exit789:                               ; preds = %vector.body1133
  %polly.indvar_next785 = add nuw nsw i64 %polly.indvar784, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar_next785, 32
  br i1 %exitcond1041.not, label %polly.loop_header781.1, label %polly.loop_header781

polly.loop_header808:                             ; preds = %polly.loop_exit789.2.2, %polly.loop_exit816
  %polly.indvar811 = phi i64 [ %polly.indvar_next812, %polly.loop_exit816 ], [ 0, %polly.loop_exit789.2.2 ]
  %184 = mul nuw nsw i64 %polly.indvar811, 480
  %185 = trunc i64 %polly.indvar811 to i32
  %broadcast.splatinsert1257 = insertelement <4 x i32> poison, i32 %185, i32 0
  %broadcast.splat1258 = shufflevector <4 x i32> %broadcast.splatinsert1257, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1247

vector.body1247:                                  ; preds = %vector.body1247, %polly.loop_header808
  %index1249 = phi i64 [ 0, %polly.loop_header808 ], [ %index.next1250, %vector.body1247 ]
  %vec.ind1255 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header808 ], [ %vec.ind.next1256, %vector.body1247 ]
  %186 = mul <4 x i32> %vec.ind1255, %broadcast.splat1258
  %187 = add <4 x i32> %186, <i32 2, i32 2, i32 2, i32 2>
  %188 = urem <4 x i32> %187, <i32 60, i32 60, i32 60, i32 60>
  %189 = sitofp <4 x i32> %188 to <4 x double>
  %190 = fmul fast <4 x double> %189, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %191 = shl i64 %index1249, 3
  %192 = add i64 %191, %184
  %193 = getelementptr i8, i8* %call2, i64 %192
  %194 = bitcast i8* %193 to <4 x double>*
  store <4 x double> %190, <4 x double>* %194, align 8, !alias.scope !98, !noalias !100
  %index.next1250 = add i64 %index1249, 4
  %vec.ind.next1256 = add <4 x i32> %vec.ind1255, <i32 4, i32 4, i32 4, i32 4>
  %195 = icmp eq i64 %index.next1250, 32
  br i1 %195, label %polly.loop_exit816, label %vector.body1247, !llvm.loop !101

polly.loop_exit816:                               ; preds = %vector.body1247
  %polly.indvar_next812 = add nuw nsw i64 %polly.indvar811, 1
  %exitcond1032.not = icmp eq i64 %polly.indvar_next812, 32
  br i1 %exitcond1032.not, label %polly.loop_header808.1, label %polly.loop_header808

polly.loop_header834:                             ; preds = %polly.loop_exit816.1.2, %polly.loop_exit842
  %polly.indvar837 = phi i64 [ %polly.indvar_next838, %polly.loop_exit842 ], [ 0, %polly.loop_exit816.1.2 ]
  %196 = mul nuw nsw i64 %polly.indvar837, 480
  %197 = trunc i64 %polly.indvar837 to i32
  %broadcast.splatinsert1335 = insertelement <4 x i32> poison, i32 %197, i32 0
  %broadcast.splat1336 = shufflevector <4 x i32> %broadcast.splatinsert1335, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1325

vector.body1325:                                  ; preds = %vector.body1325, %polly.loop_header834
  %index1327 = phi i64 [ 0, %polly.loop_header834 ], [ %index.next1328, %vector.body1325 ]
  %vec.ind1333 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header834 ], [ %vec.ind.next1334, %vector.body1325 ]
  %198 = mul <4 x i32> %vec.ind1333, %broadcast.splat1336
  %199 = add <4 x i32> %198, <i32 1, i32 1, i32 1, i32 1>
  %200 = urem <4 x i32> %199, <i32 80, i32 80, i32 80, i32 80>
  %201 = sitofp <4 x i32> %200 to <4 x double>
  %202 = fmul fast <4 x double> %201, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %203 = shl i64 %index1327, 3
  %204 = add i64 %203, %196
  %205 = getelementptr i8, i8* %call1, i64 %204
  %206 = bitcast i8* %205 to <4 x double>*
  store <4 x double> %202, <4 x double>* %206, align 8, !alias.scope !97, !noalias !102
  %index.next1328 = add i64 %index1327, 4
  %vec.ind.next1334 = add <4 x i32> %vec.ind1333, <i32 4, i32 4, i32 4, i32 4>
  %207 = icmp eq i64 %index.next1328, 32
  br i1 %207, label %polly.loop_exit842, label %vector.body1325, !llvm.loop !103

polly.loop_exit842:                               ; preds = %vector.body1325
  %polly.indvar_next838 = add nuw nsw i64 %polly.indvar837, 1
  %exitcond1026.not = icmp eq i64 %polly.indvar_next838, 32
  br i1 %exitcond1026.not, label %polly.loop_header834.1, label %polly.loop_header834

polly.loop_header834.1:                           ; preds = %polly.loop_exit842, %polly.loop_exit842.1
  %polly.indvar837.1 = phi i64 [ %polly.indvar_next838.1, %polly.loop_exit842.1 ], [ 0, %polly.loop_exit842 ]
  %208 = mul nuw nsw i64 %polly.indvar837.1, 480
  %209 = trunc i64 %polly.indvar837.1 to i32
  %broadcast.splatinsert1347 = insertelement <4 x i32> poison, i32 %209, i32 0
  %broadcast.splat1348 = shufflevector <4 x i32> %broadcast.splatinsert1347, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1339

vector.body1339:                                  ; preds = %vector.body1339, %polly.loop_header834.1
  %index1341 = phi i64 [ 0, %polly.loop_header834.1 ], [ %index.next1342, %vector.body1339 ]
  %vec.ind1345 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header834.1 ], [ %vec.ind.next1346, %vector.body1339 ]
  %210 = add nuw nsw <4 x i64> %vec.ind1345, <i64 32, i64 32, i64 32, i64 32>
  %211 = trunc <4 x i64> %210 to <4 x i32>
  %212 = mul <4 x i32> %broadcast.splat1348, %211
  %213 = add <4 x i32> %212, <i32 1, i32 1, i32 1, i32 1>
  %214 = urem <4 x i32> %213, <i32 80, i32 80, i32 80, i32 80>
  %215 = sitofp <4 x i32> %214 to <4 x double>
  %216 = fmul fast <4 x double> %215, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %217 = extractelement <4 x i64> %210, i32 0
  %218 = shl i64 %217, 3
  %219 = add i64 %218, %208
  %220 = getelementptr i8, i8* %call1, i64 %219
  %221 = bitcast i8* %220 to <4 x double>*
  store <4 x double> %216, <4 x double>* %221, align 8, !alias.scope !97, !noalias !102
  %index.next1342 = add i64 %index1341, 4
  %vec.ind.next1346 = add <4 x i64> %vec.ind1345, <i64 4, i64 4, i64 4, i64 4>
  %222 = icmp eq i64 %index.next1342, 28
  br i1 %222, label %polly.loop_exit842.1, label %vector.body1339, !llvm.loop !104

polly.loop_exit842.1:                             ; preds = %vector.body1339
  %polly.indvar_next838.1 = add nuw nsw i64 %polly.indvar837.1, 1
  %exitcond1026.1.not = icmp eq i64 %polly.indvar_next838.1, 32
  br i1 %exitcond1026.1.not, label %polly.loop_header834.11049, label %polly.loop_header834.1

polly.loop_header834.11049:                       ; preds = %polly.loop_exit842.1, %polly.loop_exit842.11060
  %polly.indvar837.11048 = phi i64 [ %polly.indvar_next838.11058, %polly.loop_exit842.11060 ], [ 0, %polly.loop_exit842.1 ]
  %223 = add nuw nsw i64 %polly.indvar837.11048, 32
  %224 = mul nuw nsw i64 %223, 480
  %225 = trunc i64 %223 to i32
  %broadcast.splatinsert1361 = insertelement <4 x i32> poison, i32 %225, i32 0
  %broadcast.splat1362 = shufflevector <4 x i32> %broadcast.splatinsert1361, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1351

vector.body1351:                                  ; preds = %vector.body1351, %polly.loop_header834.11049
  %index1353 = phi i64 [ 0, %polly.loop_header834.11049 ], [ %index.next1354, %vector.body1351 ]
  %vec.ind1359 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header834.11049 ], [ %vec.ind.next1360, %vector.body1351 ]
  %226 = mul <4 x i32> %vec.ind1359, %broadcast.splat1362
  %227 = add <4 x i32> %226, <i32 1, i32 1, i32 1, i32 1>
  %228 = urem <4 x i32> %227, <i32 80, i32 80, i32 80, i32 80>
  %229 = sitofp <4 x i32> %228 to <4 x double>
  %230 = fmul fast <4 x double> %229, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %231 = shl i64 %index1353, 3
  %232 = add i64 %231, %224
  %233 = getelementptr i8, i8* %call1, i64 %232
  %234 = bitcast i8* %233 to <4 x double>*
  store <4 x double> %230, <4 x double>* %234, align 8, !alias.scope !97, !noalias !102
  %index.next1354 = add i64 %index1353, 4
  %vec.ind.next1360 = add <4 x i32> %vec.ind1359, <i32 4, i32 4, i32 4, i32 4>
  %235 = icmp eq i64 %index.next1354, 32
  br i1 %235, label %polly.loop_exit842.11060, label %vector.body1351, !llvm.loop !105

polly.loop_exit842.11060:                         ; preds = %vector.body1351
  %polly.indvar_next838.11058 = add nuw nsw i64 %polly.indvar837.11048, 1
  %exitcond1026.11059.not = icmp eq i64 %polly.indvar_next838.11058, 32
  br i1 %exitcond1026.11059.not, label %polly.loop_header834.1.1, label %polly.loop_header834.11049

polly.loop_header834.1.1:                         ; preds = %polly.loop_exit842.11060, %polly.loop_exit842.1.1
  %polly.indvar837.1.1 = phi i64 [ %polly.indvar_next838.1.1, %polly.loop_exit842.1.1 ], [ 0, %polly.loop_exit842.11060 ]
  %236 = add nuw nsw i64 %polly.indvar837.1.1, 32
  %237 = mul nuw nsw i64 %236, 480
  %238 = trunc i64 %236 to i32
  %broadcast.splatinsert1373 = insertelement <4 x i32> poison, i32 %238, i32 0
  %broadcast.splat1374 = shufflevector <4 x i32> %broadcast.splatinsert1373, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1365

vector.body1365:                                  ; preds = %vector.body1365, %polly.loop_header834.1.1
  %index1367 = phi i64 [ 0, %polly.loop_header834.1.1 ], [ %index.next1368, %vector.body1365 ]
  %vec.ind1371 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header834.1.1 ], [ %vec.ind.next1372, %vector.body1365 ]
  %239 = add nuw nsw <4 x i64> %vec.ind1371, <i64 32, i64 32, i64 32, i64 32>
  %240 = trunc <4 x i64> %239 to <4 x i32>
  %241 = mul <4 x i32> %broadcast.splat1374, %240
  %242 = add <4 x i32> %241, <i32 1, i32 1, i32 1, i32 1>
  %243 = urem <4 x i32> %242, <i32 80, i32 80, i32 80, i32 80>
  %244 = sitofp <4 x i32> %243 to <4 x double>
  %245 = fmul fast <4 x double> %244, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %246 = extractelement <4 x i64> %239, i32 0
  %247 = shl i64 %246, 3
  %248 = add i64 %247, %237
  %249 = getelementptr i8, i8* %call1, i64 %248
  %250 = bitcast i8* %249 to <4 x double>*
  store <4 x double> %245, <4 x double>* %250, align 8, !alias.scope !97, !noalias !102
  %index.next1368 = add i64 %index1367, 4
  %vec.ind.next1372 = add <4 x i64> %vec.ind1371, <i64 4, i64 4, i64 4, i64 4>
  %251 = icmp eq i64 %index.next1368, 28
  br i1 %251, label %polly.loop_exit842.1.1, label %vector.body1365, !llvm.loop !106

polly.loop_exit842.1.1:                           ; preds = %vector.body1365
  %polly.indvar_next838.1.1 = add nuw nsw i64 %polly.indvar837.1.1, 1
  %exitcond1026.1.1.not = icmp eq i64 %polly.indvar_next838.1.1, 32
  br i1 %exitcond1026.1.1.not, label %polly.loop_header834.2, label %polly.loop_header834.1.1

polly.loop_header834.2:                           ; preds = %polly.loop_exit842.1.1, %polly.loop_exit842.2
  %polly.indvar837.2 = phi i64 [ %polly.indvar_next838.2, %polly.loop_exit842.2 ], [ 0, %polly.loop_exit842.1.1 ]
  %252 = add nuw nsw i64 %polly.indvar837.2, 64
  %253 = mul nuw nsw i64 %252, 480
  %254 = trunc i64 %252 to i32
  %broadcast.splatinsert1387 = insertelement <4 x i32> poison, i32 %254, i32 0
  %broadcast.splat1388 = shufflevector <4 x i32> %broadcast.splatinsert1387, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1377

vector.body1377:                                  ; preds = %vector.body1377, %polly.loop_header834.2
  %index1379 = phi i64 [ 0, %polly.loop_header834.2 ], [ %index.next1380, %vector.body1377 ]
  %vec.ind1385 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header834.2 ], [ %vec.ind.next1386, %vector.body1377 ]
  %255 = mul <4 x i32> %vec.ind1385, %broadcast.splat1388
  %256 = add <4 x i32> %255, <i32 1, i32 1, i32 1, i32 1>
  %257 = urem <4 x i32> %256, <i32 80, i32 80, i32 80, i32 80>
  %258 = sitofp <4 x i32> %257 to <4 x double>
  %259 = fmul fast <4 x double> %258, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %260 = shl i64 %index1379, 3
  %261 = add i64 %260, %253
  %262 = getelementptr i8, i8* %call1, i64 %261
  %263 = bitcast i8* %262 to <4 x double>*
  store <4 x double> %259, <4 x double>* %263, align 8, !alias.scope !97, !noalias !102
  %index.next1380 = add i64 %index1379, 4
  %vec.ind.next1386 = add <4 x i32> %vec.ind1385, <i32 4, i32 4, i32 4, i32 4>
  %264 = icmp eq i64 %index.next1380, 32
  br i1 %264, label %polly.loop_exit842.2, label %vector.body1377, !llvm.loop !107

polly.loop_exit842.2:                             ; preds = %vector.body1377
  %polly.indvar_next838.2 = add nuw nsw i64 %polly.indvar837.2, 1
  %exitcond1026.2.not = icmp eq i64 %polly.indvar_next838.2, 16
  br i1 %exitcond1026.2.not, label %polly.loop_header834.1.2, label %polly.loop_header834.2

polly.loop_header834.1.2:                         ; preds = %polly.loop_exit842.2, %polly.loop_exit842.1.2
  %polly.indvar837.1.2 = phi i64 [ %polly.indvar_next838.1.2, %polly.loop_exit842.1.2 ], [ 0, %polly.loop_exit842.2 ]
  %265 = add nuw nsw i64 %polly.indvar837.1.2, 64
  %266 = mul nuw nsw i64 %265, 480
  %267 = trunc i64 %265 to i32
  %broadcast.splatinsert1399 = insertelement <4 x i32> poison, i32 %267, i32 0
  %broadcast.splat1400 = shufflevector <4 x i32> %broadcast.splatinsert1399, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1391

vector.body1391:                                  ; preds = %vector.body1391, %polly.loop_header834.1.2
  %index1393 = phi i64 [ 0, %polly.loop_header834.1.2 ], [ %index.next1394, %vector.body1391 ]
  %vec.ind1397 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header834.1.2 ], [ %vec.ind.next1398, %vector.body1391 ]
  %268 = add nuw nsw <4 x i64> %vec.ind1397, <i64 32, i64 32, i64 32, i64 32>
  %269 = trunc <4 x i64> %268 to <4 x i32>
  %270 = mul <4 x i32> %broadcast.splat1400, %269
  %271 = add <4 x i32> %270, <i32 1, i32 1, i32 1, i32 1>
  %272 = urem <4 x i32> %271, <i32 80, i32 80, i32 80, i32 80>
  %273 = sitofp <4 x i32> %272 to <4 x double>
  %274 = fmul fast <4 x double> %273, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %275 = extractelement <4 x i64> %268, i32 0
  %276 = shl i64 %275, 3
  %277 = add i64 %276, %266
  %278 = getelementptr i8, i8* %call1, i64 %277
  %279 = bitcast i8* %278 to <4 x double>*
  store <4 x double> %274, <4 x double>* %279, align 8, !alias.scope !97, !noalias !102
  %index.next1394 = add i64 %index1393, 4
  %vec.ind.next1398 = add <4 x i64> %vec.ind1397, <i64 4, i64 4, i64 4, i64 4>
  %280 = icmp eq i64 %index.next1394, 28
  br i1 %280, label %polly.loop_exit842.1.2, label %vector.body1391, !llvm.loop !108

polly.loop_exit842.1.2:                           ; preds = %vector.body1391
  %polly.indvar_next838.1.2 = add nuw nsw i64 %polly.indvar837.1.2, 1
  %exitcond1026.1.2.not = icmp eq i64 %polly.indvar_next838.1.2, 16
  br i1 %exitcond1026.1.2.not, label %init_array.exit, label %polly.loop_header834.1.2

polly.loop_header808.1:                           ; preds = %polly.loop_exit816, %polly.loop_exit816.1
  %polly.indvar811.1 = phi i64 [ %polly.indvar_next812.1, %polly.loop_exit816.1 ], [ 0, %polly.loop_exit816 ]
  %281 = mul nuw nsw i64 %polly.indvar811.1, 480
  %282 = trunc i64 %polly.indvar811.1 to i32
  %broadcast.splatinsert1269 = insertelement <4 x i32> poison, i32 %282, i32 0
  %broadcast.splat1270 = shufflevector <4 x i32> %broadcast.splatinsert1269, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1261

vector.body1261:                                  ; preds = %vector.body1261, %polly.loop_header808.1
  %index1263 = phi i64 [ 0, %polly.loop_header808.1 ], [ %index.next1264, %vector.body1261 ]
  %vec.ind1267 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header808.1 ], [ %vec.ind.next1268, %vector.body1261 ]
  %283 = add nuw nsw <4 x i64> %vec.ind1267, <i64 32, i64 32, i64 32, i64 32>
  %284 = trunc <4 x i64> %283 to <4 x i32>
  %285 = mul <4 x i32> %broadcast.splat1270, %284
  %286 = add <4 x i32> %285, <i32 2, i32 2, i32 2, i32 2>
  %287 = urem <4 x i32> %286, <i32 60, i32 60, i32 60, i32 60>
  %288 = sitofp <4 x i32> %287 to <4 x double>
  %289 = fmul fast <4 x double> %288, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %290 = extractelement <4 x i64> %283, i32 0
  %291 = shl i64 %290, 3
  %292 = add i64 %291, %281
  %293 = getelementptr i8, i8* %call2, i64 %292
  %294 = bitcast i8* %293 to <4 x double>*
  store <4 x double> %289, <4 x double>* %294, align 8, !alias.scope !98, !noalias !100
  %index.next1264 = add i64 %index1263, 4
  %vec.ind.next1268 = add <4 x i64> %vec.ind1267, <i64 4, i64 4, i64 4, i64 4>
  %295 = icmp eq i64 %index.next1264, 28
  br i1 %295, label %polly.loop_exit816.1, label %vector.body1261, !llvm.loop !109

polly.loop_exit816.1:                             ; preds = %vector.body1261
  %polly.indvar_next812.1 = add nuw nsw i64 %polly.indvar811.1, 1
  %exitcond1032.1.not = icmp eq i64 %polly.indvar_next812.1, 32
  br i1 %exitcond1032.1.not, label %polly.loop_header808.11063, label %polly.loop_header808.1

polly.loop_header808.11063:                       ; preds = %polly.loop_exit816.1, %polly.loop_exit816.11074
  %polly.indvar811.11062 = phi i64 [ %polly.indvar_next812.11072, %polly.loop_exit816.11074 ], [ 0, %polly.loop_exit816.1 ]
  %296 = add nuw nsw i64 %polly.indvar811.11062, 32
  %297 = mul nuw nsw i64 %296, 480
  %298 = trunc i64 %296 to i32
  %broadcast.splatinsert1283 = insertelement <4 x i32> poison, i32 %298, i32 0
  %broadcast.splat1284 = shufflevector <4 x i32> %broadcast.splatinsert1283, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1273

vector.body1273:                                  ; preds = %vector.body1273, %polly.loop_header808.11063
  %index1275 = phi i64 [ 0, %polly.loop_header808.11063 ], [ %index.next1276, %vector.body1273 ]
  %vec.ind1281 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header808.11063 ], [ %vec.ind.next1282, %vector.body1273 ]
  %299 = mul <4 x i32> %vec.ind1281, %broadcast.splat1284
  %300 = add <4 x i32> %299, <i32 2, i32 2, i32 2, i32 2>
  %301 = urem <4 x i32> %300, <i32 60, i32 60, i32 60, i32 60>
  %302 = sitofp <4 x i32> %301 to <4 x double>
  %303 = fmul fast <4 x double> %302, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %304 = shl i64 %index1275, 3
  %305 = add i64 %304, %297
  %306 = getelementptr i8, i8* %call2, i64 %305
  %307 = bitcast i8* %306 to <4 x double>*
  store <4 x double> %303, <4 x double>* %307, align 8, !alias.scope !98, !noalias !100
  %index.next1276 = add i64 %index1275, 4
  %vec.ind.next1282 = add <4 x i32> %vec.ind1281, <i32 4, i32 4, i32 4, i32 4>
  %308 = icmp eq i64 %index.next1276, 32
  br i1 %308, label %polly.loop_exit816.11074, label %vector.body1273, !llvm.loop !110

polly.loop_exit816.11074:                         ; preds = %vector.body1273
  %polly.indvar_next812.11072 = add nuw nsw i64 %polly.indvar811.11062, 1
  %exitcond1032.11073.not = icmp eq i64 %polly.indvar_next812.11072, 32
  br i1 %exitcond1032.11073.not, label %polly.loop_header808.1.1, label %polly.loop_header808.11063

polly.loop_header808.1.1:                         ; preds = %polly.loop_exit816.11074, %polly.loop_exit816.1.1
  %polly.indvar811.1.1 = phi i64 [ %polly.indvar_next812.1.1, %polly.loop_exit816.1.1 ], [ 0, %polly.loop_exit816.11074 ]
  %309 = add nuw nsw i64 %polly.indvar811.1.1, 32
  %310 = mul nuw nsw i64 %309, 480
  %311 = trunc i64 %309 to i32
  %broadcast.splatinsert1295 = insertelement <4 x i32> poison, i32 %311, i32 0
  %broadcast.splat1296 = shufflevector <4 x i32> %broadcast.splatinsert1295, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1287

vector.body1287:                                  ; preds = %vector.body1287, %polly.loop_header808.1.1
  %index1289 = phi i64 [ 0, %polly.loop_header808.1.1 ], [ %index.next1290, %vector.body1287 ]
  %vec.ind1293 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header808.1.1 ], [ %vec.ind.next1294, %vector.body1287 ]
  %312 = add nuw nsw <4 x i64> %vec.ind1293, <i64 32, i64 32, i64 32, i64 32>
  %313 = trunc <4 x i64> %312 to <4 x i32>
  %314 = mul <4 x i32> %broadcast.splat1296, %313
  %315 = add <4 x i32> %314, <i32 2, i32 2, i32 2, i32 2>
  %316 = urem <4 x i32> %315, <i32 60, i32 60, i32 60, i32 60>
  %317 = sitofp <4 x i32> %316 to <4 x double>
  %318 = fmul fast <4 x double> %317, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %319 = extractelement <4 x i64> %312, i32 0
  %320 = shl i64 %319, 3
  %321 = add i64 %320, %310
  %322 = getelementptr i8, i8* %call2, i64 %321
  %323 = bitcast i8* %322 to <4 x double>*
  store <4 x double> %318, <4 x double>* %323, align 8, !alias.scope !98, !noalias !100
  %index.next1290 = add i64 %index1289, 4
  %vec.ind.next1294 = add <4 x i64> %vec.ind1293, <i64 4, i64 4, i64 4, i64 4>
  %324 = icmp eq i64 %index.next1290, 28
  br i1 %324, label %polly.loop_exit816.1.1, label %vector.body1287, !llvm.loop !111

polly.loop_exit816.1.1:                           ; preds = %vector.body1287
  %polly.indvar_next812.1.1 = add nuw nsw i64 %polly.indvar811.1.1, 1
  %exitcond1032.1.1.not = icmp eq i64 %polly.indvar_next812.1.1, 32
  br i1 %exitcond1032.1.1.not, label %polly.loop_header808.2, label %polly.loop_header808.1.1

polly.loop_header808.2:                           ; preds = %polly.loop_exit816.1.1, %polly.loop_exit816.2
  %polly.indvar811.2 = phi i64 [ %polly.indvar_next812.2, %polly.loop_exit816.2 ], [ 0, %polly.loop_exit816.1.1 ]
  %325 = add nuw nsw i64 %polly.indvar811.2, 64
  %326 = mul nuw nsw i64 %325, 480
  %327 = trunc i64 %325 to i32
  %broadcast.splatinsert1309 = insertelement <4 x i32> poison, i32 %327, i32 0
  %broadcast.splat1310 = shufflevector <4 x i32> %broadcast.splatinsert1309, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1299

vector.body1299:                                  ; preds = %vector.body1299, %polly.loop_header808.2
  %index1301 = phi i64 [ 0, %polly.loop_header808.2 ], [ %index.next1302, %vector.body1299 ]
  %vec.ind1307 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header808.2 ], [ %vec.ind.next1308, %vector.body1299 ]
  %328 = mul <4 x i32> %vec.ind1307, %broadcast.splat1310
  %329 = add <4 x i32> %328, <i32 2, i32 2, i32 2, i32 2>
  %330 = urem <4 x i32> %329, <i32 60, i32 60, i32 60, i32 60>
  %331 = sitofp <4 x i32> %330 to <4 x double>
  %332 = fmul fast <4 x double> %331, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %333 = shl i64 %index1301, 3
  %334 = add i64 %333, %326
  %335 = getelementptr i8, i8* %call2, i64 %334
  %336 = bitcast i8* %335 to <4 x double>*
  store <4 x double> %332, <4 x double>* %336, align 8, !alias.scope !98, !noalias !100
  %index.next1302 = add i64 %index1301, 4
  %vec.ind.next1308 = add <4 x i32> %vec.ind1307, <i32 4, i32 4, i32 4, i32 4>
  %337 = icmp eq i64 %index.next1302, 32
  br i1 %337, label %polly.loop_exit816.2, label %vector.body1299, !llvm.loop !112

polly.loop_exit816.2:                             ; preds = %vector.body1299
  %polly.indvar_next812.2 = add nuw nsw i64 %polly.indvar811.2, 1
  %exitcond1032.2.not = icmp eq i64 %polly.indvar_next812.2, 16
  br i1 %exitcond1032.2.not, label %polly.loop_header808.1.2, label %polly.loop_header808.2

polly.loop_header808.1.2:                         ; preds = %polly.loop_exit816.2, %polly.loop_exit816.1.2
  %polly.indvar811.1.2 = phi i64 [ %polly.indvar_next812.1.2, %polly.loop_exit816.1.2 ], [ 0, %polly.loop_exit816.2 ]
  %338 = add nuw nsw i64 %polly.indvar811.1.2, 64
  %339 = mul nuw nsw i64 %338, 480
  %340 = trunc i64 %338 to i32
  %broadcast.splatinsert1321 = insertelement <4 x i32> poison, i32 %340, i32 0
  %broadcast.splat1322 = shufflevector <4 x i32> %broadcast.splatinsert1321, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1313

vector.body1313:                                  ; preds = %vector.body1313, %polly.loop_header808.1.2
  %index1315 = phi i64 [ 0, %polly.loop_header808.1.2 ], [ %index.next1316, %vector.body1313 ]
  %vec.ind1319 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header808.1.2 ], [ %vec.ind.next1320, %vector.body1313 ]
  %341 = add nuw nsw <4 x i64> %vec.ind1319, <i64 32, i64 32, i64 32, i64 32>
  %342 = trunc <4 x i64> %341 to <4 x i32>
  %343 = mul <4 x i32> %broadcast.splat1322, %342
  %344 = add <4 x i32> %343, <i32 2, i32 2, i32 2, i32 2>
  %345 = urem <4 x i32> %344, <i32 60, i32 60, i32 60, i32 60>
  %346 = sitofp <4 x i32> %345 to <4 x double>
  %347 = fmul fast <4 x double> %346, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %348 = extractelement <4 x i64> %341, i32 0
  %349 = shl i64 %348, 3
  %350 = add i64 %349, %339
  %351 = getelementptr i8, i8* %call2, i64 %350
  %352 = bitcast i8* %351 to <4 x double>*
  store <4 x double> %347, <4 x double>* %352, align 8, !alias.scope !98, !noalias !100
  %index.next1316 = add i64 %index1315, 4
  %vec.ind.next1320 = add <4 x i64> %vec.ind1319, <i64 4, i64 4, i64 4, i64 4>
  %353 = icmp eq i64 %index.next1316, 28
  br i1 %353, label %polly.loop_exit816.1.2, label %vector.body1313, !llvm.loop !113

polly.loop_exit816.1.2:                           ; preds = %vector.body1313
  %polly.indvar_next812.1.2 = add nuw nsw i64 %polly.indvar811.1.2, 1
  %exitcond1032.1.2.not = icmp eq i64 %polly.indvar_next812.1.2, 16
  br i1 %exitcond1032.1.2.not, label %polly.loop_header834, label %polly.loop_header808.1.2

polly.loop_header781.1:                           ; preds = %polly.loop_exit789, %polly.loop_exit789.1
  %polly.indvar784.1 = phi i64 [ %polly.indvar_next785.1, %polly.loop_exit789.1 ], [ 0, %polly.loop_exit789 ]
  %354 = mul nuw nsw i64 %polly.indvar784.1, 640
  %355 = trunc i64 %polly.indvar784.1 to i32
  %broadcast.splatinsert1155 = insertelement <4 x i32> poison, i32 %355, i32 0
  %broadcast.splat1156 = shufflevector <4 x i32> %broadcast.splatinsert1155, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1147

vector.body1147:                                  ; preds = %vector.body1147, %polly.loop_header781.1
  %index1149 = phi i64 [ 0, %polly.loop_header781.1 ], [ %index.next1150, %vector.body1147 ]
  %vec.ind1153 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header781.1 ], [ %vec.ind.next1154, %vector.body1147 ]
  %356 = add nuw nsw <4 x i64> %vec.ind1153, <i64 32, i64 32, i64 32, i64 32>
  %357 = trunc <4 x i64> %356 to <4 x i32>
  %358 = mul <4 x i32> %broadcast.splat1156, %357
  %359 = add <4 x i32> %358, <i32 3, i32 3, i32 3, i32 3>
  %360 = urem <4 x i32> %359, <i32 80, i32 80, i32 80, i32 80>
  %361 = sitofp <4 x i32> %360 to <4 x double>
  %362 = fmul fast <4 x double> %361, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %363 = extractelement <4 x i64> %356, i32 0
  %364 = shl i64 %363, 3
  %365 = add nuw nsw i64 %364, %354
  %366 = getelementptr i8, i8* %call, i64 %365
  %367 = bitcast i8* %366 to <4 x double>*
  store <4 x double> %362, <4 x double>* %367, align 8, !alias.scope !94, !noalias !96
  %index.next1150 = add i64 %index1149, 4
  %vec.ind.next1154 = add <4 x i64> %vec.ind1153, <i64 4, i64 4, i64 4, i64 4>
  %368 = icmp eq i64 %index.next1150, 32
  br i1 %368, label %polly.loop_exit789.1, label %vector.body1147, !llvm.loop !114

polly.loop_exit789.1:                             ; preds = %vector.body1147
  %polly.indvar_next785.1 = add nuw nsw i64 %polly.indvar784.1, 1
  %exitcond1041.1.not = icmp eq i64 %polly.indvar_next785.1, 32
  br i1 %exitcond1041.1.not, label %polly.loop_header781.2, label %polly.loop_header781.1

polly.loop_header781.2:                           ; preds = %polly.loop_exit789.1, %polly.loop_exit789.2
  %polly.indvar784.2 = phi i64 [ %polly.indvar_next785.2, %polly.loop_exit789.2 ], [ 0, %polly.loop_exit789.1 ]
  %369 = mul nuw nsw i64 %polly.indvar784.2, 640
  %370 = trunc i64 %polly.indvar784.2 to i32
  %broadcast.splatinsert1167 = insertelement <4 x i32> poison, i32 %370, i32 0
  %broadcast.splat1168 = shufflevector <4 x i32> %broadcast.splatinsert1167, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1159

vector.body1159:                                  ; preds = %vector.body1159, %polly.loop_header781.2
  %index1161 = phi i64 [ 0, %polly.loop_header781.2 ], [ %index.next1162, %vector.body1159 ]
  %vec.ind1165 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header781.2 ], [ %vec.ind.next1166, %vector.body1159 ]
  %371 = add nuw nsw <4 x i64> %vec.ind1165, <i64 64, i64 64, i64 64, i64 64>
  %372 = trunc <4 x i64> %371 to <4 x i32>
  %373 = mul <4 x i32> %broadcast.splat1168, %372
  %374 = add <4 x i32> %373, <i32 3, i32 3, i32 3, i32 3>
  %375 = urem <4 x i32> %374, <i32 80, i32 80, i32 80, i32 80>
  %376 = sitofp <4 x i32> %375 to <4 x double>
  %377 = fmul fast <4 x double> %376, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %378 = extractelement <4 x i64> %371, i32 0
  %379 = shl i64 %378, 3
  %380 = add nuw nsw i64 %379, %369
  %381 = getelementptr i8, i8* %call, i64 %380
  %382 = bitcast i8* %381 to <4 x double>*
  store <4 x double> %377, <4 x double>* %382, align 8, !alias.scope !94, !noalias !96
  %index.next1162 = add i64 %index1161, 4
  %vec.ind.next1166 = add <4 x i64> %vec.ind1165, <i64 4, i64 4, i64 4, i64 4>
  %383 = icmp eq i64 %index.next1162, 16
  br i1 %383, label %polly.loop_exit789.2, label %vector.body1159, !llvm.loop !115

polly.loop_exit789.2:                             ; preds = %vector.body1159
  %polly.indvar_next785.2 = add nuw nsw i64 %polly.indvar784.2, 1
  %exitcond1041.2.not = icmp eq i64 %polly.indvar_next785.2, 32
  br i1 %exitcond1041.2.not, label %polly.loop_header781.11077, label %polly.loop_header781.2

polly.loop_header781.11077:                       ; preds = %polly.loop_exit789.2, %polly.loop_exit789.11088
  %polly.indvar784.11076 = phi i64 [ %polly.indvar_next785.11086, %polly.loop_exit789.11088 ], [ 0, %polly.loop_exit789.2 ]
  %384 = add nuw nsw i64 %polly.indvar784.11076, 32
  %385 = mul nuw nsw i64 %384, 640
  %386 = trunc i64 %384 to i32
  %broadcast.splatinsert1181 = insertelement <4 x i32> poison, i32 %386, i32 0
  %broadcast.splat1182 = shufflevector <4 x i32> %broadcast.splatinsert1181, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1171

vector.body1171:                                  ; preds = %vector.body1171, %polly.loop_header781.11077
  %index1173 = phi i64 [ 0, %polly.loop_header781.11077 ], [ %index.next1174, %vector.body1171 ]
  %vec.ind1179 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header781.11077 ], [ %vec.ind.next1180, %vector.body1171 ]
  %387 = mul <4 x i32> %vec.ind1179, %broadcast.splat1182
  %388 = add <4 x i32> %387, <i32 3, i32 3, i32 3, i32 3>
  %389 = urem <4 x i32> %388, <i32 80, i32 80, i32 80, i32 80>
  %390 = sitofp <4 x i32> %389 to <4 x double>
  %391 = fmul fast <4 x double> %390, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %392 = shl i64 %index1173, 3
  %393 = add nuw nsw i64 %392, %385
  %394 = getelementptr i8, i8* %call, i64 %393
  %395 = bitcast i8* %394 to <4 x double>*
  store <4 x double> %391, <4 x double>* %395, align 8, !alias.scope !94, !noalias !96
  %index.next1174 = add i64 %index1173, 4
  %vec.ind.next1180 = add <4 x i32> %vec.ind1179, <i32 4, i32 4, i32 4, i32 4>
  %396 = icmp eq i64 %index.next1174, 32
  br i1 %396, label %polly.loop_exit789.11088, label %vector.body1171, !llvm.loop !116

polly.loop_exit789.11088:                         ; preds = %vector.body1171
  %polly.indvar_next785.11086 = add nuw nsw i64 %polly.indvar784.11076, 1
  %exitcond1041.11087.not = icmp eq i64 %polly.indvar_next785.11086, 32
  br i1 %exitcond1041.11087.not, label %polly.loop_header781.1.1, label %polly.loop_header781.11077

polly.loop_header781.1.1:                         ; preds = %polly.loop_exit789.11088, %polly.loop_exit789.1.1
  %polly.indvar784.1.1 = phi i64 [ %polly.indvar_next785.1.1, %polly.loop_exit789.1.1 ], [ 0, %polly.loop_exit789.11088 ]
  %397 = add nuw nsw i64 %polly.indvar784.1.1, 32
  %398 = mul nuw nsw i64 %397, 640
  %399 = trunc i64 %397 to i32
  %broadcast.splatinsert1193 = insertelement <4 x i32> poison, i32 %399, i32 0
  %broadcast.splat1194 = shufflevector <4 x i32> %broadcast.splatinsert1193, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1185

vector.body1185:                                  ; preds = %vector.body1185, %polly.loop_header781.1.1
  %index1187 = phi i64 [ 0, %polly.loop_header781.1.1 ], [ %index.next1188, %vector.body1185 ]
  %vec.ind1191 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header781.1.1 ], [ %vec.ind.next1192, %vector.body1185 ]
  %400 = add nuw nsw <4 x i64> %vec.ind1191, <i64 32, i64 32, i64 32, i64 32>
  %401 = trunc <4 x i64> %400 to <4 x i32>
  %402 = mul <4 x i32> %broadcast.splat1194, %401
  %403 = add <4 x i32> %402, <i32 3, i32 3, i32 3, i32 3>
  %404 = urem <4 x i32> %403, <i32 80, i32 80, i32 80, i32 80>
  %405 = sitofp <4 x i32> %404 to <4 x double>
  %406 = fmul fast <4 x double> %405, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %407 = extractelement <4 x i64> %400, i32 0
  %408 = shl i64 %407, 3
  %409 = add nuw nsw i64 %408, %398
  %410 = getelementptr i8, i8* %call, i64 %409
  %411 = bitcast i8* %410 to <4 x double>*
  store <4 x double> %406, <4 x double>* %411, align 8, !alias.scope !94, !noalias !96
  %index.next1188 = add i64 %index1187, 4
  %vec.ind.next1192 = add <4 x i64> %vec.ind1191, <i64 4, i64 4, i64 4, i64 4>
  %412 = icmp eq i64 %index.next1188, 32
  br i1 %412, label %polly.loop_exit789.1.1, label %vector.body1185, !llvm.loop !117

polly.loop_exit789.1.1:                           ; preds = %vector.body1185
  %polly.indvar_next785.1.1 = add nuw nsw i64 %polly.indvar784.1.1, 1
  %exitcond1041.1.1.not = icmp eq i64 %polly.indvar_next785.1.1, 32
  br i1 %exitcond1041.1.1.not, label %polly.loop_header781.2.1, label %polly.loop_header781.1.1

polly.loop_header781.2.1:                         ; preds = %polly.loop_exit789.1.1, %polly.loop_exit789.2.1
  %polly.indvar784.2.1 = phi i64 [ %polly.indvar_next785.2.1, %polly.loop_exit789.2.1 ], [ 0, %polly.loop_exit789.1.1 ]
  %413 = add nuw nsw i64 %polly.indvar784.2.1, 32
  %414 = mul nuw nsw i64 %413, 640
  %415 = trunc i64 %413 to i32
  %broadcast.splatinsert1205 = insertelement <4 x i32> poison, i32 %415, i32 0
  %broadcast.splat1206 = shufflevector <4 x i32> %broadcast.splatinsert1205, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %polly.loop_header781.2.1
  %index1199 = phi i64 [ 0, %polly.loop_header781.2.1 ], [ %index.next1200, %vector.body1197 ]
  %vec.ind1203 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header781.2.1 ], [ %vec.ind.next1204, %vector.body1197 ]
  %416 = add nuw nsw <4 x i64> %vec.ind1203, <i64 64, i64 64, i64 64, i64 64>
  %417 = trunc <4 x i64> %416 to <4 x i32>
  %418 = mul <4 x i32> %broadcast.splat1206, %417
  %419 = add <4 x i32> %418, <i32 3, i32 3, i32 3, i32 3>
  %420 = urem <4 x i32> %419, <i32 80, i32 80, i32 80, i32 80>
  %421 = sitofp <4 x i32> %420 to <4 x double>
  %422 = fmul fast <4 x double> %421, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %423 = extractelement <4 x i64> %416, i32 0
  %424 = shl i64 %423, 3
  %425 = add nuw nsw i64 %424, %414
  %426 = getelementptr i8, i8* %call, i64 %425
  %427 = bitcast i8* %426 to <4 x double>*
  store <4 x double> %422, <4 x double>* %427, align 8, !alias.scope !94, !noalias !96
  %index.next1200 = add i64 %index1199, 4
  %vec.ind.next1204 = add <4 x i64> %vec.ind1203, <i64 4, i64 4, i64 4, i64 4>
  %428 = icmp eq i64 %index.next1200, 16
  br i1 %428, label %polly.loop_exit789.2.1, label %vector.body1197, !llvm.loop !118

polly.loop_exit789.2.1:                           ; preds = %vector.body1197
  %polly.indvar_next785.2.1 = add nuw nsw i64 %polly.indvar784.2.1, 1
  %exitcond1041.2.1.not = icmp eq i64 %polly.indvar_next785.2.1, 32
  br i1 %exitcond1041.2.1.not, label %polly.loop_header781.21091, label %polly.loop_header781.2.1

polly.loop_header781.21091:                       ; preds = %polly.loop_exit789.2.1, %polly.loop_exit789.21102
  %polly.indvar784.21090 = phi i64 [ %polly.indvar_next785.21100, %polly.loop_exit789.21102 ], [ 0, %polly.loop_exit789.2.1 ]
  %429 = add nuw nsw i64 %polly.indvar784.21090, 64
  %430 = mul nuw nsw i64 %429, 640
  %431 = trunc i64 %429 to i32
  %broadcast.splatinsert1219 = insertelement <4 x i32> poison, i32 %431, i32 0
  %broadcast.splat1220 = shufflevector <4 x i32> %broadcast.splatinsert1219, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1209

vector.body1209:                                  ; preds = %vector.body1209, %polly.loop_header781.21091
  %index1211 = phi i64 [ 0, %polly.loop_header781.21091 ], [ %index.next1212, %vector.body1209 ]
  %vec.ind1217 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header781.21091 ], [ %vec.ind.next1218, %vector.body1209 ]
  %432 = mul <4 x i32> %vec.ind1217, %broadcast.splat1220
  %433 = add <4 x i32> %432, <i32 3, i32 3, i32 3, i32 3>
  %434 = urem <4 x i32> %433, <i32 80, i32 80, i32 80, i32 80>
  %435 = sitofp <4 x i32> %434 to <4 x double>
  %436 = fmul fast <4 x double> %435, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %437 = shl i64 %index1211, 3
  %438 = add nuw nsw i64 %437, %430
  %439 = getelementptr i8, i8* %call, i64 %438
  %440 = bitcast i8* %439 to <4 x double>*
  store <4 x double> %436, <4 x double>* %440, align 8, !alias.scope !94, !noalias !96
  %index.next1212 = add i64 %index1211, 4
  %vec.ind.next1218 = add <4 x i32> %vec.ind1217, <i32 4, i32 4, i32 4, i32 4>
  %441 = icmp eq i64 %index.next1212, 32
  br i1 %441, label %polly.loop_exit789.21102, label %vector.body1209, !llvm.loop !119

polly.loop_exit789.21102:                         ; preds = %vector.body1209
  %polly.indvar_next785.21100 = add nuw nsw i64 %polly.indvar784.21090, 1
  %exitcond1041.21101.not = icmp eq i64 %polly.indvar_next785.21100, 16
  br i1 %exitcond1041.21101.not, label %polly.loop_header781.1.2, label %polly.loop_header781.21091

polly.loop_header781.1.2:                         ; preds = %polly.loop_exit789.21102, %polly.loop_exit789.1.2
  %polly.indvar784.1.2 = phi i64 [ %polly.indvar_next785.1.2, %polly.loop_exit789.1.2 ], [ 0, %polly.loop_exit789.21102 ]
  %442 = add nuw nsw i64 %polly.indvar784.1.2, 64
  %443 = mul nuw nsw i64 %442, 640
  %444 = trunc i64 %442 to i32
  %broadcast.splatinsert1231 = insertelement <4 x i32> poison, i32 %444, i32 0
  %broadcast.splat1232 = shufflevector <4 x i32> %broadcast.splatinsert1231, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1223

vector.body1223:                                  ; preds = %vector.body1223, %polly.loop_header781.1.2
  %index1225 = phi i64 [ 0, %polly.loop_header781.1.2 ], [ %index.next1226, %vector.body1223 ]
  %vec.ind1229 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header781.1.2 ], [ %vec.ind.next1230, %vector.body1223 ]
  %445 = add nuw nsw <4 x i64> %vec.ind1229, <i64 32, i64 32, i64 32, i64 32>
  %446 = trunc <4 x i64> %445 to <4 x i32>
  %447 = mul <4 x i32> %broadcast.splat1232, %446
  %448 = add <4 x i32> %447, <i32 3, i32 3, i32 3, i32 3>
  %449 = urem <4 x i32> %448, <i32 80, i32 80, i32 80, i32 80>
  %450 = sitofp <4 x i32> %449 to <4 x double>
  %451 = fmul fast <4 x double> %450, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %452 = extractelement <4 x i64> %445, i32 0
  %453 = shl i64 %452, 3
  %454 = add nuw nsw i64 %453, %443
  %455 = getelementptr i8, i8* %call, i64 %454
  %456 = bitcast i8* %455 to <4 x double>*
  store <4 x double> %451, <4 x double>* %456, align 8, !alias.scope !94, !noalias !96
  %index.next1226 = add i64 %index1225, 4
  %vec.ind.next1230 = add <4 x i64> %vec.ind1229, <i64 4, i64 4, i64 4, i64 4>
  %457 = icmp eq i64 %index.next1226, 32
  br i1 %457, label %polly.loop_exit789.1.2, label %vector.body1223, !llvm.loop !120

polly.loop_exit789.1.2:                           ; preds = %vector.body1223
  %polly.indvar_next785.1.2 = add nuw nsw i64 %polly.indvar784.1.2, 1
  %exitcond1041.1.2.not = icmp eq i64 %polly.indvar_next785.1.2, 16
  br i1 %exitcond1041.1.2.not, label %polly.loop_header781.2.2, label %polly.loop_header781.1.2

polly.loop_header781.2.2:                         ; preds = %polly.loop_exit789.1.2, %polly.loop_exit789.2.2
  %polly.indvar784.2.2 = phi i64 [ %polly.indvar_next785.2.2, %polly.loop_exit789.2.2 ], [ 0, %polly.loop_exit789.1.2 ]
  %458 = add nuw nsw i64 %polly.indvar784.2.2, 64
  %459 = mul nuw nsw i64 %458, 640
  %460 = trunc i64 %458 to i32
  %broadcast.splatinsert1243 = insertelement <4 x i32> poison, i32 %460, i32 0
  %broadcast.splat1244 = shufflevector <4 x i32> %broadcast.splatinsert1243, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1235

vector.body1235:                                  ; preds = %vector.body1235, %polly.loop_header781.2.2
  %index1237 = phi i64 [ 0, %polly.loop_header781.2.2 ], [ %index.next1238, %vector.body1235 ]
  %vec.ind1241 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header781.2.2 ], [ %vec.ind.next1242, %vector.body1235 ]
  %461 = add nuw nsw <4 x i64> %vec.ind1241, <i64 64, i64 64, i64 64, i64 64>
  %462 = trunc <4 x i64> %461 to <4 x i32>
  %463 = mul <4 x i32> %broadcast.splat1244, %462
  %464 = add <4 x i32> %463, <i32 3, i32 3, i32 3, i32 3>
  %465 = urem <4 x i32> %464, <i32 80, i32 80, i32 80, i32 80>
  %466 = sitofp <4 x i32> %465 to <4 x double>
  %467 = fmul fast <4 x double> %466, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %468 = extractelement <4 x i64> %461, i32 0
  %469 = shl i64 %468, 3
  %470 = add nuw nsw i64 %469, %459
  %471 = getelementptr i8, i8* %call, i64 %470
  %472 = bitcast i8* %471 to <4 x double>*
  store <4 x double> %467, <4 x double>* %472, align 8, !alias.scope !94, !noalias !96
  %index.next1238 = add i64 %index1237, 4
  %vec.ind.next1242 = add <4 x i64> %vec.ind1241, <i64 4, i64 4, i64 4, i64 4>
  %473 = icmp eq i64 %index.next1238, 16
  br i1 %473, label %polly.loop_exit789.2.2, label %vector.body1235, !llvm.loop !121

polly.loop_exit789.2.2:                           ; preds = %vector.body1235
  %polly.indvar_next785.2.2 = add nuw nsw i64 %polly.indvar784.2.2, 1
  %exitcond1041.2.2.not = icmp eq i64 %polly.indvar_next785.2.2, 16
  br i1 %exitcond1041.2.2.not, label %polly.loop_header808, label %polly.loop_header781.2.2
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
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 64}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 80}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40, !41, !42, !43}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.data.pack.enable", i1 true}
!42 = !{!"llvm.data.pack.array", !21}
!43 = !{!"llvm.data.pack.allocate", !"malloc"}
!44 = distinct !{!44, !12, !23, !45, !46, !47, !48, !49, !52}
!45 = !{!"llvm.loop.id", !"i"}
!46 = !{!"llvm.loop.tile.enable", i1 true}
!47 = !{!"llvm.loop.tile.depth", i32 3}
!48 = !{!"llvm.loop.tile.size", i32 32}
!49 = !{!"llvm.loop.tile.followup_floor", !50}
!50 = distinct !{!50, !12, !51}
!51 = !{!"llvm.loop.id", !"i1"}
!52 = !{!"llvm.loop.tile.followup_tile", !53}
!53 = distinct !{!53, !12, !54}
!54 = !{!"llvm.loop.id", !"i2"}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = !{!60, !60, i64 0}
!60 = !{!"any pointer", !4, i64 0}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !64, !"polly.alias.scope.MemRef_call"}
!64 = distinct !{!64, !"polly.alias.scope.domain"}
!65 = !{!66, !67, !68}
!66 = distinct !{!66, !64, !"polly.alias.scope.MemRef_call1"}
!67 = distinct !{!67, !64, !"polly.alias.scope.MemRef_call2"}
!68 = distinct !{!68, !64, !"polly.alias.scope.Packed_MemRef_call1"}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !71, !13}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!63, !67, !68}
!73 = !{!63, !66, !68}
!74 = distinct !{!74, !75, !"polly.alias.scope.MemRef_call"}
!75 = distinct !{!75, !"polly.alias.scope.domain"}
!76 = !{!77, !78, !79}
!77 = distinct !{!77, !75, !"polly.alias.scope.MemRef_call1"}
!78 = distinct !{!78, !75, !"polly.alias.scope.MemRef_call2"}
!79 = distinct !{!79, !75, !"polly.alias.scope.Packed_MemRef_call1"}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !71, !13}
!82 = !{!74, !78, !79}
!83 = !{!74, !77, !79}
!84 = distinct !{!84, !85, !"polly.alias.scope.MemRef_call"}
!85 = distinct !{!85, !"polly.alias.scope.domain"}
!86 = !{!87, !88, !89}
!87 = distinct !{!87, !85, !"polly.alias.scope.MemRef_call1"}
!88 = distinct !{!88, !85, !"polly.alias.scope.MemRef_call2"}
!89 = distinct !{!89, !85, !"polly.alias.scope.Packed_MemRef_call1"}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !71, !13}
!92 = !{!84, !88, !89}
!93 = !{!84, !87, !89}
!94 = distinct !{!94, !95, !"polly.alias.scope.MemRef_call"}
!95 = distinct !{!95, !"polly.alias.scope.domain"}
!96 = !{!97, !98}
!97 = distinct !{!97, !95, !"polly.alias.scope.MemRef_call1"}
!98 = distinct !{!98, !95, !"polly.alias.scope.MemRef_call2"}
!99 = distinct !{!99, !13}
!100 = !{!97, !94}
!101 = distinct !{!101, !13}
!102 = !{!98, !94}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !13}
!108 = distinct !{!108, !13}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !13}
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
