; ModuleID = 'syr2k_recreations//mmp_syr2k_S_68.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_68.c"
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
  %call807 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1668 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1668, %call2
  %polly.access.call2688 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2688, %call1
  %2 = or i1 %0, %1
  %polly.access.call708 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call708, %call2
  %4 = icmp ule i8* %polly.access.call2688, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call708, %call1
  %8 = icmp ule i8* %polly.access.call1668, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header793, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1129 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1128 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1127 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1126 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1126, %scevgep1129
  %bound1 = icmp ult i8* %scevgep1128, %scevgep1127
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
  br i1 %exitcond18.not.i, label %vector.ph1133, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1133:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1140 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1141 = shufflevector <4 x i64> %broadcast.splatinsert1140, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1132

vector.body1132:                                  ; preds = %vector.body1132, %vector.ph1133
  %index1134 = phi i64 [ 0, %vector.ph1133 ], [ %index.next1135, %vector.body1132 ]
  %vec.ind1138 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1133 ], [ %vec.ind.next1139, %vector.body1132 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1138, %broadcast.splat1141
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv7.i, i64 %index1134
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1135 = add i64 %index1134, 4
  %vec.ind.next1139 = add <4 x i64> %vec.ind1138, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1135, 80
  br i1 %40, label %for.inc41.i, label %vector.body1132, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1132
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1133, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit854.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start470, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1486, label %vector.ph1415

vector.ph1415:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1414

vector.body1414:                                  ; preds = %vector.body1414, %vector.ph1415
  %index1416 = phi i64 [ 0, %vector.ph1415 ], [ %index.next1417, %vector.body1414 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv21.i, i64 %index1416
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1417 = add i64 %index1416, 4
  %46 = icmp eq i64 %index.next1417, %n.vec
  br i1 %46, label %middle.block1412, label %vector.body1414, !llvm.loop !18

middle.block1412:                                 ; preds = %vector.body1414
  %cmp.n1419 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1419, label %for.inc6.i, label %for.body3.i46.preheader1486

for.body3.i46.preheader1486:                      ; preds = %for.body3.i46.preheader, %middle.block1412
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1412 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1486, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1486 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1412, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit620.1.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start283, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1435 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1435, label %for.body3.i60.preheader1485, label %vector.ph1436

vector.ph1436:                                    ; preds = %for.body3.i60.preheader
  %n.vec1438 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1434

vector.body1434:                                  ; preds = %vector.body1434, %vector.ph1436
  %index1439 = phi i64 [ 0, %vector.ph1436 ], [ %index.next1440, %vector.body1434 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv21.i52, i64 %index1439
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1443 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1443, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1440 = add i64 %index1439, 4
  %57 = icmp eq i64 %index.next1440, %n.vec1438
  br i1 %57, label %middle.block1432, label %vector.body1434, !llvm.loop !63

middle.block1432:                                 ; preds = %vector.body1434
  %cmp.n1442 = icmp eq i64 %indvars.iv21.i52, %n.vec1438
  br i1 %cmp.n1442, label %for.inc6.i63, label %for.body3.i60.preheader1485

for.body3.i60.preheader1485:                      ; preds = %for.body3.i60.preheader, %middle.block1432
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1438, %middle.block1432 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1485, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1485 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !64

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1432, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit433.1.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1461 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1461, label %for.body3.i99.preheader1484, label %vector.ph1462

vector.ph1462:                                    ; preds = %for.body3.i99.preheader
  %n.vec1464 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1460

vector.body1460:                                  ; preds = %vector.body1460, %vector.ph1462
  %index1465 = phi i64 [ 0, %vector.ph1462 ], [ %index.next1466, %vector.body1460 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv21.i91, i64 %index1465
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1469 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1469, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1466 = add i64 %index1465, 4
  %68 = icmp eq i64 %index.next1466, %n.vec1464
  br i1 %68, label %middle.block1458, label %vector.body1460, !llvm.loop !65

middle.block1458:                                 ; preds = %vector.body1460
  %cmp.n1468 = icmp eq i64 %indvars.iv21.i91, %n.vec1464
  br i1 %cmp.n1468, label %for.inc6.i102, label %for.body3.i99.preheader1484

for.body3.i99.preheader1484:                      ; preds = %for.body3.i99.preheader, %middle.block1458
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1464, %middle.block1458 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1484, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1484 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !66

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1458, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit246.1.1
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1473 = phi i64 [ %indvar.next1474, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1473, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1475 = icmp ult i64 %88, 4
  br i1 %min.iters.check1475, label %polly.loop_header192.preheader, label %vector.ph1476

vector.ph1476:                                    ; preds = %polly.loop_header
  %n.vec1478 = and i64 %88, -4
  br label %vector.body1472

vector.body1472:                                  ; preds = %vector.body1472, %vector.ph1476
  %index1479 = phi i64 [ 0, %vector.ph1476 ], [ %index.next1480, %vector.body1472 ]
  %90 = shl nuw nsw i64 %index1479, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1483 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !71, !noalias !73
  %93 = fmul fast <4 x double> %wide.load1483, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !71, !noalias !73
  %index.next1480 = add i64 %index1479, 4
  %95 = icmp eq i64 %index.next1480, %n.vec1478
  br i1 %95, label %middle.block1470, label %vector.body1472, !llvm.loop !78

middle.block1470:                                 ; preds = %vector.body1472
  %cmp.n1482 = icmp eq i64 %88, %n.vec1478
  br i1 %cmp.n1482, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1470
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1478, %middle.block1470 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1470
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond883.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1474 = add i64 %indvar1473, 1
  br i1 %exitcond883.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header206

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !71, !noalias !73
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond882.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond882.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !79

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200.preheader
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %97 = mul nuw nsw i64 %polly.indvar209, 400
  %scevgep873 = getelementptr i8, i8* %malloccall136, i64 %97
  %98 = mul nuw nsw i64 %polly.indvar209, 480
  %scevgep874 = getelementptr i8, i8* %call2, i64 %98
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(400) %scevgep873, i8* noundef nonnull align 8 dereferenceable(400) %scevgep874, i64 400, i1 false)
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next210, 80
  br i1 %exitcond.not, label %polly.loop_header228, label %polly.loop_header206

polly.loop_header228:                             ; preds = %polly.loop_header206, %polly.loop_header228
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_header228 ], [ 0, %polly.loop_header206 ]
  %99 = mul nuw nsw i64 %polly.indvar231, 400
  %scevgep876 = getelementptr i8, i8* %malloccall, i64 %99
  %100 = mul nuw nsw i64 %polly.indvar231, 480
  %scevgep877 = getelementptr i8, i8* %call1, i64 %100
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(400) %scevgep876, i8* noundef nonnull align 8 dereferenceable(400) %scevgep877, i64 400, i1 false)
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %exitcond878.not = icmp eq i64 %polly.indvar_next232, 50
  br i1 %exitcond878.not, label %polly.loop_header244, label %polly.loop_header228

polly.loop_header244:                             ; preds = %polly.loop_header228, %polly.loop_exit252
  %polly.indvar247 = phi i64 [ %polly.indvar_next248, %polly.loop_exit252 ], [ 0, %polly.loop_header228 ]
  br label %polly.loop_header250

polly.loop_exit252:                               ; preds = %polly.loop_exit258
  %polly.indvar_next248 = add nuw nsw i64 %polly.indvar247, 1
  %exitcond881.not = icmp eq i64 %polly.indvar_next248, 50
  br i1 %exitcond881.not, label %polly.loop_header228.1, label %polly.loop_header244

polly.loop_header250:                             ; preds = %polly.loop_exit258, %polly.loop_header244
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit258 ], [ 1, %polly.loop_header244 ]
  %polly.indvar253 = phi i64 [ %polly.indvar_next254, %polly.loop_exit258 ], [ 0, %polly.loop_header244 ]
  %polly.access.mul.Packed_MemRef_call2266 = mul nuw nsw i64 %polly.indvar253, 50
  %polly.access.add.Packed_MemRef_call2267 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2266, %polly.indvar247
  %polly.access.Packed_MemRef_call2268 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2267
  %_p_scalar_269 = load double, double* %polly.access.Packed_MemRef_call2268, align 8
  %polly.access.Packed_MemRef_call1276 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2267
  %_p_scalar_277 = load double, double* %polly.access.Packed_MemRef_call1276, align 8
  %101 = mul nuw nsw i64 %polly.indvar253, 640
  br label %polly.loop_header256

polly.loop_exit258:                               ; preds = %polly.loop_header256
  %polly.indvar_next254 = add nuw nsw i64 %polly.indvar253, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond880.not = icmp eq i64 %polly.indvar_next254, 50
  br i1 %exitcond880.not, label %polly.loop_exit252, label %polly.loop_header250

polly.loop_header256:                             ; preds = %polly.loop_header256, %polly.loop_header250
  %polly.indvar259 = phi i64 [ 0, %polly.loop_header250 ], [ %polly.indvar_next260, %polly.loop_header256 ]
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar259, 50
  %polly.access.add.Packed_MemRef_call1263 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1262, %polly.indvar247
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  %_p_scalar_265 = load double, double* %polly.access.Packed_MemRef_call1264, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_269, %_p_scalar_265
  %polly.access.Packed_MemRef_call2272 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1263
  %_p_scalar_273 = load double, double* %polly.access.Packed_MemRef_call2272, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_277, %_p_scalar_273
  %102 = shl nuw nsw i64 %polly.indvar259, 3
  %103 = add nuw nsw i64 %102, %101
  %scevgep278 = getelementptr i8, i8* %call, i64 %103
  %scevgep278279 = bitcast i8* %scevgep278 to double*
  %_p_scalar_280 = load double, double* %scevgep278279, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_280
  store double %p_add42.i118, double* %scevgep278279, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next260 = add nuw nsw i64 %polly.indvar259, 1
  %exitcond879.not = icmp eq i64 %polly.indvar_next260, %indvars.iv
  br i1 %exitcond879.not, label %polly.loop_exit258, label %polly.loop_header256

polly.start283:                                   ; preds = %kernel_syr2k.exit
  %malloccall285 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  %malloccall287 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  br label %polly.loop_header371

polly.loop_header371:                             ; preds = %polly.loop_exit379, %polly.start283
  %indvar1447 = phi i64 [ %indvar.next1448, %polly.loop_exit379 ], [ 0, %polly.start283 ]
  %polly.indvar374 = phi i64 [ %polly.indvar_next375, %polly.loop_exit379 ], [ 1, %polly.start283 ]
  %104 = add i64 %indvar1447, 1
  %105 = mul nuw nsw i64 %polly.indvar374, 640
  %scevgep383 = getelementptr i8, i8* %call, i64 %105
  %min.iters.check1449 = icmp ult i64 %104, 4
  br i1 %min.iters.check1449, label %polly.loop_header377.preheader, label %vector.ph1450

vector.ph1450:                                    ; preds = %polly.loop_header371
  %n.vec1452 = and i64 %104, -4
  br label %vector.body1446

vector.body1446:                                  ; preds = %vector.body1446, %vector.ph1450
  %index1453 = phi i64 [ 0, %vector.ph1450 ], [ %index.next1454, %vector.body1446 ]
  %106 = shl nuw nsw i64 %index1453, 3
  %107 = getelementptr i8, i8* %scevgep383, i64 %106
  %108 = bitcast i8* %107 to <4 x double>*
  %wide.load1457 = load <4 x double>, <4 x double>* %108, align 8, !alias.scope !81, !noalias !83
  %109 = fmul fast <4 x double> %wide.load1457, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %110 = bitcast i8* %107 to <4 x double>*
  store <4 x double> %109, <4 x double>* %110, align 8, !alias.scope !81, !noalias !83
  %index.next1454 = add i64 %index1453, 4
  %111 = icmp eq i64 %index.next1454, %n.vec1452
  br i1 %111, label %middle.block1444, label %vector.body1446, !llvm.loop !88

middle.block1444:                                 ; preds = %vector.body1446
  %cmp.n1456 = icmp eq i64 %104, %n.vec1452
  br i1 %cmp.n1456, label %polly.loop_exit379, label %polly.loop_header377.preheader

polly.loop_header377.preheader:                   ; preds = %polly.loop_header371, %middle.block1444
  %polly.indvar380.ph = phi i64 [ 0, %polly.loop_header371 ], [ %n.vec1452, %middle.block1444 ]
  br label %polly.loop_header377

polly.loop_exit379:                               ; preds = %polly.loop_header377, %middle.block1444
  %polly.indvar_next375 = add nuw nsw i64 %polly.indvar374, 1
  %exitcond898.not = icmp eq i64 %polly.indvar_next375, 80
  %indvar.next1448 = add i64 %indvar1447, 1
  br i1 %exitcond898.not, label %polly.loop_header387.preheader, label %polly.loop_header371

polly.loop_header387.preheader:                   ; preds = %polly.loop_exit379
  %Packed_MemRef_call1286 = bitcast i8* %malloccall285 to double*
  %Packed_MemRef_call2288 = bitcast i8* %malloccall287 to double*
  br label %polly.loop_header393

polly.loop_header377:                             ; preds = %polly.loop_header377.preheader, %polly.loop_header377
  %polly.indvar380 = phi i64 [ %polly.indvar_next381, %polly.loop_header377 ], [ %polly.indvar380.ph, %polly.loop_header377.preheader ]
  %112 = shl nuw nsw i64 %polly.indvar380, 3
  %scevgep384 = getelementptr i8, i8* %scevgep383, i64 %112
  %scevgep384385 = bitcast i8* %scevgep384 to double*
  %_p_scalar_386 = load double, double* %scevgep384385, align 8, !alias.scope !81, !noalias !83
  %p_mul.i57 = fmul fast double %_p_scalar_386, 1.200000e+00
  store double %p_mul.i57, double* %scevgep384385, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next381 = add nuw nsw i64 %polly.indvar380, 1
  %exitcond897.not = icmp eq i64 %polly.indvar_next381, %polly.indvar374
  br i1 %exitcond897.not, label %polly.loop_exit379, label %polly.loop_header377, !llvm.loop !89

polly.loop_header393:                             ; preds = %polly.loop_header393, %polly.loop_header387.preheader
  %polly.indvar396 = phi i64 [ 0, %polly.loop_header387.preheader ], [ %polly.indvar_next397, %polly.loop_header393 ]
  %113 = mul nuw nsw i64 %polly.indvar396, 400
  %scevgep885 = getelementptr i8, i8* %malloccall287, i64 %113
  %114 = mul nuw nsw i64 %polly.indvar396, 480
  %scevgep886 = getelementptr i8, i8* %call2, i64 %114
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(400) %scevgep885, i8* noundef nonnull align 8 dereferenceable(400) %scevgep886, i64 400, i1 false)
  %polly.indvar_next397 = add nuw nsw i64 %polly.indvar396, 1
  %exitcond887.not = icmp eq i64 %polly.indvar_next397, 80
  br i1 %exitcond887.not, label %polly.loop_header415, label %polly.loop_header393

polly.loop_header415:                             ; preds = %polly.loop_header393, %polly.loop_header415
  %polly.indvar418 = phi i64 [ %polly.indvar_next419, %polly.loop_header415 ], [ 0, %polly.loop_header393 ]
  %115 = mul nuw nsw i64 %polly.indvar418, 400
  %scevgep889 = getelementptr i8, i8* %malloccall285, i64 %115
  %116 = mul nuw nsw i64 %polly.indvar418, 480
  %scevgep890 = getelementptr i8, i8* %call1, i64 %116
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(400) %scevgep889, i8* noundef nonnull align 8 dereferenceable(400) %scevgep890, i64 400, i1 false)
  %polly.indvar_next419 = add nuw nsw i64 %polly.indvar418, 1
  %exitcond891.not = icmp eq i64 %polly.indvar_next419, 50
  br i1 %exitcond891.not, label %polly.loop_header431, label %polly.loop_header415

polly.loop_header431:                             ; preds = %polly.loop_header415, %polly.loop_exit439
  %polly.indvar434 = phi i64 [ %polly.indvar_next435, %polly.loop_exit439 ], [ 0, %polly.loop_header415 ]
  br label %polly.loop_header437

polly.loop_exit439:                               ; preds = %polly.loop_exit445
  %polly.indvar_next435 = add nuw nsw i64 %polly.indvar434, 1
  %exitcond896.not = icmp eq i64 %polly.indvar_next435, 50
  br i1 %exitcond896.not, label %polly.loop_header415.1, label %polly.loop_header431

polly.loop_header437:                             ; preds = %polly.loop_exit445, %polly.loop_header431
  %indvars.iv892 = phi i64 [ %indvars.iv.next893, %polly.loop_exit445 ], [ 1, %polly.loop_header431 ]
  %polly.indvar440 = phi i64 [ %polly.indvar_next441, %polly.loop_exit445 ], [ 0, %polly.loop_header431 ]
  %polly.access.mul.Packed_MemRef_call2288453 = mul nuw nsw i64 %polly.indvar440, 50
  %polly.access.add.Packed_MemRef_call2288454 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2288453, %polly.indvar434
  %polly.access.Packed_MemRef_call2288455 = getelementptr double, double* %Packed_MemRef_call2288, i64 %polly.access.add.Packed_MemRef_call2288454
  %_p_scalar_456 = load double, double* %polly.access.Packed_MemRef_call2288455, align 8
  %polly.access.Packed_MemRef_call1286463 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call2288454
  %_p_scalar_464 = load double, double* %polly.access.Packed_MemRef_call1286463, align 8
  %117 = mul nuw nsw i64 %polly.indvar440, 640
  br label %polly.loop_header443

