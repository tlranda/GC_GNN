; ModuleID = 'syr2k_recreations//mmp_syr2k_S_42.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_42.c"
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
  %call813 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1665 = bitcast i8* %call1 to double*
  %polly.access.call1674 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1674, %call2
  %polly.access.call2694 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2694, %call1
  %2 = or i1 %0, %1
  %polly.access.call714 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call714, %call2
  %4 = icmp ule i8* %polly.access.call2694, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call714, %call1
  %8 = icmp ule i8* %polly.access.call1674, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header799, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1156 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1155 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1154 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1153 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1153, %scevgep1156
  %bound1 = icmp ult i8* %scevgep1155, %scevgep1154
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
  br i1 %exitcond18.not.i, label %vector.ph1160, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1160:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1167 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1168 = shufflevector <4 x i64> %broadcast.splatinsert1167, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1159

vector.body1159:                                  ; preds = %vector.body1159, %vector.ph1160
  %index1161 = phi i64 [ 0, %vector.ph1160 ], [ %index.next1162, %vector.body1159 ]
  %vec.ind1165 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1160 ], [ %vec.ind.next1166, %vector.body1159 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1165, %broadcast.splat1168
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call813, i64 %indvars.iv7.i, i64 %index1161
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1162 = add i64 %index1161, 4
  %vec.ind.next1166 = add <4 x i64> %vec.ind1165, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1162, 80
  br i1 %40, label %for.inc41.i, label %vector.body1159, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1159
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1160, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit860.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start472, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1516, label %vector.ph1442

vector.ph1442:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1441

vector.body1441:                                  ; preds = %vector.body1441, %vector.ph1442
  %index1443 = phi i64 [ 0, %vector.ph1442 ], [ %index.next1444, %vector.body1441 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call813, i64 %indvars.iv21.i, i64 %index1443
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1444 = add i64 %index1443, 4
  %46 = icmp eq i64 %index.next1444, %n.vec
  br i1 %46, label %middle.block1439, label %vector.body1441, !llvm.loop !18

middle.block1439:                                 ; preds = %vector.body1441
  %cmp.n1446 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1446, label %for.inc6.i, label %for.body3.i46.preheader1516

for.body3.i46.preheader1516:                      ; preds = %for.body3.i46.preheader, %middle.block1439
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1439 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1516, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1516 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call813, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1439, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call813, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting473
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start281, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1462 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1462, label %for.body3.i60.preheader1514, label %vector.ph1463

vector.ph1463:                                    ; preds = %for.body3.i60.preheader
  %n.vec1465 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1461

vector.body1461:                                  ; preds = %vector.body1461, %vector.ph1463
  %index1466 = phi i64 [ 0, %vector.ph1463 ], [ %index.next1467, %vector.body1461 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call813, i64 %indvars.iv21.i52, i64 %index1466
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1470 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1470, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1467 = add i64 %index1466, 4
  %57 = icmp eq i64 %index.next1467, %n.vec1465
  br i1 %57, label %middle.block1459, label %vector.body1461, !llvm.loop !55

middle.block1459:                                 ; preds = %vector.body1461
  %cmp.n1469 = icmp eq i64 %indvars.iv21.i52, %n.vec1465
  br i1 %cmp.n1469, label %for.inc6.i63, label %for.body3.i60.preheader1514

for.body3.i60.preheader1514:                      ; preds = %for.body3.i60.preheader, %middle.block1459
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1465, %middle.block1459 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1514, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1514 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call813, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1459, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call813, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting282
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1488 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1488, label %for.body3.i99.preheader1512, label %vector.ph1489

vector.ph1489:                                    ; preds = %for.body3.i99.preheader
  %n.vec1491 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1487

vector.body1487:                                  ; preds = %vector.body1487, %vector.ph1489
  %index1492 = phi i64 [ 0, %vector.ph1489 ], [ %index.next1493, %vector.body1487 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call813, i64 %indvars.iv21.i91, i64 %index1492
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1496 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1496, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1493 = add i64 %index1492, 4
  %68 = icmp eq i64 %index.next1493, %n.vec1491
  br i1 %68, label %middle.block1485, label %vector.body1487, !llvm.loop !57

middle.block1485:                                 ; preds = %vector.body1487
  %cmp.n1495 = icmp eq i64 %indvars.iv21.i91, %n.vec1491
  br i1 %cmp.n1495, label %for.inc6.i102, label %for.body3.i99.preheader1512

for.body3.i99.preheader1512:                      ; preds = %for.body3.i99.preheader, %middle.block1485
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1491, %middle.block1485 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1512, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1512 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call813, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1485, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call813, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call813, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(10240) i8* @malloc(i64 10240) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1500 = phi i64 [ %indvar.next1501, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1500, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1502 = icmp ult i64 %88, 4
  br i1 %min.iters.check1502, label %polly.loop_header191.preheader, label %vector.ph1503

vector.ph1503:                                    ; preds = %polly.loop_header
  %n.vec1505 = and i64 %88, -4
  br label %vector.body1499

vector.body1499:                                  ; preds = %vector.body1499, %vector.ph1503
  %index1506 = phi i64 [ 0, %vector.ph1503 ], [ %index.next1507, %vector.body1499 ]
  %90 = shl nuw nsw i64 %index1506, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1510 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1510, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1507 = add i64 %index1506, 4
  %95 = icmp eq i64 %index.next1507, %n.vec1505
  br i1 %95, label %middle.block1497, label %vector.body1499, !llvm.loop !69

middle.block1497:                                 ; preds = %vector.body1499
  %cmp.n1509 = icmp eq i64 %88, %n.vec1505
  br i1 %cmp.n1509, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1497
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1505, %middle.block1497 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1497
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond999.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1501 = add i64 %indvar1500, 1
  br i1 %exitcond999.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond998.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond998.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv993 = phi i64 [ 4, %polly.loop_header199.preheader ], [ %indvars.iv.next994, %polly.loop_exit207 ]
  %indvars.iv979 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next980, %polly.loop_exit207 ]
  %indvars.iv975 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next976, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = lshr i64 %indvars.iv993, 4
  %98 = mul nsw i64 %polly.indvar202, -20
  %99 = mul nuw nsw i64 %polly.indvar202, 20
  %100 = icmp eq i64 %polly.indvar202, 3
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next976 = add nsw i64 %indvars.iv975, -20
  %indvars.iv.next980 = add nuw nsw i64 %indvars.iv979, 20
  %indvars.iv.next994 = add nuw nsw i64 %indvars.iv993, 5
  %exitcond997.not = icmp eq i64 %polly.indvar_next203, 4
  br i1 %exitcond997.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %smin991 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -44)
  %101 = add nsw i64 %smin991, 60
  %102 = shl nsw i64 %polly.indvar208, 4
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -16
  %exitcond996.not = icmp eq i64 %polly.indvar_next209, 4
  br i1 %exitcond996.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv981 = phi i64 [ %indvars.iv.next982, %polly.loop_exit219 ], [ %indvars.iv979, %polly.loop_header205 ]
  %indvars.iv977 = phi i64 [ %indvars.iv.next978, %polly.loop_exit219 ], [ %indvars.iv975, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %103 = shl nsw i64 %polly.indvar214, 6
  %104 = add nsw i64 %103, %98
  %105 = icmp sgt i64 %104, 0
  %106 = select i1 %105, i64 %104, i64 0
  %polly.loop_guard = icmp slt i64 %106, 20
  br i1 %polly.loop_guard, label %polly.loop_header217.preheader, label %polly.loop_exit219

polly.loop_header217.preheader:                   ; preds = %polly.loop_header211
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv977, i64 0)
  %107 = add i64 %smax, %indvars.iv981
  %108 = sub nsw i64 %99, %103
  %109 = icmp eq i64 %polly.indvar214, 0
  %110 = and i1 %100, %109
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit250, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next978 = add nsw i64 %indvars.iv977, 64
  %indvars.iv.next982 = add nsw i64 %indvars.iv981, -64
  %exitcond995.not = icmp eq i64 %polly.indvar214, %97
  br i1 %exitcond995.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217.preheader, %polly.loop_exit250
  %indvars.iv983 = phi i64 [ %107, %polly.loop_header217.preheader ], [ %indvars.iv.next984, %polly.loop_exit250 ]
  %polly.indvar220 = phi i64 [ %106, %polly.loop_header217.preheader ], [ %polly.indvar_next221, %polly.loop_exit250 ]
  %smin989 = call i64 @llvm.smin.i64(i64 %indvars.iv983, i64 63)
  %111 = add nsw i64 %polly.indvar220, %108
  %polly.loop_guard2331142 = icmp sgt i64 %111, -1
  %112 = icmp ugt i64 %polly.indvar220, 3
  %113 = and i1 %110, %112
  %114 = add nuw nsw i64 %polly.indvar220, 60
  %polly.access.mul.call1242 = mul nsw i64 %114, 60
  %115 = add nuw i64 %polly.access.mul.call1242, %102
  br i1 %polly.loop_guard2331142, label %polly.loop_header223.us, label %polly.loop_header217.split

polly.loop_header223.us:                          ; preds = %polly.loop_header217, %polly.merge.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.merge.us ], [ 0, %polly.loop_header217 ]
  %116 = add nuw nsw i64 %polly.indvar226.us, %102
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar226.us, 80
  br label %polly.loop_header230.us

polly.loop_header230.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header230.us
  %polly.indvar234.us = phi i64 [ %polly.indvar_next235.us, %polly.loop_header230.us ], [ 0, %polly.loop_header223.us ]
  %117 = add nuw nsw i64 %polly.indvar234.us, %103
  %polly.access.mul.call1238.us = mul nuw nsw i64 %117, 60
  %polly.access.add.call1239.us = add nuw nsw i64 %116, %polly.access.mul.call1238.us
  %polly.access.call1240.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1239.us
  %polly.access.call1240.load.us = load double, double* %polly.access.call1240.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar234.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1240.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next235.us = add nuw nsw i64 %polly.indvar234.us, 1
  %exitcond986.not = icmp eq i64 %polly.indvar234.us, %smin989
  br i1 %exitcond986.not, label %polly.cond.loopexit.us, label %polly.loop_header230.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1243.us = add nuw nsw i64 %115, %polly.indvar226.us
  %polly.access.call1244.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.us
  %polly.access.call1244.load.us = load double, double* %polly.access.call1244.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %114
  %polly.access.Packed_MemRef_call1247.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us
  store double %polly.access.call1244.load.us, double* %polly.access.Packed_MemRef_call1247.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond988.not = icmp eq i64 %polly.indvar_next227.us, %101
  br i1 %exitcond988.not, label %polly.loop_header248.preheader, label %polly.loop_header223.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header230.us
  br i1 %113, label %polly.then.us, label %polly.merge.us

polly.loop_header217.split:                       ; preds = %polly.loop_header217
  br i1 %113, label %polly.loop_header223.us884, label %polly.loop_exit250

polly.loop_header223.us884:                       ; preds = %polly.loop_header217.split, %polly.loop_header223.us884
  %polly.indvar226.us885 = phi i64 [ %polly.indvar_next227.us905, %polly.loop_header223.us884 ], [ 0, %polly.loop_header217.split ]
  %polly.access.add.call1243.us898 = add nuw nsw i64 %115, %polly.indvar226.us885
  %polly.access.call1244.us899 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.us898
  %polly.access.call1244.load.us900 = load double, double* %polly.access.call1244.us899, align 8, !alias.scope !66, !noalias !72
  %polly.access.mul.Packed_MemRef_call1245.us901 = mul nuw nsw i64 %polly.indvar226.us885, 80
  %polly.access.add.Packed_MemRef_call1246.us902 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1245.us901, %114
  %polly.access.Packed_MemRef_call1247.us903 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us902
  store double %polly.access.call1244.load.us900, double* %polly.access.Packed_MemRef_call1247.us903, align 8
  %polly.indvar_next227.us905 = add nuw nsw i64 %polly.indvar226.us885, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next227.us905, %101
  br i1 %exitcond.not, label %polly.loop_header248.preheader, label %polly.loop_header223.us884

polly.loop_exit250:                               ; preds = %polly.loop_exit257.loopexit.us, %polly.loop_header217.split, %polly.loop_header248.preheader
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %polly.loop_cond222 = icmp ult i64 %polly.indvar220, 19
  %indvars.iv.next984 = add i64 %indvars.iv983, 1
  br i1 %polly.loop_cond222, label %polly.loop_header217, label %polly.loop_exit219

polly.loop_header248.preheader:                   ; preds = %polly.loop_header223.us884, %polly.merge.us
  %118 = add nuw nsw i64 %polly.indvar220, %99
  %119 = mul i64 %118, 480
  %120 = mul i64 %118, 640
  br i1 %polly.loop_guard2331142, label %polly.loop_header248.us, label %polly.loop_exit250

polly.loop_header248.us:                          ; preds = %polly.loop_header248.preheader, %polly.loop_exit257.loopexit.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_exit257.loopexit.us ], [ 0, %polly.loop_header248.preheader ]
  %121 = add nuw nsw i64 %polly.indvar251.us, %102
  %polly.access.mul.Packed_MemRef_call1262.us = mul nuw nsw i64 %polly.indvar251.us, 80
  %122 = shl i64 %121, 3
  %123 = add i64 %122, %119
  %scevgep266.us = getelementptr i8, i8* %call2, i64 %123
  %scevgep266267.us = bitcast i8* %scevgep266.us to double*
  %_p_scalar_268.us = load double, double* %scevgep266267.us, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1273.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1262.us, %111
  %polly.access.Packed_MemRef_call1274.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1273.us
  %_p_scalar_275.us = load double, double* %polly.access.Packed_MemRef_call1274.us, align 8
  br label %polly.loop_header255.us

polly.loop_header255.us:                          ; preds = %polly.loop_header248.us, %polly.loop_header255.us
  %polly.indvar259.us = phi i64 [ %polly.indvar_next260.us, %polly.loop_header255.us ], [ 0, %polly.loop_header248.us ]
  %124 = add nuw nsw i64 %polly.indvar259.us, %103
  %polly.access.add.Packed_MemRef_call1263.us = add nuw nsw i64 %polly.indvar259.us, %polly.access.mul.Packed_MemRef_call1262.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  %_p_scalar_265.us = load double, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_268.us, %_p_scalar_265.us
  %125 = mul nuw nsw i64 %124, 480
  %126 = add nuw nsw i64 %125, %122
  %scevgep269.us = getelementptr i8, i8* %call2, i64 %126
  %scevgep269270.us = bitcast i8* %scevgep269.us to double*
  %_p_scalar_271.us = load double, double* %scevgep269270.us, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us = fmul fast double %_p_scalar_275.us, %_p_scalar_271.us
  %127 = shl i64 %124, 3
  %128 = add i64 %127, %120
  %scevgep276.us = getelementptr i8, i8* %call, i64 %128
  %scevgep276277.us = bitcast i8* %scevgep276.us to double*
  %_p_scalar_278.us = load double, double* %scevgep276277.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_278.us
  store double %p_add42.i118.us, double* %scevgep276277.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next260.us = add nuw nsw i64 %polly.indvar259.us, 1
  %exitcond990.not = icmp eq i64 %polly.indvar259.us, %smin989
  br i1 %exitcond990.not, label %polly.loop_exit257.loopexit.us, label %polly.loop_header255.us

polly.loop_exit257.loopexit.us:                   ; preds = %polly.loop_header255.us
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond992.not = icmp eq i64 %polly.indvar_next252.us, %101
  br i1 %exitcond992.not, label %polly.loop_exit250, label %polly.loop_header248.us

polly.start281:                                   ; preds = %kernel_syr2k.exit
  %malloccall283 = tail call dereferenceable_or_null(10240) i8* @malloc(i64 10240) #6
  br label %polly.loop_header367

polly.exiting282:                                 ; preds = %polly.loop_exit391
  tail call void @free(i8* %malloccall283)
  br label %kernel_syr2k.exit90

polly.loop_header367:                             ; preds = %polly.loop_exit375, %polly.start281
  %indvar1474 = phi i64 [ %indvar.next1475, %polly.loop_exit375 ], [ 0, %polly.start281 ]
  %polly.indvar370 = phi i64 [ %polly.indvar_next371, %polly.loop_exit375 ], [ 1, %polly.start281 ]
  %129 = add i64 %indvar1474, 1
  %130 = mul nuw nsw i64 %polly.indvar370, 640
  %scevgep379 = getelementptr i8, i8* %call, i64 %130
  %min.iters.check1476 = icmp ult i64 %129, 4
  br i1 %min.iters.check1476, label %polly.loop_header373.preheader, label %vector.ph1477

vector.ph1477:                                    ; preds = %polly.loop_header367
  %n.vec1479 = and i64 %129, -4
  br label %vector.body1473

vector.body1473:                                  ; preds = %vector.body1473, %vector.ph1477
  %index1480 = phi i64 [ 0, %vector.ph1477 ], [ %index.next1481, %vector.body1473 ]
  %131 = shl nuw nsw i64 %index1480, 3
  %132 = getelementptr i8, i8* %scevgep379, i64 %131
  %133 = bitcast i8* %132 to <4 x double>*
  %wide.load1484 = load <4 x double>, <4 x double>* %133, align 8, !alias.scope !74, !noalias !76
  %134 = fmul fast <4 x double> %wide.load1484, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %135 = bitcast i8* %132 to <4 x double>*
  store <4 x double> %134, <4 x double>* %135, align 8, !alias.scope !74, !noalias !76
  %index.next1481 = add i64 %index1480, 4
  %136 = icmp eq i64 %index.next1481, %n.vec1479
  br i1 %136, label %middle.block1471, label %vector.body1473, !llvm.loop !80

middle.block1471:                                 ; preds = %vector.body1473
  %cmp.n1483 = icmp eq i64 %129, %n.vec1479
  br i1 %cmp.n1483, label %polly.loop_exit375, label %polly.loop_header373.preheader

polly.loop_header373.preheader:                   ; preds = %polly.loop_header367, %middle.block1471
  %polly.indvar376.ph = phi i64 [ 0, %polly.loop_header367 ], [ %n.vec1479, %middle.block1471 ]
  br label %polly.loop_header373

polly.loop_exit375:                               ; preds = %polly.loop_header373, %middle.block1471
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %exitcond1029.not = icmp eq i64 %polly.indvar_next371, 80
  %indvar.next1475 = add i64 %indvar1474, 1
  br i1 %exitcond1029.not, label %polly.loop_header383.preheader, label %polly.loop_header367

polly.loop_header383.preheader:                   ; preds = %polly.loop_exit375
  %Packed_MemRef_call1284 = bitcast i8* %malloccall283 to double*
  br label %polly.loop_header383

polly.loop_header373:                             ; preds = %polly.loop_header373.preheader, %polly.loop_header373
  %polly.indvar376 = phi i64 [ %polly.indvar_next377, %polly.loop_header373 ], [ %polly.indvar376.ph, %polly.loop_header373.preheader ]
  %137 = shl nuw nsw i64 %polly.indvar376, 3
  %scevgep380 = getelementptr i8, i8* %scevgep379, i64 %137
  %scevgep380381 = bitcast i8* %scevgep380 to double*
  %_p_scalar_382 = load double, double* %scevgep380381, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_382, 1.200000e+00
  store double %p_mul.i57, double* %scevgep380381, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond1028.not = icmp eq i64 %polly.indvar_next377, %polly.indvar370
  br i1 %exitcond1028.not, label %polly.loop_exit375, label %polly.loop_header373, !llvm.loop !81

polly.loop_header383:                             ; preds = %polly.loop_header383.preheader, %polly.loop_exit391
  %indvars.iv1023 = phi i64 [ 4, %polly.loop_header383.preheader ], [ %indvars.iv.next1024, %polly.loop_exit391 ]
  %indvars.iv1009 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %indvars.iv.next1010, %polly.loop_exit391 ]
  %indvars.iv1004 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %indvars.iv.next1005, %polly.loop_exit391 ]
  %polly.indvar386 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %polly.indvar_next387, %polly.loop_exit391 ]
  %138 = lshr i64 %indvars.iv1023, 4
  %139 = mul nsw i64 %polly.indvar386, -20
  %140 = mul nuw nsw i64 %polly.indvar386, 20
  %141 = icmp eq i64 %polly.indvar386, 3
  br label %polly.loop_header389

