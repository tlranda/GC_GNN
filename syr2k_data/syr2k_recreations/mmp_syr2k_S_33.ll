; ModuleID = 'syr2k_recreations//mmp_syr2k_S_33.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_33.c"
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
  %call = tail call i8* @polybench_alloc_data(i64 6400, i32 8) #8
  %call839 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #8
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #8
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1691 = bitcast i8* %call1 to double*
  %polly.access.call1700 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2701 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1700, %call2
  %polly.access.call2720 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2720, %call1
  %2 = or i1 %0, %1
  %polly.access.call740 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call740, %call2
  %4 = icmp ule i8* %polly.access.call2720, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call740, %call1
  %8 = icmp ule i8* %polly.access.call1700, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header825, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1086 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1085 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1084 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1083 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1083, %scevgep1086
  %bound1 = icmp ult i8* %scevgep1085, %scevgep1084
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
  br i1 %exitcond18.not.i, label %vector.ph1090, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1090:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1097 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1098 = shufflevector <4 x i64> %broadcast.splatinsert1097, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1089

vector.body1089:                                  ; preds = %vector.body1089, %vector.ph1090
  %index1091 = phi i64 [ 0, %vector.ph1090 ], [ %index.next1092, %vector.body1089 ]
  %vec.ind1095 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1090 ], [ %vec.ind.next1096, %vector.body1089 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1095, %broadcast.splat1098
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv7.i, i64 %index1091
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1092 = add i64 %index1091, 4
  %vec.ind.next1096 = add <4 x i64> %vec.ind1095, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1092, 80
  br i1 %40, label %for.inc41.i, label %vector.body1089, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1089
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1090, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit886.1.2
  tail call void (...) @polybench_timer_start() #8
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start490, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1513, label %vector.ph1372

vector.ph1372:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1371

vector.body1371:                                  ; preds = %vector.body1371, %vector.ph1372
  %index1373 = phi i64 [ 0, %vector.ph1372 ], [ %index.next1374, %vector.body1371 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i, i64 %index1373
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1374 = add i64 %index1373, 4
  %46 = icmp eq i64 %index.next1374, %n.vec
  br i1 %46, label %middle.block1369, label %vector.body1371, !llvm.loop !18

middle.block1369:                                 ; preds = %vector.body1371
  %cmp.n1376 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1376, label %for.inc6.i, label %for.body3.i46.preheader1513

for.body3.i46.preheader1513:                      ; preds = %for.body3.i46.preheader, %middle.block1369
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1369 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1513, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1513 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1369, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting491
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  tail call void (...) @polybench_timer_start() #8
  br i1 %41, label %polly.start291, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1411 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1411, label %for.body3.i60.preheader1511, label %vector.ph1412

vector.ph1412:                                    ; preds = %for.body3.i60.preheader
  %n.vec1414 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1410

vector.body1410:                                  ; preds = %vector.body1410, %vector.ph1412
  %index1415 = phi i64 [ 0, %vector.ph1412 ], [ %index.next1416, %vector.body1410 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i52, i64 %index1415
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1419 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1419, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1416 = add i64 %index1415, 4
  %57 = icmp eq i64 %index.next1416, %n.vec1414
  br i1 %57, label %middle.block1408, label %vector.body1410, !llvm.loop !56

middle.block1408:                                 ; preds = %vector.body1410
  %cmp.n1418 = icmp eq i64 %indvars.iv21.i52, %n.vec1414
  br i1 %cmp.n1418, label %for.inc6.i63, label %for.body3.i60.preheader1511

for.body3.i60.preheader1511:                      ; preds = %for.body3.i60.preheader, %middle.block1408
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1414, %middle.block1408 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1511, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1511 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !57

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1408, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting292
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  tail call void (...) @polybench_timer_start() #8
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1461 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1461, label %for.body3.i99.preheader1509, label %vector.ph1462

vector.ph1462:                                    ; preds = %for.body3.i99.preheader
  %n.vec1464 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1460

vector.body1460:                                  ; preds = %vector.body1460, %vector.ph1462
  %index1465 = phi i64 [ 0, %vector.ph1462 ], [ %index.next1466, %vector.body1460 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i91, i64 %index1465
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1469 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1469, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1466 = add i64 %index1465, 4
  %68 = icmp eq i64 %index.next1466, %n.vec1464
  br i1 %68, label %middle.block1458, label %vector.body1460, !llvm.loop !58

middle.block1458:                                 ; preds = %vector.body1460
  %cmp.n1468 = icmp eq i64 %indvars.iv21.i91, %n.vec1464
  br i1 %cmp.n1468, label %for.inc6.i102, label %for.body3.i99.preheader1509

for.body3.i99.preheader1509:                      ; preds = %for.body3.i99.preheader, %middle.block1458
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1464, %middle.block1458 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1509, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1509 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !59

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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !60
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #9
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
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
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #9
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !62

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !63

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #9
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #8
  tail call void @free(i8* %call1) #8
  tail call void @free(i8* %call2) #8
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #8
  %malloccall136 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #8
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

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
  %wide.load1483 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !64, !noalias !66
  %93 = fmul fast <4 x double> %wide.load1483, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !64, !noalias !66
  %index.next1480 = add i64 %index1479, 4
  %95 = icmp eq i64 %index.next1480, %n.vec1478
  br i1 %95, label %middle.block1470, label %vector.body1472, !llvm.loop !71

middle.block1470:                                 ; preds = %vector.body1472
  %cmp.n1482 = icmp eq i64 %88, %n.vec1478
  br i1 %cmp.n1482, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1470
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1478, %middle.block1470 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1470
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond942.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1474 = add i64 %indvar1473, 1
  br i1 %exitcond942.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond941.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond941.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !72

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 80
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond940.not = icmp eq i64 %polly.indvar_next204, 60
  br i1 %exitcond940.not, label %polly.loop_header216, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 60
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2701, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !68, !noalias !74
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond939.not = icmp eq i64 %polly.indvar_next210, 80
  br i1 %exitcond939.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv922 = phi i64 [ %indvars.iv.next923, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %smin932 = call i64 @llvm.smin.i64(i64 %indvars.iv922, i64 -52)
  %97 = add nsw i64 %smin932, 60
  %98 = shl nsw i64 %polly.indvar219, 3
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next923 = add nsw i64 %indvars.iv922, -8
  %exitcond938.not = icmp eq i64 %polly.indvar_next220, 8
  br i1 %exitcond938.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %indvars.iv934 = phi i64 [ %indvars.iv.next935, %polly.loop_exit230 ], [ 80, %polly.loop_header216 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit230 ], [ 0, %polly.loop_header216 ]
  %99 = shl nuw nsw i64 %polly.indvar225, 3
  %100 = mul nsw i64 %polly.indvar225, -8
  %101 = add nuw nsw i64 %99, 8
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit259
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next935 = add nsw i64 %indvars.iv934, -8
  %exitcond937.not = icmp eq i64 %polly.indvar_next226, 10
  br i1 %exitcond937.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit259, %polly.loop_header222
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit259 ], [ 0, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit259 ], [ %99, %polly.loop_header222 ]
  %smin1487 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 7)
  %smin930 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 7)
  %102 = add nsw i64 %polly.indvar231, %100
  %.not = icmp ult i64 %polly.indvar231, %101
  %polly.access.mul.call1251 = mul nuw nsw i64 %polly.indvar231, 60
  br i1 %.not, label %polly.loop_header234.us, label %polly.loop_header234

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.merge.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.merge.us ], [ 0, %polly.loop_header228 ]
  %103 = add nuw nsw i64 %polly.indvar237.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 80
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header234.us
  %polly.indvar243.us = phi i64 [ 0, %polly.loop_header234.us ], [ %polly.indvar_next244.us, %polly.loop_header240.us ]
  %104 = add nuw nsw i64 %polly.indvar243.us, %99
  %polly.access.mul.call1247.us = mul nuw nsw i64 %104, 60
  %polly.access.add.call1248.us = add nuw nsw i64 %polly.access.mul.call1247.us, %103
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond927.not = icmp eq i64 %polly.indvar243.us, %smin930
  br i1 %exitcond927.not, label %polly.merge.us, label %polly.loop_header240.us

polly.merge.us:                                   ; preds = %polly.loop_header240.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond929.not = icmp eq i64 %polly.indvar_next238.us, %97
  br i1 %exitcond929.not, label %polly.loop_exit236, label %polly.loop_header234.us

polly.loop_exit236:                               ; preds = %polly.then, %polly.merge.us
  %105 = mul nuw nsw i64 %polly.indvar231, 640
  %scevgep285 = getelementptr i8, i8* %call, i64 %105
  br label %polly.loop_header257

polly.loop_exit259:                               ; preds = %polly.loop_exit265
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond936.not = icmp eq i64 %indvars.iv.next, %indvars.iv934
  br i1 %exitcond936.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header228, %polly.then
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.then ], [ 0, %polly.loop_header228 ]
  %106 = add nuw nsw i64 %polly.indvar237, %98
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar237, 80
  br label %polly.loop_header240

polly.loop_header240:                             ; preds = %polly.loop_header240, %polly.loop_header234
  %polly.indvar243 = phi i64 [ 0, %polly.loop_header234 ], [ %polly.indvar_next244, %polly.loop_header240 ]
  %107 = add nuw nsw i64 %polly.indvar243, %99
  %polly.access.mul.call1247 = mul nuw nsw i64 %107, 60
  %polly.access.add.call1248 = add nuw nsw i64 %polly.access.mul.call1247, %106
  %polly.access.call1249 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1248
  %polly.access.call1249.load = load double, double* %polly.access.call1249, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1 = add nuw nsw i64 %polly.indvar243, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1
  store double %polly.access.call1249.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.indvar_next244 = add nuw nsw i64 %polly.indvar243, 1
  %exitcond.not = icmp eq i64 %polly.indvar243, %smin930
  br i1 %exitcond.not, label %polly.then, label %polly.loop_header240

polly.then:                                       ; preds = %polly.loop_header240
  %polly.access.add.call1252 = add nuw nsw i64 %106, %polly.access.mul.call1251
  %polly.access.call1253 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1252
  %polly.access.call1253.load = load double, double* %polly.access.call1253, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1255 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1, %102
  %polly.access.Packed_MemRef_call1256 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255
  store double %polly.access.call1253.load, double* %polly.access.Packed_MemRef_call1256, align 8
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond925.not = icmp eq i64 %polly.indvar_next238, %97
  br i1 %exitcond925.not, label %polly.loop_exit236, label %polly.loop_header234

polly.loop_header257:                             ; preds = %polly.loop_exit265, %polly.loop_exit236
  %polly.indvar260 = phi i64 [ 0, %polly.loop_exit236 ], [ %polly.indvar_next261, %polly.loop_exit265 ]
  %polly.access.mul.Packed_MemRef_call1269 = mul nuw nsw i64 %polly.indvar260, 80
  %108 = add nuw nsw i64 %polly.indvar260, %98
  %polly.access.mul.Packed_MemRef_call2273 = mul nuw nsw i64 %108, 80
  %polly.access.add.Packed_MemRef_call1282 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1269, %102
  %polly.access.Packed_MemRef_call1283 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282
  %_p_scalar_284 = load double, double* %polly.access.Packed_MemRef_call1283, align 8
  %polly.access.add.Packed_MemRef_call2274 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273, %polly.indvar231
  %polly.access.Packed_MemRef_call2275 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2274
  %_p_scalar_276 = load double, double* %polly.access.Packed_MemRef_call2275, align 8
  %n.rnd.up1489 = add nuw nsw i64 %smin1487, 4
  %n.vec1491 = and i64 %n.rnd.up1489, 12
  %broadcast.splatinsert1496 = insertelement <4 x i64> poison, i64 %smin1487, i32 0
  %broadcast.splat1497 = shufflevector <4 x i64> %broadcast.splatinsert1496, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1502 = insertelement <4 x double> poison, double %_p_scalar_276, i32 0
  %broadcast.splat1503 = shufflevector <4 x double> %broadcast.splatinsert1502, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1505 = insertelement <4 x double> poison, double %_p_scalar_284, i32 0
  %broadcast.splat1506 = shufflevector <4 x double> %broadcast.splatinsert1505, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1486

vector.body1486:                                  ; preds = %vector.body1486, %polly.loop_header257
  %index1492 = phi i64 [ 0, %polly.loop_header257 ], [ %index.next1493, %vector.body1486 ]
  %broadcast.splatinsert1498 = insertelement <4 x i64> poison, i64 %index1492, i32 0
  %broadcast.splat1499 = shufflevector <4 x i64> %broadcast.splatinsert1498, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1500 = or <4 x i64> %broadcast.splat1499, <i64 0, i64 1, i64 2, i64 3>
  %109 = icmp ule <4 x i64> %induction1500, %broadcast.splat1497
  %110 = add nuw nsw i64 %index1492, %99
  %111 = add nuw nsw i64 %index1492, %polly.access.mul.Packed_MemRef_call1269
  %112 = getelementptr double, double* %Packed_MemRef_call1, i64 %111
  %113 = bitcast double* %112 to <4 x double>*
  %wide.masked.load1501 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %113, i32 8, <4 x i1> %109, <4 x double> poison)
  %114 = fmul fast <4 x double> %broadcast.splat1503, %wide.masked.load1501
  %115 = add nuw nsw i64 %110, %polly.access.mul.Packed_MemRef_call2273
  %116 = getelementptr double, double* %Packed_MemRef_call2, i64 %115
  %117 = bitcast double* %116 to <4 x double>*
  %wide.masked.load1504 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %117, i32 8, <4 x i1> %109, <4 x double> poison)
  %118 = fmul fast <4 x double> %broadcast.splat1506, %wide.masked.load1504
  %119 = shl i64 %110, 3
  %120 = getelementptr i8, i8* %scevgep285, i64 %119
  %121 = bitcast i8* %120 to <4 x double>*
  %wide.masked.load1507 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %121, i32 8, <4 x i1> %109, <4 x double> poison), !alias.scope !64, !noalias !66
  %122 = fadd fast <4 x double> %118, %114
  %123 = fmul fast <4 x double> %122, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %124 = fadd fast <4 x double> %123, %wide.masked.load1507
  %125 = bitcast i8* %120 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %124, <4 x double>* %125, i32 8, <4 x i1> %109), !alias.scope !64, !noalias !66
  %index.next1493 = add i64 %index1492, 4
  %126 = icmp eq i64 %index.next1493, %n.vec1491
  br i1 %126, label %polly.loop_exit265, label %vector.body1486, !llvm.loop !76

