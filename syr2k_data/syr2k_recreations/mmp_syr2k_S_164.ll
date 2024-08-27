; ModuleID = 'syr2k_recreations//mmp_syr2k_S_164.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_164.c"
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
  %call848 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1700 = bitcast i8* %call1 to double*
  %polly.access.call1709 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2710 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1709, %call2
  %polly.access.call2729 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2729, %call1
  %2 = or i1 %0, %1
  %polly.access.call749 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call749, %call2
  %4 = icmp ule i8* %polly.access.call2729, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call749, %call1
  %8 = icmp ule i8* %polly.access.call1709, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header834, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1168 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1167 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1166 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1165 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1165, %scevgep1168
  %bound1 = icmp ult i8* %scevgep1167, %scevgep1166
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
  br i1 %exitcond18.not.i, label %vector.ph1172, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1172:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1179 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1180 = shufflevector <4 x i64> %broadcast.splatinsert1179, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1171

vector.body1171:                                  ; preds = %vector.body1171, %vector.ph1172
  %index1173 = phi i64 [ 0, %vector.ph1172 ], [ %index.next1174, %vector.body1171 ]
  %vec.ind1177 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1172 ], [ %vec.ind.next1178, %vector.body1171 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1177, %broadcast.splat1180
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call848, i64 %indvars.iv7.i, i64 %index1173
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1174 = add i64 %index1173, 4
  %vec.ind.next1178 = add <4 x i64> %vec.ind1177, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1174, 80
  br i1 %40, label %for.inc41.i, label %vector.body1171, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1171
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1172, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit895.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start495, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1584, label %vector.ph1454

vector.ph1454:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1453

vector.body1453:                                  ; preds = %vector.body1453, %vector.ph1454
  %index1455 = phi i64 [ 0, %vector.ph1454 ], [ %index.next1456, %vector.body1453 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call848, i64 %indvars.iv21.i, i64 %index1455
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1456 = add i64 %index1455, 4
  %46 = icmp eq i64 %index.next1456, %n.vec
  br i1 %46, label %middle.block1451, label %vector.body1453, !llvm.loop !18

middle.block1451:                                 ; preds = %vector.body1453
  %cmp.n1458 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1458, label %for.inc6.i, label %for.body3.i46.preheader1584

for.body3.i46.preheader1584:                      ; preds = %for.body3.i46.preheader, %middle.block1451
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1451 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1584, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1584 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call848, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1451, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call848, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !45

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting496
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start292, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1492 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1492, label %for.body3.i60.preheader1582, label %vector.ph1493

vector.ph1493:                                    ; preds = %for.body3.i60.preheader
  %n.vec1495 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1491

vector.body1491:                                  ; preds = %vector.body1491, %vector.ph1493
  %index1496 = phi i64 [ 0, %vector.ph1493 ], [ %index.next1497, %vector.body1491 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call848, i64 %indvars.iv21.i52, i64 %index1496
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1500 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1500, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1497 = add i64 %index1496, 4
  %57 = icmp eq i64 %index.next1497, %n.vec1495
  br i1 %57, label %middle.block1489, label %vector.body1491, !llvm.loop !57

middle.block1489:                                 ; preds = %vector.body1491
  %cmp.n1499 = icmp eq i64 %indvars.iv21.i52, %n.vec1495
  br i1 %cmp.n1499, label %for.inc6.i63, label %for.body3.i60.preheader1582

for.body3.i60.preheader1582:                      ; preds = %for.body3.i60.preheader, %middle.block1489
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1495, %middle.block1489 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1582, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1582 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call848, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1489, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call848, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !45

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting293
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1537 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1537, label %for.body3.i99.preheader1580, label %vector.ph1538

vector.ph1538:                                    ; preds = %for.body3.i99.preheader
  %n.vec1540 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1536

vector.body1536:                                  ; preds = %vector.body1536, %vector.ph1538
  %index1541 = phi i64 [ 0, %vector.ph1538 ], [ %index.next1542, %vector.body1536 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call848, i64 %indvars.iv21.i91, i64 %index1541
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1545 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1545, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1542 = add i64 %index1541, 4
  %68 = icmp eq i64 %index.next1542, %n.vec1540
  br i1 %68, label %middle.block1534, label %vector.body1536, !llvm.loop !59

middle.block1534:                                 ; preds = %vector.body1536
  %cmp.n1544 = icmp eq i64 %indvars.iv21.i91, %n.vec1540
  br i1 %cmp.n1544, label %for.inc6.i102, label %for.body3.i99.preheader1580

for.body3.i99.preheader1580:                      ; preds = %for.body3.i99.preheader, %middle.block1534
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1540, %middle.block1534 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1580, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1580 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call848, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1534, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call848, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !45

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !61
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call848, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !63

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !64

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall136 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1549 = phi i64 [ %indvar.next1550, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1549, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1551 = icmp ult i64 %88, 4
  br i1 %min.iters.check1551, label %polly.loop_header192.preheader, label %vector.ph1552

vector.ph1552:                                    ; preds = %polly.loop_header
  %n.vec1554 = and i64 %88, -4
  br label %vector.body1548

vector.body1548:                                  ; preds = %vector.body1548, %vector.ph1552
  %index1555 = phi i64 [ 0, %vector.ph1552 ], [ %index.next1556, %vector.body1548 ]
  %90 = shl nuw nsw i64 %index1555, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1559 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1559, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1556 = add i64 %index1555, 4
  %95 = icmp eq i64 %index.next1556, %n.vec1554
  br i1 %95, label %middle.block1546, label %vector.body1548, !llvm.loop !72

middle.block1546:                                 ; preds = %vector.body1548
  %cmp.n1558 = icmp eq i64 %88, %n.vec1554
  br i1 %cmp.n1558, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1546
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1554, %middle.block1546 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1546
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1031.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1550 = add i64 %indvar1549, 1
  br i1 %exitcond1031.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1030.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1030.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 80
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1029.not = icmp eq i64 %polly.indvar_next204, 60
  br i1 %exitcond1029.not, label %polly.loop_header216, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 60
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2710, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !69, !noalias !75
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1028.not = icmp eq i64 %polly.indvar_next210, 80
  br i1 %exitcond1028.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = shl nuw nsw i64 %polly.indvar219, 3
  %98 = lshr i64 %polly.indvar219, 3
  %99 = shl nsw i64 %polly.indvar219, 3
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %exitcond1027.not = icmp eq i64 %polly.indvar_next220, 10
  br i1 %exitcond1027.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %polly.loop_exit230 ], [ %indvars.iv, %polly.loop_header216 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit230 ], [ 0, %polly.loop_header216 ]
  %100 = mul nsw i64 %polly.indvar225, -64
  %101 = add i64 %97, %100
  %102 = shl nsw i64 %polly.indvar225, 6
  %103 = sub nsw i64 %99, %102
  %104 = icmp eq i64 %polly.indvar225, 0
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit259
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next1017 = add nsw i64 %indvars.iv1016, -64
  %exitcond1026.not = icmp eq i64 %polly.indvar225, %98
  br i1 %exitcond1026.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit259, %polly.loop_header222
  %indvars.iv1018 = phi i64 [ %indvars.iv.next1019, %polly.loop_exit259 ], [ %indvars.iv1016, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit259 ], [ 0, %polly.loop_header222 ]
  %105 = add i64 %101, %polly.indvar231
  %smin1563 = call i64 @llvm.smin.i64(i64 %105, i64 63)
  %106 = add nsw i64 %smin1563, 1
  %smin1022 = call i64 @llvm.smin.i64(i64 %indvars.iv1018, i64 63)
  %107 = add nsw i64 %polly.indvar231, %103
  %polly.loop_guard1154 = icmp sgt i64 %107, -1
  %108 = add nuw nsw i64 %polly.indvar231, %99
  %109 = icmp ugt i64 %108, 63
  %110 = and i1 %104, %109
  %polly.access.mul.call1251 = mul nuw nsw i64 %108, 60
  br i1 %polly.loop_guard1154, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.merge.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.merge.us ], [ 0, %polly.loop_header228 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 80
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header234.us ]
  %111 = add nuw nsw i64 %polly.indvar243.us, %102
  %polly.access.mul.call1247.us = mul nuw nsw i64 %111, 60
  %polly.access.add.call1248.us = add nuw nsw i64 %polly.access.mul.call1247.us, %polly.indvar237.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1700, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar243.us, %smin1022
  br i1 %exitcond1020.not, label %polly.cond.loopexit.us, label %polly.loop_header240.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1252.us = add nuw nsw i64 %polly.indvar237.us, %polly.access.mul.call1251
  %polly.access.call1253.us = getelementptr double, double* %polly.access.cast.call1700, i64 %polly.access.add.call1252.us
  %polly.access.call1253.load.us = load double, double* %polly.access.call1253.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1255.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %108
  %polly.access.Packed_MemRef_call1256.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255.us
  store double %polly.access.call1253.load.us, double* %polly.access.Packed_MemRef_call1256.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1021.not = icmp eq i64 %polly.indvar_next238.us, 60
  br i1 %exitcond1021.not, label %polly.loop_header257.preheader, label %polly.loop_header234.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header240.us
  br i1 %110, label %polly.then.us, label %polly.merge.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %110, label %polly.loop_header234.us925, label %polly.loop_exit259

polly.loop_header234.us925:                       ; preds = %polly.loop_header228.split, %polly.loop_header234.us925
  %polly.indvar237.us926 = phi i64 [ %polly.indvar_next238.us946, %polly.loop_header234.us925 ], [ 0, %polly.loop_header228.split ]
  %polly.access.add.call1252.us939 = add nuw nsw i64 %polly.indvar237.us926, %polly.access.mul.call1251
  %polly.access.call1253.us940 = getelementptr double, double* %polly.access.cast.call1700, i64 %polly.access.add.call1252.us939
  %polly.access.call1253.load.us941 = load double, double* %polly.access.call1253.us940, align 8, !alias.scope !68, !noalias !76
  %polly.access.mul.Packed_MemRef_call1254.us942 = mul nuw nsw i64 %polly.indvar237.us926, 80
  %polly.access.add.Packed_MemRef_call1255.us943 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1254.us942, %108
  %polly.access.Packed_MemRef_call1256.us944 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255.us943
  store double %polly.access.call1253.load.us941, double* %polly.access.Packed_MemRef_call1256.us944, align 8
  %polly.indvar_next238.us946 = add nuw nsw i64 %polly.indvar237.us926, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next238.us946, 60
  br i1 %exitcond.not, label %polly.loop_header257.preheader, label %polly.loop_header234.us925

polly.loop_exit259:                               ; preds = %polly.loop_exit266.loopexit.us, %polly.loop_header228.split, %polly.loop_header257.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1019 = add nsw i64 %indvars.iv1018, 1
  %exitcond1025.not = icmp eq i64 %polly.indvar_next232, 8
  br i1 %exitcond1025.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header257.preheader:                   ; preds = %polly.loop_header234.us925, %polly.merge.us
  %112 = mul nuw nsw i64 %108, 640
  br i1 %polly.loop_guard1154, label %polly.loop_header257.us, label %polly.loop_exit259

polly.loop_header257.us:                          ; preds = %polly.loop_header257.preheader, %polly.loop_exit266.loopexit.us
  %polly.indvar260.us = phi i64 [ %polly.indvar_next261.us, %polly.loop_exit266.loopexit.us ], [ 0, %polly.loop_header257.preheader ]
  %polly.access.mul.Packed_MemRef_call1271.us = mul nuw nsw i64 %polly.indvar260.us, 80
  %polly.access.add.Packed_MemRef_call2276.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1271.us, %108
  %polly.access.Packed_MemRef_call2277.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2276.us
  %_p_scalar_278.us = load double, double* %polly.access.Packed_MemRef_call2277.us, align 8
  %polly.access.add.Packed_MemRef_call1284.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1271.us, %107
  %polly.access.Packed_MemRef_call1285.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call1285.us, align 8
  %min.iters.check1564 = icmp ult i64 %106, 4
  br i1 %min.iters.check1564, label %polly.loop_header264.us.preheader, label %vector.ph1565

vector.ph1565:                                    ; preds = %polly.loop_header257.us
  %n.vec1567 = and i64 %106, -4
  %broadcast.splatinsert1573 = insertelement <4 x double> poison, double %_p_scalar_278.us, i32 0
  %broadcast.splat1574 = shufflevector <4 x double> %broadcast.splatinsert1573, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1576 = insertelement <4 x double> poison, double %_p_scalar_286.us, i32 0
  %broadcast.splat1577 = shufflevector <4 x double> %broadcast.splatinsert1576, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1562

vector.body1562:                                  ; preds = %vector.body1562, %vector.ph1565
  %index1568 = phi i64 [ 0, %vector.ph1565 ], [ %index.next1569, %vector.body1562 ]
  %113 = add nuw nsw i64 %index1568, %102
  %114 = add nuw nsw i64 %index1568, %polly.access.mul.Packed_MemRef_call1271.us
  %115 = getelementptr double, double* %Packed_MemRef_call1, i64 %114
  %116 = bitcast double* %115 to <4 x double>*
  %wide.load1572 = load <4 x double>, <4 x double>* %116, align 8
  %117 = fmul fast <4 x double> %broadcast.splat1574, %wide.load1572
  %118 = add nuw nsw i64 %113, %polly.access.mul.Packed_MemRef_call1271.us
  %119 = getelementptr double, double* %Packed_MemRef_call2, i64 %118
  %120 = bitcast double* %119 to <4 x double>*
  %wide.load1575 = load <4 x double>, <4 x double>* %120, align 8
  %121 = fmul fast <4 x double> %broadcast.splat1577, %wide.load1575
  %122 = shl i64 %113, 3
  %123 = add nuw nsw i64 %122, %112
  %124 = getelementptr i8, i8* %call, i64 %123
  %125 = bitcast i8* %124 to <4 x double>*
  %wide.load1578 = load <4 x double>, <4 x double>* %125, align 8, !alias.scope !65, !noalias !67
  %126 = fadd fast <4 x double> %121, %117
  %127 = fmul fast <4 x double> %126, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %128 = fadd fast <4 x double> %127, %wide.load1578
  %129 = bitcast i8* %124 to <4 x double>*
  store <4 x double> %128, <4 x double>* %129, align 8, !alias.scope !65, !noalias !67
  %index.next1569 = add i64 %index1568, 4
  %130 = icmp eq i64 %index.next1569, %n.vec1567
  br i1 %130, label %middle.block1560, label %vector.body1562, !llvm.loop !77

middle.block1560:                                 ; preds = %vector.body1562
  %cmp.n1571 = icmp eq i64 %106, %n.vec1567
  br i1 %cmp.n1571, label %polly.loop_exit266.loopexit.us, label %polly.loop_header264.us.preheader

polly.loop_header264.us.preheader:                ; preds = %polly.loop_header257.us, %middle.block1560
  %polly.indvar268.us.ph = phi i64 [ 0, %polly.loop_header257.us ], [ %n.vec1567, %middle.block1560 ]
  br label %polly.loop_header264.us

polly.loop_header264.us:                          ; preds = %polly.loop_header264.us.preheader, %polly.loop_header264.us
  %polly.indvar268.us = phi i64 [ %polly.indvar_next269.us, %polly.loop_header264.us ], [ %polly.indvar268.us.ph, %polly.loop_header264.us.preheader ]
  %131 = add nuw nsw i64 %polly.indvar268.us, %102
  %polly.access.add.Packed_MemRef_call1272.us = add nuw nsw i64 %polly.indvar268.us, %polly.access.mul.Packed_MemRef_call1271.us
  %polly.access.Packed_MemRef_call1273.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1272.us
  %_p_scalar_274.us = load double, double* %polly.access.Packed_MemRef_call1273.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_278.us, %_p_scalar_274.us
  %polly.access.add.Packed_MemRef_call2280.us = add nuw nsw i64 %131, %polly.access.mul.Packed_MemRef_call1271.us
  %polly.access.Packed_MemRef_call2281.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2280.us
  %_p_scalar_282.us = load double, double* %polly.access.Packed_MemRef_call2281.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_286.us, %_p_scalar_282.us
  %132 = shl i64 %131, 3
  %133 = add nuw nsw i64 %132, %112
  %scevgep287.us = getelementptr i8, i8* %call, i64 %133
  %scevgep287288.us = bitcast i8* %scevgep287.us to double*
  %_p_scalar_289.us = load double, double* %scevgep287288.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_289.us
  store double %p_add42.i118.us, double* %scevgep287288.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next269.us = add nuw nsw i64 %polly.indvar268.us, 1
  %exitcond1023.not = icmp eq i64 %polly.indvar268.us, %smin1022
  br i1 %exitcond1023.not, label %polly.loop_exit266.loopexit.us, label %polly.loop_header264.us, !llvm.loop !78

polly.loop_exit266.loopexit.us:                   ; preds = %polly.loop_header264.us, %middle.block1560
  %polly.indvar_next261.us = add nuw nsw i64 %polly.indvar260.us, 1
  %exitcond1024.not = icmp eq i64 %polly.indvar_next261.us, 60
  br i1 %exitcond1024.not, label %polly.loop_exit259, label %polly.loop_header257.us

polly.start292:                                   ; preds = %kernel_syr2k.exit
  %malloccall294 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall296 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header380

polly.exiting293:                                 ; preds = %polly.loop_exit421
  tail call void @free(i8* %malloccall294)
  tail call void @free(i8* %malloccall296)
  br label %kernel_syr2k.exit90

polly.loop_header380:                             ; preds = %polly.loop_exit388, %polly.start292
  %indvar1504 = phi i64 [ %indvar.next1505, %polly.loop_exit388 ], [ 0, %polly.start292 ]
  %polly.indvar383 = phi i64 [ %polly.indvar_next384, %polly.loop_exit388 ], [ 1, %polly.start292 ]
  %134 = add i64 %indvar1504, 1
  %135 = mul nuw nsw i64 %polly.indvar383, 640
  %scevgep392 = getelementptr i8, i8* %call, i64 %135
  %min.iters.check1506 = icmp ult i64 %134, 4
  br i1 %min.iters.check1506, label %polly.loop_header386.preheader, label %vector.ph1507

vector.ph1507:                                    ; preds = %polly.loop_header380
  %n.vec1509 = and i64 %134, -4
  br label %vector.body1503

vector.body1503:                                  ; preds = %vector.body1503, %vector.ph1507
  %index1510 = phi i64 [ 0, %vector.ph1507 ], [ %index.next1511, %vector.body1503 ]
  %136 = shl nuw nsw i64 %index1510, 3
  %137 = getelementptr i8, i8* %scevgep392, i64 %136
  %138 = bitcast i8* %137 to <4 x double>*
  %wide.load1514 = load <4 x double>, <4 x double>* %138, align 8, !alias.scope !79, !noalias !81
  %139 = fmul fast <4 x double> %wide.load1514, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %140 = bitcast i8* %137 to <4 x double>*
  store <4 x double> %139, <4 x double>* %140, align 8, !alias.scope !79, !noalias !81
  %index.next1511 = add i64 %index1510, 4
  %141 = icmp eq i64 %index.next1511, %n.vec1509
  br i1 %141, label %middle.block1501, label %vector.body1503, !llvm.loop !86

middle.block1501:                                 ; preds = %vector.body1503
  %cmp.n1513 = icmp eq i64 %134, %n.vec1509
  br i1 %cmp.n1513, label %polly.loop_exit388, label %polly.loop_header386.preheader

polly.loop_header386.preheader:                   ; preds = %polly.loop_header380, %middle.block1501
  %polly.indvar389.ph = phi i64 [ 0, %polly.loop_header380 ], [ %n.vec1509, %middle.block1501 ]
  br label %polly.loop_header386

polly.loop_exit388:                               ; preds = %polly.loop_header386, %middle.block1501
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar_next384, 80
  %indvar.next1505 = add i64 %indvar1504, 1
  br i1 %exitcond1051.not, label %polly.loop_header396.preheader, label %polly.loop_header380

polly.loop_header396.preheader:                   ; preds = %polly.loop_exit388
  %Packed_MemRef_call1295 = bitcast i8* %malloccall294 to double*
  %Packed_MemRef_call2297 = bitcast i8* %malloccall296 to double*
  br label %polly.loop_header396

polly.loop_header386:                             ; preds = %polly.loop_header386.preheader, %polly.loop_header386
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_header386 ], [ %polly.indvar389.ph, %polly.loop_header386.preheader ]
  %142 = shl nuw nsw i64 %polly.indvar389, 3
  %scevgep393 = getelementptr i8, i8* %scevgep392, i64 %142
  %scevgep393394 = bitcast i8* %scevgep393 to double*
  %_p_scalar_395 = load double, double* %scevgep393394, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_395, 1.200000e+00
  store double %p_mul.i57, double* %scevgep393394, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar_next390, %polly.indvar383
  br i1 %exitcond1050.not, label %polly.loop_exit388, label %polly.loop_header386, !llvm.loop !87

polly.loop_header396:                             ; preds = %polly.loop_header396.preheader, %polly.loop_exit404
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit404 ], [ 0, %polly.loop_header396.preheader ]
  %polly.access.mul.Packed_MemRef_call2297 = mul nuw nsw i64 %polly.indvar399, 80
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_header402
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar_next400, 60
  br i1 %exitcond1049.not, label %polly.loop_header412, label %polly.loop_header396

polly.loop_header402:                             ; preds = %polly.loop_header402, %polly.loop_header396
  %polly.indvar405 = phi i64 [ 0, %polly.loop_header396 ], [ %polly.indvar_next406, %polly.loop_header402 ]
  %polly.access.mul.call2409 = mul nuw nsw i64 %polly.indvar405, 60
  %polly.access.add.call2410 = add nuw nsw i64 %polly.access.mul.call2409, %polly.indvar399
  %polly.access.call2411 = getelementptr double, double* %polly.access.cast.call2710, i64 %polly.access.add.call2410
  %polly.access.call2411.load = load double, double* %polly.access.call2411, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call2297 = add nuw nsw i64 %polly.indvar405, %polly.access.mul.Packed_MemRef_call2297
  %polly.access.Packed_MemRef_call2297 = getelementptr double, double* %Packed_MemRef_call2297, i64 %polly.access.add.Packed_MemRef_call2297
  store double %polly.access.call2411.load, double* %polly.access.Packed_MemRef_call2297, align 8
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar_next406, 80
  br i1 %exitcond1048.not, label %polly.loop_exit404, label %polly.loop_header402

polly.loop_header412:                             ; preds = %polly.loop_exit404, %polly.loop_exit421
  %indvars.iv1033 = phi i64 [ %indvars.iv.next1034, %polly.loop_exit421 ], [ 0, %polly.loop_exit404 ]
  %polly.indvar415 = phi i64 [ %polly.indvar_next416, %polly.loop_exit421 ], [ 0, %polly.loop_exit404 ]
  %143 = shl nuw nsw i64 %polly.indvar415, 3
  %144 = lshr i64 %polly.indvar415, 3
  %145 = shl nsw i64 %polly.indvar415, 3
  br label %polly.loop_header419

polly.loop_exit421:                               ; preds = %polly.loop_exit427
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %indvars.iv.next1034 = add nuw nsw i64 %indvars.iv1033, 8
  %exitcond1047.not = icmp eq i64 %polly.indvar_next416, 10
  br i1 %exitcond1047.not, label %polly.exiting293, label %polly.loop_header412

polly.loop_header419:                             ; preds = %polly.loop_exit427, %polly.loop_header412
  %indvars.iv1035 = phi i64 [ %indvars.iv.next1036, %polly.loop_exit427 ], [ %indvars.iv1033, %polly.loop_header412 ]
  %polly.indvar422 = phi i64 [ %polly.indvar_next423, %polly.loop_exit427 ], [ 0, %polly.loop_header412 ]
  %146 = mul nsw i64 %polly.indvar422, -64
  %147 = add i64 %143, %146
  %148 = shl nsw i64 %polly.indvar422, 6
  %149 = sub nsw i64 %145, %148
  %150 = icmp eq i64 %polly.indvar422, 0
  br label %polly.loop_header425

polly.loop_exit427:                               ; preds = %polly.loop_exit462
  %polly.indvar_next423 = add nuw nsw i64 %polly.indvar422, 1
  %indvars.iv.next1036 = add nsw i64 %indvars.iv1035, -64
  %exitcond1046.not = icmp eq i64 %polly.indvar422, %144
  br i1 %exitcond1046.not, label %polly.loop_exit421, label %polly.loop_header419

polly.loop_header425:                             ; preds = %polly.loop_exit462, %polly.loop_header419
  %indvars.iv1037 = phi i64 [ %indvars.iv.next1038, %polly.loop_exit462 ], [ %indvars.iv1035, %polly.loop_header419 ]
  %polly.indvar428 = phi i64 [ %polly.indvar_next429, %polly.loop_exit462 ], [ 0, %polly.loop_header419 ]
  %151 = add i64 %147, %polly.indvar428
  %smin1518 = call i64 @llvm.smin.i64(i64 %151, i64 63)
  %152 = add nsw i64 %smin1518, 1
  %smin1042 = call i64 @llvm.smin.i64(i64 %indvars.iv1037, i64 63)
  %153 = add nsw i64 %polly.indvar428, %149
  %polly.loop_guard4411155 = icmp sgt i64 %153, -1
  %154 = add nuw nsw i64 %polly.indvar428, %145
  %155 = icmp ugt i64 %154, 63
  %156 = and i1 %150, %155
  %polly.access.mul.call1454 = mul nuw nsw i64 %154, 60
  br i1 %polly.loop_guard4411155, label %polly.loop_header431.us, label %polly.loop_header425.split

polly.loop_header431.us:                          ; preds = %polly.loop_header425, %polly.merge450.us
  %polly.indvar434.us = phi i64 [ %polly.indvar_next435.us, %polly.merge450.us ], [ 0, %polly.loop_header425 ]
  %polly.access.mul.Packed_MemRef_call1295.us = mul nuw nsw i64 %polly.indvar434.us, 80
  br label %polly.loop_header438.us

polly.loop_header438.us:                          ; preds = %polly.loop_header431.us, %polly.loop_header438.us
  %polly.indvar442.us = phi i64 [ %polly.indvar_next443.us, %polly.loop_header438.us ], [ 0, %polly.loop_header431.us ]
  %157 = add nuw nsw i64 %polly.indvar442.us, %148
  %polly.access.mul.call1446.us = mul nuw nsw i64 %157, 60
  %polly.access.add.call1447.us = add nuw nsw i64 %polly.access.mul.call1446.us, %polly.indvar434.us
  %polly.access.call1448.us = getelementptr double, double* %polly.access.cast.call1700, i64 %polly.access.add.call1447.us
  %polly.access.call1448.load.us = load double, double* %polly.access.call1448.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1295.us = add nuw nsw i64 %polly.indvar442.us, %polly.access.mul.Packed_MemRef_call1295.us
  %polly.access.Packed_MemRef_call1295.us = getelementptr double, double* %Packed_MemRef_call1295, i64 %polly.access.add.Packed_MemRef_call1295.us
  store double %polly.access.call1448.load.us, double* %polly.access.Packed_MemRef_call1295.us, align 8
  %polly.indvar_next443.us = add nuw nsw i64 %polly.indvar442.us, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar442.us, %smin1042
  br i1 %exitcond1040.not, label %polly.cond449.loopexit.us, label %polly.loop_header438.us

polly.then451.us:                                 ; preds = %polly.cond449.loopexit.us
  %polly.access.add.call1455.us = add nuw nsw i64 %polly.indvar434.us, %polly.access.mul.call1454
  %polly.access.call1456.us = getelementptr double, double* %polly.access.cast.call1700, i64 %polly.access.add.call1455.us
  %polly.access.call1456.load.us = load double, double* %polly.access.call1456.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1295458.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1295.us, %154
  %polly.access.Packed_MemRef_call1295459.us = getelementptr double, double* %Packed_MemRef_call1295, i64 %polly.access.add.Packed_MemRef_call1295458.us
  store double %polly.access.call1456.load.us, double* %polly.access.Packed_MemRef_call1295459.us, align 8
  br label %polly.merge450.us

polly.merge450.us:                                ; preds = %polly.then451.us, %polly.cond449.loopexit.us
  %polly.indvar_next435.us = add nuw nsw i64 %polly.indvar434.us, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar_next435.us, 60
  br i1 %exitcond1041.not, label %polly.loop_header460.preheader, label %polly.loop_header431.us

polly.cond449.loopexit.us:                        ; preds = %polly.loop_header438.us
  br i1 %156, label %polly.then451.us, label %polly.merge450.us

polly.loop_header425.split:                       ; preds = %polly.loop_header425
  br i1 %156, label %polly.loop_header431.us951, label %polly.loop_exit462

polly.loop_header431.us951:                       ; preds = %polly.loop_header425.split, %polly.loop_header431.us951
  %polly.indvar434.us952 = phi i64 [ %polly.indvar_next435.us972, %polly.loop_header431.us951 ], [ 0, %polly.loop_header425.split ]
  %polly.access.add.call1455.us965 = add nuw nsw i64 %polly.indvar434.us952, %polly.access.mul.call1454
  %polly.access.call1456.us966 = getelementptr double, double* %polly.access.cast.call1700, i64 %polly.access.add.call1455.us965
  %polly.access.call1456.load.us967 = load double, double* %polly.access.call1456.us966, align 8, !alias.scope !82, !noalias !89
  %polly.access.mul.Packed_MemRef_call1295457.us968 = mul nuw nsw i64 %polly.indvar434.us952, 80
  %polly.access.add.Packed_MemRef_call1295458.us969 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1295457.us968, %154
  %polly.access.Packed_MemRef_call1295459.us970 = getelementptr double, double* %Packed_MemRef_call1295, i64 %polly.access.add.Packed_MemRef_call1295458.us969
  store double %polly.access.call1456.load.us967, double* %polly.access.Packed_MemRef_call1295459.us970, align 8
  %polly.indvar_next435.us972 = add nuw nsw i64 %polly.indvar434.us952, 1
  %exitcond1032.not = icmp eq i64 %polly.indvar_next435.us972, 60
  br i1 %exitcond1032.not, label %polly.loop_header460.preheader, label %polly.loop_header431.us951

polly.loop_exit462:                               ; preds = %polly.loop_exit469.loopexit.us, %polly.loop_header425.split, %polly.loop_header460.preheader
  %polly.indvar_next429 = add nuw nsw i64 %polly.indvar428, 1
  %indvars.iv.next1038 = add nsw i64 %indvars.iv1037, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar_next429, 8
  br i1 %exitcond1045.not, label %polly.loop_exit427, label %polly.loop_header425

polly.loop_header460.preheader:                   ; preds = %polly.loop_header431.us951, %polly.merge450.us
  %158 = mul nuw nsw i64 %154, 640
  br i1 %polly.loop_guard4411155, label %polly.loop_header460.us, label %polly.loop_exit462

polly.loop_header460.us:                          ; preds = %polly.loop_header460.preheader, %polly.loop_exit469.loopexit.us
  %polly.indvar463.us = phi i64 [ %polly.indvar_next464.us, %polly.loop_exit469.loopexit.us ], [ 0, %polly.loop_header460.preheader ]
  %polly.access.mul.Packed_MemRef_call1295474.us = mul nuw nsw i64 %polly.indvar463.us, 80
  %polly.access.add.Packed_MemRef_call2297479.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1295474.us, %154
  %polly.access.Packed_MemRef_call2297480.us = getelementptr double, double* %Packed_MemRef_call2297, i64 %polly.access.add.Packed_MemRef_call2297479.us
  %_p_scalar_481.us = load double, double* %polly.access.Packed_MemRef_call2297480.us, align 8
  %polly.access.add.Packed_MemRef_call1295487.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1295474.us, %153
  %polly.access.Packed_MemRef_call1295488.us = getelementptr double, double* %Packed_MemRef_call1295, i64 %polly.access.add.Packed_MemRef_call1295487.us
  %_p_scalar_489.us = load double, double* %polly.access.Packed_MemRef_call1295488.us, align 8
  %min.iters.check1519 = icmp ult i64 %152, 4
  br i1 %min.iters.check1519, label %polly.loop_header467.us.preheader, label %vector.ph1520

vector.ph1520:                                    ; preds = %polly.loop_header460.us
  %n.vec1522 = and i64 %152, -4
  %broadcast.splatinsert1528 = insertelement <4 x double> poison, double %_p_scalar_481.us, i32 0
  %broadcast.splat1529 = shufflevector <4 x double> %broadcast.splatinsert1528, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1531 = insertelement <4 x double> poison, double %_p_scalar_489.us, i32 0
  %broadcast.splat1532 = shufflevector <4 x double> %broadcast.splatinsert1531, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1517

vector.body1517:                                  ; preds = %vector.body1517, %vector.ph1520
  %index1523 = phi i64 [ 0, %vector.ph1520 ], [ %index.next1524, %vector.body1517 ]
  %159 = add nuw nsw i64 %index1523, %148
  %160 = add nuw nsw i64 %index1523, %polly.access.mul.Packed_MemRef_call1295474.us
  %161 = getelementptr double, double* %Packed_MemRef_call1295, i64 %160
  %162 = bitcast double* %161 to <4 x double>*
  %wide.load1527 = load <4 x double>, <4 x double>* %162, align 8
  %163 = fmul fast <4 x double> %broadcast.splat1529, %wide.load1527
  %164 = add nuw nsw i64 %159, %polly.access.mul.Packed_MemRef_call1295474.us
  %165 = getelementptr double, double* %Packed_MemRef_call2297, i64 %164
  %166 = bitcast double* %165 to <4 x double>*
  %wide.load1530 = load <4 x double>, <4 x double>* %166, align 8
  %167 = fmul fast <4 x double> %broadcast.splat1532, %wide.load1530
  %168 = shl i64 %159, 3
  %169 = add nuw nsw i64 %168, %158
  %170 = getelementptr i8, i8* %call, i64 %169
  %171 = bitcast i8* %170 to <4 x double>*
  %wide.load1533 = load <4 x double>, <4 x double>* %171, align 8, !alias.scope !79, !noalias !81
  %172 = fadd fast <4 x double> %167, %163
  %173 = fmul fast <4 x double> %172, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %174 = fadd fast <4 x double> %173, %wide.load1533
  %175 = bitcast i8* %170 to <4 x double>*
  store <4 x double> %174, <4 x double>* %175, align 8, !alias.scope !79, !noalias !81
  %index.next1524 = add i64 %index1523, 4
  %176 = icmp eq i64 %index.next1524, %n.vec1522
  br i1 %176, label %middle.block1515, label %vector.body1517, !llvm.loop !90

middle.block1515:                                 ; preds = %vector.body1517
  %cmp.n1526 = icmp eq i64 %152, %n.vec1522
  br i1 %cmp.n1526, label %polly.loop_exit469.loopexit.us, label %polly.loop_header467.us.preheader

polly.loop_header467.us.preheader:                ; preds = %polly.loop_header460.us, %middle.block1515
  %polly.indvar471.us.ph = phi i64 [ 0, %polly.loop_header460.us ], [ %n.vec1522, %middle.block1515 ]
  br label %polly.loop_header467.us

polly.loop_header467.us:                          ; preds = %polly.loop_header467.us.preheader, %polly.loop_header467.us
  %polly.indvar471.us = phi i64 [ %polly.indvar_next472.us, %polly.loop_header467.us ], [ %polly.indvar471.us.ph, %polly.loop_header467.us.preheader ]
  %177 = add nuw nsw i64 %polly.indvar471.us, %148
  %polly.access.add.Packed_MemRef_call1295475.us = add nuw nsw i64 %polly.indvar471.us, %polly.access.mul.Packed_MemRef_call1295474.us
  %polly.access.Packed_MemRef_call1295476.us = getelementptr double, double* %Packed_MemRef_call1295, i64 %polly.access.add.Packed_MemRef_call1295475.us
  %_p_scalar_477.us = load double, double* %polly.access.Packed_MemRef_call1295476.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_481.us, %_p_scalar_477.us
  %polly.access.add.Packed_MemRef_call2297483.us = add nuw nsw i64 %177, %polly.access.mul.Packed_MemRef_call1295474.us
  %polly.access.Packed_MemRef_call2297484.us = getelementptr double, double* %Packed_MemRef_call2297, i64 %polly.access.add.Packed_MemRef_call2297483.us
  %_p_scalar_485.us = load double, double* %polly.access.Packed_MemRef_call2297484.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_489.us, %_p_scalar_485.us
  %178 = shl i64 %177, 3
  %179 = add nuw nsw i64 %178, %158
  %scevgep490.us = getelementptr i8, i8* %call, i64 %179
  %scevgep490491.us = bitcast i8* %scevgep490.us to double*
  %_p_scalar_492.us = load double, double* %scevgep490491.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_492.us
  store double %p_add42.i79.us, double* %scevgep490491.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next472.us = add nuw nsw i64 %polly.indvar471.us, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar471.us, %smin1042
  br i1 %exitcond1043.not, label %polly.loop_exit469.loopexit.us, label %polly.loop_header467.us, !llvm.loop !91

polly.loop_exit469.loopexit.us:                   ; preds = %polly.loop_header467.us, %middle.block1515
  %polly.indvar_next464.us = add nuw nsw i64 %polly.indvar463.us, 1
  %exitcond1044.not = icmp eq i64 %polly.indvar_next464.us, 60
  br i1 %exitcond1044.not, label %polly.loop_exit462, label %polly.loop_header460.us

polly.start495:                                   ; preds = %init_array.exit
  %malloccall497 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall499 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header583

polly.exiting496:                                 ; preds = %polly.loop_exit624
  tail call void @free(i8* %malloccall497)
  tail call void @free(i8* %malloccall499)
  br label %kernel_syr2k.exit

polly.loop_header583:                             ; preds = %polly.loop_exit591, %polly.start495
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit591 ], [ 0, %polly.start495 ]
  %polly.indvar586 = phi i64 [ %polly.indvar_next587, %polly.loop_exit591 ], [ 1, %polly.start495 ]
  %180 = add i64 %indvar, 1
  %181 = mul nuw nsw i64 %polly.indvar586, 640
  %scevgep595 = getelementptr i8, i8* %call, i64 %181
  %min.iters.check1462 = icmp ult i64 %180, 4
  br i1 %min.iters.check1462, label %polly.loop_header589.preheader, label %vector.ph1463

