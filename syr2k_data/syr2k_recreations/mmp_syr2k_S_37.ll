; ModuleID = 'syr2k_recreations//mmp_syr2k_S_37.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_37.c"
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
  %call876 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1728 = bitcast i8* %call1 to double*
  %polly.access.call1737 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2738 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1737, %call2
  %polly.access.call2757 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2757, %call1
  %2 = or i1 %0, %1
  %polly.access.call777 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call777, %call2
  %4 = icmp ule i8* %polly.access.call2757, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call777, %call1
  %8 = icmp ule i8* %polly.access.call1737, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header862, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1111 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1110 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1109 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1108 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1108, %scevgep1111
  %bound1 = icmp ult i8* %scevgep1110, %scevgep1109
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
  br i1 %exitcond18.not.i, label %vector.ph1115, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1115:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1122 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1123 = shufflevector <4 x i64> %broadcast.splatinsert1122, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1114

vector.body1114:                                  ; preds = %vector.body1114, %vector.ph1115
  %index1116 = phi i64 [ 0, %vector.ph1115 ], [ %index.next1117, %vector.body1114 ]
  %vec.ind1120 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1115 ], [ %vec.ind.next1121, %vector.body1114 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1120, %broadcast.splat1123
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call876, i64 %indvars.iv7.i, i64 %index1116
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1117 = add i64 %index1116, 4
  %vec.ind.next1121 = add <4 x i64> %vec.ind1120, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1117, 80
  br i1 %40, label %for.inc41.i, label %vector.body1114, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1114
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1115, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit923.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start514, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1585, label %vector.ph1397

vector.ph1397:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1396

vector.body1396:                                  ; preds = %vector.body1396, %vector.ph1397
  %index1398 = phi i64 [ 0, %vector.ph1397 ], [ %index.next1399, %vector.body1396 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call876, i64 %indvars.iv21.i, i64 %index1398
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1399 = add i64 %index1398, 4
  %46 = icmp eq i64 %index.next1399, %n.vec
  br i1 %46, label %middle.block1394, label %vector.body1396, !llvm.loop !18

middle.block1394:                                 ; preds = %vector.body1396
  %cmp.n1401 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1401, label %for.inc6.i, label %for.body3.i46.preheader1585

for.body3.i46.preheader1585:                      ; preds = %for.body3.i46.preheader, %middle.block1394
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1394 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1585, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1585 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call876, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1394, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call876, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !47

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting515
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start302, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1454 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1454, label %for.body3.i60.preheader1582, label %vector.ph1455

vector.ph1455:                                    ; preds = %for.body3.i60.preheader
  %n.vec1457 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1453

vector.body1453:                                  ; preds = %vector.body1453, %vector.ph1455
  %index1458 = phi i64 [ 0, %vector.ph1455 ], [ %index.next1459, %vector.body1453 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call876, i64 %indvars.iv21.i52, i64 %index1458
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1462 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1462, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1459 = add i64 %index1458, 4
  %57 = icmp eq i64 %index.next1459, %n.vec1457
  br i1 %57, label %middle.block1451, label %vector.body1453, !llvm.loop !64

middle.block1451:                                 ; preds = %vector.body1453
  %cmp.n1461 = icmp eq i64 %indvars.iv21.i52, %n.vec1457
  br i1 %cmp.n1461, label %for.inc6.i63, label %for.body3.i60.preheader1582

for.body3.i60.preheader1582:                      ; preds = %for.body3.i60.preheader, %middle.block1451
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1457, %middle.block1451 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1582, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1582 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call876, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1451, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call876, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !47

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting303
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1517 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1517, label %for.body3.i99.preheader1579, label %vector.ph1518

vector.ph1518:                                    ; preds = %for.body3.i99.preheader
  %n.vec1520 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1516

vector.body1516:                                  ; preds = %vector.body1516, %vector.ph1518
  %index1521 = phi i64 [ 0, %vector.ph1518 ], [ %index.next1522, %vector.body1516 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call876, i64 %indvars.iv21.i91, i64 %index1521
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1525 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1525, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1522 = add i64 %index1521, 4
  %68 = icmp eq i64 %index.next1522, %n.vec1520
  br i1 %68, label %middle.block1514, label %vector.body1516, !llvm.loop !66

middle.block1514:                                 ; preds = %vector.body1516
  %cmp.n1524 = icmp eq i64 %indvars.iv21.i91, %n.vec1520
  br i1 %cmp.n1524, label %for.inc6.i102, label %for.body3.i99.preheader1579

for.body3.i99.preheader1579:                      ; preds = %for.body3.i99.preheader, %middle.block1514
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1520, %middle.block1514 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1579, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1579 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call876, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1514, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call876, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call876, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !70

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
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
  %malloccall = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  %malloccall136 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit230.1
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1529 = phi i64 [ %indvar.next1530, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1529, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1531 = icmp ult i64 %88, 4
  br i1 %min.iters.check1531, label %polly.loop_header192.preheader, label %vector.ph1532

vector.ph1532:                                    ; preds = %polly.loop_header
  %n.vec1534 = and i64 %88, -4
  br label %vector.body1528

vector.body1528:                                  ; preds = %vector.body1528, %vector.ph1532
  %index1535 = phi i64 [ 0, %vector.ph1532 ], [ %index.next1536, %vector.body1528 ]
  %90 = shl nuw nsw i64 %index1535, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1539 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1539, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1536 = add i64 %index1535, 4
  %95 = icmp eq i64 %index.next1536, %n.vec1534
  br i1 %95, label %middle.block1526, label %vector.body1528, !llvm.loop !79

middle.block1526:                                 ; preds = %vector.body1528
  %cmp.n1538 = icmp eq i64 %88, %n.vec1534
  br i1 %cmp.n1538, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1526
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1534, %middle.block1526 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1526
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond969.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1530 = add i64 %indvar1529, 1
  br i1 %exitcond969.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond968.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond968.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit230.1
  %polly.loop_cond205 = phi i1 [ false, %polly.loop_exit230.1 ], [ true, %polly.loop_header200.preheader ]
  %polly.indvar203 = phi i64 [ 1, %polly.loop_exit230.1 ], [ 0, %polly.loop_header200.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar203, -50
  %98 = icmp slt i64 %97, -10
  %99 = select i1 %98, i64 %97, i64 -10
  %100 = mul nuw nsw i64 %polly.indvar203, 50
  %101 = add nsw i64 %99, 60
  br label %polly.loop_header212

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header200
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %102 = add nuw nsw i64 %polly.indvar215, %100
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 80
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond954.not = icmp eq i64 %polly.indvar_next216, %101
  br i1 %exitcond954.not, label %polly.loop_header228, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %polly.access.mul.call2225 = mul nuw nsw i64 %polly.indvar221, 60
  %polly.access.add.call2226 = add nuw nsw i64 %102, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2738, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, 80
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit220, %polly.loop_exit265
  %indvars.iv961 = phi i64 [ %indvars.iv.next962, %polly.loop_exit265 ], [ 0, %polly.loop_exit220 ]
  %indvars.iv959 = phi i64 [ %indvars.iv.next960, %polly.loop_exit265 ], [ 0, %polly.loop_exit220 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit265 ], [ 20, %polly.loop_exit220 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit265 ], [ 0, %polly.loop_exit220 ]
  %103 = mul nuw nsw i64 %polly.indvar231, 20
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv959, i64 0)
  %104 = add nuw i64 %smax, %indvars.iv961
  %105 = icmp eq i64 %polly.indvar231, 0
  br i1 %105, label %polly.loop_header234.us, label %polly.loop_header234

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.merge.loopexit.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.merge.loopexit.us ], [ 0, %polly.loop_header228 ]
  %106 = add nuw nsw i64 %polly.indvar237.us, %100
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 80
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header234.us
  %polly.indvar243.us = phi i64 [ 0, %polly.loop_header234.us ], [ %polly.indvar_next244.us, %polly.loop_header240.us ]
  %polly.access.mul.call1247.us = mul nuw nsw i64 %polly.indvar243.us, 60
  %polly.access.add.call1248.us = add nuw nsw i64 %106, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond957.not = icmp eq i64 %polly.indvar_next244.us, 20
  br i1 %exitcond957.not, label %polly.merge.loopexit.us, label %polly.loop_header240.us

polly.merge.loopexit.us:                          ; preds = %polly.loop_header240.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond958.not = icmp eq i64 %polly.indvar_next238.us, %101
  br i1 %exitcond958.not, label %polly.loop_header263.preheader, label %polly.loop_header234.us

polly.loop_exit265:                               ; preds = %polly.loop_exit271
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 20
  %indvars.iv.next960 = add nsw i64 %indvars.iv959, -20
  %indvars.iv.next962 = add nuw nsw i64 %indvars.iv961, 20
  %exitcond967.not = icmp eq i64 %polly.indvar_next232, 4
  br i1 %exitcond967.not, label %polly.loop_header212.1, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header228, %polly.merge
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.merge ], [ 0, %polly.loop_header228 ]
  %107 = add nuw nsw i64 %polly.indvar237, %100
  %polly.access.mul.Packed_MemRef_call1260 = mul nuw nsw i64 %polly.indvar237, 80
  br label %polly.loop_header250

polly.merge:                                      ; preds = %polly.loop_header250
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond956.not = icmp eq i64 %polly.indvar_next238, %101
  br i1 %exitcond956.not, label %polly.loop_header263.preheader, label %polly.loop_header234

polly.loop_header263.preheader:                   ; preds = %polly.merge, %polly.merge.loopexit.us
  %108 = mul nuw nsw i64 %polly.indvar231, 20
  br label %polly.loop_header263

polly.loop_header250:                             ; preds = %polly.loop_header250, %polly.loop_header234
  %polly.indvar253 = phi i64 [ 0, %polly.loop_header234 ], [ %polly.indvar_next254, %polly.loop_header250 ]
  %polly.access.mul.call1257 = mul nuw nsw i64 %polly.indvar253, 60
  %polly.access.add.call1258 = add nuw nsw i64 %107, %polly.access.mul.call1257
  %polly.access.call1259 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1258
  %polly.access.call1259.load = load double, double* %polly.access.call1259, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261 = add nuw nsw i64 %polly.indvar253, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261
  store double %polly.access.call1259.load, double* %polly.access.Packed_MemRef_call1262, align 8
  %polly.indvar_next254 = add nuw nsw i64 %polly.indvar253, 1
  %exitcond955.not = icmp eq i64 %polly.indvar_next254, %indvars.iv
  br i1 %exitcond955.not, label %polly.merge, label %polly.loop_header250

polly.loop_header263:                             ; preds = %polly.loop_header263.preheader, %polly.loop_exit271
  %polly.indvar266 = phi i64 [ %polly.indvar_next267, %polly.loop_exit271 ], [ 0, %polly.loop_header263.preheader ]
  %polly.access.mul.Packed_MemRef_call1281 = mul nuw nsw i64 %polly.indvar266, 80
  br label %polly.loop_header269

polly.loop_exit271:                               ; preds = %polly.loop_exit277
  %polly.indvar_next267 = add nuw nsw i64 %polly.indvar266, 1
  %exitcond966.not = icmp eq i64 %polly.indvar_next267, %101
  br i1 %exitcond966.not, label %polly.loop_exit265, label %polly.loop_header263

polly.loop_header269:                             ; preds = %polly.loop_exit277, %polly.loop_header263
  %indvars.iv963 = phi i64 [ %indvars.iv.next964, %polly.loop_exit277 ], [ %104, %polly.loop_header263 ]
  %polly.indvar272 = phi i64 [ %polly.indvar_next273, %polly.loop_exit277 ], [ 0, %polly.loop_header263 ]
  %109 = add nuw i64 %103, %polly.indvar272
  %smin1561 = call i64 @llvm.smin.i64(i64 %109, i64 63)
  %110 = add nuw nsw i64 %smin1561, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv963, i64 63)
  %111 = add nuw i64 %polly.indvar272, %108
  %polly.loop_guard1094 = icmp sgt i64 %111, -1
  br i1 %polly.loop_guard1094, label %polly.loop_header275.preheader, label %polly.loop_exit277

polly.loop_header275.preheader:                   ; preds = %polly.loop_header269
  %polly.access.add.Packed_MemRef_call2286 = add nsw i64 %polly.access.mul.Packed_MemRef_call1281, %111
  %polly.access.Packed_MemRef_call2287 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286
  %_p_scalar_288 = load double, double* %polly.access.Packed_MemRef_call2287, align 8
  %polly.access.Packed_MemRef_call1295 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2286
  %_p_scalar_296 = load double, double* %polly.access.Packed_MemRef_call1295, align 8
  %112 = mul i64 %111, 640
  %min.iters.check1562 = icmp ult i64 %smin1561, 3
  br i1 %min.iters.check1562, label %polly.loop_header275.preheader1577, label %vector.ph1563

vector.ph1563:                                    ; preds = %polly.loop_header275.preheader
  %n.vec1565 = and i64 %110, -4
  %broadcast.splatinsert1571 = insertelement <4 x double> poison, double %_p_scalar_288, i32 0
  %broadcast.splat1572 = shufflevector <4 x double> %broadcast.splatinsert1571, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1574 = insertelement <4 x double> poison, double %_p_scalar_296, i32 0
  %broadcast.splat1575 = shufflevector <4 x double> %broadcast.splatinsert1574, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1560

vector.body1560:                                  ; preds = %vector.body1560, %vector.ph1563
  %index1566 = phi i64 [ 0, %vector.ph1563 ], [ %index.next1567, %vector.body1560 ]
  %113 = add nuw nsw i64 %index1566, %polly.access.mul.Packed_MemRef_call1281
  %114 = getelementptr double, double* %Packed_MemRef_call1, i64 %113
  %115 = bitcast double* %114 to <4 x double>*
  %wide.load1570 = load <4 x double>, <4 x double>* %115, align 8
  %116 = fmul fast <4 x double> %broadcast.splat1572, %wide.load1570
  %117 = getelementptr double, double* %Packed_MemRef_call2, i64 %113
  %118 = bitcast double* %117 to <4 x double>*
  %wide.load1573 = load <4 x double>, <4 x double>* %118, align 8
  %119 = fmul fast <4 x double> %broadcast.splat1575, %wide.load1573
  %120 = shl i64 %index1566, 3
  %121 = add i64 %120, %112
  %122 = getelementptr i8, i8* %call, i64 %121
  %123 = bitcast i8* %122 to <4 x double>*
  %wide.load1576 = load <4 x double>, <4 x double>* %123, align 8, !alias.scope !72, !noalias !74
  %124 = fadd fast <4 x double> %119, %116
  %125 = fmul fast <4 x double> %124, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %126 = fadd fast <4 x double> %125, %wide.load1576
  %127 = bitcast i8* %122 to <4 x double>*
  store <4 x double> %126, <4 x double>* %127, align 8, !alias.scope !72, !noalias !74
  %index.next1567 = add i64 %index1566, 4
  %128 = icmp eq i64 %index.next1567, %n.vec1565
  br i1 %128, label %middle.block1558, label %vector.body1560, !llvm.loop !84

middle.block1558:                                 ; preds = %vector.body1560
  %cmp.n1569 = icmp eq i64 %110, %n.vec1565
  br i1 %cmp.n1569, label %polly.loop_exit277, label %polly.loop_header275.preheader1577

polly.loop_header275.preheader1577:               ; preds = %polly.loop_header275.preheader, %middle.block1558
  %polly.indvar278.ph = phi i64 [ 0, %polly.loop_header275.preheader ], [ %n.vec1565, %middle.block1558 ]
  br label %polly.loop_header275

polly.loop_exit277:                               ; preds = %polly.loop_header275, %middle.block1558, %polly.loop_header269
  %polly.indvar_next273 = add nuw nsw i64 %polly.indvar272, 1
  %polly.loop_cond274 = icmp ult i64 %polly.indvar272, 19
  %indvars.iv.next964 = add i64 %indvars.iv963, 1
  br i1 %polly.loop_cond274, label %polly.loop_header269, label %polly.loop_exit271

polly.loop_header275:                             ; preds = %polly.loop_header275.preheader1577, %polly.loop_header275
  %polly.indvar278 = phi i64 [ %polly.indvar_next279, %polly.loop_header275 ], [ %polly.indvar278.ph, %polly.loop_header275.preheader1577 ]
  %polly.access.add.Packed_MemRef_call1282 = add nuw nsw i64 %polly.indvar278, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call1283 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282
  %_p_scalar_284 = load double, double* %polly.access.Packed_MemRef_call1283, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_288, %_p_scalar_284
  %polly.access.Packed_MemRef_call2291 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1282
  %_p_scalar_292 = load double, double* %polly.access.Packed_MemRef_call2291, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_296, %_p_scalar_292
  %129 = shl i64 %polly.indvar278, 3
  %130 = add i64 %129, %112
  %scevgep297 = getelementptr i8, i8* %call, i64 %130
  %scevgep297298 = bitcast i8* %scevgep297 to double*
  %_p_scalar_299 = load double, double* %scevgep297298, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_299
  store double %p_add42.i118, double* %scevgep297298, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next279 = add nuw nsw i64 %polly.indvar278, 1
  %exitcond965.not = icmp eq i64 %polly.indvar278, %smin
  br i1 %exitcond965.not, label %polly.loop_exit277, label %polly.loop_header275, !llvm.loop !85

polly.start302:                                   ; preds = %kernel_syr2k.exit
  %malloccall304 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  %malloccall306 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  br label %polly.loop_header390

polly.exiting303:                                 ; preds = %polly.loop_exit436.1
  tail call void @free(i8* %malloccall304)
  tail call void @free(i8* %malloccall306)
  br label %kernel_syr2k.exit90

polly.loop_header390:                             ; preds = %polly.loop_exit398, %polly.start302
  %indvar1466 = phi i64 [ %indvar.next1467, %polly.loop_exit398 ], [ 0, %polly.start302 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ 1, %polly.start302 ]
  %131 = add i64 %indvar1466, 1
  %132 = mul nuw nsw i64 %polly.indvar393, 640
  %scevgep402 = getelementptr i8, i8* %call, i64 %132
  %min.iters.check1468 = icmp ult i64 %131, 4
  br i1 %min.iters.check1468, label %polly.loop_header396.preheader, label %vector.ph1469

vector.ph1469:                                    ; preds = %polly.loop_header390
  %n.vec1471 = and i64 %131, -4
  br label %vector.body1465

vector.body1465:                                  ; preds = %vector.body1465, %vector.ph1469
  %index1472 = phi i64 [ 0, %vector.ph1469 ], [ %index.next1473, %vector.body1465 ]
  %133 = shl nuw nsw i64 %index1472, 3
  %134 = getelementptr i8, i8* %scevgep402, i64 %133
  %135 = bitcast i8* %134 to <4 x double>*
  %wide.load1476 = load <4 x double>, <4 x double>* %135, align 8, !alias.scope !86, !noalias !88
  %136 = fmul fast <4 x double> %wide.load1476, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %137 = bitcast i8* %134 to <4 x double>*
  store <4 x double> %136, <4 x double>* %137, align 8, !alias.scope !86, !noalias !88
  %index.next1473 = add i64 %index1472, 4
  %138 = icmp eq i64 %index.next1473, %n.vec1471
  br i1 %138, label %middle.block1463, label %vector.body1465, !llvm.loop !93

middle.block1463:                                 ; preds = %vector.body1465
  %cmp.n1475 = icmp eq i64 %131, %n.vec1471
  br i1 %cmp.n1475, label %polly.loop_exit398, label %polly.loop_header396.preheader

polly.loop_header396.preheader:                   ; preds = %polly.loop_header390, %middle.block1463
  %polly.indvar399.ph = phi i64 [ 0, %polly.loop_header390 ], [ %n.vec1471, %middle.block1463 ]
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_header396, %middle.block1463
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond990.not = icmp eq i64 %polly.indvar_next394, 80
  %indvar.next1467 = add i64 %indvar1466, 1
  br i1 %exitcond990.not, label %polly.loop_header406.preheader, label %polly.loop_header390

polly.loop_header406.preheader:                   ; preds = %polly.loop_exit398
  %Packed_MemRef_call1305 = bitcast i8* %malloccall304 to double*
  %Packed_MemRef_call2307 = bitcast i8* %malloccall306 to double*
  br label %polly.loop_header406

polly.loop_header396:                             ; preds = %polly.loop_header396.preheader, %polly.loop_header396
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_header396 ], [ %polly.indvar399.ph, %polly.loop_header396.preheader ]
  %139 = shl nuw nsw i64 %polly.indvar399, 3
  %scevgep403 = getelementptr i8, i8* %scevgep402, i64 %139
  %scevgep403404 = bitcast i8* %scevgep403 to double*
  %_p_scalar_405 = load double, double* %scevgep403404, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_405, 1.200000e+00
  store double %p_mul.i57, double* %scevgep403404, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond989.not = icmp eq i64 %polly.indvar_next400, %polly.indvar393
  br i1 %exitcond989.not, label %polly.loop_exit398, label %polly.loop_header396, !llvm.loop !94

polly.loop_header406:                             ; preds = %polly.loop_header406.preheader, %polly.loop_exit436.1
  %polly.loop_cond411 = phi i1 [ false, %polly.loop_exit436.1 ], [ true, %polly.loop_header406.preheader ]
  %polly.indvar409 = phi i64 [ 1, %polly.loop_exit436.1 ], [ 0, %polly.loop_header406.preheader ]
  %140 = mul nuw nsw i64 %polly.indvar409, -50
  %141 = icmp slt i64 %140, -10
  %142 = select i1 %141, i64 %140, i64 -10
  %143 = mul nuw nsw i64 %polly.indvar409, 50
  %144 = add nsw i64 %142, 60
  br label %polly.loop_header418

polly.loop_header418:                             ; preds = %polly.loop_exit426, %polly.loop_header406
  %polly.indvar421 = phi i64 [ 0, %polly.loop_header406 ], [ %polly.indvar_next422, %polly.loop_exit426 ]
  %145 = add nuw nsw i64 %polly.indvar421, %143
  %polly.access.mul.Packed_MemRef_call2307 = mul nuw nsw i64 %polly.indvar421, 80
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_header424
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %exitcond971.not = icmp eq i64 %polly.indvar_next422, %144
  br i1 %exitcond971.not, label %polly.loop_header434, label %polly.loop_header418

polly.loop_header424:                             ; preds = %polly.loop_header424, %polly.loop_header418
  %polly.indvar427 = phi i64 [ 0, %polly.loop_header418 ], [ %polly.indvar_next428, %polly.loop_header424 ]
  %polly.access.mul.call2431 = mul nuw nsw i64 %polly.indvar427, 60
  %polly.access.add.call2432 = add nuw nsw i64 %145, %polly.access.mul.call2431
  %polly.access.call2433 = getelementptr double, double* %polly.access.cast.call2738, i64 %polly.access.add.call2432
  %polly.access.call2433.load = load double, double* %polly.access.call2433, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2307 = add nuw nsw i64 %polly.indvar427, %polly.access.mul.Packed_MemRef_call2307
  %polly.access.Packed_MemRef_call2307 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307
  store double %polly.access.call2433.load, double* %polly.access.Packed_MemRef_call2307, align 8
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %exitcond970.not = icmp eq i64 %polly.indvar_next428, 80
  br i1 %exitcond970.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header434:                             ; preds = %polly.loop_exit426, %polly.loop_exit475
  %indvars.iv981 = phi i64 [ %indvars.iv.next982, %polly.loop_exit475 ], [ 0, %polly.loop_exit426 ]
  %indvars.iv978 = phi i64 [ %indvars.iv.next979, %polly.loop_exit475 ], [ 0, %polly.loop_exit426 ]
  %indvars.iv972 = phi i64 [ %indvars.iv.next973, %polly.loop_exit475 ], [ 20, %polly.loop_exit426 ]
  %polly.indvar437 = phi i64 [ %polly.indvar_next438, %polly.loop_exit475 ], [ 0, %polly.loop_exit426 ]
  %146 = mul nuw nsw i64 %polly.indvar437, 20
  %smax980 = call i64 @llvm.smax.i64(i64 %indvars.iv978, i64 0)
  %147 = add nuw i64 %smax980, %indvars.iv981
  %148 = icmp eq i64 %polly.indvar437, 0
  br i1 %148, label %polly.loop_header440.us, label %polly.loop_header440

polly.loop_header440.us:                          ; preds = %polly.loop_header434, %polly.merge447.loopexit.us
  %polly.indvar443.us = phi i64 [ %polly.indvar_next444.us, %polly.merge447.loopexit.us ], [ 0, %polly.loop_header434 ]
  %149 = add nuw nsw i64 %polly.indvar443.us, %143
  %polly.access.mul.Packed_MemRef_call1305.us = mul nuw nsw i64 %polly.indvar443.us, 80
  br label %polly.loop_header450.us

polly.loop_header450.us:                          ; preds = %polly.loop_header450.us, %polly.loop_header440.us
  %polly.indvar453.us = phi i64 [ 0, %polly.loop_header440.us ], [ %polly.indvar_next454.us, %polly.loop_header450.us ]
  %polly.access.mul.call1457.us = mul nuw nsw i64 %polly.indvar453.us, 60
  %polly.access.add.call1458.us = add nuw nsw i64 %149, %polly.access.mul.call1457.us
  %polly.access.call1459.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1458.us
  %polly.access.call1459.load.us = load double, double* %polly.access.call1459.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1305.us = add nuw nsw i64 %polly.indvar453.us, %polly.access.mul.Packed_MemRef_call1305.us
  %polly.access.Packed_MemRef_call1305.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us
  store double %polly.access.call1459.load.us, double* %polly.access.Packed_MemRef_call1305.us, align 8
  %polly.indvar_next454.us = add nuw nsw i64 %polly.indvar453.us, 1
  %exitcond976.not = icmp eq i64 %polly.indvar_next454.us, 20
  br i1 %exitcond976.not, label %polly.merge447.loopexit.us, label %polly.loop_header450.us

polly.merge447.loopexit.us:                       ; preds = %polly.loop_header450.us
  %polly.indvar_next444.us = add nuw nsw i64 %polly.indvar443.us, 1
  %exitcond977.not = icmp eq i64 %polly.indvar_next444.us, %144
  br i1 %exitcond977.not, label %polly.loop_header473.preheader, label %polly.loop_header440.us

polly.loop_exit475:                               ; preds = %polly.loop_exit481
  %polly.indvar_next438 = add nuw nsw i64 %polly.indvar437, 1
  %indvars.iv.next973 = add nuw nsw i64 %indvars.iv972, 20
  %indvars.iv.next979 = add nsw i64 %indvars.iv978, -20
  %indvars.iv.next982 = add nuw nsw i64 %indvars.iv981, 20
  %exitcond988.not = icmp eq i64 %polly.indvar_next438, 4
  br i1 %exitcond988.not, label %polly.loop_header418.1, label %polly.loop_header434

polly.loop_header440:                             ; preds = %polly.loop_header434, %polly.merge447
  %polly.indvar443 = phi i64 [ %polly.indvar_next444, %polly.merge447 ], [ 0, %polly.loop_header434 ]
  %150 = add nuw nsw i64 %polly.indvar443, %143
  %polly.access.mul.Packed_MemRef_call1305470 = mul nuw nsw i64 %polly.indvar443, 80
  br label %polly.loop_header460

polly.merge447:                                   ; preds = %polly.loop_header460
  %polly.indvar_next444 = add nuw nsw i64 %polly.indvar443, 1
  %exitcond975.not = icmp eq i64 %polly.indvar_next444, %144
  br i1 %exitcond975.not, label %polly.loop_header473.preheader, label %polly.loop_header440

polly.loop_header473.preheader:                   ; preds = %polly.merge447, %polly.merge447.loopexit.us
  %151 = mul nuw nsw i64 %polly.indvar437, 20
  br label %polly.loop_header473

polly.loop_header460:                             ; preds = %polly.loop_header460, %polly.loop_header440
  %polly.indvar463 = phi i64 [ 0, %polly.loop_header440 ], [ %polly.indvar_next464, %polly.loop_header460 ]
  %polly.access.mul.call1467 = mul nuw nsw i64 %polly.indvar463, 60
  %polly.access.add.call1468 = add nuw nsw i64 %150, %polly.access.mul.call1467
  %polly.access.call1469 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1468
  %polly.access.call1469.load = load double, double* %polly.access.call1469, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1305471 = add nuw nsw i64 %polly.indvar463, %polly.access.mul.Packed_MemRef_call1305470
  %polly.access.Packed_MemRef_call1305472 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305471
  store double %polly.access.call1469.load, double* %polly.access.Packed_MemRef_call1305472, align 8
  %polly.indvar_next464 = add nuw nsw i64 %polly.indvar463, 1
  %exitcond974.not = icmp eq i64 %polly.indvar_next464, %indvars.iv972
  br i1 %exitcond974.not, label %polly.merge447, label %polly.loop_header460

polly.loop_header473:                             ; preds = %polly.loop_header473.preheader, %polly.loop_exit481
  %polly.indvar476 = phi i64 [ %polly.indvar_next477, %polly.loop_exit481 ], [ 0, %polly.loop_header473.preheader ]
  %polly.access.mul.Packed_MemRef_call1305493 = mul nuw nsw i64 %polly.indvar476, 80
  br label %polly.loop_header479

polly.loop_exit481:                               ; preds = %polly.loop_exit488
  %polly.indvar_next477 = add nuw nsw i64 %polly.indvar476, 1
  %exitcond987.not = icmp eq i64 %polly.indvar_next477, %144
  br i1 %exitcond987.not, label %polly.loop_exit475, label %polly.loop_header473

polly.loop_header479:                             ; preds = %polly.loop_exit488, %polly.loop_header473
  %indvars.iv983 = phi i64 [ %indvars.iv.next984, %polly.loop_exit488 ], [ %147, %polly.loop_header473 ]
  %polly.indvar482 = phi i64 [ %polly.indvar_next483, %polly.loop_exit488 ], [ 0, %polly.loop_header473 ]
  %152 = add nuw i64 %146, %polly.indvar482
  %smin1498 = call i64 @llvm.smin.i64(i64 %152, i64 63)
  %153 = add nuw nsw i64 %smin1498, 1
  %smin985 = call i64 @llvm.smin.i64(i64 %indvars.iv983, i64 63)
  %154 = add nuw i64 %polly.indvar482, %151
  %polly.loop_guard4891096 = icmp sgt i64 %154, -1
  br i1 %polly.loop_guard4891096, label %polly.loop_header486.preheader, label %polly.loop_exit488

polly.loop_header486.preheader:                   ; preds = %polly.loop_header479
  %polly.access.add.Packed_MemRef_call2307498 = add nsw i64 %polly.access.mul.Packed_MemRef_call1305493, %154
  %polly.access.Packed_MemRef_call2307499 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307498
  %_p_scalar_500 = load double, double* %polly.access.Packed_MemRef_call2307499, align 8
  %polly.access.Packed_MemRef_call1305507 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call2307498
  %_p_scalar_508 = load double, double* %polly.access.Packed_MemRef_call1305507, align 8
  %155 = mul i64 %154, 640
  %min.iters.check1499 = icmp ult i64 %smin1498, 3
  br i1 %min.iters.check1499, label %polly.loop_header486.preheader1580, label %vector.ph1500

vector.ph1500:                                    ; preds = %polly.loop_header486.preheader
  %n.vec1502 = and i64 %153, -4
  %broadcast.splatinsert1508 = insertelement <4 x double> poison, double %_p_scalar_500, i32 0
  %broadcast.splat1509 = shufflevector <4 x double> %broadcast.splatinsert1508, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1511 = insertelement <4 x double> poison, double %_p_scalar_508, i32 0
  %broadcast.splat1512 = shufflevector <4 x double> %broadcast.splatinsert1511, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1497

vector.body1497:                                  ; preds = %vector.body1497, %vector.ph1500
  %index1503 = phi i64 [ 0, %vector.ph1500 ], [ %index.next1504, %vector.body1497 ]
  %156 = add nuw nsw i64 %index1503, %polly.access.mul.Packed_MemRef_call1305493
  %157 = getelementptr double, double* %Packed_MemRef_call1305, i64 %156
  %158 = bitcast double* %157 to <4 x double>*
  %wide.load1507 = load <4 x double>, <4 x double>* %158, align 8
  %159 = fmul fast <4 x double> %broadcast.splat1509, %wide.load1507
  %160 = getelementptr double, double* %Packed_MemRef_call2307, i64 %156
  %161 = bitcast double* %160 to <4 x double>*
  %wide.load1510 = load <4 x double>, <4 x double>* %161, align 8
  %162 = fmul fast <4 x double> %broadcast.splat1512, %wide.load1510
  %163 = shl i64 %index1503, 3
  %164 = add i64 %163, %155
  %165 = getelementptr i8, i8* %call, i64 %164
  %166 = bitcast i8* %165 to <4 x double>*
  %wide.load1513 = load <4 x double>, <4 x double>* %166, align 8, !alias.scope !86, !noalias !88
  %167 = fadd fast <4 x double> %162, %159
  %168 = fmul fast <4 x double> %167, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %169 = fadd fast <4 x double> %168, %wide.load1513
  %170 = bitcast i8* %165 to <4 x double>*
  store <4 x double> %169, <4 x double>* %170, align 8, !alias.scope !86, !noalias !88
  %index.next1504 = add i64 %index1503, 4
  %171 = icmp eq i64 %index.next1504, %n.vec1502
  br i1 %171, label %middle.block1495, label %vector.body1497, !llvm.loop !97

middle.block1495:                                 ; preds = %vector.body1497
  %cmp.n1506 = icmp eq i64 %153, %n.vec1502
  br i1 %cmp.n1506, label %polly.loop_exit488, label %polly.loop_header486.preheader1580

polly.loop_header486.preheader1580:               ; preds = %polly.loop_header486.preheader, %middle.block1495
  %polly.indvar490.ph = phi i64 [ 0, %polly.loop_header486.preheader ], [ %n.vec1502, %middle.block1495 ]
  br label %polly.loop_header486

polly.loop_exit488:                               ; preds = %polly.loop_header486, %middle.block1495, %polly.loop_header479
  %polly.indvar_next483 = add nuw nsw i64 %polly.indvar482, 1
  %polly.loop_cond484 = icmp ult i64 %polly.indvar482, 19
  %indvars.iv.next984 = add i64 %indvars.iv983, 1
  br i1 %polly.loop_cond484, label %polly.loop_header479, label %polly.loop_exit481

polly.loop_header486:                             ; preds = %polly.loop_header486.preheader1580, %polly.loop_header486
  %polly.indvar490 = phi i64 [ %polly.indvar_next491, %polly.loop_header486 ], [ %polly.indvar490.ph, %polly.loop_header486.preheader1580 ]
  %polly.access.add.Packed_MemRef_call1305494 = add nuw nsw i64 %polly.indvar490, %polly.access.mul.Packed_MemRef_call1305493
  %polly.access.Packed_MemRef_call1305495 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305494
  %_p_scalar_496 = load double, double* %polly.access.Packed_MemRef_call1305495, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_500, %_p_scalar_496
  %polly.access.Packed_MemRef_call2307503 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call1305494
  %_p_scalar_504 = load double, double* %polly.access.Packed_MemRef_call2307503, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_508, %_p_scalar_504
  %172 = shl i64 %polly.indvar490, 3
  %173 = add i64 %172, %155
  %scevgep509 = getelementptr i8, i8* %call, i64 %173
  %scevgep509510 = bitcast i8* %scevgep509 to double*
  %_p_scalar_511 = load double, double* %scevgep509510, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_511
  store double %p_add42.i79, double* %scevgep509510, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next491 = add nuw nsw i64 %polly.indvar490, 1
  %exitcond986.not = icmp eq i64 %polly.indvar490, %smin985
  br i1 %exitcond986.not, label %polly.loop_exit488, label %polly.loop_header486, !llvm.loop !98

polly.start514:                                   ; preds = %init_array.exit
  %malloccall516 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  %malloccall518 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  br label %polly.loop_header602

polly.exiting515:                                 ; preds = %polly.loop_exit648.1
  tail call void @free(i8* %malloccall516)
  tail call void @free(i8* %malloccall518)
  br label %kernel_syr2k.exit

polly.loop_header602:                             ; preds = %polly.loop_exit610, %polly.start514
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit610 ], [ 0, %polly.start514 ]
  %polly.indvar605 = phi i64 [ %polly.indvar_next606, %polly.loop_exit610 ], [ 1, %polly.start514 ]
  %174 = add i64 %indvar, 1
  %175 = mul nuw nsw i64 %polly.indvar605, 640
  %scevgep614 = getelementptr i8, i8* %call, i64 %175
  %min.iters.check1405 = icmp ult i64 %174, 4
  br i1 %min.iters.check1405, label %polly.loop_header608.preheader, label %vector.ph1406

