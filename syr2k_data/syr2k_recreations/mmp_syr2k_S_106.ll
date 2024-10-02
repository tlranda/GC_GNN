; ModuleID = 'syr2k_recreations//mmp_syr2k_S_106.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_106.c"
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
  %call870 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1722 = bitcast i8* %call1 to double*
  %polly.access.call1731 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2732 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1731, %call2
  %polly.access.call2751 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2751, %call1
  %2 = or i1 %0, %1
  %polly.access.call771 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call771, %call2
  %4 = icmp ule i8* %polly.access.call2751, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call771, %call1
  %8 = icmp ule i8* %polly.access.call1731, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header856, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1223 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1222 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1221 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1220 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1220, %scevgep1223
  %bound1 = icmp ult i8* %scevgep1222, %scevgep1221
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
  br i1 %exitcond18.not.i, label %vector.ph1227, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1227:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1234 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1235 = shufflevector <4 x i64> %broadcast.splatinsert1234, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1226

vector.body1226:                                  ; preds = %vector.body1226, %vector.ph1227
  %index1228 = phi i64 [ 0, %vector.ph1227 ], [ %index.next1229, %vector.body1226 ]
  %vec.ind1232 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1227 ], [ %vec.ind.next1233, %vector.body1226 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1232, %broadcast.splat1235
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv7.i, i64 %index1228
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1229 = add i64 %index1228, 4
  %vec.ind.next1233 = add <4 x i64> %vec.ind1232, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1229, 80
  br i1 %40, label %for.inc41.i, label %vector.body1226, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1226
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1227, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit917.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start510, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1648, label %vector.ph1509

vector.ph1509:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1508

vector.body1508:                                  ; preds = %vector.body1508, %vector.ph1509
  %index1510 = phi i64 [ 0, %vector.ph1509 ], [ %index.next1511, %vector.body1508 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv21.i, i64 %index1510
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1511 = add i64 %index1510, 4
  %46 = icmp eq i64 %index.next1511, %n.vec
  br i1 %46, label %middle.block1506, label %vector.body1508, !llvm.loop !18

middle.block1506:                                 ; preds = %vector.body1508
  %cmp.n1513 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1513, label %for.inc6.i, label %for.body3.i46.preheader1648

for.body3.i46.preheader1648:                      ; preds = %for.body3.i46.preheader, %middle.block1506
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1506 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1648, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1648 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1506, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !44

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting511
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start300, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1550 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1550, label %for.body3.i60.preheader1646, label %vector.ph1551

vector.ph1551:                                    ; preds = %for.body3.i60.preheader
  %n.vec1553 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1549

vector.body1549:                                  ; preds = %vector.body1549, %vector.ph1551
  %index1554 = phi i64 [ 0, %vector.ph1551 ], [ %index.next1555, %vector.body1549 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv21.i52, i64 %index1554
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1558 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1558, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1555 = add i64 %index1554, 4
  %57 = icmp eq i64 %index.next1555, %n.vec1553
  br i1 %57, label %middle.block1547, label %vector.body1549, !llvm.loop !56

middle.block1547:                                 ; preds = %vector.body1549
  %cmp.n1557 = icmp eq i64 %indvars.iv21.i52, %n.vec1553
  br i1 %cmp.n1557, label %for.inc6.i63, label %for.body3.i60.preheader1646

for.body3.i60.preheader1646:                      ; preds = %for.body3.i60.preheader, %middle.block1547
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1553, %middle.block1547 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1646, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1646 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !57

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1547, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !44

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting301
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1598 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1598, label %for.body3.i99.preheader1644, label %vector.ph1599

vector.ph1599:                                    ; preds = %for.body3.i99.preheader
  %n.vec1601 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1597

vector.body1597:                                  ; preds = %vector.body1597, %vector.ph1599
  %index1602 = phi i64 [ 0, %vector.ph1599 ], [ %index.next1603, %vector.body1597 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv21.i91, i64 %index1602
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1606 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1606, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1603 = add i64 %index1602, 4
  %68 = icmp eq i64 %index.next1603, %n.vec1601
  br i1 %68, label %middle.block1595, label %vector.body1597, !llvm.loop !58

middle.block1595:                                 ; preds = %vector.body1597
  %cmp.n1605 = icmp eq i64 %indvars.iv21.i91, %n.vec1601
  br i1 %cmp.n1605, label %for.inc6.i102, label %for.body3.i99.preheader1644

for.body3.i99.preheader1644:                      ; preds = %for.body3.i99.preheader, %middle.block1595
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1601, %middle.block1595 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1644, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1644 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !59

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1595, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !44

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !60
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !62

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !63

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #6
  %malloccall136 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1610 = phi i64 [ %indvar.next1611, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1610, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1612 = icmp ult i64 %88, 4
  br i1 %min.iters.check1612, label %polly.loop_header192.preheader, label %vector.ph1613

vector.ph1613:                                    ; preds = %polly.loop_header
  %n.vec1615 = and i64 %88, -4
  br label %vector.body1609

vector.body1609:                                  ; preds = %vector.body1609, %vector.ph1613
  %index1616 = phi i64 [ 0, %vector.ph1613 ], [ %index.next1617, %vector.body1609 ]
  %90 = shl nuw nsw i64 %index1616, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1620 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !64, !noalias !66
  %93 = fmul fast <4 x double> %wide.load1620, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !64, !noalias !66
  %index.next1617 = add i64 %index1616, 4
  %95 = icmp eq i64 %index.next1617, %n.vec1615
  br i1 %95, label %middle.block1607, label %vector.body1609, !llvm.loop !71

middle.block1607:                                 ; preds = %vector.body1609
  %cmp.n1619 = icmp eq i64 %88, %n.vec1615
  br i1 %cmp.n1619, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1607
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1615, %middle.block1607 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1607
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1611 = add i64 %indvar1610, 1
  br i1 %exitcond1060.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !64, !noalias !66
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1059.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1059.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !72

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 80
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1058.not = icmp eq i64 %polly.indvar_next204, 60
  br i1 %exitcond1058.not, label %polly.loop_header216, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 60
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2732, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !68, !noalias !74
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar_next210, 80
  br i1 %exitcond1057.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv1052 = phi i64 [ %indvars.iv.next1053, %polly.loop_exit224 ], [ 3, %polly.loop_exit208 ]
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv1034 = phi i64 [ %indvars.iv.next1035, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = mul nsw i64 %polly.indvar219, -32
  %98 = shl nuw nsw i64 %polly.indvar219, 5
  %umin = call i64 @llvm.umin.i64(i64 %indvars.iv1052, i64 9)
  %99 = mul nsw i64 %polly.indvar219, -32
  %100 = icmp slt i64 %99, -48
  %101 = select i1 %100, i64 %99, i64 -48
  %102 = add nsw i64 %101, 79
  %103 = shl nsw i64 %polly.indvar219, 5
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next1035 = add nsw i64 %indvars.iv1034, -32
  %indvars.iv.next1039 = add nuw nsw i64 %indvars.iv1038, 32
  %indvars.iv.next1053 = add nuw nsw i64 %indvars.iv1052, 4
  %exitcond1056.not = icmp eq i64 %polly.indvar_next220, 3
  br i1 %exitcond1056.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 0, %polly.loop_header216 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit230 ], [ 0, %polly.loop_header216 ]
  %smin1050 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -52)
  %104 = add nsw i64 %smin1050, 60
  %105 = shl nsw i64 %polly.indvar225, 3
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit236
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -8
  %exitcond1055.not = icmp eq i64 %polly.indvar_next226, 8
  br i1 %exitcond1055.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit236, %polly.loop_header222
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %polly.loop_exit236 ], [ %indvars.iv1038, %polly.loop_header222 ]
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit236 ], [ %indvars.iv1034, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_header222 ]
  %106 = shl nuw nsw i64 %polly.indvar231, 3
  %107 = add i64 %97, %106
  %smax1624 = call i64 @llvm.smax.i64(i64 %107, i64 0)
  %108 = mul nsw i64 %polly.indvar231, -8
  %109 = add i64 %98, %108
  %110 = add i64 %smax1624, %109
  %111 = shl nsw i64 %polly.indvar231, 3
  %112 = add nsw i64 %111, %99
  %113 = icmp sgt i64 %112, 0
  %114 = select i1 %113, i64 %112, i64 0
  %polly.loop_guard.not = icmp sgt i64 %114, %102
  br i1 %polly.loop_guard.not, label %polly.loop_exit236, label %polly.loop_header234.preheader

polly.loop_header234.preheader:                   ; preds = %polly.loop_header228
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1036, i64 0)
  %115 = add i64 %smax, %indvars.iv1040
  %116 = sub nsw i64 %103, %111
  %117 = add nuw nsw i64 %111, 8
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit267, %polly.loop_header228
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, 8
  %indvars.iv.next1041 = add nsw i64 %indvars.iv1040, -8
  %exitcond1054.not = icmp eq i64 %polly.indvar231, %umin
  br i1 %exitcond1054.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header234.preheader, %polly.loop_exit267
  %indvar1625 = phi i64 [ 0, %polly.loop_header234.preheader ], [ %indvar.next1626, %polly.loop_exit267 ]
  %indvars.iv1042 = phi i64 [ %115, %polly.loop_header234.preheader ], [ %indvars.iv.next1043, %polly.loop_exit267 ]
  %polly.indvar237 = phi i64 [ %114, %polly.loop_header234.preheader ], [ %polly.indvar_next238, %polly.loop_exit267 ]
  %118 = add i64 %110, %indvar1625
  %smin1627 = call i64 @llvm.smin.i64(i64 %118, i64 7)
  %119 = add nsw i64 %smin1627, 1
  %smin1048 = call i64 @llvm.smin.i64(i64 %indvars.iv1042, i64 7)
  %120 = add nsw i64 %polly.indvar237, %116
  %polly.loop_guard2501209 = icmp sgt i64 %120, -1
  %121 = add nuw nsw i64 %polly.indvar237, %103
  %.not = icmp ult i64 %121, %117
  %polly.access.mul.call1259 = mul nsw i64 %121, 60
  %122 = add nuw i64 %polly.access.mul.call1259, %105
  br i1 %polly.loop_guard2501209, label %polly.loop_header240.us, label %polly.loop_header234.split

polly.loop_header240.us:                          ; preds = %polly.loop_header234, %polly.merge.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.merge.us ], [ 0, %polly.loop_header234 ]
  %123 = add nuw nsw i64 %polly.indvar243.us, %105
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar243.us, 80
  br label %polly.loop_header247.us

polly.loop_header247.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header247.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_header247.us ], [ 0, %polly.loop_header240.us ]
  %124 = add nuw nsw i64 %polly.indvar251.us, %111
  %polly.access.mul.call1255.us = mul nuw nsw i64 %124, 60
  %polly.access.add.call1256.us = add nuw nsw i64 %123, %polly.access.mul.call1255.us
  %polly.access.call1257.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1256.us
  %polly.access.call1257.load.us = load double, double* %polly.access.call1257.us, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar251.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1257.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar251.us, %smin1048
  br i1 %exitcond1045.not, label %polly.cond.loopexit.us, label %polly.loop_header247.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1260.us = add nuw nsw i64 %122, %polly.indvar243.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1263.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %120
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar_next244.us, %104
  br i1 %exitcond1047.not, label %polly.loop_header265.preheader, label %polly.loop_header240.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header247.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header234.split:                       ; preds = %polly.loop_header234
  br i1 %.not, label %polly.loop_exit267, label %polly.loop_header240

polly.loop_exit267:                               ; preds = %polly.loop_exit274.loopexit.us, %polly.loop_header234.split, %polly.loop_header265.preheader
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %polly.loop_cond239.not.not = icmp ult i64 %polly.indvar237, %102
  %indvars.iv.next1043 = add i64 %indvars.iv1042, 1
  %indvar.next1626 = add i64 %indvar1625, 1
  br i1 %polly.loop_cond239.not.not, label %polly.loop_header234, label %polly.loop_exit236

polly.loop_header240:                             ; preds = %polly.loop_header234.split, %polly.loop_header240
  %polly.indvar243 = phi i64 [ %polly.indvar_next244, %polly.loop_header240 ], [ 0, %polly.loop_header234.split ]
  %polly.access.add.call1260 = add nuw nsw i64 %122, %polly.indvar243
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !67, !noalias !75
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar243, 80
  %polly.access.add.Packed_MemRef_call1263 = add nsw i64 %polly.access.mul.Packed_MemRef_call1262, %120
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next244 = add nuw nsw i64 %polly.indvar243, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next244, %104
  br i1 %exitcond.not, label %polly.loop_header265.preheader, label %polly.loop_header240

polly.loop_header265.preheader:                   ; preds = %polly.loop_header240, %polly.merge.us
  %125 = mul i64 %121, 640
  br i1 %polly.loop_guard2501209, label %polly.loop_header265.us, label %polly.loop_exit267

polly.loop_header265.us:                          ; preds = %polly.loop_header265.preheader, %polly.loop_exit274.loopexit.us
  %polly.indvar268.us = phi i64 [ %polly.indvar_next269.us, %polly.loop_exit274.loopexit.us ], [ 0, %polly.loop_header265.preheader ]
  %polly.access.mul.Packed_MemRef_call1279.us = mul nuw nsw i64 %polly.indvar268.us, 80
  %126 = add nuw nsw i64 %polly.indvar268.us, %105
  %polly.access.mul.Packed_MemRef_call2283.us = mul nuw nsw i64 %126, 80
  %polly.access.add.Packed_MemRef_call2284.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us, %121
  %polly.access.Packed_MemRef_call2285.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call2285.us, align 8
  %polly.access.add.Packed_MemRef_call1292.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1279.us, %120
  %polly.access.Packed_MemRef_call1293.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us
  %_p_scalar_294.us = load double, double* %polly.access.Packed_MemRef_call1293.us, align 8
  %min.iters.check1628 = icmp ult i64 %119, 4
  br i1 %min.iters.check1628, label %polly.loop_header272.us.preheader, label %vector.ph1629

vector.ph1629:                                    ; preds = %polly.loop_header265.us
  %n.vec1631 = and i64 %119, -4
  %broadcast.splatinsert1637 = insertelement <4 x double> poison, double %_p_scalar_286.us, i32 0
  %broadcast.splat1638 = shufflevector <4 x double> %broadcast.splatinsert1637, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1640 = insertelement <4 x double> poison, double %_p_scalar_294.us, i32 0
  %broadcast.splat1641 = shufflevector <4 x double> %broadcast.splatinsert1640, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1623

