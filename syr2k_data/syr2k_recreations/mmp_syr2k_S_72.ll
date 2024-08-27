; ModuleID = 'syr2k_recreations//mmp_syr2k_S_72.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_72.c"
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
  %call868 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1720 = bitcast i8* %call1 to double*
  %polly.access.call1729 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2730 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1729, %call2
  %polly.access.call2749 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2749, %call1
  %2 = or i1 %0, %1
  %polly.access.call769 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call769, %call2
  %4 = icmp ule i8* %polly.access.call2749, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call769, %call1
  %8 = icmp ule i8* %polly.access.call1729, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header854, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1110 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1109 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1108 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1107 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1107, %scevgep1110
  %bound1 = icmp ult i8* %scevgep1109, %scevgep1108
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
  br i1 %exitcond18.not.i, label %vector.ph1114, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1114:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1121 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1122 = shufflevector <4 x i64> %broadcast.splatinsert1121, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1113

vector.body1113:                                  ; preds = %vector.body1113, %vector.ph1114
  %index1115 = phi i64 [ 0, %vector.ph1114 ], [ %index.next1116, %vector.body1113 ]
  %vec.ind1119 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1114 ], [ %vec.ind.next1120, %vector.body1113 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1119, %broadcast.splat1122
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call868, i64 %indvars.iv7.i, i64 %index1115
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1116 = add i64 %index1115, 4
  %vec.ind.next1120 = add <4 x i64> %vec.ind1119, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1116, 80
  br i1 %40, label %for.inc41.i, label %vector.body1113, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1113
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1114, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit915.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start510, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1569, label %vector.ph1396

vector.ph1396:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1395

vector.body1395:                                  ; preds = %vector.body1395, %vector.ph1396
  %index1397 = phi i64 [ 0, %vector.ph1396 ], [ %index.next1398, %vector.body1395 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call868, i64 %indvars.iv21.i, i64 %index1397
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1398 = add i64 %index1397, 4
  %46 = icmp eq i64 %index.next1398, %n.vec
  br i1 %46, label %middle.block1393, label %vector.body1395, !llvm.loop !18

middle.block1393:                                 ; preds = %vector.body1395
  %cmp.n1400 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1400, label %for.inc6.i, label %for.body3.i46.preheader1569

for.body3.i46.preheader1569:                      ; preds = %for.body3.i46.preheader, %middle.block1393
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1393 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1569, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1569 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call868, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1393, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call868, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting511
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start302, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1449 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1449, label %for.body3.i60.preheader1567, label %vector.ph1450

vector.ph1450:                                    ; preds = %for.body3.i60.preheader
  %n.vec1452 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1448

vector.body1448:                                  ; preds = %vector.body1448, %vector.ph1450
  %index1453 = phi i64 [ 0, %vector.ph1450 ], [ %index.next1454, %vector.body1448 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call868, i64 %indvars.iv21.i52, i64 %index1453
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1457 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1457, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1454 = add i64 %index1453, 4
  %57 = icmp eq i64 %index.next1454, %n.vec1452
  br i1 %57, label %middle.block1446, label %vector.body1448, !llvm.loop !63

middle.block1446:                                 ; preds = %vector.body1448
  %cmp.n1456 = icmp eq i64 %indvars.iv21.i52, %n.vec1452
  br i1 %cmp.n1456, label %for.inc6.i63, label %for.body3.i60.preheader1567

for.body3.i60.preheader1567:                      ; preds = %for.body3.i60.preheader, %middle.block1446
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1452, %middle.block1446 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1567, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1567 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call868, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !64

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1446, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call868, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check1508 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1508, label %for.body3.i99.preheader1565, label %vector.ph1509

vector.ph1509:                                    ; preds = %for.body3.i99.preheader
  %n.vec1511 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1507

vector.body1507:                                  ; preds = %vector.body1507, %vector.ph1509
  %index1512 = phi i64 [ 0, %vector.ph1509 ], [ %index.next1513, %vector.body1507 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call868, i64 %indvars.iv21.i91, i64 %index1512
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1516 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1516, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1513 = add i64 %index1512, 4
  %68 = icmp eq i64 %index.next1513, %n.vec1511
  br i1 %68, label %middle.block1505, label %vector.body1507, !llvm.loop !65

middle.block1505:                                 ; preds = %vector.body1507
  %cmp.n1515 = icmp eq i64 %indvars.iv21.i91, %n.vec1511
  br i1 %cmp.n1515, label %for.inc6.i102, label %for.body3.i99.preheader1565

for.body3.i99.preheader1565:                      ; preds = %for.body3.i99.preheader, %middle.block1505
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1511, %middle.block1505 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1565, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1565 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call868, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !66

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1505, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call868, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !67
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call868, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !69

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !70

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
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

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1520 = phi i64 [ %indvar.next1521, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1520, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1522 = icmp ult i64 %88, 4
  br i1 %min.iters.check1522, label %polly.loop_header192.preheader, label %vector.ph1523

vector.ph1523:                                    ; preds = %polly.loop_header
  %n.vec1525 = and i64 %88, -4
  br label %vector.body1519

vector.body1519:                                  ; preds = %vector.body1519, %vector.ph1523
  %index1526 = phi i64 [ 0, %vector.ph1523 ], [ %index.next1527, %vector.body1519 ]
  %90 = shl nuw nsw i64 %index1526, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1530 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !71, !noalias !73
  %93 = fmul fast <4 x double> %wide.load1530, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !71, !noalias !73
  %index.next1527 = add i64 %index1526, 4
  %95 = icmp eq i64 %index.next1527, %n.vec1525
  br i1 %95, label %middle.block1517, label %vector.body1519, !llvm.loop !78

middle.block1517:                                 ; preds = %vector.body1519
  %cmp.n1529 = icmp eq i64 %88, %n.vec1525
  br i1 %cmp.n1529, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1517
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1525, %middle.block1517 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1517
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond976.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1521 = add i64 %indvar1520, 1
  br i1 %exitcond976.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !71, !noalias !73
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond975.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond975.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !79

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.loop_cond205 = phi i1 [ false, %polly.loop_exit208 ], [ true, %polly.loop_header200.preheader ]
  %polly.indvar203 = phi i64 [ 1, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar203, -50
  %98 = icmp slt i64 %97, -10
  %99 = select i1 %98, i64 %97, i64 -10
  %100 = mul nuw nsw i64 %polly.indvar203, 50
  %101 = add nsw i64 %99, 60
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  br i1 %polly.loop_cond205, label %polly.loop_header200, label %polly.exiting

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 80, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %102 = mul nuw nsw i64 %polly.indvar209, 12960
  %103 = or i64 %102, 8
  %104 = mul nuw nsw i64 %polly.indvar209, 20
  br label %polly.loop_header212

polly.loop_exit230:                               ; preds = %polly.loop_exit265
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -20
  %exitcond974.not = icmp eq i64 %polly.indvar_next210, 4
  br i1 %exitcond974.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %105 = add nuw nsw i64 %polly.indvar215, %100
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 80
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond961.not = icmp eq i64 %polly.indvar_next216, %101
  br i1 %exitcond961.not, label %polly.loop_header228.preheader, label %polly.loop_header212

polly.loop_header228.preheader:                   ; preds = %polly.loop_exit220
  %106 = mul nsw i64 %polly.indvar209, -20
  %polly.access.mul.call1247 = mul nuw i64 %polly.indvar209, 1200
  %107 = or i64 %104, 1
  %polly.access.mul.call1247.1 = mul nuw nsw i64 %107, 60
  %108 = or i64 %104, 2
  %polly.access.mul.call1247.2 = mul nuw nsw i64 %108, 60
  %109 = or i64 %104, 3
  %polly.access.mul.call1247.3 = mul nuw nsw i64 %109, 60
  %110 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.4 = add i64 %110, 240
  %111 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.5 = add i64 %111, 300
  %112 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.6 = add i64 %112, 360
  %113 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.7 = add i64 %113, 420
  %114 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.8 = add i64 %114, 480
  %115 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.9 = add i64 %115, 540
  %116 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.10 = add i64 %116, 600
  %117 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.11 = add i64 %117, 660
  %118 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.12 = add i64 %118, 720
  %119 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.13 = add i64 %119, 780
  %120 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.14 = add i64 %120, 840
  %121 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.15 = add i64 %121, 900
  %122 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.16 = add i64 %122, 960
  %123 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.17 = add i64 %123, 1020
  %124 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.18 = add i64 %124, 1080
  %125 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.19 = add i64 %125, 1140
  %polly.access.mul.call1247.us = mul nuw i64 %polly.indvar209, 1200
  %126 = or i64 %104, 1
  %polly.access.mul.call1247.us.1 = mul nuw nsw i64 %126, 60
  %127 = or i64 %104, 2
  %polly.access.mul.call1247.us.2 = mul nuw nsw i64 %127, 60
  %128 = or i64 %104, 3
  %polly.access.mul.call1247.us.3 = mul nuw nsw i64 %128, 60
  %129 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.us.4 = add i64 %129, 240
  %130 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.us.5 = add i64 %130, 300
  %131 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.us.6 = add i64 %131, 360
  %132 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.us.7 = add i64 %132, 420
  %133 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.us.8 = add i64 %133, 480
  %134 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.us.9 = add i64 %134, 540
  %135 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.us.10 = add i64 %135, 600
  %136 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.us.11 = add i64 %136, 660
  %137 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.us.12 = add i64 %137, 720
  %138 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.us.13 = add i64 %138, 780
  %139 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.us.14 = add i64 %139, 840
  %140 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.us.15 = add i64 %140, 900
  %141 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.us.16 = add i64 %141, 960
  %142 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.us.17 = add i64 %142, 1020
  %143 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.us.18 = add i64 %143, 1080
  %144 = mul i64 %polly.indvar209, 1200
  %polly.access.mul.call1247.us.19 = add i64 %144, 1140
  br label %polly.loop_header228

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %145 = add nuw nsw i64 %polly.indvar221, %104
  %polly.access.mul.call2225 = mul nuw nsw i64 %145, 60
  %polly.access.add.call2226 = add nuw nsw i64 %105, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2730, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !75, !noalias !81
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_header228.preheader, %polly.loop_exit265
  %indvar1532 = phi i64 [ 0, %polly.loop_header228.preheader ], [ %indvar.next1533, %polly.loop_exit265 ]
  %indvars.iv966 = phi i64 [ 0, %polly.loop_header228.preheader ], [ %indvars.iv.next967, %polly.loop_exit265 ]
  %polly.indvar231 = phi i64 [ %polly.indvar209, %polly.loop_header228.preheader ], [ %polly.indvar_next232, %polly.loop_exit265 ]
  %146 = mul nuw nsw i64 %indvar1532, 20
  %147 = mul nuw nsw i64 %indvar1532, 12800
  %148 = add i64 %102, %147
  %149 = add i64 %103, %147
  %150 = mul nuw nsw i64 %indvar1532, 20
  %151 = mul nuw nsw i64 %polly.indvar231, 20
  %152 = add nsw i64 %151, %106
  %153 = icmp ugt i64 %152, 20
  %154 = select i1 %153, i64 %152, i64 20
  %155 = add nuw nsw i64 %152, 19
  %polly.loop_guard.not = icmp ugt i64 %154, %155
  br i1 %polly.loop_guard.not, label %polly.loop_header234.us, label %polly.loop_header234

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.loop_header234.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_header234.us ], [ 0, %polly.loop_header228 ]
  %156 = add nuw nsw i64 %polly.indvar237.us, %100
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 80
  %polly.access.add.call1248.us = add nuw nsw i64 %polly.access.mul.call1247.us, %156
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !74, !noalias !82
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.access.add.call1248.us.1 = add nuw nsw i64 %polly.access.mul.call1247.us.1, %156
  %polly.access.call1249.us.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.1
  %polly.access.call1249.load.us.1 = load double, double* %polly.access.call1249.us.1, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1249.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.access.add.call1248.us.2 = add nuw nsw i64 %polly.access.mul.call1247.us.2, %156
  %polly.access.call1249.us.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.2
  %polly.access.call1249.load.us.2 = load double, double* %polly.access.call1249.us.2, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 2
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1249.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.access.add.call1248.us.3 = add nuw nsw i64 %polly.access.mul.call1247.us.3, %156
  %polly.access.call1249.us.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.3
  %polly.access.call1249.load.us.3 = load double, double* %polly.access.call1249.us.3, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 3
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1249.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.access.add.call1248.us.4 = add nuw nsw i64 %polly.access.mul.call1247.us.4, %156
  %polly.access.call1249.us.4 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.4
  %polly.access.call1249.load.us.4 = load double, double* %polly.access.call1249.us.4, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 4
  %polly.access.Packed_MemRef_call1.us.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.4
  store double %polly.access.call1249.load.us.4, double* %polly.access.Packed_MemRef_call1.us.4, align 8
  %polly.access.add.call1248.us.5 = add nuw nsw i64 %polly.access.mul.call1247.us.5, %156
  %polly.access.call1249.us.5 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.5
  %polly.access.call1249.load.us.5 = load double, double* %polly.access.call1249.us.5, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 5
  %polly.access.Packed_MemRef_call1.us.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.5
  store double %polly.access.call1249.load.us.5, double* %polly.access.Packed_MemRef_call1.us.5, align 8
  %polly.access.add.call1248.us.6 = add nuw nsw i64 %polly.access.mul.call1247.us.6, %156
  %polly.access.call1249.us.6 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.6
  %polly.access.call1249.load.us.6 = load double, double* %polly.access.call1249.us.6, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 6
  %polly.access.Packed_MemRef_call1.us.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.6
  store double %polly.access.call1249.load.us.6, double* %polly.access.Packed_MemRef_call1.us.6, align 8
  %polly.access.add.call1248.us.7 = add nuw nsw i64 %polly.access.mul.call1247.us.7, %156
  %polly.access.call1249.us.7 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.7
  %polly.access.call1249.load.us.7 = load double, double* %polly.access.call1249.us.7, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 7
  %polly.access.Packed_MemRef_call1.us.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.7
  store double %polly.access.call1249.load.us.7, double* %polly.access.Packed_MemRef_call1.us.7, align 8
  %polly.access.add.call1248.us.8 = add nuw nsw i64 %polly.access.mul.call1247.us.8, %156
  %polly.access.call1249.us.8 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.8
  %polly.access.call1249.load.us.8 = load double, double* %polly.access.call1249.us.8, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.8 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 8
  %polly.access.Packed_MemRef_call1.us.8 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.8
  store double %polly.access.call1249.load.us.8, double* %polly.access.Packed_MemRef_call1.us.8, align 8
  %polly.access.add.call1248.us.9 = add nuw nsw i64 %polly.access.mul.call1247.us.9, %156
  %polly.access.call1249.us.9 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.9
  %polly.access.call1249.load.us.9 = load double, double* %polly.access.call1249.us.9, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.9 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 9
  %polly.access.Packed_MemRef_call1.us.9 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.9
  store double %polly.access.call1249.load.us.9, double* %polly.access.Packed_MemRef_call1.us.9, align 8
  %polly.access.add.call1248.us.10 = add nuw nsw i64 %polly.access.mul.call1247.us.10, %156
  %polly.access.call1249.us.10 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.10
  %polly.access.call1249.load.us.10 = load double, double* %polly.access.call1249.us.10, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.10 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 10
  %polly.access.Packed_MemRef_call1.us.10 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.10
  store double %polly.access.call1249.load.us.10, double* %polly.access.Packed_MemRef_call1.us.10, align 8
  %polly.access.add.call1248.us.11 = add nuw nsw i64 %polly.access.mul.call1247.us.11, %156
  %polly.access.call1249.us.11 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.11
  %polly.access.call1249.load.us.11 = load double, double* %polly.access.call1249.us.11, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.11 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 11
  %polly.access.Packed_MemRef_call1.us.11 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.11
  store double %polly.access.call1249.load.us.11, double* %polly.access.Packed_MemRef_call1.us.11, align 8
  %polly.access.add.call1248.us.12 = add nuw nsw i64 %polly.access.mul.call1247.us.12, %156
  %polly.access.call1249.us.12 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.12
  %polly.access.call1249.load.us.12 = load double, double* %polly.access.call1249.us.12, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.12 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 12
  %polly.access.Packed_MemRef_call1.us.12 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.12
  store double %polly.access.call1249.load.us.12, double* %polly.access.Packed_MemRef_call1.us.12, align 8
  %polly.access.add.call1248.us.13 = add nuw nsw i64 %polly.access.mul.call1247.us.13, %156
  %polly.access.call1249.us.13 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.13
  %polly.access.call1249.load.us.13 = load double, double* %polly.access.call1249.us.13, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.13 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 13
  %polly.access.Packed_MemRef_call1.us.13 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.13
  store double %polly.access.call1249.load.us.13, double* %polly.access.Packed_MemRef_call1.us.13, align 8
  %polly.access.add.call1248.us.14 = add nuw nsw i64 %polly.access.mul.call1247.us.14, %156
  %polly.access.call1249.us.14 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.14
  %polly.access.call1249.load.us.14 = load double, double* %polly.access.call1249.us.14, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.14 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 14
  %polly.access.Packed_MemRef_call1.us.14 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.14
  store double %polly.access.call1249.load.us.14, double* %polly.access.Packed_MemRef_call1.us.14, align 8
  %polly.access.add.call1248.us.15 = add nuw nsw i64 %polly.access.mul.call1247.us.15, %156
  %polly.access.call1249.us.15 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.15
  %polly.access.call1249.load.us.15 = load double, double* %polly.access.call1249.us.15, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.15 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 15
  %polly.access.Packed_MemRef_call1.us.15 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.15
  store double %polly.access.call1249.load.us.15, double* %polly.access.Packed_MemRef_call1.us.15, align 8
  %polly.access.add.call1248.us.16 = add nuw nsw i64 %polly.access.mul.call1247.us.16, %156
  %polly.access.call1249.us.16 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.16
  %polly.access.call1249.load.us.16 = load double, double* %polly.access.call1249.us.16, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.16 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1.us, 16
  %polly.access.Packed_MemRef_call1.us.16 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.16
  store double %polly.access.call1249.load.us.16, double* %polly.access.Packed_MemRef_call1.us.16, align 8
  %polly.access.add.call1248.us.17 = add nuw nsw i64 %polly.access.mul.call1247.us.17, %156
  %polly.access.call1249.us.17 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.17
  %polly.access.call1249.load.us.17 = load double, double* %polly.access.call1249.us.17, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.17 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1.us, 17
  %polly.access.Packed_MemRef_call1.us.17 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.17
  store double %polly.access.call1249.load.us.17, double* %polly.access.Packed_MemRef_call1.us.17, align 8
  %polly.access.add.call1248.us.18 = add nuw nsw i64 %polly.access.mul.call1247.us.18, %156
  %polly.access.call1249.us.18 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.18
  %polly.access.call1249.load.us.18 = load double, double* %polly.access.call1249.us.18, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.18 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1.us, 18
  %polly.access.Packed_MemRef_call1.us.18 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.18
  store double %polly.access.call1249.load.us.18, double* %polly.access.Packed_MemRef_call1.us.18, align 8
  %polly.access.add.call1248.us.19 = add nuw nsw i64 %polly.access.mul.call1247.us.19, %156
  %polly.access.call1249.us.19 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.19
  %polly.access.call1249.load.us.19 = load double, double* %polly.access.call1249.us.19, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.19 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1.us, 19
  %polly.access.Packed_MemRef_call1.us.19 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.19
  store double %polly.access.call1249.load.us.19, double* %polly.access.Packed_MemRef_call1.us.19, align 8
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond965.not = icmp eq i64 %polly.indvar_next238.us, %101
  br i1 %exitcond965.not, label %polly.loop_header263.preheader, label %polly.loop_header234.us

polly.loop_header263.preheader:                   ; preds = %polly.loop_exit252, %polly.loop_header234.us
  br label %polly.loop_header263

polly.loop_exit265:                               ; preds = %polly.loop_exit271
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next967 = add nuw nsw i64 %indvars.iv966, 20
  %exitcond973.not = icmp eq i64 %polly.indvar_next232, 4
  %indvar.next1533 = add i64 %indvar1532, 1
  br i1 %exitcond973.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header228, %polly.loop_exit252
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit252 ], [ 0, %polly.loop_header228 ]
  %157 = add nuw nsw i64 %polly.indvar237, %100
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar237, 80
  %polly.access.add.call1248 = add nuw nsw i64 %polly.access.mul.call1247, %157
  %polly.access.call1249 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248
  %polly.access.call1249.load = load double, double* %polly.access.call1249, align 8, !alias.scope !74, !noalias !82
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1
  store double %polly.access.call1249.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.access.add.call1248.1 = add nuw nsw i64 %polly.access.mul.call1247.1, %157
  %polly.access.call1249.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.1
  %polly.access.call1249.load.1 = load double, double* %polly.access.call1249.1, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.1 = or i64 %polly.access.mul.Packed_MemRef_call1, 1
  %polly.access.Packed_MemRef_call1.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.1
  store double %polly.access.call1249.load.1, double* %polly.access.Packed_MemRef_call1.1, align 8
  %polly.access.add.call1248.2 = add nuw nsw i64 %polly.access.mul.call1247.2, %157
  %polly.access.call1249.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.2
  %polly.access.call1249.load.2 = load double, double* %polly.access.call1249.2, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.2 = or i64 %polly.access.mul.Packed_MemRef_call1, 2
  %polly.access.Packed_MemRef_call1.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.2
  store double %polly.access.call1249.load.2, double* %polly.access.Packed_MemRef_call1.2, align 8
  %polly.access.add.call1248.3 = add nuw nsw i64 %polly.access.mul.call1247.3, %157
  %polly.access.call1249.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.3
  %polly.access.call1249.load.3 = load double, double* %polly.access.call1249.3, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.3 = or i64 %polly.access.mul.Packed_MemRef_call1, 3
  %polly.access.Packed_MemRef_call1.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.3
  store double %polly.access.call1249.load.3, double* %polly.access.Packed_MemRef_call1.3, align 8
  %polly.access.add.call1248.4 = add nuw nsw i64 %polly.access.mul.call1247.4, %157
  %polly.access.call1249.4 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.4
  %polly.access.call1249.load.4 = load double, double* %polly.access.call1249.4, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.4 = or i64 %polly.access.mul.Packed_MemRef_call1, 4
  %polly.access.Packed_MemRef_call1.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.4
  store double %polly.access.call1249.load.4, double* %polly.access.Packed_MemRef_call1.4, align 8
  %polly.access.add.call1248.5 = add nuw nsw i64 %polly.access.mul.call1247.5, %157
  %polly.access.call1249.5 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.5
  %polly.access.call1249.load.5 = load double, double* %polly.access.call1249.5, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.5 = or i64 %polly.access.mul.Packed_MemRef_call1, 5
  %polly.access.Packed_MemRef_call1.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.5
  store double %polly.access.call1249.load.5, double* %polly.access.Packed_MemRef_call1.5, align 8
  %polly.access.add.call1248.6 = add nuw nsw i64 %polly.access.mul.call1247.6, %157
  %polly.access.call1249.6 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.6
  %polly.access.call1249.load.6 = load double, double* %polly.access.call1249.6, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.6 = or i64 %polly.access.mul.Packed_MemRef_call1, 6
  %polly.access.Packed_MemRef_call1.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.6
  store double %polly.access.call1249.load.6, double* %polly.access.Packed_MemRef_call1.6, align 8
  %polly.access.add.call1248.7 = add nuw nsw i64 %polly.access.mul.call1247.7, %157
  %polly.access.call1249.7 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.7
  %polly.access.call1249.load.7 = load double, double* %polly.access.call1249.7, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.7 = or i64 %polly.access.mul.Packed_MemRef_call1, 7
  %polly.access.Packed_MemRef_call1.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.7
  store double %polly.access.call1249.load.7, double* %polly.access.Packed_MemRef_call1.7, align 8
  %polly.access.add.call1248.8 = add nuw nsw i64 %polly.access.mul.call1247.8, %157
  %polly.access.call1249.8 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.8
  %polly.access.call1249.load.8 = load double, double* %polly.access.call1249.8, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.8 = or i64 %polly.access.mul.Packed_MemRef_call1, 8
  %polly.access.Packed_MemRef_call1.8 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.8
  store double %polly.access.call1249.load.8, double* %polly.access.Packed_MemRef_call1.8, align 8
  %polly.access.add.call1248.9 = add nuw nsw i64 %polly.access.mul.call1247.9, %157
  %polly.access.call1249.9 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.9
  %polly.access.call1249.load.9 = load double, double* %polly.access.call1249.9, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.9 = or i64 %polly.access.mul.Packed_MemRef_call1, 9
  %polly.access.Packed_MemRef_call1.9 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.9
  store double %polly.access.call1249.load.9, double* %polly.access.Packed_MemRef_call1.9, align 8
  %polly.access.add.call1248.10 = add nuw nsw i64 %polly.access.mul.call1247.10, %157
  %polly.access.call1249.10 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.10
  %polly.access.call1249.load.10 = load double, double* %polly.access.call1249.10, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.10 = or i64 %polly.access.mul.Packed_MemRef_call1, 10
  %polly.access.Packed_MemRef_call1.10 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.10
  store double %polly.access.call1249.load.10, double* %polly.access.Packed_MemRef_call1.10, align 8
  %polly.access.add.call1248.11 = add nuw nsw i64 %polly.access.mul.call1247.11, %157
  %polly.access.call1249.11 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.11
  %polly.access.call1249.load.11 = load double, double* %polly.access.call1249.11, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.11 = or i64 %polly.access.mul.Packed_MemRef_call1, 11
  %polly.access.Packed_MemRef_call1.11 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.11
  store double %polly.access.call1249.load.11, double* %polly.access.Packed_MemRef_call1.11, align 8
  %polly.access.add.call1248.12 = add nuw nsw i64 %polly.access.mul.call1247.12, %157
  %polly.access.call1249.12 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.12
  %polly.access.call1249.load.12 = load double, double* %polly.access.call1249.12, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.12 = or i64 %polly.access.mul.Packed_MemRef_call1, 12
  %polly.access.Packed_MemRef_call1.12 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.12
  store double %polly.access.call1249.load.12, double* %polly.access.Packed_MemRef_call1.12, align 8
  %polly.access.add.call1248.13 = add nuw nsw i64 %polly.access.mul.call1247.13, %157
  %polly.access.call1249.13 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.13
  %polly.access.call1249.load.13 = load double, double* %polly.access.call1249.13, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.13 = or i64 %polly.access.mul.Packed_MemRef_call1, 13
  %polly.access.Packed_MemRef_call1.13 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.13
  store double %polly.access.call1249.load.13, double* %polly.access.Packed_MemRef_call1.13, align 8
  %polly.access.add.call1248.14 = add nuw nsw i64 %polly.access.mul.call1247.14, %157
  %polly.access.call1249.14 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.14
  %polly.access.call1249.load.14 = load double, double* %polly.access.call1249.14, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.14 = or i64 %polly.access.mul.Packed_MemRef_call1, 14
  %polly.access.Packed_MemRef_call1.14 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.14
  store double %polly.access.call1249.load.14, double* %polly.access.Packed_MemRef_call1.14, align 8
  %polly.access.add.call1248.15 = add nuw nsw i64 %polly.access.mul.call1247.15, %157
  %polly.access.call1249.15 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.15
  %polly.access.call1249.load.15 = load double, double* %polly.access.call1249.15, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.15 = or i64 %polly.access.mul.Packed_MemRef_call1, 15
  %polly.access.Packed_MemRef_call1.15 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.15
  store double %polly.access.call1249.load.15, double* %polly.access.Packed_MemRef_call1.15, align 8
  %polly.access.add.call1248.16 = add nuw nsw i64 %polly.access.mul.call1247.16, %157
  %polly.access.call1249.16 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.16
  %polly.access.call1249.load.16 = load double, double* %polly.access.call1249.16, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.16 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1, 16
  %polly.access.Packed_MemRef_call1.16 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.16
  store double %polly.access.call1249.load.16, double* %polly.access.Packed_MemRef_call1.16, align 8
  %polly.access.add.call1248.17 = add nuw nsw i64 %polly.access.mul.call1247.17, %157
  %polly.access.call1249.17 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.17
  %polly.access.call1249.load.17 = load double, double* %polly.access.call1249.17, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.17 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1, 17
  %polly.access.Packed_MemRef_call1.17 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.17
  store double %polly.access.call1249.load.17, double* %polly.access.Packed_MemRef_call1.17, align 8
  %polly.access.add.call1248.18 = add nuw nsw i64 %polly.access.mul.call1247.18, %157
  %polly.access.call1249.18 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.18
  %polly.access.call1249.load.18 = load double, double* %polly.access.call1249.18, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.18 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1, 18
  %polly.access.Packed_MemRef_call1.18 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.18
  store double %polly.access.call1249.load.18, double* %polly.access.Packed_MemRef_call1.18, align 8
  %polly.access.add.call1248.19 = add nuw nsw i64 %polly.access.mul.call1247.19, %157
  %polly.access.call1249.19 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.19
  %polly.access.call1249.load.19 = load double, double* %polly.access.call1249.19, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.19 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1, 19
  %polly.access.Packed_MemRef_call1.19 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.19
  store double %polly.access.call1249.load.19, double* %polly.access.Packed_MemRef_call1.19, align 8
  br label %polly.loop_header250

polly.loop_exit252:                               ; preds = %polly.loop_header250
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond963.not = icmp eq i64 %polly.indvar_next238, %101
  br i1 %exitcond963.not, label %polly.loop_header263.preheader, label %polly.loop_header234

polly.loop_header250:                             ; preds = %polly.loop_header234, %polly.loop_header250
  %polly.indvar253 = phi i64 [ %polly.indvar_next254, %polly.loop_header250 ], [ %154, %polly.loop_header234 ]
  %158 = add nuw nsw i64 %polly.indvar253, %104
  %polly.access.mul.call1257 = mul nuw nsw i64 %158, 60
  %polly.access.add.call1258 = add nuw nsw i64 %polly.access.mul.call1257, %157
  %polly.access.call1259 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1258
  %polly.access.call1259.load = load double, double* %polly.access.call1259, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1261 = add nuw nsw i64 %polly.indvar253, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261
  store double %polly.access.call1259.load, double* %polly.access.Packed_MemRef_call1262, align 8
  %polly.indvar_next254 = add nuw nsw i64 %polly.indvar253, 1
  %polly.loop_cond255.not.not = icmp ult i64 %polly.indvar253, %155
  br i1 %polly.loop_cond255.not.not, label %polly.loop_header250, label %polly.loop_exit252

polly.loop_header263:                             ; preds = %polly.loop_header263.preheader, %polly.loop_exit271
  %polly.indvar266 = phi i64 [ %polly.indvar_next267, %polly.loop_exit271 ], [ 0, %polly.loop_header263.preheader ]
  %159 = mul i64 %polly.indvar266, 640
  %scevgep1538 = getelementptr i8, i8* %malloccall, i64 %159
  %160 = or i64 %159, 8
  %scevgep1539 = getelementptr i8, i8* %malloccall, i64 %160
  %polly.access.mul.Packed_MemRef_call1281 = mul nuw nsw i64 %polly.indvar266, 80
  br label %polly.loop_header269

polly.loop_exit271:                               ; preds = %polly.loop_exit277
  %polly.indvar_next267 = add nuw nsw i64 %polly.indvar266, 1
  %exitcond972.not = icmp eq i64 %polly.indvar_next267, %101
  br i1 %exitcond972.not, label %polly.loop_exit265, label %polly.loop_header263

polly.loop_header269:                             ; preds = %polly.loop_exit277, %polly.loop_header263
  %indvars.iv968 = phi i64 [ %indvars.iv.next969, %polly.loop_exit277 ], [ %indvars.iv966, %polly.loop_header263 ]
  %polly.indvar272 = phi i64 [ %polly.indvar_next273, %polly.loop_exit277 ], [ 0, %polly.loop_header263 ]
  %161 = add i64 %146, %polly.indvar272
  %smin1548 = call i64 @llvm.smin.i64(i64 %161, i64 19)
  %162 = add nuw nsw i64 %smin1548, 1
  %163 = mul nuw nsw i64 %polly.indvar272, 640
  %164 = add i64 %150, %polly.indvar272
  %smin1536 = call i64 @llvm.smin.i64(i64 %164, i64 19)
  %165 = shl nuw nsw i64 %smin1536, 3
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv968, i64 19)
  %166 = add nuw nsw i64 %polly.indvar272, %152
  %167 = add nuw nsw i64 %polly.indvar272, %151
  %polly.access.add.Packed_MemRef_call2286 = add nuw nsw i64 %166, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call2287 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286
  %_p_scalar_288 = load double, double* %polly.access.Packed_MemRef_call2287, align 8
  %polly.access.Packed_MemRef_call1295 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2286
  %_p_scalar_296 = load double, double* %polly.access.Packed_MemRef_call1295, align 8
  %168 = mul nuw nsw i64 %167, 640
  %min.iters.check1549 = icmp ult i64 %smin1548, 3
  br i1 %min.iters.check1549, label %polly.loop_header275.preheader, label %vector.memcheck1531

vector.memcheck1531:                              ; preds = %polly.loop_header269
  %scevgep1540 = getelementptr i8, i8* %scevgep1539, i64 %165
  %169 = add i64 %149, %163
  %scevgep1535 = getelementptr i8, i8* %call, i64 %169
  %scevgep1537 = getelementptr i8, i8* %scevgep1535, i64 %165
  %170 = add i64 %148, %163
  %scevgep1534 = getelementptr i8, i8* %call, i64 %170
  %bound01541 = icmp ult i8* %scevgep1534, %scevgep1540
  %bound11542 = icmp ult i8* %scevgep1538, %scevgep1537
  %found.conflict1543 = and i1 %bound01541, %bound11542
  br i1 %found.conflict1543, label %polly.loop_header275.preheader, label %vector.ph1550

vector.ph1550:                                    ; preds = %vector.memcheck1531
  %n.vec1552 = and i64 %162, -4
  %broadcast.splatinsert1558 = insertelement <4 x double> poison, double %_p_scalar_288, i32 0
  %broadcast.splat1559 = shufflevector <4 x double> %broadcast.splatinsert1558, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1561 = insertelement <4 x double> poison, double %_p_scalar_296, i32 0
  %broadcast.splat1562 = shufflevector <4 x double> %broadcast.splatinsert1561, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1547

vector.body1547:                                  ; preds = %vector.body1547, %vector.ph1550
  %index1553 = phi i64 [ 0, %vector.ph1550 ], [ %index.next1554, %vector.body1547 ]
  %171 = add nuw nsw i64 %index1553, %104
  %172 = add nuw nsw i64 %index1553, %polly.access.mul.Packed_MemRef_call1281
  %173 = getelementptr double, double* %Packed_MemRef_call1, i64 %172
  %174 = bitcast double* %173 to <4 x double>*
  %wide.load1557 = load <4 x double>, <4 x double>* %174, align 8, !alias.scope !83
  %175 = fmul fast <4 x double> %broadcast.splat1559, %wide.load1557
  %176 = getelementptr double, double* %Packed_MemRef_call2, i64 %172
  %177 = bitcast double* %176 to <4 x double>*
  %wide.load1560 = load <4 x double>, <4 x double>* %177, align 8
  %178 = fmul fast <4 x double> %broadcast.splat1562, %wide.load1560
  %179 = shl i64 %171, 3
  %180 = add nuw nsw i64 %179, %168
  %181 = getelementptr i8, i8* %call, i64 %180
  %182 = bitcast i8* %181 to <4 x double>*
  %wide.load1563 = load <4 x double>, <4 x double>* %182, align 8, !alias.scope !86, !noalias !88
  %183 = fadd fast <4 x double> %178, %175
  %184 = fmul fast <4 x double> %183, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %185 = fadd fast <4 x double> %184, %wide.load1563
  %186 = bitcast i8* %181 to <4 x double>*
  store <4 x double> %185, <4 x double>* %186, align 8, !alias.scope !86, !noalias !88
  %index.next1554 = add i64 %index1553, 4
  %187 = icmp eq i64 %index.next1554, %n.vec1552
  br i1 %187, label %middle.block1545, label %vector.body1547, !llvm.loop !89

middle.block1545:                                 ; preds = %vector.body1547
  %cmp.n1556 = icmp eq i64 %162, %n.vec1552
  br i1 %cmp.n1556, label %polly.loop_exit277, label %polly.loop_header275.preheader

polly.loop_header275.preheader:                   ; preds = %vector.memcheck1531, %polly.loop_header269, %middle.block1545
  %polly.indvar278.ph = phi i64 [ 0, %vector.memcheck1531 ], [ 0, %polly.loop_header269 ], [ %n.vec1552, %middle.block1545 ]
  br label %polly.loop_header275

polly.loop_exit277:                               ; preds = %polly.loop_header275, %middle.block1545
  %polly.indvar_next273 = add nuw nsw i64 %polly.indvar272, 1
  %indvars.iv.next969 = add nuw nsw i64 %indvars.iv968, 1
  %exitcond971.not = icmp eq i64 %polly.indvar_next273, 20
  br i1 %exitcond971.not, label %polly.loop_exit271, label %polly.loop_header269

polly.loop_header275:                             ; preds = %polly.loop_header275.preheader, %polly.loop_header275
  %polly.indvar278 = phi i64 [ %polly.indvar_next279, %polly.loop_header275 ], [ %polly.indvar278.ph, %polly.loop_header275.preheader ]
  %188 = add nuw nsw i64 %polly.indvar278, %104
  %polly.access.add.Packed_MemRef_call1282 = add nuw nsw i64 %polly.indvar278, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call1283 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282
  %_p_scalar_284 = load double, double* %polly.access.Packed_MemRef_call1283, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_288, %_p_scalar_284
  %polly.access.Packed_MemRef_call2291 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1282
  %_p_scalar_292 = load double, double* %polly.access.Packed_MemRef_call2291, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_296, %_p_scalar_292
  %189 = shl i64 %188, 3
  %190 = add nuw nsw i64 %189, %168
  %scevgep297 = getelementptr i8, i8* %call, i64 %190
  %scevgep297298 = bitcast i8* %scevgep297 to double*
  %_p_scalar_299 = load double, double* %scevgep297298, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_299
  store double %p_add42.i118, double* %scevgep297298, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next279 = add nuw nsw i64 %polly.indvar278, 1
  %exitcond970.not = icmp eq i64 %polly.indvar278, %smin
  br i1 %exitcond970.not, label %polly.loop_exit277, label %polly.loop_header275, !llvm.loop !90

polly.start302:                                   ; preds = %kernel_syr2k.exit
  %malloccall304 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  %malloccall306 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  br label %polly.loop_header390

polly.exiting303:                                 ; preds = %polly.loop_exit414
  tail call void @free(i8* nonnull %malloccall304)
  tail call void @free(i8* nonnull %malloccall306)
  br label %kernel_syr2k.exit90

polly.loop_header390:                             ; preds = %polly.loop_exit398, %polly.start302
  %indvar1461 = phi i64 [ %indvar.next1462, %polly.loop_exit398 ], [ 0, %polly.start302 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ 1, %polly.start302 ]
  %191 = add i64 %indvar1461, 1
  %192 = mul nuw nsw i64 %polly.indvar393, 640
  %scevgep402 = getelementptr i8, i8* %call, i64 %192
  %min.iters.check1463 = icmp ult i64 %191, 4
  br i1 %min.iters.check1463, label %polly.loop_header396.preheader, label %vector.ph1464

vector.ph1464:                                    ; preds = %polly.loop_header390
  %n.vec1466 = and i64 %191, -4
  br label %vector.body1460

vector.body1460:                                  ; preds = %vector.body1460, %vector.ph1464
  %index1467 = phi i64 [ 0, %vector.ph1464 ], [ %index.next1468, %vector.body1460 ]
  %193 = shl nuw nsw i64 %index1467, 3
  %194 = getelementptr i8, i8* %scevgep402, i64 %193
  %195 = bitcast i8* %194 to <4 x double>*
  %wide.load1471 = load <4 x double>, <4 x double>* %195, align 8, !alias.scope !91, !noalias !93
  %196 = fmul fast <4 x double> %wide.load1471, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %197 = bitcast i8* %194 to <4 x double>*
  store <4 x double> %196, <4 x double>* %197, align 8, !alias.scope !91, !noalias !93
  %index.next1468 = add i64 %index1467, 4
  %198 = icmp eq i64 %index.next1468, %n.vec1466
  br i1 %198, label %middle.block1458, label %vector.body1460, !llvm.loop !98

middle.block1458:                                 ; preds = %vector.body1460
  %cmp.n1470 = icmp eq i64 %191, %n.vec1466
  br i1 %cmp.n1470, label %polly.loop_exit398, label %polly.loop_header396.preheader

polly.loop_header396.preheader:                   ; preds = %polly.loop_header390, %middle.block1458
  %polly.indvar399.ph = phi i64 [ 0, %polly.loop_header390 ], [ %n.vec1466, %middle.block1458 ]
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_header396, %middle.block1458
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond996.not = icmp eq i64 %polly.indvar_next394, 80
  %indvar.next1462 = add i64 %indvar1461, 1
  br i1 %exitcond996.not, label %polly.loop_header406.preheader, label %polly.loop_header390

polly.loop_header406.preheader:                   ; preds = %polly.loop_exit398
  %Packed_MemRef_call1305 = bitcast i8* %malloccall304 to double*
  %Packed_MemRef_call2307 = bitcast i8* %malloccall306 to double*
  br label %polly.loop_header406

polly.loop_header396:                             ; preds = %polly.loop_header396.preheader, %polly.loop_header396
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_header396 ], [ %polly.indvar399.ph, %polly.loop_header396.preheader ]
  %199 = shl nuw nsw i64 %polly.indvar399, 3
  %scevgep403 = getelementptr i8, i8* %scevgep402, i64 %199
  %scevgep403404 = bitcast i8* %scevgep403 to double*
  %_p_scalar_405 = load double, double* %scevgep403404, align 8, !alias.scope !91, !noalias !93
  %p_mul.i57 = fmul fast double %_p_scalar_405, 1.200000e+00
  store double %p_mul.i57, double* %scevgep403404, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond995.not = icmp eq i64 %polly.indvar_next400, %polly.indvar393
  br i1 %exitcond995.not, label %polly.loop_exit398, label %polly.loop_header396, !llvm.loop !99

polly.loop_header406:                             ; preds = %polly.loop_header406.preheader, %polly.loop_exit414
  %polly.loop_cond411 = phi i1 [ false, %polly.loop_exit414 ], [ true, %polly.loop_header406.preheader ]
  %polly.indvar409 = phi i64 [ 1, %polly.loop_exit414 ], [ 0, %polly.loop_header406.preheader ]
  %200 = mul nuw nsw i64 %polly.indvar409, -50
  %201 = icmp slt i64 %200, -10
  %202 = select i1 %201, i64 %200, i64 -10
  %203 = mul nuw nsw i64 %polly.indvar409, 50
  %204 = add nsw i64 %202, 60
  br label %polly.loop_header412

polly.loop_exit414:                               ; preds = %polly.loop_exit436
  br i1 %polly.loop_cond411, label %polly.loop_header406, label %polly.exiting303

polly.loop_header412:                             ; preds = %polly.loop_exit436, %polly.loop_header406
  %indvars.iv977 = phi i64 [ %indvars.iv.next978, %polly.loop_exit436 ], [ 80, %polly.loop_header406 ]
  %polly.indvar415 = phi i64 [ %polly.indvar_next416, %polly.loop_exit436 ], [ 0, %polly.loop_header406 ]
  %205 = mul nuw nsw i64 %polly.indvar415, 12960
  %206 = or i64 %205, 8
  %207 = mul nuw nsw i64 %polly.indvar415, 20
  br label %polly.loop_header418

polly.loop_exit436:                               ; preds = %polly.loop_exit473
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %indvars.iv.next978 = add nsw i64 %indvars.iv977, -20
  %exitcond994.not = icmp eq i64 %polly.indvar_next416, 4
  br i1 %exitcond994.not, label %polly.loop_exit414, label %polly.loop_header412

polly.loop_header418:                             ; preds = %polly.loop_exit426, %polly.loop_header412
  %polly.indvar421 = phi i64 [ 0, %polly.loop_header412 ], [ %polly.indvar_next422, %polly.loop_exit426 ]
  %208 = add nuw nsw i64 %polly.indvar421, %203
  %polly.access.mul.Packed_MemRef_call2307 = mul nuw nsw i64 %polly.indvar421, 80
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_header424
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %exitcond980.not = icmp eq i64 %polly.indvar_next422, %204
  br i1 %exitcond980.not, label %polly.loop_header434.preheader, label %polly.loop_header418

polly.loop_header434.preheader:                   ; preds = %polly.loop_exit426
  %209 = mul nsw i64 %polly.indvar415, -20
  %polly.access.mul.call1453 = mul nuw i64 %polly.indvar415, 1200
  %210 = or i64 %207, 1
  %polly.access.mul.call1453.1 = mul nuw nsw i64 %210, 60
  %211 = or i64 %207, 2
  %polly.access.mul.call1453.2 = mul nuw nsw i64 %211, 60
  %212 = or i64 %207, 3
  %polly.access.mul.call1453.3 = mul nuw nsw i64 %212, 60
  %213 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.4 = add i64 %213, 240
  %214 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.5 = add i64 %214, 300
  %215 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.6 = add i64 %215, 360
  %216 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.7 = add i64 %216, 420
  %217 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.8 = add i64 %217, 480
  %218 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.9 = add i64 %218, 540
  %219 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.10 = add i64 %219, 600
  %220 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.11 = add i64 %220, 660
  %221 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.12 = add i64 %221, 720
  %222 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.13 = add i64 %222, 780
  %223 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.14 = add i64 %223, 840
  %224 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.15 = add i64 %224, 900
  %225 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.16 = add i64 %225, 960
  %226 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.17 = add i64 %226, 1020
  %227 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.18 = add i64 %227, 1080
  %228 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.19 = add i64 %228, 1140
  %polly.access.mul.call1453.us = mul nuw i64 %polly.indvar415, 1200
  %229 = or i64 %207, 1
  %polly.access.mul.call1453.us.1 = mul nuw nsw i64 %229, 60
  %230 = or i64 %207, 2
  %polly.access.mul.call1453.us.2 = mul nuw nsw i64 %230, 60
  %231 = or i64 %207, 3
  %polly.access.mul.call1453.us.3 = mul nuw nsw i64 %231, 60
  %232 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.us.4 = add i64 %232, 240
  %233 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.us.5 = add i64 %233, 300
  %234 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.us.6 = add i64 %234, 360
  %235 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.us.7 = add i64 %235, 420
  %236 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.us.8 = add i64 %236, 480
  %237 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.us.9 = add i64 %237, 540
  %238 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.us.10 = add i64 %238, 600
  %239 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.us.11 = add i64 %239, 660
  %240 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.us.12 = add i64 %240, 720
  %241 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.us.13 = add i64 %241, 780
  %242 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.us.14 = add i64 %242, 840
  %243 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.us.15 = add i64 %243, 900
  %244 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.us.16 = add i64 %244, 960
  %245 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.us.17 = add i64 %245, 1020
  %246 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.us.18 = add i64 %246, 1080
  %247 = mul i64 %polly.indvar415, 1200
  %polly.access.mul.call1453.us.19 = add i64 %247, 1140
  br label %polly.loop_header434

polly.loop_header424:                             ; preds = %polly.loop_header424, %polly.loop_header418
  %polly.indvar427 = phi i64 [ 0, %polly.loop_header418 ], [ %polly.indvar_next428, %polly.loop_header424 ]
  %248 = add nuw nsw i64 %polly.indvar427, %207
  %polly.access.mul.call2431 = mul nuw nsw i64 %248, 60
  %polly.access.add.call2432 = add nuw nsw i64 %208, %polly.access.mul.call2431
  %polly.access.call2433 = getelementptr double, double* %polly.access.cast.call2730, i64 %polly.access.add.call2432
  %polly.access.call2433.load = load double, double* %polly.access.call2433, align 8, !alias.scope !95, !noalias !100
  %polly.access.add.Packed_MemRef_call2307 = add nuw nsw i64 %polly.indvar427, %polly.access.mul.Packed_MemRef_call2307
  %polly.access.Packed_MemRef_call2307 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307
  store double %polly.access.call2433.load, double* %polly.access.Packed_MemRef_call2307, align 8
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %exitcond979.not = icmp eq i64 %polly.indvar_next428, %indvars.iv977
  br i1 %exitcond979.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header434:                             ; preds = %polly.loop_header434.preheader, %polly.loop_exit473
  %indvar1473 = phi i64 [ 0, %polly.loop_header434.preheader ], [ %indvar.next1474, %polly.loop_exit473 ]
  %indvars.iv985 = phi i64 [ 0, %polly.loop_header434.preheader ], [ %indvars.iv.next986, %polly.loop_exit473 ]
  %polly.indvar437 = phi i64 [ %polly.indvar415, %polly.loop_header434.preheader ], [ %polly.indvar_next438, %polly.loop_exit473 ]
  %249 = mul nuw nsw i64 %indvar1473, 20
  %250 = mul nuw nsw i64 %indvar1473, 12800
  %251 = add i64 %205, %250
  %252 = add i64 %206, %250
  %253 = mul nuw nsw i64 %indvar1473, 20
  %254 = mul nuw nsw i64 %polly.indvar437, 20
  %255 = add nsw i64 %254, %209
  %256 = icmp ugt i64 %255, 20
  %257 = select i1 %256, i64 %255, i64 20
  %258 = add nuw nsw i64 %255, 19
  %polly.loop_guard460.not = icmp ugt i64 %257, %258
  br i1 %polly.loop_guard460.not, label %polly.loop_header440.us, label %polly.loop_header440

polly.loop_header440.us:                          ; preds = %polly.loop_header434, %polly.loop_header440.us
  %polly.indvar443.us = phi i64 [ %polly.indvar_next444.us, %polly.loop_header440.us ], [ 0, %polly.loop_header434 ]
  %259 = add nuw nsw i64 %polly.indvar443.us, %203
  %polly.access.mul.Packed_MemRef_call1305.us = mul nuw nsw i64 %polly.indvar443.us, 80
  %polly.access.add.call1454.us = add nuw nsw i64 %polly.access.mul.call1453.us, %259
  %polly.access.call1455.us = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us
  %polly.access.call1455.load.us = load double, double* %polly.access.call1455.us, align 8, !alias.scope !94, !noalias !101
  %polly.access.Packed_MemRef_call1305.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.mul.Packed_MemRef_call1305.us
  store double %polly.access.call1455.load.us, double* %polly.access.Packed_MemRef_call1305.us, align 8
  %polly.access.add.call1454.us.1 = add nuw nsw i64 %polly.access.mul.call1453.us.1, %259
  %polly.access.call1455.us.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.1
  %polly.access.call1455.load.us.1 = load double, double* %polly.access.call1455.us.1, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1305.us, 1
  %polly.access.Packed_MemRef_call1305.us.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.1
  store double %polly.access.call1455.load.us.1, double* %polly.access.Packed_MemRef_call1305.us.1, align 8
  %polly.access.add.call1454.us.2 = add nuw nsw i64 %polly.access.mul.call1453.us.2, %259
  %polly.access.call1455.us.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.2
  %polly.access.call1455.load.us.2 = load double, double* %polly.access.call1455.us.2, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1305.us, 2
  %polly.access.Packed_MemRef_call1305.us.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.2
  store double %polly.access.call1455.load.us.2, double* %polly.access.Packed_MemRef_call1305.us.2, align 8
  %polly.access.add.call1454.us.3 = add nuw nsw i64 %polly.access.mul.call1453.us.3, %259
  %polly.access.call1455.us.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.3
  %polly.access.call1455.load.us.3 = load double, double* %polly.access.call1455.us.3, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1305.us, 3
  %polly.access.Packed_MemRef_call1305.us.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.3
  store double %polly.access.call1455.load.us.3, double* %polly.access.Packed_MemRef_call1305.us.3, align 8
  %polly.access.add.call1454.us.4 = add nuw nsw i64 %polly.access.mul.call1453.us.4, %259
  %polly.access.call1455.us.4 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.4
  %polly.access.call1455.load.us.4 = load double, double* %polly.access.call1455.us.4, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1305.us, 4
  %polly.access.Packed_MemRef_call1305.us.4 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.4
  store double %polly.access.call1455.load.us.4, double* %polly.access.Packed_MemRef_call1305.us.4, align 8
  %polly.access.add.call1454.us.5 = add nuw nsw i64 %polly.access.mul.call1453.us.5, %259
  %polly.access.call1455.us.5 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.5
  %polly.access.call1455.load.us.5 = load double, double* %polly.access.call1455.us.5, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1305.us, 5
  %polly.access.Packed_MemRef_call1305.us.5 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.5
  store double %polly.access.call1455.load.us.5, double* %polly.access.Packed_MemRef_call1305.us.5, align 8
  %polly.access.add.call1454.us.6 = add nuw nsw i64 %polly.access.mul.call1453.us.6, %259
  %polly.access.call1455.us.6 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.6
  %polly.access.call1455.load.us.6 = load double, double* %polly.access.call1455.us.6, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1305.us, 6
  %polly.access.Packed_MemRef_call1305.us.6 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.6
  store double %polly.access.call1455.load.us.6, double* %polly.access.Packed_MemRef_call1305.us.6, align 8
  %polly.access.add.call1454.us.7 = add nuw nsw i64 %polly.access.mul.call1453.us.7, %259
  %polly.access.call1455.us.7 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.7
  %polly.access.call1455.load.us.7 = load double, double* %polly.access.call1455.us.7, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1305.us, 7
  %polly.access.Packed_MemRef_call1305.us.7 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.7
  store double %polly.access.call1455.load.us.7, double* %polly.access.Packed_MemRef_call1305.us.7, align 8
  %polly.access.add.call1454.us.8 = add nuw nsw i64 %polly.access.mul.call1453.us.8, %259
  %polly.access.call1455.us.8 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.8
  %polly.access.call1455.load.us.8 = load double, double* %polly.access.call1455.us.8, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.us.8 = or i64 %polly.access.mul.Packed_MemRef_call1305.us, 8
  %polly.access.Packed_MemRef_call1305.us.8 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.8
  store double %polly.access.call1455.load.us.8, double* %polly.access.Packed_MemRef_call1305.us.8, align 8
  %polly.access.add.call1454.us.9 = add nuw nsw i64 %polly.access.mul.call1453.us.9, %259
  %polly.access.call1455.us.9 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.9
  %polly.access.call1455.load.us.9 = load double, double* %polly.access.call1455.us.9, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.us.9 = or i64 %polly.access.mul.Packed_MemRef_call1305.us, 9
  %polly.access.Packed_MemRef_call1305.us.9 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.9
  store double %polly.access.call1455.load.us.9, double* %polly.access.Packed_MemRef_call1305.us.9, align 8
  %polly.access.add.call1454.us.10 = add nuw nsw i64 %polly.access.mul.call1453.us.10, %259
  %polly.access.call1455.us.10 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.10
  %polly.access.call1455.load.us.10 = load double, double* %polly.access.call1455.us.10, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.us.10 = or i64 %polly.access.mul.Packed_MemRef_call1305.us, 10
  %polly.access.Packed_MemRef_call1305.us.10 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.10
  store double %polly.access.call1455.load.us.10, double* %polly.access.Packed_MemRef_call1305.us.10, align 8
  %polly.access.add.call1454.us.11 = add nuw nsw i64 %polly.access.mul.call1453.us.11, %259
  %polly.access.call1455.us.11 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.11
  %polly.access.call1455.load.us.11 = load double, double* %polly.access.call1455.us.11, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.us.11 = or i64 %polly.access.mul.Packed_MemRef_call1305.us, 11
  %polly.access.Packed_MemRef_call1305.us.11 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.11
  store double %polly.access.call1455.load.us.11, double* %polly.access.Packed_MemRef_call1305.us.11, align 8
  %polly.access.add.call1454.us.12 = add nuw nsw i64 %polly.access.mul.call1453.us.12, %259
  %polly.access.call1455.us.12 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.12
  %polly.access.call1455.load.us.12 = load double, double* %polly.access.call1455.us.12, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.us.12 = or i64 %polly.access.mul.Packed_MemRef_call1305.us, 12
  %polly.access.Packed_MemRef_call1305.us.12 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.12
  store double %polly.access.call1455.load.us.12, double* %polly.access.Packed_MemRef_call1305.us.12, align 8
  %polly.access.add.call1454.us.13 = add nuw nsw i64 %polly.access.mul.call1453.us.13, %259
  %polly.access.call1455.us.13 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.13
  %polly.access.call1455.load.us.13 = load double, double* %polly.access.call1455.us.13, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.us.13 = or i64 %polly.access.mul.Packed_MemRef_call1305.us, 13
  %polly.access.Packed_MemRef_call1305.us.13 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.13
  store double %polly.access.call1455.load.us.13, double* %polly.access.Packed_MemRef_call1305.us.13, align 8
  %polly.access.add.call1454.us.14 = add nuw nsw i64 %polly.access.mul.call1453.us.14, %259
  %polly.access.call1455.us.14 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.14
  %polly.access.call1455.load.us.14 = load double, double* %polly.access.call1455.us.14, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.us.14 = or i64 %polly.access.mul.Packed_MemRef_call1305.us, 14
  %polly.access.Packed_MemRef_call1305.us.14 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.14
  store double %polly.access.call1455.load.us.14, double* %polly.access.Packed_MemRef_call1305.us.14, align 8
  %polly.access.add.call1454.us.15 = add nuw nsw i64 %polly.access.mul.call1453.us.15, %259
  %polly.access.call1455.us.15 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.15
  %polly.access.call1455.load.us.15 = load double, double* %polly.access.call1455.us.15, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.us.15 = or i64 %polly.access.mul.Packed_MemRef_call1305.us, 15
  %polly.access.Packed_MemRef_call1305.us.15 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.15
  store double %polly.access.call1455.load.us.15, double* %polly.access.Packed_MemRef_call1305.us.15, align 8
  %polly.access.add.call1454.us.16 = add nuw nsw i64 %polly.access.mul.call1453.us.16, %259
  %polly.access.call1455.us.16 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.16
  %polly.access.call1455.load.us.16 = load double, double* %polly.access.call1455.us.16, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.us.16 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1305.us, 16
  %polly.access.Packed_MemRef_call1305.us.16 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.16
  store double %polly.access.call1455.load.us.16, double* %polly.access.Packed_MemRef_call1305.us.16, align 8
  %polly.access.add.call1454.us.17 = add nuw nsw i64 %polly.access.mul.call1453.us.17, %259
  %polly.access.call1455.us.17 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.17
  %polly.access.call1455.load.us.17 = load double, double* %polly.access.call1455.us.17, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.us.17 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1305.us, 17
  %polly.access.Packed_MemRef_call1305.us.17 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.17
  store double %polly.access.call1455.load.us.17, double* %polly.access.Packed_MemRef_call1305.us.17, align 8
  %polly.access.add.call1454.us.18 = add nuw nsw i64 %polly.access.mul.call1453.us.18, %259
  %polly.access.call1455.us.18 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.18
  %polly.access.call1455.load.us.18 = load double, double* %polly.access.call1455.us.18, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.us.18 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1305.us, 18
  %polly.access.Packed_MemRef_call1305.us.18 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.18
  store double %polly.access.call1455.load.us.18, double* %polly.access.Packed_MemRef_call1305.us.18, align 8
  %polly.access.add.call1454.us.19 = add nuw nsw i64 %polly.access.mul.call1453.us.19, %259
  %polly.access.call1455.us.19 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.19
  %polly.access.call1455.load.us.19 = load double, double* %polly.access.call1455.us.19, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.us.19 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1305.us, 19
  %polly.access.Packed_MemRef_call1305.us.19 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.19
  store double %polly.access.call1455.load.us.19, double* %polly.access.Packed_MemRef_call1305.us.19, align 8
  %polly.indvar_next444.us = add nuw nsw i64 %polly.indvar443.us, 1
  %exitcond984.not = icmp eq i64 %polly.indvar_next444.us, %204
  br i1 %exitcond984.not, label %polly.loop_header471.preheader, label %polly.loop_header440.us

polly.loop_header471.preheader:                   ; preds = %polly.loop_exit459, %polly.loop_header440.us
  br label %polly.loop_header471

polly.loop_exit473:                               ; preds = %polly.loop_exit479
  %polly.indvar_next438 = add nuw nsw i64 %polly.indvar437, 1
  %indvars.iv.next986 = add nuw nsw i64 %indvars.iv985, 20
  %exitcond993.not = icmp eq i64 %polly.indvar_next438, 4
  %indvar.next1474 = add i64 %indvar1473, 1
  br i1 %exitcond993.not, label %polly.loop_exit436, label %polly.loop_header434

polly.loop_header440:                             ; preds = %polly.loop_header434, %polly.loop_exit459
  %polly.indvar443 = phi i64 [ %polly.indvar_next444, %polly.loop_exit459 ], [ 0, %polly.loop_header434 ]
  %260 = add nuw nsw i64 %polly.indvar443, %203
  %polly.access.mul.Packed_MemRef_call1305 = mul nuw nsw i64 %polly.indvar443, 80
  %polly.access.add.call1454 = add nuw nsw i64 %polly.access.mul.call1453, %260
  %polly.access.call1455 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454
  %polly.access.call1455.load = load double, double* %polly.access.call1455, align 8, !alias.scope !94, !noalias !101
  %polly.access.Packed_MemRef_call1305 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.mul.Packed_MemRef_call1305
  store double %polly.access.call1455.load, double* %polly.access.Packed_MemRef_call1305, align 8
  %polly.access.add.call1454.1 = add nuw nsw i64 %polly.access.mul.call1453.1, %260
  %polly.access.call1455.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.1
  %polly.access.call1455.load.1 = load double, double* %polly.access.call1455.1, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.1 = or i64 %polly.access.mul.Packed_MemRef_call1305, 1
  %polly.access.Packed_MemRef_call1305.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.1
  store double %polly.access.call1455.load.1, double* %polly.access.Packed_MemRef_call1305.1, align 8
  %polly.access.add.call1454.2 = add nuw nsw i64 %polly.access.mul.call1453.2, %260
  %polly.access.call1455.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.2
  %polly.access.call1455.load.2 = load double, double* %polly.access.call1455.2, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.2 = or i64 %polly.access.mul.Packed_MemRef_call1305, 2
  %polly.access.Packed_MemRef_call1305.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.2
  store double %polly.access.call1455.load.2, double* %polly.access.Packed_MemRef_call1305.2, align 8
  %polly.access.add.call1454.3 = add nuw nsw i64 %polly.access.mul.call1453.3, %260
  %polly.access.call1455.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.3
  %polly.access.call1455.load.3 = load double, double* %polly.access.call1455.3, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.3 = or i64 %polly.access.mul.Packed_MemRef_call1305, 3
  %polly.access.Packed_MemRef_call1305.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.3
  store double %polly.access.call1455.load.3, double* %polly.access.Packed_MemRef_call1305.3, align 8
  %polly.access.add.call1454.4 = add nuw nsw i64 %polly.access.mul.call1453.4, %260
  %polly.access.call1455.4 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.4
  %polly.access.call1455.load.4 = load double, double* %polly.access.call1455.4, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.4 = or i64 %polly.access.mul.Packed_MemRef_call1305, 4
  %polly.access.Packed_MemRef_call1305.4 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.4
  store double %polly.access.call1455.load.4, double* %polly.access.Packed_MemRef_call1305.4, align 8
  %polly.access.add.call1454.5 = add nuw nsw i64 %polly.access.mul.call1453.5, %260
  %polly.access.call1455.5 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.5
  %polly.access.call1455.load.5 = load double, double* %polly.access.call1455.5, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.5 = or i64 %polly.access.mul.Packed_MemRef_call1305, 5
  %polly.access.Packed_MemRef_call1305.5 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.5
  store double %polly.access.call1455.load.5, double* %polly.access.Packed_MemRef_call1305.5, align 8
  %polly.access.add.call1454.6 = add nuw nsw i64 %polly.access.mul.call1453.6, %260
  %polly.access.call1455.6 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.6
  %polly.access.call1455.load.6 = load double, double* %polly.access.call1455.6, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.6 = or i64 %polly.access.mul.Packed_MemRef_call1305, 6
  %polly.access.Packed_MemRef_call1305.6 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.6
  store double %polly.access.call1455.load.6, double* %polly.access.Packed_MemRef_call1305.6, align 8
  %polly.access.add.call1454.7 = add nuw nsw i64 %polly.access.mul.call1453.7, %260
  %polly.access.call1455.7 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.7
  %polly.access.call1455.load.7 = load double, double* %polly.access.call1455.7, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.7 = or i64 %polly.access.mul.Packed_MemRef_call1305, 7
  %polly.access.Packed_MemRef_call1305.7 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.7
  store double %polly.access.call1455.load.7, double* %polly.access.Packed_MemRef_call1305.7, align 8
  %polly.access.add.call1454.8 = add nuw nsw i64 %polly.access.mul.call1453.8, %260
  %polly.access.call1455.8 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.8
  %polly.access.call1455.load.8 = load double, double* %polly.access.call1455.8, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.8 = or i64 %polly.access.mul.Packed_MemRef_call1305, 8
  %polly.access.Packed_MemRef_call1305.8 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.8
  store double %polly.access.call1455.load.8, double* %polly.access.Packed_MemRef_call1305.8, align 8
  %polly.access.add.call1454.9 = add nuw nsw i64 %polly.access.mul.call1453.9, %260
  %polly.access.call1455.9 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.9
  %polly.access.call1455.load.9 = load double, double* %polly.access.call1455.9, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.9 = or i64 %polly.access.mul.Packed_MemRef_call1305, 9
  %polly.access.Packed_MemRef_call1305.9 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.9
  store double %polly.access.call1455.load.9, double* %polly.access.Packed_MemRef_call1305.9, align 8
  %polly.access.add.call1454.10 = add nuw nsw i64 %polly.access.mul.call1453.10, %260
  %polly.access.call1455.10 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.10
  %polly.access.call1455.load.10 = load double, double* %polly.access.call1455.10, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.10 = or i64 %polly.access.mul.Packed_MemRef_call1305, 10
  %polly.access.Packed_MemRef_call1305.10 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.10
  store double %polly.access.call1455.load.10, double* %polly.access.Packed_MemRef_call1305.10, align 8
  %polly.access.add.call1454.11 = add nuw nsw i64 %polly.access.mul.call1453.11, %260
  %polly.access.call1455.11 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.11
  %polly.access.call1455.load.11 = load double, double* %polly.access.call1455.11, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.11 = or i64 %polly.access.mul.Packed_MemRef_call1305, 11
  %polly.access.Packed_MemRef_call1305.11 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.11
  store double %polly.access.call1455.load.11, double* %polly.access.Packed_MemRef_call1305.11, align 8
  %polly.access.add.call1454.12 = add nuw nsw i64 %polly.access.mul.call1453.12, %260
  %polly.access.call1455.12 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.12
  %polly.access.call1455.load.12 = load double, double* %polly.access.call1455.12, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.12 = or i64 %polly.access.mul.Packed_MemRef_call1305, 12
  %polly.access.Packed_MemRef_call1305.12 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.12
  store double %polly.access.call1455.load.12, double* %polly.access.Packed_MemRef_call1305.12, align 8
  %polly.access.add.call1454.13 = add nuw nsw i64 %polly.access.mul.call1453.13, %260
  %polly.access.call1455.13 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.13
  %polly.access.call1455.load.13 = load double, double* %polly.access.call1455.13, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.13 = or i64 %polly.access.mul.Packed_MemRef_call1305, 13
  %polly.access.Packed_MemRef_call1305.13 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.13
  store double %polly.access.call1455.load.13, double* %polly.access.Packed_MemRef_call1305.13, align 8
  %polly.access.add.call1454.14 = add nuw nsw i64 %polly.access.mul.call1453.14, %260
  %polly.access.call1455.14 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.14
  %polly.access.call1455.load.14 = load double, double* %polly.access.call1455.14, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.14 = or i64 %polly.access.mul.Packed_MemRef_call1305, 14
  %polly.access.Packed_MemRef_call1305.14 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.14
  store double %polly.access.call1455.load.14, double* %polly.access.Packed_MemRef_call1305.14, align 8
  %polly.access.add.call1454.15 = add nuw nsw i64 %polly.access.mul.call1453.15, %260
  %polly.access.call1455.15 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.15
  %polly.access.call1455.load.15 = load double, double* %polly.access.call1455.15, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.15 = or i64 %polly.access.mul.Packed_MemRef_call1305, 15
  %polly.access.Packed_MemRef_call1305.15 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.15
  store double %polly.access.call1455.load.15, double* %polly.access.Packed_MemRef_call1305.15, align 8
  %polly.access.add.call1454.16 = add nuw nsw i64 %polly.access.mul.call1453.16, %260
  %polly.access.call1455.16 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.16
  %polly.access.call1455.load.16 = load double, double* %polly.access.call1455.16, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.16 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1305, 16
  %polly.access.Packed_MemRef_call1305.16 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.16
  store double %polly.access.call1455.load.16, double* %polly.access.Packed_MemRef_call1305.16, align 8
  %polly.access.add.call1454.17 = add nuw nsw i64 %polly.access.mul.call1453.17, %260
  %polly.access.call1455.17 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.17
  %polly.access.call1455.load.17 = load double, double* %polly.access.call1455.17, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.17 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1305, 17
  %polly.access.Packed_MemRef_call1305.17 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.17
  store double %polly.access.call1455.load.17, double* %polly.access.Packed_MemRef_call1305.17, align 8
  %polly.access.add.call1454.18 = add nuw nsw i64 %polly.access.mul.call1453.18, %260
  %polly.access.call1455.18 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.18
  %polly.access.call1455.load.18 = load double, double* %polly.access.call1455.18, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.18 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1305, 18
  %polly.access.Packed_MemRef_call1305.18 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.18
  store double %polly.access.call1455.load.18, double* %polly.access.Packed_MemRef_call1305.18, align 8
  %polly.access.add.call1454.19 = add nuw nsw i64 %polly.access.mul.call1453.19, %260
  %polly.access.call1455.19 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.19
  %polly.access.call1455.load.19 = load double, double* %polly.access.call1455.19, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305.19 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1305, 19
  %polly.access.Packed_MemRef_call1305.19 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.19
  store double %polly.access.call1455.load.19, double* %polly.access.Packed_MemRef_call1305.19, align 8
  br label %polly.loop_header457

polly.loop_exit459:                               ; preds = %polly.loop_header457
  %polly.indvar_next444 = add nuw nsw i64 %polly.indvar443, 1
  %exitcond982.not = icmp eq i64 %polly.indvar_next444, %204
  br i1 %exitcond982.not, label %polly.loop_header471.preheader, label %polly.loop_header440

polly.loop_header457:                             ; preds = %polly.loop_header440, %polly.loop_header457
  %polly.indvar461 = phi i64 [ %polly.indvar_next462, %polly.loop_header457 ], [ %257, %polly.loop_header440 ]
  %261 = add nuw nsw i64 %polly.indvar461, %207
  %polly.access.mul.call1465 = mul nuw nsw i64 %261, 60
  %polly.access.add.call1466 = add nuw nsw i64 %polly.access.mul.call1465, %260
  %polly.access.call1467 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1466
  %polly.access.call1467.load = load double, double* %polly.access.call1467, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1305469 = add nuw nsw i64 %polly.indvar461, %polly.access.mul.Packed_MemRef_call1305
  %polly.access.Packed_MemRef_call1305470 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305469
  store double %polly.access.call1467.load, double* %polly.access.Packed_MemRef_call1305470, align 8
  %polly.indvar_next462 = add nuw nsw i64 %polly.indvar461, 1
  %polly.loop_cond463.not.not = icmp ult i64 %polly.indvar461, %258
  br i1 %polly.loop_cond463.not.not, label %polly.loop_header457, label %polly.loop_exit459

polly.loop_header471:                             ; preds = %polly.loop_header471.preheader, %polly.loop_exit479
  %polly.indvar474 = phi i64 [ %polly.indvar_next475, %polly.loop_exit479 ], [ 0, %polly.loop_header471.preheader ]
  %262 = mul i64 %polly.indvar474, 640
  %scevgep1479 = getelementptr i8, i8* %malloccall304, i64 %262
  %263 = or i64 %262, 8
  %scevgep1480 = getelementptr i8, i8* %malloccall304, i64 %263
  %polly.access.mul.Packed_MemRef_call1305489 = mul nuw nsw i64 %polly.indvar474, 80
  br label %polly.loop_header477

polly.loop_exit479:                               ; preds = %polly.loop_exit485
  %polly.indvar_next475 = add nuw nsw i64 %polly.indvar474, 1
  %exitcond992.not = icmp eq i64 %polly.indvar_next475, %204
  br i1 %exitcond992.not, label %polly.loop_exit473, label %polly.loop_header471

polly.loop_header477:                             ; preds = %polly.loop_exit485, %polly.loop_header471
  %indvars.iv987 = phi i64 [ %indvars.iv.next988, %polly.loop_exit485 ], [ %indvars.iv985, %polly.loop_header471 ]
  %polly.indvar480 = phi i64 [ %polly.indvar_next481, %polly.loop_exit485 ], [ 0, %polly.loop_header471 ]
  %264 = add i64 %249, %polly.indvar480
  %smin1489 = call i64 @llvm.smin.i64(i64 %264, i64 19)
  %265 = add nuw nsw i64 %smin1489, 1
  %266 = mul nuw nsw i64 %polly.indvar480, 640
  %267 = add i64 %253, %polly.indvar480
  %smin1477 = call i64 @llvm.smin.i64(i64 %267, i64 19)
  %268 = shl nuw nsw i64 %smin1477, 3
  %smin989 = call i64 @llvm.smin.i64(i64 %indvars.iv987, i64 19)
  %269 = add nuw nsw i64 %polly.indvar480, %255
  %270 = add nuw nsw i64 %polly.indvar480, %254
  %polly.access.add.Packed_MemRef_call2307494 = add nuw nsw i64 %269, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call2307495 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307494
  %_p_scalar_496 = load double, double* %polly.access.Packed_MemRef_call2307495, align 8
  %polly.access.Packed_MemRef_call1305503 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call2307494
  %_p_scalar_504 = load double, double* %polly.access.Packed_MemRef_call1305503, align 8
  %271 = mul nuw nsw i64 %270, 640
  %min.iters.check1490 = icmp ult i64 %smin1489, 3
  br i1 %min.iters.check1490, label %polly.loop_header483.preheader, label %vector.memcheck1472

vector.memcheck1472:                              ; preds = %polly.loop_header477
  %scevgep1481 = getelementptr i8, i8* %scevgep1480, i64 %268
  %272 = add i64 %252, %266
  %scevgep1476 = getelementptr i8, i8* %call, i64 %272
  %scevgep1478 = getelementptr i8, i8* %scevgep1476, i64 %268
  %273 = add i64 %251, %266
  %scevgep1475 = getelementptr i8, i8* %call, i64 %273
  %bound01482 = icmp ult i8* %scevgep1475, %scevgep1481
  %bound11483 = icmp ult i8* %scevgep1479, %scevgep1478
  %found.conflict1484 = and i1 %bound01482, %bound11483
  br i1 %found.conflict1484, label %polly.loop_header483.preheader, label %vector.ph1491

vector.ph1491:                                    ; preds = %vector.memcheck1472
  %n.vec1493 = and i64 %265, -4
  %broadcast.splatinsert1499 = insertelement <4 x double> poison, double %_p_scalar_496, i32 0
  %broadcast.splat1500 = shufflevector <4 x double> %broadcast.splatinsert1499, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1502 = insertelement <4 x double> poison, double %_p_scalar_504, i32 0
  %broadcast.splat1503 = shufflevector <4 x double> %broadcast.splatinsert1502, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1488

vector.body1488:                                  ; preds = %vector.body1488, %vector.ph1491
  %index1494 = phi i64 [ 0, %vector.ph1491 ], [ %index.next1495, %vector.body1488 ]
  %274 = add nuw nsw i64 %index1494, %207
  %275 = add nuw nsw i64 %index1494, %polly.access.mul.Packed_MemRef_call1305489
  %276 = getelementptr double, double* %Packed_MemRef_call1305, i64 %275
  %277 = bitcast double* %276 to <4 x double>*
  %wide.load1498 = load <4 x double>, <4 x double>* %277, align 8, !alias.scope !102
  %278 = fmul fast <4 x double> %broadcast.splat1500, %wide.load1498
  %279 = getelementptr double, double* %Packed_MemRef_call2307, i64 %275
  %280 = bitcast double* %279 to <4 x double>*
  %wide.load1501 = load <4 x double>, <4 x double>* %280, align 8
  %281 = fmul fast <4 x double> %broadcast.splat1503, %wide.load1501
  %282 = shl i64 %274, 3
  %283 = add nuw nsw i64 %282, %271
  %284 = getelementptr i8, i8* %call, i64 %283
  %285 = bitcast i8* %284 to <4 x double>*
  %wide.load1504 = load <4 x double>, <4 x double>* %285, align 8, !alias.scope !105, !noalias !107
  %286 = fadd fast <4 x double> %281, %278
  %287 = fmul fast <4 x double> %286, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %288 = fadd fast <4 x double> %287, %wide.load1504
  %289 = bitcast i8* %284 to <4 x double>*
  store <4 x double> %288, <4 x double>* %289, align 8, !alias.scope !105, !noalias !107
  %index.next1495 = add i64 %index1494, 4
  %290 = icmp eq i64 %index.next1495, %n.vec1493
  br i1 %290, label %middle.block1486, label %vector.body1488, !llvm.loop !108

middle.block1486:                                 ; preds = %vector.body1488
  %cmp.n1497 = icmp eq i64 %265, %n.vec1493
  br i1 %cmp.n1497, label %polly.loop_exit485, label %polly.loop_header483.preheader

polly.loop_header483.preheader:                   ; preds = %vector.memcheck1472, %polly.loop_header477, %middle.block1486
  %polly.indvar486.ph = phi i64 [ 0, %vector.memcheck1472 ], [ 0, %polly.loop_header477 ], [ %n.vec1493, %middle.block1486 ]
  br label %polly.loop_header483

polly.loop_exit485:                               ; preds = %polly.loop_header483, %middle.block1486
  %polly.indvar_next481 = add nuw nsw i64 %polly.indvar480, 1
  %indvars.iv.next988 = add nuw nsw i64 %indvars.iv987, 1
  %exitcond991.not = icmp eq i64 %polly.indvar_next481, 20
  br i1 %exitcond991.not, label %polly.loop_exit479, label %polly.loop_header477

polly.loop_header483:                             ; preds = %polly.loop_header483.preheader, %polly.loop_header483
  %polly.indvar486 = phi i64 [ %polly.indvar_next487, %polly.loop_header483 ], [ %polly.indvar486.ph, %polly.loop_header483.preheader ]
  %291 = add nuw nsw i64 %polly.indvar486, %207
  %polly.access.add.Packed_MemRef_call1305490 = add nuw nsw i64 %polly.indvar486, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call1305491 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305490
  %_p_scalar_492 = load double, double* %polly.access.Packed_MemRef_call1305491, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_496, %_p_scalar_492
  %polly.access.Packed_MemRef_call2307499 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call1305490
  %_p_scalar_500 = load double, double* %polly.access.Packed_MemRef_call2307499, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_504, %_p_scalar_500
  %292 = shl i64 %291, 3
  %293 = add nuw nsw i64 %292, %271
  %scevgep505 = getelementptr i8, i8* %call, i64 %293
  %scevgep505506 = bitcast i8* %scevgep505 to double*
  %_p_scalar_507 = load double, double* %scevgep505506, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_507
  store double %p_add42.i79, double* %scevgep505506, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next487 = add nuw nsw i64 %polly.indvar486, 1
  %exitcond990.not = icmp eq i64 %polly.indvar486, %smin989
  br i1 %exitcond990.not, label %polly.loop_exit485, label %polly.loop_header483, !llvm.loop !109

polly.start510:                                   ; preds = %init_array.exit
  %malloccall512 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  %malloccall514 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  br label %polly.loop_header598

polly.exiting511:                                 ; preds = %polly.loop_exit622
  tail call void @free(i8* nonnull %malloccall512)
  tail call void @free(i8* nonnull %malloccall514)
  br label %kernel_syr2k.exit

polly.loop_header598:                             ; preds = %polly.loop_exit606, %polly.start510
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit606 ], [ 0, %polly.start510 ]
  %polly.indvar601 = phi i64 [ %polly.indvar_next602, %polly.loop_exit606 ], [ 1, %polly.start510 ]
  %294 = add i64 %indvar, 1
  %295 = mul nuw nsw i64 %polly.indvar601, 640
  %scevgep610 = getelementptr i8, i8* %call, i64 %295
  %min.iters.check1404 = icmp ult i64 %294, 4
  br i1 %min.iters.check1404, label %polly.loop_header604.preheader, label %vector.ph1405

vector.ph1405:                                    ; preds = %polly.loop_header598
  %n.vec1407 = and i64 %294, -4
  br label %vector.body1403

vector.body1403:                                  ; preds = %vector.body1403, %vector.ph1405
  %index1408 = phi i64 [ 0, %vector.ph1405 ], [ %index.next1409, %vector.body1403 ]
  %296 = shl nuw nsw i64 %index1408, 3
  %297 = getelementptr i8, i8* %scevgep610, i64 %296
  %298 = bitcast i8* %297 to <4 x double>*
  %wide.load1412 = load <4 x double>, <4 x double>* %298, align 8, !alias.scope !110, !noalias !112
  %299 = fmul fast <4 x double> %wide.load1412, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %300 = bitcast i8* %297 to <4 x double>*
  store <4 x double> %299, <4 x double>* %300, align 8, !alias.scope !110, !noalias !112
  %index.next1409 = add i64 %index1408, 4
  %301 = icmp eq i64 %index.next1409, %n.vec1407
  br i1 %301, label %middle.block1401, label %vector.body1403, !llvm.loop !117

middle.block1401:                                 ; preds = %vector.body1403
  %cmp.n1411 = icmp eq i64 %294, %n.vec1407
  br i1 %cmp.n1411, label %polly.loop_exit606, label %polly.loop_header604.preheader

polly.loop_header604.preheader:                   ; preds = %polly.loop_header598, %middle.block1401
  %polly.indvar607.ph = phi i64 [ 0, %polly.loop_header598 ], [ %n.vec1407, %middle.block1401 ]
  br label %polly.loop_header604

polly.loop_exit606:                               ; preds = %polly.loop_header604, %middle.block1401
  %polly.indvar_next602 = add nuw nsw i64 %polly.indvar601, 1
  %exitcond1016.not = icmp eq i64 %polly.indvar_next602, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1016.not, label %polly.loop_header614.preheader, label %polly.loop_header598

polly.loop_header614.preheader:                   ; preds = %polly.loop_exit606
  %Packed_MemRef_call1513 = bitcast i8* %malloccall512 to double*
  %Packed_MemRef_call2515 = bitcast i8* %malloccall514 to double*
  br label %polly.loop_header614

polly.loop_header604:                             ; preds = %polly.loop_header604.preheader, %polly.loop_header604
  %polly.indvar607 = phi i64 [ %polly.indvar_next608, %polly.loop_header604 ], [ %polly.indvar607.ph, %polly.loop_header604.preheader ]
  %302 = shl nuw nsw i64 %polly.indvar607, 3
  %scevgep611 = getelementptr i8, i8* %scevgep610, i64 %302
  %scevgep611612 = bitcast i8* %scevgep611 to double*
  %_p_scalar_613 = load double, double* %scevgep611612, align 8, !alias.scope !110, !noalias !112
  %p_mul.i = fmul fast double %_p_scalar_613, 1.200000e+00
  store double %p_mul.i, double* %scevgep611612, align 8, !alias.scope !110, !noalias !112
  %polly.indvar_next608 = add nuw nsw i64 %polly.indvar607, 1
  %exitcond1015.not = icmp eq i64 %polly.indvar_next608, %polly.indvar601
  br i1 %exitcond1015.not, label %polly.loop_exit606, label %polly.loop_header604, !llvm.loop !118

polly.loop_header614:                             ; preds = %polly.loop_header614.preheader, %polly.loop_exit622
  %polly.loop_cond619 = phi i1 [ false, %polly.loop_exit622 ], [ true, %polly.loop_header614.preheader ]
  %polly.indvar617 = phi i64 [ 1, %polly.loop_exit622 ], [ 0, %polly.loop_header614.preheader ]
  %303 = mul nuw nsw i64 %polly.indvar617, -50
  %304 = icmp slt i64 %303, -10
  %305 = select i1 %304, i64 %303, i64 -10
  %306 = mul nuw nsw i64 %polly.indvar617, 50
  %307 = add nsw i64 %305, 60
  br label %polly.loop_header620

polly.loop_exit622:                               ; preds = %polly.loop_exit644
  br i1 %polly.loop_cond619, label %polly.loop_header614, label %polly.exiting511

polly.loop_header620:                             ; preds = %polly.loop_exit644, %polly.loop_header614
  %indvars.iv997 = phi i64 [ %indvars.iv.next998, %polly.loop_exit644 ], [ 80, %polly.loop_header614 ]
  %polly.indvar623 = phi i64 [ %polly.indvar_next624, %polly.loop_exit644 ], [ 0, %polly.loop_header614 ]
  %308 = mul nuw nsw i64 %polly.indvar623, 12960
  %309 = or i64 %308, 8
  %310 = mul nuw nsw i64 %polly.indvar623, 20
  br label %polly.loop_header626

polly.loop_exit644:                               ; preds = %polly.loop_exit681
  %polly.indvar_next624 = add nuw nsw i64 %polly.indvar623, 1
  %indvars.iv.next998 = add nsw i64 %indvars.iv997, -20
  %exitcond1014.not = icmp eq i64 %polly.indvar_next624, 4
  br i1 %exitcond1014.not, label %polly.loop_exit622, label %polly.loop_header620

polly.loop_header626:                             ; preds = %polly.loop_exit634, %polly.loop_header620
  %polly.indvar629 = phi i64 [ 0, %polly.loop_header620 ], [ %polly.indvar_next630, %polly.loop_exit634 ]
  %311 = add nuw nsw i64 %polly.indvar629, %306
  %polly.access.mul.Packed_MemRef_call2515 = mul nuw nsw i64 %polly.indvar629, 80
  br label %polly.loop_header632

polly.loop_exit634:                               ; preds = %polly.loop_header632
  %polly.indvar_next630 = add nuw nsw i64 %polly.indvar629, 1
  %exitcond1000.not = icmp eq i64 %polly.indvar_next630, %307
  br i1 %exitcond1000.not, label %polly.loop_header642.preheader, label %polly.loop_header626

polly.loop_header642.preheader:                   ; preds = %polly.loop_exit634
  %312 = mul nsw i64 %polly.indvar623, -20
  %polly.access.mul.call1661 = mul nuw i64 %polly.indvar623, 1200
  %313 = or i64 %310, 1
  %polly.access.mul.call1661.1 = mul nuw nsw i64 %313, 60
  %314 = or i64 %310, 2
  %polly.access.mul.call1661.2 = mul nuw nsw i64 %314, 60
  %315 = or i64 %310, 3
  %polly.access.mul.call1661.3 = mul nuw nsw i64 %315, 60
  %316 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.4 = add i64 %316, 240
  %317 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.5 = add i64 %317, 300
  %318 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.6 = add i64 %318, 360
  %319 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.7 = add i64 %319, 420
  %320 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.8 = add i64 %320, 480
  %321 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.9 = add i64 %321, 540
  %322 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.10 = add i64 %322, 600
  %323 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.11 = add i64 %323, 660
  %324 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.12 = add i64 %324, 720
  %325 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.13 = add i64 %325, 780
  %326 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.14 = add i64 %326, 840
  %327 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.15 = add i64 %327, 900
  %328 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.16 = add i64 %328, 960
  %329 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.17 = add i64 %329, 1020
  %330 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.18 = add i64 %330, 1080
  %331 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.19 = add i64 %331, 1140
  %polly.access.mul.call1661.us = mul nuw i64 %polly.indvar623, 1200
  %332 = or i64 %310, 1
  %polly.access.mul.call1661.us.1 = mul nuw nsw i64 %332, 60
  %333 = or i64 %310, 2
  %polly.access.mul.call1661.us.2 = mul nuw nsw i64 %333, 60
  %334 = or i64 %310, 3
  %polly.access.mul.call1661.us.3 = mul nuw nsw i64 %334, 60
  %335 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.us.4 = add i64 %335, 240
  %336 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.us.5 = add i64 %336, 300
  %337 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.us.6 = add i64 %337, 360
  %338 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.us.7 = add i64 %338, 420
  %339 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.us.8 = add i64 %339, 480
  %340 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.us.9 = add i64 %340, 540
  %341 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.us.10 = add i64 %341, 600
  %342 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.us.11 = add i64 %342, 660
  %343 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.us.12 = add i64 %343, 720
  %344 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.us.13 = add i64 %344, 780
  %345 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.us.14 = add i64 %345, 840
  %346 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.us.15 = add i64 %346, 900
  %347 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.us.16 = add i64 %347, 960
  %348 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.us.17 = add i64 %348, 1020
  %349 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.us.18 = add i64 %349, 1080
  %350 = mul i64 %polly.indvar623, 1200
  %polly.access.mul.call1661.us.19 = add i64 %350, 1140
  br label %polly.loop_header642

polly.loop_header632:                             ; preds = %polly.loop_header632, %polly.loop_header626
  %polly.indvar635 = phi i64 [ 0, %polly.loop_header626 ], [ %polly.indvar_next636, %polly.loop_header632 ]
  %351 = add nuw nsw i64 %polly.indvar635, %310
  %polly.access.mul.call2639 = mul nuw nsw i64 %351, 60
  %polly.access.add.call2640 = add nuw nsw i64 %311, %polly.access.mul.call2639
  %polly.access.call2641 = getelementptr double, double* %polly.access.cast.call2730, i64 %polly.access.add.call2640
  %polly.access.call2641.load = load double, double* %polly.access.call2641, align 8, !alias.scope !114, !noalias !119
  %polly.access.add.Packed_MemRef_call2515 = add nuw nsw i64 %polly.indvar635, %polly.access.mul.Packed_MemRef_call2515
  %polly.access.Packed_MemRef_call2515 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515
  store double %polly.access.call2641.load, double* %polly.access.Packed_MemRef_call2515, align 8
  %polly.indvar_next636 = add nuw nsw i64 %polly.indvar635, 1
  %exitcond999.not = icmp eq i64 %polly.indvar_next636, %indvars.iv997
  br i1 %exitcond999.not, label %polly.loop_exit634, label %polly.loop_header632

polly.loop_header642:                             ; preds = %polly.loop_header642.preheader, %polly.loop_exit681
  %indvar1414 = phi i64 [ 0, %polly.loop_header642.preheader ], [ %indvar.next1415, %polly.loop_exit681 ]
  %indvars.iv1005 = phi i64 [ 0, %polly.loop_header642.preheader ], [ %indvars.iv.next1006, %polly.loop_exit681 ]
  %polly.indvar645 = phi i64 [ %polly.indvar623, %polly.loop_header642.preheader ], [ %polly.indvar_next646, %polly.loop_exit681 ]
  %352 = mul nuw nsw i64 %indvar1414, 20
  %353 = mul nuw nsw i64 %indvar1414, 12800
  %354 = add i64 %308, %353
  %355 = add i64 %309, %353
  %356 = mul nuw nsw i64 %indvar1414, 20
  %357 = mul nuw nsw i64 %polly.indvar645, 20
  %358 = add nsw i64 %357, %312
  %359 = icmp ugt i64 %358, 20
  %360 = select i1 %359, i64 %358, i64 20
  %361 = add nuw nsw i64 %358, 19
  %polly.loop_guard668.not = icmp ugt i64 %360, %361
  br i1 %polly.loop_guard668.not, label %polly.loop_header648.us, label %polly.loop_header648

polly.loop_header648.us:                          ; preds = %polly.loop_header642, %polly.loop_header648.us
  %polly.indvar651.us = phi i64 [ %polly.indvar_next652.us, %polly.loop_header648.us ], [ 0, %polly.loop_header642 ]
  %362 = add nuw nsw i64 %polly.indvar651.us, %306
  %polly.access.mul.Packed_MemRef_call1513.us = mul nuw nsw i64 %polly.indvar651.us, 80
  %polly.access.add.call1662.us = add nuw nsw i64 %polly.access.mul.call1661.us, %362
  %polly.access.call1663.us = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us
  %polly.access.call1663.load.us = load double, double* %polly.access.call1663.us, align 8, !alias.scope !113, !noalias !120
  %polly.access.Packed_MemRef_call1513.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.mul.Packed_MemRef_call1513.us
  store double %polly.access.call1663.load.us, double* %polly.access.Packed_MemRef_call1513.us, align 8
  %polly.access.add.call1662.us.1 = add nuw nsw i64 %polly.access.mul.call1661.us.1, %362
  %polly.access.call1663.us.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.1
  %polly.access.call1663.load.us.1 = load double, double* %polly.access.call1663.us.1, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1513.us, 1
  %polly.access.Packed_MemRef_call1513.us.1 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.1
  store double %polly.access.call1663.load.us.1, double* %polly.access.Packed_MemRef_call1513.us.1, align 8
  %polly.access.add.call1662.us.2 = add nuw nsw i64 %polly.access.mul.call1661.us.2, %362
  %polly.access.call1663.us.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.2
  %polly.access.call1663.load.us.2 = load double, double* %polly.access.call1663.us.2, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1513.us, 2
  %polly.access.Packed_MemRef_call1513.us.2 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.2
  store double %polly.access.call1663.load.us.2, double* %polly.access.Packed_MemRef_call1513.us.2, align 8
  %polly.access.add.call1662.us.3 = add nuw nsw i64 %polly.access.mul.call1661.us.3, %362
  %polly.access.call1663.us.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.3
  %polly.access.call1663.load.us.3 = load double, double* %polly.access.call1663.us.3, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1513.us, 3
  %polly.access.Packed_MemRef_call1513.us.3 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.3
  store double %polly.access.call1663.load.us.3, double* %polly.access.Packed_MemRef_call1513.us.3, align 8
  %polly.access.add.call1662.us.4 = add nuw nsw i64 %polly.access.mul.call1661.us.4, %362
  %polly.access.call1663.us.4 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.4
  %polly.access.call1663.load.us.4 = load double, double* %polly.access.call1663.us.4, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1513.us, 4
  %polly.access.Packed_MemRef_call1513.us.4 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.4
  store double %polly.access.call1663.load.us.4, double* %polly.access.Packed_MemRef_call1513.us.4, align 8
  %polly.access.add.call1662.us.5 = add nuw nsw i64 %polly.access.mul.call1661.us.5, %362
  %polly.access.call1663.us.5 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.5
  %polly.access.call1663.load.us.5 = load double, double* %polly.access.call1663.us.5, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1513.us, 5
  %polly.access.Packed_MemRef_call1513.us.5 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.5
  store double %polly.access.call1663.load.us.5, double* %polly.access.Packed_MemRef_call1513.us.5, align 8
  %polly.access.add.call1662.us.6 = add nuw nsw i64 %polly.access.mul.call1661.us.6, %362
  %polly.access.call1663.us.6 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.6
  %polly.access.call1663.load.us.6 = load double, double* %polly.access.call1663.us.6, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1513.us, 6
  %polly.access.Packed_MemRef_call1513.us.6 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.6
  store double %polly.access.call1663.load.us.6, double* %polly.access.Packed_MemRef_call1513.us.6, align 8
  %polly.access.add.call1662.us.7 = add nuw nsw i64 %polly.access.mul.call1661.us.7, %362
  %polly.access.call1663.us.7 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.7
  %polly.access.call1663.load.us.7 = load double, double* %polly.access.call1663.us.7, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1513.us, 7
  %polly.access.Packed_MemRef_call1513.us.7 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.7
  store double %polly.access.call1663.load.us.7, double* %polly.access.Packed_MemRef_call1513.us.7, align 8
  %polly.access.add.call1662.us.8 = add nuw nsw i64 %polly.access.mul.call1661.us.8, %362
  %polly.access.call1663.us.8 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.8
  %polly.access.call1663.load.us.8 = load double, double* %polly.access.call1663.us.8, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.us.8 = or i64 %polly.access.mul.Packed_MemRef_call1513.us, 8
  %polly.access.Packed_MemRef_call1513.us.8 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.8
  store double %polly.access.call1663.load.us.8, double* %polly.access.Packed_MemRef_call1513.us.8, align 8
  %polly.access.add.call1662.us.9 = add nuw nsw i64 %polly.access.mul.call1661.us.9, %362
  %polly.access.call1663.us.9 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.9
  %polly.access.call1663.load.us.9 = load double, double* %polly.access.call1663.us.9, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.us.9 = or i64 %polly.access.mul.Packed_MemRef_call1513.us, 9
  %polly.access.Packed_MemRef_call1513.us.9 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.9
  store double %polly.access.call1663.load.us.9, double* %polly.access.Packed_MemRef_call1513.us.9, align 8
  %polly.access.add.call1662.us.10 = add nuw nsw i64 %polly.access.mul.call1661.us.10, %362
  %polly.access.call1663.us.10 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.10
  %polly.access.call1663.load.us.10 = load double, double* %polly.access.call1663.us.10, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.us.10 = or i64 %polly.access.mul.Packed_MemRef_call1513.us, 10
  %polly.access.Packed_MemRef_call1513.us.10 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.10
  store double %polly.access.call1663.load.us.10, double* %polly.access.Packed_MemRef_call1513.us.10, align 8
  %polly.access.add.call1662.us.11 = add nuw nsw i64 %polly.access.mul.call1661.us.11, %362
  %polly.access.call1663.us.11 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.11
  %polly.access.call1663.load.us.11 = load double, double* %polly.access.call1663.us.11, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.us.11 = or i64 %polly.access.mul.Packed_MemRef_call1513.us, 11
  %polly.access.Packed_MemRef_call1513.us.11 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.11
  store double %polly.access.call1663.load.us.11, double* %polly.access.Packed_MemRef_call1513.us.11, align 8
  %polly.access.add.call1662.us.12 = add nuw nsw i64 %polly.access.mul.call1661.us.12, %362
  %polly.access.call1663.us.12 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.12
  %polly.access.call1663.load.us.12 = load double, double* %polly.access.call1663.us.12, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.us.12 = or i64 %polly.access.mul.Packed_MemRef_call1513.us, 12
  %polly.access.Packed_MemRef_call1513.us.12 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.12
  store double %polly.access.call1663.load.us.12, double* %polly.access.Packed_MemRef_call1513.us.12, align 8
  %polly.access.add.call1662.us.13 = add nuw nsw i64 %polly.access.mul.call1661.us.13, %362
  %polly.access.call1663.us.13 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.13
  %polly.access.call1663.load.us.13 = load double, double* %polly.access.call1663.us.13, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.us.13 = or i64 %polly.access.mul.Packed_MemRef_call1513.us, 13
  %polly.access.Packed_MemRef_call1513.us.13 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.13
  store double %polly.access.call1663.load.us.13, double* %polly.access.Packed_MemRef_call1513.us.13, align 8
  %polly.access.add.call1662.us.14 = add nuw nsw i64 %polly.access.mul.call1661.us.14, %362
  %polly.access.call1663.us.14 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.14
  %polly.access.call1663.load.us.14 = load double, double* %polly.access.call1663.us.14, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.us.14 = or i64 %polly.access.mul.Packed_MemRef_call1513.us, 14
  %polly.access.Packed_MemRef_call1513.us.14 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.14
  store double %polly.access.call1663.load.us.14, double* %polly.access.Packed_MemRef_call1513.us.14, align 8
  %polly.access.add.call1662.us.15 = add nuw nsw i64 %polly.access.mul.call1661.us.15, %362
  %polly.access.call1663.us.15 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.15
  %polly.access.call1663.load.us.15 = load double, double* %polly.access.call1663.us.15, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.us.15 = or i64 %polly.access.mul.Packed_MemRef_call1513.us, 15
  %polly.access.Packed_MemRef_call1513.us.15 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.15
  store double %polly.access.call1663.load.us.15, double* %polly.access.Packed_MemRef_call1513.us.15, align 8
  %polly.access.add.call1662.us.16 = add nuw nsw i64 %polly.access.mul.call1661.us.16, %362
  %polly.access.call1663.us.16 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.16
  %polly.access.call1663.load.us.16 = load double, double* %polly.access.call1663.us.16, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.us.16 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1513.us, 16
  %polly.access.Packed_MemRef_call1513.us.16 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.16
  store double %polly.access.call1663.load.us.16, double* %polly.access.Packed_MemRef_call1513.us.16, align 8
  %polly.access.add.call1662.us.17 = add nuw nsw i64 %polly.access.mul.call1661.us.17, %362
  %polly.access.call1663.us.17 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.17
  %polly.access.call1663.load.us.17 = load double, double* %polly.access.call1663.us.17, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.us.17 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1513.us, 17
  %polly.access.Packed_MemRef_call1513.us.17 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.17
  store double %polly.access.call1663.load.us.17, double* %polly.access.Packed_MemRef_call1513.us.17, align 8
  %polly.access.add.call1662.us.18 = add nuw nsw i64 %polly.access.mul.call1661.us.18, %362
  %polly.access.call1663.us.18 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.18
  %polly.access.call1663.load.us.18 = load double, double* %polly.access.call1663.us.18, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.us.18 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1513.us, 18
  %polly.access.Packed_MemRef_call1513.us.18 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.18
  store double %polly.access.call1663.load.us.18, double* %polly.access.Packed_MemRef_call1513.us.18, align 8
  %polly.access.add.call1662.us.19 = add nuw nsw i64 %polly.access.mul.call1661.us.19, %362
  %polly.access.call1663.us.19 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.19
  %polly.access.call1663.load.us.19 = load double, double* %polly.access.call1663.us.19, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.us.19 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1513.us, 19
  %polly.access.Packed_MemRef_call1513.us.19 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.19
  store double %polly.access.call1663.load.us.19, double* %polly.access.Packed_MemRef_call1513.us.19, align 8
  %polly.indvar_next652.us = add nuw nsw i64 %polly.indvar651.us, 1
  %exitcond1004.not = icmp eq i64 %polly.indvar_next652.us, %307
  br i1 %exitcond1004.not, label %polly.loop_header679.preheader, label %polly.loop_header648.us

polly.loop_header679.preheader:                   ; preds = %polly.loop_exit667, %polly.loop_header648.us
  br label %polly.loop_header679

polly.loop_exit681:                               ; preds = %polly.loop_exit687
  %polly.indvar_next646 = add nuw nsw i64 %polly.indvar645, 1
  %indvars.iv.next1006 = add nuw nsw i64 %indvars.iv1005, 20
  %exitcond1013.not = icmp eq i64 %polly.indvar_next646, 4
  %indvar.next1415 = add i64 %indvar1414, 1
  br i1 %exitcond1013.not, label %polly.loop_exit644, label %polly.loop_header642

polly.loop_header648:                             ; preds = %polly.loop_header642, %polly.loop_exit667
  %polly.indvar651 = phi i64 [ %polly.indvar_next652, %polly.loop_exit667 ], [ 0, %polly.loop_header642 ]
  %363 = add nuw nsw i64 %polly.indvar651, %306
  %polly.access.mul.Packed_MemRef_call1513 = mul nuw nsw i64 %polly.indvar651, 80
  %polly.access.add.call1662 = add nuw nsw i64 %polly.access.mul.call1661, %363
  %polly.access.call1663 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662
  %polly.access.call1663.load = load double, double* %polly.access.call1663, align 8, !alias.scope !113, !noalias !120
  %polly.access.Packed_MemRef_call1513 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.mul.Packed_MemRef_call1513
  store double %polly.access.call1663.load, double* %polly.access.Packed_MemRef_call1513, align 8
  %polly.access.add.call1662.1 = add nuw nsw i64 %polly.access.mul.call1661.1, %363
  %polly.access.call1663.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.1
  %polly.access.call1663.load.1 = load double, double* %polly.access.call1663.1, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.1 = or i64 %polly.access.mul.Packed_MemRef_call1513, 1
  %polly.access.Packed_MemRef_call1513.1 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.1
  store double %polly.access.call1663.load.1, double* %polly.access.Packed_MemRef_call1513.1, align 8
  %polly.access.add.call1662.2 = add nuw nsw i64 %polly.access.mul.call1661.2, %363
  %polly.access.call1663.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.2
  %polly.access.call1663.load.2 = load double, double* %polly.access.call1663.2, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.2 = or i64 %polly.access.mul.Packed_MemRef_call1513, 2
  %polly.access.Packed_MemRef_call1513.2 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.2
  store double %polly.access.call1663.load.2, double* %polly.access.Packed_MemRef_call1513.2, align 8
  %polly.access.add.call1662.3 = add nuw nsw i64 %polly.access.mul.call1661.3, %363
  %polly.access.call1663.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.3
  %polly.access.call1663.load.3 = load double, double* %polly.access.call1663.3, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.3 = or i64 %polly.access.mul.Packed_MemRef_call1513, 3
  %polly.access.Packed_MemRef_call1513.3 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.3
  store double %polly.access.call1663.load.3, double* %polly.access.Packed_MemRef_call1513.3, align 8
  %polly.access.add.call1662.4 = add nuw nsw i64 %polly.access.mul.call1661.4, %363
  %polly.access.call1663.4 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.4
  %polly.access.call1663.load.4 = load double, double* %polly.access.call1663.4, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.4 = or i64 %polly.access.mul.Packed_MemRef_call1513, 4
  %polly.access.Packed_MemRef_call1513.4 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.4
  store double %polly.access.call1663.load.4, double* %polly.access.Packed_MemRef_call1513.4, align 8
  %polly.access.add.call1662.5 = add nuw nsw i64 %polly.access.mul.call1661.5, %363
  %polly.access.call1663.5 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.5
  %polly.access.call1663.load.5 = load double, double* %polly.access.call1663.5, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.5 = or i64 %polly.access.mul.Packed_MemRef_call1513, 5
  %polly.access.Packed_MemRef_call1513.5 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.5
  store double %polly.access.call1663.load.5, double* %polly.access.Packed_MemRef_call1513.5, align 8
  %polly.access.add.call1662.6 = add nuw nsw i64 %polly.access.mul.call1661.6, %363
  %polly.access.call1663.6 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.6
  %polly.access.call1663.load.6 = load double, double* %polly.access.call1663.6, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.6 = or i64 %polly.access.mul.Packed_MemRef_call1513, 6
  %polly.access.Packed_MemRef_call1513.6 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.6
  store double %polly.access.call1663.load.6, double* %polly.access.Packed_MemRef_call1513.6, align 8
  %polly.access.add.call1662.7 = add nuw nsw i64 %polly.access.mul.call1661.7, %363
  %polly.access.call1663.7 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.7
  %polly.access.call1663.load.7 = load double, double* %polly.access.call1663.7, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.7 = or i64 %polly.access.mul.Packed_MemRef_call1513, 7
  %polly.access.Packed_MemRef_call1513.7 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.7
  store double %polly.access.call1663.load.7, double* %polly.access.Packed_MemRef_call1513.7, align 8
  %polly.access.add.call1662.8 = add nuw nsw i64 %polly.access.mul.call1661.8, %363
  %polly.access.call1663.8 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.8
  %polly.access.call1663.load.8 = load double, double* %polly.access.call1663.8, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.8 = or i64 %polly.access.mul.Packed_MemRef_call1513, 8
  %polly.access.Packed_MemRef_call1513.8 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.8
  store double %polly.access.call1663.load.8, double* %polly.access.Packed_MemRef_call1513.8, align 8
  %polly.access.add.call1662.9 = add nuw nsw i64 %polly.access.mul.call1661.9, %363
  %polly.access.call1663.9 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.9
  %polly.access.call1663.load.9 = load double, double* %polly.access.call1663.9, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.9 = or i64 %polly.access.mul.Packed_MemRef_call1513, 9
  %polly.access.Packed_MemRef_call1513.9 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.9
  store double %polly.access.call1663.load.9, double* %polly.access.Packed_MemRef_call1513.9, align 8
  %polly.access.add.call1662.10 = add nuw nsw i64 %polly.access.mul.call1661.10, %363
  %polly.access.call1663.10 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.10
  %polly.access.call1663.load.10 = load double, double* %polly.access.call1663.10, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.10 = or i64 %polly.access.mul.Packed_MemRef_call1513, 10
  %polly.access.Packed_MemRef_call1513.10 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.10
  store double %polly.access.call1663.load.10, double* %polly.access.Packed_MemRef_call1513.10, align 8
  %polly.access.add.call1662.11 = add nuw nsw i64 %polly.access.mul.call1661.11, %363
  %polly.access.call1663.11 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.11
  %polly.access.call1663.load.11 = load double, double* %polly.access.call1663.11, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.11 = or i64 %polly.access.mul.Packed_MemRef_call1513, 11
  %polly.access.Packed_MemRef_call1513.11 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.11
  store double %polly.access.call1663.load.11, double* %polly.access.Packed_MemRef_call1513.11, align 8
  %polly.access.add.call1662.12 = add nuw nsw i64 %polly.access.mul.call1661.12, %363
  %polly.access.call1663.12 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.12
  %polly.access.call1663.load.12 = load double, double* %polly.access.call1663.12, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.12 = or i64 %polly.access.mul.Packed_MemRef_call1513, 12
  %polly.access.Packed_MemRef_call1513.12 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.12
  store double %polly.access.call1663.load.12, double* %polly.access.Packed_MemRef_call1513.12, align 8
  %polly.access.add.call1662.13 = add nuw nsw i64 %polly.access.mul.call1661.13, %363
  %polly.access.call1663.13 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.13
  %polly.access.call1663.load.13 = load double, double* %polly.access.call1663.13, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.13 = or i64 %polly.access.mul.Packed_MemRef_call1513, 13
  %polly.access.Packed_MemRef_call1513.13 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.13
  store double %polly.access.call1663.load.13, double* %polly.access.Packed_MemRef_call1513.13, align 8
  %polly.access.add.call1662.14 = add nuw nsw i64 %polly.access.mul.call1661.14, %363
  %polly.access.call1663.14 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.14
  %polly.access.call1663.load.14 = load double, double* %polly.access.call1663.14, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.14 = or i64 %polly.access.mul.Packed_MemRef_call1513, 14
  %polly.access.Packed_MemRef_call1513.14 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.14
  store double %polly.access.call1663.load.14, double* %polly.access.Packed_MemRef_call1513.14, align 8
  %polly.access.add.call1662.15 = add nuw nsw i64 %polly.access.mul.call1661.15, %363
  %polly.access.call1663.15 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.15
  %polly.access.call1663.load.15 = load double, double* %polly.access.call1663.15, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.15 = or i64 %polly.access.mul.Packed_MemRef_call1513, 15
  %polly.access.Packed_MemRef_call1513.15 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.15
  store double %polly.access.call1663.load.15, double* %polly.access.Packed_MemRef_call1513.15, align 8
  %polly.access.add.call1662.16 = add nuw nsw i64 %polly.access.mul.call1661.16, %363
  %polly.access.call1663.16 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.16
  %polly.access.call1663.load.16 = load double, double* %polly.access.call1663.16, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.16 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1513, 16
  %polly.access.Packed_MemRef_call1513.16 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.16
  store double %polly.access.call1663.load.16, double* %polly.access.Packed_MemRef_call1513.16, align 8
  %polly.access.add.call1662.17 = add nuw nsw i64 %polly.access.mul.call1661.17, %363
  %polly.access.call1663.17 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.17
  %polly.access.call1663.load.17 = load double, double* %polly.access.call1663.17, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.17 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1513, 17
  %polly.access.Packed_MemRef_call1513.17 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.17
  store double %polly.access.call1663.load.17, double* %polly.access.Packed_MemRef_call1513.17, align 8
  %polly.access.add.call1662.18 = add nuw nsw i64 %polly.access.mul.call1661.18, %363
  %polly.access.call1663.18 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.18
  %polly.access.call1663.load.18 = load double, double* %polly.access.call1663.18, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.18 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1513, 18
  %polly.access.Packed_MemRef_call1513.18 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.18
  store double %polly.access.call1663.load.18, double* %polly.access.Packed_MemRef_call1513.18, align 8
  %polly.access.add.call1662.19 = add nuw nsw i64 %polly.access.mul.call1661.19, %363
  %polly.access.call1663.19 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.19
  %polly.access.call1663.load.19 = load double, double* %polly.access.call1663.19, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513.19 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1513, 19
  %polly.access.Packed_MemRef_call1513.19 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.19
  store double %polly.access.call1663.load.19, double* %polly.access.Packed_MemRef_call1513.19, align 8
  br label %polly.loop_header665

polly.loop_exit667:                               ; preds = %polly.loop_header665
  %polly.indvar_next652 = add nuw nsw i64 %polly.indvar651, 1
  %exitcond1002.not = icmp eq i64 %polly.indvar_next652, %307
  br i1 %exitcond1002.not, label %polly.loop_header679.preheader, label %polly.loop_header648

polly.loop_header665:                             ; preds = %polly.loop_header648, %polly.loop_header665
  %polly.indvar669 = phi i64 [ %polly.indvar_next670, %polly.loop_header665 ], [ %360, %polly.loop_header648 ]
  %364 = add nuw nsw i64 %polly.indvar669, %310
  %polly.access.mul.call1673 = mul nuw nsw i64 %364, 60
  %polly.access.add.call1674 = add nuw nsw i64 %polly.access.mul.call1673, %363
  %polly.access.call1675 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1674
  %polly.access.call1675.load = load double, double* %polly.access.call1675, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1513677 = add nuw nsw i64 %polly.indvar669, %polly.access.mul.Packed_MemRef_call1513
  %polly.access.Packed_MemRef_call1513678 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513677
  store double %polly.access.call1675.load, double* %polly.access.Packed_MemRef_call1513678, align 8
  %polly.indvar_next670 = add nuw nsw i64 %polly.indvar669, 1
  %polly.loop_cond671.not.not = icmp ult i64 %polly.indvar669, %361
  br i1 %polly.loop_cond671.not.not, label %polly.loop_header665, label %polly.loop_exit667

polly.loop_header679:                             ; preds = %polly.loop_header679.preheader, %polly.loop_exit687
  %polly.indvar682 = phi i64 [ %polly.indvar_next683, %polly.loop_exit687 ], [ 0, %polly.loop_header679.preheader ]
  %365 = mul i64 %polly.indvar682, 640
  %scevgep1420 = getelementptr i8, i8* %malloccall512, i64 %365
  %366 = or i64 %365, 8
  %scevgep1421 = getelementptr i8, i8* %malloccall512, i64 %366
  %polly.access.mul.Packed_MemRef_call1513697 = mul nuw nsw i64 %polly.indvar682, 80
  br label %polly.loop_header685

polly.loop_exit687:                               ; preds = %polly.loop_exit693
  %polly.indvar_next683 = add nuw nsw i64 %polly.indvar682, 1
  %exitcond1012.not = icmp eq i64 %polly.indvar_next683, %307
  br i1 %exitcond1012.not, label %polly.loop_exit681, label %polly.loop_header679

polly.loop_header685:                             ; preds = %polly.loop_exit693, %polly.loop_header679
  %indvars.iv1007 = phi i64 [ %indvars.iv.next1008, %polly.loop_exit693 ], [ %indvars.iv1005, %polly.loop_header679 ]
  %polly.indvar688 = phi i64 [ %polly.indvar_next689, %polly.loop_exit693 ], [ 0, %polly.loop_header679 ]
  %367 = add i64 %352, %polly.indvar688
  %smin1430 = call i64 @llvm.smin.i64(i64 %367, i64 19)
  %368 = add nuw nsw i64 %smin1430, 1
  %369 = mul nuw nsw i64 %polly.indvar688, 640
  %370 = add i64 %356, %polly.indvar688
  %smin1418 = call i64 @llvm.smin.i64(i64 %370, i64 19)
  %371 = shl nuw nsw i64 %smin1418, 3
  %smin1009 = call i64 @llvm.smin.i64(i64 %indvars.iv1007, i64 19)
  %372 = add nuw nsw i64 %polly.indvar688, %358
  %373 = add nuw nsw i64 %polly.indvar688, %357
  %polly.access.add.Packed_MemRef_call2515702 = add nuw nsw i64 %372, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call2515703 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515702
  %_p_scalar_704 = load double, double* %polly.access.Packed_MemRef_call2515703, align 8
  %polly.access.Packed_MemRef_call1513711 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call2515702
  %_p_scalar_712 = load double, double* %polly.access.Packed_MemRef_call1513711, align 8
  %374 = mul nuw nsw i64 %373, 640
  %min.iters.check1431 = icmp ult i64 %smin1430, 3
  br i1 %min.iters.check1431, label %polly.loop_header691.preheader, label %vector.memcheck1413

vector.memcheck1413:                              ; preds = %polly.loop_header685
  %scevgep1422 = getelementptr i8, i8* %scevgep1421, i64 %371
  %375 = add i64 %355, %369
  %scevgep1417 = getelementptr i8, i8* %call, i64 %375
  %scevgep1419 = getelementptr i8, i8* %scevgep1417, i64 %371
  %376 = add i64 %354, %369
  %scevgep1416 = getelementptr i8, i8* %call, i64 %376
  %bound01423 = icmp ult i8* %scevgep1416, %scevgep1422
  %bound11424 = icmp ult i8* %scevgep1420, %scevgep1419
  %found.conflict1425 = and i1 %bound01423, %bound11424
  br i1 %found.conflict1425, label %polly.loop_header691.preheader, label %vector.ph1432

vector.ph1432:                                    ; preds = %vector.memcheck1413
  %n.vec1434 = and i64 %368, -4
  %broadcast.splatinsert1440 = insertelement <4 x double> poison, double %_p_scalar_704, i32 0
  %broadcast.splat1441 = shufflevector <4 x double> %broadcast.splatinsert1440, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1443 = insertelement <4 x double> poison, double %_p_scalar_712, i32 0
  %broadcast.splat1444 = shufflevector <4 x double> %broadcast.splatinsert1443, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1429

vector.body1429:                                  ; preds = %vector.body1429, %vector.ph1432
  %index1435 = phi i64 [ 0, %vector.ph1432 ], [ %index.next1436, %vector.body1429 ]
  %377 = add nuw nsw i64 %index1435, %310
  %378 = add nuw nsw i64 %index1435, %polly.access.mul.Packed_MemRef_call1513697
  %379 = getelementptr double, double* %Packed_MemRef_call1513, i64 %378
  %380 = bitcast double* %379 to <4 x double>*
  %wide.load1439 = load <4 x double>, <4 x double>* %380, align 8, !alias.scope !121
  %381 = fmul fast <4 x double> %broadcast.splat1441, %wide.load1439
  %382 = getelementptr double, double* %Packed_MemRef_call2515, i64 %378
  %383 = bitcast double* %382 to <4 x double>*
  %wide.load1442 = load <4 x double>, <4 x double>* %383, align 8
  %384 = fmul fast <4 x double> %broadcast.splat1444, %wide.load1442
  %385 = shl i64 %377, 3
  %386 = add nuw nsw i64 %385, %374
  %387 = getelementptr i8, i8* %call, i64 %386
  %388 = bitcast i8* %387 to <4 x double>*
  %wide.load1445 = load <4 x double>, <4 x double>* %388, align 8, !alias.scope !124, !noalias !126
  %389 = fadd fast <4 x double> %384, %381
  %390 = fmul fast <4 x double> %389, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %391 = fadd fast <4 x double> %390, %wide.load1445
  %392 = bitcast i8* %387 to <4 x double>*
  store <4 x double> %391, <4 x double>* %392, align 8, !alias.scope !124, !noalias !126
  %index.next1436 = add i64 %index1435, 4
  %393 = icmp eq i64 %index.next1436, %n.vec1434
  br i1 %393, label %middle.block1427, label %vector.body1429, !llvm.loop !127

middle.block1427:                                 ; preds = %vector.body1429
  %cmp.n1438 = icmp eq i64 %368, %n.vec1434
  br i1 %cmp.n1438, label %polly.loop_exit693, label %polly.loop_header691.preheader

polly.loop_header691.preheader:                   ; preds = %vector.memcheck1413, %polly.loop_header685, %middle.block1427
  %polly.indvar694.ph = phi i64 [ 0, %vector.memcheck1413 ], [ 0, %polly.loop_header685 ], [ %n.vec1434, %middle.block1427 ]
  br label %polly.loop_header691

polly.loop_exit693:                               ; preds = %polly.loop_header691, %middle.block1427
  %polly.indvar_next689 = add nuw nsw i64 %polly.indvar688, 1
  %indvars.iv.next1008 = add nuw nsw i64 %indvars.iv1007, 1
  %exitcond1011.not = icmp eq i64 %polly.indvar_next689, 20
  br i1 %exitcond1011.not, label %polly.loop_exit687, label %polly.loop_header685

polly.loop_header691:                             ; preds = %polly.loop_header691.preheader, %polly.loop_header691
  %polly.indvar694 = phi i64 [ %polly.indvar_next695, %polly.loop_header691 ], [ %polly.indvar694.ph, %polly.loop_header691.preheader ]
  %394 = add nuw nsw i64 %polly.indvar694, %310
  %polly.access.add.Packed_MemRef_call1513698 = add nuw nsw i64 %polly.indvar694, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call1513699 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513698
  %_p_scalar_700 = load double, double* %polly.access.Packed_MemRef_call1513699, align 8
  %p_mul27.i = fmul fast double %_p_scalar_704, %_p_scalar_700
  %polly.access.Packed_MemRef_call2515707 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call1513698
  %_p_scalar_708 = load double, double* %polly.access.Packed_MemRef_call2515707, align 8
  %p_mul37.i = fmul fast double %_p_scalar_712, %_p_scalar_708
  %395 = shl i64 %394, 3
  %396 = add nuw nsw i64 %395, %374
  %scevgep713 = getelementptr i8, i8* %call, i64 %396
  %scevgep713714 = bitcast i8* %scevgep713 to double*
  %_p_scalar_715 = load double, double* %scevgep713714, align 8, !alias.scope !110, !noalias !112
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_715
  store double %p_add42.i, double* %scevgep713714, align 8, !alias.scope !110, !noalias !112
  %polly.indvar_next695 = add nuw nsw i64 %polly.indvar694, 1
  %exitcond1010.not = icmp eq i64 %polly.indvar694, %smin1009
  br i1 %exitcond1010.not, label %polly.loop_exit693, label %polly.loop_header691, !llvm.loop !128

polly.loop_header854:                             ; preds = %entry, %polly.loop_exit862
  %polly.indvar857 = phi i64 [ %polly.indvar_next858, %polly.loop_exit862 ], [ 0, %entry ]
  %397 = mul nuw nsw i64 %polly.indvar857, 640
  %398 = trunc i64 %polly.indvar857 to i32
  %broadcast.splatinsert1135 = insertelement <4 x i32> poison, i32 %398, i32 0
  %broadcast.splat1136 = shufflevector <4 x i32> %broadcast.splatinsert1135, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1125

vector.body1125:                                  ; preds = %vector.body1125, %polly.loop_header854
  %index1127 = phi i64 [ 0, %polly.loop_header854 ], [ %index.next1128, %vector.body1125 ]
  %vec.ind1133 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header854 ], [ %vec.ind.next1134, %vector.body1125 ]
  %399 = mul <4 x i32> %vec.ind1133, %broadcast.splat1136
  %400 = add <4 x i32> %399, <i32 3, i32 3, i32 3, i32 3>
  %401 = urem <4 x i32> %400, <i32 80, i32 80, i32 80, i32 80>
  %402 = sitofp <4 x i32> %401 to <4 x double>
  %403 = fmul fast <4 x double> %402, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %404 = shl i64 %index1127, 3
  %405 = add nuw nsw i64 %404, %397
  %406 = getelementptr i8, i8* %call, i64 %405
  %407 = bitcast i8* %406 to <4 x double>*
  store <4 x double> %403, <4 x double>* %407, align 8, !alias.scope !129, !noalias !131
  %index.next1128 = add i64 %index1127, 4
  %vec.ind.next1134 = add <4 x i32> %vec.ind1133, <i32 4, i32 4, i32 4, i32 4>
  %408 = icmp eq i64 %index.next1128, 32
  br i1 %408, label %polly.loop_exit862, label %vector.body1125, !llvm.loop !134