polly.loop_exit391:                               ; preds = %polly.loop_exit398
  %polly.indvar_next387 = add nuw nsw i64 %polly.indvar386, 1
  %indvars.iv.next1005 = add nsw i64 %indvars.iv1004, -20
  %indvars.iv.next1010 = add nuw nsw i64 %indvars.iv1009, 20
  %indvars.iv.next1024 = add nuw nsw i64 %indvars.iv1023, 5
  %exitcond1027.not = icmp eq i64 %polly.indvar_next387, 4
  br i1 %exitcond1027.not, label %polly.exiting282, label %polly.loop_header383

polly.loop_header389:                             ; preds = %polly.loop_exit398, %polly.loop_header383
  %indvars.iv1000 = phi i64 [ %indvars.iv.next1001, %polly.loop_exit398 ], [ 0, %polly.loop_header383 ]
  %polly.indvar392 = phi i64 [ %polly.indvar_next393, %polly.loop_exit398 ], [ 0, %polly.loop_header383 ]
  %smin1021 = call i64 @llvm.smin.i64(i64 %indvars.iv1000, i64 -44)
  %142 = add nsw i64 %smin1021, 60
  %143 = shl nsw i64 %polly.indvar392, 4
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_exit405
  %polly.indvar_next393 = add nuw nsw i64 %polly.indvar392, 1
  %indvars.iv.next1001 = add nsw i64 %indvars.iv1000, -16
  %exitcond1026.not = icmp eq i64 %polly.indvar_next393, 4
  br i1 %exitcond1026.not, label %polly.loop_exit391, label %polly.loop_header389

polly.loop_header396:                             ; preds = %polly.loop_exit405, %polly.loop_header389
  %indvars.iv1011 = phi i64 [ %indvars.iv.next1012, %polly.loop_exit405 ], [ %indvars.iv1009, %polly.loop_header389 ]
  %indvars.iv1006 = phi i64 [ %indvars.iv.next1007, %polly.loop_exit405 ], [ %indvars.iv1004, %polly.loop_header389 ]
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit405 ], [ 0, %polly.loop_header389 ]
  %144 = shl nsw i64 %polly.indvar399, 6
  %145 = add nsw i64 %144, %139
  %146 = icmp sgt i64 %145, 0
  %147 = select i1 %146, i64 %145, i64 0
  %polly.loop_guard406 = icmp slt i64 %147, 20
  br i1 %polly.loop_guard406, label %polly.loop_header403.preheader, label %polly.loop_exit405

polly.loop_header403.preheader:                   ; preds = %polly.loop_header396
  %smax1008 = call i64 @llvm.smax.i64(i64 %indvars.iv1006, i64 0)
  %148 = add i64 %smax1008, %indvars.iv1011
  %149 = sub nsw i64 %140, %144
  %150 = icmp eq i64 %polly.indvar399, 0
  %151 = and i1 %141, %150
  br label %polly.loop_header403

polly.loop_exit405:                               ; preds = %polly.loop_exit441, %polly.loop_header396
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %indvars.iv.next1007 = add nsw i64 %indvars.iv1006, 64
  %indvars.iv.next1012 = add nsw i64 %indvars.iv1011, -64
  %exitcond1025.not = icmp eq i64 %polly.indvar399, %138
  br i1 %exitcond1025.not, label %polly.loop_exit398, label %polly.loop_header396

polly.loop_header403:                             ; preds = %polly.loop_header403.preheader, %polly.loop_exit441
  %indvars.iv1013 = phi i64 [ %148, %polly.loop_header403.preheader ], [ %indvars.iv.next1014, %polly.loop_exit441 ]
  %polly.indvar407 = phi i64 [ %147, %polly.loop_header403.preheader ], [ %polly.indvar_next408, %polly.loop_exit441 ]
  %smin1019 = call i64 @llvm.smin.i64(i64 %indvars.iv1013, i64 63)
  %152 = add nsw i64 %polly.indvar407, %149
  %polly.loop_guard4201143 = icmp sgt i64 %152, -1
  %153 = icmp ugt i64 %polly.indvar407, 3
  %154 = and i1 %151, %153
  %155 = add nuw nsw i64 %polly.indvar407, 60
  %polly.access.mul.call1433 = mul nsw i64 %155, 60
  %156 = add nuw i64 %polly.access.mul.call1433, %143
  br i1 %polly.loop_guard4201143, label %polly.loop_header410.us, label %polly.loop_header403.split

polly.loop_header410.us:                          ; preds = %polly.loop_header403, %polly.merge429.us
  %polly.indvar413.us = phi i64 [ %polly.indvar_next414.us, %polly.merge429.us ], [ 0, %polly.loop_header403 ]
  %157 = add nuw nsw i64 %polly.indvar413.us, %143
  %polly.access.mul.Packed_MemRef_call1284.us = mul nuw nsw i64 %polly.indvar413.us, 80
  br label %polly.loop_header417.us

