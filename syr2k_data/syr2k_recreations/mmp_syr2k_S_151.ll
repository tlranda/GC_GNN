; ModuleID = 'syr2k_recreations//mmp_syr2k_S_151.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_151.c"
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
  %call776 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1637 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2638 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1637, %call2
  %polly.access.call2657 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2657, %call1
  %2 = or i1 %0, %1
  %polly.access.call677 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call677, %call2
  %4 = icmp ule i8* %polly.access.call2657, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call677, %call1
  %8 = icmp ule i8* %polly.access.call1637, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header762, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1128 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1127 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1126 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1125 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1125, %scevgep1128
  %bound1 = icmp ult i8* %scevgep1127, %scevgep1126
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
  br i1 %exitcond18.not.i, label %vector.ph1132, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1132:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1139 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1140 = shufflevector <4 x i64> %broadcast.splatinsert1139, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1131

vector.body1131:                                  ; preds = %vector.body1131, %vector.ph1132
  %index1133 = phi i64 [ 0, %vector.ph1132 ], [ %index.next1134, %vector.body1131 ]
  %vec.ind1137 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1132 ], [ %vec.ind.next1138, %vector.body1131 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1137, %broadcast.splat1140
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv7.i, i64 %index1133
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1134 = add i64 %index1133, 4
  %vec.ind.next1138 = add <4 x i64> %vec.ind1137, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1134, 80
  br i1 %40, label %for.inc41.i, label %vector.body1131, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1131
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1132, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit823.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start449, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1485, label %vector.ph1414

vector.ph1414:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1413

vector.body1413:                                  ; preds = %vector.body1413, %vector.ph1414
  %index1415 = phi i64 [ 0, %vector.ph1414 ], [ %index.next1416, %vector.body1413 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv21.i, i64 %index1415
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1416 = add i64 %index1415, 4
  %46 = icmp eq i64 %index.next1416, %n.vec
  br i1 %46, label %middle.block1411, label %vector.body1413, !llvm.loop !18

middle.block1411:                                 ; preds = %vector.body1413
  %cmp.n1418 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1418, label %for.inc6.i, label %for.body3.i46.preheader1485

for.body3.i46.preheader1485:                      ; preds = %for.body3.i46.preheader, %middle.block1411
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1411 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1485, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1485 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1411, %for.cond1.preheader.i45
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
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2, !llvm.access !21
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2, !llvm.access !21
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !41

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit559.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start272, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1434 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1434, label %for.body3.i60.preheader1484, label %vector.ph1435

vector.ph1435:                                    ; preds = %for.body3.i60.preheader
  %n.vec1437 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1433

vector.body1433:                                  ; preds = %vector.body1433, %vector.ph1435
  %index1438 = phi i64 [ 0, %vector.ph1435 ], [ %index.next1439, %vector.body1433 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv21.i52, i64 %index1438
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1442 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1442, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1439 = add i64 %index1438, 4
  %57 = icmp eq i64 %index.next1439, %n.vec1437
  br i1 %57, label %middle.block1431, label %vector.body1433, !llvm.loop !60

middle.block1431:                                 ; preds = %vector.body1433
  %cmp.n1441 = icmp eq i64 %indvars.iv21.i52, %n.vec1437
  br i1 %cmp.n1441, label %for.inc6.i63, label %for.body3.i60.preheader1484

for.body3.i60.preheader1484:                      ; preds = %for.body3.i60.preheader, %middle.block1431
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1437, %middle.block1431 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1484, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1484 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1431, %for.cond1.preheader.i54
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
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2, !llvm.access !21
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2, !llvm.access !21
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !41

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit382.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1460 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1460, label %for.body3.i99.preheader1483, label %vector.ph1461

vector.ph1461:                                    ; preds = %for.body3.i99.preheader
  %n.vec1463 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1459

vector.body1459:                                  ; preds = %vector.body1459, %vector.ph1461
  %index1464 = phi i64 [ 0, %vector.ph1461 ], [ %index.next1465, %vector.body1459 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv21.i91, i64 %index1464
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1468 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1468, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1465 = add i64 %index1464, 4
  %68 = icmp eq i64 %index.next1465, %n.vec1463
  br i1 %68, label %middle.block1457, label %vector.body1459, !llvm.loop !62

middle.block1457:                                 ; preds = %vector.body1459
  %cmp.n1467 = icmp eq i64 %indvars.iv21.i91, %n.vec1463
  br i1 %cmp.n1467, label %for.inc6.i102, label %for.body3.i99.preheader1483

for.body3.i99.preheader1483:                      ; preds = %for.body3.i99.preheader, %middle.block1457
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1463, %middle.block1457 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1483, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1483 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1457, %for.cond1.preheader.i93
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
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2, !llvm.access !21
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2, !llvm.access !21
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !41

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit207.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !64
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !66

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !67

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #6
  br label %polly.loop_header

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1472 = phi i64 [ %indvar.next1473, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1472, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1474 = icmp ult i64 %88, 4
  br i1 %min.iters.check1474, label %polly.loop_header191.preheader, label %vector.ph1475

vector.ph1475:                                    ; preds = %polly.loop_header
  %n.vec1477 = and i64 %88, -4
  br label %vector.body1471

vector.body1471:                                  ; preds = %vector.body1471, %vector.ph1475
  %index1478 = phi i64 [ 0, %vector.ph1475 ], [ %index.next1479, %vector.body1471 ]
  %90 = shl nuw nsw i64 %index1478, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1482 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1482, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1479 = add i64 %index1478, 4
  %95 = icmp eq i64 %index.next1479, %n.vec1477
  br i1 %95, label %middle.block1469, label %vector.body1471, !llvm.loop !74

middle.block1469:                                 ; preds = %vector.body1471
  %cmp.n1481 = icmp eq i64 %88, %n.vec1477
  br i1 %cmp.n1481, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1469
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1477, %middle.block1469 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1469
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond862.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1473 = add i64 %indvar1472, 1
  br i1 %exitcond862.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  br label %polly.loop_header205

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond861.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond861.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header205:                             ; preds = %polly.loop_exit235.1, %polly.loop_header199.preheader
  %indvars.iv854 = phi i64 [ %indvars.iv.next855, %polly.loop_exit235.1 ], [ 0, %polly.loop_header199.preheader ]
  %indvars.iv852 = phi i64 [ %indvars.iv.next853, %polly.loop_exit235.1 ], [ 0, %polly.loop_header199.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit235.1 ], [ 80, %polly.loop_header199.preheader ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit235.1 ], [ 0, %polly.loop_header199.preheader ]
  %97 = mul i64 %polly.indvar208, 20
  br label %polly.loop_header211

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar214, 80
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_header217
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond851.not = icmp eq i64 %polly.indvar_next215, 32
  br i1 %exitcond851.not, label %polly.loop_header227.preheader, label %polly.loop_header211

polly.loop_header227.preheader:                   ; preds = %polly.loop_exit219
  %98 = mul nsw i64 %polly.indvar208, -20
  %polly.loop_guard.not = icmp sgt i64 %97, 63
  br i1 %polly.loop_guard.not, label %polly.loop_exit235, label %polly.loop_header233.preheader

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %99 = add nuw nsw i64 %polly.indvar220, %97
  %polly.access.mul.call2224 = mul nuw nsw i64 %99, 60
  %polly.access.add.call2225 = add nuw nsw i64 %polly.indvar214, %polly.access.mul.call2224
  %polly.access.call2226 = getelementptr double, double* %polly.access.cast.call2638, i64 %polly.access.add.call2225
  %polly.access.call2226.load = load double, double* %polly.access.call2226, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar220, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2226.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header233.preheader:                   ; preds = %polly.loop_header227.preheader
  %100 = add i64 %indvars.iv852, %indvars.iv854
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241, %polly.loop_header227.preheader
  %101 = icmp sgt i64 %97, 64
  %102 = select i1 %101, i64 %97, i64 64
  %103 = add nsw i64 %102, -64
  %polly.loop_guard.not.1 = icmp sgt i64 %102, 79
  br i1 %polly.loop_guard.not.1, label %polly.loop_exit235.1, label %polly.loop_header233.preheader.1

polly.loop_header233:                             ; preds = %polly.loop_header233.preheader, %polly.loop_exit241
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_exit241 ], [ 0, %polly.loop_header233.preheader ]
  %104 = shl i64 %polly.indvar236, 3
  %polly.access.mul.Packed_MemRef_call2256 = mul nuw nsw i64 %polly.indvar236, 80
  br label %polly.loop_header239

polly.loop_exit241:                               ; preds = %polly.loop_exit248
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond859.not = icmp eq i64 %polly.indvar_next237, 32
  br i1 %exitcond859.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_header239:                             ; preds = %polly.loop_header233, %polly.loop_exit248
  %indvars.iv856 = phi i64 [ %100, %polly.loop_header233 ], [ %indvars.iv.next857, %polly.loop_exit248 ]
  %polly.indvar242 = phi i64 [ %97, %polly.loop_header233 ], [ %polly.indvar_next243, %polly.loop_exit248 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv856, i64 19)
  %105 = add i64 %polly.indvar242, %98
  %polly.loop_guard2491111 = icmp sgt i64 %105, -1
  br i1 %polly.loop_guard2491111, label %polly.loop_header246.preheader, label %polly.loop_exit248

polly.loop_header246.preheader:                   ; preds = %polly.loop_header239
  %polly.access.add.Packed_MemRef_call2257 = add nsw i64 %polly.access.mul.Packed_MemRef_call2256, %105
  %polly.access.Packed_MemRef_call2258 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257
  %_p_scalar_259 = load double, double* %polly.access.Packed_MemRef_call2258, align 8
  %106 = mul i64 %polly.indvar242, 480
  %107 = add i64 %106, %104
  %scevgep264 = getelementptr i8, i8* %call1, i64 %107
  %scevgep264265 = bitcast i8* %scevgep264 to double*
  %_p_scalar_266 = load double, double* %scevgep264265, align 8, !alias.scope !71, !noalias !78
  %108 = mul i64 %polly.indvar242, 640
  br label %polly.loop_header246

polly.loop_exit248:                               ; preds = %polly.loop_header246, %polly.loop_header239
  %polly.indvar_next243 = add nuw nsw i64 %polly.indvar242, 1
  %polly.loop_cond244.not.not = icmp ult i64 %polly.indvar242, 63
  %indvars.iv.next857 = add i64 %indvars.iv856, 1
  br i1 %polly.loop_cond244.not.not, label %polly.loop_header239, label %polly.loop_exit241

polly.loop_header246:                             ; preds = %polly.loop_header246.preheader, %polly.loop_header246
  %polly.indvar250 = phi i64 [ %polly.indvar_next251, %polly.loop_header246 ], [ 0, %polly.loop_header246.preheader ]
  %109 = add nuw nsw i64 %polly.indvar250, %97
  %110 = mul nuw nsw i64 %109, 480
  %111 = add nuw nsw i64 %110, %104
  %scevgep253 = getelementptr i8, i8* %call1, i64 %111
  %scevgep253254 = bitcast i8* %scevgep253 to double*
  %_p_scalar_255 = load double, double* %scevgep253254, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112 = fmul fast double %_p_scalar_259, %_p_scalar_255
  %polly.access.add.Packed_MemRef_call2261 = add nuw nsw i64 %polly.indvar250, %polly.access.mul.Packed_MemRef_call2256
  %polly.access.Packed_MemRef_call2262 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261
  %_p_scalar_263 = load double, double* %polly.access.Packed_MemRef_call2262, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_266, %_p_scalar_263
  %112 = shl i64 %109, 3
  %113 = add i64 %112, %108
  %scevgep267 = getelementptr i8, i8* %call, i64 %113
  %scevgep267268 = bitcast i8* %scevgep267 to double*
  %_p_scalar_269 = load double, double* %scevgep267268, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_269
  store double %p_add42.i118, double* %scevgep267268, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next251 = add nuw nsw i64 %polly.indvar250, 1
  %exitcond858.not = icmp eq i64 %polly.indvar250, %smin
  br i1 %exitcond858.not, label %polly.loop_exit248, label %polly.loop_header246

polly.start272:                                   ; preds = %kernel_syr2k.exit
  %malloccall274 = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #6
  br label %polly.loop_header358

polly.loop_header358:                             ; preds = %polly.loop_exit366, %polly.start272
  %indvar1446 = phi i64 [ %indvar.next1447, %polly.loop_exit366 ], [ 0, %polly.start272 ]
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_exit366 ], [ 1, %polly.start272 ]
  %114 = add i64 %indvar1446, 1
  %115 = mul nuw nsw i64 %polly.indvar361, 640
  %scevgep370 = getelementptr i8, i8* %call, i64 %115
  %min.iters.check1448 = icmp ult i64 %114, 4
  br i1 %min.iters.check1448, label %polly.loop_header364.preheader, label %vector.ph1449

vector.ph1449:                                    ; preds = %polly.loop_header358
  %n.vec1451 = and i64 %114, -4
  br label %vector.body1445

vector.body1445:                                  ; preds = %vector.body1445, %vector.ph1449
  %index1452 = phi i64 [ 0, %vector.ph1449 ], [ %index.next1453, %vector.body1445 ]
  %116 = shl nuw nsw i64 %index1452, 3
  %117 = getelementptr i8, i8* %scevgep370, i64 %116
  %118 = bitcast i8* %117 to <4 x double>*
  %wide.load1456 = load <4 x double>, <4 x double>* %118, align 8, !alias.scope !79, !noalias !81
  %119 = fmul fast <4 x double> %wide.load1456, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %120 = bitcast i8* %117 to <4 x double>*
  store <4 x double> %119, <4 x double>* %120, align 8, !alias.scope !79, !noalias !81
  %index.next1453 = add i64 %index1452, 4
  %121 = icmp eq i64 %index.next1453, %n.vec1451
  br i1 %121, label %middle.block1443, label %vector.body1445, !llvm.loop !85

middle.block1443:                                 ; preds = %vector.body1445
  %cmp.n1455 = icmp eq i64 %114, %n.vec1451
  br i1 %cmp.n1455, label %polly.loop_exit366, label %polly.loop_header364.preheader

polly.loop_header364.preheader:                   ; preds = %polly.loop_header358, %middle.block1443
  %polly.indvar367.ph = phi i64 [ 0, %polly.loop_header358 ], [ %n.vec1451, %middle.block1443 ]
  br label %polly.loop_header364

polly.loop_exit366:                               ; preds = %polly.loop_header364, %middle.block1443
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond879.not = icmp eq i64 %polly.indvar_next362, 80
  %indvar.next1447 = add i64 %indvar1446, 1
  br i1 %exitcond879.not, label %polly.loop_header374.preheader, label %polly.loop_header358

polly.loop_header374.preheader:                   ; preds = %polly.loop_exit366
  %Packed_MemRef_call2275 = bitcast i8* %malloccall274 to double*
  br label %polly.loop_header380

polly.loop_header364:                             ; preds = %polly.loop_header364.preheader, %polly.loop_header364
  %polly.indvar367 = phi i64 [ %polly.indvar_next368, %polly.loop_header364 ], [ %polly.indvar367.ph, %polly.loop_header364.preheader ]
  %122 = shl nuw nsw i64 %polly.indvar367, 3
  %scevgep371 = getelementptr i8, i8* %scevgep370, i64 %122
  %scevgep371372 = bitcast i8* %scevgep371 to double*
  %_p_scalar_373 = load double, double* %scevgep371372, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_373, 1.200000e+00
  store double %p_mul.i57, double* %scevgep371372, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %exitcond878.not = icmp eq i64 %polly.indvar_next368, %polly.indvar361
  br i1 %exitcond878.not, label %polly.loop_exit366, label %polly.loop_header364, !llvm.loop !86

polly.loop_header380:                             ; preds = %polly.loop_exit410.1, %polly.loop_header374.preheader
  %indvars.iv869 = phi i64 [ %indvars.iv.next870, %polly.loop_exit410.1 ], [ 0, %polly.loop_header374.preheader ]
  %indvars.iv867 = phi i64 [ %indvars.iv.next868, %polly.loop_exit410.1 ], [ 0, %polly.loop_header374.preheader ]
  %indvars.iv863 = phi i64 [ %indvars.iv.next864, %polly.loop_exit410.1 ], [ 80, %polly.loop_header374.preheader ]
  %polly.indvar383 = phi i64 [ %polly.indvar_next384, %polly.loop_exit410.1 ], [ 0, %polly.loop_header374.preheader ]
  %123 = mul i64 %polly.indvar383, 20
  br label %polly.loop_header386

polly.loop_header386:                             ; preds = %polly.loop_exit394, %polly.loop_header380
  %polly.indvar389 = phi i64 [ 0, %polly.loop_header380 ], [ %polly.indvar_next390, %polly.loop_exit394 ]
  %polly.access.mul.Packed_MemRef_call2275 = mul nuw nsw i64 %polly.indvar389, 80
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_header392
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond866.not = icmp eq i64 %polly.indvar_next390, 32
  br i1 %exitcond866.not, label %polly.loop_header402.preheader, label %polly.loop_header386

polly.loop_header402.preheader:                   ; preds = %polly.loop_exit394
  %124 = mul nsw i64 %polly.indvar383, -20
  %polly.loop_guard418.not = icmp sgt i64 %123, 63
  br i1 %polly.loop_guard418.not, label %polly.loop_exit410, label %polly.loop_header408.preheader

polly.loop_header392:                             ; preds = %polly.loop_header392, %polly.loop_header386
  %polly.indvar395 = phi i64 [ 0, %polly.loop_header386 ], [ %polly.indvar_next396, %polly.loop_header392 ]
  %125 = add nuw nsw i64 %polly.indvar395, %123
  %polly.access.mul.call2399 = mul nuw nsw i64 %125, 60
  %polly.access.add.call2400 = add nuw nsw i64 %polly.indvar389, %polly.access.mul.call2399
  %polly.access.call2401 = getelementptr double, double* %polly.access.cast.call2638, i64 %polly.access.add.call2400
  %polly.access.call2401.load = load double, double* %polly.access.call2401, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2275 = add nuw nsw i64 %polly.indvar395, %polly.access.mul.Packed_MemRef_call2275
  %polly.access.Packed_MemRef_call2275 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275
  store double %polly.access.call2401.load, double* %polly.access.Packed_MemRef_call2275, align 8
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond865.not = icmp eq i64 %polly.indvar_next396, %indvars.iv863
  br i1 %exitcond865.not, label %polly.loop_exit394, label %polly.loop_header392

polly.loop_header408.preheader:                   ; preds = %polly.loop_header402.preheader
  %126 = add i64 %indvars.iv867, %indvars.iv869
  br label %polly.loop_header408

polly.loop_exit410:                               ; preds = %polly.loop_exit417, %polly.loop_header402.preheader
  %127 = icmp sgt i64 %123, 64
  %128 = select i1 %127, i64 %123, i64 64
  %129 = add nsw i64 %128, -64
  %polly.loop_guard418.not.1 = icmp sgt i64 %128, 79
  br i1 %polly.loop_guard418.not.1, label %polly.loop_exit410.1, label %polly.loop_header408.preheader.1

polly.loop_header408:                             ; preds = %polly.loop_header408.preheader, %polly.loop_exit417
  %polly.indvar411 = phi i64 [ %polly.indvar_next412, %polly.loop_exit417 ], [ 0, %polly.loop_header408.preheader ]
  %130 = shl i64 %polly.indvar411, 3
  %polly.access.mul.Packed_MemRef_call2275433 = mul nuw nsw i64 %polly.indvar411, 80
  br label %polly.loop_header415

polly.loop_exit417:                               ; preds = %polly.loop_exit425
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond876.not = icmp eq i64 %polly.indvar_next412, 32
  br i1 %exitcond876.not, label %polly.loop_exit410, label %polly.loop_header408

polly.loop_header415:                             ; preds = %polly.loop_header408, %polly.loop_exit425
  %indvars.iv872 = phi i64 [ %126, %polly.loop_header408 ], [ %indvars.iv.next873, %polly.loop_exit425 ]
  %polly.indvar419 = phi i64 [ %123, %polly.loop_header408 ], [ %polly.indvar_next420, %polly.loop_exit425 ]
  %smin874 = call i64 @llvm.smin.i64(i64 %indvars.iv872, i64 19)
  %131 = add i64 %polly.indvar419, %124
  %polly.loop_guard4261115 = icmp sgt i64 %131, -1
  br i1 %polly.loop_guard4261115, label %polly.loop_header423.preheader, label %polly.loop_exit425

polly.loop_header423.preheader:                   ; preds = %polly.loop_header415
  %polly.access.add.Packed_MemRef_call2275434 = add nsw i64 %polly.access.mul.Packed_MemRef_call2275433, %131
  %polly.access.Packed_MemRef_call2275435 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275434
  %_p_scalar_436 = load double, double* %polly.access.Packed_MemRef_call2275435, align 8
  %132 = mul i64 %polly.indvar419, 480
  %133 = add i64 %132, %130
  %scevgep441 = getelementptr i8, i8* %call1, i64 %133
  %scevgep441442 = bitcast i8* %scevgep441 to double*
  %_p_scalar_443 = load double, double* %scevgep441442, align 8, !alias.scope !82, !noalias !88
  %134 = mul i64 %polly.indvar419, 640
  br label %polly.loop_header423

polly.loop_exit425:                               ; preds = %polly.loop_header423, %polly.loop_header415
  %polly.indvar_next420 = add nuw nsw i64 %polly.indvar419, 1
  %polly.loop_cond421.not.not = icmp ult i64 %polly.indvar419, 63
  %indvars.iv.next873 = add i64 %indvars.iv872, 1
  br i1 %polly.loop_cond421.not.not, label %polly.loop_header415, label %polly.loop_exit417

polly.loop_header423:                             ; preds = %polly.loop_header423.preheader, %polly.loop_header423
  %polly.indvar427 = phi i64 [ %polly.indvar_next428, %polly.loop_header423 ], [ 0, %polly.loop_header423.preheader ]
  %135 = add nuw nsw i64 %polly.indvar427, %123
  %136 = mul nuw nsw i64 %135, 480
  %137 = add nuw nsw i64 %136, %130
  %scevgep430 = getelementptr i8, i8* %call1, i64 %137
  %scevgep430431 = bitcast i8* %scevgep430 to double*
  %_p_scalar_432 = load double, double* %scevgep430431, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73 = fmul fast double %_p_scalar_436, %_p_scalar_432
  %polly.access.add.Packed_MemRef_call2275438 = add nuw nsw i64 %polly.indvar427, %polly.access.mul.Packed_MemRef_call2275433
  %polly.access.Packed_MemRef_call2275439 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275438
  %_p_scalar_440 = load double, double* %polly.access.Packed_MemRef_call2275439, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_443, %_p_scalar_440
  %138 = shl i64 %135, 3
  %139 = add i64 %138, %134
  %scevgep444 = getelementptr i8, i8* %call, i64 %139
  %scevgep444445 = bitcast i8* %scevgep444 to double*
  %_p_scalar_446 = load double, double* %scevgep444445, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_446
  store double %p_add42.i79, double* %scevgep444445, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %exitcond875.not = icmp eq i64 %polly.indvar427, %smin874
  br i1 %exitcond875.not, label %polly.loop_exit425, label %polly.loop_header423

polly.start449:                                   ; preds = %init_array.exit
  %malloccall451 = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #6
  br label %polly.loop_header535

polly.loop_header535:                             ; preds = %polly.loop_exit543, %polly.start449
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit543 ], [ 0, %polly.start449 ]
  %polly.indvar538 = phi i64 [ %polly.indvar_next539, %polly.loop_exit543 ], [ 1, %polly.start449 ]
  %140 = add i64 %indvar, 1
  %141 = mul nuw nsw i64 %polly.indvar538, 640
  %scevgep547 = getelementptr i8, i8* %call, i64 %141
  %min.iters.check1422 = icmp ult i64 %140, 4
  br i1 %min.iters.check1422, label %polly.loop_header541.preheader, label %vector.ph1423

vector.ph1423:                                    ; preds = %polly.loop_header535
  %n.vec1425 = and i64 %140, -4
  br label %vector.body1421

vector.body1421:                                  ; preds = %vector.body1421, %vector.ph1423
  %index1426 = phi i64 [ 0, %vector.ph1423 ], [ %index.next1427, %vector.body1421 ]
  %142 = shl nuw nsw i64 %index1426, 3
  %143 = getelementptr i8, i8* %scevgep547, i64 %142
  %144 = bitcast i8* %143 to <4 x double>*
  %wide.load1430 = load <4 x double>, <4 x double>* %144, align 8, !alias.scope !89, !noalias !91
  %145 = fmul fast <4 x double> %wide.load1430, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %146 = bitcast i8* %143 to <4 x double>*
  store <4 x double> %145, <4 x double>* %146, align 8, !alias.scope !89, !noalias !91
  %index.next1427 = add i64 %index1426, 4
  %147 = icmp eq i64 %index.next1427, %n.vec1425
  br i1 %147, label %middle.block1419, label %vector.body1421, !llvm.loop !95

middle.block1419:                                 ; preds = %vector.body1421
  %cmp.n1429 = icmp eq i64 %140, %n.vec1425
  br i1 %cmp.n1429, label %polly.loop_exit543, label %polly.loop_header541.preheader

polly.loop_header541.preheader:                   ; preds = %polly.loop_header535, %middle.block1419
  %polly.indvar544.ph = phi i64 [ 0, %polly.loop_header535 ], [ %n.vec1425, %middle.block1419 ]
  br label %polly.loop_header541

polly.loop_exit543:                               ; preds = %polly.loop_header541, %middle.block1419
  %polly.indvar_next539 = add nuw nsw i64 %polly.indvar538, 1
  %exitcond896.not = icmp eq i64 %polly.indvar_next539, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond896.not, label %polly.loop_header551.preheader, label %polly.loop_header535

polly.loop_header551.preheader:                   ; preds = %polly.loop_exit543
  %Packed_MemRef_call2452 = bitcast i8* %malloccall451 to double*
  br label %polly.loop_header557

polly.loop_header541:                             ; preds = %polly.loop_header541.preheader, %polly.loop_header541
  %polly.indvar544 = phi i64 [ %polly.indvar_next545, %polly.loop_header541 ], [ %polly.indvar544.ph, %polly.loop_header541.preheader ]
  %148 = shl nuw nsw i64 %polly.indvar544, 3
  %scevgep548 = getelementptr i8, i8* %scevgep547, i64 %148
  %scevgep548549 = bitcast i8* %scevgep548 to double*
  %_p_scalar_550 = load double, double* %scevgep548549, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_550, 1.200000e+00
  store double %p_mul.i, double* %scevgep548549, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next545 = add nuw nsw i64 %polly.indvar544, 1
  %exitcond895.not = icmp eq i64 %polly.indvar_next545, %polly.indvar538
  br i1 %exitcond895.not, label %polly.loop_exit543, label %polly.loop_header541, !llvm.loop !96

polly.loop_header557:                             ; preds = %polly.loop_exit587.1, %polly.loop_header551.preheader
  %indvars.iv886 = phi i64 [ %indvars.iv.next887, %polly.loop_exit587.1 ], [ 0, %polly.loop_header551.preheader ]
  %indvars.iv884 = phi i64 [ %indvars.iv.next885, %polly.loop_exit587.1 ], [ 0, %polly.loop_header551.preheader ]
  %indvars.iv880 = phi i64 [ %indvars.iv.next881, %polly.loop_exit587.1 ], [ 80, %polly.loop_header551.preheader ]
  %polly.indvar560 = phi i64 [ %polly.indvar_next561, %polly.loop_exit587.1 ], [ 0, %polly.loop_header551.preheader ]
  %149 = mul i64 %polly.indvar560, 20
  br label %polly.loop_header563

polly.loop_header563:                             ; preds = %polly.loop_exit571, %polly.loop_header557
  %polly.indvar566 = phi i64 [ 0, %polly.loop_header557 ], [ %polly.indvar_next567, %polly.loop_exit571 ]
  %polly.access.mul.Packed_MemRef_call2452 = mul nuw nsw i64 %polly.indvar566, 80
  br label %polly.loop_header569

polly.loop_exit571:                               ; preds = %polly.loop_header569
  %polly.indvar_next567 = add nuw nsw i64 %polly.indvar566, 1
  %exitcond883.not = icmp eq i64 %polly.indvar_next567, 32
  br i1 %exitcond883.not, label %polly.loop_header579.preheader, label %polly.loop_header563

polly.loop_header579.preheader:                   ; preds = %polly.loop_exit571
  %150 = mul nsw i64 %polly.indvar560, -20
  %polly.loop_guard595.not = icmp sgt i64 %149, 63
  br i1 %polly.loop_guard595.not, label %polly.loop_exit587, label %polly.loop_header585.preheader

polly.loop_header569:                             ; preds = %polly.loop_header569, %polly.loop_header563
  %polly.indvar572 = phi i64 [ 0, %polly.loop_header563 ], [ %polly.indvar_next573, %polly.loop_header569 ]
  %151 = add nuw nsw i64 %polly.indvar572, %149
  %polly.access.mul.call2576 = mul nuw nsw i64 %151, 60
  %polly.access.add.call2577 = add nuw nsw i64 %polly.indvar566, %polly.access.mul.call2576
  %polly.access.call2578 = getelementptr double, double* %polly.access.cast.call2638, i64 %polly.access.add.call2577
  %polly.access.call2578.load = load double, double* %polly.access.call2578, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2452 = add nuw nsw i64 %polly.indvar572, %polly.access.mul.Packed_MemRef_call2452
  %polly.access.Packed_MemRef_call2452 = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452
  store double %polly.access.call2578.load, double* %polly.access.Packed_MemRef_call2452, align 8
  %polly.indvar_next573 = add nuw nsw i64 %polly.indvar572, 1
  %exitcond882.not = icmp eq i64 %polly.indvar_next573, %indvars.iv880
  br i1 %exitcond882.not, label %polly.loop_exit571, label %polly.loop_header569

polly.loop_header585.preheader:                   ; preds = %polly.loop_header579.preheader
  %152 = add i64 %indvars.iv884, %indvars.iv886
  br label %polly.loop_header585

polly.loop_exit587:                               ; preds = %polly.loop_exit594, %polly.loop_header579.preheader
  %153 = icmp sgt i64 %149, 64
  %154 = select i1 %153, i64 %149, i64 64
  %155 = add nsw i64 %154, -64
  %polly.loop_guard595.not.1 = icmp sgt i64 %154, 79
  br i1 %polly.loop_guard595.not.1, label %polly.loop_exit587.1, label %polly.loop_header585.preheader.1

polly.loop_header585:                             ; preds = %polly.loop_header585.preheader, %polly.loop_exit594
  %polly.indvar588 = phi i64 [ %polly.indvar_next589, %polly.loop_exit594 ], [ 0, %polly.loop_header585.preheader ]
  %156 = shl i64 %polly.indvar588, 3
  %polly.access.mul.Packed_MemRef_call2452610 = mul nuw nsw i64 %polly.indvar588, 80
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_exit602
  %polly.indvar_next589 = add nuw nsw i64 %polly.indvar588, 1
  %exitcond893.not = icmp eq i64 %polly.indvar_next589, 32
  br i1 %exitcond893.not, label %polly.loop_exit587, label %polly.loop_header585

polly.loop_header592:                             ; preds = %polly.loop_header585, %polly.loop_exit602
  %indvars.iv889 = phi i64 [ %152, %polly.loop_header585 ], [ %indvars.iv.next890, %polly.loop_exit602 ]
  %polly.indvar596 = phi i64 [ %149, %polly.loop_header585 ], [ %polly.indvar_next597, %polly.loop_exit602 ]
  %smin891 = call i64 @llvm.smin.i64(i64 %indvars.iv889, i64 19)
  %157 = add i64 %polly.indvar596, %150
  %polly.loop_guard6031119 = icmp sgt i64 %157, -1
  br i1 %polly.loop_guard6031119, label %polly.loop_header600.preheader, label %polly.loop_exit602

polly.loop_header600.preheader:                   ; preds = %polly.loop_header592
  %polly.access.add.Packed_MemRef_call2452611 = add nsw i64 %polly.access.mul.Packed_MemRef_call2452610, %157
  %polly.access.Packed_MemRef_call2452612 = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452611
  %_p_scalar_613 = load double, double* %polly.access.Packed_MemRef_call2452612, align 8
  %158 = mul i64 %polly.indvar596, 480
  %159 = add i64 %158, %156
  %scevgep618 = getelementptr i8, i8* %call1, i64 %159
  %scevgep618619 = bitcast i8* %scevgep618 to double*
  %_p_scalar_620 = load double, double* %scevgep618619, align 8, !alias.scope !92, !noalias !98
  %160 = mul i64 %polly.indvar596, 640
  br label %polly.loop_header600

polly.loop_exit602:                               ; preds = %polly.loop_header600, %polly.loop_header592
  %polly.indvar_next597 = add nuw nsw i64 %polly.indvar596, 1
  %polly.loop_cond598.not.not = icmp ult i64 %polly.indvar596, 63
  %indvars.iv.next890 = add i64 %indvars.iv889, 1
  br i1 %polly.loop_cond598.not.not, label %polly.loop_header592, label %polly.loop_exit594

polly.loop_header600:                             ; preds = %polly.loop_header600.preheader, %polly.loop_header600
  %polly.indvar604 = phi i64 [ %polly.indvar_next605, %polly.loop_header600 ], [ 0, %polly.loop_header600.preheader ]
  %161 = add nuw nsw i64 %polly.indvar604, %149
  %162 = mul nuw nsw i64 %161, 480
  %163 = add nuw nsw i64 %162, %156
  %scevgep607 = getelementptr i8, i8* %call1, i64 %163
  %scevgep607608 = bitcast i8* %scevgep607 to double*
  %_p_scalar_609 = load double, double* %scevgep607608, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i = fmul fast double %_p_scalar_613, %_p_scalar_609
  %polly.access.add.Packed_MemRef_call2452615 = add nuw nsw i64 %polly.indvar604, %polly.access.mul.Packed_MemRef_call2452610
  %polly.access.Packed_MemRef_call2452616 = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452615
  %_p_scalar_617 = load double, double* %polly.access.Packed_MemRef_call2452616, align 8
  %p_mul37.i = fmul fast double %_p_scalar_620, %_p_scalar_617
  %164 = shl i64 %161, 3
  %165 = add i64 %164, %160
  %scevgep621 = getelementptr i8, i8* %call, i64 %165
  %scevgep621622 = bitcast i8* %scevgep621 to double*
  %_p_scalar_623 = load double, double* %scevgep621622, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_623
  store double %p_add42.i, double* %scevgep621622, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next605 = add nuw nsw i64 %polly.indvar604, 1
  %exitcond892.not = icmp eq i64 %polly.indvar604, %smin891
  br i1 %exitcond892.not, label %polly.loop_exit602, label %polly.loop_header600

polly.loop_header762:                             ; preds = %entry, %polly.loop_exit770
  %polly.indvar765 = phi i64 [ %polly.indvar_next766, %polly.loop_exit770 ], [ 0, %entry ]
  %166 = mul nuw nsw i64 %polly.indvar765, 640
  %167 = trunc i64 %polly.indvar765 to i32
  %broadcast.splatinsert1153 = insertelement <4 x i32> poison, i32 %167, i32 0
  %broadcast.splat1154 = shufflevector <4 x i32> %broadcast.splatinsert1153, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1143

vector.body1143:                                  ; preds = %vector.body1143, %polly.loop_header762
  %index1145 = phi i64 [ 0, %polly.loop_header762 ], [ %index.next1146, %vector.body1143 ]
  %vec.ind1151 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header762 ], [ %vec.ind.next1152, %vector.body1143 ]
  %168 = mul <4 x i32> %vec.ind1151, %broadcast.splat1154
  %169 = add <4 x i32> %168, <i32 3, i32 3, i32 3, i32 3>
  %170 = urem <4 x i32> %169, <i32 80, i32 80, i32 80, i32 80>
  %171 = sitofp <4 x i32> %170 to <4 x double>
  %172 = fmul fast <4 x double> %171, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %173 = shl i64 %index1145, 3
  %174 = add nuw nsw i64 %173, %166
  %175 = getelementptr i8, i8* %call, i64 %174
  %176 = bitcast i8* %175 to <4 x double>*
  store <4 x double> %172, <4 x double>* %176, align 8, !alias.scope !99, !noalias !101
  %index.next1146 = add i64 %index1145, 4
  %vec.ind.next1152 = add <4 x i32> %vec.ind1151, <i32 4, i32 4, i32 4, i32 4>
  %177 = icmp eq i64 %index.next1146, 32
  br i1 %177, label %polly.loop_exit770, label %vector.body1143, !llvm.loop !104

polly.loop_exit770:                               ; preds = %vector.body1143
  %polly.indvar_next766 = add nuw nsw i64 %polly.indvar765, 1
  %exitcond916.not = icmp eq i64 %polly.indvar_next766, 32
  br i1 %exitcond916.not, label %polly.loop_header762.1, label %polly.loop_header762

polly.loop_header789:                             ; preds = %polly.loop_exit770.2.2, %polly.loop_exit797
  %polly.indvar792 = phi i64 [ %polly.indvar_next793, %polly.loop_exit797 ], [ 0, %polly.loop_exit770.2.2 ]
  %178 = mul nuw nsw i64 %polly.indvar792, 480
  %179 = trunc i64 %polly.indvar792 to i32
  %broadcast.splatinsert1267 = insertelement <4 x i32> poison, i32 %179, i32 0
  %broadcast.splat1268 = shufflevector <4 x i32> %broadcast.splatinsert1267, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1257

vector.body1257:                                  ; preds = %vector.body1257, %polly.loop_header789
  %index1259 = phi i64 [ 0, %polly.loop_header789 ], [ %index.next1260, %vector.body1257 ]
  %vec.ind1265 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header789 ], [ %vec.ind.next1266, %vector.body1257 ]
  %180 = mul <4 x i32> %vec.ind1265, %broadcast.splat1268
  %181 = add <4 x i32> %180, <i32 2, i32 2, i32 2, i32 2>
  %182 = urem <4 x i32> %181, <i32 60, i32 60, i32 60, i32 60>
  %183 = sitofp <4 x i32> %182 to <4 x double>
  %184 = fmul fast <4 x double> %183, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %185 = shl i64 %index1259, 3
  %186 = add i64 %185, %178
  %187 = getelementptr i8, i8* %call2, i64 %186
  %188 = bitcast i8* %187 to <4 x double>*
  store <4 x double> %184, <4 x double>* %188, align 8, !alias.scope !103, !noalias !105
  %index.next1260 = add i64 %index1259, 4
  %vec.ind.next1266 = add <4 x i32> %vec.ind1265, <i32 4, i32 4, i32 4, i32 4>
  %189 = icmp eq i64 %index.next1260, 32
  br i1 %189, label %polly.loop_exit797, label %vector.body1257, !llvm.loop !106