vector.body1623:                                  ; preds = %vector.body1623, %vector.ph1629
  %index1632 = phi i64 [ 0, %vector.ph1629 ], [ %index.next1633, %vector.body1623 ]
  %127 = add nuw nsw i64 %index1632, %111
  %128 = add nuw nsw i64 %index1632, %polly.access.mul.Packed_MemRef_call1279.us
  %129 = getelementptr double, double* %Packed_MemRef_call1, i64 %128
  %130 = bitcast double* %129 to <4 x double>*
  %wide.load1636 = load <4 x double>, <4 x double>* %130, align 8
  %131 = fmul fast <4 x double> %broadcast.splat1638, %wide.load1636
  %132 = add nuw nsw i64 %127, %polly.access.mul.Packed_MemRef_call2283.us
  %133 = getelementptr double, double* %Packed_MemRef_call2, i64 %132
  %134 = bitcast double* %133 to <4 x double>*
  %wide.load1639 = load <4 x double>, <4 x double>* %134, align 8
  %135 = fmul fast <4 x double> %broadcast.splat1641, %wide.load1639
  %136 = shl i64 %127, 3
  %137 = add i64 %136, %125
  %138 = getelementptr i8, i8* %call, i64 %137
  %139 = bitcast i8* %138 to <4 x double>*
  %wide.load1642 = load <4 x double>, <4 x double>* %139, align 8, !alias.scope !64, !noalias !66
  %140 = fadd fast <4 x double> %135, %131
  %141 = fmul fast <4 x double> %140, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %142 = fadd fast <4 x double> %141, %wide.load1642
  %143 = bitcast i8* %138 to <4 x double>*
  store <4 x double> %142, <4 x double>* %143, align 8, !alias.scope !64, !noalias !66
  %index.next1633 = add i64 %index1632, 4
  %144 = icmp eq i64 %index.next1633, %n.vec1631
  br i1 %144, label %middle.block1621, label %vector.body1623, !llvm.loop !76

middle.block1621:                                 ; preds = %vector.body1623
  %cmp.n1635 = icmp eq i64 %119, %n.vec1631
  br i1 %cmp.n1635, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us.preheader

polly.loop_header272.us.preheader:                ; preds = %polly.loop_header265.us, %middle.block1621
  %polly.indvar276.us.ph = phi i64 [ 0, %polly.loop_header265.us ], [ %n.vec1631, %middle.block1621 ]
  br label %polly.loop_header272.us

polly.loop_header272.us:                          ; preds = %polly.loop_header272.us.preheader, %polly.loop_header272.us
  %polly.indvar276.us = phi i64 [ %polly.indvar_next277.us, %polly.loop_header272.us ], [ %polly.indvar276.us.ph, %polly.loop_header272.us.preheader ]
  %145 = add nuw nsw i64 %polly.indvar276.us, %111
  %polly.access.add.Packed_MemRef_call1280.us = add nuw nsw i64 %polly.indvar276.us, %polly.access.mul.Packed_MemRef_call1279.us
  %polly.access.Packed_MemRef_call1281.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us
  %_p_scalar_282.us = load double, double* %polly.access.Packed_MemRef_call1281.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_286.us, %_p_scalar_282.us
  %polly.access.add.Packed_MemRef_call2288.us = add nuw nsw i64 %145, %polly.access.mul.Packed_MemRef_call2283.us
  %polly.access.Packed_MemRef_call2289.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us
  %_p_scalar_290.us = load double, double* %polly.access.Packed_MemRef_call2289.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_294.us, %_p_scalar_290.us
  %146 = shl i64 %145, 3
  %147 = add i64 %146, %125
  %scevgep295.us = getelementptr i8, i8* %call, i64 %147
  %scevgep295296.us = bitcast i8* %scevgep295.us to double*
  %_p_scalar_297.us = load double, double* %scevgep295296.us, align 8, !alias.scope !64, !noalias !66
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_297.us
  store double %p_add42.i118.us, double* %scevgep295296.us, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar276.us, %smin1048
  br i1 %exitcond1049.not, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us, !llvm.loop !77

polly.loop_exit274.loopexit.us:                   ; preds = %polly.loop_header272.us, %middle.block1621
  %polly.indvar_next269.us = add nuw nsw i64 %polly.indvar268.us, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar_next269.us, %104
  br i1 %exitcond1051.not, label %polly.loop_exit267, label %polly.loop_header265.us

polly.start300:                                   ; preds = %kernel_syr2k.exit
  %malloccall302 = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #6
  %malloccall304 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header388

polly.exiting301:                                 ; preds = %polly.loop_exit428
  tail call void @free(i8* %malloccall302)
  tail call void @free(i8* %malloccall304)
  br label %kernel_syr2k.exit90

polly.loop_header388:                             ; preds = %polly.loop_exit396, %polly.start300
  %indvar1562 = phi i64 [ %indvar.next1563, %polly.loop_exit396 ], [ 0, %polly.start300 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 1, %polly.start300 ]
  %148 = add i64 %indvar1562, 1
  %149 = mul nuw nsw i64 %polly.indvar391, 640
  %scevgep400 = getelementptr i8, i8* %call, i64 %149
  %min.iters.check1564 = icmp ult i64 %148, 4
  br i1 %min.iters.check1564, label %polly.loop_header394.preheader, label %vector.ph1565

vector.ph1565:                                    ; preds = %polly.loop_header388
  %n.vec1567 = and i64 %148, -4
  br label %vector.body1561

vector.body1561:                                  ; preds = %vector.body1561, %vector.ph1565
  %index1568 = phi i64 [ 0, %vector.ph1565 ], [ %index.next1569, %vector.body1561 ]
  %150 = shl nuw nsw i64 %index1568, 3
  %151 = getelementptr i8, i8* %scevgep400, i64 %150
  %152 = bitcast i8* %151 to <4 x double>*
  %wide.load1572 = load <4 x double>, <4 x double>* %152, align 8, !alias.scope !78, !noalias !80
  %153 = fmul fast <4 x double> %wide.load1572, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %154 = bitcast i8* %151 to <4 x double>*
  store <4 x double> %153, <4 x double>* %154, align 8, !alias.scope !78, !noalias !80
  %index.next1569 = add i64 %index1568, 4
  %155 = icmp eq i64 %index.next1569, %n.vec1567
  br i1 %155, label %middle.block1559, label %vector.body1561, !llvm.loop !85

middle.block1559:                                 ; preds = %vector.body1561
  %cmp.n1571 = icmp eq i64 %148, %n.vec1567
  br i1 %cmp.n1571, label %polly.loop_exit396, label %polly.loop_header394.preheader

polly.loop_header394.preheader:                   ; preds = %polly.loop_header388, %middle.block1559
  %polly.indvar397.ph = phi i64 [ 0, %polly.loop_header388 ], [ %n.vec1567, %middle.block1559 ]
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_header394, %middle.block1559
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar_next392, 80
  %indvar.next1563 = add i64 %indvar1562, 1
  br i1 %exitcond1093.not, label %polly.loop_header404.preheader, label %polly.loop_header388

polly.loop_header404.preheader:                   ; preds = %polly.loop_exit396
  %Packed_MemRef_call1303 = bitcast i8* %malloccall302 to double*
  %Packed_MemRef_call2305 = bitcast i8* %malloccall304 to double*
  br label %polly.loop_header404

polly.loop_header394:                             ; preds = %polly.loop_header394.preheader, %polly.loop_header394
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_header394 ], [ %polly.indvar397.ph, %polly.loop_header394.preheader ]
  %156 = shl nuw nsw i64 %polly.indvar397, 3
  %scevgep401 = getelementptr i8, i8* %scevgep400, i64 %156
  %scevgep401402 = bitcast i8* %scevgep401 to double*
  %_p_scalar_403 = load double, double* %scevgep401402, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_403, 1.200000e+00
  store double %p_mul.i57, double* %scevgep401402, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1092.not = icmp eq i64 %polly.indvar_next398, %polly.indvar391
  br i1 %exitcond1092.not, label %polly.loop_exit396, label %polly.loop_header394, !llvm.loop !86

polly.loop_header404:                             ; preds = %polly.loop_header404.preheader, %polly.loop_exit412
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_exit412 ], [ 0, %polly.loop_header404.preheader ]
  %polly.access.mul.Packed_MemRef_call2305 = mul nuw nsw i64 %polly.indvar407, 80
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_header410
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar_next408, 60
  br i1 %exitcond1091.not, label %polly.loop_header420, label %polly.loop_header404

polly.loop_header410:                             ; preds = %polly.loop_header410, %polly.loop_header404
  %polly.indvar413 = phi i64 [ 0, %polly.loop_header404 ], [ %polly.indvar_next414, %polly.loop_header410 ]
  %polly.access.mul.call2417 = mul nuw nsw i64 %polly.indvar413, 60
  %polly.access.add.call2418 = add nuw nsw i64 %polly.access.mul.call2417, %polly.indvar407
  %polly.access.call2419 = getelementptr double, double* %polly.access.cast.call2732, i64 %polly.access.add.call2418
  %polly.access.call2419.load = load double, double* %polly.access.call2419, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call2305 = add nuw nsw i64 %polly.indvar413, %polly.access.mul.Packed_MemRef_call2305
  %polly.access.Packed_MemRef_call2305 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305
  store double %polly.access.call2419.load, double* %polly.access.Packed_MemRef_call2305, align 8
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar_next414, 80
  br i1 %exitcond1090.not, label %polly.loop_exit412, label %polly.loop_header410

polly.loop_header420:                             ; preds = %polly.loop_exit412, %polly.loop_exit428
  %indvars.iv1084 = phi i64 [ %indvars.iv.next1085, %polly.loop_exit428 ], [ 3, %polly.loop_exit412 ]
  %indvars.iv1070 = phi i64 [ %indvars.iv.next1071, %polly.loop_exit428 ], [ 0, %polly.loop_exit412 ]
  %indvars.iv1065 = phi i64 [ %indvars.iv.next1066, %polly.loop_exit428 ], [ 0, %polly.loop_exit412 ]
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_exit428 ], [ 0, %polly.loop_exit412 ]
  %157 = mul nsw i64 %polly.indvar423, -32
  %158 = shl nuw nsw i64 %polly.indvar423, 5
  %umin1086 = call i64 @llvm.umin.i64(i64 %indvars.iv1084, i64 9)
  %159 = mul nsw i64 %polly.indvar423, -32
  %160 = icmp slt i64 %159, -48
  %161 = select i1 %160, i64 %159, i64 -48
  %162 = add nsw i64 %161, 79
  %163 = shl nsw i64 %polly.indvar423, 5
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_exit434
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %indvars.iv.next1066 = add nsw i64 %indvars.iv1065, -32
  %indvars.iv.next1071 = add nuw nsw i64 %indvars.iv1070, 32
  %indvars.iv.next1085 = add nuw nsw i64 %indvars.iv1084, 4
  %exitcond1089.not = icmp eq i64 %polly.indvar_next424, 3
  br i1 %exitcond1089.not, label %polly.exiting301, label %polly.loop_header420

polly.loop_header426:                             ; preds = %polly.loop_exit434, %polly.loop_header420
  %indvars.iv1061 = phi i64 [ %indvars.iv.next1062, %polly.loop_exit434 ], [ 0, %polly.loop_header420 ]
  %polly.indvar429 = phi i64 [ %polly.indvar_next430, %polly.loop_exit434 ], [ 0, %polly.loop_header420 ]
  %smin1082 = call i64 @llvm.smin.i64(i64 %indvars.iv1061, i64 -52)
  %164 = add nsw i64 %smin1082, 60
  %165 = shl nsw i64 %polly.indvar429, 3
  br label %polly.loop_header432

polly.loop_exit434:                               ; preds = %polly.loop_exit441
  %polly.indvar_next430 = add nuw nsw i64 %polly.indvar429, 1
  %indvars.iv.next1062 = add nsw i64 %indvars.iv1061, -8
  %exitcond1088.not = icmp eq i64 %polly.indvar_next430, 8
  br i1 %exitcond1088.not, label %polly.loop_exit428, label %polly.loop_header426

polly.loop_header432:                             ; preds = %polly.loop_exit441, %polly.loop_header426
  %indvars.iv1072 = phi i64 [ %indvars.iv.next1073, %polly.loop_exit441 ], [ %indvars.iv1070, %polly.loop_header426 ]
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068, %polly.loop_exit441 ], [ %indvars.iv1065, %polly.loop_header426 ]
  %polly.indvar435 = phi i64 [ %polly.indvar_next436, %polly.loop_exit441 ], [ 0, %polly.loop_header426 ]
  %166 = shl nuw nsw i64 %polly.indvar435, 3
  %167 = add i64 %157, %166
  %smax1576 = call i64 @llvm.smax.i64(i64 %167, i64 0)
  %168 = mul nsw i64 %polly.indvar435, -8
  %169 = add i64 %158, %168
  %170 = add i64 %smax1576, %169
  %171 = shl nsw i64 %polly.indvar435, 3
  %172 = add nsw i64 %171, %159
  %173 = icmp sgt i64 %172, 0
  %174 = select i1 %173, i64 %172, i64 0
  %polly.loop_guard442.not = icmp sgt i64 %174, %162
  br i1 %polly.loop_guard442.not, label %polly.loop_exit441, label %polly.loop_header439.preheader

polly.loop_header439.preheader:                   ; preds = %polly.loop_header432
  %smax1069 = call i64 @llvm.smax.i64(i64 %indvars.iv1067, i64 0)
  %175 = add i64 %smax1069, %indvars.iv1072
  %176 = sub nsw i64 %163, %171
  %177 = add nuw nsw i64 %171, 8
  br label %polly.loop_header439

polly.loop_exit441:                               ; preds = %polly.loop_exit477, %polly.loop_header432
  %polly.indvar_next436 = add nuw nsw i64 %polly.indvar435, 1
  %indvars.iv.next1068 = add nsw i64 %indvars.iv1067, 8
  %indvars.iv.next1073 = add nsw i64 %indvars.iv1072, -8
  %exitcond1087.not = icmp eq i64 %polly.indvar435, %umin1086
  br i1 %exitcond1087.not, label %polly.loop_exit434, label %polly.loop_header432

polly.loop_header439:                             ; preds = %polly.loop_header439.preheader, %polly.loop_exit477
  %indvar1577 = phi i64 [ 0, %polly.loop_header439.preheader ], [ %indvar.next1578, %polly.loop_exit477 ]
  %indvars.iv1074 = phi i64 [ %175, %polly.loop_header439.preheader ], [ %indvars.iv.next1075, %polly.loop_exit477 ]
  %polly.indvar443 = phi i64 [ %174, %polly.loop_header439.preheader ], [ %polly.indvar_next444, %polly.loop_exit477 ]
  %178 = add i64 %170, %indvar1577
  %smin1579 = call i64 @llvm.smin.i64(i64 %178, i64 7)
  %179 = add nsw i64 %smin1579, 1
  %smin1080 = call i64 @llvm.smin.i64(i64 %indvars.iv1074, i64 7)
  %180 = add nsw i64 %polly.indvar443, %176
  %polly.loop_guard4561210 = icmp sgt i64 %180, -1
  %181 = add nuw nsw i64 %polly.indvar443, %163
  %.not924 = icmp ult i64 %181, %177
  %polly.access.mul.call1469 = mul nsw i64 %181, 60
  %182 = add nuw i64 %polly.access.mul.call1469, %165
  br i1 %polly.loop_guard4561210, label %polly.loop_header446.us, label %polly.loop_header439.split