polly.loop_header417.us:                          ; preds = %polly.loop_header410.us, %polly.loop_header417.us
  %polly.indvar421.us = phi i64 [ %polly.indvar_next422.us, %polly.loop_header417.us ], [ 0, %polly.loop_header410.us ]
  %158 = add nuw nsw i64 %polly.indvar421.us, %144
  %polly.access.mul.call1425.us = mul nuw nsw i64 %158, 60
  %polly.access.add.call1426.us = add nuw nsw i64 %157, %polly.access.mul.call1425.us
  %polly.access.call1427.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1426.us
  %polly.access.call1427.load.us = load double, double* %polly.access.call1427.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284.us = add nuw nsw i64 %polly.indvar421.us, %polly.access.mul.Packed_MemRef_call1284.us
  %polly.access.Packed_MemRef_call1284.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284.us
  store double %polly.access.call1427.load.us, double* %polly.access.Packed_MemRef_call1284.us, align 8
  %polly.indvar_next422.us = add nuw nsw i64 %polly.indvar421.us, 1
  %exitcond1016.not = icmp eq i64 %polly.indvar421.us, %smin1019
  br i1 %exitcond1016.not, label %polly.cond428.loopexit.us, label %polly.loop_header417.us

polly.then430.us:                                 ; preds = %polly.cond428.loopexit.us
  %polly.access.add.call1434.us = add nuw nsw i64 %156, %polly.indvar413.us
  %polly.access.call1435.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.us
  %polly.access.call1435.load.us = load double, double* %polly.access.call1435.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1284.us, %155
  %polly.access.Packed_MemRef_call1284438.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.us
  store double %polly.access.call1435.load.us, double* %polly.access.Packed_MemRef_call1284438.us, align 8
  br label %polly.merge429.us

polly.merge429.us:                                ; preds = %polly.then430.us, %polly.cond428.loopexit.us
  %polly.indvar_next414.us = add nuw nsw i64 %polly.indvar413.us, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar_next414.us, %142
  br i1 %exitcond1018.not, label %polly.loop_header439.preheader, label %polly.loop_header410.us

polly.cond428.loopexit.us:                        ; preds = %polly.loop_header417.us
  br i1 %154, label %polly.then430.us, label %polly.merge429.us

polly.loop_header403.split:                       ; preds = %polly.loop_header403
  br i1 %154, label %polly.loop_header410.us910, label %polly.loop_exit441

polly.loop_header410.us910:                       ; preds = %polly.loop_header403.split, %polly.loop_header410.us910
  %polly.indvar413.us911 = phi i64 [ %polly.indvar_next414.us931, %polly.loop_header410.us910 ], [ 0, %polly.loop_header403.split ]
  %polly.access.add.call1434.us924 = add nuw nsw i64 %156, %polly.indvar413.us911
  %polly.access.call1435.us925 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.us924
  %polly.access.call1435.load.us926 = load double, double* %polly.access.call1435.us925, align 8, !alias.scope !77, !noalias !82
  %polly.access.mul.Packed_MemRef_call1284436.us927 = mul nuw nsw i64 %polly.indvar413.us911, 80
  %polly.access.add.Packed_MemRef_call1284437.us928 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1284436.us927, %155
  %polly.access.Packed_MemRef_call1284438.us929 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.us928
  store double %polly.access.call1435.load.us926, double* %polly.access.Packed_MemRef_call1284438.us929, align 8
  %polly.indvar_next414.us931 = add nuw nsw i64 %polly.indvar413.us911, 1
  %exitcond1003.not = icmp eq i64 %polly.indvar_next414.us931, %142
  br i1 %exitcond1003.not, label %polly.loop_header439.preheader, label %polly.loop_header410.us910

polly.loop_exit441:                               ; preds = %polly.loop_exit448.loopexit.us, %polly.loop_header403.split, %polly.loop_header439.preheader
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %polly.loop_cond409 = icmp ult i64 %polly.indvar407, 19
  %indvars.iv.next1014 = add i64 %indvars.iv1013, 1
  br i1 %polly.loop_cond409, label %polly.loop_header403, label %polly.loop_exit405

polly.loop_header439.preheader:                   ; preds = %polly.loop_header410.us910, %polly.merge429.us
  %159 = add nuw nsw i64 %polly.indvar407, %140
  %160 = mul i64 %159, 480
  %161 = mul i64 %159, 640
  br i1 %polly.loop_guard4201143, label %polly.loop_header439.us, label %polly.loop_exit441

polly.loop_header439.us:                          ; preds = %polly.loop_header439.preheader, %polly.loop_exit448.loopexit.us
  %polly.indvar442.us = phi i64 [ %polly.indvar_next443.us, %polly.loop_exit448.loopexit.us ], [ 0, %polly.loop_header439.preheader ]
  %162 = add nuw nsw i64 %polly.indvar442.us, %143
  %polly.access.mul.Packed_MemRef_call1284453.us = mul nuw nsw i64 %polly.indvar442.us, 80
  %163 = shl i64 %162, 3
  %164 = add i64 %163, %160
  %scevgep457.us = getelementptr i8, i8* %call2, i64 %164
  %scevgep457458.us = bitcast i8* %scevgep457.us to double*
  %_p_scalar_459.us = load double, double* %scevgep457458.us, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1284464.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1284453.us, %152
  %polly.access.Packed_MemRef_call1284465.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284464.us
  %_p_scalar_466.us = load double, double* %polly.access.Packed_MemRef_call1284465.us, align 8
  br label %polly.loop_header446.us

polly.loop_header446.us:                          ; preds = %polly.loop_header439.us, %polly.loop_header446.us
  %polly.indvar450.us = phi i64 [ %polly.indvar_next451.us, %polly.loop_header446.us ], [ 0, %polly.loop_header439.us ]
  %165 = add nuw nsw i64 %polly.indvar450.us, %144
  %polly.access.add.Packed_MemRef_call1284454.us = add nuw nsw i64 %polly.indvar450.us, %polly.access.mul.Packed_MemRef_call1284453.us
  %polly.access.Packed_MemRef_call1284455.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284454.us
  %_p_scalar_456.us = load double, double* %polly.access.Packed_MemRef_call1284455.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_459.us, %_p_scalar_456.us
  %166 = mul nuw nsw i64 %165, 480
  %167 = add nuw nsw i64 %166, %163
  %scevgep460.us = getelementptr i8, i8* %call2, i64 %167
  %scevgep460461.us = bitcast i8* %scevgep460.us to double*
  %_p_scalar_462.us = load double, double* %scevgep460461.us, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us = fmul fast double %_p_scalar_466.us, %_p_scalar_462.us
  %168 = shl i64 %165, 3
  %169 = add i64 %168, %161
  %scevgep467.us = getelementptr i8, i8* %call, i64 %169
  %scevgep467468.us = bitcast i8* %scevgep467.us to double*
  %_p_scalar_469.us = load double, double* %scevgep467468.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_469.us
  store double %p_add42.i79.us, double* %scevgep467468.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next451.us = add nuw nsw i64 %polly.indvar450.us, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar450.us, %smin1019
  br i1 %exitcond1020.not, label %polly.loop_exit448.loopexit.us, label %polly.loop_header446.us

polly.loop_exit448.loopexit.us:                   ; preds = %polly.loop_header446.us
  %polly.indvar_next443.us = add nuw nsw i64 %polly.indvar442.us, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar_next443.us, %142
  br i1 %exitcond1022.not, label %polly.loop_exit441, label %polly.loop_header439.us

polly.start472:                                   ; preds = %init_array.exit
  %malloccall474 = tail call dereferenceable_or_null(10240) i8* @malloc(i64 10240) #6
  br label %polly.loop_header558

polly.exiting473:                                 ; preds = %polly.loop_exit582
  tail call void @free(i8* %malloccall474)
  br label %kernel_syr2k.exit

polly.loop_header558:                             ; preds = %polly.loop_exit566, %polly.start472
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit566 ], [ 0, %polly.start472 ]
  %polly.indvar561 = phi i64 [ %polly.indvar_next562, %polly.loop_exit566 ], [ 1, %polly.start472 ]
  %170 = add i64 %indvar, 1
  %171 = mul nuw nsw i64 %polly.indvar561, 640
  %scevgep570 = getelementptr i8, i8* %call, i64 %171
  %min.iters.check1450 = icmp ult i64 %170, 4
  br i1 %min.iters.check1450, label %polly.loop_header564.preheader, label %vector.ph1451

vector.ph1451:                                    ; preds = %polly.loop_header558
  %n.vec1453 = and i64 %170, -4
  br label %vector.body1449

vector.body1449:                                  ; preds = %vector.body1449, %vector.ph1451
  %index1454 = phi i64 [ 0, %vector.ph1451 ], [ %index.next1455, %vector.body1449 ]
  %172 = shl nuw nsw i64 %index1454, 3
  %173 = getelementptr i8, i8* %scevgep570, i64 %172
  %174 = bitcast i8* %173 to <4 x double>*
  %wide.load1458 = load <4 x double>, <4 x double>* %174, align 8, !alias.scope !84, !noalias !86
  %175 = fmul fast <4 x double> %wide.load1458, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %176 = bitcast i8* %173 to <4 x double>*
  store <4 x double> %175, <4 x double>* %176, align 8, !alias.scope !84, !noalias !86
  %index.next1455 = add i64 %index1454, 4
  %177 = icmp eq i64 %index.next1455, %n.vec1453
  br i1 %177, label %middle.block1447, label %vector.body1449, !llvm.loop !90

middle.block1447:                                 ; preds = %vector.body1449
  %cmp.n1457 = icmp eq i64 %170, %n.vec1453
  br i1 %cmp.n1457, label %polly.loop_exit566, label %polly.loop_header564.preheader

polly.loop_header564.preheader:                   ; preds = %polly.loop_header558, %middle.block1447
  %polly.indvar567.ph = phi i64 [ 0, %polly.loop_header558 ], [ %n.vec1453, %middle.block1447 ]
  br label %polly.loop_header564

polly.loop_exit566:                               ; preds = %polly.loop_header564, %middle.block1447
  %polly.indvar_next562 = add nuw nsw i64 %polly.indvar561, 1
  %exitcond1059.not = icmp eq i64 %polly.indvar_next562, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1059.not, label %polly.loop_header574.preheader, label %polly.loop_header558

polly.loop_header574.preheader:                   ; preds = %polly.loop_exit566
  %Packed_MemRef_call1475 = bitcast i8* %malloccall474 to double*
  br label %polly.loop_header574

polly.loop_header564:                             ; preds = %polly.loop_header564.preheader, %polly.loop_header564
  %polly.indvar567 = phi i64 [ %polly.indvar_next568, %polly.loop_header564 ], [ %polly.indvar567.ph, %polly.loop_header564.preheader ]
  %178 = shl nuw nsw i64 %polly.indvar567, 3
  %scevgep571 = getelementptr i8, i8* %scevgep570, i64 %178
  %scevgep571572 = bitcast i8* %scevgep571 to double*
  %_p_scalar_573 = load double, double* %scevgep571572, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_573, 1.200000e+00
  store double %p_mul.i, double* %scevgep571572, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next568 = add nuw nsw i64 %polly.indvar567, 1
  %exitcond1058.not = icmp eq i64 %polly.indvar_next568, %polly.indvar561
  br i1 %exitcond1058.not, label %polly.loop_exit566, label %polly.loop_header564, !llvm.loop !91

polly.loop_header574:                             ; preds = %polly.loop_header574.preheader, %polly.loop_exit582
  %indvars.iv1053 = phi i64 [ 4, %polly.loop_header574.preheader ], [ %indvars.iv.next1054, %polly.loop_exit582 ]
  %indvars.iv1039 = phi i64 [ 0, %polly.loop_header574.preheader ], [ %indvars.iv.next1040, %polly.loop_exit582 ]
  %indvars.iv1034 = phi i64 [ 0, %polly.loop_header574.preheader ], [ %indvars.iv.next1035, %polly.loop_exit582 ]
  %polly.indvar577 = phi i64 [ 0, %polly.loop_header574.preheader ], [ %polly.indvar_next578, %polly.loop_exit582 ]
  %179 = lshr i64 %indvars.iv1053, 4
  %180 = mul nsw i64 %polly.indvar577, -20
  %181 = mul nuw nsw i64 %polly.indvar577, 20
  %182 = icmp eq i64 %polly.indvar577, 3
  br label %polly.loop_header580

polly.loop_exit582:                               ; preds = %polly.loop_exit589
  %polly.indvar_next578 = add nuw nsw i64 %polly.indvar577, 1
  %indvars.iv.next1035 = add nsw i64 %indvars.iv1034, -20
  %indvars.iv.next1040 = add nuw nsw i64 %indvars.iv1039, 20
  %indvars.iv.next1054 = add nuw nsw i64 %indvars.iv1053, 5
  %exitcond1057.not = icmp eq i64 %polly.indvar_next578, 4
  br i1 %exitcond1057.not, label %polly.exiting473, label %polly.loop_header574

