; ModuleID = 'syr2k_recreations//mmp_syr2k_S_2.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_2.c"
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
  %call839 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
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
  %scevgep1080 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1079 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1078 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1077 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1077, %scevgep1080
  %bound1 = icmp ult i8* %scevgep1079, %scevgep1078
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
  br i1 %exitcond18.not.i, label %vector.ph1084, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1084:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1091 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1092 = shufflevector <4 x i64> %broadcast.splatinsert1091, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1083

vector.body1083:                                  ; preds = %vector.body1083, %vector.ph1084
  %index1085 = phi i64 [ 0, %vector.ph1084 ], [ %index.next1086, %vector.body1083 ]
  %vec.ind1089 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1084 ], [ %vec.ind.next1090, %vector.body1083 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1089, %broadcast.splat1092
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv7.i, i64 %index1085
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1086 = add i64 %index1085, 4
  %vec.ind.next1090 = add <4 x i64> %vec.ind1089, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1086, 80
  br i1 %40, label %for.inc41.i, label %vector.body1083, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1083
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1084, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit886.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start490, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1613, label %vector.ph1366

vector.ph1366:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1365

vector.body1365:                                  ; preds = %vector.body1365, %vector.ph1366
  %index1367 = phi i64 [ 0, %vector.ph1366 ], [ %index.next1368, %vector.body1365 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i, i64 %index1367
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1368 = add i64 %index1367, 4
  %46 = icmp eq i64 %index.next1368, %n.vec
  br i1 %46, label %middle.block1363, label %vector.body1365, !llvm.loop !18

middle.block1363:                                 ; preds = %vector.body1365
  %cmp.n1370 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1370, label %for.inc6.i, label %for.body3.i46.preheader1613

for.body3.i46.preheader1613:                      ; preds = %for.body3.i46.preheader, %middle.block1363
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1363 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1613, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1613 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1363, %for.cond1.preheader.i45
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
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start291, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1441 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1441, label %for.body3.i60.preheader1609, label %vector.ph1442

vector.ph1442:                                    ; preds = %for.body3.i60.preheader
  %n.vec1444 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1440

vector.body1440:                                  ; preds = %vector.body1440, %vector.ph1442
  %index1445 = phi i64 [ 0, %vector.ph1442 ], [ %index.next1446, %vector.body1440 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i52, i64 %index1445
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1449 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1449, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1446 = add i64 %index1445, 4
  %57 = icmp eq i64 %index.next1446, %n.vec1444
  br i1 %57, label %middle.block1438, label %vector.body1440, !llvm.loop !56

middle.block1438:                                 ; preds = %vector.body1440
  %cmp.n1448 = icmp eq i64 %indvars.iv21.i52, %n.vec1444
  br i1 %cmp.n1448, label %for.inc6.i63, label %for.body3.i60.preheader1609

for.body3.i60.preheader1609:                      ; preds = %for.body3.i60.preheader, %middle.block1438
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1444, %middle.block1438 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1609, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1609 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !57

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1438, %for.cond1.preheader.i54
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
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1523 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1523, label %for.body3.i99.preheader1605, label %vector.ph1524

vector.ph1524:                                    ; preds = %for.body3.i99.preheader
  %n.vec1526 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1522

vector.body1522:                                  ; preds = %vector.body1522, %vector.ph1524
  %index1527 = phi i64 [ 0, %vector.ph1524 ], [ %index.next1528, %vector.body1522 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i91, i64 %index1527
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1531 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1531, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1528 = add i64 %index1527, 4
  %68 = icmp eq i64 %index.next1528, %n.vec1526
  br i1 %68, label %middle.block1520, label %vector.body1522, !llvm.loop !58

middle.block1520:                                 ; preds = %vector.body1522
  %cmp.n1530 = icmp eq i64 %indvars.iv21.i91, %n.vec1526
  br i1 %cmp.n1530, label %for.inc6.i102, label %for.body3.i99.preheader1605

for.body3.i99.preheader1605:                      ; preds = %for.body3.i99.preheader, %middle.block1520
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1526, %middle.block1520 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1605, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1605 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !59

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1520, %for.cond1.preheader.i93
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #6
  %malloccall136 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit230.2
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1535 = phi i64 [ %indvar.next1536, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1535, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1537 = icmp ult i64 %88, 4
  br i1 %min.iters.check1537, label %polly.loop_header192.preheader, label %vector.ph1538

vector.ph1538:                                    ; preds = %polly.loop_header
  %n.vec1540 = and i64 %88, -4
  br label %vector.body1534

vector.body1534:                                  ; preds = %vector.body1534, %vector.ph1538
  %index1541 = phi i64 [ 0, %vector.ph1538 ], [ %index.next1542, %vector.body1534 ]
  %90 = shl nuw nsw i64 %index1541, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1545 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !64, !noalias !66
  %93 = fmul fast <4 x double> %wide.load1545, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !64, !noalias !66
  %index.next1542 = add i64 %index1541, 4
  %95 = icmp eq i64 %index.next1542, %n.vec1540
  br i1 %95, label %middle.block1532, label %vector.body1534, !llvm.loop !71

middle.block1532:                                 ; preds = %vector.body1534
  %cmp.n1544 = icmp eq i64 %88, %n.vec1540
  br i1 %cmp.n1544, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1532
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1540, %middle.block1532 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1532
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond936.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1536 = add i64 %indvar1535, 1
  br i1 %exitcond936.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond935.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond935.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !72

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 80
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond934.not = icmp eq i64 %polly.indvar_next204, 60
  br i1 %exitcond934.not, label %polly.loop_header216, label %polly.loop_header200

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
  %exitcond933.not = icmp eq i64 %polly.indvar_next210, 80
  br i1 %exitcond933.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit230.2
  %polly.loop_cond221 = phi i1 [ false, %polly.loop_exit230.2 ], [ true, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ 1, %polly.loop_exit230.2 ], [ 0, %polly.loop_exit208 ]
  %97 = mul nuw nsw i64 %polly.indvar219, -32
  %98 = icmp slt i64 %97, -28
  %99 = select i1 %98, i64 %97, i64 -28
  %100 = shl nuw nsw i64 %polly.indvar219, 5
  %101 = add nsw i64 %99, 60
  br label %polly.loop_header228

polly.loop_header228:                             ; preds = %polly.loop_exit259, %polly.loop_header216
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit259 ], [ 0, %polly.loop_header216 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit259 ], [ 0, %polly.loop_header216 ]
  %smin1586 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 31)
  %102 = add nuw nsw i64 %smin1586, 1
  %smin926 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 31)
  %.not = icmp ult i64 %polly.indvar231, 32
  %polly.access.mul.call1251 = mul nuw nsw i64 %polly.indvar231, 60
  br i1 %.not, label %polly.loop_header234.us, label %polly.loop_header234

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.merge.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.merge.us ], [ 0, %polly.loop_header228 ]
  %103 = add nuw nsw i64 %polly.indvar237.us, %100
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 80
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header234.us
  %polly.indvar243.us = phi i64 [ 0, %polly.loop_header234.us ], [ %polly.indvar_next244.us, %polly.loop_header240.us ]
  %polly.access.mul.call1247.us = mul nuw nsw i64 %polly.indvar243.us, 60
  %polly.access.add.call1248.us = add nuw nsw i64 %polly.access.mul.call1247.us, %103
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond924.not = icmp eq i64 %polly.indvar243.us, %smin926
  br i1 %exitcond924.not, label %polly.merge.us, label %polly.loop_header240.us

polly.merge.us:                                   ; preds = %polly.loop_header240.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond925.not = icmp eq i64 %polly.indvar_next238.us, %101
  br i1 %exitcond925.not, label %polly.loop_exit236, label %polly.loop_header234.us

polly.loop_exit236:                               ; preds = %polly.then, %polly.merge.us
  %104 = mul nuw nsw i64 %polly.indvar231, 640
  %scevgep285 = getelementptr i8, i8* %call, i64 %104
  br label %polly.loop_header257

polly.loop_exit259:                               ; preds = %polly.loop_exit265
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond931.not = icmp eq i64 %indvars.iv.next, 80
  br i1 %exitcond931.not, label %polly.loop_header228.1, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header228, %polly.then
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.then ], [ 0, %polly.loop_header228 ]
  %105 = add nuw nsw i64 %polly.indvar237, %100
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar237, 80
  br label %polly.loop_header240

polly.loop_header240:                             ; preds = %polly.loop_header240, %polly.loop_header234
  %polly.indvar243 = phi i64 [ 0, %polly.loop_header234 ], [ %polly.indvar_next244, %polly.loop_header240 ]
  %polly.access.mul.call1247 = mul nuw nsw i64 %polly.indvar243, 60
  %polly.access.add.call1248 = add nuw nsw i64 %polly.access.mul.call1247, %105
  %polly.access.call1249 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1248
  %polly.access.call1249.load = load double, double* %polly.access.call1249, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1 = add nuw nsw i64 %polly.indvar243, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1
  store double %polly.access.call1249.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.indvar_next244 = add nuw nsw i64 %polly.indvar243, 1
  %exitcond.not = icmp eq i64 %polly.indvar243, %smin926
  br i1 %exitcond.not, label %polly.then, label %polly.loop_header240

polly.then:                                       ; preds = %polly.loop_header240
  %polly.access.add.call1252 = add nuw nsw i64 %105, %polly.access.mul.call1251
  %polly.access.call1253 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1252
  %polly.access.call1253.load = load double, double* %polly.access.call1253, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1255 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1, %polly.indvar231
  %polly.access.Packed_MemRef_call1256 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255
  store double %polly.access.call1253.load, double* %polly.access.Packed_MemRef_call1256, align 8
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond922.not = icmp eq i64 %polly.indvar_next238, %101
  br i1 %exitcond922.not, label %polly.loop_exit236, label %polly.loop_header234

polly.loop_header257:                             ; preds = %polly.loop_exit265, %polly.loop_exit236
  %polly.indvar260 = phi i64 [ 0, %polly.loop_exit236 ], [ %polly.indvar_next261, %polly.loop_exit265 ]
  %polly.access.mul.Packed_MemRef_call1269 = mul nuw nsw i64 %polly.indvar260, 80
  %106 = add nuw nsw i64 %polly.indvar260, %100
  %polly.access.mul.Packed_MemRef_call2273 = mul nuw nsw i64 %106, 80
  %polly.access.add.Packed_MemRef_call2274 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273, %polly.indvar231
  %polly.access.Packed_MemRef_call2275 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2274
  %_p_scalar_276 = load double, double* %polly.access.Packed_MemRef_call2275, align 8
  %polly.access.add.Packed_MemRef_call1282 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1269, %polly.indvar231
  %polly.access.Packed_MemRef_call1283 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282
  %_p_scalar_284 = load double, double* %polly.access.Packed_MemRef_call1283, align 8
  %min.iters.check1587 = icmp ult i64 %smin1586, 3
  br i1 %min.iters.check1587, label %polly.loop_header263.preheader, label %vector.ph1588

vector.ph1588:                                    ; preds = %polly.loop_header257
  %n.vec1590 = and i64 %102, 60
  %broadcast.splatinsert1596 = insertelement <4 x double> poison, double %_p_scalar_276, i32 0
  %broadcast.splat1597 = shufflevector <4 x double> %broadcast.splatinsert1596, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1599 = insertelement <4 x double> poison, double %_p_scalar_284, i32 0
  %broadcast.splat1600 = shufflevector <4 x double> %broadcast.splatinsert1599, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1585

vector.body1585:                                  ; preds = %vector.body1585, %vector.ph1588
  %index1591 = phi i64 [ 0, %vector.ph1588 ], [ %index.next1592, %vector.body1585 ]
  %107 = add nuw nsw i64 %index1591, %polly.access.mul.Packed_MemRef_call1269
  %108 = getelementptr double, double* %Packed_MemRef_call1, i64 %107
  %109 = bitcast double* %108 to <4 x double>*
  %wide.load1595 = load <4 x double>, <4 x double>* %109, align 8
  %110 = fmul fast <4 x double> %broadcast.splat1597, %wide.load1595
  %111 = add nuw nsw i64 %index1591, %polly.access.mul.Packed_MemRef_call2273
  %112 = getelementptr double, double* %Packed_MemRef_call2, i64 %111
  %113 = bitcast double* %112 to <4 x double>*
  %wide.load1598 = load <4 x double>, <4 x double>* %113, align 8
  %114 = fmul fast <4 x double> %broadcast.splat1600, %wide.load1598
  %115 = shl i64 %index1591, 3
  %116 = getelementptr i8, i8* %scevgep285, i64 %115
  %117 = bitcast i8* %116 to <4 x double>*
  %wide.load1601 = load <4 x double>, <4 x double>* %117, align 8, !alias.scope !64, !noalias !66
  %118 = fadd fast <4 x double> %114, %110
  %119 = fmul fast <4 x double> %118, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %120 = fadd fast <4 x double> %119, %wide.load1601
  %121 = bitcast i8* %116 to <4 x double>*
  store <4 x double> %120, <4 x double>* %121, align 8, !alias.scope !64, !noalias !66
  %index.next1592 = add i64 %index1591, 4
  %122 = icmp eq i64 %index.next1592, %n.vec1590
  br i1 %122, label %middle.block1583, label %vector.body1585, !llvm.loop !76

middle.block1583:                                 ; preds = %vector.body1585
  %cmp.n1594 = icmp eq i64 %102, %n.vec1590
  br i1 %cmp.n1594, label %polly.loop_exit265, label %polly.loop_header263.preheader

polly.loop_header263.preheader:                   ; preds = %polly.loop_header257, %middle.block1583
  %polly.indvar266.ph = phi i64 [ 0, %polly.loop_header257 ], [ %n.vec1590, %middle.block1583 ]
  br label %polly.loop_header263

polly.loop_exit265:                               ; preds = %polly.loop_header263, %middle.block1583
  %polly.indvar_next261 = add nuw nsw i64 %polly.indvar260, 1
  %exitcond928.not = icmp eq i64 %polly.indvar_next261, %101
  br i1 %exitcond928.not, label %polly.loop_exit259, label %polly.loop_header257

polly.loop_header263:                             ; preds = %polly.loop_header263.preheader, %polly.loop_header263
  %polly.indvar266 = phi i64 [ %polly.indvar_next267, %polly.loop_header263 ], [ %polly.indvar266.ph, %polly.loop_header263.preheader ]
  %polly.access.add.Packed_MemRef_call1270 = add nuw nsw i64 %polly.indvar266, %polly.access.mul.Packed_MemRef_call1269
  %polly.access.Packed_MemRef_call1271 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1270
  %_p_scalar_272 = load double, double* %polly.access.Packed_MemRef_call1271, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_276, %_p_scalar_272
  %polly.access.add.Packed_MemRef_call2278 = add nuw nsw i64 %polly.indvar266, %polly.access.mul.Packed_MemRef_call2273
  %polly.access.Packed_MemRef_call2279 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2278
  %_p_scalar_280 = load double, double* %polly.access.Packed_MemRef_call2279, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_284, %_p_scalar_280
  %123 = shl i64 %polly.indvar266, 3
  %scevgep286 = getelementptr i8, i8* %scevgep285, i64 %123
  %scevgep286287 = bitcast i8* %scevgep286 to double*
  %_p_scalar_288 = load double, double* %scevgep286287, align 8, !alias.scope !64, !noalias !66
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_288
  store double %p_add42.i118, double* %scevgep286287, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next267 = add nuw nsw i64 %polly.indvar266, 1
  %exitcond927.not = icmp eq i64 %polly.indvar266, %smin926
  br i1 %exitcond927.not, label %polly.loop_exit265, label %polly.loop_header263, !llvm.loop !77

polly.start291:                                   ; preds = %kernel_syr2k.exit
  %malloccall293 = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #6
  %malloccall295 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header379

polly.exiting292:                                 ; preds = %polly.loop_exit425.2
  tail call void @free(i8* nonnull %malloccall293)
  tail call void @free(i8* nonnull %malloccall295)
  br label %kernel_syr2k.exit90

polly.loop_header379:                             ; preds = %polly.loop_exit387, %polly.start291
  %indvar1453 = phi i64 [ %indvar.next1454, %polly.loop_exit387 ], [ 0, %polly.start291 ]
  %polly.indvar382 = phi i64 [ %polly.indvar_next383, %polly.loop_exit387 ], [ 1, %polly.start291 ]
  %124 = add i64 %indvar1453, 1
  %125 = mul nuw nsw i64 %polly.indvar382, 640
  %scevgep391 = getelementptr i8, i8* %call, i64 %125
  %min.iters.check1455 = icmp ult i64 %124, 4
  br i1 %min.iters.check1455, label %polly.loop_header385.preheader, label %vector.ph1456

vector.ph1456:                                    ; preds = %polly.loop_header379
  %n.vec1458 = and i64 %124, -4
  br label %vector.body1452

vector.body1452:                                  ; preds = %vector.body1452, %vector.ph1456
  %index1459 = phi i64 [ 0, %vector.ph1456 ], [ %index.next1460, %vector.body1452 ]
  %126 = shl nuw nsw i64 %index1459, 3
  %127 = getelementptr i8, i8* %scevgep391, i64 %126
  %128 = bitcast i8* %127 to <4 x double>*
  %wide.load1463 = load <4 x double>, <4 x double>* %128, align 8, !alias.scope !78, !noalias !80
  %129 = fmul fast <4 x double> %wide.load1463, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %130 = bitcast i8* %127 to <4 x double>*
  store <4 x double> %129, <4 x double>* %130, align 8, !alias.scope !78, !noalias !80
  %index.next1460 = add i64 %index1459, 4
  %131 = icmp eq i64 %index.next1460, %n.vec1458
  br i1 %131, label %middle.block1450, label %vector.body1452, !llvm.loop !85

middle.block1450:                                 ; preds = %vector.body1452
  %cmp.n1462 = icmp eq i64 %124, %n.vec1458
  br i1 %cmp.n1462, label %polly.loop_exit387, label %polly.loop_header385.preheader

polly.loop_header385.preheader:                   ; preds = %polly.loop_header379, %middle.block1450
  %polly.indvar388.ph = phi i64 [ 0, %polly.loop_header379 ], [ %n.vec1458, %middle.block1450 ]
  br label %polly.loop_header385

polly.loop_exit387:                               ; preds = %polly.loop_header385, %middle.block1450
  %polly.indvar_next383 = add nuw nsw i64 %polly.indvar382, 1
  %exitcond955.not = icmp eq i64 %polly.indvar_next383, 80
  %indvar.next1454 = add i64 %indvar1453, 1
  br i1 %exitcond955.not, label %polly.loop_header395.preheader, label %polly.loop_header379

polly.loop_header395.preheader:                   ; preds = %polly.loop_exit387
  %Packed_MemRef_call1294 = bitcast i8* %malloccall293 to double*
  %Packed_MemRef_call2296 = bitcast i8* %malloccall295 to double*
  br label %polly.loop_header395

polly.loop_header385:                             ; preds = %polly.loop_header385.preheader, %polly.loop_header385
  %polly.indvar388 = phi i64 [ %polly.indvar_next389, %polly.loop_header385 ], [ %polly.indvar388.ph, %polly.loop_header385.preheader ]
  %132 = shl nuw nsw i64 %polly.indvar388, 3
  %scevgep392 = getelementptr i8, i8* %scevgep391, i64 %132
  %scevgep392393 = bitcast i8* %scevgep392 to double*
  %_p_scalar_394 = load double, double* %scevgep392393, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_394, 1.200000e+00
  store double %p_mul.i57, double* %scevgep392393, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next389 = add nuw nsw i64 %polly.indvar388, 1
  %exitcond954.not = icmp eq i64 %polly.indvar_next389, %polly.indvar382
  br i1 %exitcond954.not, label %polly.loop_exit387, label %polly.loop_header385, !llvm.loop !86

polly.loop_header395:                             ; preds = %polly.loop_header395.preheader, %polly.loop_exit403
  %polly.indvar398 = phi i64 [ %polly.indvar_next399, %polly.loop_exit403 ], [ 0, %polly.loop_header395.preheader ]
  %polly.access.mul.Packed_MemRef_call2296 = mul nuw nsw i64 %polly.indvar398, 80
  br label %polly.loop_header401

polly.loop_exit403:                               ; preds = %polly.loop_header401
  %polly.indvar_next399 = add nuw nsw i64 %polly.indvar398, 1
  %exitcond953.not = icmp eq i64 %polly.indvar_next399, 60
  br i1 %exitcond953.not, label %polly.loop_header411, label %polly.loop_header395

polly.loop_header401:                             ; preds = %polly.loop_header401, %polly.loop_header395
  %polly.indvar404 = phi i64 [ 0, %polly.loop_header395 ], [ %polly.indvar_next405, %polly.loop_header401 ]
  %polly.access.mul.call2408 = mul nuw nsw i64 %polly.indvar404, 60
  %polly.access.add.call2409 = add nuw nsw i64 %polly.access.mul.call2408, %polly.indvar398
  %polly.access.call2410 = getelementptr double, double* %polly.access.cast.call2701, i64 %polly.access.add.call2409
  %polly.access.call2410.load = load double, double* %polly.access.call2410, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call2296 = add nuw nsw i64 %polly.indvar404, %polly.access.mul.Packed_MemRef_call2296
  %polly.access.Packed_MemRef_call2296 = getelementptr double, double* %Packed_MemRef_call2296, i64 %polly.access.add.Packed_MemRef_call2296
  store double %polly.access.call2410.load, double* %polly.access.Packed_MemRef_call2296, align 8
  %polly.indvar_next405 = add nuw nsw i64 %polly.indvar404, 1
  %exitcond952.not = icmp eq i64 %polly.indvar_next405, 80
  br i1 %exitcond952.not, label %polly.loop_exit403, label %polly.loop_header401

polly.loop_header411:                             ; preds = %polly.loop_exit403, %polly.loop_exit425.2
  %polly.loop_cond416 = phi i1 [ false, %polly.loop_exit425.2 ], [ true, %polly.loop_exit403 ]
  %polly.indvar414 = phi i64 [ 1, %polly.loop_exit425.2 ], [ 0, %polly.loop_exit403 ]
  %133 = mul nuw nsw i64 %polly.indvar414, -32
  %134 = icmp slt i64 %133, -28
  %135 = select i1 %134, i64 %133, i64 -28
  %136 = shl nuw nsw i64 %polly.indvar414, 5
  %137 = add nsw i64 %135, 60
  br label %polly.loop_header423

