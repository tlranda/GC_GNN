; ModuleID = 'syr2k_recreations//mmp_syr2k_S_11.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_11.c"
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
  %call = tail call i8* @polybench_alloc_data(i64 6400, i32 8) #7
  %call807 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #7
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #7
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1659 = bitcast i8* %call1 to double*
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
  %scevgep1132 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1131 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1130 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1129 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1129, %scevgep1132
  %bound1 = icmp ult i8* %scevgep1131, %scevgep1130
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
  br i1 %exitcond18.not.i, label %vector.ph1136, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1136:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1143 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1144 = shufflevector <4 x i64> %broadcast.splatinsert1143, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1135

vector.body1135:                                  ; preds = %vector.body1135, %vector.ph1136
  %index1137 = phi i64 [ 0, %vector.ph1136 ], [ %index.next1138, %vector.body1135 ]
  %vec.ind1141 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1136 ], [ %vec.ind.next1142, %vector.body1135 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1141, %broadcast.splat1144
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv7.i, i64 %index1137
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1138 = add i64 %index1137, 4
  %vec.ind.next1142 = add <4 x i64> %vec.ind1141, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1138, 80
  br i1 %40, label %for.inc41.i, label %vector.body1135, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1135
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1136, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit854.1.2
  tail call void (...) @polybench_timer_start() #7
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start468, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1552, label %vector.ph1418

vector.ph1418:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1417

vector.body1417:                                  ; preds = %vector.body1417, %vector.ph1418
  %index1419 = phi i64 [ 0, %vector.ph1418 ], [ %index.next1420, %vector.body1417 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv21.i, i64 %index1419
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1420 = add i64 %index1419, 4
  %46 = icmp eq i64 %index.next1420, %n.vec
  br i1 %46, label %middle.block1415, label %vector.body1417, !llvm.loop !18

middle.block1415:                                 ; preds = %vector.body1417
  %cmp.n1422 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1422, label %for.inc6.i, label %for.body3.i46.preheader1552

for.body3.i46.preheader1552:                      ; preds = %for.body3.i46.preheader, %middle.block1415
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1415 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1552, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1552 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1415, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting469
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  tail call void (...) @polybench_timer_start() #7
  br i1 %41, label %polly.start279, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1455 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1455, label %for.body3.i60.preheader1549, label %vector.ph1456

vector.ph1456:                                    ; preds = %for.body3.i60.preheader
  %n.vec1458 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1454

vector.body1454:                                  ; preds = %vector.body1454, %vector.ph1456
  %index1459 = phi i64 [ 0, %vector.ph1456 ], [ %index.next1460, %vector.body1454 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv21.i52, i64 %index1459
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1463 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1463, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1460 = add i64 %index1459, 4
  %57 = icmp eq i64 %index.next1460, %n.vec1458
  br i1 %57, label %middle.block1452, label %vector.body1454, !llvm.loop !55

middle.block1452:                                 ; preds = %vector.body1454
  %cmp.n1462 = icmp eq i64 %indvars.iv21.i52, %n.vec1458
  br i1 %cmp.n1462, label %for.inc6.i63, label %for.body3.i60.preheader1549

for.body3.i60.preheader1549:                      ; preds = %for.body3.i60.preheader, %middle.block1452
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1458, %middle.block1452 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1549, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1549 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1452, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting280
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  tail call void (...) @polybench_timer_start() #7
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1501 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1501, label %for.body3.i99.preheader1546, label %vector.ph1502

vector.ph1502:                                    ; preds = %for.body3.i99.preheader
  %n.vec1504 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1500

vector.body1500:                                  ; preds = %vector.body1500, %vector.ph1502
  %index1505 = phi i64 [ 0, %vector.ph1502 ], [ %index.next1506, %vector.body1500 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv21.i91, i64 %index1505
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1509 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1509, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1506 = add i64 %index1505, 4
  %68 = icmp eq i64 %index.next1506, %n.vec1504
  br i1 %68, label %middle.block1498, label %vector.body1500, !llvm.loop !57

middle.block1498:                                 ; preds = %vector.body1500
  %cmp.n1508 = icmp eq i64 %indvars.iv21.i91, %n.vec1504
  br i1 %cmp.n1508, label %for.inc6.i102, label %for.body3.i99.preheader1546

for.body3.i99.preheader1546:                      ; preds = %for.body3.i99.preheader, %middle.block1498
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1504, %middle.block1498 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1546, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1546 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1498, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !59
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #8
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
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
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #8
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !61

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !62

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #8
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #7
  tail call void @free(i8* %call1) #7
  tail call void @free(i8* %call2) #7
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit213.1
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1513 = phi i64 [ %indvar.next1514, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1513, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1515 = icmp ult i64 %88, 4
  br i1 %min.iters.check1515, label %polly.loop_header191.preheader, label %vector.ph1516

vector.ph1516:                                    ; preds = %polly.loop_header
  %n.vec1518 = and i64 %88, -4
  br label %vector.body1512

vector.body1512:                                  ; preds = %vector.body1512, %vector.ph1516
  %index1519 = phi i64 [ 0, %vector.ph1516 ], [ %index.next1520, %vector.body1512 ]
  %90 = shl nuw nsw i64 %index1519, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1523 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1523, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1520 = add i64 %index1519, 4
  %95 = icmp eq i64 %index.next1520, %n.vec1518
  br i1 %95, label %middle.block1510, label %vector.body1512, !llvm.loop !69

middle.block1510:                                 ; preds = %vector.body1512
  %cmp.n1522 = icmp eq i64 %88, %n.vec1518
  br i1 %cmp.n1522, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1510
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1518, %middle.block1510 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1510
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond990.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1514 = add i64 %indvar1513, 1
  br i1 %exitcond990.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond989.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond989.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit213.1
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit213.1 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit213.1 ]
  %97 = lshr i64 %polly.indvar202, 2
  %98 = shl nsw i64 %polly.indvar202, 2
  br label %polly.loop_header211

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header199
  %indvars.iv977 = phi i64 [ %indvars.iv.next978, %polly.loop_exit219 ], [ %indvars.iv, %polly.loop_header199 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header199 ]
  %99 = shl nsw i64 %polly.indvar214, 4
  %100 = sub nsw i64 %98, %99
  %101 = add nuw nsw i64 %99, 16
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit248
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next978 = add nsw i64 %indvars.iv977, -16
  %exitcond987.not = icmp eq i64 %polly.indvar214, %97
  br i1 %exitcond987.not, label %polly.loop_header211.1, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit248, %polly.loop_header211
  %indvars.iv979 = phi i64 [ %indvars.iv.next980, %polly.loop_exit248 ], [ %indvars.iv977, %polly.loop_header211 ]
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit248 ], [ 0, %polly.loop_header211 ]
  %smin983 = call i64 @llvm.smin.i64(i64 %indvars.iv979, i64 15)
  %102 = add nsw i64 %polly.indvar220, %100
  %polly.loop_guard1109 = icmp sgt i64 %102, -1
  %103 = add nuw nsw i64 %polly.indvar220, %98
  %.not = icmp ult i64 %103, %101
  %polly.access.mul.call1240 = mul nuw nsw i64 %103, 60
  br i1 %polly.loop_guard1109, label %polly.loop_header223.us, label %polly.loop_header217.split

polly.loop_header223.us:                          ; preds = %polly.loop_header217, %polly.merge.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.merge.us ], [ 0, %polly.loop_header217 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar226.us, 80
  br label %polly.loop_header229.us

polly.loop_header229.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header229.us
  %polly.indvar232.us = phi i64 [ %polly.indvar_next233.us, %polly.loop_header229.us ], [ 0, %polly.loop_header223.us ]
  %104 = add nuw nsw i64 %polly.indvar232.us, %99
  %polly.access.mul.call1236.us = mul nuw nsw i64 %104, 60
  %polly.access.add.call1237.us = add nuw nsw i64 %polly.indvar226.us, %polly.access.mul.call1236.us
  %polly.access.call1238.us = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1237.us
  %polly.access.call1238.load.us = load double, double* %polly.access.call1238.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar232.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1238.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next233.us = add nuw nsw i64 %polly.indvar232.us, 1
  %exitcond981.not = icmp eq i64 %polly.indvar232.us, %smin983
  br i1 %exitcond981.not, label %polly.cond.loopexit.us, label %polly.loop_header229.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1241.us = add nuw nsw i64 %polly.access.mul.call1240, %polly.indvar226.us
  %polly.access.call1242.us = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1241.us
  %polly.access.call1242.load.us = load double, double* %polly.access.call1242.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1244.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %102
  %polly.access.Packed_MemRef_call1245.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244.us
  store double %polly.access.call1242.load.us, double* %polly.access.Packed_MemRef_call1245.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond982.not = icmp eq i64 %polly.indvar_next227.us, 50
  br i1 %exitcond982.not, label %polly.loop_header246.preheader, label %polly.loop_header223.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header229.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header217.split:                       ; preds = %polly.loop_header217
  br i1 %.not, label %polly.loop_exit248, label %polly.loop_header223

polly.loop_exit248:                               ; preds = %polly.loop_exit255.loopexit.us, %polly.loop_header217.split, %polly.loop_header246.preheader
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %indvars.iv.next980 = add nsw i64 %indvars.iv979, 1
  %exitcond986.not = icmp eq i64 %polly.indvar_next221, 4
  br i1 %exitcond986.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header223:                             ; preds = %polly.loop_header217.split, %polly.loop_header223
  %polly.indvar226 = phi i64 [ %polly.indvar_next227, %polly.loop_header223 ], [ 0, %polly.loop_header217.split ]
  %polly.access.add.call1241 = add nuw nsw i64 %polly.access.mul.call1240, %polly.indvar226
  %polly.access.call1242 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1241
  %polly.access.call1242.load = load double, double* %polly.access.call1242, align 8, !alias.scope !66, !noalias !72
  %polly.access.mul.Packed_MemRef_call1243 = mul nuw nsw i64 %polly.indvar226, 80
  %polly.access.add.Packed_MemRef_call1244 = add nsw i64 %polly.access.mul.Packed_MemRef_call1243, %102
  %polly.access.Packed_MemRef_call1245 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244
  store double %polly.access.call1242.load, double* %polly.access.Packed_MemRef_call1245, align 8
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next227, 50
  br i1 %exitcond.not, label %polly.loop_header246.preheader, label %polly.loop_header223

polly.loop_header246.preheader:                   ; preds = %polly.loop_header223, %polly.merge.us
  %105 = mul nuw nsw i64 %103, 480
  %106 = mul nuw nsw i64 %103, 640
  br i1 %polly.loop_guard1109, label %polly.loop_header246.us, label %polly.loop_exit248

polly.loop_header246.us:                          ; preds = %polly.loop_header246.preheader, %polly.loop_exit255.loopexit.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_exit255.loopexit.us ], [ 0, %polly.loop_header246.preheader ]
  %polly.access.mul.Packed_MemRef_call1260.us = mul nuw nsw i64 %polly.indvar249.us, 80
  %107 = shl i64 %polly.indvar249.us, 3
  %108 = add i64 %107, %105
  %scevgep264.us = getelementptr i8, i8* %call2, i64 %108
  %scevgep264265.us = bitcast i8* %scevgep264.us to double*
  %_p_scalar_266.us = load double, double* %scevgep264265.us, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1271.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1260.us, %102
  %polly.access.Packed_MemRef_call1272.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1271.us
  %_p_scalar_273.us = load double, double* %polly.access.Packed_MemRef_call1272.us, align 8
  br label %polly.loop_header253.us

polly.loop_header253.us:                          ; preds = %polly.loop_header246.us, %polly.loop_header253.us
  %polly.indvar257.us = phi i64 [ %polly.indvar_next258.us, %polly.loop_header253.us ], [ 0, %polly.loop_header246.us ]
  %109 = add nuw nsw i64 %polly.indvar257.us, %99
  %polly.access.add.Packed_MemRef_call1261.us = add nuw nsw i64 %polly.indvar257.us, %polly.access.mul.Packed_MemRef_call1260.us
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us
  %_p_scalar_263.us = load double, double* %polly.access.Packed_MemRef_call1262.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_266.us, %_p_scalar_263.us
  %110 = mul nuw nsw i64 %109, 480
  %111 = add nuw nsw i64 %110, %107
  %scevgep267.us = getelementptr i8, i8* %call2, i64 %111
  %scevgep267268.us = bitcast i8* %scevgep267.us to double*
  %_p_scalar_269.us = load double, double* %scevgep267268.us, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us = fmul fast double %_p_scalar_273.us, %_p_scalar_269.us
  %112 = shl i64 %109, 3
  %113 = add nuw nsw i64 %112, %106
  %scevgep274.us = getelementptr i8, i8* %call, i64 %113
  %scevgep274275.us = bitcast i8* %scevgep274.us to double*
  %_p_scalar_276.us = load double, double* %scevgep274275.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_276.us
  store double %p_add42.i118.us, double* %scevgep274275.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next258.us = add nuw nsw i64 %polly.indvar257.us, 1
  %exitcond984.not = icmp eq i64 %polly.indvar257.us, %smin983
  br i1 %exitcond984.not, label %polly.loop_exit255.loopexit.us, label %polly.loop_header253.us

polly.loop_exit255.loopexit.us:                   ; preds = %polly.loop_header253.us
  %polly.indvar_next250.us = add nuw nsw i64 %polly.indvar249.us, 1
  %exitcond985.not = icmp eq i64 %polly.indvar_next250.us, 50
  br i1 %exitcond985.not, label %polly.loop_exit248, label %polly.loop_header246.us

polly.start279:                                   ; preds = %kernel_syr2k.exit
  %malloccall281 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  br label %polly.loop_header365

polly.exiting280:                                 ; preds = %polly.loop_exit396.1
  tail call void @free(i8* %malloccall281)
  br label %kernel_syr2k.exit90

polly.loop_header365:                             ; preds = %polly.loop_exit373, %polly.start279
  %indvar1467 = phi i64 [ %indvar.next1468, %polly.loop_exit373 ], [ 0, %polly.start279 ]
  %polly.indvar368 = phi i64 [ %polly.indvar_next369, %polly.loop_exit373 ], [ 1, %polly.start279 ]
  %114 = add i64 %indvar1467, 1
  %115 = mul nuw nsw i64 %polly.indvar368, 640
  %scevgep377 = getelementptr i8, i8* %call, i64 %115
  %min.iters.check1469 = icmp ult i64 %114, 4
  br i1 %min.iters.check1469, label %polly.loop_header371.preheader, label %vector.ph1470

vector.ph1470:                                    ; preds = %polly.loop_header365
  %n.vec1472 = and i64 %114, -4
  br label %vector.body1466

vector.body1466:                                  ; preds = %vector.body1466, %vector.ph1470
  %index1473 = phi i64 [ 0, %vector.ph1470 ], [ %index.next1474, %vector.body1466 ]
  %116 = shl nuw nsw i64 %index1473, 3
  %117 = getelementptr i8, i8* %scevgep377, i64 %116
  %118 = bitcast i8* %117 to <4 x double>*
  %wide.load1477 = load <4 x double>, <4 x double>* %118, align 8, !alias.scope !74, !noalias !76
  %119 = fmul fast <4 x double> %wide.load1477, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %120 = bitcast i8* %117 to <4 x double>*
  store <4 x double> %119, <4 x double>* %120, align 8, !alias.scope !74, !noalias !76
  %index.next1474 = add i64 %index1473, 4
  %121 = icmp eq i64 %index.next1474, %n.vec1472
  br i1 %121, label %middle.block1464, label %vector.body1466, !llvm.loop !80

middle.block1464:                                 ; preds = %vector.body1466
  %cmp.n1476 = icmp eq i64 %114, %n.vec1472
  br i1 %cmp.n1476, label %polly.loop_exit373, label %polly.loop_header371.preheader

polly.loop_header371.preheader:                   ; preds = %polly.loop_header365, %middle.block1464
  %polly.indvar374.ph = phi i64 [ 0, %polly.loop_header365 ], [ %n.vec1472, %middle.block1464 ]
  br label %polly.loop_header371

polly.loop_exit373:                               ; preds = %polly.loop_header371, %middle.block1464
  %polly.indvar_next369 = add nuw nsw i64 %polly.indvar368, 1
  %exitcond1008.not = icmp eq i64 %polly.indvar_next369, 80
  %indvar.next1468 = add i64 %indvar1467, 1
  br i1 %exitcond1008.not, label %polly.loop_header381.preheader, label %polly.loop_header365

polly.loop_header381.preheader:                   ; preds = %polly.loop_exit373
  %Packed_MemRef_call1282 = bitcast i8* %malloccall281 to double*
  br label %polly.loop_header381

polly.loop_header371:                             ; preds = %polly.loop_header371.preheader, %polly.loop_header371
  %polly.indvar374 = phi i64 [ %polly.indvar_next375, %polly.loop_header371 ], [ %polly.indvar374.ph, %polly.loop_header371.preheader ]
  %122 = shl nuw nsw i64 %polly.indvar374, 3
  %scevgep378 = getelementptr i8, i8* %scevgep377, i64 %122
  %scevgep378379 = bitcast i8* %scevgep378 to double*
  %_p_scalar_380 = load double, double* %scevgep378379, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_380, 1.200000e+00
  store double %p_mul.i57, double* %scevgep378379, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next375 = add nuw nsw i64 %polly.indvar374, 1
  %exitcond1007.not = icmp eq i64 %polly.indvar_next375, %polly.indvar368
  br i1 %exitcond1007.not, label %polly.loop_exit373, label %polly.loop_header371, !llvm.loop !81

polly.loop_header381:                             ; preds = %polly.loop_header381.preheader, %polly.loop_exit396.1
  %indvars.iv992 = phi i64 [ 0, %polly.loop_header381.preheader ], [ %indvars.iv.next993, %polly.loop_exit396.1 ]
  %polly.indvar384 = phi i64 [ 0, %polly.loop_header381.preheader ], [ %polly.indvar_next385, %polly.loop_exit396.1 ]
  %123 = lshr i64 %polly.indvar384, 2
  %124 = shl nsw i64 %polly.indvar384, 2
  br label %polly.loop_header394

polly.loop_header394:                             ; preds = %polly.loop_exit402, %polly.loop_header381
  %indvars.iv994 = phi i64 [ %indvars.iv.next995, %polly.loop_exit402 ], [ %indvars.iv992, %polly.loop_header381 ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit402 ], [ 0, %polly.loop_header381 ]
  %125 = shl nsw i64 %polly.indvar397, 4
  %126 = sub nsw i64 %124, %125
  %127 = add nuw nsw i64 %125, 16
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_exit437
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %indvars.iv.next995 = add nsw i64 %indvars.iv994, -16
  %exitcond1005.not = icmp eq i64 %polly.indvar397, %123
  br i1 %exitcond1005.not, label %polly.loop_header394.1, label %polly.loop_header394

polly.loop_header400:                             ; preds = %polly.loop_exit437, %polly.loop_header394
  %indvars.iv996 = phi i64 [ %indvars.iv.next997, %polly.loop_exit437 ], [ %indvars.iv994, %polly.loop_header394 ]
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_exit437 ], [ 0, %polly.loop_header394 ]
  %smin1001 = call i64 @llvm.smin.i64(i64 %indvars.iv996, i64 15)
  %128 = add nsw i64 %polly.indvar403, %126
  %polly.loop_guard4161111 = icmp sgt i64 %128, -1
  %129 = add nuw nsw i64 %polly.indvar403, %124
  %.not861 = icmp ult i64 %129, %127
  %polly.access.mul.call1429 = mul nuw nsw i64 %129, 60
  br i1 %polly.loop_guard4161111, label %polly.loop_header406.us, label %polly.loop_header400.split

polly.loop_header406.us:                          ; preds = %polly.loop_header400, %polly.merge425.us
  %polly.indvar409.us = phi i64 [ %polly.indvar_next410.us, %polly.merge425.us ], [ 0, %polly.loop_header400 ]
  %polly.access.mul.Packed_MemRef_call1282.us = mul nuw nsw i64 %polly.indvar409.us, 80
  br label %polly.loop_header413.us

polly.loop_header413.us:                          ; preds = %polly.loop_header406.us, %polly.loop_header413.us
  %polly.indvar417.us = phi i64 [ %polly.indvar_next418.us, %polly.loop_header413.us ], [ 0, %polly.loop_header406.us ]
  %130 = add nuw nsw i64 %polly.indvar417.us, %125
  %polly.access.mul.call1421.us = mul nuw nsw i64 %130, 60
  %polly.access.add.call1422.us = add nuw nsw i64 %polly.indvar409.us, %polly.access.mul.call1421.us
  %polly.access.call1423.us = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1422.us
  %polly.access.call1423.load.us = load double, double* %polly.access.call1423.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1282.us = add nuw nsw i64 %polly.indvar417.us, %polly.access.mul.Packed_MemRef_call1282.us
  %polly.access.Packed_MemRef_call1282.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282.us
  store double %polly.access.call1423.load.us, double* %polly.access.Packed_MemRef_call1282.us, align 8
  %polly.indvar_next418.us = add nuw nsw i64 %polly.indvar417.us, 1
  %exitcond999.not = icmp eq i64 %polly.indvar417.us, %smin1001
  br i1 %exitcond999.not, label %polly.cond424.loopexit.us, label %polly.loop_header413.us

polly.then426.us:                                 ; preds = %polly.cond424.loopexit.us
  %polly.access.add.call1430.us = add nuw nsw i64 %polly.access.mul.call1429, %polly.indvar409.us
  %polly.access.call1431.us = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1430.us
  %polly.access.call1431.load.us = load double, double* %polly.access.call1431.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1282433.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1282.us, %128
  %polly.access.Packed_MemRef_call1282434.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282433.us
  store double %polly.access.call1431.load.us, double* %polly.access.Packed_MemRef_call1282434.us, align 8
  br label %polly.merge425.us

polly.merge425.us:                                ; preds = %polly.then426.us, %polly.cond424.loopexit.us
  %polly.indvar_next410.us = add nuw nsw i64 %polly.indvar409.us, 1
  %exitcond1000.not = icmp eq i64 %polly.indvar_next410.us, 50
  br i1 %exitcond1000.not, label %polly.loop_header435.preheader, label %polly.loop_header406.us

polly.cond424.loopexit.us:                        ; preds = %polly.loop_header413.us
  br i1 %.not861, label %polly.merge425.us, label %polly.then426.us

polly.loop_header400.split:                       ; preds = %polly.loop_header400
  br i1 %.not861, label %polly.loop_exit437, label %polly.loop_header406

polly.loop_exit437:                               ; preds = %polly.loop_exit444.loopexit.us, %polly.loop_header400.split, %polly.loop_header435.preheader
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %indvars.iv.next997 = add nsw i64 %indvars.iv996, 1
  %exitcond1004.not = icmp eq i64 %polly.indvar_next404, 4
  br i1 %exitcond1004.not, label %polly.loop_exit402, label %polly.loop_header400

polly.loop_header406:                             ; preds = %polly.loop_header400.split, %polly.loop_header406
  %polly.indvar409 = phi i64 [ %polly.indvar_next410, %polly.loop_header406 ], [ 0, %polly.loop_header400.split ]
  %polly.access.add.call1430 = add nuw nsw i64 %polly.access.mul.call1429, %polly.indvar409
  %polly.access.call1431 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1430
  %polly.access.call1431.load = load double, double* %polly.access.call1431, align 8, !alias.scope !77, !noalias !82
  %polly.access.mul.Packed_MemRef_call1282432 = mul nuw nsw i64 %polly.indvar409, 80
  %polly.access.add.Packed_MemRef_call1282433 = add nsw i64 %polly.access.mul.Packed_MemRef_call1282432, %128
  %polly.access.Packed_MemRef_call1282434 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282433
  store double %polly.access.call1431.load, double* %polly.access.Packed_MemRef_call1282434, align 8
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond991.not = icmp eq i64 %polly.indvar_next410, 50
  br i1 %exitcond991.not, label %polly.loop_header435.preheader, label %polly.loop_header406

polly.loop_header435.preheader:                   ; preds = %polly.loop_header406, %polly.merge425.us
  %131 = mul nuw nsw i64 %129, 480
  %132 = mul nuw nsw i64 %129, 640
  br i1 %polly.loop_guard4161111, label %polly.loop_header435.us, label %polly.loop_exit437

polly.loop_header435.us:                          ; preds = %polly.loop_header435.preheader, %polly.loop_exit444.loopexit.us
  %polly.indvar438.us = phi i64 [ %polly.indvar_next439.us, %polly.loop_exit444.loopexit.us ], [ 0, %polly.loop_header435.preheader ]
  %polly.access.mul.Packed_MemRef_call1282449.us = mul nuw nsw i64 %polly.indvar438.us, 80
  %133 = shl i64 %polly.indvar438.us, 3
  %134 = add i64 %133, %131
  %scevgep453.us = getelementptr i8, i8* %call2, i64 %134
  %scevgep453454.us = bitcast i8* %scevgep453.us to double*
  %_p_scalar_455.us = load double, double* %scevgep453454.us, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1282460.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1282449.us, %128
  %polly.access.Packed_MemRef_call1282461.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282460.us
  %_p_scalar_462.us = load double, double* %polly.access.Packed_MemRef_call1282461.us, align 8
  br label %polly.loop_header442.us

polly.loop_header442.us:                          ; preds = %polly.loop_header435.us, %polly.loop_header442.us
  %polly.indvar446.us = phi i64 [ %polly.indvar_next447.us, %polly.loop_header442.us ], [ 0, %polly.loop_header435.us ]
  %135 = add nuw nsw i64 %polly.indvar446.us, %125
  %polly.access.add.Packed_MemRef_call1282450.us = add nuw nsw i64 %polly.indvar446.us, %polly.access.mul.Packed_MemRef_call1282449.us
  %polly.access.Packed_MemRef_call1282451.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282450.us
  %_p_scalar_452.us = load double, double* %polly.access.Packed_MemRef_call1282451.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_455.us, %_p_scalar_452.us
  %136 = mul nuw nsw i64 %135, 480
  %137 = add nuw nsw i64 %136, %133
  %scevgep456.us = getelementptr i8, i8* %call2, i64 %137
  %scevgep456457.us = bitcast i8* %scevgep456.us to double*
  %_p_scalar_458.us = load double, double* %scevgep456457.us, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us = fmul fast double %_p_scalar_462.us, %_p_scalar_458.us
  %138 = shl i64 %135, 3
  %139 = add nuw nsw i64 %138, %132
  %scevgep463.us = getelementptr i8, i8* %call, i64 %139
  %scevgep463464.us = bitcast i8* %scevgep463.us to double*
  %_p_scalar_465.us = load double, double* %scevgep463464.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_465.us
  store double %p_add42.i79.us, double* %scevgep463464.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next447.us = add nuw nsw i64 %polly.indvar446.us, 1
  %exitcond1002.not = icmp eq i64 %polly.indvar446.us, %smin1001
  br i1 %exitcond1002.not, label %polly.loop_exit444.loopexit.us, label %polly.loop_header442.us

polly.loop_exit444.loopexit.us:                   ; preds = %polly.loop_header442.us
  %polly.indvar_next439.us = add nuw nsw i64 %polly.indvar438.us, 1
  %exitcond1003.not = icmp eq i64 %polly.indvar_next439.us, 50
  br i1 %exitcond1003.not, label %polly.loop_exit437, label %polly.loop_header435.us

polly.start468:                                   ; preds = %init_array.exit
  %malloccall470 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  br label %polly.loop_header554

polly.exiting469:                                 ; preds = %polly.loop_exit585.1
  tail call void @free(i8* %malloccall470)
  br label %kernel_syr2k.exit

polly.loop_header554:                             ; preds = %polly.loop_exit562, %polly.start468
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit562 ], [ 0, %polly.start468 ]
  %polly.indvar557 = phi i64 [ %polly.indvar_next558, %polly.loop_exit562 ], [ 1, %polly.start468 ]
  %140 = add i64 %indvar, 1
  %141 = mul nuw nsw i64 %polly.indvar557, 640
  %scevgep566 = getelementptr i8, i8* %call, i64 %141
  %min.iters.check1426 = icmp ult i64 %140, 4
  br i1 %min.iters.check1426, label %polly.loop_header560.preheader, label %vector.ph1427

