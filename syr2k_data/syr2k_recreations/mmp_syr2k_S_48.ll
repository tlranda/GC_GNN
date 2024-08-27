; ModuleID = 'syr2k_recreations//mmp_syr2k_S_48.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_48.c"
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
  %call813 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #7
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #7
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1665 = bitcast i8* %call1 to double*
  %polly.access.call1674 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1674, %call2
  %polly.access.call2694 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2694, %call1
  %2 = or i1 %0, %1
  %polly.access.call714 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call714, %call2
  %4 = icmp ule i8* %polly.access.call2694, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call714, %call1
  %8 = icmp ule i8* %polly.access.call1674, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header799, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1149 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1148 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1147 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1146 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1146, %scevgep1149
  %bound1 = icmp ult i8* %scevgep1148, %scevgep1147
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
  br i1 %exitcond18.not.i, label %vector.ph1153, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1153:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1160 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1161 = shufflevector <4 x i64> %broadcast.splatinsert1160, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1152

vector.body1152:                                  ; preds = %vector.body1152, %vector.ph1153
  %index1154 = phi i64 [ 0, %vector.ph1153 ], [ %index.next1155, %vector.body1152 ]
  %vec.ind1158 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1153 ], [ %vec.ind.next1159, %vector.body1152 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1158, %broadcast.splat1161
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call813, i64 %indvars.iv7.i, i64 %index1154
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1155 = add i64 %index1154, 4
  %vec.ind.next1159 = add <4 x i64> %vec.ind1158, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1155, 80
  br i1 %40, label %for.inc41.i, label %vector.body1152, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1152
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1153, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit860.1.2
  tail call void (...) @polybench_timer_start() #7
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start472, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1569, label %vector.ph1435

vector.ph1435:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1434

vector.body1434:                                  ; preds = %vector.body1434, %vector.ph1435
  %index1436 = phi i64 [ 0, %vector.ph1435 ], [ %index.next1437, %vector.body1434 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call813, i64 %indvars.iv21.i, i64 %index1436
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1437 = add i64 %index1436, 4
  %46 = icmp eq i64 %index.next1437, %n.vec
  br i1 %46, label %middle.block1432, label %vector.body1434, !llvm.loop !18

middle.block1432:                                 ; preds = %vector.body1434
  %cmp.n1439 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1439, label %for.inc6.i, label %for.body3.i46.preheader1569

for.body3.i46.preheader1569:                      ; preds = %for.body3.i46.preheader, %middle.block1432
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1432 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1569, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1569 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call813, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1432, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call813, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting473
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  tail call void (...) @polybench_timer_start() #7
  br i1 %41, label %polly.start281, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1472 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1472, label %for.body3.i60.preheader1566, label %vector.ph1473

vector.ph1473:                                    ; preds = %for.body3.i60.preheader
  %n.vec1475 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1471

vector.body1471:                                  ; preds = %vector.body1471, %vector.ph1473
  %index1476 = phi i64 [ 0, %vector.ph1473 ], [ %index.next1477, %vector.body1471 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call813, i64 %indvars.iv21.i52, i64 %index1476
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1480 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1480, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1477 = add i64 %index1476, 4
  %57 = icmp eq i64 %index.next1477, %n.vec1475
  br i1 %57, label %middle.block1469, label %vector.body1471, !llvm.loop !55

middle.block1469:                                 ; preds = %vector.body1471
  %cmp.n1479 = icmp eq i64 %indvars.iv21.i52, %n.vec1475
  br i1 %cmp.n1479, label %for.inc6.i63, label %for.body3.i60.preheader1566

for.body3.i60.preheader1566:                      ; preds = %for.body3.i60.preheader, %middle.block1469
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1475, %middle.block1469 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1566, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1566 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call813, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1469, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call813, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting282
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  tail call void (...) @polybench_timer_start() #7
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1518 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1518, label %for.body3.i99.preheader1563, label %vector.ph1519

vector.ph1519:                                    ; preds = %for.body3.i99.preheader
  %n.vec1521 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1517

vector.body1517:                                  ; preds = %vector.body1517, %vector.ph1519
  %index1522 = phi i64 [ 0, %vector.ph1519 ], [ %index.next1523, %vector.body1517 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call813, i64 %indvars.iv21.i91, i64 %index1522
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1526 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1526, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1523 = add i64 %index1522, 4
  %68 = icmp eq i64 %index.next1523, %n.vec1521
  br i1 %68, label %middle.block1515, label %vector.body1517, !llvm.loop !57

middle.block1515:                                 ; preds = %vector.body1517
  %cmp.n1525 = icmp eq i64 %indvars.iv21.i91, %n.vec1521
  br i1 %cmp.n1525, label %for.inc6.i102, label %for.body3.i99.preheader1563

for.body3.i99.preheader1563:                      ; preds = %for.body3.i99.preheader, %middle.block1515
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1521, %middle.block1515 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1563, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1563 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call813, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1515, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call813, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call813, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1530 = phi i64 [ %indvar.next1531, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1530, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1532 = icmp ult i64 %88, 4
  br i1 %min.iters.check1532, label %polly.loop_header191.preheader, label %vector.ph1533

vector.ph1533:                                    ; preds = %polly.loop_header
  %n.vec1535 = and i64 %88, -4
  br label %vector.body1529

vector.body1529:                                  ; preds = %vector.body1529, %vector.ph1533
  %index1536 = phi i64 [ 0, %vector.ph1533 ], [ %index.next1537, %vector.body1529 ]
  %90 = shl nuw nsw i64 %index1536, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1540 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1540, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1537 = add i64 %index1536, 4
  %95 = icmp eq i64 %index.next1537, %n.vec1535
  br i1 %95, label %middle.block1527, label %vector.body1529, !llvm.loop !69

middle.block1527:                                 ; preds = %vector.body1529
  %cmp.n1539 = icmp eq i64 %88, %n.vec1535
  br i1 %cmp.n1539, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1527
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1535, %middle.block1527 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1527
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond995.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1531 = add i64 %indvar1530, 1
  br i1 %exitcond995.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond994.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond994.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit213.1
  %indvars.iv990 = phi i64 [ 1, %polly.loop_header199.preheader ], [ %indvars.iv.next991, %polly.loop_exit213.1 ]
  %indvars.iv979 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next980, %polly.loop_exit213.1 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit213.1 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit213.1 ]
  %97 = udiv i64 %indvars.iv990, 5
  %98 = mul nsw i64 %polly.indvar202, -8
  %99 = shl nsw i64 %polly.indvar202, 3
  br label %polly.loop_header211

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header199
  %indvars.iv981 = phi i64 [ %indvars.iv.next982, %polly.loop_exit219 ], [ %indvars.iv979, %polly.loop_header199 ]
  %indvars.iv977 = phi i64 [ %indvars.iv.next978, %polly.loop_exit219 ], [ %indvars.iv, %polly.loop_header199 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header199 ]
  %100 = mul nuw nsw i64 %polly.indvar214, 20
  %101 = add nsw i64 %100, %98
  %102 = icmp sgt i64 %101, 0
  %103 = select i1 %102, i64 %101, i64 0
  %polly.loop_guard = icmp slt i64 %103, 8
  br i1 %polly.loop_guard, label %polly.loop_header217.preheader, label %polly.loop_exit219

polly.loop_header217.preheader:                   ; preds = %polly.loop_header211
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv977, i64 0)
  %104 = add i64 %smax, %indvars.iv981
  %105 = sub nsw i64 %99, %100
  %106 = add nuw nsw i64 %100, 20
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit250, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next978 = add nsw i64 %indvars.iv977, 20
  %indvars.iv.next982 = add nsw i64 %indvars.iv981, -20
  %exitcond992.not = icmp eq i64 %polly.indvar214, %97
  br i1 %exitcond992.not, label %polly.loop_header211.1, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217.preheader, %polly.loop_exit250
  %indvars.iv983 = phi i64 [ %104, %polly.loop_header217.preheader ], [ %indvars.iv.next984, %polly.loop_exit250 ]
  %polly.indvar220 = phi i64 [ %103, %polly.loop_header217.preheader ], [ %polly.indvar_next221, %polly.loop_exit250 ]
  %smin987 = call i64 @llvm.smin.i64(i64 %indvars.iv983, i64 19)
  %107 = add nsw i64 %polly.indvar220, %105
  %polly.loop_guard2331127 = icmp sgt i64 %107, -1
  %108 = add nuw nsw i64 %polly.indvar220, %99
  %.not = icmp ult i64 %108, %106
  %polly.access.mul.call1242 = mul nsw i64 %108, 60
  br i1 %polly.loop_guard2331127, label %polly.loop_header223.us, label %polly.loop_header217.split

polly.loop_header223.us:                          ; preds = %polly.loop_header217, %polly.merge.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.merge.us ], [ 0, %polly.loop_header217 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar226.us, 80
  br label %polly.loop_header230.us

polly.loop_header230.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header230.us
  %polly.indvar234.us = phi i64 [ %polly.indvar_next235.us, %polly.loop_header230.us ], [ 0, %polly.loop_header223.us ]
  %109 = add nuw nsw i64 %polly.indvar234.us, %100
  %polly.access.mul.call1238.us = mul nuw nsw i64 %109, 60
  %polly.access.add.call1239.us = add nuw nsw i64 %polly.indvar226.us, %polly.access.mul.call1238.us
  %polly.access.call1240.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1239.us
  %polly.access.call1240.load.us = load double, double* %polly.access.call1240.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar234.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1240.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next235.us = add nuw nsw i64 %polly.indvar234.us, 1
  %exitcond985.not = icmp eq i64 %polly.indvar234.us, %smin987
  br i1 %exitcond985.not, label %polly.cond.loopexit.us, label %polly.loop_header230.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1243.us = add nuw nsw i64 %polly.access.mul.call1242, %polly.indvar226.us
  %polly.access.call1244.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.us
  %polly.access.call1244.load.us = load double, double* %polly.access.call1244.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %107
  %polly.access.Packed_MemRef_call1247.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us
  store double %polly.access.call1244.load.us, double* %polly.access.Packed_MemRef_call1247.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond986.not = icmp eq i64 %polly.indvar_next227.us, 50
  br i1 %exitcond986.not, label %polly.loop_header248.preheader, label %polly.loop_header223.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header230.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header217.split:                       ; preds = %polly.loop_header217
  br i1 %.not, label %polly.loop_exit250, label %polly.loop_header223

polly.loop_exit250:                               ; preds = %polly.loop_exit257.loopexit.us, %polly.loop_header217.split, %polly.loop_header248.preheader
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %polly.loop_cond222 = icmp ult i64 %polly.indvar220, 7
  %indvars.iv.next984 = add i64 %indvars.iv983, 1
  br i1 %polly.loop_cond222, label %polly.loop_header217, label %polly.loop_exit219

polly.loop_header223:                             ; preds = %polly.loop_header217.split, %polly.loop_header223
  %polly.indvar226 = phi i64 [ %polly.indvar_next227, %polly.loop_header223 ], [ 0, %polly.loop_header217.split ]
  %polly.access.add.call1243 = add nuw nsw i64 %polly.access.mul.call1242, %polly.indvar226
  %polly.access.call1244 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243
  %polly.access.call1244.load = load double, double* %polly.access.call1244, align 8, !alias.scope !66, !noalias !72
  %polly.access.mul.Packed_MemRef_call1245 = mul nuw nsw i64 %polly.indvar226, 80
  %polly.access.add.Packed_MemRef_call1246 = add nsw i64 %polly.access.mul.Packed_MemRef_call1245, %107
  %polly.access.Packed_MemRef_call1247 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246
  store double %polly.access.call1244.load, double* %polly.access.Packed_MemRef_call1247, align 8
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next227, 50
  br i1 %exitcond.not, label %polly.loop_header248.preheader, label %polly.loop_header223

polly.loop_header248.preheader:                   ; preds = %polly.loop_header223, %polly.merge.us
  %110 = mul i64 %108, 480
  %111 = mul i64 %108, 640
  br i1 %polly.loop_guard2331127, label %polly.loop_header248.us, label %polly.loop_exit250

polly.loop_header248.us:                          ; preds = %polly.loop_header248.preheader, %polly.loop_exit257.loopexit.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_exit257.loopexit.us ], [ 0, %polly.loop_header248.preheader ]
  %polly.access.mul.Packed_MemRef_call1262.us = mul nuw nsw i64 %polly.indvar251.us, 80
  %112 = shl i64 %polly.indvar251.us, 3
  %113 = add i64 %112, %110
  %scevgep266.us = getelementptr i8, i8* %call2, i64 %113
  %scevgep266267.us = bitcast i8* %scevgep266.us to double*
  %_p_scalar_268.us = load double, double* %scevgep266267.us, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1273.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1262.us, %107
  %polly.access.Packed_MemRef_call1274.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1273.us
  %_p_scalar_275.us = load double, double* %polly.access.Packed_MemRef_call1274.us, align 8
  br label %polly.loop_header255.us

polly.loop_header255.us:                          ; preds = %polly.loop_header248.us, %polly.loop_header255.us
  %polly.indvar259.us = phi i64 [ %polly.indvar_next260.us, %polly.loop_header255.us ], [ 0, %polly.loop_header248.us ]
  %114 = add nuw nsw i64 %polly.indvar259.us, %100
  %polly.access.add.Packed_MemRef_call1263.us = add nuw nsw i64 %polly.indvar259.us, %polly.access.mul.Packed_MemRef_call1262.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  %_p_scalar_265.us = load double, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_268.us, %_p_scalar_265.us
  %115 = mul nuw nsw i64 %114, 480
  %116 = add nuw nsw i64 %115, %112
  %scevgep269.us = getelementptr i8, i8* %call2, i64 %116
  %scevgep269270.us = bitcast i8* %scevgep269.us to double*
  %_p_scalar_271.us = load double, double* %scevgep269270.us, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us = fmul fast double %_p_scalar_275.us, %_p_scalar_271.us
  %117 = shl i64 %114, 3
  %118 = add i64 %117, %111
  %scevgep276.us = getelementptr i8, i8* %call, i64 %118
  %scevgep276277.us = bitcast i8* %scevgep276.us to double*
  %_p_scalar_278.us = load double, double* %scevgep276277.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_278.us
  store double %p_add42.i118.us, double* %scevgep276277.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next260.us = add nuw nsw i64 %polly.indvar259.us, 1
  %exitcond988.not = icmp eq i64 %polly.indvar259.us, %smin987
  br i1 %exitcond988.not, label %polly.loop_exit257.loopexit.us, label %polly.loop_header255.us

polly.loop_exit257.loopexit.us:                   ; preds = %polly.loop_header255.us
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond989.not = icmp eq i64 %polly.indvar_next252.us, 50
  br i1 %exitcond989.not, label %polly.loop_exit250, label %polly.loop_header248.us

polly.start281:                                   ; preds = %kernel_syr2k.exit
  %malloccall283 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  br label %polly.loop_header367

polly.exiting282:                                 ; preds = %polly.loop_exit398.1
  tail call void @free(i8* %malloccall283)
  br label %kernel_syr2k.exit90

polly.loop_header367:                             ; preds = %polly.loop_exit375, %polly.start281
  %indvar1484 = phi i64 [ %indvar.next1485, %polly.loop_exit375 ], [ 0, %polly.start281 ]
  %polly.indvar370 = phi i64 [ %polly.indvar_next371, %polly.loop_exit375 ], [ 1, %polly.start281 ]
  %119 = add i64 %indvar1484, 1
  %120 = mul nuw nsw i64 %polly.indvar370, 640
  %scevgep379 = getelementptr i8, i8* %call, i64 %120
  %min.iters.check1486 = icmp ult i64 %119, 4
  br i1 %min.iters.check1486, label %polly.loop_header373.preheader, label %vector.ph1487

vector.ph1487:                                    ; preds = %polly.loop_header367
  %n.vec1489 = and i64 %119, -4
  br label %vector.body1483

vector.body1483:                                  ; preds = %vector.body1483, %vector.ph1487
  %index1490 = phi i64 [ 0, %vector.ph1487 ], [ %index.next1491, %vector.body1483 ]
  %121 = shl nuw nsw i64 %index1490, 3
  %122 = getelementptr i8, i8* %scevgep379, i64 %121
  %123 = bitcast i8* %122 to <4 x double>*
  %wide.load1494 = load <4 x double>, <4 x double>* %123, align 8, !alias.scope !74, !noalias !76
  %124 = fmul fast <4 x double> %wide.load1494, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %125 = bitcast i8* %122 to <4 x double>*
  store <4 x double> %124, <4 x double>* %125, align 8, !alias.scope !74, !noalias !76
  %index.next1491 = add i64 %index1490, 4
  %126 = icmp eq i64 %index.next1491, %n.vec1489
  br i1 %126, label %middle.block1481, label %vector.body1483, !llvm.loop !80

middle.block1481:                                 ; preds = %vector.body1483
  %cmp.n1493 = icmp eq i64 %119, %n.vec1489
  br i1 %cmp.n1493, label %polly.loop_exit375, label %polly.loop_header373.preheader

polly.loop_header373.preheader:                   ; preds = %polly.loop_header367, %middle.block1481
  %polly.indvar376.ph = phi i64 [ 0, %polly.loop_header367 ], [ %n.vec1489, %middle.block1481 ]
  br label %polly.loop_header373

polly.loop_exit375:                               ; preds = %polly.loop_header373, %middle.block1481
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %exitcond1019.not = icmp eq i64 %polly.indvar_next371, 80
  %indvar.next1485 = add i64 %indvar1484, 1
  br i1 %exitcond1019.not, label %polly.loop_header383.preheader, label %polly.loop_header367

polly.loop_header383.preheader:                   ; preds = %polly.loop_exit375
  %Packed_MemRef_call1284 = bitcast i8* %malloccall283 to double*
  br label %polly.loop_header383

polly.loop_header373:                             ; preds = %polly.loop_header373.preheader, %polly.loop_header373
  %polly.indvar376 = phi i64 [ %polly.indvar_next377, %polly.loop_header373 ], [ %polly.indvar376.ph, %polly.loop_header373.preheader ]
  %127 = shl nuw nsw i64 %polly.indvar376, 3
  %scevgep380 = getelementptr i8, i8* %scevgep379, i64 %127
  %scevgep380381 = bitcast i8* %scevgep380 to double*
  %_p_scalar_382 = load double, double* %scevgep380381, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_382, 1.200000e+00
  store double %p_mul.i57, double* %scevgep380381, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar_next377, %polly.indvar370
  br i1 %exitcond1018.not, label %polly.loop_exit375, label %polly.loop_header373, !llvm.loop !81

polly.loop_header383:                             ; preds = %polly.loop_header383.preheader, %polly.loop_exit398.1
  %indvars.iv1014 = phi i64 [ 1, %polly.loop_header383.preheader ], [ %indvars.iv.next1015, %polly.loop_exit398.1 ]
  %indvars.iv1002 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %indvars.iv.next1003, %polly.loop_exit398.1 ]
  %indvars.iv997 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %indvars.iv.next998, %polly.loop_exit398.1 ]
  %polly.indvar386 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %polly.indvar_next387, %polly.loop_exit398.1 ]
  %128 = udiv i64 %indvars.iv1014, 5
  %129 = mul nsw i64 %polly.indvar386, -8
  %130 = shl nsw i64 %polly.indvar386, 3
  br label %polly.loop_header396