polly.loop_exit445:                               ; preds = %polly.loop_header443
  %polly.indvar_next441 = add nuw nsw i64 %polly.indvar440, 1
  %indvars.iv.next893 = add nuw nsw i64 %indvars.iv892, 1
  %exitcond895.not = icmp eq i64 %polly.indvar_next441, 50
  br i1 %exitcond895.not, label %polly.loop_exit439, label %polly.loop_header437

polly.loop_header443:                             ; preds = %polly.loop_header443, %polly.loop_header437
  %polly.indvar446 = phi i64 [ 0, %polly.loop_header437 ], [ %polly.indvar_next447, %polly.loop_header443 ]
  %polly.access.mul.Packed_MemRef_call1286449 = mul nuw nsw i64 %polly.indvar446, 50
  %polly.access.add.Packed_MemRef_call1286450 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1286449, %polly.indvar434
  %polly.access.Packed_MemRef_call1286451 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286450
  %_p_scalar_452 = load double, double* %polly.access.Packed_MemRef_call1286451, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_456, %_p_scalar_452
  %polly.access.Packed_MemRef_call2288459 = getelementptr double, double* %Packed_MemRef_call2288, i64 %polly.access.add.Packed_MemRef_call1286450
  %_p_scalar_460 = load double, double* %polly.access.Packed_MemRef_call2288459, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_464, %_p_scalar_460
  %118 = shl nuw nsw i64 %polly.indvar446, 3
  %119 = add nuw nsw i64 %118, %117
  %scevgep465 = getelementptr i8, i8* %call, i64 %119
  %scevgep465466 = bitcast i8* %scevgep465 to double*
  %_p_scalar_467 = load double, double* %scevgep465466, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_467
  store double %p_add42.i79, double* %scevgep465466, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next447 = add nuw nsw i64 %polly.indvar446, 1
  %exitcond894.not = icmp eq i64 %polly.indvar_next447, %indvars.iv892
  br i1 %exitcond894.not, label %polly.loop_exit445, label %polly.loop_header443

polly.start470:                                   ; preds = %init_array.exit
  %malloccall472 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  %malloccall474 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  br label %polly.loop_header558

polly.loop_header558:                             ; preds = %polly.loop_exit566, %polly.start470
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit566 ], [ 0, %polly.start470 ]
  %polly.indvar561 = phi i64 [ %polly.indvar_next562, %polly.loop_exit566 ], [ 1, %polly.start470 ]
  %120 = add i64 %indvar, 1
  %121 = mul nuw nsw i64 %polly.indvar561, 640
  %scevgep570 = getelementptr i8, i8* %call, i64 %121
  %min.iters.check1423 = icmp ult i64 %120, 4
  br i1 %min.iters.check1423, label %polly.loop_header564.preheader, label %vector.ph1424

vector.ph1424:                                    ; preds = %polly.loop_header558
  %n.vec1426 = and i64 %120, -4
  br label %vector.body1422

vector.body1422:                                  ; preds = %vector.body1422, %vector.ph1424
  %index1427 = phi i64 [ 0, %vector.ph1424 ], [ %index.next1428, %vector.body1422 ]
  %122 = shl nuw nsw i64 %index1427, 3
  %123 = getelementptr i8, i8* %scevgep570, i64 %122
  %124 = bitcast i8* %123 to <4 x double>*
  %wide.load1431 = load <4 x double>, <4 x double>* %124, align 8, !alias.scope !90, !noalias !92
  %125 = fmul fast <4 x double> %wide.load1431, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %126 = bitcast i8* %123 to <4 x double>*
  store <4 x double> %125, <4 x double>* %126, align 8, !alias.scope !90, !noalias !92
  %index.next1428 = add i64 %index1427, 4
  %127 = icmp eq i64 %index.next1428, %n.vec1426
  br i1 %127, label %middle.block1420, label %vector.body1422, !llvm.loop !97

middle.block1420:                                 ; preds = %vector.body1422
  %cmp.n1430 = icmp eq i64 %120, %n.vec1426
  br i1 %cmp.n1430, label %polly.loop_exit566, label %polly.loop_header564.preheader

polly.loop_header564.preheader:                   ; preds = %polly.loop_header558, %middle.block1420
  %polly.indvar567.ph = phi i64 [ 0, %polly.loop_header558 ], [ %n.vec1426, %middle.block1420 ]
  br label %polly.loop_header564

polly.loop_exit566:                               ; preds = %polly.loop_header564, %middle.block1420
  %polly.indvar_next562 = add nuw nsw i64 %polly.indvar561, 1
  %exitcond913.not = icmp eq i64 %polly.indvar_next562, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond913.not, label %polly.loop_header574.preheader, label %polly.loop_header558

polly.loop_header574.preheader:                   ; preds = %polly.loop_exit566
  %Packed_MemRef_call1473 = bitcast i8* %malloccall472 to double*
  %Packed_MemRef_call2475 = bitcast i8* %malloccall474 to double*
  br label %polly.loop_header580

polly.loop_header564:                             ; preds = %polly.loop_header564.preheader, %polly.loop_header564
  %polly.indvar567 = phi i64 [ %polly.indvar_next568, %polly.loop_header564 ], [ %polly.indvar567.ph, %polly.loop_header564.preheader ]
  %128 = shl nuw nsw i64 %polly.indvar567, 3
  %scevgep571 = getelementptr i8, i8* %scevgep570, i64 %128
  %scevgep571572 = bitcast i8* %scevgep571 to double*
  %_p_scalar_573 = load double, double* %scevgep571572, align 8, !alias.scope !90, !noalias !92
  %p_mul.i = fmul fast double %_p_scalar_573, 1.200000e+00
  store double %p_mul.i, double* %scevgep571572, align 8, !alias.scope !90, !noalias !92
  %polly.indvar_next568 = add nuw nsw i64 %polly.indvar567, 1
  %exitcond912.not = icmp eq i64 %polly.indvar_next568, %polly.indvar561
  br i1 %exitcond912.not, label %polly.loop_exit566, label %polly.loop_header564, !llvm.loop !98

polly.loop_header580:                             ; preds = %polly.loop_header580, %polly.loop_header574.preheader
  %polly.indvar583 = phi i64 [ 0, %polly.loop_header574.preheader ], [ %polly.indvar_next584, %polly.loop_header580 ]
  %129 = mul nuw nsw i64 %polly.indvar583, 400
  %scevgep900 = getelementptr i8, i8* %malloccall474, i64 %129
  %130 = mul nuw nsw i64 %polly.indvar583, 480
  %scevgep901 = getelementptr i8, i8* %call2, i64 %130
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(400) %scevgep900, i8* noundef nonnull align 8 dereferenceable(400) %scevgep901, i64 400, i1 false)
  %polly.indvar_next584 = add nuw nsw i64 %polly.indvar583, 1
  %exitcond902.not = icmp eq i64 %polly.indvar_next584, 80
  br i1 %exitcond902.not, label %polly.loop_header602, label %polly.loop_header580

polly.loop_header602:                             ; preds = %polly.loop_header580, %polly.loop_header602
  %polly.indvar605 = phi i64 [ %polly.indvar_next606, %polly.loop_header602 ], [ 0, %polly.loop_header580 ]
  %131 = mul nuw nsw i64 %polly.indvar605, 400
  %scevgep904 = getelementptr i8, i8* %malloccall472, i64 %131
  %132 = mul nuw nsw i64 %polly.indvar605, 480
  %scevgep905 = getelementptr i8, i8* %call1, i64 %132
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(400) %scevgep904, i8* noundef nonnull align 8 dereferenceable(400) %scevgep905, i64 400, i1 false)
  %polly.indvar_next606 = add nuw nsw i64 %polly.indvar605, 1
  %exitcond906.not = icmp eq i64 %polly.indvar_next606, 50
  br i1 %exitcond906.not, label %polly.loop_header618, label %polly.loop_header602

polly.loop_header618:                             ; preds = %polly.loop_header602, %polly.loop_exit626
  %polly.indvar621 = phi i64 [ %polly.indvar_next622, %polly.loop_exit626 ], [ 0, %polly.loop_header602 ]
  br label %polly.loop_header624

polly.loop_exit626:                               ; preds = %polly.loop_exit632
  %polly.indvar_next622 = add nuw nsw i64 %polly.indvar621, 1
  %exitcond911.not = icmp eq i64 %polly.indvar_next622, 50
  br i1 %exitcond911.not, label %polly.loop_header602.1, label %polly.loop_header618

polly.loop_header624:                             ; preds = %polly.loop_exit632, %polly.loop_header618
  %indvars.iv907 = phi i64 [ %indvars.iv.next908, %polly.loop_exit632 ], [ 1, %polly.loop_header618 ]
  %polly.indvar627 = phi i64 [ %polly.indvar_next628, %polly.loop_exit632 ], [ 0, %polly.loop_header618 ]
  %polly.access.mul.Packed_MemRef_call2475640 = mul nuw nsw i64 %polly.indvar627, 50
  %polly.access.add.Packed_MemRef_call2475641 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2475640, %polly.indvar621
  %polly.access.Packed_MemRef_call2475642 = getelementptr double, double* %Packed_MemRef_call2475, i64 %polly.access.add.Packed_MemRef_call2475641
  %_p_scalar_643 = load double, double* %polly.access.Packed_MemRef_call2475642, align 8
  %polly.access.Packed_MemRef_call1473650 = getelementptr double, double* %Packed_MemRef_call1473, i64 %polly.access.add.Packed_MemRef_call2475641
  %_p_scalar_651 = load double, double* %polly.access.Packed_MemRef_call1473650, align 8
  %133 = mul nuw nsw i64 %polly.indvar627, 640
  br label %polly.loop_header630

polly.loop_exit632:                               ; preds = %polly.loop_header630
  %polly.indvar_next628 = add nuw nsw i64 %polly.indvar627, 1
  %indvars.iv.next908 = add nuw nsw i64 %indvars.iv907, 1
  %exitcond910.not = icmp eq i64 %polly.indvar_next628, 50
  br i1 %exitcond910.not, label %polly.loop_exit626, label %polly.loop_header624

polly.loop_header630:                             ; preds = %polly.loop_header630, %polly.loop_header624
  %polly.indvar633 = phi i64 [ 0, %polly.loop_header624 ], [ %polly.indvar_next634, %polly.loop_header630 ]
  %polly.access.mul.Packed_MemRef_call1473636 = mul nuw nsw i64 %polly.indvar633, 50
  %polly.access.add.Packed_MemRef_call1473637 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1473636, %polly.indvar621
  %polly.access.Packed_MemRef_call1473638 = getelementptr double, double* %Packed_MemRef_call1473, i64 %polly.access.add.Packed_MemRef_call1473637
  %_p_scalar_639 = load double, double* %polly.access.Packed_MemRef_call1473638, align 8
  %p_mul27.i = fmul fast double %_p_scalar_643, %_p_scalar_639
  %polly.access.Packed_MemRef_call2475646 = getelementptr double, double* %Packed_MemRef_call2475, i64 %polly.access.add.Packed_MemRef_call1473637
  %_p_scalar_647 = load double, double* %polly.access.Packed_MemRef_call2475646, align 8
  %p_mul37.i = fmul fast double %_p_scalar_651, %_p_scalar_647
  %134 = shl nuw nsw i64 %polly.indvar633, 3
  %135 = add nuw nsw i64 %134, %133
  %scevgep652 = getelementptr i8, i8* %call, i64 %135
  %scevgep652653 = bitcast i8* %scevgep652 to double*
  %_p_scalar_654 = load double, double* %scevgep652653, align 8, !alias.scope !90, !noalias !92
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_654
  store double %p_add42.i, double* %scevgep652653, align 8, !alias.scope !90, !noalias !92
  %polly.indvar_next634 = add nuw nsw i64 %polly.indvar633, 1
  %exitcond909.not = icmp eq i64 %polly.indvar_next634, %indvars.iv907
  br i1 %exitcond909.not, label %polly.loop_exit632, label %polly.loop_header630

polly.loop_header793:                             ; preds = %entry, %polly.loop_exit801
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %entry ]
  %136 = mul nuw nsw i64 %polly.indvar796, 640
  %137 = trunc i64 %polly.indvar796 to i32
  %broadcast.splatinsert1154 = insertelement <4 x i32> poison, i32 %137, i32 0
  %broadcast.splat1155 = shufflevector <4 x i32> %broadcast.splatinsert1154, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1144

vector.body1144:                                  ; preds = %vector.body1144, %polly.loop_header793
  %index1146 = phi i64 [ 0, %polly.loop_header793 ], [ %index.next1147, %vector.body1144 ]
  %vec.ind1152 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793 ], [ %vec.ind.next1153, %vector.body1144 ]
  %138 = mul <4 x i32> %vec.ind1152, %broadcast.splat1155
  %139 = add <4 x i32> %138, <i32 3, i32 3, i32 3, i32 3>
  %140 = urem <4 x i32> %139, <i32 80, i32 80, i32 80, i32 80>
  %141 = sitofp <4 x i32> %140 to <4 x double>
  %142 = fmul fast <4 x double> %141, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %143 = shl i64 %index1146, 3
  %144 = add nuw nsw i64 %143, %136
  %145 = getelementptr i8, i8* %call, i64 %144
  %146 = bitcast i8* %145 to <4 x double>*
  store <4 x double> %142, <4 x double>* %146, align 8, !alias.scope !99, !noalias !101
  %index.next1147 = add i64 %index1146, 4
  %vec.ind.next1153 = add <4 x i32> %vec.ind1152, <i32 4, i32 4, i32 4, i32 4>
  %147 = icmp eq i64 %index.next1147, 32
  br i1 %147, label %polly.loop_exit801, label %vector.body1144, !llvm.loop !104

polly.loop_exit801:                               ; preds = %vector.body1144
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %exitcond932.not = icmp eq i64 %polly.indvar_next797, 32
  br i1 %exitcond932.not, label %polly.loop_header793.1, label %polly.loop_header793

polly.loop_header820:                             ; preds = %polly.loop_exit801.2.2, %polly.loop_exit828
  %polly.indvar823 = phi i64 [ %polly.indvar_next824, %polly.loop_exit828 ], [ 0, %polly.loop_exit801.2.2 ]
  %148 = mul nuw nsw i64 %polly.indvar823, 480
  %149 = trunc i64 %polly.indvar823 to i32
  %broadcast.splatinsert1268 = insertelement <4 x i32> poison, i32 %149, i32 0
  %broadcast.splat1269 = shufflevector <4 x i32> %broadcast.splatinsert1268, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1258

vector.body1258:                                  ; preds = %vector.body1258, %polly.loop_header820
  %index1260 = phi i64 [ 0, %polly.loop_header820 ], [ %index.next1261, %vector.body1258 ]
  %vec.ind1266 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header820 ], [ %vec.ind.next1267, %vector.body1258 ]
  %150 = mul <4 x i32> %vec.ind1266, %broadcast.splat1269
  %151 = add <4 x i32> %150, <i32 2, i32 2, i32 2, i32 2>
  %152 = urem <4 x i32> %151, <i32 60, i32 60, i32 60, i32 60>
  %153 = sitofp <4 x i32> %152 to <4 x double>
  %154 = fmul fast <4 x double> %153, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %155 = shl i64 %index1260, 3
  %156 = add i64 %155, %148
  %157 = getelementptr i8, i8* %call2, i64 %156
  %158 = bitcast i8* %157 to <4 x double>*
  store <4 x double> %154, <4 x double>* %158, align 8, !alias.scope !103, !noalias !105
  %index.next1261 = add i64 %index1260, 4
  %vec.ind.next1267 = add <4 x i32> %vec.ind1266, <i32 4, i32 4, i32 4, i32 4>
  %159 = icmp eq i64 %index.next1261, 32
  br i1 %159, label %polly.loop_exit828, label %vector.body1258, !llvm.loop !106

polly.loop_exit828:                               ; preds = %vector.body1258
  %polly.indvar_next824 = add nuw nsw i64 %polly.indvar823, 1
  %exitcond923.not = icmp eq i64 %polly.indvar_next824, 32
  br i1 %exitcond923.not, label %polly.loop_header820.1, label %polly.loop_header820

polly.loop_header846:                             ; preds = %polly.loop_exit828.1.2, %polly.loop_exit854
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %polly.loop_exit828.1.2 ]
  %160 = mul nuw nsw i64 %polly.indvar849, 480
  %161 = trunc i64 %polly.indvar849 to i32
  %broadcast.splatinsert1346 = insertelement <4 x i32> poison, i32 %161, i32 0
  %broadcast.splat1347 = shufflevector <4 x i32> %broadcast.splatinsert1346, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1336