polly.loop_header423:                             ; preds = %polly.loop_exit458, %polly.loop_header411
  %indvars.iv937 = phi i64 [ %indvars.iv.next938, %polly.loop_exit458 ], [ 0, %polly.loop_header411 ]
  %polly.indvar426 = phi i64 [ %polly.indvar_next427, %polly.loop_exit458 ], [ 0, %polly.loop_header411 ]
  %smin1504 = call i64 @llvm.smin.i64(i64 %indvars.iv937, i64 31)
  %138 = add nuw nsw i64 %smin1504, 1
  %smin945 = call i64 @llvm.smin.i64(i64 %indvars.iv937, i64 31)
  %.not893 = icmp ult i64 %polly.indvar426, 32
  %polly.access.mul.call1450 = mul nuw nsw i64 %polly.indvar426, 60
  br i1 %.not893, label %polly.loop_header429.us, label %polly.loop_header429

polly.loop_header429.us:                          ; preds = %polly.loop_header423, %polly.merge446.us
  %polly.indvar432.us = phi i64 [ %polly.indvar_next433.us, %polly.merge446.us ], [ 0, %polly.loop_header423 ]
  %139 = add nuw nsw i64 %polly.indvar432.us, %136
  %polly.access.mul.Packed_MemRef_call1294.us = mul nuw nsw i64 %polly.indvar432.us, 80
  br label %polly.loop_header435.us

polly.loop_header435.us:                          ; preds = %polly.loop_header435.us, %polly.loop_header429.us
  %polly.indvar438.us = phi i64 [ 0, %polly.loop_header429.us ], [ %polly.indvar_next439.us, %polly.loop_header435.us ]
  %polly.access.mul.call1442.us = mul nuw nsw i64 %polly.indvar438.us, 60
  %polly.access.add.call1443.us = add nuw nsw i64 %polly.access.mul.call1442.us, %139
  %polly.access.call1444.us = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1443.us
  %polly.access.call1444.load.us = load double, double* %polly.access.call1444.us, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1294.us = add nuw nsw i64 %polly.indvar438.us, %polly.access.mul.Packed_MemRef_call1294.us
  %polly.access.Packed_MemRef_call1294.us = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294.us
  store double %polly.access.call1444.load.us, double* %polly.access.Packed_MemRef_call1294.us, align 8
  %polly.indvar_next439.us = add nuw nsw i64 %polly.indvar438.us, 1
  %exitcond943.not = icmp eq i64 %polly.indvar438.us, %smin945
  br i1 %exitcond943.not, label %polly.merge446.us, label %polly.loop_header435.us

polly.merge446.us:                                ; preds = %polly.loop_header435.us
  %polly.indvar_next433.us = add nuw nsw i64 %polly.indvar432.us, 1
  %exitcond944.not = icmp eq i64 %polly.indvar_next433.us, %137
  br i1 %exitcond944.not, label %polly.loop_exit431, label %polly.loop_header429.us

polly.loop_exit431:                               ; preds = %polly.then447, %polly.merge446.us
  %140 = mul nuw nsw i64 %polly.indvar426, 640
  %scevgep484 = getelementptr i8, i8* %call, i64 %140
  br label %polly.loop_header456

polly.loop_exit458:                               ; preds = %polly.loop_exit464
  %polly.indvar_next427 = add nuw nsw i64 %polly.indvar426, 1
  %indvars.iv.next938 = add nuw nsw i64 %indvars.iv937, 1
  %exitcond950.not = icmp eq i64 %indvars.iv.next938, 80
  br i1 %exitcond950.not, label %polly.loop_header423.1, label %polly.loop_header423

polly.loop_header429:                             ; preds = %polly.loop_header423, %polly.then447
  %polly.indvar432 = phi i64 [ %polly.indvar_next433, %polly.then447 ], [ 0, %polly.loop_header423 ]
  %141 = add nuw nsw i64 %polly.indvar432, %136
  %polly.access.mul.Packed_MemRef_call1294 = mul nuw nsw i64 %polly.indvar432, 80
  br label %polly.loop_header435

polly.loop_header435:                             ; preds = %polly.loop_header435, %polly.loop_header429
  %polly.indvar438 = phi i64 [ 0, %polly.loop_header429 ], [ %polly.indvar_next439, %polly.loop_header435 ]
  %polly.access.mul.call1442 = mul nuw nsw i64 %polly.indvar438, 60
  %polly.access.add.call1443 = add nuw nsw i64 %polly.access.mul.call1442, %141
  %polly.access.call1444 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1443
  %polly.access.call1444.load = load double, double* %polly.access.call1444, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1294 = add nuw nsw i64 %polly.indvar438, %polly.access.mul.Packed_MemRef_call1294
  %polly.access.Packed_MemRef_call1294 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294
  store double %polly.access.call1444.load, double* %polly.access.Packed_MemRef_call1294, align 8
  %polly.indvar_next439 = add nuw nsw i64 %polly.indvar438, 1
  %exitcond940.not = icmp eq i64 %polly.indvar438, %smin945
  br i1 %exitcond940.not, label %polly.then447, label %polly.loop_header435

polly.then447:                                    ; preds = %polly.loop_header435
  %polly.access.add.call1451 = add nuw nsw i64 %141, %polly.access.mul.call1450
  %polly.access.call1452 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1451
  %polly.access.call1452.load = load double, double* %polly.access.call1452, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1294454 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1294, %polly.indvar426
  %polly.access.Packed_MemRef_call1294455 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294454
  store double %polly.access.call1452.load, double* %polly.access.Packed_MemRef_call1294455, align 8
  %polly.indvar_next433 = add nuw nsw i64 %polly.indvar432, 1
  %exitcond941.not = icmp eq i64 %polly.indvar_next433, %137
  br i1 %exitcond941.not, label %polly.loop_exit431, label %polly.loop_header429

polly.loop_header456:                             ; preds = %polly.loop_exit464, %polly.loop_exit431
  %polly.indvar459 = phi i64 [ 0, %polly.loop_exit431 ], [ %polly.indvar_next460, %polly.loop_exit464 ]
  %polly.access.mul.Packed_MemRef_call1294468 = mul nuw nsw i64 %polly.indvar459, 80
  %142 = add nuw nsw i64 %polly.indvar459, %136
  %polly.access.mul.Packed_MemRef_call2296472 = mul nuw nsw i64 %142, 80
  %polly.access.add.Packed_MemRef_call2296473 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2296472, %polly.indvar426
  %polly.access.Packed_MemRef_call2296474 = getelementptr double, double* %Packed_MemRef_call2296, i64 %polly.access.add.Packed_MemRef_call2296473
  %_p_scalar_475 = load double, double* %polly.access.Packed_MemRef_call2296474, align 8
  %polly.access.add.Packed_MemRef_call1294481 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1294468, %polly.indvar426
  %polly.access.Packed_MemRef_call1294482 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294481
  %_p_scalar_483 = load double, double* %polly.access.Packed_MemRef_call1294482, align 8
  %min.iters.check1505 = icmp ult i64 %smin1504, 3
  br i1 %min.iters.check1505, label %polly.loop_header462.preheader, label %vector.ph1506

vector.ph1506:                                    ; preds = %polly.loop_header456
  %n.vec1508 = and i64 %138, 60
  %broadcast.splatinsert1514 = insertelement <4 x double> poison, double %_p_scalar_475, i32 0
  %broadcast.splat1515 = shufflevector <4 x double> %broadcast.splatinsert1514, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1517 = insertelement <4 x double> poison, double %_p_scalar_483, i32 0
  %broadcast.splat1518 = shufflevector <4 x double> %broadcast.splatinsert1517, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1503

vector.body1503:                                  ; preds = %vector.body1503, %vector.ph1506
  %index1509 = phi i64 [ 0, %vector.ph1506 ], [ %index.next1510, %vector.body1503 ]
  %143 = add nuw nsw i64 %index1509, %polly.access.mul.Packed_MemRef_call1294468
  %144 = getelementptr double, double* %Packed_MemRef_call1294, i64 %143
  %145 = bitcast double* %144 to <4 x double>*
  %wide.load1513 = load <4 x double>, <4 x double>* %145, align 8
  %146 = fmul fast <4 x double> %broadcast.splat1515, %wide.load1513
  %147 = add nuw nsw i64 %index1509, %polly.access.mul.Packed_MemRef_call2296472
  %148 = getelementptr double, double* %Packed_MemRef_call2296, i64 %147
  %149 = bitcast double* %148 to <4 x double>*
  %wide.load1516 = load <4 x double>, <4 x double>* %149, align 8
  %150 = fmul fast <4 x double> %broadcast.splat1518, %wide.load1516
  %151 = shl i64 %index1509, 3
  %152 = getelementptr i8, i8* %scevgep484, i64 %151
  %153 = bitcast i8* %152 to <4 x double>*
  %wide.load1519 = load <4 x double>, <4 x double>* %153, align 8, !alias.scope !78, !noalias !80
  %154 = fadd fast <4 x double> %150, %146
  %155 = fmul fast <4 x double> %154, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %156 = fadd fast <4 x double> %155, %wide.load1519
  %157 = bitcast i8* %152 to <4 x double>*
  store <4 x double> %156, <4 x double>* %157, align 8, !alias.scope !78, !noalias !80
  %index.next1510 = add i64 %index1509, 4
  %158 = icmp eq i64 %index.next1510, %n.vec1508
  br i1 %158, label %middle.block1501, label %vector.body1503, !llvm.loop !89

middle.block1501:                                 ; preds = %vector.body1503
  %cmp.n1512 = icmp eq i64 %138, %n.vec1508
  br i1 %cmp.n1512, label %polly.loop_exit464, label %polly.loop_header462.preheader

polly.loop_header462.preheader:                   ; preds = %polly.loop_header456, %middle.block1501
  %polly.indvar465.ph = phi i64 [ 0, %polly.loop_header456 ], [ %n.vec1508, %middle.block1501 ]
  br label %polly.loop_header462

polly.loop_exit464:                               ; preds = %polly.loop_header462, %middle.block1501
  %polly.indvar_next460 = add nuw nsw i64 %polly.indvar459, 1
  %exitcond947.not = icmp eq i64 %polly.indvar_next460, %137
  br i1 %exitcond947.not, label %polly.loop_exit458, label %polly.loop_header456

polly.loop_header462:                             ; preds = %polly.loop_header462.preheader, %polly.loop_header462
  %polly.indvar465 = phi i64 [ %polly.indvar_next466, %polly.loop_header462 ], [ %polly.indvar465.ph, %polly.loop_header462.preheader ]
  %polly.access.add.Packed_MemRef_call1294469 = add nuw nsw i64 %polly.indvar465, %polly.access.mul.Packed_MemRef_call1294468
  %polly.access.Packed_MemRef_call1294470 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294469
  %_p_scalar_471 = load double, double* %polly.access.Packed_MemRef_call1294470, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_475, %_p_scalar_471
  %polly.access.add.Packed_MemRef_call2296477 = add nuw nsw i64 %polly.indvar465, %polly.access.mul.Packed_MemRef_call2296472
  %polly.access.Packed_MemRef_call2296478 = getelementptr double, double* %Packed_MemRef_call2296, i64 %polly.access.add.Packed_MemRef_call2296477
  %_p_scalar_479 = load double, double* %polly.access.Packed_MemRef_call2296478, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_483, %_p_scalar_479
  %159 = shl i64 %polly.indvar465, 3
  %scevgep485 = getelementptr i8, i8* %scevgep484, i64 %159
  %scevgep485486 = bitcast i8* %scevgep485 to double*
  %_p_scalar_487 = load double, double* %scevgep485486, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_487
  store double %p_add42.i79, double* %scevgep485486, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next466 = add nuw nsw i64 %polly.indvar465, 1
  %exitcond946.not = icmp eq i64 %polly.indvar465, %smin945
  br i1 %exitcond946.not, label %polly.loop_exit464, label %polly.loop_header462, !llvm.loop !90

polly.start490:                                   ; preds = %init_array.exit
  %malloccall492 = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #6
  %malloccall494 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header578

polly.exiting491:                                 ; preds = %polly.loop_exit624.2
  tail call void @free(i8* nonnull %malloccall492)
  tail call void @free(i8* nonnull %malloccall494)
  br label %kernel_syr2k.exit

polly.loop_header578:                             ; preds = %polly.loop_exit586, %polly.start490
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit586 ], [ 0, %polly.start490 ]
  %polly.indvar581 = phi i64 [ %polly.indvar_next582, %polly.loop_exit586 ], [ 1, %polly.start490 ]
  %160 = add i64 %indvar, 1
  %161 = mul nuw nsw i64 %polly.indvar581, 640
  %scevgep590 = getelementptr i8, i8* %call, i64 %161
  %min.iters.check1374 = icmp ult i64 %160, 4
  br i1 %min.iters.check1374, label %polly.loop_header584.preheader, label %vector.ph1375

vector.ph1375:                                    ; preds = %polly.loop_header578
  %n.vec1377 = and i64 %160, -4
  br label %vector.body1373

vector.body1373:                                  ; preds = %vector.body1373, %vector.ph1375
  %index1378 = phi i64 [ 0, %vector.ph1375 ], [ %index.next1379, %vector.body1373 ]
  %162 = shl nuw nsw i64 %index1378, 3
  %163 = getelementptr i8, i8* %scevgep590, i64 %162
  %164 = bitcast i8* %163 to <4 x double>*
  %wide.load1382 = load <4 x double>, <4 x double>* %164, align 8, !alias.scope !91, !noalias !93
  %165 = fmul fast <4 x double> %wide.load1382, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %166 = bitcast i8* %163 to <4 x double>*
  store <4 x double> %165, <4 x double>* %166, align 8, !alias.scope !91, !noalias !93
  %index.next1379 = add i64 %index1378, 4
  %167 = icmp eq i64 %index.next1379, %n.vec1377
  br i1 %167, label %middle.block1371, label %vector.body1373, !llvm.loop !98

middle.block1371:                                 ; preds = %vector.body1373
  %cmp.n1381 = icmp eq i64 %160, %n.vec1377
  br i1 %cmp.n1381, label %polly.loop_exit586, label %polly.loop_header584.preheader

polly.loop_header584.preheader:                   ; preds = %polly.loop_header578, %middle.block1371
  %polly.indvar587.ph = phi i64 [ 0, %polly.loop_header578 ], [ %n.vec1377, %middle.block1371 ]
  br label %polly.loop_header584

polly.loop_exit586:                               ; preds = %polly.loop_header584, %middle.block1371
  %polly.indvar_next582 = add nuw nsw i64 %polly.indvar581, 1
  %exitcond974.not = icmp eq i64 %polly.indvar_next582, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond974.not, label %polly.loop_header594.preheader, label %polly.loop_header578

polly.loop_header594.preheader:                   ; preds = %polly.loop_exit586
  %Packed_MemRef_call1493 = bitcast i8* %malloccall492 to double*
  %Packed_MemRef_call2495 = bitcast i8* %malloccall494 to double*
  br label %polly.loop_header594

polly.loop_header584:                             ; preds = %polly.loop_header584.preheader, %polly.loop_header584
  %polly.indvar587 = phi i64 [ %polly.indvar_next588, %polly.loop_header584 ], [ %polly.indvar587.ph, %polly.loop_header584.preheader ]
  %168 = shl nuw nsw i64 %polly.indvar587, 3
  %scevgep591 = getelementptr i8, i8* %scevgep590, i64 %168
  %scevgep591592 = bitcast i8* %scevgep591 to double*
  %_p_scalar_593 = load double, double* %scevgep591592, align 8, !alias.scope !91, !noalias !93
  %p_mul.i = fmul fast double %_p_scalar_593, 1.200000e+00
  store double %p_mul.i, double* %scevgep591592, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next588 = add nuw nsw i64 %polly.indvar587, 1
  %exitcond973.not = icmp eq i64 %polly.indvar_next588, %polly.indvar581
  br i1 %exitcond973.not, label %polly.loop_exit586, label %polly.loop_header584, !llvm.loop !99

polly.loop_header594:                             ; preds = %polly.loop_header594.preheader, %polly.loop_exit602
  %polly.indvar597 = phi i64 [ %polly.indvar_next598, %polly.loop_exit602 ], [ 0, %polly.loop_header594.preheader ]
  %polly.access.mul.Packed_MemRef_call2495 = mul nuw nsw i64 %polly.indvar597, 80
  br label %polly.loop_header600

polly.loop_exit602:                               ; preds = %polly.loop_header600
  %polly.indvar_next598 = add nuw nsw i64 %polly.indvar597, 1
  %exitcond972.not = icmp eq i64 %polly.indvar_next598, 60
  br i1 %exitcond972.not, label %polly.loop_header610, label %polly.loop_header594

polly.loop_header600:                             ; preds = %polly.loop_header600, %polly.loop_header594
  %polly.indvar603 = phi i64 [ 0, %polly.loop_header594 ], [ %polly.indvar_next604, %polly.loop_header600 ]
  %polly.access.mul.call2607 = mul nuw nsw i64 %polly.indvar603, 60
  %polly.access.add.call2608 = add nuw nsw i64 %polly.access.mul.call2607, %polly.indvar597
  %polly.access.call2609 = getelementptr double, double* %polly.access.cast.call2701, i64 %polly.access.add.call2608
  %polly.access.call2609.load = load double, double* %polly.access.call2609, align 8, !alias.scope !95, !noalias !100
  %polly.access.add.Packed_MemRef_call2495 = add nuw nsw i64 %polly.indvar603, %polly.access.mul.Packed_MemRef_call2495
  %polly.access.Packed_MemRef_call2495 = getelementptr double, double* %Packed_MemRef_call2495, i64 %polly.access.add.Packed_MemRef_call2495
  store double %polly.access.call2609.load, double* %polly.access.Packed_MemRef_call2495, align 8
  %polly.indvar_next604 = add nuw nsw i64 %polly.indvar603, 1
  %exitcond971.not = icmp eq i64 %polly.indvar_next604, 80
  br i1 %exitcond971.not, label %polly.loop_exit602, label %polly.loop_header600

polly.loop_header610:                             ; preds = %polly.loop_exit602, %polly.loop_exit624.2
  %polly.loop_cond615 = phi i1 [ false, %polly.loop_exit624.2 ], [ true, %polly.loop_exit602 ]
  %polly.indvar613 = phi i64 [ 1, %polly.loop_exit624.2 ], [ 0, %polly.loop_exit602 ]
  %169 = mul nuw nsw i64 %polly.indvar613, -32
  %170 = icmp slt i64 %169, -28
  %171 = select i1 %170, i64 %169, i64 -28
  %172 = shl nuw nsw i64 %polly.indvar613, 5
  %173 = add nsw i64 %171, 60
  br label %polly.loop_header622

polly.loop_header622:                             ; preds = %polly.loop_exit657, %polly.loop_header610
  %indvars.iv956 = phi i64 [ %indvars.iv.next957, %polly.loop_exit657 ], [ 0, %polly.loop_header610 ]
  %polly.indvar625 = phi i64 [ %polly.indvar_next626, %polly.loop_exit657 ], [ 0, %polly.loop_header610 ]
  %smin1422 = call i64 @llvm.smin.i64(i64 %indvars.iv956, i64 31)
  %174 = add nuw nsw i64 %smin1422, 1
  %smin964 = call i64 @llvm.smin.i64(i64 %indvars.iv956, i64 31)
  %.not894 = icmp ult i64 %polly.indvar625, 32
  %polly.access.mul.call1649 = mul nuw nsw i64 %polly.indvar625, 60
  br i1 %.not894, label %polly.loop_header628.us, label %polly.loop_header628

polly.loop_header628.us:                          ; preds = %polly.loop_header622, %polly.merge645.us
  %polly.indvar631.us = phi i64 [ %polly.indvar_next632.us, %polly.merge645.us ], [ 0, %polly.loop_header622 ]
  %175 = add nuw nsw i64 %polly.indvar631.us, %172
  %polly.access.mul.Packed_MemRef_call1493.us = mul nuw nsw i64 %polly.indvar631.us, 80
  br label %polly.loop_header634.us

polly.loop_header634.us:                          ; preds = %polly.loop_header634.us, %polly.loop_header628.us
  %polly.indvar637.us = phi i64 [ 0, %polly.loop_header628.us ], [ %polly.indvar_next638.us, %polly.loop_header634.us ]
  %polly.access.mul.call1641.us = mul nuw nsw i64 %polly.indvar637.us, 60
  %polly.access.add.call1642.us = add nuw nsw i64 %polly.access.mul.call1641.us, %175
  %polly.access.call1643.us = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1642.us
  %polly.access.call1643.load.us = load double, double* %polly.access.call1643.us, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1493.us = add nuw nsw i64 %polly.indvar637.us, %polly.access.mul.Packed_MemRef_call1493.us
  %polly.access.Packed_MemRef_call1493.us = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493.us
  store double %polly.access.call1643.load.us, double* %polly.access.Packed_MemRef_call1493.us, align 8
  %polly.indvar_next638.us = add nuw nsw i64 %polly.indvar637.us, 1
  %exitcond962.not = icmp eq i64 %polly.indvar637.us, %smin964
  br i1 %exitcond962.not, label %polly.merge645.us, label %polly.loop_header634.us

polly.merge645.us:                                ; preds = %polly.loop_header634.us
  %polly.indvar_next632.us = add nuw nsw i64 %polly.indvar631.us, 1
  %exitcond963.not = icmp eq i64 %polly.indvar_next632.us, %173
  br i1 %exitcond963.not, label %polly.loop_exit630, label %polly.loop_header628.us

polly.loop_exit630:                               ; preds = %polly.then646, %polly.merge645.us
  %176 = mul nuw nsw i64 %polly.indvar625, 640
  %scevgep683 = getelementptr i8, i8* %call, i64 %176
  br label %polly.loop_header655

polly.loop_exit657:                               ; preds = %polly.loop_exit663
  %polly.indvar_next626 = add nuw nsw i64 %polly.indvar625, 1
  %indvars.iv.next957 = add nuw nsw i64 %indvars.iv956, 1
  %exitcond969.not = icmp eq i64 %indvars.iv.next957, 80
  br i1 %exitcond969.not, label %polly.loop_header622.1, label %polly.loop_header622

polly.loop_header628:                             ; preds = %polly.loop_header622, %polly.then646
  %polly.indvar631 = phi i64 [ %polly.indvar_next632, %polly.then646 ], [ 0, %polly.loop_header622 ]
  %177 = add nuw nsw i64 %polly.indvar631, %172
  %polly.access.mul.Packed_MemRef_call1493 = mul nuw nsw i64 %polly.indvar631, 80
  br label %polly.loop_header634