polly.loop_exit265:                               ; preds = %vector.body1486
  %polly.indvar_next261 = add nuw nsw i64 %polly.indvar260, 1
  %exitcond933.not = icmp eq i64 %polly.indvar_next261, %97
  br i1 %exitcond933.not, label %polly.loop_exit259, label %polly.loop_header257

polly.start291:                                   ; preds = %kernel_syr2k.exit
  %malloccall293 = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #8
  %malloccall295 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #8
  br label %polly.loop_header379

polly.exiting292:                                 ; preds = %polly.loop_exit419
  tail call void @free(i8* nonnull %malloccall293)
  tail call void @free(i8* nonnull %malloccall295)
  br label %kernel_syr2k.exit90

polly.loop_header379:                             ; preds = %polly.loop_exit387, %polly.start291
  %indvar1423 = phi i64 [ %indvar.next1424, %polly.loop_exit387 ], [ 0, %polly.start291 ]
  %polly.indvar382 = phi i64 [ %polly.indvar_next383, %polly.loop_exit387 ], [ 1, %polly.start291 ]
  %127 = add i64 %indvar1423, 1
  %128 = mul nuw nsw i64 %polly.indvar382, 640
  %scevgep391 = getelementptr i8, i8* %call, i64 %128
  %min.iters.check1425 = icmp ult i64 %127, 4
  br i1 %min.iters.check1425, label %polly.loop_header385.preheader, label %vector.ph1426

vector.ph1426:                                    ; preds = %polly.loop_header379
  %n.vec1428 = and i64 %127, -4
  br label %vector.body1422

vector.body1422:                                  ; preds = %vector.body1422, %vector.ph1426
  %index1429 = phi i64 [ 0, %vector.ph1426 ], [ %index.next1430, %vector.body1422 ]
  %129 = shl nuw nsw i64 %index1429, 3
  %130 = getelementptr i8, i8* %scevgep391, i64 %129
  %131 = bitcast i8* %130 to <4 x double>*
  %wide.load1433 = load <4 x double>, <4 x double>* %131, align 8, !alias.scope !77, !noalias !79
  %132 = fmul fast <4 x double> %wide.load1433, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %133 = bitcast i8* %130 to <4 x double>*
  store <4 x double> %132, <4 x double>* %133, align 8, !alias.scope !77, !noalias !79
  %index.next1430 = add i64 %index1429, 4
  %134 = icmp eq i64 %index.next1430, %n.vec1428
  br i1 %134, label %middle.block1420, label %vector.body1422, !llvm.loop !84

middle.block1420:                                 ; preds = %vector.body1422
  %cmp.n1432 = icmp eq i64 %127, %n.vec1428
  br i1 %cmp.n1432, label %polly.loop_exit387, label %polly.loop_header385.preheader

polly.loop_header385.preheader:                   ; preds = %polly.loop_header379, %middle.block1420
  %polly.indvar388.ph = phi i64 [ 0, %polly.loop_header379 ], [ %n.vec1428, %middle.block1420 ]
  br label %polly.loop_header385

polly.loop_exit387:                               ; preds = %polly.loop_header385, %middle.block1420
  %polly.indvar_next383 = add nuw nsw i64 %polly.indvar382, 1
  %exitcond967.not = icmp eq i64 %polly.indvar_next383, 80
  %indvar.next1424 = add i64 %indvar1423, 1
  br i1 %exitcond967.not, label %polly.loop_header395.preheader, label %polly.loop_header379

polly.loop_header395.preheader:                   ; preds = %polly.loop_exit387
  %Packed_MemRef_call1294 = bitcast i8* %malloccall293 to double*
  %Packed_MemRef_call2296 = bitcast i8* %malloccall295 to double*
  br label %polly.loop_header395

polly.loop_header385:                             ; preds = %polly.loop_header385.preheader, %polly.loop_header385
  %polly.indvar388 = phi i64 [ %polly.indvar_next389, %polly.loop_header385 ], [ %polly.indvar388.ph, %polly.loop_header385.preheader ]
  %135 = shl nuw nsw i64 %polly.indvar388, 3
  %scevgep392 = getelementptr i8, i8* %scevgep391, i64 %135
  %scevgep392393 = bitcast i8* %scevgep392 to double*
  %_p_scalar_394 = load double, double* %scevgep392393, align 8, !alias.scope !77, !noalias !79
  %p_mul.i57 = fmul fast double %_p_scalar_394, 1.200000e+00
  store double %p_mul.i57, double* %scevgep392393, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next389 = add nuw nsw i64 %polly.indvar388, 1
  %exitcond966.not = icmp eq i64 %polly.indvar_next389, %polly.indvar382
  br i1 %exitcond966.not, label %polly.loop_exit387, label %polly.loop_header385, !llvm.loop !85

polly.loop_header395:                             ; preds = %polly.loop_header395.preheader, %polly.loop_exit403
  %polly.indvar398 = phi i64 [ %polly.indvar_next399, %polly.loop_exit403 ], [ 0, %polly.loop_header395.preheader ]
  %polly.access.mul.Packed_MemRef_call2296 = mul nuw nsw i64 %polly.indvar398, 80
  br label %polly.loop_header401

polly.loop_exit403:                               ; preds = %polly.loop_header401
  %polly.indvar_next399 = add nuw nsw i64 %polly.indvar398, 1
  %exitcond965.not = icmp eq i64 %polly.indvar_next399, 60
  br i1 %exitcond965.not, label %polly.loop_header411, label %polly.loop_header395

polly.loop_header401:                             ; preds = %polly.loop_header401, %polly.loop_header395
  %polly.indvar404 = phi i64 [ 0, %polly.loop_header395 ], [ %polly.indvar_next405, %polly.loop_header401 ]
  %polly.access.mul.call2408 = mul nuw nsw i64 %polly.indvar404, 60
  %polly.access.add.call2409 = add nuw nsw i64 %polly.access.mul.call2408, %polly.indvar398
  %polly.access.call2410 = getelementptr double, double* %polly.access.cast.call2701, i64 %polly.access.add.call2409
  %polly.access.call2410.load = load double, double* %polly.access.call2410, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call2296 = add nuw nsw i64 %polly.indvar404, %polly.access.mul.Packed_MemRef_call2296
  %polly.access.Packed_MemRef_call2296 = getelementptr double, double* %Packed_MemRef_call2296, i64 %polly.access.add.Packed_MemRef_call2296
  store double %polly.access.call2410.load, double* %polly.access.Packed_MemRef_call2296, align 8
  %polly.indvar_next405 = add nuw nsw i64 %polly.indvar404, 1
  %exitcond964.not = icmp eq i64 %polly.indvar_next405, 80
  br i1 %exitcond964.not, label %polly.loop_exit403, label %polly.loop_header401

polly.loop_header411:                             ; preds = %polly.loop_exit403, %polly.loop_exit419
  %indvars.iv947 = phi i64 [ %indvars.iv.next948, %polly.loop_exit419 ], [ 0, %polly.loop_exit403 ]
  %polly.indvar414 = phi i64 [ %polly.indvar_next415, %polly.loop_exit419 ], [ 0, %polly.loop_exit403 ]
  %smin957 = call i64 @llvm.smin.i64(i64 %indvars.iv947, i64 -52)
  %136 = add nsw i64 %smin957, 60
  %137 = shl nsw i64 %polly.indvar414, 3
  br label %polly.loop_header417

polly.loop_exit419:                               ; preds = %polly.loop_exit425
  %polly.indvar_next415 = add nuw nsw i64 %polly.indvar414, 1
  %indvars.iv.next948 = add nsw i64 %indvars.iv947, -8
  %exitcond963.not = icmp eq i64 %polly.indvar_next415, 8
  br i1 %exitcond963.not, label %polly.exiting292, label %polly.loop_header411

polly.loop_header417:                             ; preds = %polly.loop_exit425, %polly.loop_header411
  %indvars.iv959 = phi i64 [ %indvars.iv.next960, %polly.loop_exit425 ], [ 80, %polly.loop_header411 ]
  %polly.indvar420 = phi i64 [ %polly.indvar_next421, %polly.loop_exit425 ], [ 0, %polly.loop_header411 ]
  %138 = shl nuw nsw i64 %polly.indvar420, 3
  %139 = mul nsw i64 %polly.indvar420, -8
  %140 = add nuw nsw i64 %138, 8
  br label %polly.loop_header423

polly.loop_exit425:                               ; preds = %polly.loop_exit458
  %polly.indvar_next421 = add nuw nsw i64 %polly.indvar420, 1
  %indvars.iv.next960 = add nsw i64 %indvars.iv959, -8
  %exitcond962.not = icmp eq i64 %polly.indvar_next421, 10
  br i1 %exitcond962.not, label %polly.loop_exit419, label %polly.loop_header417

polly.loop_header423:                             ; preds = %polly.loop_exit458, %polly.loop_header417
  %indvars.iv943 = phi i64 [ %indvars.iv.next944, %polly.loop_exit458 ], [ 0, %polly.loop_header417 ]
  %polly.indvar426 = phi i64 [ %polly.indvar_next427, %polly.loop_exit458 ], [ %138, %polly.loop_header417 ]
  %smin1437 = call i64 @llvm.smin.i64(i64 %indvars.iv943, i64 7)
  %smin955 = call i64 @llvm.smin.i64(i64 %indvars.iv943, i64 7)
  %141 = add nsw i64 %polly.indvar426, %139
  %.not893 = icmp ult i64 %polly.indvar426, %140
  %polly.access.mul.call1450 = mul nuw nsw i64 %polly.indvar426, 60
  br i1 %.not893, label %polly.loop_header429.us, label %polly.loop_header429

polly.loop_header429.us:                          ; preds = %polly.loop_header423, %polly.merge446.us
  %polly.indvar432.us = phi i64 [ %polly.indvar_next433.us, %polly.merge446.us ], [ 0, %polly.loop_header423 ]
  %142 = add nuw nsw i64 %polly.indvar432.us, %137
  %polly.access.mul.Packed_MemRef_call1294.us = mul nuw nsw i64 %polly.indvar432.us, 80
  br label %polly.loop_header435.us

polly.loop_header435.us:                          ; preds = %polly.loop_header435.us, %polly.loop_header429.us
  %polly.indvar438.us = phi i64 [ 0, %polly.loop_header429.us ], [ %polly.indvar_next439.us, %polly.loop_header435.us ]
  %143 = add nuw nsw i64 %polly.indvar438.us, %138
  %polly.access.mul.call1442.us = mul nuw nsw i64 %143, 60
  %polly.access.add.call1443.us = add nuw nsw i64 %polly.access.mul.call1442.us, %142
  %polly.access.call1444.us = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1443.us
  %polly.access.call1444.load.us = load double, double* %polly.access.call1444.us, align 8, !alias.scope !80, !noalias !87
  %polly.access.add.Packed_MemRef_call1294.us = add nuw nsw i64 %polly.indvar438.us, %polly.access.mul.Packed_MemRef_call1294.us
  %polly.access.Packed_MemRef_call1294.us = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294.us
  store double %polly.access.call1444.load.us, double* %polly.access.Packed_MemRef_call1294.us, align 8
  %polly.indvar_next439.us = add nuw nsw i64 %polly.indvar438.us, 1
  %exitcond952.not = icmp eq i64 %polly.indvar438.us, %smin955
  br i1 %exitcond952.not, label %polly.merge446.us, label %polly.loop_header435.us

polly.merge446.us:                                ; preds = %polly.loop_header435.us
  %polly.indvar_next433.us = add nuw nsw i64 %polly.indvar432.us, 1
  %exitcond954.not = icmp eq i64 %polly.indvar_next433.us, %136
  br i1 %exitcond954.not, label %polly.loop_exit431, label %polly.loop_header429.us

polly.loop_exit431:                               ; preds = %polly.then447, %polly.merge446.us
  %144 = mul nuw nsw i64 %polly.indvar426, 640
  %scevgep484 = getelementptr i8, i8* %call, i64 %144
  br label %polly.loop_header456

polly.loop_exit458:                               ; preds = %polly.loop_exit464
  %polly.indvar_next427 = add nuw nsw i64 %polly.indvar426, 1
  %indvars.iv.next944 = add nuw nsw i64 %indvars.iv943, 1
  %exitcond961.not = icmp eq i64 %indvars.iv.next944, %indvars.iv959
  br i1 %exitcond961.not, label %polly.loop_exit425, label %polly.loop_header423

