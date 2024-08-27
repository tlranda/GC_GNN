; ModuleID = 'syr2k_recreations//mmp_syr2k_S_56.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_56.c"
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
  %call801 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1653 = bitcast i8* %call1 to double*
  %polly.access.call1662 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1662, %call2
  %polly.access.call2682 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2682, %call1
  %2 = or i1 %0, %1
  %polly.access.call702 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call702, %call2
  %4 = icmp ule i8* %polly.access.call2682, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call702, %call1
  %8 = icmp ule i8* %polly.access.call1662, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header787, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1126 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1125 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1124 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1123 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1123, %scevgep1126
  %bound1 = icmp ult i8* %scevgep1125, %scevgep1124
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
  br i1 %exitcond18.not.i, label %vector.ph1130, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1130:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1137 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1138 = shufflevector <4 x i64> %broadcast.splatinsert1137, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1129

vector.body1129:                                  ; preds = %vector.body1129, %vector.ph1130
  %index1131 = phi i64 [ 0, %vector.ph1130 ], [ %index.next1132, %vector.body1129 ]
  %vec.ind1135 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1130 ], [ %vec.ind.next1136, %vector.body1129 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1135, %broadcast.splat1138
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call801, i64 %indvars.iv7.i, i64 %index1131
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1132 = add i64 %index1131, 4
  %vec.ind.next1136 = add <4 x i64> %vec.ind1135, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1132, 80
  br i1 %40, label %for.inc41.i, label %vector.body1129, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1129
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1130, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit848.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start464, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1486, label %vector.ph1412

vector.ph1412:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1411

vector.body1411:                                  ; preds = %vector.body1411, %vector.ph1412
  %index1413 = phi i64 [ 0, %vector.ph1412 ], [ %index.next1414, %vector.body1411 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call801, i64 %indvars.iv21.i, i64 %index1413
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1414 = add i64 %index1413, 4
  %46 = icmp eq i64 %index.next1414, %n.vec
  br i1 %46, label %middle.block1409, label %vector.body1411, !llvm.loop !18

middle.block1409:                                 ; preds = %vector.body1411
  %cmp.n1416 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1416, label %for.inc6.i, label %for.body3.i46.preheader1486

for.body3.i46.preheader1486:                      ; preds = %for.body3.i46.preheader, %middle.block1409
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1409 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1486, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1486 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call801, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1409, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call801, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting465
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start277, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1432 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1432, label %for.body3.i60.preheader1484, label %vector.ph1433

vector.ph1433:                                    ; preds = %for.body3.i60.preheader
  %n.vec1435 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1431

vector.body1431:                                  ; preds = %vector.body1431, %vector.ph1433
  %index1436 = phi i64 [ 0, %vector.ph1433 ], [ %index.next1437, %vector.body1431 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call801, i64 %indvars.iv21.i52, i64 %index1436
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1440 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1440, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1437 = add i64 %index1436, 4
  %57 = icmp eq i64 %index.next1437, %n.vec1435
  br i1 %57, label %middle.block1429, label %vector.body1431, !llvm.loop !55

middle.block1429:                                 ; preds = %vector.body1431
  %cmp.n1439 = icmp eq i64 %indvars.iv21.i52, %n.vec1435
  br i1 %cmp.n1439, label %for.inc6.i63, label %for.body3.i60.preheader1484

for.body3.i60.preheader1484:                      ; preds = %for.body3.i60.preheader, %middle.block1429
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1435, %middle.block1429 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1484, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1484 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call801, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1429, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call801, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting278
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1458 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1458, label %for.body3.i99.preheader1482, label %vector.ph1459

vector.ph1459:                                    ; preds = %for.body3.i99.preheader
  %n.vec1461 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1457

vector.body1457:                                  ; preds = %vector.body1457, %vector.ph1459
  %index1462 = phi i64 [ 0, %vector.ph1459 ], [ %index.next1463, %vector.body1457 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call801, i64 %indvars.iv21.i91, i64 %index1462
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1466 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1466, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1463 = add i64 %index1462, 4
  %68 = icmp eq i64 %index.next1463, %n.vec1461
  br i1 %68, label %middle.block1455, label %vector.body1457, !llvm.loop !57

middle.block1455:                                 ; preds = %vector.body1457
  %cmp.n1465 = icmp eq i64 %indvars.iv21.i91, %n.vec1461
  br i1 %cmp.n1465, label %for.inc6.i102, label %for.body3.i99.preheader1482

for.body3.i99.preheader1482:                      ; preds = %for.body3.i99.preheader, %middle.block1455
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1461, %middle.block1455 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1482, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1482 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call801, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1455, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call801, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call801, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1470 = phi i64 [ %indvar.next1471, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1470, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1472 = icmp ult i64 %88, 4
  br i1 %min.iters.check1472, label %polly.loop_header191.preheader, label %vector.ph1473

vector.ph1473:                                    ; preds = %polly.loop_header
  %n.vec1475 = and i64 %88, -4
  br label %vector.body1469

vector.body1469:                                  ; preds = %vector.body1469, %vector.ph1473
  %index1476 = phi i64 [ 0, %vector.ph1473 ], [ %index.next1477, %vector.body1469 ]
  %90 = shl nuw nsw i64 %index1476, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1480 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1480, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1477 = add i64 %index1476, 4
  %95 = icmp eq i64 %index.next1477, %n.vec1475
  br i1 %95, label %middle.block1467, label %vector.body1469, !llvm.loop !69

middle.block1467:                                 ; preds = %vector.body1469
  %cmp.n1479 = icmp eq i64 %88, %n.vec1475
  br i1 %cmp.n1479, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1467
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1475, %middle.block1467 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1467
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond981.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1471 = add i64 %indvar1470, 1
  br i1 %exitcond981.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond980.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond980.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv976 = phi i64 [ 7, %polly.loop_header199.preheader ], [ %indvars.iv.next977, %polly.loop_exit207 ]
  %indvars.iv965 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next966, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = udiv i64 %indvars.iv976, 25
  %98 = mul nsw i64 %polly.indvar202, -16
  %99 = shl nsw i64 %polly.indvar202, 4
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -16
  %indvars.iv.next966 = add nuw nsw i64 %indvars.iv965, 16
  %indvars.iv.next977 = add nuw nsw i64 %indvars.iv976, 8
  %exitcond979.not = icmp eq i64 %polly.indvar_next203, 5
  br i1 %exitcond979.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv967 = phi i64 [ %indvars.iv.next968, %polly.loop_exit213 ], [ %indvars.iv965, %polly.loop_header199 ]
  %indvars.iv963 = phi i64 [ %indvars.iv.next964, %polly.loop_exit213 ], [ %indvars.iv, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %100 = mul nuw nsw i64 %polly.indvar208, 50
  %101 = add nsw i64 %100, %98
  %102 = icmp sgt i64 %101, 0
  %103 = select i1 %102, i64 %101, i64 0
  %polly.loop_guard = icmp slt i64 %103, 16
  br i1 %polly.loop_guard, label %polly.loop_header211.preheader, label %polly.loop_exit213

polly.loop_header211.preheader:                   ; preds = %polly.loop_header205
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv963, i64 0)
  %104 = add i64 %smax, %indvars.iv967
  %105 = sub nsw i64 %99, %100
  %106 = icmp eq i64 %polly.indvar208, 0
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit244, %polly.loop_header205
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next964 = add nsw i64 %indvars.iv963, 50
  %indvars.iv.next968 = add nsw i64 %indvars.iv967, -50
  %exitcond978.not = icmp eq i64 %polly.indvar208, %97
  br i1 %exitcond978.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211.preheader, %polly.loop_exit244
  %indvars.iv969 = phi i64 [ %104, %polly.loop_header211.preheader ], [ %indvars.iv.next970, %polly.loop_exit244 ]
  %polly.indvar214 = phi i64 [ %103, %polly.loop_header211.preheader ], [ %polly.indvar_next215, %polly.loop_exit244 ]
  %smin973 = call i64 @llvm.smin.i64(i64 %indvars.iv969, i64 49)
  %107 = add nsw i64 %polly.indvar214, %105
  %polly.loop_guard2271112 = icmp sgt i64 %107, -1
  %108 = add nuw nsw i64 %polly.indvar214, %99
  %109 = icmp ugt i64 %108, 49
  %110 = and i1 %106, %109
  %polly.access.mul.call1236 = mul nsw i64 %108, 60
  br i1 %polly.loop_guard2271112, label %polly.loop_header217.us, label %polly.loop_header211.split

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.merge.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.merge.us ], [ 0, %polly.loop_header211 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 80
  br label %polly.loop_header224.us

polly.loop_header224.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header224.us
  %polly.indvar228.us = phi i64 [ %polly.indvar_next229.us, %polly.loop_header224.us ], [ 0, %polly.loop_header217.us ]
  %111 = add nuw nsw i64 %polly.indvar228.us, %100
  %polly.access.mul.call1232.us = mul nuw nsw i64 %111, 60
  %polly.access.add.call1233.us = add nuw nsw i64 %polly.access.mul.call1232.us, %polly.indvar220.us
  %polly.access.call1234.us = getelementptr double, double* %polly.access.cast.call1653, i64 %polly.access.add.call1233.us
  %polly.access.call1234.load.us = load double, double* %polly.access.call1234.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar228.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1234.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next229.us = add nuw nsw i64 %polly.indvar228.us, 1
  %exitcond971.not = icmp eq i64 %polly.indvar228.us, %smin973
  br i1 %exitcond971.not, label %polly.cond.loopexit.us, label %polly.loop_header224.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1237.us = add nuw nsw i64 %polly.indvar220.us, %polly.access.mul.call1236
  %polly.access.call1238.us = getelementptr double, double* %polly.access.cast.call1653, i64 %polly.access.add.call1237.us
  %polly.access.call1238.load.us = load double, double* %polly.access.call1238.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1240.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %108
  %polly.access.Packed_MemRef_call1241.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.us
  store double %polly.access.call1238.load.us, double* %polly.access.Packed_MemRef_call1241.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond972.not = icmp eq i64 %polly.indvar_next221.us, 60
  br i1 %exitcond972.not, label %polly.loop_header242.preheader, label %polly.loop_header217.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header224.us
  br i1 %110, label %polly.then.us, label %polly.merge.us

polly.loop_header211.split:                       ; preds = %polly.loop_header211
  br i1 %110, label %polly.loop_header217.us872, label %polly.loop_exit244

polly.loop_header217.us872:                       ; preds = %polly.loop_header211.split, %polly.loop_header217.us872
  %polly.indvar220.us873 = phi i64 [ %polly.indvar_next221.us893, %polly.loop_header217.us872 ], [ 0, %polly.loop_header211.split ]
  %polly.access.add.call1237.us886 = add nuw nsw i64 %polly.indvar220.us873, %polly.access.mul.call1236
  %polly.access.call1238.us887 = getelementptr double, double* %polly.access.cast.call1653, i64 %polly.access.add.call1237.us886
  %polly.access.call1238.load.us888 = load double, double* %polly.access.call1238.us887, align 8, !alias.scope !66, !noalias !72
  %polly.access.mul.Packed_MemRef_call1239.us889 = mul nuw nsw i64 %polly.indvar220.us873, 80
  %polly.access.add.Packed_MemRef_call1240.us890 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1239.us889, %108
  %polly.access.Packed_MemRef_call1241.us891 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.us890
  store double %polly.access.call1238.load.us888, double* %polly.access.Packed_MemRef_call1241.us891, align 8
  %polly.indvar_next221.us893 = add nuw nsw i64 %polly.indvar220.us873, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221.us893, 60
  br i1 %exitcond.not, label %polly.loop_header242.preheader, label %polly.loop_header217.us872

polly.loop_exit244:                               ; preds = %polly.loop_exit251.loopexit.us, %polly.loop_header211.split, %polly.loop_header242.preheader
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %polly.loop_cond216 = icmp ult i64 %polly.indvar214, 15
  %indvars.iv.next970 = add i64 %indvars.iv969, 1
  br i1 %polly.loop_cond216, label %polly.loop_header211, label %polly.loop_exit213

polly.loop_header242.preheader:                   ; preds = %polly.loop_header217.us872, %polly.merge.us
  %112 = mul i64 %108, 480
  %113 = mul i64 %108, 640
  br i1 %polly.loop_guard2271112, label %polly.loop_header242.us, label %polly.loop_exit244

polly.loop_header242.us:                          ; preds = %polly.loop_header242.preheader, %polly.loop_exit251.loopexit.us
  %polly.indvar245.us = phi i64 [ %polly.indvar_next246.us, %polly.loop_exit251.loopexit.us ], [ 0, %polly.loop_header242.preheader ]
  %114 = shl nuw nsw i64 %polly.indvar245.us, 3
  %scevgep260.us = getelementptr i8, i8* %call2, i64 %114
  %polly.access.mul.Packed_MemRef_call1256.us = mul nuw nsw i64 %polly.indvar245.us, 80
  %scevgep261.us = getelementptr i8, i8* %scevgep260.us, i64 %112
  %scevgep261262.us = bitcast i8* %scevgep261.us to double*
  %_p_scalar_263.us = load double, double* %scevgep261262.us, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1269.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1256.us, %107
  %polly.access.Packed_MemRef_call1270.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1269.us
  %_p_scalar_271.us = load double, double* %polly.access.Packed_MemRef_call1270.us, align 8
  br label %polly.loop_header249.us

polly.loop_header249.us:                          ; preds = %polly.loop_header249.us, %polly.loop_header242.us
  %polly.indvar253.us = phi i64 [ 0, %polly.loop_header242.us ], [ %polly.indvar_next254.us, %polly.loop_header249.us ]
  %115 = add nuw nsw i64 %polly.indvar253.us, %100
  %polly.access.add.Packed_MemRef_call1257.us = add nuw nsw i64 %polly.indvar253.us, %polly.access.mul.Packed_MemRef_call1256.us
  %polly.access.Packed_MemRef_call1258.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.us
  %_p_scalar_259.us = load double, double* %polly.access.Packed_MemRef_call1258.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_263.us, %_p_scalar_259.us
  %116 = mul nuw nsw i64 %115, 480
  %scevgep265.us = getelementptr i8, i8* %scevgep260.us, i64 %116
  %scevgep265266.us = bitcast i8* %scevgep265.us to double*
  %_p_scalar_267.us = load double, double* %scevgep265266.us, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us = fmul fast double %_p_scalar_271.us, %_p_scalar_267.us
  %117 = shl i64 %115, 3
  %118 = add i64 %117, %113
  %scevgep272.us = getelementptr i8, i8* %call, i64 %118
  %scevgep272273.us = bitcast i8* %scevgep272.us to double*
  %_p_scalar_274.us = load double, double* %scevgep272273.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_274.us
  store double %p_add42.i118.us, double* %scevgep272273.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %exitcond974.not = icmp eq i64 %polly.indvar253.us, %smin973
  br i1 %exitcond974.not, label %polly.loop_exit251.loopexit.us, label %polly.loop_header249.us

polly.loop_exit251.loopexit.us:                   ; preds = %polly.loop_header249.us
  %polly.indvar_next246.us = add nuw nsw i64 %polly.indvar245.us, 1
  %exitcond975.not = icmp eq i64 %polly.indvar_next246.us, 60
  br i1 %exitcond975.not, label %polly.loop_exit244, label %polly.loop_header242.us

polly.start277:                                   ; preds = %kernel_syr2k.exit
  %malloccall279 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header363

polly.exiting278:                                 ; preds = %polly.loop_exit388
  tail call void @free(i8* %malloccall279)
  br label %kernel_syr2k.exit90

polly.loop_header363:                             ; preds = %polly.loop_exit371, %polly.start277
  %indvar1444 = phi i64 [ %indvar.next1445, %polly.loop_exit371 ], [ 0, %polly.start277 ]
  %polly.indvar366 = phi i64 [ %polly.indvar_next367, %polly.loop_exit371 ], [ 1, %polly.start277 ]
  %119 = add i64 %indvar1444, 1
  %120 = mul nuw nsw i64 %polly.indvar366, 640
  %scevgep375 = getelementptr i8, i8* %call, i64 %120
  %min.iters.check1446 = icmp ult i64 %119, 4
  br i1 %min.iters.check1446, label %polly.loop_header369.preheader, label %vector.ph1447

vector.ph1447:                                    ; preds = %polly.loop_header363
  %n.vec1449 = and i64 %119, -4
  br label %vector.body1443

vector.body1443:                                  ; preds = %vector.body1443, %vector.ph1447
  %index1450 = phi i64 [ 0, %vector.ph1447 ], [ %index.next1451, %vector.body1443 ]
  %121 = shl nuw nsw i64 %index1450, 3
  %122 = getelementptr i8, i8* %scevgep375, i64 %121
  %123 = bitcast i8* %122 to <4 x double>*
  %wide.load1454 = load <4 x double>, <4 x double>* %123, align 8, !alias.scope !74, !noalias !76
  %124 = fmul fast <4 x double> %wide.load1454, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %125 = bitcast i8* %122 to <4 x double>*
  store <4 x double> %124, <4 x double>* %125, align 8, !alias.scope !74, !noalias !76
  %index.next1451 = add i64 %index1450, 4
  %126 = icmp eq i64 %index.next1451, %n.vec1449
  br i1 %126, label %middle.block1441, label %vector.body1443, !llvm.loop !80

middle.block1441:                                 ; preds = %vector.body1443
  %cmp.n1453 = icmp eq i64 %119, %n.vec1449
  br i1 %cmp.n1453, label %polly.loop_exit371, label %polly.loop_header369.preheader

polly.loop_header369.preheader:                   ; preds = %polly.loop_header363, %middle.block1441
  %polly.indvar372.ph = phi i64 [ 0, %polly.loop_header363 ], [ %n.vec1449, %middle.block1441 ]
  br label %polly.loop_header369

polly.loop_exit371:                               ; preds = %polly.loop_header369, %middle.block1441
  %polly.indvar_next367 = add nuw nsw i64 %polly.indvar366, 1
  %exitcond1005.not = icmp eq i64 %polly.indvar_next367, 80
  %indvar.next1445 = add i64 %indvar1444, 1
  br i1 %exitcond1005.not, label %polly.loop_header379.preheader, label %polly.loop_header363

polly.loop_header379.preheader:                   ; preds = %polly.loop_exit371
  %Packed_MemRef_call1280 = bitcast i8* %malloccall279 to double*
  br label %polly.loop_header379

polly.loop_header369:                             ; preds = %polly.loop_header369.preheader, %polly.loop_header369
  %polly.indvar372 = phi i64 [ %polly.indvar_next373, %polly.loop_header369 ], [ %polly.indvar372.ph, %polly.loop_header369.preheader ]
  %127 = shl nuw nsw i64 %polly.indvar372, 3
  %scevgep376 = getelementptr i8, i8* %scevgep375, i64 %127
  %scevgep376377 = bitcast i8* %scevgep376 to double*
  %_p_scalar_378 = load double, double* %scevgep376377, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_378, 1.200000e+00
  store double %p_mul.i57, double* %scevgep376377, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next373 = add nuw nsw i64 %polly.indvar372, 1
  %exitcond1004.not = icmp eq i64 %polly.indvar_next373, %polly.indvar366
  br i1 %exitcond1004.not, label %polly.loop_exit371, label %polly.loop_header369, !llvm.loop !81

polly.loop_header379:                             ; preds = %polly.loop_header379.preheader, %polly.loop_exit388
  %indvars.iv1000 = phi i64 [ 7, %polly.loop_header379.preheader ], [ %indvars.iv.next1001, %polly.loop_exit388 ]
  %indvars.iv988 = phi i64 [ 0, %polly.loop_header379.preheader ], [ %indvars.iv.next989, %polly.loop_exit388 ]
  %indvars.iv983 = phi i64 [ 0, %polly.loop_header379.preheader ], [ %indvars.iv.next984, %polly.loop_exit388 ]
  %polly.indvar382 = phi i64 [ 0, %polly.loop_header379.preheader ], [ %polly.indvar_next383, %polly.loop_exit388 ]
  %128 = udiv i64 %indvars.iv1000, 25
  %129 = mul nsw i64 %polly.indvar382, -16
  %130 = shl nsw i64 %polly.indvar382, 4
  br label %polly.loop_header386

polly.loop_exit388:                               ; preds = %polly.loop_exit395
  %polly.indvar_next383 = add nuw nsw i64 %polly.indvar382, 1
  %indvars.iv.next984 = add nsw i64 %indvars.iv983, -16
  %indvars.iv.next989 = add nuw nsw i64 %indvars.iv988, 16
  %indvars.iv.next1001 = add nuw nsw i64 %indvars.iv1000, 8
  %exitcond1003.not = icmp eq i64 %polly.indvar_next383, 5
  br i1 %exitcond1003.not, label %polly.exiting278, label %polly.loop_header379

polly.loop_header386:                             ; preds = %polly.loop_exit395, %polly.loop_header379
  %indvars.iv990 = phi i64 [ %indvars.iv.next991, %polly.loop_exit395 ], [ %indvars.iv988, %polly.loop_header379 ]
  %indvars.iv985 = phi i64 [ %indvars.iv.next986, %polly.loop_exit395 ], [ %indvars.iv983, %polly.loop_header379 ]
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_exit395 ], [ 0, %polly.loop_header379 ]
  %131 = mul nuw nsw i64 %polly.indvar389, 50
  %132 = add nsw i64 %131, %129
  %133 = icmp sgt i64 %132, 0
  %134 = select i1 %133, i64 %132, i64 0
  %polly.loop_guard396 = icmp slt i64 %134, 16
  br i1 %polly.loop_guard396, label %polly.loop_header393.preheader, label %polly.loop_exit395

polly.loop_header393.preheader:                   ; preds = %polly.loop_header386
  %smax987 = call i64 @llvm.smax.i64(i64 %indvars.iv985, i64 0)
  %135 = add i64 %smax987, %indvars.iv990
  %136 = sub nsw i64 %130, %131
  %137 = icmp eq i64 %polly.indvar389, 0
  br label %polly.loop_header393

polly.loop_exit395:                               ; preds = %polly.loop_exit431, %polly.loop_header386
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %indvars.iv.next986 = add nsw i64 %indvars.iv985, 50
  %indvars.iv.next991 = add nsw i64 %indvars.iv990, -50
  %exitcond1002.not = icmp eq i64 %polly.indvar389, %128
  br i1 %exitcond1002.not, label %polly.loop_exit388, label %polly.loop_header386

polly.loop_header393:                             ; preds = %polly.loop_header393.preheader, %polly.loop_exit431
  %indvars.iv992 = phi i64 [ %135, %polly.loop_header393.preheader ], [ %indvars.iv.next993, %polly.loop_exit431 ]
  %polly.indvar397 = phi i64 [ %134, %polly.loop_header393.preheader ], [ %polly.indvar_next398, %polly.loop_exit431 ]
  %smin997 = call i64 @llvm.smin.i64(i64 %indvars.iv992, i64 49)
  %138 = add nsw i64 %polly.indvar397, %136
  %polly.loop_guard4101113 = icmp sgt i64 %138, -1
  %139 = add nuw nsw i64 %polly.indvar397, %130
  %140 = icmp ugt i64 %139, 49
  %141 = and i1 %137, %140
  %polly.access.mul.call1423 = mul nsw i64 %139, 60
  br i1 %polly.loop_guard4101113, label %polly.loop_header400.us, label %polly.loop_header393.split

polly.loop_header400.us:                          ; preds = %polly.loop_header393, %polly.merge419.us
  %polly.indvar403.us = phi i64 [ %polly.indvar_next404.us, %polly.merge419.us ], [ 0, %polly.loop_header393 ]
  %polly.access.mul.Packed_MemRef_call1280.us = mul nuw nsw i64 %polly.indvar403.us, 80
  br label %polly.loop_header407.us

polly.loop_header407.us:                          ; preds = %polly.loop_header400.us, %polly.loop_header407.us
  %polly.indvar411.us = phi i64 [ %polly.indvar_next412.us, %polly.loop_header407.us ], [ 0, %polly.loop_header400.us ]
  %142 = add nuw nsw i64 %polly.indvar411.us, %131
  %polly.access.mul.call1415.us = mul nuw nsw i64 %142, 60
  %polly.access.add.call1416.us = add nuw nsw i64 %polly.access.mul.call1415.us, %polly.indvar403.us
  %polly.access.call1417.us = getelementptr double, double* %polly.access.cast.call1653, i64 %polly.access.add.call1416.us
  %polly.access.call1417.load.us = load double, double* %polly.access.call1417.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1280.us = add nuw nsw i64 %polly.indvar411.us, %polly.access.mul.Packed_MemRef_call1280.us
  %polly.access.Packed_MemRef_call1280.us = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280.us
  store double %polly.access.call1417.load.us, double* %polly.access.Packed_MemRef_call1280.us, align 8
  %polly.indvar_next412.us = add nuw nsw i64 %polly.indvar411.us, 1
  %exitcond995.not = icmp eq i64 %polly.indvar411.us, %smin997
  br i1 %exitcond995.not, label %polly.cond418.loopexit.us, label %polly.loop_header407.us

polly.then420.us:                                 ; preds = %polly.cond418.loopexit.us
  %polly.access.add.call1424.us = add nuw nsw i64 %polly.indvar403.us, %polly.access.mul.call1423
  %polly.access.call1425.us = getelementptr double, double* %polly.access.cast.call1653, i64 %polly.access.add.call1424.us
  %polly.access.call1425.load.us = load double, double* %polly.access.call1425.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1280427.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1280.us, %139
  %polly.access.Packed_MemRef_call1280428.us = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280427.us
  store double %polly.access.call1425.load.us, double* %polly.access.Packed_MemRef_call1280428.us, align 8
  br label %polly.merge419.us

polly.merge419.us:                                ; preds = %polly.then420.us, %polly.cond418.loopexit.us
  %polly.indvar_next404.us = add nuw nsw i64 %polly.indvar403.us, 1
  %exitcond996.not = icmp eq i64 %polly.indvar_next404.us, 60
  br i1 %exitcond996.not, label %polly.loop_header429.preheader, label %polly.loop_header400.us

polly.cond418.loopexit.us:                        ; preds = %polly.loop_header407.us
  br i1 %141, label %polly.then420.us, label %polly.merge419.us

polly.loop_header393.split:                       ; preds = %polly.loop_header393
  br i1 %141, label %polly.loop_header400.us898, label %polly.loop_exit431

polly.loop_header400.us898:                       ; preds = %polly.loop_header393.split, %polly.loop_header400.us898
  %polly.indvar403.us899 = phi i64 [ %polly.indvar_next404.us919, %polly.loop_header400.us898 ], [ 0, %polly.loop_header393.split ]
  %polly.access.add.call1424.us912 = add nuw nsw i64 %polly.indvar403.us899, %polly.access.mul.call1423
  %polly.access.call1425.us913 = getelementptr double, double* %polly.access.cast.call1653, i64 %polly.access.add.call1424.us912
  %polly.access.call1425.load.us914 = load double, double* %polly.access.call1425.us913, align 8, !alias.scope !77, !noalias !82
  %polly.access.mul.Packed_MemRef_call1280426.us915 = mul nuw nsw i64 %polly.indvar403.us899, 80
  %polly.access.add.Packed_MemRef_call1280427.us916 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1280426.us915, %139
  %polly.access.Packed_MemRef_call1280428.us917 = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280427.us916
  store double %polly.access.call1425.load.us914, double* %polly.access.Packed_MemRef_call1280428.us917, align 8
  %polly.indvar_next404.us919 = add nuw nsw i64 %polly.indvar403.us899, 1
  %exitcond982.not = icmp eq i64 %polly.indvar_next404.us919, 60
  br i1 %exitcond982.not, label %polly.loop_header429.preheader, label %polly.loop_header400.us898

polly.loop_exit431:                               ; preds = %polly.loop_exit438.loopexit.us, %polly.loop_header393.split, %polly.loop_header429.preheader
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %polly.loop_cond399 = icmp ult i64 %polly.indvar397, 15
  %indvars.iv.next993 = add i64 %indvars.iv992, 1
  br i1 %polly.loop_cond399, label %polly.loop_header393, label %polly.loop_exit395

polly.loop_header429.preheader:                   ; preds = %polly.loop_header400.us898, %polly.merge419.us
  %143 = mul i64 %139, 480
  %144 = mul i64 %139, 640
  br i1 %polly.loop_guard4101113, label %polly.loop_header429.us, label %polly.loop_exit431

polly.loop_header429.us:                          ; preds = %polly.loop_header429.preheader, %polly.loop_exit438.loopexit.us
  %polly.indvar432.us = phi i64 [ %polly.indvar_next433.us, %polly.loop_exit438.loopexit.us ], [ 0, %polly.loop_header429.preheader ]
  %145 = shl nuw nsw i64 %polly.indvar432.us, 3
  %scevgep447.us = getelementptr i8, i8* %call2, i64 %145
  %polly.access.mul.Packed_MemRef_call1280443.us = mul nuw nsw i64 %polly.indvar432.us, 80
  %scevgep448.us = getelementptr i8, i8* %scevgep447.us, i64 %143
  %scevgep448449.us = bitcast i8* %scevgep448.us to double*
  %_p_scalar_450.us = load double, double* %scevgep448449.us, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1280456.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1280443.us, %138
  %polly.access.Packed_MemRef_call1280457.us = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280456.us
  %_p_scalar_458.us = load double, double* %polly.access.Packed_MemRef_call1280457.us, align 8
  br label %polly.loop_header436.us

polly.loop_header436.us:                          ; preds = %polly.loop_header436.us, %polly.loop_header429.us
  %polly.indvar440.us = phi i64 [ 0, %polly.loop_header429.us ], [ %polly.indvar_next441.us, %polly.loop_header436.us ]
  %146 = add nuw nsw i64 %polly.indvar440.us, %131
  %polly.access.add.Packed_MemRef_call1280444.us = add nuw nsw i64 %polly.indvar440.us, %polly.access.mul.Packed_MemRef_call1280443.us
  %polly.access.Packed_MemRef_call1280445.us = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280444.us
  %_p_scalar_446.us = load double, double* %polly.access.Packed_MemRef_call1280445.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_450.us, %_p_scalar_446.us
  %147 = mul nuw nsw i64 %146, 480
  %scevgep452.us = getelementptr i8, i8* %scevgep447.us, i64 %147
  %scevgep452453.us = bitcast i8* %scevgep452.us to double*
  %_p_scalar_454.us = load double, double* %scevgep452453.us, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us = fmul fast double %_p_scalar_458.us, %_p_scalar_454.us
  %148 = shl i64 %146, 3
  %149 = add i64 %148, %144
  %scevgep459.us = getelementptr i8, i8* %call, i64 %149
  %scevgep459460.us = bitcast i8* %scevgep459.us to double*
  %_p_scalar_461.us = load double, double* %scevgep459460.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_461.us
  store double %p_add42.i79.us, double* %scevgep459460.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next441.us = add nuw nsw i64 %polly.indvar440.us, 1
  %exitcond998.not = icmp eq i64 %polly.indvar440.us, %smin997
  br i1 %exitcond998.not, label %polly.loop_exit438.loopexit.us, label %polly.loop_header436.us

polly.loop_exit438.loopexit.us:                   ; preds = %polly.loop_header436.us
  %polly.indvar_next433.us = add nuw nsw i64 %polly.indvar432.us, 1
  %exitcond999.not = icmp eq i64 %polly.indvar_next433.us, 60
  br i1 %exitcond999.not, label %polly.loop_exit431, label %polly.loop_header429.us

polly.start464:                                   ; preds = %init_array.exit
  %malloccall466 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header550

polly.exiting465:                                 ; preds = %polly.loop_exit575
  tail call void @free(i8* %malloccall466)
  br label %kernel_syr2k.exit

polly.loop_header550:                             ; preds = %polly.loop_exit558, %polly.start464
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit558 ], [ 0, %polly.start464 ]
  %polly.indvar553 = phi i64 [ %polly.indvar_next554, %polly.loop_exit558 ], [ 1, %polly.start464 ]
  %150 = add i64 %indvar, 1
  %151 = mul nuw nsw i64 %polly.indvar553, 640
  %scevgep562 = getelementptr i8, i8* %call, i64 %151
  %min.iters.check1420 = icmp ult i64 %150, 4
  br i1 %min.iters.check1420, label %polly.loop_header556.preheader, label %vector.ph1421

vector.ph1421:                                    ; preds = %polly.loop_header550
  %n.vec1423 = and i64 %150, -4
  br label %vector.body1419

vector.body1419:                                  ; preds = %vector.body1419, %vector.ph1421
  %index1424 = phi i64 [ 0, %vector.ph1421 ], [ %index.next1425, %vector.body1419 ]
  %152 = shl nuw nsw i64 %index1424, 3
  %153 = getelementptr i8, i8* %scevgep562, i64 %152
  %154 = bitcast i8* %153 to <4 x double>*
  %wide.load1428 = load <4 x double>, <4 x double>* %154, align 8, !alias.scope !84, !noalias !86
  %155 = fmul fast <4 x double> %wide.load1428, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %156 = bitcast i8* %153 to <4 x double>*
  store <4 x double> %155, <4 x double>* %156, align 8, !alias.scope !84, !noalias !86
  %index.next1425 = add i64 %index1424, 4
  %157 = icmp eq i64 %index.next1425, %n.vec1423
  br i1 %157, label %middle.block1417, label %vector.body1419, !llvm.loop !90

middle.block1417:                                 ; preds = %vector.body1419
  %cmp.n1427 = icmp eq i64 %150, %n.vec1423
  br i1 %cmp.n1427, label %polly.loop_exit558, label %polly.loop_header556.preheader

polly.loop_header556.preheader:                   ; preds = %polly.loop_header550, %middle.block1417
  %polly.indvar559.ph = phi i64 [ 0, %polly.loop_header550 ], [ %n.vec1423, %middle.block1417 ]
  br label %polly.loop_header556

polly.loop_exit558:                               ; preds = %polly.loop_header556, %middle.block1417
  %polly.indvar_next554 = add nuw nsw i64 %polly.indvar553, 1
  %exitcond1029.not = icmp eq i64 %polly.indvar_next554, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1029.not, label %polly.loop_header566.preheader, label %polly.loop_header550

polly.loop_header566.preheader:                   ; preds = %polly.loop_exit558
  %Packed_MemRef_call1467 = bitcast i8* %malloccall466 to double*
  br label %polly.loop_header566

polly.loop_header556:                             ; preds = %polly.loop_header556.preheader, %polly.loop_header556
  %polly.indvar559 = phi i64 [ %polly.indvar_next560, %polly.loop_header556 ], [ %polly.indvar559.ph, %polly.loop_header556.preheader ]
  %158 = shl nuw nsw i64 %polly.indvar559, 3
  %scevgep563 = getelementptr i8, i8* %scevgep562, i64 %158
  %scevgep563564 = bitcast i8* %scevgep563 to double*
  %_p_scalar_565 = load double, double* %scevgep563564, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_565, 1.200000e+00
  store double %p_mul.i, double* %scevgep563564, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next560 = add nuw nsw i64 %polly.indvar559, 1
  %exitcond1028.not = icmp eq i64 %polly.indvar_next560, %polly.indvar553
  br i1 %exitcond1028.not, label %polly.loop_exit558, label %polly.loop_header556, !llvm.loop !91

polly.loop_header566:                             ; preds = %polly.loop_header566.preheader, %polly.loop_exit575
  %indvars.iv1024 = phi i64 [ 7, %polly.loop_header566.preheader ], [ %indvars.iv.next1025, %polly.loop_exit575 ]
  %indvars.iv1012 = phi i64 [ 0, %polly.loop_header566.preheader ], [ %indvars.iv.next1013, %polly.loop_exit575 ]
  %indvars.iv1007 = phi i64 [ 0, %polly.loop_header566.preheader ], [ %indvars.iv.next1008, %polly.loop_exit575 ]
  %polly.indvar569 = phi i64 [ 0, %polly.loop_header566.preheader ], [ %polly.indvar_next570, %polly.loop_exit575 ]
  %159 = udiv i64 %indvars.iv1024, 25
  %160 = mul nsw i64 %polly.indvar569, -16
  %161 = shl nsw i64 %polly.indvar569, 4
  br label %polly.loop_header573

polly.loop_exit575:                               ; preds = %polly.loop_exit582
  %polly.indvar_next570 = add nuw nsw i64 %polly.indvar569, 1
  %indvars.iv.next1008 = add nsw i64 %indvars.iv1007, -16
  %indvars.iv.next1013 = add nuw nsw i64 %indvars.iv1012, 16
  %indvars.iv.next1025 = add nuw nsw i64 %indvars.iv1024, 8
  %exitcond1027.not = icmp eq i64 %polly.indvar_next570, 5
  br i1 %exitcond1027.not, label %polly.exiting465, label %polly.loop_header566

polly.loop_header573:                             ; preds = %polly.loop_exit582, %polly.loop_header566
  %indvars.iv1014 = phi i64 [ %indvars.iv.next1015, %polly.loop_exit582 ], [ %indvars.iv1012, %polly.loop_header566 ]
  %indvars.iv1009 = phi i64 [ %indvars.iv.next1010, %polly.loop_exit582 ], [ %indvars.iv1007, %polly.loop_header566 ]
  %polly.indvar576 = phi i64 [ %polly.indvar_next577, %polly.loop_exit582 ], [ 0, %polly.loop_header566 ]
  %162 = mul nuw nsw i64 %polly.indvar576, 50
  %163 = add nsw i64 %162, %160
  %164 = icmp sgt i64 %163, 0
  %165 = select i1 %164, i64 %163, i64 0
  %polly.loop_guard583 = icmp slt i64 %165, 16
  br i1 %polly.loop_guard583, label %polly.loop_header580.preheader, label %polly.loop_exit582

polly.loop_header580.preheader:                   ; preds = %polly.loop_header573
  %smax1011 = call i64 @llvm.smax.i64(i64 %indvars.iv1009, i64 0)
  %166 = add i64 %smax1011, %indvars.iv1014
  %167 = sub nsw i64 %161, %162
  %168 = icmp eq i64 %polly.indvar576, 0
  br label %polly.loop_header580

polly.loop_exit582:                               ; preds = %polly.loop_exit618, %polly.loop_header573
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %indvars.iv.next1010 = add nsw i64 %indvars.iv1009, 50
  %indvars.iv.next1015 = add nsw i64 %indvars.iv1014, -50
  %exitcond1026.not = icmp eq i64 %polly.indvar576, %159
  br i1 %exitcond1026.not, label %polly.loop_exit575, label %polly.loop_header573

polly.loop_header580:                             ; preds = %polly.loop_header580.preheader, %polly.loop_exit618
  %indvars.iv1016 = phi i64 [ %166, %polly.loop_header580.preheader ], [ %indvars.iv.next1017, %polly.loop_exit618 ]
  %polly.indvar584 = phi i64 [ %165, %polly.loop_header580.preheader ], [ %polly.indvar_next585, %polly.loop_exit618 ]
  %smin1021 = call i64 @llvm.smin.i64(i64 %indvars.iv1016, i64 49)
  %169 = add nsw i64 %polly.indvar584, %167
  %polly.loop_guard5971114 = icmp sgt i64 %169, -1
  %170 = add nuw nsw i64 %polly.indvar584, %161
  %171 = icmp ugt i64 %170, 49
  %172 = and i1 %168, %171
  %polly.access.mul.call1610 = mul nsw i64 %170, 60
  br i1 %polly.loop_guard5971114, label %polly.loop_header587.us, label %polly.loop_header580.split

polly.loop_header587.us:                          ; preds = %polly.loop_header580, %polly.merge606.us
  %polly.indvar590.us = phi i64 [ %polly.indvar_next591.us, %polly.merge606.us ], [ 0, %polly.loop_header580 ]
  %polly.access.mul.Packed_MemRef_call1467.us = mul nuw nsw i64 %polly.indvar590.us, 80
  br label %polly.loop_header594.us

polly.loop_header594.us:                          ; preds = %polly.loop_header587.us, %polly.loop_header594.us
  %polly.indvar598.us = phi i64 [ %polly.indvar_next599.us, %polly.loop_header594.us ], [ 0, %polly.loop_header587.us ]
  %173 = add nuw nsw i64 %polly.indvar598.us, %162
  %polly.access.mul.call1602.us = mul nuw nsw i64 %173, 60
  %polly.access.add.call1603.us = add nuw nsw i64 %polly.access.mul.call1602.us, %polly.indvar590.us
  %polly.access.call1604.us = getelementptr double, double* %polly.access.cast.call1653, i64 %polly.access.add.call1603.us
  %polly.access.call1604.load.us = load double, double* %polly.access.call1604.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1467.us = add nuw nsw i64 %polly.indvar598.us, %polly.access.mul.Packed_MemRef_call1467.us
  %polly.access.Packed_MemRef_call1467.us = getelementptr double, double* %Packed_MemRef_call1467, i64 %polly.access.add.Packed_MemRef_call1467.us
  store double %polly.access.call1604.load.us, double* %polly.access.Packed_MemRef_call1467.us, align 8
  %polly.indvar_next599.us = add nuw nsw i64 %polly.indvar598.us, 1
  %exitcond1019.not = icmp eq i64 %polly.indvar598.us, %smin1021
  br i1 %exitcond1019.not, label %polly.cond605.loopexit.us, label %polly.loop_header594.us

polly.then607.us:                                 ; preds = %polly.cond605.loopexit.us
  %polly.access.add.call1611.us = add nuw nsw i64 %polly.indvar590.us, %polly.access.mul.call1610
  %polly.access.call1612.us = getelementptr double, double* %polly.access.cast.call1653, i64 %polly.access.add.call1611.us
  %polly.access.call1612.load.us = load double, double* %polly.access.call1612.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1467614.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1467.us, %170
  %polly.access.Packed_MemRef_call1467615.us = getelementptr double, double* %Packed_MemRef_call1467, i64 %polly.access.add.Packed_MemRef_call1467614.us
  store double %polly.access.call1612.load.us, double* %polly.access.Packed_MemRef_call1467615.us, align 8
  br label %polly.merge606.us

polly.merge606.us:                                ; preds = %polly.then607.us, %polly.cond605.loopexit.us
  %polly.indvar_next591.us = add nuw nsw i64 %polly.indvar590.us, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar_next591.us, 60
  br i1 %exitcond1020.not, label %polly.loop_header616.preheader, label %polly.loop_header587.us

polly.cond605.loopexit.us:                        ; preds = %polly.loop_header594.us
  br i1 %172, label %polly.then607.us, label %polly.merge606.us

polly.loop_header580.split:                       ; preds = %polly.loop_header580
  br i1 %172, label %polly.loop_header587.us924, label %polly.loop_exit618

polly.loop_header587.us924:                       ; preds = %polly.loop_header580.split, %polly.loop_header587.us924
  %polly.indvar590.us925 = phi i64 [ %polly.indvar_next591.us945, %polly.loop_header587.us924 ], [ 0, %polly.loop_header580.split ]
  %polly.access.add.call1611.us938 = add nuw nsw i64 %polly.indvar590.us925, %polly.access.mul.call1610
  %polly.access.call1612.us939 = getelementptr double, double* %polly.access.cast.call1653, i64 %polly.access.add.call1611.us938
  %polly.access.call1612.load.us940 = load double, double* %polly.access.call1612.us939, align 8, !alias.scope !87, !noalias !92
  %polly.access.mul.Packed_MemRef_call1467613.us941 = mul nuw nsw i64 %polly.indvar590.us925, 80
  %polly.access.add.Packed_MemRef_call1467614.us942 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1467613.us941, %170
  %polly.access.Packed_MemRef_call1467615.us943 = getelementptr double, double* %Packed_MemRef_call1467, i64 %polly.access.add.Packed_MemRef_call1467614.us942
  store double %polly.access.call1612.load.us940, double* %polly.access.Packed_MemRef_call1467615.us943, align 8
  %polly.indvar_next591.us945 = add nuw nsw i64 %polly.indvar590.us925, 1
  %exitcond1006.not = icmp eq i64 %polly.indvar_next591.us945, 60
  br i1 %exitcond1006.not, label %polly.loop_header616.preheader, label %polly.loop_header587.us924

polly.loop_exit618:                               ; preds = %polly.loop_exit625.loopexit.us, %polly.loop_header580.split, %polly.loop_header616.preheader
  %polly.indvar_next585 = add nuw nsw i64 %polly.indvar584, 1
  %polly.loop_cond586 = icmp ult i64 %polly.indvar584, 15
  %indvars.iv.next1017 = add i64 %indvars.iv1016, 1
  br i1 %polly.loop_cond586, label %polly.loop_header580, label %polly.loop_exit582

polly.loop_header616.preheader:                   ; preds = %polly.loop_header587.us924, %polly.merge606.us
  %174 = mul i64 %170, 480
  %175 = mul i64 %170, 640
  br i1 %polly.loop_guard5971114, label %polly.loop_header616.us, label %polly.loop_exit618

polly.loop_header616.us:                          ; preds = %polly.loop_header616.preheader, %polly.loop_exit625.loopexit.us
  %polly.indvar619.us = phi i64 [ %polly.indvar_next620.us, %polly.loop_exit625.loopexit.us ], [ 0, %polly.loop_header616.preheader ]
  %176 = shl nuw nsw i64 %polly.indvar619.us, 3
  %scevgep634.us = getelementptr i8, i8* %call2, i64 %176
  %polly.access.mul.Packed_MemRef_call1467630.us = mul nuw nsw i64 %polly.indvar619.us, 80
  %scevgep635.us = getelementptr i8, i8* %scevgep634.us, i64 %174
  %scevgep635636.us = bitcast i8* %scevgep635.us to double*
  %_p_scalar_637.us = load double, double* %scevgep635636.us, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1467643.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1467630.us, %169
  %polly.access.Packed_MemRef_call1467644.us = getelementptr double, double* %Packed_MemRef_call1467, i64 %polly.access.add.Packed_MemRef_call1467643.us
  %_p_scalar_645.us = load double, double* %polly.access.Packed_MemRef_call1467644.us, align 8
  br label %polly.loop_header623.us

polly.loop_header623.us:                          ; preds = %polly.loop_header623.us, %polly.loop_header616.us
  %polly.indvar627.us = phi i64 [ 0, %polly.loop_header616.us ], [ %polly.indvar_next628.us, %polly.loop_header623.us ]
  %177 = add nuw nsw i64 %polly.indvar627.us, %162
  %polly.access.add.Packed_MemRef_call1467631.us = add nuw nsw i64 %polly.indvar627.us, %polly.access.mul.Packed_MemRef_call1467630.us
  %polly.access.Packed_MemRef_call1467632.us = getelementptr double, double* %Packed_MemRef_call1467, i64 %polly.access.add.Packed_MemRef_call1467631.us
  %_p_scalar_633.us = load double, double* %polly.access.Packed_MemRef_call1467632.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_637.us, %_p_scalar_633.us
  %178 = mul nuw nsw i64 %177, 480
  %scevgep639.us = getelementptr i8, i8* %scevgep634.us, i64 %178
  %scevgep639640.us = bitcast i8* %scevgep639.us to double*
  %_p_scalar_641.us = load double, double* %scevgep639640.us, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us = fmul fast double %_p_scalar_645.us, %_p_scalar_641.us
  %179 = shl i64 %177, 3
  %180 = add i64 %179, %175
  %scevgep646.us = getelementptr i8, i8* %call, i64 %180
  %scevgep646647.us = bitcast i8* %scevgep646.us to double*
  %_p_scalar_648.us = load double, double* %scevgep646647.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_648.us
  store double %p_add42.i.us, double* %scevgep646647.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next628.us = add nuw nsw i64 %polly.indvar627.us, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar627.us, %smin1021
  br i1 %exitcond1022.not, label %polly.loop_exit625.loopexit.us, label %polly.loop_header623.us

polly.loop_exit625.loopexit.us:                   ; preds = %polly.loop_header623.us
  %polly.indvar_next620.us = add nuw nsw i64 %polly.indvar619.us, 1
  %exitcond1023.not = icmp eq i64 %polly.indvar_next620.us, 60
  br i1 %exitcond1023.not, label %polly.loop_exit618, label %polly.loop_header616.us

polly.loop_header787:                             ; preds = %entry, %polly.loop_exit795
  %polly.indvar790 = phi i64 [ %polly.indvar_next791, %polly.loop_exit795 ], [ 0, %entry ]
  %181 = mul nuw nsw i64 %polly.indvar790, 640
  %182 = trunc i64 %polly.indvar790 to i32
  %broadcast.splatinsert1151 = insertelement <4 x i32> poison, i32 %182, i32 0
  %broadcast.splat1152 = shufflevector <4 x i32> %broadcast.splatinsert1151, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1141

vector.body1141:                                  ; preds = %vector.body1141, %polly.loop_header787
  %index1143 = phi i64 [ 0, %polly.loop_header787 ], [ %index.next1144, %vector.body1141 ]
  %vec.ind1149 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787 ], [ %vec.ind.next1150, %vector.body1141 ]
  %183 = mul <4 x i32> %vec.ind1149, %broadcast.splat1152
  %184 = add <4 x i32> %183, <i32 3, i32 3, i32 3, i32 3>
  %185 = urem <4 x i32> %184, <i32 80, i32 80, i32 80, i32 80>
  %186 = sitofp <4 x i32> %185 to <4 x double>
  %187 = fmul fast <4 x double> %186, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %188 = shl i64 %index1143, 3
  %189 = add nuw nsw i64 %188, %181
  %190 = getelementptr i8, i8* %call, i64 %189
  %191 = bitcast i8* %190 to <4 x double>*
  store <4 x double> %187, <4 x double>* %191, align 8, !alias.scope !94, !noalias !96
  %index.next1144 = add i64 %index1143, 4
  %vec.ind.next1150 = add <4 x i32> %vec.ind1149, <i32 4, i32 4, i32 4, i32 4>
  %192 = icmp eq i64 %index.next1144, 32
  br i1 %192, label %polly.loop_exit795, label %vector.body1141, !llvm.loop !99

polly.loop_exit795:                               ; preds = %vector.body1141
  %polly.indvar_next791 = add nuw nsw i64 %polly.indvar790, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar_next791, 32
  br i1 %exitcond1049.not, label %polly.loop_header787.1, label %polly.loop_header787

polly.loop_header814:                             ; preds = %polly.loop_exit795.2.2, %polly.loop_exit822
  %polly.indvar817 = phi i64 [ %polly.indvar_next818, %polly.loop_exit822 ], [ 0, %polly.loop_exit795.2.2 ]
  %193 = mul nuw nsw i64 %polly.indvar817, 480
  %194 = trunc i64 %polly.indvar817 to i32
  %broadcast.splatinsert1265 = insertelement <4 x i32> poison, i32 %194, i32 0
  %broadcast.splat1266 = shufflevector <4 x i32> %broadcast.splatinsert1265, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1255

vector.body1255:                                  ; preds = %vector.body1255, %polly.loop_header814
  %index1257 = phi i64 [ 0, %polly.loop_header814 ], [ %index.next1258, %vector.body1255 ]
  %vec.ind1263 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header814 ], [ %vec.ind.next1264, %vector.body1255 ]
  %195 = mul <4 x i32> %vec.ind1263, %broadcast.splat1266
  %196 = add <4 x i32> %195, <i32 2, i32 2, i32 2, i32 2>
  %197 = urem <4 x i32> %196, <i32 60, i32 60, i32 60, i32 60>
  %198 = sitofp <4 x i32> %197 to <4 x double>
  %199 = fmul fast <4 x double> %198, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %200 = shl i64 %index1257, 3
  %201 = add i64 %200, %193
  %202 = getelementptr i8, i8* %call2, i64 %201
  %203 = bitcast i8* %202 to <4 x double>*
  store <4 x double> %199, <4 x double>* %203, align 8, !alias.scope !98, !noalias !100
  %index.next1258 = add i64 %index1257, 4
  %vec.ind.next1264 = add <4 x i32> %vec.ind1263, <i32 4, i32 4, i32 4, i32 4>
  %204 = icmp eq i64 %index.next1258, 32
  br i1 %204, label %polly.loop_exit822, label %vector.body1255, !llvm.loop !101

polly.loop_exit822:                               ; preds = %vector.body1255
  %polly.indvar_next818 = add nuw nsw i64 %polly.indvar817, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar_next818, 32
  br i1 %exitcond1040.not, label %polly.loop_header814.1, label %polly.loop_header814

polly.loop_header840:                             ; preds = %polly.loop_exit822.1.2, %polly.loop_exit848
  %polly.indvar843 = phi i64 [ %polly.indvar_next844, %polly.loop_exit848 ], [ 0, %polly.loop_exit822.1.2 ]
  %205 = mul nuw nsw i64 %polly.indvar843, 480
  %206 = trunc i64 %polly.indvar843 to i32
  %broadcast.splatinsert1343 = insertelement <4 x i32> poison, i32 %206, i32 0
  %broadcast.splat1344 = shufflevector <4 x i32> %broadcast.splatinsert1343, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1333

vector.body1333:                                  ; preds = %vector.body1333, %polly.loop_header840
  %index1335 = phi i64 [ 0, %polly.loop_header840 ], [ %index.next1336, %vector.body1333 ]
  %vec.ind1341 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header840 ], [ %vec.ind.next1342, %vector.body1333 ]
  %207 = mul <4 x i32> %vec.ind1341, %broadcast.splat1344
  %208 = add <4 x i32> %207, <i32 1, i32 1, i32 1, i32 1>
  %209 = urem <4 x i32> %208, <i32 80, i32 80, i32 80, i32 80>
  %210 = sitofp <4 x i32> %209 to <4 x double>
  %211 = fmul fast <4 x double> %210, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %212 = shl i64 %index1335, 3
  %213 = add i64 %212, %205
  %214 = getelementptr i8, i8* %call1, i64 %213
  %215 = bitcast i8* %214 to <4 x double>*
  store <4 x double> %211, <4 x double>* %215, align 8, !alias.scope !97, !noalias !102
  %index.next1336 = add i64 %index1335, 4
  %vec.ind.next1342 = add <4 x i32> %vec.ind1341, <i32 4, i32 4, i32 4, i32 4>
  %216 = icmp eq i64 %index.next1336, 32
  br i1 %216, label %polly.loop_exit848, label %vector.body1333, !llvm.loop !103