polly.loop_header396:                             ; preds = %polly.loop_exit405, %polly.loop_header383
  %indvars.iv1004 = phi i64 [ %indvars.iv.next1005, %polly.loop_exit405 ], [ %indvars.iv1002, %polly.loop_header383 ]
  %indvars.iv999 = phi i64 [ %indvars.iv.next1000, %polly.loop_exit405 ], [ %indvars.iv997, %polly.loop_header383 ]
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit405 ], [ 0, %polly.loop_header383 ]
  %131 = mul nuw nsw i64 %polly.indvar399, 20
  %132 = add nsw i64 %131, %129
  %133 = icmp sgt i64 %132, 0
  %134 = select i1 %133, i64 %132, i64 0
  %polly.loop_guard406 = icmp slt i64 %134, 8
  br i1 %polly.loop_guard406, label %polly.loop_header403.preheader, label %polly.loop_exit405

polly.loop_header403.preheader:                   ; preds = %polly.loop_header396
  %smax1001 = call i64 @llvm.smax.i64(i64 %indvars.iv999, i64 0)
  %135 = add i64 %smax1001, %indvars.iv1004
  %136 = sub nsw i64 %130, %131
  %137 = add nuw nsw i64 %131, 20
  br label %polly.loop_header403

polly.loop_exit405:                               ; preds = %polly.loop_exit441, %polly.loop_header396
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %indvars.iv.next1000 = add nsw i64 %indvars.iv999, 20
  %indvars.iv.next1005 = add nsw i64 %indvars.iv1004, -20
  %exitcond1016.not = icmp eq i64 %polly.indvar399, %128
  br i1 %exitcond1016.not, label %polly.loop_header396.1, label %polly.loop_header396

polly.loop_header403:                             ; preds = %polly.loop_header403.preheader, %polly.loop_exit441
  %indvars.iv1006 = phi i64 [ %135, %polly.loop_header403.preheader ], [ %indvars.iv.next1007, %polly.loop_exit441 ]
  %polly.indvar407 = phi i64 [ %134, %polly.loop_header403.preheader ], [ %polly.indvar_next408, %polly.loop_exit441 ]
  %smin1011 = call i64 @llvm.smin.i64(i64 %indvars.iv1006, i64 19)
  %138 = add nsw i64 %polly.indvar407, %136
  %polly.loop_guard4201129 = icmp sgt i64 %138, -1
  %139 = add nuw nsw i64 %polly.indvar407, %130
  %.not867 = icmp ult i64 %139, %137
  %polly.access.mul.call1433 = mul nsw i64 %139, 60
  br i1 %polly.loop_guard4201129, label %polly.loop_header410.us, label %polly.loop_header403.split

polly.loop_header410.us:                          ; preds = %polly.loop_header403, %polly.merge429.us
  %polly.indvar413.us = phi i64 [ %polly.indvar_next414.us, %polly.merge429.us ], [ 0, %polly.loop_header403 ]
  %polly.access.mul.Packed_MemRef_call1284.us = mul nuw nsw i64 %polly.indvar413.us, 80
  br label %polly.loop_header417.us

polly.loop_header417.us:                          ; preds = %polly.loop_header410.us, %polly.loop_header417.us
  %polly.indvar421.us = phi i64 [ %polly.indvar_next422.us, %polly.loop_header417.us ], [ 0, %polly.loop_header410.us ]
  %140 = add nuw nsw i64 %polly.indvar421.us, %131
  %polly.access.mul.call1425.us = mul nuw nsw i64 %140, 60
  %polly.access.add.call1426.us = add nuw nsw i64 %polly.indvar413.us, %polly.access.mul.call1425.us
  %polly.access.call1427.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1426.us
  %polly.access.call1427.load.us = load double, double* %polly.access.call1427.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284.us = add nuw nsw i64 %polly.indvar421.us, %polly.access.mul.Packed_MemRef_call1284.us
  %polly.access.Packed_MemRef_call1284.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284.us
  store double %polly.access.call1427.load.us, double* %polly.access.Packed_MemRef_call1284.us, align 8
  %polly.indvar_next422.us = add nuw nsw i64 %polly.indvar421.us, 1
  %exitcond1009.not = icmp eq i64 %polly.indvar421.us, %smin1011
  br i1 %exitcond1009.not, label %polly.cond428.loopexit.us, label %polly.loop_header417.us

polly.then430.us:                                 ; preds = %polly.cond428.loopexit.us
  %polly.access.add.call1434.us = add nuw nsw i64 %polly.access.mul.call1433, %polly.indvar413.us
  %polly.access.call1435.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.us
  %polly.access.call1435.load.us = load double, double* %polly.access.call1435.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1284.us, %138
  %polly.access.Packed_MemRef_call1284438.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.us
  store double %polly.access.call1435.load.us, double* %polly.access.Packed_MemRef_call1284438.us, align 8
  br label %polly.merge429.us

polly.merge429.us:                                ; preds = %polly.then430.us, %polly.cond428.loopexit.us
  %polly.indvar_next414.us = add nuw nsw i64 %polly.indvar413.us, 1
  %exitcond1010.not = icmp eq i64 %polly.indvar_next414.us, 50
  br i1 %exitcond1010.not, label %polly.loop_header439.preheader, label %polly.loop_header410.us

polly.cond428.loopexit.us:                        ; preds = %polly.loop_header417.us
  br i1 %.not867, label %polly.merge429.us, label %polly.then430.us

polly.loop_header403.split:                       ; preds = %polly.loop_header403
  br i1 %.not867, label %polly.loop_exit441, label %polly.loop_header410

polly.loop_exit441:                               ; preds = %polly.loop_exit448.loopexit.us, %polly.loop_header403.split, %polly.loop_header439.preheader
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %polly.loop_cond409 = icmp ult i64 %polly.indvar407, 7
  %indvars.iv.next1007 = add i64 %indvars.iv1006, 1
  br i1 %polly.loop_cond409, label %polly.loop_header403, label %polly.loop_exit405

polly.loop_header410:                             ; preds = %polly.loop_header403.split, %polly.loop_header410
  %polly.indvar413 = phi i64 [ %polly.indvar_next414, %polly.loop_header410 ], [ 0, %polly.loop_header403.split ]
  %polly.access.add.call1434 = add nuw nsw i64 %polly.access.mul.call1433, %polly.indvar413
  %polly.access.call1435 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434
  %polly.access.call1435.load = load double, double* %polly.access.call1435, align 8, !alias.scope !77, !noalias !82
  %polly.access.mul.Packed_MemRef_call1284436 = mul nuw nsw i64 %polly.indvar413, 80
  %polly.access.add.Packed_MemRef_call1284437 = add nsw i64 %polly.access.mul.Packed_MemRef_call1284436, %138
  %polly.access.Packed_MemRef_call1284438 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437
  store double %polly.access.call1435.load, double* %polly.access.Packed_MemRef_call1284438, align 8
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond996.not = icmp eq i64 %polly.indvar_next414, 50
  br i1 %exitcond996.not, label %polly.loop_header439.preheader, label %polly.loop_header410

polly.loop_header439.preheader:                   ; preds = %polly.loop_header410, %polly.merge429.us
  %141 = mul i64 %139, 480
  %142 = mul i64 %139, 640
  br i1 %polly.loop_guard4201129, label %polly.loop_header439.us, label %polly.loop_exit441

polly.loop_header439.us:                          ; preds = %polly.loop_header439.preheader, %polly.loop_exit448.loopexit.us
  %polly.indvar442.us = phi i64 [ %polly.indvar_next443.us, %polly.loop_exit448.loopexit.us ], [ 0, %polly.loop_header439.preheader ]
  %polly.access.mul.Packed_MemRef_call1284453.us = mul nuw nsw i64 %polly.indvar442.us, 80
  %143 = shl i64 %polly.indvar442.us, 3
  %144 = add i64 %143, %141
  %scevgep457.us = getelementptr i8, i8* %call2, i64 %144
  %scevgep457458.us = bitcast i8* %scevgep457.us to double*
  %_p_scalar_459.us = load double, double* %scevgep457458.us, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1284464.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1284453.us, %138
  %polly.access.Packed_MemRef_call1284465.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284464.us
  %_p_scalar_466.us = load double, double* %polly.access.Packed_MemRef_call1284465.us, align 8
  br label %polly.loop_header446.us

polly.loop_header446.us:                          ; preds = %polly.loop_header439.us, %polly.loop_header446.us
  %polly.indvar450.us = phi i64 [ %polly.indvar_next451.us, %polly.loop_header446.us ], [ 0, %polly.loop_header439.us ]
  %145 = add nuw nsw i64 %polly.indvar450.us, %131
  %polly.access.add.Packed_MemRef_call1284454.us = add nuw nsw i64 %polly.indvar450.us, %polly.access.mul.Packed_MemRef_call1284453.us
  %polly.access.Packed_MemRef_call1284455.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284454.us
  %_p_scalar_456.us = load double, double* %polly.access.Packed_MemRef_call1284455.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_459.us, %_p_scalar_456.us
  %146 = mul nuw nsw i64 %145, 480
  %147 = add nuw nsw i64 %146, %143
  %scevgep460.us = getelementptr i8, i8* %call2, i64 %147
  %scevgep460461.us = bitcast i8* %scevgep460.us to double*
  %_p_scalar_462.us = load double, double* %scevgep460461.us, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us = fmul fast double %_p_scalar_466.us, %_p_scalar_462.us
  %148 = shl i64 %145, 3
  %149 = add i64 %148, %142
  %scevgep467.us = getelementptr i8, i8* %call, i64 %149
  %scevgep467468.us = bitcast i8* %scevgep467.us to double*
  %_p_scalar_469.us = load double, double* %scevgep467468.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_469.us
  store double %p_add42.i79.us, double* %scevgep467468.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next451.us = add nuw nsw i64 %polly.indvar450.us, 1
  %exitcond1012.not = icmp eq i64 %polly.indvar450.us, %smin1011
  br i1 %exitcond1012.not, label %polly.loop_exit448.loopexit.us, label %polly.loop_header446.us

polly.loop_exit448.loopexit.us:                   ; preds = %polly.loop_header446.us
  %polly.indvar_next443.us = add nuw nsw i64 %polly.indvar442.us, 1
  %exitcond1013.not = icmp eq i64 %polly.indvar_next443.us, 50
  br i1 %exitcond1013.not, label %polly.loop_exit441, label %polly.loop_header439.us

polly.start472:                                   ; preds = %init_array.exit
  %malloccall474 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  br label %polly.loop_header558

polly.exiting473:                                 ; preds = %polly.loop_exit589.1
  tail call void @free(i8* %malloccall474)
  br label %kernel_syr2k.exit

polly.loop_header558:                             ; preds = %polly.loop_exit566, %polly.start472
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit566 ], [ 0, %polly.start472 ]
  %polly.indvar561 = phi i64 [ %polly.indvar_next562, %polly.loop_exit566 ], [ 1, %polly.start472 ]
  %150 = add i64 %indvar, 1
  %151 = mul nuw nsw i64 %polly.indvar561, 640
  %scevgep570 = getelementptr i8, i8* %call, i64 %151
  %min.iters.check1443 = icmp ult i64 %150, 4
  br i1 %min.iters.check1443, label %polly.loop_header564.preheader, label %vector.ph1444

vector.ph1444:                                    ; preds = %polly.loop_header558
  %n.vec1446 = and i64 %150, -4
  br label %vector.body1442

vector.body1442:                                  ; preds = %vector.body1442, %vector.ph1444
  %index1447 = phi i64 [ 0, %vector.ph1444 ], [ %index.next1448, %vector.body1442 ]
  %152 = shl nuw nsw i64 %index1447, 3
  %153 = getelementptr i8, i8* %scevgep570, i64 %152
  %154 = bitcast i8* %153 to <4 x double>*
  %wide.load1451 = load <4 x double>, <4 x double>* %154, align 8, !alias.scope !84, !noalias !86
  %155 = fmul fast <4 x double> %wide.load1451, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %156 = bitcast i8* %153 to <4 x double>*
  store <4 x double> %155, <4 x double>* %156, align 8, !alias.scope !84, !noalias !86
  %index.next1448 = add i64 %index1447, 4
  %157 = icmp eq i64 %index.next1448, %n.vec1446
  br i1 %157, label %middle.block1440, label %vector.body1442, !llvm.loop !90

middle.block1440:                                 ; preds = %vector.body1442
  %cmp.n1450 = icmp eq i64 %150, %n.vec1446
  br i1 %cmp.n1450, label %polly.loop_exit566, label %polly.loop_header564.preheader

polly.loop_header564.preheader:                   ; preds = %polly.loop_header558, %middle.block1440
  %polly.indvar567.ph = phi i64 [ 0, %polly.loop_header558 ], [ %n.vec1446, %middle.block1440 ]
  br label %polly.loop_header564

polly.loop_exit566:                               ; preds = %polly.loop_header564, %middle.block1440
  %polly.indvar_next562 = add nuw nsw i64 %polly.indvar561, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar_next562, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1043.not, label %polly.loop_header574.preheader, label %polly.loop_header558

polly.loop_header574.preheader:                   ; preds = %polly.loop_exit566
  %Packed_MemRef_call1475 = bitcast i8* %malloccall474 to double*
  br label %polly.loop_header574

polly.loop_header564:                             ; preds = %polly.loop_header564.preheader, %polly.loop_header564
  %polly.indvar567 = phi i64 [ %polly.indvar_next568, %polly.loop_header564 ], [ %polly.indvar567.ph, %polly.loop_header564.preheader ]
  %158 = shl nuw nsw i64 %polly.indvar567, 3
  %scevgep571 = getelementptr i8, i8* %scevgep570, i64 %158
  %scevgep571572 = bitcast i8* %scevgep571 to double*
  %_p_scalar_573 = load double, double* %scevgep571572, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_573, 1.200000e+00
  store double %p_mul.i, double* %scevgep571572, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next568 = add nuw nsw i64 %polly.indvar567, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar_next568, %polly.indvar561
  br i1 %exitcond1042.not, label %polly.loop_exit566, label %polly.loop_header564, !llvm.loop !91

polly.loop_header574:                             ; preds = %polly.loop_header574.preheader, %polly.loop_exit589.1
  %indvars.iv1038 = phi i64 [ 1, %polly.loop_header574.preheader ], [ %indvars.iv.next1039, %polly.loop_exit589.1 ]
  %indvars.iv1026 = phi i64 [ 0, %polly.loop_header574.preheader ], [ %indvars.iv.next1027, %polly.loop_exit589.1 ]
  %indvars.iv1021 = phi i64 [ 0, %polly.loop_header574.preheader ], [ %indvars.iv.next1022, %polly.loop_exit589.1 ]
  %polly.indvar577 = phi i64 [ 0, %polly.loop_header574.preheader ], [ %polly.indvar_next578, %polly.loop_exit589.1 ]
  %159 = udiv i64 %indvars.iv1038, 5
  %160 = mul nsw i64 %polly.indvar577, -8
  %161 = shl nsw i64 %polly.indvar577, 3
  br label %polly.loop_header587

polly.loop_header587:                             ; preds = %polly.loop_exit596, %polly.loop_header574
  %indvars.iv1028 = phi i64 [ %indvars.iv.next1029, %polly.loop_exit596 ], [ %indvars.iv1026, %polly.loop_header574 ]
  %indvars.iv1023 = phi i64 [ %indvars.iv.next1024, %polly.loop_exit596 ], [ %indvars.iv1021, %polly.loop_header574 ]
  %polly.indvar590 = phi i64 [ %polly.indvar_next591, %polly.loop_exit596 ], [ 0, %polly.loop_header574 ]
  %162 = mul nuw nsw i64 %polly.indvar590, 20
  %163 = add nsw i64 %162, %160
  %164 = icmp sgt i64 %163, 0
  %165 = select i1 %164, i64 %163, i64 0
  %polly.loop_guard597 = icmp slt i64 %165, 8
  br i1 %polly.loop_guard597, label %polly.loop_header594.preheader, label %polly.loop_exit596