vector.ph1406:                                    ; preds = %polly.loop_header602
  %n.vec1408 = and i64 %174, -4
  br label %vector.body1404

vector.body1404:                                  ; preds = %vector.body1404, %vector.ph1406
  %index1409 = phi i64 [ 0, %vector.ph1406 ], [ %index.next1410, %vector.body1404 ]
  %176 = shl nuw nsw i64 %index1409, 3
  %177 = getelementptr i8, i8* %scevgep614, i64 %176
  %178 = bitcast i8* %177 to <4 x double>*
  %wide.load1413 = load <4 x double>, <4 x double>* %178, align 8, !alias.scope !99, !noalias !101
  %179 = fmul fast <4 x double> %wide.load1413, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %180 = bitcast i8* %177 to <4 x double>*
  store <4 x double> %179, <4 x double>* %180, align 8, !alias.scope !99, !noalias !101
  %index.next1410 = add i64 %index1409, 4
  %181 = icmp eq i64 %index.next1410, %n.vec1408
  br i1 %181, label %middle.block1402, label %vector.body1404, !llvm.loop !106

middle.block1402:                                 ; preds = %vector.body1404
  %cmp.n1412 = icmp eq i64 %174, %n.vec1408
  br i1 %cmp.n1412, label %polly.loop_exit610, label %polly.loop_header608.preheader