polly.loop_header580:                             ; preds = %polly.loop_exit589, %polly.loop_header574
  %indvars.iv1030 = phi i64 [ %indvars.iv.next1031, %polly.loop_exit589 ], [ 0, %polly.loop_header574 ]
  %polly.indvar583 = phi i64 [ %polly.indvar_next584, %polly.loop_exit589 ], [ 0, %polly.loop_header574 ]
  %smin1051 = call i64 @llvm.smin.i64(i64 %indvars.iv1030, i64 -44)
  %183 = add nsw i64 %smin1051, 60
  %184 = shl nsw i64 %polly.indvar583, 4
  br label %polly.loop_header587

polly.loop_exit589:                               ; preds = %polly.loop_exit596
  %polly.indvar_next584 = add nuw nsw i64 %polly.indvar583, 1
  %indvars.iv.next1031 = add nsw i64 %indvars.iv1030, -16
  %exitcond1056.not = icmp eq i64 %polly.indvar_next584, 4
  br i1 %exitcond1056.not, label %polly.loop_exit582, label %polly.loop_header580

polly.loop_header587:                             ; preds = %polly.loop_exit596, %polly.loop_header580
  %indvars.iv1041 = phi i64 [ %indvars.iv.next1042, %polly.loop_exit596 ], [ %indvars.iv1039, %polly.loop_header580 ]
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit596 ], [ %indvars.iv1034, %polly.loop_header580 ]
  %polly.indvar590 = phi i64 [ %polly.indvar_next591, %polly.loop_exit596 ], [ 0, %polly.loop_header580 ]
  %185 = shl nsw i64 %polly.indvar590, 6
  %186 = add nsw i64 %185, %180
  %187 = icmp sgt i64 %186, 0
  %188 = select i1 %187, i64 %186, i64 0
  %polly.loop_guard597 = icmp slt i64 %188, 20
  br i1 %polly.loop_guard597, label %polly.loop_header594.preheader, label %polly.loop_exit596

polly.loop_header594.preheader:                   ; preds = %polly.loop_header587
  %smax1038 = call i64 @llvm.smax.i64(i64 %indvars.iv1036, i64 0)
  %189 = add i64 %smax1038, %indvars.iv1041
  %190 = sub nsw i64 %181, %185
  %191 = icmp eq i64 %polly.indvar590, 0
  %192 = and i1 %182, %191
  br label %polly.loop_header594

polly.loop_exit596:                               ; preds = %polly.loop_exit632, %polly.loop_header587
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, 64
  %indvars.iv.next1042 = add nsw i64 %indvars.iv1041, -64
  %exitcond1055.not = icmp eq i64 %polly.indvar590, %179
  br i1 %exitcond1055.not, label %polly.loop_exit589, label %polly.loop_header587

polly.loop_header594:                             ; preds = %polly.loop_header594.preheader, %polly.loop_exit632
  %indvars.iv1043 = phi i64 [ %189, %polly.loop_header594.preheader ], [ %indvars.iv.next1044, %polly.loop_exit632 ]
  %polly.indvar598 = phi i64 [ %188, %polly.loop_header594.preheader ], [ %polly.indvar_next599, %polly.loop_exit632 ]
  %smin1049 = call i64 @llvm.smin.i64(i64 %indvars.iv1043, i64 63)
  %193 = add nsw i64 %polly.indvar598, %190
  %polly.loop_guard6111144 = icmp sgt i64 %193, -1
  %194 = icmp ugt i64 %polly.indvar598, 3
  %195 = and i1 %192, %194
  %196 = add nuw nsw i64 %polly.indvar598, 60
  %polly.access.mul.call1624 = mul nsw i64 %196, 60
  %197 = add nuw i64 %polly.access.mul.call1624, %184
  br i1 %polly.loop_guard6111144, label %polly.loop_header601.us, label %polly.loop_header594.split

polly.loop_header601.us:                          ; preds = %polly.loop_header594, %polly.merge620.us
  %polly.indvar604.us = phi i64 [ %polly.indvar_next605.us, %polly.merge620.us ], [ 0, %polly.loop_header594 ]
  %198 = add nuw nsw i64 %polly.indvar604.us, %184
  %polly.access.mul.Packed_MemRef_call1475.us = mul nuw nsw i64 %polly.indvar604.us, 80
  br label %polly.loop_header608.us

polly.loop_header608.us:                          ; preds = %polly.loop_header601.us, %polly.loop_header608.us
  %polly.indvar612.us = phi i64 [ %polly.indvar_next613.us, %polly.loop_header608.us ], [ 0, %polly.loop_header601.us ]
  %199 = add nuw nsw i64 %polly.indvar612.us, %185
  %polly.access.mul.call1616.us = mul nuw nsw i64 %199, 60
  %polly.access.add.call1617.us = add nuw nsw i64 %198, %polly.access.mul.call1616.us
  %polly.access.call1618.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1617.us
  %polly.access.call1618.load.us = load double, double* %polly.access.call1618.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475.us = add nuw nsw i64 %polly.indvar612.us, %polly.access.mul.Packed_MemRef_call1475.us
  %polly.access.Packed_MemRef_call1475.us = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475.us
  store double %polly.access.call1618.load.us, double* %polly.access.Packed_MemRef_call1475.us, align 8
  %polly.indvar_next613.us = add nuw nsw i64 %polly.indvar612.us, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar612.us, %smin1049
  br i1 %exitcond1046.not, label %polly.cond619.loopexit.us, label %polly.loop_header608.us

polly.then621.us:                                 ; preds = %polly.cond619.loopexit.us
  %polly.access.add.call1625.us = add nuw nsw i64 %197, %polly.indvar604.us
  %polly.access.call1626.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.us
  %polly.access.call1626.load.us = load double, double* %polly.access.call1626.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1475.us, %196
  %polly.access.Packed_MemRef_call1475629.us = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.us
  store double %polly.access.call1626.load.us, double* %polly.access.Packed_MemRef_call1475629.us, align 8
  br label %polly.merge620.us

polly.merge620.us:                                ; preds = %polly.then621.us, %polly.cond619.loopexit.us
  %polly.indvar_next605.us = add nuw nsw i64 %polly.indvar604.us, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar_next605.us, %183
  br i1 %exitcond1048.not, label %polly.loop_header630.preheader, label %polly.loop_header601.us

polly.cond619.loopexit.us:                        ; preds = %polly.loop_header608.us
  br i1 %195, label %polly.then621.us, label %polly.merge620.us

polly.loop_header594.split:                       ; preds = %polly.loop_header594
  br i1 %195, label %polly.loop_header601.us936, label %polly.loop_exit632

polly.loop_header601.us936:                       ; preds = %polly.loop_header594.split, %polly.loop_header601.us936
  %polly.indvar604.us937 = phi i64 [ %polly.indvar_next605.us957, %polly.loop_header601.us936 ], [ 0, %polly.loop_header594.split ]
  %polly.access.add.call1625.us950 = add nuw nsw i64 %197, %polly.indvar604.us937
  %polly.access.call1626.us951 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.us950
  %polly.access.call1626.load.us952 = load double, double* %polly.access.call1626.us951, align 8, !alias.scope !87, !noalias !92
  %polly.access.mul.Packed_MemRef_call1475627.us953 = mul nuw nsw i64 %polly.indvar604.us937, 80
  %polly.access.add.Packed_MemRef_call1475628.us954 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1475627.us953, %196
  %polly.access.Packed_MemRef_call1475629.us955 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.us954
  store double %polly.access.call1626.load.us952, double* %polly.access.Packed_MemRef_call1475629.us955, align 8
  %polly.indvar_next605.us957 = add nuw nsw i64 %polly.indvar604.us937, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar_next605.us957, %183
  br i1 %exitcond1033.not, label %polly.loop_header630.preheader, label %polly.loop_header601.us936

polly.loop_exit632:                               ; preds = %polly.loop_exit639.loopexit.us, %polly.loop_header594.split, %polly.loop_header630.preheader
  %polly.indvar_next599 = add nuw nsw i64 %polly.indvar598, 1
  %polly.loop_cond600 = icmp ult i64 %polly.indvar598, 19
  %indvars.iv.next1044 = add i64 %indvars.iv1043, 1
  br i1 %polly.loop_cond600, label %polly.loop_header594, label %polly.loop_exit596

polly.loop_header630.preheader:                   ; preds = %polly.loop_header601.us936, %polly.merge620.us
  %200 = add nuw nsw i64 %polly.indvar598, %181
  %201 = mul i64 %200, 480
  %202 = mul i64 %200, 640
  br i1 %polly.loop_guard6111144, label %polly.loop_header630.us, label %polly.loop_exit632

polly.loop_header630.us:                          ; preds = %polly.loop_header630.preheader, %polly.loop_exit639.loopexit.us
  %polly.indvar633.us = phi i64 [ %polly.indvar_next634.us, %polly.loop_exit639.loopexit.us ], [ 0, %polly.loop_header630.preheader ]
  %203 = add nuw nsw i64 %polly.indvar633.us, %184
  %polly.access.mul.Packed_MemRef_call1475644.us = mul nuw nsw i64 %polly.indvar633.us, 80
  %204 = shl i64 %203, 3
  %205 = add i64 %204, %201
  %scevgep648.us = getelementptr i8, i8* %call2, i64 %205
  %scevgep648649.us = bitcast i8* %scevgep648.us to double*
  %_p_scalar_650.us = load double, double* %scevgep648649.us, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1475655.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1475644.us, %193
  %polly.access.Packed_MemRef_call1475656.us = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475655.us
  %_p_scalar_657.us = load double, double* %polly.access.Packed_MemRef_call1475656.us, align 8
  br label %polly.loop_header637.us

polly.loop_header637.us:                          ; preds = %polly.loop_header630.us, %polly.loop_header637.us
  %polly.indvar641.us = phi i64 [ %polly.indvar_next642.us, %polly.loop_header637.us ], [ 0, %polly.loop_header630.us ]
  %206 = add nuw nsw i64 %polly.indvar641.us, %185
  %polly.access.add.Packed_MemRef_call1475645.us = add nuw nsw i64 %polly.indvar641.us, %polly.access.mul.Packed_MemRef_call1475644.us
  %polly.access.Packed_MemRef_call1475646.us = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475645.us
  %_p_scalar_647.us = load double, double* %polly.access.Packed_MemRef_call1475646.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_650.us, %_p_scalar_647.us
  %207 = mul nuw nsw i64 %206, 480
  %208 = add nuw nsw i64 %207, %204
  %scevgep651.us = getelementptr i8, i8* %call2, i64 %208
  %scevgep651652.us = bitcast i8* %scevgep651.us to double*
  %_p_scalar_653.us = load double, double* %scevgep651652.us, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us = fmul fast double %_p_scalar_657.us, %_p_scalar_653.us
  %209 = shl i64 %206, 3
  %210 = add i64 %209, %202
  %scevgep658.us = getelementptr i8, i8* %call, i64 %210
  %scevgep658659.us = bitcast i8* %scevgep658.us to double*
  %_p_scalar_660.us = load double, double* %scevgep658659.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_660.us
  store double %p_add42.i.us, double* %scevgep658659.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next642.us = add nuw nsw i64 %polly.indvar641.us, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar641.us, %smin1049
  br i1 %exitcond1050.not, label %polly.loop_exit639.loopexit.us, label %polly.loop_header637.us

polly.loop_exit639.loopexit.us:                   ; preds = %polly.loop_header637.us
  %polly.indvar_next634.us = add nuw nsw i64 %polly.indvar633.us, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next634.us, %183
  br i1 %exitcond1052.not, label %polly.loop_exit632, label %polly.loop_header630.us

polly.loop_header799:                             ; preds = %entry, %polly.loop_exit807
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_exit807 ], [ 0, %entry ]
  %211 = mul nuw nsw i64 %polly.indvar802, 640
  %212 = trunc i64 %polly.indvar802 to i32
  %broadcast.splatinsert1181 = insertelement <4 x i32> poison, i32 %212, i32 0
  %broadcast.splat1182 = shufflevector <4 x i32> %broadcast.splatinsert1181, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1171

vector.body1171:                                  ; preds = %vector.body1171, %polly.loop_header799
  %index1173 = phi i64 [ 0, %polly.loop_header799 ], [ %index.next1174, %vector.body1171 ]
  %vec.ind1179 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header799 ], [ %vec.ind.next1180, %vector.body1171 ]
  %213 = mul <4 x i32> %vec.ind1179, %broadcast.splat1182
  %214 = add <4 x i32> %213, <i32 3, i32 3, i32 3, i32 3>
  %215 = urem <4 x i32> %214, <i32 80, i32 80, i32 80, i32 80>
  %216 = sitofp <4 x i32> %215 to <4 x double>
  %217 = fmul fast <4 x double> %216, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %218 = shl i64 %index1173, 3
  %219 = add nuw nsw i64 %218, %211
  %220 = getelementptr i8, i8* %call, i64 %219
  %221 = bitcast i8* %220 to <4 x double>*
  store <4 x double> %217, <4 x double>* %221, align 8, !alias.scope !94, !noalias !96
  %index.next1174 = add i64 %index1173, 4
  %vec.ind.next1180 = add <4 x i32> %vec.ind1179, <i32 4, i32 4, i32 4, i32 4>
  %222 = icmp eq i64 %index.next1174, 32
  br i1 %222, label %polly.loop_exit807, label %vector.body1171, !llvm.loop !99

