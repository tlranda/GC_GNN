; ModuleID = 'syr2k_recreations//mmp_syr2k_S_186.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_186.c"
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
  %call945 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1797 = bitcast i8* %call1 to double*
  %polly.access.call1806 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2807 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1806, %call2
  %polly.access.call2826 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2826, %call1
  %2 = or i1 %0, %1
  %polly.access.call846 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call846, %call2
  %4 = icmp ule i8* %polly.access.call2826, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call846, %call1
  %8 = icmp ule i8* %polly.access.call1806, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header931, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1230 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1229 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1228 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1227 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1227, %scevgep1230
  %bound1 = icmp ult i8* %scevgep1229, %scevgep1228
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
  br i1 %exitcond18.not.i, label %vector.ph1234, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1234:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1241 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1242 = shufflevector <4 x i64> %broadcast.splatinsert1241, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1233

vector.body1233:                                  ; preds = %vector.body1233, %vector.ph1234
  %index1235 = phi i64 [ 0, %vector.ph1234 ], [ %index.next1236, %vector.body1233 ]
  %vec.ind1239 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1234 ], [ %vec.ind.next1240, %vector.body1233 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1239, %broadcast.splat1242
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call945, i64 %indvars.iv7.i, i64 %index1235
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1236 = add i64 %index1235, 4
  %vec.ind.next1240 = add <4 x i64> %vec.ind1239, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1236, 80
  br i1 %40, label %for.inc41.i, label %vector.body1233, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1233
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1234, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit992.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start560, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1706, label %vector.ph1516

vector.ph1516:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1515

vector.body1515:                                  ; preds = %vector.body1515, %vector.ph1516
  %index1517 = phi i64 [ 0, %vector.ph1516 ], [ %index.next1518, %vector.body1515 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call945, i64 %indvars.iv21.i, i64 %index1517
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1518 = add i64 %index1517, 4
  %46 = icmp eq i64 %index.next1518, %n.vec
  br i1 %46, label %middle.block1513, label %vector.body1515, !llvm.loop !18

middle.block1513:                                 ; preds = %vector.body1515
  %cmp.n1520 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1520, label %for.inc6.i, label %for.body3.i46.preheader1706

for.body3.i46.preheader1706:                      ; preds = %for.body3.i46.preheader, %middle.block1513
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1513 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1706, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1706 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call945, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1513, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call945, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting561
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start325, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1572 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1572, label %for.body3.i60.preheader1702, label %vector.ph1573

vector.ph1573:                                    ; preds = %for.body3.i60.preheader
  %n.vec1575 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1571

vector.body1571:                                  ; preds = %vector.body1571, %vector.ph1573
  %index1576 = phi i64 [ 0, %vector.ph1573 ], [ %index.next1577, %vector.body1571 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call945, i64 %indvars.iv21.i52, i64 %index1576
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1580 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1580, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1577 = add i64 %index1576, 4
  %57 = icmp eq i64 %index.next1577, %n.vec1575
  br i1 %57, label %middle.block1569, label %vector.body1571, !llvm.loop !64

middle.block1569:                                 ; preds = %vector.body1571
  %cmp.n1579 = icmp eq i64 %indvars.iv21.i52, %n.vec1575
  br i1 %cmp.n1579, label %for.inc6.i63, label %for.body3.i60.preheader1702

for.body3.i60.preheader1702:                      ; preds = %for.body3.i60.preheader, %middle.block1569
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1575, %middle.block1569 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1702, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1702 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call945, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1569, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call945, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting326
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1635 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1635, label %for.body3.i99.preheader1698, label %vector.ph1636

vector.ph1636:                                    ; preds = %for.body3.i99.preheader
  %n.vec1638 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1634

vector.body1634:                                  ; preds = %vector.body1634, %vector.ph1636
  %index1639 = phi i64 [ 0, %vector.ph1636 ], [ %index.next1640, %vector.body1634 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call945, i64 %indvars.iv21.i91, i64 %index1639
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1643 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1643, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1640 = add i64 %index1639, 4
  %68 = icmp eq i64 %index.next1640, %n.vec1638
  br i1 %68, label %middle.block1632, label %vector.body1634, !llvm.loop !66

middle.block1632:                                 ; preds = %vector.body1634
  %cmp.n1642 = icmp eq i64 %indvars.iv21.i91, %n.vec1638
  br i1 %cmp.n1642, label %for.inc6.i102, label %for.body3.i99.preheader1698

for.body3.i99.preheader1698:                      ; preds = %for.body3.i99.preheader, %middle.block1632
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1638, %middle.block1632 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1698, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1698 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call945, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1632, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call945, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call945, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(10240) i8* @malloc(i64 10240) #6
  %malloccall136 = tail call dereferenceable_or_null(10240) i8* @malloc(i64 10240) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1647 = phi i64 [ %indvar.next1648, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1647, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1649 = icmp ult i64 %88, 4
  br i1 %min.iters.check1649, label %polly.loop_header192.preheader, label %vector.ph1650

vector.ph1650:                                    ; preds = %polly.loop_header
  %n.vec1652 = and i64 %88, -4
  br label %vector.body1646

vector.body1646:                                  ; preds = %vector.body1646, %vector.ph1650
  %index1653 = phi i64 [ 0, %vector.ph1650 ], [ %index.next1654, %vector.body1646 ]
  %90 = shl nuw nsw i64 %index1653, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1657 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1657, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1654 = add i64 %index1653, 4
  %95 = icmp eq i64 %index.next1654, %n.vec1652
  br i1 %95, label %middle.block1644, label %vector.body1646, !llvm.loop !79

middle.block1644:                                 ; preds = %vector.body1646
  %cmp.n1656 = icmp eq i64 %88, %n.vec1652
  br i1 %cmp.n1656, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1644
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1652, %middle.block1644 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1644
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1058.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1648 = add i64 %indvar1647, 1
  br i1 %exitcond1058.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1057.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1057.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %indvars.iv = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next, %polly.loop_exit208 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit208 ]
  %smin1053 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -44)
  %97 = add nsw i64 %smin1053, 60
  %98 = shl nsw i64 %polly.indvar203, 4
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -16
  %exitcond1056.not = icmp eq i64 %polly.indvar_next204, 4
  br i1 %exitcond1056.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %polly.loop_cond211 = phi i1 [ false, %polly.loop_exit230 ], [ true, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ 1, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %99 = mul nuw nsw i64 %polly.indvar209, 50
  %100 = sub nuw nsw i64 80, %99
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %101 = mul nuw nsw i64 %polly.indvar209, -50
  %102 = shl nuw nsw i64 %polly.indvar209, 1
  %103 = mul nuw nsw i64 %polly.indvar209, 5
  %104 = mul nuw nsw i64 %polly.indvar209, 10
  %105 = sub nsw i64 20, %104
  %106 = sub nsw i64 0, %104
  %107 = mul nuw nsw i64 %polly.indvar209, 400
  %108 = or i64 %107, 8
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit286
  br i1 %polly.loop_cond211, label %polly.loop_header206, label %polly.loop_exit208

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %109 = add nuw nsw i64 %polly.indvar215, %98
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 80
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar_next216, %97
  br i1 %exitcond1033.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %110 = add nuw nsw i64 %polly.indvar221, %99
  %polly.access.mul.call2225 = mul nuw nsw i64 %110, 60
  %polly.access.add.call2226 = add nuw nsw i64 %109, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2807, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %100
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit286, %polly.loop_exit214
  %indvar1663 = phi i64 [ %indvar.next1664, %polly.loop_exit286 ], [ 0, %polly.loop_exit214 ]
  %indvars.iv1047 = phi i64 [ %indvars.iv.next1048, %polly.loop_exit286 ], [ %106, %polly.loop_exit214 ]
  %indvars.iv1045 = phi i64 [ %indvars.iv.next1046, %polly.loop_exit286 ], [ %104, %polly.loop_exit214 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit286 ], [ %102, %polly.loop_exit214 ]
  %111 = mul i64 %indvar1663, -20
  %112 = add i64 %104, %111
  %smax1678 = call i64 @llvm.smax.i64(i64 %112, i64 0)
  %113 = mul i64 %indvar1663, 20
  %114 = sub i64 %113, %104
  %115 = add i64 %smax1678, %114
  %116 = mul i64 %indvar1663, -20
  %117 = add i64 %104, %116
  %smax1665 = call i64 @llvm.smax.i64(i64 %117, i64 0)
  %118 = mul i64 %indvar1663, 20
  %119 = sub i64 %118, %104
  %120 = add i64 %smax1665, %119
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1045, i64 0)
  %121 = add i64 %smax, %indvars.iv1047
  %122 = shl nuw nsw i64 %polly.indvar231, 1
  %.not.not = icmp ugt i64 %122, %103
  br i1 %.not.not, label %polly.loop_header234.preheader, label %polly.loop_header265

polly.loop_header234.preheader:                   ; preds = %polly.loop_header228
  %123 = mul nuw nsw i64 %polly.indvar231, 20
  %124 = add nsw i64 %123, %101
  %125 = add nsw i64 %124, -1
  %.inv = icmp sgt i64 %124, 49
  %126 = select i1 %.inv, i64 49, i64 %125
  %polly.loop_guard = icmp sgt i64 %126, -1
  %127 = add nsw i64 %124, 19
  br i1 %polly.loop_guard, label %polly.loop_header234.us.preheader, label %polly.loop_header234

polly.loop_header234.us.preheader:                ; preds = %polly.loop_header234.preheader
  %128 = add nsw i64 %124, %99
  %polly.access.mul.call1259.us = mul nuw nsw i64 %128, 60
  %polly.indvar_next256.us = or i64 %124, 1
  %129 = add nsw i64 %polly.indvar_next256.us, %99
  %polly.access.mul.call1259.us.1 = mul nuw nsw i64 %129, 60
  %polly.indvar_next256.us.1 = add nsw i64 %polly.indvar_next256.us, 1
  %130 = add nsw i64 %polly.indvar_next256.us.1, %99
  %polly.access.mul.call1259.us.2 = mul nuw nsw i64 %130, 60
  %polly.indvar_next256.us.2 = add nsw i64 %polly.indvar_next256.us, 2
  %131 = add nsw i64 %polly.indvar_next256.us.2, %99
  %polly.access.mul.call1259.us.3 = mul nuw nsw i64 %131, 60
  %polly.indvar_next256.us.3 = add nsw i64 %polly.indvar_next256.us, 3
  %132 = add nsw i64 %polly.indvar_next256.us.3, %99
  %polly.access.mul.call1259.us.4 = mul nuw nsw i64 %132, 60
  %polly.indvar_next256.us.4 = add nsw i64 %polly.indvar_next256.us, 4
  %133 = add nsw i64 %polly.indvar_next256.us.4, %99
  %polly.access.mul.call1259.us.5 = mul nuw nsw i64 %133, 60
  %polly.indvar_next256.us.5 = add nsw i64 %polly.indvar_next256.us, 5
  %134 = add nsw i64 %polly.indvar_next256.us.5, %99
  %polly.access.mul.call1259.us.6 = mul nuw nsw i64 %134, 60
  %polly.indvar_next256.us.6 = add nsw i64 %polly.indvar_next256.us, 6
  %135 = add nsw i64 %polly.indvar_next256.us.6, %99
  %polly.access.mul.call1259.us.7 = mul nuw nsw i64 %135, 60
  %polly.indvar_next256.us.7 = add nsw i64 %polly.indvar_next256.us, 7
  %136 = add nsw i64 %polly.indvar_next256.us.7, %99
  %polly.access.mul.call1259.us.8 = mul nuw nsw i64 %136, 60
  %polly.indvar_next256.us.8 = add nsw i64 %polly.indvar_next256.us, 8
  %137 = add nsw i64 %polly.indvar_next256.us.8, %99
  %polly.access.mul.call1259.us.9 = mul nuw nsw i64 %137, 60
  %polly.indvar_next256.us.9 = add nsw i64 %polly.indvar_next256.us, 9
  %138 = add nsw i64 %polly.indvar_next256.us.9, %99
  %polly.access.mul.call1259.us.10 = mul nuw nsw i64 %138, 60
  %polly.indvar_next256.us.10 = add nsw i64 %polly.indvar_next256.us, 10
  %139 = add nsw i64 %polly.indvar_next256.us.10, %99
  %polly.access.mul.call1259.us.11 = mul nuw nsw i64 %139, 60
  %polly.indvar_next256.us.11 = add nsw i64 %polly.indvar_next256.us, 11
  %140 = add nsw i64 %polly.indvar_next256.us.11, %99
  %polly.access.mul.call1259.us.12 = mul nuw nsw i64 %140, 60
  %polly.indvar_next256.us.12 = add nsw i64 %polly.indvar_next256.us, 12
  %141 = add nsw i64 %polly.indvar_next256.us.12, %99
  %polly.access.mul.call1259.us.13 = mul nuw nsw i64 %141, 60
  %polly.indvar_next256.us.13 = add nsw i64 %polly.indvar_next256.us, 13
  %142 = add nsw i64 %polly.indvar_next256.us.13, %99
  %polly.access.mul.call1259.us.14 = mul nuw nsw i64 %142, 60
  %polly.indvar_next256.us.14 = add nsw i64 %polly.indvar_next256.us, 14
  %143 = add nsw i64 %polly.indvar_next256.us.14, %99
  %polly.access.mul.call1259.us.15 = mul nuw nsw i64 %143, 60
  %polly.indvar_next256.us.15 = add nsw i64 %polly.indvar_next256.us, 15
  %144 = add nsw i64 %polly.indvar_next256.us.15, %99
  %polly.access.mul.call1259.us.16 = mul nuw nsw i64 %144, 60
  %polly.indvar_next256.us.16 = add nsw i64 %polly.indvar_next256.us, 16
  %145 = add nsw i64 %polly.indvar_next256.us.16, %99
  %polly.access.mul.call1259.us.17 = mul nuw nsw i64 %145, 60
  %polly.indvar_next256.us.17 = add nsw i64 %polly.indvar_next256.us, 17
  %146 = add nsw i64 %polly.indvar_next256.us.17, %99
  %polly.access.mul.call1259.us.18 = mul nuw nsw i64 %146, 60
  %polly.indvar_next256.us.18 = add nsw i64 %polly.indvar_next256.us, 18
  %147 = add nsw i64 %polly.indvar_next256.us.18, %99
  %polly.access.mul.call1259.us.19 = mul nuw nsw i64 %147, 60
  br label %polly.loop_header234.us

polly.loop_header234.us:                          ; preds = %polly.loop_header234.us.preheader, %polly.loop_exit242.loopexit.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_exit242.loopexit.us ], [ 0, %polly.loop_header234.us.preheader ]
  %148 = add nuw nsw i64 %polly.indvar237.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 80
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header234.us ]
  %149 = add nuw nsw i64 %polly.indvar243.us, %99
  %polly.access.mul.call1247.us = mul nuw nsw i64 %149, 60
  %polly.access.add.call1248.us = add nuw nsw i64 %148, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw i64 %polly.indvar243.us, 1
  %exitcond1039.not = icmp eq i64 %polly.indvar243.us, %126
  br i1 %exitcond1039.not, label %polly.loop_exit242.loopexit.us, label %polly.loop_header240.us

polly.loop_exit242.loopexit.us:                   ; preds = %polly.loop_header240.us
  %polly.access.add.call1260.us = add nuw nsw i64 %148, %polly.access.mul.call1259.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us = add nsw i64 %124, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %polly.access.add.call1260.us.1 = add nuw nsw i64 %148, %polly.access.mul.call1259.us.1
  %polly.access.call1261.us.1 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1260.us.1
  %polly.access.call1261.load.us.1 = load double, double* %polly.access.call1261.us.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.1 = add nsw i64 %polly.indvar_next256.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.1
  store double %polly.access.call1261.load.us.1, double* %polly.access.Packed_MemRef_call1264.us.1, align 8
  %polly.access.add.call1260.us.2 = add nuw nsw i64 %148, %polly.access.mul.call1259.us.2
  %polly.access.call1261.us.2 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1260.us.2
  %polly.access.call1261.load.us.2 = load double, double* %polly.access.call1261.us.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.2 = add nsw i64 %polly.indvar_next256.us.1, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.2
  store double %polly.access.call1261.load.us.2, double* %polly.access.Packed_MemRef_call1264.us.2, align 8
  %polly.access.add.call1260.us.3 = add nuw nsw i64 %148, %polly.access.mul.call1259.us.3
  %polly.access.call1261.us.3 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1260.us.3
  %polly.access.call1261.load.us.3 = load double, double* %polly.access.call1261.us.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.3 = add nsw i64 %polly.indvar_next256.us.2, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.3
  store double %polly.access.call1261.load.us.3, double* %polly.access.Packed_MemRef_call1264.us.3, align 8
  %polly.access.add.call1260.us.4 = add nuw nsw i64 %148, %polly.access.mul.call1259.us.4
  %polly.access.call1261.us.4 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1260.us.4
  %polly.access.call1261.load.us.4 = load double, double* %polly.access.call1261.us.4, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.4 = add nsw i64 %polly.indvar_next256.us.3, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.4
  store double %polly.access.call1261.load.us.4, double* %polly.access.Packed_MemRef_call1264.us.4, align 8
  %polly.access.add.call1260.us.5 = add nuw nsw i64 %148, %polly.access.mul.call1259.us.5
  %polly.access.call1261.us.5 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1260.us.5
  %polly.access.call1261.load.us.5 = load double, double* %polly.access.call1261.us.5, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.5 = add nsw i64 %polly.indvar_next256.us.4, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.5
  store double %polly.access.call1261.load.us.5, double* %polly.access.Packed_MemRef_call1264.us.5, align 8
  %polly.access.add.call1260.us.6 = add nuw nsw i64 %148, %polly.access.mul.call1259.us.6
  %polly.access.call1261.us.6 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1260.us.6
  %polly.access.call1261.load.us.6 = load double, double* %polly.access.call1261.us.6, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.6 = add nsw i64 %polly.indvar_next256.us.5, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.6
  store double %polly.access.call1261.load.us.6, double* %polly.access.Packed_MemRef_call1264.us.6, align 8
  %polly.access.add.call1260.us.7 = add nuw nsw i64 %148, %polly.access.mul.call1259.us.7
  %polly.access.call1261.us.7 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1260.us.7
  %polly.access.call1261.load.us.7 = load double, double* %polly.access.call1261.us.7, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.7 = add nsw i64 %polly.indvar_next256.us.6, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.7
  store double %polly.access.call1261.load.us.7, double* %polly.access.Packed_MemRef_call1264.us.7, align 8
  %polly.access.add.call1260.us.8 = add nuw nsw i64 %148, %polly.access.mul.call1259.us.8
  %polly.access.call1261.us.8 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1260.us.8
  %polly.access.call1261.load.us.8 = load double, double* %polly.access.call1261.us.8, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.8 = add nsw i64 %polly.indvar_next256.us.7, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us.8 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.8
  store double %polly.access.call1261.load.us.8, double* %polly.access.Packed_MemRef_call1264.us.8, align 8
  %polly.access.add.call1260.us.9 = add nuw nsw i64 %148, %polly.access.mul.call1259.us.9
  %polly.access.call1261.us.9 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1260.us.9
  %polly.access.call1261.load.us.9 = load double, double* %polly.access.call1261.us.9, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.9 = add nsw i64 %polly.indvar_next256.us.8, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us.9 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.9
  store double %polly.access.call1261.load.us.9, double* %polly.access.Packed_MemRef_call1264.us.9, align 8
  %polly.access.add.call1260.us.10 = add nuw nsw i64 %148, %polly.access.mul.call1259.us.10
  %polly.access.call1261.us.10 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1260.us.10
  %polly.access.call1261.load.us.10 = load double, double* %polly.access.call1261.us.10, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.10 = add nsw i64 %polly.indvar_next256.us.9, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us.10 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.10
  store double %polly.access.call1261.load.us.10, double* %polly.access.Packed_MemRef_call1264.us.10, align 8
  %polly.access.add.call1260.us.11 = add nuw nsw i64 %148, %polly.access.mul.call1259.us.11
  %polly.access.call1261.us.11 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1260.us.11
  %polly.access.call1261.load.us.11 = load double, double* %polly.access.call1261.us.11, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.11 = add nsw i64 %polly.indvar_next256.us.10, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us.11 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.11
  store double %polly.access.call1261.load.us.11, double* %polly.access.Packed_MemRef_call1264.us.11, align 8
  %polly.access.add.call1260.us.12 = add nuw nsw i64 %148, %polly.access.mul.call1259.us.12
  %polly.access.call1261.us.12 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1260.us.12
  %polly.access.call1261.load.us.12 = load double, double* %polly.access.call1261.us.12, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.12 = add nsw i64 %polly.indvar_next256.us.11, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us.12 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.12
  store double %polly.access.call1261.load.us.12, double* %polly.access.Packed_MemRef_call1264.us.12, align 8
  %polly.access.add.call1260.us.13 = add nuw nsw i64 %148, %polly.access.mul.call1259.us.13
  %polly.access.call1261.us.13 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1260.us.13
  %polly.access.call1261.load.us.13 = load double, double* %polly.access.call1261.us.13, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.13 = add nsw i64 %polly.indvar_next256.us.12, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us.13 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.13
  store double %polly.access.call1261.load.us.13, double* %polly.access.Packed_MemRef_call1264.us.13, align 8
  %polly.access.add.call1260.us.14 = add nuw nsw i64 %148, %polly.access.mul.call1259.us.14
  %polly.access.call1261.us.14 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1260.us.14
  %polly.access.call1261.load.us.14 = load double, double* %polly.access.call1261.us.14, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.14 = add nsw i64 %polly.indvar_next256.us.13, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us.14 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.14
  store double %polly.access.call1261.load.us.14, double* %polly.access.Packed_MemRef_call1264.us.14, align 8
  %polly.access.add.call1260.us.15 = add nuw nsw i64 %148, %polly.access.mul.call1259.us.15
  %polly.access.call1261.us.15 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1260.us.15
  %polly.access.call1261.load.us.15 = load double, double* %polly.access.call1261.us.15, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.15 = add nsw i64 %polly.indvar_next256.us.14, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us.15 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.15
  store double %polly.access.call1261.load.us.15, double* %polly.access.Packed_MemRef_call1264.us.15, align 8
  %polly.access.add.call1260.us.16 = add nuw nsw i64 %148, %polly.access.mul.call1259.us.16
  %polly.access.call1261.us.16 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1260.us.16
  %polly.access.call1261.load.us.16 = load double, double* %polly.access.call1261.us.16, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.16 = add nsw i64 %polly.indvar_next256.us.15, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us.16 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.16
  store double %polly.access.call1261.load.us.16, double* %polly.access.Packed_MemRef_call1264.us.16, align 8
  %polly.access.add.call1260.us.17 = add nuw nsw i64 %148, %polly.access.mul.call1259.us.17
  %polly.access.call1261.us.17 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1260.us.17
  %polly.access.call1261.load.us.17 = load double, double* %polly.access.call1261.us.17, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.17 = add nsw i64 %polly.indvar_next256.us.16, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us.17 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.17
  store double %polly.access.call1261.load.us.17, double* %polly.access.Packed_MemRef_call1264.us.17, align 8
  %polly.access.add.call1260.us.18 = add nuw nsw i64 %148, %polly.access.mul.call1259.us.18
  %polly.access.call1261.us.18 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1260.us.18
  %polly.access.call1261.load.us.18 = load double, double* %polly.access.call1261.us.18, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.18 = add nsw i64 %polly.indvar_next256.us.17, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us.18 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.18
  store double %polly.access.call1261.load.us.18, double* %polly.access.Packed_MemRef_call1264.us.18, align 8
  %polly.access.add.call1260.us.19 = add nuw nsw i64 %148, %polly.access.mul.call1259.us.19
  %polly.access.call1261.us.19 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1260.us.19
  %polly.access.call1261.load.us.19 = load double, double* %polly.access.call1261.us.19, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.19 = add nsw i64 %polly.indvar_next256.us.18, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us.19 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.19
  store double %polly.access.call1261.load.us.19, double* %polly.access.Packed_MemRef_call1264.us.19, align 8
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1044.not = icmp eq i64 %polly.indvar_next238.us, %97
  br i1 %exitcond1044.not, label %polly.merge, label %polly.loop_header234.us

polly.merge.loopexit1145:                         ; preds = %polly.loop_exit273
  %.pre1211 = mul nuw nsw i64 %polly.indvar231, 20
  br label %polly.merge

polly.merge:                                      ; preds = %polly.loop_exit253, %polly.loop_exit242.loopexit.us, %polly.merge.loopexit1145
  %.pre-phi1212 = phi i64 [ %.pre1211, %polly.merge.loopexit1145 ], [ %123, %polly.loop_exit242.loopexit.us ], [ %123, %polly.loop_exit253 ]
  %150 = sub nsw i64 %99, %.pre-phi1212
  %151 = icmp sgt i64 %150, 0
  %152 = select i1 %151, i64 %150, i64 0
  %153 = add i64 %.pre-phi1212, %152
  %154 = mul i64 %153, 640
  %155 = add i64 %107, %154
  %156 = add i64 %108, %154
  br label %polly.loop_header284

polly.loop_exit286:                               ; preds = %polly.loop_exit292
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1046 = add nsw i64 %indvars.iv1045, -20
  %indvars.iv.next1048 = add nsw i64 %indvars.iv1047, 20
  %exitcond1055.not = icmp eq i64 %polly.indvar_next232, 4
  %indvar.next1664 = add i64 %indvar1663, 1
  br i1 %exitcond1055.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header234.preheader, %polly.loop_exit253
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit253 ], [ 0, %polly.loop_header234.preheader ]
  %157 = add nuw nsw i64 %polly.indvar237, %98
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar237, 80
  br label %polly.loop_header251