vector.ph1463:                                    ; preds = %polly.loop_header583
  %n.vec1465 = and i64 %180, -4
  br label %vector.body1461

vector.body1461:                                  ; preds = %vector.body1461, %vector.ph1463
  %index1466 = phi i64 [ 0, %vector.ph1463 ], [ %index.next1467, %vector.body1461 ]
  %182 = shl nuw nsw i64 %index1466, 3
  %183 = getelementptr i8, i8* %scevgep595, i64 %182
  %184 = bitcast i8* %183 to <4 x double>*
  %wide.load1470 = load <4 x double>, <4 x double>* %184, align 8, !alias.scope !92, !noalias !94
  %185 = fmul fast <4 x double> %wide.load1470, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %186 = bitcast i8* %183 to <4 x double>*
  store <4 x double> %185, <4 x double>* %186, align 8, !alias.scope !92, !noalias !94
  %index.next1467 = add i64 %index1466, 4
  %187 = icmp eq i64 %index.next1467, %n.vec1465
  br i1 %187, label %middle.block1459, label %vector.body1461, !llvm.loop !99

middle.block1459:                                 ; preds = %vector.body1461
  %cmp.n1469 = icmp eq i64 %180, %n.vec1465
  br i1 %cmp.n1469, label %polly.loop_exit591, label %polly.loop_header589.preheader

