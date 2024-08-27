; ModuleID = 'syr2k_recreations//mmp_syr2k_S_113.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_113.c"
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
  %call882 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1734 = bitcast i8* %call1 to double*
  %polly.access.call1743 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2744 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1743, %call2
  %polly.access.call2763 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2763, %call1
  %2 = or i1 %0, %1
  %polly.access.call783 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call783, %call2
  %4 = icmp ule i8* %polly.access.call2763, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call783, %call1
  %8 = icmp ule i8* %polly.access.call1743, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header868, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1118 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1117 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1116 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1115 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1115, %scevgep1118
  %bound1 = icmp ult i8* %scevgep1117, %scevgep1116
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
  br i1 %exitcond18.not.i, label %vector.ph1122, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1122:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1129 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1130 = shufflevector <4 x i64> %broadcast.splatinsert1129, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1121

vector.body1121:                                  ; preds = %vector.body1121, %vector.ph1122
  %index1123 = phi i64 [ 0, %vector.ph1122 ], [ %index.next1124, %vector.body1121 ]
  %vec.ind1127 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1122 ], [ %vec.ind.next1128, %vector.body1121 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1127, %broadcast.splat1130
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call882, i64 %indvars.iv7.i, i64 %index1123
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1124 = add i64 %index1123, 4
  %vec.ind.next1128 = add <4 x i64> %vec.ind1127, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1124, 80
  br i1 %40, label %for.inc41.i, label %vector.body1121, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1121
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1122, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit929.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start518, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1589, label %vector.ph1404

vector.ph1404:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1403

vector.body1403:                                  ; preds = %vector.body1403, %vector.ph1404
  %index1405 = phi i64 [ 0, %vector.ph1404 ], [ %index.next1406, %vector.body1403 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call882, i64 %indvars.iv21.i, i64 %index1405
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1406 = add i64 %index1405, 4
  %46 = icmp eq i64 %index.next1406, %n.vec
  br i1 %46, label %middle.block1401, label %vector.body1403, !llvm.loop !18

middle.block1401:                                 ; preds = %vector.body1403
  %cmp.n1408 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1408, label %for.inc6.i, label %for.body3.i46.preheader1589

for.body3.i46.preheader1589:                      ; preds = %for.body3.i46.preheader, %middle.block1401
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1401 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1589, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1589 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call882, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1401, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call882, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting519
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start304, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1461 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1461, label %for.body3.i60.preheader1587, label %vector.ph1462

vector.ph1462:                                    ; preds = %for.body3.i60.preheader
  %n.vec1464 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1460

vector.body1460:                                  ; preds = %vector.body1460, %vector.ph1462
  %index1465 = phi i64 [ 0, %vector.ph1462 ], [ %index.next1466, %vector.body1460 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call882, i64 %indvars.iv21.i52, i64 %index1465
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1469 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1469, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1466 = add i64 %index1465, 4
  %57 = icmp eq i64 %index.next1466, %n.vec1464
  br i1 %57, label %middle.block1458, label %vector.body1460, !llvm.loop !64

middle.block1458:                                 ; preds = %vector.body1460
  %cmp.n1468 = icmp eq i64 %indvars.iv21.i52, %n.vec1464
  br i1 %cmp.n1468, label %for.inc6.i63, label %for.body3.i60.preheader1587

for.body3.i60.preheader1587:                      ; preds = %for.body3.i60.preheader, %middle.block1458
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1464, %middle.block1458 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1587, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1587 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call882, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1458, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call882, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting305
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1524 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1524, label %for.body3.i99.preheader1585, label %vector.ph1525

vector.ph1525:                                    ; preds = %for.body3.i99.preheader
  %n.vec1527 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1523

vector.body1523:                                  ; preds = %vector.body1523, %vector.ph1525
  %index1528 = phi i64 [ 0, %vector.ph1525 ], [ %index.next1529, %vector.body1523 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call882, i64 %indvars.iv21.i91, i64 %index1528
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1532 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1532, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1529 = add i64 %index1528, 4
  %68 = icmp eq i64 %index.next1529, %n.vec1527
  br i1 %68, label %middle.block1521, label %vector.body1523, !llvm.loop !66

middle.block1521:                                 ; preds = %vector.body1523
  %cmp.n1531 = icmp eq i64 %indvars.iv21.i91, %n.vec1527
  br i1 %cmp.n1531, label %for.inc6.i102, label %for.body3.i99.preheader1585

for.body3.i99.preheader1585:                      ; preds = %for.body3.i99.preheader, %middle.block1521
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1527, %middle.block1521 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1585, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1585 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call882, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1521, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call882, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call882, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  %malloccall136 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit230.1
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1536 = phi i64 [ %indvar.next1537, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1536, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1538 = icmp ult i64 %88, 4
  br i1 %min.iters.check1538, label %polly.loop_header192.preheader, label %vector.ph1539

vector.ph1539:                                    ; preds = %polly.loop_header
  %n.vec1541 = and i64 %88, -4
  br label %vector.body1535

vector.body1535:                                  ; preds = %vector.body1535, %vector.ph1539
  %index1542 = phi i64 [ 0, %vector.ph1539 ], [ %index.next1543, %vector.body1535 ]
  %90 = shl nuw nsw i64 %index1542, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1546 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1546, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1543 = add i64 %index1542, 4
  %95 = icmp eq i64 %index.next1543, %n.vec1541
  br i1 %95, label %middle.block1533, label %vector.body1535, !llvm.loop !79

middle.block1533:                                 ; preds = %vector.body1535
  %cmp.n1545 = icmp eq i64 %88, %n.vec1541
  br i1 %cmp.n1545, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1533
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1541, %middle.block1533 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1533
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond984.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1537 = add i64 %indvar1536, 1
  br i1 %exitcond984.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond983.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond983.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit230.1
  %polly.loop_cond205 = phi i1 [ false, %polly.loop_exit230.1 ], [ true, %polly.loop_header200.preheader ]
  %polly.indvar203 = phi i64 [ 1, %polly.loop_exit230.1 ], [ 0, %polly.loop_header200.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar203, -50
  %98 = icmp slt i64 %97, -10
  %99 = select i1 %98, i64 %97, i64 -10
  %100 = mul nuw nsw i64 %polly.indvar203, 50
  %101 = add nsw i64 %99, 60
  br label %polly.loop_header212

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header200
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %102 = add nuw nsw i64 %polly.indvar215, %100
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 80
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond971.not = icmp eq i64 %polly.indvar_next216, %101
  br i1 %exitcond971.not, label %polly.loop_header228, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %polly.access.mul.call2225 = mul nuw nsw i64 %polly.indvar221, 60
  %polly.access.add.call2226 = add nuw nsw i64 %102, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2744, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, 80
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit220, %polly.loop_exit267
  %indvars.iv975 = phi i64 [ %indvars.iv.next976, %polly.loop_exit267 ], [ 0, %polly.loop_exit220 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit267 ], [ 0, %polly.loop_exit220 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit267 ], [ 0, %polly.loop_exit220 ]
  %103 = shl nuw nsw i64 %polly.indvar231, 4
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  %104 = shl nsw i64 %polly.indvar231, 4
  %polly.loop_guard.not = icmp eq i64 %polly.indvar231, 0
  %105 = or i64 %104, 15
  br i1 %polly.loop_guard.not, label %polly.loop_header234, label %polly.loop_header234.us

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.loop_exit253.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_exit253.us ], [ 0, %polly.loop_header228 ]
  %106 = add nuw nsw i64 %polly.indvar237.us, %100
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 80
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header234.us ]
  %polly.access.mul.call1247.us = mul nuw nsw i64 %polly.indvar243.us, 60
  %polly.access.add.call1248.us = add nuw nsw i64 %106, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond973.not = icmp eq i64 %polly.indvar_next244.us, %umax
  br i1 %exitcond973.not, label %polly.loop_header251.us, label %polly.loop_header240.us

polly.loop_header251.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header251.us
  %polly.indvar255.us = phi i64 [ %polly.indvar_next256.us, %polly.loop_header251.us ], [ %104, %polly.loop_header240.us ]
  %polly.access.mul.call1259.us = mul nuw nsw i64 %polly.indvar255.us, 60
  %polly.access.add.call1260.us = add nuw nsw i64 %106, %polly.access.mul.call1259.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us = add nuw nsw i64 %polly.indvar255.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %polly.indvar_next256.us = add nuw nsw i64 %polly.indvar255.us, 1
  %polly.loop_cond257.not.not.us = icmp ult i64 %polly.indvar255.us, %105
  br i1 %polly.loop_cond257.not.not.us, label %polly.loop_header251.us, label %polly.loop_exit253.us

polly.loop_exit253.us:                            ; preds = %polly.loop_header251.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond974.not = icmp eq i64 %polly.indvar_next238.us, %101
  br i1 %exitcond974.not, label %polly.loop_header265.preheader, label %polly.loop_header234.us

polly.loop_exit267:                               ; preds = %polly.loop_exit273
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16
  %indvars.iv.next976 = add nuw nsw i64 %indvars.iv975, 16
  %exitcond982.not = icmp eq i64 %polly.indvar_next232, 5
  br i1 %exitcond982.not, label %polly.loop_header212.1, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header228, %polly.loop_exit253
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit253 ], [ 0, %polly.loop_header228 ]
  %107 = add nuw nsw i64 %polly.indvar237, %100
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar237, 80
  br label %polly.loop_header251

polly.loop_exit253:                               ; preds = %polly.loop_header251
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond972.not = icmp eq i64 %polly.indvar_next238, %101
  br i1 %exitcond972.not, label %polly.loop_header265.preheader, label %polly.loop_header234

polly.loop_header265.preheader:                   ; preds = %polly.loop_exit253.us, %polly.loop_exit253
  br label %polly.loop_header265

polly.loop_header251:                             ; preds = %polly.loop_header234, %polly.loop_header251
  %polly.indvar255 = phi i64 [ %polly.indvar_next256, %polly.loop_header251 ], [ %104, %polly.loop_header234 ]
  %polly.access.mul.call1259 = mul nuw nsw i64 %polly.indvar255, 60
  %polly.access.add.call1260 = add nuw nsw i64 %107, %polly.access.mul.call1259
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263 = add nuw nsw i64 %polly.indvar255, %polly.access.mul.Packed_MemRef_call1262
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next256 = add nuw nsw i64 %polly.indvar255, 1
  %polly.loop_cond257.not.not = icmp ult i64 %polly.indvar255, %105
  br i1 %polly.loop_cond257.not.not, label %polly.loop_header251, label %polly.loop_exit253

polly.loop_header265:                             ; preds = %polly.loop_header265.preheader, %polly.loop_exit273
  %polly.indvar268 = phi i64 [ %polly.indvar_next269, %polly.loop_exit273 ], [ 0, %polly.loop_header265.preheader ]
  %polly.access.mul.Packed_MemRef_call1283 = mul nuw nsw i64 %polly.indvar268, 80
  br label %polly.loop_header271

polly.loop_exit273:                               ; preds = %polly.loop_exit279
  %polly.indvar_next269 = add nuw nsw i64 %polly.indvar268, 1
  %exitcond981.not = icmp eq i64 %polly.indvar_next269, %101
  br i1 %exitcond981.not, label %polly.loop_exit267, label %polly.loop_header265

polly.loop_header271:                             ; preds = %polly.loop_exit279, %polly.loop_header265
  %indvars.iv977 = phi i64 [ %indvars.iv.next978, %polly.loop_exit279 ], [ %indvars.iv975, %polly.loop_header265 ]
  %polly.indvar274 = phi i64 [ %polly.indvar_next275, %polly.loop_exit279 ], [ 0, %polly.loop_header265 ]
  %108 = add nuw i64 %103, %polly.indvar274
  %smin1568 = call i64 @llvm.smin.i64(i64 %108, i64 63)
  %109 = add nuw nsw i64 %smin1568, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv977, i64 63)
  %110 = add nuw nsw i64 %polly.indvar274, %104
  %polly.access.add.Packed_MemRef_call2288 = add nuw nsw i64 %110, %polly.access.mul.Packed_MemRef_call1283
  %polly.access.Packed_MemRef_call2289 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288
  %_p_scalar_290 = load double, double* %polly.access.Packed_MemRef_call2289, align 8
  %polly.access.Packed_MemRef_call1297 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2288
  %_p_scalar_298 = load double, double* %polly.access.Packed_MemRef_call1297, align 8
  %111 = mul nuw nsw i64 %110, 640
  %min.iters.check1569 = icmp ult i64 %smin1568, 3
  br i1 %min.iters.check1569, label %polly.loop_header277.preheader, label %vector.ph1570

vector.ph1570:                                    ; preds = %polly.loop_header271
  %n.vec1572 = and i64 %109, -4
  %broadcast.splatinsert1578 = insertelement <4 x double> poison, double %_p_scalar_290, i32 0
  %broadcast.splat1579 = shufflevector <4 x double> %broadcast.splatinsert1578, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1581 = insertelement <4 x double> poison, double %_p_scalar_298, i32 0
  %broadcast.splat1582 = shufflevector <4 x double> %broadcast.splatinsert1581, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1567

vector.body1567:                                  ; preds = %vector.body1567, %vector.ph1570
  %index1573 = phi i64 [ 0, %vector.ph1570 ], [ %index.next1574, %vector.body1567 ]
  %112 = add nuw nsw i64 %index1573, %polly.access.mul.Packed_MemRef_call1283
  %113 = getelementptr double, double* %Packed_MemRef_call1, i64 %112
  %114 = bitcast double* %113 to <4 x double>*
  %wide.load1577 = load <4 x double>, <4 x double>* %114, align 8
  %115 = fmul fast <4 x double> %broadcast.splat1579, %wide.load1577
  %116 = getelementptr double, double* %Packed_MemRef_call2, i64 %112
  %117 = bitcast double* %116 to <4 x double>*
  %wide.load1580 = load <4 x double>, <4 x double>* %117, align 8
  %118 = fmul fast <4 x double> %broadcast.splat1582, %wide.load1580
  %119 = shl i64 %index1573, 3
  %120 = add nuw nsw i64 %119, %111
  %121 = getelementptr i8, i8* %call, i64 %120
  %122 = bitcast i8* %121 to <4 x double>*
  %wide.load1583 = load <4 x double>, <4 x double>* %122, align 8, !alias.scope !72, !noalias !74
  %123 = fadd fast <4 x double> %118, %115
  %124 = fmul fast <4 x double> %123, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %125 = fadd fast <4 x double> %124, %wide.load1583
  %126 = bitcast i8* %121 to <4 x double>*
  store <4 x double> %125, <4 x double>* %126, align 8, !alias.scope !72, !noalias !74
  %index.next1574 = add i64 %index1573, 4
  %127 = icmp eq i64 %index.next1574, %n.vec1572
  br i1 %127, label %middle.block1565, label %vector.body1567, !llvm.loop !84

middle.block1565:                                 ; preds = %vector.body1567
  %cmp.n1576 = icmp eq i64 %109, %n.vec1572
  br i1 %cmp.n1576, label %polly.loop_exit279, label %polly.loop_header277.preheader

polly.loop_header277.preheader:                   ; preds = %polly.loop_header271, %middle.block1565
  %polly.indvar280.ph = phi i64 [ 0, %polly.loop_header271 ], [ %n.vec1572, %middle.block1565 ]
  br label %polly.loop_header277

polly.loop_exit279:                               ; preds = %polly.loop_header277, %middle.block1565
  %polly.indvar_next275 = add nuw nsw i64 %polly.indvar274, 1
  %indvars.iv.next978 = add nuw nsw i64 %indvars.iv977, 1
  %exitcond980.not = icmp eq i64 %polly.indvar_next275, 16
  br i1 %exitcond980.not, label %polly.loop_exit273, label %polly.loop_header271

polly.loop_header277:                             ; preds = %polly.loop_header277.preheader, %polly.loop_header277
  %polly.indvar280 = phi i64 [ %polly.indvar_next281, %polly.loop_header277 ], [ %polly.indvar280.ph, %polly.loop_header277.preheader ]
  %polly.access.add.Packed_MemRef_call1284 = add nuw nsw i64 %polly.indvar280, %polly.access.mul.Packed_MemRef_call1283
  %polly.access.Packed_MemRef_call1285 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1284
  %_p_scalar_286 = load double, double* %polly.access.Packed_MemRef_call1285, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_290, %_p_scalar_286
  %polly.access.Packed_MemRef_call2293 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1284
  %_p_scalar_294 = load double, double* %polly.access.Packed_MemRef_call2293, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_298, %_p_scalar_294
  %128 = shl i64 %polly.indvar280, 3
  %129 = add nuw nsw i64 %128, %111
  %scevgep299 = getelementptr i8, i8* %call, i64 %129
  %scevgep299300 = bitcast i8* %scevgep299 to double*
  %_p_scalar_301 = load double, double* %scevgep299300, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_301
  store double %p_add42.i118, double* %scevgep299300, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next281 = add nuw nsw i64 %polly.indvar280, 1
  %exitcond979.not = icmp eq i64 %polly.indvar280, %smin
  br i1 %exitcond979.not, label %polly.loop_exit279, label %polly.loop_header277, !llvm.loop !85

polly.start304:                                   ; preds = %kernel_syr2k.exit
  %malloccall306 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  %malloccall308 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  br label %polly.loop_header392

polly.exiting305:                                 ; preds = %polly.loop_exit438.1
  tail call void @free(i8* nonnull %malloccall306)
  tail call void @free(i8* nonnull %malloccall308)
  br label %kernel_syr2k.exit90

polly.loop_header392:                             ; preds = %polly.loop_exit400, %polly.start304
  %indvar1473 = phi i64 [ %indvar.next1474, %polly.loop_exit400 ], [ 0, %polly.start304 ]
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_exit400 ], [ 1, %polly.start304 ]
  %130 = add i64 %indvar1473, 1
  %131 = mul nuw nsw i64 %polly.indvar395, 640
  %scevgep404 = getelementptr i8, i8* %call, i64 %131
  %min.iters.check1475 = icmp ult i64 %130, 4
  br i1 %min.iters.check1475, label %polly.loop_header398.preheader, label %vector.ph1476

vector.ph1476:                                    ; preds = %polly.loop_header392
  %n.vec1478 = and i64 %130, -4
  br label %vector.body1472

vector.body1472:                                  ; preds = %vector.body1472, %vector.ph1476
  %index1479 = phi i64 [ 0, %vector.ph1476 ], [ %index.next1480, %vector.body1472 ]
  %132 = shl nuw nsw i64 %index1479, 3
  %133 = getelementptr i8, i8* %scevgep404, i64 %132
  %134 = bitcast i8* %133 to <4 x double>*
  %wide.load1483 = load <4 x double>, <4 x double>* %134, align 8, !alias.scope !86, !noalias !88
  %135 = fmul fast <4 x double> %wide.load1483, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %136 = bitcast i8* %133 to <4 x double>*
  store <4 x double> %135, <4 x double>* %136, align 8, !alias.scope !86, !noalias !88
  %index.next1480 = add i64 %index1479, 4
  %137 = icmp eq i64 %index.next1480, %n.vec1478
  br i1 %137, label %middle.block1470, label %vector.body1472, !llvm.loop !93

middle.block1470:                                 ; preds = %vector.body1472
  %cmp.n1482 = icmp eq i64 %130, %n.vec1478
  br i1 %cmp.n1482, label %polly.loop_exit400, label %polly.loop_header398.preheader

polly.loop_header398.preheader:                   ; preds = %polly.loop_header392, %middle.block1470
  %polly.indvar401.ph = phi i64 [ 0, %polly.loop_header392 ], [ %n.vec1478, %middle.block1470 ]
  br label %polly.loop_header398

polly.loop_exit400:                               ; preds = %polly.loop_header398, %middle.block1470
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond1003.not = icmp eq i64 %polly.indvar_next396, 80
  %indvar.next1474 = add i64 %indvar1473, 1
  br i1 %exitcond1003.not, label %polly.loop_header408.preheader, label %polly.loop_header392

polly.loop_header408.preheader:                   ; preds = %polly.loop_exit400
  %Packed_MemRef_call1307 = bitcast i8* %malloccall306 to double*
  %Packed_MemRef_call2309 = bitcast i8* %malloccall308 to double*
  br label %polly.loop_header408

polly.loop_header398:                             ; preds = %polly.loop_header398.preheader, %polly.loop_header398
  %polly.indvar401 = phi i64 [ %polly.indvar_next402, %polly.loop_header398 ], [ %polly.indvar401.ph, %polly.loop_header398.preheader ]
  %138 = shl nuw nsw i64 %polly.indvar401, 3
  %scevgep405 = getelementptr i8, i8* %scevgep404, i64 %138
  %scevgep405406 = bitcast i8* %scevgep405 to double*
  %_p_scalar_407 = load double, double* %scevgep405406, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_407, 1.200000e+00
  store double %p_mul.i57, double* %scevgep405406, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next402 = add nuw nsw i64 %polly.indvar401, 1
  %exitcond1002.not = icmp eq i64 %polly.indvar_next402, %polly.indvar395
  br i1 %exitcond1002.not, label %polly.loop_exit400, label %polly.loop_header398, !llvm.loop !94

polly.loop_header408:                             ; preds = %polly.loop_header408.preheader, %polly.loop_exit438.1
  %polly.loop_cond413 = phi i1 [ false, %polly.loop_exit438.1 ], [ true, %polly.loop_header408.preheader ]
  %polly.indvar411 = phi i64 [ 1, %polly.loop_exit438.1 ], [ 0, %polly.loop_header408.preheader ]
  %139 = mul nuw nsw i64 %polly.indvar411, -50
  %140 = icmp slt i64 %139, -10
  %141 = select i1 %140, i64 %139, i64 -10
  %142 = mul nuw nsw i64 %polly.indvar411, 50
  %143 = add nsw i64 %141, 60
  br label %polly.loop_header420

polly.loop_header420:                             ; preds = %polly.loop_exit428, %polly.loop_header408
  %polly.indvar423 = phi i64 [ 0, %polly.loop_header408 ], [ %polly.indvar_next424, %polly.loop_exit428 ]
  %144 = add nuw nsw i64 %polly.indvar423, %142
  %polly.access.mul.Packed_MemRef_call2309 = mul nuw nsw i64 %polly.indvar423, 80
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_header426
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %exitcond986.not = icmp eq i64 %polly.indvar_next424, %143
  br i1 %exitcond986.not, label %polly.loop_header436, label %polly.loop_header420

polly.loop_header426:                             ; preds = %polly.loop_header426, %polly.loop_header420
  %polly.indvar429 = phi i64 [ 0, %polly.loop_header420 ], [ %polly.indvar_next430, %polly.loop_header426 ]
  %polly.access.mul.call2433 = mul nuw nsw i64 %polly.indvar429, 60
  %polly.access.add.call2434 = add nuw nsw i64 %144, %polly.access.mul.call2433
  %polly.access.call2435 = getelementptr double, double* %polly.access.cast.call2744, i64 %polly.access.add.call2434
  %polly.access.call2435.load = load double, double* %polly.access.call2435, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2309 = add nuw nsw i64 %polly.indvar429, %polly.access.mul.Packed_MemRef_call2309
  %polly.access.Packed_MemRef_call2309 = getelementptr double, double* %Packed_MemRef_call2309, i64 %polly.access.add.Packed_MemRef_call2309
  store double %polly.access.call2435.load, double* %polly.access.Packed_MemRef_call2309, align 8
  %polly.indvar_next430 = add nuw nsw i64 %polly.indvar429, 1
  %exitcond985.not = icmp eq i64 %polly.indvar_next430, 80
  br i1 %exitcond985.not, label %polly.loop_exit428, label %polly.loop_header426

polly.loop_header436:                             ; preds = %polly.loop_exit428, %polly.loop_exit481
  %indvars.iv993 = phi i64 [ %indvars.iv.next994, %polly.loop_exit481 ], [ 0, %polly.loop_exit428 ]
  %indvars.iv988 = phi i64 [ %indvars.iv.next989, %polly.loop_exit481 ], [ 0, %polly.loop_exit428 ]
  %polly.indvar439 = phi i64 [ %polly.indvar_next440, %polly.loop_exit481 ], [ 0, %polly.loop_exit428 ]
  %145 = shl nuw nsw i64 %polly.indvar439, 4
  %umax990 = call i64 @llvm.umax.i64(i64 %indvars.iv988, i64 1)
  %146 = shl nsw i64 %polly.indvar439, 4
  %polly.loop_guard456.not = icmp eq i64 %polly.indvar439, 0
  %147 = or i64 %146, 15
  br i1 %polly.loop_guard456.not, label %polly.loop_header442, label %polly.loop_header442.us

polly.loop_header442.us:                          ; preds = %polly.loop_header436, %polly.loop_exit467.us
  %polly.indvar445.us = phi i64 [ %polly.indvar_next446.us, %polly.loop_exit467.us ], [ 0, %polly.loop_header436 ]
  %148 = add nuw nsw i64 %polly.indvar445.us, %142
  %polly.access.mul.Packed_MemRef_call1307.us = mul nuw nsw i64 %polly.indvar445.us, 80
  br label %polly.loop_header453.us

polly.loop_header453.us:                          ; preds = %polly.loop_header442.us, %polly.loop_header453.us
  %polly.indvar457.us = phi i64 [ %polly.indvar_next458.us, %polly.loop_header453.us ], [ 0, %polly.loop_header442.us ]
  %polly.access.mul.call1461.us = mul nuw nsw i64 %polly.indvar457.us, 60
  %polly.access.add.call1462.us = add nuw nsw i64 %148, %polly.access.mul.call1461.us
  %polly.access.call1463.us = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1462.us
  %polly.access.call1463.load.us = load double, double* %polly.access.call1463.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1307.us = add nuw nsw i64 %polly.indvar457.us, %polly.access.mul.Packed_MemRef_call1307.us
  %polly.access.Packed_MemRef_call1307.us = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307.us
  store double %polly.access.call1463.load.us, double* %polly.access.Packed_MemRef_call1307.us, align 8
  %polly.indvar_next458.us = add nuw nsw i64 %polly.indvar457.us, 1
  %exitcond991.not = icmp eq i64 %polly.indvar_next458.us, %umax990
  br i1 %exitcond991.not, label %polly.loop_header465.us, label %polly.loop_header453.us

polly.loop_header465.us:                          ; preds = %polly.loop_header453.us, %polly.loop_header465.us
  %polly.indvar469.us = phi i64 [ %polly.indvar_next470.us, %polly.loop_header465.us ], [ %146, %polly.loop_header453.us ]
  %polly.access.mul.call1473.us = mul nuw nsw i64 %polly.indvar469.us, 60
  %polly.access.add.call1474.us = add nuw nsw i64 %148, %polly.access.mul.call1473.us
  %polly.access.call1475.us = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1474.us
  %polly.access.call1475.load.us = load double, double* %polly.access.call1475.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1307477.us = add nuw nsw i64 %polly.indvar469.us, %polly.access.mul.Packed_MemRef_call1307.us
  %polly.access.Packed_MemRef_call1307478.us = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307477.us
  store double %polly.access.call1475.load.us, double* %polly.access.Packed_MemRef_call1307478.us, align 8
  %polly.indvar_next470.us = add nuw nsw i64 %polly.indvar469.us, 1
  %polly.loop_cond471.not.not.us = icmp ult i64 %polly.indvar469.us, %147
  br i1 %polly.loop_cond471.not.not.us, label %polly.loop_header465.us, label %polly.loop_exit467.us

polly.loop_exit467.us:                            ; preds = %polly.loop_header465.us
  %polly.indvar_next446.us = add nuw nsw i64 %polly.indvar445.us, 1
  %exitcond992.not = icmp eq i64 %polly.indvar_next446.us, %143
  br i1 %exitcond992.not, label %polly.loop_header479.preheader, label %polly.loop_header442.us

polly.loop_exit481:                               ; preds = %polly.loop_exit487
  %polly.indvar_next440 = add nuw nsw i64 %polly.indvar439, 1
  %indvars.iv.next989 = add nuw nsw i64 %indvars.iv988, 16
  %indvars.iv.next994 = add nuw nsw i64 %indvars.iv993, 16
  %exitcond1001.not = icmp eq i64 %polly.indvar_next440, 5
  br i1 %exitcond1001.not, label %polly.loop_header420.1, label %polly.loop_header436

polly.loop_header442:                             ; preds = %polly.loop_header436, %polly.loop_exit467
  %polly.indvar445 = phi i64 [ %polly.indvar_next446, %polly.loop_exit467 ], [ 0, %polly.loop_header436 ]
  %149 = add nuw nsw i64 %polly.indvar445, %142
  %polly.access.mul.Packed_MemRef_call1307476 = mul nuw nsw i64 %polly.indvar445, 80
  br label %polly.loop_header465

polly.loop_exit467:                               ; preds = %polly.loop_header465
  %polly.indvar_next446 = add nuw nsw i64 %polly.indvar445, 1
  %exitcond987.not = icmp eq i64 %polly.indvar_next446, %143
  br i1 %exitcond987.not, label %polly.loop_header479.preheader, label %polly.loop_header442

polly.loop_header479.preheader:                   ; preds = %polly.loop_exit467.us, %polly.loop_exit467
  br label %polly.loop_header479

polly.loop_header465:                             ; preds = %polly.loop_header442, %polly.loop_header465
  %polly.indvar469 = phi i64 [ %polly.indvar_next470, %polly.loop_header465 ], [ %146, %polly.loop_header442 ]
  %polly.access.mul.call1473 = mul nuw nsw i64 %polly.indvar469, 60
  %polly.access.add.call1474 = add nuw nsw i64 %149, %polly.access.mul.call1473
  %polly.access.call1475 = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1474
  %polly.access.call1475.load = load double, double* %polly.access.call1475, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1307477 = add nuw nsw i64 %polly.indvar469, %polly.access.mul.Packed_MemRef_call1307476
  %polly.access.Packed_MemRef_call1307478 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307477
  store double %polly.access.call1475.load, double* %polly.access.Packed_MemRef_call1307478, align 8
  %polly.indvar_next470 = add nuw nsw i64 %polly.indvar469, 1
  %polly.loop_cond471.not.not = icmp ult i64 %polly.indvar469, %147
  br i1 %polly.loop_cond471.not.not, label %polly.loop_header465, label %polly.loop_exit467

polly.loop_header479:                             ; preds = %polly.loop_header479.preheader, %polly.loop_exit487
  %polly.indvar482 = phi i64 [ %polly.indvar_next483, %polly.loop_exit487 ], [ 0, %polly.loop_header479.preheader ]
  %polly.access.mul.Packed_MemRef_call1307497 = mul nuw nsw i64 %polly.indvar482, 80
  br label %polly.loop_header485

polly.loop_exit487:                               ; preds = %polly.loop_exit493
  %polly.indvar_next483 = add nuw nsw i64 %polly.indvar482, 1
  %exitcond1000.not = icmp eq i64 %polly.indvar_next483, %143
  br i1 %exitcond1000.not, label %polly.loop_exit481, label %polly.loop_header479

polly.loop_header485:                             ; preds = %polly.loop_exit493, %polly.loop_header479
  %indvars.iv995 = phi i64 [ %indvars.iv.next996, %polly.loop_exit493 ], [ %indvars.iv993, %polly.loop_header479 ]
  %polly.indvar488 = phi i64 [ %polly.indvar_next489, %polly.loop_exit493 ], [ 0, %polly.loop_header479 ]
  %150 = add nuw i64 %145, %polly.indvar488
  %smin1505 = call i64 @llvm.smin.i64(i64 %150, i64 63)
  %151 = add nuw nsw i64 %smin1505, 1
  %smin997 = call i64 @llvm.smin.i64(i64 %indvars.iv995, i64 63)
  %152 = add nuw nsw i64 %polly.indvar488, %146
  %polly.access.add.Packed_MemRef_call2309502 = add nuw nsw i64 %152, %polly.access.mul.Packed_MemRef_call1307497
  %polly.access.Packed_MemRef_call2309503 = getelementptr double, double* %Packed_MemRef_call2309, i64 %polly.access.add.Packed_MemRef_call2309502
  %_p_scalar_504 = load double, double* %polly.access.Packed_MemRef_call2309503, align 8
  %polly.access.Packed_MemRef_call1307511 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call2309502
  %_p_scalar_512 = load double, double* %polly.access.Packed_MemRef_call1307511, align 8
  %153 = mul nuw nsw i64 %152, 640
  %min.iters.check1506 = icmp ult i64 %smin1505, 3
  br i1 %min.iters.check1506, label %polly.loop_header491.preheader, label %vector.ph1507

vector.ph1507:                                    ; preds = %polly.loop_header485
  %n.vec1509 = and i64 %151, -4
  %broadcast.splatinsert1515 = insertelement <4 x double> poison, double %_p_scalar_504, i32 0
  %broadcast.splat1516 = shufflevector <4 x double> %broadcast.splatinsert1515, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1518 = insertelement <4 x double> poison, double %_p_scalar_512, i32 0
  %broadcast.splat1519 = shufflevector <4 x double> %broadcast.splatinsert1518, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1504

vector.body1504:                                  ; preds = %vector.body1504, %vector.ph1507
  %index1510 = phi i64 [ 0, %vector.ph1507 ], [ %index.next1511, %vector.body1504 ]
  %154 = add nuw nsw i64 %index1510, %polly.access.mul.Packed_MemRef_call1307497
  %155 = getelementptr double, double* %Packed_MemRef_call1307, i64 %154
  %156 = bitcast double* %155 to <4 x double>*
  %wide.load1514 = load <4 x double>, <4 x double>* %156, align 8
  %157 = fmul fast <4 x double> %broadcast.splat1516, %wide.load1514
  %158 = getelementptr double, double* %Packed_MemRef_call2309, i64 %154
  %159 = bitcast double* %158 to <4 x double>*
  %wide.load1517 = load <4 x double>, <4 x double>* %159, align 8
  %160 = fmul fast <4 x double> %broadcast.splat1519, %wide.load1517
  %161 = shl i64 %index1510, 3
  %162 = add nuw nsw i64 %161, %153
  %163 = getelementptr i8, i8* %call, i64 %162
  %164 = bitcast i8* %163 to <4 x double>*
  %wide.load1520 = load <4 x double>, <4 x double>* %164, align 8, !alias.scope !86, !noalias !88
  %165 = fadd fast <4 x double> %160, %157
  %166 = fmul fast <4 x double> %165, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %167 = fadd fast <4 x double> %166, %wide.load1520
  %168 = bitcast i8* %163 to <4 x double>*
  store <4 x double> %167, <4 x double>* %168, align 8, !alias.scope !86, !noalias !88
  %index.next1511 = add i64 %index1510, 4
  %169 = icmp eq i64 %index.next1511, %n.vec1509
  br i1 %169, label %middle.block1502, label %vector.body1504, !llvm.loop !97

middle.block1502:                                 ; preds = %vector.body1504
  %cmp.n1513 = icmp eq i64 %151, %n.vec1509
  br i1 %cmp.n1513, label %polly.loop_exit493, label %polly.loop_header491.preheader

polly.loop_header491.preheader:                   ; preds = %polly.loop_header485, %middle.block1502
  %polly.indvar494.ph = phi i64 [ 0, %polly.loop_header485 ], [ %n.vec1509, %middle.block1502 ]
  br label %polly.loop_header491

polly.loop_exit493:                               ; preds = %polly.loop_header491, %middle.block1502
  %polly.indvar_next489 = add nuw nsw i64 %polly.indvar488, 1
  %indvars.iv.next996 = add nuw nsw i64 %indvars.iv995, 1
  %exitcond999.not = icmp eq i64 %polly.indvar_next489, 16
  br i1 %exitcond999.not, label %polly.loop_exit487, label %polly.loop_header485

polly.loop_header491:                             ; preds = %polly.loop_header491.preheader, %polly.loop_header491
  %polly.indvar494 = phi i64 [ %polly.indvar_next495, %polly.loop_header491 ], [ %polly.indvar494.ph, %polly.loop_header491.preheader ]
  %polly.access.add.Packed_MemRef_call1307498 = add nuw nsw i64 %polly.indvar494, %polly.access.mul.Packed_MemRef_call1307497
  %polly.access.Packed_MemRef_call1307499 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307498
  %_p_scalar_500 = load double, double* %polly.access.Packed_MemRef_call1307499, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_504, %_p_scalar_500
  %polly.access.Packed_MemRef_call2309507 = getelementptr double, double* %Packed_MemRef_call2309, i64 %polly.access.add.Packed_MemRef_call1307498
  %_p_scalar_508 = load double, double* %polly.access.Packed_MemRef_call2309507, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_512, %_p_scalar_508
  %170 = shl i64 %polly.indvar494, 3
  %171 = add nuw nsw i64 %170, %153
  %scevgep513 = getelementptr i8, i8* %call, i64 %171
  %scevgep513514 = bitcast i8* %scevgep513 to double*
  %_p_scalar_515 = load double, double* %scevgep513514, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_515
  store double %p_add42.i79, double* %scevgep513514, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next495 = add nuw nsw i64 %polly.indvar494, 1
  %exitcond998.not = icmp eq i64 %polly.indvar494, %smin997
  br i1 %exitcond998.not, label %polly.loop_exit493, label %polly.loop_header491, !llvm.loop !98

polly.start518:                                   ; preds = %init_array.exit
  %malloccall520 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  %malloccall522 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  br label %polly.loop_header606

polly.exiting519:                                 ; preds = %polly.loop_exit652.1
  tail call void @free(i8* nonnull %malloccall520)
  tail call void @free(i8* nonnull %malloccall522)
  br label %kernel_syr2k.exit

polly.loop_header606:                             ; preds = %polly.loop_exit614, %polly.start518
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit614 ], [ 0, %polly.start518 ]
  %polly.indvar609 = phi i64 [ %polly.indvar_next610, %polly.loop_exit614 ], [ 1, %polly.start518 ]
  %172 = add i64 %indvar, 1
  %173 = mul nuw nsw i64 %polly.indvar609, 640
  %scevgep618 = getelementptr i8, i8* %call, i64 %173
  %min.iters.check1412 = icmp ult i64 %172, 4
  br i1 %min.iters.check1412, label %polly.loop_header612.preheader, label %vector.ph1413