vector.body1336:                                  ; preds = %vector.body1336, %polly.loop_header846
  %index1338 = phi i64 [ 0, %polly.loop_header846 ], [ %index.next1339, %vector.body1336 ]
  %vec.ind1344 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header846 ], [ %vec.ind.next1345, %vector.body1336 ]
  %162 = mul <4 x i32> %vec.ind1344, %broadcast.splat1347
  %163 = add <4 x i32> %162, <i32 1, i32 1, i32 1, i32 1>
  %164 = urem <4 x i32> %163, <i32 80, i32 80, i32 80, i32 80>
  %165 = sitofp <4 x i32> %164 to <4 x double>
  %166 = fmul fast <4 x double> %165, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %167 = shl i64 %index1338, 3
  %168 = add i64 %167, %160
  %169 = getelementptr i8, i8* %call1, i64 %168
  %170 = bitcast i8* %169 to <4 x double>*
  store <4 x double> %166, <4 x double>* %170, align 8, !alias.scope !102, !noalias !107
  %index.next1339 = add i64 %index1338, 4
  %vec.ind.next1345 = add <4 x i32> %vec.ind1344, <i32 4, i32 4, i32 4, i32 4>
  %171 = icmp eq i64 %index.next1339, 32
  br i1 %171, label %polly.loop_exit854, label %vector.body1336, !llvm.loop !108

polly.loop_exit854:                               ; preds = %vector.body1336
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %exitcond917.not = icmp eq i64 %polly.indvar_next850, 32
  br i1 %exitcond917.not, label %polly.loop_header846.1, label %polly.loop_header846

polly.loop_header228.1:                           ; preds = %polly.loop_exit252, %polly.loop_header228.1
  %polly.indvar231.1 = phi i64 [ %polly.indvar_next232.1, %polly.loop_header228.1 ], [ 0, %polly.loop_exit252 ]
  %172 = mul nuw nsw i64 %polly.indvar231.1, 400
  %scevgep876.1 = getelementptr i8, i8* %malloccall, i64 %172
  %173 = mul nuw nsw i64 %polly.indvar231.1, 480
  %scevgep877.1 = getelementptr i8, i8* %call1, i64 %173
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(400) %scevgep876.1, i8* noundef nonnull align 8 dereferenceable(400) %scevgep877.1, i64 400, i1 false)
  %polly.indvar_next232.1 = add nuw nsw i64 %polly.indvar231.1, 1
  %exitcond878.1.not = icmp eq i64 %polly.indvar_next232.1, 80
  br i1 %exitcond878.1.not, label %polly.loop_header244.1, label %polly.loop_header228.1

polly.loop_header244.1:                           ; preds = %polly.loop_header228.1, %polly.loop_exit252.1
  %polly.indvar247.1 = phi i64 [ %polly.indvar_next248.1, %polly.loop_exit252.1 ], [ 0, %polly.loop_header228.1 ]
  br label %polly.loop_header250.1

polly.loop_header250.1:                           ; preds = %polly.loop_exit258.1, %polly.loop_header244.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit258.1 ], [ 51, %polly.loop_header244.1 ]
  %polly.indvar253.1 = phi i64 [ %polly.indvar_next254.1, %polly.loop_exit258.1 ], [ 0, %polly.loop_header244.1 ]
  %174 = add nuw nsw i64 %polly.indvar253.1, 50
  %polly.access.mul.Packed_MemRef_call2266.1 = mul nuw nsw i64 %174, 50
  %polly.access.add.Packed_MemRef_call2267.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2266.1, %polly.indvar247.1
  %polly.access.Packed_MemRef_call2268.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2267.1
  %_p_scalar_269.1 = load double, double* %polly.access.Packed_MemRef_call2268.1, align 8
  %polly.access.Packed_MemRef_call1276.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2267.1
  %_p_scalar_277.1 = load double, double* %polly.access.Packed_MemRef_call1276.1, align 8
  %175 = mul nuw nsw i64 %174, 640
  br label %polly.loop_header256.1

polly.loop_header256.1:                           ; preds = %polly.loop_header256.1, %polly.loop_header250.1
  %polly.indvar259.1 = phi i64 [ 0, %polly.loop_header250.1 ], [ %polly.indvar_next260.1, %polly.loop_header256.1 ]
  %polly.access.mul.Packed_MemRef_call1262.1 = mul nuw nsw i64 %polly.indvar259.1, 50
  %polly.access.add.Packed_MemRef_call1263.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1262.1, %polly.indvar247.1
  %polly.access.Packed_MemRef_call1264.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.1
  %_p_scalar_265.1 = load double, double* %polly.access.Packed_MemRef_call1264.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_269.1, %_p_scalar_265.1
  %polly.access.Packed_MemRef_call2272.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1263.1
  %_p_scalar_273.1 = load double, double* %polly.access.Packed_MemRef_call2272.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_277.1, %_p_scalar_273.1
  %176 = shl nuw nsw i64 %polly.indvar259.1, 3
  %177 = add nuw nsw i64 %176, %175
  %scevgep278.1 = getelementptr i8, i8* %call, i64 %177
  %scevgep278279.1 = bitcast i8* %scevgep278.1 to double*
  %_p_scalar_280.1 = load double, double* %scevgep278279.1, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_280.1
  store double %p_add42.i118.1, double* %scevgep278279.1, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next260.1 = add nuw nsw i64 %polly.indvar259.1, 1
  %exitcond879.1.not = icmp eq i64 %polly.indvar_next260.1, %indvars.iv.1
  br i1 %exitcond879.1.not, label %polly.loop_exit258.1, label %polly.loop_header256.1

polly.loop_exit258.1:                             ; preds = %polly.loop_header256.1
  %polly.indvar_next254.1 = add nuw nsw i64 %polly.indvar253.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond880.1.not = icmp eq i64 %polly.indvar_next254.1, 30
  br i1 %exitcond880.1.not, label %polly.loop_exit252.1, label %polly.loop_header250.1

polly.loop_exit252.1:                             ; preds = %polly.loop_exit258.1
  %polly.indvar_next248.1 = add nuw nsw i64 %polly.indvar247.1, 1
  %exitcond881.1.not = icmp eq i64 %polly.indvar_next248.1, 50
  br i1 %exitcond881.1.not, label %polly.loop_header206.1, label %polly.loop_header244.1

polly.loop_header206.1:                           ; preds = %polly.loop_exit252.1, %polly.loop_header206.1
  %polly.indvar209.1 = phi i64 [ %polly.indvar_next210.1, %polly.loop_header206.1 ], [ 0, %polly.loop_exit252.1 ]
  %178 = mul nuw nsw i64 %polly.indvar209.1, 400
  %scevgep873.1 = getelementptr i8, i8* %malloccall136, i64 %178
  %179 = mul nuw nsw i64 %polly.indvar209.1, 480
  %180 = add nuw nsw i64 %179, 400
  %scevgep874.1 = getelementptr i8, i8* %call2, i64 %180
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %scevgep873.1, i8* noundef nonnull align 8 dereferenceable(80) %scevgep874.1, i64 80, i1 false)
  %polly.indvar_next210.1 = add nuw nsw i64 %polly.indvar209.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next210.1, 80
  br i1 %exitcond.1.not, label %polly.loop_header228.1941, label %polly.loop_header206.1

polly.loop_header228.1941:                        ; preds = %polly.loop_header206.1, %polly.loop_header228.1941
  %polly.indvar231.1936 = phi i64 [ %polly.indvar_next232.1939, %polly.loop_header228.1941 ], [ 0, %polly.loop_header206.1 ]
  %181 = mul nuw nsw i64 %polly.indvar231.1936, 400
  %scevgep876.1937 = getelementptr i8, i8* %malloccall, i64 %181
  %182 = mul nuw nsw i64 %polly.indvar231.1936, 480
  %183 = add nuw nsw i64 %182, 400
  %scevgep877.1938 = getelementptr i8, i8* %call1, i64 %183
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %scevgep876.1937, i8* noundef nonnull align 8 dereferenceable(80) %scevgep877.1938, i64 80, i1 false)
  %polly.indvar_next232.1939 = add nuw nsw i64 %polly.indvar231.1936, 1
  %exitcond878.1940.not = icmp eq i64 %polly.indvar_next232.1939, 50
  br i1 %exitcond878.1940.not, label %polly.loop_header244.1944, label %polly.loop_header228.1941

polly.loop_header244.1944:                        ; preds = %polly.loop_header228.1941, %polly.loop_exit252.1978
  %polly.indvar247.1943 = phi i64 [ %polly.indvar_next248.1976, %polly.loop_exit252.1978 ], [ 0, %polly.loop_header228.1941 ]
  br label %polly.loop_header250.1953

polly.loop_header250.1953:                        ; preds = %polly.loop_exit258.1975, %polly.loop_header244.1944
  %indvars.iv.1945 = phi i64 [ %indvars.iv.next.1973, %polly.loop_exit258.1975 ], [ 1, %polly.loop_header244.1944 ]
  %polly.indvar253.1946 = phi i64 [ %polly.indvar_next254.1972, %polly.loop_exit258.1975 ], [ 0, %polly.loop_header244.1944 ]
  %polly.access.mul.Packed_MemRef_call2266.1947 = mul nuw nsw i64 %polly.indvar253.1946, 50
  %polly.access.add.Packed_MemRef_call2267.1948 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2266.1947, %polly.indvar247.1943
  %polly.access.Packed_MemRef_call2268.1949 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2267.1948
  %_p_scalar_269.1950 = load double, double* %polly.access.Packed_MemRef_call2268.1949, align 8
  %polly.access.Packed_MemRef_call1276.1951 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2267.1948
  %_p_scalar_277.1952 = load double, double* %polly.access.Packed_MemRef_call1276.1951, align 8
  %184 = mul nuw nsw i64 %polly.indvar253.1946, 640
  br label %polly.loop_header256.1971

polly.loop_header256.1971:                        ; preds = %polly.loop_header256.1971, %polly.loop_header250.1953
  %polly.indvar259.1954 = phi i64 [ 0, %polly.loop_header250.1953 ], [ %polly.indvar_next260.1969, %polly.loop_header256.1971 ]
  %polly.access.mul.Packed_MemRef_call1262.1955 = mul nuw nsw i64 %polly.indvar259.1954, 50
  %polly.access.add.Packed_MemRef_call1263.1956 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1262.1955, %polly.indvar247.1943
  %polly.access.Packed_MemRef_call1264.1957 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.1956
  %_p_scalar_265.1958 = load double, double* %polly.access.Packed_MemRef_call1264.1957, align 8
  %p_mul27.i112.1959 = fmul fast double %_p_scalar_269.1950, %_p_scalar_265.1958
  %polly.access.Packed_MemRef_call2272.1960 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1263.1956
  %_p_scalar_273.1961 = load double, double* %polly.access.Packed_MemRef_call2272.1960, align 8
  %p_mul37.i114.1962 = fmul fast double %_p_scalar_277.1952, %_p_scalar_273.1961
  %185 = shl nuw nsw i64 %polly.indvar259.1954, 3
  %186 = add nuw nsw i64 %185, %184
  %scevgep278.1963 = getelementptr i8, i8* %call, i64 %186
  %scevgep278279.1964 = bitcast i8* %scevgep278.1963 to double*
  %_p_scalar_280.1965 = load double, double* %scevgep278279.1964, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.1966 = fadd fast double %p_mul37.i114.1962, %p_mul27.i112.1959
  %p_reass.mul.i117.1967 = fmul fast double %p_reass.add.i116.1966, 1.500000e+00
  %p_add42.i118.1968 = fadd fast double %p_reass.mul.i117.1967, %_p_scalar_280.1965
  store double %p_add42.i118.1968, double* %scevgep278279.1964, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next260.1969 = add nuw nsw i64 %polly.indvar259.1954, 1
  %exitcond879.1970.not = icmp eq i64 %polly.indvar_next260.1969, %indvars.iv.1945
  br i1 %exitcond879.1970.not, label %polly.loop_exit258.1975, label %polly.loop_header256.1971

polly.loop_exit258.1975:                          ; preds = %polly.loop_header256.1971
  %polly.indvar_next254.1972 = add nuw nsw i64 %polly.indvar253.1946, 1
  %indvars.iv.next.1973 = add nuw nsw i64 %indvars.iv.1945, 1
  %exitcond880.1974.not = icmp eq i64 %polly.indvar_next254.1972, 50
  br i1 %exitcond880.1974.not, label %polly.loop_exit252.1978, label %polly.loop_header250.1953

polly.loop_exit252.1978:                          ; preds = %polly.loop_exit258.1975
  %polly.indvar_next248.1976 = add nuw nsw i64 %polly.indvar247.1943, 1
  %exitcond881.1977.not = icmp eq i64 %polly.indvar_next248.1976, 10
  br i1 %exitcond881.1977.not, label %polly.loop_header228.1.1, label %polly.loop_header244.1944

polly.loop_header228.1.1:                         ; preds = %polly.loop_exit252.1978, %polly.loop_header228.1.1
  %polly.indvar231.1.1 = phi i64 [ %polly.indvar_next232.1.1, %polly.loop_header228.1.1 ], [ 0, %polly.loop_exit252.1978 ]
  %187 = mul nuw nsw i64 %polly.indvar231.1.1, 400
  %scevgep876.1.1 = getelementptr i8, i8* %malloccall, i64 %187
  %188 = mul nuw nsw i64 %polly.indvar231.1.1, 480
  %189 = add nuw nsw i64 %188, 400
  %scevgep877.1.1 = getelementptr i8, i8* %call1, i64 %189
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %scevgep876.1.1, i8* noundef nonnull align 8 dereferenceable(80) %scevgep877.1.1, i64 80, i1 false)
  %polly.indvar_next232.1.1 = add nuw nsw i64 %polly.indvar231.1.1, 1
  %exitcond878.1.1.not = icmp eq i64 %polly.indvar_next232.1.1, 80
  br i1 %exitcond878.1.1.not, label %polly.loop_header244.1.1, label %polly.loop_header228.1.1

polly.loop_header244.1.1:                         ; preds = %polly.loop_header228.1.1, %polly.loop_exit252.1.1
  %polly.indvar247.1.1 = phi i64 [ %polly.indvar_next248.1.1, %polly.loop_exit252.1.1 ], [ 0, %polly.loop_header228.1.1 ]
  br label %polly.loop_header250.1.1

polly.loop_header250.1.1:                         ; preds = %polly.loop_exit258.1.1, %polly.loop_header244.1.1
  %indvars.iv.1.1 = phi i64 [ %indvars.iv.next.1.1, %polly.loop_exit258.1.1 ], [ 51, %polly.loop_header244.1.1 ]
  %polly.indvar253.1.1 = phi i64 [ %polly.indvar_next254.1.1, %polly.loop_exit258.1.1 ], [ 0, %polly.loop_header244.1.1 ]
  %190 = add nuw nsw i64 %polly.indvar253.1.1, 50
  %polly.access.mul.Packed_MemRef_call2266.1.1 = mul nuw nsw i64 %190, 50
  %polly.access.add.Packed_MemRef_call2267.1.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2266.1.1, %polly.indvar247.1.1
  %polly.access.Packed_MemRef_call2268.1.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2267.1.1
  %_p_scalar_269.1.1 = load double, double* %polly.access.Packed_MemRef_call2268.1.1, align 8
  %polly.access.Packed_MemRef_call1276.1.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2267.1.1
  %_p_scalar_277.1.1 = load double, double* %polly.access.Packed_MemRef_call1276.1.1, align 8
  %191 = mul nuw nsw i64 %190, 640
  br label %polly.loop_header256.1.1

polly.loop_header256.1.1:                         ; preds = %polly.loop_header256.1.1, %polly.loop_header250.1.1
  %polly.indvar259.1.1 = phi i64 [ 0, %polly.loop_header250.1.1 ], [ %polly.indvar_next260.1.1, %polly.loop_header256.1.1 ]
  %polly.access.mul.Packed_MemRef_call1262.1.1 = mul nuw nsw i64 %polly.indvar259.1.1, 50
  %polly.access.add.Packed_MemRef_call1263.1.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1262.1.1, %polly.indvar247.1.1
  %polly.access.Packed_MemRef_call1264.1.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.1.1
  %_p_scalar_265.1.1 = load double, double* %polly.access.Packed_MemRef_call1264.1.1, align 8
  %p_mul27.i112.1.1 = fmul fast double %_p_scalar_269.1.1, %_p_scalar_265.1.1
  %polly.access.Packed_MemRef_call2272.1.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1263.1.1
  %_p_scalar_273.1.1 = load double, double* %polly.access.Packed_MemRef_call2272.1.1, align 8
  %p_mul37.i114.1.1 = fmul fast double %_p_scalar_277.1.1, %_p_scalar_273.1.1
  %192 = shl nuw nsw i64 %polly.indvar259.1.1, 3
  %193 = add nuw nsw i64 %192, %191
  %scevgep278.1.1 = getelementptr i8, i8* %call, i64 %193
  %scevgep278279.1.1 = bitcast i8* %scevgep278.1.1 to double*
  %_p_scalar_280.1.1 = load double, double* %scevgep278279.1.1, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.1.1 = fadd fast double %p_mul37.i114.1.1, %p_mul27.i112.1.1
  %p_reass.mul.i117.1.1 = fmul fast double %p_reass.add.i116.1.1, 1.500000e+00
  %p_add42.i118.1.1 = fadd fast double %p_reass.mul.i117.1.1, %_p_scalar_280.1.1
  store double %p_add42.i118.1.1, double* %scevgep278279.1.1, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next260.1.1 = add nuw nsw i64 %polly.indvar259.1.1, 1
  %exitcond879.1.1.not = icmp eq i64 %polly.indvar_next260.1.1, %indvars.iv.1.1
  br i1 %exitcond879.1.1.not, label %polly.loop_exit258.1.1, label %polly.loop_header256.1.1