polly.loop_header608.preheader:                   ; preds = %polly.loop_header602, %middle.block1402
  %polly.indvar611.ph = phi i64 [ 0, %polly.loop_header602 ], [ %n.vec1408, %middle.block1402 ]
  br label %polly.loop_header608

polly.loop_exit610:                               ; preds = %polly.loop_header608, %middle.block1402
  %polly.indvar_next606 = add nuw nsw i64 %polly.indvar605, 1
  %exitcond1011.not = icmp eq i64 %polly.indvar_next606, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1011.not, label %polly.loop_header618.preheader, label %polly.loop_header602

polly.loop_header618.preheader:                   ; preds = %polly.loop_exit610
  %Packed_MemRef_call1517 = bitcast i8* %malloccall516 to double*
  %Packed_MemRef_call2519 = bitcast i8* %malloccall518 to double*
  br label %polly.loop_header618

polly.loop_header608:                             ; preds = %polly.loop_header608.preheader, %polly.loop_header608
  %polly.indvar611 = phi i64 [ %polly.indvar_next612, %polly.loop_header608 ], [ %polly.indvar611.ph, %polly.loop_header608.preheader ]
  %182 = shl nuw nsw i64 %polly.indvar611, 3
  %scevgep615 = getelementptr i8, i8* %scevgep614, i64 %182
  %scevgep615616 = bitcast i8* %scevgep615 to double*
  %_p_scalar_617 = load double, double* %scevgep615616, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_617, 1.200000e+00
  store double %p_mul.i, double* %scevgep615616, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next612 = add nuw nsw i64 %polly.indvar611, 1
  %exitcond1010.not = icmp eq i64 %polly.indvar_next612, %polly.indvar605
  br i1 %exitcond1010.not, label %polly.loop_exit610, label %polly.loop_header608, !llvm.loop !107

polly.loop_header618:                             ; preds = %polly.loop_header618.preheader, %polly.loop_exit648.1
  %polly.loop_cond623 = phi i1 [ false, %polly.loop_exit648.1 ], [ true, %polly.loop_header618.preheader ]
  %polly.indvar621 = phi i64 [ 1, %polly.loop_exit648.1 ], [ 0, %polly.loop_header618.preheader ]
  %183 = mul nuw nsw i64 %polly.indvar621, -50
  %184 = icmp slt i64 %183, -10
  %185 = select i1 %184, i64 %183, i64 -10
  %186 = mul nuw nsw i64 %polly.indvar621, 50
  %187 = add nsw i64 %185, 60
  br label %polly.loop_header630

polly.loop_header630:                             ; preds = %polly.loop_exit638, %polly.loop_header618
  %polly.indvar633 = phi i64 [ 0, %polly.loop_header618 ], [ %polly.indvar_next634, %polly.loop_exit638 ]
  %188 = add nuw nsw i64 %polly.indvar633, %186
  %polly.access.mul.Packed_MemRef_call2519 = mul nuw nsw i64 %polly.indvar633, 80
  br label %polly.loop_header636

polly.loop_exit638:                               ; preds = %polly.loop_header636
  %polly.indvar_next634 = add nuw nsw i64 %polly.indvar633, 1
  %exitcond992.not = icmp eq i64 %polly.indvar_next634, %187
  br i1 %exitcond992.not, label %polly.loop_header646, label %polly.loop_header630

polly.loop_header636:                             ; preds = %polly.loop_header636, %polly.loop_header630
  %polly.indvar639 = phi i64 [ 0, %polly.loop_header630 ], [ %polly.indvar_next640, %polly.loop_header636 ]
  %polly.access.mul.call2643 = mul nuw nsw i64 %polly.indvar639, 60
  %polly.access.add.call2644 = add nuw nsw i64 %188, %polly.access.mul.call2643
  %polly.access.call2645 = getelementptr double, double* %polly.access.cast.call2738, i64 %polly.access.add.call2644
  %polly.access.call2645.load = load double, double* %polly.access.call2645, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2519 = add nuw nsw i64 %polly.indvar639, %polly.access.mul.Packed_MemRef_call2519
  %polly.access.Packed_MemRef_call2519 = getelementptr double, double* %Packed_MemRef_call2519, i64 %polly.access.add.Packed_MemRef_call2519
  store double %polly.access.call2645.load, double* %polly.access.Packed_MemRef_call2519, align 8
  %polly.indvar_next640 = add nuw nsw i64 %polly.indvar639, 1
  %exitcond991.not = icmp eq i64 %polly.indvar_next640, 80
  br i1 %exitcond991.not, label %polly.loop_exit638, label %polly.loop_header636

polly.loop_header646:                             ; preds = %polly.loop_exit638, %polly.loop_exit687
  %indvars.iv1002 = phi i64 [ %indvars.iv.next1003, %polly.loop_exit687 ], [ 0, %polly.loop_exit638 ]
  %indvars.iv999 = phi i64 [ %indvars.iv.next1000, %polly.loop_exit687 ], [ 0, %polly.loop_exit638 ]
  %indvars.iv993 = phi i64 [ %indvars.iv.next994, %polly.loop_exit687 ], [ 20, %polly.loop_exit638 ]
  %polly.indvar649 = phi i64 [ %polly.indvar_next650, %polly.loop_exit687 ], [ 0, %polly.loop_exit638 ]
  %189 = mul nuw nsw i64 %polly.indvar649, 20
  %smax1001 = call i64 @llvm.smax.i64(i64 %indvars.iv999, i64 0)
  %190 = add nuw i64 %smax1001, %indvars.iv1002
  %191 = icmp eq i64 %polly.indvar649, 0
  br i1 %191, label %polly.loop_header652.us, label %polly.loop_header652

polly.loop_header652.us:                          ; preds = %polly.loop_header646, %polly.merge659.loopexit.us
  %polly.indvar655.us = phi i64 [ %polly.indvar_next656.us, %polly.merge659.loopexit.us ], [ 0, %polly.loop_header646 ]
  %192 = add nuw nsw i64 %polly.indvar655.us, %186
  %polly.access.mul.Packed_MemRef_call1517.us = mul nuw nsw i64 %polly.indvar655.us, 80
  br label %polly.loop_header662.us

polly.loop_header662.us:                          ; preds = %polly.loop_header662.us, %polly.loop_header652.us
  %polly.indvar665.us = phi i64 [ 0, %polly.loop_header652.us ], [ %polly.indvar_next666.us, %polly.loop_header662.us ]
  %polly.access.mul.call1669.us = mul nuw nsw i64 %polly.indvar665.us, 60
  %polly.access.add.call1670.us = add nuw nsw i64 %192, %polly.access.mul.call1669.us
  %polly.access.call1671.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1670.us
  %polly.access.call1671.load.us = load double, double* %polly.access.call1671.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1517.us = add nuw nsw i64 %polly.indvar665.us, %polly.access.mul.Packed_MemRef_call1517.us
  %polly.access.Packed_MemRef_call1517.us = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517.us
  store double %polly.access.call1671.load.us, double* %polly.access.Packed_MemRef_call1517.us, align 8
  %polly.indvar_next666.us = add nuw nsw i64 %polly.indvar665.us, 1
  %exitcond997.not = icmp eq i64 %polly.indvar_next666.us, 20
  br i1 %exitcond997.not, label %polly.merge659.loopexit.us, label %polly.loop_header662.us

polly.merge659.loopexit.us:                       ; preds = %polly.loop_header662.us
  %polly.indvar_next656.us = add nuw nsw i64 %polly.indvar655.us, 1
  %exitcond998.not = icmp eq i64 %polly.indvar_next656.us, %187
  br i1 %exitcond998.not, label %polly.loop_header685.preheader, label %polly.loop_header652.us

polly.loop_exit687:                               ; preds = %polly.loop_exit693
  %polly.indvar_next650 = add nuw nsw i64 %polly.indvar649, 1
  %indvars.iv.next994 = add nuw nsw i64 %indvars.iv993, 20
  %indvars.iv.next1000 = add nsw i64 %indvars.iv999, -20
  %indvars.iv.next1003 = add nuw nsw i64 %indvars.iv1002, 20
  %exitcond1009.not = icmp eq i64 %polly.indvar_next650, 4
  br i1 %exitcond1009.not, label %polly.loop_header630.1, label %polly.loop_header646

polly.loop_header652:                             ; preds = %polly.loop_header646, %polly.merge659
  %polly.indvar655 = phi i64 [ %polly.indvar_next656, %polly.merge659 ], [ 0, %polly.loop_header646 ]
  %193 = add nuw nsw i64 %polly.indvar655, %186
  %polly.access.mul.Packed_MemRef_call1517682 = mul nuw nsw i64 %polly.indvar655, 80
  br label %polly.loop_header672

polly.merge659:                                   ; preds = %polly.loop_header672
  %polly.indvar_next656 = add nuw nsw i64 %polly.indvar655, 1
  %exitcond996.not = icmp eq i64 %polly.indvar_next656, %187
  br i1 %exitcond996.not, label %polly.loop_header685.preheader, label %polly.loop_header652

polly.loop_header685.preheader:                   ; preds = %polly.merge659, %polly.merge659.loopexit.us
  %194 = mul nuw nsw i64 %polly.indvar649, 20
  br label %polly.loop_header685

polly.loop_header672:                             ; preds = %polly.loop_header672, %polly.loop_header652
  %polly.indvar675 = phi i64 [ 0, %polly.loop_header652 ], [ %polly.indvar_next676, %polly.loop_header672 ]
  %polly.access.mul.call1679 = mul nuw nsw i64 %polly.indvar675, 60
  %polly.access.add.call1680 = add nuw nsw i64 %193, %polly.access.mul.call1679
  %polly.access.call1681 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1680
  %polly.access.call1681.load = load double, double* %polly.access.call1681, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1517683 = add nuw nsw i64 %polly.indvar675, %polly.access.mul.Packed_MemRef_call1517682
  %polly.access.Packed_MemRef_call1517684 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517683
  store double %polly.access.call1681.load, double* %polly.access.Packed_MemRef_call1517684, align 8
  %polly.indvar_next676 = add nuw nsw i64 %polly.indvar675, 1
  %exitcond995.not = icmp eq i64 %polly.indvar_next676, %indvars.iv993
  br i1 %exitcond995.not, label %polly.merge659, label %polly.loop_header672

polly.loop_header685:                             ; preds = %polly.loop_header685.preheader, %polly.loop_exit693
  %polly.indvar688 = phi i64 [ %polly.indvar_next689, %polly.loop_exit693 ], [ 0, %polly.loop_header685.preheader ]
  %polly.access.mul.Packed_MemRef_call1517705 = mul nuw nsw i64 %polly.indvar688, 80
  br label %polly.loop_header691

polly.loop_exit693:                               ; preds = %polly.loop_exit700
  %polly.indvar_next689 = add nuw nsw i64 %polly.indvar688, 1
  %exitcond1008.not = icmp eq i64 %polly.indvar_next689, %187
  br i1 %exitcond1008.not, label %polly.loop_exit687, label %polly.loop_header685

polly.loop_header691:                             ; preds = %polly.loop_exit700, %polly.loop_header685
  %indvars.iv1004 = phi i64 [ %indvars.iv.next1005, %polly.loop_exit700 ], [ %190, %polly.loop_header685 ]
  %polly.indvar694 = phi i64 [ %polly.indvar_next695, %polly.loop_exit700 ], [ 0, %polly.loop_header685 ]
  %195 = add nuw i64 %189, %polly.indvar694
  %smin1435 = call i64 @llvm.smin.i64(i64 %195, i64 63)
  %196 = add nuw nsw i64 %smin1435, 1
  %smin1006 = call i64 @llvm.smin.i64(i64 %indvars.iv1004, i64 63)
  %197 = add nuw i64 %polly.indvar694, %194
  %polly.loop_guard7011098 = icmp sgt i64 %197, -1
  br i1 %polly.loop_guard7011098, label %polly.loop_header698.preheader, label %polly.loop_exit700

polly.loop_header698.preheader:                   ; preds = %polly.loop_header691
  %polly.access.add.Packed_MemRef_call2519710 = add nsw i64 %polly.access.mul.Packed_MemRef_call1517705, %197
  %polly.access.Packed_MemRef_call2519711 = getelementptr double, double* %Packed_MemRef_call2519, i64 %polly.access.add.Packed_MemRef_call2519710
  %_p_scalar_712 = load double, double* %polly.access.Packed_MemRef_call2519711, align 8
  %polly.access.Packed_MemRef_call1517719 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call2519710
  %_p_scalar_720 = load double, double* %polly.access.Packed_MemRef_call1517719, align 8
  %198 = mul i64 %197, 640
  %min.iters.check1436 = icmp ult i64 %smin1435, 3
  br i1 %min.iters.check1436, label %polly.loop_header698.preheader1583, label %vector.ph1437

vector.ph1437:                                    ; preds = %polly.loop_header698.preheader
  %n.vec1439 = and i64 %196, -4
  %broadcast.splatinsert1445 = insertelement <4 x double> poison, double %_p_scalar_712, i32 0
  %broadcast.splat1446 = shufflevector <4 x double> %broadcast.splatinsert1445, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1448 = insertelement <4 x double> poison, double %_p_scalar_720, i32 0
  %broadcast.splat1449 = shufflevector <4 x double> %broadcast.splatinsert1448, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1434

vector.body1434:                                  ; preds = %vector.body1434, %vector.ph1437
  %index1440 = phi i64 [ 0, %vector.ph1437 ], [ %index.next1441, %vector.body1434 ]
  %199 = add nuw nsw i64 %index1440, %polly.access.mul.Packed_MemRef_call1517705
  %200 = getelementptr double, double* %Packed_MemRef_call1517, i64 %199
  %201 = bitcast double* %200 to <4 x double>*
  %wide.load1444 = load <4 x double>, <4 x double>* %201, align 8
  %202 = fmul fast <4 x double> %broadcast.splat1446, %wide.load1444
  %203 = getelementptr double, double* %Packed_MemRef_call2519, i64 %199
  %204 = bitcast double* %203 to <4 x double>*
  %wide.load1447 = load <4 x double>, <4 x double>* %204, align 8
  %205 = fmul fast <4 x double> %broadcast.splat1449, %wide.load1447
  %206 = shl i64 %index1440, 3
  %207 = add i64 %206, %198
  %208 = getelementptr i8, i8* %call, i64 %207
  %209 = bitcast i8* %208 to <4 x double>*
  %wide.load1450 = load <4 x double>, <4 x double>* %209, align 8, !alias.scope !99, !noalias !101
  %210 = fadd fast <4 x double> %205, %202
  %211 = fmul fast <4 x double> %210, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %212 = fadd fast <4 x double> %211, %wide.load1450
  %213 = bitcast i8* %208 to <4 x double>*
  store <4 x double> %212, <4 x double>* %213, align 8, !alias.scope !99, !noalias !101
  %index.next1441 = add i64 %index1440, 4
  %214 = icmp eq i64 %index.next1441, %n.vec1439
  br i1 %214, label %middle.block1432, label %vector.body1434, !llvm.loop !110

middle.block1432:                                 ; preds = %vector.body1434
  %cmp.n1443 = icmp eq i64 %196, %n.vec1439
  br i1 %cmp.n1443, label %polly.loop_exit700, label %polly.loop_header698.preheader1583

polly.loop_header698.preheader1583:               ; preds = %polly.loop_header698.preheader, %middle.block1432
  %polly.indvar702.ph = phi i64 [ 0, %polly.loop_header698.preheader ], [ %n.vec1439, %middle.block1432 ]
  br label %polly.loop_header698

polly.loop_exit700:                               ; preds = %polly.loop_header698, %middle.block1432, %polly.loop_header691
  %polly.indvar_next695 = add nuw nsw i64 %polly.indvar694, 1
  %polly.loop_cond696 = icmp ult i64 %polly.indvar694, 19
  %indvars.iv.next1005 = add i64 %indvars.iv1004, 1
  br i1 %polly.loop_cond696, label %polly.loop_header691, label %polly.loop_exit693