vector.ph1413:                                    ; preds = %polly.loop_header606
  %n.vec1415 = and i64 %172, -4
  br label %vector.body1411

vector.body1411:                                  ; preds = %vector.body1411, %vector.ph1413
  %index1416 = phi i64 [ 0, %vector.ph1413 ], [ %index.next1417, %vector.body1411 ]
  %174 = shl nuw nsw i64 %index1416, 3
  %175 = getelementptr i8, i8* %scevgep618, i64 %174
  %176 = bitcast i8* %175 to <4 x double>*
  %wide.load1420 = load <4 x double>, <4 x double>* %176, align 8, !alias.scope !99, !noalias !101
  %177 = fmul fast <4 x double> %wide.load1420, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %178 = bitcast i8* %175 to <4 x double>*
  store <4 x double> %177, <4 x double>* %178, align 8, !alias.scope !99, !noalias !101
  %index.next1417 = add i64 %index1416, 4
  %179 = icmp eq i64 %index.next1417, %n.vec1415
  br i1 %179, label %middle.block1409, label %vector.body1411, !llvm.loop !106

middle.block1409:                                 ; preds = %vector.body1411
  %cmp.n1419 = icmp eq i64 %172, %n.vec1415
  br i1 %cmp.n1419, label %polly.loop_exit614, label %polly.loop_header612.preheader