polly.loop_exit848:                               ; preds = %vector.body1333
  %polly.indvar_next844 = add nuw nsw i64 %polly.indvar843, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar_next844, 32
  br i1 %exitcond1034.not, label %polly.loop_header840.1, label %polly.loop_header840

polly.loop_header840.1:                           ; preds = %polly.loop_exit848, %polly.loop_exit848.1
  %polly.indvar843.1 = phi i64 [ %polly.indvar_next844.1, %polly.loop_exit848.1 ], [ 0, %polly.loop_exit848 ]
  %217 = mul nuw nsw i64 %polly.indvar843.1, 480
  %218 = trunc i64 %polly.indvar843.1 to i32
  %broadcast.splatinsert1355 = insertelement <4 x i32> poison, i32 %218, i32 0
  %broadcast.splat1356 = shufflevector <4 x i32> %broadcast.splatinsert1355, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1347

vector.body1347:                                  ; preds = %vector.body1347, %polly.loop_header840.1
  %index1349 = phi i64 [ 0, %polly.loop_header840.1 ], [ %index.next1350, %vector.body1347 ]
  %vec.ind1353 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header840.1 ], [ %vec.ind.next1354, %vector.body1347 ]
  %219 = add nuw nsw <4 x i64> %vec.ind1353, <i64 32, i64 32, i64 32, i64 32>
  %220 = trunc <4 x i64> %219 to <4 x i32>
  %221 = mul <4 x i32> %broadcast.splat1356, %220
  %222 = add <4 x i32> %221, <i32 1, i32 1, i32 1, i32 1>
  %223 = urem <4 x i32> %222, <i32 80, i32 80, i32 80, i32 80>
  %224 = sitofp <4 x i32> %223 to <4 x double>
  %225 = fmul fast <4 x double> %224, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %226 = extractelement <4 x i64> %219, i32 0
  %227 = shl i64 %226, 3
  %228 = add i64 %227, %217
  %229 = getelementptr i8, i8* %call1, i64 %228
  %230 = bitcast i8* %229 to <4 x double>*
  store <4 x double> %225, <4 x double>* %230, align 8, !alias.scope !97, !noalias !102
  %index.next1350 = add i64 %index1349, 4
  %vec.ind.next1354 = add <4 x i64> %vec.ind1353, <i64 4, i64 4, i64 4, i64 4>
  %231 = icmp eq i64 %index.next1350, 28
  br i1 %231, label %polly.loop_exit848.1, label %vector.body1347, !llvm.loop !104