polly.loop_exit253:                               ; preds = %polly.loop_header251
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar_next238, %97
  br i1 %exitcond1038.not, label %polly.merge, label %polly.loop_header234

polly.loop_header251:                             ; preds = %polly.loop_header234, %polly.loop_header251
  %polly.indvar255 = phi i64 [ %polly.indvar_next256, %polly.loop_header251 ], [ %124, %polly.loop_header234 ]
  %158 = add nsw i64 %polly.indvar255, %99
  %polly.access.mul.call1259 = mul nuw nsw i64 %158, 60
  %polly.access.add.call1260 = add nuw nsw i64 %157, %polly.access.mul.call1259
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263 = add nsw i64 %polly.indvar255, %polly.access.mul.Packed_MemRef_call1262
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next256 = add nsw i64 %polly.indvar255, 1
  %polly.loop_cond257.not.not = icmp slt i64 %polly.indvar255, %127
  br i1 %polly.loop_cond257.not.not, label %polly.loop_header251, label %polly.loop_exit253

polly.loop_header265:                             ; preds = %polly.loop_header228, %polly.loop_exit273
  %polly.indvar268 = phi i64 [ %polly.indvar_next269, %polly.loop_exit273 ], [ 0, %polly.loop_header228 ]
  %159 = add nuw nsw i64 %polly.indvar268, %98
  %polly.access.mul.Packed_MemRef_call1281 = mul nuw nsw i64 %polly.indvar268, 80
  br label %polly.loop_header271

polly.loop_exit273:                               ; preds = %polly.loop_header271
  %polly.indvar_next269 = add nuw nsw i64 %polly.indvar268, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar_next269, %97
  br i1 %exitcond1036.not, label %polly.merge.loopexit1145, label %polly.loop_header265

polly.loop_header271:                             ; preds = %polly.loop_header271, %polly.loop_header265
  %polly.indvar274 = phi i64 [ 0, %polly.loop_header265 ], [ %polly.indvar_next275, %polly.loop_header271 ]
  %160 = add nuw nsw i64 %polly.indvar274, %99
  %polly.access.mul.call1278 = mul nuw nsw i64 %160, 60
  %polly.access.add.call1279 = add nuw nsw i64 %159, %polly.access.mul.call1278
  %polly.access.call1280 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1279
  %polly.access.call1280.load = load double, double* %polly.access.call1280, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1282 = add nuw nsw i64 %polly.indvar274, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call1283 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282
  store double %polly.access.call1280.load, double* %polly.access.Packed_MemRef_call1283, align 8
  %polly.indvar_next275 = add nuw nsw i64 %polly.indvar274, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar_next275, %105
  br i1 %exitcond1034.not, label %polly.loop_exit273, label %polly.loop_header271

polly.loop_header284:                             ; preds = %polly.loop_exit292, %polly.merge
  %polly.indvar287 = phi i64 [ 0, %polly.merge ], [ %polly.indvar_next288, %polly.loop_exit292 ]
  %161 = mul i64 %polly.indvar287, 640
  %scevgep1668 = getelementptr i8, i8* %malloccall, i64 %161
  %162 = or i64 %161, 8
  %scevgep1669 = getelementptr i8, i8* %malloccall, i64 %162
  %polly.access.mul.Packed_MemRef_call1304 = mul nuw nsw i64 %polly.indvar287, 80
  br label %polly.loop_header290

polly.loop_exit292:                               ; preds = %polly.loop_exit299
  %polly.indvar_next288 = add nuw nsw i64 %polly.indvar287, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar_next288, %97
  br i1 %exitcond1054.not, label %polly.loop_exit286, label %polly.loop_header284

polly.loop_header290:                             ; preds = %polly.loop_exit299, %polly.loop_header284
  %indvar1659 = phi i64 [ %indvar.next1660, %polly.loop_exit299 ], [ 0, %polly.loop_header284 ]
  %indvars.iv1049 = phi i64 [ %indvars.iv.next1050, %polly.loop_exit299 ], [ %121, %polly.loop_header284 ]
  %polly.indvar293 = phi i64 [ %polly.indvar_next294, %polly.loop_exit299 ], [ %152, %polly.loop_header284 ]
  %163 = add i64 %115, %indvar1659
  %smin1679 = call i64 @llvm.smin.i64(i64 %163, i64 49)
  %164 = add nsw i64 %smin1679, 1
  %165 = mul nuw nsw i64 %indvar1659, 640
  %166 = add i64 %155, %165
  %scevgep1661 = getelementptr i8, i8* %call, i64 %166
  %167 = add i64 %156, %165
  %scevgep1662 = getelementptr i8, i8* %call, i64 %167
  %168 = add i64 %120, %indvar1659
  %smin1666 = call i64 @llvm.smin.i64(i64 %168, i64 49)
  %169 = shl i64 %smin1666, 3
  %scevgep1667 = getelementptr i8, i8* %scevgep1662, i64 %169
  %scevgep1670 = getelementptr i8, i8* %scevgep1669, i64 %169
  %smin1051 = call i64 @llvm.smin.i64(i64 %indvars.iv1049, i64 49)
  %170 = add nuw i64 %polly.indvar293, %.pre-phi1212
  %171 = add i64 %170, %101
  %polly.loop_guard3001213 = icmp sgt i64 %171, -1
  br i1 %polly.loop_guard3001213, label %polly.loop_header297.preheader, label %polly.loop_exit299

polly.loop_header297.preheader:                   ; preds = %polly.loop_header290
  %polly.access.add.Packed_MemRef_call2309 = add nsw i64 %polly.access.mul.Packed_MemRef_call1304, %171
  %polly.access.Packed_MemRef_call2310 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2309
  %_p_scalar_311 = load double, double* %polly.access.Packed_MemRef_call2310, align 8
  %polly.access.Packed_MemRef_call1318 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2309
  %_p_scalar_319 = load double, double* %polly.access.Packed_MemRef_call1318, align 8
  %172 = mul i64 %170, 640
  %min.iters.check1680 = icmp ult i64 %164, 4
  br i1 %min.iters.check1680, label %polly.loop_header297.preheader1695, label %vector.memcheck1658

vector.memcheck1658:                              ; preds = %polly.loop_header297.preheader
  %bound01671 = icmp ult i8* %scevgep1661, %scevgep1670
  %bound11672 = icmp ult i8* %scevgep1668, %scevgep1667
  %found.conflict1673 = and i1 %bound01671, %bound11672
  br i1 %found.conflict1673, label %polly.loop_header297.preheader1695, label %vector.ph1681

vector.ph1681:                                    ; preds = %vector.memcheck1658
  %n.vec1683 = and i64 %164, -4
  %broadcast.splatinsert1689 = insertelement <4 x double> poison, double %_p_scalar_311, i32 0
  %broadcast.splat1690 = shufflevector <4 x double> %broadcast.splatinsert1689, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1692 = insertelement <4 x double> poison, double %_p_scalar_319, i32 0
  %broadcast.splat1693 = shufflevector <4 x double> %broadcast.splatinsert1692, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1677

vector.body1677:                                  ; preds = %vector.body1677, %vector.ph1681
  %index1684 = phi i64 [ 0, %vector.ph1681 ], [ %index.next1685, %vector.body1677 ]
  %173 = add nuw nsw i64 %index1684, %99
  %174 = add nuw nsw i64 %index1684, %polly.access.mul.Packed_MemRef_call1304
  %175 = getelementptr double, double* %Packed_MemRef_call1, i64 %174
  %176 = bitcast double* %175 to <4 x double>*
  %wide.load1688 = load <4 x double>, <4 x double>* %176, align 8, !alias.scope !84
  %177 = fmul fast <4 x double> %broadcast.splat1690, %wide.load1688
  %178 = getelementptr double, double* %Packed_MemRef_call2, i64 %174
  %179 = bitcast double* %178 to <4 x double>*
  %wide.load1691 = load <4 x double>, <4 x double>* %179, align 8
  %180 = fmul fast <4 x double> %broadcast.splat1693, %wide.load1691
  %181 = shl i64 %173, 3
  %182 = add i64 %181, %172
  %183 = getelementptr i8, i8* %call, i64 %182
  %184 = bitcast i8* %183 to <4 x double>*
  %wide.load1694 = load <4 x double>, <4 x double>* %184, align 8, !alias.scope !87, !noalias !89
  %185 = fadd fast <4 x double> %180, %177
  %186 = fmul fast <4 x double> %185, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %187 = fadd fast <4 x double> %186, %wide.load1694
  %188 = bitcast i8* %183 to <4 x double>*
  store <4 x double> %187, <4 x double>* %188, align 8, !alias.scope !87, !noalias !89
  %index.next1685 = add i64 %index1684, 4
  %189 = icmp eq i64 %index.next1685, %n.vec1683
  br i1 %189, label %middle.block1675, label %vector.body1677, !llvm.loop !90

middle.block1675:                                 ; preds = %vector.body1677
  %cmp.n1687 = icmp eq i64 %164, %n.vec1683
  br i1 %cmp.n1687, label %polly.loop_exit299, label %polly.loop_header297.preheader1695

polly.loop_header297.preheader1695:               ; preds = %vector.memcheck1658, %polly.loop_header297.preheader, %middle.block1675
  %polly.indvar301.ph = phi i64 [ 0, %vector.memcheck1658 ], [ 0, %polly.loop_header297.preheader ], [ %n.vec1683, %middle.block1675 ]
  br label %polly.loop_header297

polly.loop_exit299:                               ; preds = %polly.loop_header297, %middle.block1675, %polly.loop_header290
  %polly.indvar_next294 = add nuw nsw i64 %polly.indvar293, 1
  %polly.loop_cond295 = icmp ult i64 %polly.indvar293, 19
  %indvars.iv.next1050 = add i64 %indvars.iv1049, 1
  %indvar.next1660 = add i64 %indvar1659, 1
  br i1 %polly.loop_cond295, label %polly.loop_header290, label %polly.loop_exit292

polly.loop_header297:                             ; preds = %polly.loop_header297.preheader1695, %polly.loop_header297
  %polly.indvar301 = phi i64 [ %polly.indvar_next302, %polly.loop_header297 ], [ %polly.indvar301.ph, %polly.loop_header297.preheader1695 ]
  %190 = add nuw nsw i64 %polly.indvar301, %99
  %polly.access.add.Packed_MemRef_call1305 = add nuw nsw i64 %polly.indvar301, %polly.access.mul.Packed_MemRef_call1304
  %polly.access.Packed_MemRef_call1306 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1305
  %_p_scalar_307 = load double, double* %polly.access.Packed_MemRef_call1306, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_311, %_p_scalar_307
  %polly.access.Packed_MemRef_call2314 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1305
  %_p_scalar_315 = load double, double* %polly.access.Packed_MemRef_call2314, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_319, %_p_scalar_315
  %191 = shl i64 %190, 3
  %192 = add i64 %191, %172
  %scevgep320 = getelementptr i8, i8* %call, i64 %192
  %scevgep320321 = bitcast i8* %scevgep320 to double*
  %_p_scalar_322 = load double, double* %scevgep320321, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_322
  store double %p_add42.i118, double* %scevgep320321, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next302 = add nuw nsw i64 %polly.indvar301, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar301, %smin1051
  br i1 %exitcond1052.not, label %polly.loop_exit299, label %polly.loop_header297, !llvm.loop !91

polly.start325:                                   ; preds = %kernel_syr2k.exit
  %malloccall327 = tail call dereferenceable_or_null(10240) i8* @malloc(i64 10240) #6
  %malloccall329 = tail call dereferenceable_or_null(10240) i8* @malloc(i64 10240) #6
  br label %polly.loop_header413

polly.exiting326:                                 ; preds = %polly.loop_exit437
  tail call void @free(i8* %malloccall327)
  tail call void @free(i8* %malloccall329)
  br label %kernel_syr2k.exit90

polly.loop_header413:                             ; preds = %polly.loop_exit421, %polly.start325
  %indvar1584 = phi i64 [ %indvar.next1585, %polly.loop_exit421 ], [ 0, %polly.start325 ]
  %polly.indvar416 = phi i64 [ %polly.indvar_next417, %polly.loop_exit421 ], [ 1, %polly.start325 ]
  %193 = add i64 %indvar1584, 1
  %194 = mul nuw nsw i64 %polly.indvar416, 640
  %scevgep425 = getelementptr i8, i8* %call, i64 %194
  %min.iters.check1586 = icmp ult i64 %193, 4
  br i1 %min.iters.check1586, label %polly.loop_header419.preheader, label %vector.ph1587

vector.ph1587:                                    ; preds = %polly.loop_header413
  %n.vec1589 = and i64 %193, -4
  br label %vector.body1583

vector.body1583:                                  ; preds = %vector.body1583, %vector.ph1587
  %index1590 = phi i64 [ 0, %vector.ph1587 ], [ %index.next1591, %vector.body1583 ]
  %195 = shl nuw nsw i64 %index1590, 3
  %196 = getelementptr i8, i8* %scevgep425, i64 %195
  %197 = bitcast i8* %196 to <4 x double>*
  %wide.load1594 = load <4 x double>, <4 x double>* %197, align 8, !alias.scope !92, !noalias !94
  %198 = fmul fast <4 x double> %wide.load1594, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %199 = bitcast i8* %196 to <4 x double>*
  store <4 x double> %198, <4 x double>* %199, align 8, !alias.scope !92, !noalias !94
  %index.next1591 = add i64 %index1590, 4
  %200 = icmp eq i64 %index.next1591, %n.vec1589
  br i1 %200, label %middle.block1581, label %vector.body1583, !llvm.loop !99

middle.block1581:                                 ; preds = %vector.body1583
  %cmp.n1593 = icmp eq i64 %193, %n.vec1589
  br i1 %cmp.n1593, label %polly.loop_exit421, label %polly.loop_header419.preheader

polly.loop_header419.preheader:                   ; preds = %polly.loop_header413, %middle.block1581
  %polly.indvar422.ph = phi i64 [ 0, %polly.loop_header413 ], [ %n.vec1589, %middle.block1581 ]
  br label %polly.loop_header419

polly.loop_exit421:                               ; preds = %polly.loop_header419, %middle.block1581
  %polly.indvar_next417 = add nuw nsw i64 %polly.indvar416, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next417, 80
  %indvar.next1585 = add i64 %indvar1584, 1
  br i1 %exitcond1089.not, label %polly.loop_header429.preheader, label %polly.loop_header413

polly.loop_header429.preheader:                   ; preds = %polly.loop_exit421
  %Packed_MemRef_call1328 = bitcast i8* %malloccall327 to double*
  %Packed_MemRef_call2330 = bitcast i8* %malloccall329 to double*
  br label %polly.loop_header429

polly.loop_header419:                             ; preds = %polly.loop_header419.preheader, %polly.loop_header419
  %polly.indvar422 = phi i64 [ %polly.indvar_next423, %polly.loop_header419 ], [ %polly.indvar422.ph, %polly.loop_header419.preheader ]
  %201 = shl nuw nsw i64 %polly.indvar422, 3
  %scevgep426 = getelementptr i8, i8* %scevgep425, i64 %201
  %scevgep426427 = bitcast i8* %scevgep426 to double*
  %_p_scalar_428 = load double, double* %scevgep426427, align 8, !alias.scope !92, !noalias !94
  %p_mul.i57 = fmul fast double %_p_scalar_428, 1.200000e+00
  store double %p_mul.i57, double* %scevgep426427, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next423 = add nuw nsw i64 %polly.indvar422, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar_next423, %polly.indvar416
  br i1 %exitcond1088.not, label %polly.loop_exit421, label %polly.loop_header419, !llvm.loop !100

polly.loop_header429:                             ; preds = %polly.loop_header429.preheader, %polly.loop_exit437
  %indvars.iv1060 = phi i64 [ 0, %polly.loop_header429.preheader ], [ %indvars.iv.next1061, %polly.loop_exit437 ]
  %polly.indvar432 = phi i64 [ 0, %polly.loop_header429.preheader ], [ %polly.indvar_next433, %polly.loop_exit437 ]
  %smin1084 = call i64 @llvm.smin.i64(i64 %indvars.iv1060, i64 -44)
  %202 = add nsw i64 %smin1084, 60
  %203 = shl nsw i64 %polly.indvar432, 4
  br label %polly.loop_header435

polly.loop_exit437:                               ; preds = %polly.loop_exit459
  %polly.indvar_next433 = add nuw nsw i64 %polly.indvar432, 1
  %indvars.iv.next1061 = add nsw i64 %indvars.iv1060, -16
  %exitcond1087.not = icmp eq i64 %polly.indvar_next433, 4
  br i1 %exitcond1087.not, label %polly.exiting326, label %polly.loop_header429

polly.loop_header435:                             ; preds = %polly.loop_exit459, %polly.loop_header429
  %polly.loop_cond440 = phi i1 [ false, %polly.loop_exit459 ], [ true, %polly.loop_header429 ]
  %polly.indvar438 = phi i64 [ 1, %polly.loop_exit459 ], [ 0, %polly.loop_header429 ]
  %204 = mul nuw nsw i64 %polly.indvar438, 50
  %205 = sub nuw nsw i64 80, %204
  br label %polly.loop_header441

polly.loop_exit443:                               ; preds = %polly.loop_exit449
  %206 = mul nuw nsw i64 %polly.indvar438, -50
  %207 = shl nuw nsw i64 %polly.indvar438, 1
  %208 = mul nuw nsw i64 %polly.indvar438, 5
  %209 = mul nuw nsw i64 %polly.indvar438, 10
  %210 = sub nsw i64 20, %209
  %211 = sub nsw i64 0, %209
  %212 = mul nuw nsw i64 %polly.indvar438, 400
  %213 = or i64 %212, 8
  br label %polly.loop_header457

polly.loop_exit459:                               ; preds = %polly.loop_exit521
  br i1 %polly.loop_cond440, label %polly.loop_header435, label %polly.loop_exit437

polly.loop_header441:                             ; preds = %polly.loop_exit449, %polly.loop_header435
  %polly.indvar444 = phi i64 [ 0, %polly.loop_header435 ], [ %polly.indvar_next445, %polly.loop_exit449 ]
  %214 = add nuw nsw i64 %polly.indvar444, %203
  %polly.access.mul.Packed_MemRef_call2330 = mul nuw nsw i64 %polly.indvar444, 80
  br label %polly.loop_header447

polly.loop_exit449:                               ; preds = %polly.loop_header447
  %polly.indvar_next445 = add nuw nsw i64 %polly.indvar444, 1
  %exitcond1063.not = icmp eq i64 %polly.indvar_next445, %202
  br i1 %exitcond1063.not, label %polly.loop_exit443, label %polly.loop_header441

polly.loop_header447:                             ; preds = %polly.loop_header447, %polly.loop_header441
  %polly.indvar450 = phi i64 [ 0, %polly.loop_header441 ], [ %polly.indvar_next451, %polly.loop_header447 ]
  %215 = add nuw nsw i64 %polly.indvar450, %204
  %polly.access.mul.call2454 = mul nuw nsw i64 %215, 60
  %polly.access.add.call2455 = add nuw nsw i64 %214, %polly.access.mul.call2454
  %polly.access.call2456 = getelementptr double, double* %polly.access.cast.call2807, i64 %polly.access.add.call2455
  %polly.access.call2456.load = load double, double* %polly.access.call2456, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2330 = add nuw nsw i64 %polly.indvar450, %polly.access.mul.Packed_MemRef_call2330
  %polly.access.Packed_MemRef_call2330 = getelementptr double, double* %Packed_MemRef_call2330, i64 %polly.access.add.Packed_MemRef_call2330
  store double %polly.access.call2456.load, double* %polly.access.Packed_MemRef_call2330, align 8
  %polly.indvar_next451 = add nuw nsw i64 %polly.indvar450, 1
  %exitcond1059.not = icmp eq i64 %polly.indvar_next451, %205
  br i1 %exitcond1059.not, label %polly.loop_exit449, label %polly.loop_header447