polly.loop_exit258.1.1:                           ; preds = %polly.loop_header256.1.1
  %polly.indvar_next254.1.1 = add nuw nsw i64 %polly.indvar253.1.1, 1
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1.1, 1
  %exitcond880.1.1.not = icmp eq i64 %polly.indvar_next254.1.1, 30
  br i1 %exitcond880.1.1.not, label %polly.loop_exit252.1.1, label %polly.loop_header250.1.1

polly.loop_exit252.1.1:                           ; preds = %polly.loop_exit258.1.1
  %polly.indvar_next248.1.1 = add nuw nsw i64 %polly.indvar247.1.1, 1
  %exitcond881.1.1.not = icmp eq i64 %polly.indvar_next248.1.1, 10
  br i1 %exitcond881.1.1.not, label %polly.loop_exit246.1.1, label %polly.loop_header244.1.1

polly.loop_exit246.1.1:                           ; preds = %polly.loop_exit252.1.1
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header415.1:                           ; preds = %polly.loop_exit439, %polly.loop_header415.1
  %polly.indvar418.1 = phi i64 [ %polly.indvar_next419.1, %polly.loop_header415.1 ], [ 0, %polly.loop_exit439 ]
  %194 = mul nuw nsw i64 %polly.indvar418.1, 400
  %scevgep889.1 = getelementptr i8, i8* %malloccall285, i64 %194
  %195 = mul nuw nsw i64 %polly.indvar418.1, 480
  %scevgep890.1 = getelementptr i8, i8* %call1, i64 %195
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(400) %scevgep889.1, i8* noundef nonnull align 8 dereferenceable(400) %scevgep890.1, i64 400, i1 false)
  %polly.indvar_next419.1 = add nuw nsw i64 %polly.indvar418.1, 1
  %exitcond891.1.not = icmp eq i64 %polly.indvar_next419.1, 80
  br i1 %exitcond891.1.not, label %polly.loop_header431.1, label %polly.loop_header415.1

polly.loop_header431.1:                           ; preds = %polly.loop_header415.1, %polly.loop_exit439.1
  %polly.indvar434.1 = phi i64 [ %polly.indvar_next435.1, %polly.loop_exit439.1 ], [ 0, %polly.loop_header415.1 ]
  br label %polly.loop_header437.1

polly.loop_header437.1:                           ; preds = %polly.loop_exit445.1, %polly.loop_header431.1
  %indvars.iv892.1 = phi i64 [ %indvars.iv.next893.1, %polly.loop_exit445.1 ], [ 51, %polly.loop_header431.1 ]
  %polly.indvar440.1 = phi i64 [ %polly.indvar_next441.1, %polly.loop_exit445.1 ], [ 0, %polly.loop_header431.1 ]
  %196 = add nuw nsw i64 %polly.indvar440.1, 50
  %polly.access.mul.Packed_MemRef_call2288453.1 = mul nuw nsw i64 %196, 50
  %polly.access.add.Packed_MemRef_call2288454.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2288453.1, %polly.indvar434.1
  %polly.access.Packed_MemRef_call2288455.1 = getelementptr double, double* %Packed_MemRef_call2288, i64 %polly.access.add.Packed_MemRef_call2288454.1
  %_p_scalar_456.1 = load double, double* %polly.access.Packed_MemRef_call2288455.1, align 8
  %polly.access.Packed_MemRef_call1286463.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call2288454.1
  %_p_scalar_464.1 = load double, double* %polly.access.Packed_MemRef_call1286463.1, align 8
  %197 = mul nuw nsw i64 %196, 640
  br label %polly.loop_header443.1

polly.loop_header443.1:                           ; preds = %polly.loop_header443.1, %polly.loop_header437.1
  %polly.indvar446.1 = phi i64 [ 0, %polly.loop_header437.1 ], [ %polly.indvar_next447.1, %polly.loop_header443.1 ]
  %polly.access.mul.Packed_MemRef_call1286449.1 = mul nuw nsw i64 %polly.indvar446.1, 50
  %polly.access.add.Packed_MemRef_call1286450.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1286449.1, %polly.indvar434.1
  %polly.access.Packed_MemRef_call1286451.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286450.1
  %_p_scalar_452.1 = load double, double* %polly.access.Packed_MemRef_call1286451.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_456.1, %_p_scalar_452.1
  %polly.access.Packed_MemRef_call2288459.1 = getelementptr double, double* %Packed_MemRef_call2288, i64 %polly.access.add.Packed_MemRef_call1286450.1
  %_p_scalar_460.1 = load double, double* %polly.access.Packed_MemRef_call2288459.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_464.1, %_p_scalar_460.1
  %198 = shl nuw nsw i64 %polly.indvar446.1, 3
  %199 = add nuw nsw i64 %198, %197
  %scevgep465.1 = getelementptr i8, i8* %call, i64 %199
  %scevgep465466.1 = bitcast i8* %scevgep465.1 to double*
  %_p_scalar_467.1 = load double, double* %scevgep465466.1, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_467.1
  store double %p_add42.i79.1, double* %scevgep465466.1, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next447.1 = add nuw nsw i64 %polly.indvar446.1, 1
  %exitcond894.1.not = icmp eq i64 %polly.indvar_next447.1, %indvars.iv892.1
  br i1 %exitcond894.1.not, label %polly.loop_exit445.1, label %polly.loop_header443.1

polly.loop_exit445.1:                             ; preds = %polly.loop_header443.1
  %polly.indvar_next441.1 = add nuw nsw i64 %polly.indvar440.1, 1
  %indvars.iv.next893.1 = add nuw nsw i64 %indvars.iv892.1, 1
  %exitcond895.1.not = icmp eq i64 %polly.indvar_next441.1, 30
  br i1 %exitcond895.1.not, label %polly.loop_exit439.1, label %polly.loop_header437.1

polly.loop_exit439.1:                             ; preds = %polly.loop_exit445.1
  %polly.indvar_next435.1 = add nuw nsw i64 %polly.indvar434.1, 1
  %exitcond896.1.not = icmp eq i64 %polly.indvar_next435.1, 50
  br i1 %exitcond896.1.not, label %polly.loop_header393.1, label %polly.loop_header431.1

polly.loop_header393.1:                           ; preds = %polly.loop_exit439.1, %polly.loop_header393.1
  %polly.indvar396.1 = phi i64 [ %polly.indvar_next397.1, %polly.loop_header393.1 ], [ 0, %polly.loop_exit439.1 ]
  %200 = mul nuw nsw i64 %polly.indvar396.1, 400
  %scevgep885.1 = getelementptr i8, i8* %malloccall287, i64 %200
  %201 = mul nuw nsw i64 %polly.indvar396.1, 480
  %202 = add nuw nsw i64 %201, 400
  %scevgep886.1 = getelementptr i8, i8* %call2, i64 %202
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %scevgep885.1, i8* noundef nonnull align 8 dereferenceable(80) %scevgep886.1, i64 80, i1 false)
  %polly.indvar_next397.1 = add nuw nsw i64 %polly.indvar396.1, 1
  %exitcond887.1.not = icmp eq i64 %polly.indvar_next397.1, 80
  br i1 %exitcond887.1.not, label %polly.loop_header415.1985, label %polly.loop_header393.1

polly.loop_header415.1985:                        ; preds = %polly.loop_header393.1, %polly.loop_header415.1985
  %polly.indvar418.1980 = phi i64 [ %polly.indvar_next419.1983, %polly.loop_header415.1985 ], [ 0, %polly.loop_header393.1 ]
  %203 = mul nuw nsw i64 %polly.indvar418.1980, 400
  %scevgep889.1981 = getelementptr i8, i8* %malloccall285, i64 %203
  %204 = mul nuw nsw i64 %polly.indvar418.1980, 480
  %205 = add nuw nsw i64 %204, 400
  %scevgep890.1982 = getelementptr i8, i8* %call1, i64 %205
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %scevgep889.1981, i8* noundef nonnull align 8 dereferenceable(80) %scevgep890.1982, i64 80, i1 false)
  %polly.indvar_next419.1983 = add nuw nsw i64 %polly.indvar418.1980, 1
  %exitcond891.1984.not = icmp eq i64 %polly.indvar_next419.1983, 50
  br i1 %exitcond891.1984.not, label %polly.loop_header431.1988, label %polly.loop_header415.1985

polly.loop_header431.1988:                        ; preds = %polly.loop_header415.1985, %polly.loop_exit439.11022
  %polly.indvar434.1987 = phi i64 [ %polly.indvar_next435.11020, %polly.loop_exit439.11022 ], [ 0, %polly.loop_header415.1985 ]
  br label %polly.loop_header437.1997

polly.loop_header437.1997:                        ; preds = %polly.loop_exit445.11019, %polly.loop_header431.1988
  %indvars.iv892.1989 = phi i64 [ %indvars.iv.next893.11017, %polly.loop_exit445.11019 ], [ 1, %polly.loop_header431.1988 ]
  %polly.indvar440.1990 = phi i64 [ %polly.indvar_next441.11016, %polly.loop_exit445.11019 ], [ 0, %polly.loop_header431.1988 ]
  %polly.access.mul.Packed_MemRef_call2288453.1991 = mul nuw nsw i64 %polly.indvar440.1990, 50
  %polly.access.add.Packed_MemRef_call2288454.1992 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2288453.1991, %polly.indvar434.1987
  %polly.access.Packed_MemRef_call2288455.1993 = getelementptr double, double* %Packed_MemRef_call2288, i64 %polly.access.add.Packed_MemRef_call2288454.1992
  %_p_scalar_456.1994 = load double, double* %polly.access.Packed_MemRef_call2288455.1993, align 8
  %polly.access.Packed_MemRef_call1286463.1995 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call2288454.1992
  %_p_scalar_464.1996 = load double, double* %polly.access.Packed_MemRef_call1286463.1995, align 8
  %206 = mul nuw nsw i64 %polly.indvar440.1990, 640
  br label %polly.loop_header443.11015

polly.loop_header443.11015:                       ; preds = %polly.loop_header443.11015, %polly.loop_header437.1997
  %polly.indvar446.1998 = phi i64 [ 0, %polly.loop_header437.1997 ], [ %polly.indvar_next447.11013, %polly.loop_header443.11015 ]
  %polly.access.mul.Packed_MemRef_call1286449.1999 = mul nuw nsw i64 %polly.indvar446.1998, 50
  %polly.access.add.Packed_MemRef_call1286450.11000 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1286449.1999, %polly.indvar434.1987
  %polly.access.Packed_MemRef_call1286451.11001 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286450.11000
  %_p_scalar_452.11002 = load double, double* %polly.access.Packed_MemRef_call1286451.11001, align 8
  %p_mul27.i73.11003 = fmul fast double %_p_scalar_456.1994, %_p_scalar_452.11002
  %polly.access.Packed_MemRef_call2288459.11004 = getelementptr double, double* %Packed_MemRef_call2288, i64 %polly.access.add.Packed_MemRef_call1286450.11000
  %_p_scalar_460.11005 = load double, double* %polly.access.Packed_MemRef_call2288459.11004, align 8
  %p_mul37.i75.11006 = fmul fast double %_p_scalar_464.1996, %_p_scalar_460.11005
  %207 = shl nuw nsw i64 %polly.indvar446.1998, 3
  %208 = add nuw nsw i64 %207, %206
  %scevgep465.11007 = getelementptr i8, i8* %call, i64 %208
  %scevgep465466.11008 = bitcast i8* %scevgep465.11007 to double*
  %_p_scalar_467.11009 = load double, double* %scevgep465466.11008, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i77.11010 = fadd fast double %p_mul37.i75.11006, %p_mul27.i73.11003
  %p_reass.mul.i78.11011 = fmul fast double %p_reass.add.i77.11010, 1.500000e+00
  %p_add42.i79.11012 = fadd fast double %p_reass.mul.i78.11011, %_p_scalar_467.11009
  store double %p_add42.i79.11012, double* %scevgep465466.11008, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next447.11013 = add nuw nsw i64 %polly.indvar446.1998, 1
  %exitcond894.11014.not = icmp eq i64 %polly.indvar_next447.11013, %indvars.iv892.1989
  br i1 %exitcond894.11014.not, label %polly.loop_exit445.11019, label %polly.loop_header443.11015

polly.loop_exit445.11019:                         ; preds = %polly.loop_header443.11015
  %polly.indvar_next441.11016 = add nuw nsw i64 %polly.indvar440.1990, 1
  %indvars.iv.next893.11017 = add nuw nsw i64 %indvars.iv892.1989, 1
  %exitcond895.11018.not = icmp eq i64 %polly.indvar_next441.11016, 50
  br i1 %exitcond895.11018.not, label %polly.loop_exit439.11022, label %polly.loop_header437.1997

polly.loop_exit439.11022:                         ; preds = %polly.loop_exit445.11019
  %polly.indvar_next435.11020 = add nuw nsw i64 %polly.indvar434.1987, 1
  %exitcond896.11021.not = icmp eq i64 %polly.indvar_next435.11020, 10
  br i1 %exitcond896.11021.not, label %polly.loop_header415.1.1, label %polly.loop_header431.1988

polly.loop_header415.1.1:                         ; preds = %polly.loop_exit439.11022, %polly.loop_header415.1.1
  %polly.indvar418.1.1 = phi i64 [ %polly.indvar_next419.1.1, %polly.loop_header415.1.1 ], [ 0, %polly.loop_exit439.11022 ]
  %209 = mul nuw nsw i64 %polly.indvar418.1.1, 400
  %scevgep889.1.1 = getelementptr i8, i8* %malloccall285, i64 %209
  %210 = mul nuw nsw i64 %polly.indvar418.1.1, 480
  %211 = add nuw nsw i64 %210, 400
  %scevgep890.1.1 = getelementptr i8, i8* %call1, i64 %211
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %scevgep889.1.1, i8* noundef nonnull align 8 dereferenceable(80) %scevgep890.1.1, i64 80, i1 false)
  %polly.indvar_next419.1.1 = add nuw nsw i64 %polly.indvar418.1.1, 1
  %exitcond891.1.1.not = icmp eq i64 %polly.indvar_next419.1.1, 80
  br i1 %exitcond891.1.1.not, label %polly.loop_header431.1.1, label %polly.loop_header415.1.1

polly.loop_header431.1.1:                         ; preds = %polly.loop_header415.1.1, %polly.loop_exit439.1.1
  %polly.indvar434.1.1 = phi i64 [ %polly.indvar_next435.1.1, %polly.loop_exit439.1.1 ], [ 0, %polly.loop_header415.1.1 ]
  br label %polly.loop_header437.1.1

polly.loop_header437.1.1:                         ; preds = %polly.loop_exit445.1.1, %polly.loop_header431.1.1
  %indvars.iv892.1.1 = phi i64 [ %indvars.iv.next893.1.1, %polly.loop_exit445.1.1 ], [ 51, %polly.loop_header431.1.1 ]
  %polly.indvar440.1.1 = phi i64 [ %polly.indvar_next441.1.1, %polly.loop_exit445.1.1 ], [ 0, %polly.loop_header431.1.1 ]
  %212 = add nuw nsw i64 %polly.indvar440.1.1, 50
  %polly.access.mul.Packed_MemRef_call2288453.1.1 = mul nuw nsw i64 %212, 50
  %polly.access.add.Packed_MemRef_call2288454.1.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2288453.1.1, %polly.indvar434.1.1
  %polly.access.Packed_MemRef_call2288455.1.1 = getelementptr double, double* %Packed_MemRef_call2288, i64 %polly.access.add.Packed_MemRef_call2288454.1.1
  %_p_scalar_456.1.1 = load double, double* %polly.access.Packed_MemRef_call2288455.1.1, align 8
  %polly.access.Packed_MemRef_call1286463.1.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call2288454.1.1
  %_p_scalar_464.1.1 = load double, double* %polly.access.Packed_MemRef_call1286463.1.1, align 8
  %213 = mul nuw nsw i64 %212, 640
  br label %polly.loop_header443.1.1