polly.loop_exit848.1:                             ; preds = %vector.body1347
  %polly.indvar_next844.1 = add nuw nsw i64 %polly.indvar843.1, 1
  %exitcond1034.1.not = icmp eq i64 %polly.indvar_next844.1, 32
  br i1 %exitcond1034.1.not, label %polly.loop_header840.11057, label %polly.loop_header840.1

polly.loop_header840.11057:                       ; preds = %polly.loop_exit848.1, %polly.loop_exit848.11068
  %polly.indvar843.11056 = phi i64 [ %polly.indvar_next844.11066, %polly.loop_exit848.11068 ], [ 0, %polly.loop_exit848.1 ]
  %232 = add nuw nsw i64 %polly.indvar843.11056, 32
  %233 = mul nuw nsw i64 %232, 480
  %234 = trunc i64 %232 to i32
  %broadcast.splatinsert1369 = insertelement <4 x i32> poison, i32 %234, i32 0
  %broadcast.splat1370 = shufflevector <4 x i32> %broadcast.splatinsert1369, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1359

vector.body1359:                                  ; preds = %vector.body1359, %polly.loop_header840.11057
  %index1361 = phi i64 [ 0, %polly.loop_header840.11057 ], [ %index.next1362, %vector.body1359 ]
  %vec.ind1367 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header840.11057 ], [ %vec.ind.next1368, %vector.body1359 ]
  %235 = mul <4 x i32> %vec.ind1367, %broadcast.splat1370
  %236 = add <4 x i32> %235, <i32 1, i32 1, i32 1, i32 1>
  %237 = urem <4 x i32> %236, <i32 80, i32 80, i32 80, i32 80>
  %238 = sitofp <4 x i32> %237 to <4 x double>
  %239 = fmul fast <4 x double> %238, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %240 = shl i64 %index1361, 3
  %241 = add i64 %240, %233
  %242 = getelementptr i8, i8* %call1, i64 %241
  %243 = bitcast i8* %242 to <4 x double>*
  store <4 x double> %239, <4 x double>* %243, align 8, !alias.scope !97, !noalias !102
  %index.next1362 = add i64 %index1361, 4
  %vec.ind.next1368 = add <4 x i32> %vec.ind1367, <i32 4, i32 4, i32 4, i32 4>
  %244 = icmp eq i64 %index.next1362, 32
  br i1 %244, label %polly.loop_exit848.11068, label %vector.body1359, !llvm.loop !105