polly.loop_exit862:                               ; preds = %vector.body1125
  %polly.indvar_next858 = add nuw nsw i64 %polly.indvar857, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar_next858, 32
  br i1 %exitcond1036.not, label %polly.loop_header854.1, label %polly.loop_header854

polly.loop_header881:                             ; preds = %polly.loop_exit862.2.2, %polly.loop_exit889
  %polly.indvar884 = phi i64 [ %polly.indvar_next885, %polly.loop_exit889 ], [ 0, %polly.loop_exit862.2.2 ]
  %409 = mul nuw nsw i64 %polly.indvar884, 480
  %410 = trunc i64 %polly.indvar884 to i32
  %broadcast.splatinsert1249 = insertelement <4 x i32> poison, i32 %410, i32 0
  %broadcast.splat1250 = shufflevector <4 x i32> %broadcast.splatinsert1249, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1239

vector.body1239:                                  ; preds = %vector.body1239, %polly.loop_header881
  %index1241 = phi i64 [ 0, %polly.loop_header881 ], [ %index.next1242, %vector.body1239 ]
  %vec.ind1247 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header881 ], [ %vec.ind.next1248, %vector.body1239 ]
  %411 = mul <4 x i32> %vec.ind1247, %broadcast.splat1250
  %412 = add <4 x i32> %411, <i32 2, i32 2, i32 2, i32 2>
  %413 = urem <4 x i32> %412, <i32 60, i32 60, i32 60, i32 60>
  %414 = sitofp <4 x i32> %413 to <4 x double>
  %415 = fmul fast <4 x double> %414, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %416 = shl i64 %index1241, 3
  %417 = add i64 %416, %409
  %418 = getelementptr i8, i8* %call2, i64 %417
  %419 = bitcast i8* %418 to <4 x double>*
  store <4 x double> %415, <4 x double>* %419, align 8, !alias.scope !133, !noalias !135
  %index.next1242 = add i64 %index1241, 4
  %vec.ind.next1248 = add <4 x i32> %vec.ind1247, <i32 4, i32 4, i32 4, i32 4>
  %420 = icmp eq i64 %index.next1242, 32
  br i1 %420, label %polly.loop_exit889, label %vector.body1239, !llvm.loop !136