vector.ph1427:                                    ; preds = %polly.loop_header554
  %n.vec1429 = and i64 %140, -4
  br label %vector.body1425

vector.body1425:                                  ; preds = %vector.body1425, %vector.ph1427
  %index1430 = phi i64 [ 0, %vector.ph1427 ], [ %index.next1431, %vector.body1425 ]
  %142 = shl nuw nsw i64 %index1430, 3
  %143 = getelementptr i8, i8* %scevgep566, i64 %142
  %144 = bitcast i8* %143 to <4 x double>*
  %wide.load1434 = load <4 x double>, <4 x double>* %144, align 8, !alias.scope !84, !noalias !86
  %145 = fmul fast <4 x double> %wide.load1434, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %146 = bitcast i8* %143 to <4 x double>*
  store <4 x double> %145, <4 x double>* %146, align 8, !alias.scope !84, !noalias !86
  %index.next1431 = add i64 %index1430, 4
  %147 = icmp eq i64 %index.next1431, %n.vec1429
  br i1 %147, label %middle.block1423, label %vector.body1425, !llvm.loop !90

middle.block1423:                                 ; preds = %vector.body1425
  %cmp.n1433 = icmp eq i64 %140, %n.vec1429
  br i1 %cmp.n1433, label %polly.loop_exit562, label %polly.loop_header560.preheader

polly.loop_header560.preheader:                   ; preds = %polly.loop_header554, %middle.block1423
  %polly.indvar563.ph = phi i64 [ 0, %polly.loop_header554 ], [ %n.vec1429, %middle.block1423 ]
  br label %polly.loop_header560

polly.loop_exit562:                               ; preds = %polly.loop_header560, %middle.block1423
  %polly.indvar_next558 = add nuw nsw i64 %polly.indvar557, 1
  %exitcond1026.not = icmp eq i64 %polly.indvar_next558, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1026.not, label %polly.loop_header570.preheader, label %polly.loop_header554

polly.loop_header570.preheader:                   ; preds = %polly.loop_exit562
  %Packed_MemRef_call1471 = bitcast i8* %malloccall470 to double*
  br label %polly.loop_header570

polly.loop_header560:                             ; preds = %polly.loop_header560.preheader, %polly.loop_header560
  %polly.indvar563 = phi i64 [ %polly.indvar_next564, %polly.loop_header560 ], [ %polly.indvar563.ph, %polly.loop_header560.preheader ]
  %148 = shl nuw nsw i64 %polly.indvar563, 3
  %scevgep567 = getelementptr i8, i8* %scevgep566, i64 %148
  %scevgep567568 = bitcast i8* %scevgep567 to double*
  %_p_scalar_569 = load double, double* %scevgep567568, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_569, 1.200000e+00
  store double %p_mul.i, double* %scevgep567568, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next564 = add nuw nsw i64 %polly.indvar563, 1
  %exitcond1025.not = icmp eq i64 %polly.indvar_next564, %polly.indvar557
  br i1 %exitcond1025.not, label %polly.loop_exit562, label %polly.loop_header560, !llvm.loop !91

polly.loop_header570:                             ; preds = %polly.loop_header570.preheader, %polly.loop_exit585.1
  %indvars.iv1010 = phi i64 [ 0, %polly.loop_header570.preheader ], [ %indvars.iv.next1011, %polly.loop_exit585.1 ]
  %polly.indvar573 = phi i64 [ 0, %polly.loop_header570.preheader ], [ %polly.indvar_next574, %polly.loop_exit585.1 ]
  %149 = lshr i64 %polly.indvar573, 2
  %150 = shl nsw i64 %polly.indvar573, 2
  br label %polly.loop_header583

polly.loop_header583:                             ; preds = %polly.loop_exit591, %polly.loop_header570
  %indvars.iv1012 = phi i64 [ %indvars.iv.next1013, %polly.loop_exit591 ], [ %indvars.iv1010, %polly.loop_header570 ]
  %polly.indvar586 = phi i64 [ %polly.indvar_next587, %polly.loop_exit591 ], [ 0, %polly.loop_header570 ]
  %151 = shl nsw i64 %polly.indvar586, 4
  %152 = sub nsw i64 %150, %151
  %153 = add nuw nsw i64 %151, 16
  br label %polly.loop_header589

polly.loop_exit591:                               ; preds = %polly.loop_exit626
  %polly.indvar_next587 = add nuw nsw i64 %polly.indvar586, 1
  %indvars.iv.next1013 = add nsw i64 %indvars.iv1012, -16
  %exitcond1023.not = icmp eq i64 %polly.indvar586, %149
  br i1 %exitcond1023.not, label %polly.loop_header583.1, label %polly.loop_header583

polly.loop_header589:                             ; preds = %polly.loop_exit626, %polly.loop_header583
  %indvars.iv1014 = phi i64 [ %indvars.iv.next1015, %polly.loop_exit626 ], [ %indvars.iv1012, %polly.loop_header583 ]
  %polly.indvar592 = phi i64 [ %polly.indvar_next593, %polly.loop_exit626 ], [ 0, %polly.loop_header583 ]
  %smin1019 = call i64 @llvm.smin.i64(i64 %indvars.iv1014, i64 15)
  %154 = add nsw i64 %polly.indvar592, %152
  %polly.loop_guard6051113 = icmp sgt i64 %154, -1
  %155 = add nuw nsw i64 %polly.indvar592, %150
  %.not862 = icmp ult i64 %155, %153
  %polly.access.mul.call1618 = mul nuw nsw i64 %155, 60
  br i1 %polly.loop_guard6051113, label %polly.loop_header595.us, label %polly.loop_header589.split