polly.loop_exit797:                               ; preds = %vector.body1257
  %polly.indvar_next793 = add nuw nsw i64 %polly.indvar792, 1
  %exitcond907.not = icmp eq i64 %polly.indvar_next793, 32
  br i1 %exitcond907.not, label %polly.loop_header789.1, label %polly.loop_header789

polly.loop_header815:                             ; preds = %polly.loop_exit797.1.2, %polly.loop_exit823
  %polly.indvar818 = phi i64 [ %polly.indvar_next819, %polly.loop_exit823 ], [ 0, %polly.loop_exit797.1.2 ]
  %190 = mul nuw nsw i64 %polly.indvar818, 480
  %191 = trunc i64 %polly.indvar818 to i32
  %broadcast.splatinsert1345 = insertelement <4 x i32> poison, i32 %191, i32 0
  %broadcast.splat1346 = shufflevector <4 x i32> %broadcast.splatinsert1345, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1335

vector.body1335:                                  ; preds = %vector.body1335, %polly.loop_header815
  %index1337 = phi i64 [ 0, %polly.loop_header815 ], [ %index.next1338, %vector.body1335 ]
  %vec.ind1343 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header815 ], [ %vec.ind.next1344, %vector.body1335 ]
  %192 = mul <4 x i32> %vec.ind1343, %broadcast.splat1346
  %193 = add <4 x i32> %192, <i32 1, i32 1, i32 1, i32 1>
  %194 = urem <4 x i32> %193, <i32 80, i32 80, i32 80, i32 80>
  %195 = sitofp <4 x i32> %194 to <4 x double>
  %196 = fmul fast <4 x double> %195, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %197 = shl i64 %index1337, 3
  %198 = add i64 %197, %190
  %199 = getelementptr i8, i8* %call1, i64 %198
  %200 = bitcast i8* %199 to <4 x double>*
  store <4 x double> %196, <4 x double>* %200, align 8, !alias.scope !102, !noalias !107
  %index.next1338 = add i64 %index1337, 4
  %vec.ind.next1344 = add <4 x i32> %vec.ind1343, <i32 4, i32 4, i32 4, i32 4>
  %201 = icmp eq i64 %index.next1338, 32
  br i1 %201, label %polly.loop_exit823, label %vector.body1335, !llvm.loop !108