polly.loop_header429:                             ; preds = %polly.loop_header423, %polly.then447
  %polly.indvar432 = phi i64 [ %polly.indvar_next433, %polly.then447 ], [ 0, %polly.loop_header423 ]
  %145 = add nuw nsw i64 %polly.indvar432, %137
  %polly.access.mul.Packed_MemRef_call1294 = mul nuw nsw i64 %polly.indvar432, 80
  br label %polly.loop_header435

polly.loop_header435:                             ; preds = %polly.loop_header435, %polly.loop_header429
  %polly.indvar438 = phi i64 [ 0, %polly.loop_header429 ], [ %polly.indvar_next439, %polly.loop_header435 ]
  %146 = add nuw nsw i64 %polly.indvar438, %138
  %polly.access.mul.call1442 = mul nuw nsw i64 %146, 60
  %polly.access.add.call1443 = add nuw nsw i64 %polly.access.mul.call1442, %145
  %polly.access.call1444 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1443
  %polly.access.call1444.load = load double, double* %polly.access.call1444, align 8, !alias.scope !80, !noalias !87
  %polly.access.add.Packed_MemRef_call1294 = add nuw nsw i64 %polly.indvar438, %polly.access.mul.Packed_MemRef_call1294
  %polly.access.Packed_MemRef_call1294 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294
  store double %polly.access.call1444.load, double* %polly.access.Packed_MemRef_call1294, align 8
  %polly.indvar_next439 = add nuw nsw i64 %polly.indvar438, 1
  %exitcond946.not = icmp eq i64 %polly.indvar438, %smin955
  br i1 %exitcond946.not, label %polly.then447, label %polly.loop_header435

polly.then447:                                    ; preds = %polly.loop_header435
  %polly.access.add.call1451 = add nuw nsw i64 %145, %polly.access.mul.call1450
  %polly.access.call1452 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1451
  %polly.access.call1452.load = load double, double* %polly.access.call1452, align 8, !alias.scope !80, !noalias !87
  %polly.access.add.Packed_MemRef_call1294454 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1294, %141
  %polly.access.Packed_MemRef_call1294455 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294454
  store double %polly.access.call1452.load, double* %polly.access.Packed_MemRef_call1294455, align 8
  %polly.indvar_next433 = add nuw nsw i64 %polly.indvar432, 1
  %exitcond950.not = icmp eq i64 %polly.indvar_next433, %136
  br i1 %exitcond950.not, label %polly.loop_exit431, label %polly.loop_header429

polly.loop_header456:                             ; preds = %polly.loop_exit464, %polly.loop_exit431
  %polly.indvar459 = phi i64 [ 0, %polly.loop_exit431 ], [ %polly.indvar_next460, %polly.loop_exit464 ]
  %polly.access.mul.Packed_MemRef_call1294468 = mul nuw nsw i64 %polly.indvar459, 80
  %147 = add nuw nsw i64 %polly.indvar459, %137
  %polly.access.mul.Packed_MemRef_call2296472 = mul nuw nsw i64 %147, 80
  %polly.access.add.Packed_MemRef_call1294481 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1294468, %141
  %polly.access.Packed_MemRef_call1294482 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294481
  %_p_scalar_483 = load double, double* %polly.access.Packed_MemRef_call1294482, align 8
  %polly.access.add.Packed_MemRef_call2296473 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2296472, %polly.indvar426
  %polly.access.Packed_MemRef_call2296474 = getelementptr double, double* %Packed_MemRef_call2296, i64 %polly.access.add.Packed_MemRef_call2296473
  %_p_scalar_475 = load double, double* %polly.access.Packed_MemRef_call2296474, align 8
  %n.rnd.up1439 = add nuw nsw i64 %smin1437, 4
  %n.vec1441 = and i64 %n.rnd.up1439, 12
  %broadcast.splatinsert1446 = insertelement <4 x i64> poison, i64 %smin1437, i32 0
  %broadcast.splat1447 = shufflevector <4 x i64> %broadcast.splatinsert1446, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1452 = insertelement <4 x double> poison, double %_p_scalar_475, i32 0
  %broadcast.splat1453 = shufflevector <4 x double> %broadcast.splatinsert1452, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1455 = insertelement <4 x double> poison, double %_p_scalar_483, i32 0
  %broadcast.splat1456 = shufflevector <4 x double> %broadcast.splatinsert1455, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1436

vector.body1436:                                  ; preds = %vector.body1436, %polly.loop_header456
  %index1442 = phi i64 [ 0, %polly.loop_header456 ], [ %index.next1443, %vector.body1436 ]
  %broadcast.splatinsert1448 = insertelement <4 x i64> poison, i64 %index1442, i32 0
  %broadcast.splat1449 = shufflevector <4 x i64> %broadcast.splatinsert1448, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1450 = or <4 x i64> %broadcast.splat1449, <i64 0, i64 1, i64 2, i64 3>
  %148 = icmp ule <4 x i64> %induction1450, %broadcast.splat1447
  %149 = add nuw nsw i64 %index1442, %138
  %150 = add nuw nsw i64 %index1442, %polly.access.mul.Packed_MemRef_call1294468
  %151 = getelementptr double, double* %Packed_MemRef_call1294, i64 %150
  %152 = bitcast double* %151 to <4 x double>*
  %wide.masked.load1451 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %152, i32 8, <4 x i1> %148, <4 x double> poison)
  %153 = fmul fast <4 x double> %broadcast.splat1453, %wide.masked.load1451
  %154 = add nuw nsw i64 %149, %polly.access.mul.Packed_MemRef_call2296472
  %155 = getelementptr double, double* %Packed_MemRef_call2296, i64 %154
  %156 = bitcast double* %155 to <4 x double>*
  %wide.masked.load1454 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %156, i32 8, <4 x i1> %148, <4 x double> poison)
  %157 = fmul fast <4 x double> %broadcast.splat1456, %wide.masked.load1454
  %158 = shl i64 %149, 3
  %159 = getelementptr i8, i8* %scevgep484, i64 %158
  %160 = bitcast i8* %159 to <4 x double>*
  %wide.masked.load1457 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %160, i32 8, <4 x i1> %148, <4 x double> poison), !alias.scope !77, !noalias !79
  %161 = fadd fast <4 x double> %157, %153
  %162 = fmul fast <4 x double> %161, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %163 = fadd fast <4 x double> %162, %wide.masked.load1457
  %164 = bitcast i8* %159 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %163, <4 x double>* %164, i32 8, <4 x i1> %148), !alias.scope !77, !noalias !79
  %index.next1443 = add i64 %index1442, 4
  %165 = icmp eq i64 %index.next1443, %n.vec1441
  br i1 %165, label %polly.loop_exit464, label %vector.body1436, !llvm.loop !88

polly.loop_exit464:                               ; preds = %vector.body1436
  %polly.indvar_next460 = add nuw nsw i64 %polly.indvar459, 1
  %exitcond958.not = icmp eq i64 %polly.indvar_next460, %136
  br i1 %exitcond958.not, label %polly.loop_exit458, label %polly.loop_header456

polly.start490:                                   ; preds = %init_array.exit
  %malloccall492 = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #8
  %malloccall494 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #8
  br label %polly.loop_header578

polly.exiting491:                                 ; preds = %polly.loop_exit618
  tail call void @free(i8* nonnull %malloccall492)
  tail call void @free(i8* nonnull %malloccall494)
  br label %kernel_syr2k.exit

polly.loop_header578:                             ; preds = %polly.loop_exit586, %polly.start490
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit586 ], [ 0, %polly.start490 ]
  %polly.indvar581 = phi i64 [ %polly.indvar_next582, %polly.loop_exit586 ], [ 1, %polly.start490 ]
  %166 = add i64 %indvar, 1
  %167 = mul nuw nsw i64 %polly.indvar581, 640
  %scevgep590 = getelementptr i8, i8* %call, i64 %167
  %min.iters.check1380 = icmp ult i64 %166, 4
  br i1 %min.iters.check1380, label %polly.loop_header584.preheader, label %vector.ph1381

vector.ph1381:                                    ; preds = %polly.loop_header578
  %n.vec1383 = and i64 %166, -4
  br label %vector.body1379

vector.body1379:                                  ; preds = %vector.body1379, %vector.ph1381
  %index1384 = phi i64 [ 0, %vector.ph1381 ], [ %index.next1385, %vector.body1379 ]
  %168 = shl nuw nsw i64 %index1384, 3
  %169 = getelementptr i8, i8* %scevgep590, i64 %168
  %170 = bitcast i8* %169 to <4 x double>*
  %wide.load1388 = load <4 x double>, <4 x double>* %170, align 8, !alias.scope !89, !noalias !91
  %171 = fmul fast <4 x double> %wide.load1388, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %172 = bitcast i8* %169 to <4 x double>*
  store <4 x double> %171, <4 x double>* %172, align 8, !alias.scope !89, !noalias !91
  %index.next1385 = add i64 %index1384, 4
  %173 = icmp eq i64 %index.next1385, %n.vec1383
  br i1 %173, label %middle.block1377, label %vector.body1379, !llvm.loop !96

middle.block1377:                                 ; preds = %vector.body1379
  %cmp.n1387 = icmp eq i64 %166, %n.vec1383
  br i1 %cmp.n1387, label %polly.loop_exit586, label %polly.loop_header584.preheader

polly.loop_header584.preheader:                   ; preds = %polly.loop_header578, %middle.block1377
  %polly.indvar587.ph = phi i64 [ 0, %polly.loop_header578 ], [ %n.vec1383, %middle.block1377 ]
  br label %polly.loop_header584

polly.loop_exit586:                               ; preds = %polly.loop_header584, %middle.block1377
  %polly.indvar_next582 = add nuw nsw i64 %polly.indvar581, 1
  %exitcond992.not = icmp eq i64 %polly.indvar_next582, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond992.not, label %polly.loop_header594.preheader, label %polly.loop_header578

polly.loop_header594.preheader:                   ; preds = %polly.loop_exit586
  %Packed_MemRef_call1493 = bitcast i8* %malloccall492 to double*
  %Packed_MemRef_call2495 = bitcast i8* %malloccall494 to double*
  br label %polly.loop_header594

polly.loop_header584:                             ; preds = %polly.loop_header584.preheader, %polly.loop_header584
  %polly.indvar587 = phi i64 [ %polly.indvar_next588, %polly.loop_header584 ], [ %polly.indvar587.ph, %polly.loop_header584.preheader ]
  %174 = shl nuw nsw i64 %polly.indvar587, 3
  %scevgep591 = getelementptr i8, i8* %scevgep590, i64 %174
  %scevgep591592 = bitcast i8* %scevgep591 to double*
  %_p_scalar_593 = load double, double* %scevgep591592, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_593, 1.200000e+00
  store double %p_mul.i, double* %scevgep591592, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next588 = add nuw nsw i64 %polly.indvar587, 1
  %exitcond991.not = icmp eq i64 %polly.indvar_next588, %polly.indvar581
  br i1 %exitcond991.not, label %polly.loop_exit586, label %polly.loop_header584, !llvm.loop !97

polly.loop_header594:                             ; preds = %polly.loop_header594.preheader, %polly.loop_exit602
  %polly.indvar597 = phi i64 [ %polly.indvar_next598, %polly.loop_exit602 ], [ 0, %polly.loop_header594.preheader ]
  %polly.access.mul.Packed_MemRef_call2495 = mul nuw nsw i64 %polly.indvar597, 80
  br label %polly.loop_header600

polly.loop_exit602:                               ; preds = %polly.loop_header600
  %polly.indvar_next598 = add nuw nsw i64 %polly.indvar597, 1
  %exitcond990.not = icmp eq i64 %polly.indvar_next598, 60
  br i1 %exitcond990.not, label %polly.loop_header610, label %polly.loop_header594

polly.loop_header600:                             ; preds = %polly.loop_header600, %polly.loop_header594
  %polly.indvar603 = phi i64 [ 0, %polly.loop_header594 ], [ %polly.indvar_next604, %polly.loop_header600 ]
  %polly.access.mul.call2607 = mul nuw nsw i64 %polly.indvar603, 60
  %polly.access.add.call2608 = add nuw nsw i64 %polly.access.mul.call2607, %polly.indvar597
  %polly.access.call2609 = getelementptr double, double* %polly.access.cast.call2701, i64 %polly.access.add.call2608
  %polly.access.call2609.load = load double, double* %polly.access.call2609, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call2495 = add nuw nsw i64 %polly.indvar603, %polly.access.mul.Packed_MemRef_call2495
  %polly.access.Packed_MemRef_call2495 = getelementptr double, double* %Packed_MemRef_call2495, i64 %polly.access.add.Packed_MemRef_call2495
  store double %polly.access.call2609.load, double* %polly.access.Packed_MemRef_call2495, align 8
  %polly.indvar_next604 = add nuw nsw i64 %polly.indvar603, 1
  %exitcond989.not = icmp eq i64 %polly.indvar_next604, 80
  br i1 %exitcond989.not, label %polly.loop_exit602, label %polly.loop_header600