polly.loop_header595.us:                          ; preds = %polly.loop_header589, %polly.merge614.us
  %polly.indvar598.us = phi i64 [ %polly.indvar_next599.us, %polly.merge614.us ], [ 0, %polly.loop_header589 ]
  %polly.access.mul.Packed_MemRef_call1471.us = mul nuw nsw i64 %polly.indvar598.us, 80
  br label %polly.loop_header602.us

polly.loop_header602.us:                          ; preds = %polly.loop_header595.us, %polly.loop_header602.us
  %polly.indvar606.us = phi i64 [ %polly.indvar_next607.us, %polly.loop_header602.us ], [ 0, %polly.loop_header595.us ]
  %156 = add nuw nsw i64 %polly.indvar606.us, %151
  %polly.access.mul.call1610.us = mul nuw nsw i64 %156, 60
  %polly.access.add.call1611.us = add nuw nsw i64 %polly.indvar598.us, %polly.access.mul.call1610.us
  %polly.access.call1612.us = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1611.us
  %polly.access.call1612.load.us = load double, double* %polly.access.call1612.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1471.us = add nuw nsw i64 %polly.indvar606.us, %polly.access.mul.Packed_MemRef_call1471.us
  %polly.access.Packed_MemRef_call1471.us = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471.us
  store double %polly.access.call1612.load.us, double* %polly.access.Packed_MemRef_call1471.us, align 8
  %polly.indvar_next607.us = add nuw nsw i64 %polly.indvar606.us, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar606.us, %smin1019
  br i1 %exitcond1017.not, label %polly.cond613.loopexit.us, label %polly.loop_header602.us

polly.then615.us:                                 ; preds = %polly.cond613.loopexit.us
  %polly.access.add.call1619.us = add nuw nsw i64 %polly.access.mul.call1618, %polly.indvar598.us
  %polly.access.call1620.us = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1619.us
  %polly.access.call1620.load.us = load double, double* %polly.access.call1620.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1471622.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1471.us, %154
  %polly.access.Packed_MemRef_call1471623.us = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471622.us
  store double %polly.access.call1620.load.us, double* %polly.access.Packed_MemRef_call1471623.us, align 8
  br label %polly.merge614.us

polly.merge614.us:                                ; preds = %polly.then615.us, %polly.cond613.loopexit.us
  %polly.indvar_next599.us = add nuw nsw i64 %polly.indvar598.us, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar_next599.us, 50
  br i1 %exitcond1018.not, label %polly.loop_header624.preheader, label %polly.loop_header595.us

polly.cond613.loopexit.us:                        ; preds = %polly.loop_header602.us
  br i1 %.not862, label %polly.merge614.us, label %polly.then615.us

polly.loop_header589.split:                       ; preds = %polly.loop_header589
  br i1 %.not862, label %polly.loop_exit626, label %polly.loop_header595

polly.loop_exit626:                               ; preds = %polly.loop_exit633.loopexit.us, %polly.loop_header589.split, %polly.loop_header624.preheader
  %polly.indvar_next593 = add nuw nsw i64 %polly.indvar592, 1
  %indvars.iv.next1015 = add nsw i64 %indvars.iv1014, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar_next593, 4
  br i1 %exitcond1022.not, label %polly.loop_exit591, label %polly.loop_header589

polly.loop_header595:                             ; preds = %polly.loop_header589.split, %polly.loop_header595
  %polly.indvar598 = phi i64 [ %polly.indvar_next599, %polly.loop_header595 ], [ 0, %polly.loop_header589.split ]
  %polly.access.add.call1619 = add nuw nsw i64 %polly.access.mul.call1618, %polly.indvar598
  %polly.access.call1620 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1619
  %polly.access.call1620.load = load double, double* %polly.access.call1620, align 8, !alias.scope !87, !noalias !92
  %polly.access.mul.Packed_MemRef_call1471621 = mul nuw nsw i64 %polly.indvar598, 80
  %polly.access.add.Packed_MemRef_call1471622 = add nsw i64 %polly.access.mul.Packed_MemRef_call1471621, %154
  %polly.access.Packed_MemRef_call1471623 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471622
  store double %polly.access.call1620.load, double* %polly.access.Packed_MemRef_call1471623, align 8
  %polly.indvar_next599 = add nuw nsw i64 %polly.indvar598, 1
  %exitcond1009.not = icmp eq i64 %polly.indvar_next599, 50
  br i1 %exitcond1009.not, label %polly.loop_header624.preheader, label %polly.loop_header595

polly.loop_header624.preheader:                   ; preds = %polly.loop_header595, %polly.merge614.us
  %157 = mul nuw nsw i64 %155, 480
  %158 = mul nuw nsw i64 %155, 640
  br i1 %polly.loop_guard6051113, label %polly.loop_header624.us, label %polly.loop_exit626

polly.loop_header624.us:                          ; preds = %polly.loop_header624.preheader, %polly.loop_exit633.loopexit.us
  %polly.indvar627.us = phi i64 [ %polly.indvar_next628.us, %polly.loop_exit633.loopexit.us ], [ 0, %polly.loop_header624.preheader ]
  %polly.access.mul.Packed_MemRef_call1471638.us = mul nuw nsw i64 %polly.indvar627.us, 80
  %159 = shl i64 %polly.indvar627.us, 3
  %160 = add i64 %159, %157
  %scevgep642.us = getelementptr i8, i8* %call2, i64 %160
  %scevgep642643.us = bitcast i8* %scevgep642.us to double*
  %_p_scalar_644.us = load double, double* %scevgep642643.us, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1471649.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1471638.us, %154
  %polly.access.Packed_MemRef_call1471650.us = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471649.us
  %_p_scalar_651.us = load double, double* %polly.access.Packed_MemRef_call1471650.us, align 8
  br label %polly.loop_header631.us

polly.loop_header631.us:                          ; preds = %polly.loop_header624.us, %polly.loop_header631.us
  %polly.indvar635.us = phi i64 [ %polly.indvar_next636.us, %polly.loop_header631.us ], [ 0, %polly.loop_header624.us ]
  %161 = add nuw nsw i64 %polly.indvar635.us, %151
  %polly.access.add.Packed_MemRef_call1471639.us = add nuw nsw i64 %polly.indvar635.us, %polly.access.mul.Packed_MemRef_call1471638.us
  %polly.access.Packed_MemRef_call1471640.us = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471639.us
  %_p_scalar_641.us = load double, double* %polly.access.Packed_MemRef_call1471640.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_644.us, %_p_scalar_641.us
  %162 = mul nuw nsw i64 %161, 480
  %163 = add nuw nsw i64 %162, %159
  %scevgep645.us = getelementptr i8, i8* %call2, i64 %163
  %scevgep645646.us = bitcast i8* %scevgep645.us to double*
  %_p_scalar_647.us = load double, double* %scevgep645646.us, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us = fmul fast double %_p_scalar_651.us, %_p_scalar_647.us
  %164 = shl i64 %161, 3
  %165 = add nuw nsw i64 %164, %158
  %scevgep652.us = getelementptr i8, i8* %call, i64 %165
  %scevgep652653.us = bitcast i8* %scevgep652.us to double*
  %_p_scalar_654.us = load double, double* %scevgep652653.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_654.us
  store double %p_add42.i.us, double* %scevgep652653.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next636.us = add nuw nsw i64 %polly.indvar635.us, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar635.us, %smin1019
  br i1 %exitcond1020.not, label %polly.loop_exit633.loopexit.us, label %polly.loop_header631.us

polly.loop_exit633.loopexit.us:                   ; preds = %polly.loop_header631.us
  %polly.indvar_next628.us = add nuw nsw i64 %polly.indvar627.us, 1
  %exitcond1021.not = icmp eq i64 %polly.indvar_next628.us, 50
  br i1 %exitcond1021.not, label %polly.loop_exit626, label %polly.loop_header624.us

polly.loop_header793:                             ; preds = %entry, %polly.loop_exit801
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %entry ]
  %166 = mul nuw nsw i64 %polly.indvar796, 640
  %167 = trunc i64 %polly.indvar796 to i32
  %broadcast.splatinsert1157 = insertelement <4 x i32> poison, i32 %167, i32 0
  %broadcast.splat1158 = shufflevector <4 x i32> %broadcast.splatinsert1157, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1147

vector.body1147:                                  ; preds = %vector.body1147, %polly.loop_header793
  %index1149 = phi i64 [ 0, %polly.loop_header793 ], [ %index.next1150, %vector.body1147 ]
  %vec.ind1155 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793 ], [ %vec.ind.next1156, %vector.body1147 ]
  %168 = mul <4 x i32> %vec.ind1155, %broadcast.splat1158
  %169 = add <4 x i32> %168, <i32 3, i32 3, i32 3, i32 3>
  %170 = urem <4 x i32> %169, <i32 80, i32 80, i32 80, i32 80>
  %171 = sitofp <4 x i32> %170 to <4 x double>
  %172 = fmul fast <4 x double> %171, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %173 = shl i64 %index1149, 3
  %174 = add nuw nsw i64 %173, %166
  %175 = getelementptr i8, i8* %call, i64 %174
  %176 = bitcast i8* %175 to <4 x double>*
  store <4 x double> %172, <4 x double>* %176, align 8, !alias.scope !94, !noalias !96
  %index.next1150 = add i64 %index1149, 4
  %vec.ind.next1156 = add <4 x i32> %vec.ind1155, <i32 4, i32 4, i32 4, i32 4>
  %177 = icmp eq i64 %index.next1150, 32
  br i1 %177, label %polly.loop_exit801, label %vector.body1147, !llvm.loop !99

polly.loop_exit801:                               ; preds = %vector.body1147
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar_next797, 32
  br i1 %exitcond1046.not, label %polly.loop_header793.1, label %polly.loop_header793

polly.loop_header820:                             ; preds = %polly.loop_exit801.2.2, %polly.loop_exit828
  %polly.indvar823 = phi i64 [ %polly.indvar_next824, %polly.loop_exit828 ], [ 0, %polly.loop_exit801.2.2 ]
  %178 = mul nuw nsw i64 %polly.indvar823, 480
  %179 = trunc i64 %polly.indvar823 to i32
  %broadcast.splatinsert1271 = insertelement <4 x i32> poison, i32 %179, i32 0
  %broadcast.splat1272 = shufflevector <4 x i32> %broadcast.splatinsert1271, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1261

vector.body1261:                                  ; preds = %vector.body1261, %polly.loop_header820
  %index1263 = phi i64 [ 0, %polly.loop_header820 ], [ %index.next1264, %vector.body1261 ]
  %vec.ind1269 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header820 ], [ %vec.ind.next1270, %vector.body1261 ]
  %180 = mul <4 x i32> %vec.ind1269, %broadcast.splat1272
  %181 = add <4 x i32> %180, <i32 2, i32 2, i32 2, i32 2>
  %182 = urem <4 x i32> %181, <i32 60, i32 60, i32 60, i32 60>
  %183 = sitofp <4 x i32> %182 to <4 x double>
  %184 = fmul fast <4 x double> %183, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %185 = shl i64 %index1263, 3
  %186 = add i64 %185, %178
  %187 = getelementptr i8, i8* %call2, i64 %186
  %188 = bitcast i8* %187 to <4 x double>*
  store <4 x double> %184, <4 x double>* %188, align 8, !alias.scope !98, !noalias !100
  %index.next1264 = add i64 %index1263, 4
  %vec.ind.next1270 = add <4 x i32> %vec.ind1269, <i32 4, i32 4, i32 4, i32 4>
  %189 = icmp eq i64 %index.next1264, 32
  br i1 %189, label %polly.loop_exit828, label %vector.body1261, !llvm.loop !101

polly.loop_exit828:                               ; preds = %vector.body1261
  %polly.indvar_next824 = add nuw nsw i64 %polly.indvar823, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar_next824, 32
  br i1 %exitcond1037.not, label %polly.loop_header820.1, label %polly.loop_header820

polly.loop_header846:                             ; preds = %polly.loop_exit828.1.2, %polly.loop_exit854
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %polly.loop_exit828.1.2 ]
  %190 = mul nuw nsw i64 %polly.indvar849, 480
  %191 = trunc i64 %polly.indvar849 to i32
  %broadcast.splatinsert1349 = insertelement <4 x i32> poison, i32 %191, i32 0
  %broadcast.splat1350 = shufflevector <4 x i32> %broadcast.splatinsert1349, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1339

vector.body1339:                                  ; preds = %vector.body1339, %polly.loop_header846
  %index1341 = phi i64 [ 0, %polly.loop_header846 ], [ %index.next1342, %vector.body1339 ]
  %vec.ind1347 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header846 ], [ %vec.ind.next1348, %vector.body1339 ]
  %192 = mul <4 x i32> %vec.ind1347, %broadcast.splat1350
  %193 = add <4 x i32> %192, <i32 1, i32 1, i32 1, i32 1>
  %194 = urem <4 x i32> %193, <i32 80, i32 80, i32 80, i32 80>
  %195 = sitofp <4 x i32> %194 to <4 x double>
  %196 = fmul fast <4 x double> %195, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %197 = shl i64 %index1341, 3
  %198 = add i64 %197, %190
  %199 = getelementptr i8, i8* %call1, i64 %198
  %200 = bitcast i8* %199 to <4 x double>*
  store <4 x double> %196, <4 x double>* %200, align 8, !alias.scope !97, !noalias !102
  %index.next1342 = add i64 %index1341, 4
  %vec.ind.next1348 = add <4 x i32> %vec.ind1347, <i32 4, i32 4, i32 4, i32 4>
  %201 = icmp eq i64 %index.next1342, 32
  br i1 %201, label %polly.loop_exit854, label %vector.body1339, !llvm.loop !103

polly.loop_exit854:                               ; preds = %vector.body1339
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %exitcond1031.not = icmp eq i64 %polly.indvar_next850, 32
  br i1 %exitcond1031.not, label %polly.loop_header846.1, label %polly.loop_header846

polly.loop_header211.1:                           ; preds = %polly.loop_exit219, %polly.loop_exit219.1
  %indvars.iv977.1 = phi i64 [ %indvars.iv.next978.1, %polly.loop_exit219.1 ], [ %indvars.iv, %polly.loop_exit219 ]
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit219.1 ], [ 0, %polly.loop_exit219 ]
  %202 = shl nsw i64 %polly.indvar214.1, 4
  %203 = sub nsw i64 %98, %202
  %204 = add nuw nsw i64 %202, 16
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_exit248.1, %polly.loop_header211.1
  %indvars.iv979.1 = phi i64 [ %indvars.iv.next980.1, %polly.loop_exit248.1 ], [ %indvars.iv977.1, %polly.loop_header211.1 ]
  %polly.indvar220.1 = phi i64 [ %polly.indvar_next221.1, %polly.loop_exit248.1 ], [ 0, %polly.loop_header211.1 ]
  %smin983.1 = call i64 @llvm.smin.i64(i64 %indvars.iv979.1, i64 15)
  %205 = add nsw i64 %polly.indvar220.1, %203
  %polly.loop_guard.11110 = icmp sgt i64 %205, -1
  %206 = add nuw nsw i64 %polly.indvar220.1, %98
  %.not.1 = icmp ult i64 %206, %204
  %polly.access.mul.call1240.1 = mul nuw nsw i64 %206, 60
  %207 = add nuw i64 %polly.access.mul.call1240.1, 50
  br i1 %polly.loop_guard.11110, label %polly.loop_header223.us.1, label %polly.loop_header217.split.1

polly.loop_header217.split.1:                     ; preds = %polly.loop_header217.1
  br i1 %.not.1, label %polly.loop_exit248.1, label %vector.ph1527

vector.ph1527:                                    ; preds = %polly.loop_header217.split.1
  %broadcast.splatinsert1534 = insertelement <4 x i64> poison, i64 %205, i32 0
  %broadcast.splat1535 = shufflevector <4 x i64> %broadcast.splatinsert1534, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1526

vector.body1526:                                  ; preds = %pred.store.continue1543, %vector.ph1527
  %index1528 = phi i64 [ 0, %vector.ph1527 ], [ %index.next1529, %pred.store.continue1543 ]
  %vec.ind1531 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1527 ], [ %vec.ind.next1532, %pred.store.continue1543 ]
  %208 = icmp ult <4 x i64> %vec.ind1531, <i64 10, i64 10, i64 10, i64 10>
  %209 = add nuw nsw i64 %207, %index1528
  %210 = getelementptr double, double* %polly.access.cast.call1659, i64 %209
  %211 = bitcast double* %210 to <4 x double>*
  %wide.masked.load1533 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %211, i32 8, <4 x i1> %208, <4 x double> poison), !alias.scope !66, !noalias !72
  %212 = mul nuw nsw <4 x i64> %vec.ind1531, <i64 80, i64 80, i64 80, i64 80>
  %213 = add nsw <4 x i64> %212, %broadcast.splat1535
  %214 = extractelement <4 x i1> %208, i32 0
  br i1 %214, label %pred.store.if1536, label %pred.store.continue1537