polly.loop_exit823:                               ; preds = %vector.body1335
  %polly.indvar_next819 = add nuw nsw i64 %polly.indvar818, 1
  %exitcond901.not = icmp eq i64 %polly.indvar_next819, 32
  br i1 %exitcond901.not, label %polly.loop_header815.1, label %polly.loop_header815

polly.loop_header233.preheader.1:                 ; preds = %polly.loop_exit235
  %202 = add nsw i64 %indvars.iv854, -64
  %smax.1 = call i64 @llvm.smax.i64(i64 %202, i64 0)
  %203 = add i64 %indvars.iv852, %smax.1
  %204 = add i64 %203, 64
  br label %polly.loop_header233.1

polly.loop_header233.1:                           ; preds = %polly.loop_exit241.1, %polly.loop_header233.preheader.1
  %polly.indvar236.1 = phi i64 [ %polly.indvar_next237.1, %polly.loop_exit241.1 ], [ 0, %polly.loop_header233.preheader.1 ]
  %205 = shl i64 %polly.indvar236.1, 3
  %polly.access.mul.Packed_MemRef_call2256.1 = mul nuw nsw i64 %polly.indvar236.1, 80
  br label %polly.loop_header239.1

polly.loop_header239.1:                           ; preds = %polly.loop_exit248.1, %polly.loop_header233.1
  %indvars.iv856.1 = phi i64 [ %204, %polly.loop_header233.1 ], [ %indvars.iv.next857.1, %polly.loop_exit248.1 ]
  %polly.indvar242.1 = phi i64 [ %103, %polly.loop_header233.1 ], [ %polly.indvar_next243.1, %polly.loop_exit248.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv856.1, i64 19)
  %206 = add nuw i64 %polly.indvar242.1, 64
  %207 = add i64 %206, %98
  %polly.loop_guard249.11112 = icmp sgt i64 %207, -1
  br i1 %polly.loop_guard249.11112, label %polly.loop_header246.preheader.1, label %polly.loop_exit248.1

polly.loop_header246.preheader.1:                 ; preds = %polly.loop_header239.1
  %polly.access.add.Packed_MemRef_call2257.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call2256.1, %207
  %polly.access.Packed_MemRef_call2258.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257.1
  %_p_scalar_259.1 = load double, double* %polly.access.Packed_MemRef_call2258.1, align 8
  %208 = mul i64 %206, 480
  %209 = add i64 %208, %205
  %scevgep264.1 = getelementptr i8, i8* %call1, i64 %209
  %scevgep264265.1 = bitcast i8* %scevgep264.1 to double*
  %_p_scalar_266.1 = load double, double* %scevgep264265.1, align 8, !alias.scope !71, !noalias !78
  %210 = mul i64 %206, 640
  br label %polly.loop_header246.1

polly.loop_header246.1:                           ; preds = %polly.loop_header246.1, %polly.loop_header246.preheader.1
  %polly.indvar250.1 = phi i64 [ %polly.indvar_next251.1, %polly.loop_header246.1 ], [ 0, %polly.loop_header246.preheader.1 ]
  %211 = add nuw nsw i64 %polly.indvar250.1, %97
  %212 = mul nuw nsw i64 %211, 480
  %213 = add nuw nsw i64 %212, %205
  %scevgep253.1 = getelementptr i8, i8* %call1, i64 %213
  %scevgep253254.1 = bitcast i8* %scevgep253.1 to double*
  %_p_scalar_255.1 = load double, double* %scevgep253254.1, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.1 = fmul fast double %_p_scalar_259.1, %_p_scalar_255.1
  %polly.access.add.Packed_MemRef_call2261.1 = add nuw nsw i64 %polly.indvar250.1, %polly.access.mul.Packed_MemRef_call2256.1
  %polly.access.Packed_MemRef_call2262.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.1
  %_p_scalar_263.1 = load double, double* %polly.access.Packed_MemRef_call2262.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_266.1, %_p_scalar_263.1
  %214 = shl i64 %211, 3
  %215 = add i64 %214, %210
  %scevgep267.1 = getelementptr i8, i8* %call, i64 %215
  %scevgep267268.1 = bitcast i8* %scevgep267.1 to double*
  %_p_scalar_269.1 = load double, double* %scevgep267268.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_269.1
  store double %p_add42.i118.1, double* %scevgep267268.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next251.1 = add nuw nsw i64 %polly.indvar250.1, 1
  %exitcond858.1.not = icmp eq i64 %polly.indvar250.1, %smin.1
  br i1 %exitcond858.1.not, label %polly.loop_exit248.1, label %polly.loop_header246.1

polly.loop_exit248.1:                             ; preds = %polly.loop_header246.1, %polly.loop_header239.1
  %polly.indvar_next243.1 = add nuw nsw i64 %polly.indvar242.1, 1
  %polly.loop_cond244.not.not.1 = icmp ult i64 %polly.indvar242.1, 15
  %indvars.iv.next857.1 = add i64 %indvars.iv856.1, 1
  br i1 %polly.loop_cond244.not.not.1, label %polly.loop_header239.1, label %polly.loop_exit241.1

polly.loop_exit241.1:                             ; preds = %polly.loop_exit248.1
  %polly.indvar_next237.1 = add nuw nsw i64 %polly.indvar236.1, 1
  %exitcond859.1.not = icmp eq i64 %polly.indvar_next237.1, 32
  br i1 %exitcond859.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.1

polly.loop_exit235.1:                             ; preds = %polly.loop_exit241.1, %polly.loop_exit235
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -20
  %indvars.iv.next853 = add nsw i64 %indvars.iv852, -20
  %indvars.iv.next855 = add nuw nsw i64 %indvars.iv854, 20
  %exitcond860.not = icmp eq i64 %polly.indvar_next209, 4
  br i1 %exitcond860.not, label %polly.loop_header205.1, label %polly.loop_header205

polly.loop_header205.1:                           ; preds = %polly.loop_exit235.1, %polly.loop_exit235.1.1
  %indvars.iv854.1 = phi i64 [ %indvars.iv.next855.1, %polly.loop_exit235.1.1 ], [ 0, %polly.loop_exit235.1 ]
  %indvars.iv852.1 = phi i64 [ %indvars.iv.next853.1, %polly.loop_exit235.1.1 ], [ 0, %polly.loop_exit235.1 ]
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit235.1.1 ], [ 80, %polly.loop_exit235.1 ]
  %polly.indvar208.1 = phi i64 [ %polly.indvar_next209.1, %polly.loop_exit235.1.1 ], [ 0, %polly.loop_exit235.1 ]
  %216 = mul i64 %polly.indvar208.1, 20
  br label %polly.loop_header211.1

polly.loop_header211.1:                           ; preds = %polly.loop_exit219.1, %polly.loop_header205.1
  %polly.indvar214.1 = phi i64 [ 0, %polly.loop_header205.1 ], [ %polly.indvar_next215.1, %polly.loop_exit219.1 ]
  %217 = add nuw nsw i64 %polly.indvar214.1, 32
  %polly.access.mul.Packed_MemRef_call2.1 = mul nuw nsw i64 %polly.indvar214.1, 80
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_header217.1, %polly.loop_header211.1
  %polly.indvar220.1 = phi i64 [ 0, %polly.loop_header211.1 ], [ %polly.indvar_next221.1, %polly.loop_header217.1 ]
  %218 = add nuw nsw i64 %polly.indvar220.1, %216
  %polly.access.mul.call2224.1 = mul nuw nsw i64 %218, 60
  %polly.access.add.call2225.1 = add nuw nsw i64 %217, %polly.access.mul.call2224.1
  %polly.access.call2226.1 = getelementptr double, double* %polly.access.cast.call2638, i64 %polly.access.add.call2225.1
  %polly.access.call2226.load.1 = load double, double* %polly.access.call2226.1, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2.1 = add nuw nsw i64 %polly.indvar220.1, %polly.access.mul.Packed_MemRef_call2.1
  %polly.access.Packed_MemRef_call2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.1
  store double %polly.access.call2226.load.1, double* %polly.access.Packed_MemRef_call2.1, align 8
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next221.1, %indvars.iv.1
  br i1 %exitcond.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.1

polly.loop_exit219.1:                             ; preds = %polly.loop_header217.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %exitcond851.1.not = icmp eq i64 %polly.indvar_next215.1, 28
  br i1 %exitcond851.1.not, label %polly.loop_header227.preheader.1, label %polly.loop_header211.1

polly.loop_header227.preheader.1:                 ; preds = %polly.loop_exit219.1
  %219 = mul nsw i64 %polly.indvar208.1, -20
  %polly.loop_guard.not.1920 = icmp sgt i64 %216, 63
  br i1 %polly.loop_guard.not.1920, label %polly.loop_exit235.1964, label %polly.loop_header233.preheader.1921

polly.loop_header233.preheader.1921:              ; preds = %polly.loop_header227.preheader.1
  %220 = add i64 %indvars.iv852.1, %indvars.iv854.1
  br label %polly.loop_header233.1924

polly.loop_header233.1924:                        ; preds = %polly.loop_exit241.1962, %polly.loop_header233.preheader.1921
  %polly.indvar236.1922 = phi i64 [ %polly.indvar_next237.1960, %polly.loop_exit241.1962 ], [ 0, %polly.loop_header233.preheader.1921 ]
  %221 = shl i64 %polly.indvar236.1922, 3
  %222 = add i64 %221, 256
  %polly.access.mul.Packed_MemRef_call2256.1923 = mul nuw nsw i64 %polly.indvar236.1922, 80
  br label %polly.loop_header239.1929

polly.loop_header239.1929:                        ; preds = %polly.loop_exit248.1959, %polly.loop_header233.1924
  %indvars.iv856.1925 = phi i64 [ %220, %polly.loop_header233.1924 ], [ %indvars.iv.next857.1958, %polly.loop_exit248.1959 ]
  %polly.indvar242.1926 = phi i64 [ %216, %polly.loop_header233.1924 ], [ %polly.indvar_next243.1956, %polly.loop_exit248.1959 ]
  %smin.1927 = call i64 @llvm.smin.i64(i64 %indvars.iv856.1925, i64 19)
  %223 = add i64 %polly.indvar242.1926, %219
  %polly.loop_guard249.19281113 = icmp sgt i64 %223, -1
  br i1 %polly.loop_guard249.19281113, label %polly.loop_header246.preheader.1936, label %polly.loop_exit248.1959

polly.loop_header246.preheader.1936:              ; preds = %polly.loop_header239.1929
  %polly.access.add.Packed_MemRef_call2257.1930 = add nsw i64 %polly.access.mul.Packed_MemRef_call2256.1923, %223
  %polly.access.Packed_MemRef_call2258.1931 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257.1930
  %_p_scalar_259.1932 = load double, double* %polly.access.Packed_MemRef_call2258.1931, align 8
  %224 = mul i64 %polly.indvar242.1926, 480
  %225 = add i64 %224, %222
  %scevgep264.1933 = getelementptr i8, i8* %call1, i64 %225
  %scevgep264265.1934 = bitcast i8* %scevgep264.1933 to double*
  %_p_scalar_266.1935 = load double, double* %scevgep264265.1934, align 8, !alias.scope !71, !noalias !78
  %226 = mul i64 %polly.indvar242.1926, 640
  br label %polly.loop_header246.1954

polly.loop_header246.1954:                        ; preds = %polly.loop_header246.1954, %polly.loop_header246.preheader.1936
  %polly.indvar250.1937 = phi i64 [ %polly.indvar_next251.1952, %polly.loop_header246.1954 ], [ 0, %polly.loop_header246.preheader.1936 ]
  %227 = add nuw nsw i64 %polly.indvar250.1937, %216
  %228 = mul nuw nsw i64 %227, 480
  %229 = add nuw nsw i64 %228, %222
  %scevgep253.1938 = getelementptr i8, i8* %call1, i64 %229
  %scevgep253254.1939 = bitcast i8* %scevgep253.1938 to double*
  %_p_scalar_255.1940 = load double, double* %scevgep253254.1939, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.1941 = fmul fast double %_p_scalar_259.1932, %_p_scalar_255.1940
  %polly.access.add.Packed_MemRef_call2261.1942 = add nuw nsw i64 %polly.indvar250.1937, %polly.access.mul.Packed_MemRef_call2256.1923
  %polly.access.Packed_MemRef_call2262.1943 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.1942
  %_p_scalar_263.1944 = load double, double* %polly.access.Packed_MemRef_call2262.1943, align 8
  %p_mul37.i114.1945 = fmul fast double %_p_scalar_266.1935, %_p_scalar_263.1944
  %230 = shl i64 %227, 3
  %231 = add i64 %230, %226
  %scevgep267.1946 = getelementptr i8, i8* %call, i64 %231
  %scevgep267268.1947 = bitcast i8* %scevgep267.1946 to double*
  %_p_scalar_269.1948 = load double, double* %scevgep267268.1947, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.1949 = fadd fast double %p_mul37.i114.1945, %p_mul27.i112.1941
  %p_reass.mul.i117.1950 = fmul fast double %p_reass.add.i116.1949, 1.500000e+00
  %p_add42.i118.1951 = fadd fast double %p_reass.mul.i117.1950, %_p_scalar_269.1948
  store double %p_add42.i118.1951, double* %scevgep267268.1947, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next251.1952 = add nuw nsw i64 %polly.indvar250.1937, 1
  %exitcond858.1953.not = icmp eq i64 %polly.indvar250.1937, %smin.1927
  br i1 %exitcond858.1953.not, label %polly.loop_exit248.1959, label %polly.loop_header246.1954

polly.loop_exit248.1959:                          ; preds = %polly.loop_header246.1954, %polly.loop_header239.1929
  %polly.indvar_next243.1956 = add nuw nsw i64 %polly.indvar242.1926, 1
  %polly.loop_cond244.not.not.1957 = icmp ult i64 %polly.indvar242.1926, 63
  %indvars.iv.next857.1958 = add i64 %indvars.iv856.1925, 1
  br i1 %polly.loop_cond244.not.not.1957, label %polly.loop_header239.1929, label %polly.loop_exit241.1962

polly.loop_exit241.1962:                          ; preds = %polly.loop_exit248.1959
  %polly.indvar_next237.1960 = add nuw nsw i64 %polly.indvar236.1922, 1
  %exitcond859.1961.not = icmp eq i64 %polly.indvar_next237.1960, 28
  br i1 %exitcond859.1961.not, label %polly.loop_exit235.1964, label %polly.loop_header233.1924

polly.loop_exit235.1964:                          ; preds = %polly.loop_exit241.1962, %polly.loop_header227.preheader.1
  %232 = icmp sgt i64 %216, 64
  %233 = select i1 %232, i64 %216, i64 64
  %234 = add nsw i64 %233, -64
  %polly.loop_guard.not.1.1 = icmp sgt i64 %233, 79
  br i1 %polly.loop_guard.not.1.1, label %polly.loop_exit235.1.1, label %polly.loop_header233.preheader.1.1

polly.loop_header233.preheader.1.1:               ; preds = %polly.loop_exit235.1964
  %235 = add nsw i64 %indvars.iv854.1, -64
  %smax.1.1 = call i64 @llvm.smax.i64(i64 %235, i64 0)
  %236 = add i64 %indvars.iv852.1, %smax.1.1
  %237 = add i64 %236, 64
  br label %polly.loop_header233.1.1

polly.loop_header233.1.1:                         ; preds = %polly.loop_exit241.1.1, %polly.loop_header233.preheader.1.1
  %polly.indvar236.1.1 = phi i64 [ %polly.indvar_next237.1.1, %polly.loop_exit241.1.1 ], [ 0, %polly.loop_header233.preheader.1.1 ]
  %238 = shl i64 %polly.indvar236.1.1, 3
  %239 = add i64 %238, 256
  %polly.access.mul.Packed_MemRef_call2256.1.1 = mul nuw nsw i64 %polly.indvar236.1.1, 80
  br label %polly.loop_header239.1.1

polly.loop_header239.1.1:                         ; preds = %polly.loop_exit248.1.1, %polly.loop_header233.1.1
  %indvars.iv856.1.1 = phi i64 [ %237, %polly.loop_header233.1.1 ], [ %indvars.iv.next857.1.1, %polly.loop_exit248.1.1 ]
  %polly.indvar242.1.1 = phi i64 [ %234, %polly.loop_header233.1.1 ], [ %polly.indvar_next243.1.1, %polly.loop_exit248.1.1 ]
  %smin.1.1 = call i64 @llvm.smin.i64(i64 %indvars.iv856.1.1, i64 19)
  %240 = add nuw i64 %polly.indvar242.1.1, 64
  %241 = add i64 %240, %219
  %polly.loop_guard249.1.11114 = icmp sgt i64 %241, -1
  br i1 %polly.loop_guard249.1.11114, label %polly.loop_header246.preheader.1.1, label %polly.loop_exit248.1.1

polly.loop_header246.preheader.1.1:               ; preds = %polly.loop_header239.1.1
  %polly.access.add.Packed_MemRef_call2257.1.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call2256.1.1, %241
  %polly.access.Packed_MemRef_call2258.1.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257.1.1
  %_p_scalar_259.1.1 = load double, double* %polly.access.Packed_MemRef_call2258.1.1, align 8
  %242 = mul i64 %240, 480
  %243 = add i64 %242, %239
  %scevgep264.1.1 = getelementptr i8, i8* %call1, i64 %243
  %scevgep264265.1.1 = bitcast i8* %scevgep264.1.1 to double*
  %_p_scalar_266.1.1 = load double, double* %scevgep264265.1.1, align 8, !alias.scope !71, !noalias !78
  %244 = mul i64 %240, 640
  br label %polly.loop_header246.1.1