polly.loop_header443.1.1:                         ; preds = %polly.loop_header443.1.1, %polly.loop_header437.1.1
  %polly.indvar446.1.1 = phi i64 [ 0, %polly.loop_header437.1.1 ], [ %polly.indvar_next447.1.1, %polly.loop_header443.1.1 ]
  %polly.access.mul.Packed_MemRef_call1286449.1.1 = mul nuw nsw i64 %polly.indvar446.1.1, 50
  %polly.access.add.Packed_MemRef_call1286450.1.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1286449.1.1, %polly.indvar434.1.1
  %polly.access.Packed_MemRef_call1286451.1.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286450.1.1
  %_p_scalar_452.1.1 = load double, double* %polly.access.Packed_MemRef_call1286451.1.1, align 8
  %p_mul27.i73.1.1 = fmul fast double %_p_scalar_456.1.1, %_p_scalar_452.1.1
  %polly.access.Packed_MemRef_call2288459.1.1 = getelementptr double, double* %Packed_MemRef_call2288, i64 %polly.access.add.Packed_MemRef_call1286450.1.1
  %_p_scalar_460.1.1 = load double, double* %polly.access.Packed_MemRef_call2288459.1.1, align 8
  %p_mul37.i75.1.1 = fmul fast double %_p_scalar_464.1.1, %_p_scalar_460.1.1
  %214 = shl nuw nsw i64 %polly.indvar446.1.1, 3
  %215 = add nuw nsw i64 %214, %213
  %scevgep465.1.1 = getelementptr i8, i8* %call, i64 %215
  %scevgep465466.1.1 = bitcast i8* %scevgep465.1.1 to double*
  %_p_scalar_467.1.1 = load double, double* %scevgep465466.1.1, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i77.1.1 = fadd fast double %p_mul37.i75.1.1, %p_mul27.i73.1.1
  %p_reass.mul.i78.1.1 = fmul fast double %p_reass.add.i77.1.1, 1.500000e+00
  %p_add42.i79.1.1 = fadd fast double %p_reass.mul.i78.1.1, %_p_scalar_467.1.1
  store double %p_add42.i79.1.1, double* %scevgep465466.1.1, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next447.1.1 = add nuw nsw i64 %polly.indvar446.1.1, 1
  %exitcond894.1.1.not = icmp eq i64 %polly.indvar_next447.1.1, %indvars.iv892.1.1
  br i1 %exitcond894.1.1.not, label %polly.loop_exit445.1.1, label %polly.loop_header443.1.1

polly.loop_exit445.1.1:                           ; preds = %polly.loop_header443.1.1
  %polly.indvar_next441.1.1 = add nuw nsw i64 %polly.indvar440.1.1, 1
  %indvars.iv.next893.1.1 = add nuw nsw i64 %indvars.iv892.1.1, 1
  %exitcond895.1.1.not = icmp eq i64 %polly.indvar_next441.1.1, 30
  br i1 %exitcond895.1.1.not, label %polly.loop_exit439.1.1, label %polly.loop_header437.1.1

polly.loop_exit439.1.1:                           ; preds = %polly.loop_exit445.1.1
  %polly.indvar_next435.1.1 = add nuw nsw i64 %polly.indvar434.1.1, 1
  %exitcond896.1.1.not = icmp eq i64 %polly.indvar_next435.1.1, 10
  br i1 %exitcond896.1.1.not, label %polly.loop_exit433.1.1, label %polly.loop_header431.1.1

polly.loop_exit433.1.1:                           ; preds = %polly.loop_exit439.1.1
  tail call void @free(i8* nonnull %malloccall285)
  tail call void @free(i8* nonnull %malloccall287)
  br label %kernel_syr2k.exit90

polly.loop_header602.1:                           ; preds = %polly.loop_exit626, %polly.loop_header602.1
  %polly.indvar605.1 = phi i64 [ %polly.indvar_next606.1, %polly.loop_header602.1 ], [ 0, %polly.loop_exit626 ]
  %216 = mul nuw nsw i64 %polly.indvar605.1, 400
  %scevgep904.1 = getelementptr i8, i8* %malloccall472, i64 %216
  %217 = mul nuw nsw i64 %polly.indvar605.1, 480
  %scevgep905.1 = getelementptr i8, i8* %call1, i64 %217
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(400) %scevgep904.1, i8* noundef nonnull align 8 dereferenceable(400) %scevgep905.1, i64 400, i1 false)
  %polly.indvar_next606.1 = add nuw nsw i64 %polly.indvar605.1, 1
  %exitcond906.1.not = icmp eq i64 %polly.indvar_next606.1, 80
  br i1 %exitcond906.1.not, label %polly.loop_header618.1, label %polly.loop_header602.1

polly.loop_header618.1:                           ; preds = %polly.loop_header602.1, %polly.loop_exit626.1
  %polly.indvar621.1 = phi i64 [ %polly.indvar_next622.1, %polly.loop_exit626.1 ], [ 0, %polly.loop_header602.1 ]
  br label %polly.loop_header624.1

polly.loop_header624.1:                           ; preds = %polly.loop_exit632.1, %polly.loop_header618.1
  %indvars.iv907.1 = phi i64 [ %indvars.iv.next908.1, %polly.loop_exit632.1 ], [ 51, %polly.loop_header618.1 ]
  %polly.indvar627.1 = phi i64 [ %polly.indvar_next628.1, %polly.loop_exit632.1 ], [ 0, %polly.loop_header618.1 ]
  %218 = add nuw nsw i64 %polly.indvar627.1, 50
  %polly.access.mul.Packed_MemRef_call2475640.1 = mul nuw nsw i64 %218, 50
  %polly.access.add.Packed_MemRef_call2475641.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2475640.1, %polly.indvar621.1
  %polly.access.Packed_MemRef_call2475642.1 = getelementptr double, double* %Packed_MemRef_call2475, i64 %polly.access.add.Packed_MemRef_call2475641.1
  %_p_scalar_643.1 = load double, double* %polly.access.Packed_MemRef_call2475642.1, align 8
  %polly.access.Packed_MemRef_call1473650.1 = getelementptr double, double* %Packed_MemRef_call1473, i64 %polly.access.add.Packed_MemRef_call2475641.1
  %_p_scalar_651.1 = load double, double* %polly.access.Packed_MemRef_call1473650.1, align 8
  %219 = mul nuw nsw i64 %218, 640
  br label %polly.loop_header630.1

polly.loop_header630.1:                           ; preds = %polly.loop_header630.1, %polly.loop_header624.1
  %polly.indvar633.1 = phi i64 [ 0, %polly.loop_header624.1 ], [ %polly.indvar_next634.1, %polly.loop_header630.1 ]
  %polly.access.mul.Packed_MemRef_call1473636.1 = mul nuw nsw i64 %polly.indvar633.1, 50
  %polly.access.add.Packed_MemRef_call1473637.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1473636.1, %polly.indvar621.1
  %polly.access.Packed_MemRef_call1473638.1 = getelementptr double, double* %Packed_MemRef_call1473, i64 %polly.access.add.Packed_MemRef_call1473637.1
  %_p_scalar_639.1 = load double, double* %polly.access.Packed_MemRef_call1473638.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_643.1, %_p_scalar_639.1
  %polly.access.Packed_MemRef_call2475646.1 = getelementptr double, double* %Packed_MemRef_call2475, i64 %polly.access.add.Packed_MemRef_call1473637.1
  %_p_scalar_647.1 = load double, double* %polly.access.Packed_MemRef_call2475646.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_651.1, %_p_scalar_647.1
  %220 = shl nuw nsw i64 %polly.indvar633.1, 3
  %221 = add nuw nsw i64 %220, %219
  %scevgep652.1 = getelementptr i8, i8* %call, i64 %221
  %scevgep652653.1 = bitcast i8* %scevgep652.1 to double*
  %_p_scalar_654.1 = load double, double* %scevgep652653.1, align 8, !alias.scope !90, !noalias !92
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_654.1
  store double %p_add42.i.1, double* %scevgep652653.1, align 8, !alias.scope !90, !noalias !92
  %polly.indvar_next634.1 = add nuw nsw i64 %polly.indvar633.1, 1
  %exitcond909.1.not = icmp eq i64 %polly.indvar_next634.1, %indvars.iv907.1
  br i1 %exitcond909.1.not, label %polly.loop_exit632.1, label %polly.loop_header630.1

polly.loop_exit632.1:                             ; preds = %polly.loop_header630.1
  %polly.indvar_next628.1 = add nuw nsw i64 %polly.indvar627.1, 1
  %indvars.iv.next908.1 = add nuw nsw i64 %indvars.iv907.1, 1
  %exitcond910.1.not = icmp eq i64 %polly.indvar_next628.1, 30
  br i1 %exitcond910.1.not, label %polly.loop_exit626.1, label %polly.loop_header624.1

polly.loop_exit626.1:                             ; preds = %polly.loop_exit632.1
  %polly.indvar_next622.1 = add nuw nsw i64 %polly.indvar621.1, 1
  %exitcond911.1.not = icmp eq i64 %polly.indvar_next622.1, 50
  br i1 %exitcond911.1.not, label %polly.loop_header580.1, label %polly.loop_header618.1

polly.loop_header580.1:                           ; preds = %polly.loop_exit626.1, %polly.loop_header580.1
  %polly.indvar583.1 = phi i64 [ %polly.indvar_next584.1, %polly.loop_header580.1 ], [ 0, %polly.loop_exit626.1 ]
  %222 = mul nuw nsw i64 %polly.indvar583.1, 400
  %scevgep900.1 = getelementptr i8, i8* %malloccall474, i64 %222
  %223 = mul nuw nsw i64 %polly.indvar583.1, 480
  %224 = add nuw nsw i64 %223, 400
  %scevgep901.1 = getelementptr i8, i8* %call2, i64 %224
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %scevgep900.1, i8* noundef nonnull align 8 dereferenceable(80) %scevgep901.1, i64 80, i1 false)
  %polly.indvar_next584.1 = add nuw nsw i64 %polly.indvar583.1, 1
  %exitcond902.1.not = icmp eq i64 %polly.indvar_next584.1, 80
  br i1 %exitcond902.1.not, label %polly.loop_header602.11029, label %polly.loop_header580.1

polly.loop_header602.11029:                       ; preds = %polly.loop_header580.1, %polly.loop_header602.11029
  %polly.indvar605.11024 = phi i64 [ %polly.indvar_next606.11027, %polly.loop_header602.11029 ], [ 0, %polly.loop_header580.1 ]
  %225 = mul nuw nsw i64 %polly.indvar605.11024, 400
  %scevgep904.11025 = getelementptr i8, i8* %malloccall472, i64 %225
  %226 = mul nuw nsw i64 %polly.indvar605.11024, 480
  %227 = add nuw nsw i64 %226, 400
  %scevgep905.11026 = getelementptr i8, i8* %call1, i64 %227
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %scevgep904.11025, i8* noundef nonnull align 8 dereferenceable(80) %scevgep905.11026, i64 80, i1 false)
  %polly.indvar_next606.11027 = add nuw nsw i64 %polly.indvar605.11024, 1
  %exitcond906.11028.not = icmp eq i64 %polly.indvar_next606.11027, 50
  br i1 %exitcond906.11028.not, label %polly.loop_header618.11032, label %polly.loop_header602.11029

polly.loop_header618.11032:                       ; preds = %polly.loop_header602.11029, %polly.loop_exit626.11066
  %polly.indvar621.11031 = phi i64 [ %polly.indvar_next622.11064, %polly.loop_exit626.11066 ], [ 0, %polly.loop_header602.11029 ]
  br label %polly.loop_header624.11041

polly.loop_header624.11041:                       ; preds = %polly.loop_exit632.11063, %polly.loop_header618.11032
  %indvars.iv907.11033 = phi i64 [ %indvars.iv.next908.11061, %polly.loop_exit632.11063 ], [ 1, %polly.loop_header618.11032 ]
  %polly.indvar627.11034 = phi i64 [ %polly.indvar_next628.11060, %polly.loop_exit632.11063 ], [ 0, %polly.loop_header618.11032 ]
  %polly.access.mul.Packed_MemRef_call2475640.11035 = mul nuw nsw i64 %polly.indvar627.11034, 50
  %polly.access.add.Packed_MemRef_call2475641.11036 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2475640.11035, %polly.indvar621.11031
  %polly.access.Packed_MemRef_call2475642.11037 = getelementptr double, double* %Packed_MemRef_call2475, i64 %polly.access.add.Packed_MemRef_call2475641.11036
  %_p_scalar_643.11038 = load double, double* %polly.access.Packed_MemRef_call2475642.11037, align 8
  %polly.access.Packed_MemRef_call1473650.11039 = getelementptr double, double* %Packed_MemRef_call1473, i64 %polly.access.add.Packed_MemRef_call2475641.11036
  %_p_scalar_651.11040 = load double, double* %polly.access.Packed_MemRef_call1473650.11039, align 8
  %228 = mul nuw nsw i64 %polly.indvar627.11034, 640
  br label %polly.loop_header630.11059

polly.loop_header630.11059:                       ; preds = %polly.loop_header630.11059, %polly.loop_header624.11041
  %polly.indvar633.11042 = phi i64 [ 0, %polly.loop_header624.11041 ], [ %polly.indvar_next634.11057, %polly.loop_header630.11059 ]
  %polly.access.mul.Packed_MemRef_call1473636.11043 = mul nuw nsw i64 %polly.indvar633.11042, 50
  %polly.access.add.Packed_MemRef_call1473637.11044 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1473636.11043, %polly.indvar621.11031
  %polly.access.Packed_MemRef_call1473638.11045 = getelementptr double, double* %Packed_MemRef_call1473, i64 %polly.access.add.Packed_MemRef_call1473637.11044
  %_p_scalar_639.11046 = load double, double* %polly.access.Packed_MemRef_call1473638.11045, align 8
  %p_mul27.i.11047 = fmul fast double %_p_scalar_643.11038, %_p_scalar_639.11046
  %polly.access.Packed_MemRef_call2475646.11048 = getelementptr double, double* %Packed_MemRef_call2475, i64 %polly.access.add.Packed_MemRef_call1473637.11044
  %_p_scalar_647.11049 = load double, double* %polly.access.Packed_MemRef_call2475646.11048, align 8
  %p_mul37.i.11050 = fmul fast double %_p_scalar_651.11040, %_p_scalar_647.11049
  %229 = shl nuw nsw i64 %polly.indvar633.11042, 3
  %230 = add nuw nsw i64 %229, %228
  %scevgep652.11051 = getelementptr i8, i8* %call, i64 %230
  %scevgep652653.11052 = bitcast i8* %scevgep652.11051 to double*
  %_p_scalar_654.11053 = load double, double* %scevgep652653.11052, align 8, !alias.scope !90, !noalias !92
  %p_reass.add.i.11054 = fadd fast double %p_mul37.i.11050, %p_mul27.i.11047
  %p_reass.mul.i.11055 = fmul fast double %p_reass.add.i.11054, 1.500000e+00
  %p_add42.i.11056 = fadd fast double %p_reass.mul.i.11055, %_p_scalar_654.11053
  store double %p_add42.i.11056, double* %scevgep652653.11052, align 8, !alias.scope !90, !noalias !92
  %polly.indvar_next634.11057 = add nuw nsw i64 %polly.indvar633.11042, 1
  %exitcond909.11058.not = icmp eq i64 %polly.indvar_next634.11057, %indvars.iv907.11033
  br i1 %exitcond909.11058.not, label %polly.loop_exit632.11063, label %polly.loop_header630.11059

polly.loop_exit632.11063:                         ; preds = %polly.loop_header630.11059
  %polly.indvar_next628.11060 = add nuw nsw i64 %polly.indvar627.11034, 1
  %indvars.iv.next908.11061 = add nuw nsw i64 %indvars.iv907.11033, 1
  %exitcond910.11062.not = icmp eq i64 %polly.indvar_next628.11060, 50
  br i1 %exitcond910.11062.not, label %polly.loop_exit626.11066, label %polly.loop_header624.11041

polly.loop_exit626.11066:                         ; preds = %polly.loop_exit632.11063
  %polly.indvar_next622.11064 = add nuw nsw i64 %polly.indvar621.11031, 1
  %exitcond911.11065.not = icmp eq i64 %polly.indvar_next622.11064, 10
  br i1 %exitcond911.11065.not, label %polly.loop_header602.1.1, label %polly.loop_header618.11032

polly.loop_header602.1.1:                         ; preds = %polly.loop_exit626.11066, %polly.loop_header602.1.1
  %polly.indvar605.1.1 = phi i64 [ %polly.indvar_next606.1.1, %polly.loop_header602.1.1 ], [ 0, %polly.loop_exit626.11066 ]
  %231 = mul nuw nsw i64 %polly.indvar605.1.1, 400
  %scevgep904.1.1 = getelementptr i8, i8* %malloccall472, i64 %231
  %232 = mul nuw nsw i64 %polly.indvar605.1.1, 480
  %233 = add nuw nsw i64 %232, 400
  %scevgep905.1.1 = getelementptr i8, i8* %call1, i64 %233
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %scevgep904.1.1, i8* noundef nonnull align 8 dereferenceable(80) %scevgep905.1.1, i64 80, i1 false)
  %polly.indvar_next606.1.1 = add nuw nsw i64 %polly.indvar605.1.1, 1
  %exitcond906.1.1.not = icmp eq i64 %polly.indvar_next606.1.1, 80
  br i1 %exitcond906.1.1.not, label %polly.loop_header618.1.1, label %polly.loop_header602.1.1

polly.loop_header618.1.1:                         ; preds = %polly.loop_header602.1.1, %polly.loop_exit626.1.1
  %polly.indvar621.1.1 = phi i64 [ %polly.indvar_next622.1.1, %polly.loop_exit626.1.1 ], [ 0, %polly.loop_header602.1.1 ]
  br label %polly.loop_header624.1.1