polly.loop_header589.preheader:                   ; preds = %polly.loop_header583, %middle.block1459
  %polly.indvar592.ph = phi i64 [ 0, %polly.loop_header583 ], [ %n.vec1465, %middle.block1459 ]
  br label %polly.loop_header589

polly.loop_exit591:                               ; preds = %polly.loop_header589, %middle.block1459
  %polly.indvar_next587 = add nuw nsw i64 %polly.indvar586, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar_next587, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1071.not, label %polly.loop_header599.preheader, label %polly.loop_header583

polly.loop_header599.preheader:                   ; preds = %polly.loop_exit591
  %Packed_MemRef_call1498 = bitcast i8* %malloccall497 to double*
  %Packed_MemRef_call2500 = bitcast i8* %malloccall499 to double*
  br label %polly.loop_header599

polly.loop_header589:                             ; preds = %polly.loop_header589.preheader, %polly.loop_header589
  %polly.indvar592 = phi i64 [ %polly.indvar_next593, %polly.loop_header589 ], [ %polly.indvar592.ph, %polly.loop_header589.preheader ]
  %188 = shl nuw nsw i64 %polly.indvar592, 3
  %scevgep596 = getelementptr i8, i8* %scevgep595, i64 %188
  %scevgep596597 = bitcast i8* %scevgep596 to double*
  %_p_scalar_598 = load double, double* %scevgep596597, align 8, !alias.scope !92, !noalias !94
  %p_mul.i = fmul fast double %_p_scalar_598, 1.200000e+00
  store double %p_mul.i, double* %scevgep596597, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next593 = add nuw nsw i64 %polly.indvar592, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar_next593, %polly.indvar586
  br i1 %exitcond1070.not, label %polly.loop_exit591, label %polly.loop_header589, !llvm.loop !100

polly.loop_header599:                             ; preds = %polly.loop_header599.preheader, %polly.loop_exit607
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_exit607 ], [ 0, %polly.loop_header599.preheader ]
  %polly.access.mul.Packed_MemRef_call2500 = mul nuw nsw i64 %polly.indvar602, 80
  br label %polly.loop_header605

polly.loop_exit607:                               ; preds = %polly.loop_header605
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %exitcond1069.not = icmp eq i64 %polly.indvar_next603, 60
  br i1 %exitcond1069.not, label %polly.loop_header615, label %polly.loop_header599

polly.loop_header605:                             ; preds = %polly.loop_header605, %polly.loop_header599
  %polly.indvar608 = phi i64 [ 0, %polly.loop_header599 ], [ %polly.indvar_next609, %polly.loop_header605 ]
  %polly.access.mul.call2612 = mul nuw nsw i64 %polly.indvar608, 60
  %polly.access.add.call2613 = add nuw nsw i64 %polly.access.mul.call2612, %polly.indvar602
  %polly.access.call2614 = getelementptr double, double* %polly.access.cast.call2710, i64 %polly.access.add.call2613
  %polly.access.call2614.load = load double, double* %polly.access.call2614, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2500 = add nuw nsw i64 %polly.indvar608, %polly.access.mul.Packed_MemRef_call2500
  %polly.access.Packed_MemRef_call2500 = getelementptr double, double* %Packed_MemRef_call2500, i64 %polly.access.add.Packed_MemRef_call2500
  store double %polly.access.call2614.load, double* %polly.access.Packed_MemRef_call2500, align 8
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond1068.not = icmp eq i64 %polly.indvar_next609, 80
  br i1 %exitcond1068.not, label %polly.loop_exit607, label %polly.loop_header605