polly.loop_header446.us:                          ; preds = %polly.loop_header439, %polly.merge465.us
  %polly.indvar449.us = phi i64 [ %polly.indvar_next450.us, %polly.merge465.us ], [ 0, %polly.loop_header439 ]
  %183 = add nuw nsw i64 %polly.indvar449.us, %165
  %polly.access.mul.Packed_MemRef_call1303.us = mul nuw nsw i64 %polly.indvar449.us, 80
  br label %polly.loop_header453.us

polly.loop_header453.us:                          ; preds = %polly.loop_header446.us, %polly.loop_header453.us
  %polly.indvar457.us = phi i64 [ %polly.indvar_next458.us, %polly.loop_header453.us ], [ 0, %polly.loop_header446.us ]
  %184 = add nuw nsw i64 %polly.indvar457.us, %171
  %polly.access.mul.call1461.us = mul nuw nsw i64 %184, 60
  %polly.access.add.call1462.us = add nuw nsw i64 %183, %polly.access.mul.call1461.us
  %polly.access.call1463.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1462.us
  %polly.access.call1463.load.us = load double, double* %polly.access.call1463.us, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1303.us = add nuw nsw i64 %polly.indvar457.us, %polly.access.mul.Packed_MemRef_call1303.us
  %polly.access.Packed_MemRef_call1303.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us
  store double %polly.access.call1463.load.us, double* %polly.access.Packed_MemRef_call1303.us, align 8
  %polly.indvar_next458.us = add nuw nsw i64 %polly.indvar457.us, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar457.us, %smin1080
  br i1 %exitcond1077.not, label %polly.cond464.loopexit.us, label %polly.loop_header453.us

polly.then466.us:                                 ; preds = %polly.cond464.loopexit.us
  %polly.access.add.call1470.us = add nuw nsw i64 %182, %polly.indvar449.us
  %polly.access.call1471.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1470.us
  %polly.access.call1471.load.us = load double, double* %polly.access.call1471.us, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1303473.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1303.us, %180
  %polly.access.Packed_MemRef_call1303474.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303473.us
  store double %polly.access.call1471.load.us, double* %polly.access.Packed_MemRef_call1303474.us, align 8
  br label %polly.merge465.us

polly.merge465.us:                                ; preds = %polly.then466.us, %polly.cond464.loopexit.us
  %polly.indvar_next450.us = add nuw nsw i64 %polly.indvar449.us, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar_next450.us, %164
  br i1 %exitcond1079.not, label %polly.loop_header475.preheader, label %polly.loop_header446.us

polly.cond464.loopexit.us:                        ; preds = %polly.loop_header453.us
  br i1 %.not924, label %polly.merge465.us, label %polly.then466.us

polly.loop_header439.split:                       ; preds = %polly.loop_header439
  br i1 %.not924, label %polly.loop_exit477, label %polly.loop_header446

polly.loop_exit477:                               ; preds = %polly.loop_exit484.loopexit.us, %polly.loop_header439.split, %polly.loop_header475.preheader
  %polly.indvar_next444 = add nuw nsw i64 %polly.indvar443, 1
  %polly.loop_cond445.not.not = icmp ult i64 %polly.indvar443, %162
  %indvars.iv.next1075 = add i64 %indvars.iv1074, 1
  %indvar.next1578 = add i64 %indvar1577, 1
  br i1 %polly.loop_cond445.not.not, label %polly.loop_header439, label %polly.loop_exit441

polly.loop_header446:                             ; preds = %polly.loop_header439.split, %polly.loop_header446
  %polly.indvar449 = phi i64 [ %polly.indvar_next450, %polly.loop_header446 ], [ 0, %polly.loop_header439.split ]
  %polly.access.add.call1470 = add nuw nsw i64 %182, %polly.indvar449
  %polly.access.call1471 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1470
  %polly.access.call1471.load = load double, double* %polly.access.call1471, align 8, !alias.scope !81, !noalias !88
  %polly.access.mul.Packed_MemRef_call1303472 = mul nuw nsw i64 %polly.indvar449, 80
  %polly.access.add.Packed_MemRef_call1303473 = add nsw i64 %polly.access.mul.Packed_MemRef_call1303472, %180
  %polly.access.Packed_MemRef_call1303474 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303473
  store double %polly.access.call1471.load, double* %polly.access.Packed_MemRef_call1303474, align 8
  %polly.indvar_next450 = add nuw nsw i64 %polly.indvar449, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar_next450, %164
  br i1 %exitcond1064.not, label %polly.loop_header475.preheader, label %polly.loop_header446

polly.loop_header475.preheader:                   ; preds = %polly.loop_header446, %polly.merge465.us
  %185 = mul i64 %181, 640
  br i1 %polly.loop_guard4561210, label %polly.loop_header475.us, label %polly.loop_exit477

polly.loop_header475.us:                          ; preds = %polly.loop_header475.preheader, %polly.loop_exit484.loopexit.us
  %polly.indvar478.us = phi i64 [ %polly.indvar_next479.us, %polly.loop_exit484.loopexit.us ], [ 0, %polly.loop_header475.preheader ]
  %polly.access.mul.Packed_MemRef_call1303489.us = mul nuw nsw i64 %polly.indvar478.us, 80
  %186 = add nuw nsw i64 %polly.indvar478.us, %165
  %polly.access.mul.Packed_MemRef_call2305493.us = mul nuw nsw i64 %186, 80
  %polly.access.add.Packed_MemRef_call2305494.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305493.us, %181
  %polly.access.Packed_MemRef_call2305495.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305494.us
  %_p_scalar_496.us = load double, double* %polly.access.Packed_MemRef_call2305495.us, align 8
  %polly.access.add.Packed_MemRef_call1303502.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1303489.us, %180
  %polly.access.Packed_MemRef_call1303503.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303502.us
  %_p_scalar_504.us = load double, double* %polly.access.Packed_MemRef_call1303503.us, align 8
  %min.iters.check1580 = icmp ult i64 %179, 4
  br i1 %min.iters.check1580, label %polly.loop_header482.us.preheader, label %vector.ph1581

vector.ph1581:                                    ; preds = %polly.loop_header475.us
  %n.vec1583 = and i64 %179, -4
  %broadcast.splatinsert1589 = insertelement <4 x double> poison, double %_p_scalar_496.us, i32 0
  %broadcast.splat1590 = shufflevector <4 x double> %broadcast.splatinsert1589, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1592 = insertelement <4 x double> poison, double %_p_scalar_504.us, i32 0
  %broadcast.splat1593 = shufflevector <4 x double> %broadcast.splatinsert1592, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1575

vector.body1575:                                  ; preds = %vector.body1575, %vector.ph1581
  %index1584 = phi i64 [ 0, %vector.ph1581 ], [ %index.next1585, %vector.body1575 ]
  %187 = add nuw nsw i64 %index1584, %171
  %188 = add nuw nsw i64 %index1584, %polly.access.mul.Packed_MemRef_call1303489.us
  %189 = getelementptr double, double* %Packed_MemRef_call1303, i64 %188
  %190 = bitcast double* %189 to <4 x double>*
  %wide.load1588 = load <4 x double>, <4 x double>* %190, align 8
  %191 = fmul fast <4 x double> %broadcast.splat1590, %wide.load1588
  %192 = add nuw nsw i64 %187, %polly.access.mul.Packed_MemRef_call2305493.us
  %193 = getelementptr double, double* %Packed_MemRef_call2305, i64 %192
  %194 = bitcast double* %193 to <4 x double>*
  %wide.load1591 = load <4 x double>, <4 x double>* %194, align 8
  %195 = fmul fast <4 x double> %broadcast.splat1593, %wide.load1591
  %196 = shl i64 %187, 3
  %197 = add i64 %196, %185
  %198 = getelementptr i8, i8* %call, i64 %197
  %199 = bitcast i8* %198 to <4 x double>*
  %wide.load1594 = load <4 x double>, <4 x double>* %199, align 8, !alias.scope !78, !noalias !80
  %200 = fadd fast <4 x double> %195, %191
  %201 = fmul fast <4 x double> %200, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %202 = fadd fast <4 x double> %201, %wide.load1594
  %203 = bitcast i8* %198 to <4 x double>*
  store <4 x double> %202, <4 x double>* %203, align 8, !alias.scope !78, !noalias !80
  %index.next1585 = add i64 %index1584, 4
  %204 = icmp eq i64 %index.next1585, %n.vec1583
  br i1 %204, label %middle.block1573, label %vector.body1575, !llvm.loop !89

middle.block1573:                                 ; preds = %vector.body1575
  %cmp.n1587 = icmp eq i64 %179, %n.vec1583
  br i1 %cmp.n1587, label %polly.loop_exit484.loopexit.us, label %polly.loop_header482.us.preheader

polly.loop_header482.us.preheader:                ; preds = %polly.loop_header475.us, %middle.block1573
  %polly.indvar486.us.ph = phi i64 [ 0, %polly.loop_header475.us ], [ %n.vec1583, %middle.block1573 ]
  br label %polly.loop_header482.us

polly.loop_header482.us:                          ; preds = %polly.loop_header482.us.preheader, %polly.loop_header482.us
  %polly.indvar486.us = phi i64 [ %polly.indvar_next487.us, %polly.loop_header482.us ], [ %polly.indvar486.us.ph, %polly.loop_header482.us.preheader ]
  %205 = add nuw nsw i64 %polly.indvar486.us, %171
  %polly.access.add.Packed_MemRef_call1303490.us = add nuw nsw i64 %polly.indvar486.us, %polly.access.mul.Packed_MemRef_call1303489.us
  %polly.access.Packed_MemRef_call1303491.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303490.us
  %_p_scalar_492.us = load double, double* %polly.access.Packed_MemRef_call1303491.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_496.us, %_p_scalar_492.us
  %polly.access.add.Packed_MemRef_call2305498.us = add nuw nsw i64 %205, %polly.access.mul.Packed_MemRef_call2305493.us
  %polly.access.Packed_MemRef_call2305499.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305498.us
  %_p_scalar_500.us = load double, double* %polly.access.Packed_MemRef_call2305499.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_504.us, %_p_scalar_500.us
  %206 = shl i64 %205, 3
  %207 = add i64 %206, %185
  %scevgep505.us = getelementptr i8, i8* %call, i64 %207
  %scevgep505506.us = bitcast i8* %scevgep505.us to double*
  %_p_scalar_507.us = load double, double* %scevgep505506.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_507.us
  store double %p_add42.i79.us, double* %scevgep505506.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next487.us = add nuw nsw i64 %polly.indvar486.us, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar486.us, %smin1080
  br i1 %exitcond1081.not, label %polly.loop_exit484.loopexit.us, label %polly.loop_header482.us, !llvm.loop !90

polly.loop_exit484.loopexit.us:                   ; preds = %polly.loop_header482.us, %middle.block1573
  %polly.indvar_next479.us = add nuw nsw i64 %polly.indvar478.us, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar_next479.us, %164
  br i1 %exitcond1083.not, label %polly.loop_exit477, label %polly.loop_header475.us

polly.start510:                                   ; preds = %init_array.exit
  %malloccall512 = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #6
  %malloccall514 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header598

polly.exiting511:                                 ; preds = %polly.loop_exit638
  tail call void @free(i8* %malloccall512)
  tail call void @free(i8* %malloccall514)
  br label %kernel_syr2k.exit

polly.loop_header598:                             ; preds = %polly.loop_exit606, %polly.start510
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit606 ], [ 0, %polly.start510 ]
  %polly.indvar601 = phi i64 [ %polly.indvar_next602, %polly.loop_exit606 ], [ 1, %polly.start510 ]
  %208 = add i64 %indvar, 1
  %209 = mul nuw nsw i64 %polly.indvar601, 640
  %scevgep610 = getelementptr i8, i8* %call, i64 %209
  %min.iters.check1517 = icmp ult i64 %208, 4
  br i1 %min.iters.check1517, label %polly.loop_header604.preheader, label %vector.ph1518

vector.ph1518:                                    ; preds = %polly.loop_header598
  %n.vec1520 = and i64 %208, -4
  br label %vector.body1516

vector.body1516:                                  ; preds = %vector.body1516, %vector.ph1518
  %index1521 = phi i64 [ 0, %vector.ph1518 ], [ %index.next1522, %vector.body1516 ]
  %210 = shl nuw nsw i64 %index1521, 3
  %211 = getelementptr i8, i8* %scevgep610, i64 %210
  %212 = bitcast i8* %211 to <4 x double>*
  %wide.load1525 = load <4 x double>, <4 x double>* %212, align 8, !alias.scope !91, !noalias !93
  %213 = fmul fast <4 x double> %wide.load1525, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %214 = bitcast i8* %211 to <4 x double>*
  store <4 x double> %213, <4 x double>* %214, align 8, !alias.scope !91, !noalias !93
  %index.next1522 = add i64 %index1521, 4
  %215 = icmp eq i64 %index.next1522, %n.vec1520
  br i1 %215, label %middle.block1514, label %vector.body1516, !llvm.loop !98

middle.block1514:                                 ; preds = %vector.body1516
  %cmp.n1524 = icmp eq i64 %208, %n.vec1520
  br i1 %cmp.n1524, label %polly.loop_exit606, label %polly.loop_header604.preheader

polly.loop_header604.preheader:                   ; preds = %polly.loop_header598, %middle.block1514
  %polly.indvar607.ph = phi i64 [ 0, %polly.loop_header598 ], [ %n.vec1520, %middle.block1514 ]
  br label %polly.loop_header604

polly.loop_exit606:                               ; preds = %polly.loop_header604, %middle.block1514
  %polly.indvar_next602 = add nuw nsw i64 %polly.indvar601, 1
  %exitcond1126.not = icmp eq i64 %polly.indvar_next602, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1126.not, label %polly.loop_header614.preheader, label %polly.loop_header598

polly.loop_header614.preheader:                   ; preds = %polly.loop_exit606
  %Packed_MemRef_call1513 = bitcast i8* %malloccall512 to double*
  %Packed_MemRef_call2515 = bitcast i8* %malloccall514 to double*
  br label %polly.loop_header614

polly.loop_header604:                             ; preds = %polly.loop_header604.preheader, %polly.loop_header604
  %polly.indvar607 = phi i64 [ %polly.indvar_next608, %polly.loop_header604 ], [ %polly.indvar607.ph, %polly.loop_header604.preheader ]
  %216 = shl nuw nsw i64 %polly.indvar607, 3
  %scevgep611 = getelementptr i8, i8* %scevgep610, i64 %216
  %scevgep611612 = bitcast i8* %scevgep611 to double*
  %_p_scalar_613 = load double, double* %scevgep611612, align 8, !alias.scope !91, !noalias !93
  %p_mul.i = fmul fast double %_p_scalar_613, 1.200000e+00
  store double %p_mul.i, double* %scevgep611612, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next608 = add nuw nsw i64 %polly.indvar607, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar_next608, %polly.indvar601
  br i1 %exitcond1125.not, label %polly.loop_exit606, label %polly.loop_header604, !llvm.loop !99