polly.loop_header457:                             ; preds = %polly.loop_exit521, %polly.loop_exit443
  %indvar1600 = phi i64 [ %indvar.next1601, %polly.loop_exit521 ], [ 0, %polly.loop_exit443 ]
  %indvars.iv1078 = phi i64 [ %indvars.iv.next1079, %polly.loop_exit521 ], [ %211, %polly.loop_exit443 ]
  %indvars.iv1075 = phi i64 [ %indvars.iv.next1076, %polly.loop_exit521 ], [ %209, %polly.loop_exit443 ]
  %polly.indvar460 = phi i64 [ %polly.indvar_next461, %polly.loop_exit521 ], [ %207, %polly.loop_exit443 ]
  %216 = mul i64 %indvar1600, -20
  %217 = add i64 %209, %216
  %smax1615 = call i64 @llvm.smax.i64(i64 %217, i64 0)
  %218 = mul i64 %indvar1600, 20
  %219 = sub i64 %218, %209
  %220 = add i64 %smax1615, %219
  %221 = mul i64 %indvar1600, -20
  %222 = add i64 %209, %221
  %smax1602 = call i64 @llvm.smax.i64(i64 %222, i64 0)
  %223 = mul i64 %indvar1600, 20
  %224 = sub i64 %223, %209
  %225 = add i64 %smax1602, %224
  %smax1077 = call i64 @llvm.smax.i64(i64 %indvars.iv1075, i64 0)
  %226 = add i64 %smax1077, %indvars.iv1078
  %227 = shl nuw nsw i64 %polly.indvar460, 1
  %.not.not999 = icmp ugt i64 %227, %208
  br i1 %.not.not999, label %polly.loop_header467.preheader, label %polly.loop_header500

polly.loop_header467.preheader:                   ; preds = %polly.loop_header457
  %228 = mul nuw nsw i64 %polly.indvar460, 20
  %229 = add nsw i64 %228, %206
  %230 = add nsw i64 %229, -1
  %.inv1000 = icmp sgt i64 %229, 49
  %231 = select i1 %.inv1000, i64 49, i64 %230
  %polly.loop_guard477 = icmp sgt i64 %231, -1
  %232 = add nsw i64 %229, 19
  br i1 %polly.loop_guard477, label %polly.loop_header467.us.preheader, label %polly.loop_header467

polly.loop_header467.us.preheader:                ; preds = %polly.loop_header467.preheader
  %233 = add nsw i64 %229, %204
  %polly.access.mul.call1494.us = mul nuw nsw i64 %233, 60
  %polly.indvar_next491.us = or i64 %229, 1
  %234 = add nsw i64 %polly.indvar_next491.us, %204
  %polly.access.mul.call1494.us.1 = mul nuw nsw i64 %234, 60
  %polly.indvar_next491.us.1 = add nsw i64 %polly.indvar_next491.us, 1
  %235 = add nsw i64 %polly.indvar_next491.us.1, %204
  %polly.access.mul.call1494.us.2 = mul nuw nsw i64 %235, 60
  %polly.indvar_next491.us.2 = add nsw i64 %polly.indvar_next491.us, 2
  %236 = add nsw i64 %polly.indvar_next491.us.2, %204
  %polly.access.mul.call1494.us.3 = mul nuw nsw i64 %236, 60
  %polly.indvar_next491.us.3 = add nsw i64 %polly.indvar_next491.us, 3
  %237 = add nsw i64 %polly.indvar_next491.us.3, %204
  %polly.access.mul.call1494.us.4 = mul nuw nsw i64 %237, 60
  %polly.indvar_next491.us.4 = add nsw i64 %polly.indvar_next491.us, 4
  %238 = add nsw i64 %polly.indvar_next491.us.4, %204
  %polly.access.mul.call1494.us.5 = mul nuw nsw i64 %238, 60
  %polly.indvar_next491.us.5 = add nsw i64 %polly.indvar_next491.us, 5
  %239 = add nsw i64 %polly.indvar_next491.us.5, %204
  %polly.access.mul.call1494.us.6 = mul nuw nsw i64 %239, 60
  %polly.indvar_next491.us.6 = add nsw i64 %polly.indvar_next491.us, 6
  %240 = add nsw i64 %polly.indvar_next491.us.6, %204
  %polly.access.mul.call1494.us.7 = mul nuw nsw i64 %240, 60
  %polly.indvar_next491.us.7 = add nsw i64 %polly.indvar_next491.us, 7
  %241 = add nsw i64 %polly.indvar_next491.us.7, %204
  %polly.access.mul.call1494.us.8 = mul nuw nsw i64 %241, 60
  %polly.indvar_next491.us.8 = add nsw i64 %polly.indvar_next491.us, 8
  %242 = add nsw i64 %polly.indvar_next491.us.8, %204
  %polly.access.mul.call1494.us.9 = mul nuw nsw i64 %242, 60
  %polly.indvar_next491.us.9 = add nsw i64 %polly.indvar_next491.us, 9
  %243 = add nsw i64 %polly.indvar_next491.us.9, %204
  %polly.access.mul.call1494.us.10 = mul nuw nsw i64 %243, 60
  %polly.indvar_next491.us.10 = add nsw i64 %polly.indvar_next491.us, 10
  %244 = add nsw i64 %polly.indvar_next491.us.10, %204
  %polly.access.mul.call1494.us.11 = mul nuw nsw i64 %244, 60
  %polly.indvar_next491.us.11 = add nsw i64 %polly.indvar_next491.us, 11
  %245 = add nsw i64 %polly.indvar_next491.us.11, %204
  %polly.access.mul.call1494.us.12 = mul nuw nsw i64 %245, 60
  %polly.indvar_next491.us.12 = add nsw i64 %polly.indvar_next491.us, 12
  %246 = add nsw i64 %polly.indvar_next491.us.12, %204
  %polly.access.mul.call1494.us.13 = mul nuw nsw i64 %246, 60
  %polly.indvar_next491.us.13 = add nsw i64 %polly.indvar_next491.us, 13
  %247 = add nsw i64 %polly.indvar_next491.us.13, %204
  %polly.access.mul.call1494.us.14 = mul nuw nsw i64 %247, 60
  %polly.indvar_next491.us.14 = add nsw i64 %polly.indvar_next491.us, 14
  %248 = add nsw i64 %polly.indvar_next491.us.14, %204
  %polly.access.mul.call1494.us.15 = mul nuw nsw i64 %248, 60
  %polly.indvar_next491.us.15 = add nsw i64 %polly.indvar_next491.us, 15
  %249 = add nsw i64 %polly.indvar_next491.us.15, %204
  %polly.access.mul.call1494.us.16 = mul nuw nsw i64 %249, 60
  %polly.indvar_next491.us.16 = add nsw i64 %polly.indvar_next491.us, 16
  %250 = add nsw i64 %polly.indvar_next491.us.16, %204
  %polly.access.mul.call1494.us.17 = mul nuw nsw i64 %250, 60
  %polly.indvar_next491.us.17 = add nsw i64 %polly.indvar_next491.us, 17
  %251 = add nsw i64 %polly.indvar_next491.us.17, %204
  %polly.access.mul.call1494.us.18 = mul nuw nsw i64 %251, 60
  %polly.indvar_next491.us.18 = add nsw i64 %polly.indvar_next491.us, 18
  %252 = add nsw i64 %polly.indvar_next491.us.18, %204
  %polly.access.mul.call1494.us.19 = mul nuw nsw i64 %252, 60
  br label %polly.loop_header467.us

polly.loop_header467.us:                          ; preds = %polly.loop_header467.us.preheader, %polly.loop_exit476.loopexit.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_exit476.loopexit.us ], [ 0, %polly.loop_header467.us.preheader ]
  %253 = add nuw nsw i64 %polly.indvar470.us, %203
  %polly.access.mul.Packed_MemRef_call1328.us = mul nuw nsw i64 %polly.indvar470.us, 80
  br label %polly.loop_header474.us

polly.loop_header474.us:                          ; preds = %polly.loop_header467.us, %polly.loop_header474.us
  %polly.indvar478.us = phi i64 [ %polly.indvar_next479.us, %polly.loop_header474.us ], [ 0, %polly.loop_header467.us ]
  %254 = add nuw nsw i64 %polly.indvar478.us, %204
  %polly.access.mul.call1482.us = mul nuw nsw i64 %254, 60
  %polly.access.add.call1483.us = add nuw nsw i64 %253, %polly.access.mul.call1482.us
  %polly.access.call1484.us = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1483.us
  %polly.access.call1484.load.us = load double, double* %polly.access.call1484.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1328.us = add nuw nsw i64 %polly.indvar478.us, %polly.access.mul.Packed_MemRef_call1328.us
  %polly.access.Packed_MemRef_call1328.us = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328.us
  store double %polly.access.call1484.load.us, double* %polly.access.Packed_MemRef_call1328.us, align 8
  %polly.indvar_next479.us = add nuw i64 %polly.indvar478.us, 1
  %exitcond1069.not = icmp eq i64 %polly.indvar478.us, %231
  br i1 %exitcond1069.not, label %polly.loop_exit476.loopexit.us, label %polly.loop_header474.us

polly.loop_exit476.loopexit.us:                   ; preds = %polly.loop_header474.us
  %polly.access.add.call1495.us = add nuw nsw i64 %253, %polly.access.mul.call1494.us
  %polly.access.call1496.us = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1495.us
  %polly.access.call1496.load.us = load double, double* %polly.access.call1496.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1328498.us = add nsw i64 %229, %polly.access.mul.Packed_MemRef_call1328.us
  %polly.access.Packed_MemRef_call1328499.us = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328498.us
  store double %polly.access.call1496.load.us, double* %polly.access.Packed_MemRef_call1328499.us, align 8
  %polly.access.add.call1495.us.1 = add nuw nsw i64 %253, %polly.access.mul.call1494.us.1
  %polly.access.call1496.us.1 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1495.us.1
  %polly.access.call1496.load.us.1 = load double, double* %polly.access.call1496.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1328498.us.1 = add nsw i64 %polly.indvar_next491.us, %polly.access.mul.Packed_MemRef_call1328.us
  %polly.access.Packed_MemRef_call1328499.us.1 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328498.us.1
  store double %polly.access.call1496.load.us.1, double* %polly.access.Packed_MemRef_call1328499.us.1, align 8
  %polly.access.add.call1495.us.2 = add nuw nsw i64 %253, %polly.access.mul.call1494.us.2
  %polly.access.call1496.us.2 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1495.us.2
  %polly.access.call1496.load.us.2 = load double, double* %polly.access.call1496.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1328498.us.2 = add nsw i64 %polly.indvar_next491.us.1, %polly.access.mul.Packed_MemRef_call1328.us
  %polly.access.Packed_MemRef_call1328499.us.2 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328498.us.2
  store double %polly.access.call1496.load.us.2, double* %polly.access.Packed_MemRef_call1328499.us.2, align 8
  %polly.access.add.call1495.us.3 = add nuw nsw i64 %253, %polly.access.mul.call1494.us.3
  %polly.access.call1496.us.3 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1495.us.3
  %polly.access.call1496.load.us.3 = load double, double* %polly.access.call1496.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1328498.us.3 = add nsw i64 %polly.indvar_next491.us.2, %polly.access.mul.Packed_MemRef_call1328.us
  %polly.access.Packed_MemRef_call1328499.us.3 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328498.us.3
  store double %polly.access.call1496.load.us.3, double* %polly.access.Packed_MemRef_call1328499.us.3, align 8
  %polly.access.add.call1495.us.4 = add nuw nsw i64 %253, %polly.access.mul.call1494.us.4
  %polly.access.call1496.us.4 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1495.us.4
  %polly.access.call1496.load.us.4 = load double, double* %polly.access.call1496.us.4, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1328498.us.4 = add nsw i64 %polly.indvar_next491.us.3, %polly.access.mul.Packed_MemRef_call1328.us
  %polly.access.Packed_MemRef_call1328499.us.4 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328498.us.4
  store double %polly.access.call1496.load.us.4, double* %polly.access.Packed_MemRef_call1328499.us.4, align 8
  %polly.access.add.call1495.us.5 = add nuw nsw i64 %253, %polly.access.mul.call1494.us.5
  %polly.access.call1496.us.5 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1495.us.5
  %polly.access.call1496.load.us.5 = load double, double* %polly.access.call1496.us.5, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1328498.us.5 = add nsw i64 %polly.indvar_next491.us.4, %polly.access.mul.Packed_MemRef_call1328.us
  %polly.access.Packed_MemRef_call1328499.us.5 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328498.us.5
  store double %polly.access.call1496.load.us.5, double* %polly.access.Packed_MemRef_call1328499.us.5, align 8
  %polly.access.add.call1495.us.6 = add nuw nsw i64 %253, %polly.access.mul.call1494.us.6
  %polly.access.call1496.us.6 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1495.us.6
  %polly.access.call1496.load.us.6 = load double, double* %polly.access.call1496.us.6, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1328498.us.6 = add nsw i64 %polly.indvar_next491.us.5, %polly.access.mul.Packed_MemRef_call1328.us
  %polly.access.Packed_MemRef_call1328499.us.6 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328498.us.6
  store double %polly.access.call1496.load.us.6, double* %polly.access.Packed_MemRef_call1328499.us.6, align 8
  %polly.access.add.call1495.us.7 = add nuw nsw i64 %253, %polly.access.mul.call1494.us.7
  %polly.access.call1496.us.7 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1495.us.7
  %polly.access.call1496.load.us.7 = load double, double* %polly.access.call1496.us.7, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1328498.us.7 = add nsw i64 %polly.indvar_next491.us.6, %polly.access.mul.Packed_MemRef_call1328.us
  %polly.access.Packed_MemRef_call1328499.us.7 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328498.us.7
  store double %polly.access.call1496.load.us.7, double* %polly.access.Packed_MemRef_call1328499.us.7, align 8
  %polly.access.add.call1495.us.8 = add nuw nsw i64 %253, %polly.access.mul.call1494.us.8
  %polly.access.call1496.us.8 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1495.us.8
  %polly.access.call1496.load.us.8 = load double, double* %polly.access.call1496.us.8, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1328498.us.8 = add nsw i64 %polly.indvar_next491.us.7, %polly.access.mul.Packed_MemRef_call1328.us
  %polly.access.Packed_MemRef_call1328499.us.8 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328498.us.8
  store double %polly.access.call1496.load.us.8, double* %polly.access.Packed_MemRef_call1328499.us.8, align 8
  %polly.access.add.call1495.us.9 = add nuw nsw i64 %253, %polly.access.mul.call1494.us.9
  %polly.access.call1496.us.9 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1495.us.9
  %polly.access.call1496.load.us.9 = load double, double* %polly.access.call1496.us.9, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1328498.us.9 = add nsw i64 %polly.indvar_next491.us.8, %polly.access.mul.Packed_MemRef_call1328.us
  %polly.access.Packed_MemRef_call1328499.us.9 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328498.us.9
  store double %polly.access.call1496.load.us.9, double* %polly.access.Packed_MemRef_call1328499.us.9, align 8
  %polly.access.add.call1495.us.10 = add nuw nsw i64 %253, %polly.access.mul.call1494.us.10
  %polly.access.call1496.us.10 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1495.us.10
  %polly.access.call1496.load.us.10 = load double, double* %polly.access.call1496.us.10, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1328498.us.10 = add nsw i64 %polly.indvar_next491.us.9, %polly.access.mul.Packed_MemRef_call1328.us
  %polly.access.Packed_MemRef_call1328499.us.10 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328498.us.10
  store double %polly.access.call1496.load.us.10, double* %polly.access.Packed_MemRef_call1328499.us.10, align 8
  %polly.access.add.call1495.us.11 = add nuw nsw i64 %253, %polly.access.mul.call1494.us.11
  %polly.access.call1496.us.11 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1495.us.11
  %polly.access.call1496.load.us.11 = load double, double* %polly.access.call1496.us.11, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1328498.us.11 = add nsw i64 %polly.indvar_next491.us.10, %polly.access.mul.Packed_MemRef_call1328.us
  %polly.access.Packed_MemRef_call1328499.us.11 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328498.us.11
  store double %polly.access.call1496.load.us.11, double* %polly.access.Packed_MemRef_call1328499.us.11, align 8
  %polly.access.add.call1495.us.12 = add nuw nsw i64 %253, %polly.access.mul.call1494.us.12
  %polly.access.call1496.us.12 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1495.us.12
  %polly.access.call1496.load.us.12 = load double, double* %polly.access.call1496.us.12, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1328498.us.12 = add nsw i64 %polly.indvar_next491.us.11, %polly.access.mul.Packed_MemRef_call1328.us
  %polly.access.Packed_MemRef_call1328499.us.12 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328498.us.12
  store double %polly.access.call1496.load.us.12, double* %polly.access.Packed_MemRef_call1328499.us.12, align 8
  %polly.access.add.call1495.us.13 = add nuw nsw i64 %253, %polly.access.mul.call1494.us.13
  %polly.access.call1496.us.13 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1495.us.13
  %polly.access.call1496.load.us.13 = load double, double* %polly.access.call1496.us.13, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1328498.us.13 = add nsw i64 %polly.indvar_next491.us.12, %polly.access.mul.Packed_MemRef_call1328.us
  %polly.access.Packed_MemRef_call1328499.us.13 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328498.us.13
  store double %polly.access.call1496.load.us.13, double* %polly.access.Packed_MemRef_call1328499.us.13, align 8
  %polly.access.add.call1495.us.14 = add nuw nsw i64 %253, %polly.access.mul.call1494.us.14
  %polly.access.call1496.us.14 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1495.us.14
  %polly.access.call1496.load.us.14 = load double, double* %polly.access.call1496.us.14, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1328498.us.14 = add nsw i64 %polly.indvar_next491.us.13, %polly.access.mul.Packed_MemRef_call1328.us
  %polly.access.Packed_MemRef_call1328499.us.14 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328498.us.14
  store double %polly.access.call1496.load.us.14, double* %polly.access.Packed_MemRef_call1328499.us.14, align 8
  %polly.access.add.call1495.us.15 = add nuw nsw i64 %253, %polly.access.mul.call1494.us.15
  %polly.access.call1496.us.15 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1495.us.15
  %polly.access.call1496.load.us.15 = load double, double* %polly.access.call1496.us.15, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1328498.us.15 = add nsw i64 %polly.indvar_next491.us.14, %polly.access.mul.Packed_MemRef_call1328.us
  %polly.access.Packed_MemRef_call1328499.us.15 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328498.us.15
  store double %polly.access.call1496.load.us.15, double* %polly.access.Packed_MemRef_call1328499.us.15, align 8
  %polly.access.add.call1495.us.16 = add nuw nsw i64 %253, %polly.access.mul.call1494.us.16
  %polly.access.call1496.us.16 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1495.us.16
  %polly.access.call1496.load.us.16 = load double, double* %polly.access.call1496.us.16, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1328498.us.16 = add nsw i64 %polly.indvar_next491.us.15, %polly.access.mul.Packed_MemRef_call1328.us
  %polly.access.Packed_MemRef_call1328499.us.16 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328498.us.16
  store double %polly.access.call1496.load.us.16, double* %polly.access.Packed_MemRef_call1328499.us.16, align 8
  %polly.access.add.call1495.us.17 = add nuw nsw i64 %253, %polly.access.mul.call1494.us.17
  %polly.access.call1496.us.17 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1495.us.17
  %polly.access.call1496.load.us.17 = load double, double* %polly.access.call1496.us.17, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1328498.us.17 = add nsw i64 %polly.indvar_next491.us.16, %polly.access.mul.Packed_MemRef_call1328.us
  %polly.access.Packed_MemRef_call1328499.us.17 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328498.us.17
  store double %polly.access.call1496.load.us.17, double* %polly.access.Packed_MemRef_call1328499.us.17, align 8
  %polly.access.add.call1495.us.18 = add nuw nsw i64 %253, %polly.access.mul.call1494.us.18
  %polly.access.call1496.us.18 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1495.us.18
  %polly.access.call1496.load.us.18 = load double, double* %polly.access.call1496.us.18, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1328498.us.18 = add nsw i64 %polly.indvar_next491.us.17, %polly.access.mul.Packed_MemRef_call1328.us
  %polly.access.Packed_MemRef_call1328499.us.18 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328498.us.18
  store double %polly.access.call1496.load.us.18, double* %polly.access.Packed_MemRef_call1328499.us.18, align 8
  %polly.access.add.call1495.us.19 = add nuw nsw i64 %253, %polly.access.mul.call1494.us.19
  %polly.access.call1496.us.19 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1495.us.19
  %polly.access.call1496.load.us.19 = load double, double* %polly.access.call1496.us.19, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1328498.us.19 = add nsw i64 %polly.indvar_next491.us.18, %polly.access.mul.Packed_MemRef_call1328.us
  %polly.access.Packed_MemRef_call1328499.us.19 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328498.us.19
  store double %polly.access.call1496.load.us.19, double* %polly.access.Packed_MemRef_call1328499.us.19, align 8
  %polly.indvar_next471.us = add nuw nsw i64 %polly.indvar470.us, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar_next471.us, %202
  br i1 %exitcond1074.not, label %polly.merge464, label %polly.loop_header467.us

polly.merge464.loopexit1148:                      ; preds = %polly.loop_exit508
  %.pre1209 = mul nuw nsw i64 %polly.indvar460, 20
  br label %polly.merge464

polly.merge464:                                   ; preds = %polly.loop_exit488, %polly.loop_exit476.loopexit.us, %polly.merge464.loopexit1148
  %.pre-phi1210 = phi i64 [ %.pre1209, %polly.merge464.loopexit1148 ], [ %228, %polly.loop_exit476.loopexit.us ], [ %228, %polly.loop_exit488 ]
  %255 = sub nsw i64 %204, %.pre-phi1210
  %256 = icmp sgt i64 %255, 0
  %257 = select i1 %256, i64 %255, i64 0
  %258 = add i64 %.pre-phi1210, %257
  %259 = mul i64 %258, 640
  %260 = add i64 %212, %259
  %261 = add i64 %213, %259
  br label %polly.loop_header519

