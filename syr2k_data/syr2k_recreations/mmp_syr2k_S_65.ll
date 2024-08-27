; ModuleID = 'syr2k_recreations//mmp_syr2k_S_65.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_65.c"
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
  %call810 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1662 = bitcast i8* %call1 to double*
  %polly.access.call1671 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2672 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1671, %call2
  %polly.access.call2691 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2691, %call1
  %2 = or i1 %0, %1
  %polly.access.call711 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call711, %call2
  %4 = icmp ule i8* %polly.access.call2691, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call711, %call1
  %8 = icmp ule i8* %polly.access.call1671, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header796, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1016 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1015 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1014 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1013 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1013, %scevgep1016
  %bound1 = icmp ult i8* %scevgep1015, %scevgep1014
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
  br i1 %exitcond18.not.i, label %vector.ph1020, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1020:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1027 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1028 = shufflevector <4 x i64> %broadcast.splatinsert1027, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1019

vector.body1019:                                  ; preds = %vector.body1019, %vector.ph1020
  %index1021 = phi i64 [ 0, %vector.ph1020 ], [ %index.next1022, %vector.body1019 ]
  %vec.ind1025 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1020 ], [ %vec.ind.next1026, %vector.body1019 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1025, %broadcast.splat1028
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv7.i, i64 %index1021
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1022 = add i64 %index1021, 4
  %vec.ind.next1026 = add <4 x i64> %vec.ind1025, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1022, 80
  br i1 %40, label %for.inc41.i, label %vector.body1019, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1019
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1020, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit857.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start472, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1601, label %vector.ph1302

vector.ph1302:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1301

vector.body1301:                                  ; preds = %vector.body1301, %vector.ph1302
  %index1303 = phi i64 [ 0, %vector.ph1302 ], [ %index.next1304, %vector.body1301 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv21.i, i64 %index1303
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1304 = add i64 %index1303, 4
  %46 = icmp eq i64 %index.next1304, %n.vec
  br i1 %46, label %middle.block1299, label %vector.body1301, !llvm.loop !18

middle.block1299:                                 ; preds = %vector.body1301
  %cmp.n1306 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1306, label %for.inc6.i, label %for.body3.i46.preheader1601

for.body3.i46.preheader1601:                      ; preds = %for.body3.i46.preheader, %middle.block1299
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1299 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1601, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1601 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1299, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting473
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start284, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1398 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1398, label %for.body3.i60.preheader1600, label %vector.ph1399

vector.ph1399:                                    ; preds = %for.body3.i60.preheader
  %n.vec1401 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1397

vector.body1397:                                  ; preds = %vector.body1397, %vector.ph1399
  %index1402 = phi i64 [ 0, %vector.ph1399 ], [ %index.next1403, %vector.body1397 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv21.i52, i64 %index1402
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1406 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1406, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1403 = add i64 %index1402, 4
  %57 = icmp eq i64 %index.next1403, %n.vec1401
  br i1 %57, label %middle.block1395, label %vector.body1397, !llvm.loop !64

middle.block1395:                                 ; preds = %vector.body1397
  %cmp.n1405 = icmp eq i64 %indvars.iv21.i52, %n.vec1401
  br i1 %cmp.n1405, label %for.inc6.i63, label %for.body3.i60.preheader1600

for.body3.i60.preheader1600:                      ; preds = %for.body3.i60.preheader, %middle.block1395
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1401, %middle.block1395 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1600, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1600 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1395, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting285
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1500 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1500, label %for.body3.i99.preheader1599, label %vector.ph1501

vector.ph1501:                                    ; preds = %for.body3.i99.preheader
  %n.vec1503 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1499

vector.body1499:                                  ; preds = %vector.body1499, %vector.ph1501
  %index1504 = phi i64 [ 0, %vector.ph1501 ], [ %index.next1505, %vector.body1499 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv21.i91, i64 %index1504
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1508 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1508, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1505 = add i64 %index1504, 4
  %68 = icmp eq i64 %index.next1505, %n.vec1503
  br i1 %68, label %middle.block1497, label %vector.body1499, !llvm.loop !66

middle.block1497:                                 ; preds = %vector.body1499
  %cmp.n1507 = icmp eq i64 %indvars.iv21.i91, %n.vec1503
  br i1 %cmp.n1507, label %for.inc6.i102, label %for.body3.i99.preheader1599

for.body3.i99.preheader1599:                      ; preds = %for.body3.i99.preheader, %middle.block1497
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1503, %middle.block1497 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1599, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1599 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1497, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(2560) i8* @malloc(i64 2560) #6
  %malloccall136 = tail call dereferenceable_or_null(2560) i8* @malloc(i64 2560) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1512 = phi i64 [ %indvar.next1513, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1512, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1514 = icmp ult i64 %88, 4
  br i1 %min.iters.check1514, label %polly.loop_header192.preheader, label %vector.ph1515

vector.ph1515:                                    ; preds = %polly.loop_header
  %n.vec1517 = and i64 %88, -4
  br label %vector.body1511

vector.body1511:                                  ; preds = %vector.body1511, %vector.ph1515
  %index1518 = phi i64 [ 0, %vector.ph1515 ], [ %index.next1519, %vector.body1511 ]
  %90 = shl nuw nsw i64 %index1518, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1522 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1522, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1519 = add i64 %index1518, 4
  %95 = icmp eq i64 %index.next1519, %n.vec1517
  br i1 %95, label %middle.block1509, label %vector.body1511, !llvm.loop !79

middle.block1509:                                 ; preds = %vector.body1511
  %cmp.n1521 = icmp eq i64 %88, %n.vec1517
  br i1 %cmp.n1521, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1509
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1517, %middle.block1509 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1509
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond899.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1513 = add i64 %indvar1512, 1
  br i1 %exitcond899.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond898.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond898.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %97 = shl nsw i64 %polly.indvar203, 2
  %98 = or i64 %97, 1
  %99 = or i64 %97, 2
  %100 = or i64 %97, 3
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit252.3
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond897.not = icmp eq i64 %polly.indvar_next204, 15
  br i1 %exitcond897.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit252.3, %polly.loop_header200
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit252.3 ], [ 80, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit252.3 ], [ 0, %polly.loop_header200 ]
  %101 = mul nsw i64 %polly.indvar209, -32
  %102 = shl nsw i64 %polly.indvar209, 5
  br label %polly.loop_header218

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header206
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %103 = add nuw nsw i64 %polly.indvar221, %102
  %polly.access.mul.call2225 = mul nuw nsw i64 %103, 60
  %polly.access.add.call2226 = add nuw nsw i64 %97, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2672, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar221
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_header218.1, label %polly.loop_header218

polly.loop_header234:                             ; preds = %polly.loop_header218.3, %polly.loop_header234
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_header234 ], [ 0, %polly.loop_header218.3 ]
  %104 = add nuw nsw i64 %polly.indvar237, %102
  %polly.access.mul.call1241 = mul nuw nsw i64 %104, 60
  %polly.access.add.call1242 = add nuw nsw i64 %97, %polly.access.mul.call1241
  %polly.access.call1243 = getelementptr double, double* %polly.access.cast.call1662, i64 %polly.access.add.call1242
  %polly.access.call1243.load = load double, double* %polly.access.call1243, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar237
  store double %polly.access.call1243.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond889.not = icmp eq i64 %polly.indvar_next238, %indvars.iv
  br i1 %exitcond889.not, label %polly.loop_header234.1, label %polly.loop_header234

polly.loop_header250:                             ; preds = %polly.loop_header234.3, %polly.loop_exit258
  %indvars.iv891 = phi i64 [ %indvars.iv.next892, %polly.loop_exit258 ], [ 0, %polly.loop_header234.3 ]
  %polly.indvar253 = phi i64 [ %polly.indvar_next254, %polly.loop_exit258 ], [ %102, %polly.loop_header234.3 ]
  %smin1583 = call i64 @llvm.smin.i64(i64 %indvars.iv891, i64 31)
  %105 = add nuw nsw i64 %smin1583, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv891, i64 31)
  %106 = add nsw i64 %polly.indvar253, %101
  %107 = mul nuw nsw i64 %polly.indvar253, 640
  %scevgep278 = getelementptr i8, i8* %call, i64 %107
  %polly.access.Packed_MemRef_call2268 = getelementptr double, double* %Packed_MemRef_call2, i64 %106
  %_p_scalar_269 = load double, double* %polly.access.Packed_MemRef_call2268, align 8
  %polly.access.Packed_MemRef_call1276 = getelementptr double, double* %Packed_MemRef_call1, i64 %106
  %_p_scalar_277 = load double, double* %polly.access.Packed_MemRef_call1276, align 8
  %min.iters.check1584 = icmp ult i64 %smin1583, 3
  br i1 %min.iters.check1584, label %polly.loop_header256.preheader, label %vector.ph1585

vector.ph1585:                                    ; preds = %polly.loop_header250
  %n.vec1587 = and i64 %105, 60
  %broadcast.splatinsert1593 = insertelement <4 x double> poison, double %_p_scalar_269, i32 0
  %broadcast.splat1594 = shufflevector <4 x double> %broadcast.splatinsert1593, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1596 = insertelement <4 x double> poison, double %_p_scalar_277, i32 0
  %broadcast.splat1597 = shufflevector <4 x double> %broadcast.splatinsert1596, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1582

vector.body1582:                                  ; preds = %vector.body1582, %vector.ph1585
  %index1588 = phi i64 [ 0, %vector.ph1585 ], [ %index.next1589, %vector.body1582 ]
  %108 = add nuw nsw i64 %index1588, %102
  %109 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1588
  %110 = bitcast double* %109 to <4 x double>*
  %wide.load1592 = load <4 x double>, <4 x double>* %110, align 8
  %111 = fmul fast <4 x double> %broadcast.splat1594, %wide.load1592
  %112 = getelementptr double, double* %Packed_MemRef_call2, i64 %index1588
  %113 = bitcast double* %112 to <4 x double>*
  %wide.load1595 = load <4 x double>, <4 x double>* %113, align 8
  %114 = fmul fast <4 x double> %broadcast.splat1597, %wide.load1595
  %115 = shl i64 %108, 3
  %116 = getelementptr i8, i8* %scevgep278, i64 %115
  %117 = bitcast i8* %116 to <4 x double>*
  %wide.load1598 = load <4 x double>, <4 x double>* %117, align 8, !alias.scope !72, !noalias !74
  %118 = fadd fast <4 x double> %114, %111
  %119 = fmul fast <4 x double> %118, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %120 = fadd fast <4 x double> %119, %wide.load1598
  %121 = bitcast i8* %116 to <4 x double>*
  store <4 x double> %120, <4 x double>* %121, align 8, !alias.scope !72, !noalias !74
  %index.next1589 = add i64 %index1588, 4
  %122 = icmp eq i64 %index.next1589, %n.vec1587
  br i1 %122, label %middle.block1580, label %vector.body1582, !llvm.loop !84

middle.block1580:                                 ; preds = %vector.body1582
  %cmp.n1591 = icmp eq i64 %105, %n.vec1587
  br i1 %cmp.n1591, label %polly.loop_exit258, label %polly.loop_header256.preheader

polly.loop_header256.preheader:                   ; preds = %polly.loop_header250, %middle.block1580
  %polly.indvar259.ph = phi i64 [ 0, %polly.loop_header250 ], [ %n.vec1587, %middle.block1580 ]
  br label %polly.loop_header256

polly.loop_exit258:                               ; preds = %polly.loop_header256, %middle.block1580
  %polly.indvar_next254 = add nuw nsw i64 %polly.indvar253, 1
  %indvars.iv.next892 = add nuw nsw i64 %indvars.iv891, 1
  %exitcond894.not = icmp eq i64 %indvars.iv.next892, %indvars.iv
  br i1 %exitcond894.not, label %polly.loop_header250.1, label %polly.loop_header250

polly.loop_header256:                             ; preds = %polly.loop_header256.preheader, %polly.loop_header256
  %polly.indvar259 = phi i64 [ %polly.indvar_next260, %polly.loop_header256 ], [ %polly.indvar259.ph, %polly.loop_header256.preheader ]
  %123 = add nuw nsw i64 %polly.indvar259, %102
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar259
  %_p_scalar_265 = load double, double* %polly.access.Packed_MemRef_call1264, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_269, %_p_scalar_265
  %polly.access.Packed_MemRef_call2272 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar259
  %_p_scalar_273 = load double, double* %polly.access.Packed_MemRef_call2272, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_277, %_p_scalar_273
  %124 = shl i64 %123, 3
  %scevgep279 = getelementptr i8, i8* %scevgep278, i64 %124
  %scevgep279280 = bitcast i8* %scevgep279 to double*
  %_p_scalar_281 = load double, double* %scevgep279280, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_281
  store double %p_add42.i118, double* %scevgep279280, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next260 = add nuw nsw i64 %polly.indvar259, 1
  %exitcond893.not = icmp eq i64 %polly.indvar259, %smin
  br i1 %exitcond893.not, label %polly.loop_exit258, label %polly.loop_header256, !llvm.loop !85

polly.start284:                                   ; preds = %kernel_syr2k.exit
  %malloccall286 = tail call dereferenceable_or_null(2560) i8* @malloc(i64 2560) #6
  %malloccall288 = tail call dereferenceable_or_null(2560) i8* @malloc(i64 2560) #6
  br label %polly.loop_header372

polly.exiting285:                                 ; preds = %polly.loop_exit396
  tail call void @free(i8* nonnull %malloccall286)
  tail call void @free(i8* nonnull %malloccall288)
  br label %kernel_syr2k.exit90

polly.loop_header372:                             ; preds = %polly.loop_exit380, %polly.start284
  %indvar1410 = phi i64 [ %indvar.next1411, %polly.loop_exit380 ], [ 0, %polly.start284 ]
  %polly.indvar375 = phi i64 [ %polly.indvar_next376, %polly.loop_exit380 ], [ 1, %polly.start284 ]
  %125 = add i64 %indvar1410, 1
  %126 = mul nuw nsw i64 %polly.indvar375, 640
  %scevgep384 = getelementptr i8, i8* %call, i64 %126
  %min.iters.check1412 = icmp ult i64 %125, 4
  br i1 %min.iters.check1412, label %polly.loop_header378.preheader, label %vector.ph1413

vector.ph1413:                                    ; preds = %polly.loop_header372
  %n.vec1415 = and i64 %125, -4
  br label %vector.body1409

vector.body1409:                                  ; preds = %vector.body1409, %vector.ph1413
  %index1416 = phi i64 [ 0, %vector.ph1413 ], [ %index.next1417, %vector.body1409 ]
  %127 = shl nuw nsw i64 %index1416, 3
  %128 = getelementptr i8, i8* %scevgep384, i64 %127
  %129 = bitcast i8* %128 to <4 x double>*
  %wide.load1420 = load <4 x double>, <4 x double>* %129, align 8, !alias.scope !86, !noalias !88
  %130 = fmul fast <4 x double> %wide.load1420, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %131 = bitcast i8* %128 to <4 x double>*
  store <4 x double> %130, <4 x double>* %131, align 8, !alias.scope !86, !noalias !88
  %index.next1417 = add i64 %index1416, 4
  %132 = icmp eq i64 %index.next1417, %n.vec1415
  br i1 %132, label %middle.block1407, label %vector.body1409, !llvm.loop !93

middle.block1407:                                 ; preds = %vector.body1409
  %cmp.n1419 = icmp eq i64 %125, %n.vec1415
  br i1 %cmp.n1419, label %polly.loop_exit380, label %polly.loop_header378.preheader

polly.loop_header378.preheader:                   ; preds = %polly.loop_header372, %middle.block1407
  %polly.indvar381.ph = phi i64 [ 0, %polly.loop_header372 ], [ %n.vec1415, %middle.block1407 ]
  br label %polly.loop_header378

polly.loop_exit380:                               ; preds = %polly.loop_header378, %middle.block1407
  %polly.indvar_next376 = add nuw nsw i64 %polly.indvar375, 1
  %exitcond915.not = icmp eq i64 %polly.indvar_next376, 80
  %indvar.next1411 = add i64 %indvar1410, 1
  br i1 %exitcond915.not, label %polly.loop_header388.preheader, label %polly.loop_header372

polly.loop_header388.preheader:                   ; preds = %polly.loop_exit380
  %Packed_MemRef_call1287 = bitcast i8* %malloccall286 to double*
  %Packed_MemRef_call2289 = bitcast i8* %malloccall288 to double*
  br label %polly.loop_header388

polly.loop_header378:                             ; preds = %polly.loop_header378.preheader, %polly.loop_header378
  %polly.indvar381 = phi i64 [ %polly.indvar_next382, %polly.loop_header378 ], [ %polly.indvar381.ph, %polly.loop_header378.preheader ]
  %133 = shl nuw nsw i64 %polly.indvar381, 3
  %scevgep385 = getelementptr i8, i8* %scevgep384, i64 %133
  %scevgep385386 = bitcast i8* %scevgep385 to double*
  %_p_scalar_387 = load double, double* %scevgep385386, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_387, 1.200000e+00
  store double %p_mul.i57, double* %scevgep385386, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next382 = add nuw nsw i64 %polly.indvar381, 1
  %exitcond914.not = icmp eq i64 %polly.indvar_next382, %polly.indvar375
  br i1 %exitcond914.not, label %polly.loop_exit380, label %polly.loop_header378, !llvm.loop !94

polly.loop_header388:                             ; preds = %polly.loop_header388.preheader, %polly.loop_exit396
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 0, %polly.loop_header388.preheader ]
  %134 = shl nsw i64 %polly.indvar391, 2
  %135 = or i64 %134, 1
  %136 = or i64 %134, 2
  %137 = or i64 %134, 3
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_exit440.3
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond913.not = icmp eq i64 %polly.indvar_next392, 15
  br i1 %exitcond913.not, label %polly.exiting285, label %polly.loop_header388

polly.loop_header394:                             ; preds = %polly.loop_exit440.3, %polly.loop_header388
  %indvars.iv900 = phi i64 [ %indvars.iv.next901, %polly.loop_exit440.3 ], [ 80, %polly.loop_header388 ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit440.3 ], [ 0, %polly.loop_header388 ]
  %138 = mul nsw i64 %polly.indvar397, -32
  %139 = shl nsw i64 %polly.indvar397, 5
  br label %polly.loop_header406

polly.loop_header406:                             ; preds = %polly.loop_header406, %polly.loop_header394
  %polly.indvar409 = phi i64 [ 0, %polly.loop_header394 ], [ %polly.indvar_next410, %polly.loop_header406 ]
  %140 = add nuw nsw i64 %polly.indvar409, %139
  %polly.access.mul.call2413 = mul nuw nsw i64 %140, 60
  %polly.access.add.call2414 = add nuw nsw i64 %134, %polly.access.mul.call2413
  %polly.access.call2415 = getelementptr double, double* %polly.access.cast.call2672, i64 %polly.access.add.call2414
  %polly.access.call2415.load = load double, double* %polly.access.call2415, align 8, !alias.scope !90, !noalias !95
  %polly.access.Packed_MemRef_call2289 = getelementptr double, double* %Packed_MemRef_call2289, i64 %polly.indvar409
  store double %polly.access.call2415.load, double* %polly.access.Packed_MemRef_call2289, align 8
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond902.not = icmp eq i64 %polly.indvar_next410, %indvars.iv900
  br i1 %exitcond902.not, label %polly.loop_header406.1, label %polly.loop_header406

polly.loop_header422:                             ; preds = %polly.loop_header406.3, %polly.loop_header422
  %polly.indvar425 = phi i64 [ %polly.indvar_next426, %polly.loop_header422 ], [ 0, %polly.loop_header406.3 ]
  %141 = add nuw nsw i64 %polly.indvar425, %139
  %polly.access.mul.call1429 = mul nuw nsw i64 %141, 60
  %polly.access.add.call1430 = add nuw nsw i64 %134, %polly.access.mul.call1429
  %polly.access.call1431 = getelementptr double, double* %polly.access.cast.call1662, i64 %polly.access.add.call1430
  %polly.access.call1431.load = load double, double* %polly.access.call1431, align 8, !alias.scope !89, !noalias !96
  %polly.access.Packed_MemRef_call1287 = getelementptr double, double* %Packed_MemRef_call1287, i64 %polly.indvar425
  store double %polly.access.call1431.load, double* %polly.access.Packed_MemRef_call1287, align 8
  %polly.indvar_next426 = add nuw nsw i64 %polly.indvar425, 1
  %exitcond904.not = icmp eq i64 %polly.indvar_next426, %indvars.iv900
  br i1 %exitcond904.not, label %polly.loop_header422.1, label %polly.loop_header422

polly.loop_header438:                             ; preds = %polly.loop_header422.3, %polly.loop_exit446
  %indvars.iv906 = phi i64 [ %indvars.iv.next907, %polly.loop_exit446 ], [ 0, %polly.loop_header422.3 ]
  %polly.indvar441 = phi i64 [ %polly.indvar_next442, %polly.loop_exit446 ], [ %139, %polly.loop_header422.3 ]
  %smin1481 = call i64 @llvm.smin.i64(i64 %indvars.iv906, i64 31)
  %142 = add nuw nsw i64 %smin1481, 1
  %smin908 = call i64 @llvm.smin.i64(i64 %indvars.iv906, i64 31)
  %143 = add nsw i64 %polly.indvar441, %138
  %144 = mul nuw nsw i64 %polly.indvar441, 640
  %scevgep466 = getelementptr i8, i8* %call, i64 %144
  %polly.access.Packed_MemRef_call2289456 = getelementptr double, double* %Packed_MemRef_call2289, i64 %143
  %_p_scalar_457 = load double, double* %polly.access.Packed_MemRef_call2289456, align 8
  %polly.access.Packed_MemRef_call1287464 = getelementptr double, double* %Packed_MemRef_call1287, i64 %143
  %_p_scalar_465 = load double, double* %polly.access.Packed_MemRef_call1287464, align 8
  %min.iters.check1482 = icmp ult i64 %smin1481, 3
  br i1 %min.iters.check1482, label %polly.loop_header444.preheader, label %vector.ph1483

vector.ph1483:                                    ; preds = %polly.loop_header438
  %n.vec1485 = and i64 %142, 60
  %broadcast.splatinsert1491 = insertelement <4 x double> poison, double %_p_scalar_457, i32 0
  %broadcast.splat1492 = shufflevector <4 x double> %broadcast.splatinsert1491, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1494 = insertelement <4 x double> poison, double %_p_scalar_465, i32 0
  %broadcast.splat1495 = shufflevector <4 x double> %broadcast.splatinsert1494, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1480

vector.body1480:                                  ; preds = %vector.body1480, %vector.ph1483
  %index1486 = phi i64 [ 0, %vector.ph1483 ], [ %index.next1487, %vector.body1480 ]
  %145 = add nuw nsw i64 %index1486, %139
  %146 = getelementptr double, double* %Packed_MemRef_call1287, i64 %index1486
  %147 = bitcast double* %146 to <4 x double>*
  %wide.load1490 = load <4 x double>, <4 x double>* %147, align 8
  %148 = fmul fast <4 x double> %broadcast.splat1492, %wide.load1490
  %149 = getelementptr double, double* %Packed_MemRef_call2289, i64 %index1486
  %150 = bitcast double* %149 to <4 x double>*
  %wide.load1493 = load <4 x double>, <4 x double>* %150, align 8
  %151 = fmul fast <4 x double> %broadcast.splat1495, %wide.load1493
  %152 = shl i64 %145, 3
  %153 = getelementptr i8, i8* %scevgep466, i64 %152
  %154 = bitcast i8* %153 to <4 x double>*
  %wide.load1496 = load <4 x double>, <4 x double>* %154, align 8, !alias.scope !86, !noalias !88
  %155 = fadd fast <4 x double> %151, %148
  %156 = fmul fast <4 x double> %155, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %157 = fadd fast <4 x double> %156, %wide.load1496
  %158 = bitcast i8* %153 to <4 x double>*
  store <4 x double> %157, <4 x double>* %158, align 8, !alias.scope !86, !noalias !88
  %index.next1487 = add i64 %index1486, 4
  %159 = icmp eq i64 %index.next1487, %n.vec1485
  br i1 %159, label %middle.block1478, label %vector.body1480, !llvm.loop !97

middle.block1478:                                 ; preds = %vector.body1480
  %cmp.n1489 = icmp eq i64 %142, %n.vec1485
  br i1 %cmp.n1489, label %polly.loop_exit446, label %polly.loop_header444.preheader

polly.loop_header444.preheader:                   ; preds = %polly.loop_header438, %middle.block1478
  %polly.indvar447.ph = phi i64 [ 0, %polly.loop_header438 ], [ %n.vec1485, %middle.block1478 ]
  br label %polly.loop_header444

polly.loop_exit446:                               ; preds = %polly.loop_header444, %middle.block1478
  %polly.indvar_next442 = add nuw nsw i64 %polly.indvar441, 1
  %indvars.iv.next907 = add nuw nsw i64 %indvars.iv906, 1
  %exitcond910.not = icmp eq i64 %indvars.iv.next907, %indvars.iv900
  br i1 %exitcond910.not, label %polly.loop_header438.1, label %polly.loop_header438

polly.loop_header444:                             ; preds = %polly.loop_header444.preheader, %polly.loop_header444
  %polly.indvar447 = phi i64 [ %polly.indvar_next448, %polly.loop_header444 ], [ %polly.indvar447.ph, %polly.loop_header444.preheader ]
  %160 = add nuw nsw i64 %polly.indvar447, %139
  %polly.access.Packed_MemRef_call1287452 = getelementptr double, double* %Packed_MemRef_call1287, i64 %polly.indvar447
  %_p_scalar_453 = load double, double* %polly.access.Packed_MemRef_call1287452, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_457, %_p_scalar_453
  %polly.access.Packed_MemRef_call2289460 = getelementptr double, double* %Packed_MemRef_call2289, i64 %polly.indvar447
  %_p_scalar_461 = load double, double* %polly.access.Packed_MemRef_call2289460, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_465, %_p_scalar_461
  %161 = shl i64 %160, 3
  %scevgep467 = getelementptr i8, i8* %scevgep466, i64 %161
  %scevgep467468 = bitcast i8* %scevgep467 to double*
  %_p_scalar_469 = load double, double* %scevgep467468, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_469
  store double %p_add42.i79, double* %scevgep467468, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next448 = add nuw nsw i64 %polly.indvar447, 1
  %exitcond909.not = icmp eq i64 %polly.indvar447, %smin908
  br i1 %exitcond909.not, label %polly.loop_exit446, label %polly.loop_header444, !llvm.loop !98

polly.start472:                                   ; preds = %init_array.exit
  %malloccall474 = tail call dereferenceable_or_null(2560) i8* @malloc(i64 2560) #6
  %malloccall476 = tail call dereferenceable_or_null(2560) i8* @malloc(i64 2560) #6
  br label %polly.loop_header560

polly.exiting473:                                 ; preds = %polly.loop_exit584
  tail call void @free(i8* nonnull %malloccall474)
  tail call void @free(i8* nonnull %malloccall476)
  br label %kernel_syr2k.exit

polly.loop_header560:                             ; preds = %polly.loop_exit568, %polly.start472
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit568 ], [ 0, %polly.start472 ]
  %polly.indvar563 = phi i64 [ %polly.indvar_next564, %polly.loop_exit568 ], [ 1, %polly.start472 ]
  %162 = add i64 %indvar, 1
  %163 = mul nuw nsw i64 %polly.indvar563, 640
  %scevgep572 = getelementptr i8, i8* %call, i64 %163
  %min.iters.check1310 = icmp ult i64 %162, 4
  br i1 %min.iters.check1310, label %polly.loop_header566.preheader, label %vector.ph1311