polly.loop_header624.1.1:                         ; preds = %polly.loop_exit632.1.1, %polly.loop_header618.1.1
  %indvars.iv907.1.1 = phi i64 [ %indvars.iv.next908.1.1, %polly.loop_exit632.1.1 ], [ 51, %polly.loop_header618.1.1 ]
  %polly.indvar627.1.1 = phi i64 [ %polly.indvar_next628.1.1, %polly.loop_exit632.1.1 ], [ 0, %polly.loop_header618.1.1 ]
  %234 = add nuw nsw i64 %polly.indvar627.1.1, 50
  %polly.access.mul.Packed_MemRef_call2475640.1.1 = mul nuw nsw i64 %234, 50
  %polly.access.add.Packed_MemRef_call2475641.1.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2475640.1.1, %polly.indvar621.1.1
  %polly.access.Packed_MemRef_call2475642.1.1 = getelementptr double, double* %Packed_MemRef_call2475, i64 %polly.access.add.Packed_MemRef_call2475641.1.1
  %_p_scalar_643.1.1 = load double, double* %polly.access.Packed_MemRef_call2475642.1.1, align 8
  %polly.access.Packed_MemRef_call1473650.1.1 = getelementptr double, double* %Packed_MemRef_call1473, i64 %polly.access.add.Packed_MemRef_call2475641.1.1
  %_p_scalar_651.1.1 = load double, double* %polly.access.Packed_MemRef_call1473650.1.1, align 8
  %235 = mul nuw nsw i64 %234, 640
  br label %polly.loop_header630.1.1

polly.loop_header630.1.1:                         ; preds = %polly.loop_header630.1.1, %polly.loop_header624.1.1
  %polly.indvar633.1.1 = phi i64 [ 0, %polly.loop_header624.1.1 ], [ %polly.indvar_next634.1.1, %polly.loop_header630.1.1 ]
  %polly.access.mul.Packed_MemRef_call1473636.1.1 = mul nuw nsw i64 %polly.indvar633.1.1, 50
  %polly.access.add.Packed_MemRef_call1473637.1.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1473636.1.1, %polly.indvar621.1.1
  %polly.access.Packed_MemRef_call1473638.1.1 = getelementptr double, double* %Packed_MemRef_call1473, i64 %polly.access.add.Packed_MemRef_call1473637.1.1
  %_p_scalar_639.1.1 = load double, double* %polly.access.Packed_MemRef_call1473638.1.1, align 8
  %p_mul27.i.1.1 = fmul fast double %_p_scalar_643.1.1, %_p_scalar_639.1.1
  %polly.access.Packed_MemRef_call2475646.1.1 = getelementptr double, double* %Packed_MemRef_call2475, i64 %polly.access.add.Packed_MemRef_call1473637.1.1
  %_p_scalar_647.1.1 = load double, double* %polly.access.Packed_MemRef_call2475646.1.1, align 8
  %p_mul37.i.1.1 = fmul fast double %_p_scalar_651.1.1, %_p_scalar_647.1.1
  %236 = shl nuw nsw i64 %polly.indvar633.1.1, 3
  %237 = add nuw nsw i64 %236, %235
  %scevgep652.1.1 = getelementptr i8, i8* %call, i64 %237
  %scevgep652653.1.1 = bitcast i8* %scevgep652.1.1 to double*
  %_p_scalar_654.1.1 = load double, double* %scevgep652653.1.1, align 8, !alias.scope !90, !noalias !92
  %p_reass.add.i.1.1 = fadd fast double %p_mul37.i.1.1, %p_mul27.i.1.1
  %p_reass.mul.i.1.1 = fmul fast double %p_reass.add.i.1.1, 1.500000e+00
  %p_add42.i.1.1 = fadd fast double %p_reass.mul.i.1.1, %_p_scalar_654.1.1
  store double %p_add42.i.1.1, double* %scevgep652653.1.1, align 8, !alias.scope !90, !noalias !92
  %polly.indvar_next634.1.1 = add nuw nsw i64 %polly.indvar633.1.1, 1
  %exitcond909.1.1.not = icmp eq i64 %polly.indvar_next634.1.1, %indvars.iv907.1.1
  br i1 %exitcond909.1.1.not, label %polly.loop_exit632.1.1, label %polly.loop_header630.1.1

polly.loop_exit632.1.1:                           ; preds = %polly.loop_header630.1.1
  %polly.indvar_next628.1.1 = add nuw nsw i64 %polly.indvar627.1.1, 1
  %indvars.iv.next908.1.1 = add nuw nsw i64 %indvars.iv907.1.1, 1
  %exitcond910.1.1.not = icmp eq i64 %polly.indvar_next628.1.1, 30
  br i1 %exitcond910.1.1.not, label %polly.loop_exit626.1.1, label %polly.loop_header624.1.1

polly.loop_exit626.1.1:                           ; preds = %polly.loop_exit632.1.1
  %polly.indvar_next622.1.1 = add nuw nsw i64 %polly.indvar621.1.1, 1
  %exitcond911.1.1.not = icmp eq i64 %polly.indvar_next622.1.1, 10
  br i1 %exitcond911.1.1.not, label %polly.loop_exit620.1.1, label %polly.loop_header618.1.1

polly.loop_exit620.1.1:                           ; preds = %polly.loop_exit626.1.1
  tail call void @free(i8* nonnull %malloccall472)
  tail call void @free(i8* nonnull %malloccall474)
  br label %kernel_syr2k.exit

polly.loop_header846.1:                           ; preds = %polly.loop_exit854, %polly.loop_exit854.1
  %polly.indvar849.1 = phi i64 [ %polly.indvar_next850.1, %polly.loop_exit854.1 ], [ 0, %polly.loop_exit854 ]
  %238 = mul nuw nsw i64 %polly.indvar849.1, 480
  %239 = trunc i64 %polly.indvar849.1 to i32
  %broadcast.splatinsert1358 = insertelement <4 x i32> poison, i32 %239, i32 0
  %broadcast.splat1359 = shufflevector <4 x i32> %broadcast.splatinsert1358, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1350

vector.body1350:                                  ; preds = %vector.body1350, %polly.loop_header846.1
  %index1352 = phi i64 [ 0, %polly.loop_header846.1 ], [ %index.next1353, %vector.body1350 ]
  %vec.ind1356 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header846.1 ], [ %vec.ind.next1357, %vector.body1350 ]
  %240 = add nuw nsw <4 x i64> %vec.ind1356, <i64 32, i64 32, i64 32, i64 32>
  %241 = trunc <4 x i64> %240 to <4 x i32>
  %242 = mul <4 x i32> %broadcast.splat1359, %241
  %243 = add <4 x i32> %242, <i32 1, i32 1, i32 1, i32 1>
  %244 = urem <4 x i32> %243, <i32 80, i32 80, i32 80, i32 80>
  %245 = sitofp <4 x i32> %244 to <4 x double>
  %246 = fmul fast <4 x double> %245, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %247 = extractelement <4 x i64> %240, i32 0
  %248 = shl i64 %247, 3
  %249 = add i64 %248, %238
  %250 = getelementptr i8, i8* %call1, i64 %249
  %251 = bitcast i8* %250 to <4 x double>*
  store <4 x double> %246, <4 x double>* %251, align 8, !alias.scope !102, !noalias !107
  %index.next1353 = add i64 %index1352, 4
  %vec.ind.next1357 = add <4 x i64> %vec.ind1356, <i64 4, i64 4, i64 4, i64 4>
  %252 = icmp eq i64 %index.next1353, 28
  br i1 %252, label %polly.loop_exit854.1, label %vector.body1350, !llvm.loop !109

polly.loop_exit854.1:                             ; preds = %vector.body1350
  %polly.indvar_next850.1 = add nuw nsw i64 %polly.indvar849.1, 1
  %exitcond917.1.not = icmp eq i64 %polly.indvar_next850.1, 32
  br i1 %exitcond917.1.not, label %polly.loop_header846.11069, label %polly.loop_header846.1

polly.loop_header846.11069:                       ; preds = %polly.loop_exit854.1, %polly.loop_exit854.11080
  %polly.indvar849.11068 = phi i64 [ %polly.indvar_next850.11078, %polly.loop_exit854.11080 ], [ 0, %polly.loop_exit854.1 ]
  %253 = add nuw nsw i64 %polly.indvar849.11068, 32
  %254 = mul nuw nsw i64 %253, 480
  %255 = trunc i64 %253 to i32
  %broadcast.splatinsert1372 = insertelement <4 x i32> poison, i32 %255, i32 0
  %broadcast.splat1373 = shufflevector <4 x i32> %broadcast.splatinsert1372, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1362

vector.body1362:                                  ; preds = %vector.body1362, %polly.loop_header846.11069
  %index1364 = phi i64 [ 0, %polly.loop_header846.11069 ], [ %index.next1365, %vector.body1362 ]
  %vec.ind1370 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header846.11069 ], [ %vec.ind.next1371, %vector.body1362 ]
  %256 = mul <4 x i32> %vec.ind1370, %broadcast.splat1373
  %257 = add <4 x i32> %256, <i32 1, i32 1, i32 1, i32 1>
  %258 = urem <4 x i32> %257, <i32 80, i32 80, i32 80, i32 80>
  %259 = sitofp <4 x i32> %258 to <4 x double>
  %260 = fmul fast <4 x double> %259, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %261 = shl i64 %index1364, 3
  %262 = add i64 %261, %254
  %263 = getelementptr i8, i8* %call1, i64 %262
  %264 = bitcast i8* %263 to <4 x double>*
  store <4 x double> %260, <4 x double>* %264, align 8, !alias.scope !102, !noalias !107
  %index.next1365 = add i64 %index1364, 4
  %vec.ind.next1371 = add <4 x i32> %vec.ind1370, <i32 4, i32 4, i32 4, i32 4>
  %265 = icmp eq i64 %index.next1365, 32
  br i1 %265, label %polly.loop_exit854.11080, label %vector.body1362, !llvm.loop !110

polly.loop_exit854.11080:                         ; preds = %vector.body1362
  %polly.indvar_next850.11078 = add nuw nsw i64 %polly.indvar849.11068, 1
  %exitcond917.11079.not = icmp eq i64 %polly.indvar_next850.11078, 32
  br i1 %exitcond917.11079.not, label %polly.loop_header846.1.1, label %polly.loop_header846.11069

polly.loop_header846.1.1:                         ; preds = %polly.loop_exit854.11080, %polly.loop_exit854.1.1
  %polly.indvar849.1.1 = phi i64 [ %polly.indvar_next850.1.1, %polly.loop_exit854.1.1 ], [ 0, %polly.loop_exit854.11080 ]
  %266 = add nuw nsw i64 %polly.indvar849.1.1, 32
  %267 = mul nuw nsw i64 %266, 480
  %268 = trunc i64 %266 to i32
  %broadcast.splatinsert1384 = insertelement <4 x i32> poison, i32 %268, i32 0
  %broadcast.splat1385 = shufflevector <4 x i32> %broadcast.splatinsert1384, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1376

vector.body1376:                                  ; preds = %vector.body1376, %polly.loop_header846.1.1
  %index1378 = phi i64 [ 0, %polly.loop_header846.1.1 ], [ %index.next1379, %vector.body1376 ]
  %vec.ind1382 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header846.1.1 ], [ %vec.ind.next1383, %vector.body1376 ]
  %269 = add nuw nsw <4 x i64> %vec.ind1382, <i64 32, i64 32, i64 32, i64 32>
  %270 = trunc <4 x i64> %269 to <4 x i32>
  %271 = mul <4 x i32> %broadcast.splat1385, %270
  %272 = add <4 x i32> %271, <i32 1, i32 1, i32 1, i32 1>
  %273 = urem <4 x i32> %272, <i32 80, i32 80, i32 80, i32 80>
  %274 = sitofp <4 x i32> %273 to <4 x double>
  %275 = fmul fast <4 x double> %274, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %276 = extractelement <4 x i64> %269, i32 0
  %277 = shl i64 %276, 3
  %278 = add i64 %277, %267
  %279 = getelementptr i8, i8* %call1, i64 %278
  %280 = bitcast i8* %279 to <4 x double>*
  store <4 x double> %275, <4 x double>* %280, align 8, !alias.scope !102, !noalias !107
  %index.next1379 = add i64 %index1378, 4
  %vec.ind.next1383 = add <4 x i64> %vec.ind1382, <i64 4, i64 4, i64 4, i64 4>
  %281 = icmp eq i64 %index.next1379, 28
  br i1 %281, label %polly.loop_exit854.1.1, label %vector.body1376, !llvm.loop !111

polly.loop_exit854.1.1:                           ; preds = %vector.body1376
  %polly.indvar_next850.1.1 = add nuw nsw i64 %polly.indvar849.1.1, 1
  %exitcond917.1.1.not = icmp eq i64 %polly.indvar_next850.1.1, 32
  br i1 %exitcond917.1.1.not, label %polly.loop_header846.2, label %polly.loop_header846.1.1

polly.loop_header846.2:                           ; preds = %polly.loop_exit854.1.1, %polly.loop_exit854.2
  %polly.indvar849.2 = phi i64 [ %polly.indvar_next850.2, %polly.loop_exit854.2 ], [ 0, %polly.loop_exit854.1.1 ]
  %282 = add nuw nsw i64 %polly.indvar849.2, 64
  %283 = mul nuw nsw i64 %282, 480
  %284 = trunc i64 %282 to i32
  %broadcast.splatinsert1398 = insertelement <4 x i32> poison, i32 %284, i32 0
  %broadcast.splat1399 = shufflevector <4 x i32> %broadcast.splatinsert1398, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1388

vector.body1388:                                  ; preds = %vector.body1388, %polly.loop_header846.2
  %index1390 = phi i64 [ 0, %polly.loop_header846.2 ], [ %index.next1391, %vector.body1388 ]
  %vec.ind1396 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header846.2 ], [ %vec.ind.next1397, %vector.body1388 ]
  %285 = mul <4 x i32> %vec.ind1396, %broadcast.splat1399
  %286 = add <4 x i32> %285, <i32 1, i32 1, i32 1, i32 1>
  %287 = urem <4 x i32> %286, <i32 80, i32 80, i32 80, i32 80>
  %288 = sitofp <4 x i32> %287 to <4 x double>
  %289 = fmul fast <4 x double> %288, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %290 = shl i64 %index1390, 3
  %291 = add i64 %290, %283
  %292 = getelementptr i8, i8* %call1, i64 %291
  %293 = bitcast i8* %292 to <4 x double>*
  store <4 x double> %289, <4 x double>* %293, align 8, !alias.scope !102, !noalias !107
  %index.next1391 = add i64 %index1390, 4
  %vec.ind.next1397 = add <4 x i32> %vec.ind1396, <i32 4, i32 4, i32 4, i32 4>
  %294 = icmp eq i64 %index.next1391, 32
  br i1 %294, label %polly.loop_exit854.2, label %vector.body1388, !llvm.loop !112

polly.loop_exit854.2:                             ; preds = %vector.body1388
  %polly.indvar_next850.2 = add nuw nsw i64 %polly.indvar849.2, 1
  %exitcond917.2.not = icmp eq i64 %polly.indvar_next850.2, 16
  br i1 %exitcond917.2.not, label %polly.loop_header846.1.2, label %polly.loop_header846.2

polly.loop_header846.1.2:                         ; preds = %polly.loop_exit854.2, %polly.loop_exit854.1.2
  %polly.indvar849.1.2 = phi i64 [ %polly.indvar_next850.1.2, %polly.loop_exit854.1.2 ], [ 0, %polly.loop_exit854.2 ]
  %295 = add nuw nsw i64 %polly.indvar849.1.2, 64
  %296 = mul nuw nsw i64 %295, 480
  %297 = trunc i64 %295 to i32
  %broadcast.splatinsert1410 = insertelement <4 x i32> poison, i32 %297, i32 0
  %broadcast.splat1411 = shufflevector <4 x i32> %broadcast.splatinsert1410, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1402

vector.body1402:                                  ; preds = %vector.body1402, %polly.loop_header846.1.2
  %index1404 = phi i64 [ 0, %polly.loop_header846.1.2 ], [ %index.next1405, %vector.body1402 ]
  %vec.ind1408 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header846.1.2 ], [ %vec.ind.next1409, %vector.body1402 ]
  %298 = add nuw nsw <4 x i64> %vec.ind1408, <i64 32, i64 32, i64 32, i64 32>
  %299 = trunc <4 x i64> %298 to <4 x i32>
  %300 = mul <4 x i32> %broadcast.splat1411, %299
  %301 = add <4 x i32> %300, <i32 1, i32 1, i32 1, i32 1>
  %302 = urem <4 x i32> %301, <i32 80, i32 80, i32 80, i32 80>
  %303 = sitofp <4 x i32> %302 to <4 x double>
  %304 = fmul fast <4 x double> %303, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %305 = extractelement <4 x i64> %298, i32 0
  %306 = shl i64 %305, 3
  %307 = add i64 %306, %296
  %308 = getelementptr i8, i8* %call1, i64 %307
  %309 = bitcast i8* %308 to <4 x double>*
  store <4 x double> %304, <4 x double>* %309, align 8, !alias.scope !102, !noalias !107
  %index.next1405 = add i64 %index1404, 4
  %vec.ind.next1409 = add <4 x i64> %vec.ind1408, <i64 4, i64 4, i64 4, i64 4>
  %310 = icmp eq i64 %index.next1405, 28
  br i1 %310, label %polly.loop_exit854.1.2, label %vector.body1402, !llvm.loop !113

polly.loop_exit854.1.2:                           ; preds = %vector.body1402
  %polly.indvar_next850.1.2 = add nuw nsw i64 %polly.indvar849.1.2, 1
  %exitcond917.1.2.not = icmp eq i64 %polly.indvar_next850.1.2, 16
  br i1 %exitcond917.1.2.not, label %init_array.exit, label %polly.loop_header846.1.2

