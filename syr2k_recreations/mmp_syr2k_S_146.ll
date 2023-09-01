; ModuleID = 'syr2k_recreations//mmp_syr2k_S_146.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_146.c"
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
  %call768 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1620 = bitcast i8* %call1 to double*
  %polly.access.call1629 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1629, %call2
  %polly.access.call2649 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2649, %call1
  %2 = or i1 %0, %1
  %polly.access.call669 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call669, %call2
  %4 = icmp ule i8* %polly.access.call2649, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call669, %call1
  %8 = icmp ule i8* %polly.access.call1629, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header754, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1091 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1090 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1089 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1088 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1088, %scevgep1091
  %bound1 = icmp ult i8* %scevgep1090, %scevgep1089
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
  br i1 %exitcond18.not.i, label %vector.ph1095, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1095:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1102 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1103 = shufflevector <4 x i64> %broadcast.splatinsert1102, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1094

vector.body1094:                                  ; preds = %vector.body1094, %vector.ph1095
  %index1096 = phi i64 [ 0, %vector.ph1095 ], [ %index.next1097, %vector.body1094 ]
  %vec.ind1100 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1095 ], [ %vec.ind.next1101, %vector.body1094 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1100, %broadcast.splat1103
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call768, i64 %indvars.iv7.i, i64 %index1096
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1097 = add i64 %index1096, 4
  %vec.ind.next1101 = add <4 x i64> %vec.ind1100, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1097, 80
  br i1 %40, label %for.inc41.i, label %vector.body1094, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1094
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1095, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit815.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start443, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1454, label %vector.ph1377

vector.ph1377:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1376

vector.body1376:                                  ; preds = %vector.body1376, %vector.ph1377
  %index1378 = phi i64 [ 0, %vector.ph1377 ], [ %index.next1379, %vector.body1376 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call768, i64 %indvars.iv21.i, i64 %index1378
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1379 = add i64 %index1378, 4
  %46 = icmp eq i64 %index.next1379, %n.vec
  br i1 %46, label %middle.block1374, label %vector.body1376, !llvm.loop !18

middle.block1374:                                 ; preds = %vector.body1376
  %cmp.n1381 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1381, label %for.inc6.i, label %for.body3.i46.preheader1454

for.body3.i46.preheader1454:                      ; preds = %for.body3.i46.preheader, %middle.block1374
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1374 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1454, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1454 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call768, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1374, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call768, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting444
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start268, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1397 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1397, label %for.body3.i60.preheader1451, label %vector.ph1398

vector.ph1398:                                    ; preds = %for.body3.i60.preheader
  %n.vec1400 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1396

vector.body1396:                                  ; preds = %vector.body1396, %vector.ph1398
  %index1401 = phi i64 [ 0, %vector.ph1398 ], [ %index.next1402, %vector.body1396 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call768, i64 %indvars.iv21.i52, i64 %index1401
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1405 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1405, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1402 = add i64 %index1401, 4
  %57 = icmp eq i64 %index.next1402, %n.vec1400
  br i1 %57, label %middle.block1394, label %vector.body1396, !llvm.loop !55

middle.block1394:                                 ; preds = %vector.body1396
  %cmp.n1404 = icmp eq i64 %indvars.iv21.i52, %n.vec1400
  br i1 %cmp.n1404, label %for.inc6.i63, label %for.body3.i60.preheader1451

for.body3.i60.preheader1451:                      ; preds = %for.body3.i60.preheader, %middle.block1394
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1400, %middle.block1394 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1451, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1451 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call768, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1394, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call768, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting269
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1423 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1423, label %for.body3.i99.preheader1448, label %vector.ph1424

vector.ph1424:                                    ; preds = %for.body3.i99.preheader
  %n.vec1426 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1422

vector.body1422:                                  ; preds = %vector.body1422, %vector.ph1424
  %index1427 = phi i64 [ 0, %vector.ph1424 ], [ %index.next1428, %vector.body1422 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call768, i64 %indvars.iv21.i91, i64 %index1427
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1431 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1431, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1428 = add i64 %index1427, 4
  %68 = icmp eq i64 %index.next1428, %n.vec1426
  br i1 %68, label %middle.block1420, label %vector.body1422, !llvm.loop !57

middle.block1420:                                 ; preds = %vector.body1422
  %cmp.n1430 = icmp eq i64 %indvars.iv21.i91, %n.vec1426
  br i1 %cmp.n1430, label %for.inc6.i102, label %for.body3.i99.preheader1448

for.body3.i99.preheader1448:                      ; preds = %for.body3.i99.preheader, %middle.block1420
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1426, %middle.block1420 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1448, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1448 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call768, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1420, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call768, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !59
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call768, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !61

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !62

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1435 = phi i64 [ %indvar.next1436, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1435, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1437 = icmp ult i64 %88, 4
  br i1 %min.iters.check1437, label %polly.loop_header191.preheader, label %vector.ph1438

vector.ph1438:                                    ; preds = %polly.loop_header
  %n.vec1440 = and i64 %88, -4
  br label %vector.body1434

vector.body1434:                                  ; preds = %vector.body1434, %vector.ph1438
  %index1441 = phi i64 [ 0, %vector.ph1438 ], [ %index.next1442, %vector.body1434 ]
  %90 = shl nuw nsw i64 %index1441, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1445 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1445, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1442 = add i64 %index1441, 4
  %95 = icmp eq i64 %index.next1442, %n.vec1440
  br i1 %95, label %middle.block1432, label %vector.body1434, !llvm.loop !69

middle.block1432:                                 ; preds = %vector.body1434
  %cmp.n1444 = icmp eq i64 %88, %n.vec1440
  br i1 %cmp.n1444, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1432
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1440, %middle.block1432 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1432
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond942.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1436 = add i64 %indvar1435, 1
  br i1 %exitcond942.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond941.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond941.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %97 = phi i1 [ false, %polly.loop_exit207 ], [ true, %polly.loop_header199.preheader ]
  %polly.indvar202 = phi i64 [ 1, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %98 = mul nuw nsw i64 %polly.indvar202, 50
  %99 = mul nuw nsw i64 %polly.indvar202, -50
  %100 = sub nuw nsw i64 80, %98
  br i1 %97, label %polly.loop_header205.us, label %polly.loop_header205

polly.loop_header205.us:                          ; preds = %polly.loop_header199, %polly.loop_exit236.us
  %indvars.iv929 = phi i64 [ %indvars.iv.next930, %polly.loop_exit236.us ], [ 0, %polly.loop_header199 ]
  %polly.indvar208.us = phi i64 [ %polly.indvar_next209.us, %polly.loop_exit236.us ], [ %98, %polly.loop_header199 ]
  %smin937 = call i64 @llvm.smin.i64(i64 %indvars.iv929, i64 49)
  %101 = add nsw i64 %polly.indvar208.us, %99
  %102 = icmp ugt i64 %polly.indvar208.us, 49
  %polly.access.mul.call1228.us = mul nuw nsw i64 %polly.indvar208.us, 60
  br i1 %102, label %polly.loop_header211.us.us, label %polly.loop_header211.us833

polly.loop_header211.us833:                       ; preds = %polly.loop_header205.us, %polly.merge.us854
  %polly.indvar214.us834 = phi i64 [ %polly.indvar_next215.us855, %polly.merge.us854 ], [ 0, %polly.loop_header205.us ]
  %polly.access.mul.Packed_MemRef_call1.us835 = mul nuw nsw i64 %polly.indvar214.us834, 80
  br label %polly.loop_header217.us836

polly.loop_header217.us836:                       ; preds = %polly.loop_header217.us836, %polly.loop_header211.us833
  %polly.indvar220.us837 = phi i64 [ 0, %polly.loop_header211.us833 ], [ %polly.indvar_next221.us844, %polly.loop_header217.us836 ]
  %103 = add nuw nsw i64 %polly.indvar220.us837, %98
  %polly.access.mul.call1224.us838 = mul nuw nsw i64 %103, 60
  %polly.access.add.call1225.us839 = add nuw nsw i64 %polly.access.mul.call1224.us838, %polly.indvar214.us834
  %polly.access.call1226.us840 = getelementptr double, double* %polly.access.cast.call1620, i64 %polly.access.add.call1225.us839
  %polly.access.call1226.load.us841 = load double, double* %polly.access.call1226.us840, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us842 = add nuw nsw i64 %polly.indvar220.us837, %polly.access.mul.Packed_MemRef_call1.us835
  %polly.access.Packed_MemRef_call1.us843 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us842
  store double %polly.access.call1226.load.us841, double* %polly.access.Packed_MemRef_call1.us843, align 8
  %polly.indvar_next221.us844 = add nuw nsw i64 %polly.indvar220.us837, 1
  %exitcond932.not = icmp eq i64 %polly.indvar220.us837, %smin937
  br i1 %exitcond932.not, label %polly.merge.us854, label %polly.loop_header217.us836

polly.merge.us854:                                ; preds = %polly.loop_header217.us836
  %polly.indvar_next215.us855 = add nuw nsw i64 %polly.indvar214.us834, 1
  %exitcond933.not = icmp eq i64 %polly.indvar_next215.us855, 60
  br i1 %exitcond933.not, label %polly.loop_preheader235.us, label %polly.loop_header211.us833

polly.loop_preheader235.us:                       ; preds = %polly.merge.us854, %polly.then.us.us
  %104 = mul nuw nsw i64 %polly.indvar208.us, 480
  %scevgep250.us = getelementptr i8, i8* %call2, i64 %104
  %105 = mul nuw nsw i64 %polly.indvar208.us, 640
  %scevgep262.us = getelementptr i8, i8* %call, i64 %105
  br label %polly.loop_header234.us

polly.loop_header234.us:                          ; preds = %polly.loop_exit242.us, %polly.loop_preheader235.us
  %polly.indvar237.us = phi i64 [ 0, %polly.loop_preheader235.us ], [ %polly.indvar_next238.us, %polly.loop_exit242.us ]
  %106 = shl nuw nsw i64 %polly.indvar237.us, 3
  %scevgep251.us = getelementptr i8, i8* %scevgep250.us, i64 %106
  %scevgep251252.us = bitcast i8* %scevgep251.us to double*
  %scevgep254.us = getelementptr i8, i8* %call2, i64 %106
  %_p_scalar_253.pre.us = load double, double* %scevgep251252.us, align 8, !alias.scope !67, !noalias !73
  %polly.access.mul.Packed_MemRef_call1246.us = mul nuw nsw i64 %polly.indvar237.us, 80
  %polly.access.add.Packed_MemRef_call1259.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1246.us, %101
  %polly.access.Packed_MemRef_call1260.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1259.us
  %_p_scalar_261.us = load double, double* %polly.access.Packed_MemRef_call1260.us, align 8
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header234.us
  %polly.indvar243.us = phi i64 [ 0, %polly.loop_header234.us ], [ %polly.indvar_next244.us, %polly.loop_header240.us ]
  %107 = add nuw nsw i64 %polly.indvar243.us, %98
  %polly.access.add.Packed_MemRef_call1247.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1246.us
  %polly.access.Packed_MemRef_call1248.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1247.us
  %_p_scalar_249.us = load double, double* %polly.access.Packed_MemRef_call1248.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_253.pre.us, %_p_scalar_249.us
  %108 = mul nuw nsw i64 %107, 480
  %scevgep255.us = getelementptr i8, i8* %scevgep254.us, i64 %108
  %scevgep255256.us = bitcast i8* %scevgep255.us to double*
  %_p_scalar_257.us = load double, double* %scevgep255256.us, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us = fmul fast double %_p_scalar_261.us, %_p_scalar_257.us
  %109 = shl i64 %107, 3
  %scevgep263.us = getelementptr i8, i8* %scevgep262.us, i64 %109
  %scevgep263264.us = bitcast i8* %scevgep263.us to double*
  %_p_scalar_265.us = load double, double* %scevgep263264.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_265.us
  store double %p_add42.i118.us, double* %scevgep263264.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond938.not = icmp eq i64 %polly.indvar243.us, %smin937
  br i1 %exitcond938.not, label %polly.loop_exit242.us, label %polly.loop_header240.us

polly.loop_exit242.us:                            ; preds = %polly.loop_header240.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond939.not = icmp eq i64 %polly.indvar_next238.us, 60
  br i1 %exitcond939.not, label %polly.loop_exit236.us, label %polly.loop_header234.us

polly.loop_exit236.us:                            ; preds = %polly.loop_exit242.us
  %polly.indvar_next209.us = add nuw nsw i64 %polly.indvar208.us, 1
  %indvars.iv.next930 = add nuw nsw i64 %indvars.iv929, 1
  %exitcond940.not = icmp eq i64 %indvars.iv.next930, %100
  br i1 %exitcond940.not, label %polly.loop_exit207, label %polly.loop_header205.us

polly.loop_header211.us.us:                       ; preds = %polly.loop_header205.us, %polly.then.us.us
  %polly.indvar214.us.us = phi i64 [ %polly.indvar_next215.us.us, %polly.then.us.us ], [ 0, %polly.loop_header205.us ]
  %polly.access.mul.Packed_MemRef_call1.us.us = mul nuw nsw i64 %polly.indvar214.us.us, 80
  br label %polly.loop_header217.us.us

polly.then.us.us:                                 ; preds = %polly.loop_header217.us.us
  %polly.access.add.call1229.us.us = add nuw nsw i64 %polly.indvar214.us.us, %polly.access.mul.call1228.us
  %polly.access.call1230.us.us = getelementptr double, double* %polly.access.cast.call1620, i64 %polly.access.add.call1229.us.us
  %polly.access.call1230.load.us.us = load double, double* %polly.access.call1230.us.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1232.us.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1.us.us, %polly.indvar208.us
  %polly.access.Packed_MemRef_call1233.us.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1232.us.us
  store double %polly.access.call1230.load.us.us, double* %polly.access.Packed_MemRef_call1233.us.us, align 8
  %polly.indvar_next215.us.us = add nuw nsw i64 %polly.indvar214.us.us, 1
  %exitcond936.not = icmp eq i64 %polly.indvar_next215.us.us, 60
  br i1 %exitcond936.not, label %polly.loop_preheader235.us, label %polly.loop_header211.us.us

polly.loop_header217.us.us:                       ; preds = %polly.loop_header217.us.us, %polly.loop_header211.us.us
  %polly.indvar220.us.us = phi i64 [ 0, %polly.loop_header211.us.us ], [ %polly.indvar_next221.us.us, %polly.loop_header217.us.us ]
  %110 = add nuw nsw i64 %polly.indvar220.us.us, %98
  %polly.access.mul.call1224.us.us = mul nuw nsw i64 %110, 60
  %polly.access.add.call1225.us.us = add nuw nsw i64 %polly.access.mul.call1224.us.us, %polly.indvar214.us.us
  %polly.access.call1226.us.us = getelementptr double, double* %polly.access.cast.call1620, i64 %polly.access.add.call1225.us.us
  %polly.access.call1226.load.us.us = load double, double* %polly.access.call1226.us.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us.us = add nuw nsw i64 %polly.indvar220.us.us, %polly.access.mul.Packed_MemRef_call1.us.us
  %polly.access.Packed_MemRef_call1.us.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.us
  store double %polly.access.call1226.load.us.us, double* %polly.access.Packed_MemRef_call1.us.us, align 8
  %polly.indvar_next221.us.us = add nuw nsw i64 %polly.indvar220.us.us, 1
  %exitcond935.not = icmp eq i64 %polly.indvar220.us.us, %smin937
  br i1 %exitcond935.not, label %polly.then.us.us, label %polly.loop_header217.us.us

polly.loop_exit207:                               ; preds = %polly.loop_exit236, %polly.loop_exit236.us
  br i1 %97, label %polly.loop_header199, label %polly.exiting

polly.loop_header205:                             ; preds = %polly.loop_header199, %polly.loop_exit236
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit236 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit236 ], [ %98, %polly.loop_header199 ]
  %smin925 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 49)
  %111 = add nsw i64 %polly.indvar208, %99
  br label %polly.loop_header211

polly.loop_exit236:                               ; preds = %polly.loop_exit242
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond928.not = icmp eq i64 %indvars.iv.next, %100
  br i1 %exitcond928.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.merge, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.merge ]
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar214, 80
  br label %polly.loop_header217

polly.merge:                                      ; preds = %polly.loop_header217
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond924.not = icmp eq i64 %polly.indvar_next215, 60
  br i1 %exitcond924.not, label %polly.loop_preheader235, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %112 = add nuw nsw i64 %polly.indvar220, %98
  %polly.access.mul.call1224 = mul nuw nsw i64 %112, 60
  %polly.access.add.call1225 = add nuw nsw i64 %polly.access.mul.call1224, %polly.indvar214
  %polly.access.call1226 = getelementptr double, double* %polly.access.cast.call1620, i64 %polly.access.add.call1225
  %polly.access.call1226.load = load double, double* %polly.access.call1226, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1 = add nuw nsw i64 %polly.indvar220, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1
  store double %polly.access.call1226.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar220, %smin925
  br i1 %exitcond.not, label %polly.merge, label %polly.loop_header217

polly.loop_header234:                             ; preds = %polly.loop_exit242, %polly.loop_preheader235
  %polly.indvar237 = phi i64 [ 0, %polly.loop_preheader235 ], [ %polly.indvar_next238, %polly.loop_exit242 ]
  %113 = shl nuw nsw i64 %polly.indvar237, 3
  %scevgep251 = getelementptr i8, i8* %scevgep250, i64 %113
  %scevgep251252 = bitcast i8* %scevgep251 to double*
  %scevgep254 = getelementptr i8, i8* %call2, i64 %113
  %_p_scalar_253.pre = load double, double* %scevgep251252, align 8, !alias.scope !67, !noalias !73
  %polly.access.mul.Packed_MemRef_call1246 = mul nuw nsw i64 %polly.indvar237, 80
  %polly.access.add.Packed_MemRef_call1259 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1246, %111
  %polly.access.Packed_MemRef_call1260 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1259
  %_p_scalar_261 = load double, double* %polly.access.Packed_MemRef_call1260, align 8
  br label %polly.loop_header240

polly.loop_exit242:                               ; preds = %polly.loop_header240
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond927.not = icmp eq i64 %polly.indvar_next238, 60
  br i1 %exitcond927.not, label %polly.loop_exit236, label %polly.loop_header234

polly.loop_preheader235:                          ; preds = %polly.merge
  %114 = mul nuw nsw i64 %polly.indvar208, 480
  %scevgep250 = getelementptr i8, i8* %call2, i64 %114
  %115 = mul nuw nsw i64 %polly.indvar208, 640
  %scevgep262 = getelementptr i8, i8* %call, i64 %115
  br label %polly.loop_header234

polly.loop_header240:                             ; preds = %polly.loop_header240, %polly.loop_header234
  %polly.indvar243 = phi i64 [ 0, %polly.loop_header234 ], [ %polly.indvar_next244, %polly.loop_header240 ]
  %116 = add nuw nsw i64 %polly.indvar243, %98
  %polly.access.add.Packed_MemRef_call1247 = add nuw nsw i64 %polly.indvar243, %polly.access.mul.Packed_MemRef_call1246
  %polly.access.Packed_MemRef_call1248 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1247
  %_p_scalar_249 = load double, double* %polly.access.Packed_MemRef_call1248, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_253.pre, %_p_scalar_249
  %117 = mul nuw nsw i64 %116, 480
  %scevgep255 = getelementptr i8, i8* %scevgep254, i64 %117
  %scevgep255256 = bitcast i8* %scevgep255 to double*
  %_p_scalar_257 = load double, double* %scevgep255256, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114 = fmul fast double %_p_scalar_261, %_p_scalar_257
  %118 = shl i64 %116, 3
  %scevgep263 = getelementptr i8, i8* %scevgep262, i64 %118
  %scevgep263264 = bitcast i8* %scevgep263 to double*
  %_p_scalar_265 = load double, double* %scevgep263264, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_265
  store double %p_add42.i118, double* %scevgep263264, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next244 = add nuw nsw i64 %polly.indvar243, 1
  %exitcond926.not = icmp eq i64 %polly.indvar243, %smin925
  br i1 %exitcond926.not, label %polly.loop_exit242, label %polly.loop_header240

polly.start268:                                   ; preds = %kernel_syr2k.exit
  %malloccall270 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header354

polly.exiting269:                                 ; preds = %polly.loop_exit378
  tail call void @free(i8* nonnull %malloccall270)
  br label %kernel_syr2k.exit90

polly.loop_header354:                             ; preds = %polly.loop_exit362, %polly.start268
  %indvar1409 = phi i64 [ %indvar.next1410, %polly.loop_exit362 ], [ 0, %polly.start268 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 1, %polly.start268 ]
  %119 = add i64 %indvar1409, 1
  %120 = mul nuw nsw i64 %polly.indvar357, 640
  %scevgep366 = getelementptr i8, i8* %call, i64 %120
  %min.iters.check1411 = icmp ult i64 %119, 4
  br i1 %min.iters.check1411, label %polly.loop_header360.preheader, label %vector.ph1412

vector.ph1412:                                    ; preds = %polly.loop_header354
  %n.vec1414 = and i64 %119, -4
  br label %vector.body1408

vector.body1408:                                  ; preds = %vector.body1408, %vector.ph1412
  %index1415 = phi i64 [ 0, %vector.ph1412 ], [ %index.next1416, %vector.body1408 ]
  %121 = shl nuw nsw i64 %index1415, 3
  %122 = getelementptr i8, i8* %scevgep366, i64 %121
  %123 = bitcast i8* %122 to <4 x double>*
  %wide.load1419 = load <4 x double>, <4 x double>* %123, align 8, !alias.scope !74, !noalias !76
  %124 = fmul fast <4 x double> %wide.load1419, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %125 = bitcast i8* %122 to <4 x double>*
  store <4 x double> %124, <4 x double>* %125, align 8, !alias.scope !74, !noalias !76
  %index.next1416 = add i64 %index1415, 4
  %126 = icmp eq i64 %index.next1416, %n.vec1414
  br i1 %126, label %middle.block1406, label %vector.body1408, !llvm.loop !80

middle.block1406:                                 ; preds = %vector.body1408
  %cmp.n1418 = icmp eq i64 %119, %n.vec1414
  br i1 %cmp.n1418, label %polly.loop_exit362, label %polly.loop_header360.preheader

polly.loop_header360.preheader:                   ; preds = %polly.loop_header354, %middle.block1406
  %polly.indvar363.ph = phi i64 [ 0, %polly.loop_header354 ], [ %n.vec1414, %middle.block1406 ]
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_header360, %middle.block1406
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %exitcond965.not = icmp eq i64 %polly.indvar_next358, 80
  %indvar.next1410 = add i64 %indvar1409, 1
  br i1 %exitcond965.not, label %polly.loop_header370.preheader, label %polly.loop_header354

polly.loop_header370.preheader:                   ; preds = %polly.loop_exit362
  %Packed_MemRef_call1271 = bitcast i8* %malloccall270 to double*
  br label %polly.loop_header370

polly.loop_header360:                             ; preds = %polly.loop_header360.preheader, %polly.loop_header360
  %polly.indvar363 = phi i64 [ %polly.indvar_next364, %polly.loop_header360 ], [ %polly.indvar363.ph, %polly.loop_header360.preheader ]
  %127 = shl nuw nsw i64 %polly.indvar363, 3
  %scevgep367 = getelementptr i8, i8* %scevgep366, i64 %127
  %scevgep367368 = bitcast i8* %scevgep367 to double*
  %_p_scalar_369 = load double, double* %scevgep367368, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_369, 1.200000e+00
  store double %p_mul.i57, double* %scevgep367368, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %exitcond964.not = icmp eq i64 %polly.indvar_next364, %polly.indvar357
  br i1 %exitcond964.not, label %polly.loop_exit362, label %polly.loop_header360, !llvm.loop !81

polly.loop_header370:                             ; preds = %polly.loop_header370.preheader, %polly.loop_exit378
  %128 = phi i1 [ false, %polly.loop_exit378 ], [ true, %polly.loop_header370.preheader ]
  %polly.indvar373 = phi i64 [ 1, %polly.loop_exit378 ], [ 0, %polly.loop_header370.preheader ]
  %129 = mul nuw nsw i64 %polly.indvar373, 50
  %130 = mul nuw nsw i64 %polly.indvar373, -50
  %131 = sub nuw nsw i64 80, %129
  br i1 %128, label %polly.loop_header376.us, label %polly.loop_header376

polly.loop_header376.us:                          ; preds = %polly.loop_header370, %polly.loop_exit411.us
  %indvars.iv952 = phi i64 [ %indvars.iv.next953, %polly.loop_exit411.us ], [ 0, %polly.loop_header370 ]
  %polly.indvar379.us = phi i64 [ %polly.indvar_next380.us, %polly.loop_exit411.us ], [ %129, %polly.loop_header370 ]
  %smin960 = call i64 @llvm.smin.i64(i64 %indvars.iv952, i64 49)
  %132 = add nsw i64 %polly.indvar379.us, %130
  %133 = icmp ugt i64 %polly.indvar379.us, 49
  %polly.access.mul.call1403.us = mul nuw nsw i64 %polly.indvar379.us, 60
  br i1 %133, label %polly.loop_header382.us.us, label %polly.loop_header382.us861

polly.loop_header382.us861:                       ; preds = %polly.loop_header376.us, %polly.merge399.us882
  %polly.indvar385.us862 = phi i64 [ %polly.indvar_next386.us883, %polly.merge399.us882 ], [ 0, %polly.loop_header376.us ]
  %polly.access.mul.Packed_MemRef_call1271.us863 = mul nuw nsw i64 %polly.indvar385.us862, 80
  br label %polly.loop_header388.us864

polly.loop_header388.us864:                       ; preds = %polly.loop_header388.us864, %polly.loop_header382.us861
  %polly.indvar391.us865 = phi i64 [ 0, %polly.loop_header382.us861 ], [ %polly.indvar_next392.us872, %polly.loop_header388.us864 ]
  %134 = add nuw nsw i64 %polly.indvar391.us865, %129
  %polly.access.mul.call1395.us866 = mul nuw nsw i64 %134, 60
  %polly.access.add.call1396.us867 = add nuw nsw i64 %polly.access.mul.call1395.us866, %polly.indvar385.us862
  %polly.access.call1397.us868 = getelementptr double, double* %polly.access.cast.call1620, i64 %polly.access.add.call1396.us867
  %polly.access.call1397.load.us869 = load double, double* %polly.access.call1397.us868, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1271.us870 = add nuw nsw i64 %polly.indvar391.us865, %polly.access.mul.Packed_MemRef_call1271.us863
  %polly.access.Packed_MemRef_call1271.us871 = getelementptr double, double* %Packed_MemRef_call1271, i64 %polly.access.add.Packed_MemRef_call1271.us870
  store double %polly.access.call1397.load.us869, double* %polly.access.Packed_MemRef_call1271.us871, align 8
  %polly.indvar_next392.us872 = add nuw nsw i64 %polly.indvar391.us865, 1
  %exitcond955.not = icmp eq i64 %polly.indvar391.us865, %smin960
  br i1 %exitcond955.not, label %polly.merge399.us882, label %polly.loop_header388.us864

polly.merge399.us882:                             ; preds = %polly.loop_header388.us864
  %polly.indvar_next386.us883 = add nuw nsw i64 %polly.indvar385.us862, 1
  %exitcond956.not = icmp eq i64 %polly.indvar_next386.us883, 60
  br i1 %exitcond956.not, label %polly.loop_preheader410.us, label %polly.loop_header382.us861

polly.loop_preheader410.us:                       ; preds = %polly.merge399.us882, %polly.then400.us.us
  %135 = mul nuw nsw i64 %polly.indvar379.us, 480
  %scevgep425.us = getelementptr i8, i8* %call2, i64 %135
  %136 = mul nuw nsw i64 %polly.indvar379.us, 640
  %scevgep437.us = getelementptr i8, i8* %call, i64 %136
  br label %polly.loop_header409.us

polly.loop_header409.us:                          ; preds = %polly.loop_exit417.us, %polly.loop_preheader410.us
  %polly.indvar412.us = phi i64 [ 0, %polly.loop_preheader410.us ], [ %polly.indvar_next413.us, %polly.loop_exit417.us ]
  %137 = shl nuw nsw i64 %polly.indvar412.us, 3
  %scevgep426.us = getelementptr i8, i8* %scevgep425.us, i64 %137
  %scevgep426427.us = bitcast i8* %scevgep426.us to double*
  %scevgep429.us = getelementptr i8, i8* %call2, i64 %137
  %_p_scalar_428.pre.us = load double, double* %scevgep426427.us, align 8, !alias.scope !78, !noalias !83
  %polly.access.mul.Packed_MemRef_call1271421.us = mul nuw nsw i64 %polly.indvar412.us, 80
  %polly.access.add.Packed_MemRef_call1271434.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1271421.us, %132
  %polly.access.Packed_MemRef_call1271435.us = getelementptr double, double* %Packed_MemRef_call1271, i64 %polly.access.add.Packed_MemRef_call1271434.us
  %_p_scalar_436.us = load double, double* %polly.access.Packed_MemRef_call1271435.us, align 8
  br label %polly.loop_header415.us

polly.loop_header415.us:                          ; preds = %polly.loop_header415.us, %polly.loop_header409.us
  %polly.indvar418.us = phi i64 [ 0, %polly.loop_header409.us ], [ %polly.indvar_next419.us, %polly.loop_header415.us ]
  %138 = add nuw nsw i64 %polly.indvar418.us, %129
  %polly.access.add.Packed_MemRef_call1271422.us = add nuw nsw i64 %polly.indvar418.us, %polly.access.mul.Packed_MemRef_call1271421.us
  %polly.access.Packed_MemRef_call1271423.us = getelementptr double, double* %Packed_MemRef_call1271, i64 %polly.access.add.Packed_MemRef_call1271422.us
  %_p_scalar_424.us = load double, double* %polly.access.Packed_MemRef_call1271423.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_428.pre.us, %_p_scalar_424.us
  %139 = mul nuw nsw i64 %138, 480
  %scevgep430.us = getelementptr i8, i8* %scevgep429.us, i64 %139
  %scevgep430431.us = bitcast i8* %scevgep430.us to double*
  %_p_scalar_432.us = load double, double* %scevgep430431.us, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us = fmul fast double %_p_scalar_436.us, %_p_scalar_432.us
  %140 = shl i64 %138, 3
  %scevgep438.us = getelementptr i8, i8* %scevgep437.us, i64 %140
  %scevgep438439.us = bitcast i8* %scevgep438.us to double*
  %_p_scalar_440.us = load double, double* %scevgep438439.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_440.us
  store double %p_add42.i79.us, double* %scevgep438439.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next419.us = add nuw nsw i64 %polly.indvar418.us, 1
  %exitcond961.not = icmp eq i64 %polly.indvar418.us, %smin960
  br i1 %exitcond961.not, label %polly.loop_exit417.us, label %polly.loop_header415.us

polly.loop_exit417.us:                            ; preds = %polly.loop_header415.us
  %polly.indvar_next413.us = add nuw nsw i64 %polly.indvar412.us, 1
  %exitcond962.not = icmp eq i64 %polly.indvar_next413.us, 60
  br i1 %exitcond962.not, label %polly.loop_exit411.us, label %polly.loop_header409.us

polly.loop_exit411.us:                            ; preds = %polly.loop_exit417.us
  %polly.indvar_next380.us = add nuw nsw i64 %polly.indvar379.us, 1
  %indvars.iv.next953 = add nuw nsw i64 %indvars.iv952, 1
  %exitcond963.not = icmp eq i64 %indvars.iv.next953, %131
  br i1 %exitcond963.not, label %polly.loop_exit378, label %polly.loop_header376.us

polly.loop_header382.us.us:                       ; preds = %polly.loop_header376.us, %polly.then400.us.us
  %polly.indvar385.us.us = phi i64 [ %polly.indvar_next386.us.us, %polly.then400.us.us ], [ 0, %polly.loop_header376.us ]
  %polly.access.mul.Packed_MemRef_call1271.us.us = mul nuw nsw i64 %polly.indvar385.us.us, 80
  br label %polly.loop_header388.us.us

polly.then400.us.us:                              ; preds = %polly.loop_header388.us.us
  %polly.access.add.call1404.us.us = add nuw nsw i64 %polly.indvar385.us.us, %polly.access.mul.call1403.us
  %polly.access.call1405.us.us = getelementptr double, double* %polly.access.cast.call1620, i64 %polly.access.add.call1404.us.us
  %polly.access.call1405.load.us.us = load double, double* %polly.access.call1405.us.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1271407.us.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1271.us.us, %polly.indvar379.us
  %polly.access.Packed_MemRef_call1271408.us.us = getelementptr double, double* %Packed_MemRef_call1271, i64 %polly.access.add.Packed_MemRef_call1271407.us.us
  store double %polly.access.call1405.load.us.us, double* %polly.access.Packed_MemRef_call1271408.us.us, align 8
  %polly.indvar_next386.us.us = add nuw nsw i64 %polly.indvar385.us.us, 1
  %exitcond959.not = icmp eq i64 %polly.indvar_next386.us.us, 60
  br i1 %exitcond959.not, label %polly.loop_preheader410.us, label %polly.loop_header382.us.us

polly.loop_header388.us.us:                       ; preds = %polly.loop_header388.us.us, %polly.loop_header382.us.us
  %polly.indvar391.us.us = phi i64 [ 0, %polly.loop_header382.us.us ], [ %polly.indvar_next392.us.us, %polly.loop_header388.us.us ]
  %141 = add nuw nsw i64 %polly.indvar391.us.us, %129
  %polly.access.mul.call1395.us.us = mul nuw nsw i64 %141, 60
  %polly.access.add.call1396.us.us = add nuw nsw i64 %polly.access.mul.call1395.us.us, %polly.indvar385.us.us
  %polly.access.call1397.us.us = getelementptr double, double* %polly.access.cast.call1620, i64 %polly.access.add.call1396.us.us
  %polly.access.call1397.load.us.us = load double, double* %polly.access.call1397.us.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1271.us.us = add nuw nsw i64 %polly.indvar391.us.us, %polly.access.mul.Packed_MemRef_call1271.us.us
  %polly.access.Packed_MemRef_call1271.us.us = getelementptr double, double* %Packed_MemRef_call1271, i64 %polly.access.add.Packed_MemRef_call1271.us.us
  store double %polly.access.call1397.load.us.us, double* %polly.access.Packed_MemRef_call1271.us.us, align 8
  %polly.indvar_next392.us.us = add nuw nsw i64 %polly.indvar391.us.us, 1
  %exitcond958.not = icmp eq i64 %polly.indvar391.us.us, %smin960
  br i1 %exitcond958.not, label %polly.then400.us.us, label %polly.loop_header388.us.us

polly.loop_exit378:                               ; preds = %polly.loop_exit411, %polly.loop_exit411.us
  br i1 %128, label %polly.loop_header370, label %polly.exiting269

polly.loop_header376:                             ; preds = %polly.loop_header370, %polly.loop_exit411
  %indvars.iv943 = phi i64 [ %indvars.iv.next944, %polly.loop_exit411 ], [ 0, %polly.loop_header370 ]
  %polly.indvar379 = phi i64 [ %polly.indvar_next380, %polly.loop_exit411 ], [ %129, %polly.loop_header370 ]
  %smin948 = call i64 @llvm.smin.i64(i64 %indvars.iv943, i64 49)
  %142 = add nsw i64 %polly.indvar379, %130
  br label %polly.loop_header382

polly.loop_exit411:                               ; preds = %polly.loop_exit417
  %polly.indvar_next380 = add nuw nsw i64 %polly.indvar379, 1
  %indvars.iv.next944 = add nuw nsw i64 %indvars.iv943, 1
  %exitcond951.not = icmp eq i64 %indvars.iv.next944, %131
  br i1 %exitcond951.not, label %polly.loop_exit378, label %polly.loop_header376

polly.loop_header382:                             ; preds = %polly.merge399, %polly.loop_header376
  %polly.indvar385 = phi i64 [ 0, %polly.loop_header376 ], [ %polly.indvar_next386, %polly.merge399 ]
  %polly.access.mul.Packed_MemRef_call1271 = mul nuw nsw i64 %polly.indvar385, 80
  br label %polly.loop_header388

polly.merge399:                                   ; preds = %polly.loop_header388
  %polly.indvar_next386 = add nuw nsw i64 %polly.indvar385, 1
  %exitcond947.not = icmp eq i64 %polly.indvar_next386, 60
  br i1 %exitcond947.not, label %polly.loop_preheader410, label %polly.loop_header382

polly.loop_header388:                             ; preds = %polly.loop_header388, %polly.loop_header382
  %polly.indvar391 = phi i64 [ 0, %polly.loop_header382 ], [ %polly.indvar_next392, %polly.loop_header388 ]
  %143 = add nuw nsw i64 %polly.indvar391, %129
  %polly.access.mul.call1395 = mul nuw nsw i64 %143, 60
  %polly.access.add.call1396 = add nuw nsw i64 %polly.access.mul.call1395, %polly.indvar385
  %polly.access.call1397 = getelementptr double, double* %polly.access.cast.call1620, i64 %polly.access.add.call1396
  %polly.access.call1397.load = load double, double* %polly.access.call1397, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1271 = add nuw nsw i64 %polly.indvar391, %polly.access.mul.Packed_MemRef_call1271
  %polly.access.Packed_MemRef_call1271 = getelementptr double, double* %Packed_MemRef_call1271, i64 %polly.access.add.Packed_MemRef_call1271
  store double %polly.access.call1397.load, double* %polly.access.Packed_MemRef_call1271, align 8
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond946.not = icmp eq i64 %polly.indvar391, %smin948
  br i1 %exitcond946.not, label %polly.merge399, label %polly.loop_header388

polly.loop_header409:                             ; preds = %polly.loop_exit417, %polly.loop_preheader410
  %polly.indvar412 = phi i64 [ 0, %polly.loop_preheader410 ], [ %polly.indvar_next413, %polly.loop_exit417 ]
  %144 = shl nuw nsw i64 %polly.indvar412, 3
  %scevgep426 = getelementptr i8, i8* %scevgep425, i64 %144
  %scevgep426427 = bitcast i8* %scevgep426 to double*
  %scevgep429 = getelementptr i8, i8* %call2, i64 %144
  %_p_scalar_428.pre = load double, double* %scevgep426427, align 8, !alias.scope !78, !noalias !83
  %polly.access.mul.Packed_MemRef_call1271421 = mul nuw nsw i64 %polly.indvar412, 80
  %polly.access.add.Packed_MemRef_call1271434 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1271421, %142
  %polly.access.Packed_MemRef_call1271435 = getelementptr double, double* %Packed_MemRef_call1271, i64 %polly.access.add.Packed_MemRef_call1271434
  %_p_scalar_436 = load double, double* %polly.access.Packed_MemRef_call1271435, align 8
  br label %polly.loop_header415

polly.loop_exit417:                               ; preds = %polly.loop_header415
  %polly.indvar_next413 = add nuw nsw i64 %polly.indvar412, 1
  %exitcond950.not = icmp eq i64 %polly.indvar_next413, 60
  br i1 %exitcond950.not, label %polly.loop_exit411, label %polly.loop_header409

polly.loop_preheader410:                          ; preds = %polly.merge399
  %145 = mul nuw nsw i64 %polly.indvar379, 480
  %scevgep425 = getelementptr i8, i8* %call2, i64 %145
  %146 = mul nuw nsw i64 %polly.indvar379, 640
  %scevgep437 = getelementptr i8, i8* %call, i64 %146
  br label %polly.loop_header409

polly.loop_header415:                             ; preds = %polly.loop_header415, %polly.loop_header409
  %polly.indvar418 = phi i64 [ 0, %polly.loop_header409 ], [ %polly.indvar_next419, %polly.loop_header415 ]
  %147 = add nuw nsw i64 %polly.indvar418, %129
  %polly.access.add.Packed_MemRef_call1271422 = add nuw nsw i64 %polly.indvar418, %polly.access.mul.Packed_MemRef_call1271421
  %polly.access.Packed_MemRef_call1271423 = getelementptr double, double* %Packed_MemRef_call1271, i64 %polly.access.add.Packed_MemRef_call1271422
  %_p_scalar_424 = load double, double* %polly.access.Packed_MemRef_call1271423, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_428.pre, %_p_scalar_424
  %148 = mul nuw nsw i64 %147, 480
  %scevgep430 = getelementptr i8, i8* %scevgep429, i64 %148
  %scevgep430431 = bitcast i8* %scevgep430 to double*
  %_p_scalar_432 = load double, double* %scevgep430431, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75 = fmul fast double %_p_scalar_436, %_p_scalar_432
  %149 = shl i64 %147, 3
  %scevgep438 = getelementptr i8, i8* %scevgep437, i64 %149
  %scevgep438439 = bitcast i8* %scevgep438 to double*
  %_p_scalar_440 = load double, double* %scevgep438439, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_440
  store double %p_add42.i79, double* %scevgep438439, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next419 = add nuw nsw i64 %polly.indvar418, 1
  %exitcond949.not = icmp eq i64 %polly.indvar418, %smin948
  br i1 %exitcond949.not, label %polly.loop_exit417, label %polly.loop_header415

polly.start443:                                   ; preds = %init_array.exit
  %malloccall445 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header529

polly.exiting444:                                 ; preds = %polly.loop_exit553
  tail call void @free(i8* nonnull %malloccall445)
  br label %kernel_syr2k.exit

polly.loop_header529:                             ; preds = %polly.loop_exit537, %polly.start443
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit537 ], [ 0, %polly.start443 ]
  %polly.indvar532 = phi i64 [ %polly.indvar_next533, %polly.loop_exit537 ], [ 1, %polly.start443 ]
  %150 = add i64 %indvar, 1
  %151 = mul nuw nsw i64 %polly.indvar532, 640
  %scevgep541 = getelementptr i8, i8* %call, i64 %151
  %min.iters.check1385 = icmp ult i64 %150, 4
  br i1 %min.iters.check1385, label %polly.loop_header535.preheader, label %vector.ph1386

vector.ph1386:                                    ; preds = %polly.loop_header529
  %n.vec1388 = and i64 %150, -4
  br label %vector.body1384

vector.body1384:                                  ; preds = %vector.body1384, %vector.ph1386
  %index1389 = phi i64 [ 0, %vector.ph1386 ], [ %index.next1390, %vector.body1384 ]
  %152 = shl nuw nsw i64 %index1389, 3
  %153 = getelementptr i8, i8* %scevgep541, i64 %152
  %154 = bitcast i8* %153 to <4 x double>*
  %wide.load1393 = load <4 x double>, <4 x double>* %154, align 8, !alias.scope !84, !noalias !86
  %155 = fmul fast <4 x double> %wide.load1393, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %156 = bitcast i8* %153 to <4 x double>*
  store <4 x double> %155, <4 x double>* %156, align 8, !alias.scope !84, !noalias !86
  %index.next1390 = add i64 %index1389, 4
  %157 = icmp eq i64 %index.next1390, %n.vec1388
  br i1 %157, label %middle.block1382, label %vector.body1384, !llvm.loop !90

middle.block1382:                                 ; preds = %vector.body1384
  %cmp.n1392 = icmp eq i64 %150, %n.vec1388
  br i1 %cmp.n1392, label %polly.loop_exit537, label %polly.loop_header535.preheader

polly.loop_header535.preheader:                   ; preds = %polly.loop_header529, %middle.block1382
  %polly.indvar538.ph = phi i64 [ 0, %polly.loop_header529 ], [ %n.vec1388, %middle.block1382 ]
  br label %polly.loop_header535

polly.loop_exit537:                               ; preds = %polly.loop_header535, %middle.block1382
  %polly.indvar_next533 = add nuw nsw i64 %polly.indvar532, 1
  %exitcond988.not = icmp eq i64 %polly.indvar_next533, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond988.not, label %polly.loop_header545.preheader, label %polly.loop_header529

polly.loop_header545.preheader:                   ; preds = %polly.loop_exit537
  %Packed_MemRef_call1446 = bitcast i8* %malloccall445 to double*
  br label %polly.loop_header545

polly.loop_header535:                             ; preds = %polly.loop_header535.preheader, %polly.loop_header535
  %polly.indvar538 = phi i64 [ %polly.indvar_next539, %polly.loop_header535 ], [ %polly.indvar538.ph, %polly.loop_header535.preheader ]
  %158 = shl nuw nsw i64 %polly.indvar538, 3
  %scevgep542 = getelementptr i8, i8* %scevgep541, i64 %158
  %scevgep542543 = bitcast i8* %scevgep542 to double*
  %_p_scalar_544 = load double, double* %scevgep542543, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_544, 1.200000e+00
  store double %p_mul.i, double* %scevgep542543, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next539 = add nuw nsw i64 %polly.indvar538, 1
  %exitcond987.not = icmp eq i64 %polly.indvar_next539, %polly.indvar532
  br i1 %exitcond987.not, label %polly.loop_exit537, label %polly.loop_header535, !llvm.loop !91

polly.loop_header545:                             ; preds = %polly.loop_header545.preheader, %polly.loop_exit553
  %159 = phi i1 [ false, %polly.loop_exit553 ], [ true, %polly.loop_header545.preheader ]
  %polly.indvar548 = phi i64 [ 1, %polly.loop_exit553 ], [ 0, %polly.loop_header545.preheader ]
  %160 = mul nuw nsw i64 %polly.indvar548, 50
  %161 = mul nuw nsw i64 %polly.indvar548, -50
  %162 = sub nuw nsw i64 80, %160
  br i1 %159, label %polly.loop_header551.us, label %polly.loop_header551

polly.loop_header551.us:                          ; preds = %polly.loop_header545, %polly.loop_exit586.us
  %indvars.iv975 = phi i64 [ %indvars.iv.next976, %polly.loop_exit586.us ], [ 0, %polly.loop_header545 ]
  %polly.indvar554.us = phi i64 [ %polly.indvar_next555.us, %polly.loop_exit586.us ], [ %160, %polly.loop_header545 ]
  %smin983 = call i64 @llvm.smin.i64(i64 %indvars.iv975, i64 49)
  %163 = add nsw i64 %polly.indvar554.us, %161
  %164 = icmp ugt i64 %polly.indvar554.us, 49
  %polly.access.mul.call1578.us = mul nuw nsw i64 %polly.indvar554.us, 60
  br i1 %164, label %polly.loop_header557.us.us, label %polly.loop_header557.us889

polly.loop_header557.us889:                       ; preds = %polly.loop_header551.us, %polly.merge574.us910
  %polly.indvar560.us890 = phi i64 [ %polly.indvar_next561.us911, %polly.merge574.us910 ], [ 0, %polly.loop_header551.us ]
  %polly.access.mul.Packed_MemRef_call1446.us891 = mul nuw nsw i64 %polly.indvar560.us890, 80
  br label %polly.loop_header563.us892

polly.loop_header563.us892:                       ; preds = %polly.loop_header563.us892, %polly.loop_header557.us889
  %polly.indvar566.us893 = phi i64 [ 0, %polly.loop_header557.us889 ], [ %polly.indvar_next567.us900, %polly.loop_header563.us892 ]
  %165 = add nuw nsw i64 %polly.indvar566.us893, %160
  %polly.access.mul.call1570.us894 = mul nuw nsw i64 %165, 60
  %polly.access.add.call1571.us895 = add nuw nsw i64 %polly.access.mul.call1570.us894, %polly.indvar560.us890
  %polly.access.call1572.us896 = getelementptr double, double* %polly.access.cast.call1620, i64 %polly.access.add.call1571.us895
  %polly.access.call1572.load.us897 = load double, double* %polly.access.call1572.us896, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1446.us898 = add nuw nsw i64 %polly.indvar566.us893, %polly.access.mul.Packed_MemRef_call1446.us891
  %polly.access.Packed_MemRef_call1446.us899 = getelementptr double, double* %Packed_MemRef_call1446, i64 %polly.access.add.Packed_MemRef_call1446.us898
  store double %polly.access.call1572.load.us897, double* %polly.access.Packed_MemRef_call1446.us899, align 8
  %polly.indvar_next567.us900 = add nuw nsw i64 %polly.indvar566.us893, 1
  %exitcond978.not = icmp eq i64 %polly.indvar566.us893, %smin983
  br i1 %exitcond978.not, label %polly.merge574.us910, label %polly.loop_header563.us892

polly.merge574.us910:                             ; preds = %polly.loop_header563.us892
  %polly.indvar_next561.us911 = add nuw nsw i64 %polly.indvar560.us890, 1
  %exitcond979.not = icmp eq i64 %polly.indvar_next561.us911, 60
  br i1 %exitcond979.not, label %polly.loop_preheader585.us, label %polly.loop_header557.us889

polly.loop_preheader585.us:                       ; preds = %polly.merge574.us910, %polly.then575.us.us
  %166 = mul nuw nsw i64 %polly.indvar554.us, 480
  %scevgep600.us = getelementptr i8, i8* %call2, i64 %166
  %167 = mul nuw nsw i64 %polly.indvar554.us, 640
  %scevgep612.us = getelementptr i8, i8* %call, i64 %167
  br label %polly.loop_header584.us

polly.loop_header584.us:                          ; preds = %polly.loop_exit592.us, %polly.loop_preheader585.us
  %polly.indvar587.us = phi i64 [ 0, %polly.loop_preheader585.us ], [ %polly.indvar_next588.us, %polly.loop_exit592.us ]
  %168 = shl nuw nsw i64 %polly.indvar587.us, 3
  %scevgep601.us = getelementptr i8, i8* %scevgep600.us, i64 %168
  %scevgep601602.us = bitcast i8* %scevgep601.us to double*
  %scevgep604.us = getelementptr i8, i8* %call2, i64 %168
  %_p_scalar_603.pre.us = load double, double* %scevgep601602.us, align 8, !alias.scope !88, !noalias !93
  %polly.access.mul.Packed_MemRef_call1446596.us = mul nuw nsw i64 %polly.indvar587.us, 80
  %polly.access.add.Packed_MemRef_call1446609.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1446596.us, %163
  %polly.access.Packed_MemRef_call1446610.us = getelementptr double, double* %Packed_MemRef_call1446, i64 %polly.access.add.Packed_MemRef_call1446609.us
  %_p_scalar_611.us = load double, double* %polly.access.Packed_MemRef_call1446610.us, align 8
  br label %polly.loop_header590.us

polly.loop_header590.us:                          ; preds = %polly.loop_header590.us, %polly.loop_header584.us
  %polly.indvar593.us = phi i64 [ 0, %polly.loop_header584.us ], [ %polly.indvar_next594.us, %polly.loop_header590.us ]
  %169 = add nuw nsw i64 %polly.indvar593.us, %160
  %polly.access.add.Packed_MemRef_call1446597.us = add nuw nsw i64 %polly.indvar593.us, %polly.access.mul.Packed_MemRef_call1446596.us
  %polly.access.Packed_MemRef_call1446598.us = getelementptr double, double* %Packed_MemRef_call1446, i64 %polly.access.add.Packed_MemRef_call1446597.us
  %_p_scalar_599.us = load double, double* %polly.access.Packed_MemRef_call1446598.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_603.pre.us, %_p_scalar_599.us
  %170 = mul nuw nsw i64 %169, 480
  %scevgep605.us = getelementptr i8, i8* %scevgep604.us, i64 %170
  %scevgep605606.us = bitcast i8* %scevgep605.us to double*
  %_p_scalar_607.us = load double, double* %scevgep605606.us, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us = fmul fast double %_p_scalar_611.us, %_p_scalar_607.us
  %171 = shl i64 %169, 3
  %scevgep613.us = getelementptr i8, i8* %scevgep612.us, i64 %171
  %scevgep613614.us = bitcast i8* %scevgep613.us to double*
  %_p_scalar_615.us = load double, double* %scevgep613614.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_615.us
  store double %p_add42.i.us, double* %scevgep613614.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next594.us = add nuw nsw i64 %polly.indvar593.us, 1
  %exitcond984.not = icmp eq i64 %polly.indvar593.us, %smin983
  br i1 %exitcond984.not, label %polly.loop_exit592.us, label %polly.loop_header590.us

polly.loop_exit592.us:                            ; preds = %polly.loop_header590.us
  %polly.indvar_next588.us = add nuw nsw i64 %polly.indvar587.us, 1
  %exitcond985.not = icmp eq i64 %polly.indvar_next588.us, 60
  br i1 %exitcond985.not, label %polly.loop_exit586.us, label %polly.loop_header584.us

polly.loop_exit586.us:                            ; preds = %polly.loop_exit592.us
  %polly.indvar_next555.us = add nuw nsw i64 %polly.indvar554.us, 1
  %indvars.iv.next976 = add nuw nsw i64 %indvars.iv975, 1
  %exitcond986.not = icmp eq i64 %indvars.iv.next976, %162
  br i1 %exitcond986.not, label %polly.loop_exit553, label %polly.loop_header551.us

polly.loop_header557.us.us:                       ; preds = %polly.loop_header551.us, %polly.then575.us.us
  %polly.indvar560.us.us = phi i64 [ %polly.indvar_next561.us.us, %polly.then575.us.us ], [ 0, %polly.loop_header551.us ]
  %polly.access.mul.Packed_MemRef_call1446.us.us = mul nuw nsw i64 %polly.indvar560.us.us, 80
  br label %polly.loop_header563.us.us

polly.then575.us.us:                              ; preds = %polly.loop_header563.us.us
  %polly.access.add.call1579.us.us = add nuw nsw i64 %polly.indvar560.us.us, %polly.access.mul.call1578.us
  %polly.access.call1580.us.us = getelementptr double, double* %polly.access.cast.call1620, i64 %polly.access.add.call1579.us.us
  %polly.access.call1580.load.us.us = load double, double* %polly.access.call1580.us.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1446582.us.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1446.us.us, %polly.indvar554.us
  %polly.access.Packed_MemRef_call1446583.us.us = getelementptr double, double* %Packed_MemRef_call1446, i64 %polly.access.add.Packed_MemRef_call1446582.us.us
  store double %polly.access.call1580.load.us.us, double* %polly.access.Packed_MemRef_call1446583.us.us, align 8
  %polly.indvar_next561.us.us = add nuw nsw i64 %polly.indvar560.us.us, 1
  %exitcond982.not = icmp eq i64 %polly.indvar_next561.us.us, 60
  br i1 %exitcond982.not, label %polly.loop_preheader585.us, label %polly.loop_header557.us.us

polly.loop_header563.us.us:                       ; preds = %polly.loop_header563.us.us, %polly.loop_header557.us.us
  %polly.indvar566.us.us = phi i64 [ 0, %polly.loop_header557.us.us ], [ %polly.indvar_next567.us.us, %polly.loop_header563.us.us ]
  %172 = add nuw nsw i64 %polly.indvar566.us.us, %160
  %polly.access.mul.call1570.us.us = mul nuw nsw i64 %172, 60
  %polly.access.add.call1571.us.us = add nuw nsw i64 %polly.access.mul.call1570.us.us, %polly.indvar560.us.us
  %polly.access.call1572.us.us = getelementptr double, double* %polly.access.cast.call1620, i64 %polly.access.add.call1571.us.us
  %polly.access.call1572.load.us.us = load double, double* %polly.access.call1572.us.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1446.us.us = add nuw nsw i64 %polly.indvar566.us.us, %polly.access.mul.Packed_MemRef_call1446.us.us
  %polly.access.Packed_MemRef_call1446.us.us = getelementptr double, double* %Packed_MemRef_call1446, i64 %polly.access.add.Packed_MemRef_call1446.us.us
  store double %polly.access.call1572.load.us.us, double* %polly.access.Packed_MemRef_call1446.us.us, align 8
  %polly.indvar_next567.us.us = add nuw nsw i64 %polly.indvar566.us.us, 1
  %exitcond981.not = icmp eq i64 %polly.indvar566.us.us, %smin983
  br i1 %exitcond981.not, label %polly.then575.us.us, label %polly.loop_header563.us.us

polly.loop_exit553:                               ; preds = %polly.loop_exit586, %polly.loop_exit586.us
  br i1 %159, label %polly.loop_header545, label %polly.exiting444

polly.loop_header551:                             ; preds = %polly.loop_header545, %polly.loop_exit586
  %indvars.iv966 = phi i64 [ %indvars.iv.next967, %polly.loop_exit586 ], [ 0, %polly.loop_header545 ]
  %polly.indvar554 = phi i64 [ %polly.indvar_next555, %polly.loop_exit586 ], [ %160, %polly.loop_header545 ]
  %smin971 = call i64 @llvm.smin.i64(i64 %indvars.iv966, i64 49)
  %173 = add nsw i64 %polly.indvar554, %161
  br label %polly.loop_header557

polly.loop_exit586:                               ; preds = %polly.loop_exit592
  %polly.indvar_next555 = add nuw nsw i64 %polly.indvar554, 1
  %indvars.iv.next967 = add nuw nsw i64 %indvars.iv966, 1
  %exitcond974.not = icmp eq i64 %indvars.iv.next967, %162
  br i1 %exitcond974.not, label %polly.loop_exit553, label %polly.loop_header551

polly.loop_header557:                             ; preds = %polly.merge574, %polly.loop_header551
  %polly.indvar560 = phi i64 [ 0, %polly.loop_header551 ], [ %polly.indvar_next561, %polly.merge574 ]
  %polly.access.mul.Packed_MemRef_call1446 = mul nuw nsw i64 %polly.indvar560, 80
  br label %polly.loop_header563

polly.merge574:                                   ; preds = %polly.loop_header563
  %polly.indvar_next561 = add nuw nsw i64 %polly.indvar560, 1
  %exitcond970.not = icmp eq i64 %polly.indvar_next561, 60
  br i1 %exitcond970.not, label %polly.loop_preheader585, label %polly.loop_header557

polly.loop_header563:                             ; preds = %polly.loop_header563, %polly.loop_header557
  %polly.indvar566 = phi i64 [ 0, %polly.loop_header557 ], [ %polly.indvar_next567, %polly.loop_header563 ]
  %174 = add nuw nsw i64 %polly.indvar566, %160
  %polly.access.mul.call1570 = mul nuw nsw i64 %174, 60
  %polly.access.add.call1571 = add nuw nsw i64 %polly.access.mul.call1570, %polly.indvar560
  %polly.access.call1572 = getelementptr double, double* %polly.access.cast.call1620, i64 %polly.access.add.call1571
  %polly.access.call1572.load = load double, double* %polly.access.call1572, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1446 = add nuw nsw i64 %polly.indvar566, %polly.access.mul.Packed_MemRef_call1446
  %polly.access.Packed_MemRef_call1446 = getelementptr double, double* %Packed_MemRef_call1446, i64 %polly.access.add.Packed_MemRef_call1446
  store double %polly.access.call1572.load, double* %polly.access.Packed_MemRef_call1446, align 8
  %polly.indvar_next567 = add nuw nsw i64 %polly.indvar566, 1
  %exitcond969.not = icmp eq i64 %polly.indvar566, %smin971
  br i1 %exitcond969.not, label %polly.merge574, label %polly.loop_header563

polly.loop_header584:                             ; preds = %polly.loop_exit592, %polly.loop_preheader585
  %polly.indvar587 = phi i64 [ 0, %polly.loop_preheader585 ], [ %polly.indvar_next588, %polly.loop_exit592 ]
  %175 = shl nuw nsw i64 %polly.indvar587, 3
  %scevgep601 = getelementptr i8, i8* %scevgep600, i64 %175
  %scevgep601602 = bitcast i8* %scevgep601 to double*
  %scevgep604 = getelementptr i8, i8* %call2, i64 %175
  %_p_scalar_603.pre = load double, double* %scevgep601602, align 8, !alias.scope !88, !noalias !93
  %polly.access.mul.Packed_MemRef_call1446596 = mul nuw nsw i64 %polly.indvar587, 80
  %polly.access.add.Packed_MemRef_call1446609 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1446596, %173
  %polly.access.Packed_MemRef_call1446610 = getelementptr double, double* %Packed_MemRef_call1446, i64 %polly.access.add.Packed_MemRef_call1446609
  %_p_scalar_611 = load double, double* %polly.access.Packed_MemRef_call1446610, align 8
  br label %polly.loop_header590

polly.loop_exit592:                               ; preds = %polly.loop_header590
  %polly.indvar_next588 = add nuw nsw i64 %polly.indvar587, 1
  %exitcond973.not = icmp eq i64 %polly.indvar_next588, 60
  br i1 %exitcond973.not, label %polly.loop_exit586, label %polly.loop_header584

polly.loop_preheader585:                          ; preds = %polly.merge574
  %176 = mul nuw nsw i64 %polly.indvar554, 480
  %scevgep600 = getelementptr i8, i8* %call2, i64 %176
  %177 = mul nuw nsw i64 %polly.indvar554, 640
  %scevgep612 = getelementptr i8, i8* %call, i64 %177
  br label %polly.loop_header584

polly.loop_header590:                             ; preds = %polly.loop_header590, %polly.loop_header584
  %polly.indvar593 = phi i64 [ 0, %polly.loop_header584 ], [ %polly.indvar_next594, %polly.loop_header590 ]
  %178 = add nuw nsw i64 %polly.indvar593, %160
  %polly.access.add.Packed_MemRef_call1446597 = add nuw nsw i64 %polly.indvar593, %polly.access.mul.Packed_MemRef_call1446596
  %polly.access.Packed_MemRef_call1446598 = getelementptr double, double* %Packed_MemRef_call1446, i64 %polly.access.add.Packed_MemRef_call1446597
  %_p_scalar_599 = load double, double* %polly.access.Packed_MemRef_call1446598, align 8
  %p_mul27.i = fmul fast double %_p_scalar_603.pre, %_p_scalar_599
  %179 = mul nuw nsw i64 %178, 480
  %scevgep605 = getelementptr i8, i8* %scevgep604, i64 %179
  %scevgep605606 = bitcast i8* %scevgep605 to double*
  %_p_scalar_607 = load double, double* %scevgep605606, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i = fmul fast double %_p_scalar_611, %_p_scalar_607
  %180 = shl i64 %178, 3
  %scevgep613 = getelementptr i8, i8* %scevgep612, i64 %180
  %scevgep613614 = bitcast i8* %scevgep613 to double*
  %_p_scalar_615 = load double, double* %scevgep613614, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_615
  store double %p_add42.i, double* %scevgep613614, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next594 = add nuw nsw i64 %polly.indvar593, 1
  %exitcond972.not = icmp eq i64 %polly.indvar593, %smin971
  br i1 %exitcond972.not, label %polly.loop_exit592, label %polly.loop_header590

polly.loop_header754:                             ; preds = %entry, %polly.loop_exit762
  %polly.indvar757 = phi i64 [ %polly.indvar_next758, %polly.loop_exit762 ], [ 0, %entry ]
  %181 = mul nuw nsw i64 %polly.indvar757, 640
  %182 = trunc i64 %polly.indvar757 to i32
  %broadcast.splatinsert1116 = insertelement <4 x i32> poison, i32 %182, i32 0
  %broadcast.splat1117 = shufflevector <4 x i32> %broadcast.splatinsert1116, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1106

vector.body1106:                                  ; preds = %vector.body1106, %polly.loop_header754
  %index1108 = phi i64 [ 0, %polly.loop_header754 ], [ %index.next1109, %vector.body1106 ]
  %vec.ind1114 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header754 ], [ %vec.ind.next1115, %vector.body1106 ]
  %183 = mul <4 x i32> %vec.ind1114, %broadcast.splat1117
  %184 = add <4 x i32> %183, <i32 3, i32 3, i32 3, i32 3>
  %185 = urem <4 x i32> %184, <i32 80, i32 80, i32 80, i32 80>
  %186 = sitofp <4 x i32> %185 to <4 x double>
  %187 = fmul fast <4 x double> %186, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %188 = shl i64 %index1108, 3
  %189 = add nuw nsw i64 %188, %181
  %190 = getelementptr i8, i8* %call, i64 %189
  %191 = bitcast i8* %190 to <4 x double>*
  store <4 x double> %187, <4 x double>* %191, align 8, !alias.scope !94, !noalias !96
  %index.next1109 = add i64 %index1108, 4
  %vec.ind.next1115 = add <4 x i32> %vec.ind1114, <i32 4, i32 4, i32 4, i32 4>
  %192 = icmp eq i64 %index.next1109, 32
  br i1 %192, label %polly.loop_exit762, label %vector.body1106, !llvm.loop !99

polly.loop_exit762:                               ; preds = %vector.body1106
  %polly.indvar_next758 = add nuw nsw i64 %polly.indvar757, 1
  %exitcond1008.not = icmp eq i64 %polly.indvar_next758, 32
  br i1 %exitcond1008.not, label %polly.loop_header754.1, label %polly.loop_header754

polly.loop_header781:                             ; preds = %polly.loop_exit762.2.2, %polly.loop_exit789
  %polly.indvar784 = phi i64 [ %polly.indvar_next785, %polly.loop_exit789 ], [ 0, %polly.loop_exit762.2.2 ]
  %193 = mul nuw nsw i64 %polly.indvar784, 480
  %194 = trunc i64 %polly.indvar784 to i32
  %broadcast.splatinsert1230 = insertelement <4 x i32> poison, i32 %194, i32 0
  %broadcast.splat1231 = shufflevector <4 x i32> %broadcast.splatinsert1230, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1220

vector.body1220:                                  ; preds = %vector.body1220, %polly.loop_header781
  %index1222 = phi i64 [ 0, %polly.loop_header781 ], [ %index.next1223, %vector.body1220 ]
  %vec.ind1228 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header781 ], [ %vec.ind.next1229, %vector.body1220 ]
  %195 = mul <4 x i32> %vec.ind1228, %broadcast.splat1231
  %196 = add <4 x i32> %195, <i32 2, i32 2, i32 2, i32 2>
  %197 = urem <4 x i32> %196, <i32 60, i32 60, i32 60, i32 60>
  %198 = sitofp <4 x i32> %197 to <4 x double>
  %199 = fmul fast <4 x double> %198, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %200 = shl i64 %index1222, 3
  %201 = add i64 %200, %193
  %202 = getelementptr i8, i8* %call2, i64 %201
  %203 = bitcast i8* %202 to <4 x double>*
  store <4 x double> %199, <4 x double>* %203, align 8, !alias.scope !98, !noalias !100
  %index.next1223 = add i64 %index1222, 4
  %vec.ind.next1229 = add <4 x i32> %vec.ind1228, <i32 4, i32 4, i32 4, i32 4>
  %204 = icmp eq i64 %index.next1223, 32
  br i1 %204, label %polly.loop_exit789, label %vector.body1220, !llvm.loop !101