polly.loop_header614:                             ; preds = %polly.loop_header614.preheader, %polly.loop_exit622
  %polly.indvar617 = phi i64 [ %polly.indvar_next618, %polly.loop_exit622 ], [ 0, %polly.loop_header614.preheader ]
  %polly.access.mul.Packed_MemRef_call2515 = mul nuw nsw i64 %polly.indvar617, 80
  br label %polly.loop_header620

polly.loop_exit622:                               ; preds = %polly.loop_header620
  %polly.indvar_next618 = add nuw nsw i64 %polly.indvar617, 1
  %exitcond1124.not = icmp eq i64 %polly.indvar_next618, 60
  br i1 %exitcond1124.not, label %polly.loop_header630, label %polly.loop_header614

polly.loop_header620:                             ; preds = %polly.loop_header620, %polly.loop_header614
  %polly.indvar623 = phi i64 [ 0, %polly.loop_header614 ], [ %polly.indvar_next624, %polly.loop_header620 ]
  %polly.access.mul.call2627 = mul nuw nsw i64 %polly.indvar623, 60
  %polly.access.add.call2628 = add nuw nsw i64 %polly.access.mul.call2627, %polly.indvar617
  %polly.access.call2629 = getelementptr double, double* %polly.access.cast.call2732, i64 %polly.access.add.call2628
  %polly.access.call2629.load = load double, double* %polly.access.call2629, align 8, !alias.scope !95, !noalias !100
  %polly.access.add.Packed_MemRef_call2515 = add nuw nsw i64 %polly.indvar623, %polly.access.mul.Packed_MemRef_call2515
  %polly.access.Packed_MemRef_call2515 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515
  store double %polly.access.call2629.load, double* %polly.access.Packed_MemRef_call2515, align 8
  %polly.indvar_next624 = add nuw nsw i64 %polly.indvar623, 1
  %exitcond1123.not = icmp eq i64 %polly.indvar_next624, 80
  br i1 %exitcond1123.not, label %polly.loop_exit622, label %polly.loop_header620

polly.loop_header630:                             ; preds = %polly.loop_exit622, %polly.loop_exit638
  %indvars.iv1117 = phi i64 [ %indvars.iv.next1118, %polly.loop_exit638 ], [ 3, %polly.loop_exit622 ]
  %indvars.iv1103 = phi i64 [ %indvars.iv.next1104, %polly.loop_exit638 ], [ 0, %polly.loop_exit622 ]
  %indvars.iv1098 = phi i64 [ %indvars.iv.next1099, %polly.loop_exit638 ], [ 0, %polly.loop_exit622 ]
  %polly.indvar633 = phi i64 [ %polly.indvar_next634, %polly.loop_exit638 ], [ 0, %polly.loop_exit622 ]
  %217 = mul nsw i64 %polly.indvar633, -32
  %218 = shl nuw nsw i64 %polly.indvar633, 5
  %umin1119 = call i64 @llvm.umin.i64(i64 %indvars.iv1117, i64 9)
  %219 = mul nsw i64 %polly.indvar633, -32
  %220 = icmp slt i64 %219, -48
  %221 = select i1 %220, i64 %219, i64 -48
  %222 = add nsw i64 %221, 79
  %223 = shl nsw i64 %polly.indvar633, 5
  br label %polly.loop_header636

polly.loop_exit638:                               ; preds = %polly.loop_exit644
  %polly.indvar_next634 = add nuw nsw i64 %polly.indvar633, 1
  %indvars.iv.next1099 = add nsw i64 %indvars.iv1098, -32
  %indvars.iv.next1104 = add nuw nsw i64 %indvars.iv1103, 32
  %indvars.iv.next1118 = add nuw nsw i64 %indvars.iv1117, 4
  %exitcond1122.not = icmp eq i64 %polly.indvar_next634, 3
  br i1 %exitcond1122.not, label %polly.exiting511, label %polly.loop_header630

polly.loop_header636:                             ; preds = %polly.loop_exit644, %polly.loop_header630
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095, %polly.loop_exit644 ], [ 0, %polly.loop_header630 ]
  %polly.indvar639 = phi i64 [ %polly.indvar_next640, %polly.loop_exit644 ], [ 0, %polly.loop_header630 ]
  %smin1115 = call i64 @llvm.smin.i64(i64 %indvars.iv1094, i64 -52)
  %224 = add nsw i64 %smin1115, 60
  %225 = shl nsw i64 %polly.indvar639, 3
  br label %polly.loop_header642

polly.loop_exit644:                               ; preds = %polly.loop_exit651
  %polly.indvar_next640 = add nuw nsw i64 %polly.indvar639, 1
  %indvars.iv.next1095 = add nsw i64 %indvars.iv1094, -8
  %exitcond1121.not = icmp eq i64 %polly.indvar_next640, 8
  br i1 %exitcond1121.not, label %polly.loop_exit638, label %polly.loop_header636

polly.loop_header642:                             ; preds = %polly.loop_exit651, %polly.loop_header636
  %indvars.iv1105 = phi i64 [ %indvars.iv.next1106, %polly.loop_exit651 ], [ %indvars.iv1103, %polly.loop_header636 ]
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit651 ], [ %indvars.iv1098, %polly.loop_header636 ]
  %polly.indvar645 = phi i64 [ %polly.indvar_next646, %polly.loop_exit651 ], [ 0, %polly.loop_header636 ]
  %226 = shl nuw nsw i64 %polly.indvar645, 3
  %227 = add i64 %217, %226
  %smax1529 = call i64 @llvm.smax.i64(i64 %227, i64 0)
  %228 = mul nsw i64 %polly.indvar645, -8
  %229 = add i64 %218, %228
  %230 = add i64 %smax1529, %229
  %231 = shl nsw i64 %polly.indvar645, 3
  %232 = add nsw i64 %231, %219
  %233 = icmp sgt i64 %232, 0
  %234 = select i1 %233, i64 %232, i64 0
  %polly.loop_guard652.not = icmp sgt i64 %234, %222
  br i1 %polly.loop_guard652.not, label %polly.loop_exit651, label %polly.loop_header649.preheader

polly.loop_header649.preheader:                   ; preds = %polly.loop_header642
  %smax1102 = call i64 @llvm.smax.i64(i64 %indvars.iv1100, i64 0)
  %235 = add i64 %smax1102, %indvars.iv1105
  %236 = sub nsw i64 %223, %231
  %237 = add nuw nsw i64 %231, 8
  br label %polly.loop_header649

polly.loop_exit651:                               ; preds = %polly.loop_exit687, %polly.loop_header642
  %polly.indvar_next646 = add nuw nsw i64 %polly.indvar645, 1
  %indvars.iv.next1101 = add nsw i64 %indvars.iv1100, 8
  %indvars.iv.next1106 = add nsw i64 %indvars.iv1105, -8
  %exitcond1120.not = icmp eq i64 %polly.indvar645, %umin1119
  br i1 %exitcond1120.not, label %polly.loop_exit644, label %polly.loop_header642

polly.loop_header649:                             ; preds = %polly.loop_header649.preheader, %polly.loop_exit687
  %indvar1530 = phi i64 [ 0, %polly.loop_header649.preheader ], [ %indvar.next1531, %polly.loop_exit687 ]
  %indvars.iv1107 = phi i64 [ %235, %polly.loop_header649.preheader ], [ %indvars.iv.next1108, %polly.loop_exit687 ]
  %polly.indvar653 = phi i64 [ %234, %polly.loop_header649.preheader ], [ %polly.indvar_next654, %polly.loop_exit687 ]
  %238 = add i64 %230, %indvar1530
  %smin = call i64 @llvm.smin.i64(i64 %238, i64 7)
  %239 = add nsw i64 %smin, 1
  %smin1113 = call i64 @llvm.smin.i64(i64 %indvars.iv1107, i64 7)
  %240 = add nsw i64 %polly.indvar653, %236
  %polly.loop_guard6661211 = icmp sgt i64 %240, -1
  %241 = add nuw nsw i64 %polly.indvar653, %223
  %.not925 = icmp ult i64 %241, %237
  %polly.access.mul.call1679 = mul nsw i64 %241, 60
  %242 = add nuw i64 %polly.access.mul.call1679, %225
  br i1 %polly.loop_guard6661211, label %polly.loop_header656.us, label %polly.loop_header649.split

polly.loop_header656.us:                          ; preds = %polly.loop_header649, %polly.merge675.us
  %polly.indvar659.us = phi i64 [ %polly.indvar_next660.us, %polly.merge675.us ], [ 0, %polly.loop_header649 ]
  %243 = add nuw nsw i64 %polly.indvar659.us, %225
  %polly.access.mul.Packed_MemRef_call1513.us = mul nuw nsw i64 %polly.indvar659.us, 80
  br label %polly.loop_header663.us

polly.loop_header663.us:                          ; preds = %polly.loop_header656.us, %polly.loop_header663.us
  %polly.indvar667.us = phi i64 [ %polly.indvar_next668.us, %polly.loop_header663.us ], [ 0, %polly.loop_header656.us ]
  %244 = add nuw nsw i64 %polly.indvar667.us, %231
  %polly.access.mul.call1671.us = mul nuw nsw i64 %244, 60
  %polly.access.add.call1672.us = add nuw nsw i64 %243, %polly.access.mul.call1671.us
  %polly.access.call1673.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1672.us
  %polly.access.call1673.load.us = load double, double* %polly.access.call1673.us, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1513.us = add nuw nsw i64 %polly.indvar667.us, %polly.access.mul.Packed_MemRef_call1513.us
  %polly.access.Packed_MemRef_call1513.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us
  store double %polly.access.call1673.load.us, double* %polly.access.Packed_MemRef_call1513.us, align 8
  %polly.indvar_next668.us = add nuw nsw i64 %polly.indvar667.us, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar667.us, %smin1113
  br i1 %exitcond1110.not, label %polly.cond674.loopexit.us, label %polly.loop_header663.us

polly.then676.us:                                 ; preds = %polly.cond674.loopexit.us
  %polly.access.add.call1680.us = add nuw nsw i64 %242, %polly.indvar659.us
  %polly.access.call1681.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1680.us
  %polly.access.call1681.load.us = load double, double* %polly.access.call1681.us, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1513683.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1513.us, %240
  %polly.access.Packed_MemRef_call1513684.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513683.us
  store double %polly.access.call1681.load.us, double* %polly.access.Packed_MemRef_call1513684.us, align 8
  br label %polly.merge675.us

polly.merge675.us:                                ; preds = %polly.then676.us, %polly.cond674.loopexit.us
  %polly.indvar_next660.us = add nuw nsw i64 %polly.indvar659.us, 1
  %exitcond1112.not = icmp eq i64 %polly.indvar_next660.us, %224
  br i1 %exitcond1112.not, label %polly.loop_header685.preheader, label %polly.loop_header656.us

polly.cond674.loopexit.us:                        ; preds = %polly.loop_header663.us
  br i1 %.not925, label %polly.merge675.us, label %polly.then676.us

polly.loop_header649.split:                       ; preds = %polly.loop_header649
  br i1 %.not925, label %polly.loop_exit687, label %polly.loop_header656

polly.loop_exit687:                               ; preds = %polly.loop_exit694.loopexit.us, %polly.loop_header649.split, %polly.loop_header685.preheader
  %polly.indvar_next654 = add nuw nsw i64 %polly.indvar653, 1
  %polly.loop_cond655.not.not = icmp ult i64 %polly.indvar653, %222
  %indvars.iv.next1108 = add i64 %indvars.iv1107, 1
  %indvar.next1531 = add i64 %indvar1530, 1
  br i1 %polly.loop_cond655.not.not, label %polly.loop_header649, label %polly.loop_exit651

polly.loop_header656:                             ; preds = %polly.loop_header649.split, %polly.loop_header656
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_header656 ], [ 0, %polly.loop_header649.split ]
  %polly.access.add.call1680 = add nuw nsw i64 %242, %polly.indvar659
  %polly.access.call1681 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1680
  %polly.access.call1681.load = load double, double* %polly.access.call1681, align 8, !alias.scope !94, !noalias !101
  %polly.access.mul.Packed_MemRef_call1513682 = mul nuw nsw i64 %polly.indvar659, 80
  %polly.access.add.Packed_MemRef_call1513683 = add nsw i64 %polly.access.mul.Packed_MemRef_call1513682, %240
  %polly.access.Packed_MemRef_call1513684 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513683
  store double %polly.access.call1681.load, double* %polly.access.Packed_MemRef_call1513684, align 8
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %exitcond1097.not = icmp eq i64 %polly.indvar_next660, %224
  br i1 %exitcond1097.not, label %polly.loop_header685.preheader, label %polly.loop_header656

polly.loop_header685.preheader:                   ; preds = %polly.loop_header656, %polly.merge675.us
  %245 = mul i64 %241, 640
  br i1 %polly.loop_guard6661211, label %polly.loop_header685.us, label %polly.loop_exit687

polly.loop_header685.us:                          ; preds = %polly.loop_header685.preheader, %polly.loop_exit694.loopexit.us
  %polly.indvar688.us = phi i64 [ %polly.indvar_next689.us, %polly.loop_exit694.loopexit.us ], [ 0, %polly.loop_header685.preheader ]
  %polly.access.mul.Packed_MemRef_call1513699.us = mul nuw nsw i64 %polly.indvar688.us, 80
  %246 = add nuw nsw i64 %polly.indvar688.us, %225
  %polly.access.mul.Packed_MemRef_call2515703.us = mul nuw nsw i64 %246, 80
  %polly.access.add.Packed_MemRef_call2515704.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2515703.us, %241
  %polly.access.Packed_MemRef_call2515705.us = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515704.us
  %_p_scalar_706.us = load double, double* %polly.access.Packed_MemRef_call2515705.us, align 8
  %polly.access.add.Packed_MemRef_call1513712.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1513699.us, %240
  %polly.access.Packed_MemRef_call1513713.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513712.us
  %_p_scalar_714.us = load double, double* %polly.access.Packed_MemRef_call1513713.us, align 8
  %min.iters.check1532 = icmp ult i64 %239, 4
  br i1 %min.iters.check1532, label %polly.loop_header692.us.preheader, label %vector.ph1533

vector.ph1533:                                    ; preds = %polly.loop_header685.us
  %n.vec1535 = and i64 %239, -4
  %broadcast.splatinsert1541 = insertelement <4 x double> poison, double %_p_scalar_706.us, i32 0
  %broadcast.splat1542 = shufflevector <4 x double> %broadcast.splatinsert1541, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1544 = insertelement <4 x double> poison, double %_p_scalar_714.us, i32 0
  %broadcast.splat1545 = shufflevector <4 x double> %broadcast.splatinsert1544, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1528