pred.store.if1536:                                ; preds = %vector.body1526
  %215 = extractelement <4 x i64> %213, i32 0
  %216 = getelementptr double, double* %Packed_MemRef_call1, i64 %215
  %217 = extractelement <4 x double> %wide.masked.load1533, i32 0
  store double %217, double* %216, align 8
  br label %pred.store.continue1537

pred.store.continue1537:                          ; preds = %pred.store.if1536, %vector.body1526
  %218 = extractelement <4 x i1> %208, i32 1
  br i1 %218, label %pred.store.if1538, label %pred.store.continue1539

pred.store.if1538:                                ; preds = %pred.store.continue1537
  %219 = extractelement <4 x i64> %213, i32 1
  %220 = getelementptr double, double* %Packed_MemRef_call1, i64 %219
  %221 = extractelement <4 x double> %wide.masked.load1533, i32 1
  store double %221, double* %220, align 8
  br label %pred.store.continue1539

pred.store.continue1539:                          ; preds = %pred.store.if1538, %pred.store.continue1537
  %222 = extractelement <4 x i1> %208, i32 2
  br i1 %222, label %pred.store.if1540, label %pred.store.continue1541

pred.store.if1540:                                ; preds = %pred.store.continue1539
  %223 = extractelement <4 x i64> %213, i32 2
  %224 = getelementptr double, double* %Packed_MemRef_call1, i64 %223
  %225 = extractelement <4 x double> %wide.masked.load1533, i32 2
  store double %225, double* %224, align 8
  br label %pred.store.continue1541

pred.store.continue1541:                          ; preds = %pred.store.if1540, %pred.store.continue1539
  %226 = extractelement <4 x i1> %208, i32 3
  br i1 %226, label %pred.store.if1542, label %pred.store.continue1543

pred.store.if1542:                                ; preds = %pred.store.continue1541
  %227 = extractelement <4 x i64> %213, i32 3
  %228 = getelementptr double, double* %Packed_MemRef_call1, i64 %227
  %229 = extractelement <4 x double> %wide.masked.load1533, i32 3
  store double %229, double* %228, align 8
  br label %pred.store.continue1543

pred.store.continue1543:                          ; preds = %pred.store.if1542, %pred.store.continue1541
  %index.next1529 = add i64 %index1528, 4
  %vec.ind.next1532 = add <4 x i64> %vec.ind1531, <i64 4, i64 4, i64 4, i64 4>
  %230 = icmp eq i64 %index.next1529, 12
  br i1 %230, label %polly.loop_header246.preheader.1, label %vector.body1526, !llvm.loop !104

polly.loop_header223.us.1:                        ; preds = %polly.loop_header217.1, %polly.merge.us.1
  %polly.indvar226.us.1 = phi i64 [ %polly.indvar_next227.us.1, %polly.merge.us.1 ], [ 0, %polly.loop_header217.1 ]
  %231 = add nuw nsw i64 %polly.indvar226.us.1, 50
  %polly.access.mul.Packed_MemRef_call1.us.1 = mul nuw nsw i64 %polly.indvar226.us.1, 80
  br label %polly.loop_header229.us.1

polly.loop_header229.us.1:                        ; preds = %polly.loop_header229.us.1, %polly.loop_header223.us.1
  %polly.indvar232.us.1 = phi i64 [ %polly.indvar_next233.us.1, %polly.loop_header229.us.1 ], [ 0, %polly.loop_header223.us.1 ]
  %232 = add nuw nsw i64 %polly.indvar232.us.1, %202
  %polly.access.mul.call1236.us.1 = mul nuw nsw i64 %232, 60
  %polly.access.add.call1237.us.1 = add nuw nsw i64 %231, %polly.access.mul.call1236.us.1
  %polly.access.call1238.us.1 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1237.us.1
  %polly.access.call1238.load.us.1 = load double, double* %polly.access.call1238.us.1, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar232.us.1, %polly.access.mul.Packed_MemRef_call1.us.1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1238.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next233.us.1 = add nuw nsw i64 %polly.indvar232.us.1, 1
  %exitcond981.1.not = icmp eq i64 %polly.indvar232.us.1, %smin983.1
  br i1 %exitcond981.1.not, label %polly.cond.loopexit.us.1, label %polly.loop_header229.us.1

polly.cond.loopexit.us.1:                         ; preds = %polly.loop_header229.us.1
  br i1 %.not.1, label %polly.merge.us.1, label %polly.then.us.1

polly.then.us.1:                                  ; preds = %polly.cond.loopexit.us.1
  %polly.access.add.call1241.us.1 = add nuw nsw i64 %207, %polly.indvar226.us.1
  %polly.access.call1242.us.1 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1241.us.1
  %polly.access.call1242.load.us.1 = load double, double* %polly.access.call1242.us.1, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1244.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us.1, %205
  %polly.access.Packed_MemRef_call1245.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244.us.1
  store double %polly.access.call1242.load.us.1, double* %polly.access.Packed_MemRef_call1245.us.1, align 8
  br label %polly.merge.us.1

polly.merge.us.1:                                 ; preds = %polly.then.us.1, %polly.cond.loopexit.us.1
  %polly.indvar_next227.us.1 = add nuw nsw i64 %polly.indvar226.us.1, 1
  %exitcond982.1.not = icmp eq i64 %polly.indvar_next227.us.1, 10
  br i1 %exitcond982.1.not, label %polly.loop_header246.preheader.1, label %polly.loop_header223.us.1

polly.loop_header246.preheader.1:                 ; preds = %pred.store.continue1543, %polly.merge.us.1
  %233 = mul nuw nsw i64 %206, 480
  %234 = mul nuw nsw i64 %206, 640
  br i1 %polly.loop_guard.11110, label %polly.loop_header246.us.1, label %polly.loop_exit248.1

polly.loop_header246.us.1:                        ; preds = %polly.loop_header246.preheader.1, %polly.loop_exit255.loopexit.us.1
  %polly.indvar249.us.1 = phi i64 [ %polly.indvar_next250.us.1, %polly.loop_exit255.loopexit.us.1 ], [ 0, %polly.loop_header246.preheader.1 ]
  %polly.access.mul.Packed_MemRef_call1260.us.1 = mul nuw nsw i64 %polly.indvar249.us.1, 80
  %235 = shl i64 %polly.indvar249.us.1, 3
  %236 = add i64 %235, 400
  %237 = add i64 %236, %233
  %scevgep264.us.1 = getelementptr i8, i8* %call2, i64 %237
  %scevgep264265.us.1 = bitcast i8* %scevgep264.us.1 to double*
  %_p_scalar_266.us.1 = load double, double* %scevgep264265.us.1, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1271.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1260.us.1, %205
  %polly.access.Packed_MemRef_call1272.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1271.us.1
  %_p_scalar_273.us.1 = load double, double* %polly.access.Packed_MemRef_call1272.us.1, align 8
  br label %polly.loop_header253.us.1

polly.loop_header253.us.1:                        ; preds = %polly.loop_header253.us.1, %polly.loop_header246.us.1
  %polly.indvar257.us.1 = phi i64 [ %polly.indvar_next258.us.1, %polly.loop_header253.us.1 ], [ 0, %polly.loop_header246.us.1 ]
  %238 = add nuw nsw i64 %polly.indvar257.us.1, %202
  %polly.access.add.Packed_MemRef_call1261.us.1 = add nuw nsw i64 %polly.indvar257.us.1, %polly.access.mul.Packed_MemRef_call1260.us.1
  %polly.access.Packed_MemRef_call1262.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us.1
  %_p_scalar_263.us.1 = load double, double* %polly.access.Packed_MemRef_call1262.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_266.us.1, %_p_scalar_263.us.1
  %239 = mul nuw nsw i64 %238, 480
  %240 = add nuw nsw i64 %239, %236
  %scevgep267.us.1 = getelementptr i8, i8* %call2, i64 %240
  %scevgep267268.us.1 = bitcast i8* %scevgep267.us.1 to double*
  %_p_scalar_269.us.1 = load double, double* %scevgep267268.us.1, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_273.us.1, %_p_scalar_269.us.1
  %241 = shl i64 %238, 3
  %242 = add nuw nsw i64 %241, %234
  %scevgep274.us.1 = getelementptr i8, i8* %call, i64 %242
  %scevgep274275.us.1 = bitcast i8* %scevgep274.us.1 to double*
  %_p_scalar_276.us.1 = load double, double* %scevgep274275.us.1, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_276.us.1
  store double %p_add42.i118.us.1, double* %scevgep274275.us.1, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next258.us.1 = add nuw nsw i64 %polly.indvar257.us.1, 1
  %exitcond984.1.not = icmp eq i64 %polly.indvar257.us.1, %smin983.1
  br i1 %exitcond984.1.not, label %polly.loop_exit255.loopexit.us.1, label %polly.loop_header253.us.1

polly.loop_exit255.loopexit.us.1:                 ; preds = %polly.loop_header253.us.1
  %polly.indvar_next250.us.1 = add nuw nsw i64 %polly.indvar249.us.1, 1
  %exitcond985.1.not = icmp eq i64 %polly.indvar_next250.us.1, 10
  br i1 %exitcond985.1.not, label %polly.loop_exit248.1, label %polly.loop_header246.us.1

polly.loop_exit248.1:                             ; preds = %polly.loop_exit255.loopexit.us.1, %polly.loop_header217.split.1, %polly.loop_header246.preheader.1
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %indvars.iv.next980.1 = add nsw i64 %indvars.iv979.1, 1
  %exitcond986.1.not = icmp eq i64 %polly.indvar_next221.1, 4
  br i1 %exitcond986.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.1

polly.loop_exit219.1:                             ; preds = %polly.loop_exit248.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %indvars.iv.next978.1 = add nsw i64 %indvars.iv977.1, -16
  %exitcond987.1.not = icmp eq i64 %polly.indvar214.1, %97
  br i1 %exitcond987.1.not, label %polly.loop_exit213.1, label %polly.loop_header211.1

polly.loop_exit213.1:                             ; preds = %polly.loop_exit219.1
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %exitcond988.not = icmp eq i64 %polly.indvar_next203, 20
  br i1 %exitcond988.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header394.1:                           ; preds = %polly.loop_exit402, %polly.loop_exit402.1
  %indvars.iv994.1 = phi i64 [ %indvars.iv.next995.1, %polly.loop_exit402.1 ], [ %indvars.iv992, %polly.loop_exit402 ]
  %polly.indvar397.1 = phi i64 [ %polly.indvar_next398.1, %polly.loop_exit402.1 ], [ 0, %polly.loop_exit402 ]
  %243 = shl nsw i64 %polly.indvar397.1, 4
  %244 = sub nsw i64 %124, %243
  %245 = add nuw nsw i64 %243, 16
  br label %polly.loop_header400.1

polly.loop_header400.1:                           ; preds = %polly.loop_exit437.1, %polly.loop_header394.1
  %indvars.iv996.1 = phi i64 [ %indvars.iv.next997.1, %polly.loop_exit437.1 ], [ %indvars.iv994.1, %polly.loop_header394.1 ]
  %polly.indvar403.1 = phi i64 [ %polly.indvar_next404.1, %polly.loop_exit437.1 ], [ 0, %polly.loop_header394.1 ]
  %smin1001.1 = call i64 @llvm.smin.i64(i64 %indvars.iv996.1, i64 15)
  %246 = add nsw i64 %polly.indvar403.1, %244
  %polly.loop_guard416.11112 = icmp sgt i64 %246, -1
  %247 = add nuw nsw i64 %polly.indvar403.1, %124
  %.not861.1 = icmp ult i64 %247, %245
  %polly.access.mul.call1429.1 = mul nuw nsw i64 %247, 60
  %248 = add nuw i64 %polly.access.mul.call1429.1, 50
  br i1 %polly.loop_guard416.11112, label %polly.loop_header406.us.1, label %polly.loop_header400.split.1

polly.loop_header400.split.1:                     ; preds = %polly.loop_header400.1
  br i1 %.not861.1, label %polly.loop_exit437.1, label %vector.ph1481

vector.ph1481:                                    ; preds = %polly.loop_header400.split.1
  %broadcast.splatinsert1488 = insertelement <4 x i64> poison, i64 %246, i32 0
  %broadcast.splat1489 = shufflevector <4 x i64> %broadcast.splatinsert1488, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1480

vector.body1480:                                  ; preds = %pred.store.continue1497, %vector.ph1481
  %index1482 = phi i64 [ 0, %vector.ph1481 ], [ %index.next1483, %pred.store.continue1497 ]
  %vec.ind1485 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1481 ], [ %vec.ind.next1486, %pred.store.continue1497 ]
  %249 = icmp ult <4 x i64> %vec.ind1485, <i64 10, i64 10, i64 10, i64 10>
  %250 = add nuw nsw i64 %248, %index1482
  %251 = getelementptr double, double* %polly.access.cast.call1659, i64 %250
  %252 = bitcast double* %251 to <4 x double>*
  %wide.masked.load1487 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %252, i32 8, <4 x i1> %249, <4 x double> poison), !alias.scope !77, !noalias !82
  %253 = mul nuw nsw <4 x i64> %vec.ind1485, <i64 80, i64 80, i64 80, i64 80>
  %254 = add nsw <4 x i64> %253, %broadcast.splat1489
  %255 = extractelement <4 x i1> %249, i32 0
  br i1 %255, label %pred.store.if1490, label %pred.store.continue1491

pred.store.if1490:                                ; preds = %vector.body1480
  %256 = extractelement <4 x i64> %254, i32 0
  %257 = getelementptr double, double* %Packed_MemRef_call1282, i64 %256
  %258 = extractelement <4 x double> %wide.masked.load1487, i32 0
  store double %258, double* %257, align 8
  br label %pred.store.continue1491

pred.store.continue1491:                          ; preds = %pred.store.if1490, %vector.body1480
  %259 = extractelement <4 x i1> %249, i32 1
  br i1 %259, label %pred.store.if1492, label %pred.store.continue1493

pred.store.if1492:                                ; preds = %pred.store.continue1491
  %260 = extractelement <4 x i64> %254, i32 1
  %261 = getelementptr double, double* %Packed_MemRef_call1282, i64 %260
  %262 = extractelement <4 x double> %wide.masked.load1487, i32 1
  store double %262, double* %261, align 8
  br label %pred.store.continue1493

pred.store.continue1493:                          ; preds = %pred.store.if1492, %pred.store.continue1491
  %263 = extractelement <4 x i1> %249, i32 2
  br i1 %263, label %pred.store.if1494, label %pred.store.continue1495

pred.store.if1494:                                ; preds = %pred.store.continue1493
  %264 = extractelement <4 x i64> %254, i32 2
  %265 = getelementptr double, double* %Packed_MemRef_call1282, i64 %264
  %266 = extractelement <4 x double> %wide.masked.load1487, i32 2
  store double %266, double* %265, align 8
  br label %pred.store.continue1495

pred.store.continue1495:                          ; preds = %pred.store.if1494, %pred.store.continue1493
  %267 = extractelement <4 x i1> %249, i32 3
  br i1 %267, label %pred.store.if1496, label %pred.store.continue1497

pred.store.if1496:                                ; preds = %pred.store.continue1495
  %268 = extractelement <4 x i64> %254, i32 3
  %269 = getelementptr double, double* %Packed_MemRef_call1282, i64 %268
  %270 = extractelement <4 x double> %wide.masked.load1487, i32 3
  store double %270, double* %269, align 8
  br label %pred.store.continue1497

pred.store.continue1497:                          ; preds = %pred.store.if1496, %pred.store.continue1495
  %index.next1483 = add i64 %index1482, 4
  %vec.ind.next1486 = add <4 x i64> %vec.ind1485, <i64 4, i64 4, i64 4, i64 4>
  %271 = icmp eq i64 %index.next1483, 12
  br i1 %271, label %polly.loop_header435.preheader.1, label %vector.body1480, !llvm.loop !105

polly.loop_header406.us.1:                        ; preds = %polly.loop_header400.1, %polly.merge425.us.1
  %polly.indvar409.us.1 = phi i64 [ %polly.indvar_next410.us.1, %polly.merge425.us.1 ], [ 0, %polly.loop_header400.1 ]
  %272 = add nuw nsw i64 %polly.indvar409.us.1, 50
  %polly.access.mul.Packed_MemRef_call1282.us.1 = mul nuw nsw i64 %polly.indvar409.us.1, 80
  br label %polly.loop_header413.us.1

