; ModuleID = 'syr2k_recreations//mmp_syr2k_S_192.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_192.c"
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
  %scevgep1170 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1169 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1168 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1167 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1167, %scevgep1170
  %bound1 = icmp ult i8* %scevgep1169, %scevgep1168
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
  br i1 %exitcond18.not.i, label %vector.ph1174, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1174:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1181 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1182 = shufflevector <4 x i64> %broadcast.splatinsert1181, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1173

vector.body1173:                                  ; preds = %vector.body1173, %vector.ph1174
  %index1175 = phi i64 [ 0, %vector.ph1174 ], [ %index.next1176, %vector.body1173 ]
  %vec.ind1179 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1174 ], [ %vec.ind.next1180, %vector.body1173 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1179, %broadcast.splat1182
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call848, i64 %indvars.iv7.i, i64 %index1175
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1176 = add i64 %index1175, 4
  %vec.ind.next1180 = add <4 x i64> %vec.ind1179, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1176, 80
  br i1 %40, label %for.inc41.i, label %vector.body1173, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1173
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1174, !llvm.loop !17

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
  br i1 %min.iters.check, label %for.body3.i46.preheader1586, label %vector.ph1456

vector.ph1456:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1455

vector.body1455:                                  ; preds = %vector.body1455, %vector.ph1456
  %index1457 = phi i64 [ 0, %vector.ph1456 ], [ %index.next1458, %vector.body1455 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call848, i64 %indvars.iv21.i, i64 %index1457
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1458 = add i64 %index1457, 4
  %46 = icmp eq i64 %index.next1458, %n.vec
  br i1 %46, label %middle.block1453, label %vector.body1455, !llvm.loop !18

middle.block1453:                                 ; preds = %vector.body1455
  %cmp.n1460 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1460, label %for.inc6.i, label %for.body3.i46.preheader1586

for.body3.i46.preheader1586:                      ; preds = %for.body3.i46.preheader, %middle.block1453
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1453 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1586, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1586 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call848, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1453, %for.cond1.preheader.i45
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
  %min.iters.check1494 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1494, label %for.body3.i60.preheader1584, label %vector.ph1495

vector.ph1495:                                    ; preds = %for.body3.i60.preheader
  %n.vec1497 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1493

vector.body1493:                                  ; preds = %vector.body1493, %vector.ph1495
  %index1498 = phi i64 [ 0, %vector.ph1495 ], [ %index.next1499, %vector.body1493 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call848, i64 %indvars.iv21.i52, i64 %index1498
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1502 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1502, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1499 = add i64 %index1498, 4
  %57 = icmp eq i64 %index.next1499, %n.vec1497
  br i1 %57, label %middle.block1491, label %vector.body1493, !llvm.loop !57

middle.block1491:                                 ; preds = %vector.body1493
  %cmp.n1501 = icmp eq i64 %indvars.iv21.i52, %n.vec1497
  br i1 %cmp.n1501, label %for.inc6.i63, label %for.body3.i60.preheader1584

for.body3.i60.preheader1584:                      ; preds = %for.body3.i60.preheader, %middle.block1491
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1497, %middle.block1491 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1584, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1584 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call848, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1491, %for.cond1.preheader.i54
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
  %min.iters.check1539 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1539, label %for.body3.i99.preheader1582, label %vector.ph1540

vector.ph1540:                                    ; preds = %for.body3.i99.preheader
  %n.vec1542 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1538

vector.body1538:                                  ; preds = %vector.body1538, %vector.ph1540
  %index1543 = phi i64 [ 0, %vector.ph1540 ], [ %index.next1544, %vector.body1538 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call848, i64 %indvars.iv21.i91, i64 %index1543
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1547 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1547, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1544 = add i64 %index1543, 4
  %68 = icmp eq i64 %index.next1544, %n.vec1542
  br i1 %68, label %middle.block1536, label %vector.body1538, !llvm.loop !59

middle.block1536:                                 ; preds = %vector.body1538
  %cmp.n1546 = icmp eq i64 %indvars.iv21.i91, %n.vec1542
  br i1 %cmp.n1546, label %for.inc6.i102, label %for.body3.i99.preheader1582

for.body3.i99.preheader1582:                      ; preds = %for.body3.i99.preheader, %middle.block1536
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1542, %middle.block1536 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1582, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1582 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call848, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1536, %for.cond1.preheader.i93
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
  %indvar1551 = phi i64 [ %indvar.next1552, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1551, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1553 = icmp ult i64 %88, 4
  br i1 %min.iters.check1553, label %polly.loop_header192.preheader, label %vector.ph1554

vector.ph1554:                                    ; preds = %polly.loop_header
  %n.vec1556 = and i64 %88, -4
  br label %vector.body1550

vector.body1550:                                  ; preds = %vector.body1550, %vector.ph1554
  %index1557 = phi i64 [ 0, %vector.ph1554 ], [ %index.next1558, %vector.body1550 ]
  %90 = shl nuw nsw i64 %index1557, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1561 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1561, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1558 = add i64 %index1557, 4
  %95 = icmp eq i64 %index.next1558, %n.vec1556
  br i1 %95, label %middle.block1548, label %vector.body1550, !llvm.loop !72

middle.block1548:                                 ; preds = %vector.body1550
  %cmp.n1560 = icmp eq i64 %88, %n.vec1556
  br i1 %cmp.n1560, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1548
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1556, %middle.block1548 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1548
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1552 = add i64 %indvar1551, 1
  br i1 %exitcond1033.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1032.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1032.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 80
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1031.not = icmp eq i64 %polly.indvar_next204, 60
  br i1 %exitcond1031.not, label %polly.loop_header216, label %polly.loop_header200

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
  %exitcond1030.not = icmp eq i64 %polly.indvar_next210, 80
  br i1 %exitcond1030.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = shl nuw nsw i64 %polly.indvar219, 3
  %98 = lshr i64 %polly.indvar219, 2
  %99 = shl nsw i64 %polly.indvar219, 3
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %exitcond1029.not = icmp eq i64 %polly.indvar_next220, 10
  br i1 %exitcond1029.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %indvars.iv1018 = phi i64 [ %indvars.iv.next1019, %polly.loop_exit230 ], [ %indvars.iv, %polly.loop_header216 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit230 ], [ 0, %polly.loop_header216 ]
  %100 = mul nsw i64 %polly.indvar225, -32
  %101 = add i64 %97, %100
  %102 = shl nsw i64 %polly.indvar225, 5
  %103 = sub nsw i64 %99, %102
  %104 = add nuw nsw i64 %102, 32
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit259
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next1019 = add nsw i64 %indvars.iv1018, -32
  %exitcond1028.not = icmp eq i64 %polly.indvar225, %98
  br i1 %exitcond1028.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit259, %polly.loop_header222
  %indvars.iv1020 = phi i64 [ %indvars.iv.next1021, %polly.loop_exit259 ], [ %indvars.iv1018, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit259 ], [ 0, %polly.loop_header222 ]
  %105 = add i64 %101, %polly.indvar231
  %smin1565 = call i64 @llvm.smin.i64(i64 %105, i64 31)
  %106 = add nsw i64 %smin1565, 1
  %smin1024 = call i64 @llvm.smin.i64(i64 %indvars.iv1020, i64 31)
  %107 = add nsw i64 %polly.indvar231, %103
  %polly.loop_guard1156 = icmp sgt i64 %107, -1
  %108 = add nuw nsw i64 %polly.indvar231, %99
  %.not = icmp ult i64 %108, %104
  %polly.access.mul.call1251 = mul nuw nsw i64 %108, 60
  br i1 %polly.loop_guard1156, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.merge.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.merge.us ], [ 0, %polly.loop_header228 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 80
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header234.us ]
  %109 = add nuw nsw i64 %polly.indvar243.us, %102
  %polly.access.mul.call1247.us = mul nuw nsw i64 %109, 60
  %polly.access.add.call1248.us = add nuw nsw i64 %polly.access.mul.call1247.us, %polly.indvar237.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1700, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar243.us, %smin1024
  br i1 %exitcond1022.not, label %polly.cond.loopexit.us, label %polly.loop_header240.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1252.us = add nuw nsw i64 %polly.indvar237.us, %polly.access.mul.call1251
  %polly.access.call1253.us = getelementptr double, double* %polly.access.cast.call1700, i64 %polly.access.add.call1252.us
  %polly.access.call1253.load.us = load double, double* %polly.access.call1253.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1255.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %107
  %polly.access.Packed_MemRef_call1256.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255.us
  store double %polly.access.call1253.load.us, double* %polly.access.Packed_MemRef_call1256.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1023.not = icmp eq i64 %polly.indvar_next238.us, 60
  br i1 %exitcond1023.not, label %polly.loop_header257.preheader, label %polly.loop_header234.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header240.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %.not, label %polly.loop_exit259, label %polly.loop_header234

polly.loop_exit259:                               ; preds = %polly.loop_exit266.loopexit.us, %polly.loop_header228.split, %polly.loop_header257.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1021 = add nsw i64 %indvars.iv1020, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar_next232, 8
  br i1 %exitcond1027.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_header234
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_header234 ], [ 0, %polly.loop_header228.split ]
  %polly.access.add.call1252 = add nuw nsw i64 %polly.indvar237, %polly.access.mul.call1251
  %polly.access.call1253 = getelementptr double, double* %polly.access.cast.call1700, i64 %polly.access.add.call1252
  %polly.access.call1253.load = load double, double* %polly.access.call1253, align 8, !alias.scope !68, !noalias !76
  %polly.access.mul.Packed_MemRef_call1254 = mul nuw nsw i64 %polly.indvar237, 80
  %polly.access.add.Packed_MemRef_call1255 = add nsw i64 %polly.access.mul.Packed_MemRef_call1254, %107
  %polly.access.Packed_MemRef_call1256 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255
  store double %polly.access.call1253.load, double* %polly.access.Packed_MemRef_call1256, align 8
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next238, 60
  br i1 %exitcond.not, label %polly.loop_header257.preheader, label %polly.loop_header234

polly.loop_header257.preheader:                   ; preds = %polly.loop_header234, %polly.merge.us
  %110 = mul nuw nsw i64 %108, 640
  br i1 %polly.loop_guard1156, label %polly.loop_header257.us, label %polly.loop_exit259

polly.loop_header257.us:                          ; preds = %polly.loop_header257.preheader, %polly.loop_exit266.loopexit.us
  %polly.indvar260.us = phi i64 [ %polly.indvar_next261.us, %polly.loop_exit266.loopexit.us ], [ 0, %polly.loop_header257.preheader ]
  %polly.access.mul.Packed_MemRef_call1271.us = mul nuw nsw i64 %polly.indvar260.us, 80
  %polly.access.add.Packed_MemRef_call2276.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1271.us, %108
  %polly.access.Packed_MemRef_call2277.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2276.us
  %_p_scalar_278.us = load double, double* %polly.access.Packed_MemRef_call2277.us, align 8
  %polly.access.add.Packed_MemRef_call1284.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1271.us, %107
  %polly.access.Packed_MemRef_call1285.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call1285.us, align 8
  %min.iters.check1566 = icmp ult i64 %106, 4
  br i1 %min.iters.check1566, label %polly.loop_header264.us.preheader, label %vector.ph1567

vector.ph1567:                                    ; preds = %polly.loop_header257.us
  %n.vec1569 = and i64 %106, -4
  %broadcast.splatinsert1575 = insertelement <4 x double> poison, double %_p_scalar_278.us, i32 0
  %broadcast.splat1576 = shufflevector <4 x double> %broadcast.splatinsert1575, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1578 = insertelement <4 x double> poison, double %_p_scalar_286.us, i32 0
  %broadcast.splat1579 = shufflevector <4 x double> %broadcast.splatinsert1578, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1564

vector.body1564:                                  ; preds = %vector.body1564, %vector.ph1567
  %index1570 = phi i64 [ 0, %vector.ph1567 ], [ %index.next1571, %vector.body1564 ]
  %111 = add nuw nsw i64 %index1570, %102
  %112 = add nuw nsw i64 %index1570, %polly.access.mul.Packed_MemRef_call1271.us
  %113 = getelementptr double, double* %Packed_MemRef_call1, i64 %112
  %114 = bitcast double* %113 to <4 x double>*
  %wide.load1574 = load <4 x double>, <4 x double>* %114, align 8
  %115 = fmul fast <4 x double> %broadcast.splat1576, %wide.load1574
  %116 = add nuw nsw i64 %111, %polly.access.mul.Packed_MemRef_call1271.us
  %117 = getelementptr double, double* %Packed_MemRef_call2, i64 %116
  %118 = bitcast double* %117 to <4 x double>*
  %wide.load1577 = load <4 x double>, <4 x double>* %118, align 8
  %119 = fmul fast <4 x double> %broadcast.splat1579, %wide.load1577
  %120 = shl i64 %111, 3
  %121 = add nuw nsw i64 %120, %110
  %122 = getelementptr i8, i8* %call, i64 %121
  %123 = bitcast i8* %122 to <4 x double>*
  %wide.load1580 = load <4 x double>, <4 x double>* %123, align 8, !alias.scope !65, !noalias !67
  %124 = fadd fast <4 x double> %119, %115
  %125 = fmul fast <4 x double> %124, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %126 = fadd fast <4 x double> %125, %wide.load1580
  %127 = bitcast i8* %122 to <4 x double>*
  store <4 x double> %126, <4 x double>* %127, align 8, !alias.scope !65, !noalias !67
  %index.next1571 = add i64 %index1570, 4
  %128 = icmp eq i64 %index.next1571, %n.vec1569
  br i1 %128, label %middle.block1562, label %vector.body1564, !llvm.loop !77

middle.block1562:                                 ; preds = %vector.body1564
  %cmp.n1573 = icmp eq i64 %106, %n.vec1569
  br i1 %cmp.n1573, label %polly.loop_exit266.loopexit.us, label %polly.loop_header264.us.preheader

polly.loop_header264.us.preheader:                ; preds = %polly.loop_header257.us, %middle.block1562
  %polly.indvar268.us.ph = phi i64 [ 0, %polly.loop_header257.us ], [ %n.vec1569, %middle.block1562 ]
  br label %polly.loop_header264.us

polly.loop_header264.us:                          ; preds = %polly.loop_header264.us.preheader, %polly.loop_header264.us
  %polly.indvar268.us = phi i64 [ %polly.indvar_next269.us, %polly.loop_header264.us ], [ %polly.indvar268.us.ph, %polly.loop_header264.us.preheader ]
  %129 = add nuw nsw i64 %polly.indvar268.us, %102
  %polly.access.add.Packed_MemRef_call1272.us = add nuw nsw i64 %polly.indvar268.us, %polly.access.mul.Packed_MemRef_call1271.us
  %polly.access.Packed_MemRef_call1273.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1272.us
  %_p_scalar_274.us = load double, double* %polly.access.Packed_MemRef_call1273.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_278.us, %_p_scalar_274.us
  %polly.access.add.Packed_MemRef_call2280.us = add nuw nsw i64 %129, %polly.access.mul.Packed_MemRef_call1271.us
  %polly.access.Packed_MemRef_call2281.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2280.us
  %_p_scalar_282.us = load double, double* %polly.access.Packed_MemRef_call2281.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_286.us, %_p_scalar_282.us
  %130 = shl i64 %129, 3
  %131 = add nuw nsw i64 %130, %110
  %scevgep287.us = getelementptr i8, i8* %call, i64 %131
  %scevgep287288.us = bitcast i8* %scevgep287.us to double*
  %_p_scalar_289.us = load double, double* %scevgep287288.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_289.us
  store double %p_add42.i118.us, double* %scevgep287288.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next269.us = add nuw nsw i64 %polly.indvar268.us, 1
  %exitcond1025.not = icmp eq i64 %polly.indvar268.us, %smin1024
  br i1 %exitcond1025.not, label %polly.loop_exit266.loopexit.us, label %polly.loop_header264.us, !llvm.loop !78

polly.loop_exit266.loopexit.us:                   ; preds = %polly.loop_header264.us, %middle.block1562
  %polly.indvar_next261.us = add nuw nsw i64 %polly.indvar260.us, 1
  %exitcond1026.not = icmp eq i64 %polly.indvar_next261.us, 60
  br i1 %exitcond1026.not, label %polly.loop_exit259, label %polly.loop_header257.us

polly.start292:                                   ; preds = %kernel_syr2k.exit
  %malloccall294 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall296 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header380

polly.exiting293:                                 ; preds = %polly.loop_exit421
  tail call void @free(i8* %malloccall294)
  tail call void @free(i8* %malloccall296)
  br label %kernel_syr2k.exit90

polly.loop_header380:                             ; preds = %polly.loop_exit388, %polly.start292
  %indvar1506 = phi i64 [ %indvar.next1507, %polly.loop_exit388 ], [ 0, %polly.start292 ]
  %polly.indvar383 = phi i64 [ %polly.indvar_next384, %polly.loop_exit388 ], [ 1, %polly.start292 ]
  %132 = add i64 %indvar1506, 1
  %133 = mul nuw nsw i64 %polly.indvar383, 640
  %scevgep392 = getelementptr i8, i8* %call, i64 %133
  %min.iters.check1508 = icmp ult i64 %132, 4
  br i1 %min.iters.check1508, label %polly.loop_header386.preheader, label %vector.ph1509

vector.ph1509:                                    ; preds = %polly.loop_header380
  %n.vec1511 = and i64 %132, -4
  br label %vector.body1505

vector.body1505:                                  ; preds = %vector.body1505, %vector.ph1509
  %index1512 = phi i64 [ 0, %vector.ph1509 ], [ %index.next1513, %vector.body1505 ]
  %134 = shl nuw nsw i64 %index1512, 3
  %135 = getelementptr i8, i8* %scevgep392, i64 %134
  %136 = bitcast i8* %135 to <4 x double>*
  %wide.load1516 = load <4 x double>, <4 x double>* %136, align 8, !alias.scope !79, !noalias !81
  %137 = fmul fast <4 x double> %wide.load1516, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %138 = bitcast i8* %135 to <4 x double>*
  store <4 x double> %137, <4 x double>* %138, align 8, !alias.scope !79, !noalias !81
  %index.next1513 = add i64 %index1512, 4
  %139 = icmp eq i64 %index.next1513, %n.vec1511
  br i1 %139, label %middle.block1503, label %vector.body1505, !llvm.loop !86

middle.block1503:                                 ; preds = %vector.body1505
  %cmp.n1515 = icmp eq i64 %132, %n.vec1511
  br i1 %cmp.n1515, label %polly.loop_exit388, label %polly.loop_header386.preheader

polly.loop_header386.preheader:                   ; preds = %polly.loop_header380, %middle.block1503
  %polly.indvar389.ph = phi i64 [ 0, %polly.loop_header380 ], [ %n.vec1511, %middle.block1503 ]
  br label %polly.loop_header386

polly.loop_exit388:                               ; preds = %polly.loop_header386, %middle.block1503
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar_next384, 80
  %indvar.next1507 = add i64 %indvar1506, 1
  br i1 %exitcond1053.not, label %polly.loop_header396.preheader, label %polly.loop_header380

polly.loop_header396.preheader:                   ; preds = %polly.loop_exit388
  %Packed_MemRef_call1295 = bitcast i8* %malloccall294 to double*
  %Packed_MemRef_call2297 = bitcast i8* %malloccall296 to double*
  br label %polly.loop_header396

polly.loop_header386:                             ; preds = %polly.loop_header386.preheader, %polly.loop_header386
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_header386 ], [ %polly.indvar389.ph, %polly.loop_header386.preheader ]
  %140 = shl nuw nsw i64 %polly.indvar389, 3
  %scevgep393 = getelementptr i8, i8* %scevgep392, i64 %140
  %scevgep393394 = bitcast i8* %scevgep393 to double*
  %_p_scalar_395 = load double, double* %scevgep393394, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_395, 1.200000e+00
  store double %p_mul.i57, double* %scevgep393394, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next390, %polly.indvar383
  br i1 %exitcond1052.not, label %polly.loop_exit388, label %polly.loop_header386, !llvm.loop !87

polly.loop_header396:                             ; preds = %polly.loop_header396.preheader, %polly.loop_exit404
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit404 ], [ 0, %polly.loop_header396.preheader ]
  %polly.access.mul.Packed_MemRef_call2297 = mul nuw nsw i64 %polly.indvar399, 80
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_header402
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar_next400, 60
  br i1 %exitcond1051.not, label %polly.loop_header412, label %polly.loop_header396

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
  %exitcond1050.not = icmp eq i64 %polly.indvar_next406, 80
  br i1 %exitcond1050.not, label %polly.loop_exit404, label %polly.loop_header402

polly.loop_header412:                             ; preds = %polly.loop_exit404, %polly.loop_exit421
  %indvars.iv1035 = phi i64 [ %indvars.iv.next1036, %polly.loop_exit421 ], [ 0, %polly.loop_exit404 ]
  %polly.indvar415 = phi i64 [ %polly.indvar_next416, %polly.loop_exit421 ], [ 0, %polly.loop_exit404 ]
  %141 = shl nuw nsw i64 %polly.indvar415, 3
  %142 = lshr i64 %polly.indvar415, 2
  %143 = shl nsw i64 %polly.indvar415, 3
  br label %polly.loop_header419

polly.loop_exit421:                               ; preds = %polly.loop_exit427
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %indvars.iv.next1036 = add nuw nsw i64 %indvars.iv1035, 8
  %exitcond1049.not = icmp eq i64 %polly.indvar_next416, 10
  br i1 %exitcond1049.not, label %polly.exiting293, label %polly.loop_header412

polly.loop_header419:                             ; preds = %polly.loop_exit427, %polly.loop_header412
  %indvars.iv1037 = phi i64 [ %indvars.iv.next1038, %polly.loop_exit427 ], [ %indvars.iv1035, %polly.loop_header412 ]
  %polly.indvar422 = phi i64 [ %polly.indvar_next423, %polly.loop_exit427 ], [ 0, %polly.loop_header412 ]
  %144 = mul nsw i64 %polly.indvar422, -32
  %145 = add i64 %141, %144
  %146 = shl nsw i64 %polly.indvar422, 5
  %147 = sub nsw i64 %143, %146
  %148 = add nuw nsw i64 %146, 32
  br label %polly.loop_header425

polly.loop_exit427:                               ; preds = %polly.loop_exit462
  %polly.indvar_next423 = add nuw nsw i64 %polly.indvar422, 1
  %indvars.iv.next1038 = add nsw i64 %indvars.iv1037, -32
  %exitcond1048.not = icmp eq i64 %polly.indvar422, %142
  br i1 %exitcond1048.not, label %polly.loop_exit421, label %polly.loop_header419

polly.loop_header425:                             ; preds = %polly.loop_exit462, %polly.loop_header419
  %indvars.iv1039 = phi i64 [ %indvars.iv.next1040, %polly.loop_exit462 ], [ %indvars.iv1037, %polly.loop_header419 ]
  %polly.indvar428 = phi i64 [ %polly.indvar_next429, %polly.loop_exit462 ], [ 0, %polly.loop_header419 ]
  %149 = add i64 %145, %polly.indvar428
  %smin1520 = call i64 @llvm.smin.i64(i64 %149, i64 31)
  %150 = add nsw i64 %smin1520, 1
  %smin1044 = call i64 @llvm.smin.i64(i64 %indvars.iv1039, i64 31)
  %151 = add nsw i64 %polly.indvar428, %147
  %polly.loop_guard4411157 = icmp sgt i64 %151, -1
  %152 = add nuw nsw i64 %polly.indvar428, %143
  %.not902 = icmp ult i64 %152, %148
  %polly.access.mul.call1454 = mul nuw nsw i64 %152, 60
  br i1 %polly.loop_guard4411157, label %polly.loop_header431.us, label %polly.loop_header425.split

polly.loop_header431.us:                          ; preds = %polly.loop_header425, %polly.merge450.us
  %polly.indvar434.us = phi i64 [ %polly.indvar_next435.us, %polly.merge450.us ], [ 0, %polly.loop_header425 ]
  %polly.access.mul.Packed_MemRef_call1295.us = mul nuw nsw i64 %polly.indvar434.us, 80
  br label %polly.loop_header438.us

polly.loop_header438.us:                          ; preds = %polly.loop_header431.us, %polly.loop_header438.us
  %polly.indvar442.us = phi i64 [ %polly.indvar_next443.us, %polly.loop_header438.us ], [ 0, %polly.loop_header431.us ]
  %153 = add nuw nsw i64 %polly.indvar442.us, %146
  %polly.access.mul.call1446.us = mul nuw nsw i64 %153, 60
  %polly.access.add.call1447.us = add nuw nsw i64 %polly.access.mul.call1446.us, %polly.indvar434.us
  %polly.access.call1448.us = getelementptr double, double* %polly.access.cast.call1700, i64 %polly.access.add.call1447.us
  %polly.access.call1448.load.us = load double, double* %polly.access.call1448.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1295.us = add nuw nsw i64 %polly.indvar442.us, %polly.access.mul.Packed_MemRef_call1295.us
  %polly.access.Packed_MemRef_call1295.us = getelementptr double, double* %Packed_MemRef_call1295, i64 %polly.access.add.Packed_MemRef_call1295.us
  store double %polly.access.call1448.load.us, double* %polly.access.Packed_MemRef_call1295.us, align 8
  %polly.indvar_next443.us = add nuw nsw i64 %polly.indvar442.us, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar442.us, %smin1044
  br i1 %exitcond1042.not, label %polly.cond449.loopexit.us, label %polly.loop_header438.us

polly.then451.us:                                 ; preds = %polly.cond449.loopexit.us
  %polly.access.add.call1455.us = add nuw nsw i64 %polly.indvar434.us, %polly.access.mul.call1454
  %polly.access.call1456.us = getelementptr double, double* %polly.access.cast.call1700, i64 %polly.access.add.call1455.us
  %polly.access.call1456.load.us = load double, double* %polly.access.call1456.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1295458.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1295.us, %151
  %polly.access.Packed_MemRef_call1295459.us = getelementptr double, double* %Packed_MemRef_call1295, i64 %polly.access.add.Packed_MemRef_call1295458.us
  store double %polly.access.call1456.load.us, double* %polly.access.Packed_MemRef_call1295459.us, align 8
  br label %polly.merge450.us

polly.merge450.us:                                ; preds = %polly.then451.us, %polly.cond449.loopexit.us
  %polly.indvar_next435.us = add nuw nsw i64 %polly.indvar434.us, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar_next435.us, 60
  br i1 %exitcond1043.not, label %polly.loop_header460.preheader, label %polly.loop_header431.us

polly.cond449.loopexit.us:                        ; preds = %polly.loop_header438.us
  br i1 %.not902, label %polly.merge450.us, label %polly.then451.us

polly.loop_header425.split:                       ; preds = %polly.loop_header425
  br i1 %.not902, label %polly.loop_exit462, label %polly.loop_header431

polly.loop_exit462:                               ; preds = %polly.loop_exit469.loopexit.us, %polly.loop_header425.split, %polly.loop_header460.preheader
  %polly.indvar_next429 = add nuw nsw i64 %polly.indvar428, 1
  %indvars.iv.next1040 = add nsw i64 %indvars.iv1039, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar_next429, 8
  br i1 %exitcond1047.not, label %polly.loop_exit427, label %polly.loop_header425

polly.loop_header431:                             ; preds = %polly.loop_header425.split, %polly.loop_header431
  %polly.indvar434 = phi i64 [ %polly.indvar_next435, %polly.loop_header431 ], [ 0, %polly.loop_header425.split ]
  %polly.access.add.call1455 = add nuw nsw i64 %polly.indvar434, %polly.access.mul.call1454
  %polly.access.call1456 = getelementptr double, double* %polly.access.cast.call1700, i64 %polly.access.add.call1455
  %polly.access.call1456.load = load double, double* %polly.access.call1456, align 8, !alias.scope !82, !noalias !89
  %polly.access.mul.Packed_MemRef_call1295457 = mul nuw nsw i64 %polly.indvar434, 80
  %polly.access.add.Packed_MemRef_call1295458 = add nsw i64 %polly.access.mul.Packed_MemRef_call1295457, %151
  %polly.access.Packed_MemRef_call1295459 = getelementptr double, double* %Packed_MemRef_call1295, i64 %polly.access.add.Packed_MemRef_call1295458
  store double %polly.access.call1456.load, double* %polly.access.Packed_MemRef_call1295459, align 8
  %polly.indvar_next435 = add nuw nsw i64 %polly.indvar434, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar_next435, 60
  br i1 %exitcond1034.not, label %polly.loop_header460.preheader, label %polly.loop_header431

polly.loop_header460.preheader:                   ; preds = %polly.loop_header431, %polly.merge450.us
  %154 = mul nuw nsw i64 %152, 640
  br i1 %polly.loop_guard4411157, label %polly.loop_header460.us, label %polly.loop_exit462

polly.loop_header460.us:                          ; preds = %polly.loop_header460.preheader, %polly.loop_exit469.loopexit.us
  %polly.indvar463.us = phi i64 [ %polly.indvar_next464.us, %polly.loop_exit469.loopexit.us ], [ 0, %polly.loop_header460.preheader ]
  %polly.access.mul.Packed_MemRef_call1295474.us = mul nuw nsw i64 %polly.indvar463.us, 80
  %polly.access.add.Packed_MemRef_call2297479.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1295474.us, %152
  %polly.access.Packed_MemRef_call2297480.us = getelementptr double, double* %Packed_MemRef_call2297, i64 %polly.access.add.Packed_MemRef_call2297479.us
  %_p_scalar_481.us = load double, double* %polly.access.Packed_MemRef_call2297480.us, align 8
  %polly.access.add.Packed_MemRef_call1295487.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1295474.us, %151
  %polly.access.Packed_MemRef_call1295488.us = getelementptr double, double* %Packed_MemRef_call1295, i64 %polly.access.add.Packed_MemRef_call1295487.us
  %_p_scalar_489.us = load double, double* %polly.access.Packed_MemRef_call1295488.us, align 8
  %min.iters.check1521 = icmp ult i64 %150, 4
  br i1 %min.iters.check1521, label %polly.loop_header467.us.preheader, label %vector.ph1522

vector.ph1522:                                    ; preds = %polly.loop_header460.us
  %n.vec1524 = and i64 %150, -4
  %broadcast.splatinsert1530 = insertelement <4 x double> poison, double %_p_scalar_481.us, i32 0
  %broadcast.splat1531 = shufflevector <4 x double> %broadcast.splatinsert1530, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1533 = insertelement <4 x double> poison, double %_p_scalar_489.us, i32 0
  %broadcast.splat1534 = shufflevector <4 x double> %broadcast.splatinsert1533, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1519

vector.body1519:                                  ; preds = %vector.body1519, %vector.ph1522
  %index1525 = phi i64 [ 0, %vector.ph1522 ], [ %index.next1526, %vector.body1519 ]
  %155 = add nuw nsw i64 %index1525, %146
  %156 = add nuw nsw i64 %index1525, %polly.access.mul.Packed_MemRef_call1295474.us
  %157 = getelementptr double, double* %Packed_MemRef_call1295, i64 %156
  %158 = bitcast double* %157 to <4 x double>*
  %wide.load1529 = load <4 x double>, <4 x double>* %158, align 8
  %159 = fmul fast <4 x double> %broadcast.splat1531, %wide.load1529
  %160 = add nuw nsw i64 %155, %polly.access.mul.Packed_MemRef_call1295474.us
  %161 = getelementptr double, double* %Packed_MemRef_call2297, i64 %160
  %162 = bitcast double* %161 to <4 x double>*
  %wide.load1532 = load <4 x double>, <4 x double>* %162, align 8
  %163 = fmul fast <4 x double> %broadcast.splat1534, %wide.load1532
  %164 = shl i64 %155, 3
  %165 = add nuw nsw i64 %164, %154
  %166 = getelementptr i8, i8* %call, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  %wide.load1535 = load <4 x double>, <4 x double>* %167, align 8, !alias.scope !79, !noalias !81
  %168 = fadd fast <4 x double> %163, %159
  %169 = fmul fast <4 x double> %168, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %170 = fadd fast <4 x double> %169, %wide.load1535
  %171 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %170, <4 x double>* %171, align 8, !alias.scope !79, !noalias !81
  %index.next1526 = add i64 %index1525, 4
  %172 = icmp eq i64 %index.next1526, %n.vec1524
  br i1 %172, label %middle.block1517, label %vector.body1519, !llvm.loop !90

middle.block1517:                                 ; preds = %vector.body1519
  %cmp.n1528 = icmp eq i64 %150, %n.vec1524
  br i1 %cmp.n1528, label %polly.loop_exit469.loopexit.us, label %polly.loop_header467.us.preheader

polly.loop_header467.us.preheader:                ; preds = %polly.loop_header460.us, %middle.block1517
  %polly.indvar471.us.ph = phi i64 [ 0, %polly.loop_header460.us ], [ %n.vec1524, %middle.block1517 ]
  br label %polly.loop_header467.us

polly.loop_header467.us:                          ; preds = %polly.loop_header467.us.preheader, %polly.loop_header467.us
  %polly.indvar471.us = phi i64 [ %polly.indvar_next472.us, %polly.loop_header467.us ], [ %polly.indvar471.us.ph, %polly.loop_header467.us.preheader ]
  %173 = add nuw nsw i64 %polly.indvar471.us, %146
  %polly.access.add.Packed_MemRef_call1295475.us = add nuw nsw i64 %polly.indvar471.us, %polly.access.mul.Packed_MemRef_call1295474.us
  %polly.access.Packed_MemRef_call1295476.us = getelementptr double, double* %Packed_MemRef_call1295, i64 %polly.access.add.Packed_MemRef_call1295475.us
  %_p_scalar_477.us = load double, double* %polly.access.Packed_MemRef_call1295476.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_481.us, %_p_scalar_477.us
  %polly.access.add.Packed_MemRef_call2297483.us = add nuw nsw i64 %173, %polly.access.mul.Packed_MemRef_call1295474.us
  %polly.access.Packed_MemRef_call2297484.us = getelementptr double, double* %Packed_MemRef_call2297, i64 %polly.access.add.Packed_MemRef_call2297483.us
  %_p_scalar_485.us = load double, double* %polly.access.Packed_MemRef_call2297484.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_489.us, %_p_scalar_485.us
  %174 = shl i64 %173, 3
  %175 = add nuw nsw i64 %174, %154
  %scevgep490.us = getelementptr i8, i8* %call, i64 %175
  %scevgep490491.us = bitcast i8* %scevgep490.us to double*
  %_p_scalar_492.us = load double, double* %scevgep490491.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_492.us
  store double %p_add42.i79.us, double* %scevgep490491.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next472.us = add nuw nsw i64 %polly.indvar471.us, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar471.us, %smin1044
  br i1 %exitcond1045.not, label %polly.loop_exit469.loopexit.us, label %polly.loop_header467.us, !llvm.loop !91

polly.loop_exit469.loopexit.us:                   ; preds = %polly.loop_header467.us, %middle.block1517
  %polly.indvar_next464.us = add nuw nsw i64 %polly.indvar463.us, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar_next464.us, 60
  br i1 %exitcond1046.not, label %polly.loop_exit462, label %polly.loop_header460.us

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
  %176 = add i64 %indvar, 1
  %177 = mul nuw nsw i64 %polly.indvar586, 640
  %scevgep595 = getelementptr i8, i8* %call, i64 %177
  %min.iters.check1464 = icmp ult i64 %176, 4
  br i1 %min.iters.check1464, label %polly.loop_header589.preheader, label %vector.ph1465

vector.ph1465:                                    ; preds = %polly.loop_header583
  %n.vec1467 = and i64 %176, -4
  br label %vector.body1463

vector.body1463:                                  ; preds = %vector.body1463, %vector.ph1465
  %index1468 = phi i64 [ 0, %vector.ph1465 ], [ %index.next1469, %vector.body1463 ]
  %178 = shl nuw nsw i64 %index1468, 3
  %179 = getelementptr i8, i8* %scevgep595, i64 %178
  %180 = bitcast i8* %179 to <4 x double>*
  %wide.load1472 = load <4 x double>, <4 x double>* %180, align 8, !alias.scope !92, !noalias !94
  %181 = fmul fast <4 x double> %wide.load1472, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %182 = bitcast i8* %179 to <4 x double>*
  store <4 x double> %181, <4 x double>* %182, align 8, !alias.scope !92, !noalias !94
  %index.next1469 = add i64 %index1468, 4
  %183 = icmp eq i64 %index.next1469, %n.vec1467
  br i1 %183, label %middle.block1461, label %vector.body1463, !llvm.loop !99

middle.block1461:                                 ; preds = %vector.body1463
  %cmp.n1471 = icmp eq i64 %176, %n.vec1467
  br i1 %cmp.n1471, label %polly.loop_exit591, label %polly.loop_header589.preheader

polly.loop_header589.preheader:                   ; preds = %polly.loop_header583, %middle.block1461
  %polly.indvar592.ph = phi i64 [ 0, %polly.loop_header583 ], [ %n.vec1467, %middle.block1461 ]
  br label %polly.loop_header589

polly.loop_exit591:                               ; preds = %polly.loop_header589, %middle.block1461
  %polly.indvar_next587 = add nuw nsw i64 %polly.indvar586, 1
  %exitcond1073.not = icmp eq i64 %polly.indvar_next587, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1073.not, label %polly.loop_header599.preheader, label %polly.loop_header583

polly.loop_header599.preheader:                   ; preds = %polly.loop_exit591
  %Packed_MemRef_call1498 = bitcast i8* %malloccall497 to double*
  %Packed_MemRef_call2500 = bitcast i8* %malloccall499 to double*
  br label %polly.loop_header599

polly.loop_header589:                             ; preds = %polly.loop_header589.preheader, %polly.loop_header589
  %polly.indvar592 = phi i64 [ %polly.indvar_next593, %polly.loop_header589 ], [ %polly.indvar592.ph, %polly.loop_header589.preheader ]
  %184 = shl nuw nsw i64 %polly.indvar592, 3
  %scevgep596 = getelementptr i8, i8* %scevgep595, i64 %184
  %scevgep596597 = bitcast i8* %scevgep596 to double*
  %_p_scalar_598 = load double, double* %scevgep596597, align 8, !alias.scope !92, !noalias !94
  %p_mul.i = fmul fast double %_p_scalar_598, 1.200000e+00
  store double %p_mul.i, double* %scevgep596597, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next593 = add nuw nsw i64 %polly.indvar592, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar_next593, %polly.indvar586
  br i1 %exitcond1072.not, label %polly.loop_exit591, label %polly.loop_header589, !llvm.loop !100

polly.loop_header599:                             ; preds = %polly.loop_header599.preheader, %polly.loop_exit607
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_exit607 ], [ 0, %polly.loop_header599.preheader ]
  %polly.access.mul.Packed_MemRef_call2500 = mul nuw nsw i64 %polly.indvar602, 80
  br label %polly.loop_header605