polly.loop_header612.preheader:                   ; preds = %polly.loop_header606, %middle.block1409
  %polly.indvar615.ph = phi i64 [ 0, %polly.loop_header606 ], [ %n.vec1415, %middle.block1409 ]
  br label %polly.loop_header612

polly.loop_exit614:                               ; preds = %polly.loop_header612, %middle.block1409
  %polly.indvar_next610 = add nuw nsw i64 %polly.indvar609, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar_next610, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1022.not, label %polly.loop_header622.preheader, label %polly.loop_header606

polly.loop_header622.preheader:                   ; preds = %polly.loop_exit614
  %Packed_MemRef_call1521 = bitcast i8* %malloccall520 to double*
  %Packed_MemRef_call2523 = bitcast i8* %malloccall522 to double*
  br label %polly.loop_header622

polly.loop_header612:                             ; preds = %polly.loop_header612.preheader, %polly.loop_header612
  %polly.indvar615 = phi i64 [ %polly.indvar_next616, %polly.loop_header612 ], [ %polly.indvar615.ph, %polly.loop_header612.preheader ]
  %180 = shl nuw nsw i64 %polly.indvar615, 3
  %scevgep619 = getelementptr i8, i8* %scevgep618, i64 %180
  %scevgep619620 = bitcast i8* %scevgep619 to double*
  %_p_scalar_621 = load double, double* %scevgep619620, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_621, 1.200000e+00
  store double %p_mul.i, double* %scevgep619620, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next616 = add nuw nsw i64 %polly.indvar615, 1
  %exitcond1021.not = icmp eq i64 %polly.indvar_next616, %polly.indvar609
  br i1 %exitcond1021.not, label %polly.loop_exit614, label %polly.loop_header612, !llvm.loop !107

polly.loop_header622:                             ; preds = %polly.loop_header622.preheader, %polly.loop_exit652.1
  %polly.loop_cond627 = phi i1 [ false, %polly.loop_exit652.1 ], [ true, %polly.loop_header622.preheader ]
  %polly.indvar625 = phi i64 [ 1, %polly.loop_exit652.1 ], [ 0, %polly.loop_header622.preheader ]
  %181 = mul nuw nsw i64 %polly.indvar625, -50
  %182 = icmp slt i64 %181, -10
  %183 = select i1 %182, i64 %181, i64 -10
  %184 = mul nuw nsw i64 %polly.indvar625, 50
  %185 = add nsw i64 %183, 60
  br label %polly.loop_header634

polly.loop_header634:                             ; preds = %polly.loop_exit642, %polly.loop_header622
  %polly.indvar637 = phi i64 [ 0, %polly.loop_header622 ], [ %polly.indvar_next638, %polly.loop_exit642 ]
  %186 = add nuw nsw i64 %polly.indvar637, %184
  %polly.access.mul.Packed_MemRef_call2523 = mul nuw nsw i64 %polly.indvar637, 80
  br label %polly.loop_header640

polly.loop_exit642:                               ; preds = %polly.loop_header640
  %polly.indvar_next638 = add nuw nsw i64 %polly.indvar637, 1
  %exitcond1005.not = icmp eq i64 %polly.indvar_next638, %185
  br i1 %exitcond1005.not, label %polly.loop_header650, label %polly.loop_header634

polly.loop_header640:                             ; preds = %polly.loop_header640, %polly.loop_header634
  %polly.indvar643 = phi i64 [ 0, %polly.loop_header634 ], [ %polly.indvar_next644, %polly.loop_header640 ]
  %polly.access.mul.call2647 = mul nuw nsw i64 %polly.indvar643, 60
  %polly.access.add.call2648 = add nuw nsw i64 %186, %polly.access.mul.call2647
  %polly.access.call2649 = getelementptr double, double* %polly.access.cast.call2744, i64 %polly.access.add.call2648
  %polly.access.call2649.load = load double, double* %polly.access.call2649, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2523 = add nuw nsw i64 %polly.indvar643, %polly.access.mul.Packed_MemRef_call2523
  %polly.access.Packed_MemRef_call2523 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call2523
  store double %polly.access.call2649.load, double* %polly.access.Packed_MemRef_call2523, align 8
  %polly.indvar_next644 = add nuw nsw i64 %polly.indvar643, 1
  %exitcond1004.not = icmp eq i64 %polly.indvar_next644, 80
  br i1 %exitcond1004.not, label %polly.loop_exit642, label %polly.loop_header640

polly.loop_header650:                             ; preds = %polly.loop_exit642, %polly.loop_exit695
  %indvars.iv1012 = phi i64 [ %indvars.iv.next1013, %polly.loop_exit695 ], [ 0, %polly.loop_exit642 ]
  %indvars.iv1007 = phi i64 [ %indvars.iv.next1008, %polly.loop_exit695 ], [ 0, %polly.loop_exit642 ]
  %polly.indvar653 = phi i64 [ %polly.indvar_next654, %polly.loop_exit695 ], [ 0, %polly.loop_exit642 ]
  %187 = shl nuw nsw i64 %polly.indvar653, 4
  %umax1009 = call i64 @llvm.umax.i64(i64 %indvars.iv1007, i64 1)
  %188 = shl nsw i64 %polly.indvar653, 4
  %polly.loop_guard670.not = icmp eq i64 %polly.indvar653, 0
  %189 = or i64 %188, 15
  br i1 %polly.loop_guard670.not, label %polly.loop_header656, label %polly.loop_header656.us

polly.loop_header656.us:                          ; preds = %polly.loop_header650, %polly.loop_exit681.us
  %polly.indvar659.us = phi i64 [ %polly.indvar_next660.us, %polly.loop_exit681.us ], [ 0, %polly.loop_header650 ]
  %190 = add nuw nsw i64 %polly.indvar659.us, %184
  %polly.access.mul.Packed_MemRef_call1521.us = mul nuw nsw i64 %polly.indvar659.us, 80
  br label %polly.loop_header667.us

polly.loop_header667.us:                          ; preds = %polly.loop_header656.us, %polly.loop_header667.us
  %polly.indvar671.us = phi i64 [ %polly.indvar_next672.us, %polly.loop_header667.us ], [ 0, %polly.loop_header656.us ]
  %polly.access.mul.call1675.us = mul nuw nsw i64 %polly.indvar671.us, 60
  %polly.access.add.call1676.us = add nuw nsw i64 %190, %polly.access.mul.call1675.us
  %polly.access.call1677.us = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1676.us
  %polly.access.call1677.load.us = load double, double* %polly.access.call1677.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1521.us = add nuw nsw i64 %polly.indvar671.us, %polly.access.mul.Packed_MemRef_call1521.us
  %polly.access.Packed_MemRef_call1521.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521.us
  store double %polly.access.call1677.load.us, double* %polly.access.Packed_MemRef_call1521.us, align 8
  %polly.indvar_next672.us = add nuw nsw i64 %polly.indvar671.us, 1
  %exitcond1010.not = icmp eq i64 %polly.indvar_next672.us, %umax1009
  br i1 %exitcond1010.not, label %polly.loop_header679.us, label %polly.loop_header667.us

polly.loop_header679.us:                          ; preds = %polly.loop_header667.us, %polly.loop_header679.us
  %polly.indvar683.us = phi i64 [ %polly.indvar_next684.us, %polly.loop_header679.us ], [ %188, %polly.loop_header667.us ]
  %polly.access.mul.call1687.us = mul nuw nsw i64 %polly.indvar683.us, 60
  %polly.access.add.call1688.us = add nuw nsw i64 %190, %polly.access.mul.call1687.us
  %polly.access.call1689.us = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1688.us
  %polly.access.call1689.load.us = load double, double* %polly.access.call1689.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1521691.us = add nuw nsw i64 %polly.indvar683.us, %polly.access.mul.Packed_MemRef_call1521.us
  %polly.access.Packed_MemRef_call1521692.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521691.us
  store double %polly.access.call1689.load.us, double* %polly.access.Packed_MemRef_call1521692.us, align 8
  %polly.indvar_next684.us = add nuw nsw i64 %polly.indvar683.us, 1
  %polly.loop_cond685.not.not.us = icmp ult i64 %polly.indvar683.us, %189
  br i1 %polly.loop_cond685.not.not.us, label %polly.loop_header679.us, label %polly.loop_exit681.us

polly.loop_exit681.us:                            ; preds = %polly.loop_header679.us
  %polly.indvar_next660.us = add nuw nsw i64 %polly.indvar659.us, 1
  %exitcond1011.not = icmp eq i64 %polly.indvar_next660.us, %185
  br i1 %exitcond1011.not, label %polly.loop_header693.preheader, label %polly.loop_header656.us

polly.loop_exit695:                               ; preds = %polly.loop_exit701
  %polly.indvar_next654 = add nuw nsw i64 %polly.indvar653, 1
  %indvars.iv.next1008 = add nuw nsw i64 %indvars.iv1007, 16
  %indvars.iv.next1013 = add nuw nsw i64 %indvars.iv1012, 16
  %exitcond1020.not = icmp eq i64 %polly.indvar_next654, 5
  br i1 %exitcond1020.not, label %polly.loop_header634.1, label %polly.loop_header650

polly.loop_header656:                             ; preds = %polly.loop_header650, %polly.loop_exit681
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_exit681 ], [ 0, %polly.loop_header650 ]
  %191 = add nuw nsw i64 %polly.indvar659, %184
  %polly.access.mul.Packed_MemRef_call1521690 = mul nuw nsw i64 %polly.indvar659, 80
  br label %polly.loop_header679

polly.loop_exit681:                               ; preds = %polly.loop_header679
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %exitcond1006.not = icmp eq i64 %polly.indvar_next660, %185
  br i1 %exitcond1006.not, label %polly.loop_header693.preheader, label %polly.loop_header656

polly.loop_header693.preheader:                   ; preds = %polly.loop_exit681.us, %polly.loop_exit681
  br label %polly.loop_header693

polly.loop_header679:                             ; preds = %polly.loop_header656, %polly.loop_header679
  %polly.indvar683 = phi i64 [ %polly.indvar_next684, %polly.loop_header679 ], [ %188, %polly.loop_header656 ]
  %polly.access.mul.call1687 = mul nuw nsw i64 %polly.indvar683, 60
  %polly.access.add.call1688 = add nuw nsw i64 %191, %polly.access.mul.call1687
  %polly.access.call1689 = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1688
  %polly.access.call1689.load = load double, double* %polly.access.call1689, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1521691 = add nuw nsw i64 %polly.indvar683, %polly.access.mul.Packed_MemRef_call1521690
  %polly.access.Packed_MemRef_call1521692 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521691
  store double %polly.access.call1689.load, double* %polly.access.Packed_MemRef_call1521692, align 8
  %polly.indvar_next684 = add nuw nsw i64 %polly.indvar683, 1
  %polly.loop_cond685.not.not = icmp ult i64 %polly.indvar683, %189
  br i1 %polly.loop_cond685.not.not, label %polly.loop_header679, label %polly.loop_exit681

polly.loop_header693:                             ; preds = %polly.loop_header693.preheader, %polly.loop_exit701
  %polly.indvar696 = phi i64 [ %polly.indvar_next697, %polly.loop_exit701 ], [ 0, %polly.loop_header693.preheader ]
  %polly.access.mul.Packed_MemRef_call1521711 = mul nuw nsw i64 %polly.indvar696, 80
  br label %polly.loop_header699

polly.loop_exit701:                               ; preds = %polly.loop_exit707
  %polly.indvar_next697 = add nuw nsw i64 %polly.indvar696, 1
  %exitcond1019.not = icmp eq i64 %polly.indvar_next697, %185
  br i1 %exitcond1019.not, label %polly.loop_exit695, label %polly.loop_header693

polly.loop_header699:                             ; preds = %polly.loop_exit707, %polly.loop_header693
  %indvars.iv1014 = phi i64 [ %indvars.iv.next1015, %polly.loop_exit707 ], [ %indvars.iv1012, %polly.loop_header693 ]
  %polly.indvar702 = phi i64 [ %polly.indvar_next703, %polly.loop_exit707 ], [ 0, %polly.loop_header693 ]
  %192 = add nuw i64 %187, %polly.indvar702
  %smin1442 = call i64 @llvm.smin.i64(i64 %192, i64 63)
  %193 = add nuw nsw i64 %smin1442, 1
  %smin1016 = call i64 @llvm.smin.i64(i64 %indvars.iv1014, i64 63)
  %194 = add nuw nsw i64 %polly.indvar702, %188
  %polly.access.add.Packed_MemRef_call2523716 = add nuw nsw i64 %194, %polly.access.mul.Packed_MemRef_call1521711
  %polly.access.Packed_MemRef_call2523717 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call2523716
  %_p_scalar_718 = load double, double* %polly.access.Packed_MemRef_call2523717, align 8
  %polly.access.Packed_MemRef_call1521725 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call2523716
  %_p_scalar_726 = load double, double* %polly.access.Packed_MemRef_call1521725, align 8
  %195 = mul nuw nsw i64 %194, 640
  %min.iters.check1443 = icmp ult i64 %smin1442, 3
  br i1 %min.iters.check1443, label %polly.loop_header705.preheader, label %vector.ph1444

vector.ph1444:                                    ; preds = %polly.loop_header699
  %n.vec1446 = and i64 %193, -4
  %broadcast.splatinsert1452 = insertelement <4 x double> poison, double %_p_scalar_718, i32 0
  %broadcast.splat1453 = shufflevector <4 x double> %broadcast.splatinsert1452, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1455 = insertelement <4 x double> poison, double %_p_scalar_726, i32 0
  %broadcast.splat1456 = shufflevector <4 x double> %broadcast.splatinsert1455, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1441

vector.body1441:                                  ; preds = %vector.body1441, %vector.ph1444
  %index1447 = phi i64 [ 0, %vector.ph1444 ], [ %index.next1448, %vector.body1441 ]
  %196 = add nuw nsw i64 %index1447, %polly.access.mul.Packed_MemRef_call1521711
  %197 = getelementptr double, double* %Packed_MemRef_call1521, i64 %196
  %198 = bitcast double* %197 to <4 x double>*
  %wide.load1451 = load <4 x double>, <4 x double>* %198, align 8
  %199 = fmul fast <4 x double> %broadcast.splat1453, %wide.load1451
  %200 = getelementptr double, double* %Packed_MemRef_call2523, i64 %196
  %201 = bitcast double* %200 to <4 x double>*
  %wide.load1454 = load <4 x double>, <4 x double>* %201, align 8
  %202 = fmul fast <4 x double> %broadcast.splat1456, %wide.load1454
  %203 = shl i64 %index1447, 3
  %204 = add nuw nsw i64 %203, %195
  %205 = getelementptr i8, i8* %call, i64 %204
  %206 = bitcast i8* %205 to <4 x double>*
  %wide.load1457 = load <4 x double>, <4 x double>* %206, align 8, !alias.scope !99, !noalias !101
  %207 = fadd fast <4 x double> %202, %199
  %208 = fmul fast <4 x double> %207, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %209 = fadd fast <4 x double> %208, %wide.load1457
  %210 = bitcast i8* %205 to <4 x double>*
  store <4 x double> %209, <4 x double>* %210, align 8, !alias.scope !99, !noalias !101
  %index.next1448 = add i64 %index1447, 4
  %211 = icmp eq i64 %index.next1448, %n.vec1446
  br i1 %211, label %middle.block1439, label %vector.body1441, !llvm.loop !110

middle.block1439:                                 ; preds = %vector.body1441
  %cmp.n1450 = icmp eq i64 %193, %n.vec1446
  br i1 %cmp.n1450, label %polly.loop_exit707, label %polly.loop_header705.preheader