vector.ph1311:                                    ; preds = %polly.loop_header560
  %n.vec1313 = and i64 %162, -4
  br label %vector.body1309

vector.body1309:                                  ; preds = %vector.body1309, %vector.ph1311
  %index1314 = phi i64 [ 0, %vector.ph1311 ], [ %index.next1315, %vector.body1309 ]
  %164 = shl nuw nsw i64 %index1314, 3
  %165 = getelementptr i8, i8* %scevgep572, i64 %164
  %166 = bitcast i8* %165 to <4 x double>*
  %wide.load1318 = load <4 x double>, <4 x double>* %166, align 8, !alias.scope !99, !noalias !101
  %167 = fmul fast <4 x double> %wide.load1318, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %168 = bitcast i8* %165 to <4 x double>*
  store <4 x double> %167, <4 x double>* %168, align 8, !alias.scope !99, !noalias !101
  %index.next1315 = add i64 %index1314, 4
  %169 = icmp eq i64 %index.next1315, %n.vec1313
  br i1 %169, label %middle.block1307, label %vector.body1309, !llvm.loop !106

middle.block1307:                                 ; preds = %vector.body1309
  %cmp.n1317 = icmp eq i64 %162, %n.vec1313
  br i1 %cmp.n1317, label %polly.loop_exit568, label %polly.loop_header566.preheader

polly.loop_header566.preheader:                   ; preds = %polly.loop_header560, %middle.block1307
  %polly.indvar569.ph = phi i64 [ 0, %polly.loop_header560 ], [ %n.vec1313, %middle.block1307 ]
  br label %polly.loop_header566

polly.loop_exit568:                               ; preds = %polly.loop_header566, %middle.block1307
  %polly.indvar_next564 = add nuw nsw i64 %polly.indvar563, 1
  %exitcond931.not = icmp eq i64 %polly.indvar_next564, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond931.not, label %polly.loop_header576.preheader, label %polly.loop_header560

polly.loop_header576.preheader:                   ; preds = %polly.loop_exit568
  %Packed_MemRef_call1475 = bitcast i8* %malloccall474 to double*
  %Packed_MemRef_call2477 = bitcast i8* %malloccall476 to double*
  br label %polly.loop_header576

polly.loop_header566:                             ; preds = %polly.loop_header566.preheader, %polly.loop_header566
  %polly.indvar569 = phi i64 [ %polly.indvar_next570, %polly.loop_header566 ], [ %polly.indvar569.ph, %polly.loop_header566.preheader ]
  %170 = shl nuw nsw i64 %polly.indvar569, 3
  %scevgep573 = getelementptr i8, i8* %scevgep572, i64 %170
  %scevgep573574 = bitcast i8* %scevgep573 to double*
  %_p_scalar_575 = load double, double* %scevgep573574, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_575, 1.200000e+00
  store double %p_mul.i, double* %scevgep573574, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next570 = add nuw nsw i64 %polly.indvar569, 1
  %exitcond930.not = icmp eq i64 %polly.indvar_next570, %polly.indvar563
  br i1 %exitcond930.not, label %polly.loop_exit568, label %polly.loop_header566, !llvm.loop !107

polly.loop_header576:                             ; preds = %polly.loop_header576.preheader, %polly.loop_exit584
  %polly.indvar579 = phi i64 [ %polly.indvar_next580, %polly.loop_exit584 ], [ 0, %polly.loop_header576.preheader ]
  %171 = shl nsw i64 %polly.indvar579, 2
  %172 = or i64 %171, 1
  %173 = or i64 %171, 2
  %174 = or i64 %171, 3
  br label %polly.loop_header582

polly.loop_exit584:                               ; preds = %polly.loop_exit628.3
  %polly.indvar_next580 = add nuw nsw i64 %polly.indvar579, 1
  %exitcond929.not = icmp eq i64 %polly.indvar_next580, 15
  br i1 %exitcond929.not, label %polly.exiting473, label %polly.loop_header576

polly.loop_header582:                             ; preds = %polly.loop_exit628.3, %polly.loop_header576
  %indvars.iv916 = phi i64 [ %indvars.iv.next917, %polly.loop_exit628.3 ], [ 80, %polly.loop_header576 ]
  %polly.indvar585 = phi i64 [ %polly.indvar_next586, %polly.loop_exit628.3 ], [ 0, %polly.loop_header576 ]
  %175 = mul nsw i64 %polly.indvar585, -32
  %176 = shl nsw i64 %polly.indvar585, 5
  br label %polly.loop_header594

polly.loop_header594:                             ; preds = %polly.loop_header594, %polly.loop_header582
  %polly.indvar597 = phi i64 [ 0, %polly.loop_header582 ], [ %polly.indvar_next598, %polly.loop_header594 ]
  %177 = add nuw nsw i64 %polly.indvar597, %176
  %polly.access.mul.call2601 = mul nuw nsw i64 %177, 60
  %polly.access.add.call2602 = add nuw nsw i64 %171, %polly.access.mul.call2601
  %polly.access.call2603 = getelementptr double, double* %polly.access.cast.call2672, i64 %polly.access.add.call2602
  %polly.access.call2603.load = load double, double* %polly.access.call2603, align 8, !alias.scope !103, !noalias !108
  %polly.access.Packed_MemRef_call2477 = getelementptr double, double* %Packed_MemRef_call2477, i64 %polly.indvar597
  store double %polly.access.call2603.load, double* %polly.access.Packed_MemRef_call2477, align 8
  %polly.indvar_next598 = add nuw nsw i64 %polly.indvar597, 1
  %exitcond918.not = icmp eq i64 %polly.indvar_next598, %indvars.iv916
  br i1 %exitcond918.not, label %polly.loop_header594.1, label %polly.loop_header594

polly.loop_header610:                             ; preds = %polly.loop_header594.3, %polly.loop_header610
  %polly.indvar613 = phi i64 [ %polly.indvar_next614, %polly.loop_header610 ], [ 0, %polly.loop_header594.3 ]
  %178 = add nuw nsw i64 %polly.indvar613, %176
  %polly.access.mul.call1617 = mul nuw nsw i64 %178, 60
  %polly.access.add.call1618 = add nuw nsw i64 %171, %polly.access.mul.call1617
  %polly.access.call1619 = getelementptr double, double* %polly.access.cast.call1662, i64 %polly.access.add.call1618
  %polly.access.call1619.load = load double, double* %polly.access.call1619, align 8, !alias.scope !102, !noalias !109
  %polly.access.Packed_MemRef_call1475 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.indvar613
  store double %polly.access.call1619.load, double* %polly.access.Packed_MemRef_call1475, align 8
  %polly.indvar_next614 = add nuw nsw i64 %polly.indvar613, 1
  %exitcond920.not = icmp eq i64 %polly.indvar_next614, %indvars.iv916
  br i1 %exitcond920.not, label %polly.loop_header610.1, label %polly.loop_header610

polly.loop_header626:                             ; preds = %polly.loop_header610.3, %polly.loop_exit634
  %indvars.iv922 = phi i64 [ %indvars.iv.next923, %polly.loop_exit634 ], [ 0, %polly.loop_header610.3 ]
  %polly.indvar629 = phi i64 [ %polly.indvar_next630, %polly.loop_exit634 ], [ %176, %polly.loop_header610.3 ]
  %smin1379 = call i64 @llvm.smin.i64(i64 %indvars.iv922, i64 31)
  %179 = add nuw nsw i64 %smin1379, 1
  %smin924 = call i64 @llvm.smin.i64(i64 %indvars.iv922, i64 31)
  %180 = add nsw i64 %polly.indvar629, %175
  %181 = mul nuw nsw i64 %polly.indvar629, 640
  %scevgep654 = getelementptr i8, i8* %call, i64 %181
  %polly.access.Packed_MemRef_call2477644 = getelementptr double, double* %Packed_MemRef_call2477, i64 %180
  %_p_scalar_645 = load double, double* %polly.access.Packed_MemRef_call2477644, align 8
  %polly.access.Packed_MemRef_call1475652 = getelementptr double, double* %Packed_MemRef_call1475, i64 %180
  %_p_scalar_653 = load double, double* %polly.access.Packed_MemRef_call1475652, align 8
  %min.iters.check1380 = icmp ult i64 %smin1379, 3
  br i1 %min.iters.check1380, label %polly.loop_header632.preheader, label %vector.ph1381

vector.ph1381:                                    ; preds = %polly.loop_header626
  %n.vec1383 = and i64 %179, 60
  %broadcast.splatinsert1389 = insertelement <4 x double> poison, double %_p_scalar_645, i32 0
  %broadcast.splat1390 = shufflevector <4 x double> %broadcast.splatinsert1389, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1392 = insertelement <4 x double> poison, double %_p_scalar_653, i32 0
  %broadcast.splat1393 = shufflevector <4 x double> %broadcast.splatinsert1392, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1378

vector.body1378:                                  ; preds = %vector.body1378, %vector.ph1381
  %index1384 = phi i64 [ 0, %vector.ph1381 ], [ %index.next1385, %vector.body1378 ]
  %182 = add nuw nsw i64 %index1384, %176
  %183 = getelementptr double, double* %Packed_MemRef_call1475, i64 %index1384
  %184 = bitcast double* %183 to <4 x double>*
  %wide.load1388 = load <4 x double>, <4 x double>* %184, align 8
  %185 = fmul fast <4 x double> %broadcast.splat1390, %wide.load1388
  %186 = getelementptr double, double* %Packed_MemRef_call2477, i64 %index1384
  %187 = bitcast double* %186 to <4 x double>*
  %wide.load1391 = load <4 x double>, <4 x double>* %187, align 8
  %188 = fmul fast <4 x double> %broadcast.splat1393, %wide.load1391
  %189 = shl i64 %182, 3
  %190 = getelementptr i8, i8* %scevgep654, i64 %189
  %191 = bitcast i8* %190 to <4 x double>*
  %wide.load1394 = load <4 x double>, <4 x double>* %191, align 8, !alias.scope !99, !noalias !101
  %192 = fadd fast <4 x double> %188, %185
  %193 = fmul fast <4 x double> %192, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %194 = fadd fast <4 x double> %193, %wide.load1394
  %195 = bitcast i8* %190 to <4 x double>*
  store <4 x double> %194, <4 x double>* %195, align 8, !alias.scope !99, !noalias !101
  %index.next1385 = add i64 %index1384, 4
  %196 = icmp eq i64 %index.next1385, %n.vec1383
  br i1 %196, label %middle.block1376, label %vector.body1378, !llvm.loop !110

middle.block1376:                                 ; preds = %vector.body1378
  %cmp.n1387 = icmp eq i64 %179, %n.vec1383
  br i1 %cmp.n1387, label %polly.loop_exit634, label %polly.loop_header632.preheader

polly.loop_header632.preheader:                   ; preds = %polly.loop_header626, %middle.block1376
  %polly.indvar635.ph = phi i64 [ 0, %polly.loop_header626 ], [ %n.vec1383, %middle.block1376 ]
  br label %polly.loop_header632

polly.loop_exit634:                               ; preds = %polly.loop_header632, %middle.block1376
  %polly.indvar_next630 = add nuw nsw i64 %polly.indvar629, 1
  %indvars.iv.next923 = add nuw nsw i64 %indvars.iv922, 1
  %exitcond926.not = icmp eq i64 %indvars.iv.next923, %indvars.iv916
  br i1 %exitcond926.not, label %polly.loop_header626.1, label %polly.loop_header626

polly.loop_header632:                             ; preds = %polly.loop_header632.preheader, %polly.loop_header632
  %polly.indvar635 = phi i64 [ %polly.indvar_next636, %polly.loop_header632 ], [ %polly.indvar635.ph, %polly.loop_header632.preheader ]
  %197 = add nuw nsw i64 %polly.indvar635, %176
  %polly.access.Packed_MemRef_call1475640 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.indvar635
  %_p_scalar_641 = load double, double* %polly.access.Packed_MemRef_call1475640, align 8
  %p_mul27.i = fmul fast double %_p_scalar_645, %_p_scalar_641
  %polly.access.Packed_MemRef_call2477648 = getelementptr double, double* %Packed_MemRef_call2477, i64 %polly.indvar635
  %_p_scalar_649 = load double, double* %polly.access.Packed_MemRef_call2477648, align 8
  %p_mul37.i = fmul fast double %_p_scalar_653, %_p_scalar_649
  %198 = shl i64 %197, 3
  %scevgep655 = getelementptr i8, i8* %scevgep654, i64 %198
  %scevgep655656 = bitcast i8* %scevgep655 to double*
  %_p_scalar_657 = load double, double* %scevgep655656, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_657
  store double %p_add42.i, double* %scevgep655656, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next636 = add nuw nsw i64 %polly.indvar635, 1
  %exitcond925.not = icmp eq i64 %polly.indvar635, %smin924
  br i1 %exitcond925.not, label %polly.loop_exit634, label %polly.loop_header632, !llvm.loop !111

polly.loop_header796:                             ; preds = %entry, %polly.loop_exit804
  %polly.indvar799 = phi i64 [ %polly.indvar_next800, %polly.loop_exit804 ], [ 0, %entry ]
  %199 = mul nuw nsw i64 %polly.indvar799, 640
  %200 = trunc i64 %polly.indvar799 to i32
  %broadcast.splatinsert1041 = insertelement <4 x i32> poison, i32 %200, i32 0
  %broadcast.splat1042 = shufflevector <4 x i32> %broadcast.splatinsert1041, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1031

vector.body1031:                                  ; preds = %vector.body1031, %polly.loop_header796
  %index1033 = phi i64 [ 0, %polly.loop_header796 ], [ %index.next1034, %vector.body1031 ]
  %vec.ind1039 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header796 ], [ %vec.ind.next1040, %vector.body1031 ]
  %201 = mul <4 x i32> %vec.ind1039, %broadcast.splat1042
  %202 = add <4 x i32> %201, <i32 3, i32 3, i32 3, i32 3>
  %203 = urem <4 x i32> %202, <i32 80, i32 80, i32 80, i32 80>
  %204 = sitofp <4 x i32> %203 to <4 x double>
  %205 = fmul fast <4 x double> %204, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %206 = shl i64 %index1033, 3
  %207 = add nuw nsw i64 %206, %199
  %208 = getelementptr i8, i8* %call, i64 %207
  %209 = bitcast i8* %208 to <4 x double>*
  store <4 x double> %205, <4 x double>* %209, align 8, !alias.scope !112, !noalias !114
  %index.next1034 = add i64 %index1033, 4
  %vec.ind.next1040 = add <4 x i32> %vec.ind1039, <i32 4, i32 4, i32 4, i32 4>
  %210 = icmp eq i64 %index.next1034, 32
  br i1 %210, label %polly.loop_exit804, label %vector.body1031, !llvm.loop !117

polly.loop_exit804:                               ; preds = %vector.body1031
  %polly.indvar_next800 = add nuw nsw i64 %polly.indvar799, 1
  %exitcond951.not = icmp eq i64 %polly.indvar_next800, 32
  br i1 %exitcond951.not, label %polly.loop_header796.1, label %polly.loop_header796

polly.loop_header823:                             ; preds = %polly.loop_exit804.2.2, %polly.loop_exit831
  %polly.indvar826 = phi i64 [ %polly.indvar_next827, %polly.loop_exit831 ], [ 0, %polly.loop_exit804.2.2 ]
  %211 = mul nuw nsw i64 %polly.indvar826, 480
  %212 = trunc i64 %polly.indvar826 to i32
  %broadcast.splatinsert1155 = insertelement <4 x i32> poison, i32 %212, i32 0
  %broadcast.splat1156 = shufflevector <4 x i32> %broadcast.splatinsert1155, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1145

vector.body1145:                                  ; preds = %vector.body1145, %polly.loop_header823
  %index1147 = phi i64 [ 0, %polly.loop_header823 ], [ %index.next1148, %vector.body1145 ]
  %vec.ind1153 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header823 ], [ %vec.ind.next1154, %vector.body1145 ]
  %213 = mul <4 x i32> %vec.ind1153, %broadcast.splat1156
  %214 = add <4 x i32> %213, <i32 2, i32 2, i32 2, i32 2>
  %215 = urem <4 x i32> %214, <i32 60, i32 60, i32 60, i32 60>
  %216 = sitofp <4 x i32> %215 to <4 x double>
  %217 = fmul fast <4 x double> %216, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %218 = shl i64 %index1147, 3
  %219 = add i64 %218, %211
  %220 = getelementptr i8, i8* %call2, i64 %219
  %221 = bitcast i8* %220 to <4 x double>*
  store <4 x double> %217, <4 x double>* %221, align 8, !alias.scope !116, !noalias !118
  %index.next1148 = add i64 %index1147, 4
  %vec.ind.next1154 = add <4 x i32> %vec.ind1153, <i32 4, i32 4, i32 4, i32 4>
  %222 = icmp eq i64 %index.next1148, 32
  br i1 %222, label %polly.loop_exit831, label %vector.body1145, !llvm.loop !119