polly.loop_exit607:                               ; preds = %polly.loop_header605
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar_next603, 60
  br i1 %exitcond1071.not, label %polly.loop_header615, label %polly.loop_header599

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
  %exitcond1070.not = icmp eq i64 %polly.indvar_next609, 80
  br i1 %exitcond1070.not, label %polly.loop_exit607, label %polly.loop_header605

polly.loop_header615:                             ; preds = %polly.loop_exit607, %polly.loop_exit624
  %indvars.iv1055 = phi i64 [ %indvars.iv.next1056, %polly.loop_exit624 ], [ 0, %polly.loop_exit607 ]
  %polly.indvar618 = phi i64 [ %polly.indvar_next619, %polly.loop_exit624 ], [ 0, %polly.loop_exit607 ]
  %185 = shl nuw nsw i64 %polly.indvar618, 3
  %186 = lshr i64 %polly.indvar618, 2
  %187 = shl nsw i64 %polly.indvar618, 3
  br label %polly.loop_header622

polly.loop_exit624:                               ; preds = %polly.loop_exit630
  %polly.indvar_next619 = add nuw nsw i64 %polly.indvar618, 1
  %indvars.iv.next1056 = add nuw nsw i64 %indvars.iv1055, 8
  %exitcond1069.not = icmp eq i64 %polly.indvar_next619, 10
  br i1 %exitcond1069.not, label %polly.exiting496, label %polly.loop_header615

