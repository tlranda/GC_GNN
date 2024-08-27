; ModuleID = 'syr2k_recreations//mmp_syr2k_S_137.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_137.c"
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
  %call831 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1683 = bitcast i8* %call1 to double*
  %polly.access.call1692 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1692, %call2
  %polly.access.call2712 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2712, %call1
  %2 = or i1 %0, %1
  %polly.access.call732 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call732, %call2
  %4 = icmp ule i8* %polly.access.call2712, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call732, %call1
  %8 = icmp ule i8* %polly.access.call1692, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header817, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1185 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1184 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1183 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1182 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1182, %scevgep1185
  %bound1 = icmp ult i8* %scevgep1184, %scevgep1183
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
  br i1 %exitcond18.not.i, label %vector.ph1189, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1189:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1196 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1197 = shufflevector <4 x i64> %broadcast.splatinsert1196, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1188

vector.body1188:                                  ; preds = %vector.body1188, %vector.ph1189
  %index1190 = phi i64 [ 0, %vector.ph1189 ], [ %index.next1191, %vector.body1188 ]
  %vec.ind1194 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1189 ], [ %vec.ind.next1195, %vector.body1188 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1194, %broadcast.splat1197
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call831, i64 %indvars.iv7.i, i64 %index1190
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1191 = add i64 %index1190, 4
  %vec.ind.next1195 = add <4 x i64> %vec.ind1194, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1191, 80
  br i1 %40, label %for.inc41.i, label %vector.body1188, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1188
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1189, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit878.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start484, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1545, label %vector.ph1471

vector.ph1471:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1470

vector.body1470:                                  ; preds = %vector.body1470, %vector.ph1471
  %index1472 = phi i64 [ 0, %vector.ph1471 ], [ %index.next1473, %vector.body1470 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call831, i64 %indvars.iv21.i, i64 %index1472
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1473 = add i64 %index1472, 4
  %46 = icmp eq i64 %index.next1473, %n.vec
  br i1 %46, label %middle.block1468, label %vector.body1470, !llvm.loop !18

middle.block1468:                                 ; preds = %vector.body1470
  %cmp.n1475 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1475, label %for.inc6.i, label %for.body3.i46.preheader1545

for.body3.i46.preheader1545:                      ; preds = %for.body3.i46.preheader, %middle.block1468
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1468 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1545, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1545 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call831, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1468, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call831, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !46

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting485
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start287, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1491 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1491, label %for.body3.i60.preheader1543, label %vector.ph1492

vector.ph1492:                                    ; preds = %for.body3.i60.preheader
  %n.vec1494 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1490

vector.body1490:                                  ; preds = %vector.body1490, %vector.ph1492
  %index1495 = phi i64 [ 0, %vector.ph1492 ], [ %index.next1496, %vector.body1490 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call831, i64 %indvars.iv21.i52, i64 %index1495
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1499 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1499, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1496 = add i64 %index1495, 4
  %57 = icmp eq i64 %index.next1496, %n.vec1494
  br i1 %57, label %middle.block1488, label %vector.body1490, !llvm.loop !59

middle.block1488:                                 ; preds = %vector.body1490
  %cmp.n1498 = icmp eq i64 %indvars.iv21.i52, %n.vec1494
  br i1 %cmp.n1498, label %for.inc6.i63, label %for.body3.i60.preheader1543

for.body3.i60.preheader1543:                      ; preds = %for.body3.i60.preheader, %middle.block1488
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1494, %middle.block1488 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1543, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1543 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call831, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !60

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1488, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call831, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !46

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting288
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
  br i1 %min.iters.check1517, label %for.body3.i99.preheader1541, label %vector.ph1518

vector.ph1518:                                    ; preds = %for.body3.i99.preheader
  %n.vec1520 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1516

vector.body1516:                                  ; preds = %vector.body1516, %vector.ph1518
  %index1521 = phi i64 [ 0, %vector.ph1518 ], [ %index.next1522, %vector.body1516 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call831, i64 %indvars.iv21.i91, i64 %index1521
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1525 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1525, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1522 = add i64 %index1521, 4
  %68 = icmp eq i64 %index.next1522, %n.vec1520
  br i1 %68, label %middle.block1514, label %vector.body1516, !llvm.loop !61

middle.block1514:                                 ; preds = %vector.body1516
  %cmp.n1524 = icmp eq i64 %indvars.iv21.i91, %n.vec1520
  br i1 %cmp.n1524, label %for.inc6.i102, label %for.body3.i99.preheader1541

for.body3.i99.preheader1541:                      ; preds = %for.body3.i99.preheader, %middle.block1514
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1520, %middle.block1514 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1541, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1541 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call831, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !62

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
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call831, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !46

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !63
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call831, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !65

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !66

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1529 = phi i64 [ %indvar.next1530, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1529, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1531 = icmp ult i64 %88, 4
  br i1 %min.iters.check1531, label %polly.loop_header191.preheader, label %vector.ph1532

vector.ph1532:                                    ; preds = %polly.loop_header
  %n.vec1534 = and i64 %88, -4
  br label %vector.body1528

vector.body1528:                                  ; preds = %vector.body1528, %vector.ph1532
  %index1535 = phi i64 [ 0, %vector.ph1532 ], [ %index.next1536, %vector.body1528 ]
  %90 = shl nuw nsw i64 %index1535, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1539 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !67, !noalias !69
  %93 = fmul fast <4 x double> %wide.load1539, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !67, !noalias !69
  %index.next1536 = add i64 %index1535, 4
  %95 = icmp eq i64 %index.next1536, %n.vec1534
  br i1 %95, label %middle.block1526, label %vector.body1528, !llvm.loop !73

middle.block1526:                                 ; preds = %vector.body1528
  %cmp.n1538 = icmp eq i64 %88, %n.vec1534
  br i1 %cmp.n1538, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1526
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1534, %middle.block1526 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1526
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1530 = add i64 %indvar1529, 1
  br i1 %exitcond1034.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1033.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !74

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %smin1028 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -52)
  %97 = add nsw i64 %smin1028, 60
  %98 = shl nsw i64 %polly.indvar202, 3
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -8
  %exitcond1032.not = icmp eq i64 %polly.indvar_next203, 8
  br i1 %exitcond1032.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv1020 = phi i64 [ %indvars.iv.next1021, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %108, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %99 = lshr i64 %polly.indvar208, 1
  %100 = shl nuw nsw i64 %99, 3
  %101 = sub nsw i64 %indvars.iv1016, %100
  %102 = add i64 %indvars.iv1020, %100
  %103 = shl nsw i64 %polly.indvar208, 2
  %104 = mul nsw i64 %polly.indvar208, -4
  %polly.access.mul.call1230.us = mul nsw i64 %polly.indvar208, 240
  %105 = or i64 %103, 1
  %polly.access.mul.call1230.us.1 = mul nuw nsw i64 %105, 60
  %106 = or i64 %103, 2
  %polly.access.mul.call1230.us.2 = mul nuw nsw i64 %106, 60
  %107 = or i64 %103, 3
  %polly.access.mul.call1230.us.3 = mul nuw nsw i64 %107, 60
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit248
  %108 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next1017 = add nuw nsw i64 %indvars.iv1016, 4
  %indvars.iv.next1021 = add nsw i64 %indvars.iv1020, -4
  %exitcond1031.not = icmp eq i64 %108, 20
  br i1 %exitcond1031.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit248, %polly.loop_header205
  %indvars.iv1022 = phi i64 [ %indvars.iv.next1023, %polly.loop_exit248 ], [ %102, %polly.loop_header205 ]
  %indvars.iv1018 = phi i64 [ %indvars.iv.next1019, %polly.loop_exit248 ], [ %101, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit248 ], [ %99, %polly.loop_header205 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1018, i64 0)
  %109 = add i64 %smax, %indvars.iv1022
  %110 = shl nuw nsw i64 %polly.indvar214, 1
  %.not.not = icmp ugt i64 %110, %polly.indvar208
  %111 = shl nsw i64 %polly.indvar214, 3
  %112 = add nsw i64 %111, %104
  %113 = icmp sgt i64 %112, 0
  %114 = select i1 %113, i64 %112, i64 0
  %115 = add nsw i64 %112, 7
  %polly.loop_guard.not = icmp sgt i64 %114, %115
  br i1 %.not.not, label %polly.loop_header217.us, label %polly.loop_header211.split

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.loop_exit235.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit235.us ], [ 0, %polly.loop_header211 ]
  %116 = add nuw nsw i64 %polly.indvar220.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 80
  %polly.access.add.call1231.us = add nuw nsw i64 %116, %polly.access.mul.call1230.us
  %polly.access.call1232.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us
  %polly.access.call1232.load.us = load double, double* %polly.access.call1232.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1.us
  store double %polly.access.call1232.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.access.add.call1231.us.1 = add nuw nsw i64 %116, %polly.access.mul.call1230.us.1
  %polly.access.call1232.us.1 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.1
  %polly.access.call1232.load.us.1 = load double, double* %polly.access.call1232.us.1, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1232.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.access.add.call1231.us.2 = add nuw nsw i64 %116, %polly.access.mul.call1230.us.2
  %polly.access.call1232.us.2 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.2
  %polly.access.call1232.load.us.2 = load double, double* %polly.access.call1232.us.2, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 2
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1232.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.access.add.call1231.us.3 = add nuw nsw i64 %116, %polly.access.mul.call1230.us.3
  %polly.access.call1232.us.3 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.3
  %polly.access.call1232.load.us.3 = load double, double* %polly.access.call1232.us.3, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 3
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1232.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  br i1 %polly.loop_guard.not, label %polly.loop_exit235.us, label %polly.loop_header233.us

polly.loop_header233.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header233.us
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_header233.us ], [ %114, %polly.loop_header217.us ]
  %117 = add nuw nsw i64 %polly.indvar236.us, %103
  %polly.access.mul.call1240.us = mul nsw i64 %117, 60
  %polly.access.add.call1241.us = add nuw nsw i64 %116, %polly.access.mul.call1240.us
  %polly.access.call1242.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1241.us
  %polly.access.call1242.load.us = load double, double* %polly.access.call1242.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1244.us = add nuw nsw i64 %polly.indvar236.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1245.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244.us
  store double %polly.access.call1242.load.us, double* %polly.access.Packed_MemRef_call1245.us, align 8
  %polly.indvar_next237.us = add nuw nsw i64 %polly.indvar236.us, 1
  %polly.loop_cond238.not.not.us = icmp slt i64 %polly.indvar236.us, %115
  br i1 %polly.loop_cond238.not.not.us, label %polly.loop_header233.us, label %polly.loop_exit235.us

polly.loop_exit235.us:                            ; preds = %polly.loop_header233.us, %polly.loop_header217.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond1015.not = icmp eq i64 %polly.indvar_next221.us, %97
  br i1 %exitcond1015.not, label %polly.loop_header246.preheader, label %polly.loop_header217.us

polly.loop_header211.split:                       ; preds = %polly.loop_header211
  br i1 %polly.loop_guard.not, label %polly.loop_header246.preheader, label %polly.loop_header217

polly.loop_exit248:                               ; preds = %polly.loop_exit255.loopexit.us, %polly.loop_header246.preheader
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next1019 = add i64 %indvars.iv1018, -8
  %indvars.iv.next1023 = add i64 %indvars.iv1022, 8
  %exitcond1030.not = icmp eq i64 %polly.indvar_next215, 10
  br i1 %exitcond1030.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header211.split, %polly.loop_exit235
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit235 ], [ 0, %polly.loop_header211.split ]
  %118 = add nuw nsw i64 %polly.indvar220, %98
  %polly.access.mul.Packed_MemRef_call1243 = mul nuw nsw i64 %polly.indvar220, 80
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_header233
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %97
  br i1 %exitcond.not, label %polly.loop_header246.preheader, label %polly.loop_header217

polly.loop_header246.preheader:                   ; preds = %polly.loop_exit235, %polly.loop_exit235.us, %polly.loop_header211.split
  %119 = sub nsw i64 %103, %111
  %120 = icmp sgt i64 %119, 0
  %121 = select i1 %120, i64 %119, i64 0
  %polly.loop_guard256 = icmp slt i64 %121, 8
  br i1 %polly.loop_guard256, label %polly.loop_header246.us, label %polly.loop_exit248

polly.loop_header246.us:                          ; preds = %polly.loop_header246.preheader, %polly.loop_exit255.loopexit.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_exit255.loopexit.us ], [ 0, %polly.loop_header246.preheader ]
  %122 = add nuw nsw i64 %polly.indvar249.us, %98
  %polly.access.mul.Packed_MemRef_call1268.us = mul nuw nsw i64 %polly.indvar249.us, 80
  %123 = shl i64 %122, 3
  br label %polly.loop_header253.us

polly.loop_header253.us:                          ; preds = %polly.loop_header246.us, %polly.loop_exit263.us
  %indvars.iv1024 = phi i64 [ %109, %polly.loop_header246.us ], [ %indvars.iv.next1025, %polly.loop_exit263.us ]
  %polly.indvar257.us = phi i64 [ %121, %polly.loop_header246.us ], [ %polly.indvar_next258.us, %polly.loop_exit263.us ]
  %smin1026 = call i64 @llvm.smin.i64(i64 %indvars.iv1024, i64 3)
  %124 = add nsw i64 %polly.indvar257.us, %112
  %polly.loop_guard264.us1171 = icmp sgt i64 %124, -1
  br i1 %polly.loop_guard264.us1171, label %polly.loop_header261.preheader.us, label %polly.loop_exit263.us

polly.loop_header261.us:                          ; preds = %polly.loop_header261.preheader.us, %polly.loop_header261.us
  %polly.indvar265.us = phi i64 [ %polly.indvar_next266.us, %polly.loop_header261.us ], [ 0, %polly.loop_header261.preheader.us ]
  %125 = add nuw nsw i64 %polly.indvar265.us, %103
  %polly.access.add.Packed_MemRef_call1269.us = add nuw nsw i64 %polly.indvar265.us, %polly.access.mul.Packed_MemRef_call1268.us
  %polly.access.Packed_MemRef_call1270.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1269.us
  %_p_scalar_271.us = load double, double* %polly.access.Packed_MemRef_call1270.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_274.us, %_p_scalar_271.us
  %126 = mul nuw nsw i64 %125, 480
  %127 = add nuw nsw i64 %126, %123
  %scevgep275.us = getelementptr i8, i8* %call2, i64 %127
  %scevgep275276.us = bitcast i8* %scevgep275.us to double*
  %_p_scalar_277.us = load double, double* %scevgep275276.us, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.us = fmul fast double %_p_scalar_281.us, %_p_scalar_277.us
  %128 = shl i64 %125, 3
  %129 = add i64 %128, %133
  %scevgep282.us = getelementptr i8, i8* %call, i64 %129
  %scevgep282283.us = bitcast i8* %scevgep282.us to double*
  %_p_scalar_284.us = load double, double* %scevgep282283.us, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_284.us
  store double %p_add42.i118.us, double* %scevgep282283.us, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next266.us = add nuw nsw i64 %polly.indvar265.us, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar265.us, %smin1026
  br i1 %exitcond1027.not, label %polly.loop_exit263.us, label %polly.loop_header261.us

polly.loop_exit263.us:                            ; preds = %polly.loop_header261.us, %polly.loop_header253.us
  %polly.indvar_next258.us = add nuw nsw i64 %polly.indvar257.us, 1
  %polly.loop_cond259.us = icmp ult i64 %polly.indvar257.us, 7
  %indvars.iv.next1025 = add i64 %indvars.iv1024, 1
  br i1 %polly.loop_cond259.us, label %polly.loop_header253.us, label %polly.loop_exit255.loopexit.us

polly.loop_header261.preheader.us:                ; preds = %polly.loop_header253.us
  %130 = add nuw nsw i64 %polly.indvar257.us, %111
  %131 = mul i64 %130, 480
  %132 = add i64 %131, %123
  %scevgep272.us = getelementptr i8, i8* %call2, i64 %132
  %scevgep272273.us = bitcast i8* %scevgep272.us to double*
  %_p_scalar_274.us = load double, double* %scevgep272273.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1279.us = add nsw i64 %124, %polly.access.mul.Packed_MemRef_call1268.us
  %polly.access.Packed_MemRef_call1280.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1279.us
  %_p_scalar_281.us = load double, double* %polly.access.Packed_MemRef_call1280.us, align 8
  %133 = mul i64 %130, 640
  br label %polly.loop_header261.us

polly.loop_exit255.loopexit.us:                   ; preds = %polly.loop_exit263.us
  %polly.indvar_next250.us = add nuw nsw i64 %polly.indvar249.us, 1
  %exitcond1029.not = icmp eq i64 %polly.indvar_next250.us, %97
  br i1 %exitcond1029.not, label %polly.loop_exit248, label %polly.loop_header246.us

polly.loop_header233:                             ; preds = %polly.loop_header217, %polly.loop_header233
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_header233 ], [ %114, %polly.loop_header217 ]
  %134 = add nuw nsw i64 %polly.indvar236, %103
  %polly.access.mul.call1240 = mul nsw i64 %134, 60
  %polly.access.add.call1241 = add nuw nsw i64 %118, %polly.access.mul.call1240
  %polly.access.call1242 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1241
  %polly.access.call1242.load = load double, double* %polly.access.call1242, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1244 = add nuw nsw i64 %polly.indvar236, %polly.access.mul.Packed_MemRef_call1243
  %polly.access.Packed_MemRef_call1245 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244
  store double %polly.access.call1242.load, double* %polly.access.Packed_MemRef_call1245, align 8
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %polly.loop_cond238.not.not = icmp slt i64 %polly.indvar236, %115
  br i1 %polly.loop_cond238.not.not, label %polly.loop_header233, label %polly.loop_exit235