polly.loop_exit789:                               ; preds = %vector.body1220
  %polly.indvar_next785 = add nuw nsw i64 %polly.indvar784, 1
  %exitcond999.not = icmp eq i64 %polly.indvar_next785, 32
  br i1 %exitcond999.not, label %polly.loop_header781.1, label %polly.loop_header781

polly.loop_header807:                             ; preds = %polly.loop_exit789.1.2, %polly.loop_exit815
  %polly.indvar810 = phi i64 [ %polly.indvar_next811, %polly.loop_exit815 ], [ 0, %polly.loop_exit789.1.2 ]
  %205 = mul nuw nsw i64 %polly.indvar810, 480
  %206 = trunc i64 %polly.indvar810 to i32
  %broadcast.splatinsert1308 = insertelement <4 x i32> poison, i32 %206, i32 0
  %broadcast.splat1309 = shufflevector <4 x i32> %broadcast.splatinsert1308, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1298

vector.body1298:                                  ; preds = %vector.body1298, %polly.loop_header807
  %index1300 = phi i64 [ 0, %polly.loop_header807 ], [ %index.next1301, %vector.body1298 ]
  %vec.ind1306 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header807 ], [ %vec.ind.next1307, %vector.body1298 ]
  %207 = mul <4 x i32> %vec.ind1306, %broadcast.splat1309
  %208 = add <4 x i32> %207, <i32 1, i32 1, i32 1, i32 1>
  %209 = urem <4 x i32> %208, <i32 80, i32 80, i32 80, i32 80>
  %210 = sitofp <4 x i32> %209 to <4 x double>
  %211 = fmul fast <4 x double> %210, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %212 = shl i64 %index1300, 3
  %213 = add i64 %212, %205
  %214 = getelementptr i8, i8* %call1, i64 %213
  %215 = bitcast i8* %214 to <4 x double>*
  store <4 x double> %211, <4 x double>* %215, align 8, !alias.scope !97, !noalias !102
  %index.next1301 = add i64 %index1300, 4
  %vec.ind.next1307 = add <4 x i32> %vec.ind1306, <i32 4, i32 4, i32 4, i32 4>
  %216 = icmp eq i64 %index.next1301, 32
  br i1 %216, label %polly.loop_exit815, label %vector.body1298, !llvm.loop !103