polly.loop_header622:                             ; preds = %polly.loop_exit630, %polly.loop_header615
  %indvars.iv1057 = phi i64 [ %indvars.iv.next1058, %polly.loop_exit630 ], [ %indvars.iv1055, %polly.loop_header615 ]
  %polly.indvar625 = phi i64 [ %polly.indvar_next626, %polly.loop_exit630 ], [ 0, %polly.loop_header615 ]
  %188 = mul nsw i64 %polly.indvar625, -32
  %189 = add i64 %185, %188
  %190 = shl nsw i64 %polly.indvar625, 5
  %191 = sub nsw i64 %187, %190
  %192 = add nuw nsw i64 %190, 32
  br label %polly.loop_header628

polly.loop_exit630:                               ; preds = %polly.loop_exit665
  %polly.indvar_next626 = add nuw nsw i64 %polly.indvar625, 1
  %indvars.iv.next1058 = add nsw i64 %indvars.iv1057, -32
  %exitcond1068.not = icmp eq i64 %polly.indvar625, %186
  br i1 %exitcond1068.not, label %polly.loop_exit624, label %polly.loop_header622

polly.loop_header628:                             ; preds = %polly.loop_exit665, %polly.loop_header622
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060, %polly.loop_exit665 ], [ %indvars.iv1057, %polly.loop_header622 ]
  %polly.indvar631 = phi i64 [ %polly.indvar_next632, %polly.loop_exit665 ], [ 0, %polly.loop_header622 ]
  %193 = add i64 %189, %polly.indvar631
  %smin = call i64 @llvm.smin.i64(i64 %193, i64 31)
  %194 = add nsw i64 %smin, 1
  %smin1064 = call i64 @llvm.smin.i64(i64 %indvars.iv1059, i64 31)
  %195 = add nsw i64 %polly.indvar631, %191
  %polly.loop_guard6441158 = icmp sgt i64 %195, -1
  %196 = add nuw nsw i64 %polly.indvar631, %187
  %.not903 = icmp ult i64 %196, %192
  %polly.access.mul.call1657 = mul nuw nsw i64 %196, 60
  br i1 %polly.loop_guard6441158, label %polly.loop_header634.us, label %polly.loop_header628.split