polly.loop_header413.us.1:                        ; preds = %polly.loop_header413.us.1, %polly.loop_header406.us.1
  %polly.indvar417.us.1 = phi i64 [ %polly.indvar_next418.us.1, %polly.loop_header413.us.1 ], [ 0, %polly.loop_header406.us.1 ]
  %273 = add nuw nsw i64 %polly.indvar417.us.1, %243
  %polly.access.mul.call1421.us.1 = mul nuw nsw i64 %273, 60
  %polly.access.add.call1422.us.1 = add nuw nsw i64 %272, %polly.access.mul.call1421.us.1
  %polly.access.call1423.us.1 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1422.us.1
  %polly.access.call1423.load.us.1 = load double, double* %polly.access.call1423.us.1, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1282.us.1 = add nuw nsw i64 %polly.indvar417.us.1, %polly.access.mul.Packed_MemRef_call1282.us.1
  %polly.access.Packed_MemRef_call1282.us.1 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282.us.1
  store double %polly.access.call1423.load.us.1, double* %polly.access.Packed_MemRef_call1282.us.1, align 8
  %polly.indvar_next418.us.1 = add nuw nsw i64 %polly.indvar417.us.1, 1
  %exitcond999.1.not = icmp eq i64 %polly.indvar417.us.1, %smin1001.1
  br i1 %exitcond999.1.not, label %polly.cond424.loopexit.us.1, label %polly.loop_header413.us.1

polly.cond424.loopexit.us.1:                      ; preds = %polly.loop_header413.us.1
  br i1 %.not861.1, label %polly.merge425.us.1, label %polly.then426.us.1

polly.then426.us.1:                               ; preds = %polly.cond424.loopexit.us.1
  %polly.access.add.call1430.us.1 = add nuw nsw i64 %248, %polly.indvar409.us.1
  %polly.access.call1431.us.1 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1430.us.1
  %polly.access.call1431.load.us.1 = load double, double* %polly.access.call1431.us.1, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1282433.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1282.us.1, %246
  %polly.access.Packed_MemRef_call1282434.us.1 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282433.us.1
  store double %polly.access.call1431.load.us.1, double* %polly.access.Packed_MemRef_call1282434.us.1, align 8
  br label %polly.merge425.us.1

polly.merge425.us.1:                              ; preds = %polly.then426.us.1, %polly.cond424.loopexit.us.1
  %polly.indvar_next410.us.1 = add nuw nsw i64 %polly.indvar409.us.1, 1
  %exitcond1000.1.not = icmp eq i64 %polly.indvar_next410.us.1, 10
  br i1 %exitcond1000.1.not, label %polly.loop_header435.preheader.1, label %polly.loop_header406.us.1

polly.loop_header435.preheader.1:                 ; preds = %pred.store.continue1497, %polly.merge425.us.1
  %274 = mul nuw nsw i64 %247, 480
  %275 = mul nuw nsw i64 %247, 640
  br i1 %polly.loop_guard416.11112, label %polly.loop_header435.us.1, label %polly.loop_exit437.1

polly.loop_header435.us.1:                        ; preds = %polly.loop_header435.preheader.1, %polly.loop_exit444.loopexit.us.1
  %polly.indvar438.us.1 = phi i64 [ %polly.indvar_next439.us.1, %polly.loop_exit444.loopexit.us.1 ], [ 0, %polly.loop_header435.preheader.1 ]
  %polly.access.mul.Packed_MemRef_call1282449.us.1 = mul nuw nsw i64 %polly.indvar438.us.1, 80
  %276 = shl i64 %polly.indvar438.us.1, 3
  %277 = add i64 %276, 400
  %278 = add i64 %277, %274
  %scevgep453.us.1 = getelementptr i8, i8* %call2, i64 %278
  %scevgep453454.us.1 = bitcast i8* %scevgep453.us.1 to double*
  %_p_scalar_455.us.1 = load double, double* %scevgep453454.us.1, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1282460.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1282449.us.1, %246
  %polly.access.Packed_MemRef_call1282461.us.1 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282460.us.1
  %_p_scalar_462.us.1 = load double, double* %polly.access.Packed_MemRef_call1282461.us.1, align 8
  br label %polly.loop_header442.us.1

polly.loop_header442.us.1:                        ; preds = %polly.loop_header442.us.1, %polly.loop_header435.us.1
  %polly.indvar446.us.1 = phi i64 [ %polly.indvar_next447.us.1, %polly.loop_header442.us.1 ], [ 0, %polly.loop_header435.us.1 ]
  %279 = add nuw nsw i64 %polly.indvar446.us.1, %243
  %polly.access.add.Packed_MemRef_call1282450.us.1 = add nuw nsw i64 %polly.indvar446.us.1, %polly.access.mul.Packed_MemRef_call1282449.us.1
  %polly.access.Packed_MemRef_call1282451.us.1 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282450.us.1
  %_p_scalar_452.us.1 = load double, double* %polly.access.Packed_MemRef_call1282451.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_455.us.1, %_p_scalar_452.us.1
  %280 = mul nuw nsw i64 %279, 480
  %281 = add nuw nsw i64 %280, %277
  %scevgep456.us.1 = getelementptr i8, i8* %call2, i64 %281
  %scevgep456457.us.1 = bitcast i8* %scevgep456.us.1 to double*
  %_p_scalar_458.us.1 = load double, double* %scevgep456457.us.1, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_462.us.1, %_p_scalar_458.us.1
  %282 = shl i64 %279, 3
  %283 = add nuw nsw i64 %282, %275
  %scevgep463.us.1 = getelementptr i8, i8* %call, i64 %283
  %scevgep463464.us.1 = bitcast i8* %scevgep463.us.1 to double*
  %_p_scalar_465.us.1 = load double, double* %scevgep463464.us.1, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_465.us.1
  store double %p_add42.i79.us.1, double* %scevgep463464.us.1, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next447.us.1 = add nuw nsw i64 %polly.indvar446.us.1, 1
  %exitcond1002.1.not = icmp eq i64 %polly.indvar446.us.1, %smin1001.1
  br i1 %exitcond1002.1.not, label %polly.loop_exit444.loopexit.us.1, label %polly.loop_header442.us.1

polly.loop_exit444.loopexit.us.1:                 ; preds = %polly.loop_header442.us.1
  %polly.indvar_next439.us.1 = add nuw nsw i64 %polly.indvar438.us.1, 1
  %exitcond1003.1.not = icmp eq i64 %polly.indvar_next439.us.1, 10
  br i1 %exitcond1003.1.not, label %polly.loop_exit437.1, label %polly.loop_header435.us.1

polly.loop_exit437.1:                             ; preds = %polly.loop_exit444.loopexit.us.1, %polly.loop_header400.split.1, %polly.loop_header435.preheader.1
  %polly.indvar_next404.1 = add nuw nsw i64 %polly.indvar403.1, 1
  %indvars.iv.next997.1 = add nsw i64 %indvars.iv996.1, 1
  %exitcond1004.1.not = icmp eq i64 %polly.indvar_next404.1, 4
  br i1 %exitcond1004.1.not, label %polly.loop_exit402.1, label %polly.loop_header400.1

polly.loop_exit402.1:                             ; preds = %polly.loop_exit437.1
  %polly.indvar_next398.1 = add nuw nsw i64 %polly.indvar397.1, 1
  %indvars.iv.next995.1 = add nsw i64 %indvars.iv994.1, -16
  %exitcond1005.1.not = icmp eq i64 %polly.indvar397.1, %123
  br i1 %exitcond1005.1.not, label %polly.loop_exit396.1, label %polly.loop_header394.1

polly.loop_exit396.1:                             ; preds = %polly.loop_exit402.1
  %polly.indvar_next385 = add nuw nsw i64 %polly.indvar384, 1
  %indvars.iv.next993 = add nuw nsw i64 %indvars.iv992, 4
  %exitcond1006.not = icmp eq i64 %polly.indvar_next385, 20
  br i1 %exitcond1006.not, label %polly.exiting280, label %polly.loop_header381

polly.loop_header583.1:                           ; preds = %polly.loop_exit591, %polly.loop_exit591.1
  %indvars.iv1012.1 = phi i64 [ %indvars.iv.next1013.1, %polly.loop_exit591.1 ], [ %indvars.iv1010, %polly.loop_exit591 ]
  %polly.indvar586.1 = phi i64 [ %polly.indvar_next587.1, %polly.loop_exit591.1 ], [ 0, %polly.loop_exit591 ]
  %284 = shl nsw i64 %polly.indvar586.1, 4
  %285 = sub nsw i64 %150, %284
  %286 = add nuw nsw i64 %284, 16
  br label %polly.loop_header589.1

polly.loop_header589.1:                           ; preds = %polly.loop_exit626.1, %polly.loop_header583.1
  %indvars.iv1014.1 = phi i64 [ %indvars.iv.next1015.1, %polly.loop_exit626.1 ], [ %indvars.iv1012.1, %polly.loop_header583.1 ]
  %polly.indvar592.1 = phi i64 [ %polly.indvar_next593.1, %polly.loop_exit626.1 ], [ 0, %polly.loop_header583.1 ]
  %smin1019.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1014.1, i64 15)
  %287 = add nsw i64 %polly.indvar592.1, %285
  %polly.loop_guard605.11114 = icmp sgt i64 %287, -1
  %288 = add nuw nsw i64 %polly.indvar592.1, %150
  %.not862.1 = icmp ult i64 %288, %286
  %polly.access.mul.call1618.1 = mul nuw nsw i64 %288, 60
  %289 = add nuw i64 %polly.access.mul.call1618.1, 50
  br i1 %polly.loop_guard605.11114, label %polly.loop_header595.us.1, label %polly.loop_header589.split.1

polly.loop_header589.split.1:                     ; preds = %polly.loop_header589.1
  br i1 %.not862.1, label %polly.loop_exit626.1, label %vector.ph1438

vector.ph1438:                                    ; preds = %polly.loop_header589.split.1
  %broadcast.splatinsert1444 = insertelement <4 x i64> poison, i64 %287, i32 0
  %broadcast.splat1445 = shufflevector <4 x i64> %broadcast.splatinsert1444, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1437

vector.body1437:                                  ; preds = %pred.store.continue1451, %vector.ph1438
  %index1439 = phi i64 [ 0, %vector.ph1438 ], [ %index.next1440, %pred.store.continue1451 ]
  %vec.ind1442 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1438 ], [ %vec.ind.next1443, %pred.store.continue1451 ]
  %290 = icmp ult <4 x i64> %vec.ind1442, <i64 10, i64 10, i64 10, i64 10>
  %291 = add nuw nsw i64 %289, %index1439
  %292 = getelementptr double, double* %polly.access.cast.call1659, i64 %291
  %293 = bitcast double* %292 to <4 x double>*
  %wide.masked.load = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %293, i32 8, <4 x i1> %290, <4 x double> poison), !alias.scope !87, !noalias !92
  %294 = mul nuw nsw <4 x i64> %vec.ind1442, <i64 80, i64 80, i64 80, i64 80>
  %295 = add nsw <4 x i64> %294, %broadcast.splat1445
  %296 = extractelement <4 x i1> %290, i32 0
  br i1 %296, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body1437
  %297 = extractelement <4 x i64> %295, i32 0
  %298 = getelementptr double, double* %Packed_MemRef_call1471, i64 %297
  %299 = extractelement <4 x double> %wide.masked.load, i32 0
  store double %299, double* %298, align 8
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body1437
  %300 = extractelement <4 x i1> %290, i32 1
  br i1 %300, label %pred.store.if1446, label %pred.store.continue1447

pred.store.if1446:                                ; preds = %pred.store.continue
  %301 = extractelement <4 x i64> %295, i32 1
  %302 = getelementptr double, double* %Packed_MemRef_call1471, i64 %301
  %303 = extractelement <4 x double> %wide.masked.load, i32 1
  store double %303, double* %302, align 8
  br label %pred.store.continue1447

pred.store.continue1447:                          ; preds = %pred.store.if1446, %pred.store.continue
  %304 = extractelement <4 x i1> %290, i32 2
  br i1 %304, label %pred.store.if1448, label %pred.store.continue1449

pred.store.if1448:                                ; preds = %pred.store.continue1447
  %305 = extractelement <4 x i64> %295, i32 2
  %306 = getelementptr double, double* %Packed_MemRef_call1471, i64 %305
  %307 = extractelement <4 x double> %wide.masked.load, i32 2
  store double %307, double* %306, align 8
  br label %pred.store.continue1449

pred.store.continue1449:                          ; preds = %pred.store.if1448, %pred.store.continue1447
  %308 = extractelement <4 x i1> %290, i32 3
  br i1 %308, label %pred.store.if1450, label %pred.store.continue1451

pred.store.if1450:                                ; preds = %pred.store.continue1449
  %309 = extractelement <4 x i64> %295, i32 3
  %310 = getelementptr double, double* %Packed_MemRef_call1471, i64 %309
  %311 = extractelement <4 x double> %wide.masked.load, i32 3
  store double %311, double* %310, align 8
  br label %pred.store.continue1451

pred.store.continue1451:                          ; preds = %pred.store.if1450, %pred.store.continue1449
  %index.next1440 = add i64 %index1439, 4
  %vec.ind.next1443 = add <4 x i64> %vec.ind1442, <i64 4, i64 4, i64 4, i64 4>
  %312 = icmp eq i64 %index.next1440, 12
  br i1 %312, label %polly.loop_header624.preheader.1, label %vector.body1437, !llvm.loop !106

polly.loop_header595.us.1:                        ; preds = %polly.loop_header589.1, %polly.merge614.us.1
  %polly.indvar598.us.1 = phi i64 [ %polly.indvar_next599.us.1, %polly.merge614.us.1 ], [ 0, %polly.loop_header589.1 ]
  %313 = add nuw nsw i64 %polly.indvar598.us.1, 50
  %polly.access.mul.Packed_MemRef_call1471.us.1 = mul nuw nsw i64 %polly.indvar598.us.1, 80
  br label %polly.loop_header602.us.1

polly.loop_header602.us.1:                        ; preds = %polly.loop_header602.us.1, %polly.loop_header595.us.1
  %polly.indvar606.us.1 = phi i64 [ %polly.indvar_next607.us.1, %polly.loop_header602.us.1 ], [ 0, %polly.loop_header595.us.1 ]
  %314 = add nuw nsw i64 %polly.indvar606.us.1, %284
  %polly.access.mul.call1610.us.1 = mul nuw nsw i64 %314, 60
  %polly.access.add.call1611.us.1 = add nuw nsw i64 %313, %polly.access.mul.call1610.us.1
  %polly.access.call1612.us.1 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1611.us.1
  %polly.access.call1612.load.us.1 = load double, double* %polly.access.call1612.us.1, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1471.us.1 = add nuw nsw i64 %polly.indvar606.us.1, %polly.access.mul.Packed_MemRef_call1471.us.1
  %polly.access.Packed_MemRef_call1471.us.1 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471.us.1
  store double %polly.access.call1612.load.us.1, double* %polly.access.Packed_MemRef_call1471.us.1, align 8
  %polly.indvar_next607.us.1 = add nuw nsw i64 %polly.indvar606.us.1, 1
  %exitcond1017.1.not = icmp eq i64 %polly.indvar606.us.1, %smin1019.1
  br i1 %exitcond1017.1.not, label %polly.cond613.loopexit.us.1, label %polly.loop_header602.us.1

polly.cond613.loopexit.us.1:                      ; preds = %polly.loop_header602.us.1
  br i1 %.not862.1, label %polly.merge614.us.1, label %polly.then615.us.1

polly.then615.us.1:                               ; preds = %polly.cond613.loopexit.us.1
  %polly.access.add.call1619.us.1 = add nuw nsw i64 %289, %polly.indvar598.us.1
  %polly.access.call1620.us.1 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1619.us.1
  %polly.access.call1620.load.us.1 = load double, double* %polly.access.call1620.us.1, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1471622.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1471.us.1, %287
  %polly.access.Packed_MemRef_call1471623.us.1 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471622.us.1
  store double %polly.access.call1620.load.us.1, double* %polly.access.Packed_MemRef_call1471623.us.1, align 8
  br label %polly.merge614.us.1

polly.merge614.us.1:                              ; preds = %polly.then615.us.1, %polly.cond613.loopexit.us.1
  %polly.indvar_next599.us.1 = add nuw nsw i64 %polly.indvar598.us.1, 1
  %exitcond1018.1.not = icmp eq i64 %polly.indvar_next599.us.1, 10
  br i1 %exitcond1018.1.not, label %polly.loop_header624.preheader.1, label %polly.loop_header595.us.1

polly.loop_header624.preheader.1:                 ; preds = %pred.store.continue1451, %polly.merge614.us.1
  %315 = mul nuw nsw i64 %288, 480
  %316 = mul nuw nsw i64 %288, 640
  br i1 %polly.loop_guard605.11114, label %polly.loop_header624.us.1, label %polly.loop_exit626.1