polly.start287:                                   ; preds = %kernel_syr2k.exit
  %malloccall289 = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #6
  br label %polly.loop_header373

polly.exiting288:                                 ; preds = %polly.loop_exit397
  tail call void @free(i8* %malloccall289)
  br label %kernel_syr2k.exit90

polly.loop_header373:                             ; preds = %polly.loop_exit381, %polly.start287
  %indvar1503 = phi i64 [ %indvar.next1504, %polly.loop_exit381 ], [ 0, %polly.start287 ]
  %polly.indvar376 = phi i64 [ %polly.indvar_next377, %polly.loop_exit381 ], [ 1, %polly.start287 ]
  %135 = add i64 %indvar1503, 1
  %136 = mul nuw nsw i64 %polly.indvar376, 640
  %scevgep385 = getelementptr i8, i8* %call, i64 %136
  %min.iters.check1505 = icmp ult i64 %135, 4
  br i1 %min.iters.check1505, label %polly.loop_header379.preheader, label %vector.ph1506

vector.ph1506:                                    ; preds = %polly.loop_header373
  %n.vec1508 = and i64 %135, -4
  br label %vector.body1502

vector.body1502:                                  ; preds = %vector.body1502, %vector.ph1506
  %index1509 = phi i64 [ 0, %vector.ph1506 ], [ %index.next1510, %vector.body1502 ]
  %137 = shl nuw nsw i64 %index1509, 3
  %138 = getelementptr i8, i8* %scevgep385, i64 %137
  %139 = bitcast i8* %138 to <4 x double>*
  %wide.load1513 = load <4 x double>, <4 x double>* %139, align 8, !alias.scope !78, !noalias !80
  %140 = fmul fast <4 x double> %wide.load1513, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %141 = bitcast i8* %138 to <4 x double>*
  store <4 x double> %140, <4 x double>* %141, align 8, !alias.scope !78, !noalias !80
  %index.next1510 = add i64 %index1509, 4
  %142 = icmp eq i64 %index.next1510, %n.vec1508
  br i1 %142, label %middle.block1500, label %vector.body1502, !llvm.loop !84

middle.block1500:                                 ; preds = %vector.body1502
  %cmp.n1512 = icmp eq i64 %135, %n.vec1508
  br i1 %cmp.n1512, label %polly.loop_exit381, label %polly.loop_header379.preheader

polly.loop_header379.preheader:                   ; preds = %polly.loop_header373, %middle.block1500
  %polly.indvar382.ph = phi i64 [ 0, %polly.loop_header373 ], [ %n.vec1508, %middle.block1500 ]
  br label %polly.loop_header379

polly.loop_exit381:                               ; preds = %polly.loop_header379, %middle.block1500
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar_next377, 80
  %indvar.next1504 = add i64 %indvar1503, 1
  br i1 %exitcond1061.not, label %polly.loop_header389.preheader, label %polly.loop_header373

polly.loop_header389.preheader:                   ; preds = %polly.loop_exit381
  %Packed_MemRef_call1290 = bitcast i8* %malloccall289 to double*
  br label %polly.loop_header389

polly.loop_header379:                             ; preds = %polly.loop_header379.preheader, %polly.loop_header379
  %polly.indvar382 = phi i64 [ %polly.indvar_next383, %polly.loop_header379 ], [ %polly.indvar382.ph, %polly.loop_header379.preheader ]
  %143 = shl nuw nsw i64 %polly.indvar382, 3
  %scevgep386 = getelementptr i8, i8* %scevgep385, i64 %143
  %scevgep386387 = bitcast i8* %scevgep386 to double*
  %_p_scalar_388 = load double, double* %scevgep386387, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_388, 1.200000e+00
  store double %p_mul.i57, double* %scevgep386387, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next383 = add nuw nsw i64 %polly.indvar382, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar_next383, %polly.indvar376
  br i1 %exitcond1060.not, label %polly.loop_exit381, label %polly.loop_header379, !llvm.loop !85

polly.loop_header389:                             ; preds = %polly.loop_header389.preheader, %polly.loop_exit397
  %indvars.iv1035 = phi i64 [ 0, %polly.loop_header389.preheader ], [ %indvars.iv.next1036, %polly.loop_exit397 ]
  %polly.indvar392 = phi i64 [ 0, %polly.loop_header389.preheader ], [ %polly.indvar_next393, %polly.loop_exit397 ]
  %smin1055 = call i64 @llvm.smin.i64(i64 %indvars.iv1035, i64 -52)
  %144 = add nsw i64 %smin1055, 60
  %145 = shl nsw i64 %polly.indvar392, 3
  br label %polly.loop_header395

polly.loop_exit397:                               ; preds = %polly.loop_exit404
  %polly.indvar_next393 = add nuw nsw i64 %polly.indvar392, 1
  %indvars.iv.next1036 = add nsw i64 %indvars.iv1035, -8
  %exitcond1059.not = icmp eq i64 %polly.indvar_next393, 8
  br i1 %exitcond1059.not, label %polly.exiting288, label %polly.loop_header389

polly.loop_header395:                             ; preds = %polly.loop_exit404, %polly.loop_header389
  %indvars.iv1047 = phi i64 [ %indvars.iv.next1048, %polly.loop_exit404 ], [ 0, %polly.loop_header389 ]
  %indvars.iv1042 = phi i64 [ %indvars.iv.next1043, %polly.loop_exit404 ], [ 0, %polly.loop_header389 ]
  %polly.indvar398 = phi i64 [ %155, %polly.loop_exit404 ], [ 0, %polly.loop_header389 ]
  %146 = lshr i64 %polly.indvar398, 1
  %147 = shl nuw nsw i64 %146, 3
  %148 = sub nsw i64 %indvars.iv1042, %147
  %149 = add i64 %indvars.iv1047, %147
  %150 = shl nsw i64 %polly.indvar398, 2
  %151 = mul nsw i64 %polly.indvar398, -4
  %polly.access.mul.call1425.us = mul nsw i64 %polly.indvar398, 240
  %152 = or i64 %150, 1
  %polly.access.mul.call1425.us.1 = mul nuw nsw i64 %152, 60
  %153 = or i64 %150, 2
  %polly.access.mul.call1425.us.2 = mul nuw nsw i64 %153, 60
  %154 = or i64 %150, 3
  %polly.access.mul.call1425.us.3 = mul nuw nsw i64 %154, 60
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_exit445
  %155 = add nuw nsw i64 %polly.indvar398, 1
  %indvars.iv.next1043 = add nuw nsw i64 %indvars.iv1042, 4
  %indvars.iv.next1048 = add nsw i64 %indvars.iv1047, -4
  %exitcond1058.not = icmp eq i64 %155, 20
  br i1 %exitcond1058.not, label %polly.loop_exit397, label %polly.loop_header395

polly.loop_header402:                             ; preds = %polly.loop_exit445, %polly.loop_header395
  %indvars.iv1049 = phi i64 [ %indvars.iv.next1050, %polly.loop_exit445 ], [ %149, %polly.loop_header395 ]
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %polly.loop_exit445 ], [ %148, %polly.loop_header395 ]
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_exit445 ], [ %146, %polly.loop_header395 ]
  %smax1046 = call i64 @llvm.smax.i64(i64 %indvars.iv1044, i64 0)
  %156 = add i64 %smax1046, %indvars.iv1049
  %157 = shl nuw nsw i64 %polly.indvar405, 1
  %.not.not885 = icmp ugt i64 %157, %polly.indvar398
  %158 = shl nsw i64 %polly.indvar405, 3
  %159 = add nsw i64 %158, %151
  %160 = icmp sgt i64 %159, 0
  %161 = select i1 %160, i64 %159, i64 0
  %162 = add nsw i64 %159, 7
  %polly.loop_guard432.not = icmp sgt i64 %161, %162
  br i1 %.not.not885, label %polly.loop_header408.us, label %polly.loop_header402.split

polly.loop_header408.us:                          ; preds = %polly.loop_header402, %polly.loop_exit431.us
  %polly.indvar411.us = phi i64 [ %polly.indvar_next412.us, %polly.loop_exit431.us ], [ 0, %polly.loop_header402 ]
  %163 = add nuw nsw i64 %polly.indvar411.us, %145
  %polly.access.mul.Packed_MemRef_call1290.us = mul nuw nsw i64 %polly.indvar411.us, 80
  %polly.access.add.call1426.us = add nuw nsw i64 %163, %polly.access.mul.call1425.us
  %polly.access.call1427.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us
  %polly.access.call1427.load.us = load double, double* %polly.access.call1427.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.Packed_MemRef_call1290.us = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.mul.Packed_MemRef_call1290.us
  store double %polly.access.call1427.load.us, double* %polly.access.Packed_MemRef_call1290.us, align 8
  %polly.access.add.call1426.us.1 = add nuw nsw i64 %163, %polly.access.mul.call1425.us.1
  %polly.access.call1427.us.1 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.1
  %polly.access.call1427.load.us.1 = load double, double* %polly.access.call1427.us.1, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 1
  %polly.access.Packed_MemRef_call1290.us.1 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.1
  store double %polly.access.call1427.load.us.1, double* %polly.access.Packed_MemRef_call1290.us.1, align 8
  %polly.access.add.call1426.us.2 = add nuw nsw i64 %163, %polly.access.mul.call1425.us.2
  %polly.access.call1427.us.2 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.2
  %polly.access.call1427.load.us.2 = load double, double* %polly.access.call1427.us.2, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 2
  %polly.access.Packed_MemRef_call1290.us.2 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.2
  store double %polly.access.call1427.load.us.2, double* %polly.access.Packed_MemRef_call1290.us.2, align 8
  %polly.access.add.call1426.us.3 = add nuw nsw i64 %163, %polly.access.mul.call1425.us.3
  %polly.access.call1427.us.3 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.3
  %polly.access.call1427.load.us.3 = load double, double* %polly.access.call1427.us.3, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 3
  %polly.access.Packed_MemRef_call1290.us.3 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.3
  store double %polly.access.call1427.load.us.3, double* %polly.access.Packed_MemRef_call1290.us.3, align 8
  br i1 %polly.loop_guard432.not, label %polly.loop_exit431.us, label %polly.loop_header429.us