polly.loop_exit815:                               ; preds = %vector.body1298
  %polly.indvar_next811 = add nuw nsw i64 %polly.indvar810, 1
  %exitcond993.not = icmp eq i64 %polly.indvar_next811, 32
  br i1 %exitcond993.not, label %polly.loop_header807.1, label %polly.loop_header807

polly.loop_header807.1:                           ; preds = %polly.loop_exit815, %polly.loop_exit815.1
  %polly.indvar810.1 = phi i64 [ %polly.indvar_next811.1, %polly.loop_exit815.1 ], [ 0, %polly.loop_exit815 ]
  %217 = mul nuw nsw i64 %polly.indvar810.1, 480
  %218 = trunc i64 %polly.indvar810.1 to i32
  %broadcast.splatinsert1320 = insertelement <4 x i32> poison, i32 %218, i32 0
  %broadcast.splat1321 = shufflevector <4 x i32> %broadcast.splatinsert1320, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1312

vector.body1312:                                  ; preds = %vector.body1312, %polly.loop_header807.1
  %index1314 = phi i64 [ 0, %polly.loop_header807.1 ], [ %index.next1315, %vector.body1312 ]
  %vec.ind1318 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header807.1 ], [ %vec.ind.next1319, %vector.body1312 ]
  %219 = add nuw nsw <4 x i64> %vec.ind1318, <i64 32, i64 32, i64 32, i64 32>
  %220 = trunc <4 x i64> %219 to <4 x i32>
  %221 = mul <4 x i32> %broadcast.splat1321, %220
  %222 = add <4 x i32> %221, <i32 1, i32 1, i32 1, i32 1>
  %223 = urem <4 x i32> %222, <i32 80, i32 80, i32 80, i32 80>
  %224 = sitofp <4 x i32> %223 to <4 x double>
  %225 = fmul fast <4 x double> %224, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %226 = extractelement <4 x i64> %219, i32 0
  %227 = shl i64 %226, 3
  %228 = add i64 %227, %217
  %229 = getelementptr i8, i8* %call1, i64 %228
  %230 = bitcast i8* %229 to <4 x double>*
  store <4 x double> %225, <4 x double>* %230, align 8, !alias.scope !97, !noalias !102
  %index.next1315 = add i64 %index1314, 4
  %vec.ind.next1319 = add <4 x i64> %vec.ind1318, <i64 4, i64 4, i64 4, i64 4>
  %231 = icmp eq i64 %index.next1315, 28
  br i1 %231, label %polly.loop_exit815.1, label %vector.body1312, !llvm.loop !104