polly.loop_header246.1.1:                         ; preds = %polly.loop_header246.1.1, %polly.loop_header246.preheader.1.1
  %polly.indvar250.1.1 = phi i64 [ %polly.indvar_next251.1.1, %polly.loop_header246.1.1 ], [ 0, %polly.loop_header246.preheader.1.1 ]
  %245 = add nuw nsw i64 %polly.indvar250.1.1, %216
  %246 = mul nuw nsw i64 %245, 480
  %247 = add nuw nsw i64 %246, %239
  %scevgep253.1.1 = getelementptr i8, i8* %call1, i64 %247
  %scevgep253254.1.1 = bitcast i8* %scevgep253.1.1 to double*
  %_p_scalar_255.1.1 = load double, double* %scevgep253254.1.1, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.1.1 = fmul fast double %_p_scalar_259.1.1, %_p_scalar_255.1.1
  %polly.access.add.Packed_MemRef_call2261.1.1 = add nuw nsw i64 %polly.indvar250.1.1, %polly.access.mul.Packed_MemRef_call2256.1.1
  %polly.access.Packed_MemRef_call2262.1.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.1.1
  %_p_scalar_263.1.1 = load double, double* %polly.access.Packed_MemRef_call2262.1.1, align 8
  %p_mul37.i114.1.1 = fmul fast double %_p_scalar_266.1.1, %_p_scalar_263.1.1
  %248 = shl i64 %245, 3
  %249 = add i64 %248, %244
  %scevgep267.1.1 = getelementptr i8, i8* %call, i64 %249
  %scevgep267268.1.1 = bitcast i8* %scevgep267.1.1 to double*
  %_p_scalar_269.1.1 = load double, double* %scevgep267268.1.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.1.1 = fadd fast double %p_mul37.i114.1.1, %p_mul27.i112.1.1
  %p_reass.mul.i117.1.1 = fmul fast double %p_reass.add.i116.1.1, 1.500000e+00
  %p_add42.i118.1.1 = fadd fast double %p_reass.mul.i117.1.1, %_p_scalar_269.1.1
  store double %p_add42.i118.1.1, double* %scevgep267268.1.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next251.1.1 = add nuw nsw i64 %polly.indvar250.1.1, 1
  %exitcond858.1.1.not = icmp eq i64 %polly.indvar250.1.1, %smin.1.1
  br i1 %exitcond858.1.1.not, label %polly.loop_exit248.1.1, label %polly.loop_header246.1.1

polly.loop_exit248.1.1:                           ; preds = %polly.loop_header246.1.1, %polly.loop_header239.1.1
  %polly.indvar_next243.1.1 = add nuw nsw i64 %polly.indvar242.1.1, 1
  %polly.loop_cond244.not.not.1.1 = icmp ult i64 %polly.indvar242.1.1, 15
  %indvars.iv.next857.1.1 = add i64 %indvars.iv856.1.1, 1
  br i1 %polly.loop_cond244.not.not.1.1, label %polly.loop_header239.1.1, label %polly.loop_exit241.1.1

polly.loop_exit241.1.1:                           ; preds = %polly.loop_exit248.1.1
  %polly.indvar_next237.1.1 = add nuw nsw i64 %polly.indvar236.1.1, 1
  %exitcond859.1.1.not = icmp eq i64 %polly.indvar_next237.1.1, 28
  br i1 %exitcond859.1.1.not, label %polly.loop_exit235.1.1, label %polly.loop_header233.1.1

polly.loop_exit235.1.1:                           ; preds = %polly.loop_exit241.1.1, %polly.loop_exit235.1964
  %polly.indvar_next209.1 = add nuw nsw i64 %polly.indvar208.1, 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, -20
  %indvars.iv.next853.1 = add nsw i64 %indvars.iv852.1, -20
  %indvars.iv.next855.1 = add nuw nsw i64 %indvars.iv854.1, 20
  %exitcond860.1.not = icmp eq i64 %polly.indvar_next209.1, 4
  br i1 %exitcond860.1.not, label %polly.loop_exit207.1, label %polly.loop_header205.1

polly.loop_exit207.1:                             ; preds = %polly.loop_exit235.1.1
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header408.preheader.1:                 ; preds = %polly.loop_exit410
  %250 = add nsw i64 %indvars.iv869, -64
  %smax871.1 = call i64 @llvm.smax.i64(i64 %250, i64 0)
  %251 = add i64 %indvars.iv867, %smax871.1
  %252 = add i64 %251, 64
  br label %polly.loop_header408.1

polly.loop_header408.1:                           ; preds = %polly.loop_exit417.1, %polly.loop_header408.preheader.1
  %polly.indvar411.1 = phi i64 [ %polly.indvar_next412.1, %polly.loop_exit417.1 ], [ 0, %polly.loop_header408.preheader.1 ]
  %253 = shl i64 %polly.indvar411.1, 3
  %polly.access.mul.Packed_MemRef_call2275433.1 = mul nuw nsw i64 %polly.indvar411.1, 80
  br label %polly.loop_header415.1

polly.loop_header415.1:                           ; preds = %polly.loop_exit425.1, %polly.loop_header408.1
  %indvars.iv872.1 = phi i64 [ %252, %polly.loop_header408.1 ], [ %indvars.iv.next873.1, %polly.loop_exit425.1 ]
  %polly.indvar419.1 = phi i64 [ %129, %polly.loop_header408.1 ], [ %polly.indvar_next420.1, %polly.loop_exit425.1 ]
  %smin874.1 = call i64 @llvm.smin.i64(i64 %indvars.iv872.1, i64 19)
  %254 = add nuw i64 %polly.indvar419.1, 64
  %255 = add i64 %254, %124
  %polly.loop_guard426.11116 = icmp sgt i64 %255, -1
  br i1 %polly.loop_guard426.11116, label %polly.loop_header423.preheader.1, label %polly.loop_exit425.1

polly.loop_header423.preheader.1:                 ; preds = %polly.loop_header415.1
  %polly.access.add.Packed_MemRef_call2275434.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call2275433.1, %255
  %polly.access.Packed_MemRef_call2275435.1 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275434.1
  %_p_scalar_436.1 = load double, double* %polly.access.Packed_MemRef_call2275435.1, align 8
  %256 = mul i64 %254, 480
  %257 = add i64 %256, %253
  %scevgep441.1 = getelementptr i8, i8* %call1, i64 %257
  %scevgep441442.1 = bitcast i8* %scevgep441.1 to double*
  %_p_scalar_443.1 = load double, double* %scevgep441442.1, align 8, !alias.scope !82, !noalias !88
  %258 = mul i64 %254, 640
  br label %polly.loop_header423.1

polly.loop_header423.1:                           ; preds = %polly.loop_header423.1, %polly.loop_header423.preheader.1
  %polly.indvar427.1 = phi i64 [ %polly.indvar_next428.1, %polly.loop_header423.1 ], [ 0, %polly.loop_header423.preheader.1 ]
  %259 = add nuw nsw i64 %polly.indvar427.1, %123
  %260 = mul nuw nsw i64 %259, 480
  %261 = add nuw nsw i64 %260, %253
  %scevgep430.1 = getelementptr i8, i8* %call1, i64 %261
  %scevgep430431.1 = bitcast i8* %scevgep430.1 to double*
  %_p_scalar_432.1 = load double, double* %scevgep430431.1, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.1 = fmul fast double %_p_scalar_436.1, %_p_scalar_432.1
  %polly.access.add.Packed_MemRef_call2275438.1 = add nuw nsw i64 %polly.indvar427.1, %polly.access.mul.Packed_MemRef_call2275433.1
  %polly.access.Packed_MemRef_call2275439.1 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275438.1
  %_p_scalar_440.1 = load double, double* %polly.access.Packed_MemRef_call2275439.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_443.1, %_p_scalar_440.1
  %262 = shl i64 %259, 3
  %263 = add i64 %262, %258
  %scevgep444.1 = getelementptr i8, i8* %call, i64 %263
  %scevgep444445.1 = bitcast i8* %scevgep444.1 to double*
  %_p_scalar_446.1 = load double, double* %scevgep444445.1, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_446.1
  store double %p_add42.i79.1, double* %scevgep444445.1, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next428.1 = add nuw nsw i64 %polly.indvar427.1, 1
  %exitcond875.1.not = icmp eq i64 %polly.indvar427.1, %smin874.1
  br i1 %exitcond875.1.not, label %polly.loop_exit425.1, label %polly.loop_header423.1

polly.loop_exit425.1:                             ; preds = %polly.loop_header423.1, %polly.loop_header415.1
  %polly.indvar_next420.1 = add nuw nsw i64 %polly.indvar419.1, 1
  %polly.loop_cond421.not.not.1 = icmp ult i64 %polly.indvar419.1, 15
  %indvars.iv.next873.1 = add i64 %indvars.iv872.1, 1
  br i1 %polly.loop_cond421.not.not.1, label %polly.loop_header415.1, label %polly.loop_exit417.1

polly.loop_exit417.1:                             ; preds = %polly.loop_exit425.1
  %polly.indvar_next412.1 = add nuw nsw i64 %polly.indvar411.1, 1
  %exitcond876.1.not = icmp eq i64 %polly.indvar_next412.1, 32
  br i1 %exitcond876.1.not, label %polly.loop_exit410.1, label %polly.loop_header408.1

polly.loop_exit410.1:                             ; preds = %polly.loop_exit417.1, %polly.loop_exit410
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %indvars.iv.next864 = add nsw i64 %indvars.iv863, -20
  %indvars.iv.next868 = add nsw i64 %indvars.iv867, -20
  %indvars.iv.next870 = add nuw nsw i64 %indvars.iv869, 20
  %exitcond877.not = icmp eq i64 %polly.indvar_next384, 4
  br i1 %exitcond877.not, label %polly.loop_header380.1, label %polly.loop_header380

polly.loop_header380.1:                           ; preds = %polly.loop_exit410.1, %polly.loop_exit410.1.1
  %indvars.iv869.1 = phi i64 [ %indvars.iv.next870.1, %polly.loop_exit410.1.1 ], [ 0, %polly.loop_exit410.1 ]
  %indvars.iv867.1 = phi i64 [ %indvars.iv.next868.1, %polly.loop_exit410.1.1 ], [ 0, %polly.loop_exit410.1 ]
  %indvars.iv863.1 = phi i64 [ %indvars.iv.next864.1, %polly.loop_exit410.1.1 ], [ 80, %polly.loop_exit410.1 ]
  %polly.indvar383.1 = phi i64 [ %polly.indvar_next384.1, %polly.loop_exit410.1.1 ], [ 0, %polly.loop_exit410.1 ]
  %264 = mul i64 %polly.indvar383.1, 20
  br label %polly.loop_header386.1

polly.loop_header386.1:                           ; preds = %polly.loop_exit394.1, %polly.loop_header380.1
  %polly.indvar389.1 = phi i64 [ 0, %polly.loop_header380.1 ], [ %polly.indvar_next390.1, %polly.loop_exit394.1 ]
  %265 = add nuw nsw i64 %polly.indvar389.1, 32
  %polly.access.mul.Packed_MemRef_call2275.1 = mul nuw nsw i64 %polly.indvar389.1, 80
  br label %polly.loop_header392.1

polly.loop_header392.1:                           ; preds = %polly.loop_header392.1, %polly.loop_header386.1
  %polly.indvar395.1 = phi i64 [ 0, %polly.loop_header386.1 ], [ %polly.indvar_next396.1, %polly.loop_header392.1 ]
  %266 = add nuw nsw i64 %polly.indvar395.1, %264
  %polly.access.mul.call2399.1 = mul nuw nsw i64 %266, 60
  %polly.access.add.call2400.1 = add nuw nsw i64 %265, %polly.access.mul.call2399.1
  %polly.access.call2401.1 = getelementptr double, double* %polly.access.cast.call2638, i64 %polly.access.add.call2400.1
  %polly.access.call2401.load.1 = load double, double* %polly.access.call2401.1, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2275.1 = add nuw nsw i64 %polly.indvar395.1, %polly.access.mul.Packed_MemRef_call2275.1
  %polly.access.Packed_MemRef_call2275.1 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275.1
  store double %polly.access.call2401.load.1, double* %polly.access.Packed_MemRef_call2275.1, align 8
  %polly.indvar_next396.1 = add nuw nsw i64 %polly.indvar395.1, 1
  %exitcond865.1.not = icmp eq i64 %polly.indvar_next396.1, %indvars.iv863.1
  br i1 %exitcond865.1.not, label %polly.loop_exit394.1, label %polly.loop_header392.1

polly.loop_exit394.1:                             ; preds = %polly.loop_header392.1
  %polly.indvar_next390.1 = add nuw nsw i64 %polly.indvar389.1, 1
  %exitcond866.1.not = icmp eq i64 %polly.indvar_next390.1, 28
  br i1 %exitcond866.1.not, label %polly.loop_header402.preheader.1, label %polly.loop_header386.1

polly.loop_header402.preheader.1:                 ; preds = %polly.loop_exit394.1
  %267 = mul nsw i64 %polly.indvar383.1, -20
  %polly.loop_guard418.not.1965 = icmp sgt i64 %264, 63
  br i1 %polly.loop_guard418.not.1965, label %polly.loop_exit410.11009, label %polly.loop_header408.preheader.1966

polly.loop_header408.preheader.1966:              ; preds = %polly.loop_header402.preheader.1
  %268 = add i64 %indvars.iv867.1, %indvars.iv869.1
  br label %polly.loop_header408.1969

polly.loop_header408.1969:                        ; preds = %polly.loop_exit417.11007, %polly.loop_header408.preheader.1966
  %polly.indvar411.1967 = phi i64 [ %polly.indvar_next412.11005, %polly.loop_exit417.11007 ], [ 0, %polly.loop_header408.preheader.1966 ]
  %269 = shl i64 %polly.indvar411.1967, 3
  %270 = add i64 %269, 256
  %polly.access.mul.Packed_MemRef_call2275433.1968 = mul nuw nsw i64 %polly.indvar411.1967, 80
  br label %polly.loop_header415.1974

polly.loop_header415.1974:                        ; preds = %polly.loop_exit425.11004, %polly.loop_header408.1969
  %indvars.iv872.1970 = phi i64 [ %268, %polly.loop_header408.1969 ], [ %indvars.iv.next873.11003, %polly.loop_exit425.11004 ]
  %polly.indvar419.1971 = phi i64 [ %264, %polly.loop_header408.1969 ], [ %polly.indvar_next420.11001, %polly.loop_exit425.11004 ]
  %smin874.1972 = call i64 @llvm.smin.i64(i64 %indvars.iv872.1970, i64 19)
  %271 = add i64 %polly.indvar419.1971, %267
  %polly.loop_guard426.19731117 = icmp sgt i64 %271, -1
  br i1 %polly.loop_guard426.19731117, label %polly.loop_header423.preheader.1981, label %polly.loop_exit425.11004

polly.loop_header423.preheader.1981:              ; preds = %polly.loop_header415.1974
  %polly.access.add.Packed_MemRef_call2275434.1975 = add nsw i64 %polly.access.mul.Packed_MemRef_call2275433.1968, %271
  %polly.access.Packed_MemRef_call2275435.1976 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275434.1975
  %_p_scalar_436.1977 = load double, double* %polly.access.Packed_MemRef_call2275435.1976, align 8
  %272 = mul i64 %polly.indvar419.1971, 480
  %273 = add i64 %272, %270
  %scevgep441.1978 = getelementptr i8, i8* %call1, i64 %273
  %scevgep441442.1979 = bitcast i8* %scevgep441.1978 to double*
  %_p_scalar_443.1980 = load double, double* %scevgep441442.1979, align 8, !alias.scope !82, !noalias !88
  %274 = mul i64 %polly.indvar419.1971, 640
  br label %polly.loop_header423.1999

polly.loop_header423.1999:                        ; preds = %polly.loop_header423.1999, %polly.loop_header423.preheader.1981
  %polly.indvar427.1982 = phi i64 [ %polly.indvar_next428.1997, %polly.loop_header423.1999 ], [ 0, %polly.loop_header423.preheader.1981 ]
  %275 = add nuw nsw i64 %polly.indvar427.1982, %264
  %276 = mul nuw nsw i64 %275, 480
  %277 = add nuw nsw i64 %276, %270
  %scevgep430.1983 = getelementptr i8, i8* %call1, i64 %277
  %scevgep430431.1984 = bitcast i8* %scevgep430.1983 to double*
  %_p_scalar_432.1985 = load double, double* %scevgep430431.1984, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.1986 = fmul fast double %_p_scalar_436.1977, %_p_scalar_432.1985
  %polly.access.add.Packed_MemRef_call2275438.1987 = add nuw nsw i64 %polly.indvar427.1982, %polly.access.mul.Packed_MemRef_call2275433.1968
  %polly.access.Packed_MemRef_call2275439.1988 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275438.1987
  %_p_scalar_440.1989 = load double, double* %polly.access.Packed_MemRef_call2275439.1988, align 8
  %p_mul37.i75.1990 = fmul fast double %_p_scalar_443.1980, %_p_scalar_440.1989
  %278 = shl i64 %275, 3
  %279 = add i64 %278, %274
  %scevgep444.1991 = getelementptr i8, i8* %call, i64 %279
  %scevgep444445.1992 = bitcast i8* %scevgep444.1991 to double*
  %_p_scalar_446.1993 = load double, double* %scevgep444445.1992, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.1994 = fadd fast double %p_mul37.i75.1990, %p_mul27.i73.1986
  %p_reass.mul.i78.1995 = fmul fast double %p_reass.add.i77.1994, 1.500000e+00
  %p_add42.i79.1996 = fadd fast double %p_reass.mul.i78.1995, %_p_scalar_446.1993
  store double %p_add42.i79.1996, double* %scevgep444445.1992, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next428.1997 = add nuw nsw i64 %polly.indvar427.1982, 1
  %exitcond875.1998.not = icmp eq i64 %polly.indvar427.1982, %smin874.1972
  br i1 %exitcond875.1998.not, label %polly.loop_exit425.11004, label %polly.loop_header423.1999

polly.loop_exit425.11004:                         ; preds = %polly.loop_header423.1999, %polly.loop_header415.1974
  %polly.indvar_next420.11001 = add nuw nsw i64 %polly.indvar419.1971, 1
  %polly.loop_cond421.not.not.11002 = icmp ult i64 %polly.indvar419.1971, 63
  %indvars.iv.next873.11003 = add i64 %indvars.iv872.1970, 1
  br i1 %polly.loop_cond421.not.not.11002, label %polly.loop_header415.1974, label %polly.loop_exit417.11007

polly.loop_exit417.11007:                         ; preds = %polly.loop_exit425.11004
  %polly.indvar_next412.11005 = add nuw nsw i64 %polly.indvar411.1967, 1
  %exitcond876.11006.not = icmp eq i64 %polly.indvar_next412.11005, 28
  br i1 %exitcond876.11006.not, label %polly.loop_exit410.11009, label %polly.loop_header408.1969

polly.loop_exit410.11009:                         ; preds = %polly.loop_exit417.11007, %polly.loop_header402.preheader.1
  %280 = icmp sgt i64 %264, 64
  %281 = select i1 %280, i64 %264, i64 64
  %282 = add nsw i64 %281, -64
  %polly.loop_guard418.not.1.1 = icmp sgt i64 %281, 79
  br i1 %polly.loop_guard418.not.1.1, label %polly.loop_exit410.1.1, label %polly.loop_header408.preheader.1.1