polly.loop_exit521:                               ; preds = %polly.loop_exit527
  %polly.indvar_next461 = add nuw nsw i64 %polly.indvar460, 1
  %indvars.iv.next1076 = add nsw i64 %indvars.iv1075, -20
  %indvars.iv.next1079 = add nsw i64 %indvars.iv1078, 20
  %exitcond1086.not = icmp eq i64 %polly.indvar_next461, 4
  %indvar.next1601 = add i64 %indvar1600, 1
  br i1 %exitcond1086.not, label %polly.loop_exit459, label %polly.loop_header457

polly.loop_header467:                             ; preds = %polly.loop_header467.preheader, %polly.loop_exit488
  %polly.indvar470 = phi i64 [ %polly.indvar_next471, %polly.loop_exit488 ], [ 0, %polly.loop_header467.preheader ]
  %262 = add nuw nsw i64 %polly.indvar470, %203
  %polly.access.mul.Packed_MemRef_call1328497 = mul nuw nsw i64 %polly.indvar470, 80
  br label %polly.loop_header486

polly.loop_exit488:                               ; preds = %polly.loop_header486
  %polly.indvar_next471 = add nuw nsw i64 %polly.indvar470, 1
  %exitcond1068.not = icmp eq i64 %polly.indvar_next471, %202
  br i1 %exitcond1068.not, label %polly.merge464, label %polly.loop_header467

polly.loop_header486:                             ; preds = %polly.loop_header467, %polly.loop_header486
  %polly.indvar490 = phi i64 [ %polly.indvar_next491, %polly.loop_header486 ], [ %229, %polly.loop_header467 ]
  %263 = add nsw i64 %polly.indvar490, %204
  %polly.access.mul.call1494 = mul nuw nsw i64 %263, 60
  %polly.access.add.call1495 = add nuw nsw i64 %262, %polly.access.mul.call1494
  %polly.access.call1496 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1495
  %polly.access.call1496.load = load double, double* %polly.access.call1496, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1328498 = add nsw i64 %polly.indvar490, %polly.access.mul.Packed_MemRef_call1328497
  %polly.access.Packed_MemRef_call1328499 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328498
  store double %polly.access.call1496.load, double* %polly.access.Packed_MemRef_call1328499, align 8
  %polly.indvar_next491 = add nsw i64 %polly.indvar490, 1
  %polly.loop_cond492.not.not = icmp slt i64 %polly.indvar490, %232
  br i1 %polly.loop_cond492.not.not, label %polly.loop_header486, label %polly.loop_exit488

polly.loop_header500:                             ; preds = %polly.loop_header457, %polly.loop_exit508
  %polly.indvar503 = phi i64 [ %polly.indvar_next504, %polly.loop_exit508 ], [ 0, %polly.loop_header457 ]
  %264 = add nuw nsw i64 %polly.indvar503, %203
  %polly.access.mul.Packed_MemRef_call1328516 = mul nuw nsw i64 %polly.indvar503, 80
  br label %polly.loop_header506

polly.loop_exit508:                               ; preds = %polly.loop_header506
  %polly.indvar_next504 = add nuw nsw i64 %polly.indvar503, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar_next504, %202
  br i1 %exitcond1066.not, label %polly.merge464.loopexit1148, label %polly.loop_header500

polly.loop_header506:                             ; preds = %polly.loop_header506, %polly.loop_header500
  %polly.indvar509 = phi i64 [ 0, %polly.loop_header500 ], [ %polly.indvar_next510, %polly.loop_header506 ]
  %265 = add nuw nsw i64 %polly.indvar509, %204
  %polly.access.mul.call1513 = mul nuw nsw i64 %265, 60
  %polly.access.add.call1514 = add nuw nsw i64 %264, %polly.access.mul.call1513
  %polly.access.call1515 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1514
  %polly.access.call1515.load = load double, double* %polly.access.call1515, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1328517 = add nuw nsw i64 %polly.indvar509, %polly.access.mul.Packed_MemRef_call1328516
  %polly.access.Packed_MemRef_call1328518 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328517
  store double %polly.access.call1515.load, double* %polly.access.Packed_MemRef_call1328518, align 8
  %polly.indvar_next510 = add nuw nsw i64 %polly.indvar509, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar_next510, %210
  br i1 %exitcond1064.not, label %polly.loop_exit508, label %polly.loop_header506

polly.loop_header519:                             ; preds = %polly.loop_exit527, %polly.merge464
  %polly.indvar522 = phi i64 [ 0, %polly.merge464 ], [ %polly.indvar_next523, %polly.loop_exit527 ]
  %266 = mul i64 %polly.indvar522, 640
  %scevgep1605 = getelementptr i8, i8* %malloccall327, i64 %266
  %267 = or i64 %266, 8
  %scevgep1606 = getelementptr i8, i8* %malloccall327, i64 %267
  %polly.access.mul.Packed_MemRef_call1328539 = mul nuw nsw i64 %polly.indvar522, 80
  br label %polly.loop_header525

polly.loop_exit527:                               ; preds = %polly.loop_exit534
  %polly.indvar_next523 = add nuw nsw i64 %polly.indvar522, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar_next523, %202
  br i1 %exitcond1085.not, label %polly.loop_exit521, label %polly.loop_header519

polly.loop_header525:                             ; preds = %polly.loop_exit534, %polly.loop_header519
  %indvar1596 = phi i64 [ %indvar.next1597, %polly.loop_exit534 ], [ 0, %polly.loop_header519 ]
  %indvars.iv1080 = phi i64 [ %indvars.iv.next1081, %polly.loop_exit534 ], [ %226, %polly.loop_header519 ]
  %polly.indvar528 = phi i64 [ %polly.indvar_next529, %polly.loop_exit534 ], [ %257, %polly.loop_header519 ]
  %268 = add i64 %220, %indvar1596
  %smin1616 = call i64 @llvm.smin.i64(i64 %268, i64 49)
  %269 = add nsw i64 %smin1616, 1
  %270 = mul nuw nsw i64 %indvar1596, 640
  %271 = add i64 %260, %270
  %scevgep1598 = getelementptr i8, i8* %call, i64 %271
  %272 = add i64 %261, %270
  %scevgep1599 = getelementptr i8, i8* %call, i64 %272
  %273 = add i64 %225, %indvar1596
  %smin1603 = call i64 @llvm.smin.i64(i64 %273, i64 49)
  %274 = shl i64 %smin1603, 3
  %scevgep1604 = getelementptr i8, i8* %scevgep1599, i64 %274
  %scevgep1607 = getelementptr i8, i8* %scevgep1606, i64 %274
  %smin1082 = call i64 @llvm.smin.i64(i64 %indvars.iv1080, i64 49)
  %275 = add nuw i64 %polly.indvar528, %.pre-phi1210
  %276 = add i64 %275, %206
  %polly.loop_guard5351214 = icmp sgt i64 %276, -1
  br i1 %polly.loop_guard5351214, label %polly.loop_header532.preheader, label %polly.loop_exit534

polly.loop_header532.preheader:                   ; preds = %polly.loop_header525
  %polly.access.add.Packed_MemRef_call2330544 = add nsw i64 %polly.access.mul.Packed_MemRef_call1328539, %276
  %polly.access.Packed_MemRef_call2330545 = getelementptr double, double* %Packed_MemRef_call2330, i64 %polly.access.add.Packed_MemRef_call2330544
  %_p_scalar_546 = load double, double* %polly.access.Packed_MemRef_call2330545, align 8
  %polly.access.Packed_MemRef_call1328553 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call2330544
  %_p_scalar_554 = load double, double* %polly.access.Packed_MemRef_call1328553, align 8
  %277 = mul i64 %275, 640
  %min.iters.check1617 = icmp ult i64 %269, 4
  br i1 %min.iters.check1617, label %polly.loop_header532.preheader1699, label %vector.memcheck1595

vector.memcheck1595:                              ; preds = %polly.loop_header532.preheader
  %bound01608 = icmp ult i8* %scevgep1598, %scevgep1607
  %bound11609 = icmp ult i8* %scevgep1605, %scevgep1604
  %found.conflict1610 = and i1 %bound01608, %bound11609
  br i1 %found.conflict1610, label %polly.loop_header532.preheader1699, label %vector.ph1618

vector.ph1618:                                    ; preds = %vector.memcheck1595
  %n.vec1620 = and i64 %269, -4
  %broadcast.splatinsert1626 = insertelement <4 x double> poison, double %_p_scalar_546, i32 0
  %broadcast.splat1627 = shufflevector <4 x double> %broadcast.splatinsert1626, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1629 = insertelement <4 x double> poison, double %_p_scalar_554, i32 0
  %broadcast.splat1630 = shufflevector <4 x double> %broadcast.splatinsert1629, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1614

vector.body1614:                                  ; preds = %vector.body1614, %vector.ph1618
  %index1621 = phi i64 [ 0, %vector.ph1618 ], [ %index.next1622, %vector.body1614 ]
  %278 = add nuw nsw i64 %index1621, %204
  %279 = add nuw nsw i64 %index1621, %polly.access.mul.Packed_MemRef_call1328539
  %280 = getelementptr double, double* %Packed_MemRef_call1328, i64 %279
  %281 = bitcast double* %280 to <4 x double>*
  %wide.load1625 = load <4 x double>, <4 x double>* %281, align 8, !alias.scope !103
  %282 = fmul fast <4 x double> %broadcast.splat1627, %wide.load1625
  %283 = getelementptr double, double* %Packed_MemRef_call2330, i64 %279
  %284 = bitcast double* %283 to <4 x double>*
  %wide.load1628 = load <4 x double>, <4 x double>* %284, align 8
  %285 = fmul fast <4 x double> %broadcast.splat1630, %wide.load1628
  %286 = shl i64 %278, 3
  %287 = add i64 %286, %277
  %288 = getelementptr i8, i8* %call, i64 %287
  %289 = bitcast i8* %288 to <4 x double>*
  %wide.load1631 = load <4 x double>, <4 x double>* %289, align 8, !alias.scope !106, !noalias !108
  %290 = fadd fast <4 x double> %285, %282
  %291 = fmul fast <4 x double> %290, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %292 = fadd fast <4 x double> %291, %wide.load1631
  %293 = bitcast i8* %288 to <4 x double>*
  store <4 x double> %292, <4 x double>* %293, align 8, !alias.scope !106, !noalias !108
  %index.next1622 = add i64 %index1621, 4
  %294 = icmp eq i64 %index.next1622, %n.vec1620
  br i1 %294, label %middle.block1612, label %vector.body1614, !llvm.loop !109

middle.block1612:                                 ; preds = %vector.body1614
  %cmp.n1624 = icmp eq i64 %269, %n.vec1620
  br i1 %cmp.n1624, label %polly.loop_exit534, label %polly.loop_header532.preheader1699

polly.loop_header532.preheader1699:               ; preds = %vector.memcheck1595, %polly.loop_header532.preheader, %middle.block1612
  %polly.indvar536.ph = phi i64 [ 0, %vector.memcheck1595 ], [ 0, %polly.loop_header532.preheader ], [ %n.vec1620, %middle.block1612 ]
  br label %polly.loop_header532

polly.loop_exit534:                               ; preds = %polly.loop_header532, %middle.block1612, %polly.loop_header525
  %polly.indvar_next529 = add nuw nsw i64 %polly.indvar528, 1
  %polly.loop_cond530 = icmp ult i64 %polly.indvar528, 19
  %indvars.iv.next1081 = add i64 %indvars.iv1080, 1
  %indvar.next1597 = add i64 %indvar1596, 1
  br i1 %polly.loop_cond530, label %polly.loop_header525, label %polly.loop_exit527

polly.loop_header532:                             ; preds = %polly.loop_header532.preheader1699, %polly.loop_header532
  %polly.indvar536 = phi i64 [ %polly.indvar_next537, %polly.loop_header532 ], [ %polly.indvar536.ph, %polly.loop_header532.preheader1699 ]
  %295 = add nuw nsw i64 %polly.indvar536, %204
  %polly.access.add.Packed_MemRef_call1328540 = add nuw nsw i64 %polly.indvar536, %polly.access.mul.Packed_MemRef_call1328539
  %polly.access.Packed_MemRef_call1328541 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328540
  %_p_scalar_542 = load double, double* %polly.access.Packed_MemRef_call1328541, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_546, %_p_scalar_542
  %polly.access.Packed_MemRef_call2330549 = getelementptr double, double* %Packed_MemRef_call2330, i64 %polly.access.add.Packed_MemRef_call1328540
  %_p_scalar_550 = load double, double* %polly.access.Packed_MemRef_call2330549, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_554, %_p_scalar_550
  %296 = shl i64 %295, 3
  %297 = add i64 %296, %277
  %scevgep555 = getelementptr i8, i8* %call, i64 %297
  %scevgep555556 = bitcast i8* %scevgep555 to double*
  %_p_scalar_557 = load double, double* %scevgep555556, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_557
  store double %p_add42.i79, double* %scevgep555556, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next537 = add nuw nsw i64 %polly.indvar536, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar536, %smin1082
  br i1 %exitcond1083.not, label %polly.loop_exit534, label %polly.loop_header532, !llvm.loop !110

polly.start560:                                   ; preds = %init_array.exit
  %malloccall562 = tail call dereferenceable_or_null(10240) i8* @malloc(i64 10240) #6
  %malloccall564 = tail call dereferenceable_or_null(10240) i8* @malloc(i64 10240) #6
  br label %polly.loop_header648

polly.exiting561:                                 ; preds = %polly.loop_exit672
  tail call void @free(i8* %malloccall562)
  tail call void @free(i8* %malloccall564)
  br label %kernel_syr2k.exit

polly.loop_header648:                             ; preds = %polly.loop_exit656, %polly.start560
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit656 ], [ 0, %polly.start560 ]
  %polly.indvar651 = phi i64 [ %polly.indvar_next652, %polly.loop_exit656 ], [ 1, %polly.start560 ]
  %298 = add i64 %indvar, 1
  %299 = mul nuw nsw i64 %polly.indvar651, 640
  %scevgep660 = getelementptr i8, i8* %call, i64 %299
  %min.iters.check1524 = icmp ult i64 %298, 4
  br i1 %min.iters.check1524, label %polly.loop_header654.preheader, label %vector.ph1525

vector.ph1525:                                    ; preds = %polly.loop_header648
  %n.vec1527 = and i64 %298, -4
  br label %vector.body1523

vector.body1523:                                  ; preds = %vector.body1523, %vector.ph1525
  %index1528 = phi i64 [ 0, %vector.ph1525 ], [ %index.next1529, %vector.body1523 ]
  %300 = shl nuw nsw i64 %index1528, 3
  %301 = getelementptr i8, i8* %scevgep660, i64 %300
  %302 = bitcast i8* %301 to <4 x double>*
  %wide.load1532 = load <4 x double>, <4 x double>* %302, align 8, !alias.scope !111, !noalias !113
  %303 = fmul fast <4 x double> %wide.load1532, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %304 = bitcast i8* %301 to <4 x double>*
  store <4 x double> %303, <4 x double>* %304, align 8, !alias.scope !111, !noalias !113
  %index.next1529 = add i64 %index1528, 4
  %305 = icmp eq i64 %index.next1529, %n.vec1527
  br i1 %305, label %middle.block1521, label %vector.body1523, !llvm.loop !118

middle.block1521:                                 ; preds = %vector.body1523
  %cmp.n1531 = icmp eq i64 %298, %n.vec1527
  br i1 %cmp.n1531, label %polly.loop_exit656, label %polly.loop_header654.preheader

polly.loop_header654.preheader:                   ; preds = %polly.loop_header648, %middle.block1521
  %polly.indvar657.ph = phi i64 [ 0, %polly.loop_header648 ], [ %n.vec1527, %middle.block1521 ]
  br label %polly.loop_header654

polly.loop_exit656:                               ; preds = %polly.loop_header654, %middle.block1521
  %polly.indvar_next652 = add nuw nsw i64 %polly.indvar651, 1
  %exitcond1120.not = icmp eq i64 %polly.indvar_next652, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1120.not, label %polly.loop_header664.preheader, label %polly.loop_header648

polly.loop_header664.preheader:                   ; preds = %polly.loop_exit656
  %Packed_MemRef_call1563 = bitcast i8* %malloccall562 to double*
  %Packed_MemRef_call2565 = bitcast i8* %malloccall564 to double*
  br label %polly.loop_header664

polly.loop_header654:                             ; preds = %polly.loop_header654.preheader, %polly.loop_header654
  %polly.indvar657 = phi i64 [ %polly.indvar_next658, %polly.loop_header654 ], [ %polly.indvar657.ph, %polly.loop_header654.preheader ]
  %306 = shl nuw nsw i64 %polly.indvar657, 3
  %scevgep661 = getelementptr i8, i8* %scevgep660, i64 %306
  %scevgep661662 = bitcast i8* %scevgep661 to double*
  %_p_scalar_663 = load double, double* %scevgep661662, align 8, !alias.scope !111, !noalias !113
  %p_mul.i = fmul fast double %_p_scalar_663, 1.200000e+00
  store double %p_mul.i, double* %scevgep661662, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next658 = add nuw nsw i64 %polly.indvar657, 1
  %exitcond1119.not = icmp eq i64 %polly.indvar_next658, %polly.indvar651
  br i1 %exitcond1119.not, label %polly.loop_exit656, label %polly.loop_header654, !llvm.loop !119

polly.loop_header664:                             ; preds = %polly.loop_header664.preheader, %polly.loop_exit672
  %indvars.iv1091 = phi i64 [ 0, %polly.loop_header664.preheader ], [ %indvars.iv.next1092, %polly.loop_exit672 ]
  %polly.indvar667 = phi i64 [ 0, %polly.loop_header664.preheader ], [ %polly.indvar_next668, %polly.loop_exit672 ]
  %smin1115 = call i64 @llvm.smin.i64(i64 %indvars.iv1091, i64 -44)
  %307 = add nsw i64 %smin1115, 60
  %308 = shl nsw i64 %polly.indvar667, 4
  br label %polly.loop_header670

polly.loop_exit672:                               ; preds = %polly.loop_exit694
  %polly.indvar_next668 = add nuw nsw i64 %polly.indvar667, 1
  %indvars.iv.next1092 = add nsw i64 %indvars.iv1091, -16
  %exitcond1118.not = icmp eq i64 %polly.indvar_next668, 4
  br i1 %exitcond1118.not, label %polly.exiting561, label %polly.loop_header664

polly.loop_header670:                             ; preds = %polly.loop_exit694, %polly.loop_header664
  %polly.loop_cond675 = phi i1 [ false, %polly.loop_exit694 ], [ true, %polly.loop_header664 ]
  %polly.indvar673 = phi i64 [ 1, %polly.loop_exit694 ], [ 0, %polly.loop_header664 ]
  %309 = mul nuw nsw i64 %polly.indvar673, 50
  %310 = sub nuw nsw i64 80, %309
  br label %polly.loop_header676

polly.loop_exit678:                               ; preds = %polly.loop_exit684
  %311 = mul nuw nsw i64 %polly.indvar673, -50
  %312 = shl nuw nsw i64 %polly.indvar673, 1
  %313 = mul nuw nsw i64 %polly.indvar673, 5
  %314 = mul nuw nsw i64 %polly.indvar673, 10
  %315 = sub nsw i64 20, %314
  %316 = sub nsw i64 0, %314
  %317 = mul nuw nsw i64 %polly.indvar673, 400
  %318 = or i64 %317, 8
  br label %polly.loop_header692

polly.loop_exit694:                               ; preds = %polly.loop_exit756
  br i1 %polly.loop_cond675, label %polly.loop_header670, label %polly.loop_exit672

polly.loop_header676:                             ; preds = %polly.loop_exit684, %polly.loop_header670
  %polly.indvar679 = phi i64 [ 0, %polly.loop_header670 ], [ %polly.indvar_next680, %polly.loop_exit684 ]
  %319 = add nuw nsw i64 %polly.indvar679, %308
  %polly.access.mul.Packed_MemRef_call2565 = mul nuw nsw i64 %polly.indvar679, 80
  br label %polly.loop_header682

polly.loop_exit684:                               ; preds = %polly.loop_header682
  %polly.indvar_next680 = add nuw nsw i64 %polly.indvar679, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar_next680, %307
  br i1 %exitcond1094.not, label %polly.loop_exit678, label %polly.loop_header676

polly.loop_header682:                             ; preds = %polly.loop_header682, %polly.loop_header676
  %polly.indvar685 = phi i64 [ 0, %polly.loop_header676 ], [ %polly.indvar_next686, %polly.loop_header682 ]
  %320 = add nuw nsw i64 %polly.indvar685, %309
  %polly.access.mul.call2689 = mul nuw nsw i64 %320, 60
  %polly.access.add.call2690 = add nuw nsw i64 %319, %polly.access.mul.call2689
  %polly.access.call2691 = getelementptr double, double* %polly.access.cast.call2807, i64 %polly.access.add.call2690
  %polly.access.call2691.load = load double, double* %polly.access.call2691, align 8, !alias.scope !115, !noalias !120
  %polly.access.add.Packed_MemRef_call2565 = add nuw nsw i64 %polly.indvar685, %polly.access.mul.Packed_MemRef_call2565
  %polly.access.Packed_MemRef_call2565 = getelementptr double, double* %Packed_MemRef_call2565, i64 %polly.access.add.Packed_MemRef_call2565
  store double %polly.access.call2691.load, double* %polly.access.Packed_MemRef_call2565, align 8
  %polly.indvar_next686 = add nuw nsw i64 %polly.indvar685, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar_next686, %310
  br i1 %exitcond1090.not, label %polly.loop_exit684, label %polly.loop_header682