polly.loop_exit889:                               ; preds = %vector.body1239
  %polly.indvar_next885 = add nuw nsw i64 %polly.indvar884, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar_next885, 32
  br i1 %exitcond1027.not, label %polly.loop_header881.1, label %polly.loop_header881

polly.loop_header907:                             ; preds = %polly.loop_exit889.1.2, %polly.loop_exit915
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_exit915 ], [ 0, %polly.loop_exit889.1.2 ]
  %421 = mul nuw nsw i64 %polly.indvar910, 480
  %422 = trunc i64 %polly.indvar910 to i32
  %broadcast.splatinsert1327 = insertelement <4 x i32> poison, i32 %422, i32 0
  %broadcast.splat1328 = shufflevector <4 x i32> %broadcast.splatinsert1327, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1317

vector.body1317:                                  ; preds = %vector.body1317, %polly.loop_header907
  %index1319 = phi i64 [ 0, %polly.loop_header907 ], [ %index.next1320, %vector.body1317 ]
  %vec.ind1325 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header907 ], [ %vec.ind.next1326, %vector.body1317 ]
  %423 = mul <4 x i32> %vec.ind1325, %broadcast.splat1328
  %424 = add <4 x i32> %423, <i32 1, i32 1, i32 1, i32 1>
  %425 = urem <4 x i32> %424, <i32 80, i32 80, i32 80, i32 80>
  %426 = sitofp <4 x i32> %425 to <4 x double>
  %427 = fmul fast <4 x double> %426, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %428 = shl i64 %index1319, 3
  %429 = add i64 %428, %421
  %430 = getelementptr i8, i8* %call1, i64 %429
  %431 = bitcast i8* %430 to <4 x double>*
  store <4 x double> %427, <4 x double>* %431, align 8, !alias.scope !132, !noalias !137
  %index.next1320 = add i64 %index1319, 4
  %vec.ind.next1326 = add <4 x i32> %vec.ind1325, <i32 4, i32 4, i32 4, i32 4>
  %432 = icmp eq i64 %index.next1320, 32
  br i1 %432, label %polly.loop_exit915, label %vector.body1317, !llvm.loop !138