vector.body1528:                                  ; preds = %vector.body1528, %vector.ph1533
  %index1536 = phi i64 [ 0, %vector.ph1533 ], [ %index.next1537, %vector.body1528 ]
  %247 = add nuw nsw i64 %index1536, %231
  %248 = add nuw nsw i64 %index1536, %polly.access.mul.Packed_MemRef_call1513699.us
  %249 = getelementptr double, double* %Packed_MemRef_call1513, i64 %248
  %250 = bitcast double* %249 to <4 x double>*
  %wide.load1540 = load <4 x double>, <4 x double>* %250, align 8
  %251 = fmul fast <4 x double> %broadcast.splat1542, %wide.load1540
  %252 = add nuw nsw i64 %247, %polly.access.mul.Packed_MemRef_call2515703.us
  %253 = getelementptr double, double* %Packed_MemRef_call2515, i64 %252
  %254 = bitcast double* %253 to <4 x double>*
  %wide.load1543 = load <4 x double>, <4 x double>* %254, align 8
  %255 = fmul fast <4 x double> %broadcast.splat1545, %wide.load1543
  %256 = shl i64 %247, 3
  %257 = add i64 %256, %245
  %258 = getelementptr i8, i8* %call, i64 %257
  %259 = bitcast i8* %258 to <4 x double>*
  %wide.load1546 = load <4 x double>, <4 x double>* %259, align 8, !alias.scope !91, !noalias !93
  %260 = fadd fast <4 x double> %255, %251
  %261 = fmul fast <4 x double> %260, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %262 = fadd fast <4 x double> %261, %wide.load1546
  %263 = bitcast i8* %258 to <4 x double>*
  store <4 x double> %262, <4 x double>* %263, align 8, !alias.scope !91, !noalias !93
  %index.next1537 = add i64 %index1536, 4
  %264 = icmp eq i64 %index.next1537, %n.vec1535
  br i1 %264, label %middle.block1526, label %vector.body1528, !llvm.loop !102

middle.block1526:                                 ; preds = %vector.body1528
  %cmp.n1539 = icmp eq i64 %239, %n.vec1535
  br i1 %cmp.n1539, label %polly.loop_exit694.loopexit.us, label %polly.loop_header692.us.preheader

polly.loop_header692.us.preheader:                ; preds = %polly.loop_header685.us, %middle.block1526
  %polly.indvar696.us.ph = phi i64 [ 0, %polly.loop_header685.us ], [ %n.vec1535, %middle.block1526 ]
  br label %polly.loop_header692.us

polly.loop_header692.us:                          ; preds = %polly.loop_header692.us.preheader, %polly.loop_header692.us
  %polly.indvar696.us = phi i64 [ %polly.indvar_next697.us, %polly.loop_header692.us ], [ %polly.indvar696.us.ph, %polly.loop_header692.us.preheader ]
  %265 = add nuw nsw i64 %polly.indvar696.us, %231
  %polly.access.add.Packed_MemRef_call1513700.us = add nuw nsw i64 %polly.indvar696.us, %polly.access.mul.Packed_MemRef_call1513699.us
  %polly.access.Packed_MemRef_call1513701.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513700.us
  %_p_scalar_702.us = load double, double* %polly.access.Packed_MemRef_call1513701.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_706.us, %_p_scalar_702.us
  %polly.access.add.Packed_MemRef_call2515708.us = add nuw nsw i64 %265, %polly.access.mul.Packed_MemRef_call2515703.us
  %polly.access.Packed_MemRef_call2515709.us = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515708.us
  %_p_scalar_710.us = load double, double* %polly.access.Packed_MemRef_call2515709.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_714.us, %_p_scalar_710.us
  %266 = shl i64 %265, 3
  %267 = add i64 %266, %245
  %scevgep715.us = getelementptr i8, i8* %call, i64 %267
  %scevgep715716.us = bitcast i8* %scevgep715.us to double*
  %_p_scalar_717.us = load double, double* %scevgep715716.us, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_717.us
  store double %p_add42.i.us, double* %scevgep715716.us, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next697.us = add nuw nsw i64 %polly.indvar696.us, 1
  %exitcond1114.not = icmp eq i64 %polly.indvar696.us, %smin1113
  br i1 %exitcond1114.not, label %polly.loop_exit694.loopexit.us, label %polly.loop_header692.us, !llvm.loop !103

polly.loop_exit694.loopexit.us:                   ; preds = %polly.loop_header692.us, %middle.block1526
  %polly.indvar_next689.us = add nuw nsw i64 %polly.indvar688.us, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar_next689.us, %224
  br i1 %exitcond1116.not, label %polly.loop_exit687, label %polly.loop_header685.us

polly.loop_header856:                             ; preds = %entry, %polly.loop_exit864
  %polly.indvar859 = phi i64 [ %polly.indvar_next860, %polly.loop_exit864 ], [ 0, %entry ]
  %268 = mul nuw nsw i64 %polly.indvar859, 640
  %269 = trunc i64 %polly.indvar859 to i32
  %broadcast.splatinsert1248 = insertelement <4 x i32> poison, i32 %269, i32 0
  %broadcast.splat1249 = shufflevector <4 x i32> %broadcast.splatinsert1248, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1238

vector.body1238:                                  ; preds = %vector.body1238, %polly.loop_header856
  %index1240 = phi i64 [ 0, %polly.loop_header856 ], [ %index.next1241, %vector.body1238 ]
  %vec.ind1246 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header856 ], [ %vec.ind.next1247, %vector.body1238 ]
  %270 = mul <4 x i32> %vec.ind1246, %broadcast.splat1249
  %271 = add <4 x i32> %270, <i32 3, i32 3, i32 3, i32 3>
  %272 = urem <4 x i32> %271, <i32 80, i32 80, i32 80, i32 80>
  %273 = sitofp <4 x i32> %272 to <4 x double>
  %274 = fmul fast <4 x double> %273, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %275 = shl i64 %index1240, 3
  %276 = add nuw nsw i64 %275, %268
  %277 = getelementptr i8, i8* %call, i64 %276
  %278 = bitcast i8* %277 to <4 x double>*
  store <4 x double> %274, <4 x double>* %278, align 8, !alias.scope !104, !noalias !106
  %index.next1241 = add i64 %index1240, 4
  %vec.ind.next1247 = add <4 x i32> %vec.ind1246, <i32 4, i32 4, i32 4, i32 4>
  %279 = icmp eq i64 %index.next1241, 32
  br i1 %279, label %polly.loop_exit864, label %vector.body1238, !llvm.loop !109

polly.loop_exit864:                               ; preds = %vector.body1238
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %exitcond1146.not = icmp eq i64 %polly.indvar_next860, 32
  br i1 %exitcond1146.not, label %polly.loop_header856.1, label %polly.loop_header856

polly.loop_header883:                             ; preds = %polly.loop_exit864.2.2, %polly.loop_exit891
  %polly.indvar886 = phi i64 [ %polly.indvar_next887, %polly.loop_exit891 ], [ 0, %polly.loop_exit864.2.2 ]
  %280 = mul nuw nsw i64 %polly.indvar886, 480
  %281 = trunc i64 %polly.indvar886 to i32
  %broadcast.splatinsert1362 = insertelement <4 x i32> poison, i32 %281, i32 0
  %broadcast.splat1363 = shufflevector <4 x i32> %broadcast.splatinsert1362, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1352

vector.body1352:                                  ; preds = %vector.body1352, %polly.loop_header883
  %index1354 = phi i64 [ 0, %polly.loop_header883 ], [ %index.next1355, %vector.body1352 ]
  %vec.ind1360 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header883 ], [ %vec.ind.next1361, %vector.body1352 ]
  %282 = mul <4 x i32> %vec.ind1360, %broadcast.splat1363
  %283 = add <4 x i32> %282, <i32 2, i32 2, i32 2, i32 2>
  %284 = urem <4 x i32> %283, <i32 60, i32 60, i32 60, i32 60>
  %285 = sitofp <4 x i32> %284 to <4 x double>
  %286 = fmul fast <4 x double> %285, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %287 = shl i64 %index1354, 3
  %288 = add i64 %287, %280
  %289 = getelementptr i8, i8* %call2, i64 %288
  %290 = bitcast i8* %289 to <4 x double>*
  store <4 x double> %286, <4 x double>* %290, align 8, !alias.scope !108, !noalias !110
  %index.next1355 = add i64 %index1354, 4
  %vec.ind.next1361 = add <4 x i32> %vec.ind1360, <i32 4, i32 4, i32 4, i32 4>
  %291 = icmp eq i64 %index.next1355, 32
  br i1 %291, label %polly.loop_exit891, label %vector.body1352, !llvm.loop !111

polly.loop_exit891:                               ; preds = %vector.body1352
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %exitcond1137.not = icmp eq i64 %polly.indvar_next887, 32
  br i1 %exitcond1137.not, label %polly.loop_header883.1, label %polly.loop_header883

polly.loop_header909:                             ; preds = %polly.loop_exit891.1.2, %polly.loop_exit917
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_exit917 ], [ 0, %polly.loop_exit891.1.2 ]
  %292 = mul nuw nsw i64 %polly.indvar912, 480
  %293 = trunc i64 %polly.indvar912 to i32
  %broadcast.splatinsert1440 = insertelement <4 x i32> poison, i32 %293, i32 0
  %broadcast.splat1441 = shufflevector <4 x i32> %broadcast.splatinsert1440, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1430

vector.body1430:                                  ; preds = %vector.body1430, %polly.loop_header909
  %index1432 = phi i64 [ 0, %polly.loop_header909 ], [ %index.next1433, %vector.body1430 ]
  %vec.ind1438 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header909 ], [ %vec.ind.next1439, %vector.body1430 ]
  %294 = mul <4 x i32> %vec.ind1438, %broadcast.splat1441
  %295 = add <4 x i32> %294, <i32 1, i32 1, i32 1, i32 1>
  %296 = urem <4 x i32> %295, <i32 80, i32 80, i32 80, i32 80>
  %297 = sitofp <4 x i32> %296 to <4 x double>
  %298 = fmul fast <4 x double> %297, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %299 = shl i64 %index1432, 3
  %300 = add i64 %299, %292
  %301 = getelementptr i8, i8* %call1, i64 %300
  %302 = bitcast i8* %301 to <4 x double>*
  store <4 x double> %298, <4 x double>* %302, align 8, !alias.scope !107, !noalias !112
  %index.next1433 = add i64 %index1432, 4
  %vec.ind.next1439 = add <4 x i32> %vec.ind1438, <i32 4, i32 4, i32 4, i32 4>
  %303 = icmp eq i64 %index.next1433, 32
  br i1 %303, label %polly.loop_exit917, label %vector.body1430, !llvm.loop !113

polly.loop_exit917:                               ; preds = %vector.body1430
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar_next913, 32
  br i1 %exitcond1131.not, label %polly.loop_header909.1, label %polly.loop_header909

polly.loop_header909.1:                           ; preds = %polly.loop_exit917, %polly.loop_exit917.1
  %polly.indvar912.1 = phi i64 [ %polly.indvar_next913.1, %polly.loop_exit917.1 ], [ 0, %polly.loop_exit917 ]
  %304 = mul nuw nsw i64 %polly.indvar912.1, 480
  %305 = trunc i64 %polly.indvar912.1 to i32
  %broadcast.splatinsert1452 = insertelement <4 x i32> poison, i32 %305, i32 0
  %broadcast.splat1453 = shufflevector <4 x i32> %broadcast.splatinsert1452, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1444

vector.body1444:                                  ; preds = %vector.body1444, %polly.loop_header909.1
  %index1446 = phi i64 [ 0, %polly.loop_header909.1 ], [ %index.next1447, %vector.body1444 ]
  %vec.ind1450 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header909.1 ], [ %vec.ind.next1451, %vector.body1444 ]
  %306 = add nuw nsw <4 x i64> %vec.ind1450, <i64 32, i64 32, i64 32, i64 32>
  %307 = trunc <4 x i64> %306 to <4 x i32>
  %308 = mul <4 x i32> %broadcast.splat1453, %307
  %309 = add <4 x i32> %308, <i32 1, i32 1, i32 1, i32 1>
  %310 = urem <4 x i32> %309, <i32 80, i32 80, i32 80, i32 80>
  %311 = sitofp <4 x i32> %310 to <4 x double>
  %312 = fmul fast <4 x double> %311, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %313 = extractelement <4 x i64> %306, i32 0
  %314 = shl i64 %313, 3
  %315 = add i64 %314, %304
  %316 = getelementptr i8, i8* %call1, i64 %315
  %317 = bitcast i8* %316 to <4 x double>*
  store <4 x double> %312, <4 x double>* %317, align 8, !alias.scope !107, !noalias !112
  %index.next1447 = add i64 %index1446, 4
  %vec.ind.next1451 = add <4 x i64> %vec.ind1450, <i64 4, i64 4, i64 4, i64 4>
  %318 = icmp eq i64 %index.next1447, 28
  br i1 %318, label %polly.loop_exit917.1, label %vector.body1444, !llvm.loop !114

polly.loop_exit917.1:                             ; preds = %vector.body1444
  %polly.indvar_next913.1 = add nuw nsw i64 %polly.indvar912.1, 1
  %exitcond1131.1.not = icmp eq i64 %polly.indvar_next913.1, 32
  br i1 %exitcond1131.1.not, label %polly.loop_header909.11154, label %polly.loop_header909.1

polly.loop_header909.11154:                       ; preds = %polly.loop_exit917.1, %polly.loop_exit917.11165
  %polly.indvar912.11153 = phi i64 [ %polly.indvar_next913.11163, %polly.loop_exit917.11165 ], [ 0, %polly.loop_exit917.1 ]
  %319 = add nuw nsw i64 %polly.indvar912.11153, 32
  %320 = mul nuw nsw i64 %319, 480
  %321 = trunc i64 %319 to i32
  %broadcast.splatinsert1466 = insertelement <4 x i32> poison, i32 %321, i32 0
  %broadcast.splat1467 = shufflevector <4 x i32> %broadcast.splatinsert1466, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1456

vector.body1456:                                  ; preds = %vector.body1456, %polly.loop_header909.11154
  %index1458 = phi i64 [ 0, %polly.loop_header909.11154 ], [ %index.next1459, %vector.body1456 ]
  %vec.ind1464 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header909.11154 ], [ %vec.ind.next1465, %vector.body1456 ]
  %322 = mul <4 x i32> %vec.ind1464, %broadcast.splat1467
  %323 = add <4 x i32> %322, <i32 1, i32 1, i32 1, i32 1>
  %324 = urem <4 x i32> %323, <i32 80, i32 80, i32 80, i32 80>
  %325 = sitofp <4 x i32> %324 to <4 x double>
  %326 = fmul fast <4 x double> %325, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %327 = shl i64 %index1458, 3
  %328 = add i64 %327, %320
  %329 = getelementptr i8, i8* %call1, i64 %328
  %330 = bitcast i8* %329 to <4 x double>*
  store <4 x double> %326, <4 x double>* %330, align 8, !alias.scope !107, !noalias !112
  %index.next1459 = add i64 %index1458, 4
  %vec.ind.next1465 = add <4 x i32> %vec.ind1464, <i32 4, i32 4, i32 4, i32 4>
  %331 = icmp eq i64 %index.next1459, 32
  br i1 %331, label %polly.loop_exit917.11165, label %vector.body1456, !llvm.loop !115