polly.loop_header634.us:                          ; preds = %polly.loop_header628, %polly.merge653.us
  %polly.indvar637.us = phi i64 [ %polly.indvar_next638.us, %polly.merge653.us ], [ 0, %polly.loop_header628 ]
  %polly.access.mul.Packed_MemRef_call1498.us = mul nuw nsw i64 %polly.indvar637.us, 80
  br label %polly.loop_header641.us

polly.loop_header641.us:                          ; preds = %polly.loop_header634.us, %polly.loop_header641.us
  %polly.indvar645.us = phi i64 [ %polly.indvar_next646.us, %polly.loop_header641.us ], [ 0, %polly.loop_header634.us ]
  %197 = add nuw nsw i64 %polly.indvar645.us, %190
  %polly.access.mul.call1649.us = mul nuw nsw i64 %197, 60
  %polly.access.add.call1650.us = add nuw nsw i64 %polly.access.mul.call1649.us, %polly.indvar637.us
  %polly.access.call1651.us = getelementptr double, double* %polly.access.cast.call1700, i64 %polly.access.add.call1650.us
  %polly.access.call1651.load.us = load double, double* %polly.access.call1651.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1498.us = add nuw nsw i64 %polly.indvar645.us, %polly.access.mul.Packed_MemRef_call1498.us
  %polly.access.Packed_MemRef_call1498.us = getelementptr double, double* %Packed_MemRef_call1498, i64 %polly.access.add.Packed_MemRef_call1498.us
  store double %polly.access.call1651.load.us, double* %polly.access.Packed_MemRef_call1498.us, align 8
  %polly.indvar_next646.us = add nuw nsw i64 %polly.indvar645.us, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar645.us, %smin1064
  br i1 %exitcond1062.not, label %polly.cond652.loopexit.us, label %polly.loop_header641.us

polly.then654.us:                                 ; preds = %polly.cond652.loopexit.us
  %polly.access.add.call1658.us = add nuw nsw i64 %polly.indvar637.us, %polly.access.mul.call1657
  %polly.access.call1659.us = getelementptr double, double* %polly.access.cast.call1700, i64 %polly.access.add.call1658.us
  %polly.access.call1659.load.us = load double, double* %polly.access.call1659.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1498661.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1498.us, %195
  %polly.access.Packed_MemRef_call1498662.us = getelementptr double, double* %Packed_MemRef_call1498, i64 %polly.access.add.Packed_MemRef_call1498661.us
  store double %polly.access.call1659.load.us, double* %polly.access.Packed_MemRef_call1498662.us, align 8
  br label %polly.merge653.us

polly.merge653.us:                                ; preds = %polly.then654.us, %polly.cond652.loopexit.us
  %polly.indvar_next638.us = add nuw nsw i64 %polly.indvar637.us, 1
  %exitcond1063.not = icmp eq i64 %polly.indvar_next638.us, 60
  br i1 %exitcond1063.not, label %polly.loop_header663.preheader, label %polly.loop_header634.us

polly.cond652.loopexit.us:                        ; preds = %polly.loop_header641.us
  br i1 %.not903, label %polly.merge653.us, label %polly.then654.us

polly.loop_header628.split:                       ; preds = %polly.loop_header628
  br i1 %.not903, label %polly.loop_exit665, label %polly.loop_header634

polly.loop_exit665:                               ; preds = %polly.loop_exit672.loopexit.us, %polly.loop_header628.split, %polly.loop_header663.preheader
  %polly.indvar_next632 = add nuw nsw i64 %polly.indvar631, 1
  %indvars.iv.next1060 = add nsw i64 %indvars.iv1059, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar_next632, 8
  br i1 %exitcond1067.not, label %polly.loop_exit630, label %polly.loop_header628

polly.loop_header634:                             ; preds = %polly.loop_header628.split, %polly.loop_header634
  %polly.indvar637 = phi i64 [ %polly.indvar_next638, %polly.loop_header634 ], [ 0, %polly.loop_header628.split ]
  %polly.access.add.call1658 = add nuw nsw i64 %polly.indvar637, %polly.access.mul.call1657
  %polly.access.call1659 = getelementptr double, double* %polly.access.cast.call1700, i64 %polly.access.add.call1658
  %polly.access.call1659.load = load double, double* %polly.access.call1659, align 8, !alias.scope !95, !noalias !102
  %polly.access.mul.Packed_MemRef_call1498660 = mul nuw nsw i64 %polly.indvar637, 80
  %polly.access.add.Packed_MemRef_call1498661 = add nsw i64 %polly.access.mul.Packed_MemRef_call1498660, %195
  %polly.access.Packed_MemRef_call1498662 = getelementptr double, double* %Packed_MemRef_call1498, i64 %polly.access.add.Packed_MemRef_call1498661
  store double %polly.access.call1659.load, double* %polly.access.Packed_MemRef_call1498662, align 8
  %polly.indvar_next638 = add nuw nsw i64 %polly.indvar637, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar_next638, 60
  br i1 %exitcond1054.not, label %polly.loop_header663.preheader, label %polly.loop_header634

polly.loop_header663.preheader:                   ; preds = %polly.loop_header634, %polly.merge653.us
  %198 = mul nuw nsw i64 %196, 640
  br i1 %polly.loop_guard6441158, label %polly.loop_header663.us, label %polly.loop_exit665

polly.loop_header663.us:                          ; preds = %polly.loop_header663.preheader, %polly.loop_exit672.loopexit.us
  %polly.indvar666.us = phi i64 [ %polly.indvar_next667.us, %polly.loop_exit672.loopexit.us ], [ 0, %polly.loop_header663.preheader ]
  %polly.access.mul.Packed_MemRef_call1498677.us = mul nuw nsw i64 %polly.indvar666.us, 80
  %polly.access.add.Packed_MemRef_call2500682.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1498677.us, %196
  %polly.access.Packed_MemRef_call2500683.us = getelementptr double, double* %Packed_MemRef_call2500, i64 %polly.access.add.Packed_MemRef_call2500682.us
  %_p_scalar_684.us = load double, double* %polly.access.Packed_MemRef_call2500683.us, align 8
  %polly.access.add.Packed_MemRef_call1498690.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1498677.us, %195
  %polly.access.Packed_MemRef_call1498691.us = getelementptr double, double* %Packed_MemRef_call1498, i64 %polly.access.add.Packed_MemRef_call1498690.us
  %_p_scalar_692.us = load double, double* %polly.access.Packed_MemRef_call1498691.us, align 8
  %min.iters.check1476 = icmp ult i64 %194, 4
  br i1 %min.iters.check1476, label %polly.loop_header670.us.preheader, label %vector.ph1477

vector.ph1477:                                    ; preds = %polly.loop_header663.us
  %n.vec1479 = and i64 %194, -4
  %broadcast.splatinsert1485 = insertelement <4 x double> poison, double %_p_scalar_684.us, i32 0
  %broadcast.splat1486 = shufflevector <4 x double> %broadcast.splatinsert1485, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1488 = insertelement <4 x double> poison, double %_p_scalar_692.us, i32 0
  %broadcast.splat1489 = shufflevector <4 x double> %broadcast.splatinsert1488, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1475

vector.body1475:                                  ; preds = %vector.body1475, %vector.ph1477
  %index1480 = phi i64 [ 0, %vector.ph1477 ], [ %index.next1481, %vector.body1475 ]
  %199 = add nuw nsw i64 %index1480, %190
  %200 = add nuw nsw i64 %index1480, %polly.access.mul.Packed_MemRef_call1498677.us
  %201 = getelementptr double, double* %Packed_MemRef_call1498, i64 %200
  %202 = bitcast double* %201 to <4 x double>*
  %wide.load1484 = load <4 x double>, <4 x double>* %202, align 8
  %203 = fmul fast <4 x double> %broadcast.splat1486, %wide.load1484
  %204 = add nuw nsw i64 %199, %polly.access.mul.Packed_MemRef_call1498677.us
  %205 = getelementptr double, double* %Packed_MemRef_call2500, i64 %204
  %206 = bitcast double* %205 to <4 x double>*
  %wide.load1487 = load <4 x double>, <4 x double>* %206, align 8
  %207 = fmul fast <4 x double> %broadcast.splat1489, %wide.load1487
  %208 = shl i64 %199, 3
  %209 = add nuw nsw i64 %208, %198
  %210 = getelementptr i8, i8* %call, i64 %209
  %211 = bitcast i8* %210 to <4 x double>*
  %wide.load1490 = load <4 x double>, <4 x double>* %211, align 8, !alias.scope !92, !noalias !94
  %212 = fadd fast <4 x double> %207, %203
  %213 = fmul fast <4 x double> %212, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %214 = fadd fast <4 x double> %213, %wide.load1490
  %215 = bitcast i8* %210 to <4 x double>*
  store <4 x double> %214, <4 x double>* %215, align 8, !alias.scope !92, !noalias !94
  %index.next1481 = add i64 %index1480, 4
  %216 = icmp eq i64 %index.next1481, %n.vec1479
  br i1 %216, label %middle.block1473, label %vector.body1475, !llvm.loop !103

middle.block1473:                                 ; preds = %vector.body1475
  %cmp.n1483 = icmp eq i64 %194, %n.vec1479
  br i1 %cmp.n1483, label %polly.loop_exit672.loopexit.us, label %polly.loop_header670.us.preheader

polly.loop_header670.us.preheader:                ; preds = %polly.loop_header663.us, %middle.block1473
  %polly.indvar674.us.ph = phi i64 [ 0, %polly.loop_header663.us ], [ %n.vec1479, %middle.block1473 ]
  br label %polly.loop_header670.us

polly.loop_header670.us:                          ; preds = %polly.loop_header670.us.preheader, %polly.loop_header670.us
  %polly.indvar674.us = phi i64 [ %polly.indvar_next675.us, %polly.loop_header670.us ], [ %polly.indvar674.us.ph, %polly.loop_header670.us.preheader ]
  %217 = add nuw nsw i64 %polly.indvar674.us, %190
  %polly.access.add.Packed_MemRef_call1498678.us = add nuw nsw i64 %polly.indvar674.us, %polly.access.mul.Packed_MemRef_call1498677.us
  %polly.access.Packed_MemRef_call1498679.us = getelementptr double, double* %Packed_MemRef_call1498, i64 %polly.access.add.Packed_MemRef_call1498678.us
  %_p_scalar_680.us = load double, double* %polly.access.Packed_MemRef_call1498679.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_684.us, %_p_scalar_680.us
  %polly.access.add.Packed_MemRef_call2500686.us = add nuw nsw i64 %217, %polly.access.mul.Packed_MemRef_call1498677.us
  %polly.access.Packed_MemRef_call2500687.us = getelementptr double, double* %Packed_MemRef_call2500, i64 %polly.access.add.Packed_MemRef_call2500686.us
  %_p_scalar_688.us = load double, double* %polly.access.Packed_MemRef_call2500687.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_692.us, %_p_scalar_688.us
  %218 = shl i64 %217, 3
  %219 = add nuw nsw i64 %218, %198
  %scevgep693.us = getelementptr i8, i8* %call, i64 %219
  %scevgep693694.us = bitcast i8* %scevgep693.us to double*
  %_p_scalar_695.us = load double, double* %scevgep693694.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_695.us
  store double %p_add42.i.us, double* %scevgep693694.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next675.us = add nuw nsw i64 %polly.indvar674.us, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar674.us, %smin1064
  br i1 %exitcond1065.not, label %polly.loop_exit672.loopexit.us, label %polly.loop_header670.us, !llvm.loop !104