polly.loop_exit848.11068:                         ; preds = %vector.body1359
  %polly.indvar_next844.11066 = add nuw nsw i64 %polly.indvar843.11056, 1
  %exitcond1034.11067.not = icmp eq i64 %polly.indvar_next844.11066, 32
  br i1 %exitcond1034.11067.not, label %polly.loop_header840.1.1, label %polly.loop_header840.11057

polly.loop_header840.1.1:                         ; preds = %polly.loop_exit848.11068, %polly.loop_exit848.1.1
  %polly.indvar843.1.1 = phi i64 [ %polly.indvar_next844.1.1, %polly.loop_exit848.1.1 ], [ 0, %polly.loop_exit848.11068 ]
  %245 = add nuw nsw i64 %polly.indvar843.1.1, 32
  %246 = mul nuw nsw i64 %245, 480
  %247 = trunc i64 %245 to i32
  %broadcast.splatinsert1381 = insertelement <4 x i32> poison, i32 %247, i32 0
  %broadcast.splat1382 = shufflevector <4 x i32> %broadcast.splatinsert1381, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1373

vector.body1373:                                  ; preds = %vector.body1373, %polly.loop_header840.1.1
  %index1375 = phi i64 [ 0, %polly.loop_header840.1.1 ], [ %index.next1376, %vector.body1373 ]
  %vec.ind1379 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header840.1.1 ], [ %vec.ind.next1380, %vector.body1373 ]
  %248 = add nuw nsw <4 x i64> %vec.ind1379, <i64 32, i64 32, i64 32, i64 32>
  %249 = trunc <4 x i64> %248 to <4 x i32>
  %250 = mul <4 x i32> %broadcast.splat1382, %249
  %251 = add <4 x i32> %250, <i32 1, i32 1, i32 1, i32 1>
  %252 = urem <4 x i32> %251, <i32 80, i32 80, i32 80, i32 80>
  %253 = sitofp <4 x i32> %252 to <4 x double>
  %254 = fmul fast <4 x double> %253, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %255 = extractelement <4 x i64> %248, i32 0
  %256 = shl i64 %255, 3
  %257 = add i64 %256, %246
  %258 = getelementptr i8, i8* %call1, i64 %257
  %259 = bitcast i8* %258 to <4 x double>*
  store <4 x double> %254, <4 x double>* %259, align 8, !alias.scope !97, !noalias !102
  %index.next1376 = add i64 %index1375, 4
  %vec.ind.next1380 = add <4 x i64> %vec.ind1379, <i64 4, i64 4, i64 4, i64 4>
  %260 = icmp eq i64 %index.next1376, 28
  br i1 %260, label %polly.loop_exit848.1.1, label %vector.body1373, !llvm.loop !106