polly.loop_header429.us:                          ; preds = %polly.loop_header408.us, %polly.loop_header429.us
  %polly.indvar433.us = phi i64 [ %polly.indvar_next434.us, %polly.loop_header429.us ], [ %161, %polly.loop_header408.us ]
  %164 = add nuw nsw i64 %polly.indvar433.us, %150
  %polly.access.mul.call1437.us = mul nsw i64 %164, 60
  %polly.access.add.call1438.us = add nuw nsw i64 %163, %polly.access.mul.call1437.us
  %polly.access.call1439.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1438.us
  %polly.access.call1439.load.us = load double, double* %polly.access.call1439.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290441.us = add nuw nsw i64 %polly.indvar433.us, %polly.access.mul.Packed_MemRef_call1290.us
  %polly.access.Packed_MemRef_call1290442.us = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290441.us
  store double %polly.access.call1439.load.us, double* %polly.access.Packed_MemRef_call1290442.us, align 8
  %polly.indvar_next434.us = add nuw nsw i64 %polly.indvar433.us, 1
  %polly.loop_cond435.not.not.us = icmp slt i64 %polly.indvar433.us, %162
  br i1 %polly.loop_cond435.not.not.us, label %polly.loop_header429.us, label %polly.loop_exit431.us

polly.loop_exit431.us:                            ; preds = %polly.loop_header429.us, %polly.loop_header408.us
  %polly.indvar_next412.us = add nuw nsw i64 %polly.indvar411.us, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar_next412.us, %144
  br i1 %exitcond1041.not, label %polly.loop_header443.preheader, label %polly.loop_header408.us

polly.loop_header402.split:                       ; preds = %polly.loop_header402
  br i1 %polly.loop_guard432.not, label %polly.loop_header443.preheader, label %polly.loop_header408

polly.loop_exit445:                               ; preds = %polly.loop_exit452.loopexit.us, %polly.loop_header443.preheader
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %indvars.iv.next1045 = add i64 %indvars.iv1044, -8
  %indvars.iv.next1050 = add i64 %indvars.iv1049, 8
  %exitcond1057.not = icmp eq i64 %polly.indvar_next406, 10
  br i1 %exitcond1057.not, label %polly.loop_exit404, label %polly.loop_header402

polly.loop_header408:                             ; preds = %polly.loop_header402.split, %polly.loop_exit431
  %polly.indvar411 = phi i64 [ %polly.indvar_next412, %polly.loop_exit431 ], [ 0, %polly.loop_header402.split ]
  %165 = add nuw nsw i64 %polly.indvar411, %145
  %polly.access.mul.Packed_MemRef_call1290440 = mul nuw nsw i64 %polly.indvar411, 80
  br label %polly.loop_header429

polly.loop_exit431:                               ; preds = %polly.loop_header429
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar_next412, %144
  br i1 %exitcond1038.not, label %polly.loop_header443.preheader, label %polly.loop_header408

polly.loop_header443.preheader:                   ; preds = %polly.loop_exit431, %polly.loop_exit431.us, %polly.loop_header402.split
  %166 = sub nsw i64 %150, %158
  %167 = icmp sgt i64 %166, 0
  %168 = select i1 %167, i64 %166, i64 0
  %polly.loop_guard453 = icmp slt i64 %168, 8
  br i1 %polly.loop_guard453, label %polly.loop_header443.us, label %polly.loop_exit445

polly.loop_header443.us:                          ; preds = %polly.loop_header443.preheader, %polly.loop_exit452.loopexit.us
  %polly.indvar446.us = phi i64 [ %polly.indvar_next447.us, %polly.loop_exit452.loopexit.us ], [ 0, %polly.loop_header443.preheader ]
  %169 = add nuw nsw i64 %polly.indvar446.us, %145
  %polly.access.mul.Packed_MemRef_call1290465.us = mul nuw nsw i64 %polly.indvar446.us, 80
  %170 = shl i64 %169, 3
  br label %polly.loop_header450.us

polly.loop_header450.us:                          ; preds = %polly.loop_header443.us, %polly.loop_exit460.us
  %indvars.iv1051 = phi i64 [ %156, %polly.loop_header443.us ], [ %indvars.iv.next1052, %polly.loop_exit460.us ]
  %polly.indvar454.us = phi i64 [ %168, %polly.loop_header443.us ], [ %polly.indvar_next455.us, %polly.loop_exit460.us ]
  %smin1053 = call i64 @llvm.smin.i64(i64 %indvars.iv1051, i64 3)
  %171 = add nsw i64 %polly.indvar454.us, %159
  %polly.loop_guard461.us1172 = icmp sgt i64 %171, -1
  br i1 %polly.loop_guard461.us1172, label %polly.loop_header458.preheader.us, label %polly.loop_exit460.us

polly.loop_header458.us:                          ; preds = %polly.loop_header458.preheader.us, %polly.loop_header458.us
  %polly.indvar462.us = phi i64 [ %polly.indvar_next463.us, %polly.loop_header458.us ], [ 0, %polly.loop_header458.preheader.us ]
  %172 = add nuw nsw i64 %polly.indvar462.us, %150
  %polly.access.add.Packed_MemRef_call1290466.us = add nuw nsw i64 %polly.indvar462.us, %polly.access.mul.Packed_MemRef_call1290465.us
  %polly.access.Packed_MemRef_call1290467.us = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290466.us
  %_p_scalar_468.us = load double, double* %polly.access.Packed_MemRef_call1290467.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_471.us, %_p_scalar_468.us
  %173 = mul nuw nsw i64 %172, 480
  %174 = add nuw nsw i64 %173, %170
  %scevgep472.us = getelementptr i8, i8* %call2, i64 %174
  %scevgep472473.us = bitcast i8* %scevgep472.us to double*
  %_p_scalar_474.us = load double, double* %scevgep472473.us, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.us = fmul fast double %_p_scalar_478.us, %_p_scalar_474.us
  %175 = shl i64 %172, 3
  %176 = add i64 %175, %180
  %scevgep479.us = getelementptr i8, i8* %call, i64 %176
  %scevgep479480.us = bitcast i8* %scevgep479.us to double*
  %_p_scalar_481.us = load double, double* %scevgep479480.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_481.us
  store double %p_add42.i79.us, double* %scevgep479480.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next463.us = add nuw nsw i64 %polly.indvar462.us, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar462.us, %smin1053
  br i1 %exitcond1054.not, label %polly.loop_exit460.us, label %polly.loop_header458.us

polly.loop_exit460.us:                            ; preds = %polly.loop_header458.us, %polly.loop_header450.us
  %polly.indvar_next455.us = add nuw nsw i64 %polly.indvar454.us, 1
  %polly.loop_cond456.us = icmp ult i64 %polly.indvar454.us, 7
  %indvars.iv.next1052 = add i64 %indvars.iv1051, 1
  br i1 %polly.loop_cond456.us, label %polly.loop_header450.us, label %polly.loop_exit452.loopexit.us

polly.loop_header458.preheader.us:                ; preds = %polly.loop_header450.us
  %177 = add nuw nsw i64 %polly.indvar454.us, %158
  %178 = mul i64 %177, 480
  %179 = add i64 %178, %170
  %scevgep469.us = getelementptr i8, i8* %call2, i64 %179
  %scevgep469470.us = bitcast i8* %scevgep469.us to double*
  %_p_scalar_471.us = load double, double* %scevgep469470.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290476.us = add nsw i64 %171, %polly.access.mul.Packed_MemRef_call1290465.us
  %polly.access.Packed_MemRef_call1290477.us = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290476.us
  %_p_scalar_478.us = load double, double* %polly.access.Packed_MemRef_call1290477.us, align 8
  %180 = mul i64 %177, 640
  br label %polly.loop_header458.us

polly.loop_exit452.loopexit.us:                   ; preds = %polly.loop_exit460.us
  %polly.indvar_next447.us = add nuw nsw i64 %polly.indvar446.us, 1
  %exitcond1056.not = icmp eq i64 %polly.indvar_next447.us, %144
  br i1 %exitcond1056.not, label %polly.loop_exit445, label %polly.loop_header443.us

polly.loop_header429:                             ; preds = %polly.loop_header408, %polly.loop_header429
  %polly.indvar433 = phi i64 [ %polly.indvar_next434, %polly.loop_header429 ], [ %161, %polly.loop_header408 ]
  %181 = add nuw nsw i64 %polly.indvar433, %150
  %polly.access.mul.call1437 = mul nsw i64 %181, 60
  %polly.access.add.call1438 = add nuw nsw i64 %165, %polly.access.mul.call1437
  %polly.access.call1439 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1438
  %polly.access.call1439.load = load double, double* %polly.access.call1439, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290441 = add nuw nsw i64 %polly.indvar433, %polly.access.mul.Packed_MemRef_call1290440
  %polly.access.Packed_MemRef_call1290442 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290441
  store double %polly.access.call1439.load, double* %polly.access.Packed_MemRef_call1290442, align 8
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %polly.loop_cond435.not.not = icmp slt i64 %polly.indvar433, %162
  br i1 %polly.loop_cond435.not.not, label %polly.loop_header429, label %polly.loop_exit431

polly.start484:                                   ; preds = %init_array.exit
  %malloccall486 = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #6
  br label %polly.loop_header570

polly.exiting485:                                 ; preds = %polly.loop_exit594
  tail call void @free(i8* %malloccall486)
  br label %kernel_syr2k.exit

polly.loop_header570:                             ; preds = %polly.loop_exit578, %polly.start484
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit578 ], [ 0, %polly.start484 ]
  %polly.indvar573 = phi i64 [ %polly.indvar_next574, %polly.loop_exit578 ], [ 1, %polly.start484 ]
  %182 = add i64 %indvar, 1
  %183 = mul nuw nsw i64 %polly.indvar573, 640
  %scevgep582 = getelementptr i8, i8* %call, i64 %183
  %min.iters.check1479 = icmp ult i64 %182, 4
  br i1 %min.iters.check1479, label %polly.loop_header576.preheader, label %vector.ph1480

vector.ph1480:                                    ; preds = %polly.loop_header570
  %n.vec1482 = and i64 %182, -4
  br label %vector.body1478

vector.body1478:                                  ; preds = %vector.body1478, %vector.ph1480
  %index1483 = phi i64 [ 0, %vector.ph1480 ], [ %index.next1484, %vector.body1478 ]
  %184 = shl nuw nsw i64 %index1483, 3
  %185 = getelementptr i8, i8* %scevgep582, i64 %184
  %186 = bitcast i8* %185 to <4 x double>*
  %wide.load1487 = load <4 x double>, <4 x double>* %186, align 8, !alias.scope !88, !noalias !90
  %187 = fmul fast <4 x double> %wide.load1487, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %188 = bitcast i8* %185 to <4 x double>*
  store <4 x double> %187, <4 x double>* %188, align 8, !alias.scope !88, !noalias !90
  %index.next1484 = add i64 %index1483, 4
  %189 = icmp eq i64 %index.next1484, %n.vec1482
  br i1 %189, label %middle.block1476, label %vector.body1478, !llvm.loop !94

middle.block1476:                                 ; preds = %vector.body1478
  %cmp.n1486 = icmp eq i64 %182, %n.vec1482
  br i1 %cmp.n1486, label %polly.loop_exit578, label %polly.loop_header576.preheader

polly.loop_header576.preheader:                   ; preds = %polly.loop_header570, %middle.block1476
  %polly.indvar579.ph = phi i64 [ 0, %polly.loop_header570 ], [ %n.vec1482, %middle.block1476 ]
  br label %polly.loop_header576

polly.loop_exit578:                               ; preds = %polly.loop_header576, %middle.block1476
  %polly.indvar_next574 = add nuw nsw i64 %polly.indvar573, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar_next574, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1088.not, label %polly.loop_header586.preheader, label %polly.loop_header570

polly.loop_header586.preheader:                   ; preds = %polly.loop_exit578
  %Packed_MemRef_call1487 = bitcast i8* %malloccall486 to double*
  br label %polly.loop_header586

polly.loop_header576:                             ; preds = %polly.loop_header576.preheader, %polly.loop_header576
  %polly.indvar579 = phi i64 [ %polly.indvar_next580, %polly.loop_header576 ], [ %polly.indvar579.ph, %polly.loop_header576.preheader ]
  %190 = shl nuw nsw i64 %polly.indvar579, 3
  %scevgep583 = getelementptr i8, i8* %scevgep582, i64 %190
  %scevgep583584 = bitcast i8* %scevgep583 to double*
  %_p_scalar_585 = load double, double* %scevgep583584, align 8, !alias.scope !88, !noalias !90
  %p_mul.i = fmul fast double %_p_scalar_585, 1.200000e+00
  store double %p_mul.i, double* %scevgep583584, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next580 = add nuw nsw i64 %polly.indvar579, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar_next580, %polly.indvar573
  br i1 %exitcond1087.not, label %polly.loop_exit578, label %polly.loop_header576, !llvm.loop !95

polly.loop_header586:                             ; preds = %polly.loop_header586.preheader, %polly.loop_exit594
  %indvars.iv1062 = phi i64 [ 0, %polly.loop_header586.preheader ], [ %indvars.iv.next1063, %polly.loop_exit594 ]
  %polly.indvar589 = phi i64 [ 0, %polly.loop_header586.preheader ], [ %polly.indvar_next590, %polly.loop_exit594 ]
  %smin1082 = call i64 @llvm.smin.i64(i64 %indvars.iv1062, i64 -52)
  %191 = add nsw i64 %smin1082, 60
  %192 = shl nsw i64 %polly.indvar589, 3
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_exit601
  %polly.indvar_next590 = add nuw nsw i64 %polly.indvar589, 1
  %indvars.iv.next1063 = add nsw i64 %indvars.iv1062, -8
  %exitcond1086.not = icmp eq i64 %polly.indvar_next590, 8
  br i1 %exitcond1086.not, label %polly.exiting485, label %polly.loop_header586