polly.loop_exit815.1:                             ; preds = %vector.body1312
  %polly.indvar_next811.1 = add nuw nsw i64 %polly.indvar810.1, 1
  %exitcond993.1.not = icmp eq i64 %polly.indvar_next811.1, 32
  br i1 %exitcond993.1.not, label %polly.loop_header807.11019, label %polly.loop_header807.1

polly.loop_header807.11019:                       ; preds = %polly.loop_exit815.1, %polly.loop_exit815.11030
  %polly.indvar810.11018 = phi i64 [ %polly.indvar_next811.11028, %polly.loop_exit815.11030 ], [ 0, %polly.loop_exit815.1 ]
  %232 = add nuw nsw i64 %polly.indvar810.11018, 32
  %233 = mul nuw nsw i64 %232, 480
  %234 = trunc i64 %232 to i32
  %broadcast.splatinsert1334 = insertelement <4 x i32> poison, i32 %234, i32 0
  %broadcast.splat1335 = shufflevector <4 x i32> %broadcast.splatinsert1334, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1324

vector.body1324:                                  ; preds = %vector.body1324, %polly.loop_header807.11019
  %index1326 = phi i64 [ 0, %polly.loop_header807.11019 ], [ %index.next1327, %vector.body1324 ]
  %vec.ind1332 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header807.11019 ], [ %vec.ind.next1333, %vector.body1324 ]
  %235 = mul <4 x i32> %vec.ind1332, %broadcast.splat1335
  %236 = add <4 x i32> %235, <i32 1, i32 1, i32 1, i32 1>
  %237 = urem <4 x i32> %236, <i32 80, i32 80, i32 80, i32 80>
  %238 = sitofp <4 x i32> %237 to <4 x double>
  %239 = fmul fast <4 x double> %238, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %240 = shl i64 %index1326, 3
  %241 = add i64 %240, %233
  %242 = getelementptr i8, i8* %call1, i64 %241
  %243 = bitcast i8* %242 to <4 x double>*
  store <4 x double> %239, <4 x double>* %243, align 8, !alias.scope !97, !noalias !102
  %index.next1327 = add i64 %index1326, 4
  %vec.ind.next1333 = add <4 x i32> %vec.ind1332, <i32 4, i32 4, i32 4, i32 4>
  %244 = icmp eq i64 %index.next1327, 32
  br i1 %244, label %polly.loop_exit815.11030, label %vector.body1324, !llvm.loop !105