polly.loop_exit915:                               ; preds = %vector.body1317
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %exitcond1021.not = icmp eq i64 %polly.indvar_next911, 32
  br i1 %exitcond1021.not, label %polly.loop_header907.1, label %polly.loop_header907

polly.loop_header907.1:                           ; preds = %polly.loop_exit915, %polly.loop_exit915.1
  %polly.indvar910.1 = phi i64 [ %polly.indvar_next911.1, %polly.loop_exit915.1 ], [ 0, %polly.loop_exit915 ]
  %433 = mul nuw nsw i64 %polly.indvar910.1, 480
  %434 = trunc i64 %polly.indvar910.1 to i32
  %broadcast.splatinsert1339 = insertelement <4 x i32> poison, i32 %434, i32 0
  %broadcast.splat1340 = shufflevector <4 x i32> %broadcast.splatinsert1339, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1331

vector.body1331:                                  ; preds = %vector.body1331, %polly.loop_header907.1
  %index1333 = phi i64 [ 0, %polly.loop_header907.1 ], [ %index.next1334, %vector.body1331 ]
  %vec.ind1337 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header907.1 ], [ %vec.ind.next1338, %vector.body1331 ]
  %435 = add nuw nsw <4 x i64> %vec.ind1337, <i64 32, i64 32, i64 32, i64 32>
  %436 = trunc <4 x i64> %435 to <4 x i32>
  %437 = mul <4 x i32> %broadcast.splat1340, %436
  %438 = add <4 x i32> %437, <i32 1, i32 1, i32 1, i32 1>
  %439 = urem <4 x i32> %438, <i32 80, i32 80, i32 80, i32 80>
  %440 = sitofp <4 x i32> %439 to <4 x double>
  %441 = fmul fast <4 x double> %440, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %442 = extractelement <4 x i64> %435, i32 0
  %443 = shl i64 %442, 3
  %444 = add i64 %443, %433
  %445 = getelementptr i8, i8* %call1, i64 %444
  %446 = bitcast i8* %445 to <4 x double>*
  store <4 x double> %441, <4 x double>* %446, align 8, !alias.scope !132, !noalias !137
  %index.next1334 = add i64 %index1333, 4
  %vec.ind.next1338 = add <4 x i64> %vec.ind1337, <i64 4, i64 4, i64 4, i64 4>
  %447 = icmp eq i64 %index.next1334, 28
  br i1 %447, label %polly.loop_exit915.1, label %vector.body1331, !llvm.loop !139