polly.loop_header610:                             ; preds = %polly.loop_exit602, %polly.loop_exit618
  %indvars.iv972 = phi i64 [ %indvars.iv.next973, %polly.loop_exit618 ], [ 0, %polly.loop_exit602 ]
  %polly.indvar613 = phi i64 [ %polly.indvar_next614, %polly.loop_exit618 ], [ 0, %polly.loop_exit602 ]
  %smin982 = call i64 @llvm.smin.i64(i64 %indvars.iv972, i64 -52)
  %175 = add nsw i64 %smin982, 60
  %176 = shl nsw i64 %polly.indvar613, 3
  br label %polly.loop_header616

polly.loop_exit618:                               ; preds = %polly.loop_exit624
  %polly.indvar_next614 = add nuw nsw i64 %polly.indvar613, 1
  %indvars.iv.next973 = add nsw i64 %indvars.iv972, -8
  %exitcond988.not = icmp eq i64 %polly.indvar_next614, 8
  br i1 %exitcond988.not, label %polly.exiting491, label %polly.loop_header610

polly.loop_header616:                             ; preds = %polly.loop_exit624, %polly.loop_header610
  %indvars.iv984 = phi i64 [ %indvars.iv.next985, %polly.loop_exit624 ], [ 80, %polly.loop_header610 ]
  %polly.indvar619 = phi i64 [ %polly.indvar_next620, %polly.loop_exit624 ], [ 0, %polly.loop_header610 ]
  %177 = shl nuw nsw i64 %polly.indvar619, 3
  %178 = mul nsw i64 %polly.indvar619, -8
  %179 = add nuw nsw i64 %177, 8
  br label %polly.loop_header622

polly.loop_exit624:                               ; preds = %polly.loop_exit657
  %polly.indvar_next620 = add nuw nsw i64 %polly.indvar619, 1
  %indvars.iv.next985 = add nsw i64 %indvars.iv984, -8
  %exitcond987.not = icmp eq i64 %polly.indvar_next620, 10
  br i1 %exitcond987.not, label %polly.loop_exit618, label %polly.loop_header616

polly.loop_header622:                             ; preds = %polly.loop_exit657, %polly.loop_header616
  %indvars.iv968 = phi i64 [ %indvars.iv.next969, %polly.loop_exit657 ], [ 0, %polly.loop_header616 ]
  %polly.indvar625 = phi i64 [ %polly.indvar_next626, %polly.loop_exit657 ], [ %177, %polly.loop_header616 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv968, i64 7)
  %smin980 = call i64 @llvm.smin.i64(i64 %indvars.iv968, i64 7)
  %180 = add nsw i64 %polly.indvar625, %178
  %.not894 = icmp ult i64 %polly.indvar625, %179
  %polly.access.mul.call1649 = mul nuw nsw i64 %polly.indvar625, 60
  br i1 %.not894, label %polly.loop_header628.us, label %polly.loop_header628

polly.loop_header628.us:                          ; preds = %polly.loop_header622, %polly.merge645.us
  %polly.indvar631.us = phi i64 [ %polly.indvar_next632.us, %polly.merge645.us ], [ 0, %polly.loop_header622 ]
  %181 = add nuw nsw i64 %polly.indvar631.us, %176
  %polly.access.mul.Packed_MemRef_call1493.us = mul nuw nsw i64 %polly.indvar631.us, 80
  br label %polly.loop_header634.us

polly.loop_header634.us:                          ; preds = %polly.loop_header634.us, %polly.loop_header628.us
  %polly.indvar637.us = phi i64 [ 0, %polly.loop_header628.us ], [ %polly.indvar_next638.us, %polly.loop_header634.us ]
  %182 = add nuw nsw i64 %polly.indvar637.us, %177
  %polly.access.mul.call1641.us = mul nuw nsw i64 %182, 60
  %polly.access.add.call1642.us = add nuw nsw i64 %polly.access.mul.call1641.us, %181
  %polly.access.call1643.us = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1642.us
  %polly.access.call1643.load.us = load double, double* %polly.access.call1643.us, align 8, !alias.scope !92, !noalias !99
  %polly.access.add.Packed_MemRef_call1493.us = add nuw nsw i64 %polly.indvar637.us, %polly.access.mul.Packed_MemRef_call1493.us
  %polly.access.Packed_MemRef_call1493.us = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493.us
  store double %polly.access.call1643.load.us, double* %polly.access.Packed_MemRef_call1493.us, align 8
  %polly.indvar_next638.us = add nuw nsw i64 %polly.indvar637.us, 1
  %exitcond977.not = icmp eq i64 %polly.indvar637.us, %smin980
  br i1 %exitcond977.not, label %polly.merge645.us, label %polly.loop_header634.us

polly.merge645.us:                                ; preds = %polly.loop_header634.us
  %polly.indvar_next632.us = add nuw nsw i64 %polly.indvar631.us, 1
  %exitcond979.not = icmp eq i64 %polly.indvar_next632.us, %175
  br i1 %exitcond979.not, label %polly.loop_exit630, label %polly.loop_header628.us

polly.loop_exit630:                               ; preds = %polly.then646, %polly.merge645.us
  %183 = mul nuw nsw i64 %polly.indvar625, 640
  %scevgep683 = getelementptr i8, i8* %call, i64 %183
  br label %polly.loop_header655

polly.loop_exit657:                               ; preds = %polly.loop_exit663
  %polly.indvar_next626 = add nuw nsw i64 %polly.indvar625, 1
  %indvars.iv.next969 = add nuw nsw i64 %indvars.iv968, 1
  %exitcond986.not = icmp eq i64 %indvars.iv.next969, %indvars.iv984
  br i1 %exitcond986.not, label %polly.loop_exit624, label %polly.loop_header622

polly.loop_header628:                             ; preds = %polly.loop_header622, %polly.then646
  %polly.indvar631 = phi i64 [ %polly.indvar_next632, %polly.then646 ], [ 0, %polly.loop_header622 ]
  %184 = add nuw nsw i64 %polly.indvar631, %176
  %polly.access.mul.Packed_MemRef_call1493 = mul nuw nsw i64 %polly.indvar631, 80
  br label %polly.loop_header634

polly.loop_header634:                             ; preds = %polly.loop_header634, %polly.loop_header628
  %polly.indvar637 = phi i64 [ 0, %polly.loop_header628 ], [ %polly.indvar_next638, %polly.loop_header634 ]
  %185 = add nuw nsw i64 %polly.indvar637, %177
  %polly.access.mul.call1641 = mul nuw nsw i64 %185, 60
  %polly.access.add.call1642 = add nuw nsw i64 %polly.access.mul.call1641, %184
  %polly.access.call1643 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1642
  %polly.access.call1643.load = load double, double* %polly.access.call1643, align 8, !alias.scope !92, !noalias !99
  %polly.access.add.Packed_MemRef_call1493 = add nuw nsw i64 %polly.indvar637, %polly.access.mul.Packed_MemRef_call1493
  %polly.access.Packed_MemRef_call1493 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493
  store double %polly.access.call1643.load, double* %polly.access.Packed_MemRef_call1493, align 8
  %polly.indvar_next638 = add nuw nsw i64 %polly.indvar637, 1
  %exitcond971.not = icmp eq i64 %polly.indvar637, %smin980
  br i1 %exitcond971.not, label %polly.then646, label %polly.loop_header634

polly.then646:                                    ; preds = %polly.loop_header634
  %polly.access.add.call1650 = add nuw nsw i64 %184, %polly.access.mul.call1649
  %polly.access.call1651 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1650
  %polly.access.call1651.load = load double, double* %polly.access.call1651, align 8, !alias.scope !92, !noalias !99
  %polly.access.add.Packed_MemRef_call1493653 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1493, %180
  %polly.access.Packed_MemRef_call1493654 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493653
  store double %polly.access.call1651.load, double* %polly.access.Packed_MemRef_call1493654, align 8
  %polly.indvar_next632 = add nuw nsw i64 %polly.indvar631, 1
  %exitcond975.not = icmp eq i64 %polly.indvar_next632, %175
  br i1 %exitcond975.not, label %polly.loop_exit630, label %polly.loop_header628

polly.loop_header655:                             ; preds = %polly.loop_exit663, %polly.loop_exit630
  %polly.indvar658 = phi i64 [ 0, %polly.loop_exit630 ], [ %polly.indvar_next659, %polly.loop_exit663 ]
  %polly.access.mul.Packed_MemRef_call1493667 = mul nuw nsw i64 %polly.indvar658, 80
  %186 = add nuw nsw i64 %polly.indvar658, %176
  %polly.access.mul.Packed_MemRef_call2495671 = mul nuw nsw i64 %186, 80
  %polly.access.add.Packed_MemRef_call1493680 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1493667, %180
  %polly.access.Packed_MemRef_call1493681 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493680
  %_p_scalar_682 = load double, double* %polly.access.Packed_MemRef_call1493681, align 8
  %polly.access.add.Packed_MemRef_call2495672 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2495671, %polly.indvar625
  %polly.access.Packed_MemRef_call2495673 = getelementptr double, double* %Packed_MemRef_call2495, i64 %polly.access.add.Packed_MemRef_call2495672
  %_p_scalar_674 = load double, double* %polly.access.Packed_MemRef_call2495673, align 8
  %n.rnd.up = add nuw nsw i64 %smin, 4
  %n.vec1394 = and i64 %n.rnd.up, 12
  %broadcast.splatinsert1398 = insertelement <4 x i64> poison, i64 %smin, i32 0
  %broadcast.splat1399 = shufflevector <4 x i64> %broadcast.splatinsert1398, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1402 = insertelement <4 x double> poison, double %_p_scalar_674, i32 0
  %broadcast.splat1403 = shufflevector <4 x double> %broadcast.splatinsert1402, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1405 = insertelement <4 x double> poison, double %_p_scalar_682, i32 0
  %broadcast.splat1406 = shufflevector <4 x double> %broadcast.splatinsert1405, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1391

vector.body1391:                                  ; preds = %vector.body1391, %polly.loop_header655
  %index1395 = phi i64 [ 0, %polly.loop_header655 ], [ %index.next1396, %vector.body1391 ]
  %broadcast.splatinsert1400 = insertelement <4 x i64> poison, i64 %index1395, i32 0
  %broadcast.splat1401 = shufflevector <4 x i64> %broadcast.splatinsert1400, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or <4 x i64> %broadcast.splat1401, <i64 0, i64 1, i64 2, i64 3>
  %187 = icmp ule <4 x i64> %induction, %broadcast.splat1399
  %188 = add nuw nsw i64 %index1395, %177
  %189 = add nuw nsw i64 %index1395, %polly.access.mul.Packed_MemRef_call1493667
  %190 = getelementptr double, double* %Packed_MemRef_call1493, i64 %189
  %191 = bitcast double* %190 to <4 x double>*
  %wide.masked.load = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %191, i32 8, <4 x i1> %187, <4 x double> poison)
  %192 = fmul fast <4 x double> %broadcast.splat1403, %wide.masked.load
  %193 = add nuw nsw i64 %188, %polly.access.mul.Packed_MemRef_call2495671
  %194 = getelementptr double, double* %Packed_MemRef_call2495, i64 %193
  %195 = bitcast double* %194 to <4 x double>*
  %wide.masked.load1404 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %195, i32 8, <4 x i1> %187, <4 x double> poison)
  %196 = fmul fast <4 x double> %broadcast.splat1406, %wide.masked.load1404
  %197 = shl i64 %188, 3
  %198 = getelementptr i8, i8* %scevgep683, i64 %197
  %199 = bitcast i8* %198 to <4 x double>*
  %wide.masked.load1407 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %199, i32 8, <4 x i1> %187, <4 x double> poison), !alias.scope !89, !noalias !91
  %200 = fadd fast <4 x double> %196, %192
  %201 = fmul fast <4 x double> %200, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %202 = fadd fast <4 x double> %201, %wide.masked.load1407
  %203 = bitcast i8* %198 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %202, <4 x double>* %203, i32 8, <4 x i1> %187), !alias.scope !89, !noalias !91
  %index.next1396 = add i64 %index1395, 4
  %204 = icmp eq i64 %index.next1396, %n.vec1394
  br i1 %204, label %polly.loop_exit663, label %vector.body1391, !llvm.loop !100

polly.loop_exit663:                               ; preds = %vector.body1391
  %polly.indvar_next659 = add nuw nsw i64 %polly.indvar658, 1
  %exitcond983.not = icmp eq i64 %polly.indvar_next659, %175
  br i1 %exitcond983.not, label %polly.loop_exit657, label %polly.loop_header655

polly.loop_header825:                             ; preds = %entry, %polly.loop_exit833
  %polly.indvar828 = phi i64 [ %polly.indvar_next829, %polly.loop_exit833 ], [ 0, %entry ]
  %205 = mul nuw nsw i64 %polly.indvar828, 640
  %206 = trunc i64 %polly.indvar828 to i32
  %broadcast.splatinsert1111 = insertelement <4 x i32> poison, i32 %206, i32 0
  %broadcast.splat1112 = shufflevector <4 x i32> %broadcast.splatinsert1111, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1101