polly.loop_exit807:                               ; preds = %vector.body1171
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar_next803, 32
  br i1 %exitcond1079.not, label %polly.loop_header799.1, label %polly.loop_header799

polly.loop_header826:                             ; preds = %polly.loop_exit807.2.2, %polly.loop_exit834
  %polly.indvar829 = phi i64 [ %polly.indvar_next830, %polly.loop_exit834 ], [ 0, %polly.loop_exit807.2.2 ]
  %223 = mul nuw nsw i64 %polly.indvar829, 480
  %224 = trunc i64 %polly.indvar829 to i32
  %broadcast.splatinsert1295 = insertelement <4 x i32> poison, i32 %224, i32 0
  %broadcast.splat1296 = shufflevector <4 x i32> %broadcast.splatinsert1295, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1285

vector.body1285:                                  ; preds = %vector.body1285, %polly.loop_header826
  %index1287 = phi i64 [ 0, %polly.loop_header826 ], [ %index.next1288, %vector.body1285 ]
  %vec.ind1293 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header826 ], [ %vec.ind.next1294, %vector.body1285 ]
  %225 = mul <4 x i32> %vec.ind1293, %broadcast.splat1296
  %226 = add <4 x i32> %225, <i32 2, i32 2, i32 2, i32 2>
  %227 = urem <4 x i32> %226, <i32 60, i32 60, i32 60, i32 60>
  %228 = sitofp <4 x i32> %227 to <4 x double>
  %229 = fmul fast <4 x double> %228, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %230 = shl i64 %index1287, 3
  %231 = add i64 %230, %223
  %232 = getelementptr i8, i8* %call2, i64 %231
  %233 = bitcast i8* %232 to <4 x double>*
  store <4 x double> %229, <4 x double>* %233, align 8, !alias.scope !98, !noalias !100
  %index.next1288 = add i64 %index1287, 4
  %vec.ind.next1294 = add <4 x i32> %vec.ind1293, <i32 4, i32 4, i32 4, i32 4>
  %234 = icmp eq i64 %index.next1288, 32
  br i1 %234, label %polly.loop_exit834, label %vector.body1285, !llvm.loop !101

polly.loop_exit834:                               ; preds = %vector.body1285
  %polly.indvar_next830 = add nuw nsw i64 %polly.indvar829, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar_next830, 32
  br i1 %exitcond1070.not, label %polly.loop_header826.1, label %polly.loop_header826

polly.loop_header852:                             ; preds = %polly.loop_exit834.1.2, %polly.loop_exit860
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_exit834.1.2 ]
  %235 = mul nuw nsw i64 %polly.indvar855, 480
  %236 = trunc i64 %polly.indvar855 to i32
  %broadcast.splatinsert1373 = insertelement <4 x i32> poison, i32 %236, i32 0
  %broadcast.splat1374 = shufflevector <4 x i32> %broadcast.splatinsert1373, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1363

vector.body1363:                                  ; preds = %vector.body1363, %polly.loop_header852
  %index1365 = phi i64 [ 0, %polly.loop_header852 ], [ %index.next1366, %vector.body1363 ]
  %vec.ind1371 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header852 ], [ %vec.ind.next1372, %vector.body1363 ]
  %237 = mul <4 x i32> %vec.ind1371, %broadcast.splat1374
  %238 = add <4 x i32> %237, <i32 1, i32 1, i32 1, i32 1>
  %239 = urem <4 x i32> %238, <i32 80, i32 80, i32 80, i32 80>
  %240 = sitofp <4 x i32> %239 to <4 x double>
  %241 = fmul fast <4 x double> %240, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %242 = shl i64 %index1365, 3
  %243 = add i64 %242, %235
  %244 = getelementptr i8, i8* %call1, i64 %243
  %245 = bitcast i8* %244 to <4 x double>*
  store <4 x double> %241, <4 x double>* %245, align 8, !alias.scope !97, !noalias !102
  %index.next1366 = add i64 %index1365, 4
  %vec.ind.next1372 = add <4 x i32> %vec.ind1371, <i32 4, i32 4, i32 4, i32 4>
  %246 = icmp eq i64 %index.next1366, 32
  br i1 %246, label %polly.loop_exit860, label %vector.body1363, !llvm.loop !103

polly.loop_exit860:                               ; preds = %vector.body1363
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar_next856, 32
  br i1 %exitcond1064.not, label %polly.loop_header852.1, label %polly.loop_header852

polly.loop_header852.1:                           ; preds = %polly.loop_exit860, %polly.loop_exit860.1
  %polly.indvar855.1 = phi i64 [ %polly.indvar_next856.1, %polly.loop_exit860.1 ], [ 0, %polly.loop_exit860 ]
  %247 = mul nuw nsw i64 %polly.indvar855.1, 480
  %248 = trunc i64 %polly.indvar855.1 to i32
  %broadcast.splatinsert1385 = insertelement <4 x i32> poison, i32 %248, i32 0
  %broadcast.splat1386 = shufflevector <4 x i32> %broadcast.splatinsert1385, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1377

vector.body1377:                                  ; preds = %vector.body1377, %polly.loop_header852.1
  %index1379 = phi i64 [ 0, %polly.loop_header852.1 ], [ %index.next1380, %vector.body1377 ]
  %vec.ind1383 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header852.1 ], [ %vec.ind.next1384, %vector.body1377 ]
  %249 = add nuw nsw <4 x i64> %vec.ind1383, <i64 32, i64 32, i64 32, i64 32>
  %250 = trunc <4 x i64> %249 to <4 x i32>
  %251 = mul <4 x i32> %broadcast.splat1386, %250
  %252 = add <4 x i32> %251, <i32 1, i32 1, i32 1, i32 1>
  %253 = urem <4 x i32> %252, <i32 80, i32 80, i32 80, i32 80>
  %254 = sitofp <4 x i32> %253 to <4 x double>
  %255 = fmul fast <4 x double> %254, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %256 = extractelement <4 x i64> %249, i32 0
  %257 = shl i64 %256, 3
  %258 = add i64 %257, %247
  %259 = getelementptr i8, i8* %call1, i64 %258
  %260 = bitcast i8* %259 to <4 x double>*
  store <4 x double> %255, <4 x double>* %260, align 8, !alias.scope !97, !noalias !102
  %index.next1380 = add i64 %index1379, 4
  %vec.ind.next1384 = add <4 x i64> %vec.ind1383, <i64 4, i64 4, i64 4, i64 4>
  %261 = icmp eq i64 %index.next1380, 28
  br i1 %261, label %polly.loop_exit860.1, label %vector.body1377, !llvm.loop !104

polly.loop_exit860.1:                             ; preds = %vector.body1377
  %polly.indvar_next856.1 = add nuw nsw i64 %polly.indvar855.1, 1
  %exitcond1064.1.not = icmp eq i64 %polly.indvar_next856.1, 32
  br i1 %exitcond1064.1.not, label %polly.loop_header852.11087, label %polly.loop_header852.1

polly.loop_header852.11087:                       ; preds = %polly.loop_exit860.1, %polly.loop_exit860.11098
  %polly.indvar855.11086 = phi i64 [ %polly.indvar_next856.11096, %polly.loop_exit860.11098 ], [ 0, %polly.loop_exit860.1 ]
  %262 = add nuw nsw i64 %polly.indvar855.11086, 32
  %263 = mul nuw nsw i64 %262, 480
  %264 = trunc i64 %262 to i32
  %broadcast.splatinsert1399 = insertelement <4 x i32> poison, i32 %264, i32 0
  %broadcast.splat1400 = shufflevector <4 x i32> %broadcast.splatinsert1399, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1389

vector.body1389:                                  ; preds = %vector.body1389, %polly.loop_header852.11087
  %index1391 = phi i64 [ 0, %polly.loop_header852.11087 ], [ %index.next1392, %vector.body1389 ]
  %vec.ind1397 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header852.11087 ], [ %vec.ind.next1398, %vector.body1389 ]
  %265 = mul <4 x i32> %vec.ind1397, %broadcast.splat1400
  %266 = add <4 x i32> %265, <i32 1, i32 1, i32 1, i32 1>
  %267 = urem <4 x i32> %266, <i32 80, i32 80, i32 80, i32 80>
  %268 = sitofp <4 x i32> %267 to <4 x double>
  %269 = fmul fast <4 x double> %268, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %270 = shl i64 %index1391, 3
  %271 = add i64 %270, %263
  %272 = getelementptr i8, i8* %call1, i64 %271
  %273 = bitcast i8* %272 to <4 x double>*
  store <4 x double> %269, <4 x double>* %273, align 8, !alias.scope !97, !noalias !102
  %index.next1392 = add i64 %index1391, 4
  %vec.ind.next1398 = add <4 x i32> %vec.ind1397, <i32 4, i32 4, i32 4, i32 4>
  %274 = icmp eq i64 %index.next1392, 32
  br i1 %274, label %polly.loop_exit860.11098, label %vector.body1389, !llvm.loop !105

polly.loop_exit860.11098:                         ; preds = %vector.body1389
  %polly.indvar_next856.11096 = add nuw nsw i64 %polly.indvar855.11086, 1
  %exitcond1064.11097.not = icmp eq i64 %polly.indvar_next856.11096, 32
  br i1 %exitcond1064.11097.not, label %polly.loop_header852.1.1, label %polly.loop_header852.11087

polly.loop_header852.1.1:                         ; preds = %polly.loop_exit860.11098, %polly.loop_exit860.1.1
  %polly.indvar855.1.1 = phi i64 [ %polly.indvar_next856.1.1, %polly.loop_exit860.1.1 ], [ 0, %polly.loop_exit860.11098 ]
  %275 = add nuw nsw i64 %polly.indvar855.1.1, 32
  %276 = mul nuw nsw i64 %275, 480
  %277 = trunc i64 %275 to i32
  %broadcast.splatinsert1411 = insertelement <4 x i32> poison, i32 %277, i32 0
  %broadcast.splat1412 = shufflevector <4 x i32> %broadcast.splatinsert1411, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1403

vector.body1403:                                  ; preds = %vector.body1403, %polly.loop_header852.1.1
  %index1405 = phi i64 [ 0, %polly.loop_header852.1.1 ], [ %index.next1406, %vector.body1403 ]
  %vec.ind1409 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header852.1.1 ], [ %vec.ind.next1410, %vector.body1403 ]
  %278 = add nuw nsw <4 x i64> %vec.ind1409, <i64 32, i64 32, i64 32, i64 32>
  %279 = trunc <4 x i64> %278 to <4 x i32>
  %280 = mul <4 x i32> %broadcast.splat1412, %279
  %281 = add <4 x i32> %280, <i32 1, i32 1, i32 1, i32 1>
  %282 = urem <4 x i32> %281, <i32 80, i32 80, i32 80, i32 80>
  %283 = sitofp <4 x i32> %282 to <4 x double>
  %284 = fmul fast <4 x double> %283, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %285 = extractelement <4 x i64> %278, i32 0
  %286 = shl i64 %285, 3
  %287 = add i64 %286, %276
  %288 = getelementptr i8, i8* %call1, i64 %287
  %289 = bitcast i8* %288 to <4 x double>*
  store <4 x double> %284, <4 x double>* %289, align 8, !alias.scope !97, !noalias !102
  %index.next1406 = add i64 %index1405, 4
  %vec.ind.next1410 = add <4 x i64> %vec.ind1409, <i64 4, i64 4, i64 4, i64 4>
  %290 = icmp eq i64 %index.next1406, 28
  br i1 %290, label %polly.loop_exit860.1.1, label %vector.body1403, !llvm.loop !106

polly.loop_exit860.1.1:                           ; preds = %vector.body1403
  %polly.indvar_next856.1.1 = add nuw nsw i64 %polly.indvar855.1.1, 1
  %exitcond1064.1.1.not = icmp eq i64 %polly.indvar_next856.1.1, 32
  br i1 %exitcond1064.1.1.not, label %polly.loop_header852.2, label %polly.loop_header852.1.1