polly.loop_header615:                             ; preds = %polly.loop_exit607, %polly.loop_exit624
  %indvars.iv1053 = phi i64 [ %indvars.iv.next1054, %polly.loop_exit624 ], [ 0, %polly.loop_exit607 ]
  %polly.indvar618 = phi i64 [ %polly.indvar_next619, %polly.loop_exit624 ], [ 0, %polly.loop_exit607 ]
  %189 = shl nuw nsw i64 %polly.indvar618, 3
  %190 = lshr i64 %polly.indvar618, 3
  %191 = shl nsw i64 %polly.indvar618, 3
  br label %polly.loop_header622

polly.loop_exit624:                               ; preds = %polly.loop_exit630
  %polly.indvar_next619 = add nuw nsw i64 %polly.indvar618, 1
  %indvars.iv.next1054 = add nuw nsw i64 %indvars.iv1053, 8
  %exitcond1067.not = icmp eq i64 %polly.indvar_next619, 10
  br i1 %exitcond1067.not, label %polly.exiting496, label %polly.loop_header615

polly.loop_header622:                             ; preds = %polly.loop_exit630, %polly.loop_header615
  %indvars.iv1055 = phi i64 [ %indvars.iv.next1056, %polly.loop_exit630 ], [ %indvars.iv1053, %polly.loop_header615 ]
  %polly.indvar625 = phi i64 [ %polly.indvar_next626, %polly.loop_exit630 ], [ 0, %polly.loop_header615 ]
  %192 = mul nsw i64 %polly.indvar625, -64
  %193 = add i64 %189, %192
  %194 = shl nsw i64 %polly.indvar625, 6
  %195 = sub nsw i64 %191, %194
  %196 = icmp eq i64 %polly.indvar625, 0
  br label %polly.loop_header628

polly.loop_exit630:                               ; preds = %polly.loop_exit665
  %polly.indvar_next626 = add nuw nsw i64 %polly.indvar625, 1
  %indvars.iv.next1056 = add nsw i64 %indvars.iv1055, -64
  %exitcond1066.not = icmp eq i64 %polly.indvar625, %190
  br i1 %exitcond1066.not, label %polly.loop_exit624, label %polly.loop_header622

polly.loop_header628:                             ; preds = %polly.loop_exit665, %polly.loop_header622
  %indvars.iv1057 = phi i64 [ %indvars.iv.next1058, %polly.loop_exit665 ], [ %indvars.iv1055, %polly.loop_header622 ]
  %polly.indvar631 = phi i64 [ %polly.indvar_next632, %polly.loop_exit665 ], [ 0, %polly.loop_header622 ]
  %197 = add i64 %193, %polly.indvar631
  %smin = call i64 @llvm.smin.i64(i64 %197, i64 63)
  %198 = add nsw i64 %smin, 1
  %smin1062 = call i64 @llvm.smin.i64(i64 %indvars.iv1057, i64 63)
  %199 = add nsw i64 %polly.indvar631, %195
  %polly.loop_guard6441156 = icmp sgt i64 %199, -1
  %200 = add nuw nsw i64 %polly.indvar631, %191
  %201 = icmp ugt i64 %200, 63
  %202 = and i1 %196, %201
  %polly.access.mul.call1657 = mul nuw nsw i64 %200, 60
  br i1 %polly.loop_guard6441156, label %polly.loop_header634.us, label %polly.loop_header628.split

polly.loop_header634.us:                          ; preds = %polly.loop_header628, %polly.merge653.us
  %polly.indvar637.us = phi i64 [ %polly.indvar_next638.us, %polly.merge653.us ], [ 0, %polly.loop_header628 ]
  %polly.access.mul.Packed_MemRef_call1498.us = mul nuw nsw i64 %polly.indvar637.us, 80
  br label %polly.loop_header641.us

polly.loop_header641.us:                          ; preds = %polly.loop_header634.us, %polly.loop_header641.us
  %polly.indvar645.us = phi i64 [ %polly.indvar_next646.us, %polly.loop_header641.us ], [ 0, %polly.loop_header634.us ]
  %203 = add nuw nsw i64 %polly.indvar645.us, %194
  %polly.access.mul.call1649.us = mul nuw nsw i64 %203, 60
  %polly.access.add.call1650.us = add nuw nsw i64 %polly.access.mul.call1649.us, %polly.indvar637.us
  %polly.access.call1651.us = getelementptr double, double* %polly.access.cast.call1700, i64 %polly.access.add.call1650.us
  %polly.access.call1651.load.us = load double, double* %polly.access.call1651.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1498.us = add nuw nsw i64 %polly.indvar645.us, %polly.access.mul.Packed_MemRef_call1498.us
  %polly.access.Packed_MemRef_call1498.us = getelementptr double, double* %Packed_MemRef_call1498, i64 %polly.access.add.Packed_MemRef_call1498.us
  store double %polly.access.call1651.load.us, double* %polly.access.Packed_MemRef_call1498.us, align 8
  %polly.indvar_next646.us = add nuw nsw i64 %polly.indvar645.us, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar645.us, %smin1062
  br i1 %exitcond1060.not, label %polly.cond652.loopexit.us, label %polly.loop_header641.us

polly.then654.us:                                 ; preds = %polly.cond652.loopexit.us
  %polly.access.add.call1658.us = add nuw nsw i64 %polly.indvar637.us, %polly.access.mul.call1657
  %polly.access.call1659.us = getelementptr double, double* %polly.access.cast.call1700, i64 %polly.access.add.call1658.us
  %polly.access.call1659.load.us = load double, double* %polly.access.call1659.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1498661.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1498.us, %200
  %polly.access.Packed_MemRef_call1498662.us = getelementptr double, double* %Packed_MemRef_call1498, i64 %polly.access.add.Packed_MemRef_call1498661.us
  store double %polly.access.call1659.load.us, double* %polly.access.Packed_MemRef_call1498662.us, align 8
  br label %polly.merge653.us

polly.merge653.us:                                ; preds = %polly.then654.us, %polly.cond652.loopexit.us
  %polly.indvar_next638.us = add nuw nsw i64 %polly.indvar637.us, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar_next638.us, 60
  br i1 %exitcond1061.not, label %polly.loop_header663.preheader, label %polly.loop_header634.us

polly.cond652.loopexit.us:                        ; preds = %polly.loop_header641.us
  br i1 %202, label %polly.then654.us, label %polly.merge653.us

polly.loop_header628.split:                       ; preds = %polly.loop_header628
  br i1 %202, label %polly.loop_header634.us977, label %polly.loop_exit665

polly.loop_header634.us977:                       ; preds = %polly.loop_header628.split, %polly.loop_header634.us977
  %polly.indvar637.us978 = phi i64 [ %polly.indvar_next638.us998, %polly.loop_header634.us977 ], [ 0, %polly.loop_header628.split ]
  %polly.access.add.call1658.us991 = add nuw nsw i64 %polly.indvar637.us978, %polly.access.mul.call1657
  %polly.access.call1659.us992 = getelementptr double, double* %polly.access.cast.call1700, i64 %polly.access.add.call1658.us991
  %polly.access.call1659.load.us993 = load double, double* %polly.access.call1659.us992, align 8, !alias.scope !95, !noalias !102
  %polly.access.mul.Packed_MemRef_call1498660.us994 = mul nuw nsw i64 %polly.indvar637.us978, 80
  %polly.access.add.Packed_MemRef_call1498661.us995 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1498660.us994, %200
  %polly.access.Packed_MemRef_call1498662.us996 = getelementptr double, double* %Packed_MemRef_call1498, i64 %polly.access.add.Packed_MemRef_call1498661.us995
  store double %polly.access.call1659.load.us993, double* %polly.access.Packed_MemRef_call1498662.us996, align 8
  %polly.indvar_next638.us998 = add nuw nsw i64 %polly.indvar637.us978, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next638.us998, 60
  br i1 %exitcond1052.not, label %polly.loop_header663.preheader, label %polly.loop_header634.us977

polly.loop_exit665:                               ; preds = %polly.loop_exit672.loopexit.us, %polly.loop_header628.split, %polly.loop_header663.preheader
  %polly.indvar_next632 = add nuw nsw i64 %polly.indvar631, 1
  %indvars.iv.next1058 = add nsw i64 %indvars.iv1057, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar_next632, 8
  br i1 %exitcond1065.not, label %polly.loop_exit630, label %polly.loop_header628

polly.loop_header663.preheader:                   ; preds = %polly.loop_header634.us977, %polly.merge653.us
  %204 = mul nuw nsw i64 %200, 640
  br i1 %polly.loop_guard6441156, label %polly.loop_header663.us, label %polly.loop_exit665

polly.loop_header663.us:                          ; preds = %polly.loop_header663.preheader, %polly.loop_exit672.loopexit.us
  %polly.indvar666.us = phi i64 [ %polly.indvar_next667.us, %polly.loop_exit672.loopexit.us ], [ 0, %polly.loop_header663.preheader ]
  %polly.access.mul.Packed_MemRef_call1498677.us = mul nuw nsw i64 %polly.indvar666.us, 80
  %polly.access.add.Packed_MemRef_call2500682.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1498677.us, %200
  %polly.access.Packed_MemRef_call2500683.us = getelementptr double, double* %Packed_MemRef_call2500, i64 %polly.access.add.Packed_MemRef_call2500682.us
  %_p_scalar_684.us = load double, double* %polly.access.Packed_MemRef_call2500683.us, align 8
  %polly.access.add.Packed_MemRef_call1498690.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1498677.us, %199
  %polly.access.Packed_MemRef_call1498691.us = getelementptr double, double* %Packed_MemRef_call1498, i64 %polly.access.add.Packed_MemRef_call1498690.us
  %_p_scalar_692.us = load double, double* %polly.access.Packed_MemRef_call1498691.us, align 8
  %min.iters.check1474 = icmp ult i64 %198, 4
  br i1 %min.iters.check1474, label %polly.loop_header670.us.preheader, label %vector.ph1475

vector.ph1475:                                    ; preds = %polly.loop_header663.us
  %n.vec1477 = and i64 %198, -4
  %broadcast.splatinsert1483 = insertelement <4 x double> poison, double %_p_scalar_684.us, i32 0
  %broadcast.splat1484 = shufflevector <4 x double> %broadcast.splatinsert1483, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1486 = insertelement <4 x double> poison, double %_p_scalar_692.us, i32 0
  %broadcast.splat1487 = shufflevector <4 x double> %broadcast.splatinsert1486, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1473

vector.body1473:                                  ; preds = %vector.body1473, %vector.ph1475
  %index1478 = phi i64 [ 0, %vector.ph1475 ], [ %index.next1479, %vector.body1473 ]
  %205 = add nuw nsw i64 %index1478, %194
  %206 = add nuw nsw i64 %index1478, %polly.access.mul.Packed_MemRef_call1498677.us
  %207 = getelementptr double, double* %Packed_MemRef_call1498, i64 %206
  %208 = bitcast double* %207 to <4 x double>*
  %wide.load1482 = load <4 x double>, <4 x double>* %208, align 8
  %209 = fmul fast <4 x double> %broadcast.splat1484, %wide.load1482
  %210 = add nuw nsw i64 %205, %polly.access.mul.Packed_MemRef_call1498677.us
  %211 = getelementptr double, double* %Packed_MemRef_call2500, i64 %210
  %212 = bitcast double* %211 to <4 x double>*
  %wide.load1485 = load <4 x double>, <4 x double>* %212, align 8
  %213 = fmul fast <4 x double> %broadcast.splat1487, %wide.load1485
  %214 = shl i64 %205, 3
  %215 = add nuw nsw i64 %214, %204
  %216 = getelementptr i8, i8* %call, i64 %215
  %217 = bitcast i8* %216 to <4 x double>*
  %wide.load1488 = load <4 x double>, <4 x double>* %217, align 8, !alias.scope !92, !noalias !94
  %218 = fadd fast <4 x double> %213, %209
  %219 = fmul fast <4 x double> %218, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %220 = fadd fast <4 x double> %219, %wide.load1488
  %221 = bitcast i8* %216 to <4 x double>*
  store <4 x double> %220, <4 x double>* %221, align 8, !alias.scope !92, !noalias !94
  %index.next1479 = add i64 %index1478, 4
  %222 = icmp eq i64 %index.next1479, %n.vec1477
  br i1 %222, label %middle.block1471, label %vector.body1473, !llvm.loop !103

middle.block1471:                                 ; preds = %vector.body1473
  %cmp.n1481 = icmp eq i64 %198, %n.vec1477
  br i1 %cmp.n1481, label %polly.loop_exit672.loopexit.us, label %polly.loop_header670.us.preheader

polly.loop_header670.us.preheader:                ; preds = %polly.loop_header663.us, %middle.block1471
  %polly.indvar674.us.ph = phi i64 [ 0, %polly.loop_header663.us ], [ %n.vec1477, %middle.block1471 ]
  br label %polly.loop_header670.us