polly.loop_header705.preheader:                   ; preds = %polly.loop_header699, %middle.block1439
  %polly.indvar708.ph = phi i64 [ 0, %polly.loop_header699 ], [ %n.vec1446, %middle.block1439 ]
  br label %polly.loop_header705

polly.loop_exit707:                               ; preds = %polly.loop_header705, %middle.block1439
  %polly.indvar_next703 = add nuw nsw i64 %polly.indvar702, 1
  %indvars.iv.next1015 = add nuw nsw i64 %indvars.iv1014, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar_next703, 16
  br i1 %exitcond1018.not, label %polly.loop_exit701, label %polly.loop_header699

polly.loop_header705:                             ; preds = %polly.loop_header705.preheader, %polly.loop_header705
  %polly.indvar708 = phi i64 [ %polly.indvar_next709, %polly.loop_header705 ], [ %polly.indvar708.ph, %polly.loop_header705.preheader ]
  %polly.access.add.Packed_MemRef_call1521712 = add nuw nsw i64 %polly.indvar708, %polly.access.mul.Packed_MemRef_call1521711
  %polly.access.Packed_MemRef_call1521713 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521712
  %_p_scalar_714 = load double, double* %polly.access.Packed_MemRef_call1521713, align 8
  %p_mul27.i = fmul fast double %_p_scalar_718, %_p_scalar_714
  %polly.access.Packed_MemRef_call2523721 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call1521712
  %_p_scalar_722 = load double, double* %polly.access.Packed_MemRef_call2523721, align 8
  %p_mul37.i = fmul fast double %_p_scalar_726, %_p_scalar_722
  %212 = shl i64 %polly.indvar708, 3
  %213 = add nuw nsw i64 %212, %195
  %scevgep727 = getelementptr i8, i8* %call, i64 %213
  %scevgep727728 = bitcast i8* %scevgep727 to double*
  %_p_scalar_729 = load double, double* %scevgep727728, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_729
  store double %p_add42.i, double* %scevgep727728, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next709 = add nuw nsw i64 %polly.indvar708, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar708, %smin1016
  br i1 %exitcond1017.not, label %polly.loop_exit707, label %polly.loop_header705, !llvm.loop !111

polly.loop_header868:                             ; preds = %entry, %polly.loop_exit876
  %polly.indvar871 = phi i64 [ %polly.indvar_next872, %polly.loop_exit876 ], [ 0, %entry ]
  %214 = mul nuw nsw i64 %polly.indvar871, 640
  %215 = trunc i64 %polly.indvar871 to i32
  %broadcast.splatinsert1143 = insertelement <4 x i32> poison, i32 %215, i32 0
  %broadcast.splat1144 = shufflevector <4 x i32> %broadcast.splatinsert1143, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1133

vector.body1133:                                  ; preds = %vector.body1133, %polly.loop_header868
  %index1135 = phi i64 [ 0, %polly.loop_header868 ], [ %index.next1136, %vector.body1133 ]
  %vec.ind1141 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header868 ], [ %vec.ind.next1142, %vector.body1133 ]
  %216 = mul <4 x i32> %vec.ind1141, %broadcast.splat1144
  %217 = add <4 x i32> %216, <i32 3, i32 3, i32 3, i32 3>
  %218 = urem <4 x i32> %217, <i32 80, i32 80, i32 80, i32 80>
  %219 = sitofp <4 x i32> %218 to <4 x double>
  %220 = fmul fast <4 x double> %219, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %221 = shl i64 %index1135, 3
  %222 = add nuw nsw i64 %221, %214
  %223 = getelementptr i8, i8* %call, i64 %222
  %224 = bitcast i8* %223 to <4 x double>*
  store <4 x double> %220, <4 x double>* %224, align 8, !alias.scope !112, !noalias !114
  %index.next1136 = add i64 %index1135, 4
  %vec.ind.next1142 = add <4 x i32> %vec.ind1141, <i32 4, i32 4, i32 4, i32 4>
  %225 = icmp eq i64 %index.next1136, 32
  br i1 %225, label %polly.loop_exit876, label %vector.body1133, !llvm.loop !117

polly.loop_exit876:                               ; preds = %vector.body1133
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar_next872, 32
  br i1 %exitcond1042.not, label %polly.loop_header868.1, label %polly.loop_header868

polly.loop_header895:                             ; preds = %polly.loop_exit876.2.2, %polly.loop_exit903
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_exit903 ], [ 0, %polly.loop_exit876.2.2 ]
  %226 = mul nuw nsw i64 %polly.indvar898, 480
  %227 = trunc i64 %polly.indvar898 to i32
  %broadcast.splatinsert1257 = insertelement <4 x i32> poison, i32 %227, i32 0
  %broadcast.splat1258 = shufflevector <4 x i32> %broadcast.splatinsert1257, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1247

vector.body1247:                                  ; preds = %vector.body1247, %polly.loop_header895
  %index1249 = phi i64 [ 0, %polly.loop_header895 ], [ %index.next1250, %vector.body1247 ]
  %vec.ind1255 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header895 ], [ %vec.ind.next1256, %vector.body1247 ]
  %228 = mul <4 x i32> %vec.ind1255, %broadcast.splat1258
  %229 = add <4 x i32> %228, <i32 2, i32 2, i32 2, i32 2>
  %230 = urem <4 x i32> %229, <i32 60, i32 60, i32 60, i32 60>
  %231 = sitofp <4 x i32> %230 to <4 x double>
  %232 = fmul fast <4 x double> %231, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %233 = shl i64 %index1249, 3
  %234 = add i64 %233, %226
  %235 = getelementptr i8, i8* %call2, i64 %234
  %236 = bitcast i8* %235 to <4 x double>*
  store <4 x double> %232, <4 x double>* %236, align 8, !alias.scope !116, !noalias !118
  %index.next1250 = add i64 %index1249, 4
  %vec.ind.next1256 = add <4 x i32> %vec.ind1255, <i32 4, i32 4, i32 4, i32 4>
  %237 = icmp eq i64 %index.next1250, 32
  br i1 %237, label %polly.loop_exit903, label %vector.body1247, !llvm.loop !119

polly.loop_exit903:                               ; preds = %vector.body1247
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar_next899, 32
  br i1 %exitcond1033.not, label %polly.loop_header895.1, label %polly.loop_header895

polly.loop_header921:                             ; preds = %polly.loop_exit903.1.2, %polly.loop_exit929
  %polly.indvar924 = phi i64 [ %polly.indvar_next925, %polly.loop_exit929 ], [ 0, %polly.loop_exit903.1.2 ]
  %238 = mul nuw nsw i64 %polly.indvar924, 480
  %239 = trunc i64 %polly.indvar924 to i32
  %broadcast.splatinsert1335 = insertelement <4 x i32> poison, i32 %239, i32 0
  %broadcast.splat1336 = shufflevector <4 x i32> %broadcast.splatinsert1335, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1325

vector.body1325:                                  ; preds = %vector.body1325, %polly.loop_header921
  %index1327 = phi i64 [ 0, %polly.loop_header921 ], [ %index.next1328, %vector.body1325 ]
  %vec.ind1333 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header921 ], [ %vec.ind.next1334, %vector.body1325 ]
  %240 = mul <4 x i32> %vec.ind1333, %broadcast.splat1336
  %241 = add <4 x i32> %240, <i32 1, i32 1, i32 1, i32 1>
  %242 = urem <4 x i32> %241, <i32 80, i32 80, i32 80, i32 80>
  %243 = sitofp <4 x i32> %242 to <4 x double>
  %244 = fmul fast <4 x double> %243, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %245 = shl i64 %index1327, 3
  %246 = add i64 %245, %238
  %247 = getelementptr i8, i8* %call1, i64 %246
  %248 = bitcast i8* %247 to <4 x double>*
  store <4 x double> %244, <4 x double>* %248, align 8, !alias.scope !115, !noalias !120
  %index.next1328 = add i64 %index1327, 4
  %vec.ind.next1334 = add <4 x i32> %vec.ind1333, <i32 4, i32 4, i32 4, i32 4>
  %249 = icmp eq i64 %index.next1328, 32
  br i1 %249, label %polly.loop_exit929, label %vector.body1325, !llvm.loop !121

polly.loop_exit929:                               ; preds = %vector.body1325
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar_next925, 32
  br i1 %exitcond1027.not, label %polly.loop_header921.1, label %polly.loop_header921

polly.loop_header212.1:                           ; preds = %polly.loop_exit267, %polly.loop_exit220.1
  %polly.indvar215.1 = phi i64 [ %polly.indvar_next216.1, %polly.loop_exit220.1 ], [ 0, %polly.loop_exit267 ]
  %250 = add nuw nsw i64 %polly.indvar215.1, %100
  %polly.access.mul.Packed_MemRef_call2.1 = mul nuw nsw i64 %polly.indvar215.1, 80
  br label %polly.loop_header218.1

polly.loop_header218.1:                           ; preds = %polly.loop_header218.1, %polly.loop_header212.1
  %polly.indvar221.1 = phi i64 [ 0, %polly.loop_header212.1 ], [ %polly.indvar_next222.1, %polly.loop_header218.1 ]
  %251 = mul i64 %polly.indvar221.1, 60
  %polly.access.mul.call2225.1 = add i64 %251, 3840
  %polly.access.add.call2226.1 = add nuw nsw i64 %250, %polly.access.mul.call2225.1
  %polly.access.call2227.1 = getelementptr double, double* %polly.access.cast.call2744, i64 %polly.access.add.call2226.1
  %polly.access.call2227.load.1 = load double, double* %polly.access.call2227.1, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2.1 = add nuw nsw i64 %polly.indvar221.1, %polly.access.mul.Packed_MemRef_call2.1
  %polly.access.Packed_MemRef_call2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.1
  store double %polly.access.call2227.load.1, double* %polly.access.Packed_MemRef_call2.1, align 8
  %polly.indvar_next222.1 = add nuw nsw i64 %polly.indvar221.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next222.1, 16
  br i1 %exitcond.1.not, label %polly.loop_exit220.1, label %polly.loop_header218.1

polly.loop_exit220.1:                             ; preds = %polly.loop_header218.1
  %polly.indvar_next216.1 = add nuw nsw i64 %polly.indvar215.1, 1
  %exitcond971.1.not = icmp eq i64 %polly.indvar_next216.1, %101
  br i1 %exitcond971.1.not, label %polly.loop_header234.1, label %polly.loop_header212.1

polly.loop_header234.1:                           ; preds = %polly.loop_exit220.1, %polly.loop_exit253.1
  %polly.indvar237.1 = phi i64 [ %polly.indvar_next238.1, %polly.loop_exit253.1 ], [ 0, %polly.loop_exit220.1 ]
  %252 = add nuw nsw i64 %polly.indvar237.1, %100
  %polly.access.mul.Packed_MemRef_call1262.1 = mul nuw nsw i64 %polly.indvar237.1, 80
  br label %polly.loop_header251.1

polly.loop_header251.1:                           ; preds = %polly.loop_header251.1, %polly.loop_header234.1
  %polly.indvar255.1 = phi i64 [ %polly.indvar_next256.1, %polly.loop_header251.1 ], [ 0, %polly.loop_header234.1 ]
  %253 = mul nuw nsw i64 %polly.indvar255.1, 60
  %polly.access.mul.call1259.1 = add nuw nsw i64 %253, 3840
  %polly.access.add.call1260.1 = add nuw nsw i64 %252, %polly.access.mul.call1259.1
  %polly.access.call1261.1 = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1260.1
  %polly.access.call1261.load.1 = load double, double* %polly.access.call1261.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.1 = add nuw nsw i64 %polly.indvar255.1, %polly.access.mul.Packed_MemRef_call1262.1
  %polly.access.Packed_MemRef_call1264.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.1
  store double %polly.access.call1261.load.1, double* %polly.access.Packed_MemRef_call1264.1, align 8
  %polly.indvar_next256.1 = add nuw nsw i64 %polly.indvar255.1, 1
  %polly.loop_cond257.not.not.1 = icmp ult i64 %polly.indvar255.1, 15
  br i1 %polly.loop_cond257.not.not.1, label %polly.loop_header251.1, label %polly.loop_exit253.1

polly.loop_exit253.1:                             ; preds = %polly.loop_header251.1
  %polly.indvar_next238.1 = add nuw nsw i64 %polly.indvar237.1, 1
  %exitcond972.1.not = icmp eq i64 %polly.indvar_next238.1, %101
  br i1 %exitcond972.1.not, label %polly.loop_header265.1, label %polly.loop_header234.1

polly.loop_header265.1:                           ; preds = %polly.loop_exit253.1, %polly.loop_exit273.1
  %polly.indvar268.1 = phi i64 [ %polly.indvar_next269.1, %polly.loop_exit273.1 ], [ 0, %polly.loop_exit253.1 ]
  %polly.access.mul.Packed_MemRef_call1283.1 = mul nuw nsw i64 %polly.indvar268.1, 80
  br label %polly.loop_header271.1

polly.loop_header271.1:                           ; preds = %polly.loop_exit279.1, %polly.loop_header265.1
  %indvars.iv977.1 = phi i64 [ %indvars.iv.next978.1, %polly.loop_exit279.1 ], [ 0, %polly.loop_header265.1 ]
  %polly.indvar274.1 = phi i64 [ %polly.indvar_next275.1, %polly.loop_exit279.1 ], [ 0, %polly.loop_header265.1 ]
  %254 = add nuw i64 %indvars.iv977.1, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv977.1, i64 63)
  %polly.access.add.Packed_MemRef_call2288.1 = add nuw nsw i64 %polly.indvar274.1, %polly.access.mul.Packed_MemRef_call1283.1
  %polly.access.Packed_MemRef_call2289.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.1
  %_p_scalar_290.1 = load double, double* %polly.access.Packed_MemRef_call2289.1, align 8
  %polly.access.Packed_MemRef_call1297.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2288.1
  %_p_scalar_298.1 = load double, double* %polly.access.Packed_MemRef_call1297.1, align 8
  %255 = mul i64 %polly.indvar274.1, 640
  %min.iters.check1550 = icmp ult i64 %indvars.iv977.1, 3
  br i1 %min.iters.check1550, label %polly.loop_header277.1.preheader, label %vector.ph1551

vector.ph1551:                                    ; preds = %polly.loop_header271.1
  %n.vec1553 = and i64 %254, -4
  %broadcast.splatinsert1559 = insertelement <4 x double> poison, double %_p_scalar_290.1, i32 0
  %broadcast.splat1560 = shufflevector <4 x double> %broadcast.splatinsert1559, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1562 = insertelement <4 x double> poison, double %_p_scalar_298.1, i32 0
  %broadcast.splat1563 = shufflevector <4 x double> %broadcast.splatinsert1562, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1549

vector.body1549:                                  ; preds = %vector.body1549, %vector.ph1551
  %index1554 = phi i64 [ 0, %vector.ph1551 ], [ %index.next1555, %vector.body1549 ]
  %256 = add nuw nsw i64 %index1554, %polly.access.mul.Packed_MemRef_call1283.1
  %257 = getelementptr double, double* %Packed_MemRef_call1, i64 %256
  %258 = bitcast double* %257 to <4 x double>*
  %wide.load1558 = load <4 x double>, <4 x double>* %258, align 8
  %259 = fmul fast <4 x double> %broadcast.splat1560, %wide.load1558
  %260 = getelementptr double, double* %Packed_MemRef_call2, i64 %256
  %261 = bitcast double* %260 to <4 x double>*
  %wide.load1561 = load <4 x double>, <4 x double>* %261, align 8
  %262 = fmul fast <4 x double> %broadcast.splat1563, %wide.load1561
  %263 = shl i64 %index1554, 3
  %264 = add i64 %263, %255
  %265 = add i64 %264, 41472
  %266 = getelementptr i8, i8* %call, i64 %265
  %267 = bitcast i8* %266 to <4 x double>*
  %wide.load1564 = load <4 x double>, <4 x double>* %267, align 8, !alias.scope !72, !noalias !74
  %268 = fadd fast <4 x double> %262, %259
  %269 = fmul fast <4 x double> %268, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %270 = fadd fast <4 x double> %269, %wide.load1564
  %271 = bitcast i8* %266 to <4 x double>*
  store <4 x double> %270, <4 x double>* %271, align 8, !alias.scope !72, !noalias !74
  %index.next1555 = add i64 %index1554, 4
  %272 = icmp eq i64 %index.next1555, %n.vec1553
  br i1 %272, label %middle.block1547, label %vector.body1549, !llvm.loop !122

middle.block1547:                                 ; preds = %vector.body1549
  %cmp.n1557 = icmp eq i64 %254, %n.vec1553
  br i1 %cmp.n1557, label %polly.loop_exit279.1, label %polly.loop_header277.1.preheader

polly.loop_header277.1.preheader:                 ; preds = %polly.loop_header271.1, %middle.block1547
  %polly.indvar280.1.ph = phi i64 [ 0, %polly.loop_header271.1 ], [ %n.vec1553, %middle.block1547 ]
  br label %polly.loop_header277.1

polly.loop_header277.1:                           ; preds = %polly.loop_header277.1.preheader, %polly.loop_header277.1
  %polly.indvar280.1 = phi i64 [ %polly.indvar_next281.1, %polly.loop_header277.1 ], [ %polly.indvar280.1.ph, %polly.loop_header277.1.preheader ]
  %polly.access.add.Packed_MemRef_call1284.1 = add nuw nsw i64 %polly.indvar280.1, %polly.access.mul.Packed_MemRef_call1283.1
  %polly.access.Packed_MemRef_call1285.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1284.1
  %_p_scalar_286.1 = load double, double* %polly.access.Packed_MemRef_call1285.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_290.1, %_p_scalar_286.1
  %polly.access.Packed_MemRef_call2293.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1284.1
  %_p_scalar_294.1 = load double, double* %polly.access.Packed_MemRef_call2293.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_298.1, %_p_scalar_294.1
  %273 = shl i64 %polly.indvar280.1, 3
  %274 = add i64 %273, %255
  %275 = add i64 %274, 41472
  %scevgep299.1 = getelementptr i8, i8* %call, i64 %275
  %scevgep299300.1 = bitcast i8* %scevgep299.1 to double*
  %_p_scalar_301.1 = load double, double* %scevgep299300.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_301.1
  store double %p_add42.i118.1, double* %scevgep299300.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next281.1 = add nuw nsw i64 %polly.indvar280.1, 1
  %exitcond979.1.not = icmp eq i64 %polly.indvar280.1, %smin.1
  br i1 %exitcond979.1.not, label %polly.loop_exit279.1, label %polly.loop_header277.1, !llvm.loop !123