polly.loop_header852.2:                           ; preds = %polly.loop_exit860.1.1, %polly.loop_exit860.2
  %polly.indvar855.2 = phi i64 [ %polly.indvar_next856.2, %polly.loop_exit860.2 ], [ 0, %polly.loop_exit860.1.1 ]
  %291 = add nuw nsw i64 %polly.indvar855.2, 64
  %292 = mul nuw nsw i64 %291, 480
  %293 = trunc i64 %291 to i32
  %broadcast.splatinsert1425 = insertelement <4 x i32> poison, i32 %293, i32 0
  %broadcast.splat1426 = shufflevector <4 x i32> %broadcast.splatinsert1425, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1415

vector.body1415:                                  ; preds = %vector.body1415, %polly.loop_header852.2
  %index1417 = phi i64 [ 0, %polly.loop_header852.2 ], [ %index.next1418, %vector.body1415 ]
  %vec.ind1423 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header852.2 ], [ %vec.ind.next1424, %vector.body1415 ]
  %294 = mul <4 x i32> %vec.ind1423, %broadcast.splat1426
  %295 = add <4 x i32> %294, <i32 1, i32 1, i32 1, i32 1>
  %296 = urem <4 x i32> %295, <i32 80, i32 80, i32 80, i32 80>
  %297 = sitofp <4 x i32> %296 to <4 x double>
  %298 = fmul fast <4 x double> %297, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %299 = shl i64 %index1417, 3
  %300 = add i64 %299, %292
  %301 = getelementptr i8, i8* %call1, i64 %300
  %302 = bitcast i8* %301 to <4 x double>*
  store <4 x double> %298, <4 x double>* %302, align 8, !alias.scope !97, !noalias !102
  %index.next1418 = add i64 %index1417, 4
  %vec.ind.next1424 = add <4 x i32> %vec.ind1423, <i32 4, i32 4, i32 4, i32 4>
  %303 = icmp eq i64 %index.next1418, 32
  br i1 %303, label %polly.loop_exit860.2, label %vector.body1415, !llvm.loop !107

polly.loop_exit860.2:                             ; preds = %vector.body1415
  %polly.indvar_next856.2 = add nuw nsw i64 %polly.indvar855.2, 1
  %exitcond1064.2.not = icmp eq i64 %polly.indvar_next856.2, 16
  br i1 %exitcond1064.2.not, label %polly.loop_header852.1.2, label %polly.loop_header852.2

polly.loop_header852.1.2:                         ; preds = %polly.loop_exit860.2, %polly.loop_exit860.1.2
  %polly.indvar855.1.2 = phi i64 [ %polly.indvar_next856.1.2, %polly.loop_exit860.1.2 ], [ 0, %polly.loop_exit860.2 ]
  %304 = add nuw nsw i64 %polly.indvar855.1.2, 64
  %305 = mul nuw nsw i64 %304, 480
  %306 = trunc i64 %304 to i32
  %broadcast.splatinsert1437 = insertelement <4 x i32> poison, i32 %306, i32 0
  %broadcast.splat1438 = shufflevector <4 x i32> %broadcast.splatinsert1437, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1429

vector.body1429:                                  ; preds = %vector.body1429, %polly.loop_header852.1.2
  %index1431 = phi i64 [ 0, %polly.loop_header852.1.2 ], [ %index.next1432, %vector.body1429 ]
  %vec.ind1435 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header852.1.2 ], [ %vec.ind.next1436, %vector.body1429 ]
  %307 = add nuw nsw <4 x i64> %vec.ind1435, <i64 32, i64 32, i64 32, i64 32>
  %308 = trunc <4 x i64> %307 to <4 x i32>
  %309 = mul <4 x i32> %broadcast.splat1438, %308
  %310 = add <4 x i32> %309, <i32 1, i32 1, i32 1, i32 1>
  %311 = urem <4 x i32> %310, <i32 80, i32 80, i32 80, i32 80>
  %312 = sitofp <4 x i32> %311 to <4 x double>
  %313 = fmul fast <4 x double> %312, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %314 = extractelement <4 x i64> %307, i32 0
  %315 = shl i64 %314, 3
  %316 = add i64 %315, %305
  %317 = getelementptr i8, i8* %call1, i64 %316
  %318 = bitcast i8* %317 to <4 x double>*
  store <4 x double> %313, <4 x double>* %318, align 8, !alias.scope !97, !noalias !102
  %index.next1432 = add i64 %index1431, 4
  %vec.ind.next1436 = add <4 x i64> %vec.ind1435, <i64 4, i64 4, i64 4, i64 4>
  %319 = icmp eq i64 %index.next1432, 28
  br i1 %319, label %polly.loop_exit860.1.2, label %vector.body1429, !llvm.loop !108

polly.loop_exit860.1.2:                           ; preds = %vector.body1429
  %polly.indvar_next856.1.2 = add nuw nsw i64 %polly.indvar855.1.2, 1
  %exitcond1064.1.2.not = icmp eq i64 %polly.indvar_next856.1.2, 16
  br i1 %exitcond1064.1.2.not, label %init_array.exit, label %polly.loop_header852.1.2

polly.loop_header826.1:                           ; preds = %polly.loop_exit834, %polly.loop_exit834.1
  %polly.indvar829.1 = phi i64 [ %polly.indvar_next830.1, %polly.loop_exit834.1 ], [ 0, %polly.loop_exit834 ]
  %320 = mul nuw nsw i64 %polly.indvar829.1, 480
  %321 = trunc i64 %polly.indvar829.1 to i32
  %broadcast.splatinsert1307 = insertelement <4 x i32> poison, i32 %321, i32 0
  %broadcast.splat1308 = shufflevector <4 x i32> %broadcast.splatinsert1307, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1299

vector.body1299:                                  ; preds = %vector.body1299, %polly.loop_header826.1
  %index1301 = phi i64 [ 0, %polly.loop_header826.1 ], [ %index.next1302, %vector.body1299 ]
  %vec.ind1305 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header826.1 ], [ %vec.ind.next1306, %vector.body1299 ]
  %322 = add nuw nsw <4 x i64> %vec.ind1305, <i64 32, i64 32, i64 32, i64 32>
  %323 = trunc <4 x i64> %322 to <4 x i32>
  %324 = mul <4 x i32> %broadcast.splat1308, %323
  %325 = add <4 x i32> %324, <i32 2, i32 2, i32 2, i32 2>
  %326 = urem <4 x i32> %325, <i32 60, i32 60, i32 60, i32 60>
  %327 = sitofp <4 x i32> %326 to <4 x double>
  %328 = fmul fast <4 x double> %327, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %329 = extractelement <4 x i64> %322, i32 0
  %330 = shl i64 %329, 3
  %331 = add i64 %330, %320
  %332 = getelementptr i8, i8* %call2, i64 %331
  %333 = bitcast i8* %332 to <4 x double>*
  store <4 x double> %328, <4 x double>* %333, align 8, !alias.scope !98, !noalias !100
  %index.next1302 = add i64 %index1301, 4
  %vec.ind.next1306 = add <4 x i64> %vec.ind1305, <i64 4, i64 4, i64 4, i64 4>
  %334 = icmp eq i64 %index.next1302, 28
  br i1 %334, label %polly.loop_exit834.1, label %vector.body1299, !llvm.loop !109

polly.loop_exit834.1:                             ; preds = %vector.body1299
  %polly.indvar_next830.1 = add nuw nsw i64 %polly.indvar829.1, 1
  %exitcond1070.1.not = icmp eq i64 %polly.indvar_next830.1, 32
  br i1 %exitcond1070.1.not, label %polly.loop_header826.11101, label %polly.loop_header826.1

polly.loop_header826.11101:                       ; preds = %polly.loop_exit834.1, %polly.loop_exit834.11112
  %polly.indvar829.11100 = phi i64 [ %polly.indvar_next830.11110, %polly.loop_exit834.11112 ], [ 0, %polly.loop_exit834.1 ]
  %335 = add nuw nsw i64 %polly.indvar829.11100, 32
  %336 = mul nuw nsw i64 %335, 480
  %337 = trunc i64 %335 to i32
  %broadcast.splatinsert1321 = insertelement <4 x i32> poison, i32 %337, i32 0
  %broadcast.splat1322 = shufflevector <4 x i32> %broadcast.splatinsert1321, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1311

vector.body1311:                                  ; preds = %vector.body1311, %polly.loop_header826.11101
  %index1313 = phi i64 [ 0, %polly.loop_header826.11101 ], [ %index.next1314, %vector.body1311 ]
  %vec.ind1319 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header826.11101 ], [ %vec.ind.next1320, %vector.body1311 ]
  %338 = mul <4 x i32> %vec.ind1319, %broadcast.splat1322
  %339 = add <4 x i32> %338, <i32 2, i32 2, i32 2, i32 2>
  %340 = urem <4 x i32> %339, <i32 60, i32 60, i32 60, i32 60>
  %341 = sitofp <4 x i32> %340 to <4 x double>
  %342 = fmul fast <4 x double> %341, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %343 = shl i64 %index1313, 3
  %344 = add i64 %343, %336
  %345 = getelementptr i8, i8* %call2, i64 %344
  %346 = bitcast i8* %345 to <4 x double>*
  store <4 x double> %342, <4 x double>* %346, align 8, !alias.scope !98, !noalias !100
  %index.next1314 = add i64 %index1313, 4
  %vec.ind.next1320 = add <4 x i32> %vec.ind1319, <i32 4, i32 4, i32 4, i32 4>
  %347 = icmp eq i64 %index.next1314, 32
  br i1 %347, label %polly.loop_exit834.11112, label %vector.body1311, !llvm.loop !110

polly.loop_exit834.11112:                         ; preds = %vector.body1311
  %polly.indvar_next830.11110 = add nuw nsw i64 %polly.indvar829.11100, 1
  %exitcond1070.11111.not = icmp eq i64 %polly.indvar_next830.11110, 32
  br i1 %exitcond1070.11111.not, label %polly.loop_header826.1.1, label %polly.loop_header826.11101

polly.loop_header826.1.1:                         ; preds = %polly.loop_exit834.11112, %polly.loop_exit834.1.1
  %polly.indvar829.1.1 = phi i64 [ %polly.indvar_next830.1.1, %polly.loop_exit834.1.1 ], [ 0, %polly.loop_exit834.11112 ]
  %348 = add nuw nsw i64 %polly.indvar829.1.1, 32
  %349 = mul nuw nsw i64 %348, 480
  %350 = trunc i64 %348 to i32
  %broadcast.splatinsert1333 = insertelement <4 x i32> poison, i32 %350, i32 0
  %broadcast.splat1334 = shufflevector <4 x i32> %broadcast.splatinsert1333, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1325

vector.body1325:                                  ; preds = %vector.body1325, %polly.loop_header826.1.1
  %index1327 = phi i64 [ 0, %polly.loop_header826.1.1 ], [ %index.next1328, %vector.body1325 ]
  %vec.ind1331 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header826.1.1 ], [ %vec.ind.next1332, %vector.body1325 ]
  %351 = add nuw nsw <4 x i64> %vec.ind1331, <i64 32, i64 32, i64 32, i64 32>
  %352 = trunc <4 x i64> %351 to <4 x i32>
  %353 = mul <4 x i32> %broadcast.splat1334, %352
  %354 = add <4 x i32> %353, <i32 2, i32 2, i32 2, i32 2>
  %355 = urem <4 x i32> %354, <i32 60, i32 60, i32 60, i32 60>
  %356 = sitofp <4 x i32> %355 to <4 x double>
  %357 = fmul fast <4 x double> %356, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %358 = extractelement <4 x i64> %351, i32 0
  %359 = shl i64 %358, 3
  %360 = add i64 %359, %349
  %361 = getelementptr i8, i8* %call2, i64 %360
  %362 = bitcast i8* %361 to <4 x double>*
  store <4 x double> %357, <4 x double>* %362, align 8, !alias.scope !98, !noalias !100
  %index.next1328 = add i64 %index1327, 4
  %vec.ind.next1332 = add <4 x i64> %vec.ind1331, <i64 4, i64 4, i64 4, i64 4>
  %363 = icmp eq i64 %index.next1328, 28
  br i1 %363, label %polly.loop_exit834.1.1, label %vector.body1325, !llvm.loop !111

polly.loop_exit834.1.1:                           ; preds = %vector.body1325
  %polly.indvar_next830.1.1 = add nuw nsw i64 %polly.indvar829.1.1, 1
  %exitcond1070.1.1.not = icmp eq i64 %polly.indvar_next830.1.1, 32
  br i1 %exitcond1070.1.1.not, label %polly.loop_header826.2, label %polly.loop_header826.1.1