polly.loop_header692:                             ; preds = %polly.loop_exit756, %polly.loop_exit678
  %indvar1538 = phi i64 [ %indvar.next1539, %polly.loop_exit756 ], [ 0, %polly.loop_exit678 ]
  %indvars.iv1109 = phi i64 [ %indvars.iv.next1110, %polly.loop_exit756 ], [ %316, %polly.loop_exit678 ]
  %indvars.iv1106 = phi i64 [ %indvars.iv.next1107, %polly.loop_exit756 ], [ %314, %polly.loop_exit678 ]
  %polly.indvar695 = phi i64 [ %polly.indvar_next696, %polly.loop_exit756 ], [ %312, %polly.loop_exit678 ]
  %321 = mul i64 %indvar1538, -20
  %322 = add i64 %314, %321
  %smax1552 = call i64 @llvm.smax.i64(i64 %322, i64 0)
  %323 = mul i64 %indvar1538, 20
  %324 = sub i64 %323, %314
  %325 = add i64 %smax1552, %324
  %326 = mul i64 %indvar1538, -20
  %327 = add i64 %314, %326
  %smax1540 = call i64 @llvm.smax.i64(i64 %327, i64 0)
  %328 = mul i64 %indvar1538, 20
  %329 = sub i64 %328, %314
  %330 = add i64 %smax1540, %329
  %smax1108 = call i64 @llvm.smax.i64(i64 %indvars.iv1106, i64 0)
  %331 = add i64 %smax1108, %indvars.iv1109
  %332 = shl nuw nsw i64 %polly.indvar695, 1
  %.not.not1001 = icmp ugt i64 %332, %313
  br i1 %.not.not1001, label %polly.loop_header702.preheader, label %polly.loop_header735

polly.loop_header702.preheader:                   ; preds = %polly.loop_header692
  %333 = mul nuw nsw i64 %polly.indvar695, 20
  %334 = add nsw i64 %333, %311
  %335 = add nsw i64 %334, -1
  %.inv1002 = icmp sgt i64 %334, 49
  %336 = select i1 %.inv1002, i64 49, i64 %335
  %polly.loop_guard712 = icmp sgt i64 %336, -1
  %337 = add nsw i64 %334, 19
  br i1 %polly.loop_guard712, label %polly.loop_header702.us.preheader, label %polly.loop_header702

polly.loop_header702.us.preheader:                ; preds = %polly.loop_header702.preheader
  %338 = add nsw i64 %334, %309
  %polly.access.mul.call1729.us = mul nuw nsw i64 %338, 60
  %polly.indvar_next726.us = or i64 %334, 1
  %339 = add nsw i64 %polly.indvar_next726.us, %309
  %polly.access.mul.call1729.us.1 = mul nuw nsw i64 %339, 60
  %polly.indvar_next726.us.1 = add nsw i64 %polly.indvar_next726.us, 1
  %340 = add nsw i64 %polly.indvar_next726.us.1, %309
  %polly.access.mul.call1729.us.2 = mul nuw nsw i64 %340, 60
  %polly.indvar_next726.us.2 = add nsw i64 %polly.indvar_next726.us, 2
  %341 = add nsw i64 %polly.indvar_next726.us.2, %309
  %polly.access.mul.call1729.us.3 = mul nuw nsw i64 %341, 60
  %polly.indvar_next726.us.3 = add nsw i64 %polly.indvar_next726.us, 3
  %342 = add nsw i64 %polly.indvar_next726.us.3, %309
  %polly.access.mul.call1729.us.4 = mul nuw nsw i64 %342, 60
  %polly.indvar_next726.us.4 = add nsw i64 %polly.indvar_next726.us, 4
  %343 = add nsw i64 %polly.indvar_next726.us.4, %309
  %polly.access.mul.call1729.us.5 = mul nuw nsw i64 %343, 60
  %polly.indvar_next726.us.5 = add nsw i64 %polly.indvar_next726.us, 5
  %344 = add nsw i64 %polly.indvar_next726.us.5, %309
  %polly.access.mul.call1729.us.6 = mul nuw nsw i64 %344, 60
  %polly.indvar_next726.us.6 = add nsw i64 %polly.indvar_next726.us, 6
  %345 = add nsw i64 %polly.indvar_next726.us.6, %309
  %polly.access.mul.call1729.us.7 = mul nuw nsw i64 %345, 60
  %polly.indvar_next726.us.7 = add nsw i64 %polly.indvar_next726.us, 7
  %346 = add nsw i64 %polly.indvar_next726.us.7, %309
  %polly.access.mul.call1729.us.8 = mul nuw nsw i64 %346, 60
  %polly.indvar_next726.us.8 = add nsw i64 %polly.indvar_next726.us, 8
  %347 = add nsw i64 %polly.indvar_next726.us.8, %309
  %polly.access.mul.call1729.us.9 = mul nuw nsw i64 %347, 60
  %polly.indvar_next726.us.9 = add nsw i64 %polly.indvar_next726.us, 9
  %348 = add nsw i64 %polly.indvar_next726.us.9, %309
  %polly.access.mul.call1729.us.10 = mul nuw nsw i64 %348, 60
  %polly.indvar_next726.us.10 = add nsw i64 %polly.indvar_next726.us, 10
  %349 = add nsw i64 %polly.indvar_next726.us.10, %309
  %polly.access.mul.call1729.us.11 = mul nuw nsw i64 %349, 60
  %polly.indvar_next726.us.11 = add nsw i64 %polly.indvar_next726.us, 11
  %350 = add nsw i64 %polly.indvar_next726.us.11, %309
  %polly.access.mul.call1729.us.12 = mul nuw nsw i64 %350, 60
  %polly.indvar_next726.us.12 = add nsw i64 %polly.indvar_next726.us, 12
  %351 = add nsw i64 %polly.indvar_next726.us.12, %309
  %polly.access.mul.call1729.us.13 = mul nuw nsw i64 %351, 60
  %polly.indvar_next726.us.13 = add nsw i64 %polly.indvar_next726.us, 13
  %352 = add nsw i64 %polly.indvar_next726.us.13, %309
  %polly.access.mul.call1729.us.14 = mul nuw nsw i64 %352, 60
  %polly.indvar_next726.us.14 = add nsw i64 %polly.indvar_next726.us, 14
  %353 = add nsw i64 %polly.indvar_next726.us.14, %309
  %polly.access.mul.call1729.us.15 = mul nuw nsw i64 %353, 60
  %polly.indvar_next726.us.15 = add nsw i64 %polly.indvar_next726.us, 15
  %354 = add nsw i64 %polly.indvar_next726.us.15, %309
  %polly.access.mul.call1729.us.16 = mul nuw nsw i64 %354, 60
  %polly.indvar_next726.us.16 = add nsw i64 %polly.indvar_next726.us, 16
  %355 = add nsw i64 %polly.indvar_next726.us.16, %309
  %polly.access.mul.call1729.us.17 = mul nuw nsw i64 %355, 60
  %polly.indvar_next726.us.17 = add nsw i64 %polly.indvar_next726.us, 17
  %356 = add nsw i64 %polly.indvar_next726.us.17, %309
  %polly.access.mul.call1729.us.18 = mul nuw nsw i64 %356, 60
  %polly.indvar_next726.us.18 = add nsw i64 %polly.indvar_next726.us, 18
  %357 = add nsw i64 %polly.indvar_next726.us.18, %309
  %polly.access.mul.call1729.us.19 = mul nuw nsw i64 %357, 60
  br label %polly.loop_header702.us

polly.loop_header702.us:                          ; preds = %polly.loop_header702.us.preheader, %polly.loop_exit711.loopexit.us
  %polly.indvar705.us = phi i64 [ %polly.indvar_next706.us, %polly.loop_exit711.loopexit.us ], [ 0, %polly.loop_header702.us.preheader ]
  %358 = add nuw nsw i64 %polly.indvar705.us, %308
  %polly.access.mul.Packed_MemRef_call1563.us = mul nuw nsw i64 %polly.indvar705.us, 80
  br label %polly.loop_header709.us

polly.loop_header709.us:                          ; preds = %polly.loop_header702.us, %polly.loop_header709.us
  %polly.indvar713.us = phi i64 [ %polly.indvar_next714.us, %polly.loop_header709.us ], [ 0, %polly.loop_header702.us ]
  %359 = add nuw nsw i64 %polly.indvar713.us, %309
  %polly.access.mul.call1717.us = mul nuw nsw i64 %359, 60
  %polly.access.add.call1718.us = add nuw nsw i64 %358, %polly.access.mul.call1717.us
  %polly.access.call1719.us = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1718.us
  %polly.access.call1719.load.us = load double, double* %polly.access.call1719.us, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1563.us = add nuw nsw i64 %polly.indvar713.us, %polly.access.mul.Packed_MemRef_call1563.us
  %polly.access.Packed_MemRef_call1563.us = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563.us
  store double %polly.access.call1719.load.us, double* %polly.access.Packed_MemRef_call1563.us, align 8
  %polly.indvar_next714.us = add nuw i64 %polly.indvar713.us, 1
  %exitcond1100.not = icmp eq i64 %polly.indvar713.us, %336
  br i1 %exitcond1100.not, label %polly.loop_exit711.loopexit.us, label %polly.loop_header709.us

polly.loop_exit711.loopexit.us:                   ; preds = %polly.loop_header709.us
  %polly.access.add.call1730.us = add nuw nsw i64 %358, %polly.access.mul.call1729.us
  %polly.access.call1731.us = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1730.us
  %polly.access.call1731.load.us = load double, double* %polly.access.call1731.us, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1563733.us = add nsw i64 %334, %polly.access.mul.Packed_MemRef_call1563.us
  %polly.access.Packed_MemRef_call1563734.us = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563733.us
  store double %polly.access.call1731.load.us, double* %polly.access.Packed_MemRef_call1563734.us, align 8
  %polly.access.add.call1730.us.1 = add nuw nsw i64 %358, %polly.access.mul.call1729.us.1
  %polly.access.call1731.us.1 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1730.us.1
  %polly.access.call1731.load.us.1 = load double, double* %polly.access.call1731.us.1, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1563733.us.1 = add nsw i64 %polly.indvar_next726.us, %polly.access.mul.Packed_MemRef_call1563.us
  %polly.access.Packed_MemRef_call1563734.us.1 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563733.us.1
  store double %polly.access.call1731.load.us.1, double* %polly.access.Packed_MemRef_call1563734.us.1, align 8
  %polly.access.add.call1730.us.2 = add nuw nsw i64 %358, %polly.access.mul.call1729.us.2
  %polly.access.call1731.us.2 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1730.us.2
  %polly.access.call1731.load.us.2 = load double, double* %polly.access.call1731.us.2, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1563733.us.2 = add nsw i64 %polly.indvar_next726.us.1, %polly.access.mul.Packed_MemRef_call1563.us
  %polly.access.Packed_MemRef_call1563734.us.2 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563733.us.2
  store double %polly.access.call1731.load.us.2, double* %polly.access.Packed_MemRef_call1563734.us.2, align 8
  %polly.access.add.call1730.us.3 = add nuw nsw i64 %358, %polly.access.mul.call1729.us.3
  %polly.access.call1731.us.3 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1730.us.3
  %polly.access.call1731.load.us.3 = load double, double* %polly.access.call1731.us.3, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1563733.us.3 = add nsw i64 %polly.indvar_next726.us.2, %polly.access.mul.Packed_MemRef_call1563.us
  %polly.access.Packed_MemRef_call1563734.us.3 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563733.us.3
  store double %polly.access.call1731.load.us.3, double* %polly.access.Packed_MemRef_call1563734.us.3, align 8
  %polly.access.add.call1730.us.4 = add nuw nsw i64 %358, %polly.access.mul.call1729.us.4
  %polly.access.call1731.us.4 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1730.us.4
  %polly.access.call1731.load.us.4 = load double, double* %polly.access.call1731.us.4, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1563733.us.4 = add nsw i64 %polly.indvar_next726.us.3, %polly.access.mul.Packed_MemRef_call1563.us
  %polly.access.Packed_MemRef_call1563734.us.4 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563733.us.4
  store double %polly.access.call1731.load.us.4, double* %polly.access.Packed_MemRef_call1563734.us.4, align 8
  %polly.access.add.call1730.us.5 = add nuw nsw i64 %358, %polly.access.mul.call1729.us.5
  %polly.access.call1731.us.5 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1730.us.5
  %polly.access.call1731.load.us.5 = load double, double* %polly.access.call1731.us.5, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1563733.us.5 = add nsw i64 %polly.indvar_next726.us.4, %polly.access.mul.Packed_MemRef_call1563.us
  %polly.access.Packed_MemRef_call1563734.us.5 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563733.us.5
  store double %polly.access.call1731.load.us.5, double* %polly.access.Packed_MemRef_call1563734.us.5, align 8
  %polly.access.add.call1730.us.6 = add nuw nsw i64 %358, %polly.access.mul.call1729.us.6
  %polly.access.call1731.us.6 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1730.us.6
  %polly.access.call1731.load.us.6 = load double, double* %polly.access.call1731.us.6, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1563733.us.6 = add nsw i64 %polly.indvar_next726.us.5, %polly.access.mul.Packed_MemRef_call1563.us
  %polly.access.Packed_MemRef_call1563734.us.6 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563733.us.6
  store double %polly.access.call1731.load.us.6, double* %polly.access.Packed_MemRef_call1563734.us.6, align 8
  %polly.access.add.call1730.us.7 = add nuw nsw i64 %358, %polly.access.mul.call1729.us.7
  %polly.access.call1731.us.7 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1730.us.7
  %polly.access.call1731.load.us.7 = load double, double* %polly.access.call1731.us.7, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1563733.us.7 = add nsw i64 %polly.indvar_next726.us.6, %polly.access.mul.Packed_MemRef_call1563.us
  %polly.access.Packed_MemRef_call1563734.us.7 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563733.us.7
  store double %polly.access.call1731.load.us.7, double* %polly.access.Packed_MemRef_call1563734.us.7, align 8
  %polly.access.add.call1730.us.8 = add nuw nsw i64 %358, %polly.access.mul.call1729.us.8
  %polly.access.call1731.us.8 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1730.us.8
  %polly.access.call1731.load.us.8 = load double, double* %polly.access.call1731.us.8, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1563733.us.8 = add nsw i64 %polly.indvar_next726.us.7, %polly.access.mul.Packed_MemRef_call1563.us
  %polly.access.Packed_MemRef_call1563734.us.8 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563733.us.8
  store double %polly.access.call1731.load.us.8, double* %polly.access.Packed_MemRef_call1563734.us.8, align 8
  %polly.access.add.call1730.us.9 = add nuw nsw i64 %358, %polly.access.mul.call1729.us.9
  %polly.access.call1731.us.9 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1730.us.9
  %polly.access.call1731.load.us.9 = load double, double* %polly.access.call1731.us.9, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1563733.us.9 = add nsw i64 %polly.indvar_next726.us.8, %polly.access.mul.Packed_MemRef_call1563.us
  %polly.access.Packed_MemRef_call1563734.us.9 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563733.us.9
  store double %polly.access.call1731.load.us.9, double* %polly.access.Packed_MemRef_call1563734.us.9, align 8
  %polly.access.add.call1730.us.10 = add nuw nsw i64 %358, %polly.access.mul.call1729.us.10
  %polly.access.call1731.us.10 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1730.us.10
  %polly.access.call1731.load.us.10 = load double, double* %polly.access.call1731.us.10, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1563733.us.10 = add nsw i64 %polly.indvar_next726.us.9, %polly.access.mul.Packed_MemRef_call1563.us
  %polly.access.Packed_MemRef_call1563734.us.10 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563733.us.10
  store double %polly.access.call1731.load.us.10, double* %polly.access.Packed_MemRef_call1563734.us.10, align 8
  %polly.access.add.call1730.us.11 = add nuw nsw i64 %358, %polly.access.mul.call1729.us.11
  %polly.access.call1731.us.11 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1730.us.11
  %polly.access.call1731.load.us.11 = load double, double* %polly.access.call1731.us.11, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1563733.us.11 = add nsw i64 %polly.indvar_next726.us.10, %polly.access.mul.Packed_MemRef_call1563.us
  %polly.access.Packed_MemRef_call1563734.us.11 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563733.us.11
  store double %polly.access.call1731.load.us.11, double* %polly.access.Packed_MemRef_call1563734.us.11, align 8
  %polly.access.add.call1730.us.12 = add nuw nsw i64 %358, %polly.access.mul.call1729.us.12
  %polly.access.call1731.us.12 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1730.us.12
  %polly.access.call1731.load.us.12 = load double, double* %polly.access.call1731.us.12, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1563733.us.12 = add nsw i64 %polly.indvar_next726.us.11, %polly.access.mul.Packed_MemRef_call1563.us
  %polly.access.Packed_MemRef_call1563734.us.12 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563733.us.12
  store double %polly.access.call1731.load.us.12, double* %polly.access.Packed_MemRef_call1563734.us.12, align 8
  %polly.access.add.call1730.us.13 = add nuw nsw i64 %358, %polly.access.mul.call1729.us.13
  %polly.access.call1731.us.13 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1730.us.13
  %polly.access.call1731.load.us.13 = load double, double* %polly.access.call1731.us.13, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1563733.us.13 = add nsw i64 %polly.indvar_next726.us.12, %polly.access.mul.Packed_MemRef_call1563.us
  %polly.access.Packed_MemRef_call1563734.us.13 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563733.us.13
  store double %polly.access.call1731.load.us.13, double* %polly.access.Packed_MemRef_call1563734.us.13, align 8
  %polly.access.add.call1730.us.14 = add nuw nsw i64 %358, %polly.access.mul.call1729.us.14
  %polly.access.call1731.us.14 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1730.us.14
  %polly.access.call1731.load.us.14 = load double, double* %polly.access.call1731.us.14, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1563733.us.14 = add nsw i64 %polly.indvar_next726.us.13, %polly.access.mul.Packed_MemRef_call1563.us
  %polly.access.Packed_MemRef_call1563734.us.14 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563733.us.14
  store double %polly.access.call1731.load.us.14, double* %polly.access.Packed_MemRef_call1563734.us.14, align 8
  %polly.access.add.call1730.us.15 = add nuw nsw i64 %358, %polly.access.mul.call1729.us.15
  %polly.access.call1731.us.15 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1730.us.15
  %polly.access.call1731.load.us.15 = load double, double* %polly.access.call1731.us.15, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1563733.us.15 = add nsw i64 %polly.indvar_next726.us.14, %polly.access.mul.Packed_MemRef_call1563.us
  %polly.access.Packed_MemRef_call1563734.us.15 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563733.us.15
  store double %polly.access.call1731.load.us.15, double* %polly.access.Packed_MemRef_call1563734.us.15, align 8
  %polly.access.add.call1730.us.16 = add nuw nsw i64 %358, %polly.access.mul.call1729.us.16
  %polly.access.call1731.us.16 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1730.us.16
  %polly.access.call1731.load.us.16 = load double, double* %polly.access.call1731.us.16, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1563733.us.16 = add nsw i64 %polly.indvar_next726.us.15, %polly.access.mul.Packed_MemRef_call1563.us
  %polly.access.Packed_MemRef_call1563734.us.16 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563733.us.16
  store double %polly.access.call1731.load.us.16, double* %polly.access.Packed_MemRef_call1563734.us.16, align 8
  %polly.access.add.call1730.us.17 = add nuw nsw i64 %358, %polly.access.mul.call1729.us.17
  %polly.access.call1731.us.17 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1730.us.17
  %polly.access.call1731.load.us.17 = load double, double* %polly.access.call1731.us.17, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1563733.us.17 = add nsw i64 %polly.indvar_next726.us.16, %polly.access.mul.Packed_MemRef_call1563.us
  %polly.access.Packed_MemRef_call1563734.us.17 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563733.us.17
  store double %polly.access.call1731.load.us.17, double* %polly.access.Packed_MemRef_call1563734.us.17, align 8
  %polly.access.add.call1730.us.18 = add nuw nsw i64 %358, %polly.access.mul.call1729.us.18
  %polly.access.call1731.us.18 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1730.us.18
  %polly.access.call1731.load.us.18 = load double, double* %polly.access.call1731.us.18, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1563733.us.18 = add nsw i64 %polly.indvar_next726.us.17, %polly.access.mul.Packed_MemRef_call1563.us
  %polly.access.Packed_MemRef_call1563734.us.18 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563733.us.18
  store double %polly.access.call1731.load.us.18, double* %polly.access.Packed_MemRef_call1563734.us.18, align 8
  %polly.access.add.call1730.us.19 = add nuw nsw i64 %358, %polly.access.mul.call1729.us.19
  %polly.access.call1731.us.19 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1730.us.19
  %polly.access.call1731.load.us.19 = load double, double* %polly.access.call1731.us.19, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1563733.us.19 = add nsw i64 %polly.indvar_next726.us.18, %polly.access.mul.Packed_MemRef_call1563.us
  %polly.access.Packed_MemRef_call1563734.us.19 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563733.us.19
  store double %polly.access.call1731.load.us.19, double* %polly.access.Packed_MemRef_call1563734.us.19, align 8
  %polly.indvar_next706.us = add nuw nsw i64 %polly.indvar705.us, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar_next706.us, %307
  br i1 %exitcond1105.not, label %polly.merge699, label %polly.loop_header702.us

polly.merge699.loopexit1151:                      ; preds = %polly.loop_exit743
  %.pre = mul nuw nsw i64 %polly.indvar695, 20
  br label %polly.merge699

polly.merge699:                                   ; preds = %polly.loop_exit723, %polly.loop_exit711.loopexit.us, %polly.merge699.loopexit1151
  %.pre-phi = phi i64 [ %.pre, %polly.merge699.loopexit1151 ], [ %333, %polly.loop_exit711.loopexit.us ], [ %333, %polly.loop_exit723 ]
  %360 = sub nsw i64 %309, %.pre-phi
  %361 = icmp sgt i64 %360, 0
  %362 = select i1 %361, i64 %360, i64 0
  %363 = add i64 %.pre-phi, %362
  %364 = mul i64 %363, 640
  %365 = add i64 %317, %364
  %366 = add i64 %318, %364
  br label %polly.loop_header754

polly.loop_exit756:                               ; preds = %polly.loop_exit762
  %polly.indvar_next696 = add nuw nsw i64 %polly.indvar695, 1
  %indvars.iv.next1107 = add nsw i64 %indvars.iv1106, -20
  %indvars.iv.next1110 = add nsw i64 %indvars.iv1109, 20
  %exitcond1117.not = icmp eq i64 %polly.indvar_next696, 4
  %indvar.next1539 = add i64 %indvar1538, 1
  br i1 %exitcond1117.not, label %polly.loop_exit694, label %polly.loop_header692

polly.loop_header702:                             ; preds = %polly.loop_header702.preheader, %polly.loop_exit723
  %polly.indvar705 = phi i64 [ %polly.indvar_next706, %polly.loop_exit723 ], [ 0, %polly.loop_header702.preheader ]
  %367 = add nuw nsw i64 %polly.indvar705, %308
  %polly.access.mul.Packed_MemRef_call1563732 = mul nuw nsw i64 %polly.indvar705, 80
  br label %polly.loop_header721