polly.loop_header408.preheader.1.1:               ; preds = %polly.loop_exit410.11009
  %283 = add nsw i64 %indvars.iv869.1, -64
  %smax871.1.1 = call i64 @llvm.smax.i64(i64 %283, i64 0)
  %284 = add i64 %indvars.iv867.1, %smax871.1.1
  %285 = add i64 %284, 64
  br label %polly.loop_header408.1.1

polly.loop_header408.1.1:                         ; preds = %polly.loop_exit417.1.1, %polly.loop_header408.preheader.1.1
  %polly.indvar411.1.1 = phi i64 [ %polly.indvar_next412.1.1, %polly.loop_exit417.1.1 ], [ 0, %polly.loop_header408.preheader.1.1 ]
  %286 = shl i64 %polly.indvar411.1.1, 3
  %287 = add i64 %286, 256
  %polly.access.mul.Packed_MemRef_call2275433.1.1 = mul nuw nsw i64 %polly.indvar411.1.1, 80
  br label %polly.loop_header415.1.1

polly.loop_header415.1.1:                         ; preds = %polly.loop_exit425.1.1, %polly.loop_header408.1.1
  %indvars.iv872.1.1 = phi i64 [ %285, %polly.loop_header408.1.1 ], [ %indvars.iv.next873.1.1, %polly.loop_exit425.1.1 ]
  %polly.indvar419.1.1 = phi i64 [ %282, %polly.loop_header408.1.1 ], [ %polly.indvar_next420.1.1, %polly.loop_exit425.1.1 ]
  %smin874.1.1 = call i64 @llvm.smin.i64(i64 %indvars.iv872.1.1, i64 19)
  %288 = add nuw i64 %polly.indvar419.1.1, 64
  %289 = add i64 %288, %267
  %polly.loop_guard426.1.11118 = icmp sgt i64 %289, -1
  br i1 %polly.loop_guard426.1.11118, label %polly.loop_header423.preheader.1.1, label %polly.loop_exit425.1.1

polly.loop_header423.preheader.1.1:               ; preds = %polly.loop_header415.1.1
  %polly.access.add.Packed_MemRef_call2275434.1.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call2275433.1.1, %289
  %polly.access.Packed_MemRef_call2275435.1.1 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275434.1.1
  %_p_scalar_436.1.1 = load double, double* %polly.access.Packed_MemRef_call2275435.1.1, align 8
  %290 = mul i64 %288, 480
  %291 = add i64 %290, %287
  %scevgep441.1.1 = getelementptr i8, i8* %call1, i64 %291
  %scevgep441442.1.1 = bitcast i8* %scevgep441.1.1 to double*
  %_p_scalar_443.1.1 = load double, double* %scevgep441442.1.1, align 8, !alias.scope !82, !noalias !88
  %292 = mul i64 %288, 640
  br label %polly.loop_header423.1.1

polly.loop_header423.1.1:                         ; preds = %polly.loop_header423.1.1, %polly.loop_header423.preheader.1.1
  %polly.indvar427.1.1 = phi i64 [ %polly.indvar_next428.1.1, %polly.loop_header423.1.1 ], [ 0, %polly.loop_header423.preheader.1.1 ]
  %293 = add nuw nsw i64 %polly.indvar427.1.1, %264
  %294 = mul nuw nsw i64 %293, 480
  %295 = add nuw nsw i64 %294, %287
  %scevgep430.1.1 = getelementptr i8, i8* %call1, i64 %295
  %scevgep430431.1.1 = bitcast i8* %scevgep430.1.1 to double*
  %_p_scalar_432.1.1 = load double, double* %scevgep430431.1.1, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.1.1 = fmul fast double %_p_scalar_436.1.1, %_p_scalar_432.1.1
  %polly.access.add.Packed_MemRef_call2275438.1.1 = add nuw nsw i64 %polly.indvar427.1.1, %polly.access.mul.Packed_MemRef_call2275433.1.1
  %polly.access.Packed_MemRef_call2275439.1.1 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275438.1.1
  %_p_scalar_440.1.1 = load double, double* %polly.access.Packed_MemRef_call2275439.1.1, align 8
  %p_mul37.i75.1.1 = fmul fast double %_p_scalar_443.1.1, %_p_scalar_440.1.1
  %296 = shl i64 %293, 3
  %297 = add i64 %296, %292
  %scevgep444.1.1 = getelementptr i8, i8* %call, i64 %297
  %scevgep444445.1.1 = bitcast i8* %scevgep444.1.1 to double*
  %_p_scalar_446.1.1 = load double, double* %scevgep444445.1.1, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.1.1 = fadd fast double %p_mul37.i75.1.1, %p_mul27.i73.1.1
  %p_reass.mul.i78.1.1 = fmul fast double %p_reass.add.i77.1.1, 1.500000e+00
  %p_add42.i79.1.1 = fadd fast double %p_reass.mul.i78.1.1, %_p_scalar_446.1.1
  store double %p_add42.i79.1.1, double* %scevgep444445.1.1, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next428.1.1 = add nuw nsw i64 %polly.indvar427.1.1, 1
  %exitcond875.1.1.not = icmp eq i64 %polly.indvar427.1.1, %smin874.1.1
  br i1 %exitcond875.1.1.not, label %polly.loop_exit425.1.1, label %polly.loop_header423.1.1

polly.loop_exit425.1.1:                           ; preds = %polly.loop_header423.1.1, %polly.loop_header415.1.1
  %polly.indvar_next420.1.1 = add nuw nsw i64 %polly.indvar419.1.1, 1
  %polly.loop_cond421.not.not.1.1 = icmp ult i64 %polly.indvar419.1.1, 15
  %indvars.iv.next873.1.1 = add i64 %indvars.iv872.1.1, 1
  br i1 %polly.loop_cond421.not.not.1.1, label %polly.loop_header415.1.1, label %polly.loop_exit417.1.1

polly.loop_exit417.1.1:                           ; preds = %polly.loop_exit425.1.1
  %polly.indvar_next412.1.1 = add nuw nsw i64 %polly.indvar411.1.1, 1
  %exitcond876.1.1.not = icmp eq i64 %polly.indvar_next412.1.1, 28
  br i1 %exitcond876.1.1.not, label %polly.loop_exit410.1.1, label %polly.loop_header408.1.1

polly.loop_exit410.1.1:                           ; preds = %polly.loop_exit417.1.1, %polly.loop_exit410.11009
  %polly.indvar_next384.1 = add nuw nsw i64 %polly.indvar383.1, 1
  %indvars.iv.next864.1 = add nsw i64 %indvars.iv863.1, -20
  %indvars.iv.next868.1 = add nsw i64 %indvars.iv867.1, -20
  %indvars.iv.next870.1 = add nuw nsw i64 %indvars.iv869.1, 20
  %exitcond877.1.not = icmp eq i64 %polly.indvar_next384.1, 4
  br i1 %exitcond877.1.not, label %polly.loop_exit382.1, label %polly.loop_header380.1

polly.loop_exit382.1:                             ; preds = %polly.loop_exit410.1.1
  tail call void @free(i8* %malloccall274)
  br label %kernel_syr2k.exit90

polly.loop_header585.preheader.1:                 ; preds = %polly.loop_exit587
  %298 = add nsw i64 %indvars.iv886, -64
  %smax888.1 = call i64 @llvm.smax.i64(i64 %298, i64 0)
  %299 = add i64 %indvars.iv884, %smax888.1
  %300 = add i64 %299, 64
  br label %polly.loop_header585.1

polly.loop_header585.1:                           ; preds = %polly.loop_exit594.1, %polly.loop_header585.preheader.1
  %polly.indvar588.1 = phi i64 [ %polly.indvar_next589.1, %polly.loop_exit594.1 ], [ 0, %polly.loop_header585.preheader.1 ]
  %301 = shl i64 %polly.indvar588.1, 3
  %polly.access.mul.Packed_MemRef_call2452610.1 = mul nuw nsw i64 %polly.indvar588.1, 80
  br label %polly.loop_header592.1

polly.loop_header592.1:                           ; preds = %polly.loop_exit602.1, %polly.loop_header585.1
  %indvars.iv889.1 = phi i64 [ %300, %polly.loop_header585.1 ], [ %indvars.iv.next890.1, %polly.loop_exit602.1 ]
  %polly.indvar596.1 = phi i64 [ %155, %polly.loop_header585.1 ], [ %polly.indvar_next597.1, %polly.loop_exit602.1 ]
  %smin891.1 = call i64 @llvm.smin.i64(i64 %indvars.iv889.1, i64 19)
  %302 = add nuw i64 %polly.indvar596.1, 64
  %303 = add i64 %302, %150
  %polly.loop_guard603.11120 = icmp sgt i64 %303, -1
  br i1 %polly.loop_guard603.11120, label %polly.loop_header600.preheader.1, label %polly.loop_exit602.1

polly.loop_header600.preheader.1:                 ; preds = %polly.loop_header592.1
  %polly.access.add.Packed_MemRef_call2452611.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call2452610.1, %303
  %polly.access.Packed_MemRef_call2452612.1 = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452611.1
  %_p_scalar_613.1 = load double, double* %polly.access.Packed_MemRef_call2452612.1, align 8
  %304 = mul i64 %302, 480
  %305 = add i64 %304, %301
  %scevgep618.1 = getelementptr i8, i8* %call1, i64 %305
  %scevgep618619.1 = bitcast i8* %scevgep618.1 to double*
  %_p_scalar_620.1 = load double, double* %scevgep618619.1, align 8, !alias.scope !92, !noalias !98
  %306 = mul i64 %302, 640
  br label %polly.loop_header600.1

polly.loop_header600.1:                           ; preds = %polly.loop_header600.1, %polly.loop_header600.preheader.1
  %polly.indvar604.1 = phi i64 [ %polly.indvar_next605.1, %polly.loop_header600.1 ], [ 0, %polly.loop_header600.preheader.1 ]
  %307 = add nuw nsw i64 %polly.indvar604.1, %149
  %308 = mul nuw nsw i64 %307, 480
  %309 = add nuw nsw i64 %308, %301
  %scevgep607.1 = getelementptr i8, i8* %call1, i64 %309
  %scevgep607608.1 = bitcast i8* %scevgep607.1 to double*
  %_p_scalar_609.1 = load double, double* %scevgep607608.1, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.1 = fmul fast double %_p_scalar_613.1, %_p_scalar_609.1
  %polly.access.add.Packed_MemRef_call2452615.1 = add nuw nsw i64 %polly.indvar604.1, %polly.access.mul.Packed_MemRef_call2452610.1
  %polly.access.Packed_MemRef_call2452616.1 = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452615.1
  %_p_scalar_617.1 = load double, double* %polly.access.Packed_MemRef_call2452616.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_620.1, %_p_scalar_617.1
  %310 = shl i64 %307, 3
  %311 = add i64 %310, %306
  %scevgep621.1 = getelementptr i8, i8* %call, i64 %311
  %scevgep621622.1 = bitcast i8* %scevgep621.1 to double*
  %_p_scalar_623.1 = load double, double* %scevgep621622.1, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_623.1
  store double %p_add42.i.1, double* %scevgep621622.1, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next605.1 = add nuw nsw i64 %polly.indvar604.1, 1
  %exitcond892.1.not = icmp eq i64 %polly.indvar604.1, %smin891.1
  br i1 %exitcond892.1.not, label %polly.loop_exit602.1, label %polly.loop_header600.1

polly.loop_exit602.1:                             ; preds = %polly.loop_header600.1, %polly.loop_header592.1
  %polly.indvar_next597.1 = add nuw nsw i64 %polly.indvar596.1, 1
  %polly.loop_cond598.not.not.1 = icmp ult i64 %polly.indvar596.1, 15
  %indvars.iv.next890.1 = add i64 %indvars.iv889.1, 1
  br i1 %polly.loop_cond598.not.not.1, label %polly.loop_header592.1, label %polly.loop_exit594.1

polly.loop_exit594.1:                             ; preds = %polly.loop_exit602.1
  %polly.indvar_next589.1 = add nuw nsw i64 %polly.indvar588.1, 1
  %exitcond893.1.not = icmp eq i64 %polly.indvar_next589.1, 32
  br i1 %exitcond893.1.not, label %polly.loop_exit587.1, label %polly.loop_header585.1

polly.loop_exit587.1:                             ; preds = %polly.loop_exit594.1, %polly.loop_exit587
  %polly.indvar_next561 = add nuw nsw i64 %polly.indvar560, 1
  %indvars.iv.next881 = add nsw i64 %indvars.iv880, -20
  %indvars.iv.next885 = add nsw i64 %indvars.iv884, -20
  %indvars.iv.next887 = add nuw nsw i64 %indvars.iv886, 20
  %exitcond894.not = icmp eq i64 %polly.indvar_next561, 4
  br i1 %exitcond894.not, label %polly.loop_header557.1, label %polly.loop_header557

polly.loop_header557.1:                           ; preds = %polly.loop_exit587.1, %polly.loop_exit587.1.1
  %indvars.iv886.1 = phi i64 [ %indvars.iv.next887.1, %polly.loop_exit587.1.1 ], [ 0, %polly.loop_exit587.1 ]
  %indvars.iv884.1 = phi i64 [ %indvars.iv.next885.1, %polly.loop_exit587.1.1 ], [ 0, %polly.loop_exit587.1 ]
  %indvars.iv880.1 = phi i64 [ %indvars.iv.next881.1, %polly.loop_exit587.1.1 ], [ 80, %polly.loop_exit587.1 ]
  %polly.indvar560.1 = phi i64 [ %polly.indvar_next561.1, %polly.loop_exit587.1.1 ], [ 0, %polly.loop_exit587.1 ]
  %312 = mul i64 %polly.indvar560.1, 20
  br label %polly.loop_header563.1

polly.loop_header563.1:                           ; preds = %polly.loop_exit571.1, %polly.loop_header557.1
  %polly.indvar566.1 = phi i64 [ 0, %polly.loop_header557.1 ], [ %polly.indvar_next567.1, %polly.loop_exit571.1 ]
  %313 = add nuw nsw i64 %polly.indvar566.1, 32
  %polly.access.mul.Packed_MemRef_call2452.1 = mul nuw nsw i64 %polly.indvar566.1, 80
  br label %polly.loop_header569.1

polly.loop_header569.1:                           ; preds = %polly.loop_header569.1, %polly.loop_header563.1
  %polly.indvar572.1 = phi i64 [ 0, %polly.loop_header563.1 ], [ %polly.indvar_next573.1, %polly.loop_header569.1 ]
  %314 = add nuw nsw i64 %polly.indvar572.1, %312
  %polly.access.mul.call2576.1 = mul nuw nsw i64 %314, 60
  %polly.access.add.call2577.1 = add nuw nsw i64 %313, %polly.access.mul.call2576.1
  %polly.access.call2578.1 = getelementptr double, double* %polly.access.cast.call2638, i64 %polly.access.add.call2577.1
  %polly.access.call2578.load.1 = load double, double* %polly.access.call2578.1, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2452.1 = add nuw nsw i64 %polly.indvar572.1, %polly.access.mul.Packed_MemRef_call2452.1
  %polly.access.Packed_MemRef_call2452.1 = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452.1
  store double %polly.access.call2578.load.1, double* %polly.access.Packed_MemRef_call2452.1, align 8
  %polly.indvar_next573.1 = add nuw nsw i64 %polly.indvar572.1, 1
  %exitcond882.1.not = icmp eq i64 %polly.indvar_next573.1, %indvars.iv880.1
  br i1 %exitcond882.1.not, label %polly.loop_exit571.1, label %polly.loop_header569.1

polly.loop_exit571.1:                             ; preds = %polly.loop_header569.1
  %polly.indvar_next567.1 = add nuw nsw i64 %polly.indvar566.1, 1
  %exitcond883.1.not = icmp eq i64 %polly.indvar_next567.1, 28
  br i1 %exitcond883.1.not, label %polly.loop_header579.preheader.1, label %polly.loop_header563.1

polly.loop_header579.preheader.1:                 ; preds = %polly.loop_exit571.1
  %315 = mul nsw i64 %polly.indvar560.1, -20
  %polly.loop_guard595.not.11010 = icmp sgt i64 %312, 63
  br i1 %polly.loop_guard595.not.11010, label %polly.loop_exit587.11054, label %polly.loop_header585.preheader.11011

polly.loop_header585.preheader.11011:             ; preds = %polly.loop_header579.preheader.1
  %316 = add i64 %indvars.iv884.1, %indvars.iv886.1
  br label %polly.loop_header585.11014

polly.loop_header585.11014:                       ; preds = %polly.loop_exit594.11052, %polly.loop_header585.preheader.11011
  %polly.indvar588.11012 = phi i64 [ %polly.indvar_next589.11050, %polly.loop_exit594.11052 ], [ 0, %polly.loop_header585.preheader.11011 ]
  %317 = shl i64 %polly.indvar588.11012, 3
  %318 = add i64 %317, 256
  %polly.access.mul.Packed_MemRef_call2452610.11013 = mul nuw nsw i64 %polly.indvar588.11012, 80
  br label %polly.loop_header592.11019

polly.loop_header592.11019:                       ; preds = %polly.loop_exit602.11049, %polly.loop_header585.11014
  %indvars.iv889.11015 = phi i64 [ %316, %polly.loop_header585.11014 ], [ %indvars.iv.next890.11048, %polly.loop_exit602.11049 ]
  %polly.indvar596.11016 = phi i64 [ %312, %polly.loop_header585.11014 ], [ %polly.indvar_next597.11046, %polly.loop_exit602.11049 ]
  %smin891.11017 = call i64 @llvm.smin.i64(i64 %indvars.iv889.11015, i64 19)
  %319 = add i64 %polly.indvar596.11016, %315
  %polly.loop_guard603.110181121 = icmp sgt i64 %319, -1
  br i1 %polly.loop_guard603.110181121, label %polly.loop_header600.preheader.11026, label %polly.loop_exit602.11049

polly.loop_header600.preheader.11026:             ; preds = %polly.loop_header592.11019
  %polly.access.add.Packed_MemRef_call2452611.11020 = add nsw i64 %polly.access.mul.Packed_MemRef_call2452610.11013, %319
  %polly.access.Packed_MemRef_call2452612.11021 = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452611.11020
  %_p_scalar_613.11022 = load double, double* %polly.access.Packed_MemRef_call2452612.11021, align 8
  %320 = mul i64 %polly.indvar596.11016, 480
  %321 = add i64 %320, %318
  %scevgep618.11023 = getelementptr i8, i8* %call1, i64 %321
  %scevgep618619.11024 = bitcast i8* %scevgep618.11023 to double*
  %_p_scalar_620.11025 = load double, double* %scevgep618619.11024, align 8, !alias.scope !92, !noalias !98
  %322 = mul i64 %polly.indvar596.11016, 640
  br label %polly.loop_header600.11044