polly.loop_header592:                             ; preds = %polly.loop_exit601, %polly.loop_header586
  %indvars.iv1074 = phi i64 [ %indvars.iv.next1075, %polly.loop_exit601 ], [ 0, %polly.loop_header586 ]
  %indvars.iv1069 = phi i64 [ %indvars.iv.next1070, %polly.loop_exit601 ], [ 0, %polly.loop_header586 ]
  %polly.indvar595 = phi i64 [ %202, %polly.loop_exit601 ], [ 0, %polly.loop_header586 ]
  %193 = lshr i64 %polly.indvar595, 1
  %194 = shl nuw nsw i64 %193, 3
  %195 = sub nsw i64 %indvars.iv1069, %194
  %196 = add i64 %indvars.iv1074, %194
  %197 = shl nsw i64 %polly.indvar595, 2
  %198 = mul nsw i64 %polly.indvar595, -4
  %polly.access.mul.call1622.us = mul nsw i64 %polly.indvar595, 240
  %199 = or i64 %197, 1
  %polly.access.mul.call1622.us.1 = mul nuw nsw i64 %199, 60
  %200 = or i64 %197, 2
  %polly.access.mul.call1622.us.2 = mul nuw nsw i64 %200, 60
  %201 = or i64 %197, 3
  %polly.access.mul.call1622.us.3 = mul nuw nsw i64 %201, 60
  br label %polly.loop_header599

polly.loop_exit601:                               ; preds = %polly.loop_exit642
  %202 = add nuw nsw i64 %polly.indvar595, 1
  %indvars.iv.next1070 = add nuw nsw i64 %indvars.iv1069, 4
  %indvars.iv.next1075 = add nsw i64 %indvars.iv1074, -4
  %exitcond1085.not = icmp eq i64 %202, 20
  br i1 %exitcond1085.not, label %polly.loop_exit594, label %polly.loop_header592

polly.loop_header599:                             ; preds = %polly.loop_exit642, %polly.loop_header592
  %indvars.iv1076 = phi i64 [ %indvars.iv.next1077, %polly.loop_exit642 ], [ %196, %polly.loop_header592 ]
  %indvars.iv1071 = phi i64 [ %indvars.iv.next1072, %polly.loop_exit642 ], [ %195, %polly.loop_header592 ]
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_exit642 ], [ %193, %polly.loop_header592 ]
  %smax1073 = call i64 @llvm.smax.i64(i64 %indvars.iv1071, i64 0)
  %203 = add i64 %smax1073, %indvars.iv1076
  %204 = shl nuw nsw i64 %polly.indvar602, 1
  %.not.not886 = icmp ugt i64 %204, %polly.indvar595
  %205 = shl nsw i64 %polly.indvar602, 3
  %206 = add nsw i64 %205, %198
  %207 = icmp sgt i64 %206, 0
  %208 = select i1 %207, i64 %206, i64 0
  %209 = add nsw i64 %206, 7
  %polly.loop_guard629.not = icmp sgt i64 %208, %209
  br i1 %.not.not886, label %polly.loop_header605.us, label %polly.loop_header599.split

polly.loop_header605.us:                          ; preds = %polly.loop_header599, %polly.loop_exit628.us
  %polly.indvar608.us = phi i64 [ %polly.indvar_next609.us, %polly.loop_exit628.us ], [ 0, %polly.loop_header599 ]
  %210 = add nuw nsw i64 %polly.indvar608.us, %192
  %polly.access.mul.Packed_MemRef_call1487.us = mul nuw nsw i64 %polly.indvar608.us, 80
  %polly.access.add.call1623.us = add nuw nsw i64 %210, %polly.access.mul.call1622.us
  %polly.access.call1624.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us
  %polly.access.call1624.load.us = load double, double* %polly.access.call1624.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.Packed_MemRef_call1487.us = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.mul.Packed_MemRef_call1487.us
  store double %polly.access.call1624.load.us, double* %polly.access.Packed_MemRef_call1487.us, align 8
  %polly.access.add.call1623.us.1 = add nuw nsw i64 %210, %polly.access.mul.call1622.us.1
  %polly.access.call1624.us.1 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.1
  %polly.access.call1624.load.us.1 = load double, double* %polly.access.call1624.us.1, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 1
  %polly.access.Packed_MemRef_call1487.us.1 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.1
  store double %polly.access.call1624.load.us.1, double* %polly.access.Packed_MemRef_call1487.us.1, align 8
  %polly.access.add.call1623.us.2 = add nuw nsw i64 %210, %polly.access.mul.call1622.us.2
  %polly.access.call1624.us.2 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.2
  %polly.access.call1624.load.us.2 = load double, double* %polly.access.call1624.us.2, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 2
  %polly.access.Packed_MemRef_call1487.us.2 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.2
  store double %polly.access.call1624.load.us.2, double* %polly.access.Packed_MemRef_call1487.us.2, align 8
  %polly.access.add.call1623.us.3 = add nuw nsw i64 %210, %polly.access.mul.call1622.us.3
  %polly.access.call1624.us.3 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.3
  %polly.access.call1624.load.us.3 = load double, double* %polly.access.call1624.us.3, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 3
  %polly.access.Packed_MemRef_call1487.us.3 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.3
  store double %polly.access.call1624.load.us.3, double* %polly.access.Packed_MemRef_call1487.us.3, align 8
  br i1 %polly.loop_guard629.not, label %polly.loop_exit628.us, label %polly.loop_header626.us

polly.loop_header626.us:                          ; preds = %polly.loop_header605.us, %polly.loop_header626.us
  %polly.indvar630.us = phi i64 [ %polly.indvar_next631.us, %polly.loop_header626.us ], [ %208, %polly.loop_header605.us ]
  %211 = add nuw nsw i64 %polly.indvar630.us, %197
  %polly.access.mul.call1634.us = mul nsw i64 %211, 60
  %polly.access.add.call1635.us = add nuw nsw i64 %210, %polly.access.mul.call1634.us
  %polly.access.call1636.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1635.us
  %polly.access.call1636.load.us = load double, double* %polly.access.call1636.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487638.us = add nuw nsw i64 %polly.indvar630.us, %polly.access.mul.Packed_MemRef_call1487.us
  %polly.access.Packed_MemRef_call1487639.us = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487638.us
  store double %polly.access.call1636.load.us, double* %polly.access.Packed_MemRef_call1487639.us, align 8
  %polly.indvar_next631.us = add nuw nsw i64 %polly.indvar630.us, 1
  %polly.loop_cond632.not.not.us = icmp slt i64 %polly.indvar630.us, %209
  br i1 %polly.loop_cond632.not.not.us, label %polly.loop_header626.us, label %polly.loop_exit628.us

polly.loop_exit628.us:                            ; preds = %polly.loop_header626.us, %polly.loop_header605.us
  %polly.indvar_next609.us = add nuw nsw i64 %polly.indvar608.us, 1
  %exitcond1068.not = icmp eq i64 %polly.indvar_next609.us, %191
  br i1 %exitcond1068.not, label %polly.loop_header640.preheader, label %polly.loop_header605.us

polly.loop_header599.split:                       ; preds = %polly.loop_header599
  br i1 %polly.loop_guard629.not, label %polly.loop_header640.preheader, label %polly.loop_header605

polly.loop_exit642:                               ; preds = %polly.loop_exit649.loopexit.us, %polly.loop_header640.preheader
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %indvars.iv.next1072 = add i64 %indvars.iv1071, -8
  %indvars.iv.next1077 = add i64 %indvars.iv1076, 8
  %exitcond1084.not = icmp eq i64 %polly.indvar_next603, 10
  br i1 %exitcond1084.not, label %polly.loop_exit601, label %polly.loop_header599

polly.loop_header605:                             ; preds = %polly.loop_header599.split, %polly.loop_exit628
  %polly.indvar608 = phi i64 [ %polly.indvar_next609, %polly.loop_exit628 ], [ 0, %polly.loop_header599.split ]
  %212 = add nuw nsw i64 %polly.indvar608, %192
  %polly.access.mul.Packed_MemRef_call1487637 = mul nuw nsw i64 %polly.indvar608, 80
  br label %polly.loop_header626

polly.loop_exit628:                               ; preds = %polly.loop_header626
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar_next609, %191
  br i1 %exitcond1065.not, label %polly.loop_header640.preheader, label %polly.loop_header605

polly.loop_header640.preheader:                   ; preds = %polly.loop_exit628, %polly.loop_exit628.us, %polly.loop_header599.split
  %213 = sub nsw i64 %197, %205
  %214 = icmp sgt i64 %213, 0
  %215 = select i1 %214, i64 %213, i64 0
  %polly.loop_guard650 = icmp slt i64 %215, 8
  br i1 %polly.loop_guard650, label %polly.loop_header640.us, label %polly.loop_exit642

polly.loop_header640.us:                          ; preds = %polly.loop_header640.preheader, %polly.loop_exit649.loopexit.us
  %polly.indvar643.us = phi i64 [ %polly.indvar_next644.us, %polly.loop_exit649.loopexit.us ], [ 0, %polly.loop_header640.preheader ]
  %216 = add nuw nsw i64 %polly.indvar643.us, %192
  %polly.access.mul.Packed_MemRef_call1487662.us = mul nuw nsw i64 %polly.indvar643.us, 80
  %217 = shl i64 %216, 3
  br label %polly.loop_header647.us

polly.loop_header647.us:                          ; preds = %polly.loop_header640.us, %polly.loop_exit657.us
  %indvars.iv1078 = phi i64 [ %203, %polly.loop_header640.us ], [ %indvars.iv.next1079, %polly.loop_exit657.us ]
  %polly.indvar651.us = phi i64 [ %215, %polly.loop_header640.us ], [ %polly.indvar_next652.us, %polly.loop_exit657.us ]
  %smin1080 = call i64 @llvm.smin.i64(i64 %indvars.iv1078, i64 3)
  %218 = add nsw i64 %polly.indvar651.us, %206
  %polly.loop_guard658.us1173 = icmp sgt i64 %218, -1
  br i1 %polly.loop_guard658.us1173, label %polly.loop_header655.preheader.us, label %polly.loop_exit657.us

polly.loop_header655.us:                          ; preds = %polly.loop_header655.preheader.us, %polly.loop_header655.us
  %polly.indvar659.us = phi i64 [ %polly.indvar_next660.us, %polly.loop_header655.us ], [ 0, %polly.loop_header655.preheader.us ]
  %219 = add nuw nsw i64 %polly.indvar659.us, %197
  %polly.access.add.Packed_MemRef_call1487663.us = add nuw nsw i64 %polly.indvar659.us, %polly.access.mul.Packed_MemRef_call1487662.us
  %polly.access.Packed_MemRef_call1487664.us = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487663.us
  %_p_scalar_665.us = load double, double* %polly.access.Packed_MemRef_call1487664.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_668.us, %_p_scalar_665.us
  %220 = mul nuw nsw i64 %219, 480
  %221 = add nuw nsw i64 %220, %217
  %scevgep669.us = getelementptr i8, i8* %call2, i64 %221
  %scevgep669670.us = bitcast i8* %scevgep669.us to double*
  %_p_scalar_671.us = load double, double* %scevgep669670.us, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.us = fmul fast double %_p_scalar_675.us, %_p_scalar_671.us
  %222 = shl i64 %219, 3
  %223 = add i64 %222, %227
  %scevgep676.us = getelementptr i8, i8* %call, i64 %223
  %scevgep676677.us = bitcast i8* %scevgep676.us to double*
  %_p_scalar_678.us = load double, double* %scevgep676677.us, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_678.us
  store double %p_add42.i.us, double* %scevgep676677.us, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next660.us = add nuw nsw i64 %polly.indvar659.us, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar659.us, %smin1080
  br i1 %exitcond1081.not, label %polly.loop_exit657.us, label %polly.loop_header655.us

polly.loop_exit657.us:                            ; preds = %polly.loop_header655.us, %polly.loop_header647.us
  %polly.indvar_next652.us = add nuw nsw i64 %polly.indvar651.us, 1
  %polly.loop_cond653.us = icmp ult i64 %polly.indvar651.us, 7
  %indvars.iv.next1079 = add i64 %indvars.iv1078, 1
  br i1 %polly.loop_cond653.us, label %polly.loop_header647.us, label %polly.loop_exit649.loopexit.us

polly.loop_header655.preheader.us:                ; preds = %polly.loop_header647.us
  %224 = add nuw nsw i64 %polly.indvar651.us, %205
  %225 = mul i64 %224, 480
  %226 = add i64 %225, %217
  %scevgep666.us = getelementptr i8, i8* %call2, i64 %226
  %scevgep666667.us = bitcast i8* %scevgep666.us to double*
  %_p_scalar_668.us = load double, double* %scevgep666667.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487673.us = add nsw i64 %218, %polly.access.mul.Packed_MemRef_call1487662.us
  %polly.access.Packed_MemRef_call1487674.us = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487673.us
  %_p_scalar_675.us = load double, double* %polly.access.Packed_MemRef_call1487674.us, align 8
  %227 = mul i64 %224, 640
  br label %polly.loop_header655.us

polly.loop_exit649.loopexit.us:                   ; preds = %polly.loop_exit657.us
  %polly.indvar_next644.us = add nuw nsw i64 %polly.indvar643.us, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar_next644.us, %191
  br i1 %exitcond1083.not, label %polly.loop_exit642, label %polly.loop_header640.us

polly.loop_header626:                             ; preds = %polly.loop_header605, %polly.loop_header626
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.loop_header626 ], [ %208, %polly.loop_header605 ]
  %228 = add nuw nsw i64 %polly.indvar630, %197
  %polly.access.mul.call1634 = mul nsw i64 %228, 60
  %polly.access.add.call1635 = add nuw nsw i64 %212, %polly.access.mul.call1634
  %polly.access.call1636 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1635
  %polly.access.call1636.load = load double, double* %polly.access.call1636, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487638 = add nuw nsw i64 %polly.indvar630, %polly.access.mul.Packed_MemRef_call1487637
  %polly.access.Packed_MemRef_call1487639 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487638
  store double %polly.access.call1636.load, double* %polly.access.Packed_MemRef_call1487639, align 8
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %polly.loop_cond632.not.not = icmp slt i64 %polly.indvar630, %209
  br i1 %polly.loop_cond632.not.not, label %polly.loop_header626, label %polly.loop_exit628