polly.loop_header698:                             ; preds = %polly.loop_header698.preheader1583, %polly.loop_header698
  %polly.indvar702 = phi i64 [ %polly.indvar_next703, %polly.loop_header698 ], [ %polly.indvar702.ph, %polly.loop_header698.preheader1583 ]
  %polly.access.add.Packed_MemRef_call1517706 = add nuw nsw i64 %polly.indvar702, %polly.access.mul.Packed_MemRef_call1517705
  %polly.access.Packed_MemRef_call1517707 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517706
  %_p_scalar_708 = load double, double* %polly.access.Packed_MemRef_call1517707, align 8
  %p_mul27.i = fmul fast double %_p_scalar_712, %_p_scalar_708
  %polly.access.Packed_MemRef_call2519715 = getelementptr double, double* %Packed_MemRef_call2519, i64 %polly.access.add.Packed_MemRef_call1517706
  %_p_scalar_716 = load double, double* %polly.access.Packed_MemRef_call2519715, align 8
  %p_mul37.i = fmul fast double %_p_scalar_720, %_p_scalar_716
  %215 = shl i64 %polly.indvar702, 3
  %216 = add i64 %215, %198
  %scevgep721 = getelementptr i8, i8* %call, i64 %216
  %scevgep721722 = bitcast i8* %scevgep721 to double*
  %_p_scalar_723 = load double, double* %scevgep721722, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_723
  store double %p_add42.i, double* %scevgep721722, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next703 = add nuw nsw i64 %polly.indvar702, 1
  %exitcond1007.not = icmp eq i64 %polly.indvar702, %smin1006
  br i1 %exitcond1007.not, label %polly.loop_exit700, label %polly.loop_header698, !llvm.loop !111

polly.loop_header862:                             ; preds = %entry, %polly.loop_exit870
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_exit870 ], [ 0, %entry ]
  %217 = mul nuw nsw i64 %polly.indvar865, 640
  %218 = trunc i64 %polly.indvar865 to i32
  %broadcast.splatinsert1136 = insertelement <4 x i32> poison, i32 %218, i32 0
  %broadcast.splat1137 = shufflevector <4 x i32> %broadcast.splatinsert1136, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1126

vector.body1126:                                  ; preds = %vector.body1126, %polly.loop_header862
  %index1128 = phi i64 [ 0, %polly.loop_header862 ], [ %index.next1129, %vector.body1126 ]
  %vec.ind1134 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header862 ], [ %vec.ind.next1135, %vector.body1126 ]
  %219 = mul <4 x i32> %vec.ind1134, %broadcast.splat1137
  %220 = add <4 x i32> %219, <i32 3, i32 3, i32 3, i32 3>
  %221 = urem <4 x i32> %220, <i32 80, i32 80, i32 80, i32 80>
  %222 = sitofp <4 x i32> %221 to <4 x double>
  %223 = fmul fast <4 x double> %222, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %224 = shl i64 %index1128, 3
  %225 = add nuw nsw i64 %224, %217
  %226 = getelementptr i8, i8* %call, i64 %225
  %227 = bitcast i8* %226 to <4 x double>*
  store <4 x double> %223, <4 x double>* %227, align 8, !alias.scope !112, !noalias !114
  %index.next1129 = add i64 %index1128, 4
  %vec.ind.next1135 = add <4 x i32> %vec.ind1134, <i32 4, i32 4, i32 4, i32 4>
  %228 = icmp eq i64 %index.next1129, 32
  br i1 %228, label %polly.loop_exit870, label %vector.body1126, !llvm.loop !117

polly.loop_exit870:                               ; preds = %vector.body1126
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %exitcond1031.not = icmp eq i64 %polly.indvar_next866, 32
  br i1 %exitcond1031.not, label %polly.loop_header862.1, label %polly.loop_header862

polly.loop_header889:                             ; preds = %polly.loop_exit870.2.2, %polly.loop_exit897
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_exit897 ], [ 0, %polly.loop_exit870.2.2 ]
  %229 = mul nuw nsw i64 %polly.indvar892, 480
  %230 = trunc i64 %polly.indvar892 to i32
  %broadcast.splatinsert1250 = insertelement <4 x i32> poison, i32 %230, i32 0
  %broadcast.splat1251 = shufflevector <4 x i32> %broadcast.splatinsert1250, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1240

vector.body1240:                                  ; preds = %vector.body1240, %polly.loop_header889
  %index1242 = phi i64 [ 0, %polly.loop_header889 ], [ %index.next1243, %vector.body1240 ]
  %vec.ind1248 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header889 ], [ %vec.ind.next1249, %vector.body1240 ]
  %231 = mul <4 x i32> %vec.ind1248, %broadcast.splat1251
  %232 = add <4 x i32> %231, <i32 2, i32 2, i32 2, i32 2>
  %233 = urem <4 x i32> %232, <i32 60, i32 60, i32 60, i32 60>
  %234 = sitofp <4 x i32> %233 to <4 x double>
  %235 = fmul fast <4 x double> %234, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %236 = shl i64 %index1242, 3
  %237 = add i64 %236, %229
  %238 = getelementptr i8, i8* %call2, i64 %237
  %239 = bitcast i8* %238 to <4 x double>*
  store <4 x double> %235, <4 x double>* %239, align 8, !alias.scope !116, !noalias !118
  %index.next1243 = add i64 %index1242, 4
  %vec.ind.next1249 = add <4 x i32> %vec.ind1248, <i32 4, i32 4, i32 4, i32 4>
  %240 = icmp eq i64 %index.next1243, 32
  br i1 %240, label %polly.loop_exit897, label %vector.body1240, !llvm.loop !119

polly.loop_exit897:                               ; preds = %vector.body1240
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar_next893, 32
  br i1 %exitcond1022.not, label %polly.loop_header889.1, label %polly.loop_header889

polly.loop_header915:                             ; preds = %polly.loop_exit897.1.2, %polly.loop_exit923
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_exit923 ], [ 0, %polly.loop_exit897.1.2 ]
  %241 = mul nuw nsw i64 %polly.indvar918, 480
  %242 = trunc i64 %polly.indvar918 to i32
  %broadcast.splatinsert1328 = insertelement <4 x i32> poison, i32 %242, i32 0
  %broadcast.splat1329 = shufflevector <4 x i32> %broadcast.splatinsert1328, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1318

vector.body1318:                                  ; preds = %vector.body1318, %polly.loop_header915
  %index1320 = phi i64 [ 0, %polly.loop_header915 ], [ %index.next1321, %vector.body1318 ]
  %vec.ind1326 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header915 ], [ %vec.ind.next1327, %vector.body1318 ]
  %243 = mul <4 x i32> %vec.ind1326, %broadcast.splat1329
  %244 = add <4 x i32> %243, <i32 1, i32 1, i32 1, i32 1>
  %245 = urem <4 x i32> %244, <i32 80, i32 80, i32 80, i32 80>
  %246 = sitofp <4 x i32> %245 to <4 x double>
  %247 = fmul fast <4 x double> %246, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %248 = shl i64 %index1320, 3
  %249 = add i64 %248, %241
  %250 = getelementptr i8, i8* %call1, i64 %249
  %251 = bitcast i8* %250 to <4 x double>*
  store <4 x double> %247, <4 x double>* %251, align 8, !alias.scope !115, !noalias !120
  %index.next1321 = add i64 %index1320, 4
  %vec.ind.next1327 = add <4 x i32> %vec.ind1326, <i32 4, i32 4, i32 4, i32 4>
  %252 = icmp eq i64 %index.next1321, 32
  br i1 %252, label %polly.loop_exit923, label %vector.body1318, !llvm.loop !121

polly.loop_exit923:                               ; preds = %vector.body1318
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %exitcond1016.not = icmp eq i64 %polly.indvar_next919, 32
  br i1 %exitcond1016.not, label %polly.loop_header915.1, label %polly.loop_header915

polly.loop_header212.1:                           ; preds = %polly.loop_exit265, %polly.loop_exit220.1
  %polly.indvar215.1 = phi i64 [ %polly.indvar_next216.1, %polly.loop_exit220.1 ], [ 0, %polly.loop_exit265 ]
  %253 = add nuw nsw i64 %polly.indvar215.1, %100
  %polly.access.mul.Packed_MemRef_call2.1 = mul nuw nsw i64 %polly.indvar215.1, 80
  br label %polly.loop_header218.1

polly.loop_header218.1:                           ; preds = %polly.loop_header218.1, %polly.loop_header212.1
  %polly.indvar221.1 = phi i64 [ 0, %polly.loop_header212.1 ], [ %polly.indvar_next222.1, %polly.loop_header218.1 ]
  %254 = mul i64 %polly.indvar221.1, 60
  %polly.access.mul.call2225.1 = add i64 %254, 3840
  %polly.access.add.call2226.1 = add nuw nsw i64 %253, %polly.access.mul.call2225.1
  %polly.access.call2227.1 = getelementptr double, double* %polly.access.cast.call2738, i64 %polly.access.add.call2226.1
  %polly.access.call2227.load.1 = load double, double* %polly.access.call2227.1, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2.1 = add nuw nsw i64 %polly.indvar221.1, %polly.access.mul.Packed_MemRef_call2.1
  %polly.access.Packed_MemRef_call2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.1
  store double %polly.access.call2227.load.1, double* %polly.access.Packed_MemRef_call2.1, align 8
  %polly.indvar_next222.1 = add nuw nsw i64 %polly.indvar221.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next222.1, 16
  br i1 %exitcond.1.not, label %polly.loop_exit220.1, label %polly.loop_header218.1

polly.loop_exit220.1:                             ; preds = %polly.loop_header218.1
  %polly.indvar_next216.1 = add nuw nsw i64 %polly.indvar215.1, 1
  %exitcond954.1.not = icmp eq i64 %polly.indvar_next216.1, %101
  br i1 %exitcond954.1.not, label %polly.loop_header234.us.1, label %polly.loop_header212.1

polly.loop_header234.us.1:                        ; preds = %polly.loop_exit220.1, %polly.merge.loopexit.us.1
  %polly.indvar237.us.1 = phi i64 [ %polly.indvar_next238.us.1, %polly.merge.loopexit.us.1 ], [ 0, %polly.loop_exit220.1 ]
  %255 = add nuw nsw i64 %polly.indvar237.us.1, %100
  %polly.access.mul.Packed_MemRef_call1.us.1 = mul nuw nsw i64 %polly.indvar237.us.1, 80
  br label %polly.loop_header240.us.1

polly.loop_header240.us.1:                        ; preds = %polly.loop_header240.us.1, %polly.loop_header234.us.1
  %polly.indvar243.us.1 = phi i64 [ 0, %polly.loop_header234.us.1 ], [ %polly.indvar_next244.us.1, %polly.loop_header240.us.1 ]
  %256 = mul i64 %polly.indvar243.us.1, 60
  %polly.access.mul.call1247.us.1 = add i64 %256, 3840
  %polly.access.add.call1248.us.1 = add nuw nsw i64 %255, %polly.access.mul.call1247.us.1
  %polly.access.call1249.us.1 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1248.us.1
  %polly.access.call1249.load.us.1 = load double, double* %polly.access.call1249.us.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar243.us.1, %polly.access.mul.Packed_MemRef_call1.us.1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1249.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next244.us.1 = add nuw nsw i64 %polly.indvar243.us.1, 1
  %exitcond957.1.not = icmp eq i64 %polly.indvar_next244.us.1, 16
  br i1 %exitcond957.1.not, label %polly.merge.loopexit.us.1, label %polly.loop_header240.us.1

polly.merge.loopexit.us.1:                        ; preds = %polly.loop_header240.us.1
  %polly.indvar_next238.us.1 = add nuw nsw i64 %polly.indvar237.us.1, 1
  %exitcond958.1.not = icmp eq i64 %polly.indvar_next238.us.1, %101
  br i1 %exitcond958.1.not, label %polly.loop_header263.1, label %polly.loop_header234.us.1

polly.loop_header263.1:                           ; preds = %polly.merge.loopexit.us.1, %polly.loop_exit271.1
  %polly.indvar266.1 = phi i64 [ %polly.indvar_next267.1, %polly.loop_exit271.1 ], [ 0, %polly.merge.loopexit.us.1 ]
  %polly.access.mul.Packed_MemRef_call1281.1 = mul nuw nsw i64 %polly.indvar266.1, 80
  br label %polly.loop_header269.1

polly.loop_header269.1:                           ; preds = %polly.loop_exit277.1, %polly.loop_header263.1
  %indvars.iv963.1 = phi i64 [ %indvars.iv.next964.1, %polly.loop_exit277.1 ], [ 0, %polly.loop_header263.1 ]
  %polly.indvar272.1 = phi i64 [ %polly.indvar_next273.1, %polly.loop_exit277.1 ], [ 4, %polly.loop_header263.1 ]
  %257 = add i64 %indvars.iv963.1, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv963.1, i64 63)
  %polly.loop_guard.11095 = icmp ugt i64 %polly.indvar272.1, 3
  br i1 %polly.loop_guard.11095, label %polly.loop_header275.preheader.1, label %polly.loop_exit277.1

polly.loop_header275.preheader.1:                 ; preds = %polly.loop_header269.1
  %258 = add nsw i64 %polly.indvar272.1, -4
  %polly.access.add.Packed_MemRef_call2286.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1281.1, %258
  %polly.access.Packed_MemRef_call2287.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.1
  %_p_scalar_288.1 = load double, double* %polly.access.Packed_MemRef_call2287.1, align 8
  %polly.access.Packed_MemRef_call1295.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2286.1
  %_p_scalar_296.1 = load double, double* %polly.access.Packed_MemRef_call1295.1, align 8
  %259 = mul nuw nsw i64 %polly.indvar272.1, 640
  %min.iters.check1543 = icmp ult i64 %257, 4
  br i1 %min.iters.check1543, label %polly.loop_header275.1.preheader, label %vector.ph1544

vector.ph1544:                                    ; preds = %polly.loop_header275.preheader.1
  %n.vec1546 = and i64 %257, -4
  %broadcast.splatinsert1552 = insertelement <4 x double> poison, double %_p_scalar_288.1, i32 0
  %broadcast.splat1553 = shufflevector <4 x double> %broadcast.splatinsert1552, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1555 = insertelement <4 x double> poison, double %_p_scalar_296.1, i32 0
  %broadcast.splat1556 = shufflevector <4 x double> %broadcast.splatinsert1555, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1542

vector.body1542:                                  ; preds = %vector.body1542, %vector.ph1544
  %index1547 = phi i64 [ 0, %vector.ph1544 ], [ %index.next1548, %vector.body1542 ]
  %260 = add nuw nsw i64 %index1547, %polly.access.mul.Packed_MemRef_call1281.1
  %261 = getelementptr double, double* %Packed_MemRef_call1, i64 %260
  %262 = bitcast double* %261 to <4 x double>*
  %wide.load1551 = load <4 x double>, <4 x double>* %262, align 8
  %263 = fmul fast <4 x double> %broadcast.splat1553, %wide.load1551
  %264 = getelementptr double, double* %Packed_MemRef_call2, i64 %260
  %265 = bitcast double* %264 to <4 x double>*
  %wide.load1554 = load <4 x double>, <4 x double>* %265, align 8
  %266 = fmul fast <4 x double> %broadcast.splat1556, %wide.load1554
  %267 = shl i64 %index1547, 3
  %268 = add i64 %267, %259
  %269 = add i64 %268, 38912
  %270 = getelementptr i8, i8* %call, i64 %269
  %271 = bitcast i8* %270 to <4 x double>*
  %wide.load1557 = load <4 x double>, <4 x double>* %271, align 8, !alias.scope !72, !noalias !74
  %272 = fadd fast <4 x double> %266, %263
  %273 = fmul fast <4 x double> %272, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %274 = fadd fast <4 x double> %273, %wide.load1557
  %275 = bitcast i8* %270 to <4 x double>*
  store <4 x double> %274, <4 x double>* %275, align 8, !alias.scope !72, !noalias !74
  %index.next1548 = add i64 %index1547, 4
  %276 = icmp eq i64 %index.next1548, %n.vec1546
  br i1 %276, label %middle.block1540, label %vector.body1542, !llvm.loop !122

middle.block1540:                                 ; preds = %vector.body1542
  %cmp.n1550 = icmp eq i64 %257, %n.vec1546
  br i1 %cmp.n1550, label %polly.loop_exit277.1, label %polly.loop_header275.1.preheader

polly.loop_header275.1.preheader:                 ; preds = %polly.loop_header275.preheader.1, %middle.block1540
  %polly.indvar278.1.ph = phi i64 [ 0, %polly.loop_header275.preheader.1 ], [ %n.vec1546, %middle.block1540 ]
  br label %polly.loop_header275.1

polly.loop_header275.1:                           ; preds = %polly.loop_header275.1.preheader, %polly.loop_header275.1
  %polly.indvar278.1 = phi i64 [ %polly.indvar_next279.1, %polly.loop_header275.1 ], [ %polly.indvar278.1.ph, %polly.loop_header275.1.preheader ]
  %polly.access.add.Packed_MemRef_call1282.1 = add nuw nsw i64 %polly.indvar278.1, %polly.access.mul.Packed_MemRef_call1281.1
  %polly.access.Packed_MemRef_call1283.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.1
  %_p_scalar_284.1 = load double, double* %polly.access.Packed_MemRef_call1283.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_288.1, %_p_scalar_284.1
  %polly.access.Packed_MemRef_call2291.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1282.1
  %_p_scalar_292.1 = load double, double* %polly.access.Packed_MemRef_call2291.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_296.1, %_p_scalar_292.1
  %277 = shl i64 %polly.indvar278.1, 3
  %278 = add i64 %277, %259
  %279 = add i64 %278, 38912
  %scevgep297.1 = getelementptr i8, i8* %call, i64 %279
  %scevgep297298.1 = bitcast i8* %scevgep297.1 to double*
  %_p_scalar_299.1 = load double, double* %scevgep297298.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_299.1
  store double %p_add42.i118.1, double* %scevgep297298.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next279.1 = add nuw nsw i64 %polly.indvar278.1, 1
  %exitcond965.1.not = icmp eq i64 %polly.indvar278.1, %smin.1
  br i1 %exitcond965.1.not, label %polly.loop_exit277.1, label %polly.loop_header275.1, !llvm.loop !123