polly.loop_exit917.11165:                         ; preds = %vector.body1456
  %polly.indvar_next913.11163 = add nuw nsw i64 %polly.indvar912.11153, 1
  %exitcond1131.11164.not = icmp eq i64 %polly.indvar_next913.11163, 32
  br i1 %exitcond1131.11164.not, label %polly.loop_header909.1.1, label %polly.loop_header909.11154

polly.loop_header909.1.1:                         ; preds = %polly.loop_exit917.11165, %polly.loop_exit917.1.1
  %polly.indvar912.1.1 = phi i64 [ %polly.indvar_next913.1.1, %polly.loop_exit917.1.1 ], [ 0, %polly.loop_exit917.11165 ]
  %332 = add nuw nsw i64 %polly.indvar912.1.1, 32
  %333 = mul nuw nsw i64 %332, 480
  %334 = trunc i64 %332 to i32
  %broadcast.splatinsert1478 = insertelement <4 x i32> poison, i32 %334, i32 0
  %broadcast.splat1479 = shufflevector <4 x i32> %broadcast.splatinsert1478, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1470

vector.body1470:                                  ; preds = %vector.body1470, %polly.loop_header909.1.1
  %index1472 = phi i64 [ 0, %polly.loop_header909.1.1 ], [ %index.next1473, %vector.body1470 ]
  %vec.ind1476 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header909.1.1 ], [ %vec.ind.next1477, %vector.body1470 ]
  %335 = add nuw nsw <4 x i64> %vec.ind1476, <i64 32, i64 32, i64 32, i64 32>
  %336 = trunc <4 x i64> %335 to <4 x i32>
  %337 = mul <4 x i32> %broadcast.splat1479, %336
  %338 = add <4 x i32> %337, <i32 1, i32 1, i32 1, i32 1>
  %339 = urem <4 x i32> %338, <i32 80, i32 80, i32 80, i32 80>
  %340 = sitofp <4 x i32> %339 to <4 x double>
  %341 = fmul fast <4 x double> %340, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %342 = extractelement <4 x i64> %335, i32 0
  %343 = shl i64 %342, 3
  %344 = add i64 %343, %333
  %345 = getelementptr i8, i8* %call1, i64 %344
  %346 = bitcast i8* %345 to <4 x double>*
  store <4 x double> %341, <4 x double>* %346, align 8, !alias.scope !107, !noalias !112
  %index.next1473 = add i64 %index1472, 4
  %vec.ind.next1477 = add <4 x i64> %vec.ind1476, <i64 4, i64 4, i64 4, i64 4>
  %347 = icmp eq i64 %index.next1473, 28
  br i1 %347, label %polly.loop_exit917.1.1, label %vector.body1470, !llvm.loop !116

polly.loop_exit917.1.1:                           ; preds = %vector.body1470
  %polly.indvar_next913.1.1 = add nuw nsw i64 %polly.indvar912.1.1, 1
  %exitcond1131.1.1.not = icmp eq i64 %polly.indvar_next913.1.1, 32
  br i1 %exitcond1131.1.1.not, label %polly.loop_header909.2, label %polly.loop_header909.1.1

polly.loop_header909.2:                           ; preds = %polly.loop_exit917.1.1, %polly.loop_exit917.2
  %polly.indvar912.2 = phi i64 [ %polly.indvar_next913.2, %polly.loop_exit917.2 ], [ 0, %polly.loop_exit917.1.1 ]
  %348 = add nuw nsw i64 %polly.indvar912.2, 64
  %349 = mul nuw nsw i64 %348, 480
  %350 = trunc i64 %348 to i32
  %broadcast.splatinsert1492 = insertelement <4 x i32> poison, i32 %350, i32 0
  %broadcast.splat1493 = shufflevector <4 x i32> %broadcast.splatinsert1492, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1482

vector.body1482:                                  ; preds = %vector.body1482, %polly.loop_header909.2
  %index1484 = phi i64 [ 0, %polly.loop_header909.2 ], [ %index.next1485, %vector.body1482 ]
  %vec.ind1490 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header909.2 ], [ %vec.ind.next1491, %vector.body1482 ]
  %351 = mul <4 x i32> %vec.ind1490, %broadcast.splat1493
  %352 = add <4 x i32> %351, <i32 1, i32 1, i32 1, i32 1>
  %353 = urem <4 x i32> %352, <i32 80, i32 80, i32 80, i32 80>
  %354 = sitofp <4 x i32> %353 to <4 x double>
  %355 = fmul fast <4 x double> %354, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %356 = shl i64 %index1484, 3
  %357 = add i64 %356, %349
  %358 = getelementptr i8, i8* %call1, i64 %357
  %359 = bitcast i8* %358 to <4 x double>*
  store <4 x double> %355, <4 x double>* %359, align 8, !alias.scope !107, !noalias !112
  %index.next1485 = add i64 %index1484, 4
  %vec.ind.next1491 = add <4 x i32> %vec.ind1490, <i32 4, i32 4, i32 4, i32 4>
  %360 = icmp eq i64 %index.next1485, 32
  br i1 %360, label %polly.loop_exit917.2, label %vector.body1482, !llvm.loop !117

polly.loop_exit917.2:                             ; preds = %vector.body1482
  %polly.indvar_next913.2 = add nuw nsw i64 %polly.indvar912.2, 1
  %exitcond1131.2.not = icmp eq i64 %polly.indvar_next913.2, 16
  br i1 %exitcond1131.2.not, label %polly.loop_header909.1.2, label %polly.loop_header909.2

polly.loop_header909.1.2:                         ; preds = %polly.loop_exit917.2, %polly.loop_exit917.1.2
  %polly.indvar912.1.2 = phi i64 [ %polly.indvar_next913.1.2, %polly.loop_exit917.1.2 ], [ 0, %polly.loop_exit917.2 ]
  %361 = add nuw nsw i64 %polly.indvar912.1.2, 64
  %362 = mul nuw nsw i64 %361, 480
  %363 = trunc i64 %361 to i32
  %broadcast.splatinsert1504 = insertelement <4 x i32> poison, i32 %363, i32 0
  %broadcast.splat1505 = shufflevector <4 x i32> %broadcast.splatinsert1504, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1496

vector.body1496:                                  ; preds = %vector.body1496, %polly.loop_header909.1.2
  %index1498 = phi i64 [ 0, %polly.loop_header909.1.2 ], [ %index.next1499, %vector.body1496 ]
  %vec.ind1502 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header909.1.2 ], [ %vec.ind.next1503, %vector.body1496 ]
  %364 = add nuw nsw <4 x i64> %vec.ind1502, <i64 32, i64 32, i64 32, i64 32>
  %365 = trunc <4 x i64> %364 to <4 x i32>
  %366 = mul <4 x i32> %broadcast.splat1505, %365
  %367 = add <4 x i32> %366, <i32 1, i32 1, i32 1, i32 1>
  %368 = urem <4 x i32> %367, <i32 80, i32 80, i32 80, i32 80>
  %369 = sitofp <4 x i32> %368 to <4 x double>
  %370 = fmul fast <4 x double> %369, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %371 = extractelement <4 x i64> %364, i32 0
  %372 = shl i64 %371, 3
  %373 = add i64 %372, %362
  %374 = getelementptr i8, i8* %call1, i64 %373
  %375 = bitcast i8* %374 to <4 x double>*
  store <4 x double> %370, <4 x double>* %375, align 8, !alias.scope !107, !noalias !112
  %index.next1499 = add i64 %index1498, 4
  %vec.ind.next1503 = add <4 x i64> %vec.ind1502, <i64 4, i64 4, i64 4, i64 4>
  %376 = icmp eq i64 %index.next1499, 28
  br i1 %376, label %polly.loop_exit917.1.2, label %vector.body1496, !llvm.loop !118

polly.loop_exit917.1.2:                           ; preds = %vector.body1496
  %polly.indvar_next913.1.2 = add nuw nsw i64 %polly.indvar912.1.2, 1
  %exitcond1131.1.2.not = icmp eq i64 %polly.indvar_next913.1.2, 16
  br i1 %exitcond1131.1.2.not, label %init_array.exit, label %polly.loop_header909.1.2

polly.loop_header883.1:                           ; preds = %polly.loop_exit891, %polly.loop_exit891.1
  %polly.indvar886.1 = phi i64 [ %polly.indvar_next887.1, %polly.loop_exit891.1 ], [ 0, %polly.loop_exit891 ]
  %377 = mul nuw nsw i64 %polly.indvar886.1, 480
  %378 = trunc i64 %polly.indvar886.1 to i32
  %broadcast.splatinsert1374 = insertelement <4 x i32> poison, i32 %378, i32 0
  %broadcast.splat1375 = shufflevector <4 x i32> %broadcast.splatinsert1374, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1366

vector.body1366:                                  ; preds = %vector.body1366, %polly.loop_header883.1
  %index1368 = phi i64 [ 0, %polly.loop_header883.1 ], [ %index.next1369, %vector.body1366 ]
  %vec.ind1372 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header883.1 ], [ %vec.ind.next1373, %vector.body1366 ]
  %379 = add nuw nsw <4 x i64> %vec.ind1372, <i64 32, i64 32, i64 32, i64 32>
  %380 = trunc <4 x i64> %379 to <4 x i32>
  %381 = mul <4 x i32> %broadcast.splat1375, %380
  %382 = add <4 x i32> %381, <i32 2, i32 2, i32 2, i32 2>
  %383 = urem <4 x i32> %382, <i32 60, i32 60, i32 60, i32 60>
  %384 = sitofp <4 x i32> %383 to <4 x double>
  %385 = fmul fast <4 x double> %384, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %386 = extractelement <4 x i64> %379, i32 0
  %387 = shl i64 %386, 3
  %388 = add i64 %387, %377
  %389 = getelementptr i8, i8* %call2, i64 %388
  %390 = bitcast i8* %389 to <4 x double>*
  store <4 x double> %385, <4 x double>* %390, align 8, !alias.scope !108, !noalias !110
  %index.next1369 = add i64 %index1368, 4
  %vec.ind.next1373 = add <4 x i64> %vec.ind1372, <i64 4, i64 4, i64 4, i64 4>
  %391 = icmp eq i64 %index.next1369, 28
  br i1 %391, label %polly.loop_exit891.1, label %vector.body1366, !llvm.loop !119

polly.loop_exit891.1:                             ; preds = %vector.body1366
  %polly.indvar_next887.1 = add nuw nsw i64 %polly.indvar886.1, 1
  %exitcond1137.1.not = icmp eq i64 %polly.indvar_next887.1, 32
  br i1 %exitcond1137.1.not, label %polly.loop_header883.11168, label %polly.loop_header883.1

polly.loop_header883.11168:                       ; preds = %polly.loop_exit891.1, %polly.loop_exit891.11179
  %polly.indvar886.11167 = phi i64 [ %polly.indvar_next887.11177, %polly.loop_exit891.11179 ], [ 0, %polly.loop_exit891.1 ]
  %392 = add nuw nsw i64 %polly.indvar886.11167, 32
  %393 = mul nuw nsw i64 %392, 480
  %394 = trunc i64 %392 to i32
  %broadcast.splatinsert1388 = insertelement <4 x i32> poison, i32 %394, i32 0
  %broadcast.splat1389 = shufflevector <4 x i32> %broadcast.splatinsert1388, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1378

vector.body1378:                                  ; preds = %vector.body1378, %polly.loop_header883.11168
  %index1380 = phi i64 [ 0, %polly.loop_header883.11168 ], [ %index.next1381, %vector.body1378 ]
  %vec.ind1386 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header883.11168 ], [ %vec.ind.next1387, %vector.body1378 ]
  %395 = mul <4 x i32> %vec.ind1386, %broadcast.splat1389
  %396 = add <4 x i32> %395, <i32 2, i32 2, i32 2, i32 2>
  %397 = urem <4 x i32> %396, <i32 60, i32 60, i32 60, i32 60>
  %398 = sitofp <4 x i32> %397 to <4 x double>
  %399 = fmul fast <4 x double> %398, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %400 = shl i64 %index1380, 3
  %401 = add i64 %400, %393
  %402 = getelementptr i8, i8* %call2, i64 %401
  %403 = bitcast i8* %402 to <4 x double>*
  store <4 x double> %399, <4 x double>* %403, align 8, !alias.scope !108, !noalias !110
  %index.next1381 = add i64 %index1380, 4
  %vec.ind.next1387 = add <4 x i32> %vec.ind1386, <i32 4, i32 4, i32 4, i32 4>
  %404 = icmp eq i64 %index.next1381, 32
  br i1 %404, label %polly.loop_exit891.11179, label %vector.body1378, !llvm.loop !120

polly.loop_exit891.11179:                         ; preds = %vector.body1378
  %polly.indvar_next887.11177 = add nuw nsw i64 %polly.indvar886.11167, 1
  %exitcond1137.11178.not = icmp eq i64 %polly.indvar_next887.11177, 32
  br i1 %exitcond1137.11178.not, label %polly.loop_header883.1.1, label %polly.loop_header883.11168

polly.loop_header883.1.1:                         ; preds = %polly.loop_exit891.11179, %polly.loop_exit891.1.1
  %polly.indvar886.1.1 = phi i64 [ %polly.indvar_next887.1.1, %polly.loop_exit891.1.1 ], [ 0, %polly.loop_exit891.11179 ]
  %405 = add nuw nsw i64 %polly.indvar886.1.1, 32
  %406 = mul nuw nsw i64 %405, 480
  %407 = trunc i64 %405 to i32
  %broadcast.splatinsert1400 = insertelement <4 x i32> poison, i32 %407, i32 0
  %broadcast.splat1401 = shufflevector <4 x i32> %broadcast.splatinsert1400, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1392

vector.body1392:                                  ; preds = %vector.body1392, %polly.loop_header883.1.1
  %index1394 = phi i64 [ 0, %polly.loop_header883.1.1 ], [ %index.next1395, %vector.body1392 ]
  %vec.ind1398 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header883.1.1 ], [ %vec.ind.next1399, %vector.body1392 ]
  %408 = add nuw nsw <4 x i64> %vec.ind1398, <i64 32, i64 32, i64 32, i64 32>
  %409 = trunc <4 x i64> %408 to <4 x i32>
  %410 = mul <4 x i32> %broadcast.splat1401, %409
  %411 = add <4 x i32> %410, <i32 2, i32 2, i32 2, i32 2>
  %412 = urem <4 x i32> %411, <i32 60, i32 60, i32 60, i32 60>
  %413 = sitofp <4 x i32> %412 to <4 x double>
  %414 = fmul fast <4 x double> %413, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %415 = extractelement <4 x i64> %408, i32 0
  %416 = shl i64 %415, 3
  %417 = add i64 %416, %406
  %418 = getelementptr i8, i8* %call2, i64 %417
  %419 = bitcast i8* %418 to <4 x double>*
  store <4 x double> %414, <4 x double>* %419, align 8, !alias.scope !108, !noalias !110
  %index.next1395 = add i64 %index1394, 4
  %vec.ind.next1399 = add <4 x i64> %vec.ind1398, <i64 4, i64 4, i64 4, i64 4>
  %420 = icmp eq i64 %index.next1395, 28
  br i1 %420, label %polly.loop_exit891.1.1, label %vector.body1392, !llvm.loop !121