polly.loop_exit672.loopexit.us:                   ; preds = %polly.loop_header670.us, %middle.block1473
  %polly.indvar_next667.us = add nuw nsw i64 %polly.indvar666.us, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar_next667.us, 60
  br i1 %exitcond1066.not, label %polly.loop_exit665, label %polly.loop_header663.us

polly.loop_header834:                             ; preds = %entry, %polly.loop_exit842
  %polly.indvar837 = phi i64 [ %polly.indvar_next838, %polly.loop_exit842 ], [ 0, %entry ]
  %220 = mul nuw nsw i64 %polly.indvar837, 640
  %221 = trunc i64 %polly.indvar837 to i32
  %broadcast.splatinsert1195 = insertelement <4 x i32> poison, i32 %221, i32 0
  %broadcast.splat1196 = shufflevector <4 x i32> %broadcast.splatinsert1195, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1185

vector.body1185:                                  ; preds = %vector.body1185, %polly.loop_header834
  %index1187 = phi i64 [ 0, %polly.loop_header834 ], [ %index.next1188, %vector.body1185 ]
  %vec.ind1193 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header834 ], [ %vec.ind.next1194, %vector.body1185 ]
  %222 = mul <4 x i32> %vec.ind1193, %broadcast.splat1196
  %223 = add <4 x i32> %222, <i32 3, i32 3, i32 3, i32 3>
  %224 = urem <4 x i32> %223, <i32 80, i32 80, i32 80, i32 80>
  %225 = sitofp <4 x i32> %224 to <4 x double>
  %226 = fmul fast <4 x double> %225, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %227 = shl i64 %index1187, 3
  %228 = add nuw nsw i64 %227, %220
  %229 = getelementptr i8, i8* %call, i64 %228
  %230 = bitcast i8* %229 to <4 x double>*
  store <4 x double> %226, <4 x double>* %230, align 8, !alias.scope !105, !noalias !107
  %index.next1188 = add i64 %index1187, 4
  %vec.ind.next1194 = add <4 x i32> %vec.ind1193, <i32 4, i32 4, i32 4, i32 4>
  %231 = icmp eq i64 %index.next1188, 32
  br i1 %231, label %polly.loop_exit842, label %vector.body1185, !llvm.loop !110

polly.loop_exit842:                               ; preds = %vector.body1185
  %polly.indvar_next838 = add nuw nsw i64 %polly.indvar837, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar_next838, 32
  br i1 %exitcond1093.not, label %polly.loop_header834.1, label %polly.loop_header834

polly.loop_header861:                             ; preds = %polly.loop_exit842.2.2, %polly.loop_exit869
  %polly.indvar864 = phi i64 [ %polly.indvar_next865, %polly.loop_exit869 ], [ 0, %polly.loop_exit842.2.2 ]
  %232 = mul nuw nsw i64 %polly.indvar864, 480
  %233 = trunc i64 %polly.indvar864 to i32
  %broadcast.splatinsert1309 = insertelement <4 x i32> poison, i32 %233, i32 0
  %broadcast.splat1310 = shufflevector <4 x i32> %broadcast.splatinsert1309, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1299

vector.body1299:                                  ; preds = %vector.body1299, %polly.loop_header861
  %index1301 = phi i64 [ 0, %polly.loop_header861 ], [ %index.next1302, %vector.body1299 ]
  %vec.ind1307 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header861 ], [ %vec.ind.next1308, %vector.body1299 ]
  %234 = mul <4 x i32> %vec.ind1307, %broadcast.splat1310
  %235 = add <4 x i32> %234, <i32 2, i32 2, i32 2, i32 2>
  %236 = urem <4 x i32> %235, <i32 60, i32 60, i32 60, i32 60>
  %237 = sitofp <4 x i32> %236 to <4 x double>
  %238 = fmul fast <4 x double> %237, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %239 = shl i64 %index1301, 3
  %240 = add i64 %239, %232
  %241 = getelementptr i8, i8* %call2, i64 %240
  %242 = bitcast i8* %241 to <4 x double>*
  store <4 x double> %238, <4 x double>* %242, align 8, !alias.scope !109, !noalias !111
  %index.next1302 = add i64 %index1301, 4
  %vec.ind.next1308 = add <4 x i32> %vec.ind1307, <i32 4, i32 4, i32 4, i32 4>
  %243 = icmp eq i64 %index.next1302, 32
  br i1 %243, label %polly.loop_exit869, label %vector.body1299, !llvm.loop !112

polly.loop_exit869:                               ; preds = %vector.body1299
  %polly.indvar_next865 = add nuw nsw i64 %polly.indvar864, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar_next865, 32
  br i1 %exitcond1084.not, label %polly.loop_header861.1, label %polly.loop_header861

polly.loop_header887:                             ; preds = %polly.loop_exit869.1.2, %polly.loop_exit895
  %polly.indvar890 = phi i64 [ %polly.indvar_next891, %polly.loop_exit895 ], [ 0, %polly.loop_exit869.1.2 ]
  %244 = mul nuw nsw i64 %polly.indvar890, 480
  %245 = trunc i64 %polly.indvar890 to i32
  %broadcast.splatinsert1387 = insertelement <4 x i32> poison, i32 %245, i32 0
  %broadcast.splat1388 = shufflevector <4 x i32> %broadcast.splatinsert1387, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1377

vector.body1377:                                  ; preds = %vector.body1377, %polly.loop_header887
  %index1379 = phi i64 [ 0, %polly.loop_header887 ], [ %index.next1380, %vector.body1377 ]
  %vec.ind1385 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header887 ], [ %vec.ind.next1386, %vector.body1377 ]
  %246 = mul <4 x i32> %vec.ind1385, %broadcast.splat1388
  %247 = add <4 x i32> %246, <i32 1, i32 1, i32 1, i32 1>
  %248 = urem <4 x i32> %247, <i32 80, i32 80, i32 80, i32 80>
  %249 = sitofp <4 x i32> %248 to <4 x double>
  %250 = fmul fast <4 x double> %249, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %251 = shl i64 %index1379, 3
  %252 = add i64 %251, %244
  %253 = getelementptr i8, i8* %call1, i64 %252
  %254 = bitcast i8* %253 to <4 x double>*
  store <4 x double> %250, <4 x double>* %254, align 8, !alias.scope !108, !noalias !113
  %index.next1380 = add i64 %index1379, 4
  %vec.ind.next1386 = add <4 x i32> %vec.ind1385, <i32 4, i32 4, i32 4, i32 4>
  %255 = icmp eq i64 %index.next1380, 32
  br i1 %255, label %polly.loop_exit895, label %vector.body1377, !llvm.loop !114

polly.loop_exit895:                               ; preds = %vector.body1377
  %polly.indvar_next891 = add nuw nsw i64 %polly.indvar890, 1
  %exitcond1078.not = icmp eq i64 %polly.indvar_next891, 32
  br i1 %exitcond1078.not, label %polly.loop_header887.1, label %polly.loop_header887

polly.loop_header887.1:                           ; preds = %polly.loop_exit895, %polly.loop_exit895.1
  %polly.indvar890.1 = phi i64 [ %polly.indvar_next891.1, %polly.loop_exit895.1 ], [ 0, %polly.loop_exit895 ]
  %256 = mul nuw nsw i64 %polly.indvar890.1, 480
  %257 = trunc i64 %polly.indvar890.1 to i32
  %broadcast.splatinsert1399 = insertelement <4 x i32> poison, i32 %257, i32 0
  %broadcast.splat1400 = shufflevector <4 x i32> %broadcast.splatinsert1399, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1391

vector.body1391:                                  ; preds = %vector.body1391, %polly.loop_header887.1
  %index1393 = phi i64 [ 0, %polly.loop_header887.1 ], [ %index.next1394, %vector.body1391 ]
  %vec.ind1397 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header887.1 ], [ %vec.ind.next1398, %vector.body1391 ]
  %258 = add nuw nsw <4 x i64> %vec.ind1397, <i64 32, i64 32, i64 32, i64 32>
  %259 = trunc <4 x i64> %258 to <4 x i32>
  %260 = mul <4 x i32> %broadcast.splat1400, %259
  %261 = add <4 x i32> %260, <i32 1, i32 1, i32 1, i32 1>
  %262 = urem <4 x i32> %261, <i32 80, i32 80, i32 80, i32 80>
  %263 = sitofp <4 x i32> %262 to <4 x double>
  %264 = fmul fast <4 x double> %263, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %265 = extractelement <4 x i64> %258, i32 0
  %266 = shl i64 %265, 3
  %267 = add i64 %266, %256
  %268 = getelementptr i8, i8* %call1, i64 %267
  %269 = bitcast i8* %268 to <4 x double>*
  store <4 x double> %264, <4 x double>* %269, align 8, !alias.scope !108, !noalias !113
  %index.next1394 = add i64 %index1393, 4
  %vec.ind.next1398 = add <4 x i64> %vec.ind1397, <i64 4, i64 4, i64 4, i64 4>
  %270 = icmp eq i64 %index.next1394, 28
  br i1 %270, label %polly.loop_exit895.1, label %vector.body1391, !llvm.loop !115

polly.loop_exit895.1:                             ; preds = %vector.body1391
  %polly.indvar_next891.1 = add nuw nsw i64 %polly.indvar890.1, 1
  %exitcond1078.1.not = icmp eq i64 %polly.indvar_next891.1, 32
  br i1 %exitcond1078.1.not, label %polly.loop_header887.11101, label %polly.loop_header887.1

polly.loop_header887.11101:                       ; preds = %polly.loop_exit895.1, %polly.loop_exit895.11112
  %polly.indvar890.11100 = phi i64 [ %polly.indvar_next891.11110, %polly.loop_exit895.11112 ], [ 0, %polly.loop_exit895.1 ]
  %271 = add nuw nsw i64 %polly.indvar890.11100, 32
  %272 = mul nuw nsw i64 %271, 480
  %273 = trunc i64 %271 to i32
  %broadcast.splatinsert1413 = insertelement <4 x i32> poison, i32 %273, i32 0
  %broadcast.splat1414 = shufflevector <4 x i32> %broadcast.splatinsert1413, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1403

vector.body1403:                                  ; preds = %vector.body1403, %polly.loop_header887.11101
  %index1405 = phi i64 [ 0, %polly.loop_header887.11101 ], [ %index.next1406, %vector.body1403 ]
  %vec.ind1411 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header887.11101 ], [ %vec.ind.next1412, %vector.body1403 ]
  %274 = mul <4 x i32> %vec.ind1411, %broadcast.splat1414
  %275 = add <4 x i32> %274, <i32 1, i32 1, i32 1, i32 1>
  %276 = urem <4 x i32> %275, <i32 80, i32 80, i32 80, i32 80>
  %277 = sitofp <4 x i32> %276 to <4 x double>
  %278 = fmul fast <4 x double> %277, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %279 = shl i64 %index1405, 3
  %280 = add i64 %279, %272
  %281 = getelementptr i8, i8* %call1, i64 %280
  %282 = bitcast i8* %281 to <4 x double>*
  store <4 x double> %278, <4 x double>* %282, align 8, !alias.scope !108, !noalias !113
  %index.next1406 = add i64 %index1405, 4
  %vec.ind.next1412 = add <4 x i32> %vec.ind1411, <i32 4, i32 4, i32 4, i32 4>
  %283 = icmp eq i64 %index.next1406, 32
  br i1 %283, label %polly.loop_exit895.11112, label %vector.body1403, !llvm.loop !116

polly.loop_exit895.11112:                         ; preds = %vector.body1403
  %polly.indvar_next891.11110 = add nuw nsw i64 %polly.indvar890.11100, 1
  %exitcond1078.11111.not = icmp eq i64 %polly.indvar_next891.11110, 32
  br i1 %exitcond1078.11111.not, label %polly.loop_header887.1.1, label %polly.loop_header887.11101

polly.loop_header887.1.1:                         ; preds = %polly.loop_exit895.11112, %polly.loop_exit895.1.1
  %polly.indvar890.1.1 = phi i64 [ %polly.indvar_next891.1.1, %polly.loop_exit895.1.1 ], [ 0, %polly.loop_exit895.11112 ]
  %284 = add nuw nsw i64 %polly.indvar890.1.1, 32
  %285 = mul nuw nsw i64 %284, 480
  %286 = trunc i64 %284 to i32
  %broadcast.splatinsert1425 = insertelement <4 x i32> poison, i32 %286, i32 0
  %broadcast.splat1426 = shufflevector <4 x i32> %broadcast.splatinsert1425, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1417