polly.loop_header634:                             ; preds = %polly.loop_header634, %polly.loop_header628
  %polly.indvar637 = phi i64 [ 0, %polly.loop_header628 ], [ %polly.indvar_next638, %polly.loop_header634 ]
  %polly.access.mul.call1641 = mul nuw nsw i64 %polly.indvar637, 60
  %polly.access.add.call1642 = add nuw nsw i64 %polly.access.mul.call1641, %177
  %polly.access.call1643 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1642
  %polly.access.call1643.load = load double, double* %polly.access.call1643, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1493 = add nuw nsw i64 %polly.indvar637, %polly.access.mul.Packed_MemRef_call1493
  %polly.access.Packed_MemRef_call1493 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493
  store double %polly.access.call1643.load, double* %polly.access.Packed_MemRef_call1493, align 8
  %polly.indvar_next638 = add nuw nsw i64 %polly.indvar637, 1
  %exitcond959.not = icmp eq i64 %polly.indvar637, %smin964
  br i1 %exitcond959.not, label %polly.then646, label %polly.loop_header634

polly.then646:                                    ; preds = %polly.loop_header634
  %polly.access.add.call1650 = add nuw nsw i64 %177, %polly.access.mul.call1649
  %polly.access.call1651 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1650
  %polly.access.call1651.load = load double, double* %polly.access.call1651, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1493653 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1493, %polly.indvar625
  %polly.access.Packed_MemRef_call1493654 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493653
  store double %polly.access.call1651.load, double* %polly.access.Packed_MemRef_call1493654, align 8
  %polly.indvar_next632 = add nuw nsw i64 %polly.indvar631, 1
  %exitcond960.not = icmp eq i64 %polly.indvar_next632, %173
  br i1 %exitcond960.not, label %polly.loop_exit630, label %polly.loop_header628

polly.loop_header655:                             ; preds = %polly.loop_exit663, %polly.loop_exit630
  %polly.indvar658 = phi i64 [ 0, %polly.loop_exit630 ], [ %polly.indvar_next659, %polly.loop_exit663 ]
  %polly.access.mul.Packed_MemRef_call1493667 = mul nuw nsw i64 %polly.indvar658, 80
  %178 = add nuw nsw i64 %polly.indvar658, %172
  %polly.access.mul.Packed_MemRef_call2495671 = mul nuw nsw i64 %178, 80
  %polly.access.add.Packed_MemRef_call2495672 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2495671, %polly.indvar625
  %polly.access.Packed_MemRef_call2495673 = getelementptr double, double* %Packed_MemRef_call2495, i64 %polly.access.add.Packed_MemRef_call2495672
  %_p_scalar_674 = load double, double* %polly.access.Packed_MemRef_call2495673, align 8
  %polly.access.add.Packed_MemRef_call1493680 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1493667, %polly.indvar625
  %polly.access.Packed_MemRef_call1493681 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493680
  %_p_scalar_682 = load double, double* %polly.access.Packed_MemRef_call1493681, align 8
  %min.iters.check1423 = icmp ult i64 %smin1422, 3
  br i1 %min.iters.check1423, label %polly.loop_header661.preheader, label %vector.ph1424

vector.ph1424:                                    ; preds = %polly.loop_header655
  %n.vec1426 = and i64 %174, 60
  %broadcast.splatinsert1432 = insertelement <4 x double> poison, double %_p_scalar_674, i32 0
  %broadcast.splat1433 = shufflevector <4 x double> %broadcast.splatinsert1432, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1435 = insertelement <4 x double> poison, double %_p_scalar_682, i32 0
  %broadcast.splat1436 = shufflevector <4 x double> %broadcast.splatinsert1435, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1421

vector.body1421:                                  ; preds = %vector.body1421, %vector.ph1424
  %index1427 = phi i64 [ 0, %vector.ph1424 ], [ %index.next1428, %vector.body1421 ]
  %179 = add nuw nsw i64 %index1427, %polly.access.mul.Packed_MemRef_call1493667
  %180 = getelementptr double, double* %Packed_MemRef_call1493, i64 %179
  %181 = bitcast double* %180 to <4 x double>*
  %wide.load1431 = load <4 x double>, <4 x double>* %181, align 8
  %182 = fmul fast <4 x double> %broadcast.splat1433, %wide.load1431
  %183 = add nuw nsw i64 %index1427, %polly.access.mul.Packed_MemRef_call2495671
  %184 = getelementptr double, double* %Packed_MemRef_call2495, i64 %183
  %185 = bitcast double* %184 to <4 x double>*
  %wide.load1434 = load <4 x double>, <4 x double>* %185, align 8
  %186 = fmul fast <4 x double> %broadcast.splat1436, %wide.load1434
  %187 = shl i64 %index1427, 3
  %188 = getelementptr i8, i8* %scevgep683, i64 %187
  %189 = bitcast i8* %188 to <4 x double>*
  %wide.load1437 = load <4 x double>, <4 x double>* %189, align 8, !alias.scope !91, !noalias !93
  %190 = fadd fast <4 x double> %186, %182
  %191 = fmul fast <4 x double> %190, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %192 = fadd fast <4 x double> %191, %wide.load1437
  %193 = bitcast i8* %188 to <4 x double>*
  store <4 x double> %192, <4 x double>* %193, align 8, !alias.scope !91, !noalias !93
  %index.next1428 = add i64 %index1427, 4
  %194 = icmp eq i64 %index.next1428, %n.vec1426
  br i1 %194, label %middle.block1419, label %vector.body1421, !llvm.loop !102

middle.block1419:                                 ; preds = %vector.body1421
  %cmp.n1430 = icmp eq i64 %174, %n.vec1426
  br i1 %cmp.n1430, label %polly.loop_exit663, label %polly.loop_header661.preheader

polly.loop_header661.preheader:                   ; preds = %polly.loop_header655, %middle.block1419
  %polly.indvar664.ph = phi i64 [ 0, %polly.loop_header655 ], [ %n.vec1426, %middle.block1419 ]
  br label %polly.loop_header661

polly.loop_exit663:                               ; preds = %polly.loop_header661, %middle.block1419
  %polly.indvar_next659 = add nuw nsw i64 %polly.indvar658, 1
  %exitcond966.not = icmp eq i64 %polly.indvar_next659, %173
  br i1 %exitcond966.not, label %polly.loop_exit657, label %polly.loop_header655

polly.loop_header661:                             ; preds = %polly.loop_header661.preheader, %polly.loop_header661
  %polly.indvar664 = phi i64 [ %polly.indvar_next665, %polly.loop_header661 ], [ %polly.indvar664.ph, %polly.loop_header661.preheader ]
  %polly.access.add.Packed_MemRef_call1493668 = add nuw nsw i64 %polly.indvar664, %polly.access.mul.Packed_MemRef_call1493667
  %polly.access.Packed_MemRef_call1493669 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493668
  %_p_scalar_670 = load double, double* %polly.access.Packed_MemRef_call1493669, align 8
  %p_mul27.i = fmul fast double %_p_scalar_674, %_p_scalar_670
  %polly.access.add.Packed_MemRef_call2495676 = add nuw nsw i64 %polly.indvar664, %polly.access.mul.Packed_MemRef_call2495671
  %polly.access.Packed_MemRef_call2495677 = getelementptr double, double* %Packed_MemRef_call2495, i64 %polly.access.add.Packed_MemRef_call2495676
  %_p_scalar_678 = load double, double* %polly.access.Packed_MemRef_call2495677, align 8
  %p_mul37.i = fmul fast double %_p_scalar_682, %_p_scalar_678
  %195 = shl i64 %polly.indvar664, 3
  %scevgep684 = getelementptr i8, i8* %scevgep683, i64 %195
  %scevgep684685 = bitcast i8* %scevgep684 to double*
  %_p_scalar_686 = load double, double* %scevgep684685, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_686
  store double %p_add42.i, double* %scevgep684685, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next665 = add nuw nsw i64 %polly.indvar664, 1
  %exitcond965.not = icmp eq i64 %polly.indvar664, %smin964
  br i1 %exitcond965.not, label %polly.loop_exit663, label %polly.loop_header661, !llvm.loop !103

polly.loop_header825:                             ; preds = %entry, %polly.loop_exit833
  %polly.indvar828 = phi i64 [ %polly.indvar_next829, %polly.loop_exit833 ], [ 0, %entry ]
  %196 = mul nuw nsw i64 %polly.indvar828, 640
  %197 = trunc i64 %polly.indvar828 to i32
  %broadcast.splatinsert1105 = insertelement <4 x i32> poison, i32 %197, i32 0
  %broadcast.splat1106 = shufflevector <4 x i32> %broadcast.splatinsert1105, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1095

vector.body1095:                                  ; preds = %vector.body1095, %polly.loop_header825
  %index1097 = phi i64 [ 0, %polly.loop_header825 ], [ %index.next1098, %vector.body1095 ]
  %vec.ind1103 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header825 ], [ %vec.ind.next1104, %vector.body1095 ]
  %198 = mul <4 x i32> %vec.ind1103, %broadcast.splat1106
  %199 = add <4 x i32> %198, <i32 3, i32 3, i32 3, i32 3>
  %200 = urem <4 x i32> %199, <i32 80, i32 80, i32 80, i32 80>
  %201 = sitofp <4 x i32> %200 to <4 x double>
  %202 = fmul fast <4 x double> %201, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %203 = shl i64 %index1097, 3
  %204 = add nuw nsw i64 %203, %196
  %205 = getelementptr i8, i8* %call, i64 %204
  %206 = bitcast i8* %205 to <4 x double>*
  store <4 x double> %202, <4 x double>* %206, align 8, !alias.scope !104, !noalias !106
  %index.next1098 = add i64 %index1097, 4
  %vec.ind.next1104 = add <4 x i32> %vec.ind1103, <i32 4, i32 4, i32 4, i32 4>
  %207 = icmp eq i64 %index.next1098, 32
  br i1 %207, label %polly.loop_exit833, label %vector.body1095, !llvm.loop !109

polly.loop_exit833:                               ; preds = %vector.body1095
  %polly.indvar_next829 = add nuw nsw i64 %polly.indvar828, 1
  %exitcond994.not = icmp eq i64 %polly.indvar_next829, 32
  br i1 %exitcond994.not, label %polly.loop_header825.1, label %polly.loop_header825

polly.loop_header852:                             ; preds = %polly.loop_exit833.2.2, %polly.loop_exit860
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_exit833.2.2 ]
  %208 = mul nuw nsw i64 %polly.indvar855, 480
  %209 = trunc i64 %polly.indvar855 to i32
  %broadcast.splatinsert1219 = insertelement <4 x i32> poison, i32 %209, i32 0
  %broadcast.splat1220 = shufflevector <4 x i32> %broadcast.splatinsert1219, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1209

vector.body1209:                                  ; preds = %vector.body1209, %polly.loop_header852
  %index1211 = phi i64 [ 0, %polly.loop_header852 ], [ %index.next1212, %vector.body1209 ]
  %vec.ind1217 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header852 ], [ %vec.ind.next1218, %vector.body1209 ]
  %210 = mul <4 x i32> %vec.ind1217, %broadcast.splat1220
  %211 = add <4 x i32> %210, <i32 2, i32 2, i32 2, i32 2>
  %212 = urem <4 x i32> %211, <i32 60, i32 60, i32 60, i32 60>
  %213 = sitofp <4 x i32> %212 to <4 x double>
  %214 = fmul fast <4 x double> %213, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %215 = shl i64 %index1211, 3
  %216 = add i64 %215, %208
  %217 = getelementptr i8, i8* %call2, i64 %216
  %218 = bitcast i8* %217 to <4 x double>*
  store <4 x double> %214, <4 x double>* %218, align 8, !alias.scope !108, !noalias !110
  %index.next1212 = add i64 %index1211, 4
  %vec.ind.next1218 = add <4 x i32> %vec.ind1217, <i32 4, i32 4, i32 4, i32 4>
  %219 = icmp eq i64 %index.next1212, 32
  br i1 %219, label %polly.loop_exit860, label %vector.body1209, !llvm.loop !111

polly.loop_exit860:                               ; preds = %vector.body1209
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %exitcond985.not = icmp eq i64 %polly.indvar_next856, 32
  br i1 %exitcond985.not, label %polly.loop_header852.1, label %polly.loop_header852

polly.loop_header878:                             ; preds = %polly.loop_exit860.1.2, %polly.loop_exit886
  %polly.indvar881 = phi i64 [ %polly.indvar_next882, %polly.loop_exit886 ], [ 0, %polly.loop_exit860.1.2 ]
  %220 = mul nuw nsw i64 %polly.indvar881, 480
  %221 = trunc i64 %polly.indvar881 to i32
  %broadcast.splatinsert1297 = insertelement <4 x i32> poison, i32 %221, i32 0
  %broadcast.splat1298 = shufflevector <4 x i32> %broadcast.splatinsert1297, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1287

vector.body1287:                                  ; preds = %vector.body1287, %polly.loop_header878
  %index1289 = phi i64 [ 0, %polly.loop_header878 ], [ %index.next1290, %vector.body1287 ]
  %vec.ind1295 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header878 ], [ %vec.ind.next1296, %vector.body1287 ]
  %222 = mul <4 x i32> %vec.ind1295, %broadcast.splat1298
  %223 = add <4 x i32> %222, <i32 1, i32 1, i32 1, i32 1>
  %224 = urem <4 x i32> %223, <i32 80, i32 80, i32 80, i32 80>
  %225 = sitofp <4 x i32> %224 to <4 x double>
  %226 = fmul fast <4 x double> %225, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %227 = shl i64 %index1289, 3
  %228 = add i64 %227, %220
  %229 = getelementptr i8, i8* %call1, i64 %228
  %230 = bitcast i8* %229 to <4 x double>*
  store <4 x double> %226, <4 x double>* %230, align 8, !alias.scope !107, !noalias !112
  %index.next1290 = add i64 %index1289, 4
  %vec.ind.next1296 = add <4 x i32> %vec.ind1295, <i32 4, i32 4, i32 4, i32 4>
  %231 = icmp eq i64 %index.next1290, 32
  br i1 %231, label %polly.loop_exit886, label %vector.body1287, !llvm.loop !113

polly.loop_exit886:                               ; preds = %vector.body1287
  %polly.indvar_next882 = add nuw nsw i64 %polly.indvar881, 1
  %exitcond979.not = icmp eq i64 %polly.indvar_next882, 32
  br i1 %exitcond979.not, label %polly.loop_header878.1, label %polly.loop_header878

polly.loop_header228.1:                           ; preds = %polly.loop_exit259, %polly.loop_exit259.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit259.1 ], [ 0, %polly.loop_exit259 ]
  %polly.indvar231.1 = phi i64 [ %polly.indvar_next232.1, %polly.loop_exit259.1 ], [ 32, %polly.loop_exit259 ]
  %smin1567 = call i64 @llvm.smin.i64(i64 %indvars.iv.1, i64 31)
  %232 = add nuw nsw i64 %smin1567, 1
  %smin926.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.1, i64 31)
  %233 = add nsw i64 %polly.indvar231.1, -32
  %.not.1 = icmp ult i64 %polly.indvar231.1, 64
  %polly.access.mul.call1251.1 = mul nuw nsw i64 %polly.indvar231.1, 60
  br i1 %.not.1, label %polly.loop_header234.us.1, label %polly.loop_header234.1

polly.loop_header234.1:                           ; preds = %polly.loop_header228.1, %polly.then.1
  %polly.indvar237.1 = phi i64 [ %polly.indvar_next238.1, %polly.then.1 ], [ 0, %polly.loop_header228.1 ]
  %234 = add nuw nsw i64 %polly.indvar237.1, %100
  %polly.access.mul.Packed_MemRef_call1.1 = mul nuw nsw i64 %polly.indvar237.1, 80
  br label %polly.loop_header240.1

polly.loop_header240.1:                           ; preds = %polly.loop_header240.1, %polly.loop_header234.1
  %polly.indvar243.1 = phi i64 [ 0, %polly.loop_header234.1 ], [ %polly.indvar_next244.1, %polly.loop_header240.1 ]
  %235 = mul i64 %polly.indvar243.1, 60
  %polly.access.mul.call1247.1 = add i64 %235, 1920
  %polly.access.add.call1248.1 = add nuw nsw i64 %polly.access.mul.call1247.1, %234
  %polly.access.call1249.1 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1248.1
  %polly.access.call1249.load.1 = load double, double* %polly.access.call1249.1, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1.1 = add nuw nsw i64 %polly.indvar243.1, %polly.access.mul.Packed_MemRef_call1.1
  %polly.access.Packed_MemRef_call1.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.1
  store double %polly.access.call1249.load.1, double* %polly.access.Packed_MemRef_call1.1, align 8
  %polly.indvar_next244.1 = add nuw nsw i64 %polly.indvar243.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar243.1, %smin926.1
  br i1 %exitcond.1.not, label %polly.then.1, label %polly.loop_header240.1

polly.then.1:                                     ; preds = %polly.loop_header240.1
  %polly.access.add.call1252.1 = add nuw nsw i64 %234, %polly.access.mul.call1251.1
  %polly.access.call1253.1 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1252.1
  %polly.access.call1253.load.1 = load double, double* %polly.access.call1253.1, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1255.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1.1, %233
  %polly.access.Packed_MemRef_call1256.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255.1
  store double %polly.access.call1253.load.1, double* %polly.access.Packed_MemRef_call1256.1, align 8
  %polly.indvar_next238.1 = add nuw nsw i64 %polly.indvar237.1, 1
  %exitcond922.1.not = icmp eq i64 %polly.indvar_next238.1, %101
  br i1 %exitcond922.1.not, label %polly.loop_exit236.1, label %polly.loop_header234.1

polly.loop_header234.us.1:                        ; preds = %polly.loop_header228.1, %polly.merge.us.1
  %polly.indvar237.us.1 = phi i64 [ %polly.indvar_next238.us.1, %polly.merge.us.1 ], [ 0, %polly.loop_header228.1 ]
  %236 = add nuw nsw i64 %polly.indvar237.us.1, %100
  %polly.access.mul.Packed_MemRef_call1.us.1 = mul nuw nsw i64 %polly.indvar237.us.1, 80
  br label %polly.loop_header240.us.1

polly.loop_header240.us.1:                        ; preds = %polly.loop_header240.us.1, %polly.loop_header234.us.1
  %polly.indvar243.us.1 = phi i64 [ 0, %polly.loop_header234.us.1 ], [ %polly.indvar_next244.us.1, %polly.loop_header240.us.1 ]
  %237 = mul i64 %polly.indvar243.us.1, 60
  %polly.access.mul.call1247.us.1 = add i64 %237, 1920
  %polly.access.add.call1248.us.1 = add nuw nsw i64 %polly.access.mul.call1247.us.1, %236
  %polly.access.call1249.us.1 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1248.us.1
  %polly.access.call1249.load.us.1 = load double, double* %polly.access.call1249.us.1, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar243.us.1, %polly.access.mul.Packed_MemRef_call1.us.1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1249.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next244.us.1 = add nuw nsw i64 %polly.indvar243.us.1, 1
  %exitcond924.1.not = icmp eq i64 %polly.indvar243.us.1, %smin926.1
  br i1 %exitcond924.1.not, label %polly.merge.us.1, label %polly.loop_header240.us.1

polly.merge.us.1:                                 ; preds = %polly.loop_header240.us.1
  %polly.indvar_next238.us.1 = add nuw nsw i64 %polly.indvar237.us.1, 1
  %exitcond925.1.not = icmp eq i64 %polly.indvar_next238.us.1, %101
  br i1 %exitcond925.1.not, label %polly.loop_exit236.1, label %polly.loop_header234.us.1

polly.loop_exit236.1:                             ; preds = %polly.then.1, %polly.merge.us.1
  %238 = mul nuw nsw i64 %polly.indvar231.1, 640
  %scevgep285.1 = getelementptr i8, i8* %call, i64 %238
  br label %polly.loop_header257.1

polly.loop_header257.1:                           ; preds = %polly.loop_exit265.1, %polly.loop_exit236.1
  %polly.indvar260.1 = phi i64 [ 0, %polly.loop_exit236.1 ], [ %polly.indvar_next261.1, %polly.loop_exit265.1 ]
  %polly.access.mul.Packed_MemRef_call1269.1 = mul nuw nsw i64 %polly.indvar260.1, 80
  %239 = add nuw nsw i64 %polly.indvar260.1, %100
  %polly.access.mul.Packed_MemRef_call2273.1 = mul nuw nsw i64 %239, 80
  %polly.access.add.Packed_MemRef_call2274.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273.1, %polly.indvar231.1
  %polly.access.Packed_MemRef_call2275.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2274.1
  %_p_scalar_276.1 = load double, double* %polly.access.Packed_MemRef_call2275.1, align 8
  %polly.access.add.Packed_MemRef_call1282.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1269.1, %233
  %polly.access.Packed_MemRef_call1283.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.1
  %_p_scalar_284.1 = load double, double* %polly.access.Packed_MemRef_call1283.1, align 8
  %min.iters.check1568 = icmp ult i64 %smin1567, 3
  br i1 %min.iters.check1568, label %polly.loop_header263.1.preheader, label %vector.ph1569

vector.ph1569:                                    ; preds = %polly.loop_header257.1
  %n.vec1571 = and i64 %232, 60
  %broadcast.splatinsert1577 = insertelement <4 x double> poison, double %_p_scalar_276.1, i32 0
  %broadcast.splat1578 = shufflevector <4 x double> %broadcast.splatinsert1577, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1580 = insertelement <4 x double> poison, double %_p_scalar_284.1, i32 0
  %broadcast.splat1581 = shufflevector <4 x double> %broadcast.splatinsert1580, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1566

vector.body1566:                                  ; preds = %vector.body1566, %vector.ph1569
  %index1572 = phi i64 [ 0, %vector.ph1569 ], [ %index.next1573, %vector.body1566 ]
  %240 = add nuw nsw i64 %index1572, 32
  %241 = add nuw nsw i64 %index1572, %polly.access.mul.Packed_MemRef_call1269.1
  %242 = getelementptr double, double* %Packed_MemRef_call1, i64 %241
  %243 = bitcast double* %242 to <4 x double>*
  %wide.load1576 = load <4 x double>, <4 x double>* %243, align 8
  %244 = fmul fast <4 x double> %broadcast.splat1578, %wide.load1576
  %245 = add nuw nsw i64 %240, %polly.access.mul.Packed_MemRef_call2273.1
  %246 = getelementptr double, double* %Packed_MemRef_call2, i64 %245
  %247 = bitcast double* %246 to <4 x double>*
  %wide.load1579 = load <4 x double>, <4 x double>* %247, align 8
  %248 = fmul fast <4 x double> %broadcast.splat1581, %wide.load1579
  %249 = shl i64 %240, 3
  %250 = getelementptr i8, i8* %scevgep285.1, i64 %249
  %251 = bitcast i8* %250 to <4 x double>*
  %wide.load1582 = load <4 x double>, <4 x double>* %251, align 8, !alias.scope !64, !noalias !66
  %252 = fadd fast <4 x double> %248, %244
  %253 = fmul fast <4 x double> %252, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %254 = fadd fast <4 x double> %253, %wide.load1582
  %255 = bitcast i8* %250 to <4 x double>*
  store <4 x double> %254, <4 x double>* %255, align 8, !alias.scope !64, !noalias !66
  %index.next1573 = add i64 %index1572, 4
  %256 = icmp eq i64 %index.next1573, %n.vec1571
  br i1 %256, label %middle.block1564, label %vector.body1566, !llvm.loop !114