polly.loop_exit723:                               ; preds = %polly.loop_header721
  %polly.indvar_next706 = add nuw nsw i64 %polly.indvar705, 1
  %exitcond1099.not = icmp eq i64 %polly.indvar_next706, %307
  br i1 %exitcond1099.not, label %polly.merge699, label %polly.loop_header702

polly.loop_header721:                             ; preds = %polly.loop_header702, %polly.loop_header721
  %polly.indvar725 = phi i64 [ %polly.indvar_next726, %polly.loop_header721 ], [ %334, %polly.loop_header702 ]
  %368 = add nsw i64 %polly.indvar725, %309
  %polly.access.mul.call1729 = mul nuw nsw i64 %368, 60
  %polly.access.add.call1730 = add nuw nsw i64 %367, %polly.access.mul.call1729
  %polly.access.call1731 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1730
  %polly.access.call1731.load = load double, double* %polly.access.call1731, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1563733 = add nsw i64 %polly.indvar725, %polly.access.mul.Packed_MemRef_call1563732
  %polly.access.Packed_MemRef_call1563734 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563733
  store double %polly.access.call1731.load, double* %polly.access.Packed_MemRef_call1563734, align 8
  %polly.indvar_next726 = add nsw i64 %polly.indvar725, 1
  %polly.loop_cond727.not.not = icmp slt i64 %polly.indvar725, %337
  br i1 %polly.loop_cond727.not.not, label %polly.loop_header721, label %polly.loop_exit723

polly.loop_header735:                             ; preds = %polly.loop_header692, %polly.loop_exit743
  %polly.indvar738 = phi i64 [ %polly.indvar_next739, %polly.loop_exit743 ], [ 0, %polly.loop_header692 ]
  %369 = add nuw nsw i64 %polly.indvar738, %308
  %polly.access.mul.Packed_MemRef_call1563751 = mul nuw nsw i64 %polly.indvar738, 80
  br label %polly.loop_header741

polly.loop_exit743:                               ; preds = %polly.loop_header741
  %polly.indvar_next739 = add nuw nsw i64 %polly.indvar738, 1
  %exitcond1097.not = icmp eq i64 %polly.indvar_next739, %307
  br i1 %exitcond1097.not, label %polly.merge699.loopexit1151, label %polly.loop_header735

polly.loop_header741:                             ; preds = %polly.loop_header741, %polly.loop_header735
  %polly.indvar744 = phi i64 [ 0, %polly.loop_header735 ], [ %polly.indvar_next745, %polly.loop_header741 ]
  %370 = add nuw nsw i64 %polly.indvar744, %309
  %polly.access.mul.call1748 = mul nuw nsw i64 %370, 60
  %polly.access.add.call1749 = add nuw nsw i64 %369, %polly.access.mul.call1748
  %polly.access.call1750 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1749
  %polly.access.call1750.load = load double, double* %polly.access.call1750, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1563752 = add nuw nsw i64 %polly.indvar744, %polly.access.mul.Packed_MemRef_call1563751
  %polly.access.Packed_MemRef_call1563753 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563752
  store double %polly.access.call1750.load, double* %polly.access.Packed_MemRef_call1563753, align 8
  %polly.indvar_next745 = add nuw nsw i64 %polly.indvar744, 1
  %exitcond1095.not = icmp eq i64 %polly.indvar_next745, %315
  br i1 %exitcond1095.not, label %polly.loop_exit743, label %polly.loop_header741

polly.loop_header754:                             ; preds = %polly.loop_exit762, %polly.merge699
  %polly.indvar757 = phi i64 [ 0, %polly.merge699 ], [ %polly.indvar_next758, %polly.loop_exit762 ]
  %371 = mul i64 %polly.indvar757, 640
  %scevgep1542 = getelementptr i8, i8* %malloccall562, i64 %371
  %372 = or i64 %371, 8
  %scevgep1543 = getelementptr i8, i8* %malloccall562, i64 %372
  %polly.access.mul.Packed_MemRef_call1563774 = mul nuw nsw i64 %polly.indvar757, 80
  br label %polly.loop_header760

polly.loop_exit762:                               ; preds = %polly.loop_exit769
  %polly.indvar_next758 = add nuw nsw i64 %polly.indvar757, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar_next758, %307
  br i1 %exitcond1116.not, label %polly.loop_exit756, label %polly.loop_header754

polly.loop_header760:                             ; preds = %polly.loop_exit769, %polly.loop_header754
  %indvar1534 = phi i64 [ %indvar.next1535, %polly.loop_exit769 ], [ 0, %polly.loop_header754 ]
  %indvars.iv1111 = phi i64 [ %indvars.iv.next1112, %polly.loop_exit769 ], [ %331, %polly.loop_header754 ]
  %polly.indvar763 = phi i64 [ %polly.indvar_next764, %polly.loop_exit769 ], [ %362, %polly.loop_header754 ]
  %373 = add i64 %325, %indvar1534
  %smin1553 = call i64 @llvm.smin.i64(i64 %373, i64 49)
  %374 = add nsw i64 %smin1553, 1
  %375 = mul nuw nsw i64 %indvar1534, 640
  %376 = add i64 %365, %375
  %scevgep1536 = getelementptr i8, i8* %call, i64 %376
  %377 = add i64 %366, %375
  %scevgep1537 = getelementptr i8, i8* %call, i64 %377
  %378 = add i64 %330, %indvar1534
  %smin = call i64 @llvm.smin.i64(i64 %378, i64 49)
  %379 = shl i64 %smin, 3
  %scevgep1541 = getelementptr i8, i8* %scevgep1537, i64 %379
  %scevgep1544 = getelementptr i8, i8* %scevgep1543, i64 %379
  %smin1113 = call i64 @llvm.smin.i64(i64 %indvars.iv1111, i64 49)
  %380 = add nuw i64 %polly.indvar763, %.pre-phi
  %381 = add i64 %380, %311
  %polly.loop_guard7701215 = icmp sgt i64 %381, -1
  br i1 %polly.loop_guard7701215, label %polly.loop_header767.preheader, label %polly.loop_exit769

polly.loop_header767.preheader:                   ; preds = %polly.loop_header760
  %polly.access.add.Packed_MemRef_call2565779 = add nsw i64 %polly.access.mul.Packed_MemRef_call1563774, %381
  %polly.access.Packed_MemRef_call2565780 = getelementptr double, double* %Packed_MemRef_call2565, i64 %polly.access.add.Packed_MemRef_call2565779
  %_p_scalar_781 = load double, double* %polly.access.Packed_MemRef_call2565780, align 8
  %polly.access.Packed_MemRef_call1563788 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call2565779
  %_p_scalar_789 = load double, double* %polly.access.Packed_MemRef_call1563788, align 8
  %382 = mul i64 %380, 640
  %min.iters.check1554 = icmp ult i64 %374, 4
  br i1 %min.iters.check1554, label %polly.loop_header767.preheader1703, label %vector.memcheck1533

vector.memcheck1533:                              ; preds = %polly.loop_header767.preheader
  %bound01545 = icmp ult i8* %scevgep1536, %scevgep1544
  %bound11546 = icmp ult i8* %scevgep1542, %scevgep1541
  %found.conflict1547 = and i1 %bound01545, %bound11546
  br i1 %found.conflict1547, label %polly.loop_header767.preheader1703, label %vector.ph1555

vector.ph1555:                                    ; preds = %vector.memcheck1533
  %n.vec1557 = and i64 %374, -4
  %broadcast.splatinsert1563 = insertelement <4 x double> poison, double %_p_scalar_781, i32 0
  %broadcast.splat1564 = shufflevector <4 x double> %broadcast.splatinsert1563, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1566 = insertelement <4 x double> poison, double %_p_scalar_789, i32 0
  %broadcast.splat1567 = shufflevector <4 x double> %broadcast.splatinsert1566, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1551

vector.body1551:                                  ; preds = %vector.body1551, %vector.ph1555
  %index1558 = phi i64 [ 0, %vector.ph1555 ], [ %index.next1559, %vector.body1551 ]
  %383 = add nuw nsw i64 %index1558, %309
  %384 = add nuw nsw i64 %index1558, %polly.access.mul.Packed_MemRef_call1563774
  %385 = getelementptr double, double* %Packed_MemRef_call1563, i64 %384
  %386 = bitcast double* %385 to <4 x double>*
  %wide.load1562 = load <4 x double>, <4 x double>* %386, align 8, !alias.scope !122
  %387 = fmul fast <4 x double> %broadcast.splat1564, %wide.load1562
  %388 = getelementptr double, double* %Packed_MemRef_call2565, i64 %384
  %389 = bitcast double* %388 to <4 x double>*
  %wide.load1565 = load <4 x double>, <4 x double>* %389, align 8
  %390 = fmul fast <4 x double> %broadcast.splat1567, %wide.load1565
  %391 = shl i64 %383, 3
  %392 = add i64 %391, %382
  %393 = getelementptr i8, i8* %call, i64 %392
  %394 = bitcast i8* %393 to <4 x double>*
  %wide.load1568 = load <4 x double>, <4 x double>* %394, align 8, !alias.scope !125, !noalias !127
  %395 = fadd fast <4 x double> %390, %387
  %396 = fmul fast <4 x double> %395, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %397 = fadd fast <4 x double> %396, %wide.load1568
  %398 = bitcast i8* %393 to <4 x double>*
  store <4 x double> %397, <4 x double>* %398, align 8, !alias.scope !125, !noalias !127
  %index.next1559 = add i64 %index1558, 4
  %399 = icmp eq i64 %index.next1559, %n.vec1557
  br i1 %399, label %middle.block1549, label %vector.body1551, !llvm.loop !128

middle.block1549:                                 ; preds = %vector.body1551
  %cmp.n1561 = icmp eq i64 %374, %n.vec1557
  br i1 %cmp.n1561, label %polly.loop_exit769, label %polly.loop_header767.preheader1703

polly.loop_header767.preheader1703:               ; preds = %vector.memcheck1533, %polly.loop_header767.preheader, %middle.block1549
  %polly.indvar771.ph = phi i64 [ 0, %vector.memcheck1533 ], [ 0, %polly.loop_header767.preheader ], [ %n.vec1557, %middle.block1549 ]
  br label %polly.loop_header767

polly.loop_exit769:                               ; preds = %polly.loop_header767, %middle.block1549, %polly.loop_header760
  %polly.indvar_next764 = add nuw nsw i64 %polly.indvar763, 1
  %polly.loop_cond765 = icmp ult i64 %polly.indvar763, 19
  %indvars.iv.next1112 = add i64 %indvars.iv1111, 1
  %indvar.next1535 = add i64 %indvar1534, 1
  br i1 %polly.loop_cond765, label %polly.loop_header760, label %polly.loop_exit762

polly.loop_header767:                             ; preds = %polly.loop_header767.preheader1703, %polly.loop_header767
  %polly.indvar771 = phi i64 [ %polly.indvar_next772, %polly.loop_header767 ], [ %polly.indvar771.ph, %polly.loop_header767.preheader1703 ]
  %400 = add nuw nsw i64 %polly.indvar771, %309
  %polly.access.add.Packed_MemRef_call1563775 = add nuw nsw i64 %polly.indvar771, %polly.access.mul.Packed_MemRef_call1563774
  %polly.access.Packed_MemRef_call1563776 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563775
  %_p_scalar_777 = load double, double* %polly.access.Packed_MemRef_call1563776, align 8
  %p_mul27.i = fmul fast double %_p_scalar_781, %_p_scalar_777
  %polly.access.Packed_MemRef_call2565784 = getelementptr double, double* %Packed_MemRef_call2565, i64 %polly.access.add.Packed_MemRef_call1563775
  %_p_scalar_785 = load double, double* %polly.access.Packed_MemRef_call2565784, align 8
  %p_mul37.i = fmul fast double %_p_scalar_789, %_p_scalar_785
  %401 = shl i64 %400, 3
  %402 = add i64 %401, %382
  %scevgep790 = getelementptr i8, i8* %call, i64 %402
  %scevgep790791 = bitcast i8* %scevgep790 to double*
  %_p_scalar_792 = load double, double* %scevgep790791, align 8, !alias.scope !111, !noalias !113
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_792
  store double %p_add42.i, double* %scevgep790791, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next772 = add nuw nsw i64 %polly.indvar771, 1
  %exitcond1114.not = icmp eq i64 %polly.indvar771, %smin1113
  br i1 %exitcond1114.not, label %polly.loop_exit769, label %polly.loop_header767, !llvm.loop !129

polly.loop_header931:                             ; preds = %entry, %polly.loop_exit939
  %polly.indvar934 = phi i64 [ %polly.indvar_next935, %polly.loop_exit939 ], [ 0, %entry ]
  %403 = mul nuw nsw i64 %polly.indvar934, 640
  %404 = trunc i64 %polly.indvar934 to i32
  %broadcast.splatinsert1255 = insertelement <4 x i32> poison, i32 %404, i32 0
  %broadcast.splat1256 = shufflevector <4 x i32> %broadcast.splatinsert1255, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1245

vector.body1245:                                  ; preds = %vector.body1245, %polly.loop_header931
  %index1247 = phi i64 [ 0, %polly.loop_header931 ], [ %index.next1248, %vector.body1245 ]
  %vec.ind1253 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header931 ], [ %vec.ind.next1254, %vector.body1245 ]
  %405 = mul <4 x i32> %vec.ind1253, %broadcast.splat1256
  %406 = add <4 x i32> %405, <i32 3, i32 3, i32 3, i32 3>
  %407 = urem <4 x i32> %406, <i32 80, i32 80, i32 80, i32 80>
  %408 = sitofp <4 x i32> %407 to <4 x double>
  %409 = fmul fast <4 x double> %408, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %410 = shl i64 %index1247, 3
  %411 = add nuw nsw i64 %410, %403
  %412 = getelementptr i8, i8* %call, i64 %411
  %413 = bitcast i8* %412 to <4 x double>*
  store <4 x double> %409, <4 x double>* %413, align 8, !alias.scope !130, !noalias !132
  %index.next1248 = add i64 %index1247, 4
  %vec.ind.next1254 = add <4 x i32> %vec.ind1253, <i32 4, i32 4, i32 4, i32 4>
  %414 = icmp eq i64 %index.next1248, 32
  br i1 %414, label %polly.loop_exit939, label %vector.body1245, !llvm.loop !135

polly.loop_exit939:                               ; preds = %vector.body1245
  %polly.indvar_next935 = add nuw nsw i64 %polly.indvar934, 1
  %exitcond1140.not = icmp eq i64 %polly.indvar_next935, 32
  br i1 %exitcond1140.not, label %polly.loop_header931.1, label %polly.loop_header931

polly.loop_header958:                             ; preds = %polly.loop_exit939.2.2, %polly.loop_exit966
  %polly.indvar961 = phi i64 [ %polly.indvar_next962, %polly.loop_exit966 ], [ 0, %polly.loop_exit939.2.2 ]
  %415 = mul nuw nsw i64 %polly.indvar961, 480
  %416 = trunc i64 %polly.indvar961 to i32
  %broadcast.splatinsert1369 = insertelement <4 x i32> poison, i32 %416, i32 0
  %broadcast.splat1370 = shufflevector <4 x i32> %broadcast.splatinsert1369, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1359

vector.body1359:                                  ; preds = %vector.body1359, %polly.loop_header958
  %index1361 = phi i64 [ 0, %polly.loop_header958 ], [ %index.next1362, %vector.body1359 ]
  %vec.ind1367 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header958 ], [ %vec.ind.next1368, %vector.body1359 ]
  %417 = mul <4 x i32> %vec.ind1367, %broadcast.splat1370
  %418 = add <4 x i32> %417, <i32 2, i32 2, i32 2, i32 2>
  %419 = urem <4 x i32> %418, <i32 60, i32 60, i32 60, i32 60>
  %420 = sitofp <4 x i32> %419 to <4 x double>
  %421 = fmul fast <4 x double> %420, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %422 = shl i64 %index1361, 3
  %423 = add i64 %422, %415
  %424 = getelementptr i8, i8* %call2, i64 %423
  %425 = bitcast i8* %424 to <4 x double>*
  store <4 x double> %421, <4 x double>* %425, align 8, !alias.scope !134, !noalias !136
  %index.next1362 = add i64 %index1361, 4
  %vec.ind.next1368 = add <4 x i32> %vec.ind1367, <i32 4, i32 4, i32 4, i32 4>
  %426 = icmp eq i64 %index.next1362, 32
  br i1 %426, label %polly.loop_exit966, label %vector.body1359, !llvm.loop !137

polly.loop_exit966:                               ; preds = %vector.body1359
  %polly.indvar_next962 = add nuw nsw i64 %polly.indvar961, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar_next962, 32
  br i1 %exitcond1131.not, label %polly.loop_header958.1, label %polly.loop_header958

polly.loop_header984:                             ; preds = %polly.loop_exit966.1.2, %polly.loop_exit992
  %polly.indvar987 = phi i64 [ %polly.indvar_next988, %polly.loop_exit992 ], [ 0, %polly.loop_exit966.1.2 ]
  %427 = mul nuw nsw i64 %polly.indvar987, 480
  %428 = trunc i64 %polly.indvar987 to i32
  %broadcast.splatinsert1447 = insertelement <4 x i32> poison, i32 %428, i32 0
  %broadcast.splat1448 = shufflevector <4 x i32> %broadcast.splatinsert1447, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1437

vector.body1437:                                  ; preds = %vector.body1437, %polly.loop_header984
  %index1439 = phi i64 [ 0, %polly.loop_header984 ], [ %index.next1440, %vector.body1437 ]
  %vec.ind1445 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header984 ], [ %vec.ind.next1446, %vector.body1437 ]
  %429 = mul <4 x i32> %vec.ind1445, %broadcast.splat1448
  %430 = add <4 x i32> %429, <i32 1, i32 1, i32 1, i32 1>
  %431 = urem <4 x i32> %430, <i32 80, i32 80, i32 80, i32 80>
  %432 = sitofp <4 x i32> %431 to <4 x double>
  %433 = fmul fast <4 x double> %432, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %434 = shl i64 %index1439, 3
  %435 = add i64 %434, %427
  %436 = getelementptr i8, i8* %call1, i64 %435
  %437 = bitcast i8* %436 to <4 x double>*
  store <4 x double> %433, <4 x double>* %437, align 8, !alias.scope !133, !noalias !138
  %index.next1440 = add i64 %index1439, 4
  %vec.ind.next1446 = add <4 x i32> %vec.ind1445, <i32 4, i32 4, i32 4, i32 4>
  %438 = icmp eq i64 %index.next1440, 32
  br i1 %438, label %polly.loop_exit992, label %vector.body1437, !llvm.loop !139

polly.loop_exit992:                               ; preds = %vector.body1437
  %polly.indvar_next988 = add nuw nsw i64 %polly.indvar987, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar_next988, 32
  br i1 %exitcond1125.not, label %polly.loop_header984.1, label %polly.loop_header984

polly.loop_header984.1:                           ; preds = %polly.loop_exit992, %polly.loop_exit992.1
  %polly.indvar987.1 = phi i64 [ %polly.indvar_next988.1, %polly.loop_exit992.1 ], [ 0, %polly.loop_exit992 ]
  %439 = mul nuw nsw i64 %polly.indvar987.1, 480
  %440 = trunc i64 %polly.indvar987.1 to i32
  %broadcast.splatinsert1459 = insertelement <4 x i32> poison, i32 %440, i32 0
  %broadcast.splat1460 = shufflevector <4 x i32> %broadcast.splatinsert1459, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1451

vector.body1451:                                  ; preds = %vector.body1451, %polly.loop_header984.1
  %index1453 = phi i64 [ 0, %polly.loop_header984.1 ], [ %index.next1454, %vector.body1451 ]
  %vec.ind1457 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header984.1 ], [ %vec.ind.next1458, %vector.body1451 ]
  %441 = add nuw nsw <4 x i64> %vec.ind1457, <i64 32, i64 32, i64 32, i64 32>
  %442 = trunc <4 x i64> %441 to <4 x i32>
  %443 = mul <4 x i32> %broadcast.splat1460, %442
  %444 = add <4 x i32> %443, <i32 1, i32 1, i32 1, i32 1>
  %445 = urem <4 x i32> %444, <i32 80, i32 80, i32 80, i32 80>
  %446 = sitofp <4 x i32> %445 to <4 x double>
  %447 = fmul fast <4 x double> %446, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %448 = extractelement <4 x i64> %441, i32 0
  %449 = shl i64 %448, 3
  %450 = add i64 %449, %439
  %451 = getelementptr i8, i8* %call1, i64 %450
  %452 = bitcast i8* %451 to <4 x double>*
  store <4 x double> %447, <4 x double>* %452, align 8, !alias.scope !133, !noalias !138
  %index.next1454 = add i64 %index1453, 4
  %vec.ind.next1458 = add <4 x i64> %vec.ind1457, <i64 4, i64 4, i64 4, i64 4>
  %453 = icmp eq i64 %index.next1454, 28
  br i1 %453, label %polly.loop_exit992.1, label %vector.body1451, !llvm.loop !140

polly.loop_exit992.1:                             ; preds = %vector.body1451
  %polly.indvar_next988.1 = add nuw nsw i64 %polly.indvar987.1, 1
  %exitcond1125.1.not = icmp eq i64 %polly.indvar_next988.1, 32
  br i1 %exitcond1125.1.not, label %polly.loop_header984.11154, label %polly.loop_header984.1

polly.loop_header984.11154:                       ; preds = %polly.loop_exit992.1, %polly.loop_exit992.11165
  %polly.indvar987.11153 = phi i64 [ %polly.indvar_next988.11163, %polly.loop_exit992.11165 ], [ 0, %polly.loop_exit992.1 ]
  %454 = add nuw nsw i64 %polly.indvar987.11153, 32
  %455 = mul nuw nsw i64 %454, 480
  %456 = trunc i64 %454 to i32
  %broadcast.splatinsert1473 = insertelement <4 x i32> poison, i32 %456, i32 0
  %broadcast.splat1474 = shufflevector <4 x i32> %broadcast.splatinsert1473, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1463