polly.loop_header624.us.1:                        ; preds = %polly.loop_header624.preheader.1, %polly.loop_exit633.loopexit.us.1
  %polly.indvar627.us.1 = phi i64 [ %polly.indvar_next628.us.1, %polly.loop_exit633.loopexit.us.1 ], [ 0, %polly.loop_header624.preheader.1 ]
  %polly.access.mul.Packed_MemRef_call1471638.us.1 = mul nuw nsw i64 %polly.indvar627.us.1, 80
  %317 = shl i64 %polly.indvar627.us.1, 3
  %318 = add i64 %317, 400
  %319 = add i64 %318, %315
  %scevgep642.us.1 = getelementptr i8, i8* %call2, i64 %319
  %scevgep642643.us.1 = bitcast i8* %scevgep642.us.1 to double*
  %_p_scalar_644.us.1 = load double, double* %scevgep642643.us.1, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1471649.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1471638.us.1, %287
  %polly.access.Packed_MemRef_call1471650.us.1 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471649.us.1
  %_p_scalar_651.us.1 = load double, double* %polly.access.Packed_MemRef_call1471650.us.1, align 8
  br label %polly.loop_header631.us.1

polly.loop_header631.us.1:                        ; preds = %polly.loop_header631.us.1, %polly.loop_header624.us.1
  %polly.indvar635.us.1 = phi i64 [ %polly.indvar_next636.us.1, %polly.loop_header631.us.1 ], [ 0, %polly.loop_header624.us.1 ]
  %320 = add nuw nsw i64 %polly.indvar635.us.1, %284
  %polly.access.add.Packed_MemRef_call1471639.us.1 = add nuw nsw i64 %polly.indvar635.us.1, %polly.access.mul.Packed_MemRef_call1471638.us.1
  %polly.access.Packed_MemRef_call1471640.us.1 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471639.us.1
  %_p_scalar_641.us.1 = load double, double* %polly.access.Packed_MemRef_call1471640.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_644.us.1, %_p_scalar_641.us.1
  %321 = mul nuw nsw i64 %320, 480
  %322 = add nuw nsw i64 %321, %318
  %scevgep645.us.1 = getelementptr i8, i8* %call2, i64 %322
  %scevgep645646.us.1 = bitcast i8* %scevgep645.us.1 to double*
  %_p_scalar_647.us.1 = load double, double* %scevgep645646.us.1, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_651.us.1, %_p_scalar_647.us.1
  %323 = shl i64 %320, 3
  %324 = add nuw nsw i64 %323, %316
  %scevgep652.us.1 = getelementptr i8, i8* %call, i64 %324
  %scevgep652653.us.1 = bitcast i8* %scevgep652.us.1 to double*
  %_p_scalar_654.us.1 = load double, double* %scevgep652653.us.1, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_654.us.1
  store double %p_add42.i.us.1, double* %scevgep652653.us.1, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next636.us.1 = add nuw nsw i64 %polly.indvar635.us.1, 1
  %exitcond1020.1.not = icmp eq i64 %polly.indvar635.us.1, %smin1019.1
  br i1 %exitcond1020.1.not, label %polly.loop_exit633.loopexit.us.1, label %polly.loop_header631.us.1

polly.loop_exit633.loopexit.us.1:                 ; preds = %polly.loop_header631.us.1
  %polly.indvar_next628.us.1 = add nuw nsw i64 %polly.indvar627.us.1, 1
  %exitcond1021.1.not = icmp eq i64 %polly.indvar_next628.us.1, 10
  br i1 %exitcond1021.1.not, label %polly.loop_exit626.1, label %polly.loop_header624.us.1

polly.loop_exit626.1:                             ; preds = %polly.loop_exit633.loopexit.us.1, %polly.loop_header589.split.1, %polly.loop_header624.preheader.1
  %polly.indvar_next593.1 = add nuw nsw i64 %polly.indvar592.1, 1
  %indvars.iv.next1015.1 = add nsw i64 %indvars.iv1014.1, 1
  %exitcond1022.1.not = icmp eq i64 %polly.indvar_next593.1, 4
  br i1 %exitcond1022.1.not, label %polly.loop_exit591.1, label %polly.loop_header589.1

polly.loop_exit591.1:                             ; preds = %polly.loop_exit626.1
  %polly.indvar_next587.1 = add nuw nsw i64 %polly.indvar586.1, 1
  %indvars.iv.next1013.1 = add nsw i64 %indvars.iv1012.1, -16
  %exitcond1023.1.not = icmp eq i64 %polly.indvar586.1, %149
  br i1 %exitcond1023.1.not, label %polly.loop_exit585.1, label %polly.loop_header583.1

polly.loop_exit585.1:                             ; preds = %polly.loop_exit591.1
  %polly.indvar_next574 = add nuw nsw i64 %polly.indvar573, 1
  %indvars.iv.next1011 = add nuw nsw i64 %indvars.iv1010, 4
  %exitcond1024.not = icmp eq i64 %polly.indvar_next574, 20
  br i1 %exitcond1024.not, label %polly.exiting469, label %polly.loop_header570

polly.loop_header846.1:                           ; preds = %polly.loop_exit854, %polly.loop_exit854.1
  %polly.indvar849.1 = phi i64 [ %polly.indvar_next850.1, %polly.loop_exit854.1 ], [ 0, %polly.loop_exit854 ]
  %325 = mul nuw nsw i64 %polly.indvar849.1, 480
  %326 = trunc i64 %polly.indvar849.1 to i32
  %broadcast.splatinsert1361 = insertelement <4 x i32> poison, i32 %326, i32 0
  %broadcast.splat1362 = shufflevector <4 x i32> %broadcast.splatinsert1361, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1353

vector.body1353:                                  ; preds = %vector.body1353, %polly.loop_header846.1
  %index1355 = phi i64 [ 0, %polly.loop_header846.1 ], [ %index.next1356, %vector.body1353 ]
  %vec.ind1359 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header846.1 ], [ %vec.ind.next1360, %vector.body1353 ]
  %327 = add nuw nsw <4 x i64> %vec.ind1359, <i64 32, i64 32, i64 32, i64 32>
  %328 = trunc <4 x i64> %327 to <4 x i32>
  %329 = mul <4 x i32> %broadcast.splat1362, %328
  %330 = add <4 x i32> %329, <i32 1, i32 1, i32 1, i32 1>
  %331 = urem <4 x i32> %330, <i32 80, i32 80, i32 80, i32 80>
  %332 = sitofp <4 x i32> %331 to <4 x double>
  %333 = fmul fast <4 x double> %332, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %334 = extractelement <4 x i64> %327, i32 0
  %335 = shl i64 %334, 3
  %336 = add i64 %335, %325
  %337 = getelementptr i8, i8* %call1, i64 %336
  %338 = bitcast i8* %337 to <4 x double>*
  store <4 x double> %333, <4 x double>* %338, align 8, !alias.scope !97, !noalias !102
  %index.next1356 = add i64 %index1355, 4
  %vec.ind.next1360 = add <4 x i64> %vec.ind1359, <i64 4, i64 4, i64 4, i64 4>
  %339 = icmp eq i64 %index.next1356, 28
  br i1 %339, label %polly.loop_exit854.1, label %vector.body1353, !llvm.loop !107

polly.loop_exit854.1:                             ; preds = %vector.body1353
  %polly.indvar_next850.1 = add nuw nsw i64 %polly.indvar849.1, 1
  %exitcond1031.1.not = icmp eq i64 %polly.indvar_next850.1, 32
  br i1 %exitcond1031.1.not, label %polly.loop_header846.11054, label %polly.loop_header846.1

polly.loop_header846.11054:                       ; preds = %polly.loop_exit854.1, %polly.loop_exit854.11065
  %polly.indvar849.11053 = phi i64 [ %polly.indvar_next850.11063, %polly.loop_exit854.11065 ], [ 0, %polly.loop_exit854.1 ]
  %340 = add nuw nsw i64 %polly.indvar849.11053, 32
  %341 = mul nuw nsw i64 %340, 480
  %342 = trunc i64 %340 to i32
  %broadcast.splatinsert1375 = insertelement <4 x i32> poison, i32 %342, i32 0
  %broadcast.splat1376 = shufflevector <4 x i32> %broadcast.splatinsert1375, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1365

vector.body1365:                                  ; preds = %vector.body1365, %polly.loop_header846.11054
  %index1367 = phi i64 [ 0, %polly.loop_header846.11054 ], [ %index.next1368, %vector.body1365 ]
  %vec.ind1373 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header846.11054 ], [ %vec.ind.next1374, %vector.body1365 ]
  %343 = mul <4 x i32> %vec.ind1373, %broadcast.splat1376
  %344 = add <4 x i32> %343, <i32 1, i32 1, i32 1, i32 1>
  %345 = urem <4 x i32> %344, <i32 80, i32 80, i32 80, i32 80>
  %346 = sitofp <4 x i32> %345 to <4 x double>
  %347 = fmul fast <4 x double> %346, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %348 = shl i64 %index1367, 3
  %349 = add i64 %348, %341
  %350 = getelementptr i8, i8* %call1, i64 %349
  %351 = bitcast i8* %350 to <4 x double>*
  store <4 x double> %347, <4 x double>* %351, align 8, !alias.scope !97, !noalias !102
  %index.next1368 = add i64 %index1367, 4
  %vec.ind.next1374 = add <4 x i32> %vec.ind1373, <i32 4, i32 4, i32 4, i32 4>
  %352 = icmp eq i64 %index.next1368, 32
  br i1 %352, label %polly.loop_exit854.11065, label %vector.body1365, !llvm.loop !108

polly.loop_exit854.11065:                         ; preds = %vector.body1365
  %polly.indvar_next850.11063 = add nuw nsw i64 %polly.indvar849.11053, 1
  %exitcond1031.11064.not = icmp eq i64 %polly.indvar_next850.11063, 32
  br i1 %exitcond1031.11064.not, label %polly.loop_header846.1.1, label %polly.loop_header846.11054

polly.loop_header846.1.1:                         ; preds = %polly.loop_exit854.11065, %polly.loop_exit854.1.1
  %polly.indvar849.1.1 = phi i64 [ %polly.indvar_next850.1.1, %polly.loop_exit854.1.1 ], [ 0, %polly.loop_exit854.11065 ]
  %353 = add nuw nsw i64 %polly.indvar849.1.1, 32
  %354 = mul nuw nsw i64 %353, 480
  %355 = trunc i64 %353 to i32
  %broadcast.splatinsert1387 = insertelement <4 x i32> poison, i32 %355, i32 0
  %broadcast.splat1388 = shufflevector <4 x i32> %broadcast.splatinsert1387, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1379

vector.body1379:                                  ; preds = %vector.body1379, %polly.loop_header846.1.1
  %index1381 = phi i64 [ 0, %polly.loop_header846.1.1 ], [ %index.next1382, %vector.body1379 ]
  %vec.ind1385 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header846.1.1 ], [ %vec.ind.next1386, %vector.body1379 ]
  %356 = add nuw nsw <4 x i64> %vec.ind1385, <i64 32, i64 32, i64 32, i64 32>
  %357 = trunc <4 x i64> %356 to <4 x i32>
  %358 = mul <4 x i32> %broadcast.splat1388, %357
  %359 = add <4 x i32> %358, <i32 1, i32 1, i32 1, i32 1>
  %360 = urem <4 x i32> %359, <i32 80, i32 80, i32 80, i32 80>
  %361 = sitofp <4 x i32> %360 to <4 x double>
  %362 = fmul fast <4 x double> %361, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %363 = extractelement <4 x i64> %356, i32 0
  %364 = shl i64 %363, 3
  %365 = add i64 %364, %354
  %366 = getelementptr i8, i8* %call1, i64 %365
  %367 = bitcast i8* %366 to <4 x double>*
  store <4 x double> %362, <4 x double>* %367, align 8, !alias.scope !97, !noalias !102
  %index.next1382 = add i64 %index1381, 4
  %vec.ind.next1386 = add <4 x i64> %vec.ind1385, <i64 4, i64 4, i64 4, i64 4>
  %368 = icmp eq i64 %index.next1382, 28
  br i1 %368, label %polly.loop_exit854.1.1, label %vector.body1379, !llvm.loop !109

polly.loop_exit854.1.1:                           ; preds = %vector.body1379
  %polly.indvar_next850.1.1 = add nuw nsw i64 %polly.indvar849.1.1, 1
  %exitcond1031.1.1.not = icmp eq i64 %polly.indvar_next850.1.1, 32
  br i1 %exitcond1031.1.1.not, label %polly.loop_header846.2, label %polly.loop_header846.1.1

polly.loop_header846.2:                           ; preds = %polly.loop_exit854.1.1, %polly.loop_exit854.2
  %polly.indvar849.2 = phi i64 [ %polly.indvar_next850.2, %polly.loop_exit854.2 ], [ 0, %polly.loop_exit854.1.1 ]
  %369 = add nuw nsw i64 %polly.indvar849.2, 64
  %370 = mul nuw nsw i64 %369, 480
  %371 = trunc i64 %369 to i32
  %broadcast.splatinsert1401 = insertelement <4 x i32> poison, i32 %371, i32 0
  %broadcast.splat1402 = shufflevector <4 x i32> %broadcast.splatinsert1401, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1391

vector.body1391:                                  ; preds = %vector.body1391, %polly.loop_header846.2
  %index1393 = phi i64 [ 0, %polly.loop_header846.2 ], [ %index.next1394, %vector.body1391 ]
  %vec.ind1399 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header846.2 ], [ %vec.ind.next1400, %vector.body1391 ]
  %372 = mul <4 x i32> %vec.ind1399, %broadcast.splat1402
  %373 = add <4 x i32> %372, <i32 1, i32 1, i32 1, i32 1>
  %374 = urem <4 x i32> %373, <i32 80, i32 80, i32 80, i32 80>
  %375 = sitofp <4 x i32> %374 to <4 x double>
  %376 = fmul fast <4 x double> %375, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %377 = shl i64 %index1393, 3
  %378 = add i64 %377, %370
  %379 = getelementptr i8, i8* %call1, i64 %378
  %380 = bitcast i8* %379 to <4 x double>*
  store <4 x double> %376, <4 x double>* %380, align 8, !alias.scope !97, !noalias !102
  %index.next1394 = add i64 %index1393, 4
  %vec.ind.next1400 = add <4 x i32> %vec.ind1399, <i32 4, i32 4, i32 4, i32 4>
  %381 = icmp eq i64 %index.next1394, 32
  br i1 %381, label %polly.loop_exit854.2, label %vector.body1391, !llvm.loop !110

polly.loop_exit854.2:                             ; preds = %vector.body1391
  %polly.indvar_next850.2 = add nuw nsw i64 %polly.indvar849.2, 1
  %exitcond1031.2.not = icmp eq i64 %polly.indvar_next850.2, 16
  br i1 %exitcond1031.2.not, label %polly.loop_header846.1.2, label %polly.loop_header846.2

polly.loop_header846.1.2:                         ; preds = %polly.loop_exit854.2, %polly.loop_exit854.1.2
  %polly.indvar849.1.2 = phi i64 [ %polly.indvar_next850.1.2, %polly.loop_exit854.1.2 ], [ 0, %polly.loop_exit854.2 ]
  %382 = add nuw nsw i64 %polly.indvar849.1.2, 64
  %383 = mul nuw nsw i64 %382, 480
  %384 = trunc i64 %382 to i32
  %broadcast.splatinsert1413 = insertelement <4 x i32> poison, i32 %384, i32 0
  %broadcast.splat1414 = shufflevector <4 x i32> %broadcast.splatinsert1413, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1405

vector.body1405:                                  ; preds = %vector.body1405, %polly.loop_header846.1.2
  %index1407 = phi i64 [ 0, %polly.loop_header846.1.2 ], [ %index.next1408, %vector.body1405 ]
  %vec.ind1411 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header846.1.2 ], [ %vec.ind.next1412, %vector.body1405 ]
  %385 = add nuw nsw <4 x i64> %vec.ind1411, <i64 32, i64 32, i64 32, i64 32>
  %386 = trunc <4 x i64> %385 to <4 x i32>
  %387 = mul <4 x i32> %broadcast.splat1414, %386
  %388 = add <4 x i32> %387, <i32 1, i32 1, i32 1, i32 1>
  %389 = urem <4 x i32> %388, <i32 80, i32 80, i32 80, i32 80>
  %390 = sitofp <4 x i32> %389 to <4 x double>
  %391 = fmul fast <4 x double> %390, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %392 = extractelement <4 x i64> %385, i32 0
  %393 = shl i64 %392, 3
  %394 = add i64 %393, %383
  %395 = getelementptr i8, i8* %call1, i64 %394
  %396 = bitcast i8* %395 to <4 x double>*
  store <4 x double> %391, <4 x double>* %396, align 8, !alias.scope !97, !noalias !102
  %index.next1408 = add i64 %index1407, 4
  %vec.ind.next1412 = add <4 x i64> %vec.ind1411, <i64 4, i64 4, i64 4, i64 4>
  %397 = icmp eq i64 %index.next1408, 28
  br i1 %397, label %polly.loop_exit854.1.2, label %vector.body1405, !llvm.loop !111