polly.loop_exit848.1.1:                           ; preds = %vector.body1373
  %polly.indvar_next844.1.1 = add nuw nsw i64 %polly.indvar843.1.1, 1
  %exitcond1034.1.1.not = icmp eq i64 %polly.indvar_next844.1.1, 32
  br i1 %exitcond1034.1.1.not, label %polly.loop_header840.2, label %polly.loop_header840.1.1

polly.loop_header840.2:                           ; preds = %polly.loop_exit848.1.1, %polly.loop_exit848.2
  %polly.indvar843.2 = phi i64 [ %polly.indvar_next844.2, %polly.loop_exit848.2 ], [ 0, %polly.loop_exit848.1.1 ]
  %261 = add nuw nsw i64 %polly.indvar843.2, 64
  %262 = mul nuw nsw i64 %261, 480
  %263 = trunc i64 %261 to i32
  %broadcast.splatinsert1395 = insertelement <4 x i32> poison, i32 %263, i32 0
  %broadcast.splat1396 = shufflevector <4 x i32> %broadcast.splatinsert1395, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1385

vector.body1385:                                  ; preds = %vector.body1385, %polly.loop_header840.2
  %index1387 = phi i64 [ 0, %polly.loop_header840.2 ], [ %index.next1388, %vector.body1385 ]
  %vec.ind1393 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header840.2 ], [ %vec.ind.next1394, %vector.body1385 ]
  %264 = mul <4 x i32> %vec.ind1393, %broadcast.splat1396
  %265 = add <4 x i32> %264, <i32 1, i32 1, i32 1, i32 1>
  %266 = urem <4 x i32> %265, <i32 80, i32 80, i32 80, i32 80>
  %267 = sitofp <4 x i32> %266 to <4 x double>
  %268 = fmul fast <4 x double> %267, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %269 = shl i64 %index1387, 3
  %270 = add i64 %269, %262
  %271 = getelementptr i8, i8* %call1, i64 %270
  %272 = bitcast i8* %271 to <4 x double>*
  store <4 x double> %268, <4 x double>* %272, align 8, !alias.scope !97, !noalias !102
  %index.next1388 = add i64 %index1387, 4
  %vec.ind.next1394 = add <4 x i32> %vec.ind1393, <i32 4, i32 4, i32 4, i32 4>
  %273 = icmp eq i64 %index.next1388, 32
  br i1 %273, label %polly.loop_exit848.2, label %vector.body1385, !llvm.loop !107