polly.loop_header817:                             ; preds = %entry, %polly.loop_exit825
  %polly.indvar820 = phi i64 [ %polly.indvar_next821, %polly.loop_exit825 ], [ 0, %entry ]
  %229 = mul nuw nsw i64 %polly.indvar820, 640
  %230 = trunc i64 %polly.indvar820 to i32
  %broadcast.splatinsert1210 = insertelement <4 x i32> poison, i32 %230, i32 0
  %broadcast.splat1211 = shufflevector <4 x i32> %broadcast.splatinsert1210, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1200

vector.body1200:                                  ; preds = %vector.body1200, %polly.loop_header817
  %index1202 = phi i64 [ 0, %polly.loop_header817 ], [ %index.next1203, %vector.body1200 ]
  %vec.ind1208 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header817 ], [ %vec.ind.next1209, %vector.body1200 ]
  %231 = mul <4 x i32> %vec.ind1208, %broadcast.splat1211
  %232 = add <4 x i32> %231, <i32 3, i32 3, i32 3, i32 3>
  %233 = urem <4 x i32> %232, <i32 80, i32 80, i32 80, i32 80>
  %234 = sitofp <4 x i32> %233 to <4 x double>
  %235 = fmul fast <4 x double> %234, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %236 = shl i64 %index1202, 3
  %237 = add nuw nsw i64 %236, %229
  %238 = getelementptr i8, i8* %call, i64 %237
  %239 = bitcast i8* %238 to <4 x double>*
  store <4 x double> %235, <4 x double>* %239, align 8, !alias.scope !98, !noalias !100
  %index.next1203 = add i64 %index1202, 4
  %vec.ind.next1209 = add <4 x i32> %vec.ind1208, <i32 4, i32 4, i32 4, i32 4>
  %240 = icmp eq i64 %index.next1203, 32
  br i1 %240, label %polly.loop_exit825, label %vector.body1200, !llvm.loop !103

polly.loop_exit825:                               ; preds = %vector.body1200
  %polly.indvar_next821 = add nuw nsw i64 %polly.indvar820, 1
  %exitcond1108.not = icmp eq i64 %polly.indvar_next821, 32
  br i1 %exitcond1108.not, label %polly.loop_header817.1, label %polly.loop_header817

polly.loop_header844:                             ; preds = %polly.loop_exit825.2.2, %polly.loop_exit852
  %polly.indvar847 = phi i64 [ %polly.indvar_next848, %polly.loop_exit852 ], [ 0, %polly.loop_exit825.2.2 ]
  %241 = mul nuw nsw i64 %polly.indvar847, 480
  %242 = trunc i64 %polly.indvar847 to i32
  %broadcast.splatinsert1324 = insertelement <4 x i32> poison, i32 %242, i32 0
  %broadcast.splat1325 = shufflevector <4 x i32> %broadcast.splatinsert1324, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1314

vector.body1314:                                  ; preds = %vector.body1314, %polly.loop_header844
  %index1316 = phi i64 [ 0, %polly.loop_header844 ], [ %index.next1317, %vector.body1314 ]
  %vec.ind1322 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header844 ], [ %vec.ind.next1323, %vector.body1314 ]
  %243 = mul <4 x i32> %vec.ind1322, %broadcast.splat1325
  %244 = add <4 x i32> %243, <i32 2, i32 2, i32 2, i32 2>
  %245 = urem <4 x i32> %244, <i32 60, i32 60, i32 60, i32 60>
  %246 = sitofp <4 x i32> %245 to <4 x double>
  %247 = fmul fast <4 x double> %246, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %248 = shl i64 %index1316, 3
  %249 = add i64 %248, %241
  %250 = getelementptr i8, i8* %call2, i64 %249
  %251 = bitcast i8* %250 to <4 x double>*
  store <4 x double> %247, <4 x double>* %251, align 8, !alias.scope !102, !noalias !104
  %index.next1317 = add i64 %index1316, 4
  %vec.ind.next1323 = add <4 x i32> %vec.ind1322, <i32 4, i32 4, i32 4, i32 4>
  %252 = icmp eq i64 %index.next1317, 32
  br i1 %252, label %polly.loop_exit852, label %vector.body1314, !llvm.loop !105

polly.loop_exit852:                               ; preds = %vector.body1314
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %exitcond1099.not = icmp eq i64 %polly.indvar_next848, 32
  br i1 %exitcond1099.not, label %polly.loop_header844.1, label %polly.loop_header844

polly.loop_header870:                             ; preds = %polly.loop_exit852.1.2, %polly.loop_exit878
  %polly.indvar873 = phi i64 [ %polly.indvar_next874, %polly.loop_exit878 ], [ 0, %polly.loop_exit852.1.2 ]
  %253 = mul nuw nsw i64 %polly.indvar873, 480
  %254 = trunc i64 %polly.indvar873 to i32
  %broadcast.splatinsert1402 = insertelement <4 x i32> poison, i32 %254, i32 0
  %broadcast.splat1403 = shufflevector <4 x i32> %broadcast.splatinsert1402, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1392

vector.body1392:                                  ; preds = %vector.body1392, %polly.loop_header870
  %index1394 = phi i64 [ 0, %polly.loop_header870 ], [ %index.next1395, %vector.body1392 ]
  %vec.ind1400 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header870 ], [ %vec.ind.next1401, %vector.body1392 ]
  %255 = mul <4 x i32> %vec.ind1400, %broadcast.splat1403
  %256 = add <4 x i32> %255, <i32 1, i32 1, i32 1, i32 1>
  %257 = urem <4 x i32> %256, <i32 80, i32 80, i32 80, i32 80>
  %258 = sitofp <4 x i32> %257 to <4 x double>
  %259 = fmul fast <4 x double> %258, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %260 = shl i64 %index1394, 3
  %261 = add i64 %260, %253
  %262 = getelementptr i8, i8* %call1, i64 %261
  %263 = bitcast i8* %262 to <4 x double>*
  store <4 x double> %259, <4 x double>* %263, align 8, !alias.scope !101, !noalias !106
  %index.next1395 = add i64 %index1394, 4
  %vec.ind.next1401 = add <4 x i32> %vec.ind1400, <i32 4, i32 4, i32 4, i32 4>
  %264 = icmp eq i64 %index.next1395, 32
  br i1 %264, label %polly.loop_exit878, label %vector.body1392, !llvm.loop !107

polly.loop_exit878:                               ; preds = %vector.body1392
  %polly.indvar_next874 = add nuw nsw i64 %polly.indvar873, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar_next874, 32
  br i1 %exitcond1093.not, label %polly.loop_header870.1, label %polly.loop_header870

polly.loop_header870.1:                           ; preds = %polly.loop_exit878, %polly.loop_exit878.1
  %polly.indvar873.1 = phi i64 [ %polly.indvar_next874.1, %polly.loop_exit878.1 ], [ 0, %polly.loop_exit878 ]
  %265 = mul nuw nsw i64 %polly.indvar873.1, 480
  %266 = trunc i64 %polly.indvar873.1 to i32
  %broadcast.splatinsert1414 = insertelement <4 x i32> poison, i32 %266, i32 0
  %broadcast.splat1415 = shufflevector <4 x i32> %broadcast.splatinsert1414, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1406

vector.body1406:                                  ; preds = %vector.body1406, %polly.loop_header870.1
  %index1408 = phi i64 [ 0, %polly.loop_header870.1 ], [ %index.next1409, %vector.body1406 ]
  %vec.ind1412 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header870.1 ], [ %vec.ind.next1413, %vector.body1406 ]
  %267 = add nuw nsw <4 x i64> %vec.ind1412, <i64 32, i64 32, i64 32, i64 32>
  %268 = trunc <4 x i64> %267 to <4 x i32>
  %269 = mul <4 x i32> %broadcast.splat1415, %268
  %270 = add <4 x i32> %269, <i32 1, i32 1, i32 1, i32 1>
  %271 = urem <4 x i32> %270, <i32 80, i32 80, i32 80, i32 80>
  %272 = sitofp <4 x i32> %271 to <4 x double>
  %273 = fmul fast <4 x double> %272, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %274 = extractelement <4 x i64> %267, i32 0
  %275 = shl i64 %274, 3
  %276 = add i64 %275, %265
  %277 = getelementptr i8, i8* %call1, i64 %276
  %278 = bitcast i8* %277 to <4 x double>*
  store <4 x double> %273, <4 x double>* %278, align 8, !alias.scope !101, !noalias !106
  %index.next1409 = add i64 %index1408, 4
  %vec.ind.next1413 = add <4 x i64> %vec.ind1412, <i64 4, i64 4, i64 4, i64 4>
  %279 = icmp eq i64 %index.next1409, 28
  br i1 %279, label %polly.loop_exit878.1, label %vector.body1406, !llvm.loop !108

polly.loop_exit878.1:                             ; preds = %vector.body1406
  %polly.indvar_next874.1 = add nuw nsw i64 %polly.indvar873.1, 1
  %exitcond1093.1.not = icmp eq i64 %polly.indvar_next874.1, 32
  br i1 %exitcond1093.1.not, label %polly.loop_header870.11116, label %polly.loop_header870.1

polly.loop_header870.11116:                       ; preds = %polly.loop_exit878.1, %polly.loop_exit878.11127
  %polly.indvar873.11115 = phi i64 [ %polly.indvar_next874.11125, %polly.loop_exit878.11127 ], [ 0, %polly.loop_exit878.1 ]
  %280 = add nuw nsw i64 %polly.indvar873.11115, 32
  %281 = mul nuw nsw i64 %280, 480
  %282 = trunc i64 %280 to i32
  %broadcast.splatinsert1428 = insertelement <4 x i32> poison, i32 %282, i32 0
  %broadcast.splat1429 = shufflevector <4 x i32> %broadcast.splatinsert1428, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1418

vector.body1418:                                  ; preds = %vector.body1418, %polly.loop_header870.11116
  %index1420 = phi i64 [ 0, %polly.loop_header870.11116 ], [ %index.next1421, %vector.body1418 ]
  %vec.ind1426 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header870.11116 ], [ %vec.ind.next1427, %vector.body1418 ]
  %283 = mul <4 x i32> %vec.ind1426, %broadcast.splat1429
  %284 = add <4 x i32> %283, <i32 1, i32 1, i32 1, i32 1>
  %285 = urem <4 x i32> %284, <i32 80, i32 80, i32 80, i32 80>
  %286 = sitofp <4 x i32> %285 to <4 x double>
  %287 = fmul fast <4 x double> %286, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %288 = shl i64 %index1420, 3
  %289 = add i64 %288, %281
  %290 = getelementptr i8, i8* %call1, i64 %289
  %291 = bitcast i8* %290 to <4 x double>*
  store <4 x double> %287, <4 x double>* %291, align 8, !alias.scope !101, !noalias !106
  %index.next1421 = add i64 %index1420, 4
  %vec.ind.next1427 = add <4 x i32> %vec.ind1426, <i32 4, i32 4, i32 4, i32 4>
  %292 = icmp eq i64 %index.next1421, 32
  br i1 %292, label %polly.loop_exit878.11127, label %vector.body1418, !llvm.loop !109

polly.loop_exit878.11127:                         ; preds = %vector.body1418
  %polly.indvar_next874.11125 = add nuw nsw i64 %polly.indvar873.11115, 1
  %exitcond1093.11126.not = icmp eq i64 %polly.indvar_next874.11125, 32
  br i1 %exitcond1093.11126.not, label %polly.loop_header870.1.1, label %polly.loop_header870.11116

polly.loop_header870.1.1:                         ; preds = %polly.loop_exit878.11127, %polly.loop_exit878.1.1
  %polly.indvar873.1.1 = phi i64 [ %polly.indvar_next874.1.1, %polly.loop_exit878.1.1 ], [ 0, %polly.loop_exit878.11127 ]
  %293 = add nuw nsw i64 %polly.indvar873.1.1, 32
  %294 = mul nuw nsw i64 %293, 480
  %295 = trunc i64 %293 to i32
  %broadcast.splatinsert1440 = insertelement <4 x i32> poison, i32 %295, i32 0
  %broadcast.splat1441 = shufflevector <4 x i32> %broadcast.splatinsert1440, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1432

vector.body1432:                                  ; preds = %vector.body1432, %polly.loop_header870.1.1
  %index1434 = phi i64 [ 0, %polly.loop_header870.1.1 ], [ %index.next1435, %vector.body1432 ]
  %vec.ind1438 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header870.1.1 ], [ %vec.ind.next1439, %vector.body1432 ]
  %296 = add nuw nsw <4 x i64> %vec.ind1438, <i64 32, i64 32, i64 32, i64 32>
  %297 = trunc <4 x i64> %296 to <4 x i32>
  %298 = mul <4 x i32> %broadcast.splat1441, %297
  %299 = add <4 x i32> %298, <i32 1, i32 1, i32 1, i32 1>
  %300 = urem <4 x i32> %299, <i32 80, i32 80, i32 80, i32 80>
  %301 = sitofp <4 x i32> %300 to <4 x double>
  %302 = fmul fast <4 x double> %301, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %303 = extractelement <4 x i64> %296, i32 0
  %304 = shl i64 %303, 3
  %305 = add i64 %304, %294
  %306 = getelementptr i8, i8* %call1, i64 %305
  %307 = bitcast i8* %306 to <4 x double>*
  store <4 x double> %302, <4 x double>* %307, align 8, !alias.scope !101, !noalias !106
  %index.next1435 = add i64 %index1434, 4
  %vec.ind.next1439 = add <4 x i64> %vec.ind1438, <i64 4, i64 4, i64 4, i64 4>
  %308 = icmp eq i64 %index.next1435, 28
  br i1 %308, label %polly.loop_exit878.1.1, label %vector.body1432, !llvm.loop !110