polly.loop_header594.preheader:                   ; preds = %polly.loop_header587
  %smax1025 = call i64 @llvm.smax.i64(i64 %indvars.iv1023, i64 0)
  %166 = add i64 %smax1025, %indvars.iv1028
  %167 = sub nsw i64 %161, %162
  %168 = add nuw nsw i64 %162, 20
  br label %polly.loop_header594

polly.loop_exit596:                               ; preds = %polly.loop_exit632, %polly.loop_header587
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %indvars.iv.next1024 = add nsw i64 %indvars.iv1023, 20
  %indvars.iv.next1029 = add nsw i64 %indvars.iv1028, -20
  %exitcond1040.not = icmp eq i64 %polly.indvar590, %159
  br i1 %exitcond1040.not, label %polly.loop_header587.1, label %polly.loop_header587

polly.loop_header594:                             ; preds = %polly.loop_header594.preheader, %polly.loop_exit632
  %indvars.iv1030 = phi i64 [ %166, %polly.loop_header594.preheader ], [ %indvars.iv.next1031, %polly.loop_exit632 ]
  %polly.indvar598 = phi i64 [ %165, %polly.loop_header594.preheader ], [ %polly.indvar_next599, %polly.loop_exit632 ]
  %smin1035 = call i64 @llvm.smin.i64(i64 %indvars.iv1030, i64 19)
  %169 = add nsw i64 %polly.indvar598, %167
  %polly.loop_guard6111131 = icmp sgt i64 %169, -1
  %170 = add nuw nsw i64 %polly.indvar598, %161
  %.not868 = icmp ult i64 %170, %168
  %polly.access.mul.call1624 = mul nsw i64 %170, 60
  br i1 %polly.loop_guard6111131, label %polly.loop_header601.us, label %polly.loop_header594.split

polly.loop_header601.us:                          ; preds = %polly.loop_header594, %polly.merge620.us
  %polly.indvar604.us = phi i64 [ %polly.indvar_next605.us, %polly.merge620.us ], [ 0, %polly.loop_header594 ]
  %polly.access.mul.Packed_MemRef_call1475.us = mul nuw nsw i64 %polly.indvar604.us, 80
  br label %polly.loop_header608.us

polly.loop_header608.us:                          ; preds = %polly.loop_header601.us, %polly.loop_header608.us
  %polly.indvar612.us = phi i64 [ %polly.indvar_next613.us, %polly.loop_header608.us ], [ 0, %polly.loop_header601.us ]
  %171 = add nuw nsw i64 %polly.indvar612.us, %162
  %polly.access.mul.call1616.us = mul nuw nsw i64 %171, 60
  %polly.access.add.call1617.us = add nuw nsw i64 %polly.indvar604.us, %polly.access.mul.call1616.us
  %polly.access.call1618.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1617.us
  %polly.access.call1618.load.us = load double, double* %polly.access.call1618.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475.us = add nuw nsw i64 %polly.indvar612.us, %polly.access.mul.Packed_MemRef_call1475.us
  %polly.access.Packed_MemRef_call1475.us = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475.us
  store double %polly.access.call1618.load.us, double* %polly.access.Packed_MemRef_call1475.us, align 8
  %polly.indvar_next613.us = add nuw nsw i64 %polly.indvar612.us, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar612.us, %smin1035
  br i1 %exitcond1033.not, label %polly.cond619.loopexit.us, label %polly.loop_header608.us

polly.then621.us:                                 ; preds = %polly.cond619.loopexit.us
  %polly.access.add.call1625.us = add nuw nsw i64 %polly.access.mul.call1624, %polly.indvar604.us
  %polly.access.call1626.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.us
  %polly.access.call1626.load.us = load double, double* %polly.access.call1626.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1475.us, %169
  %polly.access.Packed_MemRef_call1475629.us = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.us
  store double %polly.access.call1626.load.us, double* %polly.access.Packed_MemRef_call1475629.us, align 8
  br label %polly.merge620.us

polly.merge620.us:                                ; preds = %polly.then621.us, %polly.cond619.loopexit.us
  %polly.indvar_next605.us = add nuw nsw i64 %polly.indvar604.us, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar_next605.us, 50
  br i1 %exitcond1034.not, label %polly.loop_header630.preheader, label %polly.loop_header601.us

polly.cond619.loopexit.us:                        ; preds = %polly.loop_header608.us
  br i1 %.not868, label %polly.merge620.us, label %polly.then621.us

polly.loop_header594.split:                       ; preds = %polly.loop_header594
  br i1 %.not868, label %polly.loop_exit632, label %polly.loop_header601

polly.loop_exit632:                               ; preds = %polly.loop_exit639.loopexit.us, %polly.loop_header594.split, %polly.loop_header630.preheader
  %polly.indvar_next599 = add nuw nsw i64 %polly.indvar598, 1
  %polly.loop_cond600 = icmp ult i64 %polly.indvar598, 7
  %indvars.iv.next1031 = add i64 %indvars.iv1030, 1
  br i1 %polly.loop_cond600, label %polly.loop_header594, label %polly.loop_exit596

polly.loop_header601:                             ; preds = %polly.loop_header594.split, %polly.loop_header601
  %polly.indvar604 = phi i64 [ %polly.indvar_next605, %polly.loop_header601 ], [ 0, %polly.loop_header594.split ]
  %polly.access.add.call1625 = add nuw nsw i64 %polly.access.mul.call1624, %polly.indvar604
  %polly.access.call1626 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625
  %polly.access.call1626.load = load double, double* %polly.access.call1626, align 8, !alias.scope !87, !noalias !92
  %polly.access.mul.Packed_MemRef_call1475627 = mul nuw nsw i64 %polly.indvar604, 80
  %polly.access.add.Packed_MemRef_call1475628 = add nsw i64 %polly.access.mul.Packed_MemRef_call1475627, %169
  %polly.access.Packed_MemRef_call1475629 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628
  store double %polly.access.call1626.load, double* %polly.access.Packed_MemRef_call1475629, align 8
  %polly.indvar_next605 = add nuw nsw i64 %polly.indvar604, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar_next605, 50
  br i1 %exitcond1020.not, label %polly.loop_header630.preheader, label %polly.loop_header601

polly.loop_header630.preheader:                   ; preds = %polly.loop_header601, %polly.merge620.us
  %172 = mul i64 %170, 480
  %173 = mul i64 %170, 640
  br i1 %polly.loop_guard6111131, label %polly.loop_header630.us, label %polly.loop_exit632

polly.loop_header630.us:                          ; preds = %polly.loop_header630.preheader, %polly.loop_exit639.loopexit.us
  %polly.indvar633.us = phi i64 [ %polly.indvar_next634.us, %polly.loop_exit639.loopexit.us ], [ 0, %polly.loop_header630.preheader ]
  %polly.access.mul.Packed_MemRef_call1475644.us = mul nuw nsw i64 %polly.indvar633.us, 80
  %174 = shl i64 %polly.indvar633.us, 3
  %175 = add i64 %174, %172
  %scevgep648.us = getelementptr i8, i8* %call2, i64 %175
  %scevgep648649.us = bitcast i8* %scevgep648.us to double*
  %_p_scalar_650.us = load double, double* %scevgep648649.us, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1475655.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1475644.us, %169
  %polly.access.Packed_MemRef_call1475656.us = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475655.us
  %_p_scalar_657.us = load double, double* %polly.access.Packed_MemRef_call1475656.us, align 8
  br label %polly.loop_header637.us

polly.loop_header637.us:                          ; preds = %polly.loop_header630.us, %polly.loop_header637.us
  %polly.indvar641.us = phi i64 [ %polly.indvar_next642.us, %polly.loop_header637.us ], [ 0, %polly.loop_header630.us ]
  %176 = add nuw nsw i64 %polly.indvar641.us, %162
  %polly.access.add.Packed_MemRef_call1475645.us = add nuw nsw i64 %polly.indvar641.us, %polly.access.mul.Packed_MemRef_call1475644.us
  %polly.access.Packed_MemRef_call1475646.us = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475645.us
  %_p_scalar_647.us = load double, double* %polly.access.Packed_MemRef_call1475646.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_650.us, %_p_scalar_647.us
  %177 = mul nuw nsw i64 %176, 480
  %178 = add nuw nsw i64 %177, %174
  %scevgep651.us = getelementptr i8, i8* %call2, i64 %178
  %scevgep651652.us = bitcast i8* %scevgep651.us to double*
  %_p_scalar_653.us = load double, double* %scevgep651652.us, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us = fmul fast double %_p_scalar_657.us, %_p_scalar_653.us
  %179 = shl i64 %176, 3
  %180 = add i64 %179, %173
  %scevgep658.us = getelementptr i8, i8* %call, i64 %180
  %scevgep658659.us = bitcast i8* %scevgep658.us to double*
  %_p_scalar_660.us = load double, double* %scevgep658659.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_660.us
  store double %p_add42.i.us, double* %scevgep658659.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next642.us = add nuw nsw i64 %polly.indvar641.us, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar641.us, %smin1035
  br i1 %exitcond1036.not, label %polly.loop_exit639.loopexit.us, label %polly.loop_header637.us

polly.loop_exit639.loopexit.us:                   ; preds = %polly.loop_header637.us
  %polly.indvar_next634.us = add nuw nsw i64 %polly.indvar633.us, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar_next634.us, 50
  br i1 %exitcond1037.not, label %polly.loop_exit632, label %polly.loop_header630.us

polly.loop_header799:                             ; preds = %entry, %polly.loop_exit807
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_exit807 ], [ 0, %entry ]
  %181 = mul nuw nsw i64 %polly.indvar802, 640
  %182 = trunc i64 %polly.indvar802 to i32
  %broadcast.splatinsert1174 = insertelement <4 x i32> poison, i32 %182, i32 0
  %broadcast.splat1175 = shufflevector <4 x i32> %broadcast.splatinsert1174, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1164

vector.body1164:                                  ; preds = %vector.body1164, %polly.loop_header799
  %index1166 = phi i64 [ 0, %polly.loop_header799 ], [ %index.next1167, %vector.body1164 ]
  %vec.ind1172 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header799 ], [ %vec.ind.next1173, %vector.body1164 ]
  %183 = mul <4 x i32> %vec.ind1172, %broadcast.splat1175
  %184 = add <4 x i32> %183, <i32 3, i32 3, i32 3, i32 3>
  %185 = urem <4 x i32> %184, <i32 80, i32 80, i32 80, i32 80>
  %186 = sitofp <4 x i32> %185 to <4 x double>
  %187 = fmul fast <4 x double> %186, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %188 = shl i64 %index1166, 3
  %189 = add nuw nsw i64 %188, %181
  %190 = getelementptr i8, i8* %call, i64 %189
  %191 = bitcast i8* %190 to <4 x double>*
  store <4 x double> %187, <4 x double>* %191, align 8, !alias.scope !94, !noalias !96
  %index.next1167 = add i64 %index1166, 4
  %vec.ind.next1173 = add <4 x i32> %vec.ind1172, <i32 4, i32 4, i32 4, i32 4>
  %192 = icmp eq i64 %index.next1167, 32
  br i1 %192, label %polly.loop_exit807, label %vector.body1164, !llvm.loop !99

polly.loop_exit807:                               ; preds = %vector.body1164
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %exitcond1063.not = icmp eq i64 %polly.indvar_next803, 32
  br i1 %exitcond1063.not, label %polly.loop_header799.1, label %polly.loop_header799

polly.loop_header826:                             ; preds = %polly.loop_exit807.2.2, %polly.loop_exit834
  %polly.indvar829 = phi i64 [ %polly.indvar_next830, %polly.loop_exit834 ], [ 0, %polly.loop_exit807.2.2 ]
  %193 = mul nuw nsw i64 %polly.indvar829, 480
  %194 = trunc i64 %polly.indvar829 to i32
  %broadcast.splatinsert1288 = insertelement <4 x i32> poison, i32 %194, i32 0
  %broadcast.splat1289 = shufflevector <4 x i32> %broadcast.splatinsert1288, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1278

vector.body1278:                                  ; preds = %vector.body1278, %polly.loop_header826
  %index1280 = phi i64 [ 0, %polly.loop_header826 ], [ %index.next1281, %vector.body1278 ]
  %vec.ind1286 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header826 ], [ %vec.ind.next1287, %vector.body1278 ]
  %195 = mul <4 x i32> %vec.ind1286, %broadcast.splat1289
  %196 = add <4 x i32> %195, <i32 2, i32 2, i32 2, i32 2>
  %197 = urem <4 x i32> %196, <i32 60, i32 60, i32 60, i32 60>
  %198 = sitofp <4 x i32> %197 to <4 x double>
  %199 = fmul fast <4 x double> %198, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %200 = shl i64 %index1280, 3
  %201 = add i64 %200, %193
  %202 = getelementptr i8, i8* %call2, i64 %201
  %203 = bitcast i8* %202 to <4 x double>*
  store <4 x double> %199, <4 x double>* %203, align 8, !alias.scope !98, !noalias !100
  %index.next1281 = add i64 %index1280, 4
  %vec.ind.next1287 = add <4 x i32> %vec.ind1286, <i32 4, i32 4, i32 4, i32 4>
  %204 = icmp eq i64 %index.next1281, 32
  br i1 %204, label %polly.loop_exit834, label %vector.body1278, !llvm.loop !101

polly.loop_exit834:                               ; preds = %vector.body1278
  %polly.indvar_next830 = add nuw nsw i64 %polly.indvar829, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar_next830, 32
  br i1 %exitcond1054.not, label %polly.loop_header826.1, label %polly.loop_header826

polly.loop_header852:                             ; preds = %polly.loop_exit834.1.2, %polly.loop_exit860
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_exit834.1.2 ]
  %205 = mul nuw nsw i64 %polly.indvar855, 480
  %206 = trunc i64 %polly.indvar855 to i32
  %broadcast.splatinsert1366 = insertelement <4 x i32> poison, i32 %206, i32 0
  %broadcast.splat1367 = shufflevector <4 x i32> %broadcast.splatinsert1366, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1356

vector.body1356:                                  ; preds = %vector.body1356, %polly.loop_header852
  %index1358 = phi i64 [ 0, %polly.loop_header852 ], [ %index.next1359, %vector.body1356 ]
  %vec.ind1364 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header852 ], [ %vec.ind.next1365, %vector.body1356 ]
  %207 = mul <4 x i32> %vec.ind1364, %broadcast.splat1367
  %208 = add <4 x i32> %207, <i32 1, i32 1, i32 1, i32 1>
  %209 = urem <4 x i32> %208, <i32 80, i32 80, i32 80, i32 80>
  %210 = sitofp <4 x i32> %209 to <4 x double>
  %211 = fmul fast <4 x double> %210, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %212 = shl i64 %index1358, 3
  %213 = add i64 %212, %205
  %214 = getelementptr i8, i8* %call1, i64 %213
  %215 = bitcast i8* %214 to <4 x double>*
  store <4 x double> %211, <4 x double>* %215, align 8, !alias.scope !97, !noalias !102
  %index.next1359 = add i64 %index1358, 4
  %vec.ind.next1365 = add <4 x i32> %vec.ind1364, <i32 4, i32 4, i32 4, i32 4>
  %216 = icmp eq i64 %index.next1359, 32
  br i1 %216, label %polly.loop_exit860, label %vector.body1356, !llvm.loop !103

polly.loop_exit860:                               ; preds = %vector.body1356
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar_next856, 32
  br i1 %exitcond1048.not, label %polly.loop_header852.1, label %polly.loop_header852

polly.loop_header211.1:                           ; preds = %polly.loop_exit219, %polly.loop_exit219.1
  %indvars.iv981.1 = phi i64 [ %indvars.iv.next982.1, %polly.loop_exit219.1 ], [ %indvars.iv979, %polly.loop_exit219 ]
  %indvars.iv977.1 = phi i64 [ %indvars.iv.next978.1, %polly.loop_exit219.1 ], [ %indvars.iv, %polly.loop_exit219 ]
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit219.1 ], [ 0, %polly.loop_exit219 ]
  %217 = mul nuw nsw i64 %polly.indvar214.1, 20
  %218 = add nsw i64 %217, %98
  %219 = icmp sgt i64 %218, 0
  %220 = select i1 %219, i64 %218, i64 0
  %polly.loop_guard.1 = icmp slt i64 %220, 8
  br i1 %polly.loop_guard.1, label %polly.loop_header217.preheader.1, label %polly.loop_exit219.1

polly.loop_header217.preheader.1:                 ; preds = %polly.loop_header211.1
  %smax.1 = call i64 @llvm.smax.i64(i64 %indvars.iv977.1, i64 0)
  %221 = add i64 %smax.1, %indvars.iv981.1
  %222 = sub nsw i64 %99, %217
  %223 = add nuw nsw i64 %217, 20
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_exit250.1, %polly.loop_header217.preheader.1
  %indvars.iv983.1 = phi i64 [ %221, %polly.loop_header217.preheader.1 ], [ %indvars.iv.next984.1, %polly.loop_exit250.1 ]
  %polly.indvar220.1 = phi i64 [ %220, %polly.loop_header217.preheader.1 ], [ %polly.indvar_next221.1, %polly.loop_exit250.1 ]
  %smin987.1 = call i64 @llvm.smin.i64(i64 %indvars.iv983.1, i64 19)
  %224 = add nsw i64 %polly.indvar220.1, %222
  %polly.loop_guard233.11126 = icmp sgt i64 %224, -1
  %225 = add nuw nsw i64 %polly.indvar220.1, %99
  %.not.1 = icmp ult i64 %225, %223
  %polly.access.mul.call1242.1 = mul nsw i64 %225, 60
  %226 = add nuw i64 %polly.access.mul.call1242.1, 50
  br i1 %polly.loop_guard233.11126, label %polly.loop_header223.us.1, label %polly.loop_header217.split.1