polly.loop_exit279.1:                             ; preds = %polly.loop_header277.1, %middle.block1547
  %polly.indvar_next275.1 = add nuw nsw i64 %polly.indvar274.1, 1
  %indvars.iv.next978.1 = add nuw nsw i64 %indvars.iv977.1, 1
  %exitcond980.1.not = icmp eq i64 %polly.indvar_next275.1, 16
  br i1 %exitcond980.1.not, label %polly.loop_exit273.1, label %polly.loop_header271.1

polly.loop_exit273.1:                             ; preds = %polly.loop_exit279.1
  %polly.indvar_next269.1 = add nuw nsw i64 %polly.indvar268.1, 1
  %exitcond981.1.not = icmp eq i64 %polly.indvar_next269.1, %101
  br i1 %exitcond981.1.not, label %polly.loop_exit230.1, label %polly.loop_header265.1

polly.loop_exit230.1:                             ; preds = %polly.loop_exit273.1
  br i1 %polly.loop_cond205, label %polly.loop_header200, label %polly.exiting

polly.loop_header420.1:                           ; preds = %polly.loop_exit481, %polly.loop_exit428.1
  %polly.indvar423.1 = phi i64 [ %polly.indvar_next424.1, %polly.loop_exit428.1 ], [ 0, %polly.loop_exit481 ]
  %276 = add nuw nsw i64 %polly.indvar423.1, %142
  %polly.access.mul.Packed_MemRef_call2309.1 = mul nuw nsw i64 %polly.indvar423.1, 80
  br label %polly.loop_header426.1

polly.loop_header426.1:                           ; preds = %polly.loop_header426.1, %polly.loop_header420.1
  %polly.indvar429.1 = phi i64 [ 0, %polly.loop_header420.1 ], [ %polly.indvar_next430.1, %polly.loop_header426.1 ]
  %277 = mul i64 %polly.indvar429.1, 60
  %polly.access.mul.call2433.1 = add i64 %277, 3840
  %polly.access.add.call2434.1 = add nuw nsw i64 %276, %polly.access.mul.call2433.1
  %polly.access.call2435.1 = getelementptr double, double* %polly.access.cast.call2744, i64 %polly.access.add.call2434.1
  %polly.access.call2435.load.1 = load double, double* %polly.access.call2435.1, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2309.1 = add nuw nsw i64 %polly.indvar429.1, %polly.access.mul.Packed_MemRef_call2309.1
  %polly.access.Packed_MemRef_call2309.1 = getelementptr double, double* %Packed_MemRef_call2309, i64 %polly.access.add.Packed_MemRef_call2309.1
  store double %polly.access.call2435.load.1, double* %polly.access.Packed_MemRef_call2309.1, align 8
  %polly.indvar_next430.1 = add nuw nsw i64 %polly.indvar429.1, 1
  %exitcond985.1.not = icmp eq i64 %polly.indvar_next430.1, 16
  br i1 %exitcond985.1.not, label %polly.loop_exit428.1, label %polly.loop_header426.1

polly.loop_exit428.1:                             ; preds = %polly.loop_header426.1
  %polly.indvar_next424.1 = add nuw nsw i64 %polly.indvar423.1, 1
  %exitcond986.1.not = icmp eq i64 %polly.indvar_next424.1, %143
  br i1 %exitcond986.1.not, label %polly.loop_header442.1, label %polly.loop_header420.1

polly.loop_header442.1:                           ; preds = %polly.loop_exit428.1, %polly.loop_exit467.1
  %polly.indvar445.1 = phi i64 [ %polly.indvar_next446.1, %polly.loop_exit467.1 ], [ 0, %polly.loop_exit428.1 ]
  %278 = add nuw nsw i64 %polly.indvar445.1, %142
  %polly.access.mul.Packed_MemRef_call1307476.1 = mul nuw nsw i64 %polly.indvar445.1, 80
  br label %polly.loop_header465.1

polly.loop_header465.1:                           ; preds = %polly.loop_header465.1, %polly.loop_header442.1
  %polly.indvar469.1 = phi i64 [ %polly.indvar_next470.1, %polly.loop_header465.1 ], [ 0, %polly.loop_header442.1 ]
  %279 = mul nuw nsw i64 %polly.indvar469.1, 60
  %polly.access.mul.call1473.1 = add nuw nsw i64 %279, 3840
  %polly.access.add.call1474.1 = add nuw nsw i64 %278, %polly.access.mul.call1473.1
  %polly.access.call1475.1 = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1474.1
  %polly.access.call1475.load.1 = load double, double* %polly.access.call1475.1, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1307477.1 = add nuw nsw i64 %polly.indvar469.1, %polly.access.mul.Packed_MemRef_call1307476.1
  %polly.access.Packed_MemRef_call1307478.1 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307477.1
  store double %polly.access.call1475.load.1, double* %polly.access.Packed_MemRef_call1307478.1, align 8
  %polly.indvar_next470.1 = add nuw nsw i64 %polly.indvar469.1, 1
  %polly.loop_cond471.not.not.1 = icmp ult i64 %polly.indvar469.1, 15
  br i1 %polly.loop_cond471.not.not.1, label %polly.loop_header465.1, label %polly.loop_exit467.1

polly.loop_exit467.1:                             ; preds = %polly.loop_header465.1
  %polly.indvar_next446.1 = add nuw nsw i64 %polly.indvar445.1, 1
  %exitcond987.1.not = icmp eq i64 %polly.indvar_next446.1, %143
  br i1 %exitcond987.1.not, label %polly.loop_header479.1, label %polly.loop_header442.1

polly.loop_header479.1:                           ; preds = %polly.loop_exit467.1, %polly.loop_exit487.1
  %polly.indvar482.1 = phi i64 [ %polly.indvar_next483.1, %polly.loop_exit487.1 ], [ 0, %polly.loop_exit467.1 ]
  %polly.access.mul.Packed_MemRef_call1307497.1 = mul nuw nsw i64 %polly.indvar482.1, 80
  br label %polly.loop_header485.1

polly.loop_header485.1:                           ; preds = %polly.loop_exit493.1, %polly.loop_header479.1
  %indvars.iv995.1 = phi i64 [ %indvars.iv.next996.1, %polly.loop_exit493.1 ], [ 0, %polly.loop_header479.1 ]
  %polly.indvar488.1 = phi i64 [ %polly.indvar_next489.1, %polly.loop_exit493.1 ], [ 0, %polly.loop_header479.1 ]
  %280 = add nuw i64 %indvars.iv995.1, 1
  %smin997.1 = call i64 @llvm.smin.i64(i64 %indvars.iv995.1, i64 63)
  %polly.access.add.Packed_MemRef_call2309502.1 = add nuw nsw i64 %polly.indvar488.1, %polly.access.mul.Packed_MemRef_call1307497.1
  %polly.access.Packed_MemRef_call2309503.1 = getelementptr double, double* %Packed_MemRef_call2309, i64 %polly.access.add.Packed_MemRef_call2309502.1
  %_p_scalar_504.1 = load double, double* %polly.access.Packed_MemRef_call2309503.1, align 8
  %polly.access.Packed_MemRef_call1307511.1 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call2309502.1
  %_p_scalar_512.1 = load double, double* %polly.access.Packed_MemRef_call1307511.1, align 8
  %281 = mul i64 %polly.indvar488.1, 640
  %min.iters.check1487 = icmp ult i64 %indvars.iv995.1, 3
  br i1 %min.iters.check1487, label %polly.loop_header491.1.preheader, label %vector.ph1488

vector.ph1488:                                    ; preds = %polly.loop_header485.1
  %n.vec1490 = and i64 %280, -4
  %broadcast.splatinsert1496 = insertelement <4 x double> poison, double %_p_scalar_504.1, i32 0
  %broadcast.splat1497 = shufflevector <4 x double> %broadcast.splatinsert1496, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1499 = insertelement <4 x double> poison, double %_p_scalar_512.1, i32 0
  %broadcast.splat1500 = shufflevector <4 x double> %broadcast.splatinsert1499, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1486

vector.body1486:                                  ; preds = %vector.body1486, %vector.ph1488
  %index1491 = phi i64 [ 0, %vector.ph1488 ], [ %index.next1492, %vector.body1486 ]
  %282 = add nuw nsw i64 %index1491, %polly.access.mul.Packed_MemRef_call1307497.1
  %283 = getelementptr double, double* %Packed_MemRef_call1307, i64 %282
  %284 = bitcast double* %283 to <4 x double>*
  %wide.load1495 = load <4 x double>, <4 x double>* %284, align 8
  %285 = fmul fast <4 x double> %broadcast.splat1497, %wide.load1495
  %286 = getelementptr double, double* %Packed_MemRef_call2309, i64 %282
  %287 = bitcast double* %286 to <4 x double>*
  %wide.load1498 = load <4 x double>, <4 x double>* %287, align 8
  %288 = fmul fast <4 x double> %broadcast.splat1500, %wide.load1498
  %289 = shl i64 %index1491, 3
  %290 = add i64 %289, %281
  %291 = add i64 %290, 41472
  %292 = getelementptr i8, i8* %call, i64 %291
  %293 = bitcast i8* %292 to <4 x double>*
  %wide.load1501 = load <4 x double>, <4 x double>* %293, align 8, !alias.scope !86, !noalias !88
  %294 = fadd fast <4 x double> %288, %285
  %295 = fmul fast <4 x double> %294, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %296 = fadd fast <4 x double> %295, %wide.load1501
  %297 = bitcast i8* %292 to <4 x double>*
  store <4 x double> %296, <4 x double>* %297, align 8, !alias.scope !86, !noalias !88
  %index.next1492 = add i64 %index1491, 4
  %298 = icmp eq i64 %index.next1492, %n.vec1490
  br i1 %298, label %middle.block1484, label %vector.body1486, !llvm.loop !124

middle.block1484:                                 ; preds = %vector.body1486
  %cmp.n1494 = icmp eq i64 %280, %n.vec1490
  br i1 %cmp.n1494, label %polly.loop_exit493.1, label %polly.loop_header491.1.preheader

polly.loop_header491.1.preheader:                 ; preds = %polly.loop_header485.1, %middle.block1484
  %polly.indvar494.1.ph = phi i64 [ 0, %polly.loop_header485.1 ], [ %n.vec1490, %middle.block1484 ]
  br label %polly.loop_header491.1

polly.loop_header491.1:                           ; preds = %polly.loop_header491.1.preheader, %polly.loop_header491.1
  %polly.indvar494.1 = phi i64 [ %polly.indvar_next495.1, %polly.loop_header491.1 ], [ %polly.indvar494.1.ph, %polly.loop_header491.1.preheader ]
  %polly.access.add.Packed_MemRef_call1307498.1 = add nuw nsw i64 %polly.indvar494.1, %polly.access.mul.Packed_MemRef_call1307497.1
  %polly.access.Packed_MemRef_call1307499.1 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307498.1
  %_p_scalar_500.1 = load double, double* %polly.access.Packed_MemRef_call1307499.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_504.1, %_p_scalar_500.1
  %polly.access.Packed_MemRef_call2309507.1 = getelementptr double, double* %Packed_MemRef_call2309, i64 %polly.access.add.Packed_MemRef_call1307498.1
  %_p_scalar_508.1 = load double, double* %polly.access.Packed_MemRef_call2309507.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_512.1, %_p_scalar_508.1
  %299 = shl i64 %polly.indvar494.1, 3
  %300 = add i64 %299, %281
  %301 = add i64 %300, 41472
  %scevgep513.1 = getelementptr i8, i8* %call, i64 %301
  %scevgep513514.1 = bitcast i8* %scevgep513.1 to double*
  %_p_scalar_515.1 = load double, double* %scevgep513514.1, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_515.1
  store double %p_add42.i79.1, double* %scevgep513514.1, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next495.1 = add nuw nsw i64 %polly.indvar494.1, 1
  %exitcond998.1.not = icmp eq i64 %polly.indvar494.1, %smin997.1
  br i1 %exitcond998.1.not, label %polly.loop_exit493.1, label %polly.loop_header491.1, !llvm.loop !125

polly.loop_exit493.1:                             ; preds = %polly.loop_header491.1, %middle.block1484
  %polly.indvar_next489.1 = add nuw nsw i64 %polly.indvar488.1, 1
  %indvars.iv.next996.1 = add nuw nsw i64 %indvars.iv995.1, 1
  %exitcond999.1.not = icmp eq i64 %polly.indvar_next489.1, 16
  br i1 %exitcond999.1.not, label %polly.loop_exit487.1, label %polly.loop_header485.1

polly.loop_exit487.1:                             ; preds = %polly.loop_exit493.1
  %polly.indvar_next483.1 = add nuw nsw i64 %polly.indvar482.1, 1
  %exitcond1000.1.not = icmp eq i64 %polly.indvar_next483.1, %143
  br i1 %exitcond1000.1.not, label %polly.loop_exit438.1, label %polly.loop_header479.1

polly.loop_exit438.1:                             ; preds = %polly.loop_exit487.1
  br i1 %polly.loop_cond413, label %polly.loop_header408, label %polly.exiting305

polly.loop_header634.1:                           ; preds = %polly.loop_exit695, %polly.loop_exit642.1
  %polly.indvar637.1 = phi i64 [ %polly.indvar_next638.1, %polly.loop_exit642.1 ], [ 0, %polly.loop_exit695 ]
  %302 = add nuw nsw i64 %polly.indvar637.1, %184
  %polly.access.mul.Packed_MemRef_call2523.1 = mul nuw nsw i64 %polly.indvar637.1, 80
  br label %polly.loop_header640.1

polly.loop_header640.1:                           ; preds = %polly.loop_header640.1, %polly.loop_header634.1
  %polly.indvar643.1 = phi i64 [ 0, %polly.loop_header634.1 ], [ %polly.indvar_next644.1, %polly.loop_header640.1 ]
  %303 = mul i64 %polly.indvar643.1, 60
  %polly.access.mul.call2647.1 = add i64 %303, 3840
  %polly.access.add.call2648.1 = add nuw nsw i64 %302, %polly.access.mul.call2647.1
  %polly.access.call2649.1 = getelementptr double, double* %polly.access.cast.call2744, i64 %polly.access.add.call2648.1
  %polly.access.call2649.load.1 = load double, double* %polly.access.call2649.1, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2523.1 = add nuw nsw i64 %polly.indvar643.1, %polly.access.mul.Packed_MemRef_call2523.1
  %polly.access.Packed_MemRef_call2523.1 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call2523.1
  store double %polly.access.call2649.load.1, double* %polly.access.Packed_MemRef_call2523.1, align 8
  %polly.indvar_next644.1 = add nuw nsw i64 %polly.indvar643.1, 1
  %exitcond1004.1.not = icmp eq i64 %polly.indvar_next644.1, 16
  br i1 %exitcond1004.1.not, label %polly.loop_exit642.1, label %polly.loop_header640.1

polly.loop_exit642.1:                             ; preds = %polly.loop_header640.1
  %polly.indvar_next638.1 = add nuw nsw i64 %polly.indvar637.1, 1
  %exitcond1005.1.not = icmp eq i64 %polly.indvar_next638.1, %185
  br i1 %exitcond1005.1.not, label %polly.loop_header656.1, label %polly.loop_header634.1

polly.loop_header656.1:                           ; preds = %polly.loop_exit642.1, %polly.loop_exit681.1
  %polly.indvar659.1 = phi i64 [ %polly.indvar_next660.1, %polly.loop_exit681.1 ], [ 0, %polly.loop_exit642.1 ]
  %304 = add nuw nsw i64 %polly.indvar659.1, %184
  %polly.access.mul.Packed_MemRef_call1521690.1 = mul nuw nsw i64 %polly.indvar659.1, 80
  br label %polly.loop_header679.1

polly.loop_header679.1:                           ; preds = %polly.loop_header679.1, %polly.loop_header656.1
  %polly.indvar683.1 = phi i64 [ %polly.indvar_next684.1, %polly.loop_header679.1 ], [ 0, %polly.loop_header656.1 ]
  %305 = mul nuw nsw i64 %polly.indvar683.1, 60
  %polly.access.mul.call1687.1 = add nuw nsw i64 %305, 3840
  %polly.access.add.call1688.1 = add nuw nsw i64 %304, %polly.access.mul.call1687.1
  %polly.access.call1689.1 = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1688.1
  %polly.access.call1689.load.1 = load double, double* %polly.access.call1689.1, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1521691.1 = add nuw nsw i64 %polly.indvar683.1, %polly.access.mul.Packed_MemRef_call1521690.1
  %polly.access.Packed_MemRef_call1521692.1 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521691.1
  store double %polly.access.call1689.load.1, double* %polly.access.Packed_MemRef_call1521692.1, align 8
  %polly.indvar_next684.1 = add nuw nsw i64 %polly.indvar683.1, 1
  %polly.loop_cond685.not.not.1 = icmp ult i64 %polly.indvar683.1, 15
  br i1 %polly.loop_cond685.not.not.1, label %polly.loop_header679.1, label %polly.loop_exit681.1

polly.loop_exit681.1:                             ; preds = %polly.loop_header679.1
  %polly.indvar_next660.1 = add nuw nsw i64 %polly.indvar659.1, 1
  %exitcond1006.1.not = icmp eq i64 %polly.indvar_next660.1, %185
  br i1 %exitcond1006.1.not, label %polly.loop_header693.1, label %polly.loop_header656.1

polly.loop_header693.1:                           ; preds = %polly.loop_exit681.1, %polly.loop_exit701.1
  %polly.indvar696.1 = phi i64 [ %polly.indvar_next697.1, %polly.loop_exit701.1 ], [ 0, %polly.loop_exit681.1 ]
  %polly.access.mul.Packed_MemRef_call1521711.1 = mul nuw nsw i64 %polly.indvar696.1, 80
  br label %polly.loop_header699.1