polly.loop_exit878.1.1:                           ; preds = %vector.body1432
  %polly.indvar_next874.1.1 = add nuw nsw i64 %polly.indvar873.1.1, 1
  %exitcond1093.1.1.not = icmp eq i64 %polly.indvar_next874.1.1, 32
  br i1 %exitcond1093.1.1.not, label %polly.loop_header870.2, label %polly.loop_header870.1.1

polly.loop_header870.2:                           ; preds = %polly.loop_exit878.1.1, %polly.loop_exit878.2
  %polly.indvar873.2 = phi i64 [ %polly.indvar_next874.2, %polly.loop_exit878.2 ], [ 0, %polly.loop_exit878.1.1 ]
  %309 = add nuw nsw i64 %polly.indvar873.2, 64
  %310 = mul nuw nsw i64 %309, 480
  %311 = trunc i64 %309 to i32
  %broadcast.splatinsert1454 = insertelement <4 x i32> poison, i32 %311, i32 0
  %broadcast.splat1455 = shufflevector <4 x i32> %broadcast.splatinsert1454, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1444

vector.body1444:                                  ; preds = %vector.body1444, %polly.loop_header870.2
  %index1446 = phi i64 [ 0, %polly.loop_header870.2 ], [ %index.next1447, %vector.body1444 ]
  %vec.ind1452 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header870.2 ], [ %vec.ind.next1453, %vector.body1444 ]
  %312 = mul <4 x i32> %vec.ind1452, %broadcast.splat1455
  %313 = add <4 x i32> %312, <i32 1, i32 1, i32 1, i32 1>
  %314 = urem <4 x i32> %313, <i32 80, i32 80, i32 80, i32 80>
  %315 = sitofp <4 x i32> %314 to <4 x double>
  %316 = fmul fast <4 x double> %315, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %317 = shl i64 %index1446, 3
  %318 = add i64 %317, %310
  %319 = getelementptr i8, i8* %call1, i64 %318
  %320 = bitcast i8* %319 to <4 x double>*
  store <4 x double> %316, <4 x double>* %320, align 8, !alias.scope !101, !noalias !106
  %index.next1447 = add i64 %index1446, 4
  %vec.ind.next1453 = add <4 x i32> %vec.ind1452, <i32 4, i32 4, i32 4, i32 4>
  %321 = icmp eq i64 %index.next1447, 32
  br i1 %321, label %polly.loop_exit878.2, label %vector.body1444, !llvm.loop !111

polly.loop_exit878.2:                             ; preds = %vector.body1444
  %polly.indvar_next874.2 = add nuw nsw i64 %polly.indvar873.2, 1
  %exitcond1093.2.not = icmp eq i64 %polly.indvar_next874.2, 16
  br i1 %exitcond1093.2.not, label %polly.loop_header870.1.2, label %polly.loop_header870.2

polly.loop_header870.1.2:                         ; preds = %polly.loop_exit878.2, %polly.loop_exit878.1.2
  %polly.indvar873.1.2 = phi i64 [ %polly.indvar_next874.1.2, %polly.loop_exit878.1.2 ], [ 0, %polly.loop_exit878.2 ]
  %322 = add nuw nsw i64 %polly.indvar873.1.2, 64
  %323 = mul nuw nsw i64 %322, 480
  %324 = trunc i64 %322 to i32
  %broadcast.splatinsert1466 = insertelement <4 x i32> poison, i32 %324, i32 0
  %broadcast.splat1467 = shufflevector <4 x i32> %broadcast.splatinsert1466, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1458

vector.body1458:                                  ; preds = %vector.body1458, %polly.loop_header870.1.2
  %index1460 = phi i64 [ 0, %polly.loop_header870.1.2 ], [ %index.next1461, %vector.body1458 ]
  %vec.ind1464 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header870.1.2 ], [ %vec.ind.next1465, %vector.body1458 ]
  %325 = add nuw nsw <4 x i64> %vec.ind1464, <i64 32, i64 32, i64 32, i64 32>
  %326 = trunc <4 x i64> %325 to <4 x i32>
  %327 = mul <4 x i32> %broadcast.splat1467, %326
  %328 = add <4 x i32> %327, <i32 1, i32 1, i32 1, i32 1>
  %329 = urem <4 x i32> %328, <i32 80, i32 80, i32 80, i32 80>
  %330 = sitofp <4 x i32> %329 to <4 x double>
  %331 = fmul fast <4 x double> %330, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %332 = extractelement <4 x i64> %325, i32 0
  %333 = shl i64 %332, 3
  %334 = add i64 %333, %323
  %335 = getelementptr i8, i8* %call1, i64 %334
  %336 = bitcast i8* %335 to <4 x double>*
  store <4 x double> %331, <4 x double>* %336, align 8, !alias.scope !101, !noalias !106
  %index.next1461 = add i64 %index1460, 4
  %vec.ind.next1465 = add <4 x i64> %vec.ind1464, <i64 4, i64 4, i64 4, i64 4>
  %337 = icmp eq i64 %index.next1461, 28
  br i1 %337, label %polly.loop_exit878.1.2, label %vector.body1458, !llvm.loop !112

polly.loop_exit878.1.2:                           ; preds = %vector.body1458
  %polly.indvar_next874.1.2 = add nuw nsw i64 %polly.indvar873.1.2, 1
  %exitcond1093.1.2.not = icmp eq i64 %polly.indvar_next874.1.2, 16
  br i1 %exitcond1093.1.2.not, label %init_array.exit, label %polly.loop_header870.1.2

polly.loop_header844.1:                           ; preds = %polly.loop_exit852, %polly.loop_exit852.1
  %polly.indvar847.1 = phi i64 [ %polly.indvar_next848.1, %polly.loop_exit852.1 ], [ 0, %polly.loop_exit852 ]
  %338 = mul nuw nsw i64 %polly.indvar847.1, 480
  %339 = trunc i64 %polly.indvar847.1 to i32
  %broadcast.splatinsert1336 = insertelement <4 x i32> poison, i32 %339, i32 0
  %broadcast.splat1337 = shufflevector <4 x i32> %broadcast.splatinsert1336, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1328

vector.body1328:                                  ; preds = %vector.body1328, %polly.loop_header844.1
  %index1330 = phi i64 [ 0, %polly.loop_header844.1 ], [ %index.next1331, %vector.body1328 ]
  %vec.ind1334 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header844.1 ], [ %vec.ind.next1335, %vector.body1328 ]
  %340 = add nuw nsw <4 x i64> %vec.ind1334, <i64 32, i64 32, i64 32, i64 32>
  %341 = trunc <4 x i64> %340 to <4 x i32>
  %342 = mul <4 x i32> %broadcast.splat1337, %341
  %343 = add <4 x i32> %342, <i32 2, i32 2, i32 2, i32 2>
  %344 = urem <4 x i32> %343, <i32 60, i32 60, i32 60, i32 60>
  %345 = sitofp <4 x i32> %344 to <4 x double>
  %346 = fmul fast <4 x double> %345, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %347 = extractelement <4 x i64> %340, i32 0
  %348 = shl i64 %347, 3
  %349 = add i64 %348, %338
  %350 = getelementptr i8, i8* %call2, i64 %349
  %351 = bitcast i8* %350 to <4 x double>*
  store <4 x double> %346, <4 x double>* %351, align 8, !alias.scope !102, !noalias !104
  %index.next1331 = add i64 %index1330, 4
  %vec.ind.next1335 = add <4 x i64> %vec.ind1334, <i64 4, i64 4, i64 4, i64 4>
  %352 = icmp eq i64 %index.next1331, 28
  br i1 %352, label %polly.loop_exit852.1, label %vector.body1328, !llvm.loop !113

polly.loop_exit852.1:                             ; preds = %vector.body1328
  %polly.indvar_next848.1 = add nuw nsw i64 %polly.indvar847.1, 1
  %exitcond1099.1.not = icmp eq i64 %polly.indvar_next848.1, 32
  br i1 %exitcond1099.1.not, label %polly.loop_header844.11130, label %polly.loop_header844.1

polly.loop_header844.11130:                       ; preds = %polly.loop_exit852.1, %polly.loop_exit852.11141
  %polly.indvar847.11129 = phi i64 [ %polly.indvar_next848.11139, %polly.loop_exit852.11141 ], [ 0, %polly.loop_exit852.1 ]
  %353 = add nuw nsw i64 %polly.indvar847.11129, 32
  %354 = mul nuw nsw i64 %353, 480
  %355 = trunc i64 %353 to i32
  %broadcast.splatinsert1350 = insertelement <4 x i32> poison, i32 %355, i32 0
  %broadcast.splat1351 = shufflevector <4 x i32> %broadcast.splatinsert1350, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1340

vector.body1340:                                  ; preds = %vector.body1340, %polly.loop_header844.11130
  %index1342 = phi i64 [ 0, %polly.loop_header844.11130 ], [ %index.next1343, %vector.body1340 ]
  %vec.ind1348 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header844.11130 ], [ %vec.ind.next1349, %vector.body1340 ]
  %356 = mul <4 x i32> %vec.ind1348, %broadcast.splat1351
  %357 = add <4 x i32> %356, <i32 2, i32 2, i32 2, i32 2>
  %358 = urem <4 x i32> %357, <i32 60, i32 60, i32 60, i32 60>
  %359 = sitofp <4 x i32> %358 to <4 x double>
  %360 = fmul fast <4 x double> %359, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %361 = shl i64 %index1342, 3
  %362 = add i64 %361, %354
  %363 = getelementptr i8, i8* %call2, i64 %362
  %364 = bitcast i8* %363 to <4 x double>*
  store <4 x double> %360, <4 x double>* %364, align 8, !alias.scope !102, !noalias !104
  %index.next1343 = add i64 %index1342, 4
  %vec.ind.next1349 = add <4 x i32> %vec.ind1348, <i32 4, i32 4, i32 4, i32 4>
  %365 = icmp eq i64 %index.next1343, 32
  br i1 %365, label %polly.loop_exit852.11141, label %vector.body1340, !llvm.loop !114

polly.loop_exit852.11141:                         ; preds = %vector.body1340
  %polly.indvar_next848.11139 = add nuw nsw i64 %polly.indvar847.11129, 1
  %exitcond1099.11140.not = icmp eq i64 %polly.indvar_next848.11139, 32
  br i1 %exitcond1099.11140.not, label %polly.loop_header844.1.1, label %polly.loop_header844.11130

polly.loop_header844.1.1:                         ; preds = %polly.loop_exit852.11141, %polly.loop_exit852.1.1
  %polly.indvar847.1.1 = phi i64 [ %polly.indvar_next848.1.1, %polly.loop_exit852.1.1 ], [ 0, %polly.loop_exit852.11141 ]
  %366 = add nuw nsw i64 %polly.indvar847.1.1, 32
  %367 = mul nuw nsw i64 %366, 480
  %368 = trunc i64 %366 to i32
  %broadcast.splatinsert1362 = insertelement <4 x i32> poison, i32 %368, i32 0
  %broadcast.splat1363 = shufflevector <4 x i32> %broadcast.splatinsert1362, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1354

vector.body1354:                                  ; preds = %vector.body1354, %polly.loop_header844.1.1
  %index1356 = phi i64 [ 0, %polly.loop_header844.1.1 ], [ %index.next1357, %vector.body1354 ]
  %vec.ind1360 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header844.1.1 ], [ %vec.ind.next1361, %vector.body1354 ]
  %369 = add nuw nsw <4 x i64> %vec.ind1360, <i64 32, i64 32, i64 32, i64 32>
  %370 = trunc <4 x i64> %369 to <4 x i32>
  %371 = mul <4 x i32> %broadcast.splat1363, %370
  %372 = add <4 x i32> %371, <i32 2, i32 2, i32 2, i32 2>
  %373 = urem <4 x i32> %372, <i32 60, i32 60, i32 60, i32 60>
  %374 = sitofp <4 x i32> %373 to <4 x double>
  %375 = fmul fast <4 x double> %374, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %376 = extractelement <4 x i64> %369, i32 0
  %377 = shl i64 %376, 3
  %378 = add i64 %377, %367
  %379 = getelementptr i8, i8* %call2, i64 %378
  %380 = bitcast i8* %379 to <4 x double>*
  store <4 x double> %375, <4 x double>* %380, align 8, !alias.scope !102, !noalias !104
  %index.next1357 = add i64 %index1356, 4
  %vec.ind.next1361 = add <4 x i64> %vec.ind1360, <i64 4, i64 4, i64 4, i64 4>
  %381 = icmp eq i64 %index.next1357, 28
  br i1 %381, label %polly.loop_exit852.1.1, label %vector.body1354, !llvm.loop !115

polly.loop_exit852.1.1:                           ; preds = %vector.body1354
  %polly.indvar_next848.1.1 = add nuw nsw i64 %polly.indvar847.1.1, 1
  %exitcond1099.1.1.not = icmp eq i64 %polly.indvar_next848.1.1, 32
  br i1 %exitcond1099.1.1.not, label %polly.loop_header844.2, label %polly.loop_header844.1.1

polly.loop_header844.2:                           ; preds = %polly.loop_exit852.1.1, %polly.loop_exit852.2
  %polly.indvar847.2 = phi i64 [ %polly.indvar_next848.2, %polly.loop_exit852.2 ], [ 0, %polly.loop_exit852.1.1 ]
  %382 = add nuw nsw i64 %polly.indvar847.2, 64
  %383 = mul nuw nsw i64 %382, 480
  %384 = trunc i64 %382 to i32
  %broadcast.splatinsert1376 = insertelement <4 x i32> poison, i32 %384, i32 0
  %broadcast.splat1377 = shufflevector <4 x i32> %broadcast.splatinsert1376, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1366