polly.loop_exit815.11030:                         ; preds = %vector.body1324
  %polly.indvar_next811.11028 = add nuw nsw i64 %polly.indvar810.11018, 1
  %exitcond993.11029.not = icmp eq i64 %polly.indvar_next811.11028, 32
  br i1 %exitcond993.11029.not, label %polly.loop_header807.1.1, label %polly.loop_header807.11019

polly.loop_header807.1.1:                         ; preds = %polly.loop_exit815.11030, %polly.loop_exit815.1.1
  %polly.indvar810.1.1 = phi i64 [ %polly.indvar_next811.1.1, %polly.loop_exit815.1.1 ], [ 0, %polly.loop_exit815.11030 ]
  %245 = add nuw nsw i64 %polly.indvar810.1.1, 32
  %246 = mul nuw nsw i64 %245, 480
  %247 = trunc i64 %245 to i32
  %broadcast.splatinsert1346 = insertelement <4 x i32> poison, i32 %247, i32 0
  %broadcast.splat1347 = shufflevector <4 x i32> %broadcast.splatinsert1346, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1338

vector.body1338:                                  ; preds = %vector.body1338, %polly.loop_header807.1.1
  %index1340 = phi i64 [ 0, %polly.loop_header807.1.1 ], [ %index.next1341, %vector.body1338 ]
  %vec.ind1344 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header807.1.1 ], [ %vec.ind.next1345, %vector.body1338 ]
  %248 = add nuw nsw <4 x i64> %vec.ind1344, <i64 32, i64 32, i64 32, i64 32>
  %249 = trunc <4 x i64> %248 to <4 x i32>
  %250 = mul <4 x i32> %broadcast.splat1347, %249
  %251 = add <4 x i32> %250, <i32 1, i32 1, i32 1, i32 1>
  %252 = urem <4 x i32> %251, <i32 80, i32 80, i32 80, i32 80>
  %253 = sitofp <4 x i32> %252 to <4 x double>
  %254 = fmul fast <4 x double> %253, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %255 = extractelement <4 x i64> %248, i32 0
  %256 = shl i64 %255, 3
  %257 = add i64 %256, %246
  %258 = getelementptr i8, i8* %call1, i64 %257
  %259 = bitcast i8* %258 to <4 x double>*
  store <4 x double> %254, <4 x double>* %259, align 8, !alias.scope !97, !noalias !102
  %index.next1341 = add i64 %index1340, 4
  %vec.ind.next1345 = add <4 x i64> %vec.ind1344, <i64 4, i64 4, i64 4, i64 4>
  %260 = icmp eq i64 %index.next1341, 28
  br i1 %260, label %polly.loop_exit815.1.1, label %vector.body1338, !llvm.loop !106