polly.loop_header699.1:                           ; preds = %polly.loop_exit707.1, %polly.loop_header693.1
  %indvars.iv1014.1 = phi i64 [ %indvars.iv.next1015.1, %polly.loop_exit707.1 ], [ 0, %polly.loop_header693.1 ]
  %polly.indvar702.1 = phi i64 [ %polly.indvar_next703.1, %polly.loop_exit707.1 ], [ 0, %polly.loop_header693.1 ]
  %306 = add nuw i64 %indvars.iv1014.1, 1
  %smin1016.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1014.1, i64 63)
  %polly.access.add.Packed_MemRef_call2523716.1 = add nuw nsw i64 %polly.indvar702.1, %polly.access.mul.Packed_MemRef_call1521711.1
  %polly.access.Packed_MemRef_call2523717.1 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call2523716.1
  %_p_scalar_718.1 = load double, double* %polly.access.Packed_MemRef_call2523717.1, align 8
  %polly.access.Packed_MemRef_call1521725.1 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call2523716.1
  %_p_scalar_726.1 = load double, double* %polly.access.Packed_MemRef_call1521725.1, align 8
  %307 = mul i64 %polly.indvar702.1, 640
  %min.iters.check1424 = icmp ult i64 %indvars.iv1014.1, 3
  br i1 %min.iters.check1424, label %polly.loop_header705.1.preheader, label %vector.ph1425

vector.ph1425:                                    ; preds = %polly.loop_header699.1
  %n.vec1427 = and i64 %306, -4
  %broadcast.splatinsert1433 = insertelement <4 x double> poison, double %_p_scalar_718.1, i32 0
  %broadcast.splat1434 = shufflevector <4 x double> %broadcast.splatinsert1433, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1436 = insertelement <4 x double> poison, double %_p_scalar_726.1, i32 0
  %broadcast.splat1437 = shufflevector <4 x double> %broadcast.splatinsert1436, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1423

vector.body1423:                                  ; preds = %vector.body1423, %vector.ph1425
  %index1428 = phi i64 [ 0, %vector.ph1425 ], [ %index.next1429, %vector.body1423 ]
  %308 = add nuw nsw i64 %index1428, %polly.access.mul.Packed_MemRef_call1521711.1
  %309 = getelementptr double, double* %Packed_MemRef_call1521, i64 %308
  %310 = bitcast double* %309 to <4 x double>*
  %wide.load1432 = load <4 x double>, <4 x double>* %310, align 8
  %311 = fmul fast <4 x double> %broadcast.splat1434, %wide.load1432
  %312 = getelementptr double, double* %Packed_MemRef_call2523, i64 %308
  %313 = bitcast double* %312 to <4 x double>*
  %wide.load1435 = load <4 x double>, <4 x double>* %313, align 8
  %314 = fmul fast <4 x double> %broadcast.splat1437, %wide.load1435
  %315 = shl i64 %index1428, 3
  %316 = add i64 %315, %307
  %317 = add i64 %316, 41472
  %318 = getelementptr i8, i8* %call, i64 %317
  %319 = bitcast i8* %318 to <4 x double>*
  %wide.load1438 = load <4 x double>, <4 x double>* %319, align 8, !alias.scope !99, !noalias !101
  %320 = fadd fast <4 x double> %314, %311
  %321 = fmul fast <4 x double> %320, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %322 = fadd fast <4 x double> %321, %wide.load1438
  %323 = bitcast i8* %318 to <4 x double>*
  store <4 x double> %322, <4 x double>* %323, align 8, !alias.scope !99, !noalias !101
  %index.next1429 = add i64 %index1428, 4
  %324 = icmp eq i64 %index.next1429, %n.vec1427
  br i1 %324, label %middle.block1421, label %vector.body1423, !llvm.loop !126

middle.block1421:                                 ; preds = %vector.body1423
  %cmp.n1431 = icmp eq i64 %306, %n.vec1427
  br i1 %cmp.n1431, label %polly.loop_exit707.1, label %polly.loop_header705.1.preheader

polly.loop_header705.1.preheader:                 ; preds = %polly.loop_header699.1, %middle.block1421
  %polly.indvar708.1.ph = phi i64 [ 0, %polly.loop_header699.1 ], [ %n.vec1427, %middle.block1421 ]
  br label %polly.loop_header705.1

polly.loop_header705.1:                           ; preds = %polly.loop_header705.1.preheader, %polly.loop_header705.1
  %polly.indvar708.1 = phi i64 [ %polly.indvar_next709.1, %polly.loop_header705.1 ], [ %polly.indvar708.1.ph, %polly.loop_header705.1.preheader ]
  %polly.access.add.Packed_MemRef_call1521712.1 = add nuw nsw i64 %polly.indvar708.1, %polly.access.mul.Packed_MemRef_call1521711.1
  %polly.access.Packed_MemRef_call1521713.1 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521712.1
  %_p_scalar_714.1 = load double, double* %polly.access.Packed_MemRef_call1521713.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_718.1, %_p_scalar_714.1
  %polly.access.Packed_MemRef_call2523721.1 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call1521712.1
  %_p_scalar_722.1 = load double, double* %polly.access.Packed_MemRef_call2523721.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_726.1, %_p_scalar_722.1
  %325 = shl i64 %polly.indvar708.1, 3
  %326 = add i64 %325, %307
  %327 = add i64 %326, 41472
  %scevgep727.1 = getelementptr i8, i8* %call, i64 %327
  %scevgep727728.1 = bitcast i8* %scevgep727.1 to double*
  %_p_scalar_729.1 = load double, double* %scevgep727728.1, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_729.1
  store double %p_add42.i.1, double* %scevgep727728.1, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next709.1 = add nuw nsw i64 %polly.indvar708.1, 1
  %exitcond1017.1.not = icmp eq i64 %polly.indvar708.1, %smin1016.1
  br i1 %exitcond1017.1.not, label %polly.loop_exit707.1, label %polly.loop_header705.1, !llvm.loop !127

polly.loop_exit707.1:                             ; preds = %polly.loop_header705.1, %middle.block1421
  %polly.indvar_next703.1 = add nuw nsw i64 %polly.indvar702.1, 1
  %indvars.iv.next1015.1 = add nuw nsw i64 %indvars.iv1014.1, 1
  %exitcond1018.1.not = icmp eq i64 %polly.indvar_next703.1, 16
  br i1 %exitcond1018.1.not, label %polly.loop_exit701.1, label %polly.loop_header699.1

polly.loop_exit701.1:                             ; preds = %polly.loop_exit707.1
  %polly.indvar_next697.1 = add nuw nsw i64 %polly.indvar696.1, 1
  %exitcond1019.1.not = icmp eq i64 %polly.indvar_next697.1, %185
  br i1 %exitcond1019.1.not, label %polly.loop_exit652.1, label %polly.loop_header693.1

polly.loop_exit652.1:                             ; preds = %polly.loop_exit701.1
  br i1 %polly.loop_cond627, label %polly.loop_header622, label %polly.exiting519

polly.loop_header921.1:                           ; preds = %polly.loop_exit929, %polly.loop_exit929.1
  %polly.indvar924.1 = phi i64 [ %polly.indvar_next925.1, %polly.loop_exit929.1 ], [ 0, %polly.loop_exit929 ]
  %328 = mul nuw nsw i64 %polly.indvar924.1, 480
  %329 = trunc i64 %polly.indvar924.1 to i32
  %broadcast.splatinsert1347 = insertelement <4 x i32> poison, i32 %329, i32 0
  %broadcast.splat1348 = shufflevector <4 x i32> %broadcast.splatinsert1347, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1339

vector.body1339:                                  ; preds = %vector.body1339, %polly.loop_header921.1
  %index1341 = phi i64 [ 0, %polly.loop_header921.1 ], [ %index.next1342, %vector.body1339 ]
  %vec.ind1345 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header921.1 ], [ %vec.ind.next1346, %vector.body1339 ]
  %330 = add nuw nsw <4 x i64> %vec.ind1345, <i64 32, i64 32, i64 32, i64 32>
  %331 = trunc <4 x i64> %330 to <4 x i32>
  %332 = mul <4 x i32> %broadcast.splat1348, %331
  %333 = add <4 x i32> %332, <i32 1, i32 1, i32 1, i32 1>
  %334 = urem <4 x i32> %333, <i32 80, i32 80, i32 80, i32 80>
  %335 = sitofp <4 x i32> %334 to <4 x double>
  %336 = fmul fast <4 x double> %335, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %337 = extractelement <4 x i64> %330, i32 0
  %338 = shl i64 %337, 3
  %339 = add i64 %338, %328
  %340 = getelementptr i8, i8* %call1, i64 %339
  %341 = bitcast i8* %340 to <4 x double>*
  store <4 x double> %336, <4 x double>* %341, align 8, !alias.scope !115, !noalias !120
  %index.next1342 = add i64 %index1341, 4
  %vec.ind.next1346 = add <4 x i64> %vec.ind1345, <i64 4, i64 4, i64 4, i64 4>
  %342 = icmp eq i64 %index.next1342, 28
  br i1 %342, label %polly.loop_exit929.1, label %vector.body1339, !llvm.loop !128

polly.loop_exit929.1:                             ; preds = %vector.body1339
  %polly.indvar_next925.1 = add nuw nsw i64 %polly.indvar924.1, 1
  %exitcond1027.1.not = icmp eq i64 %polly.indvar_next925.1, 32
  br i1 %exitcond1027.1.not, label %polly.loop_header921.11050, label %polly.loop_header921.1

polly.loop_header921.11050:                       ; preds = %polly.loop_exit929.1, %polly.loop_exit929.11061
  %polly.indvar924.11049 = phi i64 [ %polly.indvar_next925.11059, %polly.loop_exit929.11061 ], [ 0, %polly.loop_exit929.1 ]
  %343 = add nuw nsw i64 %polly.indvar924.11049, 32
  %344 = mul nuw nsw i64 %343, 480
  %345 = trunc i64 %343 to i32
  %broadcast.splatinsert1361 = insertelement <4 x i32> poison, i32 %345, i32 0
  %broadcast.splat1362 = shufflevector <4 x i32> %broadcast.splatinsert1361, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1351

vector.body1351:                                  ; preds = %vector.body1351, %polly.loop_header921.11050
  %index1353 = phi i64 [ 0, %polly.loop_header921.11050 ], [ %index.next1354, %vector.body1351 ]
  %vec.ind1359 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header921.11050 ], [ %vec.ind.next1360, %vector.body1351 ]
  %346 = mul <4 x i32> %vec.ind1359, %broadcast.splat1362
  %347 = add <4 x i32> %346, <i32 1, i32 1, i32 1, i32 1>
  %348 = urem <4 x i32> %347, <i32 80, i32 80, i32 80, i32 80>
  %349 = sitofp <4 x i32> %348 to <4 x double>
  %350 = fmul fast <4 x double> %349, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %351 = shl i64 %index1353, 3
  %352 = add i64 %351, %344
  %353 = getelementptr i8, i8* %call1, i64 %352
  %354 = bitcast i8* %353 to <4 x double>*
  store <4 x double> %350, <4 x double>* %354, align 8, !alias.scope !115, !noalias !120
  %index.next1354 = add i64 %index1353, 4
  %vec.ind.next1360 = add <4 x i32> %vec.ind1359, <i32 4, i32 4, i32 4, i32 4>
  %355 = icmp eq i64 %index.next1354, 32
  br i1 %355, label %polly.loop_exit929.11061, label %vector.body1351, !llvm.loop !129

polly.loop_exit929.11061:                         ; preds = %vector.body1351
  %polly.indvar_next925.11059 = add nuw nsw i64 %polly.indvar924.11049, 1
  %exitcond1027.11060.not = icmp eq i64 %polly.indvar_next925.11059, 32
  br i1 %exitcond1027.11060.not, label %polly.loop_header921.1.1, label %polly.loop_header921.11050

polly.loop_header921.1.1:                         ; preds = %polly.loop_exit929.11061, %polly.loop_exit929.1.1
  %polly.indvar924.1.1 = phi i64 [ %polly.indvar_next925.1.1, %polly.loop_exit929.1.1 ], [ 0, %polly.loop_exit929.11061 ]
  %356 = add nuw nsw i64 %polly.indvar924.1.1, 32
  %357 = mul nuw nsw i64 %356, 480
  %358 = trunc i64 %356 to i32
  %broadcast.splatinsert1373 = insertelement <4 x i32> poison, i32 %358, i32 0
  %broadcast.splat1374 = shufflevector <4 x i32> %broadcast.splatinsert1373, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1365

vector.body1365:                                  ; preds = %vector.body1365, %polly.loop_header921.1.1
  %index1367 = phi i64 [ 0, %polly.loop_header921.1.1 ], [ %index.next1368, %vector.body1365 ]
  %vec.ind1371 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header921.1.1 ], [ %vec.ind.next1372, %vector.body1365 ]
  %359 = add nuw nsw <4 x i64> %vec.ind1371, <i64 32, i64 32, i64 32, i64 32>
  %360 = trunc <4 x i64> %359 to <4 x i32>
  %361 = mul <4 x i32> %broadcast.splat1374, %360
  %362 = add <4 x i32> %361, <i32 1, i32 1, i32 1, i32 1>
  %363 = urem <4 x i32> %362, <i32 80, i32 80, i32 80, i32 80>
  %364 = sitofp <4 x i32> %363 to <4 x double>
  %365 = fmul fast <4 x double> %364, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %366 = extractelement <4 x i64> %359, i32 0
  %367 = shl i64 %366, 3
  %368 = add i64 %367, %357
  %369 = getelementptr i8, i8* %call1, i64 %368
  %370 = bitcast i8* %369 to <4 x double>*
  store <4 x double> %365, <4 x double>* %370, align 8, !alias.scope !115, !noalias !120
  %index.next1368 = add i64 %index1367, 4
  %vec.ind.next1372 = add <4 x i64> %vec.ind1371, <i64 4, i64 4, i64 4, i64 4>
  %371 = icmp eq i64 %index.next1368, 28
  br i1 %371, label %polly.loop_exit929.1.1, label %vector.body1365, !llvm.loop !130

polly.loop_exit929.1.1:                           ; preds = %vector.body1365
  %polly.indvar_next925.1.1 = add nuw nsw i64 %polly.indvar924.1.1, 1
  %exitcond1027.1.1.not = icmp eq i64 %polly.indvar_next925.1.1, 32
  br i1 %exitcond1027.1.1.not, label %polly.loop_header921.2, label %polly.loop_header921.1.1

polly.loop_header921.2:                           ; preds = %polly.loop_exit929.1.1, %polly.loop_exit929.2
  %polly.indvar924.2 = phi i64 [ %polly.indvar_next925.2, %polly.loop_exit929.2 ], [ 0, %polly.loop_exit929.1.1 ]
  %372 = add nuw nsw i64 %polly.indvar924.2, 64
  %373 = mul nuw nsw i64 %372, 480
  %374 = trunc i64 %372 to i32
  %broadcast.splatinsert1387 = insertelement <4 x i32> poison, i32 %374, i32 0
  %broadcast.splat1388 = shufflevector <4 x i32> %broadcast.splatinsert1387, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1377

vector.body1377:                                  ; preds = %vector.body1377, %polly.loop_header921.2
  %index1379 = phi i64 [ 0, %polly.loop_header921.2 ], [ %index.next1380, %vector.body1377 ]
  %vec.ind1385 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header921.2 ], [ %vec.ind.next1386, %vector.body1377 ]
  %375 = mul <4 x i32> %vec.ind1385, %broadcast.splat1388
  %376 = add <4 x i32> %375, <i32 1, i32 1, i32 1, i32 1>
  %377 = urem <4 x i32> %376, <i32 80, i32 80, i32 80, i32 80>
  %378 = sitofp <4 x i32> %377 to <4 x double>
  %379 = fmul fast <4 x double> %378, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %380 = shl i64 %index1379, 3
  %381 = add i64 %380, %373
  %382 = getelementptr i8, i8* %call1, i64 %381
  %383 = bitcast i8* %382 to <4 x double>*
  store <4 x double> %379, <4 x double>* %383, align 8, !alias.scope !115, !noalias !120
  %index.next1380 = add i64 %index1379, 4
  %vec.ind.next1386 = add <4 x i32> %vec.ind1385, <i32 4, i32 4, i32 4, i32 4>
  %384 = icmp eq i64 %index.next1380, 32
  br i1 %384, label %polly.loop_exit929.2, label %vector.body1377, !llvm.loop !131

polly.loop_exit929.2:                             ; preds = %vector.body1377
  %polly.indvar_next925.2 = add nuw nsw i64 %polly.indvar924.2, 1
  %exitcond1027.2.not = icmp eq i64 %polly.indvar_next925.2, 16
  br i1 %exitcond1027.2.not, label %polly.loop_header921.1.2, label %polly.loop_header921.2

polly.loop_header921.1.2:                         ; preds = %polly.loop_exit929.2, %polly.loop_exit929.1.2
  %polly.indvar924.1.2 = phi i64 [ %polly.indvar_next925.1.2, %polly.loop_exit929.1.2 ], [ 0, %polly.loop_exit929.2 ]
  %385 = add nuw nsw i64 %polly.indvar924.1.2, 64
  %386 = mul nuw nsw i64 %385, 480
  %387 = trunc i64 %385 to i32
  %broadcast.splatinsert1399 = insertelement <4 x i32> poison, i32 %387, i32 0
  %broadcast.splat1400 = shufflevector <4 x i32> %broadcast.splatinsert1399, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1391

vector.body1391:                                  ; preds = %vector.body1391, %polly.loop_header921.1.2
  %index1393 = phi i64 [ 0, %polly.loop_header921.1.2 ], [ %index.next1394, %vector.body1391 ]
  %vec.ind1397 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header921.1.2 ], [ %vec.ind.next1398, %vector.body1391 ]
  %388 = add nuw nsw <4 x i64> %vec.ind1397, <i64 32, i64 32, i64 32, i64 32>
  %389 = trunc <4 x i64> %388 to <4 x i32>
  %390 = mul <4 x i32> %broadcast.splat1400, %389
  %391 = add <4 x i32> %390, <i32 1, i32 1, i32 1, i32 1>
  %392 = urem <4 x i32> %391, <i32 80, i32 80, i32 80, i32 80>
  %393 = sitofp <4 x i32> %392 to <4 x double>
  %394 = fmul fast <4 x double> %393, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %395 = extractelement <4 x i64> %388, i32 0
  %396 = shl i64 %395, 3
  %397 = add i64 %396, %386
  %398 = getelementptr i8, i8* %call1, i64 %397
  %399 = bitcast i8* %398 to <4 x double>*
  store <4 x double> %394, <4 x double>* %399, align 8, !alias.scope !115, !noalias !120
  %index.next1394 = add i64 %index1393, 4
  %vec.ind.next1398 = add <4 x i64> %vec.ind1397, <i64 4, i64 4, i64 4, i64 4>
  %400 = icmp eq i64 %index.next1394, 28
  br i1 %400, label %polly.loop_exit929.1.2, label %vector.body1391, !llvm.loop !132