polly.loop_exit831:                               ; preds = %vector.body1145
  %polly.indvar_next827 = add nuw nsw i64 %polly.indvar826, 1
  %exitcond942.not = icmp eq i64 %polly.indvar_next827, 32
  br i1 %exitcond942.not, label %polly.loop_header823.1, label %polly.loop_header823

polly.loop_header849:                             ; preds = %polly.loop_exit831.1.2, %polly.loop_exit857
  %polly.indvar852 = phi i64 [ %polly.indvar_next853, %polly.loop_exit857 ], [ 0, %polly.loop_exit831.1.2 ]
  %223 = mul nuw nsw i64 %polly.indvar852, 480
  %224 = trunc i64 %polly.indvar852 to i32
  %broadcast.splatinsert1233 = insertelement <4 x i32> poison, i32 %224, i32 0
  %broadcast.splat1234 = shufflevector <4 x i32> %broadcast.splatinsert1233, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1223

vector.body1223:                                  ; preds = %vector.body1223, %polly.loop_header849
  %index1225 = phi i64 [ 0, %polly.loop_header849 ], [ %index.next1226, %vector.body1223 ]
  %vec.ind1231 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header849 ], [ %vec.ind.next1232, %vector.body1223 ]
  %225 = mul <4 x i32> %vec.ind1231, %broadcast.splat1234
  %226 = add <4 x i32> %225, <i32 1, i32 1, i32 1, i32 1>
  %227 = urem <4 x i32> %226, <i32 80, i32 80, i32 80, i32 80>
  %228 = sitofp <4 x i32> %227 to <4 x double>
  %229 = fmul fast <4 x double> %228, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %230 = shl i64 %index1225, 3
  %231 = add i64 %230, %223
  %232 = getelementptr i8, i8* %call1, i64 %231
  %233 = bitcast i8* %232 to <4 x double>*
  store <4 x double> %229, <4 x double>* %233, align 8, !alias.scope !115, !noalias !120
  %index.next1226 = add i64 %index1225, 4
  %vec.ind.next1232 = add <4 x i32> %vec.ind1231, <i32 4, i32 4, i32 4, i32 4>
  %234 = icmp eq i64 %index.next1226, 32
  br i1 %234, label %polly.loop_exit857, label %vector.body1223, !llvm.loop !121

polly.loop_exit857:                               ; preds = %vector.body1223
  %polly.indvar_next853 = add nuw nsw i64 %polly.indvar852, 1
  %exitcond936.not = icmp eq i64 %polly.indvar_next853, 32
  br i1 %exitcond936.not, label %polly.loop_header849.1, label %polly.loop_header849

polly.loop_header218.1:                           ; preds = %polly.loop_header218, %polly.loop_header218.1
  %polly.indvar221.1 = phi i64 [ %polly.indvar_next222.1, %polly.loop_header218.1 ], [ 0, %polly.loop_header218 ]
  %235 = add nuw nsw i64 %polly.indvar221.1, %102
  %polly.access.mul.call2225.1 = mul nuw nsw i64 %235, 60
  %polly.access.add.call2226.1 = add nuw nsw i64 %98, %polly.access.mul.call2225.1
  %polly.access.call2227.1 = getelementptr double, double* %polly.access.cast.call2672, i64 %polly.access.add.call2226.1
  %polly.access.call2227.load.1 = load double, double* %polly.access.call2227.1, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2.1 = add nuw nsw i64 %polly.indvar221.1, 80
  %polly.access.Packed_MemRef_call2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.1
  store double %polly.access.call2227.load.1, double* %polly.access.Packed_MemRef_call2.1, align 8
  %polly.indvar_next222.1 = add nuw nsw i64 %polly.indvar221.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next222.1, %indvars.iv
  br i1 %exitcond.1.not, label %polly.loop_header218.2, label %polly.loop_header218.1

polly.loop_header218.2:                           ; preds = %polly.loop_header218.1, %polly.loop_header218.2
  %polly.indvar221.2 = phi i64 [ %polly.indvar_next222.2, %polly.loop_header218.2 ], [ 0, %polly.loop_header218.1 ]
  %236 = add nuw nsw i64 %polly.indvar221.2, %102
  %polly.access.mul.call2225.2 = mul nuw nsw i64 %236, 60
  %polly.access.add.call2226.2 = add nuw nsw i64 %99, %polly.access.mul.call2225.2
  %polly.access.call2227.2 = getelementptr double, double* %polly.access.cast.call2672, i64 %polly.access.add.call2226.2
  %polly.access.call2227.load.2 = load double, double* %polly.access.call2227.2, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2.2 = add nuw nsw i64 %polly.indvar221.2, 160
  %polly.access.Packed_MemRef_call2.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.2
  store double %polly.access.call2227.load.2, double* %polly.access.Packed_MemRef_call2.2, align 8
  %polly.indvar_next222.2 = add nuw nsw i64 %polly.indvar221.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next222.2, %indvars.iv
  br i1 %exitcond.2.not, label %polly.loop_header218.3, label %polly.loop_header218.2

polly.loop_header218.3:                           ; preds = %polly.loop_header218.2, %polly.loop_header218.3
  %polly.indvar221.3 = phi i64 [ %polly.indvar_next222.3, %polly.loop_header218.3 ], [ 0, %polly.loop_header218.2 ]
  %237 = add nuw nsw i64 %polly.indvar221.3, %102
  %polly.access.mul.call2225.3 = mul nuw nsw i64 %237, 60
  %polly.access.add.call2226.3 = add nuw nsw i64 %100, %polly.access.mul.call2225.3
  %polly.access.call2227.3 = getelementptr double, double* %polly.access.cast.call2672, i64 %polly.access.add.call2226.3
  %polly.access.call2227.load.3 = load double, double* %polly.access.call2227.3, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2.3 = add nuw nsw i64 %polly.indvar221.3, 240
  %polly.access.Packed_MemRef_call2.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.3
  store double %polly.access.call2227.load.3, double* %polly.access.Packed_MemRef_call2.3, align 8
  %polly.indvar_next222.3 = add nuw nsw i64 %polly.indvar221.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar_next222.3, %indvars.iv
  br i1 %exitcond.3.not, label %polly.loop_header234, label %polly.loop_header218.3

polly.loop_header234.1:                           ; preds = %polly.loop_header234, %polly.loop_header234.1
  %polly.indvar237.1 = phi i64 [ %polly.indvar_next238.1, %polly.loop_header234.1 ], [ 0, %polly.loop_header234 ]
  %238 = add nuw nsw i64 %polly.indvar237.1, %102
  %polly.access.mul.call1241.1 = mul nuw nsw i64 %238, 60
  %polly.access.add.call1242.1 = add nuw nsw i64 %98, %polly.access.mul.call1241.1
  %polly.access.call1243.1 = getelementptr double, double* %polly.access.cast.call1662, i64 %polly.access.add.call1242.1
  %polly.access.call1243.load.1 = load double, double* %polly.access.call1243.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.1 = add nuw nsw i64 %polly.indvar237.1, 80
  %polly.access.Packed_MemRef_call1.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.1
  store double %polly.access.call1243.load.1, double* %polly.access.Packed_MemRef_call1.1, align 8
  %polly.indvar_next238.1 = add nuw nsw i64 %polly.indvar237.1, 1
  %exitcond889.1.not = icmp eq i64 %polly.indvar_next238.1, %indvars.iv
  br i1 %exitcond889.1.not, label %polly.loop_header234.2, label %polly.loop_header234.1

polly.loop_header234.2:                           ; preds = %polly.loop_header234.1, %polly.loop_header234.2
  %polly.indvar237.2 = phi i64 [ %polly.indvar_next238.2, %polly.loop_header234.2 ], [ 0, %polly.loop_header234.1 ]
  %239 = add nuw nsw i64 %polly.indvar237.2, %102
  %polly.access.mul.call1241.2 = mul nuw nsw i64 %239, 60
  %polly.access.add.call1242.2 = add nuw nsw i64 %99, %polly.access.mul.call1241.2
  %polly.access.call1243.2 = getelementptr double, double* %polly.access.cast.call1662, i64 %polly.access.add.call1242.2
  %polly.access.call1243.load.2 = load double, double* %polly.access.call1243.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.2 = add nuw nsw i64 %polly.indvar237.2, 160
  %polly.access.Packed_MemRef_call1.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.2
  store double %polly.access.call1243.load.2, double* %polly.access.Packed_MemRef_call1.2, align 8
  %polly.indvar_next238.2 = add nuw nsw i64 %polly.indvar237.2, 1
  %exitcond889.2.not = icmp eq i64 %polly.indvar_next238.2, %indvars.iv
  br i1 %exitcond889.2.not, label %polly.loop_header234.3, label %polly.loop_header234.2

polly.loop_header234.3:                           ; preds = %polly.loop_header234.2, %polly.loop_header234.3
  %polly.indvar237.3 = phi i64 [ %polly.indvar_next238.3, %polly.loop_header234.3 ], [ 0, %polly.loop_header234.2 ]
  %240 = add nuw nsw i64 %polly.indvar237.3, %102
  %polly.access.mul.call1241.3 = mul nuw nsw i64 %240, 60
  %polly.access.add.call1242.3 = add nuw nsw i64 %100, %polly.access.mul.call1241.3
  %polly.access.call1243.3 = getelementptr double, double* %polly.access.cast.call1662, i64 %polly.access.add.call1242.3
  %polly.access.call1243.load.3 = load double, double* %polly.access.call1243.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.3 = add nuw nsw i64 %polly.indvar237.3, 240
  %polly.access.Packed_MemRef_call1.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.3
  store double %polly.access.call1243.load.3, double* %polly.access.Packed_MemRef_call1.3, align 8
  %polly.indvar_next238.3 = add nuw nsw i64 %polly.indvar237.3, 1
  %exitcond889.3.not = icmp eq i64 %polly.indvar_next238.3, %indvars.iv
  br i1 %exitcond889.3.not, label %polly.loop_header250, label %polly.loop_header234.3

polly.loop_header250.1:                           ; preds = %polly.loop_exit258, %polly.loop_exit258.1
  %indvars.iv891.1 = phi i64 [ %indvars.iv.next892.1, %polly.loop_exit258.1 ], [ 0, %polly.loop_exit258 ]
  %polly.indvar253.1 = phi i64 [ %polly.indvar_next254.1, %polly.loop_exit258.1 ], [ %102, %polly.loop_exit258 ]
  %smin1564 = call i64 @llvm.smin.i64(i64 %indvars.iv891.1, i64 31)
  %241 = add nuw nsw i64 %smin1564, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv891.1, i64 31)
  %242 = add nsw i64 %polly.indvar253.1, %101
  %243 = mul nuw nsw i64 %polly.indvar253.1, 640
  %scevgep278.1 = getelementptr i8, i8* %call, i64 %243
  %polly.access.add.Packed_MemRef_call2267.1 = add nuw nsw i64 %242, 80
  %polly.access.Packed_MemRef_call2268.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2267.1
  %_p_scalar_269.1 = load double, double* %polly.access.Packed_MemRef_call2268.1, align 8
  %polly.access.Packed_MemRef_call1276.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2267.1
  %_p_scalar_277.1 = load double, double* %polly.access.Packed_MemRef_call1276.1, align 8
  %min.iters.check1565 = icmp ult i64 %smin1564, 3
  br i1 %min.iters.check1565, label %polly.loop_header256.1.preheader, label %vector.ph1566

vector.ph1566:                                    ; preds = %polly.loop_header250.1
  %n.vec1568 = and i64 %241, 60
  %broadcast.splatinsert1574 = insertelement <4 x double> poison, double %_p_scalar_269.1, i32 0
  %broadcast.splat1575 = shufflevector <4 x double> %broadcast.splatinsert1574, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1577 = insertelement <4 x double> poison, double %_p_scalar_277.1, i32 0
  %broadcast.splat1578 = shufflevector <4 x double> %broadcast.splatinsert1577, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1563

vector.body1563:                                  ; preds = %vector.body1563, %vector.ph1566
  %index1569 = phi i64 [ 0, %vector.ph1566 ], [ %index.next1570, %vector.body1563 ]
  %244 = add nuw nsw i64 %index1569, %102
  %245 = add nuw nsw i64 %index1569, 80
  %246 = getelementptr double, double* %Packed_MemRef_call1, i64 %245
  %247 = bitcast double* %246 to <4 x double>*
  %wide.load1573 = load <4 x double>, <4 x double>* %247, align 8
  %248 = fmul fast <4 x double> %broadcast.splat1575, %wide.load1573
  %249 = getelementptr double, double* %Packed_MemRef_call2, i64 %245
  %250 = bitcast double* %249 to <4 x double>*
  %wide.load1576 = load <4 x double>, <4 x double>* %250, align 8
  %251 = fmul fast <4 x double> %broadcast.splat1578, %wide.load1576
  %252 = shl i64 %244, 3
  %253 = getelementptr i8, i8* %scevgep278.1, i64 %252
  %254 = bitcast i8* %253 to <4 x double>*
  %wide.load1579 = load <4 x double>, <4 x double>* %254, align 8, !alias.scope !72, !noalias !74
  %255 = fadd fast <4 x double> %251, %248
  %256 = fmul fast <4 x double> %255, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %257 = fadd fast <4 x double> %256, %wide.load1579
  %258 = bitcast i8* %253 to <4 x double>*
  store <4 x double> %257, <4 x double>* %258, align 8, !alias.scope !72, !noalias !74
  %index.next1570 = add i64 %index1569, 4
  %259 = icmp eq i64 %index.next1570, %n.vec1568
  br i1 %259, label %middle.block1561, label %vector.body1563, !llvm.loop !122

middle.block1561:                                 ; preds = %vector.body1563
  %cmp.n1572 = icmp eq i64 %241, %n.vec1568
  br i1 %cmp.n1572, label %polly.loop_exit258.1, label %polly.loop_header256.1.preheader

polly.loop_header256.1.preheader:                 ; preds = %polly.loop_header250.1, %middle.block1561
  %polly.indvar259.1.ph = phi i64 [ 0, %polly.loop_header250.1 ], [ %n.vec1568, %middle.block1561 ]
  br label %polly.loop_header256.1

polly.loop_header256.1:                           ; preds = %polly.loop_header256.1.preheader, %polly.loop_header256.1
  %polly.indvar259.1 = phi i64 [ %polly.indvar_next260.1, %polly.loop_header256.1 ], [ %polly.indvar259.1.ph, %polly.loop_header256.1.preheader ]
  %260 = add nuw nsw i64 %polly.indvar259.1, %102
  %polly.access.add.Packed_MemRef_call1263.1 = add nuw nsw i64 %polly.indvar259.1, 80
  %polly.access.Packed_MemRef_call1264.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.1
  %_p_scalar_265.1 = load double, double* %polly.access.Packed_MemRef_call1264.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_269.1, %_p_scalar_265.1
  %polly.access.Packed_MemRef_call2272.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1263.1
  %_p_scalar_273.1 = load double, double* %polly.access.Packed_MemRef_call2272.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_277.1, %_p_scalar_273.1
  %261 = shl i64 %260, 3
  %scevgep279.1 = getelementptr i8, i8* %scevgep278.1, i64 %261
  %scevgep279280.1 = bitcast i8* %scevgep279.1 to double*
  %_p_scalar_281.1 = load double, double* %scevgep279280.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_281.1
  store double %p_add42.i118.1, double* %scevgep279280.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next260.1 = add nuw nsw i64 %polly.indvar259.1, 1
  %exitcond893.1.not = icmp eq i64 %polly.indvar259.1, %smin.1
  br i1 %exitcond893.1.not, label %polly.loop_exit258.1, label %polly.loop_header256.1, !llvm.loop !123

polly.loop_exit258.1:                             ; preds = %polly.loop_header256.1, %middle.block1561
  %polly.indvar_next254.1 = add nuw nsw i64 %polly.indvar253.1, 1
  %indvars.iv.next892.1 = add nuw nsw i64 %indvars.iv891.1, 1
  %exitcond894.1.not = icmp eq i64 %indvars.iv.next892.1, %indvars.iv
  br i1 %exitcond894.1.not, label %polly.loop_header250.2, label %polly.loop_header250.1

polly.loop_header250.2:                           ; preds = %polly.loop_exit258.1, %polly.loop_exit258.2
  %indvars.iv891.2 = phi i64 [ %indvars.iv.next892.2, %polly.loop_exit258.2 ], [ 0, %polly.loop_exit258.1 ]
  %polly.indvar253.2 = phi i64 [ %polly.indvar_next254.2, %polly.loop_exit258.2 ], [ %102, %polly.loop_exit258.1 ]
  %smin1545 = call i64 @llvm.smin.i64(i64 %indvars.iv891.2, i64 31)
  %262 = add nuw nsw i64 %smin1545, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv891.2, i64 31)
  %263 = add nsw i64 %polly.indvar253.2, %101
  %264 = mul nuw nsw i64 %polly.indvar253.2, 640
  %scevgep278.2 = getelementptr i8, i8* %call, i64 %264
  %polly.access.add.Packed_MemRef_call2267.2 = add nuw nsw i64 %263, 160
  %polly.access.Packed_MemRef_call2268.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2267.2
  %_p_scalar_269.2 = load double, double* %polly.access.Packed_MemRef_call2268.2, align 8
  %polly.access.Packed_MemRef_call1276.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2267.2
  %_p_scalar_277.2 = load double, double* %polly.access.Packed_MemRef_call1276.2, align 8
  %min.iters.check1546 = icmp ult i64 %smin1545, 3
  br i1 %min.iters.check1546, label %polly.loop_header256.2.preheader, label %vector.ph1547

vector.ph1547:                                    ; preds = %polly.loop_header250.2
  %n.vec1549 = and i64 %262, 60
  %broadcast.splatinsert1555 = insertelement <4 x double> poison, double %_p_scalar_269.2, i32 0
  %broadcast.splat1556 = shufflevector <4 x double> %broadcast.splatinsert1555, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1558 = insertelement <4 x double> poison, double %_p_scalar_277.2, i32 0
  %broadcast.splat1559 = shufflevector <4 x double> %broadcast.splatinsert1558, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1544

vector.body1544:                                  ; preds = %vector.body1544, %vector.ph1547
  %index1550 = phi i64 [ 0, %vector.ph1547 ], [ %index.next1551, %vector.body1544 ]
  %265 = add nuw nsw i64 %index1550, %102
  %266 = add nuw nsw i64 %index1550, 160
  %267 = getelementptr double, double* %Packed_MemRef_call1, i64 %266
  %268 = bitcast double* %267 to <4 x double>*
  %wide.load1554 = load <4 x double>, <4 x double>* %268, align 8
  %269 = fmul fast <4 x double> %broadcast.splat1556, %wide.load1554
  %270 = getelementptr double, double* %Packed_MemRef_call2, i64 %266
  %271 = bitcast double* %270 to <4 x double>*
  %wide.load1557 = load <4 x double>, <4 x double>* %271, align 8
  %272 = fmul fast <4 x double> %broadcast.splat1559, %wide.load1557
  %273 = shl i64 %265, 3
  %274 = getelementptr i8, i8* %scevgep278.2, i64 %273
  %275 = bitcast i8* %274 to <4 x double>*
  %wide.load1560 = load <4 x double>, <4 x double>* %275, align 8, !alias.scope !72, !noalias !74
  %276 = fadd fast <4 x double> %272, %269
  %277 = fmul fast <4 x double> %276, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %278 = fadd fast <4 x double> %277, %wide.load1560
  %279 = bitcast i8* %274 to <4 x double>*
  store <4 x double> %278, <4 x double>* %279, align 8, !alias.scope !72, !noalias !74
  %index.next1551 = add i64 %index1550, 4
  %280 = icmp eq i64 %index.next1551, %n.vec1549
  br i1 %280, label %middle.block1542, label %vector.body1544, !llvm.loop !124

middle.block1542:                                 ; preds = %vector.body1544
  %cmp.n1553 = icmp eq i64 %262, %n.vec1549
  br i1 %cmp.n1553, label %polly.loop_exit258.2, label %polly.loop_header256.2.preheader

polly.loop_header256.2.preheader:                 ; preds = %polly.loop_header250.2, %middle.block1542
  %polly.indvar259.2.ph = phi i64 [ 0, %polly.loop_header250.2 ], [ %n.vec1549, %middle.block1542 ]
  br label %polly.loop_header256.2

polly.loop_header256.2:                           ; preds = %polly.loop_header256.2.preheader, %polly.loop_header256.2
  %polly.indvar259.2 = phi i64 [ %polly.indvar_next260.2, %polly.loop_header256.2 ], [ %polly.indvar259.2.ph, %polly.loop_header256.2.preheader ]
  %281 = add nuw nsw i64 %polly.indvar259.2, %102
  %polly.access.add.Packed_MemRef_call1263.2 = add nuw nsw i64 %polly.indvar259.2, 160
  %polly.access.Packed_MemRef_call1264.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.2
  %_p_scalar_265.2 = load double, double* %polly.access.Packed_MemRef_call1264.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_269.2, %_p_scalar_265.2
  %polly.access.Packed_MemRef_call2272.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1263.2
  %_p_scalar_273.2 = load double, double* %polly.access.Packed_MemRef_call2272.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_277.2, %_p_scalar_273.2
  %282 = shl i64 %281, 3
  %scevgep279.2 = getelementptr i8, i8* %scevgep278.2, i64 %282
  %scevgep279280.2 = bitcast i8* %scevgep279.2 to double*
  %_p_scalar_281.2 = load double, double* %scevgep279280.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_281.2
  store double %p_add42.i118.2, double* %scevgep279280.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next260.2 = add nuw nsw i64 %polly.indvar259.2, 1
  %exitcond893.2.not = icmp eq i64 %polly.indvar259.2, %smin.2
  br i1 %exitcond893.2.not, label %polly.loop_exit258.2, label %polly.loop_header256.2, !llvm.loop !125