vector.body1417:                                  ; preds = %vector.body1417, %polly.loop_header887.1.1
  %index1419 = phi i64 [ 0, %polly.loop_header887.1.1 ], [ %index.next1420, %vector.body1417 ]
  %vec.ind1423 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header887.1.1 ], [ %vec.ind.next1424, %vector.body1417 ]
  %287 = add nuw nsw <4 x i64> %vec.ind1423, <i64 32, i64 32, i64 32, i64 32>
  %288 = trunc <4 x i64> %287 to <4 x i32>
  %289 = mul <4 x i32> %broadcast.splat1426, %288
  %290 = add <4 x i32> %289, <i32 1, i32 1, i32 1, i32 1>
  %291 = urem <4 x i32> %290, <i32 80, i32 80, i32 80, i32 80>
  %292 = sitofp <4 x i32> %291 to <4 x double>
  %293 = fmul fast <4 x double> %292, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %294 = extractelement <4 x i64> %287, i32 0
  %295 = shl i64 %294, 3
  %296 = add i64 %295, %285
  %297 = getelementptr i8, i8* %call1, i64 %296
  %298 = bitcast i8* %297 to <4 x double>*
  store <4 x double> %293, <4 x double>* %298, align 8, !alias.scope !108, !noalias !113
  %index.next1420 = add i64 %index1419, 4
  %vec.ind.next1424 = add <4 x i64> %vec.ind1423, <i64 4, i64 4, i64 4, i64 4>
  %299 = icmp eq i64 %index.next1420, 28
  br i1 %299, label %polly.loop_exit895.1.1, label %vector.body1417, !llvm.loop !117

polly.loop_exit895.1.1:                           ; preds = %vector.body1417
  %polly.indvar_next891.1.1 = add nuw nsw i64 %polly.indvar890.1.1, 1
  %exitcond1078.1.1.not = icmp eq i64 %polly.indvar_next891.1.1, 32
  br i1 %exitcond1078.1.1.not, label %polly.loop_header887.2, label %polly.loop_header887.1.1

polly.loop_header887.2:                           ; preds = %polly.loop_exit895.1.1, %polly.loop_exit895.2
  %polly.indvar890.2 = phi i64 [ %polly.indvar_next891.2, %polly.loop_exit895.2 ], [ 0, %polly.loop_exit895.1.1 ]
  %300 = add nuw nsw i64 %polly.indvar890.2, 64
  %301 = mul nuw nsw i64 %300, 480
  %302 = trunc i64 %300 to i32
  %broadcast.splatinsert1439 = insertelement <4 x i32> poison, i32 %302, i32 0
  %broadcast.splat1440 = shufflevector <4 x i32> %broadcast.splatinsert1439, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1429

vector.body1429:                                  ; preds = %vector.body1429, %polly.loop_header887.2
  %index1431 = phi i64 [ 0, %polly.loop_header887.2 ], [ %index.next1432, %vector.body1429 ]
  %vec.ind1437 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header887.2 ], [ %vec.ind.next1438, %vector.body1429 ]
  %303 = mul <4 x i32> %vec.ind1437, %broadcast.splat1440
  %304 = add <4 x i32> %303, <i32 1, i32 1, i32 1, i32 1>
  %305 = urem <4 x i32> %304, <i32 80, i32 80, i32 80, i32 80>
  %306 = sitofp <4 x i32> %305 to <4 x double>
  %307 = fmul fast <4 x double> %306, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %308 = shl i64 %index1431, 3
  %309 = add i64 %308, %301
  %310 = getelementptr i8, i8* %call1, i64 %309
  %311 = bitcast i8* %310 to <4 x double>*
  store <4 x double> %307, <4 x double>* %311, align 8, !alias.scope !108, !noalias !113
  %index.next1432 = add i64 %index1431, 4
  %vec.ind.next1438 = add <4 x i32> %vec.ind1437, <i32 4, i32 4, i32 4, i32 4>
  %312 = icmp eq i64 %index.next1432, 32
  br i1 %312, label %polly.loop_exit895.2, label %vector.body1429, !llvm.loop !118

polly.loop_exit895.2:                             ; preds = %vector.body1429
  %polly.indvar_next891.2 = add nuw nsw i64 %polly.indvar890.2, 1
  %exitcond1078.2.not = icmp eq i64 %polly.indvar_next891.2, 16
  br i1 %exitcond1078.2.not, label %polly.loop_header887.1.2, label %polly.loop_header887.2

polly.loop_header887.1.2:                         ; preds = %polly.loop_exit895.2, %polly.loop_exit895.1.2
  %polly.indvar890.1.2 = phi i64 [ %polly.indvar_next891.1.2, %polly.loop_exit895.1.2 ], [ 0, %polly.loop_exit895.2 ]
  %313 = add nuw nsw i64 %polly.indvar890.1.2, 64
  %314 = mul nuw nsw i64 %313, 480
  %315 = trunc i64 %313 to i32
  %broadcast.splatinsert1451 = insertelement <4 x i32> poison, i32 %315, i32 0
  %broadcast.splat1452 = shufflevector <4 x i32> %broadcast.splatinsert1451, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1443

vector.body1443:                                  ; preds = %vector.body1443, %polly.loop_header887.1.2
  %index1445 = phi i64 [ 0, %polly.loop_header887.1.2 ], [ %index.next1446, %vector.body1443 ]
  %vec.ind1449 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header887.1.2 ], [ %vec.ind.next1450, %vector.body1443 ]
  %316 = add nuw nsw <4 x i64> %vec.ind1449, <i64 32, i64 32, i64 32, i64 32>
  %317 = trunc <4 x i64> %316 to <4 x i32>
  %318 = mul <4 x i32> %broadcast.splat1452, %317
  %319 = add <4 x i32> %318, <i32 1, i32 1, i32 1, i32 1>
  %320 = urem <4 x i32> %319, <i32 80, i32 80, i32 80, i32 80>
  %321 = sitofp <4 x i32> %320 to <4 x double>
  %322 = fmul fast <4 x double> %321, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %323 = extractelement <4 x i64> %316, i32 0
  %324 = shl i64 %323, 3
  %325 = add i64 %324, %314
  %326 = getelementptr i8, i8* %call1, i64 %325
  %327 = bitcast i8* %326 to <4 x double>*
  store <4 x double> %322, <4 x double>* %327, align 8, !alias.scope !108, !noalias !113
  %index.next1446 = add i64 %index1445, 4
  %vec.ind.next1450 = add <4 x i64> %vec.ind1449, <i64 4, i64 4, i64 4, i64 4>
  %328 = icmp eq i64 %index.next1446, 28
  br i1 %328, label %polly.loop_exit895.1.2, label %vector.body1443, !llvm.loop !119

polly.loop_exit895.1.2:                           ; preds = %vector.body1443
  %polly.indvar_next891.1.2 = add nuw nsw i64 %polly.indvar890.1.2, 1
  %exitcond1078.1.2.not = icmp eq i64 %polly.indvar_next891.1.2, 16
  br i1 %exitcond1078.1.2.not, label %init_array.exit, label %polly.loop_header887.1.2

polly.loop_header861.1:                           ; preds = %polly.loop_exit869, %polly.loop_exit869.1
  %polly.indvar864.1 = phi i64 [ %polly.indvar_next865.1, %polly.loop_exit869.1 ], [ 0, %polly.loop_exit869 ]
  %329 = mul nuw nsw i64 %polly.indvar864.1, 480
  %330 = trunc i64 %polly.indvar864.1 to i32
  %broadcast.splatinsert1321 = insertelement <4 x i32> poison, i32 %330, i32 0
  %broadcast.splat1322 = shufflevector <4 x i32> %broadcast.splatinsert1321, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1313

vector.body1313:                                  ; preds = %vector.body1313, %polly.loop_header861.1
  %index1315 = phi i64 [ 0, %polly.loop_header861.1 ], [ %index.next1316, %vector.body1313 ]
  %vec.ind1319 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header861.1 ], [ %vec.ind.next1320, %vector.body1313 ]
  %331 = add nuw nsw <4 x i64> %vec.ind1319, <i64 32, i64 32, i64 32, i64 32>
  %332 = trunc <4 x i64> %331 to <4 x i32>
  %333 = mul <4 x i32> %broadcast.splat1322, %332
  %334 = add <4 x i32> %333, <i32 2, i32 2, i32 2, i32 2>
  %335 = urem <4 x i32> %334, <i32 60, i32 60, i32 60, i32 60>
  %336 = sitofp <4 x i32> %335 to <4 x double>
  %337 = fmul fast <4 x double> %336, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %338 = extractelement <4 x i64> %331, i32 0
  %339 = shl i64 %338, 3
  %340 = add i64 %339, %329
  %341 = getelementptr i8, i8* %call2, i64 %340
  %342 = bitcast i8* %341 to <4 x double>*
  store <4 x double> %337, <4 x double>* %342, align 8, !alias.scope !109, !noalias !111
  %index.next1316 = add i64 %index1315, 4
  %vec.ind.next1320 = add <4 x i64> %vec.ind1319, <i64 4, i64 4, i64 4, i64 4>
  %343 = icmp eq i64 %index.next1316, 28
  br i1 %343, label %polly.loop_exit869.1, label %vector.body1313, !llvm.loop !120

polly.loop_exit869.1:                             ; preds = %vector.body1313
  %polly.indvar_next865.1 = add nuw nsw i64 %polly.indvar864.1, 1
  %exitcond1084.1.not = icmp eq i64 %polly.indvar_next865.1, 32
  br i1 %exitcond1084.1.not, label %polly.loop_header861.11115, label %polly.loop_header861.1

polly.loop_header861.11115:                       ; preds = %polly.loop_exit869.1, %polly.loop_exit869.11126
  %polly.indvar864.11114 = phi i64 [ %polly.indvar_next865.11124, %polly.loop_exit869.11126 ], [ 0, %polly.loop_exit869.1 ]
  %344 = add nuw nsw i64 %polly.indvar864.11114, 32
  %345 = mul nuw nsw i64 %344, 480
  %346 = trunc i64 %344 to i32
  %broadcast.splatinsert1335 = insertelement <4 x i32> poison, i32 %346, i32 0
  %broadcast.splat1336 = shufflevector <4 x i32> %broadcast.splatinsert1335, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1325

vector.body1325:                                  ; preds = %vector.body1325, %polly.loop_header861.11115
  %index1327 = phi i64 [ 0, %polly.loop_header861.11115 ], [ %index.next1328, %vector.body1325 ]
  %vec.ind1333 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header861.11115 ], [ %vec.ind.next1334, %vector.body1325 ]
  %347 = mul <4 x i32> %vec.ind1333, %broadcast.splat1336
  %348 = add <4 x i32> %347, <i32 2, i32 2, i32 2, i32 2>
  %349 = urem <4 x i32> %348, <i32 60, i32 60, i32 60, i32 60>
  %350 = sitofp <4 x i32> %349 to <4 x double>
  %351 = fmul fast <4 x double> %350, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %352 = shl i64 %index1327, 3
  %353 = add i64 %352, %345
  %354 = getelementptr i8, i8* %call2, i64 %353
  %355 = bitcast i8* %354 to <4 x double>*
  store <4 x double> %351, <4 x double>* %355, align 8, !alias.scope !109, !noalias !111
  %index.next1328 = add i64 %index1327, 4
  %vec.ind.next1334 = add <4 x i32> %vec.ind1333, <i32 4, i32 4, i32 4, i32 4>
  %356 = icmp eq i64 %index.next1328, 32
  br i1 %356, label %polly.loop_exit869.11126, label %vector.body1325, !llvm.loop !121

polly.loop_exit869.11126:                         ; preds = %vector.body1325
  %polly.indvar_next865.11124 = add nuw nsw i64 %polly.indvar864.11114, 1
  %exitcond1084.11125.not = icmp eq i64 %polly.indvar_next865.11124, 32
  br i1 %exitcond1084.11125.not, label %polly.loop_header861.1.1, label %polly.loop_header861.11115

polly.loop_header861.1.1:                         ; preds = %polly.loop_exit869.11126, %polly.loop_exit869.1.1
  %polly.indvar864.1.1 = phi i64 [ %polly.indvar_next865.1.1, %polly.loop_exit869.1.1 ], [ 0, %polly.loop_exit869.11126 ]
  %357 = add nuw nsw i64 %polly.indvar864.1.1, 32
  %358 = mul nuw nsw i64 %357, 480
  %359 = trunc i64 %357 to i32
  %broadcast.splatinsert1347 = insertelement <4 x i32> poison, i32 %359, i32 0
  %broadcast.splat1348 = shufflevector <4 x i32> %broadcast.splatinsert1347, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1339

vector.body1339:                                  ; preds = %vector.body1339, %polly.loop_header861.1.1
  %index1341 = phi i64 [ 0, %polly.loop_header861.1.1 ], [ %index.next1342, %vector.body1339 ]
  %vec.ind1345 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header861.1.1 ], [ %vec.ind.next1346, %vector.body1339 ]
  %360 = add nuw nsw <4 x i64> %vec.ind1345, <i64 32, i64 32, i64 32, i64 32>
  %361 = trunc <4 x i64> %360 to <4 x i32>
  %362 = mul <4 x i32> %broadcast.splat1348, %361
  %363 = add <4 x i32> %362, <i32 2, i32 2, i32 2, i32 2>
  %364 = urem <4 x i32> %363, <i32 60, i32 60, i32 60, i32 60>
  %365 = sitofp <4 x i32> %364 to <4 x double>
  %366 = fmul fast <4 x double> %365, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %367 = extractelement <4 x i64> %360, i32 0
  %368 = shl i64 %367, 3
  %369 = add i64 %368, %358
  %370 = getelementptr i8, i8* %call2, i64 %369
  %371 = bitcast i8* %370 to <4 x double>*
  store <4 x double> %366, <4 x double>* %371, align 8, !alias.scope !109, !noalias !111
  %index.next1342 = add i64 %index1341, 4
  %vec.ind.next1346 = add <4 x i64> %vec.ind1345, <i64 4, i64 4, i64 4, i64 4>
  %372 = icmp eq i64 %index.next1342, 28
  br i1 %372, label %polly.loop_exit869.1.1, label %vector.body1339, !llvm.loop !122