vector.body1366:                                  ; preds = %vector.body1366, %polly.loop_header844.2
  %index1368 = phi i64 [ 0, %polly.loop_header844.2 ], [ %index.next1369, %vector.body1366 ]
  %vec.ind1374 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header844.2 ], [ %vec.ind.next1375, %vector.body1366 ]
  %385 = mul <4 x i32> %vec.ind1374, %broadcast.splat1377
  %386 = add <4 x i32> %385, <i32 2, i32 2, i32 2, i32 2>
  %387 = urem <4 x i32> %386, <i32 60, i32 60, i32 60, i32 60>
  %388 = sitofp <4 x i32> %387 to <4 x double>
  %389 = fmul fast <4 x double> %388, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %390 = shl i64 %index1368, 3
  %391 = add i64 %390, %383
  %392 = getelementptr i8, i8* %call2, i64 %391
  %393 = bitcast i8* %392 to <4 x double>*
  store <4 x double> %389, <4 x double>* %393, align 8, !alias.scope !102, !noalias !104
  %index.next1369 = add i64 %index1368, 4
  %vec.ind.next1375 = add <4 x i32> %vec.ind1374, <i32 4, i32 4, i32 4, i32 4>
  %394 = icmp eq i64 %index.next1369, 32
  br i1 %394, label %polly.loop_exit852.2, label %vector.body1366, !llvm.loop !116

polly.loop_exit852.2:                             ; preds = %vector.body1366
  %polly.indvar_next848.2 = add nuw nsw i64 %polly.indvar847.2, 1
  %exitcond1099.2.not = icmp eq i64 %polly.indvar_next848.2, 16
  br i1 %exitcond1099.2.not, label %polly.loop_header844.1.2, label %polly.loop_header844.2

polly.loop_header844.1.2:                         ; preds = %polly.loop_exit852.2, %polly.loop_exit852.1.2
  %polly.indvar847.1.2 = phi i64 [ %polly.indvar_next848.1.2, %polly.loop_exit852.1.2 ], [ 0, %polly.loop_exit852.2 ]
  %395 = add nuw nsw i64 %polly.indvar847.1.2, 64
  %396 = mul nuw nsw i64 %395, 480
  %397 = trunc i64 %395 to i32
  %broadcast.splatinsert1388 = insertelement <4 x i32> poison, i32 %397, i32 0
  %broadcast.splat1389 = shufflevector <4 x i32> %broadcast.splatinsert1388, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1380

vector.body1380:                                  ; preds = %vector.body1380, %polly.loop_header844.1.2
  %index1382 = phi i64 [ 0, %polly.loop_header844.1.2 ], [ %index.next1383, %vector.body1380 ]
  %vec.ind1386 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header844.1.2 ], [ %vec.ind.next1387, %vector.body1380 ]
  %398 = add nuw nsw <4 x i64> %vec.ind1386, <i64 32, i64 32, i64 32, i64 32>
  %399 = trunc <4 x i64> %398 to <4 x i32>
  %400 = mul <4 x i32> %broadcast.splat1389, %399
  %401 = add <4 x i32> %400, <i32 2, i32 2, i32 2, i32 2>
  %402 = urem <4 x i32> %401, <i32 60, i32 60, i32 60, i32 60>
  %403 = sitofp <4 x i32> %402 to <4 x double>
  %404 = fmul fast <4 x double> %403, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %405 = extractelement <4 x i64> %398, i32 0
  %406 = shl i64 %405, 3
  %407 = add i64 %406, %396
  %408 = getelementptr i8, i8* %call2, i64 %407
  %409 = bitcast i8* %408 to <4 x double>*
  store <4 x double> %404, <4 x double>* %409, align 8, !alias.scope !102, !noalias !104
  %index.next1383 = add i64 %index1382, 4
  %vec.ind.next1387 = add <4 x i64> %vec.ind1386, <i64 4, i64 4, i64 4, i64 4>
  %410 = icmp eq i64 %index.next1383, 28
  br i1 %410, label %polly.loop_exit852.1.2, label %vector.body1380, !llvm.loop !117

polly.loop_exit852.1.2:                           ; preds = %vector.body1380
  %polly.indvar_next848.1.2 = add nuw nsw i64 %polly.indvar847.1.2, 1
  %exitcond1099.1.2.not = icmp eq i64 %polly.indvar_next848.1.2, 16
  br i1 %exitcond1099.1.2.not, label %polly.loop_header870, label %polly.loop_header844.1.2

polly.loop_header817.1:                           ; preds = %polly.loop_exit825, %polly.loop_exit825.1
  %polly.indvar820.1 = phi i64 [ %polly.indvar_next821.1, %polly.loop_exit825.1 ], [ 0, %polly.loop_exit825 ]
  %411 = mul nuw nsw i64 %polly.indvar820.1, 640
  %412 = trunc i64 %polly.indvar820.1 to i32
  %broadcast.splatinsert1222 = insertelement <4 x i32> poison, i32 %412, i32 0
  %broadcast.splat1223 = shufflevector <4 x i32> %broadcast.splatinsert1222, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1214

vector.body1214:                                  ; preds = %vector.body1214, %polly.loop_header817.1
  %index1216 = phi i64 [ 0, %polly.loop_header817.1 ], [ %index.next1217, %vector.body1214 ]
  %vec.ind1220 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header817.1 ], [ %vec.ind.next1221, %vector.body1214 ]
  %413 = add nuw nsw <4 x i64> %vec.ind1220, <i64 32, i64 32, i64 32, i64 32>
  %414 = trunc <4 x i64> %413 to <4 x i32>
  %415 = mul <4 x i32> %broadcast.splat1223, %414
  %416 = add <4 x i32> %415, <i32 3, i32 3, i32 3, i32 3>
  %417 = urem <4 x i32> %416, <i32 80, i32 80, i32 80, i32 80>
  %418 = sitofp <4 x i32> %417 to <4 x double>
  %419 = fmul fast <4 x double> %418, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %420 = extractelement <4 x i64> %413, i32 0
  %421 = shl i64 %420, 3
  %422 = add nuw nsw i64 %421, %411
  %423 = getelementptr i8, i8* %call, i64 %422
  %424 = bitcast i8* %423 to <4 x double>*
  store <4 x double> %419, <4 x double>* %424, align 8, !alias.scope !98, !noalias !100
  %index.next1217 = add i64 %index1216, 4
  %vec.ind.next1221 = add <4 x i64> %vec.ind1220, <i64 4, i64 4, i64 4, i64 4>
  %425 = icmp eq i64 %index.next1217, 32
  br i1 %425, label %polly.loop_exit825.1, label %vector.body1214, !llvm.loop !118

polly.loop_exit825.1:                             ; preds = %vector.body1214
  %polly.indvar_next821.1 = add nuw nsw i64 %polly.indvar820.1, 1
  %exitcond1108.1.not = icmp eq i64 %polly.indvar_next821.1, 32
  br i1 %exitcond1108.1.not, label %polly.loop_header817.2, label %polly.loop_header817.1

polly.loop_header817.2:                           ; preds = %polly.loop_exit825.1, %polly.loop_exit825.2
  %polly.indvar820.2 = phi i64 [ %polly.indvar_next821.2, %polly.loop_exit825.2 ], [ 0, %polly.loop_exit825.1 ]
  %426 = mul nuw nsw i64 %polly.indvar820.2, 640
  %427 = trunc i64 %polly.indvar820.2 to i32
  %broadcast.splatinsert1234 = insertelement <4 x i32> poison, i32 %427, i32 0
  %broadcast.splat1235 = shufflevector <4 x i32> %broadcast.splatinsert1234, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1226

vector.body1226:                                  ; preds = %vector.body1226, %polly.loop_header817.2
  %index1228 = phi i64 [ 0, %polly.loop_header817.2 ], [ %index.next1229, %vector.body1226 ]
  %vec.ind1232 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header817.2 ], [ %vec.ind.next1233, %vector.body1226 ]
  %428 = add nuw nsw <4 x i64> %vec.ind1232, <i64 64, i64 64, i64 64, i64 64>
  %429 = trunc <4 x i64> %428 to <4 x i32>
  %430 = mul <4 x i32> %broadcast.splat1235, %429
  %431 = add <4 x i32> %430, <i32 3, i32 3, i32 3, i32 3>
  %432 = urem <4 x i32> %431, <i32 80, i32 80, i32 80, i32 80>
  %433 = sitofp <4 x i32> %432 to <4 x double>
  %434 = fmul fast <4 x double> %433, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %435 = extractelement <4 x i64> %428, i32 0
  %436 = shl i64 %435, 3
  %437 = add nuw nsw i64 %436, %426
  %438 = getelementptr i8, i8* %call, i64 %437
  %439 = bitcast i8* %438 to <4 x double>*
  store <4 x double> %434, <4 x double>* %439, align 8, !alias.scope !98, !noalias !100
  %index.next1229 = add i64 %index1228, 4
  %vec.ind.next1233 = add <4 x i64> %vec.ind1232, <i64 4, i64 4, i64 4, i64 4>
  %440 = icmp eq i64 %index.next1229, 16
  br i1 %440, label %polly.loop_exit825.2, label %vector.body1226, !llvm.loop !119

polly.loop_exit825.2:                             ; preds = %vector.body1226
  %polly.indvar_next821.2 = add nuw nsw i64 %polly.indvar820.2, 1
  %exitcond1108.2.not = icmp eq i64 %polly.indvar_next821.2, 32
  br i1 %exitcond1108.2.not, label %polly.loop_header817.11144, label %polly.loop_header817.2

polly.loop_header817.11144:                       ; preds = %polly.loop_exit825.2, %polly.loop_exit825.11155
  %polly.indvar820.11143 = phi i64 [ %polly.indvar_next821.11153, %polly.loop_exit825.11155 ], [ 0, %polly.loop_exit825.2 ]
  %441 = add nuw nsw i64 %polly.indvar820.11143, 32
  %442 = mul nuw nsw i64 %441, 640
  %443 = trunc i64 %441 to i32
  %broadcast.splatinsert1248 = insertelement <4 x i32> poison, i32 %443, i32 0
  %broadcast.splat1249 = shufflevector <4 x i32> %broadcast.splatinsert1248, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1238

vector.body1238:                                  ; preds = %vector.body1238, %polly.loop_header817.11144
  %index1240 = phi i64 [ 0, %polly.loop_header817.11144 ], [ %index.next1241, %vector.body1238 ]
  %vec.ind1246 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header817.11144 ], [ %vec.ind.next1247, %vector.body1238 ]
  %444 = mul <4 x i32> %vec.ind1246, %broadcast.splat1249
  %445 = add <4 x i32> %444, <i32 3, i32 3, i32 3, i32 3>
  %446 = urem <4 x i32> %445, <i32 80, i32 80, i32 80, i32 80>
  %447 = sitofp <4 x i32> %446 to <4 x double>
  %448 = fmul fast <4 x double> %447, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %449 = shl i64 %index1240, 3
  %450 = add nuw nsw i64 %449, %442
  %451 = getelementptr i8, i8* %call, i64 %450
  %452 = bitcast i8* %451 to <4 x double>*
  store <4 x double> %448, <4 x double>* %452, align 8, !alias.scope !98, !noalias !100
  %index.next1241 = add i64 %index1240, 4
  %vec.ind.next1247 = add <4 x i32> %vec.ind1246, <i32 4, i32 4, i32 4, i32 4>
  %453 = icmp eq i64 %index.next1241, 32
  br i1 %453, label %polly.loop_exit825.11155, label %vector.body1238, !llvm.loop !120

polly.loop_exit825.11155:                         ; preds = %vector.body1238
  %polly.indvar_next821.11153 = add nuw nsw i64 %polly.indvar820.11143, 1
  %exitcond1108.11154.not = icmp eq i64 %polly.indvar_next821.11153, 32
  br i1 %exitcond1108.11154.not, label %polly.loop_header817.1.1, label %polly.loop_header817.11144

polly.loop_header817.1.1:                         ; preds = %polly.loop_exit825.11155, %polly.loop_exit825.1.1
  %polly.indvar820.1.1 = phi i64 [ %polly.indvar_next821.1.1, %polly.loop_exit825.1.1 ], [ 0, %polly.loop_exit825.11155 ]
  %454 = add nuw nsw i64 %polly.indvar820.1.1, 32
  %455 = mul nuw nsw i64 %454, 640
  %456 = trunc i64 %454 to i32
  %broadcast.splatinsert1260 = insertelement <4 x i32> poison, i32 %456, i32 0
  %broadcast.splat1261 = shufflevector <4 x i32> %broadcast.splatinsert1260, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1252

vector.body1252:                                  ; preds = %vector.body1252, %polly.loop_header817.1.1
  %index1254 = phi i64 [ 0, %polly.loop_header817.1.1 ], [ %index.next1255, %vector.body1252 ]
  %vec.ind1258 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header817.1.1 ], [ %vec.ind.next1259, %vector.body1252 ]
  %457 = add nuw nsw <4 x i64> %vec.ind1258, <i64 32, i64 32, i64 32, i64 32>
  %458 = trunc <4 x i64> %457 to <4 x i32>
  %459 = mul <4 x i32> %broadcast.splat1261, %458
  %460 = add <4 x i32> %459, <i32 3, i32 3, i32 3, i32 3>
  %461 = urem <4 x i32> %460, <i32 80, i32 80, i32 80, i32 80>
  %462 = sitofp <4 x i32> %461 to <4 x double>
  %463 = fmul fast <4 x double> %462, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %464 = extractelement <4 x i64> %457, i32 0
  %465 = shl i64 %464, 3
  %466 = add nuw nsw i64 %465, %455
  %467 = getelementptr i8, i8* %call, i64 %466
  %468 = bitcast i8* %467 to <4 x double>*
  store <4 x double> %463, <4 x double>* %468, align 8, !alias.scope !98, !noalias !100
  %index.next1255 = add i64 %index1254, 4
  %vec.ind.next1259 = add <4 x i64> %vec.ind1258, <i64 4, i64 4, i64 4, i64 4>
  %469 = icmp eq i64 %index.next1255, 32
  br i1 %469, label %polly.loop_exit825.1.1, label %vector.body1252, !llvm.loop !121

polly.loop_exit825.1.1:                           ; preds = %vector.body1252
  %polly.indvar_next821.1.1 = add nuw nsw i64 %polly.indvar820.1.1, 1
  %exitcond1108.1.1.not = icmp eq i64 %polly.indvar_next821.1.1, 32
  br i1 %exitcond1108.1.1.not, label %polly.loop_header817.2.1, label %polly.loop_header817.1.1