polly.loop_header826.2:                           ; preds = %polly.loop_exit834.1.1, %polly.loop_exit834.2
  %polly.indvar829.2 = phi i64 [ %polly.indvar_next830.2, %polly.loop_exit834.2 ], [ 0, %polly.loop_exit834.1.1 ]
  %364 = add nuw nsw i64 %polly.indvar829.2, 64
  %365 = mul nuw nsw i64 %364, 480
  %366 = trunc i64 %364 to i32
  %broadcast.splatinsert1347 = insertelement <4 x i32> poison, i32 %366, i32 0
  %broadcast.splat1348 = shufflevector <4 x i32> %broadcast.splatinsert1347, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1337

vector.body1337:                                  ; preds = %vector.body1337, %polly.loop_header826.2
  %index1339 = phi i64 [ 0, %polly.loop_header826.2 ], [ %index.next1340, %vector.body1337 ]
  %vec.ind1345 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header826.2 ], [ %vec.ind.next1346, %vector.body1337 ]
  %367 = mul <4 x i32> %vec.ind1345, %broadcast.splat1348
  %368 = add <4 x i32> %367, <i32 2, i32 2, i32 2, i32 2>
  %369 = urem <4 x i32> %368, <i32 60, i32 60, i32 60, i32 60>
  %370 = sitofp <4 x i32> %369 to <4 x double>
  %371 = fmul fast <4 x double> %370, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %372 = shl i64 %index1339, 3
  %373 = add i64 %372, %365
  %374 = getelementptr i8, i8* %call2, i64 %373
  %375 = bitcast i8* %374 to <4 x double>*
  store <4 x double> %371, <4 x double>* %375, align 8, !alias.scope !98, !noalias !100
  %index.next1340 = add i64 %index1339, 4
  %vec.ind.next1346 = add <4 x i32> %vec.ind1345, <i32 4, i32 4, i32 4, i32 4>
  %376 = icmp eq i64 %index.next1340, 32
  br i1 %376, label %polly.loop_exit834.2, label %vector.body1337, !llvm.loop !112

polly.loop_exit834.2:                             ; preds = %vector.body1337
  %polly.indvar_next830.2 = add nuw nsw i64 %polly.indvar829.2, 1
  %exitcond1070.2.not = icmp eq i64 %polly.indvar_next830.2, 16
  br i1 %exitcond1070.2.not, label %polly.loop_header826.1.2, label %polly.loop_header826.2

polly.loop_header826.1.2:                         ; preds = %polly.loop_exit834.2, %polly.loop_exit834.1.2
  %polly.indvar829.1.2 = phi i64 [ %polly.indvar_next830.1.2, %polly.loop_exit834.1.2 ], [ 0, %polly.loop_exit834.2 ]
  %377 = add nuw nsw i64 %polly.indvar829.1.2, 64
  %378 = mul nuw nsw i64 %377, 480
  %379 = trunc i64 %377 to i32
  %broadcast.splatinsert1359 = insertelement <4 x i32> poison, i32 %379, i32 0
  %broadcast.splat1360 = shufflevector <4 x i32> %broadcast.splatinsert1359, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1351

vector.body1351:                                  ; preds = %vector.body1351, %polly.loop_header826.1.2
  %index1353 = phi i64 [ 0, %polly.loop_header826.1.2 ], [ %index.next1354, %vector.body1351 ]
  %vec.ind1357 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header826.1.2 ], [ %vec.ind.next1358, %vector.body1351 ]
  %380 = add nuw nsw <4 x i64> %vec.ind1357, <i64 32, i64 32, i64 32, i64 32>
  %381 = trunc <4 x i64> %380 to <4 x i32>
  %382 = mul <4 x i32> %broadcast.splat1360, %381
  %383 = add <4 x i32> %382, <i32 2, i32 2, i32 2, i32 2>
  %384 = urem <4 x i32> %383, <i32 60, i32 60, i32 60, i32 60>
  %385 = sitofp <4 x i32> %384 to <4 x double>
  %386 = fmul fast <4 x double> %385, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %387 = extractelement <4 x i64> %380, i32 0
  %388 = shl i64 %387, 3
  %389 = add i64 %388, %378
  %390 = getelementptr i8, i8* %call2, i64 %389
  %391 = bitcast i8* %390 to <4 x double>*
  store <4 x double> %386, <4 x double>* %391, align 8, !alias.scope !98, !noalias !100
  %index.next1354 = add i64 %index1353, 4
  %vec.ind.next1358 = add <4 x i64> %vec.ind1357, <i64 4, i64 4, i64 4, i64 4>
  %392 = icmp eq i64 %index.next1354, 28
  br i1 %392, label %polly.loop_exit834.1.2, label %vector.body1351, !llvm.loop !113

polly.loop_exit834.1.2:                           ; preds = %vector.body1351
  %polly.indvar_next830.1.2 = add nuw nsw i64 %polly.indvar829.1.2, 1
  %exitcond1070.1.2.not = icmp eq i64 %polly.indvar_next830.1.2, 16
  br i1 %exitcond1070.1.2.not, label %polly.loop_header852, label %polly.loop_header826.1.2

polly.loop_header799.1:                           ; preds = %polly.loop_exit807, %polly.loop_exit807.1
  %polly.indvar802.1 = phi i64 [ %polly.indvar_next803.1, %polly.loop_exit807.1 ], [ 0, %polly.loop_exit807 ]
  %393 = mul nuw nsw i64 %polly.indvar802.1, 640
  %394 = trunc i64 %polly.indvar802.1 to i32
  %broadcast.splatinsert1193 = insertelement <4 x i32> poison, i32 %394, i32 0
  %broadcast.splat1194 = shufflevector <4 x i32> %broadcast.splatinsert1193, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1185

vector.body1185:                                  ; preds = %vector.body1185, %polly.loop_header799.1
  %index1187 = phi i64 [ 0, %polly.loop_header799.1 ], [ %index.next1188, %vector.body1185 ]
  %vec.ind1191 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header799.1 ], [ %vec.ind.next1192, %vector.body1185 ]
  %395 = add nuw nsw <4 x i64> %vec.ind1191, <i64 32, i64 32, i64 32, i64 32>
  %396 = trunc <4 x i64> %395 to <4 x i32>
  %397 = mul <4 x i32> %broadcast.splat1194, %396
  %398 = add <4 x i32> %397, <i32 3, i32 3, i32 3, i32 3>
  %399 = urem <4 x i32> %398, <i32 80, i32 80, i32 80, i32 80>
  %400 = sitofp <4 x i32> %399 to <4 x double>
  %401 = fmul fast <4 x double> %400, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %402 = extractelement <4 x i64> %395, i32 0
  %403 = shl i64 %402, 3
  %404 = add nuw nsw i64 %403, %393
  %405 = getelementptr i8, i8* %call, i64 %404
  %406 = bitcast i8* %405 to <4 x double>*
  store <4 x double> %401, <4 x double>* %406, align 8, !alias.scope !94, !noalias !96
  %index.next1188 = add i64 %index1187, 4
  %vec.ind.next1192 = add <4 x i64> %vec.ind1191, <i64 4, i64 4, i64 4, i64 4>
  %407 = icmp eq i64 %index.next1188, 32
  br i1 %407, label %polly.loop_exit807.1, label %vector.body1185, !llvm.loop !114

polly.loop_exit807.1:                             ; preds = %vector.body1185
  %polly.indvar_next803.1 = add nuw nsw i64 %polly.indvar802.1, 1
  %exitcond1079.1.not = icmp eq i64 %polly.indvar_next803.1, 32
  br i1 %exitcond1079.1.not, label %polly.loop_header799.2, label %polly.loop_header799.1

polly.loop_header799.2:                           ; preds = %polly.loop_exit807.1, %polly.loop_exit807.2
  %polly.indvar802.2 = phi i64 [ %polly.indvar_next803.2, %polly.loop_exit807.2 ], [ 0, %polly.loop_exit807.1 ]
  %408 = mul nuw nsw i64 %polly.indvar802.2, 640
  %409 = trunc i64 %polly.indvar802.2 to i32
  %broadcast.splatinsert1205 = insertelement <4 x i32> poison, i32 %409, i32 0
  %broadcast.splat1206 = shufflevector <4 x i32> %broadcast.splatinsert1205, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %polly.loop_header799.2
  %index1199 = phi i64 [ 0, %polly.loop_header799.2 ], [ %index.next1200, %vector.body1197 ]
  %vec.ind1203 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header799.2 ], [ %vec.ind.next1204, %vector.body1197 ]
  %410 = add nuw nsw <4 x i64> %vec.ind1203, <i64 64, i64 64, i64 64, i64 64>
  %411 = trunc <4 x i64> %410 to <4 x i32>
  %412 = mul <4 x i32> %broadcast.splat1206, %411
  %413 = add <4 x i32> %412, <i32 3, i32 3, i32 3, i32 3>
  %414 = urem <4 x i32> %413, <i32 80, i32 80, i32 80, i32 80>
  %415 = sitofp <4 x i32> %414 to <4 x double>
  %416 = fmul fast <4 x double> %415, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %417 = extractelement <4 x i64> %410, i32 0
  %418 = shl i64 %417, 3
  %419 = add nuw nsw i64 %418, %408
  %420 = getelementptr i8, i8* %call, i64 %419
  %421 = bitcast i8* %420 to <4 x double>*
  store <4 x double> %416, <4 x double>* %421, align 8, !alias.scope !94, !noalias !96
  %index.next1200 = add i64 %index1199, 4
  %vec.ind.next1204 = add <4 x i64> %vec.ind1203, <i64 4, i64 4, i64 4, i64 4>
  %422 = icmp eq i64 %index.next1200, 16
  br i1 %422, label %polly.loop_exit807.2, label %vector.body1197, !llvm.loop !115

polly.loop_exit807.2:                             ; preds = %vector.body1197
  %polly.indvar_next803.2 = add nuw nsw i64 %polly.indvar802.2, 1
  %exitcond1079.2.not = icmp eq i64 %polly.indvar_next803.2, 32
  br i1 %exitcond1079.2.not, label %polly.loop_header799.11115, label %polly.loop_header799.2

polly.loop_header799.11115:                       ; preds = %polly.loop_exit807.2, %polly.loop_exit807.11126
  %polly.indvar802.11114 = phi i64 [ %polly.indvar_next803.11124, %polly.loop_exit807.11126 ], [ 0, %polly.loop_exit807.2 ]
  %423 = add nuw nsw i64 %polly.indvar802.11114, 32
  %424 = mul nuw nsw i64 %423, 640
  %425 = trunc i64 %423 to i32
  %broadcast.splatinsert1219 = insertelement <4 x i32> poison, i32 %425, i32 0
  %broadcast.splat1220 = shufflevector <4 x i32> %broadcast.splatinsert1219, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1209

vector.body1209:                                  ; preds = %vector.body1209, %polly.loop_header799.11115
  %index1211 = phi i64 [ 0, %polly.loop_header799.11115 ], [ %index.next1212, %vector.body1209 ]
  %vec.ind1217 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header799.11115 ], [ %vec.ind.next1218, %vector.body1209 ]
  %426 = mul <4 x i32> %vec.ind1217, %broadcast.splat1220
  %427 = add <4 x i32> %426, <i32 3, i32 3, i32 3, i32 3>
  %428 = urem <4 x i32> %427, <i32 80, i32 80, i32 80, i32 80>
  %429 = sitofp <4 x i32> %428 to <4 x double>
  %430 = fmul fast <4 x double> %429, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %431 = shl i64 %index1211, 3
  %432 = add nuw nsw i64 %431, %424
  %433 = getelementptr i8, i8* %call, i64 %432
  %434 = bitcast i8* %433 to <4 x double>*
  store <4 x double> %430, <4 x double>* %434, align 8, !alias.scope !94, !noalias !96
  %index.next1212 = add i64 %index1211, 4
  %vec.ind.next1218 = add <4 x i32> %vec.ind1217, <i32 4, i32 4, i32 4, i32 4>
  %435 = icmp eq i64 %index.next1212, 32
  br i1 %435, label %polly.loop_exit807.11126, label %vector.body1209, !llvm.loop !116

polly.loop_exit807.11126:                         ; preds = %vector.body1209
  %polly.indvar_next803.11124 = add nuw nsw i64 %polly.indvar802.11114, 1
  %exitcond1079.11125.not = icmp eq i64 %polly.indvar_next803.11124, 32
  br i1 %exitcond1079.11125.not, label %polly.loop_header799.1.1, label %polly.loop_header799.11115

polly.loop_header799.1.1:                         ; preds = %polly.loop_exit807.11126, %polly.loop_exit807.1.1
  %polly.indvar802.1.1 = phi i64 [ %polly.indvar_next803.1.1, %polly.loop_exit807.1.1 ], [ 0, %polly.loop_exit807.11126 ]
  %436 = add nuw nsw i64 %polly.indvar802.1.1, 32
  %437 = mul nuw nsw i64 %436, 640
  %438 = trunc i64 %436 to i32
  %broadcast.splatinsert1231 = insertelement <4 x i32> poison, i32 %438, i32 0
  %broadcast.splat1232 = shufflevector <4 x i32> %broadcast.splatinsert1231, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1223