polly.loop_exit258.2:                             ; preds = %polly.loop_header256.2, %middle.block1542
  %polly.indvar_next254.2 = add nuw nsw i64 %polly.indvar253.2, 1
  %indvars.iv.next892.2 = add nuw nsw i64 %indvars.iv891.2, 1
  %exitcond894.2.not = icmp eq i64 %indvars.iv.next892.2, %indvars.iv
  br i1 %exitcond894.2.not, label %polly.loop_header250.3, label %polly.loop_header250.2

polly.loop_header250.3:                           ; preds = %polly.loop_exit258.2, %polly.loop_exit258.3
  %indvars.iv891.3 = phi i64 [ %indvars.iv.next892.3, %polly.loop_exit258.3 ], [ 0, %polly.loop_exit258.2 ]
  %polly.indvar253.3 = phi i64 [ %polly.indvar_next254.3, %polly.loop_exit258.3 ], [ %102, %polly.loop_exit258.2 ]
  %smin1526 = call i64 @llvm.smin.i64(i64 %indvars.iv891.3, i64 31)
  %283 = add nuw nsw i64 %smin1526, 1
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv891.3, i64 31)
  %284 = add nsw i64 %polly.indvar253.3, %101
  %285 = mul nuw nsw i64 %polly.indvar253.3, 640
  %scevgep278.3 = getelementptr i8, i8* %call, i64 %285
  %polly.access.add.Packed_MemRef_call2267.3 = add nuw nsw i64 %284, 240
  %polly.access.Packed_MemRef_call2268.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2267.3
  %_p_scalar_269.3 = load double, double* %polly.access.Packed_MemRef_call2268.3, align 8
  %polly.access.Packed_MemRef_call1276.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2267.3
  %_p_scalar_277.3 = load double, double* %polly.access.Packed_MemRef_call1276.3, align 8
  %min.iters.check1527 = icmp ult i64 %smin1526, 3
  br i1 %min.iters.check1527, label %polly.loop_header256.3.preheader, label %vector.ph1528

vector.ph1528:                                    ; preds = %polly.loop_header250.3
  %n.vec1530 = and i64 %283, 60
  %broadcast.splatinsert1536 = insertelement <4 x double> poison, double %_p_scalar_269.3, i32 0
  %broadcast.splat1537 = shufflevector <4 x double> %broadcast.splatinsert1536, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1539 = insertelement <4 x double> poison, double %_p_scalar_277.3, i32 0
  %broadcast.splat1540 = shufflevector <4 x double> %broadcast.splatinsert1539, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1525

vector.body1525:                                  ; preds = %vector.body1525, %vector.ph1528
  %index1531 = phi i64 [ 0, %vector.ph1528 ], [ %index.next1532, %vector.body1525 ]
  %286 = add nuw nsw i64 %index1531, %102
  %287 = add nuw nsw i64 %index1531, 240
  %288 = getelementptr double, double* %Packed_MemRef_call1, i64 %287
  %289 = bitcast double* %288 to <4 x double>*
  %wide.load1535 = load <4 x double>, <4 x double>* %289, align 8
  %290 = fmul fast <4 x double> %broadcast.splat1537, %wide.load1535
  %291 = getelementptr double, double* %Packed_MemRef_call2, i64 %287
  %292 = bitcast double* %291 to <4 x double>*
  %wide.load1538 = load <4 x double>, <4 x double>* %292, align 8
  %293 = fmul fast <4 x double> %broadcast.splat1540, %wide.load1538
  %294 = shl i64 %286, 3
  %295 = getelementptr i8, i8* %scevgep278.3, i64 %294
  %296 = bitcast i8* %295 to <4 x double>*
  %wide.load1541 = load <4 x double>, <4 x double>* %296, align 8, !alias.scope !72, !noalias !74
  %297 = fadd fast <4 x double> %293, %290
  %298 = fmul fast <4 x double> %297, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %299 = fadd fast <4 x double> %298, %wide.load1541
  %300 = bitcast i8* %295 to <4 x double>*
  store <4 x double> %299, <4 x double>* %300, align 8, !alias.scope !72, !noalias !74
  %index.next1532 = add i64 %index1531, 4
  %301 = icmp eq i64 %index.next1532, %n.vec1530
  br i1 %301, label %middle.block1523, label %vector.body1525, !llvm.loop !126

middle.block1523:                                 ; preds = %vector.body1525
  %cmp.n1534 = icmp eq i64 %283, %n.vec1530
  br i1 %cmp.n1534, label %polly.loop_exit258.3, label %polly.loop_header256.3.preheader

polly.loop_header256.3.preheader:                 ; preds = %polly.loop_header250.3, %middle.block1523
  %polly.indvar259.3.ph = phi i64 [ 0, %polly.loop_header250.3 ], [ %n.vec1530, %middle.block1523 ]
  br label %polly.loop_header256.3

polly.loop_header256.3:                           ; preds = %polly.loop_header256.3.preheader, %polly.loop_header256.3
  %polly.indvar259.3 = phi i64 [ %polly.indvar_next260.3, %polly.loop_header256.3 ], [ %polly.indvar259.3.ph, %polly.loop_header256.3.preheader ]
  %302 = add nuw nsw i64 %polly.indvar259.3, %102
  %polly.access.add.Packed_MemRef_call1263.3 = add nuw nsw i64 %polly.indvar259.3, 240
  %polly.access.Packed_MemRef_call1264.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.3
  %_p_scalar_265.3 = load double, double* %polly.access.Packed_MemRef_call1264.3, align 8
  %p_mul27.i112.3 = fmul fast double %_p_scalar_269.3, %_p_scalar_265.3
  %polly.access.Packed_MemRef_call2272.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1263.3
  %_p_scalar_273.3 = load double, double* %polly.access.Packed_MemRef_call2272.3, align 8
  %p_mul37.i114.3 = fmul fast double %_p_scalar_277.3, %_p_scalar_273.3
  %303 = shl i64 %302, 3
  %scevgep279.3 = getelementptr i8, i8* %scevgep278.3, i64 %303
  %scevgep279280.3 = bitcast i8* %scevgep279.3 to double*
  %_p_scalar_281.3 = load double, double* %scevgep279280.3, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_281.3
  store double %p_add42.i118.3, double* %scevgep279280.3, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next260.3 = add nuw nsw i64 %polly.indvar259.3, 1
  %exitcond893.3.not = icmp eq i64 %polly.indvar259.3, %smin.3
  br i1 %exitcond893.3.not, label %polly.loop_exit258.3, label %polly.loop_header256.3, !llvm.loop !127

polly.loop_exit258.3:                             ; preds = %polly.loop_header256.3, %middle.block1523
  %polly.indvar_next254.3 = add nuw nsw i64 %polly.indvar253.3, 1
  %indvars.iv.next892.3 = add nuw nsw i64 %indvars.iv891.3, 1
  %exitcond894.3.not = icmp eq i64 %indvars.iv.next892.3, %indvars.iv
  br i1 %exitcond894.3.not, label %polly.loop_exit252.3, label %polly.loop_header250.3

polly.loop_exit252.3:                             ; preds = %polly.loop_exit258.3
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %exitcond896.not = icmp eq i64 %polly.indvar_next210, 3
  br i1 %exitcond896.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header406.1:                           ; preds = %polly.loop_header406, %polly.loop_header406.1
  %polly.indvar409.1 = phi i64 [ %polly.indvar_next410.1, %polly.loop_header406.1 ], [ 0, %polly.loop_header406 ]
  %304 = add nuw nsw i64 %polly.indvar409.1, %139
  %polly.access.mul.call2413.1 = mul nuw nsw i64 %304, 60
  %polly.access.add.call2414.1 = add nuw nsw i64 %135, %polly.access.mul.call2413.1
  %polly.access.call2415.1 = getelementptr double, double* %polly.access.cast.call2672, i64 %polly.access.add.call2414.1
  %polly.access.call2415.load.1 = load double, double* %polly.access.call2415.1, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2289.1 = add nuw nsw i64 %polly.indvar409.1, 80
  %polly.access.Packed_MemRef_call2289.1 = getelementptr double, double* %Packed_MemRef_call2289, i64 %polly.access.add.Packed_MemRef_call2289.1
  store double %polly.access.call2415.load.1, double* %polly.access.Packed_MemRef_call2289.1, align 8
  %polly.indvar_next410.1 = add nuw nsw i64 %polly.indvar409.1, 1
  %exitcond902.1.not = icmp eq i64 %polly.indvar_next410.1, %indvars.iv900
  br i1 %exitcond902.1.not, label %polly.loop_header406.2, label %polly.loop_header406.1

polly.loop_header406.2:                           ; preds = %polly.loop_header406.1, %polly.loop_header406.2
  %polly.indvar409.2 = phi i64 [ %polly.indvar_next410.2, %polly.loop_header406.2 ], [ 0, %polly.loop_header406.1 ]
  %305 = add nuw nsw i64 %polly.indvar409.2, %139
  %polly.access.mul.call2413.2 = mul nuw nsw i64 %305, 60
  %polly.access.add.call2414.2 = add nuw nsw i64 %136, %polly.access.mul.call2413.2
  %polly.access.call2415.2 = getelementptr double, double* %polly.access.cast.call2672, i64 %polly.access.add.call2414.2
  %polly.access.call2415.load.2 = load double, double* %polly.access.call2415.2, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2289.2 = add nuw nsw i64 %polly.indvar409.2, 160
  %polly.access.Packed_MemRef_call2289.2 = getelementptr double, double* %Packed_MemRef_call2289, i64 %polly.access.add.Packed_MemRef_call2289.2
  store double %polly.access.call2415.load.2, double* %polly.access.Packed_MemRef_call2289.2, align 8
  %polly.indvar_next410.2 = add nuw nsw i64 %polly.indvar409.2, 1
  %exitcond902.2.not = icmp eq i64 %polly.indvar_next410.2, %indvars.iv900
  br i1 %exitcond902.2.not, label %polly.loop_header406.3, label %polly.loop_header406.2

polly.loop_header406.3:                           ; preds = %polly.loop_header406.2, %polly.loop_header406.3
  %polly.indvar409.3 = phi i64 [ %polly.indvar_next410.3, %polly.loop_header406.3 ], [ 0, %polly.loop_header406.2 ]
  %306 = add nuw nsw i64 %polly.indvar409.3, %139
  %polly.access.mul.call2413.3 = mul nuw nsw i64 %306, 60
  %polly.access.add.call2414.3 = add nuw nsw i64 %137, %polly.access.mul.call2413.3
  %polly.access.call2415.3 = getelementptr double, double* %polly.access.cast.call2672, i64 %polly.access.add.call2414.3
  %polly.access.call2415.load.3 = load double, double* %polly.access.call2415.3, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2289.3 = add nuw nsw i64 %polly.indvar409.3, 240
  %polly.access.Packed_MemRef_call2289.3 = getelementptr double, double* %Packed_MemRef_call2289, i64 %polly.access.add.Packed_MemRef_call2289.3
  store double %polly.access.call2415.load.3, double* %polly.access.Packed_MemRef_call2289.3, align 8
  %polly.indvar_next410.3 = add nuw nsw i64 %polly.indvar409.3, 1
  %exitcond902.3.not = icmp eq i64 %polly.indvar_next410.3, %indvars.iv900
  br i1 %exitcond902.3.not, label %polly.loop_header422, label %polly.loop_header406.3

polly.loop_header422.1:                           ; preds = %polly.loop_header422, %polly.loop_header422.1
  %polly.indvar425.1 = phi i64 [ %polly.indvar_next426.1, %polly.loop_header422.1 ], [ 0, %polly.loop_header422 ]
  %307 = add nuw nsw i64 %polly.indvar425.1, %139
  %polly.access.mul.call1429.1 = mul nuw nsw i64 %307, 60
  %polly.access.add.call1430.1 = add nuw nsw i64 %135, %polly.access.mul.call1429.1
  %polly.access.call1431.1 = getelementptr double, double* %polly.access.cast.call1662, i64 %polly.access.add.call1430.1
  %polly.access.call1431.load.1 = load double, double* %polly.access.call1431.1, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1287.1 = add nuw nsw i64 %polly.indvar425.1, 80
  %polly.access.Packed_MemRef_call1287.1 = getelementptr double, double* %Packed_MemRef_call1287, i64 %polly.access.add.Packed_MemRef_call1287.1
  store double %polly.access.call1431.load.1, double* %polly.access.Packed_MemRef_call1287.1, align 8
  %polly.indvar_next426.1 = add nuw nsw i64 %polly.indvar425.1, 1
  %exitcond904.1.not = icmp eq i64 %polly.indvar_next426.1, %indvars.iv900
  br i1 %exitcond904.1.not, label %polly.loop_header422.2, label %polly.loop_header422.1

polly.loop_header422.2:                           ; preds = %polly.loop_header422.1, %polly.loop_header422.2
  %polly.indvar425.2 = phi i64 [ %polly.indvar_next426.2, %polly.loop_header422.2 ], [ 0, %polly.loop_header422.1 ]
  %308 = add nuw nsw i64 %polly.indvar425.2, %139
  %polly.access.mul.call1429.2 = mul nuw nsw i64 %308, 60
  %polly.access.add.call1430.2 = add nuw nsw i64 %136, %polly.access.mul.call1429.2
  %polly.access.call1431.2 = getelementptr double, double* %polly.access.cast.call1662, i64 %polly.access.add.call1430.2
  %polly.access.call1431.load.2 = load double, double* %polly.access.call1431.2, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1287.2 = add nuw nsw i64 %polly.indvar425.2, 160
  %polly.access.Packed_MemRef_call1287.2 = getelementptr double, double* %Packed_MemRef_call1287, i64 %polly.access.add.Packed_MemRef_call1287.2
  store double %polly.access.call1431.load.2, double* %polly.access.Packed_MemRef_call1287.2, align 8
  %polly.indvar_next426.2 = add nuw nsw i64 %polly.indvar425.2, 1
  %exitcond904.2.not = icmp eq i64 %polly.indvar_next426.2, %indvars.iv900
  br i1 %exitcond904.2.not, label %polly.loop_header422.3, label %polly.loop_header422.2

polly.loop_header422.3:                           ; preds = %polly.loop_header422.2, %polly.loop_header422.3
  %polly.indvar425.3 = phi i64 [ %polly.indvar_next426.3, %polly.loop_header422.3 ], [ 0, %polly.loop_header422.2 ]
  %309 = add nuw nsw i64 %polly.indvar425.3, %139
  %polly.access.mul.call1429.3 = mul nuw nsw i64 %309, 60
  %polly.access.add.call1430.3 = add nuw nsw i64 %137, %polly.access.mul.call1429.3
  %polly.access.call1431.3 = getelementptr double, double* %polly.access.cast.call1662, i64 %polly.access.add.call1430.3
  %polly.access.call1431.load.3 = load double, double* %polly.access.call1431.3, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1287.3 = add nuw nsw i64 %polly.indvar425.3, 240
  %polly.access.Packed_MemRef_call1287.3 = getelementptr double, double* %Packed_MemRef_call1287, i64 %polly.access.add.Packed_MemRef_call1287.3
  store double %polly.access.call1431.load.3, double* %polly.access.Packed_MemRef_call1287.3, align 8
  %polly.indvar_next426.3 = add nuw nsw i64 %polly.indvar425.3, 1
  %exitcond904.3.not = icmp eq i64 %polly.indvar_next426.3, %indvars.iv900
  br i1 %exitcond904.3.not, label %polly.loop_header438, label %polly.loop_header422.3

polly.loop_header438.1:                           ; preds = %polly.loop_exit446, %polly.loop_exit446.1
  %indvars.iv906.1 = phi i64 [ %indvars.iv.next907.1, %polly.loop_exit446.1 ], [ 0, %polly.loop_exit446 ]
  %polly.indvar441.1 = phi i64 [ %polly.indvar_next442.1, %polly.loop_exit446.1 ], [ %139, %polly.loop_exit446 ]
  %smin1462 = call i64 @llvm.smin.i64(i64 %indvars.iv906.1, i64 31)
  %310 = add nuw nsw i64 %smin1462, 1
  %smin908.1 = call i64 @llvm.smin.i64(i64 %indvars.iv906.1, i64 31)
  %311 = add nsw i64 %polly.indvar441.1, %138
  %312 = mul nuw nsw i64 %polly.indvar441.1, 640
  %scevgep466.1 = getelementptr i8, i8* %call, i64 %312
  %polly.access.add.Packed_MemRef_call2289455.1 = add nuw nsw i64 %311, 80
  %polly.access.Packed_MemRef_call2289456.1 = getelementptr double, double* %Packed_MemRef_call2289, i64 %polly.access.add.Packed_MemRef_call2289455.1
  %_p_scalar_457.1 = load double, double* %polly.access.Packed_MemRef_call2289456.1, align 8
  %polly.access.Packed_MemRef_call1287464.1 = getelementptr double, double* %Packed_MemRef_call1287, i64 %polly.access.add.Packed_MemRef_call2289455.1
  %_p_scalar_465.1 = load double, double* %polly.access.Packed_MemRef_call1287464.1, align 8
  %min.iters.check1463 = icmp ult i64 %smin1462, 3
  br i1 %min.iters.check1463, label %polly.loop_header444.1.preheader, label %vector.ph1464

vector.ph1464:                                    ; preds = %polly.loop_header438.1
  %n.vec1466 = and i64 %310, 60
  %broadcast.splatinsert1472 = insertelement <4 x double> poison, double %_p_scalar_457.1, i32 0
  %broadcast.splat1473 = shufflevector <4 x double> %broadcast.splatinsert1472, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1475 = insertelement <4 x double> poison, double %_p_scalar_465.1, i32 0
  %broadcast.splat1476 = shufflevector <4 x double> %broadcast.splatinsert1475, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1461

vector.body1461:                                  ; preds = %vector.body1461, %vector.ph1464
  %index1467 = phi i64 [ 0, %vector.ph1464 ], [ %index.next1468, %vector.body1461 ]
  %313 = add nuw nsw i64 %index1467, %139
  %314 = add nuw nsw i64 %index1467, 80
  %315 = getelementptr double, double* %Packed_MemRef_call1287, i64 %314
  %316 = bitcast double* %315 to <4 x double>*
  %wide.load1471 = load <4 x double>, <4 x double>* %316, align 8
  %317 = fmul fast <4 x double> %broadcast.splat1473, %wide.load1471
  %318 = getelementptr double, double* %Packed_MemRef_call2289, i64 %314
  %319 = bitcast double* %318 to <4 x double>*
  %wide.load1474 = load <4 x double>, <4 x double>* %319, align 8
  %320 = fmul fast <4 x double> %broadcast.splat1476, %wide.load1474
  %321 = shl i64 %313, 3
  %322 = getelementptr i8, i8* %scevgep466.1, i64 %321
  %323 = bitcast i8* %322 to <4 x double>*
  %wide.load1477 = load <4 x double>, <4 x double>* %323, align 8, !alias.scope !86, !noalias !88
  %324 = fadd fast <4 x double> %320, %317
  %325 = fmul fast <4 x double> %324, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %326 = fadd fast <4 x double> %325, %wide.load1477
  %327 = bitcast i8* %322 to <4 x double>*
  store <4 x double> %326, <4 x double>* %327, align 8, !alias.scope !86, !noalias !88
  %index.next1468 = add i64 %index1467, 4
  %328 = icmp eq i64 %index.next1468, %n.vec1466
  br i1 %328, label %middle.block1459, label %vector.body1461, !llvm.loop !128

middle.block1459:                                 ; preds = %vector.body1461
  %cmp.n1470 = icmp eq i64 %310, %n.vec1466
  br i1 %cmp.n1470, label %polly.loop_exit446.1, label %polly.loop_header444.1.preheader

polly.loop_header444.1.preheader:                 ; preds = %polly.loop_header438.1, %middle.block1459
  %polly.indvar447.1.ph = phi i64 [ 0, %polly.loop_header438.1 ], [ %n.vec1466, %middle.block1459 ]
  br label %polly.loop_header444.1

polly.loop_header444.1:                           ; preds = %polly.loop_header444.1.preheader, %polly.loop_header444.1
  %polly.indvar447.1 = phi i64 [ %polly.indvar_next448.1, %polly.loop_header444.1 ], [ %polly.indvar447.1.ph, %polly.loop_header444.1.preheader ]
  %329 = add nuw nsw i64 %polly.indvar447.1, %139
  %polly.access.add.Packed_MemRef_call1287451.1 = add nuw nsw i64 %polly.indvar447.1, 80
  %polly.access.Packed_MemRef_call1287452.1 = getelementptr double, double* %Packed_MemRef_call1287, i64 %polly.access.add.Packed_MemRef_call1287451.1
  %_p_scalar_453.1 = load double, double* %polly.access.Packed_MemRef_call1287452.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_457.1, %_p_scalar_453.1
  %polly.access.Packed_MemRef_call2289460.1 = getelementptr double, double* %Packed_MemRef_call2289, i64 %polly.access.add.Packed_MemRef_call1287451.1
  %_p_scalar_461.1 = load double, double* %polly.access.Packed_MemRef_call2289460.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_465.1, %_p_scalar_461.1
  %330 = shl i64 %329, 3
  %scevgep467.1 = getelementptr i8, i8* %scevgep466.1, i64 %330
  %scevgep467468.1 = bitcast i8* %scevgep467.1 to double*
  %_p_scalar_469.1 = load double, double* %scevgep467468.1, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_469.1
  store double %p_add42.i79.1, double* %scevgep467468.1, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next448.1 = add nuw nsw i64 %polly.indvar447.1, 1
  %exitcond909.1.not = icmp eq i64 %polly.indvar447.1, %smin908.1
  br i1 %exitcond909.1.not, label %polly.loop_exit446.1, label %polly.loop_header444.1, !llvm.loop !129

polly.loop_exit446.1:                             ; preds = %polly.loop_header444.1, %middle.block1459
  %polly.indvar_next442.1 = add nuw nsw i64 %polly.indvar441.1, 1
  %indvars.iv.next907.1 = add nuw nsw i64 %indvars.iv906.1, 1
  %exitcond910.1.not = icmp eq i64 %indvars.iv.next907.1, %indvars.iv900
  br i1 %exitcond910.1.not, label %polly.loop_header438.2, label %polly.loop_header438.1