polly.loop_header600.11044:                       ; preds = %polly.loop_header600.11044, %polly.loop_header600.preheader.11026
  %polly.indvar604.11027 = phi i64 [ %polly.indvar_next605.11042, %polly.loop_header600.11044 ], [ 0, %polly.loop_header600.preheader.11026 ]
  %323 = add nuw nsw i64 %polly.indvar604.11027, %312
  %324 = mul nuw nsw i64 %323, 480
  %325 = add nuw nsw i64 %324, %318
  %scevgep607.11028 = getelementptr i8, i8* %call1, i64 %325
  %scevgep607608.11029 = bitcast i8* %scevgep607.11028 to double*
  %_p_scalar_609.11030 = load double, double* %scevgep607608.11029, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.11031 = fmul fast double %_p_scalar_613.11022, %_p_scalar_609.11030
  %polly.access.add.Packed_MemRef_call2452615.11032 = add nuw nsw i64 %polly.indvar604.11027, %polly.access.mul.Packed_MemRef_call2452610.11013
  %polly.access.Packed_MemRef_call2452616.11033 = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452615.11032
  %_p_scalar_617.11034 = load double, double* %polly.access.Packed_MemRef_call2452616.11033, align 8
  %p_mul37.i.11035 = fmul fast double %_p_scalar_620.11025, %_p_scalar_617.11034
  %326 = shl i64 %323, 3
  %327 = add i64 %326, %322
  %scevgep621.11036 = getelementptr i8, i8* %call, i64 %327
  %scevgep621622.11037 = bitcast i8* %scevgep621.11036 to double*
  %_p_scalar_623.11038 = load double, double* %scevgep621622.11037, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.11039 = fadd fast double %p_mul37.i.11035, %p_mul27.i.11031
  %p_reass.mul.i.11040 = fmul fast double %p_reass.add.i.11039, 1.500000e+00
  %p_add42.i.11041 = fadd fast double %p_reass.mul.i.11040, %_p_scalar_623.11038
  store double %p_add42.i.11041, double* %scevgep621622.11037, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next605.11042 = add nuw nsw i64 %polly.indvar604.11027, 1
  %exitcond892.11043.not = icmp eq i64 %polly.indvar604.11027, %smin891.11017
  br i1 %exitcond892.11043.not, label %polly.loop_exit602.11049, label %polly.loop_header600.11044

polly.loop_exit602.11049:                         ; preds = %polly.loop_header600.11044, %polly.loop_header592.11019
  %polly.indvar_next597.11046 = add nuw nsw i64 %polly.indvar596.11016, 1
  %polly.loop_cond598.not.not.11047 = icmp ult i64 %polly.indvar596.11016, 63
  %indvars.iv.next890.11048 = add i64 %indvars.iv889.11015, 1
  br i1 %polly.loop_cond598.not.not.11047, label %polly.loop_header592.11019, label %polly.loop_exit594.11052

polly.loop_exit594.11052:                         ; preds = %polly.loop_exit602.11049
  %polly.indvar_next589.11050 = add nuw nsw i64 %polly.indvar588.11012, 1
  %exitcond893.11051.not = icmp eq i64 %polly.indvar_next589.11050, 28
  br i1 %exitcond893.11051.not, label %polly.loop_exit587.11054, label %polly.loop_header585.11014

polly.loop_exit587.11054:                         ; preds = %polly.loop_exit594.11052, %polly.loop_header579.preheader.1
  %328 = icmp sgt i64 %312, 64
  %329 = select i1 %328, i64 %312, i64 64
  %330 = add nsw i64 %329, -64
  %polly.loop_guard595.not.1.1 = icmp sgt i64 %329, 79
  br i1 %polly.loop_guard595.not.1.1, label %polly.loop_exit587.1.1, label %polly.loop_header585.preheader.1.1

polly.loop_header585.preheader.1.1:               ; preds = %polly.loop_exit587.11054
  %331 = add nsw i64 %indvars.iv886.1, -64
  %smax888.1.1 = call i64 @llvm.smax.i64(i64 %331, i64 0)
  %332 = add i64 %indvars.iv884.1, %smax888.1.1
  %333 = add i64 %332, 64
  br label %polly.loop_header585.1.1

polly.loop_header585.1.1:                         ; preds = %polly.loop_exit594.1.1, %polly.loop_header585.preheader.1.1
  %polly.indvar588.1.1 = phi i64 [ %polly.indvar_next589.1.1, %polly.loop_exit594.1.1 ], [ 0, %polly.loop_header585.preheader.1.1 ]
  %334 = shl i64 %polly.indvar588.1.1, 3
  %335 = add i64 %334, 256
  %polly.access.mul.Packed_MemRef_call2452610.1.1 = mul nuw nsw i64 %polly.indvar588.1.1, 80
  br label %polly.loop_header592.1.1

polly.loop_header592.1.1:                         ; preds = %polly.loop_exit602.1.1, %polly.loop_header585.1.1
  %indvars.iv889.1.1 = phi i64 [ %333, %polly.loop_header585.1.1 ], [ %indvars.iv.next890.1.1, %polly.loop_exit602.1.1 ]
  %polly.indvar596.1.1 = phi i64 [ %330, %polly.loop_header585.1.1 ], [ %polly.indvar_next597.1.1, %polly.loop_exit602.1.1 ]
  %smin891.1.1 = call i64 @llvm.smin.i64(i64 %indvars.iv889.1.1, i64 19)
  %336 = add nuw i64 %polly.indvar596.1.1, 64
  %337 = add i64 %336, %315
  %polly.loop_guard603.1.11122 = icmp sgt i64 %337, -1
  br i1 %polly.loop_guard603.1.11122, label %polly.loop_header600.preheader.1.1, label %polly.loop_exit602.1.1

polly.loop_header600.preheader.1.1:               ; preds = %polly.loop_header592.1.1
  %polly.access.add.Packed_MemRef_call2452611.1.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call2452610.1.1, %337
  %polly.access.Packed_MemRef_call2452612.1.1 = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452611.1.1
  %_p_scalar_613.1.1 = load double, double* %polly.access.Packed_MemRef_call2452612.1.1, align 8
  %338 = mul i64 %336, 480
  %339 = add i64 %338, %335
  %scevgep618.1.1 = getelementptr i8, i8* %call1, i64 %339
  %scevgep618619.1.1 = bitcast i8* %scevgep618.1.1 to double*
  %_p_scalar_620.1.1 = load double, double* %scevgep618619.1.1, align 8, !alias.scope !92, !noalias !98
  %340 = mul i64 %336, 640
  br label %polly.loop_header600.1.1

polly.loop_header600.1.1:                         ; preds = %polly.loop_header600.1.1, %polly.loop_header600.preheader.1.1
  %polly.indvar604.1.1 = phi i64 [ %polly.indvar_next605.1.1, %polly.loop_header600.1.1 ], [ 0, %polly.loop_header600.preheader.1.1 ]
  %341 = add nuw nsw i64 %polly.indvar604.1.1, %312
  %342 = mul nuw nsw i64 %341, 480
  %343 = add nuw nsw i64 %342, %335
  %scevgep607.1.1 = getelementptr i8, i8* %call1, i64 %343
  %scevgep607608.1.1 = bitcast i8* %scevgep607.1.1 to double*
  %_p_scalar_609.1.1 = load double, double* %scevgep607608.1.1, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.1.1 = fmul fast double %_p_scalar_613.1.1, %_p_scalar_609.1.1
  %polly.access.add.Packed_MemRef_call2452615.1.1 = add nuw nsw i64 %polly.indvar604.1.1, %polly.access.mul.Packed_MemRef_call2452610.1.1
  %polly.access.Packed_MemRef_call2452616.1.1 = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452615.1.1
  %_p_scalar_617.1.1 = load double, double* %polly.access.Packed_MemRef_call2452616.1.1, align 8
  %p_mul37.i.1.1 = fmul fast double %_p_scalar_620.1.1, %_p_scalar_617.1.1
  %344 = shl i64 %341, 3
  %345 = add i64 %344, %340
  %scevgep621.1.1 = getelementptr i8, i8* %call, i64 %345
  %scevgep621622.1.1 = bitcast i8* %scevgep621.1.1 to double*
  %_p_scalar_623.1.1 = load double, double* %scevgep621622.1.1, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.1.1 = fadd fast double %p_mul37.i.1.1, %p_mul27.i.1.1
  %p_reass.mul.i.1.1 = fmul fast double %p_reass.add.i.1.1, 1.500000e+00
  %p_add42.i.1.1 = fadd fast double %p_reass.mul.i.1.1, %_p_scalar_623.1.1
  store double %p_add42.i.1.1, double* %scevgep621622.1.1, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next605.1.1 = add nuw nsw i64 %polly.indvar604.1.1, 1
  %exitcond892.1.1.not = icmp eq i64 %polly.indvar604.1.1, %smin891.1.1
  br i1 %exitcond892.1.1.not, label %polly.loop_exit602.1.1, label %polly.loop_header600.1.1

polly.loop_exit602.1.1:                           ; preds = %polly.loop_header600.1.1, %polly.loop_header592.1.1
  %polly.indvar_next597.1.1 = add nuw nsw i64 %polly.indvar596.1.1, 1
  %polly.loop_cond598.not.not.1.1 = icmp ult i64 %polly.indvar596.1.1, 15
  %indvars.iv.next890.1.1 = add i64 %indvars.iv889.1.1, 1
  br i1 %polly.loop_cond598.not.not.1.1, label %polly.loop_header592.1.1, label %polly.loop_exit594.1.1

polly.loop_exit594.1.1:                           ; preds = %polly.loop_exit602.1.1
  %polly.indvar_next589.1.1 = add nuw nsw i64 %polly.indvar588.1.1, 1
  %exitcond893.1.1.not = icmp eq i64 %polly.indvar_next589.1.1, 28
  br i1 %exitcond893.1.1.not, label %polly.loop_exit587.1.1, label %polly.loop_header585.1.1

polly.loop_exit587.1.1:                           ; preds = %polly.loop_exit594.1.1, %polly.loop_exit587.11054
  %polly.indvar_next561.1 = add nuw nsw i64 %polly.indvar560.1, 1
  %indvars.iv.next881.1 = add nsw i64 %indvars.iv880.1, -20
  %indvars.iv.next885.1 = add nsw i64 %indvars.iv884.1, -20
  %indvars.iv.next887.1 = add nuw nsw i64 %indvars.iv886.1, 20
  %exitcond894.1.not = icmp eq i64 %polly.indvar_next561.1, 4
  br i1 %exitcond894.1.not, label %polly.loop_exit559.1, label %polly.loop_header557.1

polly.loop_exit559.1:                             ; preds = %polly.loop_exit587.1.1
  tail call void @free(i8* %malloccall451)
  br label %kernel_syr2k.exit

polly.loop_header815.1:                           ; preds = %polly.loop_exit823, %polly.loop_exit823.1
  %polly.indvar818.1 = phi i64 [ %polly.indvar_next819.1, %polly.loop_exit823.1 ], [ 0, %polly.loop_exit823 ]
  %346 = mul nuw nsw i64 %polly.indvar818.1, 480
  %347 = trunc i64 %polly.indvar818.1 to i32
  %broadcast.splatinsert1357 = insertelement <4 x i32> poison, i32 %347, i32 0
  %broadcast.splat1358 = shufflevector <4 x i32> %broadcast.splatinsert1357, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1349

vector.body1349:                                  ; preds = %vector.body1349, %polly.loop_header815.1
  %index1351 = phi i64 [ 0, %polly.loop_header815.1 ], [ %index.next1352, %vector.body1349 ]
  %vec.ind1355 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header815.1 ], [ %vec.ind.next1356, %vector.body1349 ]
  %348 = add nuw nsw <4 x i64> %vec.ind1355, <i64 32, i64 32, i64 32, i64 32>
  %349 = trunc <4 x i64> %348 to <4 x i32>
  %350 = mul <4 x i32> %broadcast.splat1358, %349
  %351 = add <4 x i32> %350, <i32 1, i32 1, i32 1, i32 1>
  %352 = urem <4 x i32> %351, <i32 80, i32 80, i32 80, i32 80>
  %353 = sitofp <4 x i32> %352 to <4 x double>
  %354 = fmul fast <4 x double> %353, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %355 = extractelement <4 x i64> %348, i32 0
  %356 = shl i64 %355, 3
  %357 = add i64 %356, %346
  %358 = getelementptr i8, i8* %call1, i64 %357
  %359 = bitcast i8* %358 to <4 x double>*
  store <4 x double> %354, <4 x double>* %359, align 8, !alias.scope !102, !noalias !107
  %index.next1352 = add i64 %index1351, 4
  %vec.ind.next1356 = add <4 x i64> %vec.ind1355, <i64 4, i64 4, i64 4, i64 4>
  %360 = icmp eq i64 %index.next1352, 28
  br i1 %360, label %polly.loop_exit823.1, label %vector.body1349, !llvm.loop !109

polly.loop_exit823.1:                             ; preds = %vector.body1349
  %polly.indvar_next819.1 = add nuw nsw i64 %polly.indvar818.1, 1
  %exitcond901.1.not = icmp eq i64 %polly.indvar_next819.1, 32
  br i1 %exitcond901.1.not, label %polly.loop_header815.11056, label %polly.loop_header815.1

polly.loop_header815.11056:                       ; preds = %polly.loop_exit823.1, %polly.loop_exit823.11067
  %polly.indvar818.11055 = phi i64 [ %polly.indvar_next819.11065, %polly.loop_exit823.11067 ], [ 0, %polly.loop_exit823.1 ]
  %361 = add nuw nsw i64 %polly.indvar818.11055, 32
  %362 = mul nuw nsw i64 %361, 480
  %363 = trunc i64 %361 to i32
  %broadcast.splatinsert1371 = insertelement <4 x i32> poison, i32 %363, i32 0
  %broadcast.splat1372 = shufflevector <4 x i32> %broadcast.splatinsert1371, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1361

vector.body1361:                                  ; preds = %vector.body1361, %polly.loop_header815.11056
  %index1363 = phi i64 [ 0, %polly.loop_header815.11056 ], [ %index.next1364, %vector.body1361 ]
  %vec.ind1369 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header815.11056 ], [ %vec.ind.next1370, %vector.body1361 ]
  %364 = mul <4 x i32> %vec.ind1369, %broadcast.splat1372
  %365 = add <4 x i32> %364, <i32 1, i32 1, i32 1, i32 1>
  %366 = urem <4 x i32> %365, <i32 80, i32 80, i32 80, i32 80>
  %367 = sitofp <4 x i32> %366 to <4 x double>
  %368 = fmul fast <4 x double> %367, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %369 = shl i64 %index1363, 3
  %370 = add i64 %369, %362
  %371 = getelementptr i8, i8* %call1, i64 %370
  %372 = bitcast i8* %371 to <4 x double>*
  store <4 x double> %368, <4 x double>* %372, align 8, !alias.scope !102, !noalias !107
  %index.next1364 = add i64 %index1363, 4
  %vec.ind.next1370 = add <4 x i32> %vec.ind1369, <i32 4, i32 4, i32 4, i32 4>
  %373 = icmp eq i64 %index.next1364, 32
  br i1 %373, label %polly.loop_exit823.11067, label %vector.body1361, !llvm.loop !110

polly.loop_exit823.11067:                         ; preds = %vector.body1361
  %polly.indvar_next819.11065 = add nuw nsw i64 %polly.indvar818.11055, 1
  %exitcond901.11066.not = icmp eq i64 %polly.indvar_next819.11065, 32
  br i1 %exitcond901.11066.not, label %polly.loop_header815.1.1, label %polly.loop_header815.11056

polly.loop_header815.1.1:                         ; preds = %polly.loop_exit823.11067, %polly.loop_exit823.1.1
  %polly.indvar818.1.1 = phi i64 [ %polly.indvar_next819.1.1, %polly.loop_exit823.1.1 ], [ 0, %polly.loop_exit823.11067 ]
  %374 = add nuw nsw i64 %polly.indvar818.1.1, 32
  %375 = mul nuw nsw i64 %374, 480
  %376 = trunc i64 %374 to i32
  %broadcast.splatinsert1383 = insertelement <4 x i32> poison, i32 %376, i32 0
  %broadcast.splat1384 = shufflevector <4 x i32> %broadcast.splatinsert1383, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1375

vector.body1375:                                  ; preds = %vector.body1375, %polly.loop_header815.1.1
  %index1377 = phi i64 [ 0, %polly.loop_header815.1.1 ], [ %index.next1378, %vector.body1375 ]
  %vec.ind1381 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header815.1.1 ], [ %vec.ind.next1382, %vector.body1375 ]
  %377 = add nuw nsw <4 x i64> %vec.ind1381, <i64 32, i64 32, i64 32, i64 32>
  %378 = trunc <4 x i64> %377 to <4 x i32>
  %379 = mul <4 x i32> %broadcast.splat1384, %378
  %380 = add <4 x i32> %379, <i32 1, i32 1, i32 1, i32 1>
  %381 = urem <4 x i32> %380, <i32 80, i32 80, i32 80, i32 80>
  %382 = sitofp <4 x i32> %381 to <4 x double>
  %383 = fmul fast <4 x double> %382, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %384 = extractelement <4 x i64> %377, i32 0
  %385 = shl i64 %384, 3
  %386 = add i64 %385, %375
  %387 = getelementptr i8, i8* %call1, i64 %386
  %388 = bitcast i8* %387 to <4 x double>*
  store <4 x double> %383, <4 x double>* %388, align 8, !alias.scope !102, !noalias !107
  %index.next1378 = add i64 %index1377, 4
  %vec.ind.next1382 = add <4 x i64> %vec.ind1381, <i64 4, i64 4, i64 4, i64 4>
  %389 = icmp eq i64 %index.next1378, 28
  br i1 %389, label %polly.loop_exit823.1.1, label %vector.body1375, !llvm.loop !111

polly.loop_exit823.1.1:                           ; preds = %vector.body1375
  %polly.indvar_next819.1.1 = add nuw nsw i64 %polly.indvar818.1.1, 1
  %exitcond901.1.1.not = icmp eq i64 %polly.indvar_next819.1.1, 32
  br i1 %exitcond901.1.1.not, label %polly.loop_header815.2, label %polly.loop_header815.1.1

polly.loop_header815.2:                           ; preds = %polly.loop_exit823.1.1, %polly.loop_exit823.2
  %polly.indvar818.2 = phi i64 [ %polly.indvar_next819.2, %polly.loop_exit823.2 ], [ 0, %polly.loop_exit823.1.1 ]
  %390 = add nuw nsw i64 %polly.indvar818.2, 64
  %391 = mul nuw nsw i64 %390, 480
  %392 = trunc i64 %390 to i32
  %broadcast.splatinsert1397 = insertelement <4 x i32> poison, i32 %392, i32 0
  %broadcast.splat1398 = shufflevector <4 x i32> %broadcast.splatinsert1397, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1387

vector.body1387:                                  ; preds = %vector.body1387, %polly.loop_header815.2
  %index1389 = phi i64 [ 0, %polly.loop_header815.2 ], [ %index.next1390, %vector.body1387 ]
  %vec.ind1395 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header815.2 ], [ %vec.ind.next1396, %vector.body1387 ]
  %393 = mul <4 x i32> %vec.ind1395, %broadcast.splat1398
  %394 = add <4 x i32> %393, <i32 1, i32 1, i32 1, i32 1>
  %395 = urem <4 x i32> %394, <i32 80, i32 80, i32 80, i32 80>
  %396 = sitofp <4 x i32> %395 to <4 x double>
  %397 = fmul fast <4 x double> %396, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %398 = shl i64 %index1389, 3
  %399 = add i64 %398, %391
  %400 = getelementptr i8, i8* %call1, i64 %399
  %401 = bitcast i8* %400 to <4 x double>*
  store <4 x double> %397, <4 x double>* %401, align 8, !alias.scope !102, !noalias !107
  %index.next1390 = add i64 %index1389, 4
  %vec.ind.next1396 = add <4 x i32> %vec.ind1395, <i32 4, i32 4, i32 4, i32 4>
  %402 = icmp eq i64 %index.next1390, 32
  br i1 %402, label %polly.loop_exit823.2, label %vector.body1387, !llvm.loop !112

polly.loop_exit823.2:                             ; preds = %vector.body1387
  %polly.indvar_next819.2 = add nuw nsw i64 %polly.indvar818.2, 1
  %exitcond901.2.not = icmp eq i64 %polly.indvar_next819.2, 16
  br i1 %exitcond901.2.not, label %polly.loop_header815.1.2, label %polly.loop_header815.2