polly.loop_exit869.1.1:                           ; preds = %vector.body1339
  %polly.indvar_next865.1.1 = add nuw nsw i64 %polly.indvar864.1.1, 1
  %exitcond1084.1.1.not = icmp eq i64 %polly.indvar_next865.1.1, 32
  br i1 %exitcond1084.1.1.not, label %polly.loop_header861.2, label %polly.loop_header861.1.1

polly.loop_header861.2:                           ; preds = %polly.loop_exit869.1.1, %polly.loop_exit869.2
  %polly.indvar864.2 = phi i64 [ %polly.indvar_next865.2, %polly.loop_exit869.2 ], [ 0, %polly.loop_exit869.1.1 ]
  %373 = add nuw nsw i64 %polly.indvar864.2, 64
  %374 = mul nuw nsw i64 %373, 480
  %375 = trunc i64 %373 to i32
  %broadcast.splatinsert1361 = insertelement <4 x i32> poison, i32 %375, i32 0
  %broadcast.splat1362 = shufflevector <4 x i32> %broadcast.splatinsert1361, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1351

vector.body1351:                                  ; preds = %vector.body1351, %polly.loop_header861.2
  %index1353 = phi i64 [ 0, %polly.loop_header861.2 ], [ %index.next1354, %vector.body1351 ]
  %vec.ind1359 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header861.2 ], [ %vec.ind.next1360, %vector.body1351 ]
  %376 = mul <4 x i32> %vec.ind1359, %broadcast.splat1362
  %377 = add <4 x i32> %376, <i32 2, i32 2, i32 2, i32 2>
  %378 = urem <4 x i32> %377, <i32 60, i32 60, i32 60, i32 60>
  %379 = sitofp <4 x i32> %378 to <4 x double>
  %380 = fmul fast <4 x double> %379, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %381 = shl i64 %index1353, 3
  %382 = add i64 %381, %374
  %383 = getelementptr i8, i8* %call2, i64 %382
  %384 = bitcast i8* %383 to <4 x double>*
  store <4 x double> %380, <4 x double>* %384, align 8, !alias.scope !109, !noalias !111
  %index.next1354 = add i64 %index1353, 4
  %vec.ind.next1360 = add <4 x i32> %vec.ind1359, <i32 4, i32 4, i32 4, i32 4>
  %385 = icmp eq i64 %index.next1354, 32
  br i1 %385, label %polly.loop_exit869.2, label %vector.body1351, !llvm.loop !123

polly.loop_exit869.2:                             ; preds = %vector.body1351
  %polly.indvar_next865.2 = add nuw nsw i64 %polly.indvar864.2, 1
  %exitcond1084.2.not = icmp eq i64 %polly.indvar_next865.2, 16
  br i1 %exitcond1084.2.not, label %polly.loop_header861.1.2, label %polly.loop_header861.2

polly.loop_header861.1.2:                         ; preds = %polly.loop_exit869.2, %polly.loop_exit869.1.2
  %polly.indvar864.1.2 = phi i64 [ %polly.indvar_next865.1.2, %polly.loop_exit869.1.2 ], [ 0, %polly.loop_exit869.2 ]
  %386 = add nuw nsw i64 %polly.indvar864.1.2, 64
  %387 = mul nuw nsw i64 %386, 480
  %388 = trunc i64 %386 to i32
  %broadcast.splatinsert1373 = insertelement <4 x i32> poison, i32 %388, i32 0
  %broadcast.splat1374 = shufflevector <4 x i32> %broadcast.splatinsert1373, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1365

vector.body1365:                                  ; preds = %vector.body1365, %polly.loop_header861.1.2
  %index1367 = phi i64 [ 0, %polly.loop_header861.1.2 ], [ %index.next1368, %vector.body1365 ]
  %vec.ind1371 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header861.1.2 ], [ %vec.ind.next1372, %vector.body1365 ]
  %389 = add nuw nsw <4 x i64> %vec.ind1371, <i64 32, i64 32, i64 32, i64 32>
  %390 = trunc <4 x i64> %389 to <4 x i32>
  %391 = mul <4 x i32> %broadcast.splat1374, %390
  %392 = add <4 x i32> %391, <i32 2, i32 2, i32 2, i32 2>
  %393 = urem <4 x i32> %392, <i32 60, i32 60, i32 60, i32 60>
  %394 = sitofp <4 x i32> %393 to <4 x double>
  %395 = fmul fast <4 x double> %394, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %396 = extractelement <4 x i64> %389, i32 0
  %397 = shl i64 %396, 3
  %398 = add i64 %397, %387
  %399 = getelementptr i8, i8* %call2, i64 %398
  %400 = bitcast i8* %399 to <4 x double>*
  store <4 x double> %395, <4 x double>* %400, align 8, !alias.scope !109, !noalias !111
  %index.next1368 = add i64 %index1367, 4
  %vec.ind.next1372 = add <4 x i64> %vec.ind1371, <i64 4, i64 4, i64 4, i64 4>
  %401 = icmp eq i64 %index.next1368, 28
  br i1 %401, label %polly.loop_exit869.1.2, label %vector.body1365, !llvm.loop !124

polly.loop_exit869.1.2:                           ; preds = %vector.body1365
  %polly.indvar_next865.1.2 = add nuw nsw i64 %polly.indvar864.1.2, 1
  %exitcond1084.1.2.not = icmp eq i64 %polly.indvar_next865.1.2, 16
  br i1 %exitcond1084.1.2.not, label %polly.loop_header887, label %polly.loop_header861.1.2

polly.loop_header834.1:                           ; preds = %polly.loop_exit842, %polly.loop_exit842.1
  %polly.indvar837.1 = phi i64 [ %polly.indvar_next838.1, %polly.loop_exit842.1 ], [ 0, %polly.loop_exit842 ]
  %402 = mul nuw nsw i64 %polly.indvar837.1, 640
  %403 = trunc i64 %polly.indvar837.1 to i32
  %broadcast.splatinsert1207 = insertelement <4 x i32> poison, i32 %403, i32 0
  %broadcast.splat1208 = shufflevector <4 x i32> %broadcast.splatinsert1207, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1199

vector.body1199:                                  ; preds = %vector.body1199, %polly.loop_header834.1
  %index1201 = phi i64 [ 0, %polly.loop_header834.1 ], [ %index.next1202, %vector.body1199 ]
  %vec.ind1205 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header834.1 ], [ %vec.ind.next1206, %vector.body1199 ]
  %404 = add nuw nsw <4 x i64> %vec.ind1205, <i64 32, i64 32, i64 32, i64 32>
  %405 = trunc <4 x i64> %404 to <4 x i32>
  %406 = mul <4 x i32> %broadcast.splat1208, %405
  %407 = add <4 x i32> %406, <i32 3, i32 3, i32 3, i32 3>
  %408 = urem <4 x i32> %407, <i32 80, i32 80, i32 80, i32 80>
  %409 = sitofp <4 x i32> %408 to <4 x double>
  %410 = fmul fast <4 x double> %409, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %411 = extractelement <4 x i64> %404, i32 0
  %412 = shl i64 %411, 3
  %413 = add nuw nsw i64 %412, %402
  %414 = getelementptr i8, i8* %call, i64 %413
  %415 = bitcast i8* %414 to <4 x double>*
  store <4 x double> %410, <4 x double>* %415, align 8, !alias.scope !105, !noalias !107
  %index.next1202 = add i64 %index1201, 4
  %vec.ind.next1206 = add <4 x i64> %vec.ind1205, <i64 4, i64 4, i64 4, i64 4>
  %416 = icmp eq i64 %index.next1202, 32
  br i1 %416, label %polly.loop_exit842.1, label %vector.body1199, !llvm.loop !125

polly.loop_exit842.1:                             ; preds = %vector.body1199
  %polly.indvar_next838.1 = add nuw nsw i64 %polly.indvar837.1, 1
  %exitcond1093.1.not = icmp eq i64 %polly.indvar_next838.1, 32
  br i1 %exitcond1093.1.not, label %polly.loop_header834.2, label %polly.loop_header834.1

polly.loop_header834.2:                           ; preds = %polly.loop_exit842.1, %polly.loop_exit842.2
  %polly.indvar837.2 = phi i64 [ %polly.indvar_next838.2, %polly.loop_exit842.2 ], [ 0, %polly.loop_exit842.1 ]
  %417 = mul nuw nsw i64 %polly.indvar837.2, 640
  %418 = trunc i64 %polly.indvar837.2 to i32
  %broadcast.splatinsert1219 = insertelement <4 x i32> poison, i32 %418, i32 0
  %broadcast.splat1220 = shufflevector <4 x i32> %broadcast.splatinsert1219, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1211

vector.body1211:                                  ; preds = %vector.body1211, %polly.loop_header834.2
  %index1213 = phi i64 [ 0, %polly.loop_header834.2 ], [ %index.next1214, %vector.body1211 ]
  %vec.ind1217 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header834.2 ], [ %vec.ind.next1218, %vector.body1211 ]
  %419 = add nuw nsw <4 x i64> %vec.ind1217, <i64 64, i64 64, i64 64, i64 64>
  %420 = trunc <4 x i64> %419 to <4 x i32>
  %421 = mul <4 x i32> %broadcast.splat1220, %420
  %422 = add <4 x i32> %421, <i32 3, i32 3, i32 3, i32 3>
  %423 = urem <4 x i32> %422, <i32 80, i32 80, i32 80, i32 80>
  %424 = sitofp <4 x i32> %423 to <4 x double>
  %425 = fmul fast <4 x double> %424, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %426 = extractelement <4 x i64> %419, i32 0
  %427 = shl i64 %426, 3
  %428 = add nuw nsw i64 %427, %417
  %429 = getelementptr i8, i8* %call, i64 %428
  %430 = bitcast i8* %429 to <4 x double>*
  store <4 x double> %425, <4 x double>* %430, align 8, !alias.scope !105, !noalias !107
  %index.next1214 = add i64 %index1213, 4
  %vec.ind.next1218 = add <4 x i64> %vec.ind1217, <i64 4, i64 4, i64 4, i64 4>
  %431 = icmp eq i64 %index.next1214, 16
  br i1 %431, label %polly.loop_exit842.2, label %vector.body1211, !llvm.loop !126

polly.loop_exit842.2:                             ; preds = %vector.body1211
  %polly.indvar_next838.2 = add nuw nsw i64 %polly.indvar837.2, 1
  %exitcond1093.2.not = icmp eq i64 %polly.indvar_next838.2, 32
  br i1 %exitcond1093.2.not, label %polly.loop_header834.11129, label %polly.loop_header834.2

polly.loop_header834.11129:                       ; preds = %polly.loop_exit842.2, %polly.loop_exit842.11140
  %polly.indvar837.11128 = phi i64 [ %polly.indvar_next838.11138, %polly.loop_exit842.11140 ], [ 0, %polly.loop_exit842.2 ]
  %432 = add nuw nsw i64 %polly.indvar837.11128, 32
  %433 = mul nuw nsw i64 %432, 640
  %434 = trunc i64 %432 to i32
  %broadcast.splatinsert1233 = insertelement <4 x i32> poison, i32 %434, i32 0
  %broadcast.splat1234 = shufflevector <4 x i32> %broadcast.splatinsert1233, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1223

vector.body1223:                                  ; preds = %vector.body1223, %polly.loop_header834.11129
  %index1225 = phi i64 [ 0, %polly.loop_header834.11129 ], [ %index.next1226, %vector.body1223 ]
  %vec.ind1231 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header834.11129 ], [ %vec.ind.next1232, %vector.body1223 ]
  %435 = mul <4 x i32> %vec.ind1231, %broadcast.splat1234
  %436 = add <4 x i32> %435, <i32 3, i32 3, i32 3, i32 3>
  %437 = urem <4 x i32> %436, <i32 80, i32 80, i32 80, i32 80>
  %438 = sitofp <4 x i32> %437 to <4 x double>
  %439 = fmul fast <4 x double> %438, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %440 = shl i64 %index1225, 3
  %441 = add nuw nsw i64 %440, %433
  %442 = getelementptr i8, i8* %call, i64 %441
  %443 = bitcast i8* %442 to <4 x double>*
  store <4 x double> %439, <4 x double>* %443, align 8, !alias.scope !105, !noalias !107
  %index.next1226 = add i64 %index1225, 4
  %vec.ind.next1232 = add <4 x i32> %vec.ind1231, <i32 4, i32 4, i32 4, i32 4>
  %444 = icmp eq i64 %index.next1226, 32
  br i1 %444, label %polly.loop_exit842.11140, label %vector.body1223, !llvm.loop !127

polly.loop_exit842.11140:                         ; preds = %vector.body1223
  %polly.indvar_next838.11138 = add nuw nsw i64 %polly.indvar837.11128, 1
  %exitcond1093.11139.not = icmp eq i64 %polly.indvar_next838.11138, 32
  br i1 %exitcond1093.11139.not, label %polly.loop_header834.1.1, label %polly.loop_header834.11129