polly.loop_exit848.2:                             ; preds = %vector.body1385
  %polly.indvar_next844.2 = add nuw nsw i64 %polly.indvar843.2, 1
  %exitcond1034.2.not = icmp eq i64 %polly.indvar_next844.2, 16
  br i1 %exitcond1034.2.not, label %polly.loop_header840.1.2, label %polly.loop_header840.2

polly.loop_header840.1.2:                         ; preds = %polly.loop_exit848.2, %polly.loop_exit848.1.2
  %polly.indvar843.1.2 = phi i64 [ %polly.indvar_next844.1.2, %polly.loop_exit848.1.2 ], [ 0, %polly.loop_exit848.2 ]
  %274 = add nuw nsw i64 %polly.indvar843.1.2, 64
  %275 = mul nuw nsw i64 %274, 480
  %276 = trunc i64 %274 to i32
  %broadcast.splatinsert1407 = insertelement <4 x i32> poison, i32 %276, i32 0
  %broadcast.splat1408 = shufflevector <4 x i32> %broadcast.splatinsert1407, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1399

vector.body1399:                                  ; preds = %vector.body1399, %polly.loop_header840.1.2
  %index1401 = phi i64 [ 0, %polly.loop_header840.1.2 ], [ %index.next1402, %vector.body1399 ]
  %vec.ind1405 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header840.1.2 ], [ %vec.ind.next1406, %vector.body1399 ]
  %277 = add nuw nsw <4 x i64> %vec.ind1405, <i64 32, i64 32, i64 32, i64 32>
  %278 = trunc <4 x i64> %277 to <4 x i32>
  %279 = mul <4 x i32> %broadcast.splat1408, %278
  %280 = add <4 x i32> %279, <i32 1, i32 1, i32 1, i32 1>
  %281 = urem <4 x i32> %280, <i32 80, i32 80, i32 80, i32 80>
  %282 = sitofp <4 x i32> %281 to <4 x double>
  %283 = fmul fast <4 x double> %282, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %284 = extractelement <4 x i64> %277, i32 0
  %285 = shl i64 %284, 3
  %286 = add i64 %285, %275
  %287 = getelementptr i8, i8* %call1, i64 %286
  %288 = bitcast i8* %287 to <4 x double>*
  store <4 x double> %283, <4 x double>* %288, align 8, !alias.scope !97, !noalias !102
  %index.next1402 = add i64 %index1401, 4
  %vec.ind.next1406 = add <4 x i64> %vec.ind1405, <i64 4, i64 4, i64 4, i64 4>
  %289 = icmp eq i64 %index.next1402, 28
  br i1 %289, label %polly.loop_exit848.1.2, label %vector.body1399, !llvm.loop !108

polly.loop_exit848.1.2:                           ; preds = %vector.body1399
  %polly.indvar_next844.1.2 = add nuw nsw i64 %polly.indvar843.1.2, 1
  %exitcond1034.1.2.not = icmp eq i64 %polly.indvar_next844.1.2, 16
  br i1 %exitcond1034.1.2.not, label %init_array.exit, label %polly.loop_header840.1.2

polly.loop_header814.1:                           ; preds = %polly.loop_exit822, %polly.loop_exit822.1
  %polly.indvar817.1 = phi i64 [ %polly.indvar_next818.1, %polly.loop_exit822.1 ], [ 0, %polly.loop_exit822 ]
  %290 = mul nuw nsw i64 %polly.indvar817.1, 480
  %291 = trunc i64 %polly.indvar817.1 to i32
  %broadcast.splatinsert1277 = insertelement <4 x i32> poison, i32 %291, i32 0
  %broadcast.splat1278 = shufflevector <4 x i32> %broadcast.splatinsert1277, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1269

vector.body1269:                                  ; preds = %vector.body1269, %polly.loop_header814.1
  %index1271 = phi i64 [ 0, %polly.loop_header814.1 ], [ %index.next1272, %vector.body1269 ]
  %vec.ind1275 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header814.1 ], [ %vec.ind.next1276, %vector.body1269 ]
  %292 = add nuw nsw <4 x i64> %vec.ind1275, <i64 32, i64 32, i64 32, i64 32>
  %293 = trunc <4 x i64> %292 to <4 x i32>
  %294 = mul <4 x i32> %broadcast.splat1278, %293
  %295 = add <4 x i32> %294, <i32 2, i32 2, i32 2, i32 2>
  %296 = urem <4 x i32> %295, <i32 60, i32 60, i32 60, i32 60>
  %297 = sitofp <4 x i32> %296 to <4 x double>
  %298 = fmul fast <4 x double> %297, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %299 = extractelement <4 x i64> %292, i32 0
  %300 = shl i64 %299, 3
  %301 = add i64 %300, %290
  %302 = getelementptr i8, i8* %call2, i64 %301
  %303 = bitcast i8* %302 to <4 x double>*
  store <4 x double> %298, <4 x double>* %303, align 8, !alias.scope !98, !noalias !100
  %index.next1272 = add i64 %index1271, 4
  %vec.ind.next1276 = add <4 x i64> %vec.ind1275, <i64 4, i64 4, i64 4, i64 4>
  %304 = icmp eq i64 %index.next1272, 28
  br i1 %304, label %polly.loop_exit822.1, label %vector.body1269, !llvm.loop !109

polly.loop_exit822.1:                             ; preds = %vector.body1269
  %polly.indvar_next818.1 = add nuw nsw i64 %polly.indvar817.1, 1
  %exitcond1040.1.not = icmp eq i64 %polly.indvar_next818.1, 32
  br i1 %exitcond1040.1.not, label %polly.loop_header814.11071, label %polly.loop_header814.1

polly.loop_header814.11071:                       ; preds = %polly.loop_exit822.1, %polly.loop_exit822.11082
  %polly.indvar817.11070 = phi i64 [ %polly.indvar_next818.11080, %polly.loop_exit822.11082 ], [ 0, %polly.loop_exit822.1 ]
  %305 = add nuw nsw i64 %polly.indvar817.11070, 32
  %306 = mul nuw nsw i64 %305, 480
  %307 = trunc i64 %305 to i32
  %broadcast.splatinsert1291 = insertelement <4 x i32> poison, i32 %307, i32 0
  %broadcast.splat1292 = shufflevector <4 x i32> %broadcast.splatinsert1291, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1281

vector.body1281:                                  ; preds = %vector.body1281, %polly.loop_header814.11071
  %index1283 = phi i64 [ 0, %polly.loop_header814.11071 ], [ %index.next1284, %vector.body1281 ]
  %vec.ind1289 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header814.11071 ], [ %vec.ind.next1290, %vector.body1281 ]
  %308 = mul <4 x i32> %vec.ind1289, %broadcast.splat1292
  %309 = add <4 x i32> %308, <i32 2, i32 2, i32 2, i32 2>
  %310 = urem <4 x i32> %309, <i32 60, i32 60, i32 60, i32 60>
  %311 = sitofp <4 x i32> %310 to <4 x double>
  %312 = fmul fast <4 x double> %311, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %313 = shl i64 %index1283, 3
  %314 = add i64 %313, %306
  %315 = getelementptr i8, i8* %call2, i64 %314
  %316 = bitcast i8* %315 to <4 x double>*
  store <4 x double> %312, <4 x double>* %316, align 8, !alias.scope !98, !noalias !100
  %index.next1284 = add i64 %index1283, 4
  %vec.ind.next1290 = add <4 x i32> %vec.ind1289, <i32 4, i32 4, i32 4, i32 4>
  %317 = icmp eq i64 %index.next1284, 32
  br i1 %317, label %polly.loop_exit822.11082, label %vector.body1281, !llvm.loop !110

polly.loop_exit822.11082:                         ; preds = %vector.body1281
  %polly.indvar_next818.11080 = add nuw nsw i64 %polly.indvar817.11070, 1
  %exitcond1040.11081.not = icmp eq i64 %polly.indvar_next818.11080, 32
  br i1 %exitcond1040.11081.not, label %polly.loop_header814.1.1, label %polly.loop_header814.11071

polly.loop_header814.1.1:                         ; preds = %polly.loop_exit822.11082, %polly.loop_exit822.1.1
  %polly.indvar817.1.1 = phi i64 [ %polly.indvar_next818.1.1, %polly.loop_exit822.1.1 ], [ 0, %polly.loop_exit822.11082 ]
  %318 = add nuw nsw i64 %polly.indvar817.1.1, 32
  %319 = mul nuw nsw i64 %318, 480
  %320 = trunc i64 %318 to i32
  %broadcast.splatinsert1303 = insertelement <4 x i32> poison, i32 %320, i32 0
  %broadcast.splat1304 = shufflevector <4 x i32> %broadcast.splatinsert1303, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1295

vector.body1295:                                  ; preds = %vector.body1295, %polly.loop_header814.1.1
  %index1297 = phi i64 [ 0, %polly.loop_header814.1.1 ], [ %index.next1298, %vector.body1295 ]
  %vec.ind1301 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header814.1.1 ], [ %vec.ind.next1302, %vector.body1295 ]
  %321 = add nuw nsw <4 x i64> %vec.ind1301, <i64 32, i64 32, i64 32, i64 32>
  %322 = trunc <4 x i64> %321 to <4 x i32>
  %323 = mul <4 x i32> %broadcast.splat1304, %322
  %324 = add <4 x i32> %323, <i32 2, i32 2, i32 2, i32 2>
  %325 = urem <4 x i32> %324, <i32 60, i32 60, i32 60, i32 60>
  %326 = sitofp <4 x i32> %325 to <4 x double>
  %327 = fmul fast <4 x double> %326, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %328 = extractelement <4 x i64> %321, i32 0
  %329 = shl i64 %328, 3
  %330 = add i64 %329, %319
  %331 = getelementptr i8, i8* %call2, i64 %330
  %332 = bitcast i8* %331 to <4 x double>*
  store <4 x double> %327, <4 x double>* %332, align 8, !alias.scope !98, !noalias !100
  %index.next1298 = add i64 %index1297, 4
  %vec.ind.next1302 = add <4 x i64> %vec.ind1301, <i64 4, i64 4, i64 4, i64 4>
  %333 = icmp eq i64 %index.next1298, 28
  br i1 %333, label %polly.loop_exit822.1.1, label %vector.body1295, !llvm.loop !111

polly.loop_exit822.1.1:                           ; preds = %vector.body1295
  %polly.indvar_next818.1.1 = add nuw nsw i64 %polly.indvar817.1.1, 1
  %exitcond1040.1.1.not = icmp eq i64 %polly.indvar_next818.1.1, 32
  br i1 %exitcond1040.1.1.not, label %polly.loop_header814.2, label %polly.loop_header814.1.1

polly.loop_header814.2:                           ; preds = %polly.loop_exit822.1.1, %polly.loop_exit822.2
  %polly.indvar817.2 = phi i64 [ %polly.indvar_next818.2, %polly.loop_exit822.2 ], [ 0, %polly.loop_exit822.1.1 ]
  %334 = add nuw nsw i64 %polly.indvar817.2, 64
  %335 = mul nuw nsw i64 %334, 480
  %336 = trunc i64 %334 to i32
  %broadcast.splatinsert1317 = insertelement <4 x i32> poison, i32 %336, i32 0
  %broadcast.splat1318 = shufflevector <4 x i32> %broadcast.splatinsert1317, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1307