polly.loop_header820.1:                           ; preds = %polly.loop_exit828, %polly.loop_exit828.1
  %polly.indvar823.1 = phi i64 [ %polly.indvar_next824.1, %polly.loop_exit828.1 ], [ 0, %polly.loop_exit828 ]
  %311 = mul nuw nsw i64 %polly.indvar823.1, 480
  %312 = trunc i64 %polly.indvar823.1 to i32
  %broadcast.splatinsert1280 = insertelement <4 x i32> poison, i32 %312, i32 0
  %broadcast.splat1281 = shufflevector <4 x i32> %broadcast.splatinsert1280, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1272

vector.body1272:                                  ; preds = %vector.body1272, %polly.loop_header820.1
  %index1274 = phi i64 [ 0, %polly.loop_header820.1 ], [ %index.next1275, %vector.body1272 ]
  %vec.ind1278 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header820.1 ], [ %vec.ind.next1279, %vector.body1272 ]
  %313 = add nuw nsw <4 x i64> %vec.ind1278, <i64 32, i64 32, i64 32, i64 32>
  %314 = trunc <4 x i64> %313 to <4 x i32>
  %315 = mul <4 x i32> %broadcast.splat1281, %314
  %316 = add <4 x i32> %315, <i32 2, i32 2, i32 2, i32 2>
  %317 = urem <4 x i32> %316, <i32 60, i32 60, i32 60, i32 60>
  %318 = sitofp <4 x i32> %317 to <4 x double>
  %319 = fmul fast <4 x double> %318, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %320 = extractelement <4 x i64> %313, i32 0
  %321 = shl i64 %320, 3
  %322 = add i64 %321, %311
  %323 = getelementptr i8, i8* %call2, i64 %322
  %324 = bitcast i8* %323 to <4 x double>*
  store <4 x double> %319, <4 x double>* %324, align 8, !alias.scope !103, !noalias !105
  %index.next1275 = add i64 %index1274, 4
  %vec.ind.next1279 = add <4 x i64> %vec.ind1278, <i64 4, i64 4, i64 4, i64 4>
  %325 = icmp eq i64 %index.next1275, 28
  br i1 %325, label %polly.loop_exit828.1, label %vector.body1272, !llvm.loop !114

polly.loop_exit828.1:                             ; preds = %vector.body1272
  %polly.indvar_next824.1 = add nuw nsw i64 %polly.indvar823.1, 1
  %exitcond923.1.not = icmp eq i64 %polly.indvar_next824.1, 32
  br i1 %exitcond923.1.not, label %polly.loop_header820.11083, label %polly.loop_header820.1

polly.loop_header820.11083:                       ; preds = %polly.loop_exit828.1, %polly.loop_exit828.11094
  %polly.indvar823.11082 = phi i64 [ %polly.indvar_next824.11092, %polly.loop_exit828.11094 ], [ 0, %polly.loop_exit828.1 ]
  %326 = add nuw nsw i64 %polly.indvar823.11082, 32
  %327 = mul nuw nsw i64 %326, 480
  %328 = trunc i64 %326 to i32
  %broadcast.splatinsert1294 = insertelement <4 x i32> poison, i32 %328, i32 0
  %broadcast.splat1295 = shufflevector <4 x i32> %broadcast.splatinsert1294, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1284

vector.body1284:                                  ; preds = %vector.body1284, %polly.loop_header820.11083
  %index1286 = phi i64 [ 0, %polly.loop_header820.11083 ], [ %index.next1287, %vector.body1284 ]
  %vec.ind1292 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header820.11083 ], [ %vec.ind.next1293, %vector.body1284 ]
  %329 = mul <4 x i32> %vec.ind1292, %broadcast.splat1295
  %330 = add <4 x i32> %329, <i32 2, i32 2, i32 2, i32 2>
  %331 = urem <4 x i32> %330, <i32 60, i32 60, i32 60, i32 60>
  %332 = sitofp <4 x i32> %331 to <4 x double>
  %333 = fmul fast <4 x double> %332, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %334 = shl i64 %index1286, 3
  %335 = add i64 %334, %327
  %336 = getelementptr i8, i8* %call2, i64 %335
  %337 = bitcast i8* %336 to <4 x double>*
  store <4 x double> %333, <4 x double>* %337, align 8, !alias.scope !103, !noalias !105
  %index.next1287 = add i64 %index1286, 4
  %vec.ind.next1293 = add <4 x i32> %vec.ind1292, <i32 4, i32 4, i32 4, i32 4>
  %338 = icmp eq i64 %index.next1287, 32
  br i1 %338, label %polly.loop_exit828.11094, label %vector.body1284, !llvm.loop !115

polly.loop_exit828.11094:                         ; preds = %vector.body1284
  %polly.indvar_next824.11092 = add nuw nsw i64 %polly.indvar823.11082, 1
  %exitcond923.11093.not = icmp eq i64 %polly.indvar_next824.11092, 32
  br i1 %exitcond923.11093.not, label %polly.loop_header820.1.1, label %polly.loop_header820.11083

polly.loop_header820.1.1:                         ; preds = %polly.loop_exit828.11094, %polly.loop_exit828.1.1
  %polly.indvar823.1.1 = phi i64 [ %polly.indvar_next824.1.1, %polly.loop_exit828.1.1 ], [ 0, %polly.loop_exit828.11094 ]
  %339 = add nuw nsw i64 %polly.indvar823.1.1, 32
  %340 = mul nuw nsw i64 %339, 480
  %341 = trunc i64 %339 to i32
  %broadcast.splatinsert1306 = insertelement <4 x i32> poison, i32 %341, i32 0
  %broadcast.splat1307 = shufflevector <4 x i32> %broadcast.splatinsert1306, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1298

vector.body1298:                                  ; preds = %vector.body1298, %polly.loop_header820.1.1
  %index1300 = phi i64 [ 0, %polly.loop_header820.1.1 ], [ %index.next1301, %vector.body1298 ]
  %vec.ind1304 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header820.1.1 ], [ %vec.ind.next1305, %vector.body1298 ]
  %342 = add nuw nsw <4 x i64> %vec.ind1304, <i64 32, i64 32, i64 32, i64 32>
  %343 = trunc <4 x i64> %342 to <4 x i32>
  %344 = mul <4 x i32> %broadcast.splat1307, %343
  %345 = add <4 x i32> %344, <i32 2, i32 2, i32 2, i32 2>
  %346 = urem <4 x i32> %345, <i32 60, i32 60, i32 60, i32 60>
  %347 = sitofp <4 x i32> %346 to <4 x double>
  %348 = fmul fast <4 x double> %347, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %349 = extractelement <4 x i64> %342, i32 0
  %350 = shl i64 %349, 3
  %351 = add i64 %350, %340
  %352 = getelementptr i8, i8* %call2, i64 %351
  %353 = bitcast i8* %352 to <4 x double>*
  store <4 x double> %348, <4 x double>* %353, align 8, !alias.scope !103, !noalias !105
  %index.next1301 = add i64 %index1300, 4
  %vec.ind.next1305 = add <4 x i64> %vec.ind1304, <i64 4, i64 4, i64 4, i64 4>
  %354 = icmp eq i64 %index.next1301, 28
  br i1 %354, label %polly.loop_exit828.1.1, label %vector.body1298, !llvm.loop !116

polly.loop_exit828.1.1:                           ; preds = %vector.body1298
  %polly.indvar_next824.1.1 = add nuw nsw i64 %polly.indvar823.1.1, 1
  %exitcond923.1.1.not = icmp eq i64 %polly.indvar_next824.1.1, 32
  br i1 %exitcond923.1.1.not, label %polly.loop_header820.2, label %polly.loop_header820.1.1

polly.loop_header820.2:                           ; preds = %polly.loop_exit828.1.1, %polly.loop_exit828.2
  %polly.indvar823.2 = phi i64 [ %polly.indvar_next824.2, %polly.loop_exit828.2 ], [ 0, %polly.loop_exit828.1.1 ]
  %355 = add nuw nsw i64 %polly.indvar823.2, 64
  %356 = mul nuw nsw i64 %355, 480
  %357 = trunc i64 %355 to i32
  %broadcast.splatinsert1320 = insertelement <4 x i32> poison, i32 %357, i32 0
  %broadcast.splat1321 = shufflevector <4 x i32> %broadcast.splatinsert1320, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1310

vector.body1310:                                  ; preds = %vector.body1310, %polly.loop_header820.2
  %index1312 = phi i64 [ 0, %polly.loop_header820.2 ], [ %index.next1313, %vector.body1310 ]
  %vec.ind1318 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header820.2 ], [ %vec.ind.next1319, %vector.body1310 ]
  %358 = mul <4 x i32> %vec.ind1318, %broadcast.splat1321
  %359 = add <4 x i32> %358, <i32 2, i32 2, i32 2, i32 2>
  %360 = urem <4 x i32> %359, <i32 60, i32 60, i32 60, i32 60>
  %361 = sitofp <4 x i32> %360 to <4 x double>
  %362 = fmul fast <4 x double> %361, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %363 = shl i64 %index1312, 3
  %364 = add i64 %363, %356
  %365 = getelementptr i8, i8* %call2, i64 %364
  %366 = bitcast i8* %365 to <4 x double>*
  store <4 x double> %362, <4 x double>* %366, align 8, !alias.scope !103, !noalias !105
  %index.next1313 = add i64 %index1312, 4
  %vec.ind.next1319 = add <4 x i32> %vec.ind1318, <i32 4, i32 4, i32 4, i32 4>
  %367 = icmp eq i64 %index.next1313, 32
  br i1 %367, label %polly.loop_exit828.2, label %vector.body1310, !llvm.loop !117

polly.loop_exit828.2:                             ; preds = %vector.body1310
  %polly.indvar_next824.2 = add nuw nsw i64 %polly.indvar823.2, 1
  %exitcond923.2.not = icmp eq i64 %polly.indvar_next824.2, 16
  br i1 %exitcond923.2.not, label %polly.loop_header820.1.2, label %polly.loop_header820.2

polly.loop_header820.1.2:                         ; preds = %polly.loop_exit828.2, %polly.loop_exit828.1.2
  %polly.indvar823.1.2 = phi i64 [ %polly.indvar_next824.1.2, %polly.loop_exit828.1.2 ], [ 0, %polly.loop_exit828.2 ]
  %368 = add nuw nsw i64 %polly.indvar823.1.2, 64
  %369 = mul nuw nsw i64 %368, 480
  %370 = trunc i64 %368 to i32
  %broadcast.splatinsert1332 = insertelement <4 x i32> poison, i32 %370, i32 0
  %broadcast.splat1333 = shufflevector <4 x i32> %broadcast.splatinsert1332, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1324

vector.body1324:                                  ; preds = %vector.body1324, %polly.loop_header820.1.2
  %index1326 = phi i64 [ 0, %polly.loop_header820.1.2 ], [ %index.next1327, %vector.body1324 ]
  %vec.ind1330 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header820.1.2 ], [ %vec.ind.next1331, %vector.body1324 ]
  %371 = add nuw nsw <4 x i64> %vec.ind1330, <i64 32, i64 32, i64 32, i64 32>
  %372 = trunc <4 x i64> %371 to <4 x i32>
  %373 = mul <4 x i32> %broadcast.splat1333, %372
  %374 = add <4 x i32> %373, <i32 2, i32 2, i32 2, i32 2>
  %375 = urem <4 x i32> %374, <i32 60, i32 60, i32 60, i32 60>
  %376 = sitofp <4 x i32> %375 to <4 x double>
  %377 = fmul fast <4 x double> %376, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %378 = extractelement <4 x i64> %371, i32 0
  %379 = shl i64 %378, 3
  %380 = add i64 %379, %369
  %381 = getelementptr i8, i8* %call2, i64 %380
  %382 = bitcast i8* %381 to <4 x double>*
  store <4 x double> %377, <4 x double>* %382, align 8, !alias.scope !103, !noalias !105
  %index.next1327 = add i64 %index1326, 4
  %vec.ind.next1331 = add <4 x i64> %vec.ind1330, <i64 4, i64 4, i64 4, i64 4>
  %383 = icmp eq i64 %index.next1327, 28
  br i1 %383, label %polly.loop_exit828.1.2, label %vector.body1324, !llvm.loop !118

polly.loop_exit828.1.2:                           ; preds = %vector.body1324
  %polly.indvar_next824.1.2 = add nuw nsw i64 %polly.indvar823.1.2, 1
  %exitcond923.1.2.not = icmp eq i64 %polly.indvar_next824.1.2, 16
  br i1 %exitcond923.1.2.not, label %polly.loop_header846, label %polly.loop_header820.1.2

polly.loop_header793.1:                           ; preds = %polly.loop_exit801, %polly.loop_exit801.1
  %polly.indvar796.1 = phi i64 [ %polly.indvar_next797.1, %polly.loop_exit801.1 ], [ 0, %polly.loop_exit801 ]
  %384 = mul nuw nsw i64 %polly.indvar796.1, 640
  %385 = trunc i64 %polly.indvar796.1 to i32
  %broadcast.splatinsert1166 = insertelement <4 x i32> poison, i32 %385, i32 0
  %broadcast.splat1167 = shufflevector <4 x i32> %broadcast.splatinsert1166, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1158

vector.body1158:                                  ; preds = %vector.body1158, %polly.loop_header793.1
  %index1160 = phi i64 [ 0, %polly.loop_header793.1 ], [ %index.next1161, %vector.body1158 ]
  %vec.ind1164 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1 ], [ %vec.ind.next1165, %vector.body1158 ]
  %386 = add nuw nsw <4 x i64> %vec.ind1164, <i64 32, i64 32, i64 32, i64 32>
  %387 = trunc <4 x i64> %386 to <4 x i32>
  %388 = mul <4 x i32> %broadcast.splat1167, %387
  %389 = add <4 x i32> %388, <i32 3, i32 3, i32 3, i32 3>
  %390 = urem <4 x i32> %389, <i32 80, i32 80, i32 80, i32 80>
  %391 = sitofp <4 x i32> %390 to <4 x double>
  %392 = fmul fast <4 x double> %391, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %393 = extractelement <4 x i64> %386, i32 0
  %394 = shl i64 %393, 3
  %395 = add nuw nsw i64 %394, %384
  %396 = getelementptr i8, i8* %call, i64 %395
  %397 = bitcast i8* %396 to <4 x double>*
  store <4 x double> %392, <4 x double>* %397, align 8, !alias.scope !99, !noalias !101
  %index.next1161 = add i64 %index1160, 4
  %vec.ind.next1165 = add <4 x i64> %vec.ind1164, <i64 4, i64 4, i64 4, i64 4>
  %398 = icmp eq i64 %index.next1161, 32
  br i1 %398, label %polly.loop_exit801.1, label %vector.body1158, !llvm.loop !119

polly.loop_exit801.1:                             ; preds = %vector.body1158
  %polly.indvar_next797.1 = add nuw nsw i64 %polly.indvar796.1, 1
  %exitcond932.1.not = icmp eq i64 %polly.indvar_next797.1, 32
  br i1 %exitcond932.1.not, label %polly.loop_header793.2, label %polly.loop_header793.1

polly.loop_header793.2:                           ; preds = %polly.loop_exit801.1, %polly.loop_exit801.2
  %polly.indvar796.2 = phi i64 [ %polly.indvar_next797.2, %polly.loop_exit801.2 ], [ 0, %polly.loop_exit801.1 ]
  %399 = mul nuw nsw i64 %polly.indvar796.2, 640
  %400 = trunc i64 %polly.indvar796.2 to i32
  %broadcast.splatinsert1178 = insertelement <4 x i32> poison, i32 %400, i32 0
  %broadcast.splat1179 = shufflevector <4 x i32> %broadcast.splatinsert1178, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1170

vector.body1170:                                  ; preds = %vector.body1170, %polly.loop_header793.2
  %index1172 = phi i64 [ 0, %polly.loop_header793.2 ], [ %index.next1173, %vector.body1170 ]
  %vec.ind1176 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.2 ], [ %vec.ind.next1177, %vector.body1170 ]
  %401 = add nuw nsw <4 x i64> %vec.ind1176, <i64 64, i64 64, i64 64, i64 64>
  %402 = trunc <4 x i64> %401 to <4 x i32>
  %403 = mul <4 x i32> %broadcast.splat1179, %402
  %404 = add <4 x i32> %403, <i32 3, i32 3, i32 3, i32 3>
  %405 = urem <4 x i32> %404, <i32 80, i32 80, i32 80, i32 80>
  %406 = sitofp <4 x i32> %405 to <4 x double>
  %407 = fmul fast <4 x double> %406, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %408 = extractelement <4 x i64> %401, i32 0
  %409 = shl i64 %408, 3
  %410 = add nuw nsw i64 %409, %399
  %411 = getelementptr i8, i8* %call, i64 %410
  %412 = bitcast i8* %411 to <4 x double>*
  store <4 x double> %407, <4 x double>* %412, align 8, !alias.scope !99, !noalias !101
  %index.next1173 = add i64 %index1172, 4
  %vec.ind.next1177 = add <4 x i64> %vec.ind1176, <i64 4, i64 4, i64 4, i64 4>
  %413 = icmp eq i64 %index.next1173, 16
  br i1 %413, label %polly.loop_exit801.2, label %vector.body1170, !llvm.loop !120