polly.loop_exit854.1.2:                           ; preds = %vector.body1405
  %polly.indvar_next850.1.2 = add nuw nsw i64 %polly.indvar849.1.2, 1
  %exitcond1031.1.2.not = icmp eq i64 %polly.indvar_next850.1.2, 16
  br i1 %exitcond1031.1.2.not, label %init_array.exit, label %polly.loop_header846.1.2

polly.loop_header820.1:                           ; preds = %polly.loop_exit828, %polly.loop_exit828.1
  %polly.indvar823.1 = phi i64 [ %polly.indvar_next824.1, %polly.loop_exit828.1 ], [ 0, %polly.loop_exit828 ]
  %398 = mul nuw nsw i64 %polly.indvar823.1, 480
  %399 = trunc i64 %polly.indvar823.1 to i32
  %broadcast.splatinsert1283 = insertelement <4 x i32> poison, i32 %399, i32 0
  %broadcast.splat1284 = shufflevector <4 x i32> %broadcast.splatinsert1283, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1275

vector.body1275:                                  ; preds = %vector.body1275, %polly.loop_header820.1
  %index1277 = phi i64 [ 0, %polly.loop_header820.1 ], [ %index.next1278, %vector.body1275 ]
  %vec.ind1281 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header820.1 ], [ %vec.ind.next1282, %vector.body1275 ]
  %400 = add nuw nsw <4 x i64> %vec.ind1281, <i64 32, i64 32, i64 32, i64 32>
  %401 = trunc <4 x i64> %400 to <4 x i32>
  %402 = mul <4 x i32> %broadcast.splat1284, %401
  %403 = add <4 x i32> %402, <i32 2, i32 2, i32 2, i32 2>
  %404 = urem <4 x i32> %403, <i32 60, i32 60, i32 60, i32 60>
  %405 = sitofp <4 x i32> %404 to <4 x double>
  %406 = fmul fast <4 x double> %405, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %407 = extractelement <4 x i64> %400, i32 0
  %408 = shl i64 %407, 3
  %409 = add i64 %408, %398
  %410 = getelementptr i8, i8* %call2, i64 %409
  %411 = bitcast i8* %410 to <4 x double>*
  store <4 x double> %406, <4 x double>* %411, align 8, !alias.scope !98, !noalias !100
  %index.next1278 = add i64 %index1277, 4
  %vec.ind.next1282 = add <4 x i64> %vec.ind1281, <i64 4, i64 4, i64 4, i64 4>
  %412 = icmp eq i64 %index.next1278, 28
  br i1 %412, label %polly.loop_exit828.1, label %vector.body1275, !llvm.loop !112

polly.loop_exit828.1:                             ; preds = %vector.body1275
  %polly.indvar_next824.1 = add nuw nsw i64 %polly.indvar823.1, 1
  %exitcond1037.1.not = icmp eq i64 %polly.indvar_next824.1, 32
  br i1 %exitcond1037.1.not, label %polly.loop_header820.11068, label %polly.loop_header820.1

polly.loop_header820.11068:                       ; preds = %polly.loop_exit828.1, %polly.loop_exit828.11079
  %polly.indvar823.11067 = phi i64 [ %polly.indvar_next824.11077, %polly.loop_exit828.11079 ], [ 0, %polly.loop_exit828.1 ]
  %413 = add nuw nsw i64 %polly.indvar823.11067, 32
  %414 = mul nuw nsw i64 %413, 480
  %415 = trunc i64 %413 to i32
  %broadcast.splatinsert1297 = insertelement <4 x i32> poison, i32 %415, i32 0
  %broadcast.splat1298 = shufflevector <4 x i32> %broadcast.splatinsert1297, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1287

vector.body1287:                                  ; preds = %vector.body1287, %polly.loop_header820.11068
  %index1289 = phi i64 [ 0, %polly.loop_header820.11068 ], [ %index.next1290, %vector.body1287 ]
  %vec.ind1295 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header820.11068 ], [ %vec.ind.next1296, %vector.body1287 ]
  %416 = mul <4 x i32> %vec.ind1295, %broadcast.splat1298
  %417 = add <4 x i32> %416, <i32 2, i32 2, i32 2, i32 2>
  %418 = urem <4 x i32> %417, <i32 60, i32 60, i32 60, i32 60>
  %419 = sitofp <4 x i32> %418 to <4 x double>
  %420 = fmul fast <4 x double> %419, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %421 = shl i64 %index1289, 3
  %422 = add i64 %421, %414
  %423 = getelementptr i8, i8* %call2, i64 %422
  %424 = bitcast i8* %423 to <4 x double>*
  store <4 x double> %420, <4 x double>* %424, align 8, !alias.scope !98, !noalias !100
  %index.next1290 = add i64 %index1289, 4
  %vec.ind.next1296 = add <4 x i32> %vec.ind1295, <i32 4, i32 4, i32 4, i32 4>
  %425 = icmp eq i64 %index.next1290, 32
  br i1 %425, label %polly.loop_exit828.11079, label %vector.body1287, !llvm.loop !113

polly.loop_exit828.11079:                         ; preds = %vector.body1287
  %polly.indvar_next824.11077 = add nuw nsw i64 %polly.indvar823.11067, 1
  %exitcond1037.11078.not = icmp eq i64 %polly.indvar_next824.11077, 32
  br i1 %exitcond1037.11078.not, label %polly.loop_header820.1.1, label %polly.loop_header820.11068

polly.loop_header820.1.1:                         ; preds = %polly.loop_exit828.11079, %polly.loop_exit828.1.1
  %polly.indvar823.1.1 = phi i64 [ %polly.indvar_next824.1.1, %polly.loop_exit828.1.1 ], [ 0, %polly.loop_exit828.11079 ]
  %426 = add nuw nsw i64 %polly.indvar823.1.1, 32
  %427 = mul nuw nsw i64 %426, 480
  %428 = trunc i64 %426 to i32
  %broadcast.splatinsert1309 = insertelement <4 x i32> poison, i32 %428, i32 0
  %broadcast.splat1310 = shufflevector <4 x i32> %broadcast.splatinsert1309, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1301

vector.body1301:                                  ; preds = %vector.body1301, %polly.loop_header820.1.1
  %index1303 = phi i64 [ 0, %polly.loop_header820.1.1 ], [ %index.next1304, %vector.body1301 ]
  %vec.ind1307 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header820.1.1 ], [ %vec.ind.next1308, %vector.body1301 ]
  %429 = add nuw nsw <4 x i64> %vec.ind1307, <i64 32, i64 32, i64 32, i64 32>
  %430 = trunc <4 x i64> %429 to <4 x i32>
  %431 = mul <4 x i32> %broadcast.splat1310, %430
  %432 = add <4 x i32> %431, <i32 2, i32 2, i32 2, i32 2>
  %433 = urem <4 x i32> %432, <i32 60, i32 60, i32 60, i32 60>
  %434 = sitofp <4 x i32> %433 to <4 x double>
  %435 = fmul fast <4 x double> %434, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %436 = extractelement <4 x i64> %429, i32 0
  %437 = shl i64 %436, 3
  %438 = add i64 %437, %427
  %439 = getelementptr i8, i8* %call2, i64 %438
  %440 = bitcast i8* %439 to <4 x double>*
  store <4 x double> %435, <4 x double>* %440, align 8, !alias.scope !98, !noalias !100
  %index.next1304 = add i64 %index1303, 4
  %vec.ind.next1308 = add <4 x i64> %vec.ind1307, <i64 4, i64 4, i64 4, i64 4>
  %441 = icmp eq i64 %index.next1304, 28
  br i1 %441, label %polly.loop_exit828.1.1, label %vector.body1301, !llvm.loop !114

polly.loop_exit828.1.1:                           ; preds = %vector.body1301
  %polly.indvar_next824.1.1 = add nuw nsw i64 %polly.indvar823.1.1, 1
  %exitcond1037.1.1.not = icmp eq i64 %polly.indvar_next824.1.1, 32
  br i1 %exitcond1037.1.1.not, label %polly.loop_header820.2, label %polly.loop_header820.1.1

polly.loop_header820.2:                           ; preds = %polly.loop_exit828.1.1, %polly.loop_exit828.2
  %polly.indvar823.2 = phi i64 [ %polly.indvar_next824.2, %polly.loop_exit828.2 ], [ 0, %polly.loop_exit828.1.1 ]
  %442 = add nuw nsw i64 %polly.indvar823.2, 64
  %443 = mul nuw nsw i64 %442, 480
  %444 = trunc i64 %442 to i32
  %broadcast.splatinsert1323 = insertelement <4 x i32> poison, i32 %444, i32 0
  %broadcast.splat1324 = shufflevector <4 x i32> %broadcast.splatinsert1323, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1313

vector.body1313:                                  ; preds = %vector.body1313, %polly.loop_header820.2
  %index1315 = phi i64 [ 0, %polly.loop_header820.2 ], [ %index.next1316, %vector.body1313 ]
  %vec.ind1321 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header820.2 ], [ %vec.ind.next1322, %vector.body1313 ]
  %445 = mul <4 x i32> %vec.ind1321, %broadcast.splat1324
  %446 = add <4 x i32> %445, <i32 2, i32 2, i32 2, i32 2>
  %447 = urem <4 x i32> %446, <i32 60, i32 60, i32 60, i32 60>
  %448 = sitofp <4 x i32> %447 to <4 x double>
  %449 = fmul fast <4 x double> %448, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %450 = shl i64 %index1315, 3
  %451 = add i64 %450, %443
  %452 = getelementptr i8, i8* %call2, i64 %451
  %453 = bitcast i8* %452 to <4 x double>*
  store <4 x double> %449, <4 x double>* %453, align 8, !alias.scope !98, !noalias !100
  %index.next1316 = add i64 %index1315, 4
  %vec.ind.next1322 = add <4 x i32> %vec.ind1321, <i32 4, i32 4, i32 4, i32 4>
  %454 = icmp eq i64 %index.next1316, 32
  br i1 %454, label %polly.loop_exit828.2, label %vector.body1313, !llvm.loop !115

polly.loop_exit828.2:                             ; preds = %vector.body1313
  %polly.indvar_next824.2 = add nuw nsw i64 %polly.indvar823.2, 1
  %exitcond1037.2.not = icmp eq i64 %polly.indvar_next824.2, 16
  br i1 %exitcond1037.2.not, label %polly.loop_header820.1.2, label %polly.loop_header820.2

polly.loop_header820.1.2:                         ; preds = %polly.loop_exit828.2, %polly.loop_exit828.1.2
  %polly.indvar823.1.2 = phi i64 [ %polly.indvar_next824.1.2, %polly.loop_exit828.1.2 ], [ 0, %polly.loop_exit828.2 ]
  %455 = add nuw nsw i64 %polly.indvar823.1.2, 64
  %456 = mul nuw nsw i64 %455, 480
  %457 = trunc i64 %455 to i32
  %broadcast.splatinsert1335 = insertelement <4 x i32> poison, i32 %457, i32 0
  %broadcast.splat1336 = shufflevector <4 x i32> %broadcast.splatinsert1335, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1327

vector.body1327:                                  ; preds = %vector.body1327, %polly.loop_header820.1.2
  %index1329 = phi i64 [ 0, %polly.loop_header820.1.2 ], [ %index.next1330, %vector.body1327 ]
  %vec.ind1333 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header820.1.2 ], [ %vec.ind.next1334, %vector.body1327 ]
  %458 = add nuw nsw <4 x i64> %vec.ind1333, <i64 32, i64 32, i64 32, i64 32>
  %459 = trunc <4 x i64> %458 to <4 x i32>
  %460 = mul <4 x i32> %broadcast.splat1336, %459
  %461 = add <4 x i32> %460, <i32 2, i32 2, i32 2, i32 2>
  %462 = urem <4 x i32> %461, <i32 60, i32 60, i32 60, i32 60>
  %463 = sitofp <4 x i32> %462 to <4 x double>
  %464 = fmul fast <4 x double> %463, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %465 = extractelement <4 x i64> %458, i32 0
  %466 = shl i64 %465, 3
  %467 = add i64 %466, %456
  %468 = getelementptr i8, i8* %call2, i64 %467
  %469 = bitcast i8* %468 to <4 x double>*
  store <4 x double> %464, <4 x double>* %469, align 8, !alias.scope !98, !noalias !100
  %index.next1330 = add i64 %index1329, 4
  %vec.ind.next1334 = add <4 x i64> %vec.ind1333, <i64 4, i64 4, i64 4, i64 4>
  %470 = icmp eq i64 %index.next1330, 28
  br i1 %470, label %polly.loop_exit828.1.2, label %vector.body1327, !llvm.loop !116

polly.loop_exit828.1.2:                           ; preds = %vector.body1327
  %polly.indvar_next824.1.2 = add nuw nsw i64 %polly.indvar823.1.2, 1
  %exitcond1037.1.2.not = icmp eq i64 %polly.indvar_next824.1.2, 16
  br i1 %exitcond1037.1.2.not, label %polly.loop_header846, label %polly.loop_header820.1.2

polly.loop_header793.1:                           ; preds = %polly.loop_exit801, %polly.loop_exit801.1
  %polly.indvar796.1 = phi i64 [ %polly.indvar_next797.1, %polly.loop_exit801.1 ], [ 0, %polly.loop_exit801 ]
  %471 = mul nuw nsw i64 %polly.indvar796.1, 640
  %472 = trunc i64 %polly.indvar796.1 to i32
  %broadcast.splatinsert1169 = insertelement <4 x i32> poison, i32 %472, i32 0
  %broadcast.splat1170 = shufflevector <4 x i32> %broadcast.splatinsert1169, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1161

vector.body1161:                                  ; preds = %vector.body1161, %polly.loop_header793.1
  %index1163 = phi i64 [ 0, %polly.loop_header793.1 ], [ %index.next1164, %vector.body1161 ]
  %vec.ind1167 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1 ], [ %vec.ind.next1168, %vector.body1161 ]
  %473 = add nuw nsw <4 x i64> %vec.ind1167, <i64 32, i64 32, i64 32, i64 32>
  %474 = trunc <4 x i64> %473 to <4 x i32>
  %475 = mul <4 x i32> %broadcast.splat1170, %474
  %476 = add <4 x i32> %475, <i32 3, i32 3, i32 3, i32 3>
  %477 = urem <4 x i32> %476, <i32 80, i32 80, i32 80, i32 80>
  %478 = sitofp <4 x i32> %477 to <4 x double>
  %479 = fmul fast <4 x double> %478, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %480 = extractelement <4 x i64> %473, i32 0
  %481 = shl i64 %480, 3
  %482 = add nuw nsw i64 %481, %471
  %483 = getelementptr i8, i8* %call, i64 %482
  %484 = bitcast i8* %483 to <4 x double>*
  store <4 x double> %479, <4 x double>* %484, align 8, !alias.scope !94, !noalias !96
  %index.next1164 = add i64 %index1163, 4
  %vec.ind.next1168 = add <4 x i64> %vec.ind1167, <i64 4, i64 4, i64 4, i64 4>
  %485 = icmp eq i64 %index.next1164, 32
  br i1 %485, label %polly.loop_exit801.1, label %vector.body1161, !llvm.loop !117

polly.loop_exit801.1:                             ; preds = %vector.body1161
  %polly.indvar_next797.1 = add nuw nsw i64 %polly.indvar796.1, 1
  %exitcond1046.1.not = icmp eq i64 %polly.indvar_next797.1, 32
  br i1 %exitcond1046.1.not, label %polly.loop_header793.2, label %polly.loop_header793.1

polly.loop_header793.2:                           ; preds = %polly.loop_exit801.1, %polly.loop_exit801.2
  %polly.indvar796.2 = phi i64 [ %polly.indvar_next797.2, %polly.loop_exit801.2 ], [ 0, %polly.loop_exit801.1 ]
  %486 = mul nuw nsw i64 %polly.indvar796.2, 640
  %487 = trunc i64 %polly.indvar796.2 to i32
  %broadcast.splatinsert1181 = insertelement <4 x i32> poison, i32 %487, i32 0
  %broadcast.splat1182 = shufflevector <4 x i32> %broadcast.splatinsert1181, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1173

vector.body1173:                                  ; preds = %vector.body1173, %polly.loop_header793.2
  %index1175 = phi i64 [ 0, %polly.loop_header793.2 ], [ %index.next1176, %vector.body1173 ]
  %vec.ind1179 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.2 ], [ %vec.ind.next1180, %vector.body1173 ]
  %488 = add nuw nsw <4 x i64> %vec.ind1179, <i64 64, i64 64, i64 64, i64 64>
  %489 = trunc <4 x i64> %488 to <4 x i32>
  %490 = mul <4 x i32> %broadcast.splat1182, %489
  %491 = add <4 x i32> %490, <i32 3, i32 3, i32 3, i32 3>
  %492 = urem <4 x i32> %491, <i32 80, i32 80, i32 80, i32 80>
  %493 = sitofp <4 x i32> %492 to <4 x double>
  %494 = fmul fast <4 x double> %493, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %495 = extractelement <4 x i64> %488, i32 0
  %496 = shl i64 %495, 3
  %497 = add nuw nsw i64 %496, %486
  %498 = getelementptr i8, i8* %call, i64 %497
  %499 = bitcast i8* %498 to <4 x double>*
  store <4 x double> %494, <4 x double>* %499, align 8, !alias.scope !94, !noalias !96
  %index.next1176 = add i64 %index1175, 4
  %vec.ind.next1180 = add <4 x i64> %vec.ind1179, <i64 4, i64 4, i64 4, i64 4>
  %500 = icmp eq i64 %index.next1176, 16
  br i1 %500, label %polly.loop_exit801.2, label %vector.body1173, !llvm.loop !118