polly.loop_exit915.1:                             ; preds = %vector.body1331
  %polly.indvar_next911.1 = add nuw nsw i64 %polly.indvar910.1, 1
  %exitcond1021.1.not = icmp eq i64 %polly.indvar_next911.1, 32
  br i1 %exitcond1021.1.not, label %polly.loop_header907.11044, label %polly.loop_header907.1

polly.loop_header907.11044:                       ; preds = %polly.loop_exit915.1, %polly.loop_exit915.11055
  %polly.indvar910.11043 = phi i64 [ %polly.indvar_next911.11053, %polly.loop_exit915.11055 ], [ 0, %polly.loop_exit915.1 ]
  %448 = add nuw nsw i64 %polly.indvar910.11043, 32
  %449 = mul nuw nsw i64 %448, 480
  %450 = trunc i64 %448 to i32
  %broadcast.splatinsert1353 = insertelement <4 x i32> poison, i32 %450, i32 0
  %broadcast.splat1354 = shufflevector <4 x i32> %broadcast.splatinsert1353, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1343

vector.body1343:                                  ; preds = %vector.body1343, %polly.loop_header907.11044
  %index1345 = phi i64 [ 0, %polly.loop_header907.11044 ], [ %index.next1346, %vector.body1343 ]
  %vec.ind1351 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header907.11044 ], [ %vec.ind.next1352, %vector.body1343 ]
  %451 = mul <4 x i32> %vec.ind1351, %broadcast.splat1354
  %452 = add <4 x i32> %451, <i32 1, i32 1, i32 1, i32 1>
  %453 = urem <4 x i32> %452, <i32 80, i32 80, i32 80, i32 80>
  %454 = sitofp <4 x i32> %453 to <4 x double>
  %455 = fmul fast <4 x double> %454, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %456 = shl i64 %index1345, 3
  %457 = add i64 %456, %449
  %458 = getelementptr i8, i8* %call1, i64 %457
  %459 = bitcast i8* %458 to <4 x double>*
  store <4 x double> %455, <4 x double>* %459, align 8, !alias.scope !132, !noalias !137
  %index.next1346 = add i64 %index1345, 4
  %vec.ind.next1352 = add <4 x i32> %vec.ind1351, <i32 4, i32 4, i32 4, i32 4>
  %460 = icmp eq i64 %index.next1346, 32
  br i1 %460, label %polly.loop_exit915.11055, label %vector.body1343, !llvm.loop !140