vector.body1101:                                  ; preds = %vector.body1101, %polly.loop_header825
  %index1103 = phi i64 [ 0, %polly.loop_header825 ], [ %index.next1104, %vector.body1101 ]
  %vec.ind1109 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header825 ], [ %vec.ind.next1110, %vector.body1101 ]
  %207 = mul <4 x i32> %vec.ind1109, %broadcast.splat1112
  %208 = add <4 x i32> %207, <i32 3, i32 3, i32 3, i32 3>
  %209 = urem <4 x i32> %208, <i32 80, i32 80, i32 80, i32 80>
  %210 = sitofp <4 x i32> %209 to <4 x double>
  %211 = fmul fast <4 x double> %210, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %212 = shl i64 %index1103, 3
  %213 = add nuw nsw i64 %212, %205
  %214 = getelementptr i8, i8* %call, i64 %213
  %215 = bitcast i8* %214 to <4 x double>*
  store <4 x double> %211, <4 x double>* %215, align 8, !alias.scope !101, !noalias !103
  %index.next1104 = add i64 %index1103, 4
  %vec.ind.next1110 = add <4 x i32> %vec.ind1109, <i32 4, i32 4, i32 4, i32 4>
  %216 = icmp eq i64 %index.next1104, 32
  br i1 %216, label %polly.loop_exit833, label %vector.body1101, !llvm.loop !106

polly.loop_exit833:                               ; preds = %vector.body1101
  %polly.indvar_next829 = add nuw nsw i64 %polly.indvar828, 1
  %exitcond1012.not = icmp eq i64 %polly.indvar_next829, 32
  br i1 %exitcond1012.not, label %polly.loop_header825.1, label %polly.loop_header825

polly.loop_header852:                             ; preds = %polly.loop_exit833.2.2, %polly.loop_exit860
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_exit833.2.2 ]
  %217 = mul nuw nsw i64 %polly.indvar855, 480
  %218 = trunc i64 %polly.indvar855 to i32
  %broadcast.splatinsert1225 = insertelement <4 x i32> poison, i32 %218, i32 0
  %broadcast.splat1226 = shufflevector <4 x i32> %broadcast.splatinsert1225, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1215

vector.body1215:                                  ; preds = %vector.body1215, %polly.loop_header852
  %index1217 = phi i64 [ 0, %polly.loop_header852 ], [ %index.next1218, %vector.body1215 ]
  %vec.ind1223 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header852 ], [ %vec.ind.next1224, %vector.body1215 ]
  %219 = mul <4 x i32> %vec.ind1223, %broadcast.splat1226
  %220 = add <4 x i32> %219, <i32 2, i32 2, i32 2, i32 2>
  %221 = urem <4 x i32> %220, <i32 60, i32 60, i32 60, i32 60>
  %222 = sitofp <4 x i32> %221 to <4 x double>
  %223 = fmul fast <4 x double> %222, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %224 = shl i64 %index1217, 3
  %225 = add i64 %224, %217
  %226 = getelementptr i8, i8* %call2, i64 %225
  %227 = bitcast i8* %226 to <4 x double>*
  store <4 x double> %223, <4 x double>* %227, align 8, !alias.scope !105, !noalias !107
  %index.next1218 = add i64 %index1217, 4
  %vec.ind.next1224 = add <4 x i32> %vec.ind1223, <i32 4, i32 4, i32 4, i32 4>
  %228 = icmp eq i64 %index.next1218, 32
  br i1 %228, label %polly.loop_exit860, label %vector.body1215, !llvm.loop !108

polly.loop_exit860:                               ; preds = %vector.body1215
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %exitcond1003.not = icmp eq i64 %polly.indvar_next856, 32
  br i1 %exitcond1003.not, label %polly.loop_header852.1, label %polly.loop_header852

polly.loop_header878:                             ; preds = %polly.loop_exit860.1.2, %polly.loop_exit886
  %polly.indvar881 = phi i64 [ %polly.indvar_next882, %polly.loop_exit886 ], [ 0, %polly.loop_exit860.1.2 ]
  %229 = mul nuw nsw i64 %polly.indvar881, 480
  %230 = trunc i64 %polly.indvar881 to i32
  %broadcast.splatinsert1303 = insertelement <4 x i32> poison, i32 %230, i32 0
  %broadcast.splat1304 = shufflevector <4 x i32> %broadcast.splatinsert1303, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1293

vector.body1293:                                  ; preds = %vector.body1293, %polly.loop_header878
  %index1295 = phi i64 [ 0, %polly.loop_header878 ], [ %index.next1296, %vector.body1293 ]
  %vec.ind1301 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header878 ], [ %vec.ind.next1302, %vector.body1293 ]
  %231 = mul <4 x i32> %vec.ind1301, %broadcast.splat1304
  %232 = add <4 x i32> %231, <i32 1, i32 1, i32 1, i32 1>
  %233 = urem <4 x i32> %232, <i32 80, i32 80, i32 80, i32 80>
  %234 = sitofp <4 x i32> %233 to <4 x double>
  %235 = fmul fast <4 x double> %234, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %236 = shl i64 %index1295, 3
  %237 = add i64 %236, %229
  %238 = getelementptr i8, i8* %call1, i64 %237
  %239 = bitcast i8* %238 to <4 x double>*
  store <4 x double> %235, <4 x double>* %239, align 8, !alias.scope !104, !noalias !109
  %index.next1296 = add i64 %index1295, 4
  %vec.ind.next1302 = add <4 x i32> %vec.ind1301, <i32 4, i32 4, i32 4, i32 4>
  %240 = icmp eq i64 %index.next1296, 32
  br i1 %240, label %polly.loop_exit886, label %vector.body1293, !llvm.loop !110

polly.loop_exit886:                               ; preds = %vector.body1293
  %polly.indvar_next882 = add nuw nsw i64 %polly.indvar881, 1
  %exitcond997.not = icmp eq i64 %polly.indvar_next882, 32
  br i1 %exitcond997.not, label %polly.loop_header878.1, label %polly.loop_header878

polly.loop_header878.1:                           ; preds = %polly.loop_exit886, %polly.loop_exit886.1
  %polly.indvar881.1 = phi i64 [ %polly.indvar_next882.1, %polly.loop_exit886.1 ], [ 0, %polly.loop_exit886 ]
  %241 = mul nuw nsw i64 %polly.indvar881.1, 480
  %242 = trunc i64 %polly.indvar881.1 to i32
  %broadcast.splatinsert1315 = insertelement <4 x i32> poison, i32 %242, i32 0
  %broadcast.splat1316 = shufflevector <4 x i32> %broadcast.splatinsert1315, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1307

vector.body1307:                                  ; preds = %vector.body1307, %polly.loop_header878.1
  %index1309 = phi i64 [ 0, %polly.loop_header878.1 ], [ %index.next1310, %vector.body1307 ]
  %vec.ind1313 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header878.1 ], [ %vec.ind.next1314, %vector.body1307 ]
  %243 = add nuw nsw <4 x i64> %vec.ind1313, <i64 32, i64 32, i64 32, i64 32>
  %244 = trunc <4 x i64> %243 to <4 x i32>
  %245 = mul <4 x i32> %broadcast.splat1316, %244
  %246 = add <4 x i32> %245, <i32 1, i32 1, i32 1, i32 1>
  %247 = urem <4 x i32> %246, <i32 80, i32 80, i32 80, i32 80>
  %248 = sitofp <4 x i32> %247 to <4 x double>
  %249 = fmul fast <4 x double> %248, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %250 = extractelement <4 x i64> %243, i32 0
  %251 = shl i64 %250, 3
  %252 = add i64 %251, %241
  %253 = getelementptr i8, i8* %call1, i64 %252
  %254 = bitcast i8* %253 to <4 x double>*
  store <4 x double> %249, <4 x double>* %254, align 8, !alias.scope !104, !noalias !109
  %index.next1310 = add i64 %index1309, 4
  %vec.ind.next1314 = add <4 x i64> %vec.ind1313, <i64 4, i64 4, i64 4, i64 4>
  %255 = icmp eq i64 %index.next1310, 28
  br i1 %255, label %polly.loop_exit886.1, label %vector.body1307, !llvm.loop !111

polly.loop_exit886.1:                             ; preds = %vector.body1307
  %polly.indvar_next882.1 = add nuw nsw i64 %polly.indvar881.1, 1
  %exitcond997.1.not = icmp eq i64 %polly.indvar_next882.1, 32
  br i1 %exitcond997.1.not, label %polly.loop_header878.11020, label %polly.loop_header878.1

polly.loop_header878.11020:                       ; preds = %polly.loop_exit886.1, %polly.loop_exit886.11031
  %polly.indvar881.11019 = phi i64 [ %polly.indvar_next882.11029, %polly.loop_exit886.11031 ], [ 0, %polly.loop_exit886.1 ]
  %256 = add nuw nsw i64 %polly.indvar881.11019, 32
  %257 = mul nuw nsw i64 %256, 480
  %258 = trunc i64 %256 to i32
  %broadcast.splatinsert1329 = insertelement <4 x i32> poison, i32 %258, i32 0
  %broadcast.splat1330 = shufflevector <4 x i32> %broadcast.splatinsert1329, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1319

vector.body1319:                                  ; preds = %vector.body1319, %polly.loop_header878.11020
  %index1321 = phi i64 [ 0, %polly.loop_header878.11020 ], [ %index.next1322, %vector.body1319 ]
  %vec.ind1327 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header878.11020 ], [ %vec.ind.next1328, %vector.body1319 ]
  %259 = mul <4 x i32> %vec.ind1327, %broadcast.splat1330
  %260 = add <4 x i32> %259, <i32 1, i32 1, i32 1, i32 1>
  %261 = urem <4 x i32> %260, <i32 80, i32 80, i32 80, i32 80>
  %262 = sitofp <4 x i32> %261 to <4 x double>
  %263 = fmul fast <4 x double> %262, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %264 = shl i64 %index1321, 3
  %265 = add i64 %264, %257
  %266 = getelementptr i8, i8* %call1, i64 %265
  %267 = bitcast i8* %266 to <4 x double>*
  store <4 x double> %263, <4 x double>* %267, align 8, !alias.scope !104, !noalias !109
  %index.next1322 = add i64 %index1321, 4
  %vec.ind.next1328 = add <4 x i32> %vec.ind1327, <i32 4, i32 4, i32 4, i32 4>
  %268 = icmp eq i64 %index.next1322, 32
  br i1 %268, label %polly.loop_exit886.11031, label %vector.body1319, !llvm.loop !112

polly.loop_exit886.11031:                         ; preds = %vector.body1319
  %polly.indvar_next882.11029 = add nuw nsw i64 %polly.indvar881.11019, 1
  %exitcond997.11030.not = icmp eq i64 %polly.indvar_next882.11029, 32
  br i1 %exitcond997.11030.not, label %polly.loop_header878.1.1, label %polly.loop_header878.11020

polly.loop_header878.1.1:                         ; preds = %polly.loop_exit886.11031, %polly.loop_exit886.1.1
  %polly.indvar881.1.1 = phi i64 [ %polly.indvar_next882.1.1, %polly.loop_exit886.1.1 ], [ 0, %polly.loop_exit886.11031 ]
  %269 = add nuw nsw i64 %polly.indvar881.1.1, 32
  %270 = mul nuw nsw i64 %269, 480
  %271 = trunc i64 %269 to i32
  %broadcast.splatinsert1341 = insertelement <4 x i32> poison, i32 %271, i32 0
  %broadcast.splat1342 = shufflevector <4 x i32> %broadcast.splatinsert1341, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1333

vector.body1333:                                  ; preds = %vector.body1333, %polly.loop_header878.1.1
  %index1335 = phi i64 [ 0, %polly.loop_header878.1.1 ], [ %index.next1336, %vector.body1333 ]
  %vec.ind1339 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header878.1.1 ], [ %vec.ind.next1340, %vector.body1333 ]
  %272 = add nuw nsw <4 x i64> %vec.ind1339, <i64 32, i64 32, i64 32, i64 32>
  %273 = trunc <4 x i64> %272 to <4 x i32>
  %274 = mul <4 x i32> %broadcast.splat1342, %273
  %275 = add <4 x i32> %274, <i32 1, i32 1, i32 1, i32 1>
  %276 = urem <4 x i32> %275, <i32 80, i32 80, i32 80, i32 80>
  %277 = sitofp <4 x i32> %276 to <4 x double>
  %278 = fmul fast <4 x double> %277, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %279 = extractelement <4 x i64> %272, i32 0
  %280 = shl i64 %279, 3
  %281 = add i64 %280, %270
  %282 = getelementptr i8, i8* %call1, i64 %281
  %283 = bitcast i8* %282 to <4 x double>*
  store <4 x double> %278, <4 x double>* %283, align 8, !alias.scope !104, !noalias !109
  %index.next1336 = add i64 %index1335, 4
  %vec.ind.next1340 = add <4 x i64> %vec.ind1339, <i64 4, i64 4, i64 4, i64 4>
  %284 = icmp eq i64 %index.next1336, 28
  br i1 %284, label %polly.loop_exit886.1.1, label %vector.body1333, !llvm.loop !113

polly.loop_exit886.1.1:                           ; preds = %vector.body1333
  %polly.indvar_next882.1.1 = add nuw nsw i64 %polly.indvar881.1.1, 1
  %exitcond997.1.1.not = icmp eq i64 %polly.indvar_next882.1.1, 32
  br i1 %exitcond997.1.1.not, label %polly.loop_header878.2, label %polly.loop_header878.1.1

polly.loop_header878.2:                           ; preds = %polly.loop_exit886.1.1, %polly.loop_exit886.2
  %polly.indvar881.2 = phi i64 [ %polly.indvar_next882.2, %polly.loop_exit886.2 ], [ 0, %polly.loop_exit886.1.1 ]
  %285 = add nuw nsw i64 %polly.indvar881.2, 64
  %286 = mul nuw nsw i64 %285, 480
  %287 = trunc i64 %285 to i32
  %broadcast.splatinsert1355 = insertelement <4 x i32> poison, i32 %287, i32 0
  %broadcast.splat1356 = shufflevector <4 x i32> %broadcast.splatinsert1355, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1345