polly.loop_exit277.1:                             ; preds = %polly.loop_header275.1, %middle.block1540, %polly.loop_header269.1
  %polly.indvar_next273.1 = add nuw nsw i64 %polly.indvar272.1, 1
  %polly.loop_cond274.1 = icmp ult i64 %polly.indvar272.1, 19
  %indvars.iv.next964.1 = add i64 %indvars.iv963.1, 1
  br i1 %polly.loop_cond274.1, label %polly.loop_header269.1, label %polly.loop_exit271.1

polly.loop_exit271.1:                             ; preds = %polly.loop_exit277.1
  %polly.indvar_next267.1 = add nuw nsw i64 %polly.indvar266.1, 1
  %exitcond966.1.not = icmp eq i64 %polly.indvar_next267.1, %101
  br i1 %exitcond966.1.not, label %polly.loop_exit230.1, label %polly.loop_header263.1

polly.loop_exit230.1:                             ; preds = %polly.loop_exit271.1
  br i1 %polly.loop_cond205, label %polly.loop_header200, label %polly.exiting

polly.loop_header418.1:                           ; preds = %polly.loop_exit475, %polly.loop_exit426.1
  %polly.indvar421.1 = phi i64 [ %polly.indvar_next422.1, %polly.loop_exit426.1 ], [ 0, %polly.loop_exit475 ]
  %280 = add nuw nsw i64 %polly.indvar421.1, %143
  %polly.access.mul.Packed_MemRef_call2307.1 = mul nuw nsw i64 %polly.indvar421.1, 80
  br label %polly.loop_header424.1

polly.loop_header424.1:                           ; preds = %polly.loop_header424.1, %polly.loop_header418.1
  %polly.indvar427.1 = phi i64 [ 0, %polly.loop_header418.1 ], [ %polly.indvar_next428.1, %polly.loop_header424.1 ]
  %281 = mul i64 %polly.indvar427.1, 60
  %polly.access.mul.call2431.1 = add i64 %281, 3840
  %polly.access.add.call2432.1 = add nuw nsw i64 %280, %polly.access.mul.call2431.1
  %polly.access.call2433.1 = getelementptr double, double* %polly.access.cast.call2738, i64 %polly.access.add.call2432.1
  %polly.access.call2433.load.1 = load double, double* %polly.access.call2433.1, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2307.1 = add nuw nsw i64 %polly.indvar427.1, %polly.access.mul.Packed_MemRef_call2307.1
  %polly.access.Packed_MemRef_call2307.1 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307.1
  store double %polly.access.call2433.load.1, double* %polly.access.Packed_MemRef_call2307.1, align 8
  %polly.indvar_next428.1 = add nuw nsw i64 %polly.indvar427.1, 1
  %exitcond970.1.not = icmp eq i64 %polly.indvar_next428.1, 16
  br i1 %exitcond970.1.not, label %polly.loop_exit426.1, label %polly.loop_header424.1

polly.loop_exit426.1:                             ; preds = %polly.loop_header424.1
  %polly.indvar_next422.1 = add nuw nsw i64 %polly.indvar421.1, 1
  %exitcond971.1.not = icmp eq i64 %polly.indvar_next422.1, %144
  br i1 %exitcond971.1.not, label %polly.loop_header440.us.1, label %polly.loop_header418.1

polly.loop_header440.us.1:                        ; preds = %polly.loop_exit426.1, %polly.merge447.loopexit.us.1
  %polly.indvar443.us.1 = phi i64 [ %polly.indvar_next444.us.1, %polly.merge447.loopexit.us.1 ], [ 0, %polly.loop_exit426.1 ]
  %282 = add nuw nsw i64 %polly.indvar443.us.1, %143
  %polly.access.mul.Packed_MemRef_call1305.us.1 = mul nuw nsw i64 %polly.indvar443.us.1, 80
  br label %polly.loop_header450.us.1

polly.loop_header450.us.1:                        ; preds = %polly.loop_header450.us.1, %polly.loop_header440.us.1
  %polly.indvar453.us.1 = phi i64 [ 0, %polly.loop_header440.us.1 ], [ %polly.indvar_next454.us.1, %polly.loop_header450.us.1 ]
  %283 = mul i64 %polly.indvar453.us.1, 60
  %polly.access.mul.call1457.us.1 = add i64 %283, 3840
  %polly.access.add.call1458.us.1 = add nuw nsw i64 %282, %polly.access.mul.call1457.us.1
  %polly.access.call1459.us.1 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1458.us.1
  %polly.access.call1459.load.us.1 = load double, double* %polly.access.call1459.us.1, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1305.us.1 = add nuw nsw i64 %polly.indvar453.us.1, %polly.access.mul.Packed_MemRef_call1305.us.1
  %polly.access.Packed_MemRef_call1305.us.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.1
  store double %polly.access.call1459.load.us.1, double* %polly.access.Packed_MemRef_call1305.us.1, align 8
  %polly.indvar_next454.us.1 = add nuw nsw i64 %polly.indvar453.us.1, 1
  %exitcond976.1.not = icmp eq i64 %polly.indvar_next454.us.1, 16
  br i1 %exitcond976.1.not, label %polly.merge447.loopexit.us.1, label %polly.loop_header450.us.1

polly.merge447.loopexit.us.1:                     ; preds = %polly.loop_header450.us.1
  %polly.indvar_next444.us.1 = add nuw nsw i64 %polly.indvar443.us.1, 1
  %exitcond977.1.not = icmp eq i64 %polly.indvar_next444.us.1, %144
  br i1 %exitcond977.1.not, label %polly.loop_header473.1, label %polly.loop_header440.us.1

polly.loop_header473.1:                           ; preds = %polly.merge447.loopexit.us.1, %polly.loop_exit481.1
  %polly.indvar476.1 = phi i64 [ %polly.indvar_next477.1, %polly.loop_exit481.1 ], [ 0, %polly.merge447.loopexit.us.1 ]
  %polly.access.mul.Packed_MemRef_call1305493.1 = mul nuw nsw i64 %polly.indvar476.1, 80
  br label %polly.loop_header479.1

polly.loop_header479.1:                           ; preds = %polly.loop_exit488.1, %polly.loop_header473.1
  %indvars.iv983.1 = phi i64 [ %indvars.iv.next984.1, %polly.loop_exit488.1 ], [ 0, %polly.loop_header473.1 ]
  %polly.indvar482.1 = phi i64 [ %polly.indvar_next483.1, %polly.loop_exit488.1 ], [ 4, %polly.loop_header473.1 ]
  %284 = add i64 %indvars.iv983.1, 1
  %smin985.1 = call i64 @llvm.smin.i64(i64 %indvars.iv983.1, i64 63)
  %polly.loop_guard489.11097 = icmp ugt i64 %polly.indvar482.1, 3
  br i1 %polly.loop_guard489.11097, label %polly.loop_header486.preheader.1, label %polly.loop_exit488.1

polly.loop_header486.preheader.1:                 ; preds = %polly.loop_header479.1
  %285 = add nsw i64 %polly.indvar482.1, -4
  %polly.access.add.Packed_MemRef_call2307498.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1305493.1, %285
  %polly.access.Packed_MemRef_call2307499.1 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307498.1
  %_p_scalar_500.1 = load double, double* %polly.access.Packed_MemRef_call2307499.1, align 8
  %polly.access.Packed_MemRef_call1305507.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call2307498.1
  %_p_scalar_508.1 = load double, double* %polly.access.Packed_MemRef_call1305507.1, align 8
  %286 = mul nuw nsw i64 %polly.indvar482.1, 640
  %min.iters.check1480 = icmp ult i64 %284, 4
  br i1 %min.iters.check1480, label %polly.loop_header486.1.preheader, label %vector.ph1481

vector.ph1481:                                    ; preds = %polly.loop_header486.preheader.1
  %n.vec1483 = and i64 %284, -4
  %broadcast.splatinsert1489 = insertelement <4 x double> poison, double %_p_scalar_500.1, i32 0
  %broadcast.splat1490 = shufflevector <4 x double> %broadcast.splatinsert1489, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1492 = insertelement <4 x double> poison, double %_p_scalar_508.1, i32 0
  %broadcast.splat1493 = shufflevector <4 x double> %broadcast.splatinsert1492, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1479

vector.body1479:                                  ; preds = %vector.body1479, %vector.ph1481
  %index1484 = phi i64 [ 0, %vector.ph1481 ], [ %index.next1485, %vector.body1479 ]
  %287 = add nuw nsw i64 %index1484, %polly.access.mul.Packed_MemRef_call1305493.1
  %288 = getelementptr double, double* %Packed_MemRef_call1305, i64 %287
  %289 = bitcast double* %288 to <4 x double>*
  %wide.load1488 = load <4 x double>, <4 x double>* %289, align 8
  %290 = fmul fast <4 x double> %broadcast.splat1490, %wide.load1488
  %291 = getelementptr double, double* %Packed_MemRef_call2307, i64 %287
  %292 = bitcast double* %291 to <4 x double>*
  %wide.load1491 = load <4 x double>, <4 x double>* %292, align 8
  %293 = fmul fast <4 x double> %broadcast.splat1493, %wide.load1491
  %294 = shl i64 %index1484, 3
  %295 = add i64 %294, %286
  %296 = add i64 %295, 38912
  %297 = getelementptr i8, i8* %call, i64 %296
  %298 = bitcast i8* %297 to <4 x double>*
  %wide.load1494 = load <4 x double>, <4 x double>* %298, align 8, !alias.scope !86, !noalias !88
  %299 = fadd fast <4 x double> %293, %290
  %300 = fmul fast <4 x double> %299, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %301 = fadd fast <4 x double> %300, %wide.load1494
  %302 = bitcast i8* %297 to <4 x double>*
  store <4 x double> %301, <4 x double>* %302, align 8, !alias.scope !86, !noalias !88
  %index.next1485 = add i64 %index1484, 4
  %303 = icmp eq i64 %index.next1485, %n.vec1483
  br i1 %303, label %middle.block1477, label %vector.body1479, !llvm.loop !124

middle.block1477:                                 ; preds = %vector.body1479
  %cmp.n1487 = icmp eq i64 %284, %n.vec1483
  br i1 %cmp.n1487, label %polly.loop_exit488.1, label %polly.loop_header486.1.preheader

polly.loop_header486.1.preheader:                 ; preds = %polly.loop_header486.preheader.1, %middle.block1477
  %polly.indvar490.1.ph = phi i64 [ 0, %polly.loop_header486.preheader.1 ], [ %n.vec1483, %middle.block1477 ]
  br label %polly.loop_header486.1

polly.loop_header486.1:                           ; preds = %polly.loop_header486.1.preheader, %polly.loop_header486.1
  %polly.indvar490.1 = phi i64 [ %polly.indvar_next491.1, %polly.loop_header486.1 ], [ %polly.indvar490.1.ph, %polly.loop_header486.1.preheader ]
  %polly.access.add.Packed_MemRef_call1305494.1 = add nuw nsw i64 %polly.indvar490.1, %polly.access.mul.Packed_MemRef_call1305493.1
  %polly.access.Packed_MemRef_call1305495.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305494.1
  %_p_scalar_496.1 = load double, double* %polly.access.Packed_MemRef_call1305495.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_500.1, %_p_scalar_496.1
  %polly.access.Packed_MemRef_call2307503.1 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call1305494.1
  %_p_scalar_504.1 = load double, double* %polly.access.Packed_MemRef_call2307503.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_508.1, %_p_scalar_504.1
  %304 = shl i64 %polly.indvar490.1, 3
  %305 = add i64 %304, %286
  %306 = add i64 %305, 38912
  %scevgep509.1 = getelementptr i8, i8* %call, i64 %306
  %scevgep509510.1 = bitcast i8* %scevgep509.1 to double*
  %_p_scalar_511.1 = load double, double* %scevgep509510.1, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_511.1
  store double %p_add42.i79.1, double* %scevgep509510.1, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next491.1 = add nuw nsw i64 %polly.indvar490.1, 1
  %exitcond986.1.not = icmp eq i64 %polly.indvar490.1, %smin985.1
  br i1 %exitcond986.1.not, label %polly.loop_exit488.1, label %polly.loop_header486.1, !llvm.loop !125

polly.loop_exit488.1:                             ; preds = %polly.loop_header486.1, %middle.block1477, %polly.loop_header479.1
  %polly.indvar_next483.1 = add nuw nsw i64 %polly.indvar482.1, 1
  %polly.loop_cond484.1 = icmp ult i64 %polly.indvar482.1, 19
  %indvars.iv.next984.1 = add i64 %indvars.iv983.1, 1
  br i1 %polly.loop_cond484.1, label %polly.loop_header479.1, label %polly.loop_exit481.1

polly.loop_exit481.1:                             ; preds = %polly.loop_exit488.1
  %polly.indvar_next477.1 = add nuw nsw i64 %polly.indvar476.1, 1
  %exitcond987.1.not = icmp eq i64 %polly.indvar_next477.1, %144
  br i1 %exitcond987.1.not, label %polly.loop_exit436.1, label %polly.loop_header473.1

polly.loop_exit436.1:                             ; preds = %polly.loop_exit481.1
  br i1 %polly.loop_cond411, label %polly.loop_header406, label %polly.exiting303

polly.loop_header630.1:                           ; preds = %polly.loop_exit687, %polly.loop_exit638.1
  %polly.indvar633.1 = phi i64 [ %polly.indvar_next634.1, %polly.loop_exit638.1 ], [ 0, %polly.loop_exit687 ]
  %307 = add nuw nsw i64 %polly.indvar633.1, %186
  %polly.access.mul.Packed_MemRef_call2519.1 = mul nuw nsw i64 %polly.indvar633.1, 80
  br label %polly.loop_header636.1

polly.loop_header636.1:                           ; preds = %polly.loop_header636.1, %polly.loop_header630.1
  %polly.indvar639.1 = phi i64 [ 0, %polly.loop_header630.1 ], [ %polly.indvar_next640.1, %polly.loop_header636.1 ]
  %308 = mul i64 %polly.indvar639.1, 60
  %polly.access.mul.call2643.1 = add i64 %308, 3840
  %polly.access.add.call2644.1 = add nuw nsw i64 %307, %polly.access.mul.call2643.1
  %polly.access.call2645.1 = getelementptr double, double* %polly.access.cast.call2738, i64 %polly.access.add.call2644.1
  %polly.access.call2645.load.1 = load double, double* %polly.access.call2645.1, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2519.1 = add nuw nsw i64 %polly.indvar639.1, %polly.access.mul.Packed_MemRef_call2519.1
  %polly.access.Packed_MemRef_call2519.1 = getelementptr double, double* %Packed_MemRef_call2519, i64 %polly.access.add.Packed_MemRef_call2519.1
  store double %polly.access.call2645.load.1, double* %polly.access.Packed_MemRef_call2519.1, align 8
  %polly.indvar_next640.1 = add nuw nsw i64 %polly.indvar639.1, 1
  %exitcond991.1.not = icmp eq i64 %polly.indvar_next640.1, 16
  br i1 %exitcond991.1.not, label %polly.loop_exit638.1, label %polly.loop_header636.1

polly.loop_exit638.1:                             ; preds = %polly.loop_header636.1
  %polly.indvar_next634.1 = add nuw nsw i64 %polly.indvar633.1, 1
  %exitcond992.1.not = icmp eq i64 %polly.indvar_next634.1, %187
  br i1 %exitcond992.1.not, label %polly.loop_header652.us.1, label %polly.loop_header630.1

polly.loop_header652.us.1:                        ; preds = %polly.loop_exit638.1, %polly.merge659.loopexit.us.1
  %polly.indvar655.us.1 = phi i64 [ %polly.indvar_next656.us.1, %polly.merge659.loopexit.us.1 ], [ 0, %polly.loop_exit638.1 ]
  %309 = add nuw nsw i64 %polly.indvar655.us.1, %186
  %polly.access.mul.Packed_MemRef_call1517.us.1 = mul nuw nsw i64 %polly.indvar655.us.1, 80
  br label %polly.loop_header662.us.1

polly.loop_header662.us.1:                        ; preds = %polly.loop_header662.us.1, %polly.loop_header652.us.1
  %polly.indvar665.us.1 = phi i64 [ 0, %polly.loop_header652.us.1 ], [ %polly.indvar_next666.us.1, %polly.loop_header662.us.1 ]
  %310 = mul i64 %polly.indvar665.us.1, 60
  %polly.access.mul.call1669.us.1 = add i64 %310, 3840
  %polly.access.add.call1670.us.1 = add nuw nsw i64 %309, %polly.access.mul.call1669.us.1
  %polly.access.call1671.us.1 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1670.us.1
  %polly.access.call1671.load.us.1 = load double, double* %polly.access.call1671.us.1, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1517.us.1 = add nuw nsw i64 %polly.indvar665.us.1, %polly.access.mul.Packed_MemRef_call1517.us.1
  %polly.access.Packed_MemRef_call1517.us.1 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517.us.1
  store double %polly.access.call1671.load.us.1, double* %polly.access.Packed_MemRef_call1517.us.1, align 8
  %polly.indvar_next666.us.1 = add nuw nsw i64 %polly.indvar665.us.1, 1
  %exitcond997.1.not = icmp eq i64 %polly.indvar_next666.us.1, 16
  br i1 %exitcond997.1.not, label %polly.merge659.loopexit.us.1, label %polly.loop_header662.us.1

polly.merge659.loopexit.us.1:                     ; preds = %polly.loop_header662.us.1
  %polly.indvar_next656.us.1 = add nuw nsw i64 %polly.indvar655.us.1, 1
  %exitcond998.1.not = icmp eq i64 %polly.indvar_next656.us.1, %187
  br i1 %exitcond998.1.not, label %polly.loop_header685.1, label %polly.loop_header652.us.1