vector.body1463:                                  ; preds = %vector.body1463, %polly.loop_header984.11154
  %index1465 = phi i64 [ 0, %polly.loop_header984.11154 ], [ %index.next1466, %vector.body1463 ]
  %vec.ind1471 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header984.11154 ], [ %vec.ind.next1472, %vector.body1463 ]
  %457 = mul <4 x i32> %vec.ind1471, %broadcast.splat1474
  %458 = add <4 x i32> %457, <i32 1, i32 1, i32 1, i32 1>
  %459 = urem <4 x i32> %458, <i32 80, i32 80, i32 80, i32 80>
  %460 = sitofp <4 x i32> %459 to <4 x double>
  %461 = fmul fast <4 x double> %460, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %462 = shl i64 %index1465, 3
  %463 = add i64 %462, %455
  %464 = getelementptr i8, i8* %call1, i64 %463
  %465 = bitcast i8* %464 to <4 x double>*
  store <4 x double> %461, <4 x double>* %465, align 8, !alias.scope !133, !noalias !138
  %index.next1466 = add i64 %index1465, 4
  %vec.ind.next1472 = add <4 x i32> %vec.ind1471, <i32 4, i32 4, i32 4, i32 4>
  %466 = icmp eq i64 %index.next1466, 32
  br i1 %466, label %polly.loop_exit992.11165, label %vector.body1463, !llvm.loop !141

polly.loop_exit992.11165:                         ; preds = %vector.body1463
  %polly.indvar_next988.11163 = add nuw nsw i64 %polly.indvar987.11153, 1
  %exitcond1125.11164.not = icmp eq i64 %polly.indvar_next988.11163, 32
  br i1 %exitcond1125.11164.not, label %polly.loop_header984.1.1, label %polly.loop_header984.11154

polly.loop_header984.1.1:                         ; preds = %polly.loop_exit992.11165, %polly.loop_exit992.1.1
  %polly.indvar987.1.1 = phi i64 [ %polly.indvar_next988.1.1, %polly.loop_exit992.1.1 ], [ 0, %polly.loop_exit992.11165 ]
  %467 = add nuw nsw i64 %polly.indvar987.1.1, 32
  %468 = mul nuw nsw i64 %467, 480
  %469 = trunc i64 %467 to i32
  %broadcast.splatinsert1485 = insertelement <4 x i32> poison, i32 %469, i32 0
  %broadcast.splat1486 = shufflevector <4 x i32> %broadcast.splatinsert1485, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1477

vector.body1477:                                  ; preds = %vector.body1477, %polly.loop_header984.1.1
  %index1479 = phi i64 [ 0, %polly.loop_header984.1.1 ], [ %index.next1480, %vector.body1477 ]
  %vec.ind1483 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header984.1.1 ], [ %vec.ind.next1484, %vector.body1477 ]
  %470 = add nuw nsw <4 x i64> %vec.ind1483, <i64 32, i64 32, i64 32, i64 32>
  %471 = trunc <4 x i64> %470 to <4 x i32>
  %472 = mul <4 x i32> %broadcast.splat1486, %471
  %473 = add <4 x i32> %472, <i32 1, i32 1, i32 1, i32 1>
  %474 = urem <4 x i32> %473, <i32 80, i32 80, i32 80, i32 80>
  %475 = sitofp <4 x i32> %474 to <4 x double>
  %476 = fmul fast <4 x double> %475, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %477 = extractelement <4 x i64> %470, i32 0
  %478 = shl i64 %477, 3
  %479 = add i64 %478, %468
  %480 = getelementptr i8, i8* %call1, i64 %479
  %481 = bitcast i8* %480 to <4 x double>*
  store <4 x double> %476, <4 x double>* %481, align 8, !alias.scope !133, !noalias !138
  %index.next1480 = add i64 %index1479, 4
  %vec.ind.next1484 = add <4 x i64> %vec.ind1483, <i64 4, i64 4, i64 4, i64 4>
  %482 = icmp eq i64 %index.next1480, 28
  br i1 %482, label %polly.loop_exit992.1.1, label %vector.body1477, !llvm.loop !142

polly.loop_exit992.1.1:                           ; preds = %vector.body1477
  %polly.indvar_next988.1.1 = add nuw nsw i64 %polly.indvar987.1.1, 1
  %exitcond1125.1.1.not = icmp eq i64 %polly.indvar_next988.1.1, 32
  br i1 %exitcond1125.1.1.not, label %polly.loop_header984.2, label %polly.loop_header984.1.1

polly.loop_header984.2:                           ; preds = %polly.loop_exit992.1.1, %polly.loop_exit992.2
  %polly.indvar987.2 = phi i64 [ %polly.indvar_next988.2, %polly.loop_exit992.2 ], [ 0, %polly.loop_exit992.1.1 ]
  %483 = add nuw nsw i64 %polly.indvar987.2, 64
  %484 = mul nuw nsw i64 %483, 480
  %485 = trunc i64 %483 to i32
  %broadcast.splatinsert1499 = insertelement <4 x i32> poison, i32 %485, i32 0
  %broadcast.splat1500 = shufflevector <4 x i32> %broadcast.splatinsert1499, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1489

vector.body1489:                                  ; preds = %vector.body1489, %polly.loop_header984.2
  %index1491 = phi i64 [ 0, %polly.loop_header984.2 ], [ %index.next1492, %vector.body1489 ]
  %vec.ind1497 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header984.2 ], [ %vec.ind.next1498, %vector.body1489 ]
  %486 = mul <4 x i32> %vec.ind1497, %broadcast.splat1500
  %487 = add <4 x i32> %486, <i32 1, i32 1, i32 1, i32 1>
  %488 = urem <4 x i32> %487, <i32 80, i32 80, i32 80, i32 80>
  %489 = sitofp <4 x i32> %488 to <4 x double>
  %490 = fmul fast <4 x double> %489, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %491 = shl i64 %index1491, 3
  %492 = add i64 %491, %484
  %493 = getelementptr i8, i8* %call1, i64 %492
  %494 = bitcast i8* %493 to <4 x double>*
  store <4 x double> %490, <4 x double>* %494, align 8, !alias.scope !133, !noalias !138
  %index.next1492 = add i64 %index1491, 4
  %vec.ind.next1498 = add <4 x i32> %vec.ind1497, <i32 4, i32 4, i32 4, i32 4>
  %495 = icmp eq i64 %index.next1492, 32
  br i1 %495, label %polly.loop_exit992.2, label %vector.body1489, !llvm.loop !143

polly.loop_exit992.2:                             ; preds = %vector.body1489
  %polly.indvar_next988.2 = add nuw nsw i64 %polly.indvar987.2, 1
  %exitcond1125.2.not = icmp eq i64 %polly.indvar_next988.2, 16
  br i1 %exitcond1125.2.not, label %polly.loop_header984.1.2, label %polly.loop_header984.2

polly.loop_header984.1.2:                         ; preds = %polly.loop_exit992.2, %polly.loop_exit992.1.2
  %polly.indvar987.1.2 = phi i64 [ %polly.indvar_next988.1.2, %polly.loop_exit992.1.2 ], [ 0, %polly.loop_exit992.2 ]
  %496 = add nuw nsw i64 %polly.indvar987.1.2, 64
  %497 = mul nuw nsw i64 %496, 480
  %498 = trunc i64 %496 to i32
  %broadcast.splatinsert1511 = insertelement <4 x i32> poison, i32 %498, i32 0
  %broadcast.splat1512 = shufflevector <4 x i32> %broadcast.splatinsert1511, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1503

vector.body1503:                                  ; preds = %vector.body1503, %polly.loop_header984.1.2
  %index1505 = phi i64 [ 0, %polly.loop_header984.1.2 ], [ %index.next1506, %vector.body1503 ]
  %vec.ind1509 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header984.1.2 ], [ %vec.ind.next1510, %vector.body1503 ]
  %499 = add nuw nsw <4 x i64> %vec.ind1509, <i64 32, i64 32, i64 32, i64 32>
  %500 = trunc <4 x i64> %499 to <4 x i32>
  %501 = mul <4 x i32> %broadcast.splat1512, %500
  %502 = add <4 x i32> %501, <i32 1, i32 1, i32 1, i32 1>
  %503 = urem <4 x i32> %502, <i32 80, i32 80, i32 80, i32 80>
  %504 = sitofp <4 x i32> %503 to <4 x double>
  %505 = fmul fast <4 x double> %504, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %506 = extractelement <4 x i64> %499, i32 0
  %507 = shl i64 %506, 3
  %508 = add i64 %507, %497
  %509 = getelementptr i8, i8* %call1, i64 %508
  %510 = bitcast i8* %509 to <4 x double>*
  store <4 x double> %505, <4 x double>* %510, align 8, !alias.scope !133, !noalias !138
  %index.next1506 = add i64 %index1505, 4
  %vec.ind.next1510 = add <4 x i64> %vec.ind1509, <i64 4, i64 4, i64 4, i64 4>
  %511 = icmp eq i64 %index.next1506, 28
  br i1 %511, label %polly.loop_exit992.1.2, label %vector.body1503, !llvm.loop !144

polly.loop_exit992.1.2:                           ; preds = %vector.body1503
  %polly.indvar_next988.1.2 = add nuw nsw i64 %polly.indvar987.1.2, 1
  %exitcond1125.1.2.not = icmp eq i64 %polly.indvar_next988.1.2, 16
  br i1 %exitcond1125.1.2.not, label %init_array.exit, label %polly.loop_header984.1.2

polly.loop_header958.1:                           ; preds = %polly.loop_exit966, %polly.loop_exit966.1
  %polly.indvar961.1 = phi i64 [ %polly.indvar_next962.1, %polly.loop_exit966.1 ], [ 0, %polly.loop_exit966 ]
  %512 = mul nuw nsw i64 %polly.indvar961.1, 480
  %513 = trunc i64 %polly.indvar961.1 to i32
  %broadcast.splatinsert1381 = insertelement <4 x i32> poison, i32 %513, i32 0
  %broadcast.splat1382 = shufflevector <4 x i32> %broadcast.splatinsert1381, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1373

vector.body1373:                                  ; preds = %vector.body1373, %polly.loop_header958.1
  %index1375 = phi i64 [ 0, %polly.loop_header958.1 ], [ %index.next1376, %vector.body1373 ]
  %vec.ind1379 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header958.1 ], [ %vec.ind.next1380, %vector.body1373 ]
  %514 = add nuw nsw <4 x i64> %vec.ind1379, <i64 32, i64 32, i64 32, i64 32>
  %515 = trunc <4 x i64> %514 to <4 x i32>
  %516 = mul <4 x i32> %broadcast.splat1382, %515
  %517 = add <4 x i32> %516, <i32 2, i32 2, i32 2, i32 2>
  %518 = urem <4 x i32> %517, <i32 60, i32 60, i32 60, i32 60>
  %519 = sitofp <4 x i32> %518 to <4 x double>
  %520 = fmul fast <4 x double> %519, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %521 = extractelement <4 x i64> %514, i32 0
  %522 = shl i64 %521, 3
  %523 = add i64 %522, %512
  %524 = getelementptr i8, i8* %call2, i64 %523
  %525 = bitcast i8* %524 to <4 x double>*
  store <4 x double> %520, <4 x double>* %525, align 8, !alias.scope !134, !noalias !136
  %index.next1376 = add i64 %index1375, 4
  %vec.ind.next1380 = add <4 x i64> %vec.ind1379, <i64 4, i64 4, i64 4, i64 4>
  %526 = icmp eq i64 %index.next1376, 28
  br i1 %526, label %polly.loop_exit966.1, label %vector.body1373, !llvm.loop !145

polly.loop_exit966.1:                             ; preds = %vector.body1373
  %polly.indvar_next962.1 = add nuw nsw i64 %polly.indvar961.1, 1
  %exitcond1131.1.not = icmp eq i64 %polly.indvar_next962.1, 32
  br i1 %exitcond1131.1.not, label %polly.loop_header958.11168, label %polly.loop_header958.1

polly.loop_header958.11168:                       ; preds = %polly.loop_exit966.1, %polly.loop_exit966.11179
  %polly.indvar961.11167 = phi i64 [ %polly.indvar_next962.11177, %polly.loop_exit966.11179 ], [ 0, %polly.loop_exit966.1 ]
  %527 = add nuw nsw i64 %polly.indvar961.11167, 32
  %528 = mul nuw nsw i64 %527, 480
  %529 = trunc i64 %527 to i32
  %broadcast.splatinsert1395 = insertelement <4 x i32> poison, i32 %529, i32 0
  %broadcast.splat1396 = shufflevector <4 x i32> %broadcast.splatinsert1395, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1385

vector.body1385:                                  ; preds = %vector.body1385, %polly.loop_header958.11168
  %index1387 = phi i64 [ 0, %polly.loop_header958.11168 ], [ %index.next1388, %vector.body1385 ]
  %vec.ind1393 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header958.11168 ], [ %vec.ind.next1394, %vector.body1385 ]
  %530 = mul <4 x i32> %vec.ind1393, %broadcast.splat1396
  %531 = add <4 x i32> %530, <i32 2, i32 2, i32 2, i32 2>
  %532 = urem <4 x i32> %531, <i32 60, i32 60, i32 60, i32 60>
  %533 = sitofp <4 x i32> %532 to <4 x double>
  %534 = fmul fast <4 x double> %533, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %535 = shl i64 %index1387, 3
  %536 = add i64 %535, %528
  %537 = getelementptr i8, i8* %call2, i64 %536
  %538 = bitcast i8* %537 to <4 x double>*
  store <4 x double> %534, <4 x double>* %538, align 8, !alias.scope !134, !noalias !136
  %index.next1388 = add i64 %index1387, 4
  %vec.ind.next1394 = add <4 x i32> %vec.ind1393, <i32 4, i32 4, i32 4, i32 4>
  %539 = icmp eq i64 %index.next1388, 32
  br i1 %539, label %polly.loop_exit966.11179, label %vector.body1385, !llvm.loop !146

polly.loop_exit966.11179:                         ; preds = %vector.body1385
  %polly.indvar_next962.11177 = add nuw nsw i64 %polly.indvar961.11167, 1
  %exitcond1131.11178.not = icmp eq i64 %polly.indvar_next962.11177, 32
  br i1 %exitcond1131.11178.not, label %polly.loop_header958.1.1, label %polly.loop_header958.11168

polly.loop_header958.1.1:                         ; preds = %polly.loop_exit966.11179, %polly.loop_exit966.1.1
  %polly.indvar961.1.1 = phi i64 [ %polly.indvar_next962.1.1, %polly.loop_exit966.1.1 ], [ 0, %polly.loop_exit966.11179 ]
  %540 = add nuw nsw i64 %polly.indvar961.1.1, 32
  %541 = mul nuw nsw i64 %540, 480
  %542 = trunc i64 %540 to i32
  %broadcast.splatinsert1407 = insertelement <4 x i32> poison, i32 %542, i32 0
  %broadcast.splat1408 = shufflevector <4 x i32> %broadcast.splatinsert1407, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1399

vector.body1399:                                  ; preds = %vector.body1399, %polly.loop_header958.1.1
  %index1401 = phi i64 [ 0, %polly.loop_header958.1.1 ], [ %index.next1402, %vector.body1399 ]
  %vec.ind1405 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header958.1.1 ], [ %vec.ind.next1406, %vector.body1399 ]
  %543 = add nuw nsw <4 x i64> %vec.ind1405, <i64 32, i64 32, i64 32, i64 32>
  %544 = trunc <4 x i64> %543 to <4 x i32>
  %545 = mul <4 x i32> %broadcast.splat1408, %544
  %546 = add <4 x i32> %545, <i32 2, i32 2, i32 2, i32 2>
  %547 = urem <4 x i32> %546, <i32 60, i32 60, i32 60, i32 60>
  %548 = sitofp <4 x i32> %547 to <4 x double>
  %549 = fmul fast <4 x double> %548, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %550 = extractelement <4 x i64> %543, i32 0
  %551 = shl i64 %550, 3
  %552 = add i64 %551, %541
  %553 = getelementptr i8, i8* %call2, i64 %552
  %554 = bitcast i8* %553 to <4 x double>*
  store <4 x double> %549, <4 x double>* %554, align 8, !alias.scope !134, !noalias !136
  %index.next1402 = add i64 %index1401, 4
  %vec.ind.next1406 = add <4 x i64> %vec.ind1405, <i64 4, i64 4, i64 4, i64 4>
  %555 = icmp eq i64 %index.next1402, 28
  br i1 %555, label %polly.loop_exit966.1.1, label %vector.body1399, !llvm.loop !147

polly.loop_exit966.1.1:                           ; preds = %vector.body1399
  %polly.indvar_next962.1.1 = add nuw nsw i64 %polly.indvar961.1.1, 1
  %exitcond1131.1.1.not = icmp eq i64 %polly.indvar_next962.1.1, 32
  br i1 %exitcond1131.1.1.not, label %polly.loop_header958.2, label %polly.loop_header958.1.1

polly.loop_header958.2:                           ; preds = %polly.loop_exit966.1.1, %polly.loop_exit966.2
  %polly.indvar961.2 = phi i64 [ %polly.indvar_next962.2, %polly.loop_exit966.2 ], [ 0, %polly.loop_exit966.1.1 ]
  %556 = add nuw nsw i64 %polly.indvar961.2, 64
  %557 = mul nuw nsw i64 %556, 480
  %558 = trunc i64 %556 to i32
  %broadcast.splatinsert1421 = insertelement <4 x i32> poison, i32 %558, i32 0
  %broadcast.splat1422 = shufflevector <4 x i32> %broadcast.splatinsert1421, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1411

vector.body1411:                                  ; preds = %vector.body1411, %polly.loop_header958.2
  %index1413 = phi i64 [ 0, %polly.loop_header958.2 ], [ %index.next1414, %vector.body1411 ]
  %vec.ind1419 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header958.2 ], [ %vec.ind.next1420, %vector.body1411 ]
  %559 = mul <4 x i32> %vec.ind1419, %broadcast.splat1422
  %560 = add <4 x i32> %559, <i32 2, i32 2, i32 2, i32 2>
  %561 = urem <4 x i32> %560, <i32 60, i32 60, i32 60, i32 60>
  %562 = sitofp <4 x i32> %561 to <4 x double>
  %563 = fmul fast <4 x double> %562, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %564 = shl i64 %index1413, 3
  %565 = add i64 %564, %557
  %566 = getelementptr i8, i8* %call2, i64 %565
  %567 = bitcast i8* %566 to <4 x double>*
  store <4 x double> %563, <4 x double>* %567, align 8, !alias.scope !134, !noalias !136
  %index.next1414 = add i64 %index1413, 4
  %vec.ind.next1420 = add <4 x i32> %vec.ind1419, <i32 4, i32 4, i32 4, i32 4>
  %568 = icmp eq i64 %index.next1414, 32
  br i1 %568, label %polly.loop_exit966.2, label %vector.body1411, !llvm.loop !148

polly.loop_exit966.2:                             ; preds = %vector.body1411
  %polly.indvar_next962.2 = add nuw nsw i64 %polly.indvar961.2, 1
  %exitcond1131.2.not = icmp eq i64 %polly.indvar_next962.2, 16
  br i1 %exitcond1131.2.not, label %polly.loop_header958.1.2, label %polly.loop_header958.2

polly.loop_header958.1.2:                         ; preds = %polly.loop_exit966.2, %polly.loop_exit966.1.2
  %polly.indvar961.1.2 = phi i64 [ %polly.indvar_next962.1.2, %polly.loop_exit966.1.2 ], [ 0, %polly.loop_exit966.2 ]
  %569 = add nuw nsw i64 %polly.indvar961.1.2, 64
  %570 = mul nuw nsw i64 %569, 480
  %571 = trunc i64 %569 to i32
  %broadcast.splatinsert1433 = insertelement <4 x i32> poison, i32 %571, i32 0
  %broadcast.splat1434 = shufflevector <4 x i32> %broadcast.splatinsert1433, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1425

vector.body1425:                                  ; preds = %vector.body1425, %polly.loop_header958.1.2
  %index1427 = phi i64 [ 0, %polly.loop_header958.1.2 ], [ %index.next1428, %vector.body1425 ]
  %vec.ind1431 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header958.1.2 ], [ %vec.ind.next1432, %vector.body1425 ]
  %572 = add nuw nsw <4 x i64> %vec.ind1431, <i64 32, i64 32, i64 32, i64 32>
  %573 = trunc <4 x i64> %572 to <4 x i32>
  %574 = mul <4 x i32> %broadcast.splat1434, %573
  %575 = add <4 x i32> %574, <i32 2, i32 2, i32 2, i32 2>
  %576 = urem <4 x i32> %575, <i32 60, i32 60, i32 60, i32 60>
  %577 = sitofp <4 x i32> %576 to <4 x double>
  %578 = fmul fast <4 x double> %577, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %579 = extractelement <4 x i64> %572, i32 0
  %580 = shl i64 %579, 3
  %581 = add i64 %580, %570
  %582 = getelementptr i8, i8* %call2, i64 %581
  %583 = bitcast i8* %582 to <4 x double>*
  store <4 x double> %578, <4 x double>* %583, align 8, !alias.scope !134, !noalias !136
  %index.next1428 = add i64 %index1427, 4
  %vec.ind.next1432 = add <4 x i64> %vec.ind1431, <i64 4, i64 4, i64 4, i64 4>
  %584 = icmp eq i64 %index.next1428, 28
  br i1 %584, label %polly.loop_exit966.1.2, label %vector.body1425, !llvm.loop !149

polly.loop_exit966.1.2:                           ; preds = %vector.body1425
  %polly.indvar_next962.1.2 = add nuw nsw i64 %polly.indvar961.1.2, 1
  %exitcond1131.1.2.not = icmp eq i64 %polly.indvar_next962.1.2, 16
  br i1 %exitcond1131.1.2.not, label %polly.loop_header984, label %polly.loop_header958.1.2

polly.loop_header931.1:                           ; preds = %polly.loop_exit939, %polly.loop_exit939.1
  %polly.indvar934.1 = phi i64 [ %polly.indvar_next935.1, %polly.loop_exit939.1 ], [ 0, %polly.loop_exit939 ]
  %585 = mul nuw nsw i64 %polly.indvar934.1, 640
  %586 = trunc i64 %polly.indvar934.1 to i32
  %broadcast.splatinsert1267 = insertelement <4 x i32> poison, i32 %586, i32 0
  %broadcast.splat1268 = shufflevector <4 x i32> %broadcast.splatinsert1267, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1259