polly.loop_exit915.11055:                         ; preds = %vector.body1343
  %polly.indvar_next911.11053 = add nuw nsw i64 %polly.indvar910.11043, 1
  %exitcond1021.11054.not = icmp eq i64 %polly.indvar_next911.11053, 32
  br i1 %exitcond1021.11054.not, label %polly.loop_header907.1.1, label %polly.loop_header907.11044

polly.loop_header907.1.1:                         ; preds = %polly.loop_exit915.11055, %polly.loop_exit915.1.1
  %polly.indvar910.1.1 = phi i64 [ %polly.indvar_next911.1.1, %polly.loop_exit915.1.1 ], [ 0, %polly.loop_exit915.11055 ]
  %461 = add nuw nsw i64 %polly.indvar910.1.1, 32
  %462 = mul nuw nsw i64 %461, 480
  %463 = trunc i64 %461 to i32
  %broadcast.splatinsert1365 = insertelement <4 x i32> poison, i32 %463, i32 0
  %broadcast.splat1366 = shufflevector <4 x i32> %broadcast.splatinsert1365, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1357

vector.body1357:                                  ; preds = %vector.body1357, %polly.loop_header907.1.1
  %index1359 = phi i64 [ 0, %polly.loop_header907.1.1 ], [ %index.next1360, %vector.body1357 ]
  %vec.ind1363 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header907.1.1 ], [ %vec.ind.next1364, %vector.body1357 ]
  %464 = add nuw nsw <4 x i64> %vec.ind1363, <i64 32, i64 32, i64 32, i64 32>
  %465 = trunc <4 x i64> %464 to <4 x i32>
  %466 = mul <4 x i32> %broadcast.splat1366, %465
  %467 = add <4 x i32> %466, <i32 1, i32 1, i32 1, i32 1>
  %468 = urem <4 x i32> %467, <i32 80, i32 80, i32 80, i32 80>
  %469 = sitofp <4 x i32> %468 to <4 x double>
  %470 = fmul fast <4 x double> %469, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %471 = extractelement <4 x i64> %464, i32 0
  %472 = shl i64 %471, 3
  %473 = add i64 %472, %462
  %474 = getelementptr i8, i8* %call1, i64 %473
  %475 = bitcast i8* %474 to <4 x double>*
  store <4 x double> %470, <4 x double>* %475, align 8, !alias.scope !132, !noalias !137
  %index.next1360 = add i64 %index1359, 4
  %vec.ind.next1364 = add <4 x i64> %vec.ind1363, <i64 4, i64 4, i64 4, i64 4>
  %476 = icmp eq i64 %index.next1360, 28
  br i1 %476, label %polly.loop_exit915.1.1, label %vector.body1357, !llvm.loop !141