polly.loop_exit815.1.1:                           ; preds = %vector.body1338
  %polly.indvar_next811.1.1 = add nuw nsw i64 %polly.indvar810.1.1, 1
  %exitcond993.1.1.not = icmp eq i64 %polly.indvar_next811.1.1, 32
  br i1 %exitcond993.1.1.not, label %polly.loop_header807.2, label %polly.loop_header807.1.1

polly.loop_header807.2:                           ; preds = %polly.loop_exit815.1.1, %polly.loop_exit815.2
  %polly.indvar810.2 = phi i64 [ %polly.indvar_next811.2, %polly.loop_exit815.2 ], [ 0, %polly.loop_exit815.1.1 ]
  %261 = add nuw nsw i64 %polly.indvar810.2, 64
  %262 = mul nuw nsw i64 %261, 480
  %263 = trunc i64 %261 to i32
  %broadcast.splatinsert1360 = insertelement <4 x i32> poison, i32 %263, i32 0
  %broadcast.splat1361 = shufflevector <4 x i32> %broadcast.splatinsert1360, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1350

vector.body1350:                                  ; preds = %vector.body1350, %polly.loop_header807.2
  %index1352 = phi i64 [ 0, %polly.loop_header807.2 ], [ %index.next1353, %vector.body1350 ]
  %vec.ind1358 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header807.2 ], [ %vec.ind.next1359, %vector.body1350 ]
  %264 = mul <4 x i32> %vec.ind1358, %broadcast.splat1361
  %265 = add <4 x i32> %264, <i32 1, i32 1, i32 1, i32 1>
  %266 = urem <4 x i32> %265, <i32 80, i32 80, i32 80, i32 80>
  %267 = sitofp <4 x i32> %266 to <4 x double>
  %268 = fmul fast <4 x double> %267, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %269 = shl i64 %index1352, 3
  %270 = add i64 %269, %262
  %271 = getelementptr i8, i8* %call1, i64 %270
  %272 = bitcast i8* %271 to <4 x double>*
  store <4 x double> %268, <4 x double>* %272, align 8, !alias.scope !97, !noalias !102
  %index.next1353 = add i64 %index1352, 4
  %vec.ind.next1359 = add <4 x i32> %vec.ind1358, <i32 4, i32 4, i32 4, i32 4>
  %273 = icmp eq i64 %index.next1353, 32
  br i1 %273, label %polly.loop_exit815.2, label %vector.body1350, !llvm.loop !107

polly.loop_exit815.2:                             ; preds = %vector.body1350
  %polly.indvar_next811.2 = add nuw nsw i64 %polly.indvar810.2, 1
  %exitcond993.2.not = icmp eq i64 %polly.indvar_next811.2, 16
  br i1 %exitcond993.2.not, label %polly.loop_header807.1.2, label %polly.loop_header807.2

polly.loop_header807.1.2:                         ; preds = %polly.loop_exit815.2, %polly.loop_exit815.1.2
  %polly.indvar810.1.2 = phi i64 [ %polly.indvar_next811.1.2, %polly.loop_exit815.1.2 ], [ 0, %polly.loop_exit815.2 ]
  %274 = add nuw nsw i64 %polly.indvar810.1.2, 64
  %275 = mul nuw nsw i64 %274, 480
  %276 = trunc i64 %274 to i32
  %broadcast.splatinsert1372 = insertelement <4 x i32> poison, i32 %276, i32 0
  %broadcast.splat1373 = shufflevector <4 x i32> %broadcast.splatinsert1372, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1364

vector.body1364:                                  ; preds = %vector.body1364, %polly.loop_header807.1.2
  %index1366 = phi i64 [ 0, %polly.loop_header807.1.2 ], [ %index.next1367, %vector.body1364 ]
  %vec.ind1370 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header807.1.2 ], [ %vec.ind.next1371, %vector.body1364 ]
  %277 = add nuw nsw <4 x i64> %vec.ind1370, <i64 32, i64 32, i64 32, i64 32>
  %278 = trunc <4 x i64> %277 to <4 x i32>
  %279 = mul <4 x i32> %broadcast.splat1373, %278
  %280 = add <4 x i32> %279, <i32 1, i32 1, i32 1, i32 1>
  %281 = urem <4 x i32> %280, <i32 80, i32 80, i32 80, i32 80>
  %282 = sitofp <4 x i32> %281 to <4 x double>
  %283 = fmul fast <4 x double> %282, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %284 = extractelement <4 x i64> %277, i32 0
  %285 = shl i64 %284, 3
  %286 = add i64 %285, %275
  %287 = getelementptr i8, i8* %call1, i64 %286
  %288 = bitcast i8* %287 to <4 x double>*
  store <4 x double> %283, <4 x double>* %288, align 8, !alias.scope !97, !noalias !102
  %index.next1367 = add i64 %index1366, 4
  %vec.ind.next1371 = add <4 x i64> %vec.ind1370, <i64 4, i64 4, i64 4, i64 4>
  %289 = icmp eq i64 %index.next1367, 28
  br i1 %289, label %polly.loop_exit815.1.2, label %vector.body1364, !llvm.loop !108

polly.loop_exit815.1.2:                           ; preds = %vector.body1364
  %polly.indvar_next811.1.2 = add nuw nsw i64 %polly.indvar810.1.2, 1
  %exitcond993.1.2.not = icmp eq i64 %polly.indvar_next811.1.2, 16
  br i1 %exitcond993.1.2.not, label %init_array.exit, label %polly.loop_header807.1.2

polly.loop_header781.1:                           ; preds = %polly.loop_exit789, %polly.loop_exit789.1
  %polly.indvar784.1 = phi i64 [ %polly.indvar_next785.1, %polly.loop_exit789.1 ], [ 0, %polly.loop_exit789 ]
  %290 = mul nuw nsw i64 %polly.indvar784.1, 480
  %291 = trunc i64 %polly.indvar784.1 to i32
  %broadcast.splatinsert1242 = insertelement <4 x i32> poison, i32 %291, i32 0
  %broadcast.splat1243 = shufflevector <4 x i32> %broadcast.splatinsert1242, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1234

vector.body1234:                                  ; preds = %vector.body1234, %polly.loop_header781.1
  %index1236 = phi i64 [ 0, %polly.loop_header781.1 ], [ %index.next1237, %vector.body1234 ]
  %vec.ind1240 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header781.1 ], [ %vec.ind.next1241, %vector.body1234 ]
  %292 = add nuw nsw <4 x i64> %vec.ind1240, <i64 32, i64 32, i64 32, i64 32>
  %293 = trunc <4 x i64> %292 to <4 x i32>
  %294 = mul <4 x i32> %broadcast.splat1243, %293
  %295 = add <4 x i32> %294, <i32 2, i32 2, i32 2, i32 2>
  %296 = urem <4 x i32> %295, <i32 60, i32 60, i32 60, i32 60>
  %297 = sitofp <4 x i32> %296 to <4 x double>
  %298 = fmul fast <4 x double> %297, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %299 = extractelement <4 x i64> %292, i32 0
  %300 = shl i64 %299, 3
  %301 = add i64 %300, %290
  %302 = getelementptr i8, i8* %call2, i64 %301
  %303 = bitcast i8* %302 to <4 x double>*
  store <4 x double> %298, <4 x double>* %303, align 8, !alias.scope !98, !noalias !100
  %index.next1237 = add i64 %index1236, 4
  %vec.ind.next1241 = add <4 x i64> %vec.ind1240, <i64 4, i64 4, i64 4, i64 4>
  %304 = icmp eq i64 %index.next1237, 28
  br i1 %304, label %polly.loop_exit789.1, label %vector.body1234, !llvm.loop !109

polly.loop_exit789.1:                             ; preds = %vector.body1234
  %polly.indvar_next785.1 = add nuw nsw i64 %polly.indvar784.1, 1
  %exitcond999.1.not = icmp eq i64 %polly.indvar_next785.1, 32
  br i1 %exitcond999.1.not, label %polly.loop_header781.11033, label %polly.loop_header781.1

polly.loop_header781.11033:                       ; preds = %polly.loop_exit789.1, %polly.loop_exit789.11044
  %polly.indvar784.11032 = phi i64 [ %polly.indvar_next785.11042, %polly.loop_exit789.11044 ], [ 0, %polly.loop_exit789.1 ]
  %305 = add nuw nsw i64 %polly.indvar784.11032, 32
  %306 = mul nuw nsw i64 %305, 480
  %307 = trunc i64 %305 to i32
  %broadcast.splatinsert1256 = insertelement <4 x i32> poison, i32 %307, i32 0
  %broadcast.splat1257 = shufflevector <4 x i32> %broadcast.splatinsert1256, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1246

vector.body1246:                                  ; preds = %vector.body1246, %polly.loop_header781.11033
  %index1248 = phi i64 [ 0, %polly.loop_header781.11033 ], [ %index.next1249, %vector.body1246 ]
  %vec.ind1254 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header781.11033 ], [ %vec.ind.next1255, %vector.body1246 ]
  %308 = mul <4 x i32> %vec.ind1254, %broadcast.splat1257
  %309 = add <4 x i32> %308, <i32 2, i32 2, i32 2, i32 2>
  %310 = urem <4 x i32> %309, <i32 60, i32 60, i32 60, i32 60>
  %311 = sitofp <4 x i32> %310 to <4 x double>
  %312 = fmul fast <4 x double> %311, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %313 = shl i64 %index1248, 3
  %314 = add i64 %313, %306
  %315 = getelementptr i8, i8* %call2, i64 %314
  %316 = bitcast i8* %315 to <4 x double>*
  store <4 x double> %312, <4 x double>* %316, align 8, !alias.scope !98, !noalias !100
  %index.next1249 = add i64 %index1248, 4
  %vec.ind.next1255 = add <4 x i32> %vec.ind1254, <i32 4, i32 4, i32 4, i32 4>
  %317 = icmp eq i64 %index.next1249, 32
  br i1 %317, label %polly.loop_exit789.11044, label %vector.body1246, !llvm.loop !110