middle.block1564:                                 ; preds = %vector.body1566
  %cmp.n1575 = icmp eq i64 %232, %n.vec1571
  br i1 %cmp.n1575, label %polly.loop_exit265.1, label %polly.loop_header263.1.preheader

polly.loop_header263.1.preheader:                 ; preds = %polly.loop_header257.1, %middle.block1564
  %polly.indvar266.1.ph = phi i64 [ 0, %polly.loop_header257.1 ], [ %n.vec1571, %middle.block1564 ]
  br label %polly.loop_header263.1

polly.loop_header263.1:                           ; preds = %polly.loop_header263.1.preheader, %polly.loop_header263.1
  %polly.indvar266.1 = phi i64 [ %polly.indvar_next267.1, %polly.loop_header263.1 ], [ %polly.indvar266.1.ph, %polly.loop_header263.1.preheader ]
  %257 = add nuw nsw i64 %polly.indvar266.1, 32
  %polly.access.add.Packed_MemRef_call1270.1 = add nuw nsw i64 %polly.indvar266.1, %polly.access.mul.Packed_MemRef_call1269.1
  %polly.access.Packed_MemRef_call1271.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1270.1
  %_p_scalar_272.1 = load double, double* %polly.access.Packed_MemRef_call1271.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_276.1, %_p_scalar_272.1
  %polly.access.add.Packed_MemRef_call2278.1 = add nuw nsw i64 %257, %polly.access.mul.Packed_MemRef_call2273.1
  %polly.access.Packed_MemRef_call2279.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2278.1
  %_p_scalar_280.1 = load double, double* %polly.access.Packed_MemRef_call2279.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_284.1, %_p_scalar_280.1
  %258 = shl i64 %257, 3
  %scevgep286.1 = getelementptr i8, i8* %scevgep285.1, i64 %258
  %scevgep286287.1 = bitcast i8* %scevgep286.1 to double*
  %_p_scalar_288.1 = load double, double* %scevgep286287.1, align 8, !alias.scope !64, !noalias !66
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_288.1
  store double %p_add42.i118.1, double* %scevgep286287.1, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next267.1 = add nuw nsw i64 %polly.indvar266.1, 1
  %exitcond927.1.not = icmp eq i64 %polly.indvar266.1, %smin926.1
  br i1 %exitcond927.1.not, label %polly.loop_exit265.1, label %polly.loop_header263.1, !llvm.loop !115

polly.loop_exit265.1:                             ; preds = %polly.loop_header263.1, %middle.block1564
  %polly.indvar_next261.1 = add nuw nsw i64 %polly.indvar260.1, 1
  %exitcond928.1.not = icmp eq i64 %polly.indvar_next261.1, %101
  br i1 %exitcond928.1.not, label %polly.loop_exit259.1, label %polly.loop_header257.1

polly.loop_exit259.1:                             ; preds = %polly.loop_exit265.1
  %polly.indvar_next232.1 = add nuw nsw i64 %polly.indvar231.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond931.1.not = icmp eq i64 %indvars.iv.next.1, 48
  br i1 %exitcond931.1.not, label %polly.loop_header228.2, label %polly.loop_header228.1

polly.loop_header228.2:                           ; preds = %polly.loop_exit259.1, %polly.loop_exit259.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %polly.loop_exit259.2 ], [ 0, %polly.loop_exit259.1 ]
  %polly.indvar231.2 = phi i64 [ %polly.indvar_next232.2, %polly.loop_exit259.2 ], [ 64, %polly.loop_exit259.1 ]
  %259 = add nuw i64 %indvars.iv.2, 1
  %smin926.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.2, i64 31)
  %260 = add nsw i64 %polly.indvar231.2, -64
  %.not.2 = icmp ult i64 %polly.indvar231.2, 96
  %polly.access.mul.call1251.2 = mul nuw nsw i64 %polly.indvar231.2, 60
  br i1 %.not.2, label %polly.loop_header234.us.2, label %polly.loop_header234.2

polly.loop_header234.2:                           ; preds = %polly.loop_header228.2, %polly.then.2
  %polly.indvar237.2 = phi i64 [ %polly.indvar_next238.2, %polly.then.2 ], [ 0, %polly.loop_header228.2 ]
  %261 = add nuw nsw i64 %polly.indvar237.2, %100
  %polly.access.mul.Packed_MemRef_call1.2 = mul nuw nsw i64 %polly.indvar237.2, 80
  br label %polly.loop_header240.2

polly.loop_header240.2:                           ; preds = %polly.loop_header240.2, %polly.loop_header234.2
  %polly.indvar243.2 = phi i64 [ 0, %polly.loop_header234.2 ], [ %polly.indvar_next244.2, %polly.loop_header240.2 ]
  %262 = mul i64 %polly.indvar243.2, 60
  %polly.access.mul.call1247.2 = add i64 %262, 3840
  %polly.access.add.call1248.2 = add nuw nsw i64 %polly.access.mul.call1247.2, %261
  %polly.access.call1249.2 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1248.2
  %polly.access.call1249.load.2 = load double, double* %polly.access.call1249.2, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1.2 = add nuw nsw i64 %polly.indvar243.2, %polly.access.mul.Packed_MemRef_call1.2
  %polly.access.Packed_MemRef_call1.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.2
  store double %polly.access.call1249.load.2, double* %polly.access.Packed_MemRef_call1.2, align 8
  %polly.indvar_next244.2 = add nuw nsw i64 %polly.indvar243.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar243.2, %smin926.2
  br i1 %exitcond.2.not, label %polly.then.2, label %polly.loop_header240.2

polly.then.2:                                     ; preds = %polly.loop_header240.2
  %polly.access.add.call1252.2 = add nuw nsw i64 %261, %polly.access.mul.call1251.2
  %polly.access.call1253.2 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1252.2
  %polly.access.call1253.load.2 = load double, double* %polly.access.call1253.2, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1255.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1.2, %260
  %polly.access.Packed_MemRef_call1256.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255.2
  store double %polly.access.call1253.load.2, double* %polly.access.Packed_MemRef_call1256.2, align 8
  %polly.indvar_next238.2 = add nuw nsw i64 %polly.indvar237.2, 1
  %exitcond922.2.not = icmp eq i64 %polly.indvar_next238.2, %101
  br i1 %exitcond922.2.not, label %polly.loop_exit236.2, label %polly.loop_header234.2

polly.loop_header234.us.2:                        ; preds = %polly.loop_header228.2, %polly.merge.us.2
  %polly.indvar237.us.2 = phi i64 [ %polly.indvar_next238.us.2, %polly.merge.us.2 ], [ 0, %polly.loop_header228.2 ]
  %263 = add nuw nsw i64 %polly.indvar237.us.2, %100
  %polly.access.mul.Packed_MemRef_call1.us.2 = mul nuw nsw i64 %polly.indvar237.us.2, 80
  br label %polly.loop_header240.us.2

polly.loop_header240.us.2:                        ; preds = %polly.loop_header240.us.2, %polly.loop_header234.us.2
  %polly.indvar243.us.2 = phi i64 [ 0, %polly.loop_header234.us.2 ], [ %polly.indvar_next244.us.2, %polly.loop_header240.us.2 ]
  %264 = mul i64 %polly.indvar243.us.2, 60
  %polly.access.mul.call1247.us.2 = add i64 %264, 3840
  %polly.access.add.call1248.us.2 = add nuw nsw i64 %polly.access.mul.call1247.us.2, %263
  %polly.access.call1249.us.2 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1248.us.2
  %polly.access.call1249.load.us.2 = load double, double* %polly.access.call1249.us.2, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1.us.2 = add nuw nsw i64 %polly.indvar243.us.2, %polly.access.mul.Packed_MemRef_call1.us.2
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1249.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.indvar_next244.us.2 = add nuw nsw i64 %polly.indvar243.us.2, 1
  %exitcond924.2.not = icmp eq i64 %polly.indvar243.us.2, %smin926.2
  br i1 %exitcond924.2.not, label %polly.merge.us.2, label %polly.loop_header240.us.2

polly.merge.us.2:                                 ; preds = %polly.loop_header240.us.2
  %polly.indvar_next238.us.2 = add nuw nsw i64 %polly.indvar237.us.2, 1
  %exitcond925.2.not = icmp eq i64 %polly.indvar_next238.us.2, %101
  br i1 %exitcond925.2.not, label %polly.loop_exit236.2, label %polly.loop_header234.us.2

polly.loop_exit236.2:                             ; preds = %polly.then.2, %polly.merge.us.2
  %265 = mul nuw nsw i64 %polly.indvar231.2, 640
  %scevgep285.2 = getelementptr i8, i8* %call, i64 %265
  br label %polly.loop_header257.2

polly.loop_header257.2:                           ; preds = %polly.loop_exit265.2, %polly.loop_exit236.2
  %polly.indvar260.2 = phi i64 [ 0, %polly.loop_exit236.2 ], [ %polly.indvar_next261.2, %polly.loop_exit265.2 ]
  %polly.access.mul.Packed_MemRef_call1269.2 = mul nuw nsw i64 %polly.indvar260.2, 80
  %266 = add nuw nsw i64 %polly.indvar260.2, %100
  %polly.access.mul.Packed_MemRef_call2273.2 = mul nuw nsw i64 %266, 80
  %polly.access.add.Packed_MemRef_call2274.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273.2, %polly.indvar231.2
  %polly.access.Packed_MemRef_call2275.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2274.2
  %_p_scalar_276.2 = load double, double* %polly.access.Packed_MemRef_call2275.2, align 8
  %polly.access.add.Packed_MemRef_call1282.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1269.2, %260
  %polly.access.Packed_MemRef_call1283.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.2
  %_p_scalar_284.2 = load double, double* %polly.access.Packed_MemRef_call1283.2, align 8
  %min.iters.check1549 = icmp ult i64 %indvars.iv.2, 3
  br i1 %min.iters.check1549, label %polly.loop_header263.2.preheader, label %vector.ph1550

vector.ph1550:                                    ; preds = %polly.loop_header257.2
  %n.vec1552 = and i64 %259, -4
  %broadcast.splatinsert1558 = insertelement <4 x double> poison, double %_p_scalar_276.2, i32 0
  %broadcast.splat1559 = shufflevector <4 x double> %broadcast.splatinsert1558, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1561 = insertelement <4 x double> poison, double %_p_scalar_284.2, i32 0
  %broadcast.splat1562 = shufflevector <4 x double> %broadcast.splatinsert1561, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1548

vector.body1548:                                  ; preds = %vector.body1548, %vector.ph1550
  %index1553 = phi i64 [ 0, %vector.ph1550 ], [ %index.next1554, %vector.body1548 ]
  %267 = add nuw nsw i64 %index1553, 64
  %268 = add nuw nsw i64 %index1553, %polly.access.mul.Packed_MemRef_call1269.2
  %269 = getelementptr double, double* %Packed_MemRef_call1, i64 %268
  %270 = bitcast double* %269 to <4 x double>*
  %wide.load1557 = load <4 x double>, <4 x double>* %270, align 8
  %271 = fmul fast <4 x double> %broadcast.splat1559, %wide.load1557
  %272 = add nuw nsw i64 %267, %polly.access.mul.Packed_MemRef_call2273.2
  %273 = getelementptr double, double* %Packed_MemRef_call2, i64 %272
  %274 = bitcast double* %273 to <4 x double>*
  %wide.load1560 = load <4 x double>, <4 x double>* %274, align 8
  %275 = fmul fast <4 x double> %broadcast.splat1562, %wide.load1560
  %276 = shl i64 %267, 3
  %277 = getelementptr i8, i8* %scevgep285.2, i64 %276
  %278 = bitcast i8* %277 to <4 x double>*
  %wide.load1563 = load <4 x double>, <4 x double>* %278, align 8, !alias.scope !64, !noalias !66
  %279 = fadd fast <4 x double> %275, %271
  %280 = fmul fast <4 x double> %279, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %281 = fadd fast <4 x double> %280, %wide.load1563
  %282 = bitcast i8* %277 to <4 x double>*
  store <4 x double> %281, <4 x double>* %282, align 8, !alias.scope !64, !noalias !66
  %index.next1554 = add i64 %index1553, 4
  %283 = icmp eq i64 %index.next1554, %n.vec1552
  br i1 %283, label %middle.block1546, label %vector.body1548, !llvm.loop !116

middle.block1546:                                 ; preds = %vector.body1548
  %cmp.n1556 = icmp eq i64 %259, %n.vec1552
  br i1 %cmp.n1556, label %polly.loop_exit265.2, label %polly.loop_header263.2.preheader

polly.loop_header263.2.preheader:                 ; preds = %polly.loop_header257.2, %middle.block1546
  %polly.indvar266.2.ph = phi i64 [ 0, %polly.loop_header257.2 ], [ %n.vec1552, %middle.block1546 ]
  br label %polly.loop_header263.2

polly.loop_header263.2:                           ; preds = %polly.loop_header263.2.preheader, %polly.loop_header263.2
  %polly.indvar266.2 = phi i64 [ %polly.indvar_next267.2, %polly.loop_header263.2 ], [ %polly.indvar266.2.ph, %polly.loop_header263.2.preheader ]
  %284 = add nuw nsw i64 %polly.indvar266.2, 64
  %polly.access.add.Packed_MemRef_call1270.2 = add nuw nsw i64 %polly.indvar266.2, %polly.access.mul.Packed_MemRef_call1269.2
  %polly.access.Packed_MemRef_call1271.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1270.2
  %_p_scalar_272.2 = load double, double* %polly.access.Packed_MemRef_call1271.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_276.2, %_p_scalar_272.2
  %polly.access.add.Packed_MemRef_call2278.2 = add nuw nsw i64 %284, %polly.access.mul.Packed_MemRef_call2273.2
  %polly.access.Packed_MemRef_call2279.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2278.2
  %_p_scalar_280.2 = load double, double* %polly.access.Packed_MemRef_call2279.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_284.2, %_p_scalar_280.2
  %285 = shl i64 %284, 3
  %scevgep286.2 = getelementptr i8, i8* %scevgep285.2, i64 %285
  %scevgep286287.2 = bitcast i8* %scevgep286.2 to double*
  %_p_scalar_288.2 = load double, double* %scevgep286287.2, align 8, !alias.scope !64, !noalias !66
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_288.2
  store double %p_add42.i118.2, double* %scevgep286287.2, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next267.2 = add nuw nsw i64 %polly.indvar266.2, 1
  %exitcond927.2.not = icmp eq i64 %polly.indvar266.2, %smin926.2
  br i1 %exitcond927.2.not, label %polly.loop_exit265.2, label %polly.loop_header263.2, !llvm.loop !117

polly.loop_exit265.2:                             ; preds = %polly.loop_header263.2, %middle.block1546
  %polly.indvar_next261.2 = add nuw nsw i64 %polly.indvar260.2, 1
  %exitcond928.2.not = icmp eq i64 %polly.indvar_next261.2, %101
  br i1 %exitcond928.2.not, label %polly.loop_exit259.2, label %polly.loop_header257.2

polly.loop_exit259.2:                             ; preds = %polly.loop_exit265.2
  %polly.indvar_next232.2 = add nuw nsw i64 %polly.indvar231.2, 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond931.2.not = icmp eq i64 %indvars.iv.next.2, 16
  br i1 %exitcond931.2.not, label %polly.loop_exit230.2, label %polly.loop_header228.2

polly.loop_exit230.2:                             ; preds = %polly.loop_exit259.2
  br i1 %polly.loop_cond221, label %polly.loop_header216, label %polly.exiting

polly.loop_header423.1:                           ; preds = %polly.loop_exit458, %polly.loop_exit458.1
  %indvars.iv937.1 = phi i64 [ %indvars.iv.next938.1, %polly.loop_exit458.1 ], [ 0, %polly.loop_exit458 ]
  %polly.indvar426.1 = phi i64 [ %polly.indvar_next427.1, %polly.loop_exit458.1 ], [ 32, %polly.loop_exit458 ]
  %smin1485 = call i64 @llvm.smin.i64(i64 %indvars.iv937.1, i64 31)
  %286 = add nuw nsw i64 %smin1485, 1
  %smin945.1 = call i64 @llvm.smin.i64(i64 %indvars.iv937.1, i64 31)
  %287 = add nsw i64 %polly.indvar426.1, -32
  %.not893.1 = icmp ult i64 %polly.indvar426.1, 64
  %polly.access.mul.call1450.1 = mul nuw nsw i64 %polly.indvar426.1, 60
  br i1 %.not893.1, label %polly.loop_header429.us.1, label %polly.loop_header429.1

polly.loop_header429.1:                           ; preds = %polly.loop_header423.1, %polly.then447.1
  %polly.indvar432.1 = phi i64 [ %polly.indvar_next433.1, %polly.then447.1 ], [ 0, %polly.loop_header423.1 ]
  %288 = add nuw nsw i64 %polly.indvar432.1, %136
  %polly.access.mul.Packed_MemRef_call1294.1 = mul nuw nsw i64 %polly.indvar432.1, 80
  br label %polly.loop_header435.1

polly.loop_header435.1:                           ; preds = %polly.loop_header435.1, %polly.loop_header429.1
  %polly.indvar438.1 = phi i64 [ 0, %polly.loop_header429.1 ], [ %polly.indvar_next439.1, %polly.loop_header435.1 ]
  %289 = mul i64 %polly.indvar438.1, 60
  %polly.access.mul.call1442.1 = add i64 %289, 1920
  %polly.access.add.call1443.1 = add nuw nsw i64 %polly.access.mul.call1442.1, %288
  %polly.access.call1444.1 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1443.1
  %polly.access.call1444.load.1 = load double, double* %polly.access.call1444.1, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1294.1 = add nuw nsw i64 %polly.indvar438.1, %polly.access.mul.Packed_MemRef_call1294.1
  %polly.access.Packed_MemRef_call1294.1 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294.1
  store double %polly.access.call1444.load.1, double* %polly.access.Packed_MemRef_call1294.1, align 8
  %polly.indvar_next439.1 = add nuw nsw i64 %polly.indvar438.1, 1
  %exitcond940.1.not = icmp eq i64 %polly.indvar438.1, %smin945.1
  br i1 %exitcond940.1.not, label %polly.then447.1, label %polly.loop_header435.1

polly.then447.1:                                  ; preds = %polly.loop_header435.1
  %polly.access.add.call1451.1 = add nuw nsw i64 %288, %polly.access.mul.call1450.1
  %polly.access.call1452.1 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1451.1
  %polly.access.call1452.load.1 = load double, double* %polly.access.call1452.1, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1294454.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1294.1, %287
  %polly.access.Packed_MemRef_call1294455.1 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294454.1
  store double %polly.access.call1452.load.1, double* %polly.access.Packed_MemRef_call1294455.1, align 8
  %polly.indvar_next433.1 = add nuw nsw i64 %polly.indvar432.1, 1
  %exitcond941.1.not = icmp eq i64 %polly.indvar_next433.1, %137
  br i1 %exitcond941.1.not, label %polly.loop_exit431.1, label %polly.loop_header429.1

polly.loop_header429.us.1:                        ; preds = %polly.loop_header423.1, %polly.merge446.us.1
  %polly.indvar432.us.1 = phi i64 [ %polly.indvar_next433.us.1, %polly.merge446.us.1 ], [ 0, %polly.loop_header423.1 ]
  %290 = add nuw nsw i64 %polly.indvar432.us.1, %136
  %polly.access.mul.Packed_MemRef_call1294.us.1 = mul nuw nsw i64 %polly.indvar432.us.1, 80
  br label %polly.loop_header435.us.1

polly.loop_header435.us.1:                        ; preds = %polly.loop_header435.us.1, %polly.loop_header429.us.1
  %polly.indvar438.us.1 = phi i64 [ 0, %polly.loop_header429.us.1 ], [ %polly.indvar_next439.us.1, %polly.loop_header435.us.1 ]
  %291 = mul i64 %polly.indvar438.us.1, 60
  %polly.access.mul.call1442.us.1 = add i64 %291, 1920
  %polly.access.add.call1443.us.1 = add nuw nsw i64 %polly.access.mul.call1442.us.1, %290
  %polly.access.call1444.us.1 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1443.us.1
  %polly.access.call1444.load.us.1 = load double, double* %polly.access.call1444.us.1, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1294.us.1 = add nuw nsw i64 %polly.indvar438.us.1, %polly.access.mul.Packed_MemRef_call1294.us.1
  %polly.access.Packed_MemRef_call1294.us.1 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294.us.1
  store double %polly.access.call1444.load.us.1, double* %polly.access.Packed_MemRef_call1294.us.1, align 8
  %polly.indvar_next439.us.1 = add nuw nsw i64 %polly.indvar438.us.1, 1
  %exitcond943.1.not = icmp eq i64 %polly.indvar438.us.1, %smin945.1
  br i1 %exitcond943.1.not, label %polly.merge446.us.1, label %polly.loop_header435.us.1

polly.merge446.us.1:                              ; preds = %polly.loop_header435.us.1
  %polly.indvar_next433.us.1 = add nuw nsw i64 %polly.indvar432.us.1, 1
  %exitcond944.1.not = icmp eq i64 %polly.indvar_next433.us.1, %137
  br i1 %exitcond944.1.not, label %polly.loop_exit431.1, label %polly.loop_header429.us.1

polly.loop_exit431.1:                             ; preds = %polly.then447.1, %polly.merge446.us.1
  %292 = mul nuw nsw i64 %polly.indvar426.1, 640
  %scevgep484.1 = getelementptr i8, i8* %call, i64 %292
  br label %polly.loop_header456.1

polly.loop_header456.1:                           ; preds = %polly.loop_exit464.1, %polly.loop_exit431.1
  %polly.indvar459.1 = phi i64 [ 0, %polly.loop_exit431.1 ], [ %polly.indvar_next460.1, %polly.loop_exit464.1 ]
  %polly.access.mul.Packed_MemRef_call1294468.1 = mul nuw nsw i64 %polly.indvar459.1, 80
  %293 = add nuw nsw i64 %polly.indvar459.1, %136
  %polly.access.mul.Packed_MemRef_call2296472.1 = mul nuw nsw i64 %293, 80
  %polly.access.add.Packed_MemRef_call2296473.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2296472.1, %polly.indvar426.1
  %polly.access.Packed_MemRef_call2296474.1 = getelementptr double, double* %Packed_MemRef_call2296, i64 %polly.access.add.Packed_MemRef_call2296473.1
  %_p_scalar_475.1 = load double, double* %polly.access.Packed_MemRef_call2296474.1, align 8
  %polly.access.add.Packed_MemRef_call1294481.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1294468.1, %287
  %polly.access.Packed_MemRef_call1294482.1 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294481.1
  %_p_scalar_483.1 = load double, double* %polly.access.Packed_MemRef_call1294482.1, align 8
  %min.iters.check1486 = icmp ult i64 %smin1485, 3
  br i1 %min.iters.check1486, label %polly.loop_header462.1.preheader, label %vector.ph1487