polly.loop_header438.2:                           ; preds = %polly.loop_exit446.1, %polly.loop_exit446.2
  %indvars.iv906.2 = phi i64 [ %indvars.iv.next907.2, %polly.loop_exit446.2 ], [ 0, %polly.loop_exit446.1 ]
  %polly.indvar441.2 = phi i64 [ %polly.indvar_next442.2, %polly.loop_exit446.2 ], [ %139, %polly.loop_exit446.1 ]
  %smin1443 = call i64 @llvm.smin.i64(i64 %indvars.iv906.2, i64 31)
  %331 = add nuw nsw i64 %smin1443, 1
  %smin908.2 = call i64 @llvm.smin.i64(i64 %indvars.iv906.2, i64 31)
  %332 = add nsw i64 %polly.indvar441.2, %138
  %333 = mul nuw nsw i64 %polly.indvar441.2, 640
  %scevgep466.2 = getelementptr i8, i8* %call, i64 %333
  %polly.access.add.Packed_MemRef_call2289455.2 = add nuw nsw i64 %332, 160
  %polly.access.Packed_MemRef_call2289456.2 = getelementptr double, double* %Packed_MemRef_call2289, i64 %polly.access.add.Packed_MemRef_call2289455.2
  %_p_scalar_457.2 = load double, double* %polly.access.Packed_MemRef_call2289456.2, align 8
  %polly.access.Packed_MemRef_call1287464.2 = getelementptr double, double* %Packed_MemRef_call1287, i64 %polly.access.add.Packed_MemRef_call2289455.2
  %_p_scalar_465.2 = load double, double* %polly.access.Packed_MemRef_call1287464.2, align 8
  %min.iters.check1444 = icmp ult i64 %smin1443, 3
  br i1 %min.iters.check1444, label %polly.loop_header444.2.preheader, label %vector.ph1445

vector.ph1445:                                    ; preds = %polly.loop_header438.2
  %n.vec1447 = and i64 %331, 60
  %broadcast.splatinsert1453 = insertelement <4 x double> poison, double %_p_scalar_457.2, i32 0
  %broadcast.splat1454 = shufflevector <4 x double> %broadcast.splatinsert1453, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1456 = insertelement <4 x double> poison, double %_p_scalar_465.2, i32 0
  %broadcast.splat1457 = shufflevector <4 x double> %broadcast.splatinsert1456, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1442

vector.body1442:                                  ; preds = %vector.body1442, %vector.ph1445
  %index1448 = phi i64 [ 0, %vector.ph1445 ], [ %index.next1449, %vector.body1442 ]
  %334 = add nuw nsw i64 %index1448, %139
  %335 = add nuw nsw i64 %index1448, 160
  %336 = getelementptr double, double* %Packed_MemRef_call1287, i64 %335
  %337 = bitcast double* %336 to <4 x double>*
  %wide.load1452 = load <4 x double>, <4 x double>* %337, align 8
  %338 = fmul fast <4 x double> %broadcast.splat1454, %wide.load1452
  %339 = getelementptr double, double* %Packed_MemRef_call2289, i64 %335
  %340 = bitcast double* %339 to <4 x double>*
  %wide.load1455 = load <4 x double>, <4 x double>* %340, align 8
  %341 = fmul fast <4 x double> %broadcast.splat1457, %wide.load1455
  %342 = shl i64 %334, 3
  %343 = getelementptr i8, i8* %scevgep466.2, i64 %342
  %344 = bitcast i8* %343 to <4 x double>*
  %wide.load1458 = load <4 x double>, <4 x double>* %344, align 8, !alias.scope !86, !noalias !88
  %345 = fadd fast <4 x double> %341, %338
  %346 = fmul fast <4 x double> %345, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %347 = fadd fast <4 x double> %346, %wide.load1458
  %348 = bitcast i8* %343 to <4 x double>*
  store <4 x double> %347, <4 x double>* %348, align 8, !alias.scope !86, !noalias !88
  %index.next1449 = add i64 %index1448, 4
  %349 = icmp eq i64 %index.next1449, %n.vec1447
  br i1 %349, label %middle.block1440, label %vector.body1442, !llvm.loop !130

middle.block1440:                                 ; preds = %vector.body1442
  %cmp.n1451 = icmp eq i64 %331, %n.vec1447
  br i1 %cmp.n1451, label %polly.loop_exit446.2, label %polly.loop_header444.2.preheader

polly.loop_header444.2.preheader:                 ; preds = %polly.loop_header438.2, %middle.block1440
  %polly.indvar447.2.ph = phi i64 [ 0, %polly.loop_header438.2 ], [ %n.vec1447, %middle.block1440 ]
  br label %polly.loop_header444.2

polly.loop_header444.2:                           ; preds = %polly.loop_header444.2.preheader, %polly.loop_header444.2
  %polly.indvar447.2 = phi i64 [ %polly.indvar_next448.2, %polly.loop_header444.2 ], [ %polly.indvar447.2.ph, %polly.loop_header444.2.preheader ]
  %350 = add nuw nsw i64 %polly.indvar447.2, %139
  %polly.access.add.Packed_MemRef_call1287451.2 = add nuw nsw i64 %polly.indvar447.2, 160
  %polly.access.Packed_MemRef_call1287452.2 = getelementptr double, double* %Packed_MemRef_call1287, i64 %polly.access.add.Packed_MemRef_call1287451.2
  %_p_scalar_453.2 = load double, double* %polly.access.Packed_MemRef_call1287452.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_457.2, %_p_scalar_453.2
  %polly.access.Packed_MemRef_call2289460.2 = getelementptr double, double* %Packed_MemRef_call2289, i64 %polly.access.add.Packed_MemRef_call1287451.2
  %_p_scalar_461.2 = load double, double* %polly.access.Packed_MemRef_call2289460.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_465.2, %_p_scalar_461.2
  %351 = shl i64 %350, 3
  %scevgep467.2 = getelementptr i8, i8* %scevgep466.2, i64 %351
  %scevgep467468.2 = bitcast i8* %scevgep467.2 to double*
  %_p_scalar_469.2 = load double, double* %scevgep467468.2, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_469.2
  store double %p_add42.i79.2, double* %scevgep467468.2, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next448.2 = add nuw nsw i64 %polly.indvar447.2, 1
  %exitcond909.2.not = icmp eq i64 %polly.indvar447.2, %smin908.2
  br i1 %exitcond909.2.not, label %polly.loop_exit446.2, label %polly.loop_header444.2, !llvm.loop !131

polly.loop_exit446.2:                             ; preds = %polly.loop_header444.2, %middle.block1440
  %polly.indvar_next442.2 = add nuw nsw i64 %polly.indvar441.2, 1
  %indvars.iv.next907.2 = add nuw nsw i64 %indvars.iv906.2, 1
  %exitcond910.2.not = icmp eq i64 %indvars.iv.next907.2, %indvars.iv900
  br i1 %exitcond910.2.not, label %polly.loop_header438.3, label %polly.loop_header438.2

polly.loop_header438.3:                           ; preds = %polly.loop_exit446.2, %polly.loop_exit446.3
  %indvars.iv906.3 = phi i64 [ %indvars.iv.next907.3, %polly.loop_exit446.3 ], [ 0, %polly.loop_exit446.2 ]
  %polly.indvar441.3 = phi i64 [ %polly.indvar_next442.3, %polly.loop_exit446.3 ], [ %139, %polly.loop_exit446.2 ]
  %smin1424 = call i64 @llvm.smin.i64(i64 %indvars.iv906.3, i64 31)
  %352 = add nuw nsw i64 %smin1424, 1
  %smin908.3 = call i64 @llvm.smin.i64(i64 %indvars.iv906.3, i64 31)
  %353 = add nsw i64 %polly.indvar441.3, %138
  %354 = mul nuw nsw i64 %polly.indvar441.3, 640
  %scevgep466.3 = getelementptr i8, i8* %call, i64 %354
  %polly.access.add.Packed_MemRef_call2289455.3 = add nuw nsw i64 %353, 240
  %polly.access.Packed_MemRef_call2289456.3 = getelementptr double, double* %Packed_MemRef_call2289, i64 %polly.access.add.Packed_MemRef_call2289455.3
  %_p_scalar_457.3 = load double, double* %polly.access.Packed_MemRef_call2289456.3, align 8
  %polly.access.Packed_MemRef_call1287464.3 = getelementptr double, double* %Packed_MemRef_call1287, i64 %polly.access.add.Packed_MemRef_call2289455.3
  %_p_scalar_465.3 = load double, double* %polly.access.Packed_MemRef_call1287464.3, align 8
  %min.iters.check1425 = icmp ult i64 %smin1424, 3
  br i1 %min.iters.check1425, label %polly.loop_header444.3.preheader, label %vector.ph1426

vector.ph1426:                                    ; preds = %polly.loop_header438.3
  %n.vec1428 = and i64 %352, 60
  %broadcast.splatinsert1434 = insertelement <4 x double> poison, double %_p_scalar_457.3, i32 0
  %broadcast.splat1435 = shufflevector <4 x double> %broadcast.splatinsert1434, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1437 = insertelement <4 x double> poison, double %_p_scalar_465.3, i32 0
  %broadcast.splat1438 = shufflevector <4 x double> %broadcast.splatinsert1437, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1423

vector.body1423:                                  ; preds = %vector.body1423, %vector.ph1426
  %index1429 = phi i64 [ 0, %vector.ph1426 ], [ %index.next1430, %vector.body1423 ]
  %355 = add nuw nsw i64 %index1429, %139
  %356 = add nuw nsw i64 %index1429, 240
  %357 = getelementptr double, double* %Packed_MemRef_call1287, i64 %356
  %358 = bitcast double* %357 to <4 x double>*
  %wide.load1433 = load <4 x double>, <4 x double>* %358, align 8
  %359 = fmul fast <4 x double> %broadcast.splat1435, %wide.load1433
  %360 = getelementptr double, double* %Packed_MemRef_call2289, i64 %356
  %361 = bitcast double* %360 to <4 x double>*
  %wide.load1436 = load <4 x double>, <4 x double>* %361, align 8
  %362 = fmul fast <4 x double> %broadcast.splat1438, %wide.load1436
  %363 = shl i64 %355, 3
  %364 = getelementptr i8, i8* %scevgep466.3, i64 %363
  %365 = bitcast i8* %364 to <4 x double>*
  %wide.load1439 = load <4 x double>, <4 x double>* %365, align 8, !alias.scope !86, !noalias !88
  %366 = fadd fast <4 x double> %362, %359
  %367 = fmul fast <4 x double> %366, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %368 = fadd fast <4 x double> %367, %wide.load1439
  %369 = bitcast i8* %364 to <4 x double>*
  store <4 x double> %368, <4 x double>* %369, align 8, !alias.scope !86, !noalias !88
  %index.next1430 = add i64 %index1429, 4
  %370 = icmp eq i64 %index.next1430, %n.vec1428
  br i1 %370, label %middle.block1421, label %vector.body1423, !llvm.loop !132

middle.block1421:                                 ; preds = %vector.body1423
  %cmp.n1432 = icmp eq i64 %352, %n.vec1428
  br i1 %cmp.n1432, label %polly.loop_exit446.3, label %polly.loop_header444.3.preheader

polly.loop_header444.3.preheader:                 ; preds = %polly.loop_header438.3, %middle.block1421
  %polly.indvar447.3.ph = phi i64 [ 0, %polly.loop_header438.3 ], [ %n.vec1428, %middle.block1421 ]
  br label %polly.loop_header444.3

polly.loop_header444.3:                           ; preds = %polly.loop_header444.3.preheader, %polly.loop_header444.3
  %polly.indvar447.3 = phi i64 [ %polly.indvar_next448.3, %polly.loop_header444.3 ], [ %polly.indvar447.3.ph, %polly.loop_header444.3.preheader ]
  %371 = add nuw nsw i64 %polly.indvar447.3, %139
  %polly.access.add.Packed_MemRef_call1287451.3 = add nuw nsw i64 %polly.indvar447.3, 240
  %polly.access.Packed_MemRef_call1287452.3 = getelementptr double, double* %Packed_MemRef_call1287, i64 %polly.access.add.Packed_MemRef_call1287451.3
  %_p_scalar_453.3 = load double, double* %polly.access.Packed_MemRef_call1287452.3, align 8
  %p_mul27.i73.3 = fmul fast double %_p_scalar_457.3, %_p_scalar_453.3
  %polly.access.Packed_MemRef_call2289460.3 = getelementptr double, double* %Packed_MemRef_call2289, i64 %polly.access.add.Packed_MemRef_call1287451.3
  %_p_scalar_461.3 = load double, double* %polly.access.Packed_MemRef_call2289460.3, align 8
  %p_mul37.i75.3 = fmul fast double %_p_scalar_465.3, %_p_scalar_461.3
  %372 = shl i64 %371, 3
  %scevgep467.3 = getelementptr i8, i8* %scevgep466.3, i64 %372
  %scevgep467468.3 = bitcast i8* %scevgep467.3 to double*
  %_p_scalar_469.3 = load double, double* %scevgep467468.3, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_469.3
  store double %p_add42.i79.3, double* %scevgep467468.3, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next448.3 = add nuw nsw i64 %polly.indvar447.3, 1
  %exitcond909.3.not = icmp eq i64 %polly.indvar447.3, %smin908.3
  br i1 %exitcond909.3.not, label %polly.loop_exit446.3, label %polly.loop_header444.3, !llvm.loop !133

polly.loop_exit446.3:                             ; preds = %polly.loop_header444.3, %middle.block1421
  %polly.indvar_next442.3 = add nuw nsw i64 %polly.indvar441.3, 1
  %indvars.iv.next907.3 = add nuw nsw i64 %indvars.iv906.3, 1
  %exitcond910.3.not = icmp eq i64 %indvars.iv.next907.3, %indvars.iv900
  br i1 %exitcond910.3.not, label %polly.loop_exit440.3, label %polly.loop_header438.3

polly.loop_exit440.3:                             ; preds = %polly.loop_exit446.3
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %indvars.iv.next901 = add nsw i64 %indvars.iv900, -32
  %exitcond912.not = icmp eq i64 %polly.indvar_next398, 3
  br i1 %exitcond912.not, label %polly.loop_exit396, label %polly.loop_header394

polly.loop_header594.1:                           ; preds = %polly.loop_header594, %polly.loop_header594.1
  %polly.indvar597.1 = phi i64 [ %polly.indvar_next598.1, %polly.loop_header594.1 ], [ 0, %polly.loop_header594 ]
  %373 = add nuw nsw i64 %polly.indvar597.1, %176
  %polly.access.mul.call2601.1 = mul nuw nsw i64 %373, 60
  %polly.access.add.call2602.1 = add nuw nsw i64 %172, %polly.access.mul.call2601.1
  %polly.access.call2603.1 = getelementptr double, double* %polly.access.cast.call2672, i64 %polly.access.add.call2602.1
  %polly.access.call2603.load.1 = load double, double* %polly.access.call2603.1, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2477.1 = add nuw nsw i64 %polly.indvar597.1, 80
  %polly.access.Packed_MemRef_call2477.1 = getelementptr double, double* %Packed_MemRef_call2477, i64 %polly.access.add.Packed_MemRef_call2477.1
  store double %polly.access.call2603.load.1, double* %polly.access.Packed_MemRef_call2477.1, align 8
  %polly.indvar_next598.1 = add nuw nsw i64 %polly.indvar597.1, 1
  %exitcond918.1.not = icmp eq i64 %polly.indvar_next598.1, %indvars.iv916
  br i1 %exitcond918.1.not, label %polly.loop_header594.2, label %polly.loop_header594.1

polly.loop_header594.2:                           ; preds = %polly.loop_header594.1, %polly.loop_header594.2
  %polly.indvar597.2 = phi i64 [ %polly.indvar_next598.2, %polly.loop_header594.2 ], [ 0, %polly.loop_header594.1 ]
  %374 = add nuw nsw i64 %polly.indvar597.2, %176
  %polly.access.mul.call2601.2 = mul nuw nsw i64 %374, 60
  %polly.access.add.call2602.2 = add nuw nsw i64 %173, %polly.access.mul.call2601.2
  %polly.access.call2603.2 = getelementptr double, double* %polly.access.cast.call2672, i64 %polly.access.add.call2602.2
  %polly.access.call2603.load.2 = load double, double* %polly.access.call2603.2, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2477.2 = add nuw nsw i64 %polly.indvar597.2, 160
  %polly.access.Packed_MemRef_call2477.2 = getelementptr double, double* %Packed_MemRef_call2477, i64 %polly.access.add.Packed_MemRef_call2477.2
  store double %polly.access.call2603.load.2, double* %polly.access.Packed_MemRef_call2477.2, align 8
  %polly.indvar_next598.2 = add nuw nsw i64 %polly.indvar597.2, 1
  %exitcond918.2.not = icmp eq i64 %polly.indvar_next598.2, %indvars.iv916
  br i1 %exitcond918.2.not, label %polly.loop_header594.3, label %polly.loop_header594.2

polly.loop_header594.3:                           ; preds = %polly.loop_header594.2, %polly.loop_header594.3
  %polly.indvar597.3 = phi i64 [ %polly.indvar_next598.3, %polly.loop_header594.3 ], [ 0, %polly.loop_header594.2 ]
  %375 = add nuw nsw i64 %polly.indvar597.3, %176
  %polly.access.mul.call2601.3 = mul nuw nsw i64 %375, 60
  %polly.access.add.call2602.3 = add nuw nsw i64 %174, %polly.access.mul.call2601.3
  %polly.access.call2603.3 = getelementptr double, double* %polly.access.cast.call2672, i64 %polly.access.add.call2602.3
  %polly.access.call2603.load.3 = load double, double* %polly.access.call2603.3, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2477.3 = add nuw nsw i64 %polly.indvar597.3, 240
  %polly.access.Packed_MemRef_call2477.3 = getelementptr double, double* %Packed_MemRef_call2477, i64 %polly.access.add.Packed_MemRef_call2477.3
  store double %polly.access.call2603.load.3, double* %polly.access.Packed_MemRef_call2477.3, align 8
  %polly.indvar_next598.3 = add nuw nsw i64 %polly.indvar597.3, 1
  %exitcond918.3.not = icmp eq i64 %polly.indvar_next598.3, %indvars.iv916
  br i1 %exitcond918.3.not, label %polly.loop_header610, label %polly.loop_header594.3

polly.loop_header610.1:                           ; preds = %polly.loop_header610, %polly.loop_header610.1
  %polly.indvar613.1 = phi i64 [ %polly.indvar_next614.1, %polly.loop_header610.1 ], [ 0, %polly.loop_header610 ]
  %376 = add nuw nsw i64 %polly.indvar613.1, %176
  %polly.access.mul.call1617.1 = mul nuw nsw i64 %376, 60
  %polly.access.add.call1618.1 = add nuw nsw i64 %172, %polly.access.mul.call1617.1
  %polly.access.call1619.1 = getelementptr double, double* %polly.access.cast.call1662, i64 %polly.access.add.call1618.1
  %polly.access.call1619.load.1 = load double, double* %polly.access.call1619.1, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1475.1 = add nuw nsw i64 %polly.indvar613.1, 80
  %polly.access.Packed_MemRef_call1475.1 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475.1
  store double %polly.access.call1619.load.1, double* %polly.access.Packed_MemRef_call1475.1, align 8
  %polly.indvar_next614.1 = add nuw nsw i64 %polly.indvar613.1, 1
  %exitcond920.1.not = icmp eq i64 %polly.indvar_next614.1, %indvars.iv916
  br i1 %exitcond920.1.not, label %polly.loop_header610.2, label %polly.loop_header610.1

polly.loop_header610.2:                           ; preds = %polly.loop_header610.1, %polly.loop_header610.2
  %polly.indvar613.2 = phi i64 [ %polly.indvar_next614.2, %polly.loop_header610.2 ], [ 0, %polly.loop_header610.1 ]
  %377 = add nuw nsw i64 %polly.indvar613.2, %176
  %polly.access.mul.call1617.2 = mul nuw nsw i64 %377, 60
  %polly.access.add.call1618.2 = add nuw nsw i64 %173, %polly.access.mul.call1617.2
  %polly.access.call1619.2 = getelementptr double, double* %polly.access.cast.call1662, i64 %polly.access.add.call1618.2
  %polly.access.call1619.load.2 = load double, double* %polly.access.call1619.2, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1475.2 = add nuw nsw i64 %polly.indvar613.2, 160
  %polly.access.Packed_MemRef_call1475.2 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475.2
  store double %polly.access.call1619.load.2, double* %polly.access.Packed_MemRef_call1475.2, align 8
  %polly.indvar_next614.2 = add nuw nsw i64 %polly.indvar613.2, 1
  %exitcond920.2.not = icmp eq i64 %polly.indvar_next614.2, %indvars.iv916
  br i1 %exitcond920.2.not, label %polly.loop_header610.3, label %polly.loop_header610.2

polly.loop_header610.3:                           ; preds = %polly.loop_header610.2, %polly.loop_header610.3
  %polly.indvar613.3 = phi i64 [ %polly.indvar_next614.3, %polly.loop_header610.3 ], [ 0, %polly.loop_header610.2 ]
  %378 = add nuw nsw i64 %polly.indvar613.3, %176
  %polly.access.mul.call1617.3 = mul nuw nsw i64 %378, 60
  %polly.access.add.call1618.3 = add nuw nsw i64 %174, %polly.access.mul.call1617.3
  %polly.access.call1619.3 = getelementptr double, double* %polly.access.cast.call1662, i64 %polly.access.add.call1618.3
  %polly.access.call1619.load.3 = load double, double* %polly.access.call1619.3, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1475.3 = add nuw nsw i64 %polly.indvar613.3, 240
  %polly.access.Packed_MemRef_call1475.3 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475.3
  store double %polly.access.call1619.load.3, double* %polly.access.Packed_MemRef_call1475.3, align 8
  %polly.indvar_next614.3 = add nuw nsw i64 %polly.indvar613.3, 1
  %exitcond920.3.not = icmp eq i64 %polly.indvar_next614.3, %indvars.iv916
  br i1 %exitcond920.3.not, label %polly.loop_header626, label %polly.loop_header610.3