polly.loop_exit891.1.1:                           ; preds = %vector.body1392
  %polly.indvar_next887.1.1 = add nuw nsw i64 %polly.indvar886.1.1, 1
  %exitcond1137.1.1.not = icmp eq i64 %polly.indvar_next887.1.1, 32
  br i1 %exitcond1137.1.1.not, label %polly.loop_header883.2, label %polly.loop_header883.1.1

polly.loop_header883.2:                           ; preds = %polly.loop_exit891.1.1, %polly.loop_exit891.2
  %polly.indvar886.2 = phi i64 [ %polly.indvar_next887.2, %polly.loop_exit891.2 ], [ 0, %polly.loop_exit891.1.1 ]
  %421 = add nuw nsw i64 %polly.indvar886.2, 64
  %422 = mul nuw nsw i64 %421, 480
  %423 = trunc i64 %421 to i32
  %broadcast.splatinsert1414 = insertelement <4 x i32> poison, i32 %423, i32 0
  %broadcast.splat1415 = shufflevector <4 x i32> %broadcast.splatinsert1414, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1404

vector.body1404:                                  ; preds = %vector.body1404, %polly.loop_header883.2
  %index1406 = phi i64 [ 0, %polly.loop_header883.2 ], [ %index.next1407, %vector.body1404 ]
  %vec.ind1412 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header883.2 ], [ %vec.ind.next1413, %vector.body1404 ]
  %424 = mul <4 x i32> %vec.ind1412, %broadcast.splat1415
  %425 = add <4 x i32> %424, <i32 2, i32 2, i32 2, i32 2>
  %426 = urem <4 x i32> %425, <i32 60, i32 60, i32 60, i32 60>
  %427 = sitofp <4 x i32> %426 to <4 x double>
  %428 = fmul fast <4 x double> %427, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %429 = shl i64 %index1406, 3
  %430 = add i64 %429, %422
  %431 = getelementptr i8, i8* %call2, i64 %430
  %432 = bitcast i8* %431 to <4 x double>*
  store <4 x double> %428, <4 x double>* %432, align 8, !alias.scope !108, !noalias !110
  %index.next1407 = add i64 %index1406, 4
  %vec.ind.next1413 = add <4 x i32> %vec.ind1412, <i32 4, i32 4, i32 4, i32 4>
  %433 = icmp eq i64 %index.next1407, 32
  br i1 %433, label %polly.loop_exit891.2, label %vector.body1404, !llvm.loop !122

polly.loop_exit891.2:                             ; preds = %vector.body1404
  %polly.indvar_next887.2 = add nuw nsw i64 %polly.indvar886.2, 1
  %exitcond1137.2.not = icmp eq i64 %polly.indvar_next887.2, 16
  br i1 %exitcond1137.2.not, label %polly.loop_header883.1.2, label %polly.loop_header883.2

polly.loop_header883.1.2:                         ; preds = %polly.loop_exit891.2, %polly.loop_exit891.1.2
  %polly.indvar886.1.2 = phi i64 [ %polly.indvar_next887.1.2, %polly.loop_exit891.1.2 ], [ 0, %polly.loop_exit891.2 ]
  %434 = add nuw nsw i64 %polly.indvar886.1.2, 64
  %435 = mul nuw nsw i64 %434, 480
  %436 = trunc i64 %434 to i32
  %broadcast.splatinsert1426 = insertelement <4 x i32> poison, i32 %436, i32 0
  %broadcast.splat1427 = shufflevector <4 x i32> %broadcast.splatinsert1426, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1418

vector.body1418:                                  ; preds = %vector.body1418, %polly.loop_header883.1.2
  %index1420 = phi i64 [ 0, %polly.loop_header883.1.2 ], [ %index.next1421, %vector.body1418 ]
  %vec.ind1424 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header883.1.2 ], [ %vec.ind.next1425, %vector.body1418 ]
  %437 = add nuw nsw <4 x i64> %vec.ind1424, <i64 32, i64 32, i64 32, i64 32>
  %438 = trunc <4 x i64> %437 to <4 x i32>
  %439 = mul <4 x i32> %broadcast.splat1427, %438
  %440 = add <4 x i32> %439, <i32 2, i32 2, i32 2, i32 2>
  %441 = urem <4 x i32> %440, <i32 60, i32 60, i32 60, i32 60>
  %442 = sitofp <4 x i32> %441 to <4 x double>
  %443 = fmul fast <4 x double> %442, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %444 = extractelement <4 x i64> %437, i32 0
  %445 = shl i64 %444, 3
  %446 = add i64 %445, %435
  %447 = getelementptr i8, i8* %call2, i64 %446
  %448 = bitcast i8* %447 to <4 x double>*
  store <4 x double> %443, <4 x double>* %448, align 8, !alias.scope !108, !noalias !110
  %index.next1421 = add i64 %index1420, 4
  %vec.ind.next1425 = add <4 x i64> %vec.ind1424, <i64 4, i64 4, i64 4, i64 4>
  %449 = icmp eq i64 %index.next1421, 28
  br i1 %449, label %polly.loop_exit891.1.2, label %vector.body1418, !llvm.loop !123

polly.loop_exit891.1.2:                           ; preds = %vector.body1418
  %polly.indvar_next887.1.2 = add nuw nsw i64 %polly.indvar886.1.2, 1
  %exitcond1137.1.2.not = icmp eq i64 %polly.indvar_next887.1.2, 16
  br i1 %exitcond1137.1.2.not, label %polly.loop_header909, label %polly.loop_header883.1.2

polly.loop_header856.1:                           ; preds = %polly.loop_exit864, %polly.loop_exit864.1
  %polly.indvar859.1 = phi i64 [ %polly.indvar_next860.1, %polly.loop_exit864.1 ], [ 0, %polly.loop_exit864 ]
  %450 = mul nuw nsw i64 %polly.indvar859.1, 640
  %451 = trunc i64 %polly.indvar859.1 to i32
  %broadcast.splatinsert1260 = insertelement <4 x i32> poison, i32 %451, i32 0
  %broadcast.splat1261 = shufflevector <4 x i32> %broadcast.splatinsert1260, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1252

vector.body1252:                                  ; preds = %vector.body1252, %polly.loop_header856.1
  %index1254 = phi i64 [ 0, %polly.loop_header856.1 ], [ %index.next1255, %vector.body1252 ]
  %vec.ind1258 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header856.1 ], [ %vec.ind.next1259, %vector.body1252 ]
  %452 = add nuw nsw <4 x i64> %vec.ind1258, <i64 32, i64 32, i64 32, i64 32>
  %453 = trunc <4 x i64> %452 to <4 x i32>
  %454 = mul <4 x i32> %broadcast.splat1261, %453
  %455 = add <4 x i32> %454, <i32 3, i32 3, i32 3, i32 3>
  %456 = urem <4 x i32> %455, <i32 80, i32 80, i32 80, i32 80>
  %457 = sitofp <4 x i32> %456 to <4 x double>
  %458 = fmul fast <4 x double> %457, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %459 = extractelement <4 x i64> %452, i32 0
  %460 = shl i64 %459, 3
  %461 = add nuw nsw i64 %460, %450
  %462 = getelementptr i8, i8* %call, i64 %461
  %463 = bitcast i8* %462 to <4 x double>*
  store <4 x double> %458, <4 x double>* %463, align 8, !alias.scope !104, !noalias !106
  %index.next1255 = add i64 %index1254, 4
  %vec.ind.next1259 = add <4 x i64> %vec.ind1258, <i64 4, i64 4, i64 4, i64 4>
  %464 = icmp eq i64 %index.next1255, 32
  br i1 %464, label %polly.loop_exit864.1, label %vector.body1252, !llvm.loop !124

polly.loop_exit864.1:                             ; preds = %vector.body1252
  %polly.indvar_next860.1 = add nuw nsw i64 %polly.indvar859.1, 1
  %exitcond1146.1.not = icmp eq i64 %polly.indvar_next860.1, 32
  br i1 %exitcond1146.1.not, label %polly.loop_header856.2, label %polly.loop_header856.1

polly.loop_header856.2:                           ; preds = %polly.loop_exit864.1, %polly.loop_exit864.2
  %polly.indvar859.2 = phi i64 [ %polly.indvar_next860.2, %polly.loop_exit864.2 ], [ 0, %polly.loop_exit864.1 ]
  %465 = mul nuw nsw i64 %polly.indvar859.2, 640
  %466 = trunc i64 %polly.indvar859.2 to i32
  %broadcast.splatinsert1272 = insertelement <4 x i32> poison, i32 %466, i32 0
  %broadcast.splat1273 = shufflevector <4 x i32> %broadcast.splatinsert1272, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1264

vector.body1264:                                  ; preds = %vector.body1264, %polly.loop_header856.2
  %index1266 = phi i64 [ 0, %polly.loop_header856.2 ], [ %index.next1267, %vector.body1264 ]
  %vec.ind1270 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header856.2 ], [ %vec.ind.next1271, %vector.body1264 ]
  %467 = add nuw nsw <4 x i64> %vec.ind1270, <i64 64, i64 64, i64 64, i64 64>
  %468 = trunc <4 x i64> %467 to <4 x i32>
  %469 = mul <4 x i32> %broadcast.splat1273, %468
  %470 = add <4 x i32> %469, <i32 3, i32 3, i32 3, i32 3>
  %471 = urem <4 x i32> %470, <i32 80, i32 80, i32 80, i32 80>
  %472 = sitofp <4 x i32> %471 to <4 x double>
  %473 = fmul fast <4 x double> %472, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %474 = extractelement <4 x i64> %467, i32 0
  %475 = shl i64 %474, 3
  %476 = add nuw nsw i64 %475, %465
  %477 = getelementptr i8, i8* %call, i64 %476
  %478 = bitcast i8* %477 to <4 x double>*
  store <4 x double> %473, <4 x double>* %478, align 8, !alias.scope !104, !noalias !106
  %index.next1267 = add i64 %index1266, 4
  %vec.ind.next1271 = add <4 x i64> %vec.ind1270, <i64 4, i64 4, i64 4, i64 4>
  %479 = icmp eq i64 %index.next1267, 16
  br i1 %479, label %polly.loop_exit864.2, label %vector.body1264, !llvm.loop !125

polly.loop_exit864.2:                             ; preds = %vector.body1264
  %polly.indvar_next860.2 = add nuw nsw i64 %polly.indvar859.2, 1
  %exitcond1146.2.not = icmp eq i64 %polly.indvar_next860.2, 32
  br i1 %exitcond1146.2.not, label %polly.loop_header856.11182, label %polly.loop_header856.2

polly.loop_header856.11182:                       ; preds = %polly.loop_exit864.2, %polly.loop_exit864.11193
  %polly.indvar859.11181 = phi i64 [ %polly.indvar_next860.11191, %polly.loop_exit864.11193 ], [ 0, %polly.loop_exit864.2 ]
  %480 = add nuw nsw i64 %polly.indvar859.11181, 32
  %481 = mul nuw nsw i64 %480, 640
  %482 = trunc i64 %480 to i32
  %broadcast.splatinsert1286 = insertelement <4 x i32> poison, i32 %482, i32 0
  %broadcast.splat1287 = shufflevector <4 x i32> %broadcast.splatinsert1286, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1276

vector.body1276:                                  ; preds = %vector.body1276, %polly.loop_header856.11182
  %index1278 = phi i64 [ 0, %polly.loop_header856.11182 ], [ %index.next1279, %vector.body1276 ]
  %vec.ind1284 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header856.11182 ], [ %vec.ind.next1285, %vector.body1276 ]
  %483 = mul <4 x i32> %vec.ind1284, %broadcast.splat1287
  %484 = add <4 x i32> %483, <i32 3, i32 3, i32 3, i32 3>
  %485 = urem <4 x i32> %484, <i32 80, i32 80, i32 80, i32 80>
  %486 = sitofp <4 x i32> %485 to <4 x double>
  %487 = fmul fast <4 x double> %486, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %488 = shl i64 %index1278, 3
  %489 = add nuw nsw i64 %488, %481
  %490 = getelementptr i8, i8* %call, i64 %489
  %491 = bitcast i8* %490 to <4 x double>*
  store <4 x double> %487, <4 x double>* %491, align 8, !alias.scope !104, !noalias !106
  %index.next1279 = add i64 %index1278, 4
  %vec.ind.next1285 = add <4 x i32> %vec.ind1284, <i32 4, i32 4, i32 4, i32 4>
  %492 = icmp eq i64 %index.next1279, 32
  br i1 %492, label %polly.loop_exit864.11193, label %vector.body1276, !llvm.loop !126

polly.loop_exit864.11193:                         ; preds = %vector.body1276
  %polly.indvar_next860.11191 = add nuw nsw i64 %polly.indvar859.11181, 1
  %exitcond1146.11192.not = icmp eq i64 %polly.indvar_next860.11191, 32
  br i1 %exitcond1146.11192.not, label %polly.loop_header856.1.1, label %polly.loop_header856.11182

polly.loop_header856.1.1:                         ; preds = %polly.loop_exit864.11193, %polly.loop_exit864.1.1
  %polly.indvar859.1.1 = phi i64 [ %polly.indvar_next860.1.1, %polly.loop_exit864.1.1 ], [ 0, %polly.loop_exit864.11193 ]
  %493 = add nuw nsw i64 %polly.indvar859.1.1, 32
  %494 = mul nuw nsw i64 %493, 640
  %495 = trunc i64 %493 to i32
  %broadcast.splatinsert1298 = insertelement <4 x i32> poison, i32 %495, i32 0
  %broadcast.splat1299 = shufflevector <4 x i32> %broadcast.splatinsert1298, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1290

vector.body1290:                                  ; preds = %vector.body1290, %polly.loop_header856.1.1
  %index1292 = phi i64 [ 0, %polly.loop_header856.1.1 ], [ %index.next1293, %vector.body1290 ]
  %vec.ind1296 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header856.1.1 ], [ %vec.ind.next1297, %vector.body1290 ]
  %496 = add nuw nsw <4 x i64> %vec.ind1296, <i64 32, i64 32, i64 32, i64 32>
  %497 = trunc <4 x i64> %496 to <4 x i32>
  %498 = mul <4 x i32> %broadcast.splat1299, %497
  %499 = add <4 x i32> %498, <i32 3, i32 3, i32 3, i32 3>
  %500 = urem <4 x i32> %499, <i32 80, i32 80, i32 80, i32 80>
  %501 = sitofp <4 x i32> %500 to <4 x double>
  %502 = fmul fast <4 x double> %501, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %503 = extractelement <4 x i64> %496, i32 0
  %504 = shl i64 %503, 3
  %505 = add nuw nsw i64 %504, %494
  %506 = getelementptr i8, i8* %call, i64 %505
  %507 = bitcast i8* %506 to <4 x double>*
  store <4 x double> %502, <4 x double>* %507, align 8, !alias.scope !104, !noalias !106
  %index.next1293 = add i64 %index1292, 4
  %vec.ind.next1297 = add <4 x i64> %vec.ind1296, <i64 4, i64 4, i64 4, i64 4>
  %508 = icmp eq i64 %index.next1293, 32
  br i1 %508, label %polly.loop_exit864.1.1, label %vector.body1290, !llvm.loop !127