polly.loop_header815.1.2:                         ; preds = %polly.loop_exit823.2, %polly.loop_exit823.1.2
  %polly.indvar818.1.2 = phi i64 [ %polly.indvar_next819.1.2, %polly.loop_exit823.1.2 ], [ 0, %polly.loop_exit823.2 ]
  %403 = add nuw nsw i64 %polly.indvar818.1.2, 64
  %404 = mul nuw nsw i64 %403, 480
  %405 = trunc i64 %403 to i32
  %broadcast.splatinsert1409 = insertelement <4 x i32> poison, i32 %405, i32 0
  %broadcast.splat1410 = shufflevector <4 x i32> %broadcast.splatinsert1409, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1401

vector.body1401:                                  ; preds = %vector.body1401, %polly.loop_header815.1.2
  %index1403 = phi i64 [ 0, %polly.loop_header815.1.2 ], [ %index.next1404, %vector.body1401 ]
  %vec.ind1407 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header815.1.2 ], [ %vec.ind.next1408, %vector.body1401 ]
  %406 = add nuw nsw <4 x i64> %vec.ind1407, <i64 32, i64 32, i64 32, i64 32>
  %407 = trunc <4 x i64> %406 to <4 x i32>
  %408 = mul <4 x i32> %broadcast.splat1410, %407
  %409 = add <4 x i32> %408, <i32 1, i32 1, i32 1, i32 1>
  %410 = urem <4 x i32> %409, <i32 80, i32 80, i32 80, i32 80>
  %411 = sitofp <4 x i32> %410 to <4 x double>
  %412 = fmul fast <4 x double> %411, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %413 = extractelement <4 x i64> %406, i32 0
  %414 = shl i64 %413, 3
  %415 = add i64 %414, %404
  %416 = getelementptr i8, i8* %call1, i64 %415
  %417 = bitcast i8* %416 to <4 x double>*
  store <4 x double> %412, <4 x double>* %417, align 8, !alias.scope !102, !noalias !107
  %index.next1404 = add i64 %index1403, 4
  %vec.ind.next1408 = add <4 x i64> %vec.ind1407, <i64 4, i64 4, i64 4, i64 4>
  %418 = icmp eq i64 %index.next1404, 28
  br i1 %418, label %polly.loop_exit823.1.2, label %vector.body1401, !llvm.loop !113

polly.loop_exit823.1.2:                           ; preds = %vector.body1401
  %polly.indvar_next819.1.2 = add nuw nsw i64 %polly.indvar818.1.2, 1
  %exitcond901.1.2.not = icmp eq i64 %polly.indvar_next819.1.2, 16
  br i1 %exitcond901.1.2.not, label %init_array.exit, label %polly.loop_header815.1.2

polly.loop_header789.1:                           ; preds = %polly.loop_exit797, %polly.loop_exit797.1
  %polly.indvar792.1 = phi i64 [ %polly.indvar_next793.1, %polly.loop_exit797.1 ], [ 0, %polly.loop_exit797 ]
  %419 = mul nuw nsw i64 %polly.indvar792.1, 480
  %420 = trunc i64 %polly.indvar792.1 to i32
  %broadcast.splatinsert1279 = insertelement <4 x i32> poison, i32 %420, i32 0
  %broadcast.splat1280 = shufflevector <4 x i32> %broadcast.splatinsert1279, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1271

vector.body1271:                                  ; preds = %vector.body1271, %polly.loop_header789.1
  %index1273 = phi i64 [ 0, %polly.loop_header789.1 ], [ %index.next1274, %vector.body1271 ]
  %vec.ind1277 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header789.1 ], [ %vec.ind.next1278, %vector.body1271 ]
  %421 = add nuw nsw <4 x i64> %vec.ind1277, <i64 32, i64 32, i64 32, i64 32>
  %422 = trunc <4 x i64> %421 to <4 x i32>
  %423 = mul <4 x i32> %broadcast.splat1280, %422
  %424 = add <4 x i32> %423, <i32 2, i32 2, i32 2, i32 2>
  %425 = urem <4 x i32> %424, <i32 60, i32 60, i32 60, i32 60>
  %426 = sitofp <4 x i32> %425 to <4 x double>
  %427 = fmul fast <4 x double> %426, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %428 = extractelement <4 x i64> %421, i32 0
  %429 = shl i64 %428, 3
  %430 = add i64 %429, %419
  %431 = getelementptr i8, i8* %call2, i64 %430
  %432 = bitcast i8* %431 to <4 x double>*
  store <4 x double> %427, <4 x double>* %432, align 8, !alias.scope !103, !noalias !105
  %index.next1274 = add i64 %index1273, 4
  %vec.ind.next1278 = add <4 x i64> %vec.ind1277, <i64 4, i64 4, i64 4, i64 4>
  %433 = icmp eq i64 %index.next1274, 28
  br i1 %433, label %polly.loop_exit797.1, label %vector.body1271, !llvm.loop !114

polly.loop_exit797.1:                             ; preds = %vector.body1271
  %polly.indvar_next793.1 = add nuw nsw i64 %polly.indvar792.1, 1
  %exitcond907.1.not = icmp eq i64 %polly.indvar_next793.1, 32
  br i1 %exitcond907.1.not, label %polly.loop_header789.11070, label %polly.loop_header789.1

polly.loop_header789.11070:                       ; preds = %polly.loop_exit797.1, %polly.loop_exit797.11081
  %polly.indvar792.11069 = phi i64 [ %polly.indvar_next793.11079, %polly.loop_exit797.11081 ], [ 0, %polly.loop_exit797.1 ]
  %434 = add nuw nsw i64 %polly.indvar792.11069, 32
  %435 = mul nuw nsw i64 %434, 480
  %436 = trunc i64 %434 to i32
  %broadcast.splatinsert1293 = insertelement <4 x i32> poison, i32 %436, i32 0
  %broadcast.splat1294 = shufflevector <4 x i32> %broadcast.splatinsert1293, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1283

vector.body1283:                                  ; preds = %vector.body1283, %polly.loop_header789.11070
  %index1285 = phi i64 [ 0, %polly.loop_header789.11070 ], [ %index.next1286, %vector.body1283 ]
  %vec.ind1291 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header789.11070 ], [ %vec.ind.next1292, %vector.body1283 ]
  %437 = mul <4 x i32> %vec.ind1291, %broadcast.splat1294
  %438 = add <4 x i32> %437, <i32 2, i32 2, i32 2, i32 2>
  %439 = urem <4 x i32> %438, <i32 60, i32 60, i32 60, i32 60>
  %440 = sitofp <4 x i32> %439 to <4 x double>
  %441 = fmul fast <4 x double> %440, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %442 = shl i64 %index1285, 3
  %443 = add i64 %442, %435
  %444 = getelementptr i8, i8* %call2, i64 %443
  %445 = bitcast i8* %444 to <4 x double>*
  store <4 x double> %441, <4 x double>* %445, align 8, !alias.scope !103, !noalias !105
  %index.next1286 = add i64 %index1285, 4
  %vec.ind.next1292 = add <4 x i32> %vec.ind1291, <i32 4, i32 4, i32 4, i32 4>
  %446 = icmp eq i64 %index.next1286, 32
  br i1 %446, label %polly.loop_exit797.11081, label %vector.body1283, !llvm.loop !115

polly.loop_exit797.11081:                         ; preds = %vector.body1283
  %polly.indvar_next793.11079 = add nuw nsw i64 %polly.indvar792.11069, 1
  %exitcond907.11080.not = icmp eq i64 %polly.indvar_next793.11079, 32
  br i1 %exitcond907.11080.not, label %polly.loop_header789.1.1, label %polly.loop_header789.11070

polly.loop_header789.1.1:                         ; preds = %polly.loop_exit797.11081, %polly.loop_exit797.1.1
  %polly.indvar792.1.1 = phi i64 [ %polly.indvar_next793.1.1, %polly.loop_exit797.1.1 ], [ 0, %polly.loop_exit797.11081 ]
  %447 = add nuw nsw i64 %polly.indvar792.1.1, 32
  %448 = mul nuw nsw i64 %447, 480
  %449 = trunc i64 %447 to i32
  %broadcast.splatinsert1305 = insertelement <4 x i32> poison, i32 %449, i32 0
  %broadcast.splat1306 = shufflevector <4 x i32> %broadcast.splatinsert1305, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1297

vector.body1297:                                  ; preds = %vector.body1297, %polly.loop_header789.1.1
  %index1299 = phi i64 [ 0, %polly.loop_header789.1.1 ], [ %index.next1300, %vector.body1297 ]
  %vec.ind1303 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header789.1.1 ], [ %vec.ind.next1304, %vector.body1297 ]
  %450 = add nuw nsw <4 x i64> %vec.ind1303, <i64 32, i64 32, i64 32, i64 32>
  %451 = trunc <4 x i64> %450 to <4 x i32>
  %452 = mul <4 x i32> %broadcast.splat1306, %451
  %453 = add <4 x i32> %452, <i32 2, i32 2, i32 2, i32 2>
  %454 = urem <4 x i32> %453, <i32 60, i32 60, i32 60, i32 60>
  %455 = sitofp <4 x i32> %454 to <4 x double>
  %456 = fmul fast <4 x double> %455, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %457 = extractelement <4 x i64> %450, i32 0
  %458 = shl i64 %457, 3
  %459 = add i64 %458, %448
  %460 = getelementptr i8, i8* %call2, i64 %459
  %461 = bitcast i8* %460 to <4 x double>*
  store <4 x double> %456, <4 x double>* %461, align 8, !alias.scope !103, !noalias !105
  %index.next1300 = add i64 %index1299, 4
  %vec.ind.next1304 = add <4 x i64> %vec.ind1303, <i64 4, i64 4, i64 4, i64 4>
  %462 = icmp eq i64 %index.next1300, 28
  br i1 %462, label %polly.loop_exit797.1.1, label %vector.body1297, !llvm.loop !116

polly.loop_exit797.1.1:                           ; preds = %vector.body1297
  %polly.indvar_next793.1.1 = add nuw nsw i64 %polly.indvar792.1.1, 1
  %exitcond907.1.1.not = icmp eq i64 %polly.indvar_next793.1.1, 32
  br i1 %exitcond907.1.1.not, label %polly.loop_header789.2, label %polly.loop_header789.1.1

polly.loop_header789.2:                           ; preds = %polly.loop_exit797.1.1, %polly.loop_exit797.2
  %polly.indvar792.2 = phi i64 [ %polly.indvar_next793.2, %polly.loop_exit797.2 ], [ 0, %polly.loop_exit797.1.1 ]
  %463 = add nuw nsw i64 %polly.indvar792.2, 64
  %464 = mul nuw nsw i64 %463, 480
  %465 = trunc i64 %463 to i32
  %broadcast.splatinsert1319 = insertelement <4 x i32> poison, i32 %465, i32 0
  %broadcast.splat1320 = shufflevector <4 x i32> %broadcast.splatinsert1319, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1309

vector.body1309:                                  ; preds = %vector.body1309, %polly.loop_header789.2
  %index1311 = phi i64 [ 0, %polly.loop_header789.2 ], [ %index.next1312, %vector.body1309 ]
  %vec.ind1317 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header789.2 ], [ %vec.ind.next1318, %vector.body1309 ]
  %466 = mul <4 x i32> %vec.ind1317, %broadcast.splat1320
  %467 = add <4 x i32> %466, <i32 2, i32 2, i32 2, i32 2>
  %468 = urem <4 x i32> %467, <i32 60, i32 60, i32 60, i32 60>
  %469 = sitofp <4 x i32> %468 to <4 x double>
  %470 = fmul fast <4 x double> %469, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %471 = shl i64 %index1311, 3
  %472 = add i64 %471, %464
  %473 = getelementptr i8, i8* %call2, i64 %472
  %474 = bitcast i8* %473 to <4 x double>*
  store <4 x double> %470, <4 x double>* %474, align 8, !alias.scope !103, !noalias !105
  %index.next1312 = add i64 %index1311, 4
  %vec.ind.next1318 = add <4 x i32> %vec.ind1317, <i32 4, i32 4, i32 4, i32 4>
  %475 = icmp eq i64 %index.next1312, 32
  br i1 %475, label %polly.loop_exit797.2, label %vector.body1309, !llvm.loop !117

polly.loop_exit797.2:                             ; preds = %vector.body1309
  %polly.indvar_next793.2 = add nuw nsw i64 %polly.indvar792.2, 1
  %exitcond907.2.not = icmp eq i64 %polly.indvar_next793.2, 16
  br i1 %exitcond907.2.not, label %polly.loop_header789.1.2, label %polly.loop_header789.2

polly.loop_header789.1.2:                         ; preds = %polly.loop_exit797.2, %polly.loop_exit797.1.2
  %polly.indvar792.1.2 = phi i64 [ %polly.indvar_next793.1.2, %polly.loop_exit797.1.2 ], [ 0, %polly.loop_exit797.2 ]
  %476 = add nuw nsw i64 %polly.indvar792.1.2, 64
  %477 = mul nuw nsw i64 %476, 480
  %478 = trunc i64 %476 to i32
  %broadcast.splatinsert1331 = insertelement <4 x i32> poison, i32 %478, i32 0
  %broadcast.splat1332 = shufflevector <4 x i32> %broadcast.splatinsert1331, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1323

vector.body1323:                                  ; preds = %vector.body1323, %polly.loop_header789.1.2
  %index1325 = phi i64 [ 0, %polly.loop_header789.1.2 ], [ %index.next1326, %vector.body1323 ]
  %vec.ind1329 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header789.1.2 ], [ %vec.ind.next1330, %vector.body1323 ]
  %479 = add nuw nsw <4 x i64> %vec.ind1329, <i64 32, i64 32, i64 32, i64 32>
  %480 = trunc <4 x i64> %479 to <4 x i32>
  %481 = mul <4 x i32> %broadcast.splat1332, %480
  %482 = add <4 x i32> %481, <i32 2, i32 2, i32 2, i32 2>
  %483 = urem <4 x i32> %482, <i32 60, i32 60, i32 60, i32 60>
  %484 = sitofp <4 x i32> %483 to <4 x double>
  %485 = fmul fast <4 x double> %484, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %486 = extractelement <4 x i64> %479, i32 0
  %487 = shl i64 %486, 3
  %488 = add i64 %487, %477
  %489 = getelementptr i8, i8* %call2, i64 %488
  %490 = bitcast i8* %489 to <4 x double>*
  store <4 x double> %485, <4 x double>* %490, align 8, !alias.scope !103, !noalias !105
  %index.next1326 = add i64 %index1325, 4
  %vec.ind.next1330 = add <4 x i64> %vec.ind1329, <i64 4, i64 4, i64 4, i64 4>
  %491 = icmp eq i64 %index.next1326, 28
  br i1 %491, label %polly.loop_exit797.1.2, label %vector.body1323, !llvm.loop !118

polly.loop_exit797.1.2:                           ; preds = %vector.body1323
  %polly.indvar_next793.1.2 = add nuw nsw i64 %polly.indvar792.1.2, 1
  %exitcond907.1.2.not = icmp eq i64 %polly.indvar_next793.1.2, 16
  br i1 %exitcond907.1.2.not, label %polly.loop_header815, label %polly.loop_header789.1.2

polly.loop_header762.1:                           ; preds = %polly.loop_exit770, %polly.loop_exit770.1
  %polly.indvar765.1 = phi i64 [ %polly.indvar_next766.1, %polly.loop_exit770.1 ], [ 0, %polly.loop_exit770 ]
  %492 = mul nuw nsw i64 %polly.indvar765.1, 640
  %493 = trunc i64 %polly.indvar765.1 to i32
  %broadcast.splatinsert1165 = insertelement <4 x i32> poison, i32 %493, i32 0
  %broadcast.splat1166 = shufflevector <4 x i32> %broadcast.splatinsert1165, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1157

vector.body1157:                                  ; preds = %vector.body1157, %polly.loop_header762.1
  %index1159 = phi i64 [ 0, %polly.loop_header762.1 ], [ %index.next1160, %vector.body1157 ]
  %vec.ind1163 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header762.1 ], [ %vec.ind.next1164, %vector.body1157 ]
  %494 = add nuw nsw <4 x i64> %vec.ind1163, <i64 32, i64 32, i64 32, i64 32>
  %495 = trunc <4 x i64> %494 to <4 x i32>
  %496 = mul <4 x i32> %broadcast.splat1166, %495
  %497 = add <4 x i32> %496, <i32 3, i32 3, i32 3, i32 3>
  %498 = urem <4 x i32> %497, <i32 80, i32 80, i32 80, i32 80>
  %499 = sitofp <4 x i32> %498 to <4 x double>
  %500 = fmul fast <4 x double> %499, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %501 = extractelement <4 x i64> %494, i32 0
  %502 = shl i64 %501, 3
  %503 = add nuw nsw i64 %502, %492
  %504 = getelementptr i8, i8* %call, i64 %503
  %505 = bitcast i8* %504 to <4 x double>*
  store <4 x double> %500, <4 x double>* %505, align 8, !alias.scope !99, !noalias !101
  %index.next1160 = add i64 %index1159, 4
  %vec.ind.next1164 = add <4 x i64> %vec.ind1163, <i64 4, i64 4, i64 4, i64 4>
  %506 = icmp eq i64 %index.next1160, 32
  br i1 %506, label %polly.loop_exit770.1, label %vector.body1157, !llvm.loop !119

polly.loop_exit770.1:                             ; preds = %vector.body1157
  %polly.indvar_next766.1 = add nuw nsw i64 %polly.indvar765.1, 1
  %exitcond916.1.not = icmp eq i64 %polly.indvar_next766.1, 32
  br i1 %exitcond916.1.not, label %polly.loop_header762.2, label %polly.loop_header762.1

polly.loop_header762.2:                           ; preds = %polly.loop_exit770.1, %polly.loop_exit770.2
  %polly.indvar765.2 = phi i64 [ %polly.indvar_next766.2, %polly.loop_exit770.2 ], [ 0, %polly.loop_exit770.1 ]
  %507 = mul nuw nsw i64 %polly.indvar765.2, 640
  %508 = trunc i64 %polly.indvar765.2 to i32
  %broadcast.splatinsert1177 = insertelement <4 x i32> poison, i32 %508, i32 0
  %broadcast.splat1178 = shufflevector <4 x i32> %broadcast.splatinsert1177, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1169

vector.body1169:                                  ; preds = %vector.body1169, %polly.loop_header762.2
  %index1171 = phi i64 [ 0, %polly.loop_header762.2 ], [ %index.next1172, %vector.body1169 ]
  %vec.ind1175 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header762.2 ], [ %vec.ind.next1176, %vector.body1169 ]
  %509 = add nuw nsw <4 x i64> %vec.ind1175, <i64 64, i64 64, i64 64, i64 64>
  %510 = trunc <4 x i64> %509 to <4 x i32>
  %511 = mul <4 x i32> %broadcast.splat1178, %510
  %512 = add <4 x i32> %511, <i32 3, i32 3, i32 3, i32 3>
  %513 = urem <4 x i32> %512, <i32 80, i32 80, i32 80, i32 80>
  %514 = sitofp <4 x i32> %513 to <4 x double>
  %515 = fmul fast <4 x double> %514, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %516 = extractelement <4 x i64> %509, i32 0
  %517 = shl i64 %516, 3
  %518 = add nuw nsw i64 %517, %507
  %519 = getelementptr i8, i8* %call, i64 %518
  %520 = bitcast i8* %519 to <4 x double>*
  store <4 x double> %515, <4 x double>* %520, align 8, !alias.scope !99, !noalias !101
  %index.next1172 = add i64 %index1171, 4
  %vec.ind.next1176 = add <4 x i64> %vec.ind1175, <i64 4, i64 4, i64 4, i64 4>
  %521 = icmp eq i64 %index.next1172, 16
  br i1 %521, label %polly.loop_exit770.2, label %vector.body1169, !llvm.loop !120