vector.body1307:                                  ; preds = %vector.body1307, %polly.loop_header814.2
  %index1309 = phi i64 [ 0, %polly.loop_header814.2 ], [ %index.next1310, %vector.body1307 ]
  %vec.ind1315 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header814.2 ], [ %vec.ind.next1316, %vector.body1307 ]
  %337 = mul <4 x i32> %vec.ind1315, %broadcast.splat1318
  %338 = add <4 x i32> %337, <i32 2, i32 2, i32 2, i32 2>
  %339 = urem <4 x i32> %338, <i32 60, i32 60, i32 60, i32 60>
  %340 = sitofp <4 x i32> %339 to <4 x double>
  %341 = fmul fast <4 x double> %340, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %342 = shl i64 %index1309, 3
  %343 = add i64 %342, %335
  %344 = getelementptr i8, i8* %call2, i64 %343
  %345 = bitcast i8* %344 to <4 x double>*
  store <4 x double> %341, <4 x double>* %345, align 8, !alias.scope !98, !noalias !100
  %index.next1310 = add i64 %index1309, 4
  %vec.ind.next1316 = add <4 x i32> %vec.ind1315, <i32 4, i32 4, i32 4, i32 4>
  %346 = icmp eq i64 %index.next1310, 32
  br i1 %346, label %polly.loop_exit822.2, label %vector.body1307, !llvm.loop !112

polly.loop_exit822.2:                             ; preds = %vector.body1307
  %polly.indvar_next818.2 = add nuw nsw i64 %polly.indvar817.2, 1
  %exitcond1040.2.not = icmp eq i64 %polly.indvar_next818.2, 16
  br i1 %exitcond1040.2.not, label %polly.loop_header814.1.2, label %polly.loop_header814.2

polly.loop_header814.1.2:                         ; preds = %polly.loop_exit822.2, %polly.loop_exit822.1.2
  %polly.indvar817.1.2 = phi i64 [ %polly.indvar_next818.1.2, %polly.loop_exit822.1.2 ], [ 0, %polly.loop_exit822.2 ]
  %347 = add nuw nsw i64 %polly.indvar817.1.2, 64
  %348 = mul nuw nsw i64 %347, 480
  %349 = trunc i64 %347 to i32
  %broadcast.splatinsert1329 = insertelement <4 x i32> poison, i32 %349, i32 0
  %broadcast.splat1330 = shufflevector <4 x i32> %broadcast.splatinsert1329, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1321

vector.body1321:                                  ; preds = %vector.body1321, %polly.loop_header814.1.2
  %index1323 = phi i64 [ 0, %polly.loop_header814.1.2 ], [ %index.next1324, %vector.body1321 ]
  %vec.ind1327 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header814.1.2 ], [ %vec.ind.next1328, %vector.body1321 ]
  %350 = add nuw nsw <4 x i64> %vec.ind1327, <i64 32, i64 32, i64 32, i64 32>
  %351 = trunc <4 x i64> %350 to <4 x i32>
  %352 = mul <4 x i32> %broadcast.splat1330, %351
  %353 = add <4 x i32> %352, <i32 2, i32 2, i32 2, i32 2>
  %354 = urem <4 x i32> %353, <i32 60, i32 60, i32 60, i32 60>
  %355 = sitofp <4 x i32> %354 to <4 x double>
  %356 = fmul fast <4 x double> %355, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %357 = extractelement <4 x i64> %350, i32 0
  %358 = shl i64 %357, 3
  %359 = add i64 %358, %348
  %360 = getelementptr i8, i8* %call2, i64 %359
  %361 = bitcast i8* %360 to <4 x double>*
  store <4 x double> %356, <4 x double>* %361, align 8, !alias.scope !98, !noalias !100
  %index.next1324 = add i64 %index1323, 4
  %vec.ind.next1328 = add <4 x i64> %vec.ind1327, <i64 4, i64 4, i64 4, i64 4>
  %362 = icmp eq i64 %index.next1324, 28
  br i1 %362, label %polly.loop_exit822.1.2, label %vector.body1321, !llvm.loop !113

polly.loop_exit822.1.2:                           ; preds = %vector.body1321
  %polly.indvar_next818.1.2 = add nuw nsw i64 %polly.indvar817.1.2, 1
  %exitcond1040.1.2.not = icmp eq i64 %polly.indvar_next818.1.2, 16
  br i1 %exitcond1040.1.2.not, label %polly.loop_header840, label %polly.loop_header814.1.2

polly.loop_header787.1:                           ; preds = %polly.loop_exit795, %polly.loop_exit795.1
  %polly.indvar790.1 = phi i64 [ %polly.indvar_next791.1, %polly.loop_exit795.1 ], [ 0, %polly.loop_exit795 ]
  %363 = mul nuw nsw i64 %polly.indvar790.1, 640
  %364 = trunc i64 %polly.indvar790.1 to i32
  %broadcast.splatinsert1163 = insertelement <4 x i32> poison, i32 %364, i32 0
  %broadcast.splat1164 = shufflevector <4 x i32> %broadcast.splatinsert1163, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1155

vector.body1155:                                  ; preds = %vector.body1155, %polly.loop_header787.1
  %index1157 = phi i64 [ 0, %polly.loop_header787.1 ], [ %index.next1158, %vector.body1155 ]
  %vec.ind1161 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1 ], [ %vec.ind.next1162, %vector.body1155 ]
  %365 = add nuw nsw <4 x i64> %vec.ind1161, <i64 32, i64 32, i64 32, i64 32>
  %366 = trunc <4 x i64> %365 to <4 x i32>
  %367 = mul <4 x i32> %broadcast.splat1164, %366
  %368 = add <4 x i32> %367, <i32 3, i32 3, i32 3, i32 3>
  %369 = urem <4 x i32> %368, <i32 80, i32 80, i32 80, i32 80>
  %370 = sitofp <4 x i32> %369 to <4 x double>
  %371 = fmul fast <4 x double> %370, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %372 = extractelement <4 x i64> %365, i32 0
  %373 = shl i64 %372, 3
  %374 = add nuw nsw i64 %373, %363
  %375 = getelementptr i8, i8* %call, i64 %374
  %376 = bitcast i8* %375 to <4 x double>*
  store <4 x double> %371, <4 x double>* %376, align 8, !alias.scope !94, !noalias !96
  %index.next1158 = add i64 %index1157, 4
  %vec.ind.next1162 = add <4 x i64> %vec.ind1161, <i64 4, i64 4, i64 4, i64 4>
  %377 = icmp eq i64 %index.next1158, 32
  br i1 %377, label %polly.loop_exit795.1, label %vector.body1155, !llvm.loop !114

polly.loop_exit795.1:                             ; preds = %vector.body1155
  %polly.indvar_next791.1 = add nuw nsw i64 %polly.indvar790.1, 1
  %exitcond1049.1.not = icmp eq i64 %polly.indvar_next791.1, 32
  br i1 %exitcond1049.1.not, label %polly.loop_header787.2, label %polly.loop_header787.1

polly.loop_header787.2:                           ; preds = %polly.loop_exit795.1, %polly.loop_exit795.2
  %polly.indvar790.2 = phi i64 [ %polly.indvar_next791.2, %polly.loop_exit795.2 ], [ 0, %polly.loop_exit795.1 ]
  %378 = mul nuw nsw i64 %polly.indvar790.2, 640
  %379 = trunc i64 %polly.indvar790.2 to i32
  %broadcast.splatinsert1175 = insertelement <4 x i32> poison, i32 %379, i32 0
  %broadcast.splat1176 = shufflevector <4 x i32> %broadcast.splatinsert1175, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1167

vector.body1167:                                  ; preds = %vector.body1167, %polly.loop_header787.2
  %index1169 = phi i64 [ 0, %polly.loop_header787.2 ], [ %index.next1170, %vector.body1167 ]
  %vec.ind1173 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.2 ], [ %vec.ind.next1174, %vector.body1167 ]
  %380 = add nuw nsw <4 x i64> %vec.ind1173, <i64 64, i64 64, i64 64, i64 64>
  %381 = trunc <4 x i64> %380 to <4 x i32>
  %382 = mul <4 x i32> %broadcast.splat1176, %381
  %383 = add <4 x i32> %382, <i32 3, i32 3, i32 3, i32 3>
  %384 = urem <4 x i32> %383, <i32 80, i32 80, i32 80, i32 80>
  %385 = sitofp <4 x i32> %384 to <4 x double>
  %386 = fmul fast <4 x double> %385, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %387 = extractelement <4 x i64> %380, i32 0
  %388 = shl i64 %387, 3
  %389 = add nuw nsw i64 %388, %378
  %390 = getelementptr i8, i8* %call, i64 %389
  %391 = bitcast i8* %390 to <4 x double>*
  store <4 x double> %386, <4 x double>* %391, align 8, !alias.scope !94, !noalias !96
  %index.next1170 = add i64 %index1169, 4
  %vec.ind.next1174 = add <4 x i64> %vec.ind1173, <i64 4, i64 4, i64 4, i64 4>
  %392 = icmp eq i64 %index.next1170, 16
  br i1 %392, label %polly.loop_exit795.2, label %vector.body1167, !llvm.loop !115

polly.loop_exit795.2:                             ; preds = %vector.body1167
  %polly.indvar_next791.2 = add nuw nsw i64 %polly.indvar790.2, 1
  %exitcond1049.2.not = icmp eq i64 %polly.indvar_next791.2, 32
  br i1 %exitcond1049.2.not, label %polly.loop_header787.11085, label %polly.loop_header787.2

polly.loop_header787.11085:                       ; preds = %polly.loop_exit795.2, %polly.loop_exit795.11096
  %polly.indvar790.11084 = phi i64 [ %polly.indvar_next791.11094, %polly.loop_exit795.11096 ], [ 0, %polly.loop_exit795.2 ]
  %393 = add nuw nsw i64 %polly.indvar790.11084, 32
  %394 = mul nuw nsw i64 %393, 640
  %395 = trunc i64 %393 to i32
  %broadcast.splatinsert1189 = insertelement <4 x i32> poison, i32 %395, i32 0
  %broadcast.splat1190 = shufflevector <4 x i32> %broadcast.splatinsert1189, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1179

vector.body1179:                                  ; preds = %vector.body1179, %polly.loop_header787.11085
  %index1181 = phi i64 [ 0, %polly.loop_header787.11085 ], [ %index.next1182, %vector.body1179 ]
  %vec.ind1187 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787.11085 ], [ %vec.ind.next1188, %vector.body1179 ]
  %396 = mul <4 x i32> %vec.ind1187, %broadcast.splat1190
  %397 = add <4 x i32> %396, <i32 3, i32 3, i32 3, i32 3>
  %398 = urem <4 x i32> %397, <i32 80, i32 80, i32 80, i32 80>
  %399 = sitofp <4 x i32> %398 to <4 x double>
  %400 = fmul fast <4 x double> %399, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %401 = shl i64 %index1181, 3
  %402 = add nuw nsw i64 %401, %394
  %403 = getelementptr i8, i8* %call, i64 %402
  %404 = bitcast i8* %403 to <4 x double>*
  store <4 x double> %400, <4 x double>* %404, align 8, !alias.scope !94, !noalias !96
  %index.next1182 = add i64 %index1181, 4
  %vec.ind.next1188 = add <4 x i32> %vec.ind1187, <i32 4, i32 4, i32 4, i32 4>
  %405 = icmp eq i64 %index.next1182, 32
  br i1 %405, label %polly.loop_exit795.11096, label %vector.body1179, !llvm.loop !116

polly.loop_exit795.11096:                         ; preds = %vector.body1179
  %polly.indvar_next791.11094 = add nuw nsw i64 %polly.indvar790.11084, 1
  %exitcond1049.11095.not = icmp eq i64 %polly.indvar_next791.11094, 32
  br i1 %exitcond1049.11095.not, label %polly.loop_header787.1.1, label %polly.loop_header787.11085

polly.loop_header787.1.1:                         ; preds = %polly.loop_exit795.11096, %polly.loop_exit795.1.1
  %polly.indvar790.1.1 = phi i64 [ %polly.indvar_next791.1.1, %polly.loop_exit795.1.1 ], [ 0, %polly.loop_exit795.11096 ]
  %406 = add nuw nsw i64 %polly.indvar790.1.1, 32
  %407 = mul nuw nsw i64 %406, 640
  %408 = trunc i64 %406 to i32
  %broadcast.splatinsert1201 = insertelement <4 x i32> poison, i32 %408, i32 0
  %broadcast.splat1202 = shufflevector <4 x i32> %broadcast.splatinsert1201, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1193