vector.ph1487:                                    ; preds = %polly.loop_header456.1
  %n.vec1489 = and i64 %286, 60
  %broadcast.splatinsert1495 = insertelement <4 x double> poison, double %_p_scalar_475.1, i32 0
  %broadcast.splat1496 = shufflevector <4 x double> %broadcast.splatinsert1495, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1498 = insertelement <4 x double> poison, double %_p_scalar_483.1, i32 0
  %broadcast.splat1499 = shufflevector <4 x double> %broadcast.splatinsert1498, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1484

vector.body1484:                                  ; preds = %vector.body1484, %vector.ph1487
  %index1490 = phi i64 [ 0, %vector.ph1487 ], [ %index.next1491, %vector.body1484 ]
  %294 = add nuw nsw i64 %index1490, 32
  %295 = add nuw nsw i64 %index1490, %polly.access.mul.Packed_MemRef_call1294468.1
  %296 = getelementptr double, double* %Packed_MemRef_call1294, i64 %295
  %297 = bitcast double* %296 to <4 x double>*
  %wide.load1494 = load <4 x double>, <4 x double>* %297, align 8
  %298 = fmul fast <4 x double> %broadcast.splat1496, %wide.load1494
  %299 = add nuw nsw i64 %294, %polly.access.mul.Packed_MemRef_call2296472.1
  %300 = getelementptr double, double* %Packed_MemRef_call2296, i64 %299
  %301 = bitcast double* %300 to <4 x double>*
  %wide.load1497 = load <4 x double>, <4 x double>* %301, align 8
  %302 = fmul fast <4 x double> %broadcast.splat1499, %wide.load1497
  %303 = shl i64 %294, 3
  %304 = getelementptr i8, i8* %scevgep484.1, i64 %303
  %305 = bitcast i8* %304 to <4 x double>*
  %wide.load1500 = load <4 x double>, <4 x double>* %305, align 8, !alias.scope !78, !noalias !80
  %306 = fadd fast <4 x double> %302, %298
  %307 = fmul fast <4 x double> %306, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %308 = fadd fast <4 x double> %307, %wide.load1500
  %309 = bitcast i8* %304 to <4 x double>*
  store <4 x double> %308, <4 x double>* %309, align 8, !alias.scope !78, !noalias !80
  %index.next1491 = add i64 %index1490, 4
  %310 = icmp eq i64 %index.next1491, %n.vec1489
  br i1 %310, label %middle.block1482, label %vector.body1484, !llvm.loop !118

middle.block1482:                                 ; preds = %vector.body1484
  %cmp.n1493 = icmp eq i64 %286, %n.vec1489
  br i1 %cmp.n1493, label %polly.loop_exit464.1, label %polly.loop_header462.1.preheader

polly.loop_header462.1.preheader:                 ; preds = %polly.loop_header456.1, %middle.block1482
  %polly.indvar465.1.ph = phi i64 [ 0, %polly.loop_header456.1 ], [ %n.vec1489, %middle.block1482 ]
  br label %polly.loop_header462.1

polly.loop_header462.1:                           ; preds = %polly.loop_header462.1.preheader, %polly.loop_header462.1
  %polly.indvar465.1 = phi i64 [ %polly.indvar_next466.1, %polly.loop_header462.1 ], [ %polly.indvar465.1.ph, %polly.loop_header462.1.preheader ]
  %311 = add nuw nsw i64 %polly.indvar465.1, 32
  %polly.access.add.Packed_MemRef_call1294469.1 = add nuw nsw i64 %polly.indvar465.1, %polly.access.mul.Packed_MemRef_call1294468.1
  %polly.access.Packed_MemRef_call1294470.1 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294469.1
  %_p_scalar_471.1 = load double, double* %polly.access.Packed_MemRef_call1294470.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_475.1, %_p_scalar_471.1
  %polly.access.add.Packed_MemRef_call2296477.1 = add nuw nsw i64 %311, %polly.access.mul.Packed_MemRef_call2296472.1
  %polly.access.Packed_MemRef_call2296478.1 = getelementptr double, double* %Packed_MemRef_call2296, i64 %polly.access.add.Packed_MemRef_call2296477.1
  %_p_scalar_479.1 = load double, double* %polly.access.Packed_MemRef_call2296478.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_483.1, %_p_scalar_479.1
  %312 = shl i64 %311, 3
  %scevgep485.1 = getelementptr i8, i8* %scevgep484.1, i64 %312
  %scevgep485486.1 = bitcast i8* %scevgep485.1 to double*
  %_p_scalar_487.1 = load double, double* %scevgep485486.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_487.1
  store double %p_add42.i79.1, double* %scevgep485486.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next466.1 = add nuw nsw i64 %polly.indvar465.1, 1
  %exitcond946.1.not = icmp eq i64 %polly.indvar465.1, %smin945.1
  br i1 %exitcond946.1.not, label %polly.loop_exit464.1, label %polly.loop_header462.1, !llvm.loop !119

polly.loop_exit464.1:                             ; preds = %polly.loop_header462.1, %middle.block1482
  %polly.indvar_next460.1 = add nuw nsw i64 %polly.indvar459.1, 1
  %exitcond947.1.not = icmp eq i64 %polly.indvar_next460.1, %137
  br i1 %exitcond947.1.not, label %polly.loop_exit458.1, label %polly.loop_header456.1

polly.loop_exit458.1:                             ; preds = %polly.loop_exit464.1
  %polly.indvar_next427.1 = add nuw nsw i64 %polly.indvar426.1, 1
  %indvars.iv.next938.1 = add nuw nsw i64 %indvars.iv937.1, 1
  %exitcond950.1.not = icmp eq i64 %indvars.iv.next938.1, 48
  br i1 %exitcond950.1.not, label %polly.loop_header423.2, label %polly.loop_header423.1

polly.loop_header423.2:                           ; preds = %polly.loop_exit458.1, %polly.loop_exit458.2
  %indvars.iv937.2 = phi i64 [ %indvars.iv.next938.2, %polly.loop_exit458.2 ], [ 0, %polly.loop_exit458.1 ]
  %polly.indvar426.2 = phi i64 [ %polly.indvar_next427.2, %polly.loop_exit458.2 ], [ 64, %polly.loop_exit458.1 ]
  %313 = add nuw i64 %indvars.iv937.2, 1
  %smin945.2 = call i64 @llvm.smin.i64(i64 %indvars.iv937.2, i64 31)
  %314 = add nsw i64 %polly.indvar426.2, -64
  %.not893.2 = icmp ult i64 %polly.indvar426.2, 96
  %polly.access.mul.call1450.2 = mul nuw nsw i64 %polly.indvar426.2, 60
  br i1 %.not893.2, label %polly.loop_header429.us.2, label %polly.loop_header429.2

polly.loop_header429.2:                           ; preds = %polly.loop_header423.2, %polly.then447.2
  %polly.indvar432.2 = phi i64 [ %polly.indvar_next433.2, %polly.then447.2 ], [ 0, %polly.loop_header423.2 ]
  %315 = add nuw nsw i64 %polly.indvar432.2, %136
  %polly.access.mul.Packed_MemRef_call1294.2 = mul nuw nsw i64 %polly.indvar432.2, 80
  br label %polly.loop_header435.2

polly.loop_header435.2:                           ; preds = %polly.loop_header435.2, %polly.loop_header429.2
  %polly.indvar438.2 = phi i64 [ 0, %polly.loop_header429.2 ], [ %polly.indvar_next439.2, %polly.loop_header435.2 ]
  %316 = mul i64 %polly.indvar438.2, 60
  %polly.access.mul.call1442.2 = add i64 %316, 3840
  %polly.access.add.call1443.2 = add nuw nsw i64 %polly.access.mul.call1442.2, %315
  %polly.access.call1444.2 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1443.2
  %polly.access.call1444.load.2 = load double, double* %polly.access.call1444.2, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1294.2 = add nuw nsw i64 %polly.indvar438.2, %polly.access.mul.Packed_MemRef_call1294.2
  %polly.access.Packed_MemRef_call1294.2 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294.2
  store double %polly.access.call1444.load.2, double* %polly.access.Packed_MemRef_call1294.2, align 8
  %polly.indvar_next439.2 = add nuw nsw i64 %polly.indvar438.2, 1
  %exitcond940.2.not = icmp eq i64 %polly.indvar438.2, %smin945.2
  br i1 %exitcond940.2.not, label %polly.then447.2, label %polly.loop_header435.2

polly.then447.2:                                  ; preds = %polly.loop_header435.2
  %polly.access.add.call1451.2 = add nuw nsw i64 %315, %polly.access.mul.call1450.2
  %polly.access.call1452.2 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1451.2
  %polly.access.call1452.load.2 = load double, double* %polly.access.call1452.2, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1294454.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1294.2, %314
  %polly.access.Packed_MemRef_call1294455.2 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294454.2
  store double %polly.access.call1452.load.2, double* %polly.access.Packed_MemRef_call1294455.2, align 8
  %polly.indvar_next433.2 = add nuw nsw i64 %polly.indvar432.2, 1
  %exitcond941.2.not = icmp eq i64 %polly.indvar_next433.2, %137
  br i1 %exitcond941.2.not, label %polly.loop_exit431.2, label %polly.loop_header429.2

polly.loop_header429.us.2:                        ; preds = %polly.loop_header423.2, %polly.merge446.us.2
  %polly.indvar432.us.2 = phi i64 [ %polly.indvar_next433.us.2, %polly.merge446.us.2 ], [ 0, %polly.loop_header423.2 ]
  %317 = add nuw nsw i64 %polly.indvar432.us.2, %136
  %polly.access.mul.Packed_MemRef_call1294.us.2 = mul nuw nsw i64 %polly.indvar432.us.2, 80
  br label %polly.loop_header435.us.2

polly.loop_header435.us.2:                        ; preds = %polly.loop_header435.us.2, %polly.loop_header429.us.2
  %polly.indvar438.us.2 = phi i64 [ 0, %polly.loop_header429.us.2 ], [ %polly.indvar_next439.us.2, %polly.loop_header435.us.2 ]
  %318 = mul i64 %polly.indvar438.us.2, 60
  %polly.access.mul.call1442.us.2 = add i64 %318, 3840
  %polly.access.add.call1443.us.2 = add nuw nsw i64 %polly.access.mul.call1442.us.2, %317
  %polly.access.call1444.us.2 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1443.us.2
  %polly.access.call1444.load.us.2 = load double, double* %polly.access.call1444.us.2, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1294.us.2 = add nuw nsw i64 %polly.indvar438.us.2, %polly.access.mul.Packed_MemRef_call1294.us.2
  %polly.access.Packed_MemRef_call1294.us.2 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294.us.2
  store double %polly.access.call1444.load.us.2, double* %polly.access.Packed_MemRef_call1294.us.2, align 8
  %polly.indvar_next439.us.2 = add nuw nsw i64 %polly.indvar438.us.2, 1
  %exitcond943.2.not = icmp eq i64 %polly.indvar438.us.2, %smin945.2
  br i1 %exitcond943.2.not, label %polly.merge446.us.2, label %polly.loop_header435.us.2

polly.merge446.us.2:                              ; preds = %polly.loop_header435.us.2
  %polly.indvar_next433.us.2 = add nuw nsw i64 %polly.indvar432.us.2, 1
  %exitcond944.2.not = icmp eq i64 %polly.indvar_next433.us.2, %137
  br i1 %exitcond944.2.not, label %polly.loop_exit431.2, label %polly.loop_header429.us.2

polly.loop_exit431.2:                             ; preds = %polly.then447.2, %polly.merge446.us.2
  %319 = mul nuw nsw i64 %polly.indvar426.2, 640
  %scevgep484.2 = getelementptr i8, i8* %call, i64 %319
  br label %polly.loop_header456.2

polly.loop_header456.2:                           ; preds = %polly.loop_exit464.2, %polly.loop_exit431.2
  %polly.indvar459.2 = phi i64 [ 0, %polly.loop_exit431.2 ], [ %polly.indvar_next460.2, %polly.loop_exit464.2 ]
  %polly.access.mul.Packed_MemRef_call1294468.2 = mul nuw nsw i64 %polly.indvar459.2, 80
  %320 = add nuw nsw i64 %polly.indvar459.2, %136
  %polly.access.mul.Packed_MemRef_call2296472.2 = mul nuw nsw i64 %320, 80
  %polly.access.add.Packed_MemRef_call2296473.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2296472.2, %polly.indvar426.2
  %polly.access.Packed_MemRef_call2296474.2 = getelementptr double, double* %Packed_MemRef_call2296, i64 %polly.access.add.Packed_MemRef_call2296473.2
  %_p_scalar_475.2 = load double, double* %polly.access.Packed_MemRef_call2296474.2, align 8
  %polly.access.add.Packed_MemRef_call1294481.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1294468.2, %314
  %polly.access.Packed_MemRef_call1294482.2 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294481.2
  %_p_scalar_483.2 = load double, double* %polly.access.Packed_MemRef_call1294482.2, align 8
  %min.iters.check1467 = icmp ult i64 %indvars.iv937.2, 3
  br i1 %min.iters.check1467, label %polly.loop_header462.2.preheader, label %vector.ph1468

vector.ph1468:                                    ; preds = %polly.loop_header456.2
  %n.vec1470 = and i64 %313, -4
  %broadcast.splatinsert1476 = insertelement <4 x double> poison, double %_p_scalar_475.2, i32 0
  %broadcast.splat1477 = shufflevector <4 x double> %broadcast.splatinsert1476, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1479 = insertelement <4 x double> poison, double %_p_scalar_483.2, i32 0
  %broadcast.splat1480 = shufflevector <4 x double> %broadcast.splatinsert1479, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1466

vector.body1466:                                  ; preds = %vector.body1466, %vector.ph1468
  %index1471 = phi i64 [ 0, %vector.ph1468 ], [ %index.next1472, %vector.body1466 ]
  %321 = add nuw nsw i64 %index1471, 64
  %322 = add nuw nsw i64 %index1471, %polly.access.mul.Packed_MemRef_call1294468.2
  %323 = getelementptr double, double* %Packed_MemRef_call1294, i64 %322
  %324 = bitcast double* %323 to <4 x double>*
  %wide.load1475 = load <4 x double>, <4 x double>* %324, align 8
  %325 = fmul fast <4 x double> %broadcast.splat1477, %wide.load1475
  %326 = add nuw nsw i64 %321, %polly.access.mul.Packed_MemRef_call2296472.2
  %327 = getelementptr double, double* %Packed_MemRef_call2296, i64 %326
  %328 = bitcast double* %327 to <4 x double>*
  %wide.load1478 = load <4 x double>, <4 x double>* %328, align 8
  %329 = fmul fast <4 x double> %broadcast.splat1480, %wide.load1478
  %330 = shl i64 %321, 3
  %331 = getelementptr i8, i8* %scevgep484.2, i64 %330
  %332 = bitcast i8* %331 to <4 x double>*
  %wide.load1481 = load <4 x double>, <4 x double>* %332, align 8, !alias.scope !78, !noalias !80
  %333 = fadd fast <4 x double> %329, %325
  %334 = fmul fast <4 x double> %333, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %335 = fadd fast <4 x double> %334, %wide.load1481
  %336 = bitcast i8* %331 to <4 x double>*
  store <4 x double> %335, <4 x double>* %336, align 8, !alias.scope !78, !noalias !80
  %index.next1472 = add i64 %index1471, 4
  %337 = icmp eq i64 %index.next1472, %n.vec1470
  br i1 %337, label %middle.block1464, label %vector.body1466, !llvm.loop !120

middle.block1464:                                 ; preds = %vector.body1466
  %cmp.n1474 = icmp eq i64 %313, %n.vec1470
  br i1 %cmp.n1474, label %polly.loop_exit464.2, label %polly.loop_header462.2.preheader

polly.loop_header462.2.preheader:                 ; preds = %polly.loop_header456.2, %middle.block1464
  %polly.indvar465.2.ph = phi i64 [ 0, %polly.loop_header456.2 ], [ %n.vec1470, %middle.block1464 ]
  br label %polly.loop_header462.2

polly.loop_header462.2:                           ; preds = %polly.loop_header462.2.preheader, %polly.loop_header462.2
  %polly.indvar465.2 = phi i64 [ %polly.indvar_next466.2, %polly.loop_header462.2 ], [ %polly.indvar465.2.ph, %polly.loop_header462.2.preheader ]
  %338 = add nuw nsw i64 %polly.indvar465.2, 64
  %polly.access.add.Packed_MemRef_call1294469.2 = add nuw nsw i64 %polly.indvar465.2, %polly.access.mul.Packed_MemRef_call1294468.2
  %polly.access.Packed_MemRef_call1294470.2 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294469.2
  %_p_scalar_471.2 = load double, double* %polly.access.Packed_MemRef_call1294470.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_475.2, %_p_scalar_471.2
  %polly.access.add.Packed_MemRef_call2296477.2 = add nuw nsw i64 %338, %polly.access.mul.Packed_MemRef_call2296472.2
  %polly.access.Packed_MemRef_call2296478.2 = getelementptr double, double* %Packed_MemRef_call2296, i64 %polly.access.add.Packed_MemRef_call2296477.2
  %_p_scalar_479.2 = load double, double* %polly.access.Packed_MemRef_call2296478.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_483.2, %_p_scalar_479.2
  %339 = shl i64 %338, 3
  %scevgep485.2 = getelementptr i8, i8* %scevgep484.2, i64 %339
  %scevgep485486.2 = bitcast i8* %scevgep485.2 to double*
  %_p_scalar_487.2 = load double, double* %scevgep485486.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_487.2
  store double %p_add42.i79.2, double* %scevgep485486.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next466.2 = add nuw nsw i64 %polly.indvar465.2, 1
  %exitcond946.2.not = icmp eq i64 %polly.indvar465.2, %smin945.2
  br i1 %exitcond946.2.not, label %polly.loop_exit464.2, label %polly.loop_header462.2, !llvm.loop !121

polly.loop_exit464.2:                             ; preds = %polly.loop_header462.2, %middle.block1464
  %polly.indvar_next460.2 = add nuw nsw i64 %polly.indvar459.2, 1
  %exitcond947.2.not = icmp eq i64 %polly.indvar_next460.2, %137
  br i1 %exitcond947.2.not, label %polly.loop_exit458.2, label %polly.loop_header456.2

polly.loop_exit458.2:                             ; preds = %polly.loop_exit464.2
  %polly.indvar_next427.2 = add nuw nsw i64 %polly.indvar426.2, 1
  %indvars.iv.next938.2 = add nuw nsw i64 %indvars.iv937.2, 1
  %exitcond950.2.not = icmp eq i64 %indvars.iv.next938.2, 16
  br i1 %exitcond950.2.not, label %polly.loop_exit425.2, label %polly.loop_header423.2

polly.loop_exit425.2:                             ; preds = %polly.loop_exit458.2
  br i1 %polly.loop_cond416, label %polly.loop_header411, label %polly.exiting292

polly.loop_header622.1:                           ; preds = %polly.loop_exit657, %polly.loop_exit657.1
  %indvars.iv956.1 = phi i64 [ %indvars.iv.next957.1, %polly.loop_exit657.1 ], [ 0, %polly.loop_exit657 ]
  %polly.indvar625.1 = phi i64 [ %polly.indvar_next626.1, %polly.loop_exit657.1 ], [ 32, %polly.loop_exit657 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv956.1, i64 31)
  %340 = add nuw nsw i64 %smin, 1
  %smin964.1 = call i64 @llvm.smin.i64(i64 %indvars.iv956.1, i64 31)
  %341 = add nsw i64 %polly.indvar625.1, -32
  %.not894.1 = icmp ult i64 %polly.indvar625.1, 64
  %polly.access.mul.call1649.1 = mul nuw nsw i64 %polly.indvar625.1, 60
  br i1 %.not894.1, label %polly.loop_header628.us.1, label %polly.loop_header628.1

polly.loop_header628.1:                           ; preds = %polly.loop_header622.1, %polly.then646.1
  %polly.indvar631.1 = phi i64 [ %polly.indvar_next632.1, %polly.then646.1 ], [ 0, %polly.loop_header622.1 ]
  %342 = add nuw nsw i64 %polly.indvar631.1, %172
  %polly.access.mul.Packed_MemRef_call1493.1 = mul nuw nsw i64 %polly.indvar631.1, 80
  br label %polly.loop_header634.1

polly.loop_header634.1:                           ; preds = %polly.loop_header634.1, %polly.loop_header628.1
  %polly.indvar637.1 = phi i64 [ 0, %polly.loop_header628.1 ], [ %polly.indvar_next638.1, %polly.loop_header634.1 ]
  %343 = mul i64 %polly.indvar637.1, 60
  %polly.access.mul.call1641.1 = add i64 %343, 1920
  %polly.access.add.call1642.1 = add nuw nsw i64 %polly.access.mul.call1641.1, %342
  %polly.access.call1643.1 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1642.1
  %polly.access.call1643.load.1 = load double, double* %polly.access.call1643.1, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1493.1 = add nuw nsw i64 %polly.indvar637.1, %polly.access.mul.Packed_MemRef_call1493.1
  %polly.access.Packed_MemRef_call1493.1 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493.1
  store double %polly.access.call1643.load.1, double* %polly.access.Packed_MemRef_call1493.1, align 8
  %polly.indvar_next638.1 = add nuw nsw i64 %polly.indvar637.1, 1
  %exitcond959.1.not = icmp eq i64 %polly.indvar637.1, %smin964.1
  br i1 %exitcond959.1.not, label %polly.then646.1, label %polly.loop_header634.1

polly.then646.1:                                  ; preds = %polly.loop_header634.1
  %polly.access.add.call1650.1 = add nuw nsw i64 %342, %polly.access.mul.call1649.1
  %polly.access.call1651.1 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1650.1
  %polly.access.call1651.load.1 = load double, double* %polly.access.call1651.1, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1493653.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1493.1, %341
  %polly.access.Packed_MemRef_call1493654.1 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493653.1
  store double %polly.access.call1651.load.1, double* %polly.access.Packed_MemRef_call1493654.1, align 8
  %polly.indvar_next632.1 = add nuw nsw i64 %polly.indvar631.1, 1
  %exitcond960.1.not = icmp eq i64 %polly.indvar_next632.1, %173
  br i1 %exitcond960.1.not, label %polly.loop_exit630.1, label %polly.loop_header628.1