polly.loop_exit801.2:                             ; preds = %vector.body1170
  %polly.indvar_next797.2 = add nuw nsw i64 %polly.indvar796.2, 1
  %exitcond932.2.not = icmp eq i64 %polly.indvar_next797.2, 32
  br i1 %exitcond932.2.not, label %polly.loop_header793.11097, label %polly.loop_header793.2

polly.loop_header793.11097:                       ; preds = %polly.loop_exit801.2, %polly.loop_exit801.11108
  %polly.indvar796.11096 = phi i64 [ %polly.indvar_next797.11106, %polly.loop_exit801.11108 ], [ 0, %polly.loop_exit801.2 ]
  %414 = add nuw nsw i64 %polly.indvar796.11096, 32
  %415 = mul nuw nsw i64 %414, 640
  %416 = trunc i64 %414 to i32
  %broadcast.splatinsert1192 = insertelement <4 x i32> poison, i32 %416, i32 0
  %broadcast.splat1193 = shufflevector <4 x i32> %broadcast.splatinsert1192, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1182

vector.body1182:                                  ; preds = %vector.body1182, %polly.loop_header793.11097
  %index1184 = phi i64 [ 0, %polly.loop_header793.11097 ], [ %index.next1185, %vector.body1182 ]
  %vec.ind1190 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793.11097 ], [ %vec.ind.next1191, %vector.body1182 ]
  %417 = mul <4 x i32> %vec.ind1190, %broadcast.splat1193
  %418 = add <4 x i32> %417, <i32 3, i32 3, i32 3, i32 3>
  %419 = urem <4 x i32> %418, <i32 80, i32 80, i32 80, i32 80>
  %420 = sitofp <4 x i32> %419 to <4 x double>
  %421 = fmul fast <4 x double> %420, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %422 = shl i64 %index1184, 3
  %423 = add nuw nsw i64 %422, %415
  %424 = getelementptr i8, i8* %call, i64 %423
  %425 = bitcast i8* %424 to <4 x double>*
  store <4 x double> %421, <4 x double>* %425, align 8, !alias.scope !99, !noalias !101
  %index.next1185 = add i64 %index1184, 4
  %vec.ind.next1191 = add <4 x i32> %vec.ind1190, <i32 4, i32 4, i32 4, i32 4>
  %426 = icmp eq i64 %index.next1185, 32
  br i1 %426, label %polly.loop_exit801.11108, label %vector.body1182, !llvm.loop !121

polly.loop_exit801.11108:                         ; preds = %vector.body1182
  %polly.indvar_next797.11106 = add nuw nsw i64 %polly.indvar796.11096, 1
  %exitcond932.11107.not = icmp eq i64 %polly.indvar_next797.11106, 32
  br i1 %exitcond932.11107.not, label %polly.loop_header793.1.1, label %polly.loop_header793.11097

polly.loop_header793.1.1:                         ; preds = %polly.loop_exit801.11108, %polly.loop_exit801.1.1
  %polly.indvar796.1.1 = phi i64 [ %polly.indvar_next797.1.1, %polly.loop_exit801.1.1 ], [ 0, %polly.loop_exit801.11108 ]
  %427 = add nuw nsw i64 %polly.indvar796.1.1, 32
  %428 = mul nuw nsw i64 %427, 640
  %429 = trunc i64 %427 to i32
  %broadcast.splatinsert1204 = insertelement <4 x i32> poison, i32 %429, i32 0
  %broadcast.splat1205 = shufflevector <4 x i32> %broadcast.splatinsert1204, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1196

vector.body1196:                                  ; preds = %vector.body1196, %polly.loop_header793.1.1
  %index1198 = phi i64 [ 0, %polly.loop_header793.1.1 ], [ %index.next1199, %vector.body1196 ]
  %vec.ind1202 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1.1 ], [ %vec.ind.next1203, %vector.body1196 ]
  %430 = add nuw nsw <4 x i64> %vec.ind1202, <i64 32, i64 32, i64 32, i64 32>
  %431 = trunc <4 x i64> %430 to <4 x i32>
  %432 = mul <4 x i32> %broadcast.splat1205, %431
  %433 = add <4 x i32> %432, <i32 3, i32 3, i32 3, i32 3>
  %434 = urem <4 x i32> %433, <i32 80, i32 80, i32 80, i32 80>
  %435 = sitofp <4 x i32> %434 to <4 x double>
  %436 = fmul fast <4 x double> %435, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %437 = extractelement <4 x i64> %430, i32 0
  %438 = shl i64 %437, 3
  %439 = add nuw nsw i64 %438, %428
  %440 = getelementptr i8, i8* %call, i64 %439
  %441 = bitcast i8* %440 to <4 x double>*
  store <4 x double> %436, <4 x double>* %441, align 8, !alias.scope !99, !noalias !101
  %index.next1199 = add i64 %index1198, 4
  %vec.ind.next1203 = add <4 x i64> %vec.ind1202, <i64 4, i64 4, i64 4, i64 4>
  %442 = icmp eq i64 %index.next1199, 32
  br i1 %442, label %polly.loop_exit801.1.1, label %vector.body1196, !llvm.loop !122

polly.loop_exit801.1.1:                           ; preds = %vector.body1196
  %polly.indvar_next797.1.1 = add nuw nsw i64 %polly.indvar796.1.1, 1
  %exitcond932.1.1.not = icmp eq i64 %polly.indvar_next797.1.1, 32
  br i1 %exitcond932.1.1.not, label %polly.loop_header793.2.1, label %polly.loop_header793.1.1

polly.loop_header793.2.1:                         ; preds = %polly.loop_exit801.1.1, %polly.loop_exit801.2.1
  %polly.indvar796.2.1 = phi i64 [ %polly.indvar_next797.2.1, %polly.loop_exit801.2.1 ], [ 0, %polly.loop_exit801.1.1 ]
  %443 = add nuw nsw i64 %polly.indvar796.2.1, 32
  %444 = mul nuw nsw i64 %443, 640
  %445 = trunc i64 %443 to i32
  %broadcast.splatinsert1216 = insertelement <4 x i32> poison, i32 %445, i32 0
  %broadcast.splat1217 = shufflevector <4 x i32> %broadcast.splatinsert1216, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1208

vector.body1208:                                  ; preds = %vector.body1208, %polly.loop_header793.2.1
  %index1210 = phi i64 [ 0, %polly.loop_header793.2.1 ], [ %index.next1211, %vector.body1208 ]
  %vec.ind1214 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.2.1 ], [ %vec.ind.next1215, %vector.body1208 ]
  %446 = add nuw nsw <4 x i64> %vec.ind1214, <i64 64, i64 64, i64 64, i64 64>
  %447 = trunc <4 x i64> %446 to <4 x i32>
  %448 = mul <4 x i32> %broadcast.splat1217, %447
  %449 = add <4 x i32> %448, <i32 3, i32 3, i32 3, i32 3>
  %450 = urem <4 x i32> %449, <i32 80, i32 80, i32 80, i32 80>
  %451 = sitofp <4 x i32> %450 to <4 x double>
  %452 = fmul fast <4 x double> %451, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %453 = extractelement <4 x i64> %446, i32 0
  %454 = shl i64 %453, 3
  %455 = add nuw nsw i64 %454, %444
  %456 = getelementptr i8, i8* %call, i64 %455
  %457 = bitcast i8* %456 to <4 x double>*
  store <4 x double> %452, <4 x double>* %457, align 8, !alias.scope !99, !noalias !101
  %index.next1211 = add i64 %index1210, 4
  %vec.ind.next1215 = add <4 x i64> %vec.ind1214, <i64 4, i64 4, i64 4, i64 4>
  %458 = icmp eq i64 %index.next1211, 16
  br i1 %458, label %polly.loop_exit801.2.1, label %vector.body1208, !llvm.loop !123

polly.loop_exit801.2.1:                           ; preds = %vector.body1208
  %polly.indvar_next797.2.1 = add nuw nsw i64 %polly.indvar796.2.1, 1
  %exitcond932.2.1.not = icmp eq i64 %polly.indvar_next797.2.1, 32
  br i1 %exitcond932.2.1.not, label %polly.loop_header793.21111, label %polly.loop_header793.2.1

polly.loop_header793.21111:                       ; preds = %polly.loop_exit801.2.1, %polly.loop_exit801.21122
  %polly.indvar796.21110 = phi i64 [ %polly.indvar_next797.21120, %polly.loop_exit801.21122 ], [ 0, %polly.loop_exit801.2.1 ]
  %459 = add nuw nsw i64 %polly.indvar796.21110, 64
  %460 = mul nuw nsw i64 %459, 640
  %461 = trunc i64 %459 to i32
  %broadcast.splatinsert1230 = insertelement <4 x i32> poison, i32 %461, i32 0
  %broadcast.splat1231 = shufflevector <4 x i32> %broadcast.splatinsert1230, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1220

vector.body1220:                                  ; preds = %vector.body1220, %polly.loop_header793.21111
  %index1222 = phi i64 [ 0, %polly.loop_header793.21111 ], [ %index.next1223, %vector.body1220 ]
  %vec.ind1228 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793.21111 ], [ %vec.ind.next1229, %vector.body1220 ]
  %462 = mul <4 x i32> %vec.ind1228, %broadcast.splat1231
  %463 = add <4 x i32> %462, <i32 3, i32 3, i32 3, i32 3>
  %464 = urem <4 x i32> %463, <i32 80, i32 80, i32 80, i32 80>
  %465 = sitofp <4 x i32> %464 to <4 x double>
  %466 = fmul fast <4 x double> %465, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %467 = shl i64 %index1222, 3
  %468 = add nuw nsw i64 %467, %460
  %469 = getelementptr i8, i8* %call, i64 %468
  %470 = bitcast i8* %469 to <4 x double>*
  store <4 x double> %466, <4 x double>* %470, align 8, !alias.scope !99, !noalias !101
  %index.next1223 = add i64 %index1222, 4
  %vec.ind.next1229 = add <4 x i32> %vec.ind1228, <i32 4, i32 4, i32 4, i32 4>
  %471 = icmp eq i64 %index.next1223, 32
  br i1 %471, label %polly.loop_exit801.21122, label %vector.body1220, !llvm.loop !124

polly.loop_exit801.21122:                         ; preds = %vector.body1220
  %polly.indvar_next797.21120 = add nuw nsw i64 %polly.indvar796.21110, 1
  %exitcond932.21121.not = icmp eq i64 %polly.indvar_next797.21120, 16
  br i1 %exitcond932.21121.not, label %polly.loop_header793.1.2, label %polly.loop_header793.21111

polly.loop_header793.1.2:                         ; preds = %polly.loop_exit801.21122, %polly.loop_exit801.1.2
  %polly.indvar796.1.2 = phi i64 [ %polly.indvar_next797.1.2, %polly.loop_exit801.1.2 ], [ 0, %polly.loop_exit801.21122 ]
  %472 = add nuw nsw i64 %polly.indvar796.1.2, 64
  %473 = mul nuw nsw i64 %472, 640
  %474 = trunc i64 %472 to i32
  %broadcast.splatinsert1242 = insertelement <4 x i32> poison, i32 %474, i32 0
  %broadcast.splat1243 = shufflevector <4 x i32> %broadcast.splatinsert1242, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1234

vector.body1234:                                  ; preds = %vector.body1234, %polly.loop_header793.1.2
  %index1236 = phi i64 [ 0, %polly.loop_header793.1.2 ], [ %index.next1237, %vector.body1234 ]
  %vec.ind1240 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1.2 ], [ %vec.ind.next1241, %vector.body1234 ]
  %475 = add nuw nsw <4 x i64> %vec.ind1240, <i64 32, i64 32, i64 32, i64 32>
  %476 = trunc <4 x i64> %475 to <4 x i32>
  %477 = mul <4 x i32> %broadcast.splat1243, %476
  %478 = add <4 x i32> %477, <i32 3, i32 3, i32 3, i32 3>
  %479 = urem <4 x i32> %478, <i32 80, i32 80, i32 80, i32 80>
  %480 = sitofp <4 x i32> %479 to <4 x double>
  %481 = fmul fast <4 x double> %480, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %482 = extractelement <4 x i64> %475, i32 0
  %483 = shl i64 %482, 3
  %484 = add nuw nsw i64 %483, %473
  %485 = getelementptr i8, i8* %call, i64 %484
  %486 = bitcast i8* %485 to <4 x double>*
  store <4 x double> %481, <4 x double>* %486, align 8, !alias.scope !99, !noalias !101
  %index.next1237 = add i64 %index1236, 4
  %vec.ind.next1241 = add <4 x i64> %vec.ind1240, <i64 4, i64 4, i64 4, i64 4>
  %487 = icmp eq i64 %index.next1237, 32
  br i1 %487, label %polly.loop_exit801.1.2, label %vector.body1234, !llvm.loop !125

polly.loop_exit801.1.2:                           ; preds = %vector.body1234
  %polly.indvar_next797.1.2 = add nuw nsw i64 %polly.indvar796.1.2, 1
  %exitcond932.1.2.not = icmp eq i64 %polly.indvar_next797.1.2, 16
  br i1 %exitcond932.1.2.not, label %polly.loop_header793.2.2, label %polly.loop_header793.1.2

polly.loop_header793.2.2:                         ; preds = %polly.loop_exit801.1.2, %polly.loop_exit801.2.2
  %polly.indvar796.2.2 = phi i64 [ %polly.indvar_next797.2.2, %polly.loop_exit801.2.2 ], [ 0, %polly.loop_exit801.1.2 ]
  %488 = add nuw nsw i64 %polly.indvar796.2.2, 64
  %489 = mul nuw nsw i64 %488, 640
  %490 = trunc i64 %488 to i32
  %broadcast.splatinsert1254 = insertelement <4 x i32> poison, i32 %490, i32 0
  %broadcast.splat1255 = shufflevector <4 x i32> %broadcast.splatinsert1254, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1246

vector.body1246:                                  ; preds = %vector.body1246, %polly.loop_header793.2.2
  %index1248 = phi i64 [ 0, %polly.loop_header793.2.2 ], [ %index.next1249, %vector.body1246 ]
  %vec.ind1252 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.2.2 ], [ %vec.ind.next1253, %vector.body1246 ]
  %491 = add nuw nsw <4 x i64> %vec.ind1252, <i64 64, i64 64, i64 64, i64 64>
  %492 = trunc <4 x i64> %491 to <4 x i32>
  %493 = mul <4 x i32> %broadcast.splat1255, %492
  %494 = add <4 x i32> %493, <i32 3, i32 3, i32 3, i32 3>
  %495 = urem <4 x i32> %494, <i32 80, i32 80, i32 80, i32 80>
  %496 = sitofp <4 x i32> %495 to <4 x double>
  %497 = fmul fast <4 x double> %496, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %498 = extractelement <4 x i64> %491, i32 0
  %499 = shl i64 %498, 3
  %500 = add nuw nsw i64 %499, %489
  %501 = getelementptr i8, i8* %call, i64 %500
  %502 = bitcast i8* %501 to <4 x double>*
  store <4 x double> %497, <4 x double>* %502, align 8, !alias.scope !99, !noalias !101
  %index.next1249 = add i64 %index1248, 4
  %vec.ind.next1253 = add <4 x i64> %vec.ind1252, <i64 4, i64 4, i64 4, i64 4>
  %503 = icmp eq i64 %index.next1249, 16
  br i1 %503, label %polly.loop_exit801.2.2, label %vector.body1246, !llvm.loop !126

polly.loop_exit801.2.2:                           ; preds = %vector.body1246
  %polly.indvar_next797.2.2 = add nuw nsw i64 %polly.indvar796.2.2, 1
  %exitcond932.2.2.not = icmp eq i64 %polly.indvar_next797.2.2, 16
  br i1 %exitcond932.2.2.not, label %polly.loop_header820, label %polly.loop_header793.2.2
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

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #1 = { "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #3 = { nofree nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #4 = { nofree nounwind }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
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
!26 = !{!"llvm.loop.tile.size", i32 128}
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
!47 = distinct !{!47, !12, !24, !48, !49, !50, !35, !51, !60}
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
!81 = distinct !{!81, !82, !"polly.alias.scope.MemRef_call"}
!82 = distinct !{!82, !"polly.alias.scope.domain"}
!83 = !{!84, !85, !86, !87}
!84 = distinct !{!84, !82, !"polly.alias.scope.MemRef_call1"}
!85 = distinct !{!85, !82, !"polly.alias.scope.MemRef_call2"}
!86 = distinct !{!86, !82, !"polly.alias.scope.Packed_MemRef_call1"}
!87 = distinct !{!87, !82, !"polly.alias.scope.Packed_MemRef_call2"}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !80, !13}
!90 = distinct !{!90, !91, !"polly.alias.scope.MemRef_call"}
!91 = distinct !{!91, !"polly.alias.scope.domain"}
!92 = !{!93, !94, !95, !96}
!93 = distinct !{!93, !91, !"polly.alias.scope.MemRef_call1"}
!94 = distinct !{!94, !91, !"polly.alias.scope.MemRef_call2"}
!95 = distinct !{!95, !91, !"polly.alias.scope.Packed_MemRef_call1"}
!96 = distinct !{!96, !91, !"polly.alias.scope.Packed_MemRef_call2"}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !80, !13}
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