polly.loop_exit789.11044:                         ; preds = %vector.body1246
  %polly.indvar_next785.11042 = add nuw nsw i64 %polly.indvar784.11032, 1
  %exitcond999.11043.not = icmp eq i64 %polly.indvar_next785.11042, 32
  br i1 %exitcond999.11043.not, label %polly.loop_header781.1.1, label %polly.loop_header781.11033

polly.loop_header781.1.1:                         ; preds = %polly.loop_exit789.11044, %polly.loop_exit789.1.1
  %polly.indvar784.1.1 = phi i64 [ %polly.indvar_next785.1.1, %polly.loop_exit789.1.1 ], [ 0, %polly.loop_exit789.11044 ]
  %318 = add nuw nsw i64 %polly.indvar784.1.1, 32
  %319 = mul nuw nsw i64 %318, 480
  %320 = trunc i64 %318 to i32
  %broadcast.splatinsert1268 = insertelement <4 x i32> poison, i32 %320, i32 0
  %broadcast.splat1269 = shufflevector <4 x i32> %broadcast.splatinsert1268, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1260

vector.body1260:                                  ; preds = %vector.body1260, %polly.loop_header781.1.1
  %index1262 = phi i64 [ 0, %polly.loop_header781.1.1 ], [ %index.next1263, %vector.body1260 ]
  %vec.ind1266 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header781.1.1 ], [ %vec.ind.next1267, %vector.body1260 ]
  %321 = add nuw nsw <4 x i64> %vec.ind1266, <i64 32, i64 32, i64 32, i64 32>
  %322 = trunc <4 x i64> %321 to <4 x i32>
  %323 = mul <4 x i32> %broadcast.splat1269, %322
  %324 = add <4 x i32> %323, <i32 2, i32 2, i32 2, i32 2>
  %325 = urem <4 x i32> %324, <i32 60, i32 60, i32 60, i32 60>
  %326 = sitofp <4 x i32> %325 to <4 x double>
  %327 = fmul fast <4 x double> %326, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %328 = extractelement <4 x i64> %321, i32 0
  %329 = shl i64 %328, 3
  %330 = add i64 %329, %319
  %331 = getelementptr i8, i8* %call2, i64 %330
  %332 = bitcast i8* %331 to <4 x double>*
  store <4 x double> %327, <4 x double>* %332, align 8, !alias.scope !98, !noalias !100
  %index.next1263 = add i64 %index1262, 4
  %vec.ind.next1267 = add <4 x i64> %vec.ind1266, <i64 4, i64 4, i64 4, i64 4>
  %333 = icmp eq i64 %index.next1263, 28
  br i1 %333, label %polly.loop_exit789.1.1, label %vector.body1260, !llvm.loop !111

polly.loop_exit789.1.1:                           ; preds = %vector.body1260
  %polly.indvar_next785.1.1 = add nuw nsw i64 %polly.indvar784.1.1, 1
  %exitcond999.1.1.not = icmp eq i64 %polly.indvar_next785.1.1, 32
  br i1 %exitcond999.1.1.not, label %polly.loop_header781.2, label %polly.loop_header781.1.1

polly.loop_header781.2:                           ; preds = %polly.loop_exit789.1.1, %polly.loop_exit789.2
  %polly.indvar784.2 = phi i64 [ %polly.indvar_next785.2, %polly.loop_exit789.2 ], [ 0, %polly.loop_exit789.1.1 ]
  %334 = add nuw nsw i64 %polly.indvar784.2, 64
  %335 = mul nuw nsw i64 %334, 480
  %336 = trunc i64 %334 to i32
  %broadcast.splatinsert1282 = insertelement <4 x i32> poison, i32 %336, i32 0
  %broadcast.splat1283 = shufflevector <4 x i32> %broadcast.splatinsert1282, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1272

vector.body1272:                                  ; preds = %vector.body1272, %polly.loop_header781.2
  %index1274 = phi i64 [ 0, %polly.loop_header781.2 ], [ %index.next1275, %vector.body1272 ]
  %vec.ind1280 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header781.2 ], [ %vec.ind.next1281, %vector.body1272 ]
  %337 = mul <4 x i32> %vec.ind1280, %broadcast.splat1283
  %338 = add <4 x i32> %337, <i32 2, i32 2, i32 2, i32 2>
  %339 = urem <4 x i32> %338, <i32 60, i32 60, i32 60, i32 60>
  %340 = sitofp <4 x i32> %339 to <4 x double>
  %341 = fmul fast <4 x double> %340, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %342 = shl i64 %index1274, 3
  %343 = add i64 %342, %335
  %344 = getelementptr i8, i8* %call2, i64 %343
  %345 = bitcast i8* %344 to <4 x double>*
  store <4 x double> %341, <4 x double>* %345, align 8, !alias.scope !98, !noalias !100
  %index.next1275 = add i64 %index1274, 4
  %vec.ind.next1281 = add <4 x i32> %vec.ind1280, <i32 4, i32 4, i32 4, i32 4>
  %346 = icmp eq i64 %index.next1275, 32
  br i1 %346, label %polly.loop_exit789.2, label %vector.body1272, !llvm.loop !112

polly.loop_exit789.2:                             ; preds = %vector.body1272
  %polly.indvar_next785.2 = add nuw nsw i64 %polly.indvar784.2, 1
  %exitcond999.2.not = icmp eq i64 %polly.indvar_next785.2, 16
  br i1 %exitcond999.2.not, label %polly.loop_header781.1.2, label %polly.loop_header781.2

polly.loop_header781.1.2:                         ; preds = %polly.loop_exit789.2, %polly.loop_exit789.1.2
  %polly.indvar784.1.2 = phi i64 [ %polly.indvar_next785.1.2, %polly.loop_exit789.1.2 ], [ 0, %polly.loop_exit789.2 ]
  %347 = add nuw nsw i64 %polly.indvar784.1.2, 64
  %348 = mul nuw nsw i64 %347, 480
  %349 = trunc i64 %347 to i32
  %broadcast.splatinsert1294 = insertelement <4 x i32> poison, i32 %349, i32 0
  %broadcast.splat1295 = shufflevector <4 x i32> %broadcast.splatinsert1294, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1286

vector.body1286:                                  ; preds = %vector.body1286, %polly.loop_header781.1.2
  %index1288 = phi i64 [ 0, %polly.loop_header781.1.2 ], [ %index.next1289, %vector.body1286 ]
  %vec.ind1292 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header781.1.2 ], [ %vec.ind.next1293, %vector.body1286 ]
  %350 = add nuw nsw <4 x i64> %vec.ind1292, <i64 32, i64 32, i64 32, i64 32>
  %351 = trunc <4 x i64> %350 to <4 x i32>
  %352 = mul <4 x i32> %broadcast.splat1295, %351
  %353 = add <4 x i32> %352, <i32 2, i32 2, i32 2, i32 2>
  %354 = urem <4 x i32> %353, <i32 60, i32 60, i32 60, i32 60>
  %355 = sitofp <4 x i32> %354 to <4 x double>
  %356 = fmul fast <4 x double> %355, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %357 = extractelement <4 x i64> %350, i32 0
  %358 = shl i64 %357, 3
  %359 = add i64 %358, %348
  %360 = getelementptr i8, i8* %call2, i64 %359
  %361 = bitcast i8* %360 to <4 x double>*
  store <4 x double> %356, <4 x double>* %361, align 8, !alias.scope !98, !noalias !100
  %index.next1289 = add i64 %index1288, 4
  %vec.ind.next1293 = add <4 x i64> %vec.ind1292, <i64 4, i64 4, i64 4, i64 4>
  %362 = icmp eq i64 %index.next1289, 28
  br i1 %362, label %polly.loop_exit789.1.2, label %vector.body1286, !llvm.loop !113

polly.loop_exit789.1.2:                           ; preds = %vector.body1286
  %polly.indvar_next785.1.2 = add nuw nsw i64 %polly.indvar784.1.2, 1
  %exitcond999.1.2.not = icmp eq i64 %polly.indvar_next785.1.2, 16
  br i1 %exitcond999.1.2.not, label %polly.loop_header807, label %polly.loop_header781.1.2

polly.loop_header754.1:                           ; preds = %polly.loop_exit762, %polly.loop_exit762.1
  %polly.indvar757.1 = phi i64 [ %polly.indvar_next758.1, %polly.loop_exit762.1 ], [ 0, %polly.loop_exit762 ]
  %363 = mul nuw nsw i64 %polly.indvar757.1, 640
  %364 = trunc i64 %polly.indvar757.1 to i32
  %broadcast.splatinsert1128 = insertelement <4 x i32> poison, i32 %364, i32 0
  %broadcast.splat1129 = shufflevector <4 x i32> %broadcast.splatinsert1128, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1120

vector.body1120:                                  ; preds = %vector.body1120, %polly.loop_header754.1
  %index1122 = phi i64 [ 0, %polly.loop_header754.1 ], [ %index.next1123, %vector.body1120 ]
  %vec.ind1126 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header754.1 ], [ %vec.ind.next1127, %vector.body1120 ]
  %365 = add nuw nsw <4 x i64> %vec.ind1126, <i64 32, i64 32, i64 32, i64 32>
  %366 = trunc <4 x i64> %365 to <4 x i32>
  %367 = mul <4 x i32> %broadcast.splat1129, %366
  %368 = add <4 x i32> %367, <i32 3, i32 3, i32 3, i32 3>
  %369 = urem <4 x i32> %368, <i32 80, i32 80, i32 80, i32 80>
  %370 = sitofp <4 x i32> %369 to <4 x double>
  %371 = fmul fast <4 x double> %370, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %372 = extractelement <4 x i64> %365, i32 0
  %373 = shl i64 %372, 3
  %374 = add nuw nsw i64 %373, %363
  %375 = getelementptr i8, i8* %call, i64 %374
  %376 = bitcast i8* %375 to <4 x double>*
  store <4 x double> %371, <4 x double>* %376, align 8, !alias.scope !94, !noalias !96
  %index.next1123 = add i64 %index1122, 4
  %vec.ind.next1127 = add <4 x i64> %vec.ind1126, <i64 4, i64 4, i64 4, i64 4>
  %377 = icmp eq i64 %index.next1123, 32
  br i1 %377, label %polly.loop_exit762.1, label %vector.body1120, !llvm.loop !114

polly.loop_exit762.1:                             ; preds = %vector.body1120
  %polly.indvar_next758.1 = add nuw nsw i64 %polly.indvar757.1, 1
  %exitcond1008.1.not = icmp eq i64 %polly.indvar_next758.1, 32
  br i1 %exitcond1008.1.not, label %polly.loop_header754.2, label %polly.loop_header754.1

polly.loop_header754.2:                           ; preds = %polly.loop_exit762.1, %polly.loop_exit762.2
  %polly.indvar757.2 = phi i64 [ %polly.indvar_next758.2, %polly.loop_exit762.2 ], [ 0, %polly.loop_exit762.1 ]
  %378 = mul nuw nsw i64 %polly.indvar757.2, 640
  %379 = trunc i64 %polly.indvar757.2 to i32
  %broadcast.splatinsert1140 = insertelement <4 x i32> poison, i32 %379, i32 0
  %broadcast.splat1141 = shufflevector <4 x i32> %broadcast.splatinsert1140, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1132

vector.body1132:                                  ; preds = %vector.body1132, %polly.loop_header754.2
  %index1134 = phi i64 [ 0, %polly.loop_header754.2 ], [ %index.next1135, %vector.body1132 ]
  %vec.ind1138 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header754.2 ], [ %vec.ind.next1139, %vector.body1132 ]
  %380 = add nuw nsw <4 x i64> %vec.ind1138, <i64 64, i64 64, i64 64, i64 64>
  %381 = trunc <4 x i64> %380 to <4 x i32>
  %382 = mul <4 x i32> %broadcast.splat1141, %381
  %383 = add <4 x i32> %382, <i32 3, i32 3, i32 3, i32 3>
  %384 = urem <4 x i32> %383, <i32 80, i32 80, i32 80, i32 80>
  %385 = sitofp <4 x i32> %384 to <4 x double>
  %386 = fmul fast <4 x double> %385, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %387 = extractelement <4 x i64> %380, i32 0
  %388 = shl i64 %387, 3
  %389 = add nuw nsw i64 %388, %378
  %390 = getelementptr i8, i8* %call, i64 %389
  %391 = bitcast i8* %390 to <4 x double>*
  store <4 x double> %386, <4 x double>* %391, align 8, !alias.scope !94, !noalias !96
  %index.next1135 = add i64 %index1134, 4
  %vec.ind.next1139 = add <4 x i64> %vec.ind1138, <i64 4, i64 4, i64 4, i64 4>
  %392 = icmp eq i64 %index.next1135, 16
  br i1 %392, label %polly.loop_exit762.2, label %vector.body1132, !llvm.loop !115

polly.loop_exit762.2:                             ; preds = %vector.body1132
  %polly.indvar_next758.2 = add nuw nsw i64 %polly.indvar757.2, 1
  %exitcond1008.2.not = icmp eq i64 %polly.indvar_next758.2, 32
  br i1 %exitcond1008.2.not, label %polly.loop_header754.11047, label %polly.loop_header754.2

polly.loop_header754.11047:                       ; preds = %polly.loop_exit762.2, %polly.loop_exit762.11058
  %polly.indvar757.11046 = phi i64 [ %polly.indvar_next758.11056, %polly.loop_exit762.11058 ], [ 0, %polly.loop_exit762.2 ]
  %393 = add nuw nsw i64 %polly.indvar757.11046, 32
  %394 = mul nuw nsw i64 %393, 640
  %395 = trunc i64 %393 to i32
  %broadcast.splatinsert1154 = insertelement <4 x i32> poison, i32 %395, i32 0
  %broadcast.splat1155 = shufflevector <4 x i32> %broadcast.splatinsert1154, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1144