polly.loop_header628.us.1:                        ; preds = %polly.loop_header622.1, %polly.merge645.us.1
  %polly.indvar631.us.1 = phi i64 [ %polly.indvar_next632.us.1, %polly.merge645.us.1 ], [ 0, %polly.loop_header622.1 ]
  %344 = add nuw nsw i64 %polly.indvar631.us.1, %172
  %polly.access.mul.Packed_MemRef_call1493.us.1 = mul nuw nsw i64 %polly.indvar631.us.1, 80
  br label %polly.loop_header634.us.1

polly.loop_header634.us.1:                        ; preds = %polly.loop_header634.us.1, %polly.loop_header628.us.1
  %polly.indvar637.us.1 = phi i64 [ 0, %polly.loop_header628.us.1 ], [ %polly.indvar_next638.us.1, %polly.loop_header634.us.1 ]
  %345 = mul i64 %polly.indvar637.us.1, 60
  %polly.access.mul.call1641.us.1 = add i64 %345, 1920
  %polly.access.add.call1642.us.1 = add nuw nsw i64 %polly.access.mul.call1641.us.1, %344
  %polly.access.call1643.us.1 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1642.us.1
  %polly.access.call1643.load.us.1 = load double, double* %polly.access.call1643.us.1, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1493.us.1 = add nuw nsw i64 %polly.indvar637.us.1, %polly.access.mul.Packed_MemRef_call1493.us.1
  %polly.access.Packed_MemRef_call1493.us.1 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493.us.1
  store double %polly.access.call1643.load.us.1, double* %polly.access.Packed_MemRef_call1493.us.1, align 8
  %polly.indvar_next638.us.1 = add nuw nsw i64 %polly.indvar637.us.1, 1
  %exitcond962.1.not = icmp eq i64 %polly.indvar637.us.1, %smin964.1
  br i1 %exitcond962.1.not, label %polly.merge645.us.1, label %polly.loop_header634.us.1

polly.merge645.us.1:                              ; preds = %polly.loop_header634.us.1
  %polly.indvar_next632.us.1 = add nuw nsw i64 %polly.indvar631.us.1, 1
  %exitcond963.1.not = icmp eq i64 %polly.indvar_next632.us.1, %173
  br i1 %exitcond963.1.not, label %polly.loop_exit630.1, label %polly.loop_header628.us.1

polly.loop_exit630.1:                             ; preds = %polly.then646.1, %polly.merge645.us.1
  %346 = mul nuw nsw i64 %polly.indvar625.1, 640
  %scevgep683.1 = getelementptr i8, i8* %call, i64 %346
  br label %polly.loop_header655.1

polly.loop_header655.1:                           ; preds = %polly.loop_exit663.1, %polly.loop_exit630.1
  %polly.indvar658.1 = phi i64 [ 0, %polly.loop_exit630.1 ], [ %polly.indvar_next659.1, %polly.loop_exit663.1 ]
  %polly.access.mul.Packed_MemRef_call1493667.1 = mul nuw nsw i64 %polly.indvar658.1, 80
  %347 = add nuw nsw i64 %polly.indvar658.1, %172
  %polly.access.mul.Packed_MemRef_call2495671.1 = mul nuw nsw i64 %347, 80
  %polly.access.add.Packed_MemRef_call2495672.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2495671.1, %polly.indvar625.1
  %polly.access.Packed_MemRef_call2495673.1 = getelementptr double, double* %Packed_MemRef_call2495, i64 %polly.access.add.Packed_MemRef_call2495672.1
  %_p_scalar_674.1 = load double, double* %polly.access.Packed_MemRef_call2495673.1, align 8
  %polly.access.add.Packed_MemRef_call1493680.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1493667.1, %341
  %polly.access.Packed_MemRef_call1493681.1 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493680.1
  %_p_scalar_682.1 = load double, double* %polly.access.Packed_MemRef_call1493681.1, align 8
  %min.iters.check1404 = icmp ult i64 %smin, 3
  br i1 %min.iters.check1404, label %polly.loop_header661.1.preheader, label %vector.ph1405

vector.ph1405:                                    ; preds = %polly.loop_header655.1
  %n.vec1407 = and i64 %340, 60
  %broadcast.splatinsert1413 = insertelement <4 x double> poison, double %_p_scalar_674.1, i32 0
  %broadcast.splat1414 = shufflevector <4 x double> %broadcast.splatinsert1413, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1416 = insertelement <4 x double> poison, double %_p_scalar_682.1, i32 0
  %broadcast.splat1417 = shufflevector <4 x double> %broadcast.splatinsert1416, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1403

vector.body1403:                                  ; preds = %vector.body1403, %vector.ph1405
  %index1408 = phi i64 [ 0, %vector.ph1405 ], [ %index.next1409, %vector.body1403 ]
  %348 = add nuw nsw i64 %index1408, 32
  %349 = add nuw nsw i64 %index1408, %polly.access.mul.Packed_MemRef_call1493667.1
  %350 = getelementptr double, double* %Packed_MemRef_call1493, i64 %349
  %351 = bitcast double* %350 to <4 x double>*
  %wide.load1412 = load <4 x double>, <4 x double>* %351, align 8
  %352 = fmul fast <4 x double> %broadcast.splat1414, %wide.load1412
  %353 = add nuw nsw i64 %348, %polly.access.mul.Packed_MemRef_call2495671.1
  %354 = getelementptr double, double* %Packed_MemRef_call2495, i64 %353
  %355 = bitcast double* %354 to <4 x double>*
  %wide.load1415 = load <4 x double>, <4 x double>* %355, align 8
  %356 = fmul fast <4 x double> %broadcast.splat1417, %wide.load1415
  %357 = shl i64 %348, 3
  %358 = getelementptr i8, i8* %scevgep683.1, i64 %357
  %359 = bitcast i8* %358 to <4 x double>*
  %wide.load1418 = load <4 x double>, <4 x double>* %359, align 8, !alias.scope !91, !noalias !93
  %360 = fadd fast <4 x double> %356, %352
  %361 = fmul fast <4 x double> %360, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %362 = fadd fast <4 x double> %361, %wide.load1418
  %363 = bitcast i8* %358 to <4 x double>*
  store <4 x double> %362, <4 x double>* %363, align 8, !alias.scope !91, !noalias !93
  %index.next1409 = add i64 %index1408, 4
  %364 = icmp eq i64 %index.next1409, %n.vec1407
  br i1 %364, label %middle.block1401, label %vector.body1403, !llvm.loop !122

middle.block1401:                                 ; preds = %vector.body1403
  %cmp.n1411 = icmp eq i64 %340, %n.vec1407
  br i1 %cmp.n1411, label %polly.loop_exit663.1, label %polly.loop_header661.1.preheader

polly.loop_header661.1.preheader:                 ; preds = %polly.loop_header655.1, %middle.block1401
  %polly.indvar664.1.ph = phi i64 [ 0, %polly.loop_header655.1 ], [ %n.vec1407, %middle.block1401 ]
  br label %polly.loop_header661.1

polly.loop_header661.1:                           ; preds = %polly.loop_header661.1.preheader, %polly.loop_header661.1
  %polly.indvar664.1 = phi i64 [ %polly.indvar_next665.1, %polly.loop_header661.1 ], [ %polly.indvar664.1.ph, %polly.loop_header661.1.preheader ]
  %365 = add nuw nsw i64 %polly.indvar664.1, 32
  %polly.access.add.Packed_MemRef_call1493668.1 = add nuw nsw i64 %polly.indvar664.1, %polly.access.mul.Packed_MemRef_call1493667.1
  %polly.access.Packed_MemRef_call1493669.1 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493668.1
  %_p_scalar_670.1 = load double, double* %polly.access.Packed_MemRef_call1493669.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_674.1, %_p_scalar_670.1
  %polly.access.add.Packed_MemRef_call2495676.1 = add nuw nsw i64 %365, %polly.access.mul.Packed_MemRef_call2495671.1
  %polly.access.Packed_MemRef_call2495677.1 = getelementptr double, double* %Packed_MemRef_call2495, i64 %polly.access.add.Packed_MemRef_call2495676.1
  %_p_scalar_678.1 = load double, double* %polly.access.Packed_MemRef_call2495677.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_682.1, %_p_scalar_678.1
  %366 = shl i64 %365, 3
  %scevgep684.1 = getelementptr i8, i8* %scevgep683.1, i64 %366
  %scevgep684685.1 = bitcast i8* %scevgep684.1 to double*
  %_p_scalar_686.1 = load double, double* %scevgep684685.1, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_686.1
  store double %p_add42.i.1, double* %scevgep684685.1, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next665.1 = add nuw nsw i64 %polly.indvar664.1, 1
  %exitcond965.1.not = icmp eq i64 %polly.indvar664.1, %smin964.1
  br i1 %exitcond965.1.not, label %polly.loop_exit663.1, label %polly.loop_header661.1, !llvm.loop !123

polly.loop_exit663.1:                             ; preds = %polly.loop_header661.1, %middle.block1401
  %polly.indvar_next659.1 = add nuw nsw i64 %polly.indvar658.1, 1
  %exitcond966.1.not = icmp eq i64 %polly.indvar_next659.1, %173
  br i1 %exitcond966.1.not, label %polly.loop_exit657.1, label %polly.loop_header655.1

polly.loop_exit657.1:                             ; preds = %polly.loop_exit663.1
  %polly.indvar_next626.1 = add nuw nsw i64 %polly.indvar625.1, 1
  %indvars.iv.next957.1 = add nuw nsw i64 %indvars.iv956.1, 1
  %exitcond969.1.not = icmp eq i64 %indvars.iv.next957.1, 48
  br i1 %exitcond969.1.not, label %polly.loop_header622.2, label %polly.loop_header622.1

polly.loop_header622.2:                           ; preds = %polly.loop_exit657.1, %polly.loop_exit657.2
  %indvars.iv956.2 = phi i64 [ %indvars.iv.next957.2, %polly.loop_exit657.2 ], [ 0, %polly.loop_exit657.1 ]
  %polly.indvar625.2 = phi i64 [ %polly.indvar_next626.2, %polly.loop_exit657.2 ], [ 64, %polly.loop_exit657.1 ]
  %367 = add nuw i64 %indvars.iv956.2, 1
  %smin964.2 = call i64 @llvm.smin.i64(i64 %indvars.iv956.2, i64 31)
  %368 = add nsw i64 %polly.indvar625.2, -64
  %.not894.2 = icmp ult i64 %polly.indvar625.2, 96
  %polly.access.mul.call1649.2 = mul nuw nsw i64 %polly.indvar625.2, 60
  br i1 %.not894.2, label %polly.loop_header628.us.2, label %polly.loop_header628.2

polly.loop_header628.2:                           ; preds = %polly.loop_header622.2, %polly.then646.2
  %polly.indvar631.2 = phi i64 [ %polly.indvar_next632.2, %polly.then646.2 ], [ 0, %polly.loop_header622.2 ]
  %369 = add nuw nsw i64 %polly.indvar631.2, %172
  %polly.access.mul.Packed_MemRef_call1493.2 = mul nuw nsw i64 %polly.indvar631.2, 80
  br label %polly.loop_header634.2

polly.loop_header634.2:                           ; preds = %polly.loop_header634.2, %polly.loop_header628.2
  %polly.indvar637.2 = phi i64 [ 0, %polly.loop_header628.2 ], [ %polly.indvar_next638.2, %polly.loop_header634.2 ]
  %370 = mul i64 %polly.indvar637.2, 60
  %polly.access.mul.call1641.2 = add i64 %370, 3840
  %polly.access.add.call1642.2 = add nuw nsw i64 %polly.access.mul.call1641.2, %369
  %polly.access.call1643.2 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1642.2
  %polly.access.call1643.load.2 = load double, double* %polly.access.call1643.2, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1493.2 = add nuw nsw i64 %polly.indvar637.2, %polly.access.mul.Packed_MemRef_call1493.2
  %polly.access.Packed_MemRef_call1493.2 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493.2
  store double %polly.access.call1643.load.2, double* %polly.access.Packed_MemRef_call1493.2, align 8
  %polly.indvar_next638.2 = add nuw nsw i64 %polly.indvar637.2, 1
  %exitcond959.2.not = icmp eq i64 %polly.indvar637.2, %smin964.2
  br i1 %exitcond959.2.not, label %polly.then646.2, label %polly.loop_header634.2

polly.then646.2:                                  ; preds = %polly.loop_header634.2
  %polly.access.add.call1650.2 = add nuw nsw i64 %369, %polly.access.mul.call1649.2
  %polly.access.call1651.2 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1650.2
  %polly.access.call1651.load.2 = load double, double* %polly.access.call1651.2, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1493653.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1493.2, %368
  %polly.access.Packed_MemRef_call1493654.2 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493653.2
  store double %polly.access.call1651.load.2, double* %polly.access.Packed_MemRef_call1493654.2, align 8
  %polly.indvar_next632.2 = add nuw nsw i64 %polly.indvar631.2, 1
  %exitcond960.2.not = icmp eq i64 %polly.indvar_next632.2, %173
  br i1 %exitcond960.2.not, label %polly.loop_exit630.2, label %polly.loop_header628.2

polly.loop_header628.us.2:                        ; preds = %polly.loop_header622.2, %polly.merge645.us.2
  %polly.indvar631.us.2 = phi i64 [ %polly.indvar_next632.us.2, %polly.merge645.us.2 ], [ 0, %polly.loop_header622.2 ]
  %371 = add nuw nsw i64 %polly.indvar631.us.2, %172
  %polly.access.mul.Packed_MemRef_call1493.us.2 = mul nuw nsw i64 %polly.indvar631.us.2, 80
  br label %polly.loop_header634.us.2

polly.loop_header634.us.2:                        ; preds = %polly.loop_header634.us.2, %polly.loop_header628.us.2
  %polly.indvar637.us.2 = phi i64 [ 0, %polly.loop_header628.us.2 ], [ %polly.indvar_next638.us.2, %polly.loop_header634.us.2 ]
  %372 = mul i64 %polly.indvar637.us.2, 60
  %polly.access.mul.call1641.us.2 = add i64 %372, 3840
  %polly.access.add.call1642.us.2 = add nuw nsw i64 %polly.access.mul.call1641.us.2, %371
  %polly.access.call1643.us.2 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1642.us.2
  %polly.access.call1643.load.us.2 = load double, double* %polly.access.call1643.us.2, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1493.us.2 = add nuw nsw i64 %polly.indvar637.us.2, %polly.access.mul.Packed_MemRef_call1493.us.2
  %polly.access.Packed_MemRef_call1493.us.2 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493.us.2
  store double %polly.access.call1643.load.us.2, double* %polly.access.Packed_MemRef_call1493.us.2, align 8
  %polly.indvar_next638.us.2 = add nuw nsw i64 %polly.indvar637.us.2, 1
  %exitcond962.2.not = icmp eq i64 %polly.indvar637.us.2, %smin964.2
  br i1 %exitcond962.2.not, label %polly.merge645.us.2, label %polly.loop_header634.us.2

polly.merge645.us.2:                              ; preds = %polly.loop_header634.us.2
  %polly.indvar_next632.us.2 = add nuw nsw i64 %polly.indvar631.us.2, 1
  %exitcond963.2.not = icmp eq i64 %polly.indvar_next632.us.2, %173
  br i1 %exitcond963.2.not, label %polly.loop_exit630.2, label %polly.loop_header628.us.2

polly.loop_exit630.2:                             ; preds = %polly.then646.2, %polly.merge645.us.2
  %373 = mul nuw nsw i64 %polly.indvar625.2, 640
  %scevgep683.2 = getelementptr i8, i8* %call, i64 %373
  br label %polly.loop_header655.2

polly.loop_header655.2:                           ; preds = %polly.loop_exit663.2, %polly.loop_exit630.2
  %polly.indvar658.2 = phi i64 [ 0, %polly.loop_exit630.2 ], [ %polly.indvar_next659.2, %polly.loop_exit663.2 ]
  %polly.access.mul.Packed_MemRef_call1493667.2 = mul nuw nsw i64 %polly.indvar658.2, 80
  %374 = add nuw nsw i64 %polly.indvar658.2, %172
  %polly.access.mul.Packed_MemRef_call2495671.2 = mul nuw nsw i64 %374, 80
  %polly.access.add.Packed_MemRef_call2495672.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2495671.2, %polly.indvar625.2
  %polly.access.Packed_MemRef_call2495673.2 = getelementptr double, double* %Packed_MemRef_call2495, i64 %polly.access.add.Packed_MemRef_call2495672.2
  %_p_scalar_674.2 = load double, double* %polly.access.Packed_MemRef_call2495673.2, align 8
  %polly.access.add.Packed_MemRef_call1493680.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1493667.2, %368
  %polly.access.Packed_MemRef_call1493681.2 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493680.2
  %_p_scalar_682.2 = load double, double* %polly.access.Packed_MemRef_call1493681.2, align 8
  %min.iters.check1386 = icmp ult i64 %indvars.iv956.2, 3
  br i1 %min.iters.check1386, label %polly.loop_header661.2.preheader, label %vector.ph1387

vector.ph1387:                                    ; preds = %polly.loop_header655.2
  %n.vec1389 = and i64 %367, -4
  %broadcast.splatinsert1395 = insertelement <4 x double> poison, double %_p_scalar_674.2, i32 0
  %broadcast.splat1396 = shufflevector <4 x double> %broadcast.splatinsert1395, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1398 = insertelement <4 x double> poison, double %_p_scalar_682.2, i32 0
  %broadcast.splat1399 = shufflevector <4 x double> %broadcast.splatinsert1398, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1385

vector.body1385:                                  ; preds = %vector.body1385, %vector.ph1387
  %index1390 = phi i64 [ 0, %vector.ph1387 ], [ %index.next1391, %vector.body1385 ]
  %375 = add nuw nsw i64 %index1390, 64
  %376 = add nuw nsw i64 %index1390, %polly.access.mul.Packed_MemRef_call1493667.2
  %377 = getelementptr double, double* %Packed_MemRef_call1493, i64 %376
  %378 = bitcast double* %377 to <4 x double>*
  %wide.load1394 = load <4 x double>, <4 x double>* %378, align 8
  %379 = fmul fast <4 x double> %broadcast.splat1396, %wide.load1394
  %380 = add nuw nsw i64 %375, %polly.access.mul.Packed_MemRef_call2495671.2
  %381 = getelementptr double, double* %Packed_MemRef_call2495, i64 %380
  %382 = bitcast double* %381 to <4 x double>*
  %wide.load1397 = load <4 x double>, <4 x double>* %382, align 8
  %383 = fmul fast <4 x double> %broadcast.splat1399, %wide.load1397
  %384 = shl i64 %375, 3
  %385 = getelementptr i8, i8* %scevgep683.2, i64 %384
  %386 = bitcast i8* %385 to <4 x double>*
  %wide.load1400 = load <4 x double>, <4 x double>* %386, align 8, !alias.scope !91, !noalias !93
  %387 = fadd fast <4 x double> %383, %379
  %388 = fmul fast <4 x double> %387, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %389 = fadd fast <4 x double> %388, %wide.load1400
  %390 = bitcast i8* %385 to <4 x double>*
  store <4 x double> %389, <4 x double>* %390, align 8, !alias.scope !91, !noalias !93
  %index.next1391 = add i64 %index1390, 4
  %391 = icmp eq i64 %index.next1391, %n.vec1389
  br i1 %391, label %middle.block1383, label %vector.body1385, !llvm.loop !124

middle.block1383:                                 ; preds = %vector.body1385
  %cmp.n1393 = icmp eq i64 %367, %n.vec1389
  br i1 %cmp.n1393, label %polly.loop_exit663.2, label %polly.loop_header661.2.preheader

polly.loop_header661.2.preheader:                 ; preds = %polly.loop_header655.2, %middle.block1383
  %polly.indvar664.2.ph = phi i64 [ 0, %polly.loop_header655.2 ], [ %n.vec1389, %middle.block1383 ]
  br label %polly.loop_header661.2

polly.loop_header661.2:                           ; preds = %polly.loop_header661.2.preheader, %polly.loop_header661.2
  %polly.indvar664.2 = phi i64 [ %polly.indvar_next665.2, %polly.loop_header661.2 ], [ %polly.indvar664.2.ph, %polly.loop_header661.2.preheader ]
  %392 = add nuw nsw i64 %polly.indvar664.2, 64
  %polly.access.add.Packed_MemRef_call1493668.2 = add nuw nsw i64 %polly.indvar664.2, %polly.access.mul.Packed_MemRef_call1493667.2
  %polly.access.Packed_MemRef_call1493669.2 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493668.2
  %_p_scalar_670.2 = load double, double* %polly.access.Packed_MemRef_call1493669.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_674.2, %_p_scalar_670.2
  %polly.access.add.Packed_MemRef_call2495676.2 = add nuw nsw i64 %392, %polly.access.mul.Packed_MemRef_call2495671.2
  %polly.access.Packed_MemRef_call2495677.2 = getelementptr double, double* %Packed_MemRef_call2495, i64 %polly.access.add.Packed_MemRef_call2495676.2
  %_p_scalar_678.2 = load double, double* %polly.access.Packed_MemRef_call2495677.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_682.2, %_p_scalar_678.2
  %393 = shl i64 %392, 3
  %scevgep684.2 = getelementptr i8, i8* %scevgep683.2, i64 %393
  %scevgep684685.2 = bitcast i8* %scevgep684.2 to double*
  %_p_scalar_686.2 = load double, double* %scevgep684685.2, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_686.2
  store double %p_add42.i.2, double* %scevgep684685.2, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next665.2 = add nuw nsw i64 %polly.indvar664.2, 1
  %exitcond965.2.not = icmp eq i64 %polly.indvar664.2, %smin964.2
  br i1 %exitcond965.2.not, label %polly.loop_exit663.2, label %polly.loop_header661.2, !llvm.loop !125

polly.loop_exit663.2:                             ; preds = %polly.loop_header661.2, %middle.block1383
  %polly.indvar_next659.2 = add nuw nsw i64 %polly.indvar658.2, 1
  %exitcond966.2.not = icmp eq i64 %polly.indvar_next659.2, %173
  br i1 %exitcond966.2.not, label %polly.loop_exit657.2, label %polly.loop_header655.2