polly.loop_header670.us:                          ; preds = %polly.loop_header670.us.preheader, %polly.loop_header670.us
  %polly.indvar674.us = phi i64 [ %polly.indvar_next675.us, %polly.loop_header670.us ], [ %polly.indvar674.us.ph, %polly.loop_header670.us.preheader ]
  %223 = add nuw nsw i64 %polly.indvar674.us, %194
  %polly.access.add.Packed_MemRef_call1498678.us = add nuw nsw i64 %polly.indvar674.us, %polly.access.mul.Packed_MemRef_call1498677.us
  %polly.access.Packed_MemRef_call1498679.us = getelementptr double, double* %Packed_MemRef_call1498, i64 %polly.access.add.Packed_MemRef_call1498678.us
  %_p_scalar_680.us = load double, double* %polly.access.Packed_MemRef_call1498679.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_684.us, %_p_scalar_680.us
  %polly.access.add.Packed_MemRef_call2500686.us = add nuw nsw i64 %223, %polly.access.mul.Packed_MemRef_call1498677.us
  %polly.access.Packed_MemRef_call2500687.us = getelementptr double, double* %Packed_MemRef_call2500, i64 %polly.access.add.Packed_MemRef_call2500686.us
  %_p_scalar_688.us = load double, double* %polly.access.Packed_MemRef_call2500687.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_692.us, %_p_scalar_688.us
  %224 = shl i64 %223, 3
  %225 = add nuw nsw i64 %224, %204
  %scevgep693.us = getelementptr i8, i8* %call, i64 %225
  %scevgep693694.us = bitcast i8* %scevgep693.us to double*
  %_p_scalar_695.us = load double, double* %scevgep693694.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_695.us
  store double %p_add42.i.us, double* %scevgep693694.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next675.us = add nuw nsw i64 %polly.indvar674.us, 1
  %exitcond1063.not = icmp eq i64 %polly.indvar674.us, %smin1062
  br i1 %exitcond1063.not, label %polly.loop_exit672.loopexit.us, label %polly.loop_header670.us, !llvm.loop !104

polly.loop_exit672.loopexit.us:                   ; preds = %polly.loop_header670.us, %middle.block1471
  %polly.indvar_next667.us = add nuw nsw i64 %polly.indvar666.us, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar_next667.us, 60
  br i1 %exitcond1064.not, label %polly.loop_exit665, label %polly.loop_header663.us

polly.loop_header834:                             ; preds = %entry, %polly.loop_exit842
  %polly.indvar837 = phi i64 [ %polly.indvar_next838, %polly.loop_exit842 ], [ 0, %entry ]
  %226 = mul nuw nsw i64 %polly.indvar837, 640
  %227 = trunc i64 %polly.indvar837 to i32
  %broadcast.splatinsert1193 = insertelement <4 x i32> poison, i32 %227, i32 0
  %broadcast.splat1194 = shufflevector <4 x i32> %broadcast.splatinsert1193, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1183

vector.body1183:                                  ; preds = %vector.body1183, %polly.loop_header834
  %index1185 = phi i64 [ 0, %polly.loop_header834 ], [ %index.next1186, %vector.body1183 ]
  %vec.ind1191 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header834 ], [ %vec.ind.next1192, %vector.body1183 ]
  %228 = mul <4 x i32> %vec.ind1191, %broadcast.splat1194
  %229 = add <4 x i32> %228, <i32 3, i32 3, i32 3, i32 3>
  %230 = urem <4 x i32> %229, <i32 80, i32 80, i32 80, i32 80>
  %231 = sitofp <4 x i32> %230 to <4 x double>
  %232 = fmul fast <4 x double> %231, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %233 = shl i64 %index1185, 3
  %234 = add nuw nsw i64 %233, %226
  %235 = getelementptr i8, i8* %call, i64 %234
  %236 = bitcast i8* %235 to <4 x double>*
  store <4 x double> %232, <4 x double>* %236, align 8, !alias.scope !105, !noalias !107
  %index.next1186 = add i64 %index1185, 4
  %vec.ind.next1192 = add <4 x i32> %vec.ind1191, <i32 4, i32 4, i32 4, i32 4>
  %237 = icmp eq i64 %index.next1186, 32
  br i1 %237, label %polly.loop_exit842, label %vector.body1183, !llvm.loop !110

polly.loop_exit842:                               ; preds = %vector.body1183
  %polly.indvar_next838 = add nuw nsw i64 %polly.indvar837, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar_next838, 32
  br i1 %exitcond1091.not, label %polly.loop_header834.1, label %polly.loop_header834

polly.loop_header861:                             ; preds = %polly.loop_exit842.2.2, %polly.loop_exit869
  %polly.indvar864 = phi i64 [ %polly.indvar_next865, %polly.loop_exit869 ], [ 0, %polly.loop_exit842.2.2 ]
  %238 = mul nuw nsw i64 %polly.indvar864, 480
  %239 = trunc i64 %polly.indvar864 to i32
  %broadcast.splatinsert1307 = insertelement <4 x i32> poison, i32 %239, i32 0
  %broadcast.splat1308 = shufflevector <4 x i32> %broadcast.splatinsert1307, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1297

vector.body1297:                                  ; preds = %vector.body1297, %polly.loop_header861
  %index1299 = phi i64 [ 0, %polly.loop_header861 ], [ %index.next1300, %vector.body1297 ]
  %vec.ind1305 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header861 ], [ %vec.ind.next1306, %vector.body1297 ]
  %240 = mul <4 x i32> %vec.ind1305, %broadcast.splat1308
  %241 = add <4 x i32> %240, <i32 2, i32 2, i32 2, i32 2>
  %242 = urem <4 x i32> %241, <i32 60, i32 60, i32 60, i32 60>
  %243 = sitofp <4 x i32> %242 to <4 x double>
  %244 = fmul fast <4 x double> %243, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %245 = shl i64 %index1299, 3
  %246 = add i64 %245, %238
  %247 = getelementptr i8, i8* %call2, i64 %246
  %248 = bitcast i8* %247 to <4 x double>*
  store <4 x double> %244, <4 x double>* %248, align 8, !alias.scope !109, !noalias !111
  %index.next1300 = add i64 %index1299, 4
  %vec.ind.next1306 = add <4 x i32> %vec.ind1305, <i32 4, i32 4, i32 4, i32 4>
  %249 = icmp eq i64 %index.next1300, 32
  br i1 %249, label %polly.loop_exit869, label %vector.body1297, !llvm.loop !112

polly.loop_exit869:                               ; preds = %vector.body1297
  %polly.indvar_next865 = add nuw nsw i64 %polly.indvar864, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar_next865, 32
  br i1 %exitcond1082.not, label %polly.loop_header861.1, label %polly.loop_header861

polly.loop_header887:                             ; preds = %polly.loop_exit869.1.2, %polly.loop_exit895
  %polly.indvar890 = phi i64 [ %polly.indvar_next891, %polly.loop_exit895 ], [ 0, %polly.loop_exit869.1.2 ]
  %250 = mul nuw nsw i64 %polly.indvar890, 480
  %251 = trunc i64 %polly.indvar890 to i32
  %broadcast.splatinsert1385 = insertelement <4 x i32> poison, i32 %251, i32 0
  %broadcast.splat1386 = shufflevector <4 x i32> %broadcast.splatinsert1385, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1375

vector.body1375:                                  ; preds = %vector.body1375, %polly.loop_header887
  %index1377 = phi i64 [ 0, %polly.loop_header887 ], [ %index.next1378, %vector.body1375 ]
  %vec.ind1383 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header887 ], [ %vec.ind.next1384, %vector.body1375 ]
  %252 = mul <4 x i32> %vec.ind1383, %broadcast.splat1386
  %253 = add <4 x i32> %252, <i32 1, i32 1, i32 1, i32 1>
  %254 = urem <4 x i32> %253, <i32 80, i32 80, i32 80, i32 80>
  %255 = sitofp <4 x i32> %254 to <4 x double>
  %256 = fmul fast <4 x double> %255, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %257 = shl i64 %index1377, 3
  %258 = add i64 %257, %250
  %259 = getelementptr i8, i8* %call1, i64 %258
  %260 = bitcast i8* %259 to <4 x double>*
  store <4 x double> %256, <4 x double>* %260, align 8, !alias.scope !108, !noalias !113
  %index.next1378 = add i64 %index1377, 4
  %vec.ind.next1384 = add <4 x i32> %vec.ind1383, <i32 4, i32 4, i32 4, i32 4>
  %261 = icmp eq i64 %index.next1378, 32
  br i1 %261, label %polly.loop_exit895, label %vector.body1375, !llvm.loop !114

polly.loop_exit895:                               ; preds = %vector.body1375
  %polly.indvar_next891 = add nuw nsw i64 %polly.indvar890, 1
  %exitcond1076.not = icmp eq i64 %polly.indvar_next891, 32
  br i1 %exitcond1076.not, label %polly.loop_header887.1, label %polly.loop_header887

polly.loop_header887.1:                           ; preds = %polly.loop_exit895, %polly.loop_exit895.1
  %polly.indvar890.1 = phi i64 [ %polly.indvar_next891.1, %polly.loop_exit895.1 ], [ 0, %polly.loop_exit895 ]
  %262 = mul nuw nsw i64 %polly.indvar890.1, 480
  %263 = trunc i64 %polly.indvar890.1 to i32
  %broadcast.splatinsert1397 = insertelement <4 x i32> poison, i32 %263, i32 0
  %broadcast.splat1398 = shufflevector <4 x i32> %broadcast.splatinsert1397, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1389

vector.body1389:                                  ; preds = %vector.body1389, %polly.loop_header887.1
  %index1391 = phi i64 [ 0, %polly.loop_header887.1 ], [ %index.next1392, %vector.body1389 ]
  %vec.ind1395 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header887.1 ], [ %vec.ind.next1396, %vector.body1389 ]
  %264 = add nuw nsw <4 x i64> %vec.ind1395, <i64 32, i64 32, i64 32, i64 32>
  %265 = trunc <4 x i64> %264 to <4 x i32>
  %266 = mul <4 x i32> %broadcast.splat1398, %265
  %267 = add <4 x i32> %266, <i32 1, i32 1, i32 1, i32 1>
  %268 = urem <4 x i32> %267, <i32 80, i32 80, i32 80, i32 80>
  %269 = sitofp <4 x i32> %268 to <4 x double>
  %270 = fmul fast <4 x double> %269, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %271 = extractelement <4 x i64> %264, i32 0
  %272 = shl i64 %271, 3
  %273 = add i64 %272, %262
  %274 = getelementptr i8, i8* %call1, i64 %273
  %275 = bitcast i8* %274 to <4 x double>*
  store <4 x double> %270, <4 x double>* %275, align 8, !alias.scope !108, !noalias !113
  %index.next1392 = add i64 %index1391, 4
  %vec.ind.next1396 = add <4 x i64> %vec.ind1395, <i64 4, i64 4, i64 4, i64 4>
  %276 = icmp eq i64 %index.next1392, 28
  br i1 %276, label %polly.loop_exit895.1, label %vector.body1389, !llvm.loop !115

polly.loop_exit895.1:                             ; preds = %vector.body1389
  %polly.indvar_next891.1 = add nuw nsw i64 %polly.indvar890.1, 1
  %exitcond1076.1.not = icmp eq i64 %polly.indvar_next891.1, 32
  br i1 %exitcond1076.1.not, label %polly.loop_header887.11099, label %polly.loop_header887.1

polly.loop_header887.11099:                       ; preds = %polly.loop_exit895.1, %polly.loop_exit895.11110
  %polly.indvar890.11098 = phi i64 [ %polly.indvar_next891.11108, %polly.loop_exit895.11110 ], [ 0, %polly.loop_exit895.1 ]
  %277 = add nuw nsw i64 %polly.indvar890.11098, 32
  %278 = mul nuw nsw i64 %277, 480
  %279 = trunc i64 %277 to i32
  %broadcast.splatinsert1411 = insertelement <4 x i32> poison, i32 %279, i32 0
  %broadcast.splat1412 = shufflevector <4 x i32> %broadcast.splatinsert1411, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1401

vector.body1401:                                  ; preds = %vector.body1401, %polly.loop_header887.11099
  %index1403 = phi i64 [ 0, %polly.loop_header887.11099 ], [ %index.next1404, %vector.body1401 ]
  %vec.ind1409 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header887.11099 ], [ %vec.ind.next1410, %vector.body1401 ]
  %280 = mul <4 x i32> %vec.ind1409, %broadcast.splat1412
  %281 = add <4 x i32> %280, <i32 1, i32 1, i32 1, i32 1>
  %282 = urem <4 x i32> %281, <i32 80, i32 80, i32 80, i32 80>
  %283 = sitofp <4 x i32> %282 to <4 x double>
  %284 = fmul fast <4 x double> %283, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %285 = shl i64 %index1403, 3
  %286 = add i64 %285, %278
  %287 = getelementptr i8, i8* %call1, i64 %286
  %288 = bitcast i8* %287 to <4 x double>*
  store <4 x double> %284, <4 x double>* %288, align 8, !alias.scope !108, !noalias !113
  %index.next1404 = add i64 %index1403, 4
  %vec.ind.next1410 = add <4 x i32> %vec.ind1409, <i32 4, i32 4, i32 4, i32 4>
  %289 = icmp eq i64 %index.next1404, 32
  br i1 %289, label %polly.loop_exit895.11110, label %vector.body1401, !llvm.loop !116

polly.loop_exit895.11110:                         ; preds = %vector.body1401
  %polly.indvar_next891.11108 = add nuw nsw i64 %polly.indvar890.11098, 1
  %exitcond1076.11109.not = icmp eq i64 %polly.indvar_next891.11108, 32
  br i1 %exitcond1076.11109.not, label %polly.loop_header887.1.1, label %polly.loop_header887.11099

polly.loop_header887.1.1:                         ; preds = %polly.loop_exit895.11110, %polly.loop_exit895.1.1
  %polly.indvar890.1.1 = phi i64 [ %polly.indvar_next891.1.1, %polly.loop_exit895.1.1 ], [ 0, %polly.loop_exit895.11110 ]
  %290 = add nuw nsw i64 %polly.indvar890.1.1, 32
  %291 = mul nuw nsw i64 %290, 480
  %292 = trunc i64 %290 to i32
  %broadcast.splatinsert1423 = insertelement <4 x i32> poison, i32 %292, i32 0
  %broadcast.splat1424 = shufflevector <4 x i32> %broadcast.splatinsert1423, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1415

vector.body1415:                                  ; preds = %vector.body1415, %polly.loop_header887.1.1
  %index1417 = phi i64 [ 0, %polly.loop_header887.1.1 ], [ %index.next1418, %vector.body1415 ]
  %vec.ind1421 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header887.1.1 ], [ %vec.ind.next1422, %vector.body1415 ]
  %293 = add nuw nsw <4 x i64> %vec.ind1421, <i64 32, i64 32, i64 32, i64 32>
  %294 = trunc <4 x i64> %293 to <4 x i32>
  %295 = mul <4 x i32> %broadcast.splat1424, %294
  %296 = add <4 x i32> %295, <i32 1, i32 1, i32 1, i32 1>
  %297 = urem <4 x i32> %296, <i32 80, i32 80, i32 80, i32 80>
  %298 = sitofp <4 x i32> %297 to <4 x double>
  %299 = fmul fast <4 x double> %298, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %300 = extractelement <4 x i64> %293, i32 0
  %301 = shl i64 %300, 3
  %302 = add i64 %301, %291
  %303 = getelementptr i8, i8* %call1, i64 %302
  %304 = bitcast i8* %303 to <4 x double>*
  store <4 x double> %299, <4 x double>* %304, align 8, !alias.scope !108, !noalias !113
  %index.next1418 = add i64 %index1417, 4
  %vec.ind.next1422 = add <4 x i64> %vec.ind1421, <i64 4, i64 4, i64 4, i64 4>
  %305 = icmp eq i64 %index.next1418, 28
  br i1 %305, label %polly.loop_exit895.1.1, label %vector.body1415, !llvm.loop !117