vector.body1144:                                  ; preds = %vector.body1144, %polly.loop_header754.11047
  %index1146 = phi i64 [ 0, %polly.loop_header754.11047 ], [ %index.next1147, %vector.body1144 ]
  %vec.ind1152 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header754.11047 ], [ %vec.ind.next1153, %vector.body1144 ]
  %396 = mul <4 x i32> %vec.ind1152, %broadcast.splat1155
  %397 = add <4 x i32> %396, <i32 3, i32 3, i32 3, i32 3>
  %398 = urem <4 x i32> %397, <i32 80, i32 80, i32 80, i32 80>
  %399 = sitofp <4 x i32> %398 to <4 x double>
  %400 = fmul fast <4 x double> %399, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %401 = shl i64 %index1146, 3
  %402 = add nuw nsw i64 %401, %394
  %403 = getelementptr i8, i8* %call, i64 %402
  %404 = bitcast i8* %403 to <4 x double>*
  store <4 x double> %400, <4 x double>* %404, align 8, !alias.scope !94, !noalias !96
  %index.next1147 = add i64 %index1146, 4
  %vec.ind.next1153 = add <4 x i32> %vec.ind1152, <i32 4, i32 4, i32 4, i32 4>
  %405 = icmp eq i64 %index.next1147, 32
  br i1 %405, label %polly.loop_exit762.11058, label %vector.body1144, !llvm.loop !116

polly.loop_exit762.11058:                         ; preds = %vector.body1144
  %polly.indvar_next758.11056 = add nuw nsw i64 %polly.indvar757.11046, 1
  %exitcond1008.11057.not = icmp eq i64 %polly.indvar_next758.11056, 32
  br i1 %exitcond1008.11057.not, label %polly.loop_header754.1.1, label %polly.loop_header754.11047

polly.loop_header754.1.1:                         ; preds = %polly.loop_exit762.11058, %polly.loop_exit762.1.1
  %polly.indvar757.1.1 = phi i64 [ %polly.indvar_next758.1.1, %polly.loop_exit762.1.1 ], [ 0, %polly.loop_exit762.11058 ]
  %406 = add nuw nsw i64 %polly.indvar757.1.1, 32
  %407 = mul nuw nsw i64 %406, 640
  %408 = trunc i64 %406 to i32
  %broadcast.splatinsert1166 = insertelement <4 x i32> poison, i32 %408, i32 0
  %broadcast.splat1167 = shufflevector <4 x i32> %broadcast.splatinsert1166, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1158

vector.body1158:                                  ; preds = %vector.body1158, %polly.loop_header754.1.1
  %index1160 = phi i64 [ 0, %polly.loop_header754.1.1 ], [ %index.next1161, %vector.body1158 ]
  %vec.ind1164 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header754.1.1 ], [ %vec.ind.next1165, %vector.body1158 ]
  %409 = add nuw nsw <4 x i64> %vec.ind1164, <i64 32, i64 32, i64 32, i64 32>
  %410 = trunc <4 x i64> %409 to <4 x i32>
  %411 = mul <4 x i32> %broadcast.splat1167, %410
  %412 = add <4 x i32> %411, <i32 3, i32 3, i32 3, i32 3>
  %413 = urem <4 x i32> %412, <i32 80, i32 80, i32 80, i32 80>
  %414 = sitofp <4 x i32> %413 to <4 x double>
  %415 = fmul fast <4 x double> %414, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %416 = extractelement <4 x i64> %409, i32 0
  %417 = shl i64 %416, 3
  %418 = add nuw nsw i64 %417, %407
  %419 = getelementptr i8, i8* %call, i64 %418
  %420 = bitcast i8* %419 to <4 x double>*
  store <4 x double> %415, <4 x double>* %420, align 8, !alias.scope !94, !noalias !96
  %index.next1161 = add i64 %index1160, 4
  %vec.ind.next1165 = add <4 x i64> %vec.ind1164, <i64 4, i64 4, i64 4, i64 4>
  %421 = icmp eq i64 %index.next1161, 32
  br i1 %421, label %polly.loop_exit762.1.1, label %vector.body1158, !llvm.loop !117

polly.loop_exit762.1.1:                           ; preds = %vector.body1158
  %polly.indvar_next758.1.1 = add nuw nsw i64 %polly.indvar757.1.1, 1
  %exitcond1008.1.1.not = icmp eq i64 %polly.indvar_next758.1.1, 32
  br i1 %exitcond1008.1.1.not, label %polly.loop_header754.2.1, label %polly.loop_header754.1.1

polly.loop_header754.2.1:                         ; preds = %polly.loop_exit762.1.1, %polly.loop_exit762.2.1
  %polly.indvar757.2.1 = phi i64 [ %polly.indvar_next758.2.1, %polly.loop_exit762.2.1 ], [ 0, %polly.loop_exit762.1.1 ]
  %422 = add nuw nsw i64 %polly.indvar757.2.1, 32
  %423 = mul nuw nsw i64 %422, 640
  %424 = trunc i64 %422 to i32
  %broadcast.splatinsert1178 = insertelement <4 x i32> poison, i32 %424, i32 0
  %broadcast.splat1179 = shufflevector <4 x i32> %broadcast.splatinsert1178, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1170

vector.body1170:                                  ; preds = %vector.body1170, %polly.loop_header754.2.1
  %index1172 = phi i64 [ 0, %polly.loop_header754.2.1 ], [ %index.next1173, %vector.body1170 ]
  %vec.ind1176 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header754.2.1 ], [ %vec.ind.next1177, %vector.body1170 ]
  %425 = add nuw nsw <4 x i64> %vec.ind1176, <i64 64, i64 64, i64 64, i64 64>
  %426 = trunc <4 x i64> %425 to <4 x i32>
  %427 = mul <4 x i32> %broadcast.splat1179, %426
  %428 = add <4 x i32> %427, <i32 3, i32 3, i32 3, i32 3>
  %429 = urem <4 x i32> %428, <i32 80, i32 80, i32 80, i32 80>
  %430 = sitofp <4 x i32> %429 to <4 x double>
  %431 = fmul fast <4 x double> %430, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %432 = extractelement <4 x i64> %425, i32 0
  %433 = shl i64 %432, 3
  %434 = add nuw nsw i64 %433, %423
  %435 = getelementptr i8, i8* %call, i64 %434
  %436 = bitcast i8* %435 to <4 x double>*
  store <4 x double> %431, <4 x double>* %436, align 8, !alias.scope !94, !noalias !96
  %index.next1173 = add i64 %index1172, 4
  %vec.ind.next1177 = add <4 x i64> %vec.ind1176, <i64 4, i64 4, i64 4, i64 4>
  %437 = icmp eq i64 %index.next1173, 16
  br i1 %437, label %polly.loop_exit762.2.1, label %vector.body1170, !llvm.loop !118

polly.loop_exit762.2.1:                           ; preds = %vector.body1170
  %polly.indvar_next758.2.1 = add nuw nsw i64 %polly.indvar757.2.1, 1
  %exitcond1008.2.1.not = icmp eq i64 %polly.indvar_next758.2.1, 32
  br i1 %exitcond1008.2.1.not, label %polly.loop_header754.21061, label %polly.loop_header754.2.1

polly.loop_header754.21061:                       ; preds = %polly.loop_exit762.2.1, %polly.loop_exit762.21072
  %polly.indvar757.21060 = phi i64 [ %polly.indvar_next758.21070, %polly.loop_exit762.21072 ], [ 0, %polly.loop_exit762.2.1 ]
  %438 = add nuw nsw i64 %polly.indvar757.21060, 64
  %439 = mul nuw nsw i64 %438, 640
  %440 = trunc i64 %438 to i32
  %broadcast.splatinsert1192 = insertelement <4 x i32> poison, i32 %440, i32 0
  %broadcast.splat1193 = shufflevector <4 x i32> %broadcast.splatinsert1192, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1182

vector.body1182:                                  ; preds = %vector.body1182, %polly.loop_header754.21061
  %index1184 = phi i64 [ 0, %polly.loop_header754.21061 ], [ %index.next1185, %vector.body1182 ]
  %vec.ind1190 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header754.21061 ], [ %vec.ind.next1191, %vector.body1182 ]
  %441 = mul <4 x i32> %vec.ind1190, %broadcast.splat1193
  %442 = add <4 x i32> %441, <i32 3, i32 3, i32 3, i32 3>
  %443 = urem <4 x i32> %442, <i32 80, i32 80, i32 80, i32 80>
  %444 = sitofp <4 x i32> %443 to <4 x double>
  %445 = fmul fast <4 x double> %444, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %446 = shl i64 %index1184, 3
  %447 = add nuw nsw i64 %446, %439
  %448 = getelementptr i8, i8* %call, i64 %447
  %449 = bitcast i8* %448 to <4 x double>*
  store <4 x double> %445, <4 x double>* %449, align 8, !alias.scope !94, !noalias !96
  %index.next1185 = add i64 %index1184, 4
  %vec.ind.next1191 = add <4 x i32> %vec.ind1190, <i32 4, i32 4, i32 4, i32 4>
  %450 = icmp eq i64 %index.next1185, 32
  br i1 %450, label %polly.loop_exit762.21072, label %vector.body1182, !llvm.loop !119

polly.loop_exit762.21072:                         ; preds = %vector.body1182
  %polly.indvar_next758.21070 = add nuw nsw i64 %polly.indvar757.21060, 1
  %exitcond1008.21071.not = icmp eq i64 %polly.indvar_next758.21070, 16
  br i1 %exitcond1008.21071.not, label %polly.loop_header754.1.2, label %polly.loop_header754.21061

polly.loop_header754.1.2:                         ; preds = %polly.loop_exit762.21072, %polly.loop_exit762.1.2
  %polly.indvar757.1.2 = phi i64 [ %polly.indvar_next758.1.2, %polly.loop_exit762.1.2 ], [ 0, %polly.loop_exit762.21072 ]
  %451 = add nuw nsw i64 %polly.indvar757.1.2, 64
  %452 = mul nuw nsw i64 %451, 640
  %453 = trunc i64 %451 to i32
  %broadcast.splatinsert1204 = insertelement <4 x i32> poison, i32 %453, i32 0
  %broadcast.splat1205 = shufflevector <4 x i32> %broadcast.splatinsert1204, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1196

vector.body1196:                                  ; preds = %vector.body1196, %polly.loop_header754.1.2
  %index1198 = phi i64 [ 0, %polly.loop_header754.1.2 ], [ %index.next1199, %vector.body1196 ]
  %vec.ind1202 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header754.1.2 ], [ %vec.ind.next1203, %vector.body1196 ]
  %454 = add nuw nsw <4 x i64> %vec.ind1202, <i64 32, i64 32, i64 32, i64 32>
  %455 = trunc <4 x i64> %454 to <4 x i32>
  %456 = mul <4 x i32> %broadcast.splat1205, %455
  %457 = add <4 x i32> %456, <i32 3, i32 3, i32 3, i32 3>
  %458 = urem <4 x i32> %457, <i32 80, i32 80, i32 80, i32 80>
  %459 = sitofp <4 x i32> %458 to <4 x double>
  %460 = fmul fast <4 x double> %459, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %461 = extractelement <4 x i64> %454, i32 0
  %462 = shl i64 %461, 3
  %463 = add nuw nsw i64 %462, %452
  %464 = getelementptr i8, i8* %call, i64 %463
  %465 = bitcast i8* %464 to <4 x double>*
  store <4 x double> %460, <4 x double>* %465, align 8, !alias.scope !94, !noalias !96
  %index.next1199 = add i64 %index1198, 4
  %vec.ind.next1203 = add <4 x i64> %vec.ind1202, <i64 4, i64 4, i64 4, i64 4>
  %466 = icmp eq i64 %index.next1199, 32
  br i1 %466, label %polly.loop_exit762.1.2, label %vector.body1196, !llvm.loop !120

polly.loop_exit762.1.2:                           ; preds = %vector.body1196
  %polly.indvar_next758.1.2 = add nuw nsw i64 %polly.indvar757.1.2, 1
  %exitcond1008.1.2.not = icmp eq i64 %polly.indvar_next758.1.2, 16
  br i1 %exitcond1008.1.2.not, label %polly.loop_header754.2.2, label %polly.loop_header754.1.2

polly.loop_header754.2.2:                         ; preds = %polly.loop_exit762.1.2, %polly.loop_exit762.2.2
  %polly.indvar757.2.2 = phi i64 [ %polly.indvar_next758.2.2, %polly.loop_exit762.2.2 ], [ 0, %polly.loop_exit762.1.2 ]
  %467 = add nuw nsw i64 %polly.indvar757.2.2, 64
  %468 = mul nuw nsw i64 %467, 640
  %469 = trunc i64 %467 to i32
  %broadcast.splatinsert1216 = insertelement <4 x i32> poison, i32 %469, i32 0
  %broadcast.splat1217 = shufflevector <4 x i32> %broadcast.splatinsert1216, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1208

vector.body1208:                                  ; preds = %vector.body1208, %polly.loop_header754.2.2
  %index1210 = phi i64 [ 0, %polly.loop_header754.2.2 ], [ %index.next1211, %vector.body1208 ]
  %vec.ind1214 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header754.2.2 ], [ %vec.ind.next1215, %vector.body1208 ]
  %470 = add nuw nsw <4 x i64> %vec.ind1214, <i64 64, i64 64, i64 64, i64 64>
  %471 = trunc <4 x i64> %470 to <4 x i32>
  %472 = mul <4 x i32> %broadcast.splat1217, %471
  %473 = add <4 x i32> %472, <i32 3, i32 3, i32 3, i32 3>
  %474 = urem <4 x i32> %473, <i32 80, i32 80, i32 80, i32 80>
  %475 = sitofp <4 x i32> %474 to <4 x double>
  %476 = fmul fast <4 x double> %475, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %477 = extractelement <4 x i64> %470, i32 0
  %478 = shl i64 %477, 3
  %479 = add nuw nsw i64 %478, %468
  %480 = getelementptr i8, i8* %call, i64 %479
  %481 = bitcast i8* %480 to <4 x double>*
  store <4 x double> %476, <4 x double>* %481, align 8, !alias.scope !94, !noalias !96
  %index.next1211 = add i64 %index1210, 4
  %vec.ind.next1215 = add <4 x i64> %vec.ind1214, <i64 4, i64 4, i64 4, i64 4>
  %482 = icmp eq i64 %index.next1211, 16
  br i1 %482, label %polly.loop_exit762.2.2, label %vector.body1208, !llvm.loop !121

polly.loop_exit762.2.2:                           ; preds = %vector.body1208
  %polly.indvar_next758.2.2 = add nuw nsw i64 %polly.indvar757.2.2, 1
  %exitcond1008.2.2.not = icmp eq i64 %polly.indvar_next758.2.2, 16
  br i1 %exitcond1008.2.2.not, label %polly.loop_header781, label %polly.loop_header754.2.2
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
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 50}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 128}
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
!48 = !{!"llvm.loop.tile.size", i32 80}
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