polly.loop_exit657.2:                             ; preds = %polly.loop_exit663.2
  %polly.indvar_next626.2 = add nuw nsw i64 %polly.indvar625.2, 1
  %indvars.iv.next957.2 = add nuw nsw i64 %indvars.iv956.2, 1
  %exitcond969.2.not = icmp eq i64 %indvars.iv.next957.2, 16
  br i1 %exitcond969.2.not, label %polly.loop_exit624.2, label %polly.loop_header622.2

polly.loop_exit624.2:                             ; preds = %polly.loop_exit657.2
  br i1 %polly.loop_cond615, label %polly.loop_header610, label %polly.exiting491

polly.loop_header878.1:                           ; preds = %polly.loop_exit886, %polly.loop_exit886.1
  %polly.indvar881.1 = phi i64 [ %polly.indvar_next882.1, %polly.loop_exit886.1 ], [ 0, %polly.loop_exit886 ]
  %394 = mul nuw nsw i64 %polly.indvar881.1, 480
  %395 = trunc i64 %polly.indvar881.1 to i32
  %broadcast.splatinsert1309 = insertelement <4 x i32> poison, i32 %395, i32 0
  %broadcast.splat1310 = shufflevector <4 x i32> %broadcast.splatinsert1309, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1301

vector.body1301:                                  ; preds = %vector.body1301, %polly.loop_header878.1
  %index1303 = phi i64 [ 0, %polly.loop_header878.1 ], [ %index.next1304, %vector.body1301 ]
  %vec.ind1307 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header878.1 ], [ %vec.ind.next1308, %vector.body1301 ]
  %396 = add nuw nsw <4 x i64> %vec.ind1307, <i64 32, i64 32, i64 32, i64 32>
  %397 = trunc <4 x i64> %396 to <4 x i32>
  %398 = mul <4 x i32> %broadcast.splat1310, %397
  %399 = add <4 x i32> %398, <i32 1, i32 1, i32 1, i32 1>
  %400 = urem <4 x i32> %399, <i32 80, i32 80, i32 80, i32 80>
  %401 = sitofp <4 x i32> %400 to <4 x double>
  %402 = fmul fast <4 x double> %401, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %403 = extractelement <4 x i64> %396, i32 0
  %404 = shl i64 %403, 3
  %405 = add i64 %404, %394
  %406 = getelementptr i8, i8* %call1, i64 %405
  %407 = bitcast i8* %406 to <4 x double>*
  store <4 x double> %402, <4 x double>* %407, align 8, !alias.scope !107, !noalias !112
  %index.next1304 = add i64 %index1303, 4
  %vec.ind.next1308 = add <4 x i64> %vec.ind1307, <i64 4, i64 4, i64 4, i64 4>
  %408 = icmp eq i64 %index.next1304, 28
  br i1 %408, label %polly.loop_exit886.1, label %vector.body1301, !llvm.loop !126

polly.loop_exit886.1:                             ; preds = %vector.body1301
  %polly.indvar_next882.1 = add nuw nsw i64 %polly.indvar881.1, 1
  %exitcond979.1.not = icmp eq i64 %polly.indvar_next882.1, 32
  br i1 %exitcond979.1.not, label %polly.loop_header878.11002, label %polly.loop_header878.1

polly.loop_header878.11002:                       ; preds = %polly.loop_exit886.1, %polly.loop_exit886.11013
  %polly.indvar881.11001 = phi i64 [ %polly.indvar_next882.11011, %polly.loop_exit886.11013 ], [ 0, %polly.loop_exit886.1 ]
  %409 = add nuw nsw i64 %polly.indvar881.11001, 32
  %410 = mul nuw nsw i64 %409, 480
  %411 = trunc i64 %409 to i32
  %broadcast.splatinsert1323 = insertelement <4 x i32> poison, i32 %411, i32 0
  %broadcast.splat1324 = shufflevector <4 x i32> %broadcast.splatinsert1323, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1313

vector.body1313:                                  ; preds = %vector.body1313, %polly.loop_header878.11002
  %index1315 = phi i64 [ 0, %polly.loop_header878.11002 ], [ %index.next1316, %vector.body1313 ]
  %vec.ind1321 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header878.11002 ], [ %vec.ind.next1322, %vector.body1313 ]
  %412 = mul <4 x i32> %vec.ind1321, %broadcast.splat1324
  %413 = add <4 x i32> %412, <i32 1, i32 1, i32 1, i32 1>
  %414 = urem <4 x i32> %413, <i32 80, i32 80, i32 80, i32 80>
  %415 = sitofp <4 x i32> %414 to <4 x double>
  %416 = fmul fast <4 x double> %415, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %417 = shl i64 %index1315, 3
  %418 = add i64 %417, %410
  %419 = getelementptr i8, i8* %call1, i64 %418
  %420 = bitcast i8* %419 to <4 x double>*
  store <4 x double> %416, <4 x double>* %420, align 8, !alias.scope !107, !noalias !112
  %index.next1316 = add i64 %index1315, 4
  %vec.ind.next1322 = add <4 x i32> %vec.ind1321, <i32 4, i32 4, i32 4, i32 4>
  %421 = icmp eq i64 %index.next1316, 32
  br i1 %421, label %polly.loop_exit886.11013, label %vector.body1313, !llvm.loop !127

polly.loop_exit886.11013:                         ; preds = %vector.body1313
  %polly.indvar_next882.11011 = add nuw nsw i64 %polly.indvar881.11001, 1
  %exitcond979.11012.not = icmp eq i64 %polly.indvar_next882.11011, 32
  br i1 %exitcond979.11012.not, label %polly.loop_header878.1.1, label %polly.loop_header878.11002

polly.loop_header878.1.1:                         ; preds = %polly.loop_exit886.11013, %polly.loop_exit886.1.1
  %polly.indvar881.1.1 = phi i64 [ %polly.indvar_next882.1.1, %polly.loop_exit886.1.1 ], [ 0, %polly.loop_exit886.11013 ]
  %422 = add nuw nsw i64 %polly.indvar881.1.1, 32
  %423 = mul nuw nsw i64 %422, 480
  %424 = trunc i64 %422 to i32
  %broadcast.splatinsert1335 = insertelement <4 x i32> poison, i32 %424, i32 0
  %broadcast.splat1336 = shufflevector <4 x i32> %broadcast.splatinsert1335, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1327

vector.body1327:                                  ; preds = %vector.body1327, %polly.loop_header878.1.1
  %index1329 = phi i64 [ 0, %polly.loop_header878.1.1 ], [ %index.next1330, %vector.body1327 ]
  %vec.ind1333 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header878.1.1 ], [ %vec.ind.next1334, %vector.body1327 ]
  %425 = add nuw nsw <4 x i64> %vec.ind1333, <i64 32, i64 32, i64 32, i64 32>
  %426 = trunc <4 x i64> %425 to <4 x i32>
  %427 = mul <4 x i32> %broadcast.splat1336, %426
  %428 = add <4 x i32> %427, <i32 1, i32 1, i32 1, i32 1>
  %429 = urem <4 x i32> %428, <i32 80, i32 80, i32 80, i32 80>
  %430 = sitofp <4 x i32> %429 to <4 x double>
  %431 = fmul fast <4 x double> %430, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %432 = extractelement <4 x i64> %425, i32 0
  %433 = shl i64 %432, 3
  %434 = add i64 %433, %423
  %435 = getelementptr i8, i8* %call1, i64 %434
  %436 = bitcast i8* %435 to <4 x double>*
  store <4 x double> %431, <4 x double>* %436, align 8, !alias.scope !107, !noalias !112
  %index.next1330 = add i64 %index1329, 4
  %vec.ind.next1334 = add <4 x i64> %vec.ind1333, <i64 4, i64 4, i64 4, i64 4>
  %437 = icmp eq i64 %index.next1330, 28
  br i1 %437, label %polly.loop_exit886.1.1, label %vector.body1327, !llvm.loop !128

polly.loop_exit886.1.1:                           ; preds = %vector.body1327
  %polly.indvar_next882.1.1 = add nuw nsw i64 %polly.indvar881.1.1, 1
  %exitcond979.1.1.not = icmp eq i64 %polly.indvar_next882.1.1, 32
  br i1 %exitcond979.1.1.not, label %polly.loop_header878.2, label %polly.loop_header878.1.1

polly.loop_header878.2:                           ; preds = %polly.loop_exit886.1.1, %polly.loop_exit886.2
  %polly.indvar881.2 = phi i64 [ %polly.indvar_next882.2, %polly.loop_exit886.2 ], [ 0, %polly.loop_exit886.1.1 ]
  %438 = add nuw nsw i64 %polly.indvar881.2, 64
  %439 = mul nuw nsw i64 %438, 480
  %440 = trunc i64 %438 to i32
  %broadcast.splatinsert1349 = insertelement <4 x i32> poison, i32 %440, i32 0
  %broadcast.splat1350 = shufflevector <4 x i32> %broadcast.splatinsert1349, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1339

vector.body1339:                                  ; preds = %vector.body1339, %polly.loop_header878.2
  %index1341 = phi i64 [ 0, %polly.loop_header878.2 ], [ %index.next1342, %vector.body1339 ]
  %vec.ind1347 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header878.2 ], [ %vec.ind.next1348, %vector.body1339 ]
  %441 = mul <4 x i32> %vec.ind1347, %broadcast.splat1350
  %442 = add <4 x i32> %441, <i32 1, i32 1, i32 1, i32 1>
  %443 = urem <4 x i32> %442, <i32 80, i32 80, i32 80, i32 80>
  %444 = sitofp <4 x i32> %443 to <4 x double>
  %445 = fmul fast <4 x double> %444, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %446 = shl i64 %index1341, 3
  %447 = add i64 %446, %439
  %448 = getelementptr i8, i8* %call1, i64 %447
  %449 = bitcast i8* %448 to <4 x double>*
  store <4 x double> %445, <4 x double>* %449, align 8, !alias.scope !107, !noalias !112
  %index.next1342 = add i64 %index1341, 4
  %vec.ind.next1348 = add <4 x i32> %vec.ind1347, <i32 4, i32 4, i32 4, i32 4>
  %450 = icmp eq i64 %index.next1342, 32
  br i1 %450, label %polly.loop_exit886.2, label %vector.body1339, !llvm.loop !129

polly.loop_exit886.2:                             ; preds = %vector.body1339
  %polly.indvar_next882.2 = add nuw nsw i64 %polly.indvar881.2, 1
  %exitcond979.2.not = icmp eq i64 %polly.indvar_next882.2, 16
  br i1 %exitcond979.2.not, label %polly.loop_header878.1.2, label %polly.loop_header878.2

polly.loop_header878.1.2:                         ; preds = %polly.loop_exit886.2, %polly.loop_exit886.1.2
  %polly.indvar881.1.2 = phi i64 [ %polly.indvar_next882.1.2, %polly.loop_exit886.1.2 ], [ 0, %polly.loop_exit886.2 ]
  %451 = add nuw nsw i64 %polly.indvar881.1.2, 64
  %452 = mul nuw nsw i64 %451, 480
  %453 = trunc i64 %451 to i32
  %broadcast.splatinsert1361 = insertelement <4 x i32> poison, i32 %453, i32 0
  %broadcast.splat1362 = shufflevector <4 x i32> %broadcast.splatinsert1361, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1353

vector.body1353:                                  ; preds = %vector.body1353, %polly.loop_header878.1.2
  %index1355 = phi i64 [ 0, %polly.loop_header878.1.2 ], [ %index.next1356, %vector.body1353 ]
  %vec.ind1359 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header878.1.2 ], [ %vec.ind.next1360, %vector.body1353 ]
  %454 = add nuw nsw <4 x i64> %vec.ind1359, <i64 32, i64 32, i64 32, i64 32>
  %455 = trunc <4 x i64> %454 to <4 x i32>
  %456 = mul <4 x i32> %broadcast.splat1362, %455
  %457 = add <4 x i32> %456, <i32 1, i32 1, i32 1, i32 1>
  %458 = urem <4 x i32> %457, <i32 80, i32 80, i32 80, i32 80>
  %459 = sitofp <4 x i32> %458 to <4 x double>
  %460 = fmul fast <4 x double> %459, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %461 = extractelement <4 x i64> %454, i32 0
  %462 = shl i64 %461, 3
  %463 = add i64 %462, %452
  %464 = getelementptr i8, i8* %call1, i64 %463
  %465 = bitcast i8* %464 to <4 x double>*
  store <4 x double> %460, <4 x double>* %465, align 8, !alias.scope !107, !noalias !112
  %index.next1356 = add i64 %index1355, 4
  %vec.ind.next1360 = add <4 x i64> %vec.ind1359, <i64 4, i64 4, i64 4, i64 4>
  %466 = icmp eq i64 %index.next1356, 28
  br i1 %466, label %polly.loop_exit886.1.2, label %vector.body1353, !llvm.loop !130

polly.loop_exit886.1.2:                           ; preds = %vector.body1353
  %polly.indvar_next882.1.2 = add nuw nsw i64 %polly.indvar881.1.2, 1
  %exitcond979.1.2.not = icmp eq i64 %polly.indvar_next882.1.2, 16
  br i1 %exitcond979.1.2.not, label %init_array.exit, label %polly.loop_header878.1.2

polly.loop_header852.1:                           ; preds = %polly.loop_exit860, %polly.loop_exit860.1
  %polly.indvar855.1 = phi i64 [ %polly.indvar_next856.1, %polly.loop_exit860.1 ], [ 0, %polly.loop_exit860 ]
  %467 = mul nuw nsw i64 %polly.indvar855.1, 480
  %468 = trunc i64 %polly.indvar855.1 to i32
  %broadcast.splatinsert1231 = insertelement <4 x i32> poison, i32 %468, i32 0
  %broadcast.splat1232 = shufflevector <4 x i32> %broadcast.splatinsert1231, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1223

vector.body1223:                                  ; preds = %vector.body1223, %polly.loop_header852.1
  %index1225 = phi i64 [ 0, %polly.loop_header852.1 ], [ %index.next1226, %vector.body1223 ]
  %vec.ind1229 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header852.1 ], [ %vec.ind.next1230, %vector.body1223 ]
  %469 = add nuw nsw <4 x i64> %vec.ind1229, <i64 32, i64 32, i64 32, i64 32>
  %470 = trunc <4 x i64> %469 to <4 x i32>
  %471 = mul <4 x i32> %broadcast.splat1232, %470
  %472 = add <4 x i32> %471, <i32 2, i32 2, i32 2, i32 2>
  %473 = urem <4 x i32> %472, <i32 60, i32 60, i32 60, i32 60>
  %474 = sitofp <4 x i32> %473 to <4 x double>
  %475 = fmul fast <4 x double> %474, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %476 = extractelement <4 x i64> %469, i32 0
  %477 = shl i64 %476, 3
  %478 = add i64 %477, %467
  %479 = getelementptr i8, i8* %call2, i64 %478
  %480 = bitcast i8* %479 to <4 x double>*
  store <4 x double> %475, <4 x double>* %480, align 8, !alias.scope !108, !noalias !110
  %index.next1226 = add i64 %index1225, 4
  %vec.ind.next1230 = add <4 x i64> %vec.ind1229, <i64 4, i64 4, i64 4, i64 4>
  %481 = icmp eq i64 %index.next1226, 28
  br i1 %481, label %polly.loop_exit860.1, label %vector.body1223, !llvm.loop !131

polly.loop_exit860.1:                             ; preds = %vector.body1223
  %polly.indvar_next856.1 = add nuw nsw i64 %polly.indvar855.1, 1
  %exitcond985.1.not = icmp eq i64 %polly.indvar_next856.1, 32
  br i1 %exitcond985.1.not, label %polly.loop_header852.11016, label %polly.loop_header852.1

polly.loop_header852.11016:                       ; preds = %polly.loop_exit860.1, %polly.loop_exit860.11027
  %polly.indvar855.11015 = phi i64 [ %polly.indvar_next856.11025, %polly.loop_exit860.11027 ], [ 0, %polly.loop_exit860.1 ]
  %482 = add nuw nsw i64 %polly.indvar855.11015, 32
  %483 = mul nuw nsw i64 %482, 480
  %484 = trunc i64 %482 to i32
  %broadcast.splatinsert1245 = insertelement <4 x i32> poison, i32 %484, i32 0
  %broadcast.splat1246 = shufflevector <4 x i32> %broadcast.splatinsert1245, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1235

vector.body1235:                                  ; preds = %vector.body1235, %polly.loop_header852.11016
  %index1237 = phi i64 [ 0, %polly.loop_header852.11016 ], [ %index.next1238, %vector.body1235 ]
  %vec.ind1243 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header852.11016 ], [ %vec.ind.next1244, %vector.body1235 ]
  %485 = mul <4 x i32> %vec.ind1243, %broadcast.splat1246
  %486 = add <4 x i32> %485, <i32 2, i32 2, i32 2, i32 2>
  %487 = urem <4 x i32> %486, <i32 60, i32 60, i32 60, i32 60>
  %488 = sitofp <4 x i32> %487 to <4 x double>
  %489 = fmul fast <4 x double> %488, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %490 = shl i64 %index1237, 3
  %491 = add i64 %490, %483
  %492 = getelementptr i8, i8* %call2, i64 %491
  %493 = bitcast i8* %492 to <4 x double>*
  store <4 x double> %489, <4 x double>* %493, align 8, !alias.scope !108, !noalias !110
  %index.next1238 = add i64 %index1237, 4
  %vec.ind.next1244 = add <4 x i32> %vec.ind1243, <i32 4, i32 4, i32 4, i32 4>
  %494 = icmp eq i64 %index.next1238, 32
  br i1 %494, label %polly.loop_exit860.11027, label %vector.body1235, !llvm.loop !132

polly.loop_exit860.11027:                         ; preds = %vector.body1235
  %polly.indvar_next856.11025 = add nuw nsw i64 %polly.indvar855.11015, 1
  %exitcond985.11026.not = icmp eq i64 %polly.indvar_next856.11025, 32
  br i1 %exitcond985.11026.not, label %polly.loop_header852.1.1, label %polly.loop_header852.11016

polly.loop_header852.1.1:                         ; preds = %polly.loop_exit860.11027, %polly.loop_exit860.1.1
  %polly.indvar855.1.1 = phi i64 [ %polly.indvar_next856.1.1, %polly.loop_exit860.1.1 ], [ 0, %polly.loop_exit860.11027 ]
  %495 = add nuw nsw i64 %polly.indvar855.1.1, 32
  %496 = mul nuw nsw i64 %495, 480
  %497 = trunc i64 %495 to i32
  %broadcast.splatinsert1257 = insertelement <4 x i32> poison, i32 %497, i32 0
  %broadcast.splat1258 = shufflevector <4 x i32> %broadcast.splatinsert1257, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1249

vector.body1249:                                  ; preds = %vector.body1249, %polly.loop_header852.1.1
  %index1251 = phi i64 [ 0, %polly.loop_header852.1.1 ], [ %index.next1252, %vector.body1249 ]
  %vec.ind1255 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header852.1.1 ], [ %vec.ind.next1256, %vector.body1249 ]
  %498 = add nuw nsw <4 x i64> %vec.ind1255, <i64 32, i64 32, i64 32, i64 32>
  %499 = trunc <4 x i64> %498 to <4 x i32>
  %500 = mul <4 x i32> %broadcast.splat1258, %499
  %501 = add <4 x i32> %500, <i32 2, i32 2, i32 2, i32 2>
  %502 = urem <4 x i32> %501, <i32 60, i32 60, i32 60, i32 60>
  %503 = sitofp <4 x i32> %502 to <4 x double>
  %504 = fmul fast <4 x double> %503, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %505 = extractelement <4 x i64> %498, i32 0
  %506 = shl i64 %505, 3
  %507 = add i64 %506, %496
  %508 = getelementptr i8, i8* %call2, i64 %507
  %509 = bitcast i8* %508 to <4 x double>*
  store <4 x double> %504, <4 x double>* %509, align 8, !alias.scope !108, !noalias !110
  %index.next1252 = add i64 %index1251, 4
  %vec.ind.next1256 = add <4 x i64> %vec.ind1255, <i64 4, i64 4, i64 4, i64 4>
  %510 = icmp eq i64 %index.next1252, 28
  br i1 %510, label %polly.loop_exit860.1.1, label %vector.body1249, !llvm.loop !133

polly.loop_exit860.1.1:                           ; preds = %vector.body1249
  %polly.indvar_next856.1.1 = add nuw nsw i64 %polly.indvar855.1.1, 1
  %exitcond985.1.1.not = icmp eq i64 %polly.indvar_next856.1.1, 32
  br i1 %exitcond985.1.1.not, label %polly.loop_header852.2, label %polly.loop_header852.1.1

polly.loop_header852.2:                           ; preds = %polly.loop_exit860.1.1, %polly.loop_exit860.2
  %polly.indvar855.2 = phi i64 [ %polly.indvar_next856.2, %polly.loop_exit860.2 ], [ 0, %polly.loop_exit860.1.1 ]
  %511 = add nuw nsw i64 %polly.indvar855.2, 64
  %512 = mul nuw nsw i64 %511, 480
  %513 = trunc i64 %511 to i32
  %broadcast.splatinsert1271 = insertelement <4 x i32> poison, i32 %513, i32 0
  %broadcast.splat1272 = shufflevector <4 x i32> %broadcast.splatinsert1271, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1261

vector.body1261:                                  ; preds = %vector.body1261, %polly.loop_header852.2
  %index1263 = phi i64 [ 0, %polly.loop_header852.2 ], [ %index.next1264, %vector.body1261 ]
  %vec.ind1269 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header852.2 ], [ %vec.ind.next1270, %vector.body1261 ]
  %514 = mul <4 x i32> %vec.ind1269, %broadcast.splat1272
  %515 = add <4 x i32> %514, <i32 2, i32 2, i32 2, i32 2>
  %516 = urem <4 x i32> %515, <i32 60, i32 60, i32 60, i32 60>
  %517 = sitofp <4 x i32> %516 to <4 x double>
  %518 = fmul fast <4 x double> %517, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %519 = shl i64 %index1263, 3
  %520 = add i64 %519, %512
  %521 = getelementptr i8, i8* %call2, i64 %520
  %522 = bitcast i8* %521 to <4 x double>*
  store <4 x double> %518, <4 x double>* %522, align 8, !alias.scope !108, !noalias !110
  %index.next1264 = add i64 %index1263, 4
  %vec.ind.next1270 = add <4 x i32> %vec.ind1269, <i32 4, i32 4, i32 4, i32 4>
  %523 = icmp eq i64 %index.next1264, 32
  br i1 %523, label %polly.loop_exit860.2, label %vector.body1261, !llvm.loop !134

polly.loop_exit860.2:                             ; preds = %vector.body1261
  %polly.indvar_next856.2 = add nuw nsw i64 %polly.indvar855.2, 1
  %exitcond985.2.not = icmp eq i64 %polly.indvar_next856.2, 16
  br i1 %exitcond985.2.not, label %polly.loop_header852.1.2, label %polly.loop_header852.2