vector.body1345:                                  ; preds = %vector.body1345, %polly.loop_header878.2
  %index1347 = phi i64 [ 0, %polly.loop_header878.2 ], [ %index.next1348, %vector.body1345 ]
  %vec.ind1353 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header878.2 ], [ %vec.ind.next1354, %vector.body1345 ]
  %288 = mul <4 x i32> %vec.ind1353, %broadcast.splat1356
  %289 = add <4 x i32> %288, <i32 1, i32 1, i32 1, i32 1>
  %290 = urem <4 x i32> %289, <i32 80, i32 80, i32 80, i32 80>
  %291 = sitofp <4 x i32> %290 to <4 x double>
  %292 = fmul fast <4 x double> %291, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %293 = shl i64 %index1347, 3
  %294 = add i64 %293, %286
  %295 = getelementptr i8, i8* %call1, i64 %294
  %296 = bitcast i8* %295 to <4 x double>*
  store <4 x double> %292, <4 x double>* %296, align 8, !alias.scope !104, !noalias !109
  %index.next1348 = add i64 %index1347, 4
  %vec.ind.next1354 = add <4 x i32> %vec.ind1353, <i32 4, i32 4, i32 4, i32 4>
  %297 = icmp eq i64 %index.next1348, 32
  br i1 %297, label %polly.loop_exit886.2, label %vector.body1345, !llvm.loop !114

polly.loop_exit886.2:                             ; preds = %vector.body1345
  %polly.indvar_next882.2 = add nuw nsw i64 %polly.indvar881.2, 1
  %exitcond997.2.not = icmp eq i64 %polly.indvar_next882.2, 16
  br i1 %exitcond997.2.not, label %polly.loop_header878.1.2, label %polly.loop_header878.2

polly.loop_header878.1.2:                         ; preds = %polly.loop_exit886.2, %polly.loop_exit886.1.2
  %polly.indvar881.1.2 = phi i64 [ %polly.indvar_next882.1.2, %polly.loop_exit886.1.2 ], [ 0, %polly.loop_exit886.2 ]
  %298 = add nuw nsw i64 %polly.indvar881.1.2, 64
  %299 = mul nuw nsw i64 %298, 480
  %300 = trunc i64 %298 to i32
  %broadcast.splatinsert1367 = insertelement <4 x i32> poison, i32 %300, i32 0
  %broadcast.splat1368 = shufflevector <4 x i32> %broadcast.splatinsert1367, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1359

vector.body1359:                                  ; preds = %vector.body1359, %polly.loop_header878.1.2
  %index1361 = phi i64 [ 0, %polly.loop_header878.1.2 ], [ %index.next1362, %vector.body1359 ]
  %vec.ind1365 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header878.1.2 ], [ %vec.ind.next1366, %vector.body1359 ]
  %301 = add nuw nsw <4 x i64> %vec.ind1365, <i64 32, i64 32, i64 32, i64 32>
  %302 = trunc <4 x i64> %301 to <4 x i32>
  %303 = mul <4 x i32> %broadcast.splat1368, %302
  %304 = add <4 x i32> %303, <i32 1, i32 1, i32 1, i32 1>
  %305 = urem <4 x i32> %304, <i32 80, i32 80, i32 80, i32 80>
  %306 = sitofp <4 x i32> %305 to <4 x double>
  %307 = fmul fast <4 x double> %306, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %308 = extractelement <4 x i64> %301, i32 0
  %309 = shl i64 %308, 3
  %310 = add i64 %309, %299
  %311 = getelementptr i8, i8* %call1, i64 %310
  %312 = bitcast i8* %311 to <4 x double>*
  store <4 x double> %307, <4 x double>* %312, align 8, !alias.scope !104, !noalias !109
  %index.next1362 = add i64 %index1361, 4
  %vec.ind.next1366 = add <4 x i64> %vec.ind1365, <i64 4, i64 4, i64 4, i64 4>
  %313 = icmp eq i64 %index.next1362, 28
  br i1 %313, label %polly.loop_exit886.1.2, label %vector.body1359, !llvm.loop !115

polly.loop_exit886.1.2:                           ; preds = %vector.body1359
  %polly.indvar_next882.1.2 = add nuw nsw i64 %polly.indvar881.1.2, 1
  %exitcond997.1.2.not = icmp eq i64 %polly.indvar_next882.1.2, 16
  br i1 %exitcond997.1.2.not, label %init_array.exit, label %polly.loop_header878.1.2

polly.loop_header852.1:                           ; preds = %polly.loop_exit860, %polly.loop_exit860.1
  %polly.indvar855.1 = phi i64 [ %polly.indvar_next856.1, %polly.loop_exit860.1 ], [ 0, %polly.loop_exit860 ]
  %314 = mul nuw nsw i64 %polly.indvar855.1, 480
  %315 = trunc i64 %polly.indvar855.1 to i32
  %broadcast.splatinsert1237 = insertelement <4 x i32> poison, i32 %315, i32 0
  %broadcast.splat1238 = shufflevector <4 x i32> %broadcast.splatinsert1237, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1229

vector.body1229:                                  ; preds = %vector.body1229, %polly.loop_header852.1
  %index1231 = phi i64 [ 0, %polly.loop_header852.1 ], [ %index.next1232, %vector.body1229 ]
  %vec.ind1235 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header852.1 ], [ %vec.ind.next1236, %vector.body1229 ]
  %316 = add nuw nsw <4 x i64> %vec.ind1235, <i64 32, i64 32, i64 32, i64 32>
  %317 = trunc <4 x i64> %316 to <4 x i32>
  %318 = mul <4 x i32> %broadcast.splat1238, %317
  %319 = add <4 x i32> %318, <i32 2, i32 2, i32 2, i32 2>
  %320 = urem <4 x i32> %319, <i32 60, i32 60, i32 60, i32 60>
  %321 = sitofp <4 x i32> %320 to <4 x double>
  %322 = fmul fast <4 x double> %321, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %323 = extractelement <4 x i64> %316, i32 0
  %324 = shl i64 %323, 3
  %325 = add i64 %324, %314
  %326 = getelementptr i8, i8* %call2, i64 %325
  %327 = bitcast i8* %326 to <4 x double>*
  store <4 x double> %322, <4 x double>* %327, align 8, !alias.scope !105, !noalias !107
  %index.next1232 = add i64 %index1231, 4
  %vec.ind.next1236 = add <4 x i64> %vec.ind1235, <i64 4, i64 4, i64 4, i64 4>
  %328 = icmp eq i64 %index.next1232, 28
  br i1 %328, label %polly.loop_exit860.1, label %vector.body1229, !llvm.loop !116

polly.loop_exit860.1:                             ; preds = %vector.body1229
  %polly.indvar_next856.1 = add nuw nsw i64 %polly.indvar855.1, 1
  %exitcond1003.1.not = icmp eq i64 %polly.indvar_next856.1, 32
  br i1 %exitcond1003.1.not, label %polly.loop_header852.11034, label %polly.loop_header852.1

polly.loop_header852.11034:                       ; preds = %polly.loop_exit860.1, %polly.loop_exit860.11045
  %polly.indvar855.11033 = phi i64 [ %polly.indvar_next856.11043, %polly.loop_exit860.11045 ], [ 0, %polly.loop_exit860.1 ]
  %329 = add nuw nsw i64 %polly.indvar855.11033, 32
  %330 = mul nuw nsw i64 %329, 480
  %331 = trunc i64 %329 to i32
  %broadcast.splatinsert1251 = insertelement <4 x i32> poison, i32 %331, i32 0
  %broadcast.splat1252 = shufflevector <4 x i32> %broadcast.splatinsert1251, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1241

vector.body1241:                                  ; preds = %vector.body1241, %polly.loop_header852.11034
  %index1243 = phi i64 [ 0, %polly.loop_header852.11034 ], [ %index.next1244, %vector.body1241 ]
  %vec.ind1249 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header852.11034 ], [ %vec.ind.next1250, %vector.body1241 ]
  %332 = mul <4 x i32> %vec.ind1249, %broadcast.splat1252
  %333 = add <4 x i32> %332, <i32 2, i32 2, i32 2, i32 2>
  %334 = urem <4 x i32> %333, <i32 60, i32 60, i32 60, i32 60>
  %335 = sitofp <4 x i32> %334 to <4 x double>
  %336 = fmul fast <4 x double> %335, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %337 = shl i64 %index1243, 3
  %338 = add i64 %337, %330
  %339 = getelementptr i8, i8* %call2, i64 %338
  %340 = bitcast i8* %339 to <4 x double>*
  store <4 x double> %336, <4 x double>* %340, align 8, !alias.scope !105, !noalias !107
  %index.next1244 = add i64 %index1243, 4
  %vec.ind.next1250 = add <4 x i32> %vec.ind1249, <i32 4, i32 4, i32 4, i32 4>
  %341 = icmp eq i64 %index.next1244, 32
  br i1 %341, label %polly.loop_exit860.11045, label %vector.body1241, !llvm.loop !117

polly.loop_exit860.11045:                         ; preds = %vector.body1241
  %polly.indvar_next856.11043 = add nuw nsw i64 %polly.indvar855.11033, 1
  %exitcond1003.11044.not = icmp eq i64 %polly.indvar_next856.11043, 32
  br i1 %exitcond1003.11044.not, label %polly.loop_header852.1.1, label %polly.loop_header852.11034

polly.loop_header852.1.1:                         ; preds = %polly.loop_exit860.11045, %polly.loop_exit860.1.1
  %polly.indvar855.1.1 = phi i64 [ %polly.indvar_next856.1.1, %polly.loop_exit860.1.1 ], [ 0, %polly.loop_exit860.11045 ]
  %342 = add nuw nsw i64 %polly.indvar855.1.1, 32
  %343 = mul nuw nsw i64 %342, 480
  %344 = trunc i64 %342 to i32
  %broadcast.splatinsert1263 = insertelement <4 x i32> poison, i32 %344, i32 0
  %broadcast.splat1264 = shufflevector <4 x i32> %broadcast.splatinsert1263, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1255

vector.body1255:                                  ; preds = %vector.body1255, %polly.loop_header852.1.1
  %index1257 = phi i64 [ 0, %polly.loop_header852.1.1 ], [ %index.next1258, %vector.body1255 ]
  %vec.ind1261 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header852.1.1 ], [ %vec.ind.next1262, %vector.body1255 ]
  %345 = add nuw nsw <4 x i64> %vec.ind1261, <i64 32, i64 32, i64 32, i64 32>
  %346 = trunc <4 x i64> %345 to <4 x i32>
  %347 = mul <4 x i32> %broadcast.splat1264, %346
  %348 = add <4 x i32> %347, <i32 2, i32 2, i32 2, i32 2>
  %349 = urem <4 x i32> %348, <i32 60, i32 60, i32 60, i32 60>
  %350 = sitofp <4 x i32> %349 to <4 x double>
  %351 = fmul fast <4 x double> %350, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %352 = extractelement <4 x i64> %345, i32 0
  %353 = shl i64 %352, 3
  %354 = add i64 %353, %343
  %355 = getelementptr i8, i8* %call2, i64 %354
  %356 = bitcast i8* %355 to <4 x double>*
  store <4 x double> %351, <4 x double>* %356, align 8, !alias.scope !105, !noalias !107
  %index.next1258 = add i64 %index1257, 4
  %vec.ind.next1262 = add <4 x i64> %vec.ind1261, <i64 4, i64 4, i64 4, i64 4>
  %357 = icmp eq i64 %index.next1258, 28
  br i1 %357, label %polly.loop_exit860.1.1, label %vector.body1255, !llvm.loop !118

polly.loop_exit860.1.1:                           ; preds = %vector.body1255
  %polly.indvar_next856.1.1 = add nuw nsw i64 %polly.indvar855.1.1, 1
  %exitcond1003.1.1.not = icmp eq i64 %polly.indvar_next856.1.1, 32
  br i1 %exitcond1003.1.1.not, label %polly.loop_header852.2, label %polly.loop_header852.1.1

polly.loop_header852.2:                           ; preds = %polly.loop_exit860.1.1, %polly.loop_exit860.2
  %polly.indvar855.2 = phi i64 [ %polly.indvar_next856.2, %polly.loop_exit860.2 ], [ 0, %polly.loop_exit860.1.1 ]
  %358 = add nuw nsw i64 %polly.indvar855.2, 64
  %359 = mul nuw nsw i64 %358, 480
  %360 = trunc i64 %358 to i32
  %broadcast.splatinsert1277 = insertelement <4 x i32> poison, i32 %360, i32 0
  %broadcast.splat1278 = shufflevector <4 x i32> %broadcast.splatinsert1277, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1267