polly.loop_header217.split.1:                     ; preds = %polly.loop_header217.1
  br i1 %.not.1, label %polly.loop_exit250.1, label %vector.ph1544

vector.ph1544:                                    ; preds = %polly.loop_header217.split.1
  %broadcast.splatinsert1551 = insertelement <4 x i64> poison, i64 %224, i32 0
  %broadcast.splat1552 = shufflevector <4 x i64> %broadcast.splatinsert1551, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1543

vector.body1543:                                  ; preds = %pred.store.continue1560, %vector.ph1544
  %index1545 = phi i64 [ 0, %vector.ph1544 ], [ %index.next1546, %pred.store.continue1560 ]
  %vec.ind1548 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1544 ], [ %vec.ind.next1549, %pred.store.continue1560 ]
  %227 = icmp ult <4 x i64> %vec.ind1548, <i64 10, i64 10, i64 10, i64 10>
  %228 = add nuw nsw i64 %226, %index1545
  %229 = getelementptr double, double* %polly.access.cast.call1665, i64 %228
  %230 = bitcast double* %229 to <4 x double>*
  %wide.masked.load1550 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %230, i32 8, <4 x i1> %227, <4 x double> poison), !alias.scope !66, !noalias !72
  %231 = mul nuw nsw <4 x i64> %vec.ind1548, <i64 80, i64 80, i64 80, i64 80>
  %232 = add nsw <4 x i64> %231, %broadcast.splat1552
  %233 = extractelement <4 x i1> %227, i32 0
  br i1 %233, label %pred.store.if1553, label %pred.store.continue1554

pred.store.if1553:                                ; preds = %vector.body1543
  %234 = extractelement <4 x i64> %232, i32 0
  %235 = getelementptr double, double* %Packed_MemRef_call1, i64 %234
  %236 = extractelement <4 x double> %wide.masked.load1550, i32 0
  store double %236, double* %235, align 8
  br label %pred.store.continue1554

pred.store.continue1554:                          ; preds = %pred.store.if1553, %vector.body1543
  %237 = extractelement <4 x i1> %227, i32 1
  br i1 %237, label %pred.store.if1555, label %pred.store.continue1556

pred.store.if1555:                                ; preds = %pred.store.continue1554
  %238 = extractelement <4 x i64> %232, i32 1
  %239 = getelementptr double, double* %Packed_MemRef_call1, i64 %238
  %240 = extractelement <4 x double> %wide.masked.load1550, i32 1
  store double %240, double* %239, align 8
  br label %pred.store.continue1556

pred.store.continue1556:                          ; preds = %pred.store.if1555, %pred.store.continue1554
  %241 = extractelement <4 x i1> %227, i32 2
  br i1 %241, label %pred.store.if1557, label %pred.store.continue1558

pred.store.if1557:                                ; preds = %pred.store.continue1556
  %242 = extractelement <4 x i64> %232, i32 2
  %243 = getelementptr double, double* %Packed_MemRef_call1, i64 %242
  %244 = extractelement <4 x double> %wide.masked.load1550, i32 2
  store double %244, double* %243, align 8
  br label %pred.store.continue1558

pred.store.continue1558:                          ; preds = %pred.store.if1557, %pred.store.continue1556
  %245 = extractelement <4 x i1> %227, i32 3
  br i1 %245, label %pred.store.if1559, label %pred.store.continue1560

pred.store.if1559:                                ; preds = %pred.store.continue1558
  %246 = extractelement <4 x i64> %232, i32 3
  %247 = getelementptr double, double* %Packed_MemRef_call1, i64 %246
  %248 = extractelement <4 x double> %wide.masked.load1550, i32 3
  store double %248, double* %247, align 8
  br label %pred.store.continue1560

pred.store.continue1560:                          ; preds = %pred.store.if1559, %pred.store.continue1558
  %index.next1546 = add i64 %index1545, 4
  %vec.ind.next1549 = add <4 x i64> %vec.ind1548, <i64 4, i64 4, i64 4, i64 4>
  %249 = icmp eq i64 %index.next1546, 12
  br i1 %249, label %polly.loop_header248.preheader.1, label %vector.body1543, !llvm.loop !104

polly.loop_header223.us.1:                        ; preds = %polly.loop_header217.1, %polly.merge.us.1
  %polly.indvar226.us.1 = phi i64 [ %polly.indvar_next227.us.1, %polly.merge.us.1 ], [ 0, %polly.loop_header217.1 ]
  %250 = add nuw nsw i64 %polly.indvar226.us.1, 50
  %polly.access.mul.Packed_MemRef_call1.us.1 = mul nuw nsw i64 %polly.indvar226.us.1, 80
  br label %polly.loop_header230.us.1

polly.loop_header230.us.1:                        ; preds = %polly.loop_header230.us.1, %polly.loop_header223.us.1
  %polly.indvar234.us.1 = phi i64 [ %polly.indvar_next235.us.1, %polly.loop_header230.us.1 ], [ 0, %polly.loop_header223.us.1 ]
  %251 = add nuw nsw i64 %polly.indvar234.us.1, %217
  %polly.access.mul.call1238.us.1 = mul nuw nsw i64 %251, 60
  %polly.access.add.call1239.us.1 = add nuw nsw i64 %250, %polly.access.mul.call1238.us.1
  %polly.access.call1240.us.1 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1239.us.1
  %polly.access.call1240.load.us.1 = load double, double* %polly.access.call1240.us.1, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar234.us.1, %polly.access.mul.Packed_MemRef_call1.us.1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1240.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next235.us.1 = add nuw nsw i64 %polly.indvar234.us.1, 1
  %exitcond985.1.not = icmp eq i64 %polly.indvar234.us.1, %smin987.1
  br i1 %exitcond985.1.not, label %polly.cond.loopexit.us.1, label %polly.loop_header230.us.1

polly.cond.loopexit.us.1:                         ; preds = %polly.loop_header230.us.1
  br i1 %.not.1, label %polly.merge.us.1, label %polly.then.us.1

polly.then.us.1:                                  ; preds = %polly.cond.loopexit.us.1
  %polly.access.add.call1243.us.1 = add nuw nsw i64 %226, %polly.indvar226.us.1
  %polly.access.call1244.us.1 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.us.1
  %polly.access.call1244.load.us.1 = load double, double* %polly.access.call1244.us.1, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us.1, %224
  %polly.access.Packed_MemRef_call1247.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us.1
  store double %polly.access.call1244.load.us.1, double* %polly.access.Packed_MemRef_call1247.us.1, align 8
  br label %polly.merge.us.1

polly.merge.us.1:                                 ; preds = %polly.then.us.1, %polly.cond.loopexit.us.1
  %polly.indvar_next227.us.1 = add nuw nsw i64 %polly.indvar226.us.1, 1
  %exitcond986.1.not = icmp eq i64 %polly.indvar_next227.us.1, 10
  br i1 %exitcond986.1.not, label %polly.loop_header248.preheader.1, label %polly.loop_header223.us.1

polly.loop_header248.preheader.1:                 ; preds = %pred.store.continue1560, %polly.merge.us.1
  %252 = mul i64 %225, 480
  %253 = mul i64 %225, 640
  br i1 %polly.loop_guard233.11126, label %polly.loop_header248.us.1, label %polly.loop_exit250.1

polly.loop_header248.us.1:                        ; preds = %polly.loop_header248.preheader.1, %polly.loop_exit257.loopexit.us.1
  %polly.indvar251.us.1 = phi i64 [ %polly.indvar_next252.us.1, %polly.loop_exit257.loopexit.us.1 ], [ 0, %polly.loop_header248.preheader.1 ]
  %polly.access.mul.Packed_MemRef_call1262.us.1 = mul nuw nsw i64 %polly.indvar251.us.1, 80
  %254 = shl i64 %polly.indvar251.us.1, 3
  %255 = add i64 %254, 400
  %256 = add i64 %255, %252
  %scevgep266.us.1 = getelementptr i8, i8* %call2, i64 %256
  %scevgep266267.us.1 = bitcast i8* %scevgep266.us.1 to double*
  %_p_scalar_268.us.1 = load double, double* %scevgep266267.us.1, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1273.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1262.us.1, %224
  %polly.access.Packed_MemRef_call1274.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1273.us.1
  %_p_scalar_275.us.1 = load double, double* %polly.access.Packed_MemRef_call1274.us.1, align 8
  br label %polly.loop_header255.us.1

polly.loop_header255.us.1:                        ; preds = %polly.loop_header255.us.1, %polly.loop_header248.us.1
  %polly.indvar259.us.1 = phi i64 [ %polly.indvar_next260.us.1, %polly.loop_header255.us.1 ], [ 0, %polly.loop_header248.us.1 ]
  %257 = add nuw nsw i64 %polly.indvar259.us.1, %217
  %polly.access.add.Packed_MemRef_call1263.us.1 = add nuw nsw i64 %polly.indvar259.us.1, %polly.access.mul.Packed_MemRef_call1262.us.1
  %polly.access.Packed_MemRef_call1264.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.1
  %_p_scalar_265.us.1 = load double, double* %polly.access.Packed_MemRef_call1264.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_268.us.1, %_p_scalar_265.us.1
  %258 = mul nuw nsw i64 %257, 480
  %259 = add nuw nsw i64 %258, %255
  %scevgep269.us.1 = getelementptr i8, i8* %call2, i64 %259
  %scevgep269270.us.1 = bitcast i8* %scevgep269.us.1 to double*
  %_p_scalar_271.us.1 = load double, double* %scevgep269270.us.1, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_275.us.1, %_p_scalar_271.us.1
  %260 = shl i64 %257, 3
  %261 = add i64 %260, %253
  %scevgep276.us.1 = getelementptr i8, i8* %call, i64 %261
  %scevgep276277.us.1 = bitcast i8* %scevgep276.us.1 to double*
  %_p_scalar_278.us.1 = load double, double* %scevgep276277.us.1, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_278.us.1
  store double %p_add42.i118.us.1, double* %scevgep276277.us.1, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next260.us.1 = add nuw nsw i64 %polly.indvar259.us.1, 1
  %exitcond988.1.not = icmp eq i64 %polly.indvar259.us.1, %smin987.1
  br i1 %exitcond988.1.not, label %polly.loop_exit257.loopexit.us.1, label %polly.loop_header255.us.1

polly.loop_exit257.loopexit.us.1:                 ; preds = %polly.loop_header255.us.1
  %polly.indvar_next252.us.1 = add nuw nsw i64 %polly.indvar251.us.1, 1
  %exitcond989.1.not = icmp eq i64 %polly.indvar_next252.us.1, 10
  br i1 %exitcond989.1.not, label %polly.loop_exit250.1, label %polly.loop_header248.us.1

polly.loop_exit250.1:                             ; preds = %polly.loop_exit257.loopexit.us.1, %polly.loop_header217.split.1, %polly.loop_header248.preheader.1
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %polly.loop_cond222.1 = icmp ult i64 %polly.indvar220.1, 7
  %indvars.iv.next984.1 = add i64 %indvars.iv983.1, 1
  br i1 %polly.loop_cond222.1, label %polly.loop_header217.1, label %polly.loop_exit219.1

polly.loop_exit219.1:                             ; preds = %polly.loop_exit250.1, %polly.loop_header211.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %indvars.iv.next978.1 = add nsw i64 %indvars.iv977.1, 20
  %indvars.iv.next982.1 = add nsw i64 %indvars.iv981.1, -20
  %exitcond992.1.not = icmp eq i64 %polly.indvar214.1, %97
  br i1 %exitcond992.1.not, label %polly.loop_exit213.1, label %polly.loop_header211.1

polly.loop_exit213.1:                             ; preds = %polly.loop_exit219.1
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -8
  %indvars.iv.next980 = add nuw nsw i64 %indvars.iv979, 8
  %indvars.iv.next991 = add nuw nsw i64 %indvars.iv990, 2
  %exitcond993.not = icmp eq i64 %polly.indvar_next203, 10
  br i1 %exitcond993.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header396.1:                           ; preds = %polly.loop_exit405, %polly.loop_exit405.1
  %indvars.iv1004.1 = phi i64 [ %indvars.iv.next1005.1, %polly.loop_exit405.1 ], [ %indvars.iv1002, %polly.loop_exit405 ]
  %indvars.iv999.1 = phi i64 [ %indvars.iv.next1000.1, %polly.loop_exit405.1 ], [ %indvars.iv997, %polly.loop_exit405 ]
  %polly.indvar399.1 = phi i64 [ %polly.indvar_next400.1, %polly.loop_exit405.1 ], [ 0, %polly.loop_exit405 ]
  %262 = mul nuw nsw i64 %polly.indvar399.1, 20
  %263 = add nsw i64 %262, %129
  %264 = icmp sgt i64 %263, 0
  %265 = select i1 %264, i64 %263, i64 0
  %polly.loop_guard406.1 = icmp slt i64 %265, 8
  br i1 %polly.loop_guard406.1, label %polly.loop_header403.preheader.1, label %polly.loop_exit405.1

polly.loop_header403.preheader.1:                 ; preds = %polly.loop_header396.1
  %smax1001.1 = call i64 @llvm.smax.i64(i64 %indvars.iv999.1, i64 0)
  %266 = add i64 %smax1001.1, %indvars.iv1004.1
  %267 = sub nsw i64 %130, %262
  %268 = add nuw nsw i64 %262, 20
  br label %polly.loop_header403.1

polly.loop_header403.1:                           ; preds = %polly.loop_exit441.1, %polly.loop_header403.preheader.1
  %indvars.iv1006.1 = phi i64 [ %266, %polly.loop_header403.preheader.1 ], [ %indvars.iv.next1007.1, %polly.loop_exit441.1 ]
  %polly.indvar407.1 = phi i64 [ %265, %polly.loop_header403.preheader.1 ], [ %polly.indvar_next408.1, %polly.loop_exit441.1 ]
  %smin1011.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1006.1, i64 19)
  %269 = add nsw i64 %polly.indvar407.1, %267
  %polly.loop_guard420.11128 = icmp sgt i64 %269, -1
  %270 = add nuw nsw i64 %polly.indvar407.1, %130
  %.not867.1 = icmp ult i64 %270, %268
  %polly.access.mul.call1433.1 = mul nsw i64 %270, 60
  %271 = add nuw i64 %polly.access.mul.call1433.1, 50
  br i1 %polly.loop_guard420.11128, label %polly.loop_header410.us.1, label %polly.loop_header403.split.1

polly.loop_header403.split.1:                     ; preds = %polly.loop_header403.1
  br i1 %.not867.1, label %polly.loop_exit441.1, label %vector.ph1498

vector.ph1498:                                    ; preds = %polly.loop_header403.split.1
  %broadcast.splatinsert1505 = insertelement <4 x i64> poison, i64 %269, i32 0
  %broadcast.splat1506 = shufflevector <4 x i64> %broadcast.splatinsert1505, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1497

vector.body1497:                                  ; preds = %pred.store.continue1514, %vector.ph1498
  %index1499 = phi i64 [ 0, %vector.ph1498 ], [ %index.next1500, %pred.store.continue1514 ]
  %vec.ind1502 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1498 ], [ %vec.ind.next1503, %pred.store.continue1514 ]
  %272 = icmp ult <4 x i64> %vec.ind1502, <i64 10, i64 10, i64 10, i64 10>
  %273 = add nuw nsw i64 %271, %index1499
  %274 = getelementptr double, double* %polly.access.cast.call1665, i64 %273
  %275 = bitcast double* %274 to <4 x double>*
  %wide.masked.load1504 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %275, i32 8, <4 x i1> %272, <4 x double> poison), !alias.scope !77, !noalias !82
  %276 = mul nuw nsw <4 x i64> %vec.ind1502, <i64 80, i64 80, i64 80, i64 80>
  %277 = add nsw <4 x i64> %276, %broadcast.splat1506
  %278 = extractelement <4 x i1> %272, i32 0
  br i1 %278, label %pred.store.if1507, label %pred.store.continue1508

pred.store.if1507:                                ; preds = %vector.body1497
  %279 = extractelement <4 x i64> %277, i32 0
  %280 = getelementptr double, double* %Packed_MemRef_call1284, i64 %279
  %281 = extractelement <4 x double> %wide.masked.load1504, i32 0
  store double %281, double* %280, align 8
  br label %pred.store.continue1508

pred.store.continue1508:                          ; preds = %pred.store.if1507, %vector.body1497
  %282 = extractelement <4 x i1> %272, i32 1
  br i1 %282, label %pred.store.if1509, label %pred.store.continue1510

pred.store.if1509:                                ; preds = %pred.store.continue1508
  %283 = extractelement <4 x i64> %277, i32 1
  %284 = getelementptr double, double* %Packed_MemRef_call1284, i64 %283
  %285 = extractelement <4 x double> %wide.masked.load1504, i32 1
  store double %285, double* %284, align 8
  br label %pred.store.continue1510

pred.store.continue1510:                          ; preds = %pred.store.if1509, %pred.store.continue1508
  %286 = extractelement <4 x i1> %272, i32 2
  br i1 %286, label %pred.store.if1511, label %pred.store.continue1512

pred.store.if1511:                                ; preds = %pred.store.continue1510
  %287 = extractelement <4 x i64> %277, i32 2
  %288 = getelementptr double, double* %Packed_MemRef_call1284, i64 %287
  %289 = extractelement <4 x double> %wide.masked.load1504, i32 2
  store double %289, double* %288, align 8
  br label %pred.store.continue1512