polly.loop_header685.1:                           ; preds = %polly.merge659.loopexit.us.1, %polly.loop_exit693.1
  %polly.indvar688.1 = phi i64 [ %polly.indvar_next689.1, %polly.loop_exit693.1 ], [ 0, %polly.merge659.loopexit.us.1 ]
  %polly.access.mul.Packed_MemRef_call1517705.1 = mul nuw nsw i64 %polly.indvar688.1, 80
  br label %polly.loop_header691.1

polly.loop_header691.1:                           ; preds = %polly.loop_exit700.1, %polly.loop_header685.1
  %indvars.iv1004.1 = phi i64 [ %indvars.iv.next1005.1, %polly.loop_exit700.1 ], [ 0, %polly.loop_header685.1 ]
  %polly.indvar694.1 = phi i64 [ %polly.indvar_next695.1, %polly.loop_exit700.1 ], [ 4, %polly.loop_header685.1 ]
  %311 = add i64 %indvars.iv1004.1, 1
  %smin1006.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1004.1, i64 63)
  %polly.loop_guard701.11099 = icmp ugt i64 %polly.indvar694.1, 3
  br i1 %polly.loop_guard701.11099, label %polly.loop_header698.preheader.1, label %polly.loop_exit700.1

polly.loop_header698.preheader.1:                 ; preds = %polly.loop_header691.1
  %312 = add nsw i64 %polly.indvar694.1, -4
  %polly.access.add.Packed_MemRef_call2519710.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1517705.1, %312
  %polly.access.Packed_MemRef_call2519711.1 = getelementptr double, double* %Packed_MemRef_call2519, i64 %polly.access.add.Packed_MemRef_call2519710.1
  %_p_scalar_712.1 = load double, double* %polly.access.Packed_MemRef_call2519711.1, align 8
  %polly.access.Packed_MemRef_call1517719.1 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call2519710.1
  %_p_scalar_720.1 = load double, double* %polly.access.Packed_MemRef_call1517719.1, align 8
  %313 = mul nuw nsw i64 %polly.indvar694.1, 640
  %min.iters.check1417 = icmp ult i64 %311, 4
  br i1 %min.iters.check1417, label %polly.loop_header698.1.preheader, label %vector.ph1418

vector.ph1418:                                    ; preds = %polly.loop_header698.preheader.1
  %n.vec1420 = and i64 %311, -4
  %broadcast.splatinsert1426 = insertelement <4 x double> poison, double %_p_scalar_712.1, i32 0
  %broadcast.splat1427 = shufflevector <4 x double> %broadcast.splatinsert1426, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1429 = insertelement <4 x double> poison, double %_p_scalar_720.1, i32 0
  %broadcast.splat1430 = shufflevector <4 x double> %broadcast.splatinsert1429, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1416

vector.body1416:                                  ; preds = %vector.body1416, %vector.ph1418
  %index1421 = phi i64 [ 0, %vector.ph1418 ], [ %index.next1422, %vector.body1416 ]
  %314 = add nuw nsw i64 %index1421, %polly.access.mul.Packed_MemRef_call1517705.1
  %315 = getelementptr double, double* %Packed_MemRef_call1517, i64 %314
  %316 = bitcast double* %315 to <4 x double>*
  %wide.load1425 = load <4 x double>, <4 x double>* %316, align 8
  %317 = fmul fast <4 x double> %broadcast.splat1427, %wide.load1425
  %318 = getelementptr double, double* %Packed_MemRef_call2519, i64 %314
  %319 = bitcast double* %318 to <4 x double>*
  %wide.load1428 = load <4 x double>, <4 x double>* %319, align 8
  %320 = fmul fast <4 x double> %broadcast.splat1430, %wide.load1428
  %321 = shl i64 %index1421, 3
  %322 = add i64 %321, %313
  %323 = add i64 %322, 38912
  %324 = getelementptr i8, i8* %call, i64 %323
  %325 = bitcast i8* %324 to <4 x double>*
  %wide.load1431 = load <4 x double>, <4 x double>* %325, align 8, !alias.scope !99, !noalias !101
  %326 = fadd fast <4 x double> %320, %317
  %327 = fmul fast <4 x double> %326, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %328 = fadd fast <4 x double> %327, %wide.load1431
  %329 = bitcast i8* %324 to <4 x double>*
  store <4 x double> %328, <4 x double>* %329, align 8, !alias.scope !99, !noalias !101
  %index.next1422 = add i64 %index1421, 4
  %330 = icmp eq i64 %index.next1422, %n.vec1420
  br i1 %330, label %middle.block1414, label %vector.body1416, !llvm.loop !126

middle.block1414:                                 ; preds = %vector.body1416
  %cmp.n1424 = icmp eq i64 %311, %n.vec1420
  br i1 %cmp.n1424, label %polly.loop_exit700.1, label %polly.loop_header698.1.preheader

polly.loop_header698.1.preheader:                 ; preds = %polly.loop_header698.preheader.1, %middle.block1414
  %polly.indvar702.1.ph = phi i64 [ 0, %polly.loop_header698.preheader.1 ], [ %n.vec1420, %middle.block1414 ]
  br label %polly.loop_header698.1

polly.loop_header698.1:                           ; preds = %polly.loop_header698.1.preheader, %polly.loop_header698.1
  %polly.indvar702.1 = phi i64 [ %polly.indvar_next703.1, %polly.loop_header698.1 ], [ %polly.indvar702.1.ph, %polly.loop_header698.1.preheader ]
  %polly.access.add.Packed_MemRef_call1517706.1 = add nuw nsw i64 %polly.indvar702.1, %polly.access.mul.Packed_MemRef_call1517705.1
  %polly.access.Packed_MemRef_call1517707.1 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517706.1
  %_p_scalar_708.1 = load double, double* %polly.access.Packed_MemRef_call1517707.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_712.1, %_p_scalar_708.1
  %polly.access.Packed_MemRef_call2519715.1 = getelementptr double, double* %Packed_MemRef_call2519, i64 %polly.access.add.Packed_MemRef_call1517706.1
  %_p_scalar_716.1 = load double, double* %polly.access.Packed_MemRef_call2519715.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_720.1, %_p_scalar_716.1
  %331 = shl i64 %polly.indvar702.1, 3
  %332 = add i64 %331, %313
  %333 = add i64 %332, 38912
  %scevgep721.1 = getelementptr i8, i8* %call, i64 %333
  %scevgep721722.1 = bitcast i8* %scevgep721.1 to double*
  %_p_scalar_723.1 = load double, double* %scevgep721722.1, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_723.1
  store double %p_add42.i.1, double* %scevgep721722.1, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next703.1 = add nuw nsw i64 %polly.indvar702.1, 1
  %exitcond1007.1.not = icmp eq i64 %polly.indvar702.1, %smin1006.1
  br i1 %exitcond1007.1.not, label %polly.loop_exit700.1, label %polly.loop_header698.1, !llvm.loop !127

polly.loop_exit700.1:                             ; preds = %polly.loop_header698.1, %middle.block1414, %polly.loop_header691.1
  %polly.indvar_next695.1 = add nuw nsw i64 %polly.indvar694.1, 1
  %polly.loop_cond696.1 = icmp ult i64 %polly.indvar694.1, 19
  %indvars.iv.next1005.1 = add i64 %indvars.iv1004.1, 1
  br i1 %polly.loop_cond696.1, label %polly.loop_header691.1, label %polly.loop_exit693.1

polly.loop_exit693.1:                             ; preds = %polly.loop_exit700.1
  %polly.indvar_next689.1 = add nuw nsw i64 %polly.indvar688.1, 1
  %exitcond1008.1.not = icmp eq i64 %polly.indvar_next689.1, %187
  br i1 %exitcond1008.1.not, label %polly.loop_exit648.1, label %polly.loop_header685.1

polly.loop_exit648.1:                             ; preds = %polly.loop_exit693.1
  br i1 %polly.loop_cond623, label %polly.loop_header618, label %polly.exiting515

polly.loop_header915.1:                           ; preds = %polly.loop_exit923, %polly.loop_exit923.1
  %polly.indvar918.1 = phi i64 [ %polly.indvar_next919.1, %polly.loop_exit923.1 ], [ 0, %polly.loop_exit923 ]
  %334 = mul nuw nsw i64 %polly.indvar918.1, 480
  %335 = trunc i64 %polly.indvar918.1 to i32
  %broadcast.splatinsert1340 = insertelement <4 x i32> poison, i32 %335, i32 0
  %broadcast.splat1341 = shufflevector <4 x i32> %broadcast.splatinsert1340, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1332

vector.body1332:                                  ; preds = %vector.body1332, %polly.loop_header915.1
  %index1334 = phi i64 [ 0, %polly.loop_header915.1 ], [ %index.next1335, %vector.body1332 ]
  %vec.ind1338 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header915.1 ], [ %vec.ind.next1339, %vector.body1332 ]
  %336 = add nuw nsw <4 x i64> %vec.ind1338, <i64 32, i64 32, i64 32, i64 32>
  %337 = trunc <4 x i64> %336 to <4 x i32>
  %338 = mul <4 x i32> %broadcast.splat1341, %337
  %339 = add <4 x i32> %338, <i32 1, i32 1, i32 1, i32 1>
  %340 = urem <4 x i32> %339, <i32 80, i32 80, i32 80, i32 80>
  %341 = sitofp <4 x i32> %340 to <4 x double>
  %342 = fmul fast <4 x double> %341, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %343 = extractelement <4 x i64> %336, i32 0
  %344 = shl i64 %343, 3
  %345 = add i64 %344, %334
  %346 = getelementptr i8, i8* %call1, i64 %345
  %347 = bitcast i8* %346 to <4 x double>*
  store <4 x double> %342, <4 x double>* %347, align 8, !alias.scope !115, !noalias !120
  %index.next1335 = add i64 %index1334, 4
  %vec.ind.next1339 = add <4 x i64> %vec.ind1338, <i64 4, i64 4, i64 4, i64 4>
  %348 = icmp eq i64 %index.next1335, 28
  br i1 %348, label %polly.loop_exit923.1, label %vector.body1332, !llvm.loop !128

polly.loop_exit923.1:                             ; preds = %vector.body1332
  %polly.indvar_next919.1 = add nuw nsw i64 %polly.indvar918.1, 1
  %exitcond1016.1.not = icmp eq i64 %polly.indvar_next919.1, 32
  br i1 %exitcond1016.1.not, label %polly.loop_header915.11039, label %polly.loop_header915.1

polly.loop_header915.11039:                       ; preds = %polly.loop_exit923.1, %polly.loop_exit923.11050
  %polly.indvar918.11038 = phi i64 [ %polly.indvar_next919.11048, %polly.loop_exit923.11050 ], [ 0, %polly.loop_exit923.1 ]
  %349 = add nuw nsw i64 %polly.indvar918.11038, 32
  %350 = mul nuw nsw i64 %349, 480
  %351 = trunc i64 %349 to i32
  %broadcast.splatinsert1354 = insertelement <4 x i32> poison, i32 %351, i32 0
  %broadcast.splat1355 = shufflevector <4 x i32> %broadcast.splatinsert1354, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1344

vector.body1344:                                  ; preds = %vector.body1344, %polly.loop_header915.11039
  %index1346 = phi i64 [ 0, %polly.loop_header915.11039 ], [ %index.next1347, %vector.body1344 ]
  %vec.ind1352 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header915.11039 ], [ %vec.ind.next1353, %vector.body1344 ]
  %352 = mul <4 x i32> %vec.ind1352, %broadcast.splat1355
  %353 = add <4 x i32> %352, <i32 1, i32 1, i32 1, i32 1>
  %354 = urem <4 x i32> %353, <i32 80, i32 80, i32 80, i32 80>
  %355 = sitofp <4 x i32> %354 to <4 x double>
  %356 = fmul fast <4 x double> %355, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %357 = shl i64 %index1346, 3
  %358 = add i64 %357, %350
  %359 = getelementptr i8, i8* %call1, i64 %358
  %360 = bitcast i8* %359 to <4 x double>*
  store <4 x double> %356, <4 x double>* %360, align 8, !alias.scope !115, !noalias !120
  %index.next1347 = add i64 %index1346, 4
  %vec.ind.next1353 = add <4 x i32> %vec.ind1352, <i32 4, i32 4, i32 4, i32 4>
  %361 = icmp eq i64 %index.next1347, 32
  br i1 %361, label %polly.loop_exit923.11050, label %vector.body1344, !llvm.loop !129

polly.loop_exit923.11050:                         ; preds = %vector.body1344
  %polly.indvar_next919.11048 = add nuw nsw i64 %polly.indvar918.11038, 1
  %exitcond1016.11049.not = icmp eq i64 %polly.indvar_next919.11048, 32
  br i1 %exitcond1016.11049.not, label %polly.loop_header915.1.1, label %polly.loop_header915.11039

polly.loop_header915.1.1:                         ; preds = %polly.loop_exit923.11050, %polly.loop_exit923.1.1
  %polly.indvar918.1.1 = phi i64 [ %polly.indvar_next919.1.1, %polly.loop_exit923.1.1 ], [ 0, %polly.loop_exit923.11050 ]
  %362 = add nuw nsw i64 %polly.indvar918.1.1, 32
  %363 = mul nuw nsw i64 %362, 480
  %364 = trunc i64 %362 to i32
  %broadcast.splatinsert1366 = insertelement <4 x i32> poison, i32 %364, i32 0
  %broadcast.splat1367 = shufflevector <4 x i32> %broadcast.splatinsert1366, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1358

vector.body1358:                                  ; preds = %vector.body1358, %polly.loop_header915.1.1
  %index1360 = phi i64 [ 0, %polly.loop_header915.1.1 ], [ %index.next1361, %vector.body1358 ]
  %vec.ind1364 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header915.1.1 ], [ %vec.ind.next1365, %vector.body1358 ]
  %365 = add nuw nsw <4 x i64> %vec.ind1364, <i64 32, i64 32, i64 32, i64 32>
  %366 = trunc <4 x i64> %365 to <4 x i32>
  %367 = mul <4 x i32> %broadcast.splat1367, %366
  %368 = add <4 x i32> %367, <i32 1, i32 1, i32 1, i32 1>
  %369 = urem <4 x i32> %368, <i32 80, i32 80, i32 80, i32 80>
  %370 = sitofp <4 x i32> %369 to <4 x double>
  %371 = fmul fast <4 x double> %370, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %372 = extractelement <4 x i64> %365, i32 0
  %373 = shl i64 %372, 3
  %374 = add i64 %373, %363
  %375 = getelementptr i8, i8* %call1, i64 %374
  %376 = bitcast i8* %375 to <4 x double>*
  store <4 x double> %371, <4 x double>* %376, align 8, !alias.scope !115, !noalias !120
  %index.next1361 = add i64 %index1360, 4
  %vec.ind.next1365 = add <4 x i64> %vec.ind1364, <i64 4, i64 4, i64 4, i64 4>
  %377 = icmp eq i64 %index.next1361, 28
  br i1 %377, label %polly.loop_exit923.1.1, label %vector.body1358, !llvm.loop !130

polly.loop_exit923.1.1:                           ; preds = %vector.body1358
  %polly.indvar_next919.1.1 = add nuw nsw i64 %polly.indvar918.1.1, 1
  %exitcond1016.1.1.not = icmp eq i64 %polly.indvar_next919.1.1, 32
  br i1 %exitcond1016.1.1.not, label %polly.loop_header915.2, label %polly.loop_header915.1.1

polly.loop_header915.2:                           ; preds = %polly.loop_exit923.1.1, %polly.loop_exit923.2
  %polly.indvar918.2 = phi i64 [ %polly.indvar_next919.2, %polly.loop_exit923.2 ], [ 0, %polly.loop_exit923.1.1 ]
  %378 = add nuw nsw i64 %polly.indvar918.2, 64
  %379 = mul nuw nsw i64 %378, 480
  %380 = trunc i64 %378 to i32
  %broadcast.splatinsert1380 = insertelement <4 x i32> poison, i32 %380, i32 0
  %broadcast.splat1381 = shufflevector <4 x i32> %broadcast.splatinsert1380, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1370

vector.body1370:                                  ; preds = %vector.body1370, %polly.loop_header915.2
  %index1372 = phi i64 [ 0, %polly.loop_header915.2 ], [ %index.next1373, %vector.body1370 ]
  %vec.ind1378 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header915.2 ], [ %vec.ind.next1379, %vector.body1370 ]
  %381 = mul <4 x i32> %vec.ind1378, %broadcast.splat1381
  %382 = add <4 x i32> %381, <i32 1, i32 1, i32 1, i32 1>
  %383 = urem <4 x i32> %382, <i32 80, i32 80, i32 80, i32 80>
  %384 = sitofp <4 x i32> %383 to <4 x double>
  %385 = fmul fast <4 x double> %384, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %386 = shl i64 %index1372, 3
  %387 = add i64 %386, %379
  %388 = getelementptr i8, i8* %call1, i64 %387
  %389 = bitcast i8* %388 to <4 x double>*
  store <4 x double> %385, <4 x double>* %389, align 8, !alias.scope !115, !noalias !120
  %index.next1373 = add i64 %index1372, 4
  %vec.ind.next1379 = add <4 x i32> %vec.ind1378, <i32 4, i32 4, i32 4, i32 4>
  %390 = icmp eq i64 %index.next1373, 32
  br i1 %390, label %polly.loop_exit923.2, label %vector.body1370, !llvm.loop !131

polly.loop_exit923.2:                             ; preds = %vector.body1370
  %polly.indvar_next919.2 = add nuw nsw i64 %polly.indvar918.2, 1
  %exitcond1016.2.not = icmp eq i64 %polly.indvar_next919.2, 16
  br i1 %exitcond1016.2.not, label %polly.loop_header915.1.2, label %polly.loop_header915.2