polly.loop_header626.1:                           ; preds = %polly.loop_exit634, %polly.loop_exit634.1
  %indvars.iv922.1 = phi i64 [ %indvars.iv.next923.1, %polly.loop_exit634.1 ], [ 0, %polly.loop_exit634 ]
  %polly.indvar629.1 = phi i64 [ %polly.indvar_next630.1, %polly.loop_exit634.1 ], [ %176, %polly.loop_exit634 ]
  %smin1360 = call i64 @llvm.smin.i64(i64 %indvars.iv922.1, i64 31)
  %379 = add nuw nsw i64 %smin1360, 1
  %smin924.1 = call i64 @llvm.smin.i64(i64 %indvars.iv922.1, i64 31)
  %380 = add nsw i64 %polly.indvar629.1, %175
  %381 = mul nuw nsw i64 %polly.indvar629.1, 640
  %scevgep654.1 = getelementptr i8, i8* %call, i64 %381
  %polly.access.add.Packed_MemRef_call2477643.1 = add nuw nsw i64 %380, 80
  %polly.access.Packed_MemRef_call2477644.1 = getelementptr double, double* %Packed_MemRef_call2477, i64 %polly.access.add.Packed_MemRef_call2477643.1
  %_p_scalar_645.1 = load double, double* %polly.access.Packed_MemRef_call2477644.1, align 8
  %polly.access.Packed_MemRef_call1475652.1 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call2477643.1
  %_p_scalar_653.1 = load double, double* %polly.access.Packed_MemRef_call1475652.1, align 8
  %min.iters.check1361 = icmp ult i64 %smin1360, 3
  br i1 %min.iters.check1361, label %polly.loop_header632.1.preheader, label %vector.ph1362

vector.ph1362:                                    ; preds = %polly.loop_header626.1
  %n.vec1364 = and i64 %379, 60
  %broadcast.splatinsert1370 = insertelement <4 x double> poison, double %_p_scalar_645.1, i32 0
  %broadcast.splat1371 = shufflevector <4 x double> %broadcast.splatinsert1370, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1373 = insertelement <4 x double> poison, double %_p_scalar_653.1, i32 0
  %broadcast.splat1374 = shufflevector <4 x double> %broadcast.splatinsert1373, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1359

vector.body1359:                                  ; preds = %vector.body1359, %vector.ph1362
  %index1365 = phi i64 [ 0, %vector.ph1362 ], [ %index.next1366, %vector.body1359 ]
  %382 = add nuw nsw i64 %index1365, %176
  %383 = add nuw nsw i64 %index1365, 80
  %384 = getelementptr double, double* %Packed_MemRef_call1475, i64 %383
  %385 = bitcast double* %384 to <4 x double>*
  %wide.load1369 = load <4 x double>, <4 x double>* %385, align 8
  %386 = fmul fast <4 x double> %broadcast.splat1371, %wide.load1369
  %387 = getelementptr double, double* %Packed_MemRef_call2477, i64 %383
  %388 = bitcast double* %387 to <4 x double>*
  %wide.load1372 = load <4 x double>, <4 x double>* %388, align 8
  %389 = fmul fast <4 x double> %broadcast.splat1374, %wide.load1372
  %390 = shl i64 %382, 3
  %391 = getelementptr i8, i8* %scevgep654.1, i64 %390
  %392 = bitcast i8* %391 to <4 x double>*
  %wide.load1375 = load <4 x double>, <4 x double>* %392, align 8, !alias.scope !99, !noalias !101
  %393 = fadd fast <4 x double> %389, %386
  %394 = fmul fast <4 x double> %393, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %395 = fadd fast <4 x double> %394, %wide.load1375
  %396 = bitcast i8* %391 to <4 x double>*
  store <4 x double> %395, <4 x double>* %396, align 8, !alias.scope !99, !noalias !101
  %index.next1366 = add i64 %index1365, 4
  %397 = icmp eq i64 %index.next1366, %n.vec1364
  br i1 %397, label %middle.block1357, label %vector.body1359, !llvm.loop !134

middle.block1357:                                 ; preds = %vector.body1359
  %cmp.n1368 = icmp eq i64 %379, %n.vec1364
  br i1 %cmp.n1368, label %polly.loop_exit634.1, label %polly.loop_header632.1.preheader

polly.loop_header632.1.preheader:                 ; preds = %polly.loop_header626.1, %middle.block1357
  %polly.indvar635.1.ph = phi i64 [ 0, %polly.loop_header626.1 ], [ %n.vec1364, %middle.block1357 ]
  br label %polly.loop_header632.1

polly.loop_header632.1:                           ; preds = %polly.loop_header632.1.preheader, %polly.loop_header632.1
  %polly.indvar635.1 = phi i64 [ %polly.indvar_next636.1, %polly.loop_header632.1 ], [ %polly.indvar635.1.ph, %polly.loop_header632.1.preheader ]
  %398 = add nuw nsw i64 %polly.indvar635.1, %176
  %polly.access.add.Packed_MemRef_call1475639.1 = add nuw nsw i64 %polly.indvar635.1, 80
  %polly.access.Packed_MemRef_call1475640.1 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475639.1
  %_p_scalar_641.1 = load double, double* %polly.access.Packed_MemRef_call1475640.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_645.1, %_p_scalar_641.1
  %polly.access.Packed_MemRef_call2477648.1 = getelementptr double, double* %Packed_MemRef_call2477, i64 %polly.access.add.Packed_MemRef_call1475639.1
  %_p_scalar_649.1 = load double, double* %polly.access.Packed_MemRef_call2477648.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_653.1, %_p_scalar_649.1
  %399 = shl i64 %398, 3
  %scevgep655.1 = getelementptr i8, i8* %scevgep654.1, i64 %399
  %scevgep655656.1 = bitcast i8* %scevgep655.1 to double*
  %_p_scalar_657.1 = load double, double* %scevgep655656.1, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_657.1
  store double %p_add42.i.1, double* %scevgep655656.1, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next636.1 = add nuw nsw i64 %polly.indvar635.1, 1
  %exitcond925.1.not = icmp eq i64 %polly.indvar635.1, %smin924.1
  br i1 %exitcond925.1.not, label %polly.loop_exit634.1, label %polly.loop_header632.1, !llvm.loop !135

polly.loop_exit634.1:                             ; preds = %polly.loop_header632.1, %middle.block1357
  %polly.indvar_next630.1 = add nuw nsw i64 %polly.indvar629.1, 1
  %indvars.iv.next923.1 = add nuw nsw i64 %indvars.iv922.1, 1
  %exitcond926.1.not = icmp eq i64 %indvars.iv.next923.1, %indvars.iv916
  br i1 %exitcond926.1.not, label %polly.loop_header626.2, label %polly.loop_header626.1

polly.loop_header626.2:                           ; preds = %polly.loop_exit634.1, %polly.loop_exit634.2
  %indvars.iv922.2 = phi i64 [ %indvars.iv.next923.2, %polly.loop_exit634.2 ], [ 0, %polly.loop_exit634.1 ]
  %polly.indvar629.2 = phi i64 [ %polly.indvar_next630.2, %polly.loop_exit634.2 ], [ %176, %polly.loop_exit634.1 ]
  %smin1341 = call i64 @llvm.smin.i64(i64 %indvars.iv922.2, i64 31)
  %400 = add nuw nsw i64 %smin1341, 1
  %smin924.2 = call i64 @llvm.smin.i64(i64 %indvars.iv922.2, i64 31)
  %401 = add nsw i64 %polly.indvar629.2, %175
  %402 = mul nuw nsw i64 %polly.indvar629.2, 640
  %scevgep654.2 = getelementptr i8, i8* %call, i64 %402
  %polly.access.add.Packed_MemRef_call2477643.2 = add nuw nsw i64 %401, 160
  %polly.access.Packed_MemRef_call2477644.2 = getelementptr double, double* %Packed_MemRef_call2477, i64 %polly.access.add.Packed_MemRef_call2477643.2
  %_p_scalar_645.2 = load double, double* %polly.access.Packed_MemRef_call2477644.2, align 8
  %polly.access.Packed_MemRef_call1475652.2 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call2477643.2
  %_p_scalar_653.2 = load double, double* %polly.access.Packed_MemRef_call1475652.2, align 8
  %min.iters.check1342 = icmp ult i64 %smin1341, 3
  br i1 %min.iters.check1342, label %polly.loop_header632.2.preheader, label %vector.ph1343

vector.ph1343:                                    ; preds = %polly.loop_header626.2
  %n.vec1345 = and i64 %400, 60
  %broadcast.splatinsert1351 = insertelement <4 x double> poison, double %_p_scalar_645.2, i32 0
  %broadcast.splat1352 = shufflevector <4 x double> %broadcast.splatinsert1351, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1354 = insertelement <4 x double> poison, double %_p_scalar_653.2, i32 0
  %broadcast.splat1355 = shufflevector <4 x double> %broadcast.splatinsert1354, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1340

vector.body1340:                                  ; preds = %vector.body1340, %vector.ph1343
  %index1346 = phi i64 [ 0, %vector.ph1343 ], [ %index.next1347, %vector.body1340 ]
  %403 = add nuw nsw i64 %index1346, %176
  %404 = add nuw nsw i64 %index1346, 160
  %405 = getelementptr double, double* %Packed_MemRef_call1475, i64 %404
  %406 = bitcast double* %405 to <4 x double>*
  %wide.load1350 = load <4 x double>, <4 x double>* %406, align 8
  %407 = fmul fast <4 x double> %broadcast.splat1352, %wide.load1350
  %408 = getelementptr double, double* %Packed_MemRef_call2477, i64 %404
  %409 = bitcast double* %408 to <4 x double>*
  %wide.load1353 = load <4 x double>, <4 x double>* %409, align 8
  %410 = fmul fast <4 x double> %broadcast.splat1355, %wide.load1353
  %411 = shl i64 %403, 3
  %412 = getelementptr i8, i8* %scevgep654.2, i64 %411
  %413 = bitcast i8* %412 to <4 x double>*
  %wide.load1356 = load <4 x double>, <4 x double>* %413, align 8, !alias.scope !99, !noalias !101
  %414 = fadd fast <4 x double> %410, %407
  %415 = fmul fast <4 x double> %414, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %416 = fadd fast <4 x double> %415, %wide.load1356
  %417 = bitcast i8* %412 to <4 x double>*
  store <4 x double> %416, <4 x double>* %417, align 8, !alias.scope !99, !noalias !101
  %index.next1347 = add i64 %index1346, 4
  %418 = icmp eq i64 %index.next1347, %n.vec1345
  br i1 %418, label %middle.block1338, label %vector.body1340, !llvm.loop !136

middle.block1338:                                 ; preds = %vector.body1340
  %cmp.n1349 = icmp eq i64 %400, %n.vec1345
  br i1 %cmp.n1349, label %polly.loop_exit634.2, label %polly.loop_header632.2.preheader

polly.loop_header632.2.preheader:                 ; preds = %polly.loop_header626.2, %middle.block1338
  %polly.indvar635.2.ph = phi i64 [ 0, %polly.loop_header626.2 ], [ %n.vec1345, %middle.block1338 ]
  br label %polly.loop_header632.2

polly.loop_header632.2:                           ; preds = %polly.loop_header632.2.preheader, %polly.loop_header632.2
  %polly.indvar635.2 = phi i64 [ %polly.indvar_next636.2, %polly.loop_header632.2 ], [ %polly.indvar635.2.ph, %polly.loop_header632.2.preheader ]
  %419 = add nuw nsw i64 %polly.indvar635.2, %176
  %polly.access.add.Packed_MemRef_call1475639.2 = add nuw nsw i64 %polly.indvar635.2, 160
  %polly.access.Packed_MemRef_call1475640.2 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475639.2
  %_p_scalar_641.2 = load double, double* %polly.access.Packed_MemRef_call1475640.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_645.2, %_p_scalar_641.2
  %polly.access.Packed_MemRef_call2477648.2 = getelementptr double, double* %Packed_MemRef_call2477, i64 %polly.access.add.Packed_MemRef_call1475639.2
  %_p_scalar_649.2 = load double, double* %polly.access.Packed_MemRef_call2477648.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_653.2, %_p_scalar_649.2
  %420 = shl i64 %419, 3
  %scevgep655.2 = getelementptr i8, i8* %scevgep654.2, i64 %420
  %scevgep655656.2 = bitcast i8* %scevgep655.2 to double*
  %_p_scalar_657.2 = load double, double* %scevgep655656.2, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_657.2
  store double %p_add42.i.2, double* %scevgep655656.2, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next636.2 = add nuw nsw i64 %polly.indvar635.2, 1
  %exitcond925.2.not = icmp eq i64 %polly.indvar635.2, %smin924.2
  br i1 %exitcond925.2.not, label %polly.loop_exit634.2, label %polly.loop_header632.2, !llvm.loop !137

polly.loop_exit634.2:                             ; preds = %polly.loop_header632.2, %middle.block1338
  %polly.indvar_next630.2 = add nuw nsw i64 %polly.indvar629.2, 1
  %indvars.iv.next923.2 = add nuw nsw i64 %indvars.iv922.2, 1
  %exitcond926.2.not = icmp eq i64 %indvars.iv.next923.2, %indvars.iv916
  br i1 %exitcond926.2.not, label %polly.loop_header626.3, label %polly.loop_header626.2

polly.loop_header626.3:                           ; preds = %polly.loop_exit634.2, %polly.loop_exit634.3
  %indvars.iv922.3 = phi i64 [ %indvars.iv.next923.3, %polly.loop_exit634.3 ], [ 0, %polly.loop_exit634.2 ]
  %polly.indvar629.3 = phi i64 [ %polly.indvar_next630.3, %polly.loop_exit634.3 ], [ %176, %polly.loop_exit634.2 ]
  %smin1322 = call i64 @llvm.smin.i64(i64 %indvars.iv922.3, i64 31)
  %421 = add nuw nsw i64 %smin1322, 1
  %smin924.3 = call i64 @llvm.smin.i64(i64 %indvars.iv922.3, i64 31)
  %422 = add nsw i64 %polly.indvar629.3, %175
  %423 = mul nuw nsw i64 %polly.indvar629.3, 640
  %scevgep654.3 = getelementptr i8, i8* %call, i64 %423
  %polly.access.add.Packed_MemRef_call2477643.3 = add nuw nsw i64 %422, 240
  %polly.access.Packed_MemRef_call2477644.3 = getelementptr double, double* %Packed_MemRef_call2477, i64 %polly.access.add.Packed_MemRef_call2477643.3
  %_p_scalar_645.3 = load double, double* %polly.access.Packed_MemRef_call2477644.3, align 8
  %polly.access.Packed_MemRef_call1475652.3 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call2477643.3
  %_p_scalar_653.3 = load double, double* %polly.access.Packed_MemRef_call1475652.3, align 8
  %min.iters.check1323 = icmp ult i64 %smin1322, 3
  br i1 %min.iters.check1323, label %polly.loop_header632.3.preheader, label %vector.ph1324

vector.ph1324:                                    ; preds = %polly.loop_header626.3
  %n.vec1326 = and i64 %421, 60
  %broadcast.splatinsert1332 = insertelement <4 x double> poison, double %_p_scalar_645.3, i32 0
  %broadcast.splat1333 = shufflevector <4 x double> %broadcast.splatinsert1332, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1335 = insertelement <4 x double> poison, double %_p_scalar_653.3, i32 0
  %broadcast.splat1336 = shufflevector <4 x double> %broadcast.splatinsert1335, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1321

vector.body1321:                                  ; preds = %vector.body1321, %vector.ph1324
  %index1327 = phi i64 [ 0, %vector.ph1324 ], [ %index.next1328, %vector.body1321 ]
  %424 = add nuw nsw i64 %index1327, %176
  %425 = add nuw nsw i64 %index1327, 240
  %426 = getelementptr double, double* %Packed_MemRef_call1475, i64 %425
  %427 = bitcast double* %426 to <4 x double>*
  %wide.load1331 = load <4 x double>, <4 x double>* %427, align 8
  %428 = fmul fast <4 x double> %broadcast.splat1333, %wide.load1331
  %429 = getelementptr double, double* %Packed_MemRef_call2477, i64 %425
  %430 = bitcast double* %429 to <4 x double>*
  %wide.load1334 = load <4 x double>, <4 x double>* %430, align 8
  %431 = fmul fast <4 x double> %broadcast.splat1336, %wide.load1334
  %432 = shl i64 %424, 3
  %433 = getelementptr i8, i8* %scevgep654.3, i64 %432
  %434 = bitcast i8* %433 to <4 x double>*
  %wide.load1337 = load <4 x double>, <4 x double>* %434, align 8, !alias.scope !99, !noalias !101
  %435 = fadd fast <4 x double> %431, %428
  %436 = fmul fast <4 x double> %435, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %437 = fadd fast <4 x double> %436, %wide.load1337
  %438 = bitcast i8* %433 to <4 x double>*
  store <4 x double> %437, <4 x double>* %438, align 8, !alias.scope !99, !noalias !101
  %index.next1328 = add i64 %index1327, 4
  %439 = icmp eq i64 %index.next1328, %n.vec1326
  br i1 %439, label %middle.block1319, label %vector.body1321, !llvm.loop !138

middle.block1319:                                 ; preds = %vector.body1321
  %cmp.n1330 = icmp eq i64 %421, %n.vec1326
  br i1 %cmp.n1330, label %polly.loop_exit634.3, label %polly.loop_header632.3.preheader

polly.loop_header632.3.preheader:                 ; preds = %polly.loop_header626.3, %middle.block1319
  %polly.indvar635.3.ph = phi i64 [ 0, %polly.loop_header626.3 ], [ %n.vec1326, %middle.block1319 ]
  br label %polly.loop_header632.3

polly.loop_header632.3:                           ; preds = %polly.loop_header632.3.preheader, %polly.loop_header632.3
  %polly.indvar635.3 = phi i64 [ %polly.indvar_next636.3, %polly.loop_header632.3 ], [ %polly.indvar635.3.ph, %polly.loop_header632.3.preheader ]
  %440 = add nuw nsw i64 %polly.indvar635.3, %176
  %polly.access.add.Packed_MemRef_call1475639.3 = add nuw nsw i64 %polly.indvar635.3, 240
  %polly.access.Packed_MemRef_call1475640.3 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475639.3
  %_p_scalar_641.3 = load double, double* %polly.access.Packed_MemRef_call1475640.3, align 8
  %p_mul27.i.3 = fmul fast double %_p_scalar_645.3, %_p_scalar_641.3
  %polly.access.Packed_MemRef_call2477648.3 = getelementptr double, double* %Packed_MemRef_call2477, i64 %polly.access.add.Packed_MemRef_call1475639.3
  %_p_scalar_649.3 = load double, double* %polly.access.Packed_MemRef_call2477648.3, align 8
  %p_mul37.i.3 = fmul fast double %_p_scalar_653.3, %_p_scalar_649.3
  %441 = shl i64 %440, 3
  %scevgep655.3 = getelementptr i8, i8* %scevgep654.3, i64 %441
  %scevgep655656.3 = bitcast i8* %scevgep655.3 to double*
  %_p_scalar_657.3 = load double, double* %scevgep655656.3, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_657.3
  store double %p_add42.i.3, double* %scevgep655656.3, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next636.3 = add nuw nsw i64 %polly.indvar635.3, 1
  %exitcond925.3.not = icmp eq i64 %polly.indvar635.3, %smin924.3
  br i1 %exitcond925.3.not, label %polly.loop_exit634.3, label %polly.loop_header632.3, !llvm.loop !139

polly.loop_exit634.3:                             ; preds = %polly.loop_header632.3, %middle.block1319
  %polly.indvar_next630.3 = add nuw nsw i64 %polly.indvar629.3, 1
  %indvars.iv.next923.3 = add nuw nsw i64 %indvars.iv922.3, 1
  %exitcond926.3.not = icmp eq i64 %indvars.iv.next923.3, %indvars.iv916
  br i1 %exitcond926.3.not, label %polly.loop_exit628.3, label %polly.loop_header626.3

polly.loop_exit628.3:                             ; preds = %polly.loop_exit634.3
  %polly.indvar_next586 = add nuw nsw i64 %polly.indvar585, 1
  %indvars.iv.next917 = add nsw i64 %indvars.iv916, -32
  %exitcond928.not = icmp eq i64 %polly.indvar_next586, 3
  br i1 %exitcond928.not, label %polly.loop_exit584, label %polly.loop_header582

polly.loop_header849.1:                           ; preds = %polly.loop_exit857, %polly.loop_exit857.1
  %polly.indvar852.1 = phi i64 [ %polly.indvar_next853.1, %polly.loop_exit857.1 ], [ 0, %polly.loop_exit857 ]
  %442 = mul nuw nsw i64 %polly.indvar852.1, 480
  %443 = trunc i64 %polly.indvar852.1 to i32
  %broadcast.splatinsert1245 = insertelement <4 x i32> poison, i32 %443, i32 0
  %broadcast.splat1246 = shufflevector <4 x i32> %broadcast.splatinsert1245, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1237

vector.body1237:                                  ; preds = %vector.body1237, %polly.loop_header849.1
  %index1239 = phi i64 [ 0, %polly.loop_header849.1 ], [ %index.next1240, %vector.body1237 ]
  %vec.ind1243 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header849.1 ], [ %vec.ind.next1244, %vector.body1237 ]
  %444 = add nuw nsw <4 x i64> %vec.ind1243, <i64 32, i64 32, i64 32, i64 32>
  %445 = trunc <4 x i64> %444 to <4 x i32>
  %446 = mul <4 x i32> %broadcast.splat1246, %445
  %447 = add <4 x i32> %446, <i32 1, i32 1, i32 1, i32 1>
  %448 = urem <4 x i32> %447, <i32 80, i32 80, i32 80, i32 80>
  %449 = sitofp <4 x i32> %448 to <4 x double>
  %450 = fmul fast <4 x double> %449, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %451 = extractelement <4 x i64> %444, i32 0
  %452 = shl i64 %451, 3
  %453 = add i64 %452, %442
  %454 = getelementptr i8, i8* %call1, i64 %453
  %455 = bitcast i8* %454 to <4 x double>*
  store <4 x double> %450, <4 x double>* %455, align 8, !alias.scope !115, !noalias !120
  %index.next1240 = add i64 %index1239, 4
  %vec.ind.next1244 = add <4 x i64> %vec.ind1243, <i64 4, i64 4, i64 4, i64 4>
  %456 = icmp eq i64 %index.next1240, 28
  br i1 %456, label %polly.loop_exit857.1, label %vector.body1237, !llvm.loop !140