pred.store.continue1512:                          ; preds = %pred.store.if1511, %pred.store.continue1510
  %290 = extractelement <4 x i1> %272, i32 3
  br i1 %290, label %pred.store.if1513, label %pred.store.continue1514

pred.store.if1513:                                ; preds = %pred.store.continue1512
  %291 = extractelement <4 x i64> %277, i32 3
  %292 = getelementptr double, double* %Packed_MemRef_call1284, i64 %291
  %293 = extractelement <4 x double> %wide.masked.load1504, i32 3
  store double %293, double* %292, align 8
  br label %pred.store.continue1514

pred.store.continue1514:                          ; preds = %pred.store.if1513, %pred.store.continue1512
  %index.next1500 = add i64 %index1499, 4
  %vec.ind.next1503 = add <4 x i64> %vec.ind1502, <i64 4, i64 4, i64 4, i64 4>
  %294 = icmp eq i64 %index.next1500, 12
  br i1 %294, label %polly.loop_header439.preheader.1, label %vector.body1497, !llvm.loop !105

polly.loop_header410.us.1:                        ; preds = %polly.loop_header403.1, %polly.merge429.us.1
  %polly.indvar413.us.1 = phi i64 [ %polly.indvar_next414.us.1, %polly.merge429.us.1 ], [ 0, %polly.loop_header403.1 ]
  %295 = add nuw nsw i64 %polly.indvar413.us.1, 50
  %polly.access.mul.Packed_MemRef_call1284.us.1 = mul nuw nsw i64 %polly.indvar413.us.1, 80
  br label %polly.loop_header417.us.1

polly.loop_header417.us.1:                        ; preds = %polly.loop_header417.us.1, %polly.loop_header410.us.1
  %polly.indvar421.us.1 = phi i64 [ %polly.indvar_next422.us.1, %polly.loop_header417.us.1 ], [ 0, %polly.loop_header410.us.1 ]
  %296 = add nuw nsw i64 %polly.indvar421.us.1, %262
  %polly.access.mul.call1425.us.1 = mul nuw nsw i64 %296, 60
  %polly.access.add.call1426.us.1 = add nuw nsw i64 %295, %polly.access.mul.call1425.us.1
  %polly.access.call1427.us.1 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1426.us.1
  %polly.access.call1427.load.us.1 = load double, double* %polly.access.call1427.us.1, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284.us.1 = add nuw nsw i64 %polly.indvar421.us.1, %polly.access.mul.Packed_MemRef_call1284.us.1
  %polly.access.Packed_MemRef_call1284.us.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284.us.1
  store double %polly.access.call1427.load.us.1, double* %polly.access.Packed_MemRef_call1284.us.1, align 8
  %polly.indvar_next422.us.1 = add nuw nsw i64 %polly.indvar421.us.1, 1
  %exitcond1009.1.not = icmp eq i64 %polly.indvar421.us.1, %smin1011.1
  br i1 %exitcond1009.1.not, label %polly.cond428.loopexit.us.1, label %polly.loop_header417.us.1

polly.cond428.loopexit.us.1:                      ; preds = %polly.loop_header417.us.1
  br i1 %.not867.1, label %polly.merge429.us.1, label %polly.then430.us.1

polly.then430.us.1:                               ; preds = %polly.cond428.loopexit.us.1
  %polly.access.add.call1434.us.1 = add nuw nsw i64 %271, %polly.indvar413.us.1
  %polly.access.call1435.us.1 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.us.1
  %polly.access.call1435.load.us.1 = load double, double* %polly.access.call1435.us.1, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1284.us.1, %269
  %polly.access.Packed_MemRef_call1284438.us.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.us.1
  store double %polly.access.call1435.load.us.1, double* %polly.access.Packed_MemRef_call1284438.us.1, align 8
  br label %polly.merge429.us.1

polly.merge429.us.1:                              ; preds = %polly.then430.us.1, %polly.cond428.loopexit.us.1
  %polly.indvar_next414.us.1 = add nuw nsw i64 %polly.indvar413.us.1, 1
  %exitcond1010.1.not = icmp eq i64 %polly.indvar_next414.us.1, 10
  br i1 %exitcond1010.1.not, label %polly.loop_header439.preheader.1, label %polly.loop_header410.us.1

polly.loop_header439.preheader.1:                 ; preds = %pred.store.continue1514, %polly.merge429.us.1
  %297 = mul i64 %270, 480
  %298 = mul i64 %270, 640
  br i1 %polly.loop_guard420.11128, label %polly.loop_header439.us.1, label %polly.loop_exit441.1

polly.loop_header439.us.1:                        ; preds = %polly.loop_header439.preheader.1, %polly.loop_exit448.loopexit.us.1
  %polly.indvar442.us.1 = phi i64 [ %polly.indvar_next443.us.1, %polly.loop_exit448.loopexit.us.1 ], [ 0, %polly.loop_header439.preheader.1 ]
  %polly.access.mul.Packed_MemRef_call1284453.us.1 = mul nuw nsw i64 %polly.indvar442.us.1, 80
  %299 = shl i64 %polly.indvar442.us.1, 3
  %300 = add i64 %299, 400
  %301 = add i64 %300, %297
  %scevgep457.us.1 = getelementptr i8, i8* %call2, i64 %301
  %scevgep457458.us.1 = bitcast i8* %scevgep457.us.1 to double*
  %_p_scalar_459.us.1 = load double, double* %scevgep457458.us.1, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1284464.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1284453.us.1, %269
  %polly.access.Packed_MemRef_call1284465.us.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284464.us.1
  %_p_scalar_466.us.1 = load double, double* %polly.access.Packed_MemRef_call1284465.us.1, align 8
  br label %polly.loop_header446.us.1

polly.loop_header446.us.1:                        ; preds = %polly.loop_header446.us.1, %polly.loop_header439.us.1
  %polly.indvar450.us.1 = phi i64 [ %polly.indvar_next451.us.1, %polly.loop_header446.us.1 ], [ 0, %polly.loop_header439.us.1 ]
  %302 = add nuw nsw i64 %polly.indvar450.us.1, %262
  %polly.access.add.Packed_MemRef_call1284454.us.1 = add nuw nsw i64 %polly.indvar450.us.1, %polly.access.mul.Packed_MemRef_call1284453.us.1
  %polly.access.Packed_MemRef_call1284455.us.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284454.us.1
  %_p_scalar_456.us.1 = load double, double* %polly.access.Packed_MemRef_call1284455.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_459.us.1, %_p_scalar_456.us.1
  %303 = mul nuw nsw i64 %302, 480
  %304 = add nuw nsw i64 %303, %300
  %scevgep460.us.1 = getelementptr i8, i8* %call2, i64 %304
  %scevgep460461.us.1 = bitcast i8* %scevgep460.us.1 to double*
  %_p_scalar_462.us.1 = load double, double* %scevgep460461.us.1, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_466.us.1, %_p_scalar_462.us.1
  %305 = shl i64 %302, 3
  %306 = add i64 %305, %298
  %scevgep467.us.1 = getelementptr i8, i8* %call, i64 %306
  %scevgep467468.us.1 = bitcast i8* %scevgep467.us.1 to double*
  %_p_scalar_469.us.1 = load double, double* %scevgep467468.us.1, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_469.us.1
  store double %p_add42.i79.us.1, double* %scevgep467468.us.1, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next451.us.1 = add nuw nsw i64 %polly.indvar450.us.1, 1
  %exitcond1012.1.not = icmp eq i64 %polly.indvar450.us.1, %smin1011.1
  br i1 %exitcond1012.1.not, label %polly.loop_exit448.loopexit.us.1, label %polly.loop_header446.us.1

polly.loop_exit448.loopexit.us.1:                 ; preds = %polly.loop_header446.us.1
  %polly.indvar_next443.us.1 = add nuw nsw i64 %polly.indvar442.us.1, 1
  %exitcond1013.1.not = icmp eq i64 %polly.indvar_next443.us.1, 10
  br i1 %exitcond1013.1.not, label %polly.loop_exit441.1, label %polly.loop_header439.us.1

polly.loop_exit441.1:                             ; preds = %polly.loop_exit448.loopexit.us.1, %polly.loop_header403.split.1, %polly.loop_header439.preheader.1
  %polly.indvar_next408.1 = add nuw nsw i64 %polly.indvar407.1, 1
  %polly.loop_cond409.1 = icmp ult i64 %polly.indvar407.1, 7
  %indvars.iv.next1007.1 = add i64 %indvars.iv1006.1, 1
  br i1 %polly.loop_cond409.1, label %polly.loop_header403.1, label %polly.loop_exit405.1

polly.loop_exit405.1:                             ; preds = %polly.loop_exit441.1, %polly.loop_header396.1
  %polly.indvar_next400.1 = add nuw nsw i64 %polly.indvar399.1, 1
  %indvars.iv.next1000.1 = add nsw i64 %indvars.iv999.1, 20
  %indvars.iv.next1005.1 = add nsw i64 %indvars.iv1004.1, -20
  %exitcond1016.1.not = icmp eq i64 %polly.indvar399.1, %128
  br i1 %exitcond1016.1.not, label %polly.loop_exit398.1, label %polly.loop_header396.1

polly.loop_exit398.1:                             ; preds = %polly.loop_exit405.1
  %polly.indvar_next387 = add nuw nsw i64 %polly.indvar386, 1
  %indvars.iv.next998 = add nsw i64 %indvars.iv997, -8
  %indvars.iv.next1003 = add nuw nsw i64 %indvars.iv1002, 8
  %indvars.iv.next1015 = add nuw nsw i64 %indvars.iv1014, 2
  %exitcond1017.not = icmp eq i64 %polly.indvar_next387, 10
  br i1 %exitcond1017.not, label %polly.exiting282, label %polly.loop_header383

polly.loop_header587.1:                           ; preds = %polly.loop_exit596, %polly.loop_exit596.1
  %indvars.iv1028.1 = phi i64 [ %indvars.iv.next1029.1, %polly.loop_exit596.1 ], [ %indvars.iv1026, %polly.loop_exit596 ]
  %indvars.iv1023.1 = phi i64 [ %indvars.iv.next1024.1, %polly.loop_exit596.1 ], [ %indvars.iv1021, %polly.loop_exit596 ]
  %polly.indvar590.1 = phi i64 [ %polly.indvar_next591.1, %polly.loop_exit596.1 ], [ 0, %polly.loop_exit596 ]
  %307 = mul nuw nsw i64 %polly.indvar590.1, 20
  %308 = add nsw i64 %307, %160
  %309 = icmp sgt i64 %308, 0
  %310 = select i1 %309, i64 %308, i64 0
  %polly.loop_guard597.1 = icmp slt i64 %310, 8
  br i1 %polly.loop_guard597.1, label %polly.loop_header594.preheader.1, label %polly.loop_exit596.1

polly.loop_header594.preheader.1:                 ; preds = %polly.loop_header587.1
  %smax1025.1 = call i64 @llvm.smax.i64(i64 %indvars.iv1023.1, i64 0)
  %311 = add i64 %smax1025.1, %indvars.iv1028.1
  %312 = sub nsw i64 %161, %307
  %313 = add nuw nsw i64 %307, 20
  br label %polly.loop_header594.1

polly.loop_header594.1:                           ; preds = %polly.loop_exit632.1, %polly.loop_header594.preheader.1
  %indvars.iv1030.1 = phi i64 [ %311, %polly.loop_header594.preheader.1 ], [ %indvars.iv.next1031.1, %polly.loop_exit632.1 ]
  %polly.indvar598.1 = phi i64 [ %310, %polly.loop_header594.preheader.1 ], [ %polly.indvar_next599.1, %polly.loop_exit632.1 ]
  %smin1035.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1030.1, i64 19)
  %314 = add nsw i64 %polly.indvar598.1, %312
  %polly.loop_guard611.11130 = icmp sgt i64 %314, -1
  %315 = add nuw nsw i64 %polly.indvar598.1, %161
  %.not868.1 = icmp ult i64 %315, %313
  %polly.access.mul.call1624.1 = mul nsw i64 %315, 60
  %316 = add nuw i64 %polly.access.mul.call1624.1, 50
  br i1 %polly.loop_guard611.11130, label %polly.loop_header601.us.1, label %polly.loop_header594.split.1

polly.loop_header594.split.1:                     ; preds = %polly.loop_header594.1
  br i1 %.not868.1, label %polly.loop_exit632.1, label %vector.ph1455

vector.ph1455:                                    ; preds = %polly.loop_header594.split.1
  %broadcast.splatinsert1461 = insertelement <4 x i64> poison, i64 %314, i32 0
  %broadcast.splat1462 = shufflevector <4 x i64> %broadcast.splatinsert1461, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1454

vector.body1454:                                  ; preds = %pred.store.continue1468, %vector.ph1455
  %index1456 = phi i64 [ 0, %vector.ph1455 ], [ %index.next1457, %pred.store.continue1468 ]
  %vec.ind1459 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1455 ], [ %vec.ind.next1460, %pred.store.continue1468 ]
  %317 = icmp ult <4 x i64> %vec.ind1459, <i64 10, i64 10, i64 10, i64 10>
  %318 = add nuw nsw i64 %316, %index1456
  %319 = getelementptr double, double* %polly.access.cast.call1665, i64 %318
  %320 = bitcast double* %319 to <4 x double>*
  %wide.masked.load = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %320, i32 8, <4 x i1> %317, <4 x double> poison), !alias.scope !87, !noalias !92
  %321 = mul nuw nsw <4 x i64> %vec.ind1459, <i64 80, i64 80, i64 80, i64 80>
  %322 = add nsw <4 x i64> %321, %broadcast.splat1462
  %323 = extractelement <4 x i1> %317, i32 0
  br i1 %323, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body1454
  %324 = extractelement <4 x i64> %322, i32 0
  %325 = getelementptr double, double* %Packed_MemRef_call1475, i64 %324
  %326 = extractelement <4 x double> %wide.masked.load, i32 0
  store double %326, double* %325, align 8
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body1454
  %327 = extractelement <4 x i1> %317, i32 1
  br i1 %327, label %pred.store.if1463, label %pred.store.continue1464

pred.store.if1463:                                ; preds = %pred.store.continue
  %328 = extractelement <4 x i64> %322, i32 1
  %329 = getelementptr double, double* %Packed_MemRef_call1475, i64 %328
  %330 = extractelement <4 x double> %wide.masked.load, i32 1
  store double %330, double* %329, align 8
  br label %pred.store.continue1464

pred.store.continue1464:                          ; preds = %pred.store.if1463, %pred.store.continue
  %331 = extractelement <4 x i1> %317, i32 2
  br i1 %331, label %pred.store.if1465, label %pred.store.continue1466

pred.store.if1465:                                ; preds = %pred.store.continue1464
  %332 = extractelement <4 x i64> %322, i32 2
  %333 = getelementptr double, double* %Packed_MemRef_call1475, i64 %332
  %334 = extractelement <4 x double> %wide.masked.load, i32 2
  store double %334, double* %333, align 8
  br label %pred.store.continue1466

pred.store.continue1466:                          ; preds = %pred.store.if1465, %pred.store.continue1464
  %335 = extractelement <4 x i1> %317, i32 3
  br i1 %335, label %pred.store.if1467, label %pred.store.continue1468

pred.store.if1467:                                ; preds = %pred.store.continue1466
  %336 = extractelement <4 x i64> %322, i32 3
  %337 = getelementptr double, double* %Packed_MemRef_call1475, i64 %336
  %338 = extractelement <4 x double> %wide.masked.load, i32 3
  store double %338, double* %337, align 8
  br label %pred.store.continue1468

pred.store.continue1468:                          ; preds = %pred.store.if1467, %pred.store.continue1466
  %index.next1457 = add i64 %index1456, 4
  %vec.ind.next1460 = add <4 x i64> %vec.ind1459, <i64 4, i64 4, i64 4, i64 4>
  %339 = icmp eq i64 %index.next1457, 12
  br i1 %339, label %polly.loop_header630.preheader.1, label %vector.body1454, !llvm.loop !106

polly.loop_header601.us.1:                        ; preds = %polly.loop_header594.1, %polly.merge620.us.1
  %polly.indvar604.us.1 = phi i64 [ %polly.indvar_next605.us.1, %polly.merge620.us.1 ], [ 0, %polly.loop_header594.1 ]
  %340 = add nuw nsw i64 %polly.indvar604.us.1, 50
  %polly.access.mul.Packed_MemRef_call1475.us.1 = mul nuw nsw i64 %polly.indvar604.us.1, 80
  br label %polly.loop_header608.us.1

polly.loop_header608.us.1:                        ; preds = %polly.loop_header608.us.1, %polly.loop_header601.us.1
  %polly.indvar612.us.1 = phi i64 [ %polly.indvar_next613.us.1, %polly.loop_header608.us.1 ], [ 0, %polly.loop_header601.us.1 ]
  %341 = add nuw nsw i64 %polly.indvar612.us.1, %307
  %polly.access.mul.call1616.us.1 = mul nuw nsw i64 %341, 60
  %polly.access.add.call1617.us.1 = add nuw nsw i64 %340, %polly.access.mul.call1616.us.1
  %polly.access.call1618.us.1 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1617.us.1
  %polly.access.call1618.load.us.1 = load double, double* %polly.access.call1618.us.1, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475.us.1 = add nuw nsw i64 %polly.indvar612.us.1, %polly.access.mul.Packed_MemRef_call1475.us.1
  %polly.access.Packed_MemRef_call1475.us.1 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475.us.1
  store double %polly.access.call1618.load.us.1, double* %polly.access.Packed_MemRef_call1475.us.1, align 8
  %polly.indvar_next613.us.1 = add nuw nsw i64 %polly.indvar612.us.1, 1
  %exitcond1033.1.not = icmp eq i64 %polly.indvar612.us.1, %smin1035.1
  br i1 %exitcond1033.1.not, label %polly.cond619.loopexit.us.1, label %polly.loop_header608.us.1