polly.loop_header915.1.2:                         ; preds = %polly.loop_exit923.2, %polly.loop_exit923.1.2
  %polly.indvar918.1.2 = phi i64 [ %polly.indvar_next919.1.2, %polly.loop_exit923.1.2 ], [ 0, %polly.loop_exit923.2 ]
  %391 = add nuw nsw i64 %polly.indvar918.1.2, 64
  %392 = mul nuw nsw i64 %391, 480
  %393 = trunc i64 %391 to i32
  %broadcast.splatinsert1392 = insertelement <4 x i32> poison, i32 %393, i32 0
  %broadcast.splat1393 = shufflevector <4 x i32> %broadcast.splatinsert1392, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1384

vector.body1384:                                  ; preds = %vector.body1384, %polly.loop_header915.1.2
  %index1386 = phi i64 [ 0, %polly.loop_header915.1.2 ], [ %index.next1387, %vector.body1384 ]
  %vec.ind1390 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header915.1.2 ], [ %vec.ind.next1391, %vector.body1384 ]
  %394 = add nuw nsw <4 x i64> %vec.ind1390, <i64 32, i64 32, i64 32, i64 32>
  %395 = trunc <4 x i64> %394 to <4 x i32>
  %396 = mul <4 x i32> %broadcast.splat1393, %395
  %397 = add <4 x i32> %396, <i32 1, i32 1, i32 1, i32 1>
  %398 = urem <4 x i32> %397, <i32 80, i32 80, i32 80, i32 80>
  %399 = sitofp <4 x i32> %398 to <4 x double>
  %400 = fmul fast <4 x double> %399, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %401 = extractelement <4 x i64> %394, i32 0
  %402 = shl i64 %401, 3
  %403 = add i64 %402, %392
  %404 = getelementptr i8, i8* %call1, i64 %403
  %405 = bitcast i8* %404 to <4 x double>*
  store <4 x double> %400, <4 x double>* %405, align 8, !alias.scope !115, !noalias !120
  %index.next1387 = add i64 %index1386, 4
  %vec.ind.next1391 = add <4 x i64> %vec.ind1390, <i64 4, i64 4, i64 4, i64 4>
  %406 = icmp eq i64 %index.next1387, 28
  br i1 %406, label %polly.loop_exit923.1.2, label %vector.body1384, !llvm.loop !132

polly.loop_exit923.1.2:                           ; preds = %vector.body1384
  %polly.indvar_next919.1.2 = add nuw nsw i64 %polly.indvar918.1.2, 1
  %exitcond1016.1.2.not = icmp eq i64 %polly.indvar_next919.1.2, 16
  br i1 %exitcond1016.1.2.not, label %init_array.exit, label %polly.loop_header915.1.2

polly.loop_header889.1:                           ; preds = %polly.loop_exit897, %polly.loop_exit897.1
  %polly.indvar892.1 = phi i64 [ %polly.indvar_next893.1, %polly.loop_exit897.1 ], [ 0, %polly.loop_exit897 ]
  %407 = mul nuw nsw i64 %polly.indvar892.1, 480
  %408 = trunc i64 %polly.indvar892.1 to i32
  %broadcast.splatinsert1262 = insertelement <4 x i32> poison, i32 %408, i32 0
  %broadcast.splat1263 = shufflevector <4 x i32> %broadcast.splatinsert1262, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1254

vector.body1254:                                  ; preds = %vector.body1254, %polly.loop_header889.1
  %index1256 = phi i64 [ 0, %polly.loop_header889.1 ], [ %index.next1257, %vector.body1254 ]
  %vec.ind1260 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header889.1 ], [ %vec.ind.next1261, %vector.body1254 ]
  %409 = add nuw nsw <4 x i64> %vec.ind1260, <i64 32, i64 32, i64 32, i64 32>
  %410 = trunc <4 x i64> %409 to <4 x i32>
  %411 = mul <4 x i32> %broadcast.splat1263, %410
  %412 = add <4 x i32> %411, <i32 2, i32 2, i32 2, i32 2>
  %413 = urem <4 x i32> %412, <i32 60, i32 60, i32 60, i32 60>
  %414 = sitofp <4 x i32> %413 to <4 x double>
  %415 = fmul fast <4 x double> %414, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %416 = extractelement <4 x i64> %409, i32 0
  %417 = shl i64 %416, 3
  %418 = add i64 %417, %407
  %419 = getelementptr i8, i8* %call2, i64 %418
  %420 = bitcast i8* %419 to <4 x double>*
  store <4 x double> %415, <4 x double>* %420, align 8, !alias.scope !116, !noalias !118
  %index.next1257 = add i64 %index1256, 4
  %vec.ind.next1261 = add <4 x i64> %vec.ind1260, <i64 4, i64 4, i64 4, i64 4>
  %421 = icmp eq i64 %index.next1257, 28
  br i1 %421, label %polly.loop_exit897.1, label %vector.body1254, !llvm.loop !133

polly.loop_exit897.1:                             ; preds = %vector.body1254
  %polly.indvar_next893.1 = add nuw nsw i64 %polly.indvar892.1, 1
  %exitcond1022.1.not = icmp eq i64 %polly.indvar_next893.1, 32
  br i1 %exitcond1022.1.not, label %polly.loop_header889.11053, label %polly.loop_header889.1

polly.loop_header889.11053:                       ; preds = %polly.loop_exit897.1, %polly.loop_exit897.11064
  %polly.indvar892.11052 = phi i64 [ %polly.indvar_next893.11062, %polly.loop_exit897.11064 ], [ 0, %polly.loop_exit897.1 ]
  %422 = add nuw nsw i64 %polly.indvar892.11052, 32
  %423 = mul nuw nsw i64 %422, 480
  %424 = trunc i64 %422 to i32
  %broadcast.splatinsert1276 = insertelement <4 x i32> poison, i32 %424, i32 0
  %broadcast.splat1277 = shufflevector <4 x i32> %broadcast.splatinsert1276, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1266

vector.body1266:                                  ; preds = %vector.body1266, %polly.loop_header889.11053
  %index1268 = phi i64 [ 0, %polly.loop_header889.11053 ], [ %index.next1269, %vector.body1266 ]
  %vec.ind1274 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header889.11053 ], [ %vec.ind.next1275, %vector.body1266 ]
  %425 = mul <4 x i32> %vec.ind1274, %broadcast.splat1277
  %426 = add <4 x i32> %425, <i32 2, i32 2, i32 2, i32 2>
  %427 = urem <4 x i32> %426, <i32 60, i32 60, i32 60, i32 60>
  %428 = sitofp <4 x i32> %427 to <4 x double>
  %429 = fmul fast <4 x double> %428, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %430 = shl i64 %index1268, 3
  %431 = add i64 %430, %423
  %432 = getelementptr i8, i8* %call2, i64 %431
  %433 = bitcast i8* %432 to <4 x double>*
  store <4 x double> %429, <4 x double>* %433, align 8, !alias.scope !116, !noalias !118
  %index.next1269 = add i64 %index1268, 4
  %vec.ind.next1275 = add <4 x i32> %vec.ind1274, <i32 4, i32 4, i32 4, i32 4>
  %434 = icmp eq i64 %index.next1269, 32
  br i1 %434, label %polly.loop_exit897.11064, label %vector.body1266, !llvm.loop !134

polly.loop_exit897.11064:                         ; preds = %vector.body1266
  %polly.indvar_next893.11062 = add nuw nsw i64 %polly.indvar892.11052, 1
  %exitcond1022.11063.not = icmp eq i64 %polly.indvar_next893.11062, 32
  br i1 %exitcond1022.11063.not, label %polly.loop_header889.1.1, label %polly.loop_header889.11053

polly.loop_header889.1.1:                         ; preds = %polly.loop_exit897.11064, %polly.loop_exit897.1.1
  %polly.indvar892.1.1 = phi i64 [ %polly.indvar_next893.1.1, %polly.loop_exit897.1.1 ], [ 0, %polly.loop_exit897.11064 ]
  %435 = add nuw nsw i64 %polly.indvar892.1.1, 32
  %436 = mul nuw nsw i64 %435, 480
  %437 = trunc i64 %435 to i32
  %broadcast.splatinsert1288 = insertelement <4 x i32> poison, i32 %437, i32 0
  %broadcast.splat1289 = shufflevector <4 x i32> %broadcast.splatinsert1288, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1280

vector.body1280:                                  ; preds = %vector.body1280, %polly.loop_header889.1.1
  %index1282 = phi i64 [ 0, %polly.loop_header889.1.1 ], [ %index.next1283, %vector.body1280 ]
  %vec.ind1286 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header889.1.1 ], [ %vec.ind.next1287, %vector.body1280 ]
  %438 = add nuw nsw <4 x i64> %vec.ind1286, <i64 32, i64 32, i64 32, i64 32>
  %439 = trunc <4 x i64> %438 to <4 x i32>
  %440 = mul <4 x i32> %broadcast.splat1289, %439
  %441 = add <4 x i32> %440, <i32 2, i32 2, i32 2, i32 2>
  %442 = urem <4 x i32> %441, <i32 60, i32 60, i32 60, i32 60>
  %443 = sitofp <4 x i32> %442 to <4 x double>
  %444 = fmul fast <4 x double> %443, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %445 = extractelement <4 x i64> %438, i32 0
  %446 = shl i64 %445, 3
  %447 = add i64 %446, %436
  %448 = getelementptr i8, i8* %call2, i64 %447
  %449 = bitcast i8* %448 to <4 x double>*
  store <4 x double> %444, <4 x double>* %449, align 8, !alias.scope !116, !noalias !118
  %index.next1283 = add i64 %index1282, 4
  %vec.ind.next1287 = add <4 x i64> %vec.ind1286, <i64 4, i64 4, i64 4, i64 4>
  %450 = icmp eq i64 %index.next1283, 28
  br i1 %450, label %polly.loop_exit897.1.1, label %vector.body1280, !llvm.loop !135

polly.loop_exit897.1.1:                           ; preds = %vector.body1280
  %polly.indvar_next893.1.1 = add nuw nsw i64 %polly.indvar892.1.1, 1
  %exitcond1022.1.1.not = icmp eq i64 %polly.indvar_next893.1.1, 32
  br i1 %exitcond1022.1.1.not, label %polly.loop_header889.2, label %polly.loop_header889.1.1

polly.loop_header889.2:                           ; preds = %polly.loop_exit897.1.1, %polly.loop_exit897.2
  %polly.indvar892.2 = phi i64 [ %polly.indvar_next893.2, %polly.loop_exit897.2 ], [ 0, %polly.loop_exit897.1.1 ]
  %451 = add nuw nsw i64 %polly.indvar892.2, 64
  %452 = mul nuw nsw i64 %451, 480
  %453 = trunc i64 %451 to i32
  %broadcast.splatinsert1302 = insertelement <4 x i32> poison, i32 %453, i32 0
  %broadcast.splat1303 = shufflevector <4 x i32> %broadcast.splatinsert1302, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1292

vector.body1292:                                  ; preds = %vector.body1292, %polly.loop_header889.2
  %index1294 = phi i64 [ 0, %polly.loop_header889.2 ], [ %index.next1295, %vector.body1292 ]
  %vec.ind1300 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header889.2 ], [ %vec.ind.next1301, %vector.body1292 ]
  %454 = mul <4 x i32> %vec.ind1300, %broadcast.splat1303
  %455 = add <4 x i32> %454, <i32 2, i32 2, i32 2, i32 2>
  %456 = urem <4 x i32> %455, <i32 60, i32 60, i32 60, i32 60>
  %457 = sitofp <4 x i32> %456 to <4 x double>
  %458 = fmul fast <4 x double> %457, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %459 = shl i64 %index1294, 3
  %460 = add i64 %459, %452
  %461 = getelementptr i8, i8* %call2, i64 %460
  %462 = bitcast i8* %461 to <4 x double>*
  store <4 x double> %458, <4 x double>* %462, align 8, !alias.scope !116, !noalias !118
  %index.next1295 = add i64 %index1294, 4
  %vec.ind.next1301 = add <4 x i32> %vec.ind1300, <i32 4, i32 4, i32 4, i32 4>
  %463 = icmp eq i64 %index.next1295, 32
  br i1 %463, label %polly.loop_exit897.2, label %vector.body1292, !llvm.loop !136

polly.loop_exit897.2:                             ; preds = %vector.body1292
  %polly.indvar_next893.2 = add nuw nsw i64 %polly.indvar892.2, 1
  %exitcond1022.2.not = icmp eq i64 %polly.indvar_next893.2, 16
  br i1 %exitcond1022.2.not, label %polly.loop_header889.1.2, label %polly.loop_header889.2

polly.loop_header889.1.2:                         ; preds = %polly.loop_exit897.2, %polly.loop_exit897.1.2
  %polly.indvar892.1.2 = phi i64 [ %polly.indvar_next893.1.2, %polly.loop_exit897.1.2 ], [ 0, %polly.loop_exit897.2 ]
  %464 = add nuw nsw i64 %polly.indvar892.1.2, 64
  %465 = mul nuw nsw i64 %464, 480
  %466 = trunc i64 %464 to i32
  %broadcast.splatinsert1314 = insertelement <4 x i32> poison, i32 %466, i32 0
  %broadcast.splat1315 = shufflevector <4 x i32> %broadcast.splatinsert1314, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1306

vector.body1306:                                  ; preds = %vector.body1306, %polly.loop_header889.1.2
  %index1308 = phi i64 [ 0, %polly.loop_header889.1.2 ], [ %index.next1309, %vector.body1306 ]
  %vec.ind1312 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header889.1.2 ], [ %vec.ind.next1313, %vector.body1306 ]
  %467 = add nuw nsw <4 x i64> %vec.ind1312, <i64 32, i64 32, i64 32, i64 32>
  %468 = trunc <4 x i64> %467 to <4 x i32>
  %469 = mul <4 x i32> %broadcast.splat1315, %468
  %470 = add <4 x i32> %469, <i32 2, i32 2, i32 2, i32 2>
  %471 = urem <4 x i32> %470, <i32 60, i32 60, i32 60, i32 60>
  %472 = sitofp <4 x i32> %471 to <4 x double>
  %473 = fmul fast <4 x double> %472, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %474 = extractelement <4 x i64> %467, i32 0
  %475 = shl i64 %474, 3
  %476 = add i64 %475, %465
  %477 = getelementptr i8, i8* %call2, i64 %476
  %478 = bitcast i8* %477 to <4 x double>*
  store <4 x double> %473, <4 x double>* %478, align 8, !alias.scope !116, !noalias !118
  %index.next1309 = add i64 %index1308, 4
  %vec.ind.next1313 = add <4 x i64> %vec.ind1312, <i64 4, i64 4, i64 4, i64 4>
  %479 = icmp eq i64 %index.next1309, 28
  br i1 %479, label %polly.loop_exit897.1.2, label %vector.body1306, !llvm.loop !137

polly.loop_exit897.1.2:                           ; preds = %vector.body1306
  %polly.indvar_next893.1.2 = add nuw nsw i64 %polly.indvar892.1.2, 1
  %exitcond1022.1.2.not = icmp eq i64 %polly.indvar_next893.1.2, 16
  br i1 %exitcond1022.1.2.not, label %polly.loop_header915, label %polly.loop_header889.1.2

polly.loop_header862.1:                           ; preds = %polly.loop_exit870, %polly.loop_exit870.1
  %polly.indvar865.1 = phi i64 [ %polly.indvar_next866.1, %polly.loop_exit870.1 ], [ 0, %polly.loop_exit870 ]
  %480 = mul nuw nsw i64 %polly.indvar865.1, 640
  %481 = trunc i64 %polly.indvar865.1 to i32
  %broadcast.splatinsert1148 = insertelement <4 x i32> poison, i32 %481, i32 0
  %broadcast.splat1149 = shufflevector <4 x i32> %broadcast.splatinsert1148, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1140

vector.body1140:                                  ; preds = %vector.body1140, %polly.loop_header862.1
  %index1142 = phi i64 [ 0, %polly.loop_header862.1 ], [ %index.next1143, %vector.body1140 ]
  %vec.ind1146 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header862.1 ], [ %vec.ind.next1147, %vector.body1140 ]
  %482 = add nuw nsw <4 x i64> %vec.ind1146, <i64 32, i64 32, i64 32, i64 32>
  %483 = trunc <4 x i64> %482 to <4 x i32>
  %484 = mul <4 x i32> %broadcast.splat1149, %483
  %485 = add <4 x i32> %484, <i32 3, i32 3, i32 3, i32 3>
  %486 = urem <4 x i32> %485, <i32 80, i32 80, i32 80, i32 80>
  %487 = sitofp <4 x i32> %486 to <4 x double>
  %488 = fmul fast <4 x double> %487, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %489 = extractelement <4 x i64> %482, i32 0
  %490 = shl i64 %489, 3
  %491 = add nuw nsw i64 %490, %480
  %492 = getelementptr i8, i8* %call, i64 %491
  %493 = bitcast i8* %492 to <4 x double>*
  store <4 x double> %488, <4 x double>* %493, align 8, !alias.scope !112, !noalias !114
  %index.next1143 = add i64 %index1142, 4
  %vec.ind.next1147 = add <4 x i64> %vec.ind1146, <i64 4, i64 4, i64 4, i64 4>
  %494 = icmp eq i64 %index.next1143, 32
  br i1 %494, label %polly.loop_exit870.1, label %vector.body1140, !llvm.loop !138

polly.loop_exit870.1:                             ; preds = %vector.body1140
  %polly.indvar_next866.1 = add nuw nsw i64 %polly.indvar865.1, 1
  %exitcond1031.1.not = icmp eq i64 %polly.indvar_next866.1, 32
  br i1 %exitcond1031.1.not, label %polly.loop_header862.2, label %polly.loop_header862.1

polly.loop_header862.2:                           ; preds = %polly.loop_exit870.1, %polly.loop_exit870.2
  %polly.indvar865.2 = phi i64 [ %polly.indvar_next866.2, %polly.loop_exit870.2 ], [ 0, %polly.loop_exit870.1 ]
  %495 = mul nuw nsw i64 %polly.indvar865.2, 640
  %496 = trunc i64 %polly.indvar865.2 to i32
  %broadcast.splatinsert1160 = insertelement <4 x i32> poison, i32 %496, i32 0
  %broadcast.splat1161 = shufflevector <4 x i32> %broadcast.splatinsert1160, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1152