polly.loop_exit895.1.1:                           ; preds = %vector.body1415
  %polly.indvar_next891.1.1 = add nuw nsw i64 %polly.indvar890.1.1, 1
  %exitcond1076.1.1.not = icmp eq i64 %polly.indvar_next891.1.1, 32
  br i1 %exitcond1076.1.1.not, label %polly.loop_header887.2, label %polly.loop_header887.1.1

polly.loop_header887.2:                           ; preds = %polly.loop_exit895.1.1, %polly.loop_exit895.2
  %polly.indvar890.2 = phi i64 [ %polly.indvar_next891.2, %polly.loop_exit895.2 ], [ 0, %polly.loop_exit895.1.1 ]
  %306 = add nuw nsw i64 %polly.indvar890.2, 64
  %307 = mul nuw nsw i64 %306, 480
  %308 = trunc i64 %306 to i32
  %broadcast.splatinsert1437 = insertelement <4 x i32> poison, i32 %308, i32 0
  %broadcast.splat1438 = shufflevector <4 x i32> %broadcast.splatinsert1437, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1427

vector.body1427:                                  ; preds = %vector.body1427, %polly.loop_header887.2
  %index1429 = phi i64 [ 0, %polly.loop_header887.2 ], [ %index.next1430, %vector.body1427 ]
  %vec.ind1435 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header887.2 ], [ %vec.ind.next1436, %vector.body1427 ]
  %309 = mul <4 x i32> %vec.ind1435, %broadcast.splat1438
  %310 = add <4 x i32> %309, <i32 1, i32 1, i32 1, i32 1>
  %311 = urem <4 x i32> %310, <i32 80, i32 80, i32 80, i32 80>
  %312 = sitofp <4 x i32> %311 to <4 x double>
  %313 = fmul fast <4 x double> %312, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %314 = shl i64 %index1429, 3
  %315 = add i64 %314, %307
  %316 = getelementptr i8, i8* %call1, i64 %315
  %317 = bitcast i8* %316 to <4 x double>*
  store <4 x double> %313, <4 x double>* %317, align 8, !alias.scope !108, !noalias !113
  %index.next1430 = add i64 %index1429, 4
  %vec.ind.next1436 = add <4 x i32> %vec.ind1435, <i32 4, i32 4, i32 4, i32 4>
  %318 = icmp eq i64 %index.next1430, 32
  br i1 %318, label %polly.loop_exit895.2, label %vector.body1427, !llvm.loop !118

polly.loop_exit895.2:                             ; preds = %vector.body1427
  %polly.indvar_next891.2 = add nuw nsw i64 %polly.indvar890.2, 1
  %exitcond1076.2.not = icmp eq i64 %polly.indvar_next891.2, 16
  br i1 %exitcond1076.2.not, label %polly.loop_header887.1.2, label %polly.loop_header887.2

polly.loop_header887.1.2:                         ; preds = %polly.loop_exit895.2, %polly.loop_exit895.1.2
  %polly.indvar890.1.2 = phi i64 [ %polly.indvar_next891.1.2, %polly.loop_exit895.1.2 ], [ 0, %polly.loop_exit895.2 ]
  %319 = add nuw nsw i64 %polly.indvar890.1.2, 64
  %320 = mul nuw nsw i64 %319, 480
  %321 = trunc i64 %319 to i32
  %broadcast.splatinsert1449 = insertelement <4 x i32> poison, i32 %321, i32 0
  %broadcast.splat1450 = shufflevector <4 x i32> %broadcast.splatinsert1449, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1441

vector.body1441:                                  ; preds = %vector.body1441, %polly.loop_header887.1.2
  %index1443 = phi i64 [ 0, %polly.loop_header887.1.2 ], [ %index.next1444, %vector.body1441 ]
  %vec.ind1447 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header887.1.2 ], [ %vec.ind.next1448, %vector.body1441 ]
  %322 = add nuw nsw <4 x i64> %vec.ind1447, <i64 32, i64 32, i64 32, i64 32>
  %323 = trunc <4 x i64> %322 to <4 x i32>
  %324 = mul <4 x i32> %broadcast.splat1450, %323
  %325 = add <4 x i32> %324, <i32 1, i32 1, i32 1, i32 1>
  %326 = urem <4 x i32> %325, <i32 80, i32 80, i32 80, i32 80>
  %327 = sitofp <4 x i32> %326 to <4 x double>
  %328 = fmul fast <4 x double> %327, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %329 = extractelement <4 x i64> %322, i32 0
  %330 = shl i64 %329, 3
  %331 = add i64 %330, %320
  %332 = getelementptr i8, i8* %call1, i64 %331
  %333 = bitcast i8* %332 to <4 x double>*
  store <4 x double> %328, <4 x double>* %333, align 8, !alias.scope !108, !noalias !113
  %index.next1444 = add i64 %index1443, 4
  %vec.ind.next1448 = add <4 x i64> %vec.ind1447, <i64 4, i64 4, i64 4, i64 4>
  %334 = icmp eq i64 %index.next1444, 28
  br i1 %334, label %polly.loop_exit895.1.2, label %vector.body1441, !llvm.loop !119

polly.loop_exit895.1.2:                           ; preds = %vector.body1441
  %polly.indvar_next891.1.2 = add nuw nsw i64 %polly.indvar890.1.2, 1
  %exitcond1076.1.2.not = icmp eq i64 %polly.indvar_next891.1.2, 16
  br i1 %exitcond1076.1.2.not, label %init_array.exit, label %polly.loop_header887.1.2

polly.loop_header861.1:                           ; preds = %polly.loop_exit869, %polly.loop_exit869.1
  %polly.indvar864.1 = phi i64 [ %polly.indvar_next865.1, %polly.loop_exit869.1 ], [ 0, %polly.loop_exit869 ]
  %335 = mul nuw nsw i64 %polly.indvar864.1, 480
  %336 = trunc i64 %polly.indvar864.1 to i32
  %broadcast.splatinsert1319 = insertelement <4 x i32> poison, i32 %336, i32 0
  %broadcast.splat1320 = shufflevector <4 x i32> %broadcast.splatinsert1319, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1311

vector.body1311:                                  ; preds = %vector.body1311, %polly.loop_header861.1
  %index1313 = phi i64 [ 0, %polly.loop_header861.1 ], [ %index.next1314, %vector.body1311 ]
  %vec.ind1317 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header861.1 ], [ %vec.ind.next1318, %vector.body1311 ]
  %337 = add nuw nsw <4 x i64> %vec.ind1317, <i64 32, i64 32, i64 32, i64 32>
  %338 = trunc <4 x i64> %337 to <4 x i32>
  %339 = mul <4 x i32> %broadcast.splat1320, %338
  %340 = add <4 x i32> %339, <i32 2, i32 2, i32 2, i32 2>
  %341 = urem <4 x i32> %340, <i32 60, i32 60, i32 60, i32 60>
  %342 = sitofp <4 x i32> %341 to <4 x double>
  %343 = fmul fast <4 x double> %342, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %344 = extractelement <4 x i64> %337, i32 0
  %345 = shl i64 %344, 3
  %346 = add i64 %345, %335
  %347 = getelementptr i8, i8* %call2, i64 %346
  %348 = bitcast i8* %347 to <4 x double>*
  store <4 x double> %343, <4 x double>* %348, align 8, !alias.scope !109, !noalias !111
  %index.next1314 = add i64 %index1313, 4
  %vec.ind.next1318 = add <4 x i64> %vec.ind1317, <i64 4, i64 4, i64 4, i64 4>
  %349 = icmp eq i64 %index.next1314, 28
  br i1 %349, label %polly.loop_exit869.1, label %vector.body1311, !llvm.loop !120

polly.loop_exit869.1:                             ; preds = %vector.body1311
  %polly.indvar_next865.1 = add nuw nsw i64 %polly.indvar864.1, 1
  %exitcond1082.1.not = icmp eq i64 %polly.indvar_next865.1, 32
  br i1 %exitcond1082.1.not, label %polly.loop_header861.11113, label %polly.loop_header861.1

polly.loop_header861.11113:                       ; preds = %polly.loop_exit869.1, %polly.loop_exit869.11124
  %polly.indvar864.11112 = phi i64 [ %polly.indvar_next865.11122, %polly.loop_exit869.11124 ], [ 0, %polly.loop_exit869.1 ]
  %350 = add nuw nsw i64 %polly.indvar864.11112, 32
  %351 = mul nuw nsw i64 %350, 480
  %352 = trunc i64 %350 to i32
  %broadcast.splatinsert1333 = insertelement <4 x i32> poison, i32 %352, i32 0
  %broadcast.splat1334 = shufflevector <4 x i32> %broadcast.splatinsert1333, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1323

vector.body1323:                                  ; preds = %vector.body1323, %polly.loop_header861.11113
  %index1325 = phi i64 [ 0, %polly.loop_header861.11113 ], [ %index.next1326, %vector.body1323 ]
  %vec.ind1331 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header861.11113 ], [ %vec.ind.next1332, %vector.body1323 ]
  %353 = mul <4 x i32> %vec.ind1331, %broadcast.splat1334
  %354 = add <4 x i32> %353, <i32 2, i32 2, i32 2, i32 2>
  %355 = urem <4 x i32> %354, <i32 60, i32 60, i32 60, i32 60>
  %356 = sitofp <4 x i32> %355 to <4 x double>
  %357 = fmul fast <4 x double> %356, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %358 = shl i64 %index1325, 3
  %359 = add i64 %358, %351
  %360 = getelementptr i8, i8* %call2, i64 %359
  %361 = bitcast i8* %360 to <4 x double>*
  store <4 x double> %357, <4 x double>* %361, align 8, !alias.scope !109, !noalias !111
  %index.next1326 = add i64 %index1325, 4
  %vec.ind.next1332 = add <4 x i32> %vec.ind1331, <i32 4, i32 4, i32 4, i32 4>
  %362 = icmp eq i64 %index.next1326, 32
  br i1 %362, label %polly.loop_exit869.11124, label %vector.body1323, !llvm.loop !121

polly.loop_exit869.11124:                         ; preds = %vector.body1323
  %polly.indvar_next865.11122 = add nuw nsw i64 %polly.indvar864.11112, 1
  %exitcond1082.11123.not = icmp eq i64 %polly.indvar_next865.11122, 32
  br i1 %exitcond1082.11123.not, label %polly.loop_header861.1.1, label %polly.loop_header861.11113

polly.loop_header861.1.1:                         ; preds = %polly.loop_exit869.11124, %polly.loop_exit869.1.1
  %polly.indvar864.1.1 = phi i64 [ %polly.indvar_next865.1.1, %polly.loop_exit869.1.1 ], [ 0, %polly.loop_exit869.11124 ]
  %363 = add nuw nsw i64 %polly.indvar864.1.1, 32
  %364 = mul nuw nsw i64 %363, 480
  %365 = trunc i64 %363 to i32
  %broadcast.splatinsert1345 = insertelement <4 x i32> poison, i32 %365, i32 0
  %broadcast.splat1346 = shufflevector <4 x i32> %broadcast.splatinsert1345, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1337

vector.body1337:                                  ; preds = %vector.body1337, %polly.loop_header861.1.1
  %index1339 = phi i64 [ 0, %polly.loop_header861.1.1 ], [ %index.next1340, %vector.body1337 ]
  %vec.ind1343 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header861.1.1 ], [ %vec.ind.next1344, %vector.body1337 ]
  %366 = add nuw nsw <4 x i64> %vec.ind1343, <i64 32, i64 32, i64 32, i64 32>
  %367 = trunc <4 x i64> %366 to <4 x i32>
  %368 = mul <4 x i32> %broadcast.splat1346, %367
  %369 = add <4 x i32> %368, <i32 2, i32 2, i32 2, i32 2>
  %370 = urem <4 x i32> %369, <i32 60, i32 60, i32 60, i32 60>
  %371 = sitofp <4 x i32> %370 to <4 x double>
  %372 = fmul fast <4 x double> %371, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %373 = extractelement <4 x i64> %366, i32 0
  %374 = shl i64 %373, 3
  %375 = add i64 %374, %364
  %376 = getelementptr i8, i8* %call2, i64 %375
  %377 = bitcast i8* %376 to <4 x double>*
  store <4 x double> %372, <4 x double>* %377, align 8, !alias.scope !109, !noalias !111
  %index.next1340 = add i64 %index1339, 4
  %vec.ind.next1344 = add <4 x i64> %vec.ind1343, <i64 4, i64 4, i64 4, i64 4>
  %378 = icmp eq i64 %index.next1340, 28
  br i1 %378, label %polly.loop_exit869.1.1, label %vector.body1337, !llvm.loop !122

polly.loop_exit869.1.1:                           ; preds = %vector.body1337
  %polly.indvar_next865.1.1 = add nuw nsw i64 %polly.indvar864.1.1, 1
  %exitcond1082.1.1.not = icmp eq i64 %polly.indvar_next865.1.1, 32
  br i1 %exitcond1082.1.1.not, label %polly.loop_header861.2, label %polly.loop_header861.1.1

polly.loop_header861.2:                           ; preds = %polly.loop_exit869.1.1, %polly.loop_exit869.2
  %polly.indvar864.2 = phi i64 [ %polly.indvar_next865.2, %polly.loop_exit869.2 ], [ 0, %polly.loop_exit869.1.1 ]
  %379 = add nuw nsw i64 %polly.indvar864.2, 64
  %380 = mul nuw nsw i64 %379, 480
  %381 = trunc i64 %379 to i32
  %broadcast.splatinsert1359 = insertelement <4 x i32> poison, i32 %381, i32 0
  %broadcast.splat1360 = shufflevector <4 x i32> %broadcast.splatinsert1359, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1349