polly.loop_exit801.2:                             ; preds = %vector.body1173
  %polly.indvar_next797.2 = add nuw nsw i64 %polly.indvar796.2, 1
  %exitcond1046.2.not = icmp eq i64 %polly.indvar_next797.2, 32
  br i1 %exitcond1046.2.not, label %polly.loop_header793.11082, label %polly.loop_header793.2

polly.loop_header793.11082:                       ; preds = %polly.loop_exit801.2, %polly.loop_exit801.11093
  %polly.indvar796.11081 = phi i64 [ %polly.indvar_next797.11091, %polly.loop_exit801.11093 ], [ 0, %polly.loop_exit801.2 ]
  %501 = add nuw nsw i64 %polly.indvar796.11081, 32
  %502 = mul nuw nsw i64 %501, 640
  %503 = trunc i64 %501 to i32
  %broadcast.splatinsert1195 = insertelement <4 x i32> poison, i32 %503, i32 0
  %broadcast.splat1196 = shufflevector <4 x i32> %broadcast.splatinsert1195, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1185

vector.body1185:                                  ; preds = %vector.body1185, %polly.loop_header793.11082
  %index1187 = phi i64 [ 0, %polly.loop_header793.11082 ], [ %index.next1188, %vector.body1185 ]
  %vec.ind1193 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793.11082 ], [ %vec.ind.next1194, %vector.body1185 ]
  %504 = mul <4 x i32> %vec.ind1193, %broadcast.splat1196
  %505 = add <4 x i32> %504, <i32 3, i32 3, i32 3, i32 3>
  %506 = urem <4 x i32> %505, <i32 80, i32 80, i32 80, i32 80>
  %507 = sitofp <4 x i32> %506 to <4 x double>
  %508 = fmul fast <4 x double> %507, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %509 = shl i64 %index1187, 3
  %510 = add nuw nsw i64 %509, %502
  %511 = getelementptr i8, i8* %call, i64 %510
  %512 = bitcast i8* %511 to <4 x double>*
  store <4 x double> %508, <4 x double>* %512, align 8, !alias.scope !94, !noalias !96
  %index.next1188 = add i64 %index1187, 4
  %vec.ind.next1194 = add <4 x i32> %vec.ind1193, <i32 4, i32 4, i32 4, i32 4>
  %513 = icmp eq i64 %index.next1188, 32
  br i1 %513, label %polly.loop_exit801.11093, label %vector.body1185, !llvm.loop !119

polly.loop_exit801.11093:                         ; preds = %vector.body1185
  %polly.indvar_next797.11091 = add nuw nsw i64 %polly.indvar796.11081, 1
  %exitcond1046.11092.not = icmp eq i64 %polly.indvar_next797.11091, 32
  br i1 %exitcond1046.11092.not, label %polly.loop_header793.1.1, label %polly.loop_header793.11082

polly.loop_header793.1.1:                         ; preds = %polly.loop_exit801.11093, %polly.loop_exit801.1.1
  %polly.indvar796.1.1 = phi i64 [ %polly.indvar_next797.1.1, %polly.loop_exit801.1.1 ], [ 0, %polly.loop_exit801.11093 ]
  %514 = add nuw nsw i64 %polly.indvar796.1.1, 32
  %515 = mul nuw nsw i64 %514, 640
  %516 = trunc i64 %514 to i32
  %broadcast.splatinsert1207 = insertelement <4 x i32> poison, i32 %516, i32 0
  %broadcast.splat1208 = shufflevector <4 x i32> %broadcast.splatinsert1207, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1199

vector.body1199:                                  ; preds = %vector.body1199, %polly.loop_header793.1.1
  %index1201 = phi i64 [ 0, %polly.loop_header793.1.1 ], [ %index.next1202, %vector.body1199 ]
  %vec.ind1205 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1.1 ], [ %vec.ind.next1206, %vector.body1199 ]
  %517 = add nuw nsw <4 x i64> %vec.ind1205, <i64 32, i64 32, i64 32, i64 32>
  %518 = trunc <4 x i64> %517 to <4 x i32>
  %519 = mul <4 x i32> %broadcast.splat1208, %518
  %520 = add <4 x i32> %519, <i32 3, i32 3, i32 3, i32 3>
  %521 = urem <4 x i32> %520, <i32 80, i32 80, i32 80, i32 80>
  %522 = sitofp <4 x i32> %521 to <4 x double>
  %523 = fmul fast <4 x double> %522, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %524 = extractelement <4 x i64> %517, i32 0
  %525 = shl i64 %524, 3
  %526 = add nuw nsw i64 %525, %515
  %527 = getelementptr i8, i8* %call, i64 %526
  %528 = bitcast i8* %527 to <4 x double>*
  store <4 x double> %523, <4 x double>* %528, align 8, !alias.scope !94, !noalias !96
  %index.next1202 = add i64 %index1201, 4
  %vec.ind.next1206 = add <4 x i64> %vec.ind1205, <i64 4, i64 4, i64 4, i64 4>
  %529 = icmp eq i64 %index.next1202, 32
  br i1 %529, label %polly.loop_exit801.1.1, label %vector.body1199, !llvm.loop !120

polly.loop_exit801.1.1:                           ; preds = %vector.body1199
  %polly.indvar_next797.1.1 = add nuw nsw i64 %polly.indvar796.1.1, 1
  %exitcond1046.1.1.not = icmp eq i64 %polly.indvar_next797.1.1, 32
  br i1 %exitcond1046.1.1.not, label %polly.loop_header793.2.1, label %polly.loop_header793.1.1

polly.loop_header793.2.1:                         ; preds = %polly.loop_exit801.1.1, %polly.loop_exit801.2.1
  %polly.indvar796.2.1 = phi i64 [ %polly.indvar_next797.2.1, %polly.loop_exit801.2.1 ], [ 0, %polly.loop_exit801.1.1 ]
  %530 = add nuw nsw i64 %polly.indvar796.2.1, 32
  %531 = mul nuw nsw i64 %530, 640
  %532 = trunc i64 %530 to i32
  %broadcast.splatinsert1219 = insertelement <4 x i32> poison, i32 %532, i32 0
  %broadcast.splat1220 = shufflevector <4 x i32> %broadcast.splatinsert1219, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1211

vector.body1211:                                  ; preds = %vector.body1211, %polly.loop_header793.2.1
  %index1213 = phi i64 [ 0, %polly.loop_header793.2.1 ], [ %index.next1214, %vector.body1211 ]
  %vec.ind1217 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.2.1 ], [ %vec.ind.next1218, %vector.body1211 ]
  %533 = add nuw nsw <4 x i64> %vec.ind1217, <i64 64, i64 64, i64 64, i64 64>
  %534 = trunc <4 x i64> %533 to <4 x i32>
  %535 = mul <4 x i32> %broadcast.splat1220, %534
  %536 = add <4 x i32> %535, <i32 3, i32 3, i32 3, i32 3>
  %537 = urem <4 x i32> %536, <i32 80, i32 80, i32 80, i32 80>
  %538 = sitofp <4 x i32> %537 to <4 x double>
  %539 = fmul fast <4 x double> %538, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %540 = extractelement <4 x i64> %533, i32 0
  %541 = shl i64 %540, 3
  %542 = add nuw nsw i64 %541, %531
  %543 = getelementptr i8, i8* %call, i64 %542
  %544 = bitcast i8* %543 to <4 x double>*
  store <4 x double> %539, <4 x double>* %544, align 8, !alias.scope !94, !noalias !96
  %index.next1214 = add i64 %index1213, 4
  %vec.ind.next1218 = add <4 x i64> %vec.ind1217, <i64 4, i64 4, i64 4, i64 4>
  %545 = icmp eq i64 %index.next1214, 16
  br i1 %545, label %polly.loop_exit801.2.1, label %vector.body1211, !llvm.loop !121

polly.loop_exit801.2.1:                           ; preds = %vector.body1211
  %polly.indvar_next797.2.1 = add nuw nsw i64 %polly.indvar796.2.1, 1
  %exitcond1046.2.1.not = icmp eq i64 %polly.indvar_next797.2.1, 32
  br i1 %exitcond1046.2.1.not, label %polly.loop_header793.21096, label %polly.loop_header793.2.1

polly.loop_header793.21096:                       ; preds = %polly.loop_exit801.2.1, %polly.loop_exit801.21107
  %polly.indvar796.21095 = phi i64 [ %polly.indvar_next797.21105, %polly.loop_exit801.21107 ], [ 0, %polly.loop_exit801.2.1 ]
  %546 = add nuw nsw i64 %polly.indvar796.21095, 64
  %547 = mul nuw nsw i64 %546, 640
  %548 = trunc i64 %546 to i32
  %broadcast.splatinsert1233 = insertelement <4 x i32> poison, i32 %548, i32 0
  %broadcast.splat1234 = shufflevector <4 x i32> %broadcast.splatinsert1233, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1223

vector.body1223:                                  ; preds = %vector.body1223, %polly.loop_header793.21096
  %index1225 = phi i64 [ 0, %polly.loop_header793.21096 ], [ %index.next1226, %vector.body1223 ]
  %vec.ind1231 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793.21096 ], [ %vec.ind.next1232, %vector.body1223 ]
  %549 = mul <4 x i32> %vec.ind1231, %broadcast.splat1234
  %550 = add <4 x i32> %549, <i32 3, i32 3, i32 3, i32 3>
  %551 = urem <4 x i32> %550, <i32 80, i32 80, i32 80, i32 80>
  %552 = sitofp <4 x i32> %551 to <4 x double>
  %553 = fmul fast <4 x double> %552, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %554 = shl i64 %index1225, 3
  %555 = add nuw nsw i64 %554, %547
  %556 = getelementptr i8, i8* %call, i64 %555
  %557 = bitcast i8* %556 to <4 x double>*
  store <4 x double> %553, <4 x double>* %557, align 8, !alias.scope !94, !noalias !96
  %index.next1226 = add i64 %index1225, 4
  %vec.ind.next1232 = add <4 x i32> %vec.ind1231, <i32 4, i32 4, i32 4, i32 4>
  %558 = icmp eq i64 %index.next1226, 32
  br i1 %558, label %polly.loop_exit801.21107, label %vector.body1223, !llvm.loop !122

polly.loop_exit801.21107:                         ; preds = %vector.body1223
  %polly.indvar_next797.21105 = add nuw nsw i64 %polly.indvar796.21095, 1
  %exitcond1046.21106.not = icmp eq i64 %polly.indvar_next797.21105, 16
  br i1 %exitcond1046.21106.not, label %polly.loop_header793.1.2, label %polly.loop_header793.21096

polly.loop_header793.1.2:                         ; preds = %polly.loop_exit801.21107, %polly.loop_exit801.1.2
  %polly.indvar796.1.2 = phi i64 [ %polly.indvar_next797.1.2, %polly.loop_exit801.1.2 ], [ 0, %polly.loop_exit801.21107 ]
  %559 = add nuw nsw i64 %polly.indvar796.1.2, 64
  %560 = mul nuw nsw i64 %559, 640
  %561 = trunc i64 %559 to i32
  %broadcast.splatinsert1245 = insertelement <4 x i32> poison, i32 %561, i32 0
  %broadcast.splat1246 = shufflevector <4 x i32> %broadcast.splatinsert1245, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1237

vector.body1237:                                  ; preds = %vector.body1237, %polly.loop_header793.1.2
  %index1239 = phi i64 [ 0, %polly.loop_header793.1.2 ], [ %index.next1240, %vector.body1237 ]
  %vec.ind1243 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1.2 ], [ %vec.ind.next1244, %vector.body1237 ]
  %562 = add nuw nsw <4 x i64> %vec.ind1243, <i64 32, i64 32, i64 32, i64 32>
  %563 = trunc <4 x i64> %562 to <4 x i32>
  %564 = mul <4 x i32> %broadcast.splat1246, %563
  %565 = add <4 x i32> %564, <i32 3, i32 3, i32 3, i32 3>
  %566 = urem <4 x i32> %565, <i32 80, i32 80, i32 80, i32 80>
  %567 = sitofp <4 x i32> %566 to <4 x double>
  %568 = fmul fast <4 x double> %567, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %569 = extractelement <4 x i64> %562, i32 0
  %570 = shl i64 %569, 3
  %571 = add nuw nsw i64 %570, %560
  %572 = getelementptr i8, i8* %call, i64 %571
  %573 = bitcast i8* %572 to <4 x double>*
  store <4 x double> %568, <4 x double>* %573, align 8, !alias.scope !94, !noalias !96
  %index.next1240 = add i64 %index1239, 4
  %vec.ind.next1244 = add <4 x i64> %vec.ind1243, <i64 4, i64 4, i64 4, i64 4>
  %574 = icmp eq i64 %index.next1240, 32
  br i1 %574, label %polly.loop_exit801.1.2, label %vector.body1237, !llvm.loop !123

polly.loop_exit801.1.2:                           ; preds = %vector.body1237
  %polly.indvar_next797.1.2 = add nuw nsw i64 %polly.indvar796.1.2, 1
  %exitcond1046.1.2.not = icmp eq i64 %polly.indvar_next797.1.2, 16
  br i1 %exitcond1046.1.2.not, label %polly.loop_header793.2.2, label %polly.loop_header793.1.2

polly.loop_header793.2.2:                         ; preds = %polly.loop_exit801.1.2, %polly.loop_exit801.2.2
  %polly.indvar796.2.2 = phi i64 [ %polly.indvar_next797.2.2, %polly.loop_exit801.2.2 ], [ 0, %polly.loop_exit801.1.2 ]
  %575 = add nuw nsw i64 %polly.indvar796.2.2, 64
  %576 = mul nuw nsw i64 %575, 640
  %577 = trunc i64 %575 to i32
  %broadcast.splatinsert1257 = insertelement <4 x i32> poison, i32 %577, i32 0
  %broadcast.splat1258 = shufflevector <4 x i32> %broadcast.splatinsert1257, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1249

vector.body1249:                                  ; preds = %vector.body1249, %polly.loop_header793.2.2
  %index1251 = phi i64 [ 0, %polly.loop_header793.2.2 ], [ %index.next1252, %vector.body1249 ]
  %vec.ind1255 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.2.2 ], [ %vec.ind.next1256, %vector.body1249 ]
  %578 = add nuw nsw <4 x i64> %vec.ind1255, <i64 64, i64 64, i64 64, i64 64>
  %579 = trunc <4 x i64> %578 to <4 x i32>
  %580 = mul <4 x i32> %broadcast.splat1258, %579
  %581 = add <4 x i32> %580, <i32 3, i32 3, i32 3, i32 3>
  %582 = urem <4 x i32> %581, <i32 80, i32 80, i32 80, i32 80>
  %583 = sitofp <4 x i32> %582 to <4 x double>
  %584 = fmul fast <4 x double> %583, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %585 = extractelement <4 x i64> %578, i32 0
  %586 = shl i64 %585, 3
  %587 = add nuw nsw i64 %586, %576
  %588 = getelementptr i8, i8* %call, i64 %587
  %589 = bitcast i8* %588 to <4 x double>*
  store <4 x double> %584, <4 x double>* %589, align 8, !alias.scope !94, !noalias !96
  %index.next1252 = add i64 %index1251, 4
  %vec.ind.next1256 = add <4 x i64> %vec.ind1255, <i64 4, i64 4, i64 4, i64 4>
  %590 = icmp eq i64 %index.next1252, 16
  br i1 %590, label %polly.loop_exit801.2.2, label %vector.body1249, !llvm.loop !124

polly.loop_exit801.2.2:                           ; preds = %vector.body1249
  %polly.indvar_next797.2.2 = add nuw nsw i64 %polly.indvar796.2.2, 1
  %exitcond1046.2.2.not = icmp eq i64 %polly.indvar_next797.2.2, 16
  br i1 %exitcond1046.2.2.not, label %polly.loop_header820, label %polly.loop_header793.2.2
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

attributes #0 = { nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #1 = { "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #3 = { nofree nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #4 = { nofree nounwind }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nosync nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!25 = !{!"llvm.loop.tile.size", i32 16}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 50}
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
!48 = !{!"llvm.loop.tile.size", i32 4}
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
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !13}