vector.body1267:                                  ; preds = %vector.body1267, %polly.loop_header852.2
  %index1269 = phi i64 [ 0, %polly.loop_header852.2 ], [ %index.next1270, %vector.body1267 ]
  %vec.ind1275 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header852.2 ], [ %vec.ind.next1276, %vector.body1267 ]
  %361 = mul <4 x i32> %vec.ind1275, %broadcast.splat1278
  %362 = add <4 x i32> %361, <i32 2, i32 2, i32 2, i32 2>
  %363 = urem <4 x i32> %362, <i32 60, i32 60, i32 60, i32 60>
  %364 = sitofp <4 x i32> %363 to <4 x double>
  %365 = fmul fast <4 x double> %364, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %366 = shl i64 %index1269, 3
  %367 = add i64 %366, %359
  %368 = getelementptr i8, i8* %call2, i64 %367
  %369 = bitcast i8* %368 to <4 x double>*
  store <4 x double> %365, <4 x double>* %369, align 8, !alias.scope !105, !noalias !107
  %index.next1270 = add i64 %index1269, 4
  %vec.ind.next1276 = add <4 x i32> %vec.ind1275, <i32 4, i32 4, i32 4, i32 4>
  %370 = icmp eq i64 %index.next1270, 32
  br i1 %370, label %polly.loop_exit860.2, label %vector.body1267, !llvm.loop !119

polly.loop_exit860.2:                             ; preds = %vector.body1267
  %polly.indvar_next856.2 = add nuw nsw i64 %polly.indvar855.2, 1
  %exitcond1003.2.not = icmp eq i64 %polly.indvar_next856.2, 16
  br i1 %exitcond1003.2.not, label %polly.loop_header852.1.2, label %polly.loop_header852.2

polly.loop_header852.1.2:                         ; preds = %polly.loop_exit860.2, %polly.loop_exit860.1.2
  %polly.indvar855.1.2 = phi i64 [ %polly.indvar_next856.1.2, %polly.loop_exit860.1.2 ], [ 0, %polly.loop_exit860.2 ]
  %371 = add nuw nsw i64 %polly.indvar855.1.2, 64
  %372 = mul nuw nsw i64 %371, 480
  %373 = trunc i64 %371 to i32
  %broadcast.splatinsert1289 = insertelement <4 x i32> poison, i32 %373, i32 0
  %broadcast.splat1290 = shufflevector <4 x i32> %broadcast.splatinsert1289, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1281

vector.body1281:                                  ; preds = %vector.body1281, %polly.loop_header852.1.2
  %index1283 = phi i64 [ 0, %polly.loop_header852.1.2 ], [ %index.next1284, %vector.body1281 ]
  %vec.ind1287 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header852.1.2 ], [ %vec.ind.next1288, %vector.body1281 ]
  %374 = add nuw nsw <4 x i64> %vec.ind1287, <i64 32, i64 32, i64 32, i64 32>
  %375 = trunc <4 x i64> %374 to <4 x i32>
  %376 = mul <4 x i32> %broadcast.splat1290, %375
  %377 = add <4 x i32> %376, <i32 2, i32 2, i32 2, i32 2>
  %378 = urem <4 x i32> %377, <i32 60, i32 60, i32 60, i32 60>
  %379 = sitofp <4 x i32> %378 to <4 x double>
  %380 = fmul fast <4 x double> %379, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %381 = extractelement <4 x i64> %374, i32 0
  %382 = shl i64 %381, 3
  %383 = add i64 %382, %372
  %384 = getelementptr i8, i8* %call2, i64 %383
  %385 = bitcast i8* %384 to <4 x double>*
  store <4 x double> %380, <4 x double>* %385, align 8, !alias.scope !105, !noalias !107
  %index.next1284 = add i64 %index1283, 4
  %vec.ind.next1288 = add <4 x i64> %vec.ind1287, <i64 4, i64 4, i64 4, i64 4>
  %386 = icmp eq i64 %index.next1284, 28
  br i1 %386, label %polly.loop_exit860.1.2, label %vector.body1281, !llvm.loop !120

polly.loop_exit860.1.2:                           ; preds = %vector.body1281
  %polly.indvar_next856.1.2 = add nuw nsw i64 %polly.indvar855.1.2, 1
  %exitcond1003.1.2.not = icmp eq i64 %polly.indvar_next856.1.2, 16
  br i1 %exitcond1003.1.2.not, label %polly.loop_header878, label %polly.loop_header852.1.2

polly.loop_header825.1:                           ; preds = %polly.loop_exit833, %polly.loop_exit833.1
  %polly.indvar828.1 = phi i64 [ %polly.indvar_next829.1, %polly.loop_exit833.1 ], [ 0, %polly.loop_exit833 ]
  %387 = mul nuw nsw i64 %polly.indvar828.1, 640
  %388 = trunc i64 %polly.indvar828.1 to i32
  %broadcast.splatinsert1123 = insertelement <4 x i32> poison, i32 %388, i32 0
  %broadcast.splat1124 = shufflevector <4 x i32> %broadcast.splatinsert1123, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1115

vector.body1115:                                  ; preds = %vector.body1115, %polly.loop_header825.1
  %index1117 = phi i64 [ 0, %polly.loop_header825.1 ], [ %index.next1118, %vector.body1115 ]
  %vec.ind1121 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.1 ], [ %vec.ind.next1122, %vector.body1115 ]
  %389 = add nuw nsw <4 x i64> %vec.ind1121, <i64 32, i64 32, i64 32, i64 32>
  %390 = trunc <4 x i64> %389 to <4 x i32>
  %391 = mul <4 x i32> %broadcast.splat1124, %390
  %392 = add <4 x i32> %391, <i32 3, i32 3, i32 3, i32 3>
  %393 = urem <4 x i32> %392, <i32 80, i32 80, i32 80, i32 80>
  %394 = sitofp <4 x i32> %393 to <4 x double>
  %395 = fmul fast <4 x double> %394, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %396 = extractelement <4 x i64> %389, i32 0
  %397 = shl i64 %396, 3
  %398 = add nuw nsw i64 %397, %387
  %399 = getelementptr i8, i8* %call, i64 %398
  %400 = bitcast i8* %399 to <4 x double>*
  store <4 x double> %395, <4 x double>* %400, align 8, !alias.scope !101, !noalias !103
  %index.next1118 = add i64 %index1117, 4
  %vec.ind.next1122 = add <4 x i64> %vec.ind1121, <i64 4, i64 4, i64 4, i64 4>
  %401 = icmp eq i64 %index.next1118, 32
  br i1 %401, label %polly.loop_exit833.1, label %vector.body1115, !llvm.loop !121

polly.loop_exit833.1:                             ; preds = %vector.body1115
  %polly.indvar_next829.1 = add nuw nsw i64 %polly.indvar828.1, 1
  %exitcond1012.1.not = icmp eq i64 %polly.indvar_next829.1, 32
  br i1 %exitcond1012.1.not, label %polly.loop_header825.2, label %polly.loop_header825.1

polly.loop_header825.2:                           ; preds = %polly.loop_exit833.1, %polly.loop_exit833.2
  %polly.indvar828.2 = phi i64 [ %polly.indvar_next829.2, %polly.loop_exit833.2 ], [ 0, %polly.loop_exit833.1 ]
  %402 = mul nuw nsw i64 %polly.indvar828.2, 640
  %403 = trunc i64 %polly.indvar828.2 to i32
  %broadcast.splatinsert1135 = insertelement <4 x i32> poison, i32 %403, i32 0
  %broadcast.splat1136 = shufflevector <4 x i32> %broadcast.splatinsert1135, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1127

vector.body1127:                                  ; preds = %vector.body1127, %polly.loop_header825.2
  %index1129 = phi i64 [ 0, %polly.loop_header825.2 ], [ %index.next1130, %vector.body1127 ]
  %vec.ind1133 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.2 ], [ %vec.ind.next1134, %vector.body1127 ]
  %404 = add nuw nsw <4 x i64> %vec.ind1133, <i64 64, i64 64, i64 64, i64 64>
  %405 = trunc <4 x i64> %404 to <4 x i32>
  %406 = mul <4 x i32> %broadcast.splat1136, %405
  %407 = add <4 x i32> %406, <i32 3, i32 3, i32 3, i32 3>
  %408 = urem <4 x i32> %407, <i32 80, i32 80, i32 80, i32 80>
  %409 = sitofp <4 x i32> %408 to <4 x double>
  %410 = fmul fast <4 x double> %409, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %411 = extractelement <4 x i64> %404, i32 0
  %412 = shl i64 %411, 3
  %413 = add nuw nsw i64 %412, %402
  %414 = getelementptr i8, i8* %call, i64 %413
  %415 = bitcast i8* %414 to <4 x double>*
  store <4 x double> %410, <4 x double>* %415, align 8, !alias.scope !101, !noalias !103
  %index.next1130 = add i64 %index1129, 4
  %vec.ind.next1134 = add <4 x i64> %vec.ind1133, <i64 4, i64 4, i64 4, i64 4>
  %416 = icmp eq i64 %index.next1130, 16
  br i1 %416, label %polly.loop_exit833.2, label %vector.body1127, !llvm.loop !122

polly.loop_exit833.2:                             ; preds = %vector.body1127
  %polly.indvar_next829.2 = add nuw nsw i64 %polly.indvar828.2, 1
  %exitcond1012.2.not = icmp eq i64 %polly.indvar_next829.2, 32
  br i1 %exitcond1012.2.not, label %polly.loop_header825.11048, label %polly.loop_header825.2

polly.loop_header825.11048:                       ; preds = %polly.loop_exit833.2, %polly.loop_exit833.11059
  %polly.indvar828.11047 = phi i64 [ %polly.indvar_next829.11057, %polly.loop_exit833.11059 ], [ 0, %polly.loop_exit833.2 ]
  %417 = add nuw nsw i64 %polly.indvar828.11047, 32
  %418 = mul nuw nsw i64 %417, 640
  %419 = trunc i64 %417 to i32
  %broadcast.splatinsert1149 = insertelement <4 x i32> poison, i32 %419, i32 0
  %broadcast.splat1150 = shufflevector <4 x i32> %broadcast.splatinsert1149, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1139

vector.body1139:                                  ; preds = %vector.body1139, %polly.loop_header825.11048
  %index1141 = phi i64 [ 0, %polly.loop_header825.11048 ], [ %index.next1142, %vector.body1139 ]
  %vec.ind1147 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header825.11048 ], [ %vec.ind.next1148, %vector.body1139 ]
  %420 = mul <4 x i32> %vec.ind1147, %broadcast.splat1150
  %421 = add <4 x i32> %420, <i32 3, i32 3, i32 3, i32 3>
  %422 = urem <4 x i32> %421, <i32 80, i32 80, i32 80, i32 80>
  %423 = sitofp <4 x i32> %422 to <4 x double>
  %424 = fmul fast <4 x double> %423, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %425 = shl i64 %index1141, 3
  %426 = add nuw nsw i64 %425, %418
  %427 = getelementptr i8, i8* %call, i64 %426
  %428 = bitcast i8* %427 to <4 x double>*
  store <4 x double> %424, <4 x double>* %428, align 8, !alias.scope !101, !noalias !103
  %index.next1142 = add i64 %index1141, 4
  %vec.ind.next1148 = add <4 x i32> %vec.ind1147, <i32 4, i32 4, i32 4, i32 4>
  %429 = icmp eq i64 %index.next1142, 32
  br i1 %429, label %polly.loop_exit833.11059, label %vector.body1139, !llvm.loop !123

polly.loop_exit833.11059:                         ; preds = %vector.body1139
  %polly.indvar_next829.11057 = add nuw nsw i64 %polly.indvar828.11047, 1
  %exitcond1012.11058.not = icmp eq i64 %polly.indvar_next829.11057, 32
  br i1 %exitcond1012.11058.not, label %polly.loop_header825.1.1, label %polly.loop_header825.11048

polly.loop_header825.1.1:                         ; preds = %polly.loop_exit833.11059, %polly.loop_exit833.1.1
  %polly.indvar828.1.1 = phi i64 [ %polly.indvar_next829.1.1, %polly.loop_exit833.1.1 ], [ 0, %polly.loop_exit833.11059 ]
  %430 = add nuw nsw i64 %polly.indvar828.1.1, 32
  %431 = mul nuw nsw i64 %430, 640
  %432 = trunc i64 %430 to i32
  %broadcast.splatinsert1161 = insertelement <4 x i32> poison, i32 %432, i32 0
  %broadcast.splat1162 = shufflevector <4 x i32> %broadcast.splatinsert1161, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1153

vector.body1153:                                  ; preds = %vector.body1153, %polly.loop_header825.1.1
  %index1155 = phi i64 [ 0, %polly.loop_header825.1.1 ], [ %index.next1156, %vector.body1153 ]
  %vec.ind1159 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.1.1 ], [ %vec.ind.next1160, %vector.body1153 ]
  %433 = add nuw nsw <4 x i64> %vec.ind1159, <i64 32, i64 32, i64 32, i64 32>
  %434 = trunc <4 x i64> %433 to <4 x i32>
  %435 = mul <4 x i32> %broadcast.splat1162, %434
  %436 = add <4 x i32> %435, <i32 3, i32 3, i32 3, i32 3>
  %437 = urem <4 x i32> %436, <i32 80, i32 80, i32 80, i32 80>
  %438 = sitofp <4 x i32> %437 to <4 x double>
  %439 = fmul fast <4 x double> %438, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %440 = extractelement <4 x i64> %433, i32 0
  %441 = shl i64 %440, 3
  %442 = add nuw nsw i64 %441, %431
  %443 = getelementptr i8, i8* %call, i64 %442
  %444 = bitcast i8* %443 to <4 x double>*
  store <4 x double> %439, <4 x double>* %444, align 8, !alias.scope !101, !noalias !103
  %index.next1156 = add i64 %index1155, 4
  %vec.ind.next1160 = add <4 x i64> %vec.ind1159, <i64 4, i64 4, i64 4, i64 4>
  %445 = icmp eq i64 %index.next1156, 32
  br i1 %445, label %polly.loop_exit833.1.1, label %vector.body1153, !llvm.loop !124