polly.loop_header852.1.2:                         ; preds = %polly.loop_exit860.2, %polly.loop_exit860.1.2
  %polly.indvar855.1.2 = phi i64 [ %polly.indvar_next856.1.2, %polly.loop_exit860.1.2 ], [ 0, %polly.loop_exit860.2 ]
  %524 = add nuw nsw i64 %polly.indvar855.1.2, 64
  %525 = mul nuw nsw i64 %524, 480
  %526 = trunc i64 %524 to i32
  %broadcast.splatinsert1283 = insertelement <4 x i32> poison, i32 %526, i32 0
  %broadcast.splat1284 = shufflevector <4 x i32> %broadcast.splatinsert1283, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1275

vector.body1275:                                  ; preds = %vector.body1275, %polly.loop_header852.1.2
  %index1277 = phi i64 [ 0, %polly.loop_header852.1.2 ], [ %index.next1278, %vector.body1275 ]
  %vec.ind1281 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header852.1.2 ], [ %vec.ind.next1282, %vector.body1275 ]
  %527 = add nuw nsw <4 x i64> %vec.ind1281, <i64 32, i64 32, i64 32, i64 32>
  %528 = trunc <4 x i64> %527 to <4 x i32>
  %529 = mul <4 x i32> %broadcast.splat1284, %528
  %530 = add <4 x i32> %529, <i32 2, i32 2, i32 2, i32 2>
  %531 = urem <4 x i32> %530, <i32 60, i32 60, i32 60, i32 60>
  %532 = sitofp <4 x i32> %531 to <4 x double>
  %533 = fmul fast <4 x double> %532, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %534 = extractelement <4 x i64> %527, i32 0
  %535 = shl i64 %534, 3
  %536 = add i64 %535, %525
  %537 = getelementptr i8, i8* %call2, i64 %536
  %538 = bitcast i8* %537 to <4 x double>*
  store <4 x double> %533, <4 x double>* %538, align 8, !alias.scope !108, !noalias !110
  %index.next1278 = add i64 %index1277, 4
  %vec.ind.next1282 = add <4 x i64> %vec.ind1281, <i64 4, i64 4, i64 4, i64 4>
  %539 = icmp eq i64 %index.next1278, 28
  br i1 %539, label %polly.loop_exit860.1.2, label %vector.body1275, !llvm.loop !135

polly.loop_exit860.1.2:                           ; preds = %vector.body1275
  %polly.indvar_next856.1.2 = add nuw nsw i64 %polly.indvar855.1.2, 1
  %exitcond985.1.2.not = icmp eq i64 %polly.indvar_next856.1.2, 16
  br i1 %exitcond985.1.2.not, label %polly.loop_header878, label %polly.loop_header852.1.2

polly.loop_header825.1:                           ; preds = %polly.loop_exit833, %polly.loop_exit833.1
  %polly.indvar828.1 = phi i64 [ %polly.indvar_next829.1, %polly.loop_exit833.1 ], [ 0, %polly.loop_exit833 ]
  %540 = mul nuw nsw i64 %polly.indvar828.1, 640
  %541 = trunc i64 %polly.indvar828.1 to i32
  %broadcast.splatinsert1117 = insertelement <4 x i32> poison, i32 %541, i32 0
  %broadcast.splat1118 = shufflevector <4 x i32> %broadcast.splatinsert1117, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1109

vector.body1109:                                  ; preds = %vector.body1109, %polly.loop_header825.1
  %index1111 = phi i64 [ 0, %polly.loop_header825.1 ], [ %index.next1112, %vector.body1109 ]
  %vec.ind1115 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.1 ], [ %vec.ind.next1116, %vector.body1109 ]
  %542 = add nuw nsw <4 x i64> %vec.ind1115, <i64 32, i64 32, i64 32, i64 32>
  %543 = trunc <4 x i64> %542 to <4 x i32>
  %544 = mul <4 x i32> %broadcast.splat1118, %543
  %545 = add <4 x i32> %544, <i32 3, i32 3, i32 3, i32 3>
  %546 = urem <4 x i32> %545, <i32 80, i32 80, i32 80, i32 80>
  %547 = sitofp <4 x i32> %546 to <4 x double>
  %548 = fmul fast <4 x double> %547, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %549 = extractelement <4 x i64> %542, i32 0
  %550 = shl i64 %549, 3
  %551 = add nuw nsw i64 %550, %540
  %552 = getelementptr i8, i8* %call, i64 %551
  %553 = bitcast i8* %552 to <4 x double>*
  store <4 x double> %548, <4 x double>* %553, align 8, !alias.scope !104, !noalias !106
  %index.next1112 = add i64 %index1111, 4
  %vec.ind.next1116 = add <4 x i64> %vec.ind1115, <i64 4, i64 4, i64 4, i64 4>
  %554 = icmp eq i64 %index.next1112, 32
  br i1 %554, label %polly.loop_exit833.1, label %vector.body1109, !llvm.loop !136

polly.loop_exit833.1:                             ; preds = %vector.body1109
  %polly.indvar_next829.1 = add nuw nsw i64 %polly.indvar828.1, 1
  %exitcond994.1.not = icmp eq i64 %polly.indvar_next829.1, 32
  br i1 %exitcond994.1.not, label %polly.loop_header825.2, label %polly.loop_header825.1

polly.loop_header825.2:                           ; preds = %polly.loop_exit833.1, %polly.loop_exit833.2
  %polly.indvar828.2 = phi i64 [ %polly.indvar_next829.2, %polly.loop_exit833.2 ], [ 0, %polly.loop_exit833.1 ]
  %555 = mul nuw nsw i64 %polly.indvar828.2, 640
  %556 = trunc i64 %polly.indvar828.2 to i32
  %broadcast.splatinsert1129 = insertelement <4 x i32> poison, i32 %556, i32 0
  %broadcast.splat1130 = shufflevector <4 x i32> %broadcast.splatinsert1129, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1121

vector.body1121:                                  ; preds = %vector.body1121, %polly.loop_header825.2
  %index1123 = phi i64 [ 0, %polly.loop_header825.2 ], [ %index.next1124, %vector.body1121 ]
  %vec.ind1127 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.2 ], [ %vec.ind.next1128, %vector.body1121 ]
  %557 = add nuw nsw <4 x i64> %vec.ind1127, <i64 64, i64 64, i64 64, i64 64>
  %558 = trunc <4 x i64> %557 to <4 x i32>
  %559 = mul <4 x i32> %broadcast.splat1130, %558
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
  %index.next1124 = add i64 %index1123, 4
  %vec.ind.next1128 = add <4 x i64> %vec.ind1127, <i64 4, i64 4, i64 4, i64 4>
  %569 = icmp eq i64 %index.next1124, 16
  br i1 %569, label %polly.loop_exit833.2, label %vector.body1121, !llvm.loop !137

polly.loop_exit833.2:                             ; preds = %vector.body1121
  %polly.indvar_next829.2 = add nuw nsw i64 %polly.indvar828.2, 1
  %exitcond994.2.not = icmp eq i64 %polly.indvar_next829.2, 32
  br i1 %exitcond994.2.not, label %polly.loop_header825.11030, label %polly.loop_header825.2

polly.loop_header825.11030:                       ; preds = %polly.loop_exit833.2, %polly.loop_exit833.11041
  %polly.indvar828.11029 = phi i64 [ %polly.indvar_next829.11039, %polly.loop_exit833.11041 ], [ 0, %polly.loop_exit833.2 ]
  %570 = add nuw nsw i64 %polly.indvar828.11029, 32
  %571 = mul nuw nsw i64 %570, 640
  %572 = trunc i64 %570 to i32
  %broadcast.splatinsert1143 = insertelement <4 x i32> poison, i32 %572, i32 0
  %broadcast.splat1144 = shufflevector <4 x i32> %broadcast.splatinsert1143, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1133

vector.body1133:                                  ; preds = %vector.body1133, %polly.loop_header825.11030
  %index1135 = phi i64 [ 0, %polly.loop_header825.11030 ], [ %index.next1136, %vector.body1133 ]
  %vec.ind1141 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header825.11030 ], [ %vec.ind.next1142, %vector.body1133 ]
  %573 = mul <4 x i32> %vec.ind1141, %broadcast.splat1144
  %574 = add <4 x i32> %573, <i32 3, i32 3, i32 3, i32 3>
  %575 = urem <4 x i32> %574, <i32 80, i32 80, i32 80, i32 80>
  %576 = sitofp <4 x i32> %575 to <4 x double>
  %577 = fmul fast <4 x double> %576, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %578 = shl i64 %index1135, 3
  %579 = add nuw nsw i64 %578, %571
  %580 = getelementptr i8, i8* %call, i64 %579
  %581 = bitcast i8* %580 to <4 x double>*
  store <4 x double> %577, <4 x double>* %581, align 8, !alias.scope !104, !noalias !106
  %index.next1136 = add i64 %index1135, 4
  %vec.ind.next1142 = add <4 x i32> %vec.ind1141, <i32 4, i32 4, i32 4, i32 4>
  %582 = icmp eq i64 %index.next1136, 32
  br i1 %582, label %polly.loop_exit833.11041, label %vector.body1133, !llvm.loop !138

polly.loop_exit833.11041:                         ; preds = %vector.body1133
  %polly.indvar_next829.11039 = add nuw nsw i64 %polly.indvar828.11029, 1
  %exitcond994.11040.not = icmp eq i64 %polly.indvar_next829.11039, 32
  br i1 %exitcond994.11040.not, label %polly.loop_header825.1.1, label %polly.loop_header825.11030

polly.loop_header825.1.1:                         ; preds = %polly.loop_exit833.11041, %polly.loop_exit833.1.1
  %polly.indvar828.1.1 = phi i64 [ %polly.indvar_next829.1.1, %polly.loop_exit833.1.1 ], [ 0, %polly.loop_exit833.11041 ]
  %583 = add nuw nsw i64 %polly.indvar828.1.1, 32
  %584 = mul nuw nsw i64 %583, 640
  %585 = trunc i64 %583 to i32
  %broadcast.splatinsert1155 = insertelement <4 x i32> poison, i32 %585, i32 0
  %broadcast.splat1156 = shufflevector <4 x i32> %broadcast.splatinsert1155, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1147

vector.body1147:                                  ; preds = %vector.body1147, %polly.loop_header825.1.1
  %index1149 = phi i64 [ 0, %polly.loop_header825.1.1 ], [ %index.next1150, %vector.body1147 ]
  %vec.ind1153 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.1.1 ], [ %vec.ind.next1154, %vector.body1147 ]
  %586 = add nuw nsw <4 x i64> %vec.ind1153, <i64 32, i64 32, i64 32, i64 32>
  %587 = trunc <4 x i64> %586 to <4 x i32>
  %588 = mul <4 x i32> %broadcast.splat1156, %587
  %589 = add <4 x i32> %588, <i32 3, i32 3, i32 3, i32 3>
  %590 = urem <4 x i32> %589, <i32 80, i32 80, i32 80, i32 80>
  %591 = sitofp <4 x i32> %590 to <4 x double>
  %592 = fmul fast <4 x double> %591, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %593 = extractelement <4 x i64> %586, i32 0
  %594 = shl i64 %593, 3
  %595 = add nuw nsw i64 %594, %584
  %596 = getelementptr i8, i8* %call, i64 %595
  %597 = bitcast i8* %596 to <4 x double>*
  store <4 x double> %592, <4 x double>* %597, align 8, !alias.scope !104, !noalias !106
  %index.next1150 = add i64 %index1149, 4
  %vec.ind.next1154 = add <4 x i64> %vec.ind1153, <i64 4, i64 4, i64 4, i64 4>
  %598 = icmp eq i64 %index.next1150, 32
  br i1 %598, label %polly.loop_exit833.1.1, label %vector.body1147, !llvm.loop !139

polly.loop_exit833.1.1:                           ; preds = %vector.body1147
  %polly.indvar_next829.1.1 = add nuw nsw i64 %polly.indvar828.1.1, 1
  %exitcond994.1.1.not = icmp eq i64 %polly.indvar_next829.1.1, 32
  br i1 %exitcond994.1.1.not, label %polly.loop_header825.2.1, label %polly.loop_header825.1.1

polly.loop_header825.2.1:                         ; preds = %polly.loop_exit833.1.1, %polly.loop_exit833.2.1
  %polly.indvar828.2.1 = phi i64 [ %polly.indvar_next829.2.1, %polly.loop_exit833.2.1 ], [ 0, %polly.loop_exit833.1.1 ]
  %599 = add nuw nsw i64 %polly.indvar828.2.1, 32
  %600 = mul nuw nsw i64 %599, 640
  %601 = trunc i64 %599 to i32
  %broadcast.splatinsert1167 = insertelement <4 x i32> poison, i32 %601, i32 0
  %broadcast.splat1168 = shufflevector <4 x i32> %broadcast.splatinsert1167, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1159

vector.body1159:                                  ; preds = %vector.body1159, %polly.loop_header825.2.1
  %index1161 = phi i64 [ 0, %polly.loop_header825.2.1 ], [ %index.next1162, %vector.body1159 ]
  %vec.ind1165 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.2.1 ], [ %vec.ind.next1166, %vector.body1159 ]
  %602 = add nuw nsw <4 x i64> %vec.ind1165, <i64 64, i64 64, i64 64, i64 64>
  %603 = trunc <4 x i64> %602 to <4 x i32>
  %604 = mul <4 x i32> %broadcast.splat1168, %603
  %605 = add <4 x i32> %604, <i32 3, i32 3, i32 3, i32 3>
  %606 = urem <4 x i32> %605, <i32 80, i32 80, i32 80, i32 80>
  %607 = sitofp <4 x i32> %606 to <4 x double>
  %608 = fmul fast <4 x double> %607, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %609 = extractelement <4 x i64> %602, i32 0
  %610 = shl i64 %609, 3
  %611 = add nuw nsw i64 %610, %600
  %612 = getelementptr i8, i8* %call, i64 %611
  %613 = bitcast i8* %612 to <4 x double>*
  store <4 x double> %608, <4 x double>* %613, align 8, !alias.scope !104, !noalias !106
  %index.next1162 = add i64 %index1161, 4
  %vec.ind.next1166 = add <4 x i64> %vec.ind1165, <i64 4, i64 4, i64 4, i64 4>
  %614 = icmp eq i64 %index.next1162, 16
  br i1 %614, label %polly.loop_exit833.2.1, label %vector.body1159, !llvm.loop !140

polly.loop_exit833.2.1:                           ; preds = %vector.body1159
  %polly.indvar_next829.2.1 = add nuw nsw i64 %polly.indvar828.2.1, 1
  %exitcond994.2.1.not = icmp eq i64 %polly.indvar_next829.2.1, 32
  br i1 %exitcond994.2.1.not, label %polly.loop_header825.21044, label %polly.loop_header825.2.1

polly.loop_header825.21044:                       ; preds = %polly.loop_exit833.2.1, %polly.loop_exit833.21055
  %polly.indvar828.21043 = phi i64 [ %polly.indvar_next829.21053, %polly.loop_exit833.21055 ], [ 0, %polly.loop_exit833.2.1 ]
  %615 = add nuw nsw i64 %polly.indvar828.21043, 64
  %616 = mul nuw nsw i64 %615, 640
  %617 = trunc i64 %615 to i32
  %broadcast.splatinsert1181 = insertelement <4 x i32> poison, i32 %617, i32 0
  %broadcast.splat1182 = shufflevector <4 x i32> %broadcast.splatinsert1181, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1171

vector.body1171:                                  ; preds = %vector.body1171, %polly.loop_header825.21044
  %index1173 = phi i64 [ 0, %polly.loop_header825.21044 ], [ %index.next1174, %vector.body1171 ]
  %vec.ind1179 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header825.21044 ], [ %vec.ind.next1180, %vector.body1171 ]
  %618 = mul <4 x i32> %vec.ind1179, %broadcast.splat1182
  %619 = add <4 x i32> %618, <i32 3, i32 3, i32 3, i32 3>
  %620 = urem <4 x i32> %619, <i32 80, i32 80, i32 80, i32 80>
  %621 = sitofp <4 x i32> %620 to <4 x double>
  %622 = fmul fast <4 x double> %621, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %623 = shl i64 %index1173, 3
  %624 = add nuw nsw i64 %623, %616
  %625 = getelementptr i8, i8* %call, i64 %624
  %626 = bitcast i8* %625 to <4 x double>*
  store <4 x double> %622, <4 x double>* %626, align 8, !alias.scope !104, !noalias !106
  %index.next1174 = add i64 %index1173, 4
  %vec.ind.next1180 = add <4 x i32> %vec.ind1179, <i32 4, i32 4, i32 4, i32 4>
  %627 = icmp eq i64 %index.next1174, 32
  br i1 %627, label %polly.loop_exit833.21055, label %vector.body1171, !llvm.loop !141

polly.loop_exit833.21055:                         ; preds = %vector.body1171
  %polly.indvar_next829.21053 = add nuw nsw i64 %polly.indvar828.21043, 1
  %exitcond994.21054.not = icmp eq i64 %polly.indvar_next829.21053, 16
  br i1 %exitcond994.21054.not, label %polly.loop_header825.1.2, label %polly.loop_header825.21044

polly.loop_header825.1.2:                         ; preds = %polly.loop_exit833.21055, %polly.loop_exit833.1.2
  %polly.indvar828.1.2 = phi i64 [ %polly.indvar_next829.1.2, %polly.loop_exit833.1.2 ], [ 0, %polly.loop_exit833.21055 ]
  %628 = add nuw nsw i64 %polly.indvar828.1.2, 64
  %629 = mul nuw nsw i64 %628, 640
  %630 = trunc i64 %628 to i32
  %broadcast.splatinsert1193 = insertelement <4 x i32> poison, i32 %630, i32 0
  %broadcast.splat1194 = shufflevector <4 x i32> %broadcast.splatinsert1193, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1185

vector.body1185:                                  ; preds = %vector.body1185, %polly.loop_header825.1.2
  %index1187 = phi i64 [ 0, %polly.loop_header825.1.2 ], [ %index.next1188, %vector.body1185 ]
  %vec.ind1191 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.1.2 ], [ %vec.ind.next1192, %vector.body1185 ]
  %631 = add nuw nsw <4 x i64> %vec.ind1191, <i64 32, i64 32, i64 32, i64 32>
  %632 = trunc <4 x i64> %631 to <4 x i32>
  %633 = mul <4 x i32> %broadcast.splat1194, %632
  %634 = add <4 x i32> %633, <i32 3, i32 3, i32 3, i32 3>
  %635 = urem <4 x i32> %634, <i32 80, i32 80, i32 80, i32 80>
  %636 = sitofp <4 x i32> %635 to <4 x double>
  %637 = fmul fast <4 x double> %636, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %638 = extractelement <4 x i64> %631, i32 0
  %639 = shl i64 %638, 3
  %640 = add nuw nsw i64 %639, %629
  %641 = getelementptr i8, i8* %call, i64 %640
  %642 = bitcast i8* %641 to <4 x double>*
  store <4 x double> %637, <4 x double>* %642, align 8, !alias.scope !104, !noalias !106
  %index.next1188 = add i64 %index1187, 4
  %vec.ind.next1192 = add <4 x i64> %vec.ind1191, <i64 4, i64 4, i64 4, i64 4>
  %643 = icmp eq i64 %index.next1188, 32
  br i1 %643, label %polly.loop_exit833.1.2, label %vector.body1185, !llvm.loop !142

polly.loop_exit833.1.2:                           ; preds = %vector.body1185
  %polly.indvar_next829.1.2 = add nuw nsw i64 %polly.indvar828.1.2, 1
  %exitcond994.1.2.not = icmp eq i64 %polly.indvar_next829.1.2, 16
  br i1 %exitcond994.1.2.not, label %polly.loop_header825.2.2, label %polly.loop_header825.1.2

polly.loop_header825.2.2:                         ; preds = %polly.loop_exit833.1.2, %polly.loop_exit833.2.2
  %polly.indvar828.2.2 = phi i64 [ %polly.indvar_next829.2.2, %polly.loop_exit833.2.2 ], [ 0, %polly.loop_exit833.1.2 ]
  %644 = add nuw nsw i64 %polly.indvar828.2.2, 64
  %645 = mul nuw nsw i64 %644, 640
  %646 = trunc i64 %644 to i32
  %broadcast.splatinsert1205 = insertelement <4 x i32> poison, i32 %646, i32 0
  %broadcast.splat1206 = shufflevector <4 x i32> %broadcast.splatinsert1205, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %polly.loop_header825.2.2
  %index1199 = phi i64 [ 0, %polly.loop_header825.2.2 ], [ %index.next1200, %vector.body1197 ]
  %vec.ind1203 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.2.2 ], [ %vec.ind.next1204, %vector.body1197 ]
  %647 = add nuw nsw <4 x i64> %vec.ind1203, <i64 64, i64 64, i64 64, i64 64>
  %648 = trunc <4 x i64> %647 to <4 x i32>
  %649 = mul <4 x i32> %broadcast.splat1206, %648
  %650 = add <4 x i32> %649, <i32 3, i32 3, i32 3, i32 3>
  %651 = urem <4 x i32> %650, <i32 80, i32 80, i32 80, i32 80>
  %652 = sitofp <4 x i32> %651 to <4 x double>
  %653 = fmul fast <4 x double> %652, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %654 = extractelement <4 x i64> %647, i32 0
  %655 = shl i64 %654, 3
  %656 = add nuw nsw i64 %655, %645
  %657 = getelementptr i8, i8* %call, i64 %656
  %658 = bitcast i8* %657 to <4 x double>*
  store <4 x double> %653, <4 x double>* %658, align 8, !alias.scope !104, !noalias !106
  %index.next1200 = add i64 %index1199, 4
  %vec.ind.next1204 = add <4 x i64> %vec.ind1203, <i64 4, i64 4, i64 4, i64 4>
  %659 = icmp eq i64 %index.next1200, 16
  br i1 %659, label %polly.loop_exit833.2.2, label %vector.body1197, !llvm.loop !143

polly.loop_exit833.2.2:                           ; preds = %vector.body1197
  %polly.indvar_next829.2.2 = add nuw nsw i64 %polly.indvar828.2.2, 1
  %exitcond994.2.2.not = icmp eq i64 %polly.indvar_next829.2.2, 16
  br i1 %exitcond994.2.2.not, label %polly.loop_header852, label %polly.loop_header825.2.2
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
!115 = distinct !{!115, !73, !13}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !73, !13}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !73, !13}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !73, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !73, !13}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !73, !13}
!126 = distinct !{!126, !13}
!127 = distinct !{!127, !13}
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