polly.loop_exit915.1.1:                           ; preds = %vector.body1357
  %polly.indvar_next911.1.1 = add nuw nsw i64 %polly.indvar910.1.1, 1
  %exitcond1021.1.1.not = icmp eq i64 %polly.indvar_next911.1.1, 32
  br i1 %exitcond1021.1.1.not, label %polly.loop_header907.2, label %polly.loop_header907.1.1

polly.loop_header907.2:                           ; preds = %polly.loop_exit915.1.1, %polly.loop_exit915.2
  %polly.indvar910.2 = phi i64 [ %polly.indvar_next911.2, %polly.loop_exit915.2 ], [ 0, %polly.loop_exit915.1.1 ]
  %477 = add nuw nsw i64 %polly.indvar910.2, 64
  %478 = mul nuw nsw i64 %477, 480
  %479 = trunc i64 %477 to i32
  %broadcast.splatinsert1379 = insertelement <4 x i32> poison, i32 %479, i32 0
  %broadcast.splat1380 = shufflevector <4 x i32> %broadcast.splatinsert1379, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1369

vector.body1369:                                  ; preds = %vector.body1369, %polly.loop_header907.2
  %index1371 = phi i64 [ 0, %polly.loop_header907.2 ], [ %index.next1372, %vector.body1369 ]
  %vec.ind1377 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header907.2 ], [ %vec.ind.next1378, %vector.body1369 ]
  %480 = mul <4 x i32> %vec.ind1377, %broadcast.splat1380
  %481 = add <4 x i32> %480, <i32 1, i32 1, i32 1, i32 1>
  %482 = urem <4 x i32> %481, <i32 80, i32 80, i32 80, i32 80>
  %483 = sitofp <4 x i32> %482 to <4 x double>
  %484 = fmul fast <4 x double> %483, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %485 = shl i64 %index1371, 3
  %486 = add i64 %485, %478
  %487 = getelementptr i8, i8* %call1, i64 %486
  %488 = bitcast i8* %487 to <4 x double>*
  store <4 x double> %484, <4 x double>* %488, align 8, !alias.scope !132, !noalias !137
  %index.next1372 = add i64 %index1371, 4
  %vec.ind.next1378 = add <4 x i32> %vec.ind1377, <i32 4, i32 4, i32 4, i32 4>
  %489 = icmp eq i64 %index.next1372, 32
  br i1 %489, label %polly.loop_exit915.2, label %vector.body1369, !llvm.loop !142

polly.loop_exit915.2:                             ; preds = %vector.body1369
  %polly.indvar_next911.2 = add nuw nsw i64 %polly.indvar910.2, 1
  %exitcond1021.2.not = icmp eq i64 %polly.indvar_next911.2, 16
  br i1 %exitcond1021.2.not, label %polly.loop_header907.1.2, label %polly.loop_header907.2

polly.loop_header907.1.2:                         ; preds = %polly.loop_exit915.2, %polly.loop_exit915.1.2
  %polly.indvar910.1.2 = phi i64 [ %polly.indvar_next911.1.2, %polly.loop_exit915.1.2 ], [ 0, %polly.loop_exit915.2 ]
  %490 = add nuw nsw i64 %polly.indvar910.1.2, 64
  %491 = mul nuw nsw i64 %490, 480
  %492 = trunc i64 %490 to i32
  %broadcast.splatinsert1391 = insertelement <4 x i32> poison, i32 %492, i32 0
  %broadcast.splat1392 = shufflevector <4 x i32> %broadcast.splatinsert1391, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1383

vector.body1383:                                  ; preds = %vector.body1383, %polly.loop_header907.1.2
  %index1385 = phi i64 [ 0, %polly.loop_header907.1.2 ], [ %index.next1386, %vector.body1383 ]
  %vec.ind1389 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header907.1.2 ], [ %vec.ind.next1390, %vector.body1383 ]
  %493 = add nuw nsw <4 x i64> %vec.ind1389, <i64 32, i64 32, i64 32, i64 32>
  %494 = trunc <4 x i64> %493 to <4 x i32>
  %495 = mul <4 x i32> %broadcast.splat1392, %494
  %496 = add <4 x i32> %495, <i32 1, i32 1, i32 1, i32 1>
  %497 = urem <4 x i32> %496, <i32 80, i32 80, i32 80, i32 80>
  %498 = sitofp <4 x i32> %497 to <4 x double>
  %499 = fmul fast <4 x double> %498, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %500 = extractelement <4 x i64> %493, i32 0
  %501 = shl i64 %500, 3
  %502 = add i64 %501, %491
  %503 = getelementptr i8, i8* %call1, i64 %502
  %504 = bitcast i8* %503 to <4 x double>*
  store <4 x double> %499, <4 x double>* %504, align 8, !alias.scope !132, !noalias !137
  %index.next1386 = add i64 %index1385, 4
  %vec.ind.next1390 = add <4 x i64> %vec.ind1389, <i64 4, i64 4, i64 4, i64 4>
  %505 = icmp eq i64 %index.next1386, 28
  br i1 %505, label %polly.loop_exit915.1.2, label %vector.body1383, !llvm.loop !143

polly.loop_exit915.1.2:                           ; preds = %vector.body1383
  %polly.indvar_next911.1.2 = add nuw nsw i64 %polly.indvar910.1.2, 1
  %exitcond1021.1.2.not = icmp eq i64 %polly.indvar_next911.1.2, 16
  br i1 %exitcond1021.1.2.not, label %init_array.exit, label %polly.loop_header907.1.2

polly.loop_header881.1:                           ; preds = %polly.loop_exit889, %polly.loop_exit889.1
  %polly.indvar884.1 = phi i64 [ %polly.indvar_next885.1, %polly.loop_exit889.1 ], [ 0, %polly.loop_exit889 ]
  %506 = mul nuw nsw i64 %polly.indvar884.1, 480
  %507 = trunc i64 %polly.indvar884.1 to i32
  %broadcast.splatinsert1261 = insertelement <4 x i32> poison, i32 %507, i32 0
  %broadcast.splat1262 = shufflevector <4 x i32> %broadcast.splatinsert1261, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1253

vector.body1253:                                  ; preds = %vector.body1253, %polly.loop_header881.1
  %index1255 = phi i64 [ 0, %polly.loop_header881.1 ], [ %index.next1256, %vector.body1253 ]
  %vec.ind1259 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header881.1 ], [ %vec.ind.next1260, %vector.body1253 ]
  %508 = add nuw nsw <4 x i64> %vec.ind1259, <i64 32, i64 32, i64 32, i64 32>
  %509 = trunc <4 x i64> %508 to <4 x i32>
  %510 = mul <4 x i32> %broadcast.splat1262, %509
  %511 = add <4 x i32> %510, <i32 2, i32 2, i32 2, i32 2>
  %512 = urem <4 x i32> %511, <i32 60, i32 60, i32 60, i32 60>
  %513 = sitofp <4 x i32> %512 to <4 x double>
  %514 = fmul fast <4 x double> %513, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %515 = extractelement <4 x i64> %508, i32 0
  %516 = shl i64 %515, 3
  %517 = add i64 %516, %506
  %518 = getelementptr i8, i8* %call2, i64 %517
  %519 = bitcast i8* %518 to <4 x double>*
  store <4 x double> %514, <4 x double>* %519, align 8, !alias.scope !133, !noalias !135
  %index.next1256 = add i64 %index1255, 4
  %vec.ind.next1260 = add <4 x i64> %vec.ind1259, <i64 4, i64 4, i64 4, i64 4>
  %520 = icmp eq i64 %index.next1256, 28
  br i1 %520, label %polly.loop_exit889.1, label %vector.body1253, !llvm.loop !144

polly.loop_exit889.1:                             ; preds = %vector.body1253
  %polly.indvar_next885.1 = add nuw nsw i64 %polly.indvar884.1, 1
  %exitcond1027.1.not = icmp eq i64 %polly.indvar_next885.1, 32
  br i1 %exitcond1027.1.not, label %polly.loop_header881.11058, label %polly.loop_header881.1

polly.loop_header881.11058:                       ; preds = %polly.loop_exit889.1, %polly.loop_exit889.11069
  %polly.indvar884.11057 = phi i64 [ %polly.indvar_next885.11067, %polly.loop_exit889.11069 ], [ 0, %polly.loop_exit889.1 ]
  %521 = add nuw nsw i64 %polly.indvar884.11057, 32
  %522 = mul nuw nsw i64 %521, 480
  %523 = trunc i64 %521 to i32
  %broadcast.splatinsert1275 = insertelement <4 x i32> poison, i32 %523, i32 0
  %broadcast.splat1276 = shufflevector <4 x i32> %broadcast.splatinsert1275, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1265

vector.body1265:                                  ; preds = %vector.body1265, %polly.loop_header881.11058
  %index1267 = phi i64 [ 0, %polly.loop_header881.11058 ], [ %index.next1268, %vector.body1265 ]
  %vec.ind1273 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header881.11058 ], [ %vec.ind.next1274, %vector.body1265 ]
  %524 = mul <4 x i32> %vec.ind1273, %broadcast.splat1276
  %525 = add <4 x i32> %524, <i32 2, i32 2, i32 2, i32 2>
  %526 = urem <4 x i32> %525, <i32 60, i32 60, i32 60, i32 60>
  %527 = sitofp <4 x i32> %526 to <4 x double>
  %528 = fmul fast <4 x double> %527, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %529 = shl i64 %index1267, 3
  %530 = add i64 %529, %522
  %531 = getelementptr i8, i8* %call2, i64 %530
  %532 = bitcast i8* %531 to <4 x double>*
  store <4 x double> %528, <4 x double>* %532, align 8, !alias.scope !133, !noalias !135
  %index.next1268 = add i64 %index1267, 4
  %vec.ind.next1274 = add <4 x i32> %vec.ind1273, <i32 4, i32 4, i32 4, i32 4>
  %533 = icmp eq i64 %index.next1268, 32
  br i1 %533, label %polly.loop_exit889.11069, label %vector.body1265, !llvm.loop !145

polly.loop_exit889.11069:                         ; preds = %vector.body1265
  %polly.indvar_next885.11067 = add nuw nsw i64 %polly.indvar884.11057, 1
  %exitcond1027.11068.not = icmp eq i64 %polly.indvar_next885.11067, 32
  br i1 %exitcond1027.11068.not, label %polly.loop_header881.1.1, label %polly.loop_header881.11058

polly.loop_header881.1.1:                         ; preds = %polly.loop_exit889.11069, %polly.loop_exit889.1.1
  %polly.indvar884.1.1 = phi i64 [ %polly.indvar_next885.1.1, %polly.loop_exit889.1.1 ], [ 0, %polly.loop_exit889.11069 ]
  %534 = add nuw nsw i64 %polly.indvar884.1.1, 32
  %535 = mul nuw nsw i64 %534, 480
  %536 = trunc i64 %534 to i32
  %broadcast.splatinsert1287 = insertelement <4 x i32> poison, i32 %536, i32 0
  %broadcast.splat1288 = shufflevector <4 x i32> %broadcast.splatinsert1287, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1279

vector.body1279:                                  ; preds = %vector.body1279, %polly.loop_header881.1.1
  %index1281 = phi i64 [ 0, %polly.loop_header881.1.1 ], [ %index.next1282, %vector.body1279 ]
  %vec.ind1285 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header881.1.1 ], [ %vec.ind.next1286, %vector.body1279 ]
  %537 = add nuw nsw <4 x i64> %vec.ind1285, <i64 32, i64 32, i64 32, i64 32>
  %538 = trunc <4 x i64> %537 to <4 x i32>
  %539 = mul <4 x i32> %broadcast.splat1288, %538
  %540 = add <4 x i32> %539, <i32 2, i32 2, i32 2, i32 2>
  %541 = urem <4 x i32> %540, <i32 60, i32 60, i32 60, i32 60>
  %542 = sitofp <4 x i32> %541 to <4 x double>
  %543 = fmul fast <4 x double> %542, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %544 = extractelement <4 x i64> %537, i32 0
  %545 = shl i64 %544, 3
  %546 = add i64 %545, %535
  %547 = getelementptr i8, i8* %call2, i64 %546
  %548 = bitcast i8* %547 to <4 x double>*
  store <4 x double> %543, <4 x double>* %548, align 8, !alias.scope !133, !noalias !135
  %index.next1282 = add i64 %index1281, 4
  %vec.ind.next1286 = add <4 x i64> %vec.ind1285, <i64 4, i64 4, i64 4, i64 4>
  %549 = icmp eq i64 %index.next1282, 28
  br i1 %549, label %polly.loop_exit889.1.1, label %vector.body1279, !llvm.loop !146

polly.loop_exit889.1.1:                           ; preds = %vector.body1279
  %polly.indvar_next885.1.1 = add nuw nsw i64 %polly.indvar884.1.1, 1
  %exitcond1027.1.1.not = icmp eq i64 %polly.indvar_next885.1.1, 32
  br i1 %exitcond1027.1.1.not, label %polly.loop_header881.2, label %polly.loop_header881.1.1

polly.loop_header881.2:                           ; preds = %polly.loop_exit889.1.1, %polly.loop_exit889.2
  %polly.indvar884.2 = phi i64 [ %polly.indvar_next885.2, %polly.loop_exit889.2 ], [ 0, %polly.loop_exit889.1.1 ]
  %550 = add nuw nsw i64 %polly.indvar884.2, 64
  %551 = mul nuw nsw i64 %550, 480
  %552 = trunc i64 %550 to i32
  %broadcast.splatinsert1301 = insertelement <4 x i32> poison, i32 %552, i32 0
  %broadcast.splat1302 = shufflevector <4 x i32> %broadcast.splatinsert1301, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1291

vector.body1291:                                  ; preds = %vector.body1291, %polly.loop_header881.2
  %index1293 = phi i64 [ 0, %polly.loop_header881.2 ], [ %index.next1294, %vector.body1291 ]
  %vec.ind1299 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header881.2 ], [ %vec.ind.next1300, %vector.body1291 ]
  %553 = mul <4 x i32> %vec.ind1299, %broadcast.splat1302
  %554 = add <4 x i32> %553, <i32 2, i32 2, i32 2, i32 2>
  %555 = urem <4 x i32> %554, <i32 60, i32 60, i32 60, i32 60>
  %556 = sitofp <4 x i32> %555 to <4 x double>
  %557 = fmul fast <4 x double> %556, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %558 = shl i64 %index1293, 3
  %559 = add i64 %558, %551
  %560 = getelementptr i8, i8* %call2, i64 %559
  %561 = bitcast i8* %560 to <4 x double>*
  store <4 x double> %557, <4 x double>* %561, align 8, !alias.scope !133, !noalias !135
  %index.next1294 = add i64 %index1293, 4
  %vec.ind.next1300 = add <4 x i32> %vec.ind1299, <i32 4, i32 4, i32 4, i32 4>
  %562 = icmp eq i64 %index.next1294, 32
  br i1 %562, label %polly.loop_exit889.2, label %vector.body1291, !llvm.loop !147

polly.loop_exit889.2:                             ; preds = %vector.body1291
  %polly.indvar_next885.2 = add nuw nsw i64 %polly.indvar884.2, 1
  %exitcond1027.2.not = icmp eq i64 %polly.indvar_next885.2, 16
  br i1 %exitcond1027.2.not, label %polly.loop_header881.1.2, label %polly.loop_header881.2

polly.loop_header881.1.2:                         ; preds = %polly.loop_exit889.2, %polly.loop_exit889.1.2
  %polly.indvar884.1.2 = phi i64 [ %polly.indvar_next885.1.2, %polly.loop_exit889.1.2 ], [ 0, %polly.loop_exit889.2 ]
  %563 = add nuw nsw i64 %polly.indvar884.1.2, 64
  %564 = mul nuw nsw i64 %563, 480
  %565 = trunc i64 %563 to i32
  %broadcast.splatinsert1313 = insertelement <4 x i32> poison, i32 %565, i32 0
  %broadcast.splat1314 = shufflevector <4 x i32> %broadcast.splatinsert1313, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1305

vector.body1305:                                  ; preds = %vector.body1305, %polly.loop_header881.1.2
  %index1307 = phi i64 [ 0, %polly.loop_header881.1.2 ], [ %index.next1308, %vector.body1305 ]
  %vec.ind1311 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header881.1.2 ], [ %vec.ind.next1312, %vector.body1305 ]
  %566 = add nuw nsw <4 x i64> %vec.ind1311, <i64 32, i64 32, i64 32, i64 32>
  %567 = trunc <4 x i64> %566 to <4 x i32>
  %568 = mul <4 x i32> %broadcast.splat1314, %567
  %569 = add <4 x i32> %568, <i32 2, i32 2, i32 2, i32 2>
  %570 = urem <4 x i32> %569, <i32 60, i32 60, i32 60, i32 60>
  %571 = sitofp <4 x i32> %570 to <4 x double>
  %572 = fmul fast <4 x double> %571, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %573 = extractelement <4 x i64> %566, i32 0
  %574 = shl i64 %573, 3
  %575 = add i64 %574, %564
  %576 = getelementptr i8, i8* %call2, i64 %575
  %577 = bitcast i8* %576 to <4 x double>*
  store <4 x double> %572, <4 x double>* %577, align 8, !alias.scope !133, !noalias !135
  %index.next1308 = add i64 %index1307, 4
  %vec.ind.next1312 = add <4 x i64> %vec.ind1311, <i64 4, i64 4, i64 4, i64 4>
  %578 = icmp eq i64 %index.next1308, 28
  br i1 %578, label %polly.loop_exit889.1.2, label %vector.body1305, !llvm.loop !148

polly.loop_exit889.1.2:                           ; preds = %vector.body1305
  %polly.indvar_next885.1.2 = add nuw nsw i64 %polly.indvar884.1.2, 1
  %exitcond1027.1.2.not = icmp eq i64 %polly.indvar_next885.1.2, 16
  br i1 %exitcond1027.1.2.not, label %polly.loop_header907, label %polly.loop_header881.1.2

polly.loop_header854.1:                           ; preds = %polly.loop_exit862, %polly.loop_exit862.1
  %polly.indvar857.1 = phi i64 [ %polly.indvar_next858.1, %polly.loop_exit862.1 ], [ 0, %polly.loop_exit862 ]
  %579 = mul nuw nsw i64 %polly.indvar857.1, 640
  %580 = trunc i64 %polly.indvar857.1 to i32
  %broadcast.splatinsert1147 = insertelement <4 x i32> poison, i32 %580, i32 0
  %broadcast.splat1148 = shufflevector <4 x i32> %broadcast.splatinsert1147, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1139

vector.body1139:                                  ; preds = %vector.body1139, %polly.loop_header854.1
  %index1141 = phi i64 [ 0, %polly.loop_header854.1 ], [ %index.next1142, %vector.body1139 ]
  %vec.ind1145 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header854.1 ], [ %vec.ind.next1146, %vector.body1139 ]
  %581 = add nuw nsw <4 x i64> %vec.ind1145, <i64 32, i64 32, i64 32, i64 32>
  %582 = trunc <4 x i64> %581 to <4 x i32>
  %583 = mul <4 x i32> %broadcast.splat1148, %582
  %584 = add <4 x i32> %583, <i32 3, i32 3, i32 3, i32 3>
  %585 = urem <4 x i32> %584, <i32 80, i32 80, i32 80, i32 80>
  %586 = sitofp <4 x i32> %585 to <4 x double>
  %587 = fmul fast <4 x double> %586, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %588 = extractelement <4 x i64> %581, i32 0
  %589 = shl i64 %588, 3
  %590 = add nuw nsw i64 %589, %579
  %591 = getelementptr i8, i8* %call, i64 %590
  %592 = bitcast i8* %591 to <4 x double>*
  store <4 x double> %587, <4 x double>* %592, align 8, !alias.scope !129, !noalias !131
  %index.next1142 = add i64 %index1141, 4
  %vec.ind.next1146 = add <4 x i64> %vec.ind1145, <i64 4, i64 4, i64 4, i64 4>
  %593 = icmp eq i64 %index.next1142, 32
  br i1 %593, label %polly.loop_exit862.1, label %vector.body1139, !llvm.loop !149

polly.loop_exit862.1:                             ; preds = %vector.body1139
  %polly.indvar_next858.1 = add nuw nsw i64 %polly.indvar857.1, 1
  %exitcond1036.1.not = icmp eq i64 %polly.indvar_next858.1, 32
  br i1 %exitcond1036.1.not, label %polly.loop_header854.2, label %polly.loop_header854.1

polly.loop_header854.2:                           ; preds = %polly.loop_exit862.1, %polly.loop_exit862.2
  %polly.indvar857.2 = phi i64 [ %polly.indvar_next858.2, %polly.loop_exit862.2 ], [ 0, %polly.loop_exit862.1 ]
  %594 = mul nuw nsw i64 %polly.indvar857.2, 640
  %595 = trunc i64 %polly.indvar857.2 to i32
  %broadcast.splatinsert1159 = insertelement <4 x i32> poison, i32 %595, i32 0
  %broadcast.splat1160 = shufflevector <4 x i32> %broadcast.splatinsert1159, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1151