polly.loop_exit833.1.1:                           ; preds = %vector.body1153
  %polly.indvar_next829.1.1 = add nuw nsw i64 %polly.indvar828.1.1, 1
  %exitcond1012.1.1.not = icmp eq i64 %polly.indvar_next829.1.1, 32
  br i1 %exitcond1012.1.1.not, label %polly.loop_header825.2.1, label %polly.loop_header825.1.1

polly.loop_header825.2.1:                         ; preds = %polly.loop_exit833.1.1, %polly.loop_exit833.2.1
  %polly.indvar828.2.1 = phi i64 [ %polly.indvar_next829.2.1, %polly.loop_exit833.2.1 ], [ 0, %polly.loop_exit833.1.1 ]
  %446 = add nuw nsw i64 %polly.indvar828.2.1, 32
  %447 = mul nuw nsw i64 %446, 640
  %448 = trunc i64 %446 to i32
  %broadcast.splatinsert1173 = insertelement <4 x i32> poison, i32 %448, i32 0
  %broadcast.splat1174 = shufflevector <4 x i32> %broadcast.splatinsert1173, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1165

vector.body1165:                                  ; preds = %vector.body1165, %polly.loop_header825.2.1
  %index1167 = phi i64 [ 0, %polly.loop_header825.2.1 ], [ %index.next1168, %vector.body1165 ]
  %vec.ind1171 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.2.1 ], [ %vec.ind.next1172, %vector.body1165 ]
  %449 = add nuw nsw <4 x i64> %vec.ind1171, <i64 64, i64 64, i64 64, i64 64>
  %450 = trunc <4 x i64> %449 to <4 x i32>
  %451 = mul <4 x i32> %broadcast.splat1174, %450
  %452 = add <4 x i32> %451, <i32 3, i32 3, i32 3, i32 3>
  %453 = urem <4 x i32> %452, <i32 80, i32 80, i32 80, i32 80>
  %454 = sitofp <4 x i32> %453 to <4 x double>
  %455 = fmul fast <4 x double> %454, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %456 = extractelement <4 x i64> %449, i32 0
  %457 = shl i64 %456, 3
  %458 = add nuw nsw i64 %457, %447
  %459 = getelementptr i8, i8* %call, i64 %458
  %460 = bitcast i8* %459 to <4 x double>*
  store <4 x double> %455, <4 x double>* %460, align 8, !alias.scope !101, !noalias !103
  %index.next1168 = add i64 %index1167, 4
  %vec.ind.next1172 = add <4 x i64> %vec.ind1171, <i64 4, i64 4, i64 4, i64 4>
  %461 = icmp eq i64 %index.next1168, 16
  br i1 %461, label %polly.loop_exit833.2.1, label %vector.body1165, !llvm.loop !125

polly.loop_exit833.2.1:                           ; preds = %vector.body1165
  %polly.indvar_next829.2.1 = add nuw nsw i64 %polly.indvar828.2.1, 1
  %exitcond1012.2.1.not = icmp eq i64 %polly.indvar_next829.2.1, 32
  br i1 %exitcond1012.2.1.not, label %polly.loop_header825.21062, label %polly.loop_header825.2.1

polly.loop_header825.21062:                       ; preds = %polly.loop_exit833.2.1, %polly.loop_exit833.21073
  %polly.indvar828.21061 = phi i64 [ %polly.indvar_next829.21071, %polly.loop_exit833.21073 ], [ 0, %polly.loop_exit833.2.1 ]
  %462 = add nuw nsw i64 %polly.indvar828.21061, 64
  %463 = mul nuw nsw i64 %462, 640
  %464 = trunc i64 %462 to i32
  %broadcast.splatinsert1187 = insertelement <4 x i32> poison, i32 %464, i32 0
  %broadcast.splat1188 = shufflevector <4 x i32> %broadcast.splatinsert1187, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1177

vector.body1177:                                  ; preds = %vector.body1177, %polly.loop_header825.21062
  %index1179 = phi i64 [ 0, %polly.loop_header825.21062 ], [ %index.next1180, %vector.body1177 ]
  %vec.ind1185 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header825.21062 ], [ %vec.ind.next1186, %vector.body1177 ]
  %465 = mul <4 x i32> %vec.ind1185, %broadcast.splat1188
  %466 = add <4 x i32> %465, <i32 3, i32 3, i32 3, i32 3>
  %467 = urem <4 x i32> %466, <i32 80, i32 80, i32 80, i32 80>
  %468 = sitofp <4 x i32> %467 to <4 x double>
  %469 = fmul fast <4 x double> %468, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %470 = shl i64 %index1179, 3
  %471 = add nuw nsw i64 %470, %463
  %472 = getelementptr i8, i8* %call, i64 %471
  %473 = bitcast i8* %472 to <4 x double>*
  store <4 x double> %469, <4 x double>* %473, align 8, !alias.scope !101, !noalias !103
  %index.next1180 = add i64 %index1179, 4
  %vec.ind.next1186 = add <4 x i32> %vec.ind1185, <i32 4, i32 4, i32 4, i32 4>
  %474 = icmp eq i64 %index.next1180, 32
  br i1 %474, label %polly.loop_exit833.21073, label %vector.body1177, !llvm.loop !126

polly.loop_exit833.21073:                         ; preds = %vector.body1177
  %polly.indvar_next829.21071 = add nuw nsw i64 %polly.indvar828.21061, 1
  %exitcond1012.21072.not = icmp eq i64 %polly.indvar_next829.21071, 16
  br i1 %exitcond1012.21072.not, label %polly.loop_header825.1.2, label %polly.loop_header825.21062

polly.loop_header825.1.2:                         ; preds = %polly.loop_exit833.21073, %polly.loop_exit833.1.2
  %polly.indvar828.1.2 = phi i64 [ %polly.indvar_next829.1.2, %polly.loop_exit833.1.2 ], [ 0, %polly.loop_exit833.21073 ]
  %475 = add nuw nsw i64 %polly.indvar828.1.2, 64
  %476 = mul nuw nsw i64 %475, 640
  %477 = trunc i64 %475 to i32
  %broadcast.splatinsert1199 = insertelement <4 x i32> poison, i32 %477, i32 0
  %broadcast.splat1200 = shufflevector <4 x i32> %broadcast.splatinsert1199, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1191

vector.body1191:                                  ; preds = %vector.body1191, %polly.loop_header825.1.2
  %index1193 = phi i64 [ 0, %polly.loop_header825.1.2 ], [ %index.next1194, %vector.body1191 ]
  %vec.ind1197 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.1.2 ], [ %vec.ind.next1198, %vector.body1191 ]
  %478 = add nuw nsw <4 x i64> %vec.ind1197, <i64 32, i64 32, i64 32, i64 32>
  %479 = trunc <4 x i64> %478 to <4 x i32>
  %480 = mul <4 x i32> %broadcast.splat1200, %479
  %481 = add <4 x i32> %480, <i32 3, i32 3, i32 3, i32 3>
  %482 = urem <4 x i32> %481, <i32 80, i32 80, i32 80, i32 80>
  %483 = sitofp <4 x i32> %482 to <4 x double>
  %484 = fmul fast <4 x double> %483, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %485 = extractelement <4 x i64> %478, i32 0
  %486 = shl i64 %485, 3
  %487 = add nuw nsw i64 %486, %476
  %488 = getelementptr i8, i8* %call, i64 %487
  %489 = bitcast i8* %488 to <4 x double>*
  store <4 x double> %484, <4 x double>* %489, align 8, !alias.scope !101, !noalias !103
  %index.next1194 = add i64 %index1193, 4
  %vec.ind.next1198 = add <4 x i64> %vec.ind1197, <i64 4, i64 4, i64 4, i64 4>
  %490 = icmp eq i64 %index.next1194, 32
  br i1 %490, label %polly.loop_exit833.1.2, label %vector.body1191, !llvm.loop !127

polly.loop_exit833.1.2:                           ; preds = %vector.body1191
  %polly.indvar_next829.1.2 = add nuw nsw i64 %polly.indvar828.1.2, 1
  %exitcond1012.1.2.not = icmp eq i64 %polly.indvar_next829.1.2, 16
  br i1 %exitcond1012.1.2.not, label %polly.loop_header825.2.2, label %polly.loop_header825.1.2

polly.loop_header825.2.2:                         ; preds = %polly.loop_exit833.1.2, %polly.loop_exit833.2.2
  %polly.indvar828.2.2 = phi i64 [ %polly.indvar_next829.2.2, %polly.loop_exit833.2.2 ], [ 0, %polly.loop_exit833.1.2 ]
  %491 = add nuw nsw i64 %polly.indvar828.2.2, 64
  %492 = mul nuw nsw i64 %491, 640
  %493 = trunc i64 %491 to i32
  %broadcast.splatinsert1211 = insertelement <4 x i32> poison, i32 %493, i32 0
  %broadcast.splat1212 = shufflevector <4 x i32> %broadcast.splatinsert1211, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1203

vector.body1203:                                  ; preds = %vector.body1203, %polly.loop_header825.2.2
  %index1205 = phi i64 [ 0, %polly.loop_header825.2.2 ], [ %index.next1206, %vector.body1203 ]
  %vec.ind1209 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.2.2 ], [ %vec.ind.next1210, %vector.body1203 ]
  %494 = add nuw nsw <4 x i64> %vec.ind1209, <i64 64, i64 64, i64 64, i64 64>
  %495 = trunc <4 x i64> %494 to <4 x i32>
  %496 = mul <4 x i32> %broadcast.splat1212, %495
  %497 = add <4 x i32> %496, <i32 3, i32 3, i32 3, i32 3>
  %498 = urem <4 x i32> %497, <i32 80, i32 80, i32 80, i32 80>
  %499 = sitofp <4 x i32> %498 to <4 x double>
  %500 = fmul fast <4 x double> %499, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %501 = extractelement <4 x i64> %494, i32 0
  %502 = shl i64 %501, 3
  %503 = add nuw nsw i64 %502, %492
  %504 = getelementptr i8, i8* %call, i64 %503
  %505 = bitcast i8* %504 to <4 x double>*
  store <4 x double> %500, <4 x double>* %505, align 8, !alias.scope !101, !noalias !103
  %index.next1206 = add i64 %index1205, 4
  %vec.ind.next1210 = add <4 x i64> %vec.ind1209, <i64 4, i64 4, i64 4, i64 4>
  %506 = icmp eq i64 %index.next1206, 16
  br i1 %506, label %polly.loop_exit833.2.2, label %vector.body1203, !llvm.loop !128

polly.loop_exit833.2.2:                           ; preds = %vector.body1203
  %polly.indvar_next829.2.2 = add nuw nsw i64 %polly.indvar828.2.2, 1
  %exitcond1012.2.2.not = icmp eq i64 %polly.indvar_next829.2.2, 16
  br i1 %exitcond1012.2.2.not, label %polly.loop_header852, label %polly.loop_header825.2.2
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

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.v4f64.p0v4f64(<4 x double>, <4 x double>*, i32 immarg, <4 x i1>) #7

attributes #0 = { nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #1 = { "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #3 = { nofree nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #4 = { nofree nounwind }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nosync nounwind readonly willreturn }
attributes #7 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!48 = !{!"llvm.loop.tile.size", i32 100}
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
!77 = distinct !{!77, !78, !"polly.alias.scope.MemRef_call"}
!78 = distinct !{!78, !"polly.alias.scope.domain"}
!79 = !{!80, !81, !82, !83}
!80 = distinct !{!80, !78, !"polly.alias.scope.MemRef_call1"}
!81 = distinct !{!81, !78, !"polly.alias.scope.MemRef_call2"}
!82 = distinct !{!82, !78, !"polly.alias.scope.Packed_MemRef_call1"}
!83 = distinct !{!83, !78, !"polly.alias.scope.Packed_MemRef_call2"}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !73, !13}
!86 = !{!77, !80, !82, !83}
!87 = !{!77, !81, !82, !83}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !90, !"polly.alias.scope.MemRef_call"}
!90 = distinct !{!90, !"polly.alias.scope.domain"}
!91 = !{!92, !93, !94, !95}
!92 = distinct !{!92, !90, !"polly.alias.scope.MemRef_call1"}
!93 = distinct !{!93, !90, !"polly.alias.scope.MemRef_call2"}
!94 = distinct !{!94, !90, !"polly.alias.scope.Packed_MemRef_call1"}
!95 = distinct !{!95, !90, !"polly.alias.scope.Packed_MemRef_call2"}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !73, !13}
!98 = !{!89, !92, !94, !95}
!99 = !{!89, !93, !94, !95}
!100 = distinct !{!100, !13}
!101 = distinct !{!101, !102, !"polly.alias.scope.MemRef_call"}
!102 = distinct !{!102, !"polly.alias.scope.domain"}
!103 = !{!104, !105}
!104 = distinct !{!104, !102, !"polly.alias.scope.MemRef_call1"}
!105 = distinct !{!105, !102, !"polly.alias.scope.MemRef_call2"}
!106 = distinct !{!106, !13}
!107 = !{!104, !101}
!108 = distinct !{!108, !13}
!109 = !{!105, !101}
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
!127 = distinct !{!127, !13}
!128 = distinct !{!128, !13}