polly.loop_exit929.1.2:                           ; preds = %vector.body1391
  %polly.indvar_next925.1.2 = add nuw nsw i64 %polly.indvar924.1.2, 1
  %exitcond1027.1.2.not = icmp eq i64 %polly.indvar_next925.1.2, 16
  br i1 %exitcond1027.1.2.not, label %init_array.exit, label %polly.loop_header921.1.2

polly.loop_header895.1:                           ; preds = %polly.loop_exit903, %polly.loop_exit903.1
  %polly.indvar898.1 = phi i64 [ %polly.indvar_next899.1, %polly.loop_exit903.1 ], [ 0, %polly.loop_exit903 ]
  %401 = mul nuw nsw i64 %polly.indvar898.1, 480
  %402 = trunc i64 %polly.indvar898.1 to i32
  %broadcast.splatinsert1269 = insertelement <4 x i32> poison, i32 %402, i32 0
  %broadcast.splat1270 = shufflevector <4 x i32> %broadcast.splatinsert1269, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1261

vector.body1261:                                  ; preds = %vector.body1261, %polly.loop_header895.1
  %index1263 = phi i64 [ 0, %polly.loop_header895.1 ], [ %index.next1264, %vector.body1261 ]
  %vec.ind1267 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header895.1 ], [ %vec.ind.next1268, %vector.body1261 ]
  %403 = add nuw nsw <4 x i64> %vec.ind1267, <i64 32, i64 32, i64 32, i64 32>
  %404 = trunc <4 x i64> %403 to <4 x i32>
  %405 = mul <4 x i32> %broadcast.splat1270, %404
  %406 = add <4 x i32> %405, <i32 2, i32 2, i32 2, i32 2>
  %407 = urem <4 x i32> %406, <i32 60, i32 60, i32 60, i32 60>
  %408 = sitofp <4 x i32> %407 to <4 x double>
  %409 = fmul fast <4 x double> %408, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %410 = extractelement <4 x i64> %403, i32 0
  %411 = shl i64 %410, 3
  %412 = add i64 %411, %401
  %413 = getelementptr i8, i8* %call2, i64 %412
  %414 = bitcast i8* %413 to <4 x double>*
  store <4 x double> %409, <4 x double>* %414, align 8, !alias.scope !116, !noalias !118
  %index.next1264 = add i64 %index1263, 4
  %vec.ind.next1268 = add <4 x i64> %vec.ind1267, <i64 4, i64 4, i64 4, i64 4>
  %415 = icmp eq i64 %index.next1264, 28
  br i1 %415, label %polly.loop_exit903.1, label %vector.body1261, !llvm.loop !133

polly.loop_exit903.1:                             ; preds = %vector.body1261
  %polly.indvar_next899.1 = add nuw nsw i64 %polly.indvar898.1, 1
  %exitcond1033.1.not = icmp eq i64 %polly.indvar_next899.1, 32
  br i1 %exitcond1033.1.not, label %polly.loop_header895.11064, label %polly.loop_header895.1

polly.loop_header895.11064:                       ; preds = %polly.loop_exit903.1, %polly.loop_exit903.11075
  %polly.indvar898.11063 = phi i64 [ %polly.indvar_next899.11073, %polly.loop_exit903.11075 ], [ 0, %polly.loop_exit903.1 ]
  %416 = add nuw nsw i64 %polly.indvar898.11063, 32
  %417 = mul nuw nsw i64 %416, 480
  %418 = trunc i64 %416 to i32
  %broadcast.splatinsert1283 = insertelement <4 x i32> poison, i32 %418, i32 0
  %broadcast.splat1284 = shufflevector <4 x i32> %broadcast.splatinsert1283, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1273

vector.body1273:                                  ; preds = %vector.body1273, %polly.loop_header895.11064
  %index1275 = phi i64 [ 0, %polly.loop_header895.11064 ], [ %index.next1276, %vector.body1273 ]
  %vec.ind1281 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header895.11064 ], [ %vec.ind.next1282, %vector.body1273 ]
  %419 = mul <4 x i32> %vec.ind1281, %broadcast.splat1284
  %420 = add <4 x i32> %419, <i32 2, i32 2, i32 2, i32 2>
  %421 = urem <4 x i32> %420, <i32 60, i32 60, i32 60, i32 60>
  %422 = sitofp <4 x i32> %421 to <4 x double>
  %423 = fmul fast <4 x double> %422, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %424 = shl i64 %index1275, 3
  %425 = add i64 %424, %417
  %426 = getelementptr i8, i8* %call2, i64 %425
  %427 = bitcast i8* %426 to <4 x double>*
  store <4 x double> %423, <4 x double>* %427, align 8, !alias.scope !116, !noalias !118
  %index.next1276 = add i64 %index1275, 4
  %vec.ind.next1282 = add <4 x i32> %vec.ind1281, <i32 4, i32 4, i32 4, i32 4>
  %428 = icmp eq i64 %index.next1276, 32
  br i1 %428, label %polly.loop_exit903.11075, label %vector.body1273, !llvm.loop !134

polly.loop_exit903.11075:                         ; preds = %vector.body1273
  %polly.indvar_next899.11073 = add nuw nsw i64 %polly.indvar898.11063, 1
  %exitcond1033.11074.not = icmp eq i64 %polly.indvar_next899.11073, 32
  br i1 %exitcond1033.11074.not, label %polly.loop_header895.1.1, label %polly.loop_header895.11064

polly.loop_header895.1.1:                         ; preds = %polly.loop_exit903.11075, %polly.loop_exit903.1.1
  %polly.indvar898.1.1 = phi i64 [ %polly.indvar_next899.1.1, %polly.loop_exit903.1.1 ], [ 0, %polly.loop_exit903.11075 ]
  %429 = add nuw nsw i64 %polly.indvar898.1.1, 32
  %430 = mul nuw nsw i64 %429, 480
  %431 = trunc i64 %429 to i32
  %broadcast.splatinsert1295 = insertelement <4 x i32> poison, i32 %431, i32 0
  %broadcast.splat1296 = shufflevector <4 x i32> %broadcast.splatinsert1295, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1287

vector.body1287:                                  ; preds = %vector.body1287, %polly.loop_header895.1.1
  %index1289 = phi i64 [ 0, %polly.loop_header895.1.1 ], [ %index.next1290, %vector.body1287 ]
  %vec.ind1293 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header895.1.1 ], [ %vec.ind.next1294, %vector.body1287 ]
  %432 = add nuw nsw <4 x i64> %vec.ind1293, <i64 32, i64 32, i64 32, i64 32>
  %433 = trunc <4 x i64> %432 to <4 x i32>
  %434 = mul <4 x i32> %broadcast.splat1296, %433
  %435 = add <4 x i32> %434, <i32 2, i32 2, i32 2, i32 2>
  %436 = urem <4 x i32> %435, <i32 60, i32 60, i32 60, i32 60>
  %437 = sitofp <4 x i32> %436 to <4 x double>
  %438 = fmul fast <4 x double> %437, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %439 = extractelement <4 x i64> %432, i32 0
  %440 = shl i64 %439, 3
  %441 = add i64 %440, %430
  %442 = getelementptr i8, i8* %call2, i64 %441
  %443 = bitcast i8* %442 to <4 x double>*
  store <4 x double> %438, <4 x double>* %443, align 8, !alias.scope !116, !noalias !118
  %index.next1290 = add i64 %index1289, 4
  %vec.ind.next1294 = add <4 x i64> %vec.ind1293, <i64 4, i64 4, i64 4, i64 4>
  %444 = icmp eq i64 %index.next1290, 28
  br i1 %444, label %polly.loop_exit903.1.1, label %vector.body1287, !llvm.loop !135

polly.loop_exit903.1.1:                           ; preds = %vector.body1287
  %polly.indvar_next899.1.1 = add nuw nsw i64 %polly.indvar898.1.1, 1
  %exitcond1033.1.1.not = icmp eq i64 %polly.indvar_next899.1.1, 32
  br i1 %exitcond1033.1.1.not, label %polly.loop_header895.2, label %polly.loop_header895.1.1

polly.loop_header895.2:                           ; preds = %polly.loop_exit903.1.1, %polly.loop_exit903.2
  %polly.indvar898.2 = phi i64 [ %polly.indvar_next899.2, %polly.loop_exit903.2 ], [ 0, %polly.loop_exit903.1.1 ]
  %445 = add nuw nsw i64 %polly.indvar898.2, 64
  %446 = mul nuw nsw i64 %445, 480
  %447 = trunc i64 %445 to i32
  %broadcast.splatinsert1309 = insertelement <4 x i32> poison, i32 %447, i32 0
  %broadcast.splat1310 = shufflevector <4 x i32> %broadcast.splatinsert1309, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1299

vector.body1299:                                  ; preds = %vector.body1299, %polly.loop_header895.2
  %index1301 = phi i64 [ 0, %polly.loop_header895.2 ], [ %index.next1302, %vector.body1299 ]
  %vec.ind1307 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header895.2 ], [ %vec.ind.next1308, %vector.body1299 ]
  %448 = mul <4 x i32> %vec.ind1307, %broadcast.splat1310
  %449 = add <4 x i32> %448, <i32 2, i32 2, i32 2, i32 2>
  %450 = urem <4 x i32> %449, <i32 60, i32 60, i32 60, i32 60>
  %451 = sitofp <4 x i32> %450 to <4 x double>
  %452 = fmul fast <4 x double> %451, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %453 = shl i64 %index1301, 3
  %454 = add i64 %453, %446
  %455 = getelementptr i8, i8* %call2, i64 %454
  %456 = bitcast i8* %455 to <4 x double>*
  store <4 x double> %452, <4 x double>* %456, align 8, !alias.scope !116, !noalias !118
  %index.next1302 = add i64 %index1301, 4
  %vec.ind.next1308 = add <4 x i32> %vec.ind1307, <i32 4, i32 4, i32 4, i32 4>
  %457 = icmp eq i64 %index.next1302, 32
  br i1 %457, label %polly.loop_exit903.2, label %vector.body1299, !llvm.loop !136

polly.loop_exit903.2:                             ; preds = %vector.body1299
  %polly.indvar_next899.2 = add nuw nsw i64 %polly.indvar898.2, 1
  %exitcond1033.2.not = icmp eq i64 %polly.indvar_next899.2, 16
  br i1 %exitcond1033.2.not, label %polly.loop_header895.1.2, label %polly.loop_header895.2

polly.loop_header895.1.2:                         ; preds = %polly.loop_exit903.2, %polly.loop_exit903.1.2
  %polly.indvar898.1.2 = phi i64 [ %polly.indvar_next899.1.2, %polly.loop_exit903.1.2 ], [ 0, %polly.loop_exit903.2 ]
  %458 = add nuw nsw i64 %polly.indvar898.1.2, 64
  %459 = mul nuw nsw i64 %458, 480
  %460 = trunc i64 %458 to i32
  %broadcast.splatinsert1321 = insertelement <4 x i32> poison, i32 %460, i32 0
  %broadcast.splat1322 = shufflevector <4 x i32> %broadcast.splatinsert1321, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1313

vector.body1313:                                  ; preds = %vector.body1313, %polly.loop_header895.1.2
  %index1315 = phi i64 [ 0, %polly.loop_header895.1.2 ], [ %index.next1316, %vector.body1313 ]
  %vec.ind1319 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header895.1.2 ], [ %vec.ind.next1320, %vector.body1313 ]
  %461 = add nuw nsw <4 x i64> %vec.ind1319, <i64 32, i64 32, i64 32, i64 32>
  %462 = trunc <4 x i64> %461 to <4 x i32>
  %463 = mul <4 x i32> %broadcast.splat1322, %462
  %464 = add <4 x i32> %463, <i32 2, i32 2, i32 2, i32 2>
  %465 = urem <4 x i32> %464, <i32 60, i32 60, i32 60, i32 60>
  %466 = sitofp <4 x i32> %465 to <4 x double>
  %467 = fmul fast <4 x double> %466, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %468 = extractelement <4 x i64> %461, i32 0
  %469 = shl i64 %468, 3
  %470 = add i64 %469, %459
  %471 = getelementptr i8, i8* %call2, i64 %470
  %472 = bitcast i8* %471 to <4 x double>*
  store <4 x double> %467, <4 x double>* %472, align 8, !alias.scope !116, !noalias !118
  %index.next1316 = add i64 %index1315, 4
  %vec.ind.next1320 = add <4 x i64> %vec.ind1319, <i64 4, i64 4, i64 4, i64 4>
  %473 = icmp eq i64 %index.next1316, 28
  br i1 %473, label %polly.loop_exit903.1.2, label %vector.body1313, !llvm.loop !137

polly.loop_exit903.1.2:                           ; preds = %vector.body1313
  %polly.indvar_next899.1.2 = add nuw nsw i64 %polly.indvar898.1.2, 1
  %exitcond1033.1.2.not = icmp eq i64 %polly.indvar_next899.1.2, 16
  br i1 %exitcond1033.1.2.not, label %polly.loop_header921, label %polly.loop_header895.1.2

polly.loop_header868.1:                           ; preds = %polly.loop_exit876, %polly.loop_exit876.1
  %polly.indvar871.1 = phi i64 [ %polly.indvar_next872.1, %polly.loop_exit876.1 ], [ 0, %polly.loop_exit876 ]
  %474 = mul nuw nsw i64 %polly.indvar871.1, 640
  %475 = trunc i64 %polly.indvar871.1 to i32
  %broadcast.splatinsert1155 = insertelement <4 x i32> poison, i32 %475, i32 0
  %broadcast.splat1156 = shufflevector <4 x i32> %broadcast.splatinsert1155, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1147

vector.body1147:                                  ; preds = %vector.body1147, %polly.loop_header868.1
  %index1149 = phi i64 [ 0, %polly.loop_header868.1 ], [ %index.next1150, %vector.body1147 ]
  %vec.ind1153 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header868.1 ], [ %vec.ind.next1154, %vector.body1147 ]
  %476 = add nuw nsw <4 x i64> %vec.ind1153, <i64 32, i64 32, i64 32, i64 32>
  %477 = trunc <4 x i64> %476 to <4 x i32>
  %478 = mul <4 x i32> %broadcast.splat1156, %477
  %479 = add <4 x i32> %478, <i32 3, i32 3, i32 3, i32 3>
  %480 = urem <4 x i32> %479, <i32 80, i32 80, i32 80, i32 80>
  %481 = sitofp <4 x i32> %480 to <4 x double>
  %482 = fmul fast <4 x double> %481, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %483 = extractelement <4 x i64> %476, i32 0
  %484 = shl i64 %483, 3
  %485 = add nuw nsw i64 %484, %474
  %486 = getelementptr i8, i8* %call, i64 %485
  %487 = bitcast i8* %486 to <4 x double>*
  store <4 x double> %482, <4 x double>* %487, align 8, !alias.scope !112, !noalias !114
  %index.next1150 = add i64 %index1149, 4
  %vec.ind.next1154 = add <4 x i64> %vec.ind1153, <i64 4, i64 4, i64 4, i64 4>
  %488 = icmp eq i64 %index.next1150, 32
  br i1 %488, label %polly.loop_exit876.1, label %vector.body1147, !llvm.loop !138

polly.loop_exit876.1:                             ; preds = %vector.body1147
  %polly.indvar_next872.1 = add nuw nsw i64 %polly.indvar871.1, 1
  %exitcond1042.1.not = icmp eq i64 %polly.indvar_next872.1, 32
  br i1 %exitcond1042.1.not, label %polly.loop_header868.2, label %polly.loop_header868.1

polly.loop_header868.2:                           ; preds = %polly.loop_exit876.1, %polly.loop_exit876.2
  %polly.indvar871.2 = phi i64 [ %polly.indvar_next872.2, %polly.loop_exit876.2 ], [ 0, %polly.loop_exit876.1 ]
  %489 = mul nuw nsw i64 %polly.indvar871.2, 640
  %490 = trunc i64 %polly.indvar871.2 to i32
  %broadcast.splatinsert1167 = insertelement <4 x i32> poison, i32 %490, i32 0
  %broadcast.splat1168 = shufflevector <4 x i32> %broadcast.splatinsert1167, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1159

vector.body1159:                                  ; preds = %vector.body1159, %polly.loop_header868.2
  %index1161 = phi i64 [ 0, %polly.loop_header868.2 ], [ %index.next1162, %vector.body1159 ]
  %vec.ind1165 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header868.2 ], [ %vec.ind.next1166, %vector.body1159 ]
  %491 = add nuw nsw <4 x i64> %vec.ind1165, <i64 64, i64 64, i64 64, i64 64>
  %492 = trunc <4 x i64> %491 to <4 x i32>
  %493 = mul <4 x i32> %broadcast.splat1168, %492
  %494 = add <4 x i32> %493, <i32 3, i32 3, i32 3, i32 3>
  %495 = urem <4 x i32> %494, <i32 80, i32 80, i32 80, i32 80>
  %496 = sitofp <4 x i32> %495 to <4 x double>
  %497 = fmul fast <4 x double> %496, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %498 = extractelement <4 x i64> %491, i32 0
  %499 = shl i64 %498, 3
  %500 = add nuw nsw i64 %499, %489
  %501 = getelementptr i8, i8* %call, i64 %500
  %502 = bitcast i8* %501 to <4 x double>*
  store <4 x double> %497, <4 x double>* %502, align 8, !alias.scope !112, !noalias !114
  %index.next1162 = add i64 %index1161, 4
  %vec.ind.next1166 = add <4 x i64> %vec.ind1165, <i64 4, i64 4, i64 4, i64 4>
  %503 = icmp eq i64 %index.next1162, 16
  br i1 %503, label %polly.loop_exit876.2, label %vector.body1159, !llvm.loop !139

polly.loop_exit876.2:                             ; preds = %vector.body1159
  %polly.indvar_next872.2 = add nuw nsw i64 %polly.indvar871.2, 1
  %exitcond1042.2.not = icmp eq i64 %polly.indvar_next872.2, 32
  br i1 %exitcond1042.2.not, label %polly.loop_header868.11078, label %polly.loop_header868.2