polly.loop_exit864.1.1:                           ; preds = %vector.body1290
  %polly.indvar_next860.1.1 = add nuw nsw i64 %polly.indvar859.1.1, 1
  %exitcond1146.1.1.not = icmp eq i64 %polly.indvar_next860.1.1, 32
  br i1 %exitcond1146.1.1.not, label %polly.loop_header856.2.1, label %polly.loop_header856.1.1

polly.loop_header856.2.1:                         ; preds = %polly.loop_exit864.1.1, %polly.loop_exit864.2.1
  %polly.indvar859.2.1 = phi i64 [ %polly.indvar_next860.2.1, %polly.loop_exit864.2.1 ], [ 0, %polly.loop_exit864.1.1 ]
  %509 = add nuw nsw i64 %polly.indvar859.2.1, 32
  %510 = mul nuw nsw i64 %509, 640
  %511 = trunc i64 %509 to i32
  %broadcast.splatinsert1310 = insertelement <4 x i32> poison, i32 %511, i32 0
  %broadcast.splat1311 = shufflevector <4 x i32> %broadcast.splatinsert1310, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1302

vector.body1302:                                  ; preds = %vector.body1302, %polly.loop_header856.2.1
  %index1304 = phi i64 [ 0, %polly.loop_header856.2.1 ], [ %index.next1305, %vector.body1302 ]
  %vec.ind1308 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header856.2.1 ], [ %vec.ind.next1309, %vector.body1302 ]
  %512 = add nuw nsw <4 x i64> %vec.ind1308, <i64 64, i64 64, i64 64, i64 64>
  %513 = trunc <4 x i64> %512 to <4 x i32>
  %514 = mul <4 x i32> %broadcast.splat1311, %513
  %515 = add <4 x i32> %514, <i32 3, i32 3, i32 3, i32 3>
  %516 = urem <4 x i32> %515, <i32 80, i32 80, i32 80, i32 80>
  %517 = sitofp <4 x i32> %516 to <4 x double>
  %518 = fmul fast <4 x double> %517, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %519 = extractelement <4 x i64> %512, i32 0
  %520 = shl i64 %519, 3
  %521 = add nuw nsw i64 %520, %510
  %522 = getelementptr i8, i8* %call, i64 %521
  %523 = bitcast i8* %522 to <4 x double>*
  store <4 x double> %518, <4 x double>* %523, align 8, !alias.scope !104, !noalias !106
  %index.next1305 = add i64 %index1304, 4
  %vec.ind.next1309 = add <4 x i64> %vec.ind1308, <i64 4, i64 4, i64 4, i64 4>
  %524 = icmp eq i64 %index.next1305, 16
  br i1 %524, label %polly.loop_exit864.2.1, label %vector.body1302, !llvm.loop !128

polly.loop_exit864.2.1:                           ; preds = %vector.body1302
  %polly.indvar_next860.2.1 = add nuw nsw i64 %polly.indvar859.2.1, 1
  %exitcond1146.2.1.not = icmp eq i64 %polly.indvar_next860.2.1, 32
  br i1 %exitcond1146.2.1.not, label %polly.loop_header856.21196, label %polly.loop_header856.2.1

polly.loop_header856.21196:                       ; preds = %polly.loop_exit864.2.1, %polly.loop_exit864.21207
  %polly.indvar859.21195 = phi i64 [ %polly.indvar_next860.21205, %polly.loop_exit864.21207 ], [ 0, %polly.loop_exit864.2.1 ]
  %525 = add nuw nsw i64 %polly.indvar859.21195, 64
  %526 = mul nuw nsw i64 %525, 640
  %527 = trunc i64 %525 to i32
  %broadcast.splatinsert1324 = insertelement <4 x i32> poison, i32 %527, i32 0
  %broadcast.splat1325 = shufflevector <4 x i32> %broadcast.splatinsert1324, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1314

vector.body1314:                                  ; preds = %vector.body1314, %polly.loop_header856.21196
  %index1316 = phi i64 [ 0, %polly.loop_header856.21196 ], [ %index.next1317, %vector.body1314 ]
  %vec.ind1322 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header856.21196 ], [ %vec.ind.next1323, %vector.body1314 ]
  %528 = mul <4 x i32> %vec.ind1322, %broadcast.splat1325
  %529 = add <4 x i32> %528, <i32 3, i32 3, i32 3, i32 3>
  %530 = urem <4 x i32> %529, <i32 80, i32 80, i32 80, i32 80>
  %531 = sitofp <4 x i32> %530 to <4 x double>
  %532 = fmul fast <4 x double> %531, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %533 = shl i64 %index1316, 3
  %534 = add nuw nsw i64 %533, %526
  %535 = getelementptr i8, i8* %call, i64 %534
  %536 = bitcast i8* %535 to <4 x double>*
  store <4 x double> %532, <4 x double>* %536, align 8, !alias.scope !104, !noalias !106
  %index.next1317 = add i64 %index1316, 4
  %vec.ind.next1323 = add <4 x i32> %vec.ind1322, <i32 4, i32 4, i32 4, i32 4>
  %537 = icmp eq i64 %index.next1317, 32
  br i1 %537, label %polly.loop_exit864.21207, label %vector.body1314, !llvm.loop !129

polly.loop_exit864.21207:                         ; preds = %vector.body1314
  %polly.indvar_next860.21205 = add nuw nsw i64 %polly.indvar859.21195, 1
  %exitcond1146.21206.not = icmp eq i64 %polly.indvar_next860.21205, 16
  br i1 %exitcond1146.21206.not, label %polly.loop_header856.1.2, label %polly.loop_header856.21196

polly.loop_header856.1.2:                         ; preds = %polly.loop_exit864.21207, %polly.loop_exit864.1.2
  %polly.indvar859.1.2 = phi i64 [ %polly.indvar_next860.1.2, %polly.loop_exit864.1.2 ], [ 0, %polly.loop_exit864.21207 ]
  %538 = add nuw nsw i64 %polly.indvar859.1.2, 64
  %539 = mul nuw nsw i64 %538, 640
  %540 = trunc i64 %538 to i32
  %broadcast.splatinsert1336 = insertelement <4 x i32> poison, i32 %540, i32 0
  %broadcast.splat1337 = shufflevector <4 x i32> %broadcast.splatinsert1336, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1328

vector.body1328:                                  ; preds = %vector.body1328, %polly.loop_header856.1.2
  %index1330 = phi i64 [ 0, %polly.loop_header856.1.2 ], [ %index.next1331, %vector.body1328 ]
  %vec.ind1334 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header856.1.2 ], [ %vec.ind.next1335, %vector.body1328 ]
  %541 = add nuw nsw <4 x i64> %vec.ind1334, <i64 32, i64 32, i64 32, i64 32>
  %542 = trunc <4 x i64> %541 to <4 x i32>
  %543 = mul <4 x i32> %broadcast.splat1337, %542
  %544 = add <4 x i32> %543, <i32 3, i32 3, i32 3, i32 3>
  %545 = urem <4 x i32> %544, <i32 80, i32 80, i32 80, i32 80>
  %546 = sitofp <4 x i32> %545 to <4 x double>
  %547 = fmul fast <4 x double> %546, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %548 = extractelement <4 x i64> %541, i32 0
  %549 = shl i64 %548, 3
  %550 = add nuw nsw i64 %549, %539
  %551 = getelementptr i8, i8* %call, i64 %550
  %552 = bitcast i8* %551 to <4 x double>*
  store <4 x double> %547, <4 x double>* %552, align 8, !alias.scope !104, !noalias !106
  %index.next1331 = add i64 %index1330, 4
  %vec.ind.next1335 = add <4 x i64> %vec.ind1334, <i64 4, i64 4, i64 4, i64 4>
  %553 = icmp eq i64 %index.next1331, 32
  br i1 %553, label %polly.loop_exit864.1.2, label %vector.body1328, !llvm.loop !130

polly.loop_exit864.1.2:                           ; preds = %vector.body1328
  %polly.indvar_next860.1.2 = add nuw nsw i64 %polly.indvar859.1.2, 1
  %exitcond1146.1.2.not = icmp eq i64 %polly.indvar_next860.1.2, 16
  br i1 %exitcond1146.1.2.not, label %polly.loop_header856.2.2, label %polly.loop_header856.1.2

polly.loop_header856.2.2:                         ; preds = %polly.loop_exit864.1.2, %polly.loop_exit864.2.2
  %polly.indvar859.2.2 = phi i64 [ %polly.indvar_next860.2.2, %polly.loop_exit864.2.2 ], [ 0, %polly.loop_exit864.1.2 ]
  %554 = add nuw nsw i64 %polly.indvar859.2.2, 64
  %555 = mul nuw nsw i64 %554, 640
  %556 = trunc i64 %554 to i32
  %broadcast.splatinsert1348 = insertelement <4 x i32> poison, i32 %556, i32 0
  %broadcast.splat1349 = shufflevector <4 x i32> %broadcast.splatinsert1348, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1340

vector.body1340:                                  ; preds = %vector.body1340, %polly.loop_header856.2.2
  %index1342 = phi i64 [ 0, %polly.loop_header856.2.2 ], [ %index.next1343, %vector.body1340 ]
  %vec.ind1346 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header856.2.2 ], [ %vec.ind.next1347, %vector.body1340 ]
  %557 = add nuw nsw <4 x i64> %vec.ind1346, <i64 64, i64 64, i64 64, i64 64>
  %558 = trunc <4 x i64> %557 to <4 x i32>
  %559 = mul <4 x i32> %broadcast.splat1349, %558
  %560 = add <4 x i32> %559, <i32 3, i32 3, i32 3, i32 3>
  %561 = urem <4 x i32> %560, <i32 80, i32 80, i32 80, i32 80>
  %562 = sitofp <4 x i32> %561 to <4 x double>
  %563 = fmul fast <4 x double> %562, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %564 = extractelement <4 x i64> %557, i32 0
  %565 = shl i64 %564, 3
  %566 = add nuw nsw i64 %565, %555
  %567 = getelementptr i8, i8* %call, i64 %566
  %568 = bitcast i8* %567 to <4 x double>*
  store <4 x double> %563, <4 x double>* %568, align 8, !alias.scope !104, !noalias !106
  %index.next1343 = add i64 %index1342, 4
  %vec.ind.next1347 = add <4 x i64> %vec.ind1346, <i64 4, i64 4, i64 4, i64 4>
  %569 = icmp eq i64 %index.next1343, 16
  br i1 %569, label %polly.loop_exit864.2.2, label %vector.body1340, !llvm.loop !131

polly.loop_exit864.2.2:                           ; preds = %vector.body1340
  %polly.indvar_next860.2.2 = add nuw nsw i64 %polly.indvar859.2.2, 1
  %exitcond1146.2.2.not = icmp eq i64 %polly.indvar_next860.2.2, 16
  br i1 %exitcond1146.2.2.not, label %polly.loop_header883, label %polly.loop_header856.2.2
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

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
!26 = !{!"llvm.loop.tile.size", i32 8}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !26, !35, !38}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !24, !40, !41, !42, !43}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.data.pack.enable", i1 true}
!42 = !{!"llvm.data.pack.array", !21}
!43 = !{!"llvm.data.pack.allocate", !"malloc"}
!44 = distinct !{!44, !12, !24, !45, !46, !47, !48, !49, !53}
!45 = !{!"llvm.loop.id", !"i"}
!46 = !{!"llvm.loop.tile.enable", i1 true}
!47 = !{!"llvm.loop.tile.depth", i32 3}
!48 = !{!"llvm.loop.tile.size", i32 32}
!49 = !{!"llvm.loop.tile.followup_floor", !50}
!50 = distinct !{!50, !12, !24, !51, !41, !52, !43}
!51 = !{!"llvm.loop.id", !"i1"}
!52 = !{!"llvm.data.pack.array", !22}
!53 = !{!"llvm.loop.tile.followup_tile", !54}
!54 = distinct !{!54, !12, !55}
!55 = !{!"llvm.loop.id", !"i2"}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = distinct !{!59, !12, !13}
!60 = !{!61, !61, i64 0}
!61 = !{!"any pointer", !4, i64 0}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !65, !"polly.alias.scope.MemRef_call"}
!65 = distinct !{!65, !"polly.alias.scope.domain"}
!66 = !{!67, !68, !69, !70}
!67 = distinct !{!67, !65, !"polly.alias.scope.MemRef_call1"}
!68 = distinct !{!68, !65, !"polly.alias.scope.MemRef_call2"}
!69 = distinct !{!69, !65, !"polly.alias.scope.Packed_MemRef_call1"}
!70 = distinct !{!70, !65, !"polly.alias.scope.Packed_MemRef_call2"}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !73, !13}
!73 = !{!"llvm.loop.unroll.runtime.disable"}
!74 = !{!64, !67, !69, !70}
!75 = !{!64, !68, !69, !70}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !73, !13}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82, !83, !84}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !79, !"polly.alias.scope.Packed_MemRef_call1"}
!84 = distinct !{!84, !79, !"polly.alias.scope.Packed_MemRef_call2"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !73, !13}
!87 = !{!78, !81, !83, !84}
!88 = !{!78, !82, !83, !84}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !73, !13}
!91 = distinct !{!91, !92, !"polly.alias.scope.MemRef_call"}
!92 = distinct !{!92, !"polly.alias.scope.domain"}
!93 = !{!94, !95, !96, !97}
!94 = distinct !{!94, !92, !"polly.alias.scope.MemRef_call1"}
!95 = distinct !{!95, !92, !"polly.alias.scope.MemRef_call2"}
!96 = distinct !{!96, !92, !"polly.alias.scope.Packed_MemRef_call1"}
!97 = distinct !{!97, !92, !"polly.alias.scope.Packed_MemRef_call2"}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !73, !13}
!100 = !{!91, !94, !96, !97}
!101 = !{!91, !95, !96, !97}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !73, !13}
!104 = distinct !{!104, !105, !"polly.alias.scope.MemRef_call"}
!105 = distinct !{!105, !"polly.alias.scope.domain"}
!106 = !{!107, !108}
!107 = distinct !{!107, !105, !"polly.alias.scope.MemRef_call1"}
!108 = distinct !{!108, !105, !"polly.alias.scope.MemRef_call2"}
!109 = distinct !{!109, !13}
!110 = !{!107, !104}
!111 = distinct !{!111, !13}
!112 = !{!108, !104}
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
!130 = distinct !{!130, !13}
!131 = distinct !{!131, !13}