vector.body1152:                                  ; preds = %vector.body1152, %polly.loop_header862.2
  %index1154 = phi i64 [ 0, %polly.loop_header862.2 ], [ %index.next1155, %vector.body1152 ]
  %vec.ind1158 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header862.2 ], [ %vec.ind.next1159, %vector.body1152 ]
  %497 = add nuw nsw <4 x i64> %vec.ind1158, <i64 64, i64 64, i64 64, i64 64>
  %498 = trunc <4 x i64> %497 to <4 x i32>
  %499 = mul <4 x i32> %broadcast.splat1161, %498
  %500 = add <4 x i32> %499, <i32 3, i32 3, i32 3, i32 3>
  %501 = urem <4 x i32> %500, <i32 80, i32 80, i32 80, i32 80>
  %502 = sitofp <4 x i32> %501 to <4 x double>
  %503 = fmul fast <4 x double> %502, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %504 = extractelement <4 x i64> %497, i32 0
  %505 = shl i64 %504, 3
  %506 = add nuw nsw i64 %505, %495
  %507 = getelementptr i8, i8* %call, i64 %506
  %508 = bitcast i8* %507 to <4 x double>*
  store <4 x double> %503, <4 x double>* %508, align 8, !alias.scope !112, !noalias !114
  %index.next1155 = add i64 %index1154, 4
  %vec.ind.next1159 = add <4 x i64> %vec.ind1158, <i64 4, i64 4, i64 4, i64 4>
  %509 = icmp eq i64 %index.next1155, 16
  br i1 %509, label %polly.loop_exit870.2, label %vector.body1152, !llvm.loop !139

polly.loop_exit870.2:                             ; preds = %vector.body1152
  %polly.indvar_next866.2 = add nuw nsw i64 %polly.indvar865.2, 1
  %exitcond1031.2.not = icmp eq i64 %polly.indvar_next866.2, 32
  br i1 %exitcond1031.2.not, label %polly.loop_header862.11067, label %polly.loop_header862.2

polly.loop_header862.11067:                       ; preds = %polly.loop_exit870.2, %polly.loop_exit870.11078
  %polly.indvar865.11066 = phi i64 [ %polly.indvar_next866.11076, %polly.loop_exit870.11078 ], [ 0, %polly.loop_exit870.2 ]
  %510 = add nuw nsw i64 %polly.indvar865.11066, 32
  %511 = mul nuw nsw i64 %510, 640
  %512 = trunc i64 %510 to i32
  %broadcast.splatinsert1174 = insertelement <4 x i32> poison, i32 %512, i32 0
  %broadcast.splat1175 = shufflevector <4 x i32> %broadcast.splatinsert1174, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1164

vector.body1164:                                  ; preds = %vector.body1164, %polly.loop_header862.11067
  %index1166 = phi i64 [ 0, %polly.loop_header862.11067 ], [ %index.next1167, %vector.body1164 ]
  %vec.ind1172 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header862.11067 ], [ %vec.ind.next1173, %vector.body1164 ]
  %513 = mul <4 x i32> %vec.ind1172, %broadcast.splat1175
  %514 = add <4 x i32> %513, <i32 3, i32 3, i32 3, i32 3>
  %515 = urem <4 x i32> %514, <i32 80, i32 80, i32 80, i32 80>
  %516 = sitofp <4 x i32> %515 to <4 x double>
  %517 = fmul fast <4 x double> %516, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %518 = shl i64 %index1166, 3
  %519 = add nuw nsw i64 %518, %511
  %520 = getelementptr i8, i8* %call, i64 %519
  %521 = bitcast i8* %520 to <4 x double>*
  store <4 x double> %517, <4 x double>* %521, align 8, !alias.scope !112, !noalias !114
  %index.next1167 = add i64 %index1166, 4
  %vec.ind.next1173 = add <4 x i32> %vec.ind1172, <i32 4, i32 4, i32 4, i32 4>
  %522 = icmp eq i64 %index.next1167, 32
  br i1 %522, label %polly.loop_exit870.11078, label %vector.body1164, !llvm.loop !140

polly.loop_exit870.11078:                         ; preds = %vector.body1164
  %polly.indvar_next866.11076 = add nuw nsw i64 %polly.indvar865.11066, 1
  %exitcond1031.11077.not = icmp eq i64 %polly.indvar_next866.11076, 32
  br i1 %exitcond1031.11077.not, label %polly.loop_header862.1.1, label %polly.loop_header862.11067

polly.loop_header862.1.1:                         ; preds = %polly.loop_exit870.11078, %polly.loop_exit870.1.1
  %polly.indvar865.1.1 = phi i64 [ %polly.indvar_next866.1.1, %polly.loop_exit870.1.1 ], [ 0, %polly.loop_exit870.11078 ]
  %523 = add nuw nsw i64 %polly.indvar865.1.1, 32
  %524 = mul nuw nsw i64 %523, 640
  %525 = trunc i64 %523 to i32
  %broadcast.splatinsert1186 = insertelement <4 x i32> poison, i32 %525, i32 0
  %broadcast.splat1187 = shufflevector <4 x i32> %broadcast.splatinsert1186, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1178

vector.body1178:                                  ; preds = %vector.body1178, %polly.loop_header862.1.1
  %index1180 = phi i64 [ 0, %polly.loop_header862.1.1 ], [ %index.next1181, %vector.body1178 ]
  %vec.ind1184 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header862.1.1 ], [ %vec.ind.next1185, %vector.body1178 ]
  %526 = add nuw nsw <4 x i64> %vec.ind1184, <i64 32, i64 32, i64 32, i64 32>
  %527 = trunc <4 x i64> %526 to <4 x i32>
  %528 = mul <4 x i32> %broadcast.splat1187, %527
  %529 = add <4 x i32> %528, <i32 3, i32 3, i32 3, i32 3>
  %530 = urem <4 x i32> %529, <i32 80, i32 80, i32 80, i32 80>
  %531 = sitofp <4 x i32> %530 to <4 x double>
  %532 = fmul fast <4 x double> %531, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %533 = extractelement <4 x i64> %526, i32 0
  %534 = shl i64 %533, 3
  %535 = add nuw nsw i64 %534, %524
  %536 = getelementptr i8, i8* %call, i64 %535
  %537 = bitcast i8* %536 to <4 x double>*
  store <4 x double> %532, <4 x double>* %537, align 8, !alias.scope !112, !noalias !114
  %index.next1181 = add i64 %index1180, 4
  %vec.ind.next1185 = add <4 x i64> %vec.ind1184, <i64 4, i64 4, i64 4, i64 4>
  %538 = icmp eq i64 %index.next1181, 32
  br i1 %538, label %polly.loop_exit870.1.1, label %vector.body1178, !llvm.loop !141

polly.loop_exit870.1.1:                           ; preds = %vector.body1178
  %polly.indvar_next866.1.1 = add nuw nsw i64 %polly.indvar865.1.1, 1
  %exitcond1031.1.1.not = icmp eq i64 %polly.indvar_next866.1.1, 32
  br i1 %exitcond1031.1.1.not, label %polly.loop_header862.2.1, label %polly.loop_header862.1.1

polly.loop_header862.2.1:                         ; preds = %polly.loop_exit870.1.1, %polly.loop_exit870.2.1
  %polly.indvar865.2.1 = phi i64 [ %polly.indvar_next866.2.1, %polly.loop_exit870.2.1 ], [ 0, %polly.loop_exit870.1.1 ]
  %539 = add nuw nsw i64 %polly.indvar865.2.1, 32
  %540 = mul nuw nsw i64 %539, 640
  %541 = trunc i64 %539 to i32
  %broadcast.splatinsert1198 = insertelement <4 x i32> poison, i32 %541, i32 0
  %broadcast.splat1199 = shufflevector <4 x i32> %broadcast.splatinsert1198, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1190

vector.body1190:                                  ; preds = %vector.body1190, %polly.loop_header862.2.1
  %index1192 = phi i64 [ 0, %polly.loop_header862.2.1 ], [ %index.next1193, %vector.body1190 ]
  %vec.ind1196 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header862.2.1 ], [ %vec.ind.next1197, %vector.body1190 ]
  %542 = add nuw nsw <4 x i64> %vec.ind1196, <i64 64, i64 64, i64 64, i64 64>
  %543 = trunc <4 x i64> %542 to <4 x i32>
  %544 = mul <4 x i32> %broadcast.splat1199, %543
  %545 = add <4 x i32> %544, <i32 3, i32 3, i32 3, i32 3>
  %546 = urem <4 x i32> %545, <i32 80, i32 80, i32 80, i32 80>
  %547 = sitofp <4 x i32> %546 to <4 x double>
  %548 = fmul fast <4 x double> %547, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %549 = extractelement <4 x i64> %542, i32 0
  %550 = shl i64 %549, 3
  %551 = add nuw nsw i64 %550, %540
  %552 = getelementptr i8, i8* %call, i64 %551
  %553 = bitcast i8* %552 to <4 x double>*
  store <4 x double> %548, <4 x double>* %553, align 8, !alias.scope !112, !noalias !114
  %index.next1193 = add i64 %index1192, 4
  %vec.ind.next1197 = add <4 x i64> %vec.ind1196, <i64 4, i64 4, i64 4, i64 4>
  %554 = icmp eq i64 %index.next1193, 16
  br i1 %554, label %polly.loop_exit870.2.1, label %vector.body1190, !llvm.loop !142

polly.loop_exit870.2.1:                           ; preds = %vector.body1190
  %polly.indvar_next866.2.1 = add nuw nsw i64 %polly.indvar865.2.1, 1
  %exitcond1031.2.1.not = icmp eq i64 %polly.indvar_next866.2.1, 32
  br i1 %exitcond1031.2.1.not, label %polly.loop_header862.21081, label %polly.loop_header862.2.1

polly.loop_header862.21081:                       ; preds = %polly.loop_exit870.2.1, %polly.loop_exit870.21092
  %polly.indvar865.21080 = phi i64 [ %polly.indvar_next866.21090, %polly.loop_exit870.21092 ], [ 0, %polly.loop_exit870.2.1 ]
  %555 = add nuw nsw i64 %polly.indvar865.21080, 64
  %556 = mul nuw nsw i64 %555, 640
  %557 = trunc i64 %555 to i32
  %broadcast.splatinsert1212 = insertelement <4 x i32> poison, i32 %557, i32 0
  %broadcast.splat1213 = shufflevector <4 x i32> %broadcast.splatinsert1212, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1202

vector.body1202:                                  ; preds = %vector.body1202, %polly.loop_header862.21081
  %index1204 = phi i64 [ 0, %polly.loop_header862.21081 ], [ %index.next1205, %vector.body1202 ]
  %vec.ind1210 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header862.21081 ], [ %vec.ind.next1211, %vector.body1202 ]
  %558 = mul <4 x i32> %vec.ind1210, %broadcast.splat1213
  %559 = add <4 x i32> %558, <i32 3, i32 3, i32 3, i32 3>
  %560 = urem <4 x i32> %559, <i32 80, i32 80, i32 80, i32 80>
  %561 = sitofp <4 x i32> %560 to <4 x double>
  %562 = fmul fast <4 x double> %561, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %563 = shl i64 %index1204, 3
  %564 = add nuw nsw i64 %563, %556
  %565 = getelementptr i8, i8* %call, i64 %564
  %566 = bitcast i8* %565 to <4 x double>*
  store <4 x double> %562, <4 x double>* %566, align 8, !alias.scope !112, !noalias !114
  %index.next1205 = add i64 %index1204, 4
  %vec.ind.next1211 = add <4 x i32> %vec.ind1210, <i32 4, i32 4, i32 4, i32 4>
  %567 = icmp eq i64 %index.next1205, 32
  br i1 %567, label %polly.loop_exit870.21092, label %vector.body1202, !llvm.loop !143

polly.loop_exit870.21092:                         ; preds = %vector.body1202
  %polly.indvar_next866.21090 = add nuw nsw i64 %polly.indvar865.21080, 1
  %exitcond1031.21091.not = icmp eq i64 %polly.indvar_next866.21090, 16
  br i1 %exitcond1031.21091.not, label %polly.loop_header862.1.2, label %polly.loop_header862.21081

polly.loop_header862.1.2:                         ; preds = %polly.loop_exit870.21092, %polly.loop_exit870.1.2
  %polly.indvar865.1.2 = phi i64 [ %polly.indvar_next866.1.2, %polly.loop_exit870.1.2 ], [ 0, %polly.loop_exit870.21092 ]
  %568 = add nuw nsw i64 %polly.indvar865.1.2, 64
  %569 = mul nuw nsw i64 %568, 640
  %570 = trunc i64 %568 to i32
  %broadcast.splatinsert1224 = insertelement <4 x i32> poison, i32 %570, i32 0
  %broadcast.splat1225 = shufflevector <4 x i32> %broadcast.splatinsert1224, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1216

vector.body1216:                                  ; preds = %vector.body1216, %polly.loop_header862.1.2
  %index1218 = phi i64 [ 0, %polly.loop_header862.1.2 ], [ %index.next1219, %vector.body1216 ]
  %vec.ind1222 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header862.1.2 ], [ %vec.ind.next1223, %vector.body1216 ]
  %571 = add nuw nsw <4 x i64> %vec.ind1222, <i64 32, i64 32, i64 32, i64 32>
  %572 = trunc <4 x i64> %571 to <4 x i32>
  %573 = mul <4 x i32> %broadcast.splat1225, %572
  %574 = add <4 x i32> %573, <i32 3, i32 3, i32 3, i32 3>
  %575 = urem <4 x i32> %574, <i32 80, i32 80, i32 80, i32 80>
  %576 = sitofp <4 x i32> %575 to <4 x double>
  %577 = fmul fast <4 x double> %576, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %578 = extractelement <4 x i64> %571, i32 0
  %579 = shl i64 %578, 3
  %580 = add nuw nsw i64 %579, %569
  %581 = getelementptr i8, i8* %call, i64 %580
  %582 = bitcast i8* %581 to <4 x double>*
  store <4 x double> %577, <4 x double>* %582, align 8, !alias.scope !112, !noalias !114
  %index.next1219 = add i64 %index1218, 4
  %vec.ind.next1223 = add <4 x i64> %vec.ind1222, <i64 4, i64 4, i64 4, i64 4>
  %583 = icmp eq i64 %index.next1219, 32
  br i1 %583, label %polly.loop_exit870.1.2, label %vector.body1216, !llvm.loop !144

polly.loop_exit870.1.2:                           ; preds = %vector.body1216
  %polly.indvar_next866.1.2 = add nuw nsw i64 %polly.indvar865.1.2, 1
  %exitcond1031.1.2.not = icmp eq i64 %polly.indvar_next866.1.2, 16
  br i1 %exitcond1031.1.2.not, label %polly.loop_header862.2.2, label %polly.loop_header862.1.2

polly.loop_header862.2.2:                         ; preds = %polly.loop_exit870.1.2, %polly.loop_exit870.2.2
  %polly.indvar865.2.2 = phi i64 [ %polly.indvar_next866.2.2, %polly.loop_exit870.2.2 ], [ 0, %polly.loop_exit870.1.2 ]
  %584 = add nuw nsw i64 %polly.indvar865.2.2, 64
  %585 = mul nuw nsw i64 %584, 640
  %586 = trunc i64 %584 to i32
  %broadcast.splatinsert1236 = insertelement <4 x i32> poison, i32 %586, i32 0
  %broadcast.splat1237 = shufflevector <4 x i32> %broadcast.splatinsert1236, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1228

vector.body1228:                                  ; preds = %vector.body1228, %polly.loop_header862.2.2
  %index1230 = phi i64 [ 0, %polly.loop_header862.2.2 ], [ %index.next1231, %vector.body1228 ]
  %vec.ind1234 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header862.2.2 ], [ %vec.ind.next1235, %vector.body1228 ]
  %587 = add nuw nsw <4 x i64> %vec.ind1234, <i64 64, i64 64, i64 64, i64 64>
  %588 = trunc <4 x i64> %587 to <4 x i32>
  %589 = mul <4 x i32> %broadcast.splat1237, %588
  %590 = add <4 x i32> %589, <i32 3, i32 3, i32 3, i32 3>
  %591 = urem <4 x i32> %590, <i32 80, i32 80, i32 80, i32 80>
  %592 = sitofp <4 x i32> %591 to <4 x double>
  %593 = fmul fast <4 x double> %592, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %594 = extractelement <4 x i64> %587, i32 0
  %595 = shl i64 %594, 3
  %596 = add nuw nsw i64 %595, %585
  %597 = getelementptr i8, i8* %call, i64 %596
  %598 = bitcast i8* %597 to <4 x double>*
  store <4 x double> %593, <4 x double>* %598, align 8, !alias.scope !112, !noalias !114
  %index.next1231 = add i64 %index1230, 4
  %vec.ind.next1235 = add <4 x i64> %vec.ind1234, <i64 4, i64 4, i64 4, i64 4>
  %599 = icmp eq i64 %index.next1231, 16
  br i1 %599, label %polly.loop_exit870.2.2, label %vector.body1228, !llvm.loop !145

polly.loop_exit870.2.2:                           ; preds = %vector.body1228
  %polly.indvar_next866.2.2 = add nuw nsw i64 %polly.indvar865.2.2, 1
  %exitcond1031.2.2.not = icmp eq i64 %polly.indvar_next866.2.2, 16
  br i1 %exitcond1031.2.2.not, label %polly.loop_header889, label %polly.loop_header862.2.2
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
!26 = !{!"llvm.loop.tile.size", i32 64}
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
!51 = !{!"llvm.loop.tile.size", i32 20}
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
!118 = !{!115, !112}
!119 = distinct !{!119, !13}
!120 = !{!116, !112}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !81, !13}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !81, !13}
!126 = distinct !{!126, !13}
!127 = distinct !{!127, !81, !13}
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
!139 = distinct !{!139, !13}
!140 = distinct !{!140, !13}
!141 = distinct !{!141, !13}
!142 = distinct !{!142, !13}
!143 = distinct !{!143, !13}
!144 = distinct !{!144, !13}
!145 = distinct !{!145, !13}