polly.loop_header868.11078:                       ; preds = %polly.loop_exit876.2, %polly.loop_exit876.11089
  %polly.indvar871.11077 = phi i64 [ %polly.indvar_next872.11087, %polly.loop_exit876.11089 ], [ 0, %polly.loop_exit876.2 ]
  %504 = add nuw nsw i64 %polly.indvar871.11077, 32
  %505 = mul nuw nsw i64 %504, 640
  %506 = trunc i64 %504 to i32
  %broadcast.splatinsert1181 = insertelement <4 x i32> poison, i32 %506, i32 0
  %broadcast.splat1182 = shufflevector <4 x i32> %broadcast.splatinsert1181, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1171

vector.body1171:                                  ; preds = %vector.body1171, %polly.loop_header868.11078
  %index1173 = phi i64 [ 0, %polly.loop_header868.11078 ], [ %index.next1174, %vector.body1171 ]
  %vec.ind1179 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header868.11078 ], [ %vec.ind.next1180, %vector.body1171 ]
  %507 = mul <4 x i32> %vec.ind1179, %broadcast.splat1182
  %508 = add <4 x i32> %507, <i32 3, i32 3, i32 3, i32 3>
  %509 = urem <4 x i32> %508, <i32 80, i32 80, i32 80, i32 80>
  %510 = sitofp <4 x i32> %509 to <4 x double>
  %511 = fmul fast <4 x double> %510, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %512 = shl i64 %index1173, 3
  %513 = add nuw nsw i64 %512, %505
  %514 = getelementptr i8, i8* %call, i64 %513
  %515 = bitcast i8* %514 to <4 x double>*
  store <4 x double> %511, <4 x double>* %515, align 8, !alias.scope !112, !noalias !114
  %index.next1174 = add i64 %index1173, 4
  %vec.ind.next1180 = add <4 x i32> %vec.ind1179, <i32 4, i32 4, i32 4, i32 4>
  %516 = icmp eq i64 %index.next1174, 32
  br i1 %516, label %polly.loop_exit876.11089, label %vector.body1171, !llvm.loop !140

polly.loop_exit876.11089:                         ; preds = %vector.body1171
  %polly.indvar_next872.11087 = add nuw nsw i64 %polly.indvar871.11077, 1
  %exitcond1042.11088.not = icmp eq i64 %polly.indvar_next872.11087, 32
  br i1 %exitcond1042.11088.not, label %polly.loop_header868.1.1, label %polly.loop_header868.11078

polly.loop_header868.1.1:                         ; preds = %polly.loop_exit876.11089, %polly.loop_exit876.1.1
  %polly.indvar871.1.1 = phi i64 [ %polly.indvar_next872.1.1, %polly.loop_exit876.1.1 ], [ 0, %polly.loop_exit876.11089 ]
  %517 = add nuw nsw i64 %polly.indvar871.1.1, 32
  %518 = mul nuw nsw i64 %517, 640
  %519 = trunc i64 %517 to i32
  %broadcast.splatinsert1193 = insertelement <4 x i32> poison, i32 %519, i32 0
  %broadcast.splat1194 = shufflevector <4 x i32> %broadcast.splatinsert1193, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1185

vector.body1185:                                  ; preds = %vector.body1185, %polly.loop_header868.1.1
  %index1187 = phi i64 [ 0, %polly.loop_header868.1.1 ], [ %index.next1188, %vector.body1185 ]
  %vec.ind1191 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header868.1.1 ], [ %vec.ind.next1192, %vector.body1185 ]
  %520 = add nuw nsw <4 x i64> %vec.ind1191, <i64 32, i64 32, i64 32, i64 32>
  %521 = trunc <4 x i64> %520 to <4 x i32>
  %522 = mul <4 x i32> %broadcast.splat1194, %521
  %523 = add <4 x i32> %522, <i32 3, i32 3, i32 3, i32 3>
  %524 = urem <4 x i32> %523, <i32 80, i32 80, i32 80, i32 80>
  %525 = sitofp <4 x i32> %524 to <4 x double>
  %526 = fmul fast <4 x double> %525, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %527 = extractelement <4 x i64> %520, i32 0
  %528 = shl i64 %527, 3
  %529 = add nuw nsw i64 %528, %518
  %530 = getelementptr i8, i8* %call, i64 %529
  %531 = bitcast i8* %530 to <4 x double>*
  store <4 x double> %526, <4 x double>* %531, align 8, !alias.scope !112, !noalias !114
  %index.next1188 = add i64 %index1187, 4
  %vec.ind.next1192 = add <4 x i64> %vec.ind1191, <i64 4, i64 4, i64 4, i64 4>
  %532 = icmp eq i64 %index.next1188, 32
  br i1 %532, label %polly.loop_exit876.1.1, label %vector.body1185, !llvm.loop !141

polly.loop_exit876.1.1:                           ; preds = %vector.body1185
  %polly.indvar_next872.1.1 = add nuw nsw i64 %polly.indvar871.1.1, 1
  %exitcond1042.1.1.not = icmp eq i64 %polly.indvar_next872.1.1, 32
  br i1 %exitcond1042.1.1.not, label %polly.loop_header868.2.1, label %polly.loop_header868.1.1

polly.loop_header868.2.1:                         ; preds = %polly.loop_exit876.1.1, %polly.loop_exit876.2.1
  %polly.indvar871.2.1 = phi i64 [ %polly.indvar_next872.2.1, %polly.loop_exit876.2.1 ], [ 0, %polly.loop_exit876.1.1 ]
  %533 = add nuw nsw i64 %polly.indvar871.2.1, 32
  %534 = mul nuw nsw i64 %533, 640
  %535 = trunc i64 %533 to i32
  %broadcast.splatinsert1205 = insertelement <4 x i32> poison, i32 %535, i32 0
  %broadcast.splat1206 = shufflevector <4 x i32> %broadcast.splatinsert1205, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %polly.loop_header868.2.1
  %index1199 = phi i64 [ 0, %polly.loop_header868.2.1 ], [ %index.next1200, %vector.body1197 ]
  %vec.ind1203 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header868.2.1 ], [ %vec.ind.next1204, %vector.body1197 ]
  %536 = add nuw nsw <4 x i64> %vec.ind1203, <i64 64, i64 64, i64 64, i64 64>
  %537 = trunc <4 x i64> %536 to <4 x i32>
  %538 = mul <4 x i32> %broadcast.splat1206, %537
  %539 = add <4 x i32> %538, <i32 3, i32 3, i32 3, i32 3>
  %540 = urem <4 x i32> %539, <i32 80, i32 80, i32 80, i32 80>
  %541 = sitofp <4 x i32> %540 to <4 x double>
  %542 = fmul fast <4 x double> %541, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %543 = extractelement <4 x i64> %536, i32 0
  %544 = shl i64 %543, 3
  %545 = add nuw nsw i64 %544, %534
  %546 = getelementptr i8, i8* %call, i64 %545
  %547 = bitcast i8* %546 to <4 x double>*
  store <4 x double> %542, <4 x double>* %547, align 8, !alias.scope !112, !noalias !114
  %index.next1200 = add i64 %index1199, 4
  %vec.ind.next1204 = add <4 x i64> %vec.ind1203, <i64 4, i64 4, i64 4, i64 4>
  %548 = icmp eq i64 %index.next1200, 16
  br i1 %548, label %polly.loop_exit876.2.1, label %vector.body1197, !llvm.loop !142

polly.loop_exit876.2.1:                           ; preds = %vector.body1197
  %polly.indvar_next872.2.1 = add nuw nsw i64 %polly.indvar871.2.1, 1
  %exitcond1042.2.1.not = icmp eq i64 %polly.indvar_next872.2.1, 32
  br i1 %exitcond1042.2.1.not, label %polly.loop_header868.21092, label %polly.loop_header868.2.1

polly.loop_header868.21092:                       ; preds = %polly.loop_exit876.2.1, %polly.loop_exit876.21103
  %polly.indvar871.21091 = phi i64 [ %polly.indvar_next872.21101, %polly.loop_exit876.21103 ], [ 0, %polly.loop_exit876.2.1 ]
  %549 = add nuw nsw i64 %polly.indvar871.21091, 64
  %550 = mul nuw nsw i64 %549, 640
  %551 = trunc i64 %549 to i32
  %broadcast.splatinsert1219 = insertelement <4 x i32> poison, i32 %551, i32 0
  %broadcast.splat1220 = shufflevector <4 x i32> %broadcast.splatinsert1219, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1209

vector.body1209:                                  ; preds = %vector.body1209, %polly.loop_header868.21092
  %index1211 = phi i64 [ 0, %polly.loop_header868.21092 ], [ %index.next1212, %vector.body1209 ]
  %vec.ind1217 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header868.21092 ], [ %vec.ind.next1218, %vector.body1209 ]
  %552 = mul <4 x i32> %vec.ind1217, %broadcast.splat1220
  %553 = add <4 x i32> %552, <i32 3, i32 3, i32 3, i32 3>
  %554 = urem <4 x i32> %553, <i32 80, i32 80, i32 80, i32 80>
  %555 = sitofp <4 x i32> %554 to <4 x double>
  %556 = fmul fast <4 x double> %555, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %557 = shl i64 %index1211, 3
  %558 = add nuw nsw i64 %557, %550
  %559 = getelementptr i8, i8* %call, i64 %558
  %560 = bitcast i8* %559 to <4 x double>*
  store <4 x double> %556, <4 x double>* %560, align 8, !alias.scope !112, !noalias !114
  %index.next1212 = add i64 %index1211, 4
  %vec.ind.next1218 = add <4 x i32> %vec.ind1217, <i32 4, i32 4, i32 4, i32 4>
  %561 = icmp eq i64 %index.next1212, 32
  br i1 %561, label %polly.loop_exit876.21103, label %vector.body1209, !llvm.loop !143

polly.loop_exit876.21103:                         ; preds = %vector.body1209
  %polly.indvar_next872.21101 = add nuw nsw i64 %polly.indvar871.21091, 1
  %exitcond1042.21102.not = icmp eq i64 %polly.indvar_next872.21101, 16
  br i1 %exitcond1042.21102.not, label %polly.loop_header868.1.2, label %polly.loop_header868.21092

polly.loop_header868.1.2:                         ; preds = %polly.loop_exit876.21103, %polly.loop_exit876.1.2
  %polly.indvar871.1.2 = phi i64 [ %polly.indvar_next872.1.2, %polly.loop_exit876.1.2 ], [ 0, %polly.loop_exit876.21103 ]
  %562 = add nuw nsw i64 %polly.indvar871.1.2, 64
  %563 = mul nuw nsw i64 %562, 640
  %564 = trunc i64 %562 to i32
  %broadcast.splatinsert1231 = insertelement <4 x i32> poison, i32 %564, i32 0
  %broadcast.splat1232 = shufflevector <4 x i32> %broadcast.splatinsert1231, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1223

vector.body1223:                                  ; preds = %vector.body1223, %polly.loop_header868.1.2
  %index1225 = phi i64 [ 0, %polly.loop_header868.1.2 ], [ %index.next1226, %vector.body1223 ]
  %vec.ind1229 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header868.1.2 ], [ %vec.ind.next1230, %vector.body1223 ]
  %565 = add nuw nsw <4 x i64> %vec.ind1229, <i64 32, i64 32, i64 32, i64 32>
  %566 = trunc <4 x i64> %565 to <4 x i32>
  %567 = mul <4 x i32> %broadcast.splat1232, %566
  %568 = add <4 x i32> %567, <i32 3, i32 3, i32 3, i32 3>
  %569 = urem <4 x i32> %568, <i32 80, i32 80, i32 80, i32 80>
  %570 = sitofp <4 x i32> %569 to <4 x double>
  %571 = fmul fast <4 x double> %570, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %572 = extractelement <4 x i64> %565, i32 0
  %573 = shl i64 %572, 3
  %574 = add nuw nsw i64 %573, %563
  %575 = getelementptr i8, i8* %call, i64 %574
  %576 = bitcast i8* %575 to <4 x double>*
  store <4 x double> %571, <4 x double>* %576, align 8, !alias.scope !112, !noalias !114
  %index.next1226 = add i64 %index1225, 4
  %vec.ind.next1230 = add <4 x i64> %vec.ind1229, <i64 4, i64 4, i64 4, i64 4>
  %577 = icmp eq i64 %index.next1226, 32
  br i1 %577, label %polly.loop_exit876.1.2, label %vector.body1223, !llvm.loop !144

polly.loop_exit876.1.2:                           ; preds = %vector.body1223
  %polly.indvar_next872.1.2 = add nuw nsw i64 %polly.indvar871.1.2, 1
  %exitcond1042.1.2.not = icmp eq i64 %polly.indvar_next872.1.2, 16
  br i1 %exitcond1042.1.2.not, label %polly.loop_header868.2.2, label %polly.loop_header868.1.2

polly.loop_header868.2.2:                         ; preds = %polly.loop_exit876.1.2, %polly.loop_exit876.2.2
  %polly.indvar871.2.2 = phi i64 [ %polly.indvar_next872.2.2, %polly.loop_exit876.2.2 ], [ 0, %polly.loop_exit876.1.2 ]
  %578 = add nuw nsw i64 %polly.indvar871.2.2, 64
  %579 = mul nuw nsw i64 %578, 640
  %580 = trunc i64 %578 to i32
  %broadcast.splatinsert1243 = insertelement <4 x i32> poison, i32 %580, i32 0
  %broadcast.splat1244 = shufflevector <4 x i32> %broadcast.splatinsert1243, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1235

vector.body1235:                                  ; preds = %vector.body1235, %polly.loop_header868.2.2
  %index1237 = phi i64 [ 0, %polly.loop_header868.2.2 ], [ %index.next1238, %vector.body1235 ]
  %vec.ind1241 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header868.2.2 ], [ %vec.ind.next1242, %vector.body1235 ]
  %581 = add nuw nsw <4 x i64> %vec.ind1241, <i64 64, i64 64, i64 64, i64 64>
  %582 = trunc <4 x i64> %581 to <4 x i32>
  %583 = mul <4 x i32> %broadcast.splat1244, %582
  %584 = add <4 x i32> %583, <i32 3, i32 3, i32 3, i32 3>
  %585 = urem <4 x i32> %584, <i32 80, i32 80, i32 80, i32 80>
  %586 = sitofp <4 x i32> %585 to <4 x double>
  %587 = fmul fast <4 x double> %586, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %588 = extractelement <4 x i64> %581, i32 0
  %589 = shl i64 %588, 3
  %590 = add nuw nsw i64 %589, %579
  %591 = getelementptr i8, i8* %call, i64 %590
  %592 = bitcast i8* %591 to <4 x double>*
  store <4 x double> %587, <4 x double>* %592, align 8, !alias.scope !112, !noalias !114
  %index.next1238 = add i64 %index1237, 4
  %vec.ind.next1242 = add <4 x i64> %vec.ind1241, <i64 4, i64 4, i64 4, i64 4>
  %593 = icmp eq i64 %index.next1238, 16
  br i1 %593, label %polly.loop_exit876.2.2, label %vector.body1235, !llvm.loop !145

polly.loop_exit876.2.2:                           ; preds = %vector.body1235
  %polly.indvar_next872.2.2 = add nuw nsw i64 %polly.indvar871.2.2, 1
  %exitcond1042.2.2.not = icmp eq i64 %polly.indvar_next872.2.2, 16
  br i1 %exitcond1042.2.2.not, label %polly.loop_header895, label %polly.loop_header868.2.2
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
declare i64 @llvm.umax.i64(i64, i64) #5

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
!47 = distinct !{!47, !12, !24, !48, !49, !50, !51, !52, !61}
!48 = !{!"llvm.loop.id", !"i"}
!49 = !{!"llvm.loop.tile.enable", i1 true}
!50 = !{!"llvm.loop.tile.depth", i32 3}
!51 = !{!"llvm.loop.tile.size", i32 16}
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
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !81, !13}
!86 = distinct !{!86, !87, !"polly.alias.scope.MemRef_call"}
!87 = distinct !{!87, !"polly.alias.scope.domain"}
!88 = !{!89, !90, !91, !92}
!89 = distinct !{!89, !87, !"polly.alias.scope.MemRef_call1"}
!90 = distinct !{!90, !87, !"polly.alias.scope.MemRef_call2"}
!91 = distinct !{!91, !87, !"polly.alias.scope.Packed_MemRef_call1"}
!92 = distinct !{!92, !87, !"polly.alias.scope.Packed_MemRef_call2"}
!93 = distinct !{!93, !13}
!94 = distinct !{!94, !81, !13}
!95 = !{!86, !89, !91, !92}
!96 = !{!86, !90, !91, !92}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !81, !13}
!99 = distinct !{!99, !100, !"polly.alias.scope.MemRef_call"}
!100 = distinct !{!100, !"polly.alias.scope.domain"}
!101 = !{!102, !103, !104, !105}
!102 = distinct !{!102, !100, !"polly.alias.scope.MemRef_call1"}
!103 = distinct !{!103, !100, !"polly.alias.scope.MemRef_call2"}
!104 = distinct !{!104, !100, !"polly.alias.scope.Packed_MemRef_call1"}
!105 = distinct !{!105, !100, !"polly.alias.scope.Packed_MemRef_call2"}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !81, !13}
!108 = !{!99, !102, !104, !105}
!109 = !{!99, !103, !104, !105}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !81, !13}
!112 = distinct !{!112, !113, !"polly.alias.scope.MemRef_call"}
!113 = distinct !{!113, !"polly.alias.scope.domain"}
!114 = !{!115, !116}
!115 = distinct !{!115, !113, !"polly.alias.scope.MemRef_call1"}
!116 = distinct !{!116, !113, !"polly.alias.scope.MemRef_call2"}
!117 = distinct !{!117, !13}
!118 = !{!115, !112}
!119 = distinct !{!119, !13}
!120 = !{!116, !112}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !81, !13}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !81, !13}
!126 = distinct !{!126, !13}
!127 = distinct !{!127, !81, !13}
!128 = distinct !{!128, !13}
!129 = distinct !{!129, !13}
!130 = distinct !{!130, !13}
!131 = distinct !{!131, !13}
!132 = distinct !{!132, !13}
!133 = distinct !{!133, !13}
!134 = distinct !{!134, !13}
!135 = distinct !{!135, !13}
!136 = distinct !{!136, !13}
!137 = distinct !{!137, !13}
!138 = distinct !{!138, !13}
!139 = distinct !{!139, !13}
!140 = distinct !{!140, !13}
!141 = distinct !{!141, !13}
!142 = distinct !{!142, !13}
!143 = distinct !{!143, !13}
!144 = distinct !{!144, !13}
!145 = distinct !{!145, !13}