vector.body1223:                                  ; preds = %vector.body1223, %polly.loop_header799.1.1
  %index1225 = phi i64 [ 0, %polly.loop_header799.1.1 ], [ %index.next1226, %vector.body1223 ]
  %vec.ind1229 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header799.1.1 ], [ %vec.ind.next1230, %vector.body1223 ]
  %439 = add nuw nsw <4 x i64> %vec.ind1229, <i64 32, i64 32, i64 32, i64 32>
  %440 = trunc <4 x i64> %439 to <4 x i32>
  %441 = mul <4 x i32> %broadcast.splat1232, %440
  %442 = add <4 x i32> %441, <i32 3, i32 3, i32 3, i32 3>
  %443 = urem <4 x i32> %442, <i32 80, i32 80, i32 80, i32 80>
  %444 = sitofp <4 x i32> %443 to <4 x double>
  %445 = fmul fast <4 x double> %444, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %446 = extractelement <4 x i64> %439, i32 0
  %447 = shl i64 %446, 3
  %448 = add nuw nsw i64 %447, %437
  %449 = getelementptr i8, i8* %call, i64 %448
  %450 = bitcast i8* %449 to <4 x double>*
  store <4 x double> %445, <4 x double>* %450, align 8, !alias.scope !94, !noalias !96
  %index.next1226 = add i64 %index1225, 4
  %vec.ind.next1230 = add <4 x i64> %vec.ind1229, <i64 4, i64 4, i64 4, i64 4>
  %451 = icmp eq i64 %index.next1226, 32
  br i1 %451, label %polly.loop_exit807.1.1, label %vector.body1223, !llvm.loop !117

polly.loop_exit807.1.1:                           ; preds = %vector.body1223
  %polly.indvar_next803.1.1 = add nuw nsw i64 %polly.indvar802.1.1, 1
  %exitcond1079.1.1.not = icmp eq i64 %polly.indvar_next803.1.1, 32
  br i1 %exitcond1079.1.1.not, label %polly.loop_header799.2.1, label %polly.loop_header799.1.1

polly.loop_header799.2.1:                         ; preds = %polly.loop_exit807.1.1, %polly.loop_exit807.2.1
  %polly.indvar802.2.1 = phi i64 [ %polly.indvar_next803.2.1, %polly.loop_exit807.2.1 ], [ 0, %polly.loop_exit807.1.1 ]
  %452 = add nuw nsw i64 %polly.indvar802.2.1, 32
  %453 = mul nuw nsw i64 %452, 640
  %454 = trunc i64 %452 to i32
  %broadcast.splatinsert1243 = insertelement <4 x i32> poison, i32 %454, i32 0
  %broadcast.splat1244 = shufflevector <4 x i32> %broadcast.splatinsert1243, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1235

vector.body1235:                                  ; preds = %vector.body1235, %polly.loop_header799.2.1
  %index1237 = phi i64 [ 0, %polly.loop_header799.2.1 ], [ %index.next1238, %vector.body1235 ]
  %vec.ind1241 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header799.2.1 ], [ %vec.ind.next1242, %vector.body1235 ]
  %455 = add nuw nsw <4 x i64> %vec.ind1241, <i64 64, i64 64, i64 64, i64 64>
  %456 = trunc <4 x i64> %455 to <4 x i32>
  %457 = mul <4 x i32> %broadcast.splat1244, %456
  %458 = add <4 x i32> %457, <i32 3, i32 3, i32 3, i32 3>
  %459 = urem <4 x i32> %458, <i32 80, i32 80, i32 80, i32 80>
  %460 = sitofp <4 x i32> %459 to <4 x double>
  %461 = fmul fast <4 x double> %460, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %462 = extractelement <4 x i64> %455, i32 0
  %463 = shl i64 %462, 3
  %464 = add nuw nsw i64 %463, %453
  %465 = getelementptr i8, i8* %call, i64 %464
  %466 = bitcast i8* %465 to <4 x double>*
  store <4 x double> %461, <4 x double>* %466, align 8, !alias.scope !94, !noalias !96
  %index.next1238 = add i64 %index1237, 4
  %vec.ind.next1242 = add <4 x i64> %vec.ind1241, <i64 4, i64 4, i64 4, i64 4>
  %467 = icmp eq i64 %index.next1238, 16
  br i1 %467, label %polly.loop_exit807.2.1, label %vector.body1235, !llvm.loop !118

polly.loop_exit807.2.1:                           ; preds = %vector.body1235
  %polly.indvar_next803.2.1 = add nuw nsw i64 %polly.indvar802.2.1, 1
  %exitcond1079.2.1.not = icmp eq i64 %polly.indvar_next803.2.1, 32
  br i1 %exitcond1079.2.1.not, label %polly.loop_header799.21129, label %polly.loop_header799.2.1

polly.loop_header799.21129:                       ; preds = %polly.loop_exit807.2.1, %polly.loop_exit807.21140
  %polly.indvar802.21128 = phi i64 [ %polly.indvar_next803.21138, %polly.loop_exit807.21140 ], [ 0, %polly.loop_exit807.2.1 ]
  %468 = add nuw nsw i64 %polly.indvar802.21128, 64
  %469 = mul nuw nsw i64 %468, 640
  %470 = trunc i64 %468 to i32
  %broadcast.splatinsert1257 = insertelement <4 x i32> poison, i32 %470, i32 0
  %broadcast.splat1258 = shufflevector <4 x i32> %broadcast.splatinsert1257, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1247

vector.body1247:                                  ; preds = %vector.body1247, %polly.loop_header799.21129
  %index1249 = phi i64 [ 0, %polly.loop_header799.21129 ], [ %index.next1250, %vector.body1247 ]
  %vec.ind1255 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header799.21129 ], [ %vec.ind.next1256, %vector.body1247 ]
  %471 = mul <4 x i32> %vec.ind1255, %broadcast.splat1258
  %472 = add <4 x i32> %471, <i32 3, i32 3, i32 3, i32 3>
  %473 = urem <4 x i32> %472, <i32 80, i32 80, i32 80, i32 80>
  %474 = sitofp <4 x i32> %473 to <4 x double>
  %475 = fmul fast <4 x double> %474, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %476 = shl i64 %index1249, 3
  %477 = add nuw nsw i64 %476, %469
  %478 = getelementptr i8, i8* %call, i64 %477
  %479 = bitcast i8* %478 to <4 x double>*
  store <4 x double> %475, <4 x double>* %479, align 8, !alias.scope !94, !noalias !96
  %index.next1250 = add i64 %index1249, 4
  %vec.ind.next1256 = add <4 x i32> %vec.ind1255, <i32 4, i32 4, i32 4, i32 4>
  %480 = icmp eq i64 %index.next1250, 32
  br i1 %480, label %polly.loop_exit807.21140, label %vector.body1247, !llvm.loop !119

polly.loop_exit807.21140:                         ; preds = %vector.body1247
  %polly.indvar_next803.21138 = add nuw nsw i64 %polly.indvar802.21128, 1
  %exitcond1079.21139.not = icmp eq i64 %polly.indvar_next803.21138, 16
  br i1 %exitcond1079.21139.not, label %polly.loop_header799.1.2, label %polly.loop_header799.21129

polly.loop_header799.1.2:                         ; preds = %polly.loop_exit807.21140, %polly.loop_exit807.1.2
  %polly.indvar802.1.2 = phi i64 [ %polly.indvar_next803.1.2, %polly.loop_exit807.1.2 ], [ 0, %polly.loop_exit807.21140 ]
  %481 = add nuw nsw i64 %polly.indvar802.1.2, 64
  %482 = mul nuw nsw i64 %481, 640
  %483 = trunc i64 %481 to i32
  %broadcast.splatinsert1269 = insertelement <4 x i32> poison, i32 %483, i32 0
  %broadcast.splat1270 = shufflevector <4 x i32> %broadcast.splatinsert1269, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1261

vector.body1261:                                  ; preds = %vector.body1261, %polly.loop_header799.1.2
  %index1263 = phi i64 [ 0, %polly.loop_header799.1.2 ], [ %index.next1264, %vector.body1261 ]
  %vec.ind1267 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header799.1.2 ], [ %vec.ind.next1268, %vector.body1261 ]
  %484 = add nuw nsw <4 x i64> %vec.ind1267, <i64 32, i64 32, i64 32, i64 32>
  %485 = trunc <4 x i64> %484 to <4 x i32>
  %486 = mul <4 x i32> %broadcast.splat1270, %485
  %487 = add <4 x i32> %486, <i32 3, i32 3, i32 3, i32 3>
  %488 = urem <4 x i32> %487, <i32 80, i32 80, i32 80, i32 80>
  %489 = sitofp <4 x i32> %488 to <4 x double>
  %490 = fmul fast <4 x double> %489, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %491 = extractelement <4 x i64> %484, i32 0
  %492 = shl i64 %491, 3
  %493 = add nuw nsw i64 %492, %482
  %494 = getelementptr i8, i8* %call, i64 %493
  %495 = bitcast i8* %494 to <4 x double>*
  store <4 x double> %490, <4 x double>* %495, align 8, !alias.scope !94, !noalias !96
  %index.next1264 = add i64 %index1263, 4
  %vec.ind.next1268 = add <4 x i64> %vec.ind1267, <i64 4, i64 4, i64 4, i64 4>
  %496 = icmp eq i64 %index.next1264, 32
  br i1 %496, label %polly.loop_exit807.1.2, label %vector.body1261, !llvm.loop !120

polly.loop_exit807.1.2:                           ; preds = %vector.body1261
  %polly.indvar_next803.1.2 = add nuw nsw i64 %polly.indvar802.1.2, 1
  %exitcond1079.1.2.not = icmp eq i64 %polly.indvar_next803.1.2, 16
  br i1 %exitcond1079.1.2.not, label %polly.loop_header799.2.2, label %polly.loop_header799.1.2

polly.loop_header799.2.2:                         ; preds = %polly.loop_exit807.1.2, %polly.loop_exit807.2.2
  %polly.indvar802.2.2 = phi i64 [ %polly.indvar_next803.2.2, %polly.loop_exit807.2.2 ], [ 0, %polly.loop_exit807.1.2 ]
  %497 = add nuw nsw i64 %polly.indvar802.2.2, 64
  %498 = mul nuw nsw i64 %497, 640
  %499 = trunc i64 %497 to i32
  %broadcast.splatinsert1281 = insertelement <4 x i32> poison, i32 %499, i32 0
  %broadcast.splat1282 = shufflevector <4 x i32> %broadcast.splatinsert1281, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1273

vector.body1273:                                  ; preds = %vector.body1273, %polly.loop_header799.2.2
  %index1275 = phi i64 [ 0, %polly.loop_header799.2.2 ], [ %index.next1276, %vector.body1273 ]
  %vec.ind1279 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header799.2.2 ], [ %vec.ind.next1280, %vector.body1273 ]
  %500 = add nuw nsw <4 x i64> %vec.ind1279, <i64 64, i64 64, i64 64, i64 64>
  %501 = trunc <4 x i64> %500 to <4 x i32>
  %502 = mul <4 x i32> %broadcast.splat1282, %501
  %503 = add <4 x i32> %502, <i32 3, i32 3, i32 3, i32 3>
  %504 = urem <4 x i32> %503, <i32 80, i32 80, i32 80, i32 80>
  %505 = sitofp <4 x i32> %504 to <4 x double>
  %506 = fmul fast <4 x double> %505, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %507 = extractelement <4 x i64> %500, i32 0
  %508 = shl i64 %507, 3
  %509 = add nuw nsw i64 %508, %498
  %510 = getelementptr i8, i8* %call, i64 %509
  %511 = bitcast i8* %510 to <4 x double>*
  store <4 x double> %506, <4 x double>* %511, align 8, !alias.scope !94, !noalias !96
  %index.next1276 = add i64 %index1275, 4
  %vec.ind.next1280 = add <4 x i64> %vec.ind1279, <i64 4, i64 4, i64 4, i64 4>
  %512 = icmp eq i64 %index.next1276, 16
  br i1 %512, label %polly.loop_exit807.2.2, label %vector.body1273, !llvm.loop !121

polly.loop_exit807.2.2:                           ; preds = %vector.body1273
  %polly.indvar_next803.2.2 = add nuw nsw i64 %polly.indvar802.2.2, 1
  %exitcond1079.2.2.not = icmp eq i64 %polly.indvar_next803.2.2, 16
  br i1 %exitcond1079.2.2.not, label %polly.loop_header826, label %polly.loop_header799.2.2
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #5

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
!34 = !{!"llvm.loop.tile.size", i32 16}
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
!48 = !{!"llvm.loop.tile.size", i32 20}
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