vector.body1259:                                  ; preds = %vector.body1259, %polly.loop_header931.1
  %index1261 = phi i64 [ 0, %polly.loop_header931.1 ], [ %index.next1262, %vector.body1259 ]
  %vec.ind1265 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header931.1 ], [ %vec.ind.next1266, %vector.body1259 ]
  %587 = add nuw nsw <4 x i64> %vec.ind1265, <i64 32, i64 32, i64 32, i64 32>
  %588 = trunc <4 x i64> %587 to <4 x i32>
  %589 = mul <4 x i32> %broadcast.splat1268, %588
  %590 = add <4 x i32> %589, <i32 3, i32 3, i32 3, i32 3>
  %591 = urem <4 x i32> %590, <i32 80, i32 80, i32 80, i32 80>
  %592 = sitofp <4 x i32> %591 to <4 x double>
  %593 = fmul fast <4 x double> %592, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %594 = extractelement <4 x i64> %587, i32 0
  %595 = shl i64 %594, 3
  %596 = add nuw nsw i64 %595, %585
  %597 = getelementptr i8, i8* %call, i64 %596
  %598 = bitcast i8* %597 to <4 x double>*
  store <4 x double> %593, <4 x double>* %598, align 8, !alias.scope !130, !noalias !132
  %index.next1262 = add i64 %index1261, 4
  %vec.ind.next1266 = add <4 x i64> %vec.ind1265, <i64 4, i64 4, i64 4, i64 4>
  %599 = icmp eq i64 %index.next1262, 32
  br i1 %599, label %polly.loop_exit939.1, label %vector.body1259, !llvm.loop !150

polly.loop_exit939.1:                             ; preds = %vector.body1259
  %polly.indvar_next935.1 = add nuw nsw i64 %polly.indvar934.1, 1
  %exitcond1140.1.not = icmp eq i64 %polly.indvar_next935.1, 32
  br i1 %exitcond1140.1.not, label %polly.loop_header931.2, label %polly.loop_header931.1

polly.loop_header931.2:                           ; preds = %polly.loop_exit939.1, %polly.loop_exit939.2
  %polly.indvar934.2 = phi i64 [ %polly.indvar_next935.2, %polly.loop_exit939.2 ], [ 0, %polly.loop_exit939.1 ]
  %600 = mul nuw nsw i64 %polly.indvar934.2, 640
  %601 = trunc i64 %polly.indvar934.2 to i32
  %broadcast.splatinsert1279 = insertelement <4 x i32> poison, i32 %601, i32 0
  %broadcast.splat1280 = shufflevector <4 x i32> %broadcast.splatinsert1279, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1271

vector.body1271:                                  ; preds = %vector.body1271, %polly.loop_header931.2
  %index1273 = phi i64 [ 0, %polly.loop_header931.2 ], [ %index.next1274, %vector.body1271 ]
  %vec.ind1277 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header931.2 ], [ %vec.ind.next1278, %vector.body1271 ]
  %602 = add nuw nsw <4 x i64> %vec.ind1277, <i64 64, i64 64, i64 64, i64 64>
  %603 = trunc <4 x i64> %602 to <4 x i32>
  %604 = mul <4 x i32> %broadcast.splat1280, %603
  %605 = add <4 x i32> %604, <i32 3, i32 3, i32 3, i32 3>
  %606 = urem <4 x i32> %605, <i32 80, i32 80, i32 80, i32 80>
  %607 = sitofp <4 x i32> %606 to <4 x double>
  %608 = fmul fast <4 x double> %607, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %609 = extractelement <4 x i64> %602, i32 0
  %610 = shl i64 %609, 3
  %611 = add nuw nsw i64 %610, %600
  %612 = getelementptr i8, i8* %call, i64 %611
  %613 = bitcast i8* %612 to <4 x double>*
  store <4 x double> %608, <4 x double>* %613, align 8, !alias.scope !130, !noalias !132
  %index.next1274 = add i64 %index1273, 4
  %vec.ind.next1278 = add <4 x i64> %vec.ind1277, <i64 4, i64 4, i64 4, i64 4>
  %614 = icmp eq i64 %index.next1274, 16
  br i1 %614, label %polly.loop_exit939.2, label %vector.body1271, !llvm.loop !151

polly.loop_exit939.2:                             ; preds = %vector.body1271
  %polly.indvar_next935.2 = add nuw nsw i64 %polly.indvar934.2, 1
  %exitcond1140.2.not = icmp eq i64 %polly.indvar_next935.2, 32
  br i1 %exitcond1140.2.not, label %polly.loop_header931.11182, label %polly.loop_header931.2

polly.loop_header931.11182:                       ; preds = %polly.loop_exit939.2, %polly.loop_exit939.11193
  %polly.indvar934.11181 = phi i64 [ %polly.indvar_next935.11191, %polly.loop_exit939.11193 ], [ 0, %polly.loop_exit939.2 ]
  %615 = add nuw nsw i64 %polly.indvar934.11181, 32
  %616 = mul nuw nsw i64 %615, 640
  %617 = trunc i64 %615 to i32
  %broadcast.splatinsert1293 = insertelement <4 x i32> poison, i32 %617, i32 0
  %broadcast.splat1294 = shufflevector <4 x i32> %broadcast.splatinsert1293, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1283

vector.body1283:                                  ; preds = %vector.body1283, %polly.loop_header931.11182
  %index1285 = phi i64 [ 0, %polly.loop_header931.11182 ], [ %index.next1286, %vector.body1283 ]
  %vec.ind1291 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header931.11182 ], [ %vec.ind.next1292, %vector.body1283 ]
  %618 = mul <4 x i32> %vec.ind1291, %broadcast.splat1294
  %619 = add <4 x i32> %618, <i32 3, i32 3, i32 3, i32 3>
  %620 = urem <4 x i32> %619, <i32 80, i32 80, i32 80, i32 80>
  %621 = sitofp <4 x i32> %620 to <4 x double>
  %622 = fmul fast <4 x double> %621, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %623 = shl i64 %index1285, 3
  %624 = add nuw nsw i64 %623, %616
  %625 = getelementptr i8, i8* %call, i64 %624
  %626 = bitcast i8* %625 to <4 x double>*
  store <4 x double> %622, <4 x double>* %626, align 8, !alias.scope !130, !noalias !132
  %index.next1286 = add i64 %index1285, 4
  %vec.ind.next1292 = add <4 x i32> %vec.ind1291, <i32 4, i32 4, i32 4, i32 4>
  %627 = icmp eq i64 %index.next1286, 32
  br i1 %627, label %polly.loop_exit939.11193, label %vector.body1283, !llvm.loop !152

polly.loop_exit939.11193:                         ; preds = %vector.body1283
  %polly.indvar_next935.11191 = add nuw nsw i64 %polly.indvar934.11181, 1
  %exitcond1140.11192.not = icmp eq i64 %polly.indvar_next935.11191, 32
  br i1 %exitcond1140.11192.not, label %polly.loop_header931.1.1, label %polly.loop_header931.11182

polly.loop_header931.1.1:                         ; preds = %polly.loop_exit939.11193, %polly.loop_exit939.1.1
  %polly.indvar934.1.1 = phi i64 [ %polly.indvar_next935.1.1, %polly.loop_exit939.1.1 ], [ 0, %polly.loop_exit939.11193 ]
  %628 = add nuw nsw i64 %polly.indvar934.1.1, 32
  %629 = mul nuw nsw i64 %628, 640
  %630 = trunc i64 %628 to i32
  %broadcast.splatinsert1305 = insertelement <4 x i32> poison, i32 %630, i32 0
  %broadcast.splat1306 = shufflevector <4 x i32> %broadcast.splatinsert1305, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1297

vector.body1297:                                  ; preds = %vector.body1297, %polly.loop_header931.1.1
  %index1299 = phi i64 [ 0, %polly.loop_header931.1.1 ], [ %index.next1300, %vector.body1297 ]
  %vec.ind1303 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header931.1.1 ], [ %vec.ind.next1304, %vector.body1297 ]
  %631 = add nuw nsw <4 x i64> %vec.ind1303, <i64 32, i64 32, i64 32, i64 32>
  %632 = trunc <4 x i64> %631 to <4 x i32>
  %633 = mul <4 x i32> %broadcast.splat1306, %632
  %634 = add <4 x i32> %633, <i32 3, i32 3, i32 3, i32 3>
  %635 = urem <4 x i32> %634, <i32 80, i32 80, i32 80, i32 80>
  %636 = sitofp <4 x i32> %635 to <4 x double>
  %637 = fmul fast <4 x double> %636, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %638 = extractelement <4 x i64> %631, i32 0
  %639 = shl i64 %638, 3
  %640 = add nuw nsw i64 %639, %629
  %641 = getelementptr i8, i8* %call, i64 %640
  %642 = bitcast i8* %641 to <4 x double>*
  store <4 x double> %637, <4 x double>* %642, align 8, !alias.scope !130, !noalias !132
  %index.next1300 = add i64 %index1299, 4
  %vec.ind.next1304 = add <4 x i64> %vec.ind1303, <i64 4, i64 4, i64 4, i64 4>
  %643 = icmp eq i64 %index.next1300, 32
  br i1 %643, label %polly.loop_exit939.1.1, label %vector.body1297, !llvm.loop !153

polly.loop_exit939.1.1:                           ; preds = %vector.body1297
  %polly.indvar_next935.1.1 = add nuw nsw i64 %polly.indvar934.1.1, 1
  %exitcond1140.1.1.not = icmp eq i64 %polly.indvar_next935.1.1, 32
  br i1 %exitcond1140.1.1.not, label %polly.loop_header931.2.1, label %polly.loop_header931.1.1

polly.loop_header931.2.1:                         ; preds = %polly.loop_exit939.1.1, %polly.loop_exit939.2.1
  %polly.indvar934.2.1 = phi i64 [ %polly.indvar_next935.2.1, %polly.loop_exit939.2.1 ], [ 0, %polly.loop_exit939.1.1 ]
  %644 = add nuw nsw i64 %polly.indvar934.2.1, 32
  %645 = mul nuw nsw i64 %644, 640
  %646 = trunc i64 %644 to i32
  %broadcast.splatinsert1317 = insertelement <4 x i32> poison, i32 %646, i32 0
  %broadcast.splat1318 = shufflevector <4 x i32> %broadcast.splatinsert1317, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1309

vector.body1309:                                  ; preds = %vector.body1309, %polly.loop_header931.2.1
  %index1311 = phi i64 [ 0, %polly.loop_header931.2.1 ], [ %index.next1312, %vector.body1309 ]
  %vec.ind1315 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header931.2.1 ], [ %vec.ind.next1316, %vector.body1309 ]
  %647 = add nuw nsw <4 x i64> %vec.ind1315, <i64 64, i64 64, i64 64, i64 64>
  %648 = trunc <4 x i64> %647 to <4 x i32>
  %649 = mul <4 x i32> %broadcast.splat1318, %648
  %650 = add <4 x i32> %649, <i32 3, i32 3, i32 3, i32 3>
  %651 = urem <4 x i32> %650, <i32 80, i32 80, i32 80, i32 80>
  %652 = sitofp <4 x i32> %651 to <4 x double>
  %653 = fmul fast <4 x double> %652, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %654 = extractelement <4 x i64> %647, i32 0
  %655 = shl i64 %654, 3
  %656 = add nuw nsw i64 %655, %645
  %657 = getelementptr i8, i8* %call, i64 %656
  %658 = bitcast i8* %657 to <4 x double>*
  store <4 x double> %653, <4 x double>* %658, align 8, !alias.scope !130, !noalias !132
  %index.next1312 = add i64 %index1311, 4
  %vec.ind.next1316 = add <4 x i64> %vec.ind1315, <i64 4, i64 4, i64 4, i64 4>
  %659 = icmp eq i64 %index.next1312, 16
  br i1 %659, label %polly.loop_exit939.2.1, label %vector.body1309, !llvm.loop !154

polly.loop_exit939.2.1:                           ; preds = %vector.body1309
  %polly.indvar_next935.2.1 = add nuw nsw i64 %polly.indvar934.2.1, 1
  %exitcond1140.2.1.not = icmp eq i64 %polly.indvar_next935.2.1, 32
  br i1 %exitcond1140.2.1.not, label %polly.loop_header931.21196, label %polly.loop_header931.2.1

polly.loop_header931.21196:                       ; preds = %polly.loop_exit939.2.1, %polly.loop_exit939.21207
  %polly.indvar934.21195 = phi i64 [ %polly.indvar_next935.21205, %polly.loop_exit939.21207 ], [ 0, %polly.loop_exit939.2.1 ]
  %660 = add nuw nsw i64 %polly.indvar934.21195, 64
  %661 = mul nuw nsw i64 %660, 640
  %662 = trunc i64 %660 to i32
  %broadcast.splatinsert1331 = insertelement <4 x i32> poison, i32 %662, i32 0
  %broadcast.splat1332 = shufflevector <4 x i32> %broadcast.splatinsert1331, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1321

vector.body1321:                                  ; preds = %vector.body1321, %polly.loop_header931.21196
  %index1323 = phi i64 [ 0, %polly.loop_header931.21196 ], [ %index.next1324, %vector.body1321 ]
  %vec.ind1329 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header931.21196 ], [ %vec.ind.next1330, %vector.body1321 ]
  %663 = mul <4 x i32> %vec.ind1329, %broadcast.splat1332
  %664 = add <4 x i32> %663, <i32 3, i32 3, i32 3, i32 3>
  %665 = urem <4 x i32> %664, <i32 80, i32 80, i32 80, i32 80>
  %666 = sitofp <4 x i32> %665 to <4 x double>
  %667 = fmul fast <4 x double> %666, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %668 = shl i64 %index1323, 3
  %669 = add nuw nsw i64 %668, %661
  %670 = getelementptr i8, i8* %call, i64 %669
  %671 = bitcast i8* %670 to <4 x double>*
  store <4 x double> %667, <4 x double>* %671, align 8, !alias.scope !130, !noalias !132
  %index.next1324 = add i64 %index1323, 4
  %vec.ind.next1330 = add <4 x i32> %vec.ind1329, <i32 4, i32 4, i32 4, i32 4>
  %672 = icmp eq i64 %index.next1324, 32
  br i1 %672, label %polly.loop_exit939.21207, label %vector.body1321, !llvm.loop !155

polly.loop_exit939.21207:                         ; preds = %vector.body1321
  %polly.indvar_next935.21205 = add nuw nsw i64 %polly.indvar934.21195, 1
  %exitcond1140.21206.not = icmp eq i64 %polly.indvar_next935.21205, 16
  br i1 %exitcond1140.21206.not, label %polly.loop_header931.1.2, label %polly.loop_header931.21196

polly.loop_header931.1.2:                         ; preds = %polly.loop_exit939.21207, %polly.loop_exit939.1.2
  %polly.indvar934.1.2 = phi i64 [ %polly.indvar_next935.1.2, %polly.loop_exit939.1.2 ], [ 0, %polly.loop_exit939.21207 ]
  %673 = add nuw nsw i64 %polly.indvar934.1.2, 64
  %674 = mul nuw nsw i64 %673, 640
  %675 = trunc i64 %673 to i32
  %broadcast.splatinsert1343 = insertelement <4 x i32> poison, i32 %675, i32 0
  %broadcast.splat1344 = shufflevector <4 x i32> %broadcast.splatinsert1343, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1335

vector.body1335:                                  ; preds = %vector.body1335, %polly.loop_header931.1.2
  %index1337 = phi i64 [ 0, %polly.loop_header931.1.2 ], [ %index.next1338, %vector.body1335 ]
  %vec.ind1341 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header931.1.2 ], [ %vec.ind.next1342, %vector.body1335 ]
  %676 = add nuw nsw <4 x i64> %vec.ind1341, <i64 32, i64 32, i64 32, i64 32>
  %677 = trunc <4 x i64> %676 to <4 x i32>
  %678 = mul <4 x i32> %broadcast.splat1344, %677
  %679 = add <4 x i32> %678, <i32 3, i32 3, i32 3, i32 3>
  %680 = urem <4 x i32> %679, <i32 80, i32 80, i32 80, i32 80>
  %681 = sitofp <4 x i32> %680 to <4 x double>
  %682 = fmul fast <4 x double> %681, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %683 = extractelement <4 x i64> %676, i32 0
  %684 = shl i64 %683, 3
  %685 = add nuw nsw i64 %684, %674
  %686 = getelementptr i8, i8* %call, i64 %685
  %687 = bitcast i8* %686 to <4 x double>*
  store <4 x double> %682, <4 x double>* %687, align 8, !alias.scope !130, !noalias !132
  %index.next1338 = add i64 %index1337, 4
  %vec.ind.next1342 = add <4 x i64> %vec.ind1341, <i64 4, i64 4, i64 4, i64 4>
  %688 = icmp eq i64 %index.next1338, 32
  br i1 %688, label %polly.loop_exit939.1.2, label %vector.body1335, !llvm.loop !156

polly.loop_exit939.1.2:                           ; preds = %vector.body1335
  %polly.indvar_next935.1.2 = add nuw nsw i64 %polly.indvar934.1.2, 1
  %exitcond1140.1.2.not = icmp eq i64 %polly.indvar_next935.1.2, 16
  br i1 %exitcond1140.1.2.not, label %polly.loop_header931.2.2, label %polly.loop_header931.1.2

polly.loop_header931.2.2:                         ; preds = %polly.loop_exit939.1.2, %polly.loop_exit939.2.2
  %polly.indvar934.2.2 = phi i64 [ %polly.indvar_next935.2.2, %polly.loop_exit939.2.2 ], [ 0, %polly.loop_exit939.1.2 ]
  %689 = add nuw nsw i64 %polly.indvar934.2.2, 64
  %690 = mul nuw nsw i64 %689, 640
  %691 = trunc i64 %689 to i32
  %broadcast.splatinsert1355 = insertelement <4 x i32> poison, i32 %691, i32 0
  %broadcast.splat1356 = shufflevector <4 x i32> %broadcast.splatinsert1355, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1347

vector.body1347:                                  ; preds = %vector.body1347, %polly.loop_header931.2.2
  %index1349 = phi i64 [ 0, %polly.loop_header931.2.2 ], [ %index.next1350, %vector.body1347 ]
  %vec.ind1353 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header931.2.2 ], [ %vec.ind.next1354, %vector.body1347 ]
  %692 = add nuw nsw <4 x i64> %vec.ind1353, <i64 64, i64 64, i64 64, i64 64>
  %693 = trunc <4 x i64> %692 to <4 x i32>
  %694 = mul <4 x i32> %broadcast.splat1356, %693
  %695 = add <4 x i32> %694, <i32 3, i32 3, i32 3, i32 3>
  %696 = urem <4 x i32> %695, <i32 80, i32 80, i32 80, i32 80>
  %697 = sitofp <4 x i32> %696 to <4 x double>
  %698 = fmul fast <4 x double> %697, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %699 = extractelement <4 x i64> %692, i32 0
  %700 = shl i64 %699, 3
  %701 = add nuw nsw i64 %700, %690
  %702 = getelementptr i8, i8* %call, i64 %701
  %703 = bitcast i8* %702 to <4 x double>*
  store <4 x double> %698, <4 x double>* %703, align 8, !alias.scope !130, !noalias !132
  %index.next1350 = add i64 %index1349, 4
  %vec.ind.next1354 = add <4 x i64> %vec.ind1353, <i64 4, i64 4, i64 4, i64 4>
  %704 = icmp eq i64 %index.next1350, 16
  br i1 %704, label %polly.loop_exit939.2.2, label %vector.body1347, !llvm.loop !157

polly.loop_exit939.2.2:                           ; preds = %vector.body1347
  %polly.indvar_next935.2.2 = add nuw nsw i64 %polly.indvar934.2.2, 1
  %exitcond1140.2.2.not = icmp eq i64 %polly.indvar_next935.2.2, 16
  br i1 %exitcond1140.2.2.not, label %polly.loop_header958, label %polly.loop_header931.2.2
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
!22 = distinct !{!"B"}
!23 = distinct !{!23, !12, !24, !25, !26, !27, !30}
!24 = !{!"llvm.loop.disable_nonforced"}
!25 = !{!"llvm.loop.id", !"k"}
!26 = !{!"llvm.loop.tile.size", i32 50}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 16}
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
!84 = !{!85}
!85 = distinct !{!85, !86}
!86 = distinct !{!86, !"LVerDomain"}
!87 = !{!72, !73, !"polly.alias.scope.MemRef_call", !88}
!88 = distinct !{!88, !86}
!89 = !{!75, !76, !77, !78, !85}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !93, !"polly.alias.scope.MemRef_call"}
!93 = distinct !{!93, !"polly.alias.scope.domain"}
!94 = !{!95, !96, !97, !98}
!95 = distinct !{!95, !93, !"polly.alias.scope.MemRef_call1"}
!96 = distinct !{!96, !93, !"polly.alias.scope.MemRef_call2"}
!97 = distinct !{!97, !93, !"polly.alias.scope.Packed_MemRef_call1"}
!98 = distinct !{!98, !93, !"polly.alias.scope.Packed_MemRef_call2"}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !81, !13}
!101 = !{!92, !95, !97, !98}
!102 = !{!92, !96, !97, !98}
!103 = !{!104}
!104 = distinct !{!104, !105}
!105 = distinct !{!105, !"LVerDomain"}
!106 = !{!92, !93, !"polly.alias.scope.MemRef_call", !107}
!107 = distinct !{!107, !105}
!108 = !{!95, !96, !97, !98, !104}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !112, !"polly.alias.scope.MemRef_call"}
!112 = distinct !{!112, !"polly.alias.scope.domain"}
!113 = !{!114, !115, !116, !117}
!114 = distinct !{!114, !112, !"polly.alias.scope.MemRef_call1"}
!115 = distinct !{!115, !112, !"polly.alias.scope.MemRef_call2"}
!116 = distinct !{!116, !112, !"polly.alias.scope.Packed_MemRef_call1"}
!117 = distinct !{!117, !112, !"polly.alias.scope.Packed_MemRef_call2"}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !81, !13}
!120 = !{!111, !114, !116, !117}
!121 = !{!111, !115, !116, !117}
!122 = !{!123}
!123 = distinct !{!123, !124}
!124 = distinct !{!124, !"LVerDomain"}
!125 = !{!111, !112, !"polly.alias.scope.MemRef_call", !126}
!126 = distinct !{!126, !124}
!127 = !{!114, !115, !116, !117, !123}
!128 = distinct !{!128, !13}
!129 = distinct !{!129, !13}
!130 = distinct !{!130, !131, !"polly.alias.scope.MemRef_call"}
!131 = distinct !{!131, !"polly.alias.scope.domain"}
!132 = !{!133, !134}
!133 = distinct !{!133, !131, !"polly.alias.scope.MemRef_call1"}
!134 = distinct !{!134, !131, !"polly.alias.scope.MemRef_call2"}
!135 = distinct !{!135, !13}
!136 = !{!133, !130}
!137 = distinct !{!137, !13}
!138 = !{!134, !130}
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
!157 = distinct !{!157, !13}