polly.loop_header834.1.1:                         ; preds = %polly.loop_exit842.11140, %polly.loop_exit842.1.1
  %polly.indvar837.1.1 = phi i64 [ %polly.indvar_next838.1.1, %polly.loop_exit842.1.1 ], [ 0, %polly.loop_exit842.11140 ]
  %445 = add nuw nsw i64 %polly.indvar837.1.1, 32
  %446 = mul nuw nsw i64 %445, 640
  %447 = trunc i64 %445 to i32
  %broadcast.splatinsert1245 = insertelement <4 x i32> poison, i32 %447, i32 0
  %broadcast.splat1246 = shufflevector <4 x i32> %broadcast.splatinsert1245, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1237

vector.body1237:                                  ; preds = %vector.body1237, %polly.loop_header834.1.1
  %index1239 = phi i64 [ 0, %polly.loop_header834.1.1 ], [ %index.next1240, %vector.body1237 ]
  %vec.ind1243 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header834.1.1 ], [ %vec.ind.next1244, %vector.body1237 ]
  %448 = add nuw nsw <4 x i64> %vec.ind1243, <i64 32, i64 32, i64 32, i64 32>
  %449 = trunc <4 x i64> %448 to <4 x i32>
  %450 = mul <4 x i32> %broadcast.splat1246, %449
  %451 = add <4 x i32> %450, <i32 3, i32 3, i32 3, i32 3>
  %452 = urem <4 x i32> %451, <i32 80, i32 80, i32 80, i32 80>
  %453 = sitofp <4 x i32> %452 to <4 x double>
  %454 = fmul fast <4 x double> %453, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %455 = extractelement <4 x i64> %448, i32 0
  %456 = shl i64 %455, 3
  %457 = add nuw nsw i64 %456, %446
  %458 = getelementptr i8, i8* %call, i64 %457
  %459 = bitcast i8* %458 to <4 x double>*
  store <4 x double> %454, <4 x double>* %459, align 8, !alias.scope !105, !noalias !107
  %index.next1240 = add i64 %index1239, 4
  %vec.ind.next1244 = add <4 x i64> %vec.ind1243, <i64 4, i64 4, i64 4, i64 4>
  %460 = icmp eq i64 %index.next1240, 32
  br i1 %460, label %polly.loop_exit842.1.1, label %vector.body1237, !llvm.loop !128

polly.loop_exit842.1.1:                           ; preds = %vector.body1237
  %polly.indvar_next838.1.1 = add nuw nsw i64 %polly.indvar837.1.1, 1
  %exitcond1093.1.1.not = icmp eq i64 %polly.indvar_next838.1.1, 32
  br i1 %exitcond1093.1.1.not, label %polly.loop_header834.2.1, label %polly.loop_header834.1.1

polly.loop_header834.2.1:                         ; preds = %polly.loop_exit842.1.1, %polly.loop_exit842.2.1
  %polly.indvar837.2.1 = phi i64 [ %polly.indvar_next838.2.1, %polly.loop_exit842.2.1 ], [ 0, %polly.loop_exit842.1.1 ]
  %461 = add nuw nsw i64 %polly.indvar837.2.1, 32
  %462 = mul nuw nsw i64 %461, 640
  %463 = trunc i64 %461 to i32
  %broadcast.splatinsert1257 = insertelement <4 x i32> poison, i32 %463, i32 0
  %broadcast.splat1258 = shufflevector <4 x i32> %broadcast.splatinsert1257, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1249

vector.body1249:                                  ; preds = %vector.body1249, %polly.loop_header834.2.1
  %index1251 = phi i64 [ 0, %polly.loop_header834.2.1 ], [ %index.next1252, %vector.body1249 ]
  %vec.ind1255 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header834.2.1 ], [ %vec.ind.next1256, %vector.body1249 ]
  %464 = add nuw nsw <4 x i64> %vec.ind1255, <i64 64, i64 64, i64 64, i64 64>
  %465 = trunc <4 x i64> %464 to <4 x i32>
  %466 = mul <4 x i32> %broadcast.splat1258, %465
  %467 = add <4 x i32> %466, <i32 3, i32 3, i32 3, i32 3>
  %468 = urem <4 x i32> %467, <i32 80, i32 80, i32 80, i32 80>
  %469 = sitofp <4 x i32> %468 to <4 x double>
  %470 = fmul fast <4 x double> %469, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %471 = extractelement <4 x i64> %464, i32 0
  %472 = shl i64 %471, 3
  %473 = add nuw nsw i64 %472, %462
  %474 = getelementptr i8, i8* %call, i64 %473
  %475 = bitcast i8* %474 to <4 x double>*
  store <4 x double> %470, <4 x double>* %475, align 8, !alias.scope !105, !noalias !107
  %index.next1252 = add i64 %index1251, 4
  %vec.ind.next1256 = add <4 x i64> %vec.ind1255, <i64 4, i64 4, i64 4, i64 4>
  %476 = icmp eq i64 %index.next1252, 16
  br i1 %476, label %polly.loop_exit842.2.1, label %vector.body1249, !llvm.loop !129

polly.loop_exit842.2.1:                           ; preds = %vector.body1249
  %polly.indvar_next838.2.1 = add nuw nsw i64 %polly.indvar837.2.1, 1
  %exitcond1093.2.1.not = icmp eq i64 %polly.indvar_next838.2.1, 32
  br i1 %exitcond1093.2.1.not, label %polly.loop_header834.21143, label %polly.loop_header834.2.1

polly.loop_header834.21143:                       ; preds = %polly.loop_exit842.2.1, %polly.loop_exit842.21154
  %polly.indvar837.21142 = phi i64 [ %polly.indvar_next838.21152, %polly.loop_exit842.21154 ], [ 0, %polly.loop_exit842.2.1 ]
  %477 = add nuw nsw i64 %polly.indvar837.21142, 64
  %478 = mul nuw nsw i64 %477, 640
  %479 = trunc i64 %477 to i32
  %broadcast.splatinsert1271 = insertelement <4 x i32> poison, i32 %479, i32 0
  %broadcast.splat1272 = shufflevector <4 x i32> %broadcast.splatinsert1271, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1261

vector.body1261:                                  ; preds = %vector.body1261, %polly.loop_header834.21143
  %index1263 = phi i64 [ 0, %polly.loop_header834.21143 ], [ %index.next1264, %vector.body1261 ]
  %vec.ind1269 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header834.21143 ], [ %vec.ind.next1270, %vector.body1261 ]
  %480 = mul <4 x i32> %vec.ind1269, %broadcast.splat1272
  %481 = add <4 x i32> %480, <i32 3, i32 3, i32 3, i32 3>
  %482 = urem <4 x i32> %481, <i32 80, i32 80, i32 80, i32 80>
  %483 = sitofp <4 x i32> %482 to <4 x double>
  %484 = fmul fast <4 x double> %483, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %485 = shl i64 %index1263, 3
  %486 = add nuw nsw i64 %485, %478
  %487 = getelementptr i8, i8* %call, i64 %486
  %488 = bitcast i8* %487 to <4 x double>*
  store <4 x double> %484, <4 x double>* %488, align 8, !alias.scope !105, !noalias !107
  %index.next1264 = add i64 %index1263, 4
  %vec.ind.next1270 = add <4 x i32> %vec.ind1269, <i32 4, i32 4, i32 4, i32 4>
  %489 = icmp eq i64 %index.next1264, 32
  br i1 %489, label %polly.loop_exit842.21154, label %vector.body1261, !llvm.loop !130

polly.loop_exit842.21154:                         ; preds = %vector.body1261
  %polly.indvar_next838.21152 = add nuw nsw i64 %polly.indvar837.21142, 1
  %exitcond1093.21153.not = icmp eq i64 %polly.indvar_next838.21152, 16
  br i1 %exitcond1093.21153.not, label %polly.loop_header834.1.2, label %polly.loop_header834.21143

polly.loop_header834.1.2:                         ; preds = %polly.loop_exit842.21154, %polly.loop_exit842.1.2
  %polly.indvar837.1.2 = phi i64 [ %polly.indvar_next838.1.2, %polly.loop_exit842.1.2 ], [ 0, %polly.loop_exit842.21154 ]
  %490 = add nuw nsw i64 %polly.indvar837.1.2, 64
  %491 = mul nuw nsw i64 %490, 640
  %492 = trunc i64 %490 to i32
  %broadcast.splatinsert1283 = insertelement <4 x i32> poison, i32 %492, i32 0
  %broadcast.splat1284 = shufflevector <4 x i32> %broadcast.splatinsert1283, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1275

vector.body1275:                                  ; preds = %vector.body1275, %polly.loop_header834.1.2
  %index1277 = phi i64 [ 0, %polly.loop_header834.1.2 ], [ %index.next1278, %vector.body1275 ]
  %vec.ind1281 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header834.1.2 ], [ %vec.ind.next1282, %vector.body1275 ]
  %493 = add nuw nsw <4 x i64> %vec.ind1281, <i64 32, i64 32, i64 32, i64 32>
  %494 = trunc <4 x i64> %493 to <4 x i32>
  %495 = mul <4 x i32> %broadcast.splat1284, %494
  %496 = add <4 x i32> %495, <i32 3, i32 3, i32 3, i32 3>
  %497 = urem <4 x i32> %496, <i32 80, i32 80, i32 80, i32 80>
  %498 = sitofp <4 x i32> %497 to <4 x double>
  %499 = fmul fast <4 x double> %498, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %500 = extractelement <4 x i64> %493, i32 0
  %501 = shl i64 %500, 3
  %502 = add nuw nsw i64 %501, %491
  %503 = getelementptr i8, i8* %call, i64 %502
  %504 = bitcast i8* %503 to <4 x double>*
  store <4 x double> %499, <4 x double>* %504, align 8, !alias.scope !105, !noalias !107
  %index.next1278 = add i64 %index1277, 4
  %vec.ind.next1282 = add <4 x i64> %vec.ind1281, <i64 4, i64 4, i64 4, i64 4>
  %505 = icmp eq i64 %index.next1278, 32
  br i1 %505, label %polly.loop_exit842.1.2, label %vector.body1275, !llvm.loop !131

polly.loop_exit842.1.2:                           ; preds = %vector.body1275
  %polly.indvar_next838.1.2 = add nuw nsw i64 %polly.indvar837.1.2, 1
  %exitcond1093.1.2.not = icmp eq i64 %polly.indvar_next838.1.2, 16
  br i1 %exitcond1093.1.2.not, label %polly.loop_header834.2.2, label %polly.loop_header834.1.2

polly.loop_header834.2.2:                         ; preds = %polly.loop_exit842.1.2, %polly.loop_exit842.2.2
  %polly.indvar837.2.2 = phi i64 [ %polly.indvar_next838.2.2, %polly.loop_exit842.2.2 ], [ 0, %polly.loop_exit842.1.2 ]
  %506 = add nuw nsw i64 %polly.indvar837.2.2, 64
  %507 = mul nuw nsw i64 %506, 640
  %508 = trunc i64 %506 to i32
  %broadcast.splatinsert1295 = insertelement <4 x i32> poison, i32 %508, i32 0
  %broadcast.splat1296 = shufflevector <4 x i32> %broadcast.splatinsert1295, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1287

vector.body1287:                                  ; preds = %vector.body1287, %polly.loop_header834.2.2
  %index1289 = phi i64 [ 0, %polly.loop_header834.2.2 ], [ %index.next1290, %vector.body1287 ]
  %vec.ind1293 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header834.2.2 ], [ %vec.ind.next1294, %vector.body1287 ]
  %509 = add nuw nsw <4 x i64> %vec.ind1293, <i64 64, i64 64, i64 64, i64 64>
  %510 = trunc <4 x i64> %509 to <4 x i32>
  %511 = mul <4 x i32> %broadcast.splat1296, %510
  %512 = add <4 x i32> %511, <i32 3, i32 3, i32 3, i32 3>
  %513 = urem <4 x i32> %512, <i32 80, i32 80, i32 80, i32 80>
  %514 = sitofp <4 x i32> %513 to <4 x double>
  %515 = fmul fast <4 x double> %514, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %516 = extractelement <4 x i64> %509, i32 0
  %517 = shl i64 %516, 3
  %518 = add nuw nsw i64 %517, %507
  %519 = getelementptr i8, i8* %call, i64 %518
  %520 = bitcast i8* %519 to <4 x double>*
  store <4 x double> %515, <4 x double>* %520, align 8, !alias.scope !105, !noalias !107
  %index.next1290 = add i64 %index1289, 4
  %vec.ind.next1294 = add <4 x i64> %vec.ind1293, <i64 4, i64 4, i64 4, i64 4>
  %521 = icmp eq i64 %index.next1290, 16
  br i1 %521, label %polly.loop_exit842.2.2, label %vector.body1287, !llvm.loop !132

polly.loop_exit842.2.2:                           ; preds = %vector.body1287
  %polly.indvar_next838.2.2 = add nuw nsw i64 %polly.indvar837.2.2, 1
  %exitcond1093.2.2.not = icmp eq i64 %polly.indvar_next838.2.2, 16
  br i1 %exitcond1093.2.2.not, label %polly.loop_header861, label %polly.loop_header834.2.2
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
!26 = !{!"llvm.loop.tile.size", i32 32}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 80}
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