polly.loop_exit857.1:                             ; preds = %vector.body1237
  %polly.indvar_next853.1 = add nuw nsw i64 %polly.indvar852.1, 1
  %exitcond936.1.not = icmp eq i64 %polly.indvar_next853.1, 32
  br i1 %exitcond936.1.not, label %polly.loop_header849.1956, label %polly.loop_header849.1

polly.loop_header849.1956:                        ; preds = %polly.loop_exit857.1, %polly.loop_exit857.1967
  %polly.indvar852.1955 = phi i64 [ %polly.indvar_next853.1965, %polly.loop_exit857.1967 ], [ 0, %polly.loop_exit857.1 ]
  %457 = add nuw nsw i64 %polly.indvar852.1955, 32
  %458 = mul nuw nsw i64 %457, 480
  %459 = trunc i64 %457 to i32
  %broadcast.splatinsert1259 = insertelement <4 x i32> poison, i32 %459, i32 0
  %broadcast.splat1260 = shufflevector <4 x i32> %broadcast.splatinsert1259, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1249

vector.body1249:                                  ; preds = %vector.body1249, %polly.loop_header849.1956
  %index1251 = phi i64 [ 0, %polly.loop_header849.1956 ], [ %index.next1252, %vector.body1249 ]
  %vec.ind1257 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header849.1956 ], [ %vec.ind.next1258, %vector.body1249 ]
  %460 = mul <4 x i32> %vec.ind1257, %broadcast.splat1260
  %461 = add <4 x i32> %460, <i32 1, i32 1, i32 1, i32 1>
  %462 = urem <4 x i32> %461, <i32 80, i32 80, i32 80, i32 80>
  %463 = sitofp <4 x i32> %462 to <4 x double>
  %464 = fmul fast <4 x double> %463, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %465 = shl i64 %index1251, 3
  %466 = add i64 %465, %458
  %467 = getelementptr i8, i8* %call1, i64 %466
  %468 = bitcast i8* %467 to <4 x double>*
  store <4 x double> %464, <4 x double>* %468, align 8, !alias.scope !115, !noalias !120
  %index.next1252 = add i64 %index1251, 4
  %vec.ind.next1258 = add <4 x i32> %vec.ind1257, <i32 4, i32 4, i32 4, i32 4>
  %469 = icmp eq i64 %index.next1252, 32
  br i1 %469, label %polly.loop_exit857.1967, label %vector.body1249, !llvm.loop !141

polly.loop_exit857.1967:                          ; preds = %vector.body1249
  %polly.indvar_next853.1965 = add nuw nsw i64 %polly.indvar852.1955, 1
  %exitcond936.1966.not = icmp eq i64 %polly.indvar_next853.1965, 32
  br i1 %exitcond936.1966.not, label %polly.loop_header849.1.1, label %polly.loop_header849.1956

polly.loop_header849.1.1:                         ; preds = %polly.loop_exit857.1967, %polly.loop_exit857.1.1
  %polly.indvar852.1.1 = phi i64 [ %polly.indvar_next853.1.1, %polly.loop_exit857.1.1 ], [ 0, %polly.loop_exit857.1967 ]
  %470 = add nuw nsw i64 %polly.indvar852.1.1, 32
  %471 = mul nuw nsw i64 %470, 480
  %472 = trunc i64 %470 to i32
  %broadcast.splatinsert1271 = insertelement <4 x i32> poison, i32 %472, i32 0
  %broadcast.splat1272 = shufflevector <4 x i32> %broadcast.splatinsert1271, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1263

vector.body1263:                                  ; preds = %vector.body1263, %polly.loop_header849.1.1
  %index1265 = phi i64 [ 0, %polly.loop_header849.1.1 ], [ %index.next1266, %vector.body1263 ]
  %vec.ind1269 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header849.1.1 ], [ %vec.ind.next1270, %vector.body1263 ]
  %473 = add nuw nsw <4 x i64> %vec.ind1269, <i64 32, i64 32, i64 32, i64 32>
  %474 = trunc <4 x i64> %473 to <4 x i32>
  %475 = mul <4 x i32> %broadcast.splat1272, %474
  %476 = add <4 x i32> %475, <i32 1, i32 1, i32 1, i32 1>
  %477 = urem <4 x i32> %476, <i32 80, i32 80, i32 80, i32 80>
  %478 = sitofp <4 x i32> %477 to <4 x double>
  %479 = fmul fast <4 x double> %478, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %480 = extractelement <4 x i64> %473, i32 0
  %481 = shl i64 %480, 3
  %482 = add i64 %481, %471
  %483 = getelementptr i8, i8* %call1, i64 %482
  %484 = bitcast i8* %483 to <4 x double>*
  store <4 x double> %479, <4 x double>* %484, align 8, !alias.scope !115, !noalias !120
  %index.next1266 = add i64 %index1265, 4
  %vec.ind.next1270 = add <4 x i64> %vec.ind1269, <i64 4, i64 4, i64 4, i64 4>
  %485 = icmp eq i64 %index.next1266, 28
  br i1 %485, label %polly.loop_exit857.1.1, label %vector.body1263, !llvm.loop !142

polly.loop_exit857.1.1:                           ; preds = %vector.body1263
  %polly.indvar_next853.1.1 = add nuw nsw i64 %polly.indvar852.1.1, 1
  %exitcond936.1.1.not = icmp eq i64 %polly.indvar_next853.1.1, 32
  br i1 %exitcond936.1.1.not, label %polly.loop_header849.2, label %polly.loop_header849.1.1

polly.loop_header849.2:                           ; preds = %polly.loop_exit857.1.1, %polly.loop_exit857.2
  %polly.indvar852.2 = phi i64 [ %polly.indvar_next853.2, %polly.loop_exit857.2 ], [ 0, %polly.loop_exit857.1.1 ]
  %486 = add nuw nsw i64 %polly.indvar852.2, 64
  %487 = mul nuw nsw i64 %486, 480
  %488 = trunc i64 %486 to i32
  %broadcast.splatinsert1285 = insertelement <4 x i32> poison, i32 %488, i32 0
  %broadcast.splat1286 = shufflevector <4 x i32> %broadcast.splatinsert1285, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1275

vector.body1275:                                  ; preds = %vector.body1275, %polly.loop_header849.2
  %index1277 = phi i64 [ 0, %polly.loop_header849.2 ], [ %index.next1278, %vector.body1275 ]
  %vec.ind1283 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header849.2 ], [ %vec.ind.next1284, %vector.body1275 ]
  %489 = mul <4 x i32> %vec.ind1283, %broadcast.splat1286
  %490 = add <4 x i32> %489, <i32 1, i32 1, i32 1, i32 1>
  %491 = urem <4 x i32> %490, <i32 80, i32 80, i32 80, i32 80>
  %492 = sitofp <4 x i32> %491 to <4 x double>
  %493 = fmul fast <4 x double> %492, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %494 = shl i64 %index1277, 3
  %495 = add i64 %494, %487
  %496 = getelementptr i8, i8* %call1, i64 %495
  %497 = bitcast i8* %496 to <4 x double>*
  store <4 x double> %493, <4 x double>* %497, align 8, !alias.scope !115, !noalias !120
  %index.next1278 = add i64 %index1277, 4
  %vec.ind.next1284 = add <4 x i32> %vec.ind1283, <i32 4, i32 4, i32 4, i32 4>
  %498 = icmp eq i64 %index.next1278, 32
  br i1 %498, label %polly.loop_exit857.2, label %vector.body1275, !llvm.loop !143

polly.loop_exit857.2:                             ; preds = %vector.body1275
  %polly.indvar_next853.2 = add nuw nsw i64 %polly.indvar852.2, 1
  %exitcond936.2.not = icmp eq i64 %polly.indvar_next853.2, 16
  br i1 %exitcond936.2.not, label %polly.loop_header849.1.2, label %polly.loop_header849.2

polly.loop_header849.1.2:                         ; preds = %polly.loop_exit857.2, %polly.loop_exit857.1.2
  %polly.indvar852.1.2 = phi i64 [ %polly.indvar_next853.1.2, %polly.loop_exit857.1.2 ], [ 0, %polly.loop_exit857.2 ]
  %499 = add nuw nsw i64 %polly.indvar852.1.2, 64
  %500 = mul nuw nsw i64 %499, 480
  %501 = trunc i64 %499 to i32
  %broadcast.splatinsert1297 = insertelement <4 x i32> poison, i32 %501, i32 0
  %broadcast.splat1298 = shufflevector <4 x i32> %broadcast.splatinsert1297, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1289

vector.body1289:                                  ; preds = %vector.body1289, %polly.loop_header849.1.2
  %index1291 = phi i64 [ 0, %polly.loop_header849.1.2 ], [ %index.next1292, %vector.body1289 ]
  %vec.ind1295 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header849.1.2 ], [ %vec.ind.next1296, %vector.body1289 ]
  %502 = add nuw nsw <4 x i64> %vec.ind1295, <i64 32, i64 32, i64 32, i64 32>
  %503 = trunc <4 x i64> %502 to <4 x i32>
  %504 = mul <4 x i32> %broadcast.splat1298, %503
  %505 = add <4 x i32> %504, <i32 1, i32 1, i32 1, i32 1>
  %506 = urem <4 x i32> %505, <i32 80, i32 80, i32 80, i32 80>
  %507 = sitofp <4 x i32> %506 to <4 x double>
  %508 = fmul fast <4 x double> %507, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %509 = extractelement <4 x i64> %502, i32 0
  %510 = shl i64 %509, 3
  %511 = add i64 %510, %500
  %512 = getelementptr i8, i8* %call1, i64 %511
  %513 = bitcast i8* %512 to <4 x double>*
  store <4 x double> %508, <4 x double>* %513, align 8, !alias.scope !115, !noalias !120
  %index.next1292 = add i64 %index1291, 4
  %vec.ind.next1296 = add <4 x i64> %vec.ind1295, <i64 4, i64 4, i64 4, i64 4>
  %514 = icmp eq i64 %index.next1292, 28
  br i1 %514, label %polly.loop_exit857.1.2, label %vector.body1289, !llvm.loop !144

polly.loop_exit857.1.2:                           ; preds = %vector.body1289
  %polly.indvar_next853.1.2 = add nuw nsw i64 %polly.indvar852.1.2, 1
  %exitcond936.1.2.not = icmp eq i64 %polly.indvar_next853.1.2, 16
  br i1 %exitcond936.1.2.not, label %init_array.exit, label %polly.loop_header849.1.2

polly.loop_header823.1:                           ; preds = %polly.loop_exit831, %polly.loop_exit831.1
  %polly.indvar826.1 = phi i64 [ %polly.indvar_next827.1, %polly.loop_exit831.1 ], [ 0, %polly.loop_exit831 ]
  %515 = mul nuw nsw i64 %polly.indvar826.1, 480
  %516 = trunc i64 %polly.indvar826.1 to i32
  %broadcast.splatinsert1167 = insertelement <4 x i32> poison, i32 %516, i32 0
  %broadcast.splat1168 = shufflevector <4 x i32> %broadcast.splatinsert1167, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1159

vector.body1159:                                  ; preds = %vector.body1159, %polly.loop_header823.1
  %index1161 = phi i64 [ 0, %polly.loop_header823.1 ], [ %index.next1162, %vector.body1159 ]
  %vec.ind1165 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header823.1 ], [ %vec.ind.next1166, %vector.body1159 ]
  %517 = add nuw nsw <4 x i64> %vec.ind1165, <i64 32, i64 32, i64 32, i64 32>
  %518 = trunc <4 x i64> %517 to <4 x i32>
  %519 = mul <4 x i32> %broadcast.splat1168, %518
  %520 = add <4 x i32> %519, <i32 2, i32 2, i32 2, i32 2>
  %521 = urem <4 x i32> %520, <i32 60, i32 60, i32 60, i32 60>
  %522 = sitofp <4 x i32> %521 to <4 x double>
  %523 = fmul fast <4 x double> %522, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %524 = extractelement <4 x i64> %517, i32 0
  %525 = shl i64 %524, 3
  %526 = add i64 %525, %515
  %527 = getelementptr i8, i8* %call2, i64 %526
  %528 = bitcast i8* %527 to <4 x double>*
  store <4 x double> %523, <4 x double>* %528, align 8, !alias.scope !116, !noalias !118
  %index.next1162 = add i64 %index1161, 4
  %vec.ind.next1166 = add <4 x i64> %vec.ind1165, <i64 4, i64 4, i64 4, i64 4>
  %529 = icmp eq i64 %index.next1162, 28
  br i1 %529, label %polly.loop_exit831.1, label %vector.body1159, !llvm.loop !145

polly.loop_exit831.1:                             ; preds = %vector.body1159
  %polly.indvar_next827.1 = add nuw nsw i64 %polly.indvar826.1, 1
  %exitcond942.1.not = icmp eq i64 %polly.indvar_next827.1, 32
  br i1 %exitcond942.1.not, label %polly.loop_header823.1970, label %polly.loop_header823.1

polly.loop_header823.1970:                        ; preds = %polly.loop_exit831.1, %polly.loop_exit831.1981
  %polly.indvar826.1969 = phi i64 [ %polly.indvar_next827.1979, %polly.loop_exit831.1981 ], [ 0, %polly.loop_exit831.1 ]
  %530 = add nuw nsw i64 %polly.indvar826.1969, 32
  %531 = mul nuw nsw i64 %530, 480
  %532 = trunc i64 %530 to i32
  %broadcast.splatinsert1181 = insertelement <4 x i32> poison, i32 %532, i32 0
  %broadcast.splat1182 = shufflevector <4 x i32> %broadcast.splatinsert1181, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1171

vector.body1171:                                  ; preds = %vector.body1171, %polly.loop_header823.1970
  %index1173 = phi i64 [ 0, %polly.loop_header823.1970 ], [ %index.next1174, %vector.body1171 ]
  %vec.ind1179 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header823.1970 ], [ %vec.ind.next1180, %vector.body1171 ]
  %533 = mul <4 x i32> %vec.ind1179, %broadcast.splat1182
  %534 = add <4 x i32> %533, <i32 2, i32 2, i32 2, i32 2>
  %535 = urem <4 x i32> %534, <i32 60, i32 60, i32 60, i32 60>
  %536 = sitofp <4 x i32> %535 to <4 x double>
  %537 = fmul fast <4 x double> %536, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %538 = shl i64 %index1173, 3
  %539 = add i64 %538, %531
  %540 = getelementptr i8, i8* %call2, i64 %539
  %541 = bitcast i8* %540 to <4 x double>*
  store <4 x double> %537, <4 x double>* %541, align 8, !alias.scope !116, !noalias !118
  %index.next1174 = add i64 %index1173, 4
  %vec.ind.next1180 = add <4 x i32> %vec.ind1179, <i32 4, i32 4, i32 4, i32 4>
  %542 = icmp eq i64 %index.next1174, 32
  br i1 %542, label %polly.loop_exit831.1981, label %vector.body1171, !llvm.loop !146

polly.loop_exit831.1981:                          ; preds = %vector.body1171
  %polly.indvar_next827.1979 = add nuw nsw i64 %polly.indvar826.1969, 1
  %exitcond942.1980.not = icmp eq i64 %polly.indvar_next827.1979, 32
  br i1 %exitcond942.1980.not, label %polly.loop_header823.1.1, label %polly.loop_header823.1970

polly.loop_header823.1.1:                         ; preds = %polly.loop_exit831.1981, %polly.loop_exit831.1.1
  %polly.indvar826.1.1 = phi i64 [ %polly.indvar_next827.1.1, %polly.loop_exit831.1.1 ], [ 0, %polly.loop_exit831.1981 ]
  %543 = add nuw nsw i64 %polly.indvar826.1.1, 32
  %544 = mul nuw nsw i64 %543, 480
  %545 = trunc i64 %543 to i32
  %broadcast.splatinsert1193 = insertelement <4 x i32> poison, i32 %545, i32 0
  %broadcast.splat1194 = shufflevector <4 x i32> %broadcast.splatinsert1193, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1185

vector.body1185:                                  ; preds = %vector.body1185, %polly.loop_header823.1.1
  %index1187 = phi i64 [ 0, %polly.loop_header823.1.1 ], [ %index.next1188, %vector.body1185 ]
  %vec.ind1191 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header823.1.1 ], [ %vec.ind.next1192, %vector.body1185 ]
  %546 = add nuw nsw <4 x i64> %vec.ind1191, <i64 32, i64 32, i64 32, i64 32>
  %547 = trunc <4 x i64> %546 to <4 x i32>
  %548 = mul <4 x i32> %broadcast.splat1194, %547
  %549 = add <4 x i32> %548, <i32 2, i32 2, i32 2, i32 2>
  %550 = urem <4 x i32> %549, <i32 60, i32 60, i32 60, i32 60>
  %551 = sitofp <4 x i32> %550 to <4 x double>
  %552 = fmul fast <4 x double> %551, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %553 = extractelement <4 x i64> %546, i32 0
  %554 = shl i64 %553, 3
  %555 = add i64 %554, %544
  %556 = getelementptr i8, i8* %call2, i64 %555
  %557 = bitcast i8* %556 to <4 x double>*
  store <4 x double> %552, <4 x double>* %557, align 8, !alias.scope !116, !noalias !118
  %index.next1188 = add i64 %index1187, 4
  %vec.ind.next1192 = add <4 x i64> %vec.ind1191, <i64 4, i64 4, i64 4, i64 4>
  %558 = icmp eq i64 %index.next1188, 28
  br i1 %558, label %polly.loop_exit831.1.1, label %vector.body1185, !llvm.loop !147

polly.loop_exit831.1.1:                           ; preds = %vector.body1185
  %polly.indvar_next827.1.1 = add nuw nsw i64 %polly.indvar826.1.1, 1
  %exitcond942.1.1.not = icmp eq i64 %polly.indvar_next827.1.1, 32
  br i1 %exitcond942.1.1.not, label %polly.loop_header823.2, label %polly.loop_header823.1.1

polly.loop_header823.2:                           ; preds = %polly.loop_exit831.1.1, %polly.loop_exit831.2
  %polly.indvar826.2 = phi i64 [ %polly.indvar_next827.2, %polly.loop_exit831.2 ], [ 0, %polly.loop_exit831.1.1 ]
  %559 = add nuw nsw i64 %polly.indvar826.2, 64
  %560 = mul nuw nsw i64 %559, 480
  %561 = trunc i64 %559 to i32
  %broadcast.splatinsert1207 = insertelement <4 x i32> poison, i32 %561, i32 0
  %broadcast.splat1208 = shufflevector <4 x i32> %broadcast.splatinsert1207, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %polly.loop_header823.2
  %index1199 = phi i64 [ 0, %polly.loop_header823.2 ], [ %index.next1200, %vector.body1197 ]
  %vec.ind1205 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header823.2 ], [ %vec.ind.next1206, %vector.body1197 ]
  %562 = mul <4 x i32> %vec.ind1205, %broadcast.splat1208
  %563 = add <4 x i32> %562, <i32 2, i32 2, i32 2, i32 2>
  %564 = urem <4 x i32> %563, <i32 60, i32 60, i32 60, i32 60>
  %565 = sitofp <4 x i32> %564 to <4 x double>
  %566 = fmul fast <4 x double> %565, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %567 = shl i64 %index1199, 3
  %568 = add i64 %567, %560
  %569 = getelementptr i8, i8* %call2, i64 %568
  %570 = bitcast i8* %569 to <4 x double>*
  store <4 x double> %566, <4 x double>* %570, align 8, !alias.scope !116, !noalias !118
  %index.next1200 = add i64 %index1199, 4
  %vec.ind.next1206 = add <4 x i32> %vec.ind1205, <i32 4, i32 4, i32 4, i32 4>
  %571 = icmp eq i64 %index.next1200, 32
  br i1 %571, label %polly.loop_exit831.2, label %vector.body1197, !llvm.loop !148

polly.loop_exit831.2:                             ; preds = %vector.body1197
  %polly.indvar_next827.2 = add nuw nsw i64 %polly.indvar826.2, 1
  %exitcond942.2.not = icmp eq i64 %polly.indvar_next827.2, 16
  br i1 %exitcond942.2.not, label %polly.loop_header823.1.2, label %polly.loop_header823.2

polly.loop_header823.1.2:                         ; preds = %polly.loop_exit831.2, %polly.loop_exit831.1.2
  %polly.indvar826.1.2 = phi i64 [ %polly.indvar_next827.1.2, %polly.loop_exit831.1.2 ], [ 0, %polly.loop_exit831.2 ]
  %572 = add nuw nsw i64 %polly.indvar826.1.2, 64
  %573 = mul nuw nsw i64 %572, 480
  %574 = trunc i64 %572 to i32
  %broadcast.splatinsert1219 = insertelement <4 x i32> poison, i32 %574, i32 0
  %broadcast.splat1220 = shufflevector <4 x i32> %broadcast.splatinsert1219, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1211

vector.body1211:                                  ; preds = %vector.body1211, %polly.loop_header823.1.2
  %index1213 = phi i64 [ 0, %polly.loop_header823.1.2 ], [ %index.next1214, %vector.body1211 ]
  %vec.ind1217 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header823.1.2 ], [ %vec.ind.next1218, %vector.body1211 ]
  %575 = add nuw nsw <4 x i64> %vec.ind1217, <i64 32, i64 32, i64 32, i64 32>
  %576 = trunc <4 x i64> %575 to <4 x i32>
  %577 = mul <4 x i32> %broadcast.splat1220, %576
  %578 = add <4 x i32> %577, <i32 2, i32 2, i32 2, i32 2>
  %579 = urem <4 x i32> %578, <i32 60, i32 60, i32 60, i32 60>
  %580 = sitofp <4 x i32> %579 to <4 x double>
  %581 = fmul fast <4 x double> %580, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %582 = extractelement <4 x i64> %575, i32 0
  %583 = shl i64 %582, 3
  %584 = add i64 %583, %573
  %585 = getelementptr i8, i8* %call2, i64 %584
  %586 = bitcast i8* %585 to <4 x double>*
  store <4 x double> %581, <4 x double>* %586, align 8, !alias.scope !116, !noalias !118
  %index.next1214 = add i64 %index1213, 4
  %vec.ind.next1218 = add <4 x i64> %vec.ind1217, <i64 4, i64 4, i64 4, i64 4>
  %587 = icmp eq i64 %index.next1214, 28
  br i1 %587, label %polly.loop_exit831.1.2, label %vector.body1211, !llvm.loop !149