vector.body1151:                                  ; preds = %vector.body1151, %polly.loop_header854.2
  %index1153 = phi i64 [ 0, %polly.loop_header854.2 ], [ %index.next1154, %vector.body1151 ]
  %vec.ind1157 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header854.2 ], [ %vec.ind.next1158, %vector.body1151 ]
  %596 = add nuw nsw <4 x i64> %vec.ind1157, <i64 64, i64 64, i64 64, i64 64>
  %597 = trunc <4 x i64> %596 to <4 x i32>
  %598 = mul <4 x i32> %broadcast.splat1160, %597
  %599 = add <4 x i32> %598, <i32 3, i32 3, i32 3, i32 3>
  %600 = urem <4 x i32> %599, <i32 80, i32 80, i32 80, i32 80>
  %601 = sitofp <4 x i32> %600 to <4 x double>
  %602 = fmul fast <4 x double> %601, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %603 = extractelement <4 x i64> %596, i32 0
  %604 = shl i64 %603, 3
  %605 = add nuw nsw i64 %604, %594
  %606 = getelementptr i8, i8* %call, i64 %605
  %607 = bitcast i8* %606 to <4 x double>*
  store <4 x double> %602, <4 x double>* %607, align 8, !alias.scope !129, !noalias !131
  %index.next1154 = add i64 %index1153, 4
  %vec.ind.next1158 = add <4 x i64> %vec.ind1157, <i64 4, i64 4, i64 4, i64 4>
  %608 = icmp eq i64 %index.next1154, 16
  br i1 %608, label %polly.loop_exit862.2, label %vector.body1151, !llvm.loop !150

polly.loop_exit862.2:                             ; preds = %vector.body1151
  %polly.indvar_next858.2 = add nuw nsw i64 %polly.indvar857.2, 1
  %exitcond1036.2.not = icmp eq i64 %polly.indvar_next858.2, 32
  br i1 %exitcond1036.2.not, label %polly.loop_header854.11072, label %polly.loop_header854.2

polly.loop_header854.11072:                       ; preds = %polly.loop_exit862.2, %polly.loop_exit862.11083
  %polly.indvar857.11071 = phi i64 [ %polly.indvar_next858.11081, %polly.loop_exit862.11083 ], [ 0, %polly.loop_exit862.2 ]
  %609 = add nuw nsw i64 %polly.indvar857.11071, 32
  %610 = mul nuw nsw i64 %609, 640
  %611 = trunc i64 %609 to i32
  %broadcast.splatinsert1173 = insertelement <4 x i32> poison, i32 %611, i32 0
  %broadcast.splat1174 = shufflevector <4 x i32> %broadcast.splatinsert1173, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1163

vector.body1163:                                  ; preds = %vector.body1163, %polly.loop_header854.11072
  %index1165 = phi i64 [ 0, %polly.loop_header854.11072 ], [ %index.next1166, %vector.body1163 ]
  %vec.ind1171 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header854.11072 ], [ %vec.ind.next1172, %vector.body1163 ]
  %612 = mul <4 x i32> %vec.ind1171, %broadcast.splat1174
  %613 = add <4 x i32> %612, <i32 3, i32 3, i32 3, i32 3>
  %614 = urem <4 x i32> %613, <i32 80, i32 80, i32 80, i32 80>
  %615 = sitofp <4 x i32> %614 to <4 x double>
  %616 = fmul fast <4 x double> %615, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %617 = shl i64 %index1165, 3
  %618 = add nuw nsw i64 %617, %610
  %619 = getelementptr i8, i8* %call, i64 %618
  %620 = bitcast i8* %619 to <4 x double>*
  store <4 x double> %616, <4 x double>* %620, align 8, !alias.scope !129, !noalias !131
  %index.next1166 = add i64 %index1165, 4
  %vec.ind.next1172 = add <4 x i32> %vec.ind1171, <i32 4, i32 4, i32 4, i32 4>
  %621 = icmp eq i64 %index.next1166, 32
  br i1 %621, label %polly.loop_exit862.11083, label %vector.body1163, !llvm.loop !151

polly.loop_exit862.11083:                         ; preds = %vector.body1163
  %polly.indvar_next858.11081 = add nuw nsw i64 %polly.indvar857.11071, 1
  %exitcond1036.11082.not = icmp eq i64 %polly.indvar_next858.11081, 32
  br i1 %exitcond1036.11082.not, label %polly.loop_header854.1.1, label %polly.loop_header854.11072

polly.loop_header854.1.1:                         ; preds = %polly.loop_exit862.11083, %polly.loop_exit862.1.1
  %polly.indvar857.1.1 = phi i64 [ %polly.indvar_next858.1.1, %polly.loop_exit862.1.1 ], [ 0, %polly.loop_exit862.11083 ]
  %622 = add nuw nsw i64 %polly.indvar857.1.1, 32
  %623 = mul nuw nsw i64 %622, 640
  %624 = trunc i64 %622 to i32
  %broadcast.splatinsert1185 = insertelement <4 x i32> poison, i32 %624, i32 0
  %broadcast.splat1186 = shufflevector <4 x i32> %broadcast.splatinsert1185, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1177

vector.body1177:                                  ; preds = %vector.body1177, %polly.loop_header854.1.1
  %index1179 = phi i64 [ 0, %polly.loop_header854.1.1 ], [ %index.next1180, %vector.body1177 ]
  %vec.ind1183 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header854.1.1 ], [ %vec.ind.next1184, %vector.body1177 ]
  %625 = add nuw nsw <4 x i64> %vec.ind1183, <i64 32, i64 32, i64 32, i64 32>
  %626 = trunc <4 x i64> %625 to <4 x i32>
  %627 = mul <4 x i32> %broadcast.splat1186, %626
  %628 = add <4 x i32> %627, <i32 3, i32 3, i32 3, i32 3>
  %629 = urem <4 x i32> %628, <i32 80, i32 80, i32 80, i32 80>
  %630 = sitofp <4 x i32> %629 to <4 x double>
  %631 = fmul fast <4 x double> %630, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %632 = extractelement <4 x i64> %625, i32 0
  %633 = shl i64 %632, 3
  %634 = add nuw nsw i64 %633, %623
  %635 = getelementptr i8, i8* %call, i64 %634
  %636 = bitcast i8* %635 to <4 x double>*
  store <4 x double> %631, <4 x double>* %636, align 8, !alias.scope !129, !noalias !131
  %index.next1180 = add i64 %index1179, 4
  %vec.ind.next1184 = add <4 x i64> %vec.ind1183, <i64 4, i64 4, i64 4, i64 4>
  %637 = icmp eq i64 %index.next1180, 32
  br i1 %637, label %polly.loop_exit862.1.1, label %vector.body1177, !llvm.loop !152

polly.loop_exit862.1.1:                           ; preds = %vector.body1177
  %polly.indvar_next858.1.1 = add nuw nsw i64 %polly.indvar857.1.1, 1
  %exitcond1036.1.1.not = icmp eq i64 %polly.indvar_next858.1.1, 32
  br i1 %exitcond1036.1.1.not, label %polly.loop_header854.2.1, label %polly.loop_header854.1.1

polly.loop_header854.2.1:                         ; preds = %polly.loop_exit862.1.1, %polly.loop_exit862.2.1
  %polly.indvar857.2.1 = phi i64 [ %polly.indvar_next858.2.1, %polly.loop_exit862.2.1 ], [ 0, %polly.loop_exit862.1.1 ]
  %638 = add nuw nsw i64 %polly.indvar857.2.1, 32
  %639 = mul nuw nsw i64 %638, 640
  %640 = trunc i64 %638 to i32
  %broadcast.splatinsert1197 = insertelement <4 x i32> poison, i32 %640, i32 0
  %broadcast.splat1198 = shufflevector <4 x i32> %broadcast.splatinsert1197, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1189

vector.body1189:                                  ; preds = %vector.body1189, %polly.loop_header854.2.1
  %index1191 = phi i64 [ 0, %polly.loop_header854.2.1 ], [ %index.next1192, %vector.body1189 ]
  %vec.ind1195 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header854.2.1 ], [ %vec.ind.next1196, %vector.body1189 ]
  %641 = add nuw nsw <4 x i64> %vec.ind1195, <i64 64, i64 64, i64 64, i64 64>
  %642 = trunc <4 x i64> %641 to <4 x i32>
  %643 = mul <4 x i32> %broadcast.splat1198, %642
  %644 = add <4 x i32> %643, <i32 3, i32 3, i32 3, i32 3>
  %645 = urem <4 x i32> %644, <i32 80, i32 80, i32 80, i32 80>
  %646 = sitofp <4 x i32> %645 to <4 x double>
  %647 = fmul fast <4 x double> %646, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %648 = extractelement <4 x i64> %641, i32 0
  %649 = shl i64 %648, 3
  %650 = add nuw nsw i64 %649, %639
  %651 = getelementptr i8, i8* %call, i64 %650
  %652 = bitcast i8* %651 to <4 x double>*
  store <4 x double> %647, <4 x double>* %652, align 8, !alias.scope !129, !noalias !131
  %index.next1192 = add i64 %index1191, 4
  %vec.ind.next1196 = add <4 x i64> %vec.ind1195, <i64 4, i64 4, i64 4, i64 4>
  %653 = icmp eq i64 %index.next1192, 16
  br i1 %653, label %polly.loop_exit862.2.1, label %vector.body1189, !llvm.loop !153

polly.loop_exit862.2.1:                           ; preds = %vector.body1189
  %polly.indvar_next858.2.1 = add nuw nsw i64 %polly.indvar857.2.1, 1
  %exitcond1036.2.1.not = icmp eq i64 %polly.indvar_next858.2.1, 32
  br i1 %exitcond1036.2.1.not, label %polly.loop_header854.21086, label %polly.loop_header854.2.1

polly.loop_header854.21086:                       ; preds = %polly.loop_exit862.2.1, %polly.loop_exit862.21097
  %polly.indvar857.21085 = phi i64 [ %polly.indvar_next858.21095, %polly.loop_exit862.21097 ], [ 0, %polly.loop_exit862.2.1 ]
  %654 = add nuw nsw i64 %polly.indvar857.21085, 64
  %655 = mul nuw nsw i64 %654, 640
  %656 = trunc i64 %654 to i32
  %broadcast.splatinsert1211 = insertelement <4 x i32> poison, i32 %656, i32 0
  %broadcast.splat1212 = shufflevector <4 x i32> %broadcast.splatinsert1211, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1201

vector.body1201:                                  ; preds = %vector.body1201, %polly.loop_header854.21086
  %index1203 = phi i64 [ 0, %polly.loop_header854.21086 ], [ %index.next1204, %vector.body1201 ]
  %vec.ind1209 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header854.21086 ], [ %vec.ind.next1210, %vector.body1201 ]
  %657 = mul <4 x i32> %vec.ind1209, %broadcast.splat1212
  %658 = add <4 x i32> %657, <i32 3, i32 3, i32 3, i32 3>
  %659 = urem <4 x i32> %658, <i32 80, i32 80, i32 80, i32 80>
  %660 = sitofp <4 x i32> %659 to <4 x double>
  %661 = fmul fast <4 x double> %660, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %662 = shl i64 %index1203, 3
  %663 = add nuw nsw i64 %662, %655
  %664 = getelementptr i8, i8* %call, i64 %663
  %665 = bitcast i8* %664 to <4 x double>*
  store <4 x double> %661, <4 x double>* %665, align 8, !alias.scope !129, !noalias !131
  %index.next1204 = add i64 %index1203, 4
  %vec.ind.next1210 = add <4 x i32> %vec.ind1209, <i32 4, i32 4, i32 4, i32 4>
  %666 = icmp eq i64 %index.next1204, 32
  br i1 %666, label %polly.loop_exit862.21097, label %vector.body1201, !llvm.loop !154

polly.loop_exit862.21097:                         ; preds = %vector.body1201
  %polly.indvar_next858.21095 = add nuw nsw i64 %polly.indvar857.21085, 1
  %exitcond1036.21096.not = icmp eq i64 %polly.indvar_next858.21095, 16
  br i1 %exitcond1036.21096.not, label %polly.loop_header854.1.2, label %polly.loop_header854.21086

polly.loop_header854.1.2:                         ; preds = %polly.loop_exit862.21097, %polly.loop_exit862.1.2
  %polly.indvar857.1.2 = phi i64 [ %polly.indvar_next858.1.2, %polly.loop_exit862.1.2 ], [ 0, %polly.loop_exit862.21097 ]
  %667 = add nuw nsw i64 %polly.indvar857.1.2, 64
  %668 = mul nuw nsw i64 %667, 640
  %669 = trunc i64 %667 to i32
  %broadcast.splatinsert1223 = insertelement <4 x i32> poison, i32 %669, i32 0
  %broadcast.splat1224 = shufflevector <4 x i32> %broadcast.splatinsert1223, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1215

vector.body1215:                                  ; preds = %vector.body1215, %polly.loop_header854.1.2
  %index1217 = phi i64 [ 0, %polly.loop_header854.1.2 ], [ %index.next1218, %vector.body1215 ]
  %vec.ind1221 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header854.1.2 ], [ %vec.ind.next1222, %vector.body1215 ]
  %670 = add nuw nsw <4 x i64> %vec.ind1221, <i64 32, i64 32, i64 32, i64 32>
  %671 = trunc <4 x i64> %670 to <4 x i32>
  %672 = mul <4 x i32> %broadcast.splat1224, %671
  %673 = add <4 x i32> %672, <i32 3, i32 3, i32 3, i32 3>
  %674 = urem <4 x i32> %673, <i32 80, i32 80, i32 80, i32 80>
  %675 = sitofp <4 x i32> %674 to <4 x double>
  %676 = fmul fast <4 x double> %675, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %677 = extractelement <4 x i64> %670, i32 0
  %678 = shl i64 %677, 3
  %679 = add nuw nsw i64 %678, %668
  %680 = getelementptr i8, i8* %call, i64 %679
  %681 = bitcast i8* %680 to <4 x double>*
  store <4 x double> %676, <4 x double>* %681, align 8, !alias.scope !129, !noalias !131
  %index.next1218 = add i64 %index1217, 4
  %vec.ind.next1222 = add <4 x i64> %vec.ind1221, <i64 4, i64 4, i64 4, i64 4>
  %682 = icmp eq i64 %index.next1218, 32
  br i1 %682, label %polly.loop_exit862.1.2, label %vector.body1215, !llvm.loop !155

polly.loop_exit862.1.2:                           ; preds = %vector.body1215
  %polly.indvar_next858.1.2 = add nuw nsw i64 %polly.indvar857.1.2, 1
  %exitcond1036.1.2.not = icmp eq i64 %polly.indvar_next858.1.2, 16
  br i1 %exitcond1036.1.2.not, label %polly.loop_header854.2.2, label %polly.loop_header854.1.2

polly.loop_header854.2.2:                         ; preds = %polly.loop_exit862.1.2, %polly.loop_exit862.2.2
  %polly.indvar857.2.2 = phi i64 [ %polly.indvar_next858.2.2, %polly.loop_exit862.2.2 ], [ 0, %polly.loop_exit862.1.2 ]
  %683 = add nuw nsw i64 %polly.indvar857.2.2, 64
  %684 = mul nuw nsw i64 %683, 640
  %685 = trunc i64 %683 to i32
  %broadcast.splatinsert1235 = insertelement <4 x i32> poison, i32 %685, i32 0
  %broadcast.splat1236 = shufflevector <4 x i32> %broadcast.splatinsert1235, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1227

vector.body1227:                                  ; preds = %vector.body1227, %polly.loop_header854.2.2
  %index1229 = phi i64 [ 0, %polly.loop_header854.2.2 ], [ %index.next1230, %vector.body1227 ]
  %vec.ind1233 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header854.2.2 ], [ %vec.ind.next1234, %vector.body1227 ]
  %686 = add nuw nsw <4 x i64> %vec.ind1233, <i64 64, i64 64, i64 64, i64 64>
  %687 = trunc <4 x i64> %686 to <4 x i32>
  %688 = mul <4 x i32> %broadcast.splat1236, %687
  %689 = add <4 x i32> %688, <i32 3, i32 3, i32 3, i32 3>
  %690 = urem <4 x i32> %689, <i32 80, i32 80, i32 80, i32 80>
  %691 = sitofp <4 x i32> %690 to <4 x double>
  %692 = fmul fast <4 x double> %691, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %693 = extractelement <4 x i64> %686, i32 0
  %694 = shl i64 %693, 3
  %695 = add nuw nsw i64 %694, %684
  %696 = getelementptr i8, i8* %call, i64 %695
  %697 = bitcast i8* %696 to <4 x double>*
  store <4 x double> %692, <4 x double>* %697, align 8, !alias.scope !129, !noalias !131
  %index.next1230 = add i64 %index1229, 4
  %vec.ind.next1234 = add <4 x i64> %vec.ind1233, <i64 4, i64 4, i64 4, i64 4>
  %698 = icmp eq i64 %index.next1230, 16
  br i1 %698, label %polly.loop_exit862.2.2, label %vector.body1227, !llvm.loop !156

polly.loop_exit862.2.2:                           ; preds = %vector.body1227
  %polly.indvar_next858.2.2 = add nuw nsw i64 %polly.indvar857.2.2, 1
  %exitcond1036.2.2.not = icmp eq i64 %polly.indvar_next858.2.2, 16
  br i1 %exitcond1036.2.2.not, label %polly.loop_header881, label %polly.loop_header854.2.2
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
!47 = distinct !{!47, !12, !24, !48, !49, !50, !26, !51, !60}
!48 = !{!"llvm.loop.id", !"i"}
!49 = !{!"llvm.loop.tile.enable", i1 true}
!50 = !{!"llvm.loop.tile.depth", i32 3}
!51 = !{!"llvm.loop.tile.followup_floor", !52}
!52 = distinct !{!52, !12, !24, !53, !54, !55, !56, !57}
!53 = !{!"llvm.loop.id", !"i1"}
!54 = !{!"llvm.loop.interchange.enable", i1 true}
!55 = !{!"llvm.loop.interchange.depth", i32 5}
!56 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!57 = !{!"llvm.loop.interchange.followup_interchanged", !58}
!58 = distinct !{!58, !12, !24, !53, !44, !59, !46}
!59 = !{!"llvm.data.pack.array", !22}
!60 = !{!"llvm.loop.tile.followup_tile", !61}
!61 = distinct !{!61, !12, !24, !62}
!62 = !{!"llvm.loop.id", !"i2"}
!63 = distinct !{!63, !12, !13}
!64 = distinct !{!64, !12, !13}
!65 = distinct !{!65, !12, !13}
!66 = distinct !{!66, !12, !13}
!67 = !{!68, !68, i64 0}
!68 = !{!"any pointer", !4, i64 0}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !72, !"polly.alias.scope.MemRef_call"}
!72 = distinct !{!72, !"polly.alias.scope.domain"}
!73 = !{!74, !75, !76, !77}
!74 = distinct !{!74, !72, !"polly.alias.scope.MemRef_call1"}
!75 = distinct !{!75, !72, !"polly.alias.scope.MemRef_call2"}
!76 = distinct !{!76, !72, !"polly.alias.scope.Packed_MemRef_call1"}
!77 = distinct !{!77, !72, !"polly.alias.scope.Packed_MemRef_call2"}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !80, !13}
!80 = !{!"llvm.loop.unroll.runtime.disable"}
!81 = !{!71, !74, !76, !77}
!82 = !{!71, !75, !76, !77}
!83 = !{!84}
!84 = distinct !{!84, !85}
!85 = distinct !{!85, !"LVerDomain"}
!86 = !{!71, !72, !"polly.alias.scope.MemRef_call", !87}
!87 = distinct !{!87, !85}
!88 = !{!74, !75, !76, !77, !84}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !92, !"polly.alias.scope.MemRef_call"}
!92 = distinct !{!92, !"polly.alias.scope.domain"}
!93 = !{!94, !95, !96, !97}
!94 = distinct !{!94, !92, !"polly.alias.scope.MemRef_call1"}
!95 = distinct !{!95, !92, !"polly.alias.scope.MemRef_call2"}
!96 = distinct !{!96, !92, !"polly.alias.scope.Packed_MemRef_call1"}
!97 = distinct !{!97, !92, !"polly.alias.scope.Packed_MemRef_call2"}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !80, !13}
!100 = !{!91, !94, !96, !97}
!101 = !{!91, !95, !96, !97}
!102 = !{!103}
!103 = distinct !{!103, !104}
!104 = distinct !{!104, !"LVerDomain"}
!105 = !{!91, !92, !"polly.alias.scope.MemRef_call", !106}
!106 = distinct !{!106, !104}
!107 = !{!94, !95, !96, !97, !103}
!108 = distinct !{!108, !13}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !111, !"polly.alias.scope.MemRef_call"}
!111 = distinct !{!111, !"polly.alias.scope.domain"}
!112 = !{!113, !114, !115, !116}
!113 = distinct !{!113, !111, !"polly.alias.scope.MemRef_call1"}
!114 = distinct !{!114, !111, !"polly.alias.scope.MemRef_call2"}
!115 = distinct !{!115, !111, !"polly.alias.scope.Packed_MemRef_call1"}
!116 = distinct !{!116, !111, !"polly.alias.scope.Packed_MemRef_call2"}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !80, !13}
!119 = !{!110, !113, !115, !116}
!120 = !{!110, !114, !115, !116}
!121 = !{!122}
!122 = distinct !{!122, !123}
!123 = distinct !{!123, !"LVerDomain"}
!124 = !{!110, !111, !"polly.alias.scope.MemRef_call", !125}
!125 = distinct !{!125, !123}
!126 = !{!113, !114, !115, !116, !122}
!127 = distinct !{!127, !13}
!128 = distinct !{!128, !13}
!129 = distinct !{!129, !130, !"polly.alias.scope.MemRef_call"}
!130 = distinct !{!130, !"polly.alias.scope.domain"}
!131 = !{!132, !133}
!132 = distinct !{!132, !130, !"polly.alias.scope.MemRef_call1"}
!133 = distinct !{!133, !130, !"polly.alias.scope.MemRef_call2"}
!134 = distinct !{!134, !13}
!135 = !{!132, !129}
!136 = distinct !{!136, !13}
!137 = !{!133, !129}
!138 = distinct !{!138, !13}
!139 = distinct !{!139, !13}
!140 = distinct !{!140, !13}
!141 = distinct !{!141, !13}
!142 = distinct !{!142, !13}
!143 = distinct !{!143, !13}
!144 = distinct !{!144, !13}
!145 = distinct !{!145, !13}
!146 = distinct !{!146, !13}
!147 = distinct !{!147, !13}
!148 = distinct !{!148, !13}
!149 = distinct !{!149, !13}
!150 = distinct !{!150, !13}
!151 = distinct !{!151, !13}
!152 = distinct !{!152, !13}
!153 = distinct !{!153, !13}
!154 = distinct !{!154, !13}
!155 = distinct !{!155, !13}
!156 = distinct !{!156, !13}