polly.cond619.loopexit.us.1:                      ; preds = %polly.loop_header608.us.1
  br i1 %.not868.1, label %polly.merge620.us.1, label %polly.then621.us.1

polly.then621.us.1:                               ; preds = %polly.cond619.loopexit.us.1
  %polly.access.add.call1625.us.1 = add nuw nsw i64 %316, %polly.indvar604.us.1
  %polly.access.call1626.us.1 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.us.1
  %polly.access.call1626.load.us.1 = load double, double* %polly.access.call1626.us.1, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1475.us.1, %314
  %polly.access.Packed_MemRef_call1475629.us.1 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.us.1
  store double %polly.access.call1626.load.us.1, double* %polly.access.Packed_MemRef_call1475629.us.1, align 8
  br label %polly.merge620.us.1

polly.merge620.us.1:                              ; preds = %polly.then621.us.1, %polly.cond619.loopexit.us.1
  %polly.indvar_next605.us.1 = add nuw nsw i64 %polly.indvar604.us.1, 1
  %exitcond1034.1.not = icmp eq i64 %polly.indvar_next605.us.1, 10
  br i1 %exitcond1034.1.not, label %polly.loop_header630.preheader.1, label %polly.loop_header601.us.1

polly.loop_header630.preheader.1:                 ; preds = %pred.store.continue1468, %polly.merge620.us.1
  %342 = mul i64 %315, 480
  %343 = mul i64 %315, 640
  br i1 %polly.loop_guard611.11130, label %polly.loop_header630.us.1, label %polly.loop_exit632.1

polly.loop_header630.us.1:                        ; preds = %polly.loop_header630.preheader.1, %polly.loop_exit639.loopexit.us.1
  %polly.indvar633.us.1 = phi i64 [ %polly.indvar_next634.us.1, %polly.loop_exit639.loopexit.us.1 ], [ 0, %polly.loop_header630.preheader.1 ]
  %polly.access.mul.Packed_MemRef_call1475644.us.1 = mul nuw nsw i64 %polly.indvar633.us.1, 80
  %344 = shl i64 %polly.indvar633.us.1, 3
  %345 = add i64 %344, 400
  %346 = add i64 %345, %342
  %scevgep648.us.1 = getelementptr i8, i8* %call2, i64 %346
  %scevgep648649.us.1 = bitcast i8* %scevgep648.us.1 to double*
  %_p_scalar_650.us.1 = load double, double* %scevgep648649.us.1, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1475655.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1475644.us.1, %314
  %polly.access.Packed_MemRef_call1475656.us.1 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475655.us.1
  %_p_scalar_657.us.1 = load double, double* %polly.access.Packed_MemRef_call1475656.us.1, align 8
  br label %polly.loop_header637.us.1

polly.loop_header637.us.1:                        ; preds = %polly.loop_header637.us.1, %polly.loop_header630.us.1
  %polly.indvar641.us.1 = phi i64 [ %polly.indvar_next642.us.1, %polly.loop_header637.us.1 ], [ 0, %polly.loop_header630.us.1 ]
  %347 = add nuw nsw i64 %polly.indvar641.us.1, %307
  %polly.access.add.Packed_MemRef_call1475645.us.1 = add nuw nsw i64 %polly.indvar641.us.1, %polly.access.mul.Packed_MemRef_call1475644.us.1
  %polly.access.Packed_MemRef_call1475646.us.1 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475645.us.1
  %_p_scalar_647.us.1 = load double, double* %polly.access.Packed_MemRef_call1475646.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_650.us.1, %_p_scalar_647.us.1
  %348 = mul nuw nsw i64 %347, 480
  %349 = add nuw nsw i64 %348, %345
  %scevgep651.us.1 = getelementptr i8, i8* %call2, i64 %349
  %scevgep651652.us.1 = bitcast i8* %scevgep651.us.1 to double*
  %_p_scalar_653.us.1 = load double, double* %scevgep651652.us.1, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_657.us.1, %_p_scalar_653.us.1
  %350 = shl i64 %347, 3
  %351 = add i64 %350, %343
  %scevgep658.us.1 = getelementptr i8, i8* %call, i64 %351
  %scevgep658659.us.1 = bitcast i8* %scevgep658.us.1 to double*
  %_p_scalar_660.us.1 = load double, double* %scevgep658659.us.1, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_660.us.1
  store double %p_add42.i.us.1, double* %scevgep658659.us.1, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next642.us.1 = add nuw nsw i64 %polly.indvar641.us.1, 1
  %exitcond1036.1.not = icmp eq i64 %polly.indvar641.us.1, %smin1035.1
  br i1 %exitcond1036.1.not, label %polly.loop_exit639.loopexit.us.1, label %polly.loop_header637.us.1

polly.loop_exit639.loopexit.us.1:                 ; preds = %polly.loop_header637.us.1
  %polly.indvar_next634.us.1 = add nuw nsw i64 %polly.indvar633.us.1, 1
  %exitcond1037.1.not = icmp eq i64 %polly.indvar_next634.us.1, 10
  br i1 %exitcond1037.1.not, label %polly.loop_exit632.1, label %polly.loop_header630.us.1

polly.loop_exit632.1:                             ; preds = %polly.loop_exit639.loopexit.us.1, %polly.loop_header594.split.1, %polly.loop_header630.preheader.1
  %polly.indvar_next599.1 = add nuw nsw i64 %polly.indvar598.1, 1
  %polly.loop_cond600.1 = icmp ult i64 %polly.indvar598.1, 7
  %indvars.iv.next1031.1 = add i64 %indvars.iv1030.1, 1
  br i1 %polly.loop_cond600.1, label %polly.loop_header594.1, label %polly.loop_exit596.1

polly.loop_exit596.1:                             ; preds = %polly.loop_exit632.1, %polly.loop_header587.1
  %polly.indvar_next591.1 = add nuw nsw i64 %polly.indvar590.1, 1
  %indvars.iv.next1024.1 = add nsw i64 %indvars.iv1023.1, 20
  %indvars.iv.next1029.1 = add nsw i64 %indvars.iv1028.1, -20
  %exitcond1040.1.not = icmp eq i64 %polly.indvar590.1, %159
  br i1 %exitcond1040.1.not, label %polly.loop_exit589.1, label %polly.loop_header587.1

polly.loop_exit589.1:                             ; preds = %polly.loop_exit596.1
  %polly.indvar_next578 = add nuw nsw i64 %polly.indvar577, 1
  %indvars.iv.next1022 = add nsw i64 %indvars.iv1021, -8
  %indvars.iv.next1027 = add nuw nsw i64 %indvars.iv1026, 8
  %indvars.iv.next1039 = add nuw nsw i64 %indvars.iv1038, 2
  %exitcond1041.not = icmp eq i64 %polly.indvar_next578, 10
  br i1 %exitcond1041.not, label %polly.exiting473, label %polly.loop_header574

polly.loop_header852.1:                           ; preds = %polly.loop_exit860, %polly.loop_exit860.1
  %polly.indvar855.1 = phi i64 [ %polly.indvar_next856.1, %polly.loop_exit860.1 ], [ 0, %polly.loop_exit860 ]
  %352 = mul nuw nsw i64 %polly.indvar855.1, 480
  %353 = trunc i64 %polly.indvar855.1 to i32
  %broadcast.splatinsert1378 = insertelement <4 x i32> poison, i32 %353, i32 0
  %broadcast.splat1379 = shufflevector <4 x i32> %broadcast.splatinsert1378, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1370

vector.body1370:                                  ; preds = %vector.body1370, %polly.loop_header852.1
  %index1372 = phi i64 [ 0, %polly.loop_header852.1 ], [ %index.next1373, %vector.body1370 ]
  %vec.ind1376 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header852.1 ], [ %vec.ind.next1377, %vector.body1370 ]
  %354 = add nuw nsw <4 x i64> %vec.ind1376, <i64 32, i64 32, i64 32, i64 32>
  %355 = trunc <4 x i64> %354 to <4 x i32>
  %356 = mul <4 x i32> %broadcast.splat1379, %355
  %357 = add <4 x i32> %356, <i32 1, i32 1, i32 1, i32 1>
  %358 = urem <4 x i32> %357, <i32 80, i32 80, i32 80, i32 80>
  %359 = sitofp <4 x i32> %358 to <4 x double>
  %360 = fmul fast <4 x double> %359, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %361 = extractelement <4 x i64> %354, i32 0
  %362 = shl i64 %361, 3
  %363 = add i64 %362, %352
  %364 = getelementptr i8, i8* %call1, i64 %363
  %365 = bitcast i8* %364 to <4 x double>*
  store <4 x double> %360, <4 x double>* %365, align 8, !alias.scope !97, !noalias !102
  %index.next1373 = add i64 %index1372, 4
  %vec.ind.next1377 = add <4 x i64> %vec.ind1376, <i64 4, i64 4, i64 4, i64 4>
  %366 = icmp eq i64 %index.next1373, 28
  br i1 %366, label %polly.loop_exit860.1, label %vector.body1370, !llvm.loop !107

polly.loop_exit860.1:                             ; preds = %vector.body1370
  %polly.indvar_next856.1 = add nuw nsw i64 %polly.indvar855.1, 1
  %exitcond1048.1.not = icmp eq i64 %polly.indvar_next856.1, 32
  br i1 %exitcond1048.1.not, label %polly.loop_header852.11071, label %polly.loop_header852.1

polly.loop_header852.11071:                       ; preds = %polly.loop_exit860.1, %polly.loop_exit860.11082
  %polly.indvar855.11070 = phi i64 [ %polly.indvar_next856.11080, %polly.loop_exit860.11082 ], [ 0, %polly.loop_exit860.1 ]
  %367 = add nuw nsw i64 %polly.indvar855.11070, 32
  %368 = mul nuw nsw i64 %367, 480
  %369 = trunc i64 %367 to i32
  %broadcast.splatinsert1392 = insertelement <4 x i32> poison, i32 %369, i32 0
  %broadcast.splat1393 = shufflevector <4 x i32> %broadcast.splatinsert1392, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1382

vector.body1382:                                  ; preds = %vector.body1382, %polly.loop_header852.11071
  %index1384 = phi i64 [ 0, %polly.loop_header852.11071 ], [ %index.next1385, %vector.body1382 ]
  %vec.ind1390 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header852.11071 ], [ %vec.ind.next1391, %vector.body1382 ]
  %370 = mul <4 x i32> %vec.ind1390, %broadcast.splat1393
  %371 = add <4 x i32> %370, <i32 1, i32 1, i32 1, i32 1>
  %372 = urem <4 x i32> %371, <i32 80, i32 80, i32 80, i32 80>
  %373 = sitofp <4 x i32> %372 to <4 x double>
  %374 = fmul fast <4 x double> %373, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %375 = shl i64 %index1384, 3
  %376 = add i64 %375, %368
  %377 = getelementptr i8, i8* %call1, i64 %376
  %378 = bitcast i8* %377 to <4 x double>*
  store <4 x double> %374, <4 x double>* %378, align 8, !alias.scope !97, !noalias !102
  %index.next1385 = add i64 %index1384, 4
  %vec.ind.next1391 = add <4 x i32> %vec.ind1390, <i32 4, i32 4, i32 4, i32 4>
  %379 = icmp eq i64 %index.next1385, 32
  br i1 %379, label %polly.loop_exit860.11082, label %vector.body1382, !llvm.loop !108

polly.loop_exit860.11082:                         ; preds = %vector.body1382
  %polly.indvar_next856.11080 = add nuw nsw i64 %polly.indvar855.11070, 1
  %exitcond1048.11081.not = icmp eq i64 %polly.indvar_next856.11080, 32
  br i1 %exitcond1048.11081.not, label %polly.loop_header852.1.1, label %polly.loop_header852.11071

polly.loop_header852.1.1:                         ; preds = %polly.loop_exit860.11082, %polly.loop_exit860.1.1
  %polly.indvar855.1.1 = phi i64 [ %polly.indvar_next856.1.1, %polly.loop_exit860.1.1 ], [ 0, %polly.loop_exit860.11082 ]
  %380 = add nuw nsw i64 %polly.indvar855.1.1, 32
  %381 = mul nuw nsw i64 %380, 480
  %382 = trunc i64 %380 to i32
  %broadcast.splatinsert1404 = insertelement <4 x i32> poison, i32 %382, i32 0
  %broadcast.splat1405 = shufflevector <4 x i32> %broadcast.splatinsert1404, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1396

vector.body1396:                                  ; preds = %vector.body1396, %polly.loop_header852.1.1
  %index1398 = phi i64 [ 0, %polly.loop_header852.1.1 ], [ %index.next1399, %vector.body1396 ]
  %vec.ind1402 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header852.1.1 ], [ %vec.ind.next1403, %vector.body1396 ]
  %383 = add nuw nsw <4 x i64> %vec.ind1402, <i64 32, i64 32, i64 32, i64 32>
  %384 = trunc <4 x i64> %383 to <4 x i32>
  %385 = mul <4 x i32> %broadcast.splat1405, %384
  %386 = add <4 x i32> %385, <i32 1, i32 1, i32 1, i32 1>
  %387 = urem <4 x i32> %386, <i32 80, i32 80, i32 80, i32 80>
  %388 = sitofp <4 x i32> %387 to <4 x double>
  %389 = fmul fast <4 x double> %388, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %390 = extractelement <4 x i64> %383, i32 0
  %391 = shl i64 %390, 3
  %392 = add i64 %391, %381
  %393 = getelementptr i8, i8* %call1, i64 %392
  %394 = bitcast i8* %393 to <4 x double>*
  store <4 x double> %389, <4 x double>* %394, align 8, !alias.scope !97, !noalias !102
  %index.next1399 = add i64 %index1398, 4
  %vec.ind.next1403 = add <4 x i64> %vec.ind1402, <i64 4, i64 4, i64 4, i64 4>
  %395 = icmp eq i64 %index.next1399, 28
  br i1 %395, label %polly.loop_exit860.1.1, label %vector.body1396, !llvm.loop !109

polly.loop_exit860.1.1:                           ; preds = %vector.body1396
  %polly.indvar_next856.1.1 = add nuw nsw i64 %polly.indvar855.1.1, 1
  %exitcond1048.1.1.not = icmp eq i64 %polly.indvar_next856.1.1, 32
  br i1 %exitcond1048.1.1.not, label %polly.loop_header852.2, label %polly.loop_header852.1.1

polly.loop_header852.2:                           ; preds = %polly.loop_exit860.1.1, %polly.loop_exit860.2
  %polly.indvar855.2 = phi i64 [ %polly.indvar_next856.2, %polly.loop_exit860.2 ], [ 0, %polly.loop_exit860.1.1 ]
  %396 = add nuw nsw i64 %polly.indvar855.2, 64
  %397 = mul nuw nsw i64 %396, 480
  %398 = trunc i64 %396 to i32
  %broadcast.splatinsert1418 = insertelement <4 x i32> poison, i32 %398, i32 0
  %broadcast.splat1419 = shufflevector <4 x i32> %broadcast.splatinsert1418, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1408

vector.body1408:                                  ; preds = %vector.body1408, %polly.loop_header852.2
  %index1410 = phi i64 [ 0, %polly.loop_header852.2 ], [ %index.next1411, %vector.body1408 ]
  %vec.ind1416 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header852.2 ], [ %vec.ind.next1417, %vector.body1408 ]
  %399 = mul <4 x i32> %vec.ind1416, %broadcast.splat1419
  %400 = add <4 x i32> %399, <i32 1, i32 1, i32 1, i32 1>
  %401 = urem <4 x i32> %400, <i32 80, i32 80, i32 80, i32 80>
  %402 = sitofp <4 x i32> %401 to <4 x double>
  %403 = fmul fast <4 x double> %402, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %404 = shl i64 %index1410, 3
  %405 = add i64 %404, %397
  %406 = getelementptr i8, i8* %call1, i64 %405
  %407 = bitcast i8* %406 to <4 x double>*
  store <4 x double> %403, <4 x double>* %407, align 8, !alias.scope !97, !noalias !102
  %index.next1411 = add i64 %index1410, 4
  %vec.ind.next1417 = add <4 x i32> %vec.ind1416, <i32 4, i32 4, i32 4, i32 4>
  %408 = icmp eq i64 %index.next1411, 32
  br i1 %408, label %polly.loop_exit860.2, label %vector.body1408, !llvm.loop !110

polly.loop_exit860.2:                             ; preds = %vector.body1408
  %polly.indvar_next856.2 = add nuw nsw i64 %polly.indvar855.2, 1
  %exitcond1048.2.not = icmp eq i64 %polly.indvar_next856.2, 16
  br i1 %exitcond1048.2.not, label %polly.loop_header852.1.2, label %polly.loop_header852.2

polly.loop_header852.1.2:                         ; preds = %polly.loop_exit860.2, %polly.loop_exit860.1.2
  %polly.indvar855.1.2 = phi i64 [ %polly.indvar_next856.1.2, %polly.loop_exit860.1.2 ], [ 0, %polly.loop_exit860.2 ]
  %409 = add nuw nsw i64 %polly.indvar855.1.2, 64
  %410 = mul nuw nsw i64 %409, 480
  %411 = trunc i64 %409 to i32
  %broadcast.splatinsert1430 = insertelement <4 x i32> poison, i32 %411, i32 0
  %broadcast.splat1431 = shufflevector <4 x i32> %broadcast.splatinsert1430, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1422