vector.body1349:                                  ; preds = %vector.body1349, %polly.loop_header861.2
  %index1351 = phi i64 [ 0, %polly.loop_header861.2 ], [ %index.next1352, %vector.body1349 ]
  %vec.ind1357 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header861.2 ], [ %vec.ind.next1358, %vector.body1349 ]
  %382 = mul <4 x i32> %vec.ind1357, %broadcast.splat1360
  %383 = add <4 x i32> %382, <i32 2, i32 2, i32 2, i32 2>
  %384 = urem <4 x i32> %383, <i32 60, i32 60, i32 60, i32 60>
  %385 = sitofp <4 x i32> %384 to <4 x double>
  %386 = fmul fast <4 x double> %385, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %387 = shl i64 %index1351, 3
  %388 = add i64 %387, %380
  %389 = getelementptr i8, i8* %call2, i64 %388
  %390 = bitcast i8* %389 to <4 x double>*
  store <4 x double> %386, <4 x double>* %390, align 8, !alias.scope !109, !noalias !111
  %index.next1352 = add i64 %index1351, 4
  %vec.ind.next1358 = add <4 x i32> %vec.ind1357, <i32 4, i32 4, i32 4, i32 4>
  %391 = icmp eq i64 %index.next1352, 32
  br i1 %391, label %polly.loop_exit869.2, label %vector.body1349, !llvm.loop !123

polly.loop_exit869.2:                             ; preds = %vector.body1349
  %polly.indvar_next865.2 = add nuw nsw i64 %polly.indvar864.2, 1
  %exitcond1082.2.not = icmp eq i64 %polly.indvar_next865.2, 16
  br i1 %exitcond1082.2.not, label %polly.loop_header861.1.2, label %polly.loop_header861.2

polly.loop_header861.1.2:                         ; preds = %polly.loop_exit869.2, %polly.loop_exit869.1.2
  %polly.indvar864.1.2 = phi i64 [ %polly.indvar_next865.1.2, %polly.loop_exit869.1.2 ], [ 0, %polly.loop_exit869.2 ]
  %392 = add nuw nsw i64 %polly.indvar864.1.2, 64
  %393 = mul nuw nsw i64 %392, 480
  %394 = trunc i64 %392 to i32
  %broadcast.splatinsert1371 = insertelement <4 x i32> poison, i32 %394, i32 0
  %broadcast.splat1372 = shufflevector <4 x i32> %broadcast.splatinsert1371, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1363

vector.body1363:                                  ; preds = %vector.body1363, %polly.loop_header861.1.2
  %index1365 = phi i64 [ 0, %polly.loop_header861.1.2 ], [ %index.next1366, %vector.body1363 ]
  %vec.ind1369 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header861.1.2 ], [ %vec.ind.next1370, %vector.body1363 ]
  %395 = add nuw nsw <4 x i64> %vec.ind1369, <i64 32, i64 32, i64 32, i64 32>
  %396 = trunc <4 x i64> %395 to <4 x i32>
  %397 = mul <4 x i32> %broadcast.splat1372, %396
  %398 = add <4 x i32> %397, <i32 2, i32 2, i32 2, i32 2>
  %399 = urem <4 x i32> %398, <i32 60, i32 60, i32 60, i32 60>
  %400 = sitofp <4 x i32> %399 to <4 x double>
  %401 = fmul fast <4 x double> %400, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %402 = extractelement <4 x i64> %395, i32 0
  %403 = shl i64 %402, 3
  %404 = add i64 %403, %393
  %405 = getelementptr i8, i8* %call2, i64 %404
  %406 = bitcast i8* %405 to <4 x double>*
  store <4 x double> %401, <4 x double>* %406, align 8, !alias.scope !109, !noalias !111
  %index.next1366 = add i64 %index1365, 4
  %vec.ind.next1370 = add <4 x i64> %vec.ind1369, <i64 4, i64 4, i64 4, i64 4>
  %407 = icmp eq i64 %index.next1366, 28
  br i1 %407, label %polly.loop_exit869.1.2, label %vector.body1363, !llvm.loop !124

polly.loop_exit869.1.2:                           ; preds = %vector.body1363
  %polly.indvar_next865.1.2 = add nuw nsw i64 %polly.indvar864.1.2, 1
  %exitcond1082.1.2.not = icmp eq i64 %polly.indvar_next865.1.2, 16
  br i1 %exitcond1082.1.2.not, label %polly.loop_header887, label %polly.loop_header861.1.2

polly.loop_header834.1:                           ; preds = %polly.loop_exit842, %polly.loop_exit842.1
  %polly.indvar837.1 = phi i64 [ %polly.indvar_next838.1, %polly.loop_exit842.1 ], [ 0, %polly.loop_exit842 ]
  %408 = mul nuw nsw i64 %polly.indvar837.1, 640
  %409 = trunc i64 %polly.indvar837.1 to i32
  %broadcast.splatinsert1205 = insertelement <4 x i32> poison, i32 %409, i32 0
  %broadcast.splat1206 = shufflevector <4 x i32> %broadcast.splatinsert1205, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %polly.loop_header834.1
  %index1199 = phi i64 [ 0, %polly.loop_header834.1 ], [ %index.next1200, %vector.body1197 ]
  %vec.ind1203 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header834.1 ], [ %vec.ind.next1204, %vector.body1197 ]
  %410 = add nuw nsw <4 x i64> %vec.ind1203, <i64 32, i64 32, i64 32, i64 32>
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
  store <4 x double> %416, <4 x double>* %421, align 8, !alias.scope !105, !noalias !107
  %index.next1200 = add i64 %index1199, 4
  %vec.ind.next1204 = add <4 x i64> %vec.ind1203, <i64 4, i64 4, i64 4, i64 4>
  %422 = icmp eq i64 %index.next1200, 32
  br i1 %422, label %polly.loop_exit842.1, label %vector.body1197, !llvm.loop !125

polly.loop_exit842.1:                             ; preds = %vector.body1197
  %polly.indvar_next838.1 = add nuw nsw i64 %polly.indvar837.1, 1
  %exitcond1091.1.not = icmp eq i64 %polly.indvar_next838.1, 32
  br i1 %exitcond1091.1.not, label %polly.loop_header834.2, label %polly.loop_header834.1

polly.loop_header834.2:                           ; preds = %polly.loop_exit842.1, %polly.loop_exit842.2
  %polly.indvar837.2 = phi i64 [ %polly.indvar_next838.2, %polly.loop_exit842.2 ], [ 0, %polly.loop_exit842.1 ]
  %423 = mul nuw nsw i64 %polly.indvar837.2, 640
  %424 = trunc i64 %polly.indvar837.2 to i32
  %broadcast.splatinsert1217 = insertelement <4 x i32> poison, i32 %424, i32 0
  %broadcast.splat1218 = shufflevector <4 x i32> %broadcast.splatinsert1217, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1209

vector.body1209:                                  ; preds = %vector.body1209, %polly.loop_header834.2
  %index1211 = phi i64 [ 0, %polly.loop_header834.2 ], [ %index.next1212, %vector.body1209 ]
  %vec.ind1215 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header834.2 ], [ %vec.ind.next1216, %vector.body1209 ]
  %425 = add nuw nsw <4 x i64> %vec.ind1215, <i64 64, i64 64, i64 64, i64 64>
  %426 = trunc <4 x i64> %425 to <4 x i32>
  %427 = mul <4 x i32> %broadcast.splat1218, %426
  %428 = add <4 x i32> %427, <i32 3, i32 3, i32 3, i32 3>
  %429 = urem <4 x i32> %428, <i32 80, i32 80, i32 80, i32 80>
  %430 = sitofp <4 x i32> %429 to <4 x double>
  %431 = fmul fast <4 x double> %430, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %432 = extractelement <4 x i64> %425, i32 0
  %433 = shl i64 %432, 3
  %434 = add nuw nsw i64 %433, %423
  %435 = getelementptr i8, i8* %call, i64 %434
  %436 = bitcast i8* %435 to <4 x double>*
  store <4 x double> %431, <4 x double>* %436, align 8, !alias.scope !105, !noalias !107
  %index.next1212 = add i64 %index1211, 4
  %vec.ind.next1216 = add <4 x i64> %vec.ind1215, <i64 4, i64 4, i64 4, i64 4>
  %437 = icmp eq i64 %index.next1212, 16
  br i1 %437, label %polly.loop_exit842.2, label %vector.body1209, !llvm.loop !126

polly.loop_exit842.2:                             ; preds = %vector.body1209
  %polly.indvar_next838.2 = add nuw nsw i64 %polly.indvar837.2, 1
  %exitcond1091.2.not = icmp eq i64 %polly.indvar_next838.2, 32
  br i1 %exitcond1091.2.not, label %polly.loop_header834.11127, label %polly.loop_header834.2

polly.loop_header834.11127:                       ; preds = %polly.loop_exit842.2, %polly.loop_exit842.11138
  %polly.indvar837.11126 = phi i64 [ %polly.indvar_next838.11136, %polly.loop_exit842.11138 ], [ 0, %polly.loop_exit842.2 ]
  %438 = add nuw nsw i64 %polly.indvar837.11126, 32
  %439 = mul nuw nsw i64 %438, 640
  %440 = trunc i64 %438 to i32
  %broadcast.splatinsert1231 = insertelement <4 x i32> poison, i32 %440, i32 0
  %broadcast.splat1232 = shufflevector <4 x i32> %broadcast.splatinsert1231, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1221

vector.body1221:                                  ; preds = %vector.body1221, %polly.loop_header834.11127
  %index1223 = phi i64 [ 0, %polly.loop_header834.11127 ], [ %index.next1224, %vector.body1221 ]
  %vec.ind1229 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header834.11127 ], [ %vec.ind.next1230, %vector.body1221 ]
  %441 = mul <4 x i32> %vec.ind1229, %broadcast.splat1232
  %442 = add <4 x i32> %441, <i32 3, i32 3, i32 3, i32 3>
  %443 = urem <4 x i32> %442, <i32 80, i32 80, i32 80, i32 80>
  %444 = sitofp <4 x i32> %443 to <4 x double>
  %445 = fmul fast <4 x double> %444, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %446 = shl i64 %index1223, 3
  %447 = add nuw nsw i64 %446, %439
  %448 = getelementptr i8, i8* %call, i64 %447
  %449 = bitcast i8* %448 to <4 x double>*
  store <4 x double> %445, <4 x double>* %449, align 8, !alias.scope !105, !noalias !107
  %index.next1224 = add i64 %index1223, 4
  %vec.ind.next1230 = add <4 x i32> %vec.ind1229, <i32 4, i32 4, i32 4, i32 4>
  %450 = icmp eq i64 %index.next1224, 32
  br i1 %450, label %polly.loop_exit842.11138, label %vector.body1221, !llvm.loop !127

polly.loop_exit842.11138:                         ; preds = %vector.body1221
  %polly.indvar_next838.11136 = add nuw nsw i64 %polly.indvar837.11126, 1
  %exitcond1091.11137.not = icmp eq i64 %polly.indvar_next838.11136, 32
  br i1 %exitcond1091.11137.not, label %polly.loop_header834.1.1, label %polly.loop_header834.11127

polly.loop_header834.1.1:                         ; preds = %polly.loop_exit842.11138, %polly.loop_exit842.1.1
  %polly.indvar837.1.1 = phi i64 [ %polly.indvar_next838.1.1, %polly.loop_exit842.1.1 ], [ 0, %polly.loop_exit842.11138 ]
  %451 = add nuw nsw i64 %polly.indvar837.1.1, 32
  %452 = mul nuw nsw i64 %451, 640
  %453 = trunc i64 %451 to i32
  %broadcast.splatinsert1243 = insertelement <4 x i32> poison, i32 %453, i32 0
  %broadcast.splat1244 = shufflevector <4 x i32> %broadcast.splatinsert1243, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1235

vector.body1235:                                  ; preds = %vector.body1235, %polly.loop_header834.1.1
  %index1237 = phi i64 [ 0, %polly.loop_header834.1.1 ], [ %index.next1238, %vector.body1235 ]
  %vec.ind1241 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header834.1.1 ], [ %vec.ind.next1242, %vector.body1235 ]
  %454 = add nuw nsw <4 x i64> %vec.ind1241, <i64 32, i64 32, i64 32, i64 32>
  %455 = trunc <4 x i64> %454 to <4 x i32>
  %456 = mul <4 x i32> %broadcast.splat1244, %455
  %457 = add <4 x i32> %456, <i32 3, i32 3, i32 3, i32 3>
  %458 = urem <4 x i32> %457, <i32 80, i32 80, i32 80, i32 80>
  %459 = sitofp <4 x i32> %458 to <4 x double>
  %460 = fmul fast <4 x double> %459, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %461 = extractelement <4 x i64> %454, i32 0
  %462 = shl i64 %461, 3
  %463 = add nuw nsw i64 %462, %452
  %464 = getelementptr i8, i8* %call, i64 %463
  %465 = bitcast i8* %464 to <4 x double>*
  store <4 x double> %460, <4 x double>* %465, align 8, !alias.scope !105, !noalias !107
  %index.next1238 = add i64 %index1237, 4
  %vec.ind.next1242 = add <4 x i64> %vec.ind1241, <i64 4, i64 4, i64 4, i64 4>
  %466 = icmp eq i64 %index.next1238, 32
  br i1 %466, label %polly.loop_exit842.1.1, label %vector.body1235, !llvm.loop !128

polly.loop_exit842.1.1:                           ; preds = %vector.body1235
  %polly.indvar_next838.1.1 = add nuw nsw i64 %polly.indvar837.1.1, 1
  %exitcond1091.1.1.not = icmp eq i64 %polly.indvar_next838.1.1, 32
  br i1 %exitcond1091.1.1.not, label %polly.loop_header834.2.1, label %polly.loop_header834.1.1

polly.loop_header834.2.1:                         ; preds = %polly.loop_exit842.1.1, %polly.loop_exit842.2.1
  %polly.indvar837.2.1 = phi i64 [ %polly.indvar_next838.2.1, %polly.loop_exit842.2.1 ], [ 0, %polly.loop_exit842.1.1 ]
  %467 = add nuw nsw i64 %polly.indvar837.2.1, 32
  %468 = mul nuw nsw i64 %467, 640
  %469 = trunc i64 %467 to i32
  %broadcast.splatinsert1255 = insertelement <4 x i32> poison, i32 %469, i32 0
  %broadcast.splat1256 = shufflevector <4 x i32> %broadcast.splatinsert1255, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1247