polly.loop_exit770.2:                             ; preds = %vector.body1169
  %polly.indvar_next766.2 = add nuw nsw i64 %polly.indvar765.2, 1
  %exitcond916.2.not = icmp eq i64 %polly.indvar_next766.2, 32
  br i1 %exitcond916.2.not, label %polly.loop_header762.11084, label %polly.loop_header762.2

polly.loop_header762.11084:                       ; preds = %polly.loop_exit770.2, %polly.loop_exit770.11095
  %polly.indvar765.11083 = phi i64 [ %polly.indvar_next766.11093, %polly.loop_exit770.11095 ], [ 0, %polly.loop_exit770.2 ]
  %522 = add nuw nsw i64 %polly.indvar765.11083, 32
  %523 = mul nuw nsw i64 %522, 640
  %524 = trunc i64 %522 to i32
  %broadcast.splatinsert1191 = insertelement <4 x i32> poison, i32 %524, i32 0
  %broadcast.splat1192 = shufflevector <4 x i32> %broadcast.splatinsert1191, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1181

vector.body1181:                                  ; preds = %vector.body1181, %polly.loop_header762.11084
  %index1183 = phi i64 [ 0, %polly.loop_header762.11084 ], [ %index.next1184, %vector.body1181 ]
  %vec.ind1189 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header762.11084 ], [ %vec.ind.next1190, %vector.body1181 ]
  %525 = mul <4 x i32> %vec.ind1189, %broadcast.splat1192
  %526 = add <4 x i32> %525, <i32 3, i32 3, i32 3, i32 3>
  %527 = urem <4 x i32> %526, <i32 80, i32 80, i32 80, i32 80>
  %528 = sitofp <4 x i32> %527 to <4 x double>
  %529 = fmul fast <4 x double> %528, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %530 = shl i64 %index1183, 3
  %531 = add nuw nsw i64 %530, %523
  %532 = getelementptr i8, i8* %call, i64 %531
  %533 = bitcast i8* %532 to <4 x double>*
  store <4 x double> %529, <4 x double>* %533, align 8, !alias.scope !99, !noalias !101
  %index.next1184 = add i64 %index1183, 4
  %vec.ind.next1190 = add <4 x i32> %vec.ind1189, <i32 4, i32 4, i32 4, i32 4>
  %534 = icmp eq i64 %index.next1184, 32
  br i1 %534, label %polly.loop_exit770.11095, label %vector.body1181, !llvm.loop !121

polly.loop_exit770.11095:                         ; preds = %vector.body1181
  %polly.indvar_next766.11093 = add nuw nsw i64 %polly.indvar765.11083, 1
  %exitcond916.11094.not = icmp eq i64 %polly.indvar_next766.11093, 32
  br i1 %exitcond916.11094.not, label %polly.loop_header762.1.1, label %polly.loop_header762.11084

polly.loop_header762.1.1:                         ; preds = %polly.loop_exit770.11095, %polly.loop_exit770.1.1
  %polly.indvar765.1.1 = phi i64 [ %polly.indvar_next766.1.1, %polly.loop_exit770.1.1 ], [ 0, %polly.loop_exit770.11095 ]
  %535 = add nuw nsw i64 %polly.indvar765.1.1, 32
  %536 = mul nuw nsw i64 %535, 640
  %537 = trunc i64 %535 to i32
  %broadcast.splatinsert1203 = insertelement <4 x i32> poison, i32 %537, i32 0
  %broadcast.splat1204 = shufflevector <4 x i32> %broadcast.splatinsert1203, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1195

vector.body1195:                                  ; preds = %vector.body1195, %polly.loop_header762.1.1
  %index1197 = phi i64 [ 0, %polly.loop_header762.1.1 ], [ %index.next1198, %vector.body1195 ]
  %vec.ind1201 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header762.1.1 ], [ %vec.ind.next1202, %vector.body1195 ]
  %538 = add nuw nsw <4 x i64> %vec.ind1201, <i64 32, i64 32, i64 32, i64 32>
  %539 = trunc <4 x i64> %538 to <4 x i32>
  %540 = mul <4 x i32> %broadcast.splat1204, %539
  %541 = add <4 x i32> %540, <i32 3, i32 3, i32 3, i32 3>
  %542 = urem <4 x i32> %541, <i32 80, i32 80, i32 80, i32 80>
  %543 = sitofp <4 x i32> %542 to <4 x double>
  %544 = fmul fast <4 x double> %543, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %545 = extractelement <4 x i64> %538, i32 0
  %546 = shl i64 %545, 3
  %547 = add nuw nsw i64 %546, %536
  %548 = getelementptr i8, i8* %call, i64 %547
  %549 = bitcast i8* %548 to <4 x double>*
  store <4 x double> %544, <4 x double>* %549, align 8, !alias.scope !99, !noalias !101
  %index.next1198 = add i64 %index1197, 4
  %vec.ind.next1202 = add <4 x i64> %vec.ind1201, <i64 4, i64 4, i64 4, i64 4>
  %550 = icmp eq i64 %index.next1198, 32
  br i1 %550, label %polly.loop_exit770.1.1, label %vector.body1195, !llvm.loop !122

polly.loop_exit770.1.1:                           ; preds = %vector.body1195
  %polly.indvar_next766.1.1 = add nuw nsw i64 %polly.indvar765.1.1, 1
  %exitcond916.1.1.not = icmp eq i64 %polly.indvar_next766.1.1, 32
  br i1 %exitcond916.1.1.not, label %polly.loop_header762.2.1, label %polly.loop_header762.1.1

polly.loop_header762.2.1:                         ; preds = %polly.loop_exit770.1.1, %polly.loop_exit770.2.1
  %polly.indvar765.2.1 = phi i64 [ %polly.indvar_next766.2.1, %polly.loop_exit770.2.1 ], [ 0, %polly.loop_exit770.1.1 ]
  %551 = add nuw nsw i64 %polly.indvar765.2.1, 32
  %552 = mul nuw nsw i64 %551, 640
  %553 = trunc i64 %551 to i32
  %broadcast.splatinsert1215 = insertelement <4 x i32> poison, i32 %553, i32 0
  %broadcast.splat1216 = shufflevector <4 x i32> %broadcast.splatinsert1215, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1207

vector.body1207:                                  ; preds = %vector.body1207, %polly.loop_header762.2.1
  %index1209 = phi i64 [ 0, %polly.loop_header762.2.1 ], [ %index.next1210, %vector.body1207 ]
  %vec.ind1213 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header762.2.1 ], [ %vec.ind.next1214, %vector.body1207 ]
  %554 = add nuw nsw <4 x i64> %vec.ind1213, <i64 64, i64 64, i64 64, i64 64>
  %555 = trunc <4 x i64> %554 to <4 x i32>
  %556 = mul <4 x i32> %broadcast.splat1216, %555
  %557 = add <4 x i32> %556, <i32 3, i32 3, i32 3, i32 3>
  %558 = urem <4 x i32> %557, <i32 80, i32 80, i32 80, i32 80>
  %559 = sitofp <4 x i32> %558 to <4 x double>
  %560 = fmul fast <4 x double> %559, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %561 = extractelement <4 x i64> %554, i32 0
  %562 = shl i64 %561, 3
  %563 = add nuw nsw i64 %562, %552
  %564 = getelementptr i8, i8* %call, i64 %563
  %565 = bitcast i8* %564 to <4 x double>*
  store <4 x double> %560, <4 x double>* %565, align 8, !alias.scope !99, !noalias !101
  %index.next1210 = add i64 %index1209, 4
  %vec.ind.next1214 = add <4 x i64> %vec.ind1213, <i64 4, i64 4, i64 4, i64 4>
  %566 = icmp eq i64 %index.next1210, 16
  br i1 %566, label %polly.loop_exit770.2.1, label %vector.body1207, !llvm.loop !123

polly.loop_exit770.2.1:                           ; preds = %vector.body1207
  %polly.indvar_next766.2.1 = add nuw nsw i64 %polly.indvar765.2.1, 1
  %exitcond916.2.1.not = icmp eq i64 %polly.indvar_next766.2.1, 32
  br i1 %exitcond916.2.1.not, label %polly.loop_header762.21098, label %polly.loop_header762.2.1

polly.loop_header762.21098:                       ; preds = %polly.loop_exit770.2.1, %polly.loop_exit770.21109
  %polly.indvar765.21097 = phi i64 [ %polly.indvar_next766.21107, %polly.loop_exit770.21109 ], [ 0, %polly.loop_exit770.2.1 ]
  %567 = add nuw nsw i64 %polly.indvar765.21097, 64
  %568 = mul nuw nsw i64 %567, 640
  %569 = trunc i64 %567 to i32
  %broadcast.splatinsert1229 = insertelement <4 x i32> poison, i32 %569, i32 0
  %broadcast.splat1230 = shufflevector <4 x i32> %broadcast.splatinsert1229, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1219

vector.body1219:                                  ; preds = %vector.body1219, %polly.loop_header762.21098
  %index1221 = phi i64 [ 0, %polly.loop_header762.21098 ], [ %index.next1222, %vector.body1219 ]
  %vec.ind1227 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header762.21098 ], [ %vec.ind.next1228, %vector.body1219 ]
  %570 = mul <4 x i32> %vec.ind1227, %broadcast.splat1230
  %571 = add <4 x i32> %570, <i32 3, i32 3, i32 3, i32 3>
  %572 = urem <4 x i32> %571, <i32 80, i32 80, i32 80, i32 80>
  %573 = sitofp <4 x i32> %572 to <4 x double>
  %574 = fmul fast <4 x double> %573, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %575 = shl i64 %index1221, 3
  %576 = add nuw nsw i64 %575, %568
  %577 = getelementptr i8, i8* %call, i64 %576
  %578 = bitcast i8* %577 to <4 x double>*
  store <4 x double> %574, <4 x double>* %578, align 8, !alias.scope !99, !noalias !101
  %index.next1222 = add i64 %index1221, 4
  %vec.ind.next1228 = add <4 x i32> %vec.ind1227, <i32 4, i32 4, i32 4, i32 4>
  %579 = icmp eq i64 %index.next1222, 32
  br i1 %579, label %polly.loop_exit770.21109, label %vector.body1219, !llvm.loop !124

polly.loop_exit770.21109:                         ; preds = %vector.body1219
  %polly.indvar_next766.21107 = add nuw nsw i64 %polly.indvar765.21097, 1
  %exitcond916.21108.not = icmp eq i64 %polly.indvar_next766.21107, 16
  br i1 %exitcond916.21108.not, label %polly.loop_header762.1.2, label %polly.loop_header762.21098

polly.loop_header762.1.2:                         ; preds = %polly.loop_exit770.21109, %polly.loop_exit770.1.2
  %polly.indvar765.1.2 = phi i64 [ %polly.indvar_next766.1.2, %polly.loop_exit770.1.2 ], [ 0, %polly.loop_exit770.21109 ]
  %580 = add nuw nsw i64 %polly.indvar765.1.2, 64
  %581 = mul nuw nsw i64 %580, 640
  %582 = trunc i64 %580 to i32
  %broadcast.splatinsert1241 = insertelement <4 x i32> poison, i32 %582, i32 0
  %broadcast.splat1242 = shufflevector <4 x i32> %broadcast.splatinsert1241, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1233

vector.body1233:                                  ; preds = %vector.body1233, %polly.loop_header762.1.2
  %index1235 = phi i64 [ 0, %polly.loop_header762.1.2 ], [ %index.next1236, %vector.body1233 ]
  %vec.ind1239 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header762.1.2 ], [ %vec.ind.next1240, %vector.body1233 ]
  %583 = add nuw nsw <4 x i64> %vec.ind1239, <i64 32, i64 32, i64 32, i64 32>
  %584 = trunc <4 x i64> %583 to <4 x i32>
  %585 = mul <4 x i32> %broadcast.splat1242, %584
  %586 = add <4 x i32> %585, <i32 3, i32 3, i32 3, i32 3>
  %587 = urem <4 x i32> %586, <i32 80, i32 80, i32 80, i32 80>
  %588 = sitofp <4 x i32> %587 to <4 x double>
  %589 = fmul fast <4 x double> %588, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %590 = extractelement <4 x i64> %583, i32 0
  %591 = shl i64 %590, 3
  %592 = add nuw nsw i64 %591, %581
  %593 = getelementptr i8, i8* %call, i64 %592
  %594 = bitcast i8* %593 to <4 x double>*
  store <4 x double> %589, <4 x double>* %594, align 8, !alias.scope !99, !noalias !101
  %index.next1236 = add i64 %index1235, 4
  %vec.ind.next1240 = add <4 x i64> %vec.ind1239, <i64 4, i64 4, i64 4, i64 4>
  %595 = icmp eq i64 %index.next1236, 32
  br i1 %595, label %polly.loop_exit770.1.2, label %vector.body1233, !llvm.loop !125

polly.loop_exit770.1.2:                           ; preds = %vector.body1233
  %polly.indvar_next766.1.2 = add nuw nsw i64 %polly.indvar765.1.2, 1
  %exitcond916.1.2.not = icmp eq i64 %polly.indvar_next766.1.2, 16
  br i1 %exitcond916.1.2.not, label %polly.loop_header762.2.2, label %polly.loop_header762.1.2

polly.loop_header762.2.2:                         ; preds = %polly.loop_exit770.1.2, %polly.loop_exit770.2.2
  %polly.indvar765.2.2 = phi i64 [ %polly.indvar_next766.2.2, %polly.loop_exit770.2.2 ], [ 0, %polly.loop_exit770.1.2 ]
  %596 = add nuw nsw i64 %polly.indvar765.2.2, 64
  %597 = mul nuw nsw i64 %596, 640
  %598 = trunc i64 %596 to i32
  %broadcast.splatinsert1253 = insertelement <4 x i32> poison, i32 %598, i32 0
  %broadcast.splat1254 = shufflevector <4 x i32> %broadcast.splatinsert1253, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1245

vector.body1245:                                  ; preds = %vector.body1245, %polly.loop_header762.2.2
  %index1247 = phi i64 [ 0, %polly.loop_header762.2.2 ], [ %index.next1248, %vector.body1245 ]
  %vec.ind1251 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header762.2.2 ], [ %vec.ind.next1252, %vector.body1245 ]
  %599 = add nuw nsw <4 x i64> %vec.ind1251, <i64 64, i64 64, i64 64, i64 64>
  %600 = trunc <4 x i64> %599 to <4 x i32>
  %601 = mul <4 x i32> %broadcast.splat1254, %600
  %602 = add <4 x i32> %601, <i32 3, i32 3, i32 3, i32 3>
  %603 = urem <4 x i32> %602, <i32 80, i32 80, i32 80, i32 80>
  %604 = sitofp <4 x i32> %603 to <4 x double>
  %605 = fmul fast <4 x double> %604, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %606 = extractelement <4 x i64> %599, i32 0
  %607 = shl i64 %606, 3
  %608 = add nuw nsw i64 %607, %597
  %609 = getelementptr i8, i8* %call, i64 %608
  %610 = bitcast i8* %609 to <4 x double>*
  store <4 x double> %605, <4 x double>* %610, align 8, !alias.scope !99, !noalias !101
  %index.next1248 = add i64 %index1247, 4
  %vec.ind.next1252 = add <4 x i64> %vec.ind1251, <i64 4, i64 4, i64 4, i64 4>
  %611 = icmp eq i64 %index.next1248, 16
  br i1 %611, label %polly.loop_exit770.2.2, label %vector.body1245, !llvm.loop !126

polly.loop_exit770.2.2:                           ; preds = %vector.body1245
  %polly.indvar_next766.2.2 = add nuw nsw i64 %polly.indvar765.2.2, 1
  %exitcond916.2.2.not = icmp eq i64 %polly.indvar_next766.2.2, 16
  br i1 %exitcond916.2.2.not, label %polly.loop_header789, label %polly.loop_header762.2.2
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
!21 = distinct !{!"B"}
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 20}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 32}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !23, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !45, !46, !57}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.size", i32 64}
!46 = !{!"llvm.loop.tile.followup_floor", !47}
!47 = distinct !{!47, !12, !23, !48, !49, !50, !51, !52}
!48 = !{!"llvm.loop.id", !"i1"}
!49 = !{!"llvm.loop.interchange.enable", i1 true}
!50 = !{!"llvm.loop.interchange.depth", i32 5}
!51 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!52 = !{!"llvm.loop.interchange.followup_interchanged", !53}
!53 = distinct !{!53, !12, !23, !48, !54, !55, !56}
!54 = !{!"llvm.data.pack.enable", i1 true}
!55 = !{!"llvm.data.pack.array", !21}
!56 = !{!"llvm.data.pack.allocate", !"malloc"}
!57 = !{!"llvm.loop.tile.followup_tile", !58}
!58 = distinct !{!58, !12, !23, !59}
!59 = !{!"llvm.loop.id", !"i2"}
!60 = distinct !{!60, !12, !13}
!61 = distinct !{!61, !12, !13}
!62 = distinct !{!62, !12, !13}
!63 = distinct !{!63, !12, !13}
!64 = !{!65, !65, i64 0}
!65 = !{!"any pointer", !4, i64 0}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !69, !"polly.alias.scope.MemRef_call"}
!69 = distinct !{!69, !"polly.alias.scope.domain"}
!70 = !{!71, !72, !73}
!71 = distinct !{!71, !69, !"polly.alias.scope.MemRef_call1"}
!72 = distinct !{!72, !69, !"polly.alias.scope.MemRef_call2"}
!73 = distinct !{!73, !69, !"polly.alias.scope.Packed_MemRef_call2"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !76, !13}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!68, !71, !73}
!78 = !{!68, !72, !73}
!79 = distinct !{!79, !80, !"polly.alias.scope.MemRef_call"}
!80 = distinct !{!80, !"polly.alias.scope.domain"}
!81 = !{!82, !83, !84}
!82 = distinct !{!82, !80, !"polly.alias.scope.MemRef_call1"}
!83 = distinct !{!83, !80, !"polly.alias.scope.MemRef_call2"}
!84 = distinct !{!84, !80, !"polly.alias.scope.Packed_MemRef_call2"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !76, !13}
!87 = !{!79, !82, !84}
!88 = !{!79, !83, !84}
!89 = distinct !{!89, !90, !"polly.alias.scope.MemRef_call"}
!90 = distinct !{!90, !"polly.alias.scope.domain"}
!91 = !{!92, !93, !94}
!92 = distinct !{!92, !90, !"polly.alias.scope.MemRef_call1"}
!93 = distinct !{!93, !90, !"polly.alias.scope.MemRef_call2"}
!94 = distinct !{!94, !90, !"polly.alias.scope.Packed_MemRef_call2"}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !76, !13}
!97 = !{!89, !92, !94}
!98 = !{!89, !93, !94}
!99 = distinct !{!99, !100, !"polly.alias.scope.MemRef_call"}
!100 = distinct !{!100, !"polly.alias.scope.domain"}
!101 = !{!102, !103}
!102 = distinct !{!102, !100, !"polly.alias.scope.MemRef_call1"}
!103 = distinct !{!103, !100, !"polly.alias.scope.MemRef_call2"}
!104 = distinct !{!104, !13}
!105 = !{!102, !99}
!106 = distinct !{!106, !13}
!107 = !{!103, !99}
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
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !13}
!126 = distinct !{!126, !13}