vector.body1422:                                  ; preds = %vector.body1422, %polly.loop_header852.1.2
  %index1424 = phi i64 [ 0, %polly.loop_header852.1.2 ], [ %index.next1425, %vector.body1422 ]
  %vec.ind1428 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header852.1.2 ], [ %vec.ind.next1429, %vector.body1422 ]
  %412 = add nuw nsw <4 x i64> %vec.ind1428, <i64 32, i64 32, i64 32, i64 32>
  %413 = trunc <4 x i64> %412 to <4 x i32>
  %414 = mul <4 x i32> %broadcast.splat1431, %413
  %415 = add <4 x i32> %414, <i32 1, i32 1, i32 1, i32 1>
  %416 = urem <4 x i32> %415, <i32 80, i32 80, i32 80, i32 80>
  %417 = sitofp <4 x i32> %416 to <4 x double>
  %418 = fmul fast <4 x double> %417, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %419 = extractelement <4 x i64> %412, i32 0
  %420 = shl i64 %419, 3
  %421 = add i64 %420, %410
  %422 = getelementptr i8, i8* %call1, i64 %421
  %423 = bitcast i8* %422 to <4 x double>*
  store <4 x double> %418, <4 x double>* %423, align 8, !alias.scope !97, !noalias !102
  %index.next1425 = add i64 %index1424, 4
  %vec.ind.next1429 = add <4 x i64> %vec.ind1428, <i64 4, i64 4, i64 4, i64 4>
  %424 = icmp eq i64 %index.next1425, 28
  br i1 %424, label %polly.loop_exit860.1.2, label %vector.body1422, !llvm.loop !111

polly.loop_exit860.1.2:                           ; preds = %vector.body1422
  %polly.indvar_next856.1.2 = add nuw nsw i64 %polly.indvar855.1.2, 1
  %exitcond1048.1.2.not = icmp eq i64 %polly.indvar_next856.1.2, 16
  br i1 %exitcond1048.1.2.not, label %init_array.exit, label %polly.loop_header852.1.2

polly.loop_header826.1:                           ; preds = %polly.loop_exit834, %polly.loop_exit834.1
  %polly.indvar829.1 = phi i64 [ %polly.indvar_next830.1, %polly.loop_exit834.1 ], [ 0, %polly.loop_exit834 ]
  %425 = mul nuw nsw i64 %polly.indvar829.1, 480
  %426 = trunc i64 %polly.indvar829.1 to i32
  %broadcast.splatinsert1300 = insertelement <4 x i32> poison, i32 %426, i32 0
  %broadcast.splat1301 = shufflevector <4 x i32> %broadcast.splatinsert1300, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1292

vector.body1292:                                  ; preds = %vector.body1292, %polly.loop_header826.1
  %index1294 = phi i64 [ 0, %polly.loop_header826.1 ], [ %index.next1295, %vector.body1292 ]
  %vec.ind1298 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header826.1 ], [ %vec.ind.next1299, %vector.body1292 ]
  %427 = add nuw nsw <4 x i64> %vec.ind1298, <i64 32, i64 32, i64 32, i64 32>
  %428 = trunc <4 x i64> %427 to <4 x i32>
  %429 = mul <4 x i32> %broadcast.splat1301, %428
  %430 = add <4 x i32> %429, <i32 2, i32 2, i32 2, i32 2>
  %431 = urem <4 x i32> %430, <i32 60, i32 60, i32 60, i32 60>
  %432 = sitofp <4 x i32> %431 to <4 x double>
  %433 = fmul fast <4 x double> %432, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %434 = extractelement <4 x i64> %427, i32 0
  %435 = shl i64 %434, 3
  %436 = add i64 %435, %425
  %437 = getelementptr i8, i8* %call2, i64 %436
  %438 = bitcast i8* %437 to <4 x double>*
  store <4 x double> %433, <4 x double>* %438, align 8, !alias.scope !98, !noalias !100
  %index.next1295 = add i64 %index1294, 4
  %vec.ind.next1299 = add <4 x i64> %vec.ind1298, <i64 4, i64 4, i64 4, i64 4>
  %439 = icmp eq i64 %index.next1295, 28
  br i1 %439, label %polly.loop_exit834.1, label %vector.body1292, !llvm.loop !112

polly.loop_exit834.1:                             ; preds = %vector.body1292
  %polly.indvar_next830.1 = add nuw nsw i64 %polly.indvar829.1, 1
  %exitcond1054.1.not = icmp eq i64 %polly.indvar_next830.1, 32
  br i1 %exitcond1054.1.not, label %polly.loop_header826.11085, label %polly.loop_header826.1

polly.loop_header826.11085:                       ; preds = %polly.loop_exit834.1, %polly.loop_exit834.11096
  %polly.indvar829.11084 = phi i64 [ %polly.indvar_next830.11094, %polly.loop_exit834.11096 ], [ 0, %polly.loop_exit834.1 ]
  %440 = add nuw nsw i64 %polly.indvar829.11084, 32
  %441 = mul nuw nsw i64 %440, 480
  %442 = trunc i64 %440 to i32
  %broadcast.splatinsert1314 = insertelement <4 x i32> poison, i32 %442, i32 0
  %broadcast.splat1315 = shufflevector <4 x i32> %broadcast.splatinsert1314, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1304

vector.body1304:                                  ; preds = %vector.body1304, %polly.loop_header826.11085
  %index1306 = phi i64 [ 0, %polly.loop_header826.11085 ], [ %index.next1307, %vector.body1304 ]
  %vec.ind1312 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header826.11085 ], [ %vec.ind.next1313, %vector.body1304 ]
  %443 = mul <4 x i32> %vec.ind1312, %broadcast.splat1315
  %444 = add <4 x i32> %443, <i32 2, i32 2, i32 2, i32 2>
  %445 = urem <4 x i32> %444, <i32 60, i32 60, i32 60, i32 60>
  %446 = sitofp <4 x i32> %445 to <4 x double>
  %447 = fmul fast <4 x double> %446, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %448 = shl i64 %index1306, 3
  %449 = add i64 %448, %441
  %450 = getelementptr i8, i8* %call2, i64 %449
  %451 = bitcast i8* %450 to <4 x double>*
  store <4 x double> %447, <4 x double>* %451, align 8, !alias.scope !98, !noalias !100
  %index.next1307 = add i64 %index1306, 4
  %vec.ind.next1313 = add <4 x i32> %vec.ind1312, <i32 4, i32 4, i32 4, i32 4>
  %452 = icmp eq i64 %index.next1307, 32
  br i1 %452, label %polly.loop_exit834.11096, label %vector.body1304, !llvm.loop !113

polly.loop_exit834.11096:                         ; preds = %vector.body1304
  %polly.indvar_next830.11094 = add nuw nsw i64 %polly.indvar829.11084, 1
  %exitcond1054.11095.not = icmp eq i64 %polly.indvar_next830.11094, 32
  br i1 %exitcond1054.11095.not, label %polly.loop_header826.1.1, label %polly.loop_header826.11085

polly.loop_header826.1.1:                         ; preds = %polly.loop_exit834.11096, %polly.loop_exit834.1.1
  %polly.indvar829.1.1 = phi i64 [ %polly.indvar_next830.1.1, %polly.loop_exit834.1.1 ], [ 0, %polly.loop_exit834.11096 ]
  %453 = add nuw nsw i64 %polly.indvar829.1.1, 32
  %454 = mul nuw nsw i64 %453, 480
  %455 = trunc i64 %453 to i32
  %broadcast.splatinsert1326 = insertelement <4 x i32> poison, i32 %455, i32 0
  %broadcast.splat1327 = shufflevector <4 x i32> %broadcast.splatinsert1326, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1318

vector.body1318:                                  ; preds = %vector.body1318, %polly.loop_header826.1.1
  %index1320 = phi i64 [ 0, %polly.loop_header826.1.1 ], [ %index.next1321, %vector.body1318 ]
  %vec.ind1324 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header826.1.1 ], [ %vec.ind.next1325, %vector.body1318 ]
  %456 = add nuw nsw <4 x i64> %vec.ind1324, <i64 32, i64 32, i64 32, i64 32>
  %457 = trunc <4 x i64> %456 to <4 x i32>
  %458 = mul <4 x i32> %broadcast.splat1327, %457
  %459 = add <4 x i32> %458, <i32 2, i32 2, i32 2, i32 2>
  %460 = urem <4 x i32> %459, <i32 60, i32 60, i32 60, i32 60>
  %461 = sitofp <4 x i32> %460 to <4 x double>
  %462 = fmul fast <4 x double> %461, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %463 = extractelement <4 x i64> %456, i32 0
  %464 = shl i64 %463, 3
  %465 = add i64 %464, %454
  %466 = getelementptr i8, i8* %call2, i64 %465
  %467 = bitcast i8* %466 to <4 x double>*
  store <4 x double> %462, <4 x double>* %467, align 8, !alias.scope !98, !noalias !100
  %index.next1321 = add i64 %index1320, 4
  %vec.ind.next1325 = add <4 x i64> %vec.ind1324, <i64 4, i64 4, i64 4, i64 4>
  %468 = icmp eq i64 %index.next1321, 28
  br i1 %468, label %polly.loop_exit834.1.1, label %vector.body1318, !llvm.loop !114

polly.loop_exit834.1.1:                           ; preds = %vector.body1318
  %polly.indvar_next830.1.1 = add nuw nsw i64 %polly.indvar829.1.1, 1
  %exitcond1054.1.1.not = icmp eq i64 %polly.indvar_next830.1.1, 32
  br i1 %exitcond1054.1.1.not, label %polly.loop_header826.2, label %polly.loop_header826.1.1

polly.loop_header826.2:                           ; preds = %polly.loop_exit834.1.1, %polly.loop_exit834.2
  %polly.indvar829.2 = phi i64 [ %polly.indvar_next830.2, %polly.loop_exit834.2 ], [ 0, %polly.loop_exit834.1.1 ]
  %469 = add nuw nsw i64 %polly.indvar829.2, 64
  %470 = mul nuw nsw i64 %469, 480
  %471 = trunc i64 %469 to i32
  %broadcast.splatinsert1340 = insertelement <4 x i32> poison, i32 %471, i32 0
  %broadcast.splat1341 = shufflevector <4 x i32> %broadcast.splatinsert1340, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1330

vector.body1330:                                  ; preds = %vector.body1330, %polly.loop_header826.2
  %index1332 = phi i64 [ 0, %polly.loop_header826.2 ], [ %index.next1333, %vector.body1330 ]
  %vec.ind1338 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header826.2 ], [ %vec.ind.next1339, %vector.body1330 ]
  %472 = mul <4 x i32> %vec.ind1338, %broadcast.splat1341
  %473 = add <4 x i32> %472, <i32 2, i32 2, i32 2, i32 2>
  %474 = urem <4 x i32> %473, <i32 60, i32 60, i32 60, i32 60>
  %475 = sitofp <4 x i32> %474 to <4 x double>
  %476 = fmul fast <4 x double> %475, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %477 = shl i64 %index1332, 3
  %478 = add i64 %477, %470
  %479 = getelementptr i8, i8* %call2, i64 %478
  %480 = bitcast i8* %479 to <4 x double>*
  store <4 x double> %476, <4 x double>* %480, align 8, !alias.scope !98, !noalias !100
  %index.next1333 = add i64 %index1332, 4
  %vec.ind.next1339 = add <4 x i32> %vec.ind1338, <i32 4, i32 4, i32 4, i32 4>
  %481 = icmp eq i64 %index.next1333, 32
  br i1 %481, label %polly.loop_exit834.2, label %vector.body1330, !llvm.loop !115

polly.loop_exit834.2:                             ; preds = %vector.body1330
  %polly.indvar_next830.2 = add nuw nsw i64 %polly.indvar829.2, 1
  %exitcond1054.2.not = icmp eq i64 %polly.indvar_next830.2, 16
  br i1 %exitcond1054.2.not, label %polly.loop_header826.1.2, label %polly.loop_header826.2

polly.loop_header826.1.2:                         ; preds = %polly.loop_exit834.2, %polly.loop_exit834.1.2
  %polly.indvar829.1.2 = phi i64 [ %polly.indvar_next830.1.2, %polly.loop_exit834.1.2 ], [ 0, %polly.loop_exit834.2 ]
  %482 = add nuw nsw i64 %polly.indvar829.1.2, 64
  %483 = mul nuw nsw i64 %482, 480
  %484 = trunc i64 %482 to i32
  %broadcast.splatinsert1352 = insertelement <4 x i32> poison, i32 %484, i32 0
  %broadcast.splat1353 = shufflevector <4 x i32> %broadcast.splatinsert1352, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1344

vector.body1344:                                  ; preds = %vector.body1344, %polly.loop_header826.1.2
  %index1346 = phi i64 [ 0, %polly.loop_header826.1.2 ], [ %index.next1347, %vector.body1344 ]
  %vec.ind1350 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header826.1.2 ], [ %vec.ind.next1351, %vector.body1344 ]
  %485 = add nuw nsw <4 x i64> %vec.ind1350, <i64 32, i64 32, i64 32, i64 32>
  %486 = trunc <4 x i64> %485 to <4 x i32>
  %487 = mul <4 x i32> %broadcast.splat1353, %486
  %488 = add <4 x i32> %487, <i32 2, i32 2, i32 2, i32 2>
  %489 = urem <4 x i32> %488, <i32 60, i32 60, i32 60, i32 60>
  %490 = sitofp <4 x i32> %489 to <4 x double>
  %491 = fmul fast <4 x double> %490, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %492 = extractelement <4 x i64> %485, i32 0
  %493 = shl i64 %492, 3
  %494 = add i64 %493, %483
  %495 = getelementptr i8, i8* %call2, i64 %494
  %496 = bitcast i8* %495 to <4 x double>*
  store <4 x double> %491, <4 x double>* %496, align 8, !alias.scope !98, !noalias !100
  %index.next1347 = add i64 %index1346, 4
  %vec.ind.next1351 = add <4 x i64> %vec.ind1350, <i64 4, i64 4, i64 4, i64 4>
  %497 = icmp eq i64 %index.next1347, 28
  br i1 %497, label %polly.loop_exit834.1.2, label %vector.body1344, !llvm.loop !116

polly.loop_exit834.1.2:                           ; preds = %vector.body1344
  %polly.indvar_next830.1.2 = add nuw nsw i64 %polly.indvar829.1.2, 1
  %exitcond1054.1.2.not = icmp eq i64 %polly.indvar_next830.1.2, 16
  br i1 %exitcond1054.1.2.not, label %polly.loop_header852, label %polly.loop_header826.1.2

polly.loop_header799.1:                           ; preds = %polly.loop_exit807, %polly.loop_exit807.1
  %polly.indvar802.1 = phi i64 [ %polly.indvar_next803.1, %polly.loop_exit807.1 ], [ 0, %polly.loop_exit807 ]
  %498 = mul nuw nsw i64 %polly.indvar802.1, 640
  %499 = trunc i64 %polly.indvar802.1 to i32
  %broadcast.splatinsert1186 = insertelement <4 x i32> poison, i32 %499, i32 0
  %broadcast.splat1187 = shufflevector <4 x i32> %broadcast.splatinsert1186, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1178

vector.body1178:                                  ; preds = %vector.body1178, %polly.loop_header799.1
  %index1180 = phi i64 [ 0, %polly.loop_header799.1 ], [ %index.next1181, %vector.body1178 ]
  %vec.ind1184 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header799.1 ], [ %vec.ind.next1185, %vector.body1178 ]
  %500 = add nuw nsw <4 x i64> %vec.ind1184, <i64 32, i64 32, i64 32, i64 32>
  %501 = trunc <4 x i64> %500 to <4 x i32>
  %502 = mul <4 x i32> %broadcast.splat1187, %501
  %503 = add <4 x i32> %502, <i32 3, i32 3, i32 3, i32 3>
  %504 = urem <4 x i32> %503, <i32 80, i32 80, i32 80, i32 80>
  %505 = sitofp <4 x i32> %504 to <4 x double>
  %506 = fmul fast <4 x double> %505, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %507 = extractelement <4 x i64> %500, i32 0
  %508 = shl i64 %507, 3
  %509 = add nuw nsw i64 %508, %498
  %510 = getelementptr i8, i8* %call, i64 %509
  %511 = bitcast i8* %510 to <4 x double>*
  store <4 x double> %506, <4 x double>* %511, align 8, !alias.scope !94, !noalias !96
  %index.next1181 = add i64 %index1180, 4
  %vec.ind.next1185 = add <4 x i64> %vec.ind1184, <i64 4, i64 4, i64 4, i64 4>
  %512 = icmp eq i64 %index.next1181, 32
  br i1 %512, label %polly.loop_exit807.1, label %vector.body1178, !llvm.loop !117

polly.loop_exit807.1:                             ; preds = %vector.body1178
  %polly.indvar_next803.1 = add nuw nsw i64 %polly.indvar802.1, 1
  %exitcond1063.1.not = icmp eq i64 %polly.indvar_next803.1, 32
  br i1 %exitcond1063.1.not, label %polly.loop_header799.2, label %polly.loop_header799.1

polly.loop_header799.2:                           ; preds = %polly.loop_exit807.1, %polly.loop_exit807.2
  %polly.indvar802.2 = phi i64 [ %polly.indvar_next803.2, %polly.loop_exit807.2 ], [ 0, %polly.loop_exit807.1 ]
  %513 = mul nuw nsw i64 %polly.indvar802.2, 640
  %514 = trunc i64 %polly.indvar802.2 to i32
  %broadcast.splatinsert1198 = insertelement <4 x i32> poison, i32 %514, i32 0
  %broadcast.splat1199 = shufflevector <4 x i32> %broadcast.splatinsert1198, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1190