vector.body1193:                                  ; preds = %vector.body1193, %polly.loop_header787.1.1
  %index1195 = phi i64 [ 0, %polly.loop_header787.1.1 ], [ %index.next1196, %vector.body1193 ]
  %vec.ind1199 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1.1 ], [ %vec.ind.next1200, %vector.body1193 ]
  %409 = add nuw nsw <4 x i64> %vec.ind1199, <i64 32, i64 32, i64 32, i64 32>
  %410 = trunc <4 x i64> %409 to <4 x i32>
  %411 = mul <4 x i32> %broadcast.splat1202, %410
  %412 = add <4 x i32> %411, <i32 3, i32 3, i32 3, i32 3>
  %413 = urem <4 x i32> %412, <i32 80, i32 80, i32 80, i32 80>
  %414 = sitofp <4 x i32> %413 to <4 x double>
  %415 = fmul fast <4 x double> %414, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %416 = extractelement <4 x i64> %409, i32 0
  %417 = shl i64 %416, 3
  %418 = add nuw nsw i64 %417, %407
  %419 = getelementptr i8, i8* %call, i64 %418
  %420 = bitcast i8* %419 to <4 x double>*
  store <4 x double> %415, <4 x double>* %420, align 8, !alias.scope !94, !noalias !96
  %index.next1196 = add i64 %index1195, 4
  %vec.ind.next1200 = add <4 x i64> %vec.ind1199, <i64 4, i64 4, i64 4, i64 4>
  %421 = icmp eq i64 %index.next1196, 32
  br i1 %421, label %polly.loop_exit795.1.1, label %vector.body1193, !llvm.loop !117

polly.loop_exit795.1.1:                           ; preds = %vector.body1193
  %polly.indvar_next791.1.1 = add nuw nsw i64 %polly.indvar790.1.1, 1
  %exitcond1049.1.1.not = icmp eq i64 %polly.indvar_next791.1.1, 32
  br i1 %exitcond1049.1.1.not, label %polly.loop_header787.2.1, label %polly.loop_header787.1.1

polly.loop_header787.2.1:                         ; preds = %polly.loop_exit795.1.1, %polly.loop_exit795.2.1
  %polly.indvar790.2.1 = phi i64 [ %polly.indvar_next791.2.1, %polly.loop_exit795.2.1 ], [ 0, %polly.loop_exit795.1.1 ]
  %422 = add nuw nsw i64 %polly.indvar790.2.1, 32
  %423 = mul nuw nsw i64 %422, 640
  %424 = trunc i64 %422 to i32
  %broadcast.splatinsert1213 = insertelement <4 x i32> poison, i32 %424, i32 0
  %broadcast.splat1214 = shufflevector <4 x i32> %broadcast.splatinsert1213, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1205

vector.body1205:                                  ; preds = %vector.body1205, %polly.loop_header787.2.1
  %index1207 = phi i64 [ 0, %polly.loop_header787.2.1 ], [ %index.next1208, %vector.body1205 ]
  %vec.ind1211 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.2.1 ], [ %vec.ind.next1212, %vector.body1205 ]
  %425 = add nuw nsw <4 x i64> %vec.ind1211, <i64 64, i64 64, i64 64, i64 64>
  %426 = trunc <4 x i64> %425 to <4 x i32>
  %427 = mul <4 x i32> %broadcast.splat1214, %426
  %428 = add <4 x i32> %427, <i32 3, i32 3, i32 3, i32 3>
  %429 = urem <4 x i32> %428, <i32 80, i32 80, i32 80, i32 80>
  %430 = sitofp <4 x i32> %429 to <4 x double>
  %431 = fmul fast <4 x double> %430, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %432 = extractelement <4 x i64> %425, i32 0
  %433 = shl i64 %432, 3
  %434 = add nuw nsw i64 %433, %423
  %435 = getelementptr i8, i8* %call, i64 %434
  %436 = bitcast i8* %435 to <4 x double>*
  store <4 x double> %431, <4 x double>* %436, align 8, !alias.scope !94, !noalias !96
  %index.next1208 = add i64 %index1207, 4
  %vec.ind.next1212 = add <4 x i64> %vec.ind1211, <i64 4, i64 4, i64 4, i64 4>
  %437 = icmp eq i64 %index.next1208, 16
  br i1 %437, label %polly.loop_exit795.2.1, label %vector.body1205, !llvm.loop !118

polly.loop_exit795.2.1:                           ; preds = %vector.body1205
  %polly.indvar_next791.2.1 = add nuw nsw i64 %polly.indvar790.2.1, 1
  %exitcond1049.2.1.not = icmp eq i64 %polly.indvar_next791.2.1, 32
  br i1 %exitcond1049.2.1.not, label %polly.loop_header787.21099, label %polly.loop_header787.2.1

polly.loop_header787.21099:                       ; preds = %polly.loop_exit795.2.1, %polly.loop_exit795.21110
  %polly.indvar790.21098 = phi i64 [ %polly.indvar_next791.21108, %polly.loop_exit795.21110 ], [ 0, %polly.loop_exit795.2.1 ]
  %438 = add nuw nsw i64 %polly.indvar790.21098, 64
  %439 = mul nuw nsw i64 %438, 640
  %440 = trunc i64 %438 to i32
  %broadcast.splatinsert1227 = insertelement <4 x i32> poison, i32 %440, i32 0
  %broadcast.splat1228 = shufflevector <4 x i32> %broadcast.splatinsert1227, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1217

vector.body1217:                                  ; preds = %vector.body1217, %polly.loop_header787.21099
  %index1219 = phi i64 [ 0, %polly.loop_header787.21099 ], [ %index.next1220, %vector.body1217 ]
  %vec.ind1225 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787.21099 ], [ %vec.ind.next1226, %vector.body1217 ]
  %441 = mul <4 x i32> %vec.ind1225, %broadcast.splat1228
  %442 = add <4 x i32> %441, <i32 3, i32 3, i32 3, i32 3>
  %443 = urem <4 x i32> %442, <i32 80, i32 80, i32 80, i32 80>
  %444 = sitofp <4 x i32> %443 to <4 x double>
  %445 = fmul fast <4 x double> %444, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %446 = shl i64 %index1219, 3
  %447 = add nuw nsw i64 %446, %439
  %448 = getelementptr i8, i8* %call, i64 %447
  %449 = bitcast i8* %448 to <4 x double>*
  store <4 x double> %445, <4 x double>* %449, align 8, !alias.scope !94, !noalias !96
  %index.next1220 = add i64 %index1219, 4
  %vec.ind.next1226 = add <4 x i32> %vec.ind1225, <i32 4, i32 4, i32 4, i32 4>
  %450 = icmp eq i64 %index.next1220, 32
  br i1 %450, label %polly.loop_exit795.21110, label %vector.body1217, !llvm.loop !119

polly.loop_exit795.21110:                         ; preds = %vector.body1217
  %polly.indvar_next791.21108 = add nuw nsw i64 %polly.indvar790.21098, 1
  %exitcond1049.21109.not = icmp eq i64 %polly.indvar_next791.21108, 16
  br i1 %exitcond1049.21109.not, label %polly.loop_header787.1.2, label %polly.loop_header787.21099

polly.loop_header787.1.2:                         ; preds = %polly.loop_exit795.21110, %polly.loop_exit795.1.2
  %polly.indvar790.1.2 = phi i64 [ %polly.indvar_next791.1.2, %polly.loop_exit795.1.2 ], [ 0, %polly.loop_exit795.21110 ]
  %451 = add nuw nsw i64 %polly.indvar790.1.2, 64
  %452 = mul nuw nsw i64 %451, 640
  %453 = trunc i64 %451 to i32
  %broadcast.splatinsert1239 = insertelement <4 x i32> poison, i32 %453, i32 0
  %broadcast.splat1240 = shufflevector <4 x i32> %broadcast.splatinsert1239, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1231

vector.body1231:                                  ; preds = %vector.body1231, %polly.loop_header787.1.2
  %index1233 = phi i64 [ 0, %polly.loop_header787.1.2 ], [ %index.next1234, %vector.body1231 ]
  %vec.ind1237 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1.2 ], [ %vec.ind.next1238, %vector.body1231 ]
  %454 = add nuw nsw <4 x i64> %vec.ind1237, <i64 32, i64 32, i64 32, i64 32>
  %455 = trunc <4 x i64> %454 to <4 x i32>
  %456 = mul <4 x i32> %broadcast.splat1240, %455
  %457 = add <4 x i32> %456, <i32 3, i32 3, i32 3, i32 3>
  %458 = urem <4 x i32> %457, <i32 80, i32 80, i32 80, i32 80>
  %459 = sitofp <4 x i32> %458 to <4 x double>
  %460 = fmul fast <4 x double> %459, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %461 = extractelement <4 x i64> %454, i32 0
  %462 = shl i64 %461, 3
  %463 = add nuw nsw i64 %462, %452
  %464 = getelementptr i8, i8* %call, i64 %463
  %465 = bitcast i8* %464 to <4 x double>*
  store <4 x double> %460, <4 x double>* %465, align 8, !alias.scope !94, !noalias !96
  %index.next1234 = add i64 %index1233, 4
  %vec.ind.next1238 = add <4 x i64> %vec.ind1237, <i64 4, i64 4, i64 4, i64 4>
  %466 = icmp eq i64 %index.next1234, 32
  br i1 %466, label %polly.loop_exit795.1.2, label %vector.body1231, !llvm.loop !120

polly.loop_exit795.1.2:                           ; preds = %vector.body1231
  %polly.indvar_next791.1.2 = add nuw nsw i64 %polly.indvar790.1.2, 1
  %exitcond1049.1.2.not = icmp eq i64 %polly.indvar_next791.1.2, 16
  br i1 %exitcond1049.1.2.not, label %polly.loop_header787.2.2, label %polly.loop_header787.1.2

polly.loop_header787.2.2:                         ; preds = %polly.loop_exit795.1.2, %polly.loop_exit795.2.2
  %polly.indvar790.2.2 = phi i64 [ %polly.indvar_next791.2.2, %polly.loop_exit795.2.2 ], [ 0, %polly.loop_exit795.1.2 ]
  %467 = add nuw nsw i64 %polly.indvar790.2.2, 64
  %468 = mul nuw nsw i64 %467, 640
  %469 = trunc i64 %467 to i32
  %broadcast.splatinsert1251 = insertelement <4 x i32> poison, i32 %469, i32 0
  %broadcast.splat1252 = shufflevector <4 x i32> %broadcast.splatinsert1251, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1243

vector.body1243:                                  ; preds = %vector.body1243, %polly.loop_header787.2.2
  %index1245 = phi i64 [ 0, %polly.loop_header787.2.2 ], [ %index.next1246, %vector.body1243 ]
  %vec.ind1249 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.2.2 ], [ %vec.ind.next1250, %vector.body1243 ]
  %470 = add nuw nsw <4 x i64> %vec.ind1249, <i64 64, i64 64, i64 64, i64 64>
  %471 = trunc <4 x i64> %470 to <4 x i32>
  %472 = mul <4 x i32> %broadcast.splat1252, %471
  %473 = add <4 x i32> %472, <i32 3, i32 3, i32 3, i32 3>
  %474 = urem <4 x i32> %473, <i32 80, i32 80, i32 80, i32 80>
  %475 = sitofp <4 x i32> %474 to <4 x double>
  %476 = fmul fast <4 x double> %475, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %477 = extractelement <4 x i64> %470, i32 0
  %478 = shl i64 %477, 3
  %479 = add nuw nsw i64 %478, %468
  %480 = getelementptr i8, i8* %call, i64 %479
  %481 = bitcast i8* %480 to <4 x double>*
  store <4 x double> %476, <4 x double>* %481, align 8, !alias.scope !94, !noalias !96
  %index.next1246 = add i64 %index1245, 4
  %vec.ind.next1250 = add <4 x i64> %vec.ind1249, <i64 4, i64 4, i64 4, i64 4>
  %482 = icmp eq i64 %index.next1246, 16
  br i1 %482, label %polly.loop_exit795.2.2, label %vector.body1243, !llvm.loop !121

polly.loop_exit795.2.2:                           ; preds = %vector.body1243
  %polly.indvar_next791.2.2 = add nuw nsw i64 %polly.indvar790.2.2, 1
  %exitcond1049.2.2.not = icmp eq i64 %polly.indvar_next791.2.2, 16
  br i1 %exitcond1049.2.2.not, label %polly.loop_header814, label %polly.loop_header787.2.2
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
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 50}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 100}
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
!48 = !{!"llvm.loop.tile.size", i32 16}
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