polly.loop_exit831.1.2:                           ; preds = %vector.body1211
  %polly.indvar_next827.1.2 = add nuw nsw i64 %polly.indvar826.1.2, 1
  %exitcond942.1.2.not = icmp eq i64 %polly.indvar_next827.1.2, 16
  br i1 %exitcond942.1.2.not, label %polly.loop_header849, label %polly.loop_header823.1.2

polly.loop_header796.1:                           ; preds = %polly.loop_exit804, %polly.loop_exit804.1
  %polly.indvar799.1 = phi i64 [ %polly.indvar_next800.1, %polly.loop_exit804.1 ], [ 0, %polly.loop_exit804 ]
  %588 = mul nuw nsw i64 %polly.indvar799.1, 640
  %589 = trunc i64 %polly.indvar799.1 to i32
  %broadcast.splatinsert1053 = insertelement <4 x i32> poison, i32 %589, i32 0
  %broadcast.splat1054 = shufflevector <4 x i32> %broadcast.splatinsert1053, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1045

vector.body1045:                                  ; preds = %vector.body1045, %polly.loop_header796.1
  %index1047 = phi i64 [ 0, %polly.loop_header796.1 ], [ %index.next1048, %vector.body1045 ]
  %vec.ind1051 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header796.1 ], [ %vec.ind.next1052, %vector.body1045 ]
  %590 = add nuw nsw <4 x i64> %vec.ind1051, <i64 32, i64 32, i64 32, i64 32>
  %591 = trunc <4 x i64> %590 to <4 x i32>
  %592 = mul <4 x i32> %broadcast.splat1054, %591
  %593 = add <4 x i32> %592, <i32 3, i32 3, i32 3, i32 3>
  %594 = urem <4 x i32> %593, <i32 80, i32 80, i32 80, i32 80>
  %595 = sitofp <4 x i32> %594 to <4 x double>
  %596 = fmul fast <4 x double> %595, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %597 = extractelement <4 x i64> %590, i32 0
  %598 = shl i64 %597, 3
  %599 = add nuw nsw i64 %598, %588
  %600 = getelementptr i8, i8* %call, i64 %599
  %601 = bitcast i8* %600 to <4 x double>*
  store <4 x double> %596, <4 x double>* %601, align 8, !alias.scope !112, !noalias !114
  %index.next1048 = add i64 %index1047, 4
  %vec.ind.next1052 = add <4 x i64> %vec.ind1051, <i64 4, i64 4, i64 4, i64 4>
  %602 = icmp eq i64 %index.next1048, 32
  br i1 %602, label %polly.loop_exit804.1, label %vector.body1045, !llvm.loop !150

polly.loop_exit804.1:                             ; preds = %vector.body1045
  %polly.indvar_next800.1 = add nuw nsw i64 %polly.indvar799.1, 1
  %exitcond951.1.not = icmp eq i64 %polly.indvar_next800.1, 32
  br i1 %exitcond951.1.not, label %polly.loop_header796.2, label %polly.loop_header796.1

polly.loop_header796.2:                           ; preds = %polly.loop_exit804.1, %polly.loop_exit804.2
  %polly.indvar799.2 = phi i64 [ %polly.indvar_next800.2, %polly.loop_exit804.2 ], [ 0, %polly.loop_exit804.1 ]
  %603 = mul nuw nsw i64 %polly.indvar799.2, 640
  %604 = trunc i64 %polly.indvar799.2 to i32
  %broadcast.splatinsert1065 = insertelement <4 x i32> poison, i32 %604, i32 0
  %broadcast.splat1066 = shufflevector <4 x i32> %broadcast.splatinsert1065, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1057

vector.body1057:                                  ; preds = %vector.body1057, %polly.loop_header796.2
  %index1059 = phi i64 [ 0, %polly.loop_header796.2 ], [ %index.next1060, %vector.body1057 ]
  %vec.ind1063 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header796.2 ], [ %vec.ind.next1064, %vector.body1057 ]
  %605 = add nuw nsw <4 x i64> %vec.ind1063, <i64 64, i64 64, i64 64, i64 64>
  %606 = trunc <4 x i64> %605 to <4 x i32>
  %607 = mul <4 x i32> %broadcast.splat1066, %606
  %608 = add <4 x i32> %607, <i32 3, i32 3, i32 3, i32 3>
  %609 = urem <4 x i32> %608, <i32 80, i32 80, i32 80, i32 80>
  %610 = sitofp <4 x i32> %609 to <4 x double>
  %611 = fmul fast <4 x double> %610, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %612 = extractelement <4 x i64> %605, i32 0
  %613 = shl i64 %612, 3
  %614 = add nuw nsw i64 %613, %603
  %615 = getelementptr i8, i8* %call, i64 %614
  %616 = bitcast i8* %615 to <4 x double>*
  store <4 x double> %611, <4 x double>* %616, align 8, !alias.scope !112, !noalias !114
  %index.next1060 = add i64 %index1059, 4
  %vec.ind.next1064 = add <4 x i64> %vec.ind1063, <i64 4, i64 4, i64 4, i64 4>
  %617 = icmp eq i64 %index.next1060, 16
  br i1 %617, label %polly.loop_exit804.2, label %vector.body1057, !llvm.loop !151

polly.loop_exit804.2:                             ; preds = %vector.body1057
  %polly.indvar_next800.2 = add nuw nsw i64 %polly.indvar799.2, 1
  %exitcond951.2.not = icmp eq i64 %polly.indvar_next800.2, 32
  br i1 %exitcond951.2.not, label %polly.loop_header796.1984, label %polly.loop_header796.2

polly.loop_header796.1984:                        ; preds = %polly.loop_exit804.2, %polly.loop_exit804.1995
  %polly.indvar799.1983 = phi i64 [ %polly.indvar_next800.1993, %polly.loop_exit804.1995 ], [ 0, %polly.loop_exit804.2 ]
  %618 = add nuw nsw i64 %polly.indvar799.1983, 32
  %619 = mul nuw nsw i64 %618, 640
  %620 = trunc i64 %618 to i32
  %broadcast.splatinsert1079 = insertelement <4 x i32> poison, i32 %620, i32 0
  %broadcast.splat1080 = shufflevector <4 x i32> %broadcast.splatinsert1079, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1069

vector.body1069:                                  ; preds = %vector.body1069, %polly.loop_header796.1984
  %index1071 = phi i64 [ 0, %polly.loop_header796.1984 ], [ %index.next1072, %vector.body1069 ]
  %vec.ind1077 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header796.1984 ], [ %vec.ind.next1078, %vector.body1069 ]
  %621 = mul <4 x i32> %vec.ind1077, %broadcast.splat1080
  %622 = add <4 x i32> %621, <i32 3, i32 3, i32 3, i32 3>
  %623 = urem <4 x i32> %622, <i32 80, i32 80, i32 80, i32 80>
  %624 = sitofp <4 x i32> %623 to <4 x double>
  %625 = fmul fast <4 x double> %624, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %626 = shl i64 %index1071, 3
  %627 = add nuw nsw i64 %626, %619
  %628 = getelementptr i8, i8* %call, i64 %627
  %629 = bitcast i8* %628 to <4 x double>*
  store <4 x double> %625, <4 x double>* %629, align 8, !alias.scope !112, !noalias !114
  %index.next1072 = add i64 %index1071, 4
  %vec.ind.next1078 = add <4 x i32> %vec.ind1077, <i32 4, i32 4, i32 4, i32 4>
  %630 = icmp eq i64 %index.next1072, 32
  br i1 %630, label %polly.loop_exit804.1995, label %vector.body1069, !llvm.loop !152

polly.loop_exit804.1995:                          ; preds = %vector.body1069
  %polly.indvar_next800.1993 = add nuw nsw i64 %polly.indvar799.1983, 1
  %exitcond951.1994.not = icmp eq i64 %polly.indvar_next800.1993, 32
  br i1 %exitcond951.1994.not, label %polly.loop_header796.1.1, label %polly.loop_header796.1984

polly.loop_header796.1.1:                         ; preds = %polly.loop_exit804.1995, %polly.loop_exit804.1.1
  %polly.indvar799.1.1 = phi i64 [ %polly.indvar_next800.1.1, %polly.loop_exit804.1.1 ], [ 0, %polly.loop_exit804.1995 ]
  %631 = add nuw nsw i64 %polly.indvar799.1.1, 32
  %632 = mul nuw nsw i64 %631, 640
  %633 = trunc i64 %631 to i32
  %broadcast.splatinsert1091 = insertelement <4 x i32> poison, i32 %633, i32 0
  %broadcast.splat1092 = shufflevector <4 x i32> %broadcast.splatinsert1091, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1083

vector.body1083:                                  ; preds = %vector.body1083, %polly.loop_header796.1.1
  %index1085 = phi i64 [ 0, %polly.loop_header796.1.1 ], [ %index.next1086, %vector.body1083 ]
  %vec.ind1089 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header796.1.1 ], [ %vec.ind.next1090, %vector.body1083 ]
  %634 = add nuw nsw <4 x i64> %vec.ind1089, <i64 32, i64 32, i64 32, i64 32>
  %635 = trunc <4 x i64> %634 to <4 x i32>
  %636 = mul <4 x i32> %broadcast.splat1092, %635
  %637 = add <4 x i32> %636, <i32 3, i32 3, i32 3, i32 3>
  %638 = urem <4 x i32> %637, <i32 80, i32 80, i32 80, i32 80>
  %639 = sitofp <4 x i32> %638 to <4 x double>
  %640 = fmul fast <4 x double> %639, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %641 = extractelement <4 x i64> %634, i32 0
  %642 = shl i64 %641, 3
  %643 = add nuw nsw i64 %642, %632
  %644 = getelementptr i8, i8* %call, i64 %643
  %645 = bitcast i8* %644 to <4 x double>*
  store <4 x double> %640, <4 x double>* %645, align 8, !alias.scope !112, !noalias !114
  %index.next1086 = add i64 %index1085, 4
  %vec.ind.next1090 = add <4 x i64> %vec.ind1089, <i64 4, i64 4, i64 4, i64 4>
  %646 = icmp eq i64 %index.next1086, 32
  br i1 %646, label %polly.loop_exit804.1.1, label %vector.body1083, !llvm.loop !153

polly.loop_exit804.1.1:                           ; preds = %vector.body1083
  %polly.indvar_next800.1.1 = add nuw nsw i64 %polly.indvar799.1.1, 1
  %exitcond951.1.1.not = icmp eq i64 %polly.indvar_next800.1.1, 32
  br i1 %exitcond951.1.1.not, label %polly.loop_header796.2.1, label %polly.loop_header796.1.1

polly.loop_header796.2.1:                         ; preds = %polly.loop_exit804.1.1, %polly.loop_exit804.2.1
  %polly.indvar799.2.1 = phi i64 [ %polly.indvar_next800.2.1, %polly.loop_exit804.2.1 ], [ 0, %polly.loop_exit804.1.1 ]
  %647 = add nuw nsw i64 %polly.indvar799.2.1, 32
  %648 = mul nuw nsw i64 %647, 640
  %649 = trunc i64 %647 to i32
  %broadcast.splatinsert1103 = insertelement <4 x i32> poison, i32 %649, i32 0
  %broadcast.splat1104 = shufflevector <4 x i32> %broadcast.splatinsert1103, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1095

vector.body1095:                                  ; preds = %vector.body1095, %polly.loop_header796.2.1
  %index1097 = phi i64 [ 0, %polly.loop_header796.2.1 ], [ %index.next1098, %vector.body1095 ]
  %vec.ind1101 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header796.2.1 ], [ %vec.ind.next1102, %vector.body1095 ]
  %650 = add nuw nsw <4 x i64> %vec.ind1101, <i64 64, i64 64, i64 64, i64 64>
  %651 = trunc <4 x i64> %650 to <4 x i32>
  %652 = mul <4 x i32> %broadcast.splat1104, %651
  %653 = add <4 x i32> %652, <i32 3, i32 3, i32 3, i32 3>
  %654 = urem <4 x i32> %653, <i32 80, i32 80, i32 80, i32 80>
  %655 = sitofp <4 x i32> %654 to <4 x double>
  %656 = fmul fast <4 x double> %655, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %657 = extractelement <4 x i64> %650, i32 0
  %658 = shl i64 %657, 3
  %659 = add nuw nsw i64 %658, %648
  %660 = getelementptr i8, i8* %call, i64 %659
  %661 = bitcast i8* %660 to <4 x double>*
  store <4 x double> %656, <4 x double>* %661, align 8, !alias.scope !112, !noalias !114
  %index.next1098 = add i64 %index1097, 4
  %vec.ind.next1102 = add <4 x i64> %vec.ind1101, <i64 4, i64 4, i64 4, i64 4>
  %662 = icmp eq i64 %index.next1098, 16
  br i1 %662, label %polly.loop_exit804.2.1, label %vector.body1095, !llvm.loop !154

polly.loop_exit804.2.1:                           ; preds = %vector.body1095
  %polly.indvar_next800.2.1 = add nuw nsw i64 %polly.indvar799.2.1, 1
  %exitcond951.2.1.not = icmp eq i64 %polly.indvar_next800.2.1, 32
  br i1 %exitcond951.2.1.not, label %polly.loop_header796.2998, label %polly.loop_header796.2.1

polly.loop_header796.2998:                        ; preds = %polly.loop_exit804.2.1, %polly.loop_exit804.21009
  %polly.indvar799.2997 = phi i64 [ %polly.indvar_next800.21007, %polly.loop_exit804.21009 ], [ 0, %polly.loop_exit804.2.1 ]
  %663 = add nuw nsw i64 %polly.indvar799.2997, 64
  %664 = mul nuw nsw i64 %663, 640
  %665 = trunc i64 %663 to i32
  %broadcast.splatinsert1117 = insertelement <4 x i32> poison, i32 %665, i32 0
  %broadcast.splat1118 = shufflevector <4 x i32> %broadcast.splatinsert1117, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1107

vector.body1107:                                  ; preds = %vector.body1107, %polly.loop_header796.2998
  %index1109 = phi i64 [ 0, %polly.loop_header796.2998 ], [ %index.next1110, %vector.body1107 ]
  %vec.ind1115 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header796.2998 ], [ %vec.ind.next1116, %vector.body1107 ]
  %666 = mul <4 x i32> %vec.ind1115, %broadcast.splat1118
  %667 = add <4 x i32> %666, <i32 3, i32 3, i32 3, i32 3>
  %668 = urem <4 x i32> %667, <i32 80, i32 80, i32 80, i32 80>
  %669 = sitofp <4 x i32> %668 to <4 x double>
  %670 = fmul fast <4 x double> %669, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %671 = shl i64 %index1109, 3
  %672 = add nuw nsw i64 %671, %664
  %673 = getelementptr i8, i8* %call, i64 %672
  %674 = bitcast i8* %673 to <4 x double>*
  store <4 x double> %670, <4 x double>* %674, align 8, !alias.scope !112, !noalias !114
  %index.next1110 = add i64 %index1109, 4
  %vec.ind.next1116 = add <4 x i32> %vec.ind1115, <i32 4, i32 4, i32 4, i32 4>
  %675 = icmp eq i64 %index.next1110, 32
  br i1 %675, label %polly.loop_exit804.21009, label %vector.body1107, !llvm.loop !155

polly.loop_exit804.21009:                         ; preds = %vector.body1107
  %polly.indvar_next800.21007 = add nuw nsw i64 %polly.indvar799.2997, 1
  %exitcond951.21008.not = icmp eq i64 %polly.indvar_next800.21007, 16
  br i1 %exitcond951.21008.not, label %polly.loop_header796.1.2, label %polly.loop_header796.2998

polly.loop_header796.1.2:                         ; preds = %polly.loop_exit804.21009, %polly.loop_exit804.1.2
  %polly.indvar799.1.2 = phi i64 [ %polly.indvar_next800.1.2, %polly.loop_exit804.1.2 ], [ 0, %polly.loop_exit804.21009 ]
  %676 = add nuw nsw i64 %polly.indvar799.1.2, 64
  %677 = mul nuw nsw i64 %676, 640
  %678 = trunc i64 %676 to i32
  %broadcast.splatinsert1129 = insertelement <4 x i32> poison, i32 %678, i32 0
  %broadcast.splat1130 = shufflevector <4 x i32> %broadcast.splatinsert1129, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1121

vector.body1121:                                  ; preds = %vector.body1121, %polly.loop_header796.1.2
  %index1123 = phi i64 [ 0, %polly.loop_header796.1.2 ], [ %index.next1124, %vector.body1121 ]
  %vec.ind1127 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header796.1.2 ], [ %vec.ind.next1128, %vector.body1121 ]
  %679 = add nuw nsw <4 x i64> %vec.ind1127, <i64 32, i64 32, i64 32, i64 32>
  %680 = trunc <4 x i64> %679 to <4 x i32>
  %681 = mul <4 x i32> %broadcast.splat1130, %680
  %682 = add <4 x i32> %681, <i32 3, i32 3, i32 3, i32 3>
  %683 = urem <4 x i32> %682, <i32 80, i32 80, i32 80, i32 80>
  %684 = sitofp <4 x i32> %683 to <4 x double>
  %685 = fmul fast <4 x double> %684, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %686 = extractelement <4 x i64> %679, i32 0
  %687 = shl i64 %686, 3
  %688 = add nuw nsw i64 %687, %677
  %689 = getelementptr i8, i8* %call, i64 %688
  %690 = bitcast i8* %689 to <4 x double>*
  store <4 x double> %685, <4 x double>* %690, align 8, !alias.scope !112, !noalias !114
  %index.next1124 = add i64 %index1123, 4
  %vec.ind.next1128 = add <4 x i64> %vec.ind1127, <i64 4, i64 4, i64 4, i64 4>
  %691 = icmp eq i64 %index.next1124, 32
  br i1 %691, label %polly.loop_exit804.1.2, label %vector.body1121, !llvm.loop !156

polly.loop_exit804.1.2:                           ; preds = %vector.body1121
  %polly.indvar_next800.1.2 = add nuw nsw i64 %polly.indvar799.1.2, 1
  %exitcond951.1.2.not = icmp eq i64 %polly.indvar_next800.1.2, 16
  br i1 %exitcond951.1.2.not, label %polly.loop_header796.2.2, label %polly.loop_header796.1.2

polly.loop_header796.2.2:                         ; preds = %polly.loop_exit804.1.2, %polly.loop_exit804.2.2
  %polly.indvar799.2.2 = phi i64 [ %polly.indvar_next800.2.2, %polly.loop_exit804.2.2 ], [ 0, %polly.loop_exit804.1.2 ]
  %692 = add nuw nsw i64 %polly.indvar799.2.2, 64
  %693 = mul nuw nsw i64 %692, 640
  %694 = trunc i64 %692 to i32
  %broadcast.splatinsert1141 = insertelement <4 x i32> poison, i32 %694, i32 0
  %broadcast.splat1142 = shufflevector <4 x i32> %broadcast.splatinsert1141, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1133

vector.body1133:                                  ; preds = %vector.body1133, %polly.loop_header796.2.2
  %index1135 = phi i64 [ 0, %polly.loop_header796.2.2 ], [ %index.next1136, %vector.body1133 ]
  %vec.ind1139 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header796.2.2 ], [ %vec.ind.next1140, %vector.body1133 ]
  %695 = add nuw nsw <4 x i64> %vec.ind1139, <i64 64, i64 64, i64 64, i64 64>
  %696 = trunc <4 x i64> %695 to <4 x i32>
  %697 = mul <4 x i32> %broadcast.splat1142, %696
  %698 = add <4 x i32> %697, <i32 3, i32 3, i32 3, i32 3>
  %699 = urem <4 x i32> %698, <i32 80, i32 80, i32 80, i32 80>
  %700 = sitofp <4 x i32> %699 to <4 x double>
  %701 = fmul fast <4 x double> %700, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %702 = extractelement <4 x i64> %695, i32 0
  %703 = shl i64 %702, 3
  %704 = add nuw nsw i64 %703, %693
  %705 = getelementptr i8, i8* %call, i64 %704
  %706 = bitcast i8* %705 to <4 x double>*
  store <4 x double> %701, <4 x double>* %706, align 8, !alias.scope !112, !noalias !114
  %index.next1136 = add i64 %index1135, 4
  %vec.ind.next1140 = add <4 x i64> %vec.ind1139, <i64 4, i64 4, i64 4, i64 4>
  %707 = icmp eq i64 %index.next1136, 16
  br i1 %707, label %polly.loop_exit804.2.2, label %vector.body1133, !llvm.loop !157

polly.loop_exit804.2.2:                           ; preds = %vector.body1133
  %polly.indvar_next800.2.2 = add nuw nsw i64 %polly.indvar799.2.2, 1
  %exitcond951.2.2.not = icmp eq i64 %polly.indvar_next800.2.2, 16
  br i1 %exitcond951.2.2.not, label %polly.loop_header823, label %polly.loop_header796.2.2
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
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 4}
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
!51 = !{!"llvm.loop.tile.size", i32 96}
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
!129 = distinct !{!129, !81, !13}
!130 = distinct !{!130, !13}
!131 = distinct !{!131, !81, !13}
!132 = distinct !{!132, !13}
!133 = distinct !{!133, !81, !13}
!134 = distinct !{!134, !13}
!135 = distinct !{!135, !81, !13}
!136 = distinct !{!136, !13}
!137 = distinct !{!137, !81, !13}
!138 = distinct !{!138, !13}
!139 = distinct !{!139, !81, !13}
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