vector.body1247:                                  ; preds = %vector.body1247, %polly.loop_header834.2.1
  %index1249 = phi i64 [ 0, %polly.loop_header834.2.1 ], [ %index.next1250, %vector.body1247 ]
  %vec.ind1253 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header834.2.1 ], [ %vec.ind.next1254, %vector.body1247 ]
  %470 = add nuw nsw <4 x i64> %vec.ind1253, <i64 64, i64 64, i64 64, i64 64>
  %471 = trunc <4 x i64> %470 to <4 x i32>
  %472 = mul <4 x i32> %broadcast.splat1256, %471
  %473 = add <4 x i32> %472, <i32 3, i32 3, i32 3, i32 3>
  %474 = urem <4 x i32> %473, <i32 80, i32 80, i32 80, i32 80>
  %475 = sitofp <4 x i32> %474 to <4 x double>
  %476 = fmul fast <4 x double> %475, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %477 = extractelement <4 x i64> %470, i32 0
  %478 = shl i64 %477, 3
  %479 = add nuw nsw i64 %478, %468
  %480 = getelementptr i8, i8* %call, i64 %479
  %481 = bitcast i8* %480 to <4 x double>*
  store <4 x double> %476, <4 x double>* %481, align 8, !alias.scope !105, !noalias !107
  %index.next1250 = add i64 %index1249, 4
  %vec.ind.next1254 = add <4 x i64> %vec.ind1253, <i64 4, i64 4, i64 4, i64 4>
  %482 = icmp eq i64 %index.next1250, 16
  br i1 %482, label %polly.loop_exit842.2.1, label %vector.body1247, !llvm.loop !129

polly.loop_exit842.2.1:                           ; preds = %vector.body1247
  %polly.indvar_next838.2.1 = add nuw nsw i64 %polly.indvar837.2.1, 1
  %exitcond1091.2.1.not = icmp eq i64 %polly.indvar_next838.2.1, 32
  br i1 %exitcond1091.2.1.not, label %polly.loop_header834.21141, label %polly.loop_header834.2.1

polly.loop_header834.21141:                       ; preds = %polly.loop_exit842.2.1, %polly.loop_exit842.21152
  %polly.indvar837.21140 = phi i64 [ %polly.indvar_next838.21150, %polly.loop_exit842.21152 ], [ 0, %polly.loop_exit842.2.1 ]
  %483 = add nuw nsw i64 %polly.indvar837.21140, 64
  %484 = mul nuw nsw i64 %483, 640
  %485 = trunc i64 %483 to i32
  %broadcast.splatinsert1269 = insertelement <4 x i32> poison, i32 %485, i32 0
  %broadcast.splat1270 = shufflevector <4 x i32> %broadcast.splatinsert1269, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1259

vector.body1259:                                  ; preds = %vector.body1259, %polly.loop_header834.21141
  %index1261 = phi i64 [ 0, %polly.loop_header834.21141 ], [ %index.next1262, %vector.body1259 ]
  %vec.ind1267 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header834.21141 ], [ %vec.ind.next1268, %vector.body1259 ]
  %486 = mul <4 x i32> %vec.ind1267, %broadcast.splat1270
  %487 = add <4 x i32> %486, <i32 3, i32 3, i32 3, i32 3>
  %488 = urem <4 x i32> %487, <i32 80, i32 80, i32 80, i32 80>
  %489 = sitofp <4 x i32> %488 to <4 x double>
  %490 = fmul fast <4 x double> %489, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %491 = shl i64 %index1261, 3
  %492 = add nuw nsw i64 %491, %484
  %493 = getelementptr i8, i8* %call, i64 %492
  %494 = bitcast i8* %493 to <4 x double>*
  store <4 x double> %490, <4 x double>* %494, align 8, !alias.scope !105, !noalias !107
  %index.next1262 = add i64 %index1261, 4
  %vec.ind.next1268 = add <4 x i32> %vec.ind1267, <i32 4, i32 4, i32 4, i32 4>
  %495 = icmp eq i64 %index.next1262, 32
  br i1 %495, label %polly.loop_exit842.21152, label %vector.body1259, !llvm.loop !130

polly.loop_exit842.21152:                         ; preds = %vector.body1259
  %polly.indvar_next838.21150 = add nuw nsw i64 %polly.indvar837.21140, 1
  %exitcond1091.21151.not = icmp eq i64 %polly.indvar_next838.21150, 16
  br i1 %exitcond1091.21151.not, label %polly.loop_header834.1.2, label %polly.loop_header834.21141

polly.loop_header834.1.2:                         ; preds = %polly.loop_exit842.21152, %polly.loop_exit842.1.2
  %polly.indvar837.1.2 = phi i64 [ %polly.indvar_next838.1.2, %polly.loop_exit842.1.2 ], [ 0, %polly.loop_exit842.21152 ]
  %496 = add nuw nsw i64 %polly.indvar837.1.2, 64
  %497 = mul nuw nsw i64 %496, 640
  %498 = trunc i64 %496 to i32
  %broadcast.splatinsert1281 = insertelement <4 x i32> poison, i32 %498, i32 0
  %broadcast.splat1282 = shufflevector <4 x i32> %broadcast.splatinsert1281, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1273

vector.body1273:                                  ; preds = %vector.body1273, %polly.loop_header834.1.2
  %index1275 = phi i64 [ 0, %polly.loop_header834.1.2 ], [ %index.next1276, %vector.body1273 ]
  %vec.ind1279 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header834.1.2 ], [ %vec.ind.next1280, %vector.body1273 ]
  %499 = add nuw nsw <4 x i64> %vec.ind1279, <i64 32, i64 32, i64 32, i64 32>
  %500 = trunc <4 x i64> %499 to <4 x i32>
  %501 = mul <4 x i32> %broadcast.splat1282, %500
  %502 = add <4 x i32> %501, <i32 3, i32 3, i32 3, i32 3>
  %503 = urem <4 x i32> %502, <i32 80, i32 80, i32 80, i32 80>
  %504 = sitofp <4 x i32> %503 to <4 x double>
  %505 = fmul fast <4 x double> %504, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %506 = extractelement <4 x i64> %499, i32 0
  %507 = shl i64 %506, 3
  %508 = add nuw nsw i64 %507, %497
  %509 = getelementptr i8, i8* %call, i64 %508
  %510 = bitcast i8* %509 to <4 x double>*
  store <4 x double> %505, <4 x double>* %510, align 8, !alias.scope !105, !noalias !107
  %index.next1276 = add i64 %index1275, 4
  %vec.ind.next1280 = add <4 x i64> %vec.ind1279, <i64 4, i64 4, i64 4, i64 4>
  %511 = icmp eq i64 %index.next1276, 32
  br i1 %511, label %polly.loop_exit842.1.2, label %vector.body1273, !llvm.loop !131

polly.loop_exit842.1.2:                           ; preds = %vector.body1273
  %polly.indvar_next838.1.2 = add nuw nsw i64 %polly.indvar837.1.2, 1
  %exitcond1091.1.2.not = icmp eq i64 %polly.indvar_next838.1.2, 16
  br i1 %exitcond1091.1.2.not, label %polly.loop_header834.2.2, label %polly.loop_header834.1.2

polly.loop_header834.2.2:                         ; preds = %polly.loop_exit842.1.2, %polly.loop_exit842.2.2
  %polly.indvar837.2.2 = phi i64 [ %polly.indvar_next838.2.2, %polly.loop_exit842.2.2 ], [ 0, %polly.loop_exit842.1.2 ]
  %512 = add nuw nsw i64 %polly.indvar837.2.2, 64
  %513 = mul nuw nsw i64 %512, 640
  %514 = trunc i64 %512 to i32
  %broadcast.splatinsert1293 = insertelement <4 x i32> poison, i32 %514, i32 0
  %broadcast.splat1294 = shufflevector <4 x i32> %broadcast.splatinsert1293, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1285

vector.body1285:                                  ; preds = %vector.body1285, %polly.loop_header834.2.2
  %index1287 = phi i64 [ 0, %polly.loop_header834.2.2 ], [ %index.next1288, %vector.body1285 ]
  %vec.ind1291 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header834.2.2 ], [ %vec.ind.next1292, %vector.body1285 ]
  %515 = add nuw nsw <4 x i64> %vec.ind1291, <i64 64, i64 64, i64 64, i64 64>
  %516 = trunc <4 x i64> %515 to <4 x i32>
  %517 = mul <4 x i32> %broadcast.splat1294, %516
  %518 = add <4 x i32> %517, <i32 3, i32 3, i32 3, i32 3>
  %519 = urem <4 x i32> %518, <i32 80, i32 80, i32 80, i32 80>
  %520 = sitofp <4 x i32> %519 to <4 x double>
  %521 = fmul fast <4 x double> %520, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %522 = extractelement <4 x i64> %515, i32 0
  %523 = shl i64 %522, 3
  %524 = add nuw nsw i64 %523, %513
  %525 = getelementptr i8, i8* %call, i64 %524
  %526 = bitcast i8* %525 to <4 x double>*
  store <4 x double> %521, <4 x double>* %526, align 8, !alias.scope !105, !noalias !107
  %index.next1288 = add i64 %index1287, 4
  %vec.ind.next1292 = add <4 x i64> %vec.ind1291, <i64 4, i64 4, i64 4, i64 4>
  %527 = icmp eq i64 %index.next1288, 16
  br i1 %527, label %polly.loop_exit842.2.2, label %vector.body1285, !llvm.loop !132

polly.loop_exit842.2.2:                           ; preds = %vector.body1285
  %polly.indvar_next838.2.2 = add nuw nsw i64 %polly.indvar837.2.2, 1
  %exitcond1091.2.2.not = icmp eq i64 %polly.indvar_next838.2.2, 16
  br i1 %exitcond1091.2.2.not, label %polly.loop_header861, label %polly.loop_header834.2.2
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
!26 = !{!"llvm.loop.tile.size", i32 64}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 128}
!36 = !{!"llvm.loop.tile.followup_floor", !37}
!37 = distinct !{!37, !12, !38}
!38 = !{!"llvm.loop.id", !"j1"}
!39 = !{!"llvm.loop.tile.followup_tile", !40}
!40 = distinct !{!40, !12, !24, !41, !42, !43, !44}
!41 = !{!"llvm.loop.id", !"j2"}
!42 = !{!"llvm.data.pack.enable", i1 true}
!43 = !{!"llvm.data.pack.array", !21}
!44 = !{!"llvm.data.pack.allocate", !"malloc"}
!45 = distinct !{!45, !12, !24, !46, !47, !48, !49, !50, !54}
!46 = !{!"llvm.loop.id", !"i"}
!47 = !{!"llvm.loop.tile.enable", i1 true}
!48 = !{!"llvm.loop.tile.depth", i32 3}
!49 = !{!"llvm.loop.tile.size", i32 8}
!50 = !{!"llvm.loop.tile.followup_floor", !51}
!51 = distinct !{!51, !12, !24, !52, !42, !53, !44}
!52 = !{!"llvm.loop.id", !"i1"}
!53 = !{!"llvm.data.pack.array", !22}
!54 = !{!"llvm.loop.tile.followup_tile", !55}
!55 = distinct !{!55, !12, !56}
!56 = !{!"llvm.loop.id", !"i2"}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = distinct !{!59, !12, !13}
!60 = distinct !{!60, !12, !13}
!61 = !{!62, !62, i64 0}
!62 = !{!"any pointer", !4, i64 0}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !66, !"polly.alias.scope.MemRef_call"}
!66 = distinct !{!66, !"polly.alias.scope.domain"}
!67 = !{!68, !69, !70, !71}
!68 = distinct !{!68, !66, !"polly.alias.scope.MemRef_call1"}
!69 = distinct !{!69, !66, !"polly.alias.scope.MemRef_call2"}
!70 = distinct !{!70, !66, !"polly.alias.scope.Packed_MemRef_call1"}
!71 = distinct !{!71, !66, !"polly.alias.scope.Packed_MemRef_call2"}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !74, !13}
!74 = !{!"llvm.loop.unroll.runtime.disable"}
!75 = !{!65, !68, !70, !71}
!76 = !{!65, !69, !70, !71}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !74, !13}
!79 = distinct !{!79, !80, !"polly.alias.scope.MemRef_call"}
!80 = distinct !{!80, !"polly.alias.scope.domain"}
!81 = !{!82, !83, !84, !85}
!82 = distinct !{!82, !80, !"polly.alias.scope.MemRef_call1"}
!83 = distinct !{!83, !80, !"polly.alias.scope.MemRef_call2"}
!84 = distinct !{!84, !80, !"polly.alias.scope.Packed_MemRef_call1"}
!85 = distinct !{!85, !80, !"polly.alias.scope.Packed_MemRef_call2"}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !74, !13}
!88 = !{!79, !82, !84, !85}
!89 = !{!79, !83, !84, !85}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !74, !13}
!92 = distinct !{!92, !93, !"polly.alias.scope.MemRef_call"}
!93 = distinct !{!93, !"polly.alias.scope.domain"}
!94 = !{!95, !96, !97, !98}
!95 = distinct !{!95, !93, !"polly.alias.scope.MemRef_call1"}
!96 = distinct !{!96, !93, !"polly.alias.scope.MemRef_call2"}
!97 = distinct !{!97, !93, !"polly.alias.scope.Packed_MemRef_call1"}
!98 = distinct !{!98, !93, !"polly.alias.scope.Packed_MemRef_call2"}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !74, !13}
!101 = !{!92, !95, !97, !98}
!102 = !{!92, !96, !97, !98}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !74, !13}
!105 = distinct !{!105, !106, !"polly.alias.scope.MemRef_call"}
!106 = distinct !{!106, !"polly.alias.scope.domain"}
!107 = !{!108, !109}
!108 = distinct !{!108, !106, !"polly.alias.scope.MemRef_call1"}
!109 = distinct !{!109, !106, !"polly.alias.scope.MemRef_call2"}
!110 = distinct !{!110, !13}
!111 = !{!108, !105}
!112 = distinct !{!112, !13}
!113 = !{!109, !105}
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
!132 = distinct !{!132, !13}