vector.body1190:                                  ; preds = %vector.body1190, %polly.loop_header799.2
  %index1192 = phi i64 [ 0, %polly.loop_header799.2 ], [ %index.next1193, %vector.body1190 ]
  %vec.ind1196 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header799.2 ], [ %vec.ind.next1197, %vector.body1190 ]
  %515 = add nuw nsw <4 x i64> %vec.ind1196, <i64 64, i64 64, i64 64, i64 64>
  %516 = trunc <4 x i64> %515 to <4 x i32>
  %517 = mul <4 x i32> %broadcast.splat1199, %516
  %518 = add <4 x i32> %517, <i32 3, i32 3, i32 3, i32 3>
  %519 = urem <4 x i32> %518, <i32 80, i32 80, i32 80, i32 80>
  %520 = sitofp <4 x i32> %519 to <4 x double>
  %521 = fmul fast <4 x double> %520, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %522 = extractelement <4 x i64> %515, i32 0
  %523 = shl i64 %522, 3
  %524 = add nuw nsw i64 %523, %513
  %525 = getelementptr i8, i8* %call, i64 %524
  %526 = bitcast i8* %525 to <4 x double>*
  store <4 x double> %521, <4 x double>* %526, align 8, !alias.scope !94, !noalias !96
  %index.next1193 = add i64 %index1192, 4
  %vec.ind.next1197 = add <4 x i64> %vec.ind1196, <i64 4, i64 4, i64 4, i64 4>
  %527 = icmp eq i64 %index.next1193, 16
  br i1 %527, label %polly.loop_exit807.2, label %vector.body1190, !llvm.loop !118

polly.loop_exit807.2:                             ; preds = %vector.body1190
  %polly.indvar_next803.2 = add nuw nsw i64 %polly.indvar802.2, 1
  %exitcond1063.2.not = icmp eq i64 %polly.indvar_next803.2, 32
  br i1 %exitcond1063.2.not, label %polly.loop_header799.11099, label %polly.loop_header799.2

polly.loop_header799.11099:                       ; preds = %polly.loop_exit807.2, %polly.loop_exit807.11110
  %polly.indvar802.11098 = phi i64 [ %polly.indvar_next803.11108, %polly.loop_exit807.11110 ], [ 0, %polly.loop_exit807.2 ]
  %528 = add nuw nsw i64 %polly.indvar802.11098, 32
  %529 = mul nuw nsw i64 %528, 640
  %530 = trunc i64 %528 to i32
  %broadcast.splatinsert1212 = insertelement <4 x i32> poison, i32 %530, i32 0
  %broadcast.splat1213 = shufflevector <4 x i32> %broadcast.splatinsert1212, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1202

vector.body1202:                                  ; preds = %vector.body1202, %polly.loop_header799.11099
  %index1204 = phi i64 [ 0, %polly.loop_header799.11099 ], [ %index.next1205, %vector.body1202 ]
  %vec.ind1210 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header799.11099 ], [ %vec.ind.next1211, %vector.body1202 ]
  %531 = mul <4 x i32> %vec.ind1210, %broadcast.splat1213
  %532 = add <4 x i32> %531, <i32 3, i32 3, i32 3, i32 3>
  %533 = urem <4 x i32> %532, <i32 80, i32 80, i32 80, i32 80>
  %534 = sitofp <4 x i32> %533 to <4 x double>
  %535 = fmul fast <4 x double> %534, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %536 = shl i64 %index1204, 3
  %537 = add nuw nsw i64 %536, %529
  %538 = getelementptr i8, i8* %call, i64 %537
  %539 = bitcast i8* %538 to <4 x double>*
  store <4 x double> %535, <4 x double>* %539, align 8, !alias.scope !94, !noalias !96
  %index.next1205 = add i64 %index1204, 4
  %vec.ind.next1211 = add <4 x i32> %vec.ind1210, <i32 4, i32 4, i32 4, i32 4>
  %540 = icmp eq i64 %index.next1205, 32
  br i1 %540, label %polly.loop_exit807.11110, label %vector.body1202, !llvm.loop !119

polly.loop_exit807.11110:                         ; preds = %vector.body1202
  %polly.indvar_next803.11108 = add nuw nsw i64 %polly.indvar802.11098, 1
  %exitcond1063.11109.not = icmp eq i64 %polly.indvar_next803.11108, 32
  br i1 %exitcond1063.11109.not, label %polly.loop_header799.1.1, label %polly.loop_header799.11099

polly.loop_header799.1.1:                         ; preds = %polly.loop_exit807.11110, %polly.loop_exit807.1.1
  %polly.indvar802.1.1 = phi i64 [ %polly.indvar_next803.1.1, %polly.loop_exit807.1.1 ], [ 0, %polly.loop_exit807.11110 ]
  %541 = add nuw nsw i64 %polly.indvar802.1.1, 32
  %542 = mul nuw nsw i64 %541, 640
  %543 = trunc i64 %541 to i32
  %broadcast.splatinsert1224 = insertelement <4 x i32> poison, i32 %543, i32 0
  %broadcast.splat1225 = shufflevector <4 x i32> %broadcast.splatinsert1224, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1216

vector.body1216:                                  ; preds = %vector.body1216, %polly.loop_header799.1.1
  %index1218 = phi i64 [ 0, %polly.loop_header799.1.1 ], [ %index.next1219, %vector.body1216 ]
  %vec.ind1222 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header799.1.1 ], [ %vec.ind.next1223, %vector.body1216 ]
  %544 = add nuw nsw <4 x i64> %vec.ind1222, <i64 32, i64 32, i64 32, i64 32>
  %545 = trunc <4 x i64> %544 to <4 x i32>
  %546 = mul <4 x i32> %broadcast.splat1225, %545
  %547 = add <4 x i32> %546, <i32 3, i32 3, i32 3, i32 3>
  %548 = urem <4 x i32> %547, <i32 80, i32 80, i32 80, i32 80>
  %549 = sitofp <4 x i32> %548 to <4 x double>
  %550 = fmul fast <4 x double> %549, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %551 = extractelement <4 x i64> %544, i32 0
  %552 = shl i64 %551, 3
  %553 = add nuw nsw i64 %552, %542
  %554 = getelementptr i8, i8* %call, i64 %553
  %555 = bitcast i8* %554 to <4 x double>*
  store <4 x double> %550, <4 x double>* %555, align 8, !alias.scope !94, !noalias !96
  %index.next1219 = add i64 %index1218, 4
  %vec.ind.next1223 = add <4 x i64> %vec.ind1222, <i64 4, i64 4, i64 4, i64 4>
  %556 = icmp eq i64 %index.next1219, 32
  br i1 %556, label %polly.loop_exit807.1.1, label %vector.body1216, !llvm.loop !120

polly.loop_exit807.1.1:                           ; preds = %vector.body1216
  %polly.indvar_next803.1.1 = add nuw nsw i64 %polly.indvar802.1.1, 1
  %exitcond1063.1.1.not = icmp eq i64 %polly.indvar_next803.1.1, 32
  br i1 %exitcond1063.1.1.not, label %polly.loop_header799.2.1, label %polly.loop_header799.1.1

polly.loop_header799.2.1:                         ; preds = %polly.loop_exit807.1.1, %polly.loop_exit807.2.1
  %polly.indvar802.2.1 = phi i64 [ %polly.indvar_next803.2.1, %polly.loop_exit807.2.1 ], [ 0, %polly.loop_exit807.1.1 ]
  %557 = add nuw nsw i64 %polly.indvar802.2.1, 32
  %558 = mul nuw nsw i64 %557, 640
  %559 = trunc i64 %557 to i32
  %broadcast.splatinsert1236 = insertelement <4 x i32> poison, i32 %559, i32 0
  %broadcast.splat1237 = shufflevector <4 x i32> %broadcast.splatinsert1236, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1228

vector.body1228:                                  ; preds = %vector.body1228, %polly.loop_header799.2.1
  %index1230 = phi i64 [ 0, %polly.loop_header799.2.1 ], [ %index.next1231, %vector.body1228 ]
  %vec.ind1234 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header799.2.1 ], [ %vec.ind.next1235, %vector.body1228 ]
  %560 = add nuw nsw <4 x i64> %vec.ind1234, <i64 64, i64 64, i64 64, i64 64>
  %561 = trunc <4 x i64> %560 to <4 x i32>
  %562 = mul <4 x i32> %broadcast.splat1237, %561
  %563 = add <4 x i32> %562, <i32 3, i32 3, i32 3, i32 3>
  %564 = urem <4 x i32> %563, <i32 80, i32 80, i32 80, i32 80>
  %565 = sitofp <4 x i32> %564 to <4 x double>
  %566 = fmul fast <4 x double> %565, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %567 = extractelement <4 x i64> %560, i32 0
  %568 = shl i64 %567, 3
  %569 = add nuw nsw i64 %568, %558
  %570 = getelementptr i8, i8* %call, i64 %569
  %571 = bitcast i8* %570 to <4 x double>*
  store <4 x double> %566, <4 x double>* %571, align 8, !alias.scope !94, !noalias !96
  %index.next1231 = add i64 %index1230, 4
  %vec.ind.next1235 = add <4 x i64> %vec.ind1234, <i64 4, i64 4, i64 4, i64 4>
  %572 = icmp eq i64 %index.next1231, 16
  br i1 %572, label %polly.loop_exit807.2.1, label %vector.body1228, !llvm.loop !121

polly.loop_exit807.2.1:                           ; preds = %vector.body1228
  %polly.indvar_next803.2.1 = add nuw nsw i64 %polly.indvar802.2.1, 1
  %exitcond1063.2.1.not = icmp eq i64 %polly.indvar_next803.2.1, 32
  br i1 %exitcond1063.2.1.not, label %polly.loop_header799.21113, label %polly.loop_header799.2.1

polly.loop_header799.21113:                       ; preds = %polly.loop_exit807.2.1, %polly.loop_exit807.21124
  %polly.indvar802.21112 = phi i64 [ %polly.indvar_next803.21122, %polly.loop_exit807.21124 ], [ 0, %polly.loop_exit807.2.1 ]
  %573 = add nuw nsw i64 %polly.indvar802.21112, 64
  %574 = mul nuw nsw i64 %573, 640
  %575 = trunc i64 %573 to i32
  %broadcast.splatinsert1250 = insertelement <4 x i32> poison, i32 %575, i32 0
  %broadcast.splat1251 = shufflevector <4 x i32> %broadcast.splatinsert1250, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1240

vector.body1240:                                  ; preds = %vector.body1240, %polly.loop_header799.21113
  %index1242 = phi i64 [ 0, %polly.loop_header799.21113 ], [ %index.next1243, %vector.body1240 ]
  %vec.ind1248 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header799.21113 ], [ %vec.ind.next1249, %vector.body1240 ]
  %576 = mul <4 x i32> %vec.ind1248, %broadcast.splat1251
  %577 = add <4 x i32> %576, <i32 3, i32 3, i32 3, i32 3>
  %578 = urem <4 x i32> %577, <i32 80, i32 80, i32 80, i32 80>
  %579 = sitofp <4 x i32> %578 to <4 x double>
  %580 = fmul fast <4 x double> %579, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %581 = shl i64 %index1242, 3
  %582 = add nuw nsw i64 %581, %574
  %583 = getelementptr i8, i8* %call, i64 %582
  %584 = bitcast i8* %583 to <4 x double>*
  store <4 x double> %580, <4 x double>* %584, align 8, !alias.scope !94, !noalias !96
  %index.next1243 = add i64 %index1242, 4
  %vec.ind.next1249 = add <4 x i32> %vec.ind1248, <i32 4, i32 4, i32 4, i32 4>
  %585 = icmp eq i64 %index.next1243, 32
  br i1 %585, label %polly.loop_exit807.21124, label %vector.body1240, !llvm.loop !122

polly.loop_exit807.21124:                         ; preds = %vector.body1240
  %polly.indvar_next803.21122 = add nuw nsw i64 %polly.indvar802.21112, 1
  %exitcond1063.21123.not = icmp eq i64 %polly.indvar_next803.21122, 16
  br i1 %exitcond1063.21123.not, label %polly.loop_header799.1.2, label %polly.loop_header799.21113

polly.loop_header799.1.2:                         ; preds = %polly.loop_exit807.21124, %polly.loop_exit807.1.2
  %polly.indvar802.1.2 = phi i64 [ %polly.indvar_next803.1.2, %polly.loop_exit807.1.2 ], [ 0, %polly.loop_exit807.21124 ]
  %586 = add nuw nsw i64 %polly.indvar802.1.2, 64
  %587 = mul nuw nsw i64 %586, 640
  %588 = trunc i64 %586 to i32
  %broadcast.splatinsert1262 = insertelement <4 x i32> poison, i32 %588, i32 0
  %broadcast.splat1263 = shufflevector <4 x i32> %broadcast.splatinsert1262, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1254

vector.body1254:                                  ; preds = %vector.body1254, %polly.loop_header799.1.2
  %index1256 = phi i64 [ 0, %polly.loop_header799.1.2 ], [ %index.next1257, %vector.body1254 ]
  %vec.ind1260 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header799.1.2 ], [ %vec.ind.next1261, %vector.body1254 ]
  %589 = add nuw nsw <4 x i64> %vec.ind1260, <i64 32, i64 32, i64 32, i64 32>
  %590 = trunc <4 x i64> %589 to <4 x i32>
  %591 = mul <4 x i32> %broadcast.splat1263, %590
  %592 = add <4 x i32> %591, <i32 3, i32 3, i32 3, i32 3>
  %593 = urem <4 x i32> %592, <i32 80, i32 80, i32 80, i32 80>
  %594 = sitofp <4 x i32> %593 to <4 x double>
  %595 = fmul fast <4 x double> %594, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %596 = extractelement <4 x i64> %589, i32 0
  %597 = shl i64 %596, 3
  %598 = add nuw nsw i64 %597, %587
  %599 = getelementptr i8, i8* %call, i64 %598
  %600 = bitcast i8* %599 to <4 x double>*
  store <4 x double> %595, <4 x double>* %600, align 8, !alias.scope !94, !noalias !96
  %index.next1257 = add i64 %index1256, 4
  %vec.ind.next1261 = add <4 x i64> %vec.ind1260, <i64 4, i64 4, i64 4, i64 4>
  %601 = icmp eq i64 %index.next1257, 32
  br i1 %601, label %polly.loop_exit807.1.2, label %vector.body1254, !llvm.loop !123

polly.loop_exit807.1.2:                           ; preds = %vector.body1254
  %polly.indvar_next803.1.2 = add nuw nsw i64 %polly.indvar802.1.2, 1
  %exitcond1063.1.2.not = icmp eq i64 %polly.indvar_next803.1.2, 16
  br i1 %exitcond1063.1.2.not, label %polly.loop_header799.2.2, label %polly.loop_header799.1.2

polly.loop_header799.2.2:                         ; preds = %polly.loop_exit807.1.2, %polly.loop_exit807.2.2
  %polly.indvar802.2.2 = phi i64 [ %polly.indvar_next803.2.2, %polly.loop_exit807.2.2 ], [ 0, %polly.loop_exit807.1.2 ]
  %602 = add nuw nsw i64 %polly.indvar802.2.2, 64
  %603 = mul nuw nsw i64 %602, 640
  %604 = trunc i64 %602 to i32
  %broadcast.splatinsert1274 = insertelement <4 x i32> poison, i32 %604, i32 0
  %broadcast.splat1275 = shufflevector <4 x i32> %broadcast.splatinsert1274, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1266

vector.body1266:                                  ; preds = %vector.body1266, %polly.loop_header799.2.2
  %index1268 = phi i64 [ 0, %polly.loop_header799.2.2 ], [ %index.next1269, %vector.body1266 ]
  %vec.ind1272 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header799.2.2 ], [ %vec.ind.next1273, %vector.body1266 ]
  %605 = add nuw nsw <4 x i64> %vec.ind1272, <i64 64, i64 64, i64 64, i64 64>
  %606 = trunc <4 x i64> %605 to <4 x i32>
  %607 = mul <4 x i32> %broadcast.splat1275, %606
  %608 = add <4 x i32> %607, <i32 3, i32 3, i32 3, i32 3>
  %609 = urem <4 x i32> %608, <i32 80, i32 80, i32 80, i32 80>
  %610 = sitofp <4 x i32> %609 to <4 x double>
  %611 = fmul fast <4 x double> %610, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %612 = extractelement <4 x i64> %605, i32 0
  %613 = shl i64 %612, 3
  %614 = add nuw nsw i64 %613, %603
  %615 = getelementptr i8, i8* %call, i64 %614
  %616 = bitcast i8* %615 to <4 x double>*
  store <4 x double> %611, <4 x double>* %616, align 8, !alias.scope !94, !noalias !96
  %index.next1269 = add i64 %index1268, 4
  %vec.ind.next1273 = add <4 x i64> %vec.ind1272, <i64 4, i64 4, i64 4, i64 4>
  %617 = icmp eq i64 %index.next1269, 16
  br i1 %617, label %polly.loop_exit807.2.2, label %vector.body1266, !llvm.loop !124

polly.loop_exit807.2.2:                           ; preds = %vector.body1266
  %polly.indvar_next803.2.2 = add nuw nsw i64 %polly.indvar802.2.2, 1
  %exitcond1063.2.2.not = icmp eq i64 %polly.indvar_next803.2.2, 16
  br i1 %exitcond1063.2.2.not, label %polly.loop_header826, label %polly.loop_header799.2.2
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
!25 = !{!"llvm.loop.tile.size", i32 20}
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
!48 = !{!"llvm.loop.tile.size", i32 8}
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