polly.loop_header817.2.1:                         ; preds = %polly.loop_exit825.1.1, %polly.loop_exit825.2.1
  %polly.indvar820.2.1 = phi i64 [ %polly.indvar_next821.2.1, %polly.loop_exit825.2.1 ], [ 0, %polly.loop_exit825.1.1 ]
  %470 = add nuw nsw i64 %polly.indvar820.2.1, 32
  %471 = mul nuw nsw i64 %470, 640
  %472 = trunc i64 %470 to i32
  %broadcast.splatinsert1272 = insertelement <4 x i32> poison, i32 %472, i32 0
  %broadcast.splat1273 = shufflevector <4 x i32> %broadcast.splatinsert1272, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1264

vector.body1264:                                  ; preds = %vector.body1264, %polly.loop_header817.2.1
  %index1266 = phi i64 [ 0, %polly.loop_header817.2.1 ], [ %index.next1267, %vector.body1264 ]
  %vec.ind1270 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header817.2.1 ], [ %vec.ind.next1271, %vector.body1264 ]
  %473 = add nuw nsw <4 x i64> %vec.ind1270, <i64 64, i64 64, i64 64, i64 64>
  %474 = trunc <4 x i64> %473 to <4 x i32>
  %475 = mul <4 x i32> %broadcast.splat1273, %474
  %476 = add <4 x i32> %475, <i32 3, i32 3, i32 3, i32 3>
  %477 = urem <4 x i32> %476, <i32 80, i32 80, i32 80, i32 80>
  %478 = sitofp <4 x i32> %477 to <4 x double>
  %479 = fmul fast <4 x double> %478, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %480 = extractelement <4 x i64> %473, i32 0
  %481 = shl i64 %480, 3
  %482 = add nuw nsw i64 %481, %471
  %483 = getelementptr i8, i8* %call, i64 %482
  %484 = bitcast i8* %483 to <4 x double>*
  store <4 x double> %479, <4 x double>* %484, align 8, !alias.scope !98, !noalias !100
  %index.next1267 = add i64 %index1266, 4
  %vec.ind.next1271 = add <4 x i64> %vec.ind1270, <i64 4, i64 4, i64 4, i64 4>
  %485 = icmp eq i64 %index.next1267, 16
  br i1 %485, label %polly.loop_exit825.2.1, label %vector.body1264, !llvm.loop !122

polly.loop_exit825.2.1:                           ; preds = %vector.body1264
  %polly.indvar_next821.2.1 = add nuw nsw i64 %polly.indvar820.2.1, 1
  %exitcond1108.2.1.not = icmp eq i64 %polly.indvar_next821.2.1, 32
  br i1 %exitcond1108.2.1.not, label %polly.loop_header817.21158, label %polly.loop_header817.2.1

polly.loop_header817.21158:                       ; preds = %polly.loop_exit825.2.1, %polly.loop_exit825.21169
  %polly.indvar820.21157 = phi i64 [ %polly.indvar_next821.21167, %polly.loop_exit825.21169 ], [ 0, %polly.loop_exit825.2.1 ]
  %486 = add nuw nsw i64 %polly.indvar820.21157, 64
  %487 = mul nuw nsw i64 %486, 640
  %488 = trunc i64 %486 to i32
  %broadcast.splatinsert1286 = insertelement <4 x i32> poison, i32 %488, i32 0
  %broadcast.splat1287 = shufflevector <4 x i32> %broadcast.splatinsert1286, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1276

vector.body1276:                                  ; preds = %vector.body1276, %polly.loop_header817.21158
  %index1278 = phi i64 [ 0, %polly.loop_header817.21158 ], [ %index.next1279, %vector.body1276 ]
  %vec.ind1284 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header817.21158 ], [ %vec.ind.next1285, %vector.body1276 ]
  %489 = mul <4 x i32> %vec.ind1284, %broadcast.splat1287
  %490 = add <4 x i32> %489, <i32 3, i32 3, i32 3, i32 3>
  %491 = urem <4 x i32> %490, <i32 80, i32 80, i32 80, i32 80>
  %492 = sitofp <4 x i32> %491 to <4 x double>
  %493 = fmul fast <4 x double> %492, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %494 = shl i64 %index1278, 3
  %495 = add nuw nsw i64 %494, %487
  %496 = getelementptr i8, i8* %call, i64 %495
  %497 = bitcast i8* %496 to <4 x double>*
  store <4 x double> %493, <4 x double>* %497, align 8, !alias.scope !98, !noalias !100
  %index.next1279 = add i64 %index1278, 4
  %vec.ind.next1285 = add <4 x i32> %vec.ind1284, <i32 4, i32 4, i32 4, i32 4>
  %498 = icmp eq i64 %index.next1279, 32
  br i1 %498, label %polly.loop_exit825.21169, label %vector.body1276, !llvm.loop !123

polly.loop_exit825.21169:                         ; preds = %vector.body1276
  %polly.indvar_next821.21167 = add nuw nsw i64 %polly.indvar820.21157, 1
  %exitcond1108.21168.not = icmp eq i64 %polly.indvar_next821.21167, 16
  br i1 %exitcond1108.21168.not, label %polly.loop_header817.1.2, label %polly.loop_header817.21158

polly.loop_header817.1.2:                         ; preds = %polly.loop_exit825.21169, %polly.loop_exit825.1.2
  %polly.indvar820.1.2 = phi i64 [ %polly.indvar_next821.1.2, %polly.loop_exit825.1.2 ], [ 0, %polly.loop_exit825.21169 ]
  %499 = add nuw nsw i64 %polly.indvar820.1.2, 64
  %500 = mul nuw nsw i64 %499, 640
  %501 = trunc i64 %499 to i32
  %broadcast.splatinsert1298 = insertelement <4 x i32> poison, i32 %501, i32 0
  %broadcast.splat1299 = shufflevector <4 x i32> %broadcast.splatinsert1298, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1290

vector.body1290:                                  ; preds = %vector.body1290, %polly.loop_header817.1.2
  %index1292 = phi i64 [ 0, %polly.loop_header817.1.2 ], [ %index.next1293, %vector.body1290 ]
  %vec.ind1296 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header817.1.2 ], [ %vec.ind.next1297, %vector.body1290 ]
  %502 = add nuw nsw <4 x i64> %vec.ind1296, <i64 32, i64 32, i64 32, i64 32>
  %503 = trunc <4 x i64> %502 to <4 x i32>
  %504 = mul <4 x i32> %broadcast.splat1299, %503
  %505 = add <4 x i32> %504, <i32 3, i32 3, i32 3, i32 3>
  %506 = urem <4 x i32> %505, <i32 80, i32 80, i32 80, i32 80>
  %507 = sitofp <4 x i32> %506 to <4 x double>
  %508 = fmul fast <4 x double> %507, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %509 = extractelement <4 x i64> %502, i32 0
  %510 = shl i64 %509, 3
  %511 = add nuw nsw i64 %510, %500
  %512 = getelementptr i8, i8* %call, i64 %511
  %513 = bitcast i8* %512 to <4 x double>*
  store <4 x double> %508, <4 x double>* %513, align 8, !alias.scope !98, !noalias !100
  %index.next1293 = add i64 %index1292, 4
  %vec.ind.next1297 = add <4 x i64> %vec.ind1296, <i64 4, i64 4, i64 4, i64 4>
  %514 = icmp eq i64 %index.next1293, 32
  br i1 %514, label %polly.loop_exit825.1.2, label %vector.body1290, !llvm.loop !124

polly.loop_exit825.1.2:                           ; preds = %vector.body1290
  %polly.indvar_next821.1.2 = add nuw nsw i64 %polly.indvar820.1.2, 1
  %exitcond1108.1.2.not = icmp eq i64 %polly.indvar_next821.1.2, 16
  br i1 %exitcond1108.1.2.not, label %polly.loop_header817.2.2, label %polly.loop_header817.1.2

polly.loop_header817.2.2:                         ; preds = %polly.loop_exit825.1.2, %polly.loop_exit825.2.2
  %polly.indvar820.2.2 = phi i64 [ %polly.indvar_next821.2.2, %polly.loop_exit825.2.2 ], [ 0, %polly.loop_exit825.1.2 ]
  %515 = add nuw nsw i64 %polly.indvar820.2.2, 64
  %516 = mul nuw nsw i64 %515, 640
  %517 = trunc i64 %515 to i32
  %broadcast.splatinsert1310 = insertelement <4 x i32> poison, i32 %517, i32 0
  %broadcast.splat1311 = shufflevector <4 x i32> %broadcast.splatinsert1310, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1302

vector.body1302:                                  ; preds = %vector.body1302, %polly.loop_header817.2.2
  %index1304 = phi i64 [ 0, %polly.loop_header817.2.2 ], [ %index.next1305, %vector.body1302 ]
  %vec.ind1308 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header817.2.2 ], [ %vec.ind.next1309, %vector.body1302 ]
  %518 = add nuw nsw <4 x i64> %vec.ind1308, <i64 64, i64 64, i64 64, i64 64>
  %519 = trunc <4 x i64> %518 to <4 x i32>
  %520 = mul <4 x i32> %broadcast.splat1311, %519
  %521 = add <4 x i32> %520, <i32 3, i32 3, i32 3, i32 3>
  %522 = urem <4 x i32> %521, <i32 80, i32 80, i32 80, i32 80>
  %523 = sitofp <4 x i32> %522 to <4 x double>
  %524 = fmul fast <4 x double> %523, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %525 = extractelement <4 x i64> %518, i32 0
  %526 = shl i64 %525, 3
  %527 = add nuw nsw i64 %526, %516
  %528 = getelementptr i8, i8* %call, i64 %527
  %529 = bitcast i8* %528 to <4 x double>*
  store <4 x double> %524, <4 x double>* %529, align 8, !alias.scope !98, !noalias !100
  %index.next1305 = add i64 %index1304, 4
  %vec.ind.next1309 = add <4 x i64> %vec.ind1308, <i64 4, i64 4, i64 4, i64 4>
  %530 = icmp eq i64 %index.next1305, 16
  br i1 %530, label %polly.loop_exit825.2.2, label %vector.body1302, !llvm.loop !125

polly.loop_exit825.2.2:                           ; preds = %vector.body1302
  %polly.indvar_next821.2.2 = add nuw nsw i64 %polly.indvar820.2.2, 1
  %exitcond1108.2.2.not = icmp eq i64 %polly.indvar_next821.2.2, 16
  br i1 %exitcond1108.2.2.not, label %polly.loop_header844, label %polly.loop_header817.2.2
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
!25 = !{!"llvm.loop.tile.size", i32 4}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 8}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !23, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40, !41}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.loop.interchange.followup_interchanged", !42}
!42 = distinct !{!42, !12, !23, !40, !43, !44, !45}
!43 = !{!"llvm.data.pack.enable", i1 true}
!44 = !{!"llvm.data.pack.array", !21}
!45 = !{!"llvm.data.pack.allocate", !"malloc"}
!46 = distinct !{!46, !12, !23, !47, !48, !49, !34, !50, !56}
!47 = !{!"llvm.loop.id", !"i"}
!48 = !{!"llvm.loop.tile.enable", i1 true}
!49 = !{!"llvm.loop.tile.depth", i32 3}
!50 = !{!"llvm.loop.tile.followup_floor", !51}
!51 = distinct !{!51, !12, !23, !52, !53, !54, !55}
!52 = !{!"llvm.loop.id", !"i1"}
!53 = !{!"llvm.loop.interchange.enable", i1 true}
!54 = !{!"llvm.loop.interchange.depth", i32 5}
!55 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!56 = !{!"llvm.loop.tile.followup_tile", !57}
!57 = distinct !{!57, !12, !23, !58}
!58 = !{!"llvm.loop.id", !"i2"}
!59 = distinct !{!59, !12, !13}
!60 = distinct !{!60, !12, !13}
!61 = distinct !{!61, !12, !13}
!62 = distinct !{!62, !12, !13}
!63 = !{!64, !64, i64 0}
!64 = !{!"any pointer", !4, i64 0}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !68, !"polly.alias.scope.MemRef_call"}
!68 = distinct !{!68, !"polly.alias.scope.domain"}
!69 = !{!70, !71, !72}
!70 = distinct !{!70, !68, !"polly.alias.scope.MemRef_call1"}
!71 = distinct !{!71, !68, !"polly.alias.scope.MemRef_call2"}
!72 = distinct !{!72, !68, !"polly.alias.scope.Packed_MemRef_call1"}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !75, !13}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = !{!67, !71, !72}
!77 = !{!67, !70, !72}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82, !83}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !79, !"polly.alias.scope.Packed_MemRef_call1"}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !75, !13}
!86 = !{!78, !82, !83}
!87 = !{!78, !81, !83}
!88 = distinct !{!88, !89, !"polly.alias.scope.MemRef_call"}
!89 = distinct !{!89, !"polly.alias.scope.domain"}
!90 = !{!91, !92, !93}
!91 = distinct !{!91, !89, !"polly.alias.scope.MemRef_call1"}
!92 = distinct !{!92, !89, !"polly.alias.scope.MemRef_call2"}
!93 = distinct !{!93, !89, !"polly.alias.scope.Packed_MemRef_call1"}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !75, !13}
!96 = !{!88, !92, !93}
!97 = !{!88, !91, !93}
!98 = distinct !{!98, !99, !"polly.alias.scope.MemRef_call"}
!99 = distinct !{!99, !"polly.alias.scope.domain"}
!100 = !{!101, !102}
!101 = distinct !{!101, !99, !"polly.alias.scope.MemRef_call1"}
!102 = distinct !{!102, !99, !"polly.alias.scope.MemRef_call2"}
!103 = distinct !{!103, !13}
!104 = !{!101, !98}
!105 = distinct !{!105, !13}
!106 = !{!102, !98}
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
!125 = distinct !{!125, !13}
