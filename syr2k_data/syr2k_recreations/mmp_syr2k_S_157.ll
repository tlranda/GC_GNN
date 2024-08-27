; ModuleID = 'syr2k_recreations//mmp_syr2k_S_157.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_157.c"
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
  %call810 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #8
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #8
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
  %scevgep1031 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1030 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1029 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1028 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1028, %scevgep1031
  %bound1 = icmp ult i8* %scevgep1030, %scevgep1029
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
  br i1 %exitcond18.not.i, label %vector.ph1035, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1035:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1042 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1043 = shufflevector <4 x i64> %broadcast.splatinsert1042, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1034

vector.body1034:                                  ; preds = %vector.body1034, %vector.ph1035
  %index1036 = phi i64 [ 0, %vector.ph1035 ], [ %index.next1037, %vector.body1034 ]
  %vec.ind1040 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1035 ], [ %vec.ind.next1041, %vector.body1034 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1040, %broadcast.splat1043
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv7.i, i64 %index1036
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1037 = add i64 %index1036, 4
  %vec.ind.next1041 = add <4 x i64> %vec.ind1040, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1037, 80
  br i1 %40, label %for.inc41.i, label %vector.body1034, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1034
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1035, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit857.1.2
  tail call void (...) @polybench_timer_start() #8
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start472, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1455, label %vector.ph1317

vector.ph1317:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1316

vector.body1316:                                  ; preds = %vector.body1316, %vector.ph1317
  %index1318 = phi i64 [ 0, %vector.ph1317 ], [ %index.next1319, %vector.body1316 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv21.i, i64 %index1318
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1319 = add i64 %index1318, 4
  %46 = icmp eq i64 %index.next1319, %n.vec
  br i1 %46, label %middle.block1314, label %vector.body1316, !llvm.loop !18

middle.block1314:                                 ; preds = %vector.body1316
  %cmp.n1321 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1321, label %for.inc6.i, label %for.body3.i46.preheader1455

for.body3.i46.preheader1455:                      ; preds = %for.body3.i46.preheader, %middle.block1314
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1314 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1455, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1455 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1314, %for.cond1.preheader.i45
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
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  tail call void (...) @polybench_timer_start() #8
  br i1 %41, label %polly.start284, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1356 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1356, label %for.body3.i60.preheader1454, label %vector.ph1357

vector.ph1357:                                    ; preds = %for.body3.i60.preheader
  %n.vec1359 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1355

vector.body1355:                                  ; preds = %vector.body1355, %vector.ph1357
  %index1360 = phi i64 [ 0, %vector.ph1357 ], [ %index.next1361, %vector.body1355 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv21.i52, i64 %index1360
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1364 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1364, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1361 = add i64 %index1360, 4
  %57 = icmp eq i64 %index.next1361, %n.vec1359
  br i1 %57, label %middle.block1353, label %vector.body1355, !llvm.loop !64

middle.block1353:                                 ; preds = %vector.body1355
  %cmp.n1363 = icmp eq i64 %indvars.iv21.i52, %n.vec1359
  br i1 %cmp.n1363, label %for.inc6.i63, label %for.body3.i60.preheader1454

for.body3.i60.preheader1454:                      ; preds = %for.body3.i60.preheader, %middle.block1353
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1359, %middle.block1353 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1454, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1454 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1353, %for.cond1.preheader.i54
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
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  tail call void (...) @polybench_timer_start() #8
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1406 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1406, label %for.body3.i99.preheader1453, label %vector.ph1407

vector.ph1407:                                    ; preds = %for.body3.i99.preheader
  %n.vec1409 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1405

vector.body1405:                                  ; preds = %vector.body1405, %vector.ph1407
  %index1410 = phi i64 [ 0, %vector.ph1407 ], [ %index.next1411, %vector.body1405 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv21.i91, i64 %index1410
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1414 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1414, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1411 = add i64 %index1410, 4
  %68 = icmp eq i64 %index.next1411, %n.vec1409
  br i1 %68, label %middle.block1403, label %vector.body1405, !llvm.loop !66

middle.block1403:                                 ; preds = %vector.body1405
  %cmp.n1413 = icmp eq i64 %indvars.iv21.i91, %n.vec1409
  br i1 %cmp.n1413, label %for.inc6.i102, label %for.body3.i99.preheader1453

for.body3.i99.preheader1453:                      ; preds = %for.body3.i99.preheader, %middle.block1403
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1409, %middle.block1403 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1453, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1453 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1403, %for.cond1.preheader.i93
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
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !68
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #9
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #9
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !70

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !71

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #9
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #8
  tail call void @free(i8* %call1) #8
  tail call void @free(i8* %call2) #8
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(10240) i8* @malloc(i64 10240) #8
  %malloccall136 = tail call dereferenceable_or_null(10240) i8* @malloc(i64 10240) #8
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1418 = phi i64 [ %indvar.next1419, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1418, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1420 = icmp ult i64 %88, 4
  br i1 %min.iters.check1420, label %polly.loop_header192.preheader, label %vector.ph1421

vector.ph1421:                                    ; preds = %polly.loop_header
  %n.vec1423 = and i64 %88, -4
  br label %vector.body1417

vector.body1417:                                  ; preds = %vector.body1417, %vector.ph1421
  %index1424 = phi i64 [ 0, %vector.ph1421 ], [ %index.next1425, %vector.body1417 ]
  %90 = shl nuw nsw i64 %index1424, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1428 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1428, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1425 = add i64 %index1424, 4
  %95 = icmp eq i64 %index.next1425, %n.vec1423
  br i1 %95, label %middle.block1415, label %vector.body1417, !llvm.loop !79

middle.block1415:                                 ; preds = %vector.body1417
  %cmp.n1427 = icmp eq i64 %88, %n.vec1423
  br i1 %cmp.n1427, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1415
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1423, %middle.block1415 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1415
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond904.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1419 = add i64 %indvar1418, 1
  br i1 %exitcond904.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond903.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond903.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %indvars.iv888 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next889, %polly.loop_exit208 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit208 ]
  %smin899 = call i64 @llvm.smin.i64(i64 %indvars.iv888, i64 -44)
  %97 = add nsw i64 %smin899, 60
  %98 = shl nsw i64 %polly.indvar203, 4
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit246
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next889 = add nsw i64 %indvars.iv888, -16
  %exitcond902.not = icmp eq i64 %polly.indvar_next204, 4
  br i1 %exitcond902.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit246, %polly.loop_header200
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit246 ], [ 80, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit246 ], [ 0, %polly.loop_header200 ]
  %99 = mul nsw i64 %polly.indvar209, -4
  %100 = shl nsw i64 %polly.indvar209, 2
  br label %polly.loop_header212

polly.loop_exit246:                               ; preds = %polly.loop_exit252
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  %exitcond901.not = icmp eq i64 %polly.indvar_next210, 20
  br i1 %exitcond901.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %101 = add nuw nsw i64 %polly.indvar215, %98
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 80
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond890.not = icmp eq i64 %polly.indvar_next216, %97
  br i1 %exitcond890.not, label %polly.loop_header228, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %102 = add nuw nsw i64 %polly.indvar221, %100
  %polly.access.mul.call2225 = mul nuw nsw i64 %102, 60
  %polly.access.add.call2226 = add nuw nsw i64 %101, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2672, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit220, %polly.loop_exit236
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_exit220 ]
  %103 = add nuw nsw i64 %polly.indvar231, %98
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar231, 80
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_header234
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %exitcond893.not = icmp eq i64 %polly.indvar_next232, %97
  br i1 %exitcond893.not, label %polly.loop_header244, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header234, %polly.loop_header228
  %polly.indvar237 = phi i64 [ 0, %polly.loop_header228 ], [ %polly.indvar_next238, %polly.loop_header234 ]
  %104 = add nuw nsw i64 %polly.indvar237, %100
  %polly.access.mul.call1241 = mul nuw nsw i64 %104, 60
  %polly.access.add.call1242 = add nuw nsw i64 %103, %polly.access.mul.call1241
  %polly.access.call1243 = getelementptr double, double* %polly.access.cast.call1662, i64 %polly.access.add.call1242
  %polly.access.call1243.load = load double, double* %polly.access.call1243, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1 = add nuw nsw i64 %polly.indvar237, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1
  store double %polly.access.call1243.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond891.not = icmp eq i64 %polly.indvar_next238, %indvars.iv
  br i1 %exitcond891.not, label %polly.loop_exit236, label %polly.loop_header234

polly.loop_header244:                             ; preds = %polly.loop_exit236, %polly.loop_exit252
  %polly.indvar247 = phi i64 [ %polly.indvar_next248, %polly.loop_exit252 ], [ 0, %polly.loop_exit236 ]
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar247, 80
  br label %polly.loop_header250

polly.loop_exit252:                               ; preds = %polly.loop_exit258
  %polly.indvar_next248 = add nuw nsw i64 %polly.indvar247, 1
  %exitcond900.not = icmp eq i64 %polly.indvar_next248, %97
  br i1 %exitcond900.not, label %polly.loop_exit246, label %polly.loop_header244

polly.loop_header250:                             ; preds = %polly.loop_exit258, %polly.loop_header244
  %indvars.iv894 = phi i64 [ %indvars.iv.next895, %polly.loop_exit258 ], [ 0, %polly.loop_header244 ]
  %polly.indvar253 = phi i64 [ %polly.indvar_next254, %polly.loop_exit258 ], [ %100, %polly.loop_header244 ]
  %105 = add nsw i64 %polly.indvar253, %99
  %106 = mul nuw nsw i64 %polly.indvar253, 640
  %scevgep278 = getelementptr i8, i8* %call, i64 %106
  %polly.access.add.Packed_MemRef_call2267 = add nuw nsw i64 %105, %polly.access.mul.Packed_MemRef_call1262
  %smin1432 = call i64 @llvm.smin.i64(i64 %indvars.iv894, i64 3)
  %polly.access.Packed_MemRef_call1276 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2267
  %_p_scalar_277 = load double, double* %polly.access.Packed_MemRef_call1276, align 8
  %polly.access.Packed_MemRef_call2268 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2267
  %_p_scalar_269 = load double, double* %polly.access.Packed_MemRef_call2268, align 8
  %broadcast.splatinsert1441 = insertelement <4 x i64> poison, i64 %smin1432, i32 0
  %broadcast.splat1442 = shufflevector <4 x i64> %broadcast.splatinsert1441, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1447 = insertelement <4 x double> poison, double %_p_scalar_269, i32 0
  %broadcast.splat1448 = shufflevector <4 x double> %broadcast.splatinsert1447, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1450 = insertelement <4 x double> poison, double %_p_scalar_277, i32 0
  %broadcast.splat1451 = shufflevector <4 x double> %broadcast.splatinsert1450, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1431

vector.body1431:                                  ; preds = %vector.body1431, %polly.loop_header250
  %index1437 = phi i64 [ 0, %polly.loop_header250 ], [ %index.next1438, %vector.body1431 ]
  %broadcast.splatinsert1443 = insertelement <4 x i64> poison, i64 %index1437, i32 0
  %broadcast.splat1444 = shufflevector <4 x i64> %broadcast.splatinsert1443, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1445 = or <4 x i64> %broadcast.splat1444, <i64 0, i64 1, i64 2, i64 3>
  %107 = icmp ule <4 x i64> %induction1445, %broadcast.splat1442
  %108 = add nuw nsw i64 %index1437, %100
  %109 = add nuw nsw i64 %index1437, %polly.access.mul.Packed_MemRef_call1262
  %110 = getelementptr double, double* %Packed_MemRef_call1, i64 %109
  %111 = bitcast double* %110 to <4 x double>*
  %wide.masked.load1446 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %111, i32 8, <4 x i1> %107, <4 x double> poison)
  %112 = fmul fast <4 x double> %broadcast.splat1448, %wide.masked.load1446
  %113 = getelementptr double, double* %Packed_MemRef_call2, i64 %109
  %114 = bitcast double* %113 to <4 x double>*
  %wide.masked.load1449 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %114, i32 8, <4 x i1> %107, <4 x double> poison)
  %115 = fmul fast <4 x double> %broadcast.splat1451, %wide.masked.load1449
  %116 = shl i64 %108, 3
  %117 = getelementptr i8, i8* %scevgep278, i64 %116
  %118 = bitcast i8* %117 to <4 x double>*
  %wide.masked.load1452 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %118, i32 8, <4 x i1> %107, <4 x double> poison), !alias.scope !72, !noalias !74
  %119 = fadd fast <4 x double> %115, %112
  %120 = fmul fast <4 x double> %119, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %121 = fadd fast <4 x double> %120, %wide.masked.load1452
  %122 = bitcast i8* %117 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %121, <4 x double>* %122, i32 8, <4 x i1> %107), !alias.scope !72, !noalias !74
  %index.next1438 = add i64 %index1437, 4
  %123 = icmp eq i64 %index1437, 0
  br i1 %123, label %polly.loop_exit258, label %vector.body1431, !llvm.loop !84

polly.loop_exit258:                               ; preds = %vector.body1431
  %polly.indvar_next254 = add nuw nsw i64 %polly.indvar253, 1
  %indvars.iv.next895 = add nuw nsw i64 %indvars.iv894, 1
  %exitcond898.not = icmp eq i64 %indvars.iv.next895, %indvars.iv
  br i1 %exitcond898.not, label %polly.loop_exit252, label %polly.loop_header250

polly.start284:                                   ; preds = %kernel_syr2k.exit
  %malloccall286 = tail call dereferenceable_or_null(10240) i8* @malloc(i64 10240) #8
  %malloccall288 = tail call dereferenceable_or_null(10240) i8* @malloc(i64 10240) #8
  br label %polly.loop_header372

polly.exiting285:                                 ; preds = %polly.loop_exit396
  tail call void @free(i8* nonnull %malloccall286)
  tail call void @free(i8* nonnull %malloccall288)
  br label %kernel_syr2k.exit90

polly.loop_header372:                             ; preds = %polly.loop_exit380, %polly.start284
  %indvar1368 = phi i64 [ %indvar.next1369, %polly.loop_exit380 ], [ 0, %polly.start284 ]
  %polly.indvar375 = phi i64 [ %polly.indvar_next376, %polly.loop_exit380 ], [ 1, %polly.start284 ]
  %124 = add i64 %indvar1368, 1
  %125 = mul nuw nsw i64 %polly.indvar375, 640
  %scevgep384 = getelementptr i8, i8* %call, i64 %125
  %min.iters.check1370 = icmp ult i64 %124, 4
  br i1 %min.iters.check1370, label %polly.loop_header378.preheader, label %vector.ph1371

vector.ph1371:                                    ; preds = %polly.loop_header372
  %n.vec1373 = and i64 %124, -4
  br label %vector.body1367

vector.body1367:                                  ; preds = %vector.body1367, %vector.ph1371
  %index1374 = phi i64 [ 0, %vector.ph1371 ], [ %index.next1375, %vector.body1367 ]
  %126 = shl nuw nsw i64 %index1374, 3
  %127 = getelementptr i8, i8* %scevgep384, i64 %126
  %128 = bitcast i8* %127 to <4 x double>*
  %wide.load1378 = load <4 x double>, <4 x double>* %128, align 8, !alias.scope !85, !noalias !87
  %129 = fmul fast <4 x double> %wide.load1378, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %130 = bitcast i8* %127 to <4 x double>*
  store <4 x double> %129, <4 x double>* %130, align 8, !alias.scope !85, !noalias !87
  %index.next1375 = add i64 %index1374, 4
  %131 = icmp eq i64 %index.next1375, %n.vec1373
  br i1 %131, label %middle.block1365, label %vector.body1367, !llvm.loop !92

middle.block1365:                                 ; preds = %vector.body1367
  %cmp.n1377 = icmp eq i64 %124, %n.vec1373
  br i1 %cmp.n1377, label %polly.loop_exit380, label %polly.loop_header378.preheader

polly.loop_header378.preheader:                   ; preds = %polly.loop_header372, %middle.block1365
  %polly.indvar381.ph = phi i64 [ 0, %polly.loop_header372 ], [ %n.vec1373, %middle.block1365 ]
  br label %polly.loop_header378

polly.loop_exit380:                               ; preds = %polly.loop_header378, %middle.block1365
  %polly.indvar_next376 = add nuw nsw i64 %polly.indvar375, 1
  %exitcond925.not = icmp eq i64 %polly.indvar_next376, 80
  %indvar.next1369 = add i64 %indvar1368, 1
  br i1 %exitcond925.not, label %polly.loop_header388.preheader, label %polly.loop_header372

polly.loop_header388.preheader:                   ; preds = %polly.loop_exit380
  %Packed_MemRef_call1287 = bitcast i8* %malloccall286 to double*
  %Packed_MemRef_call2289 = bitcast i8* %malloccall288 to double*
  br label %polly.loop_header388

polly.loop_header378:                             ; preds = %polly.loop_header378.preheader, %polly.loop_header378
  %polly.indvar381 = phi i64 [ %polly.indvar_next382, %polly.loop_header378 ], [ %polly.indvar381.ph, %polly.loop_header378.preheader ]
  %132 = shl nuw nsw i64 %polly.indvar381, 3
  %scevgep385 = getelementptr i8, i8* %scevgep384, i64 %132
  %scevgep385386 = bitcast i8* %scevgep385 to double*
  %_p_scalar_387 = load double, double* %scevgep385386, align 8, !alias.scope !85, !noalias !87
  %p_mul.i57 = fmul fast double %_p_scalar_387, 1.200000e+00
  store double %p_mul.i57, double* %scevgep385386, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next382 = add nuw nsw i64 %polly.indvar381, 1
  %exitcond924.not = icmp eq i64 %polly.indvar_next382, %polly.indvar375
  br i1 %exitcond924.not, label %polly.loop_exit380, label %polly.loop_header378, !llvm.loop !93

polly.loop_header388:                             ; preds = %polly.loop_header388.preheader, %polly.loop_exit396
  %indvars.iv908 = phi i64 [ 0, %polly.loop_header388.preheader ], [ %indvars.iv.next909, %polly.loop_exit396 ]
  %polly.indvar391 = phi i64 [ 0, %polly.loop_header388.preheader ], [ %polly.indvar_next392, %polly.loop_exit396 ]
  %smin920 = call i64 @llvm.smin.i64(i64 %indvars.iv908, i64 -44)
  %133 = add nsw i64 %smin920, 60
  %134 = shl nsw i64 %polly.indvar391, 4
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_exit434
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %indvars.iv.next909 = add nsw i64 %indvars.iv908, -16
  %exitcond923.not = icmp eq i64 %polly.indvar_next392, 4
  br i1 %exitcond923.not, label %polly.exiting285, label %polly.loop_header388

polly.loop_header394:                             ; preds = %polly.loop_exit434, %polly.loop_header388
  %indvars.iv905 = phi i64 [ %indvars.iv.next906, %polly.loop_exit434 ], [ 80, %polly.loop_header388 ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit434 ], [ 0, %polly.loop_header388 ]
  %135 = mul nsw i64 %polly.indvar397, -4
  %136 = shl nsw i64 %polly.indvar397, 2
  br label %polly.loop_header400

polly.loop_exit434:                               ; preds = %polly.loop_exit440
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %indvars.iv.next906 = add nsw i64 %indvars.iv905, -4
  %exitcond922.not = icmp eq i64 %polly.indvar_next398, 20
  br i1 %exitcond922.not, label %polly.loop_exit396, label %polly.loop_header394

polly.loop_header400:                             ; preds = %polly.loop_exit408, %polly.loop_header394
  %polly.indvar403 = phi i64 [ 0, %polly.loop_header394 ], [ %polly.indvar_next404, %polly.loop_exit408 ]
  %137 = add nuw nsw i64 %polly.indvar403, %134
  %polly.access.mul.Packed_MemRef_call2289 = mul nuw nsw i64 %polly.indvar403, 80
  br label %polly.loop_header406

polly.loop_exit408:                               ; preds = %polly.loop_header406
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond911.not = icmp eq i64 %polly.indvar_next404, %133
  br i1 %exitcond911.not, label %polly.loop_header416, label %polly.loop_header400

polly.loop_header406:                             ; preds = %polly.loop_header406, %polly.loop_header400
  %polly.indvar409 = phi i64 [ 0, %polly.loop_header400 ], [ %polly.indvar_next410, %polly.loop_header406 ]
  %138 = add nuw nsw i64 %polly.indvar409, %136
  %polly.access.mul.call2413 = mul nuw nsw i64 %138, 60
  %polly.access.add.call2414 = add nuw nsw i64 %137, %polly.access.mul.call2413
  %polly.access.call2415 = getelementptr double, double* %polly.access.cast.call2672, i64 %polly.access.add.call2414
  %polly.access.call2415.load = load double, double* %polly.access.call2415, align 8, !alias.scope !89, !noalias !94
  %polly.access.add.Packed_MemRef_call2289 = add nuw nsw i64 %polly.indvar409, %polly.access.mul.Packed_MemRef_call2289
  %polly.access.Packed_MemRef_call2289 = getelementptr double, double* %Packed_MemRef_call2289, i64 %polly.access.add.Packed_MemRef_call2289
  store double %polly.access.call2415.load, double* %polly.access.Packed_MemRef_call2289, align 8
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond907.not = icmp eq i64 %polly.indvar_next410, %indvars.iv905
  br i1 %exitcond907.not, label %polly.loop_exit408, label %polly.loop_header406

polly.loop_header416:                             ; preds = %polly.loop_exit408, %polly.loop_exit424
  %polly.indvar419 = phi i64 [ %polly.indvar_next420, %polly.loop_exit424 ], [ 0, %polly.loop_exit408 ]
  %139 = add nuw nsw i64 %polly.indvar419, %134
  %polly.access.mul.Packed_MemRef_call1287 = mul nuw nsw i64 %polly.indvar419, 80
  br label %polly.loop_header422

polly.loop_exit424:                               ; preds = %polly.loop_header422
  %polly.indvar_next420 = add nuw nsw i64 %polly.indvar419, 1
  %exitcond914.not = icmp eq i64 %polly.indvar_next420, %133
  br i1 %exitcond914.not, label %polly.loop_header432, label %polly.loop_header416

polly.loop_header422:                             ; preds = %polly.loop_header422, %polly.loop_header416
  %polly.indvar425 = phi i64 [ 0, %polly.loop_header416 ], [ %polly.indvar_next426, %polly.loop_header422 ]
  %140 = add nuw nsw i64 %polly.indvar425, %136
  %polly.access.mul.call1429 = mul nuw nsw i64 %140, 60
  %polly.access.add.call1430 = add nuw nsw i64 %139, %polly.access.mul.call1429
  %polly.access.call1431 = getelementptr double, double* %polly.access.cast.call1662, i64 %polly.access.add.call1430
  %polly.access.call1431.load = load double, double* %polly.access.call1431, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1287 = add nuw nsw i64 %polly.indvar425, %polly.access.mul.Packed_MemRef_call1287
  %polly.access.Packed_MemRef_call1287 = getelementptr double, double* %Packed_MemRef_call1287, i64 %polly.access.add.Packed_MemRef_call1287
  store double %polly.access.call1431.load, double* %polly.access.Packed_MemRef_call1287, align 8
  %polly.indvar_next426 = add nuw nsw i64 %polly.indvar425, 1
  %exitcond912.not = icmp eq i64 %polly.indvar_next426, %indvars.iv905
  br i1 %exitcond912.not, label %polly.loop_exit424, label %polly.loop_header422

polly.loop_header432:                             ; preds = %polly.loop_exit424, %polly.loop_exit440
  %polly.indvar435 = phi i64 [ %polly.indvar_next436, %polly.loop_exit440 ], [ 0, %polly.loop_exit424 ]
  %polly.access.mul.Packed_MemRef_call1287450 = mul nuw nsw i64 %polly.indvar435, 80
  br label %polly.loop_header438

polly.loop_exit440:                               ; preds = %polly.loop_exit446
  %polly.indvar_next436 = add nuw nsw i64 %polly.indvar435, 1
  %exitcond921.not = icmp eq i64 %polly.indvar_next436, %133
  br i1 %exitcond921.not, label %polly.loop_exit434, label %polly.loop_header432

polly.loop_header438:                             ; preds = %polly.loop_exit446, %polly.loop_header432
  %indvars.iv915 = phi i64 [ %indvars.iv.next916, %polly.loop_exit446 ], [ 0, %polly.loop_header432 ]
  %polly.indvar441 = phi i64 [ %polly.indvar_next442, %polly.loop_exit446 ], [ %136, %polly.loop_header432 ]
  %141 = add nsw i64 %polly.indvar441, %135
  %142 = mul nuw nsw i64 %polly.indvar441, 640
  %scevgep466 = getelementptr i8, i8* %call, i64 %142
  %polly.access.add.Packed_MemRef_call2289455 = add nuw nsw i64 %141, %polly.access.mul.Packed_MemRef_call1287450
  %smin1382 = call i64 @llvm.smin.i64(i64 %indvars.iv915, i64 3)
  %polly.access.Packed_MemRef_call1287464 = getelementptr double, double* %Packed_MemRef_call1287, i64 %polly.access.add.Packed_MemRef_call2289455
  %_p_scalar_465 = load double, double* %polly.access.Packed_MemRef_call1287464, align 8
  %polly.access.Packed_MemRef_call2289456 = getelementptr double, double* %Packed_MemRef_call2289, i64 %polly.access.add.Packed_MemRef_call2289455
  %_p_scalar_457 = load double, double* %polly.access.Packed_MemRef_call2289456, align 8
  %broadcast.splatinsert1391 = insertelement <4 x i64> poison, i64 %smin1382, i32 0
  %broadcast.splat1392 = shufflevector <4 x i64> %broadcast.splatinsert1391, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1397 = insertelement <4 x double> poison, double %_p_scalar_457, i32 0
  %broadcast.splat1398 = shufflevector <4 x double> %broadcast.splatinsert1397, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1400 = insertelement <4 x double> poison, double %_p_scalar_465, i32 0
  %broadcast.splat1401 = shufflevector <4 x double> %broadcast.splatinsert1400, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1381

vector.body1381:                                  ; preds = %vector.body1381, %polly.loop_header438
  %index1387 = phi i64 [ 0, %polly.loop_header438 ], [ %index.next1388, %vector.body1381 ]
  %broadcast.splatinsert1393 = insertelement <4 x i64> poison, i64 %index1387, i32 0
  %broadcast.splat1394 = shufflevector <4 x i64> %broadcast.splatinsert1393, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1395 = or <4 x i64> %broadcast.splat1394, <i64 0, i64 1, i64 2, i64 3>
  %143 = icmp ule <4 x i64> %induction1395, %broadcast.splat1392
  %144 = add nuw nsw i64 %index1387, %136
  %145 = add nuw nsw i64 %index1387, %polly.access.mul.Packed_MemRef_call1287450
  %146 = getelementptr double, double* %Packed_MemRef_call1287, i64 %145
  %147 = bitcast double* %146 to <4 x double>*
  %wide.masked.load1396 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %147, i32 8, <4 x i1> %143, <4 x double> poison)
  %148 = fmul fast <4 x double> %broadcast.splat1398, %wide.masked.load1396
  %149 = getelementptr double, double* %Packed_MemRef_call2289, i64 %145
  %150 = bitcast double* %149 to <4 x double>*
  %wide.masked.load1399 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %150, i32 8, <4 x i1> %143, <4 x double> poison)
  %151 = fmul fast <4 x double> %broadcast.splat1401, %wide.masked.load1399
  %152 = shl i64 %144, 3
  %153 = getelementptr i8, i8* %scevgep466, i64 %152
  %154 = bitcast i8* %153 to <4 x double>*
  %wide.masked.load1402 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %154, i32 8, <4 x i1> %143, <4 x double> poison), !alias.scope !85, !noalias !87
  %155 = fadd fast <4 x double> %151, %148
  %156 = fmul fast <4 x double> %155, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %157 = fadd fast <4 x double> %156, %wide.masked.load1402
  %158 = bitcast i8* %153 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %157, <4 x double>* %158, i32 8, <4 x i1> %143), !alias.scope !85, !noalias !87
  %index.next1388 = add i64 %index1387, 4
  %159 = icmp eq i64 %index1387, 0
  br i1 %159, label %polly.loop_exit446, label %vector.body1381, !llvm.loop !96

polly.loop_exit446:                               ; preds = %vector.body1381
  %polly.indvar_next442 = add nuw nsw i64 %polly.indvar441, 1
  %indvars.iv.next916 = add nuw nsw i64 %indvars.iv915, 1
  %exitcond919.not = icmp eq i64 %indvars.iv.next916, %indvars.iv905
  br i1 %exitcond919.not, label %polly.loop_exit440, label %polly.loop_header438

polly.start472:                                   ; preds = %init_array.exit
  %malloccall474 = tail call dereferenceable_or_null(10240) i8* @malloc(i64 10240) #8
  %malloccall476 = tail call dereferenceable_or_null(10240) i8* @malloc(i64 10240) #8
  br label %polly.loop_header560

polly.exiting473:                                 ; preds = %polly.loop_exit584
  tail call void @free(i8* nonnull %malloccall474)
  tail call void @free(i8* nonnull %malloccall476)
  br label %kernel_syr2k.exit

polly.loop_header560:                             ; preds = %polly.loop_exit568, %polly.start472
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit568 ], [ 0, %polly.start472 ]
  %polly.indvar563 = phi i64 [ %polly.indvar_next564, %polly.loop_exit568 ], [ 1, %polly.start472 ]
  %160 = add i64 %indvar, 1
  %161 = mul nuw nsw i64 %polly.indvar563, 640
  %scevgep572 = getelementptr i8, i8* %call, i64 %161
  %min.iters.check1325 = icmp ult i64 %160, 4
  br i1 %min.iters.check1325, label %polly.loop_header566.preheader, label %vector.ph1326

vector.ph1326:                                    ; preds = %polly.loop_header560
  %n.vec1328 = and i64 %160, -4
  br label %vector.body1324

vector.body1324:                                  ; preds = %vector.body1324, %vector.ph1326
  %index1329 = phi i64 [ 0, %vector.ph1326 ], [ %index.next1330, %vector.body1324 ]
  %162 = shl nuw nsw i64 %index1329, 3
  %163 = getelementptr i8, i8* %scevgep572, i64 %162
  %164 = bitcast i8* %163 to <4 x double>*
  %wide.load1333 = load <4 x double>, <4 x double>* %164, align 8, !alias.scope !97, !noalias !99
  %165 = fmul fast <4 x double> %wide.load1333, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %166 = bitcast i8* %163 to <4 x double>*
  store <4 x double> %165, <4 x double>* %166, align 8, !alias.scope !97, !noalias !99
  %index.next1330 = add i64 %index1329, 4
  %167 = icmp eq i64 %index.next1330, %n.vec1328
  br i1 %167, label %middle.block1322, label %vector.body1324, !llvm.loop !104

middle.block1322:                                 ; preds = %vector.body1324
  %cmp.n1332 = icmp eq i64 %160, %n.vec1328
  br i1 %cmp.n1332, label %polly.loop_exit568, label %polly.loop_header566.preheader

polly.loop_header566.preheader:                   ; preds = %polly.loop_header560, %middle.block1322
  %polly.indvar569.ph = phi i64 [ 0, %polly.loop_header560 ], [ %n.vec1328, %middle.block1322 ]
  br label %polly.loop_header566

polly.loop_exit568:                               ; preds = %polly.loop_header566, %middle.block1322
  %polly.indvar_next564 = add nuw nsw i64 %polly.indvar563, 1
  %exitcond946.not = icmp eq i64 %polly.indvar_next564, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond946.not, label %polly.loop_header576.preheader, label %polly.loop_header560

polly.loop_header576.preheader:                   ; preds = %polly.loop_exit568
  %Packed_MemRef_call1475 = bitcast i8* %malloccall474 to double*
  %Packed_MemRef_call2477 = bitcast i8* %malloccall476 to double*
  br label %polly.loop_header576

polly.loop_header566:                             ; preds = %polly.loop_header566.preheader, %polly.loop_header566
  %polly.indvar569 = phi i64 [ %polly.indvar_next570, %polly.loop_header566 ], [ %polly.indvar569.ph, %polly.loop_header566.preheader ]
  %168 = shl nuw nsw i64 %polly.indvar569, 3
  %scevgep573 = getelementptr i8, i8* %scevgep572, i64 %168
  %scevgep573574 = bitcast i8* %scevgep573 to double*
  %_p_scalar_575 = load double, double* %scevgep573574, align 8, !alias.scope !97, !noalias !99
  %p_mul.i = fmul fast double %_p_scalar_575, 1.200000e+00
  store double %p_mul.i, double* %scevgep573574, align 8, !alias.scope !97, !noalias !99
  %polly.indvar_next570 = add nuw nsw i64 %polly.indvar569, 1
  %exitcond945.not = icmp eq i64 %polly.indvar_next570, %polly.indvar563
  br i1 %exitcond945.not, label %polly.loop_exit568, label %polly.loop_header566, !llvm.loop !105

polly.loop_header576:                             ; preds = %polly.loop_header576.preheader, %polly.loop_exit584
  %indvars.iv929 = phi i64 [ 0, %polly.loop_header576.preheader ], [ %indvars.iv.next930, %polly.loop_exit584 ]
  %polly.indvar579 = phi i64 [ 0, %polly.loop_header576.preheader ], [ %polly.indvar_next580, %polly.loop_exit584 ]
  %smin941 = call i64 @llvm.smin.i64(i64 %indvars.iv929, i64 -44)
  %169 = add nsw i64 %smin941, 60
  %170 = shl nsw i64 %polly.indvar579, 4
  br label %polly.loop_header582

polly.loop_exit584:                               ; preds = %polly.loop_exit622
  %polly.indvar_next580 = add nuw nsw i64 %polly.indvar579, 1
  %indvars.iv.next930 = add nsw i64 %indvars.iv929, -16
  %exitcond944.not = icmp eq i64 %polly.indvar_next580, 4
  br i1 %exitcond944.not, label %polly.exiting473, label %polly.loop_header576

polly.loop_header582:                             ; preds = %polly.loop_exit622, %polly.loop_header576
  %indvars.iv926 = phi i64 [ %indvars.iv.next927, %polly.loop_exit622 ], [ 80, %polly.loop_header576 ]
  %polly.indvar585 = phi i64 [ %polly.indvar_next586, %polly.loop_exit622 ], [ 0, %polly.loop_header576 ]
  %171 = mul nsw i64 %polly.indvar585, -4
  %172 = shl nsw i64 %polly.indvar585, 2
  br label %polly.loop_header588

polly.loop_exit622:                               ; preds = %polly.loop_exit628
  %polly.indvar_next586 = add nuw nsw i64 %polly.indvar585, 1
  %indvars.iv.next927 = add nsw i64 %indvars.iv926, -4
  %exitcond943.not = icmp eq i64 %polly.indvar_next586, 20
  br i1 %exitcond943.not, label %polly.loop_exit584, label %polly.loop_header582

polly.loop_header588:                             ; preds = %polly.loop_exit596, %polly.loop_header582
  %polly.indvar591 = phi i64 [ 0, %polly.loop_header582 ], [ %polly.indvar_next592, %polly.loop_exit596 ]
  %173 = add nuw nsw i64 %polly.indvar591, %170
  %polly.access.mul.Packed_MemRef_call2477 = mul nuw nsw i64 %polly.indvar591, 80
  br label %polly.loop_header594

polly.loop_exit596:                               ; preds = %polly.loop_header594
  %polly.indvar_next592 = add nuw nsw i64 %polly.indvar591, 1
  %exitcond932.not = icmp eq i64 %polly.indvar_next592, %169
  br i1 %exitcond932.not, label %polly.loop_header604, label %polly.loop_header588

polly.loop_header594:                             ; preds = %polly.loop_header594, %polly.loop_header588
  %polly.indvar597 = phi i64 [ 0, %polly.loop_header588 ], [ %polly.indvar_next598, %polly.loop_header594 ]
  %174 = add nuw nsw i64 %polly.indvar597, %172
  %polly.access.mul.call2601 = mul nuw nsw i64 %174, 60
  %polly.access.add.call2602 = add nuw nsw i64 %173, %polly.access.mul.call2601
  %polly.access.call2603 = getelementptr double, double* %polly.access.cast.call2672, i64 %polly.access.add.call2602
  %polly.access.call2603.load = load double, double* %polly.access.call2603, align 8, !alias.scope !101, !noalias !106
  %polly.access.add.Packed_MemRef_call2477 = add nuw nsw i64 %polly.indvar597, %polly.access.mul.Packed_MemRef_call2477
  %polly.access.Packed_MemRef_call2477 = getelementptr double, double* %Packed_MemRef_call2477, i64 %polly.access.add.Packed_MemRef_call2477
  store double %polly.access.call2603.load, double* %polly.access.Packed_MemRef_call2477, align 8
  %polly.indvar_next598 = add nuw nsw i64 %polly.indvar597, 1
  %exitcond928.not = icmp eq i64 %polly.indvar_next598, %indvars.iv926
  br i1 %exitcond928.not, label %polly.loop_exit596, label %polly.loop_header594

polly.loop_header604:                             ; preds = %polly.loop_exit596, %polly.loop_exit612
  %polly.indvar607 = phi i64 [ %polly.indvar_next608, %polly.loop_exit612 ], [ 0, %polly.loop_exit596 ]
  %175 = add nuw nsw i64 %polly.indvar607, %170
  %polly.access.mul.Packed_MemRef_call1475 = mul nuw nsw i64 %polly.indvar607, 80
  br label %polly.loop_header610

polly.loop_exit612:                               ; preds = %polly.loop_header610
  %polly.indvar_next608 = add nuw nsw i64 %polly.indvar607, 1
  %exitcond935.not = icmp eq i64 %polly.indvar_next608, %169
  br i1 %exitcond935.not, label %polly.loop_header620, label %polly.loop_header604

polly.loop_header610:                             ; preds = %polly.loop_header610, %polly.loop_header604
  %polly.indvar613 = phi i64 [ 0, %polly.loop_header604 ], [ %polly.indvar_next614, %polly.loop_header610 ]
  %176 = add nuw nsw i64 %polly.indvar613, %172
  %polly.access.mul.call1617 = mul nuw nsw i64 %176, 60
  %polly.access.add.call1618 = add nuw nsw i64 %175, %polly.access.mul.call1617
  %polly.access.call1619 = getelementptr double, double* %polly.access.cast.call1662, i64 %polly.access.add.call1618
  %polly.access.call1619.load = load double, double* %polly.access.call1619, align 8, !alias.scope !100, !noalias !107
  %polly.access.add.Packed_MemRef_call1475 = add nuw nsw i64 %polly.indvar613, %polly.access.mul.Packed_MemRef_call1475
  %polly.access.Packed_MemRef_call1475 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475
  store double %polly.access.call1619.load, double* %polly.access.Packed_MemRef_call1475, align 8
  %polly.indvar_next614 = add nuw nsw i64 %polly.indvar613, 1
  %exitcond933.not = icmp eq i64 %polly.indvar_next614, %indvars.iv926
  br i1 %exitcond933.not, label %polly.loop_exit612, label %polly.loop_header610

polly.loop_header620:                             ; preds = %polly.loop_exit612, %polly.loop_exit628
  %polly.indvar623 = phi i64 [ %polly.indvar_next624, %polly.loop_exit628 ], [ 0, %polly.loop_exit612 ]
  %polly.access.mul.Packed_MemRef_call1475638 = mul nuw nsw i64 %polly.indvar623, 80
  br label %polly.loop_header626

polly.loop_exit628:                               ; preds = %polly.loop_exit634
  %polly.indvar_next624 = add nuw nsw i64 %polly.indvar623, 1
  %exitcond942.not = icmp eq i64 %polly.indvar_next624, %169
  br i1 %exitcond942.not, label %polly.loop_exit622, label %polly.loop_header620

polly.loop_header626:                             ; preds = %polly.loop_exit634, %polly.loop_header620
  %indvars.iv936 = phi i64 [ %indvars.iv.next937, %polly.loop_exit634 ], [ 0, %polly.loop_header620 ]
  %polly.indvar629 = phi i64 [ %polly.indvar_next630, %polly.loop_exit634 ], [ %172, %polly.loop_header620 ]
  %177 = add nsw i64 %polly.indvar629, %171
  %178 = mul nuw nsw i64 %polly.indvar629, 640
  %scevgep654 = getelementptr i8, i8* %call, i64 %178
  %polly.access.add.Packed_MemRef_call2477643 = add nuw nsw i64 %177, %polly.access.mul.Packed_MemRef_call1475638
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv936, i64 3)
  %polly.access.Packed_MemRef_call1475652 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call2477643
  %_p_scalar_653 = load double, double* %polly.access.Packed_MemRef_call1475652, align 8
  %polly.access.Packed_MemRef_call2477644 = getelementptr double, double* %Packed_MemRef_call2477, i64 %polly.access.add.Packed_MemRef_call2477643
  %_p_scalar_645 = load double, double* %polly.access.Packed_MemRef_call2477644, align 8
  %broadcast.splatinsert1343 = insertelement <4 x i64> poison, i64 %smin, i32 0
  %broadcast.splat1344 = shufflevector <4 x i64> %broadcast.splatinsert1343, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1347 = insertelement <4 x double> poison, double %_p_scalar_645, i32 0
  %broadcast.splat1348 = shufflevector <4 x double> %broadcast.splatinsert1347, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1350 = insertelement <4 x double> poison, double %_p_scalar_653, i32 0
  %broadcast.splat1351 = shufflevector <4 x double> %broadcast.splatinsert1350, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1336

vector.body1336:                                  ; preds = %vector.body1336, %polly.loop_header626
  %index1340 = phi i64 [ 0, %polly.loop_header626 ], [ %index.next1341, %vector.body1336 ]
  %broadcast.splatinsert1345 = insertelement <4 x i64> poison, i64 %index1340, i32 0
  %broadcast.splat1346 = shufflevector <4 x i64> %broadcast.splatinsert1345, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or <4 x i64> %broadcast.splat1346, <i64 0, i64 1, i64 2, i64 3>
  %179 = icmp ule <4 x i64> %induction, %broadcast.splat1344
  %180 = add nuw nsw i64 %index1340, %172
  %181 = add nuw nsw i64 %index1340, %polly.access.mul.Packed_MemRef_call1475638
  %182 = getelementptr double, double* %Packed_MemRef_call1475, i64 %181
  %183 = bitcast double* %182 to <4 x double>*
  %wide.masked.load = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %183, i32 8, <4 x i1> %179, <4 x double> poison)
  %184 = fmul fast <4 x double> %broadcast.splat1348, %wide.masked.load
  %185 = getelementptr double, double* %Packed_MemRef_call2477, i64 %181
  %186 = bitcast double* %185 to <4 x double>*
  %wide.masked.load1349 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %186, i32 8, <4 x i1> %179, <4 x double> poison)
  %187 = fmul fast <4 x double> %broadcast.splat1351, %wide.masked.load1349
  %188 = shl i64 %180, 3
  %189 = getelementptr i8, i8* %scevgep654, i64 %188
  %190 = bitcast i8* %189 to <4 x double>*
  %wide.masked.load1352 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %190, i32 8, <4 x i1> %179, <4 x double> poison), !alias.scope !97, !noalias !99
  %191 = fadd fast <4 x double> %187, %184
  %192 = fmul fast <4 x double> %191, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %193 = fadd fast <4 x double> %192, %wide.masked.load1352
  %194 = bitcast i8* %189 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %193, <4 x double>* %194, i32 8, <4 x i1> %179), !alias.scope !97, !noalias !99
  %index.next1341 = add i64 %index1340, 4
  %195 = icmp eq i64 %index1340, 0
  br i1 %195, label %polly.loop_exit634, label %vector.body1336, !llvm.loop !108

polly.loop_exit634:                               ; preds = %vector.body1336
  %polly.indvar_next630 = add nuw nsw i64 %polly.indvar629, 1
  %indvars.iv.next937 = add nuw nsw i64 %indvars.iv936, 1
  %exitcond940.not = icmp eq i64 %indvars.iv.next937, %indvars.iv926
  br i1 %exitcond940.not, label %polly.loop_exit628, label %polly.loop_header626

polly.loop_header796:                             ; preds = %entry, %polly.loop_exit804
  %polly.indvar799 = phi i64 [ %polly.indvar_next800, %polly.loop_exit804 ], [ 0, %entry ]
  %196 = mul nuw nsw i64 %polly.indvar799, 640
  %197 = trunc i64 %polly.indvar799 to i32
  %broadcast.splatinsert1056 = insertelement <4 x i32> poison, i32 %197, i32 0
  %broadcast.splat1057 = shufflevector <4 x i32> %broadcast.splatinsert1056, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1046

vector.body1046:                                  ; preds = %vector.body1046, %polly.loop_header796
  %index1048 = phi i64 [ 0, %polly.loop_header796 ], [ %index.next1049, %vector.body1046 ]
  %vec.ind1054 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header796 ], [ %vec.ind.next1055, %vector.body1046 ]
  %198 = mul <4 x i32> %vec.ind1054, %broadcast.splat1057
  %199 = add <4 x i32> %198, <i32 3, i32 3, i32 3, i32 3>
  %200 = urem <4 x i32> %199, <i32 80, i32 80, i32 80, i32 80>
  %201 = sitofp <4 x i32> %200 to <4 x double>
  %202 = fmul fast <4 x double> %201, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %203 = shl i64 %index1048, 3
  %204 = add nuw nsw i64 %203, %196
  %205 = getelementptr i8, i8* %call, i64 %204
  %206 = bitcast i8* %205 to <4 x double>*
  store <4 x double> %202, <4 x double>* %206, align 8, !alias.scope !109, !noalias !111
  %index.next1049 = add i64 %index1048, 4
  %vec.ind.next1055 = add <4 x i32> %vec.ind1054, <i32 4, i32 4, i32 4, i32 4>
  %207 = icmp eq i64 %index.next1049, 32
  br i1 %207, label %polly.loop_exit804, label %vector.body1046, !llvm.loop !114

polly.loop_exit804:                               ; preds = %vector.body1046
  %polly.indvar_next800 = add nuw nsw i64 %polly.indvar799, 1
  %exitcond966.not = icmp eq i64 %polly.indvar_next800, 32
  br i1 %exitcond966.not, label %polly.loop_header796.1, label %polly.loop_header796

polly.loop_header823:                             ; preds = %polly.loop_exit804.2.2, %polly.loop_exit831
  %polly.indvar826 = phi i64 [ %polly.indvar_next827, %polly.loop_exit831 ], [ 0, %polly.loop_exit804.2.2 ]
  %208 = mul nuw nsw i64 %polly.indvar826, 480
  %209 = trunc i64 %polly.indvar826 to i32
  %broadcast.splatinsert1170 = insertelement <4 x i32> poison, i32 %209, i32 0
  %broadcast.splat1171 = shufflevector <4 x i32> %broadcast.splatinsert1170, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1160

vector.body1160:                                  ; preds = %vector.body1160, %polly.loop_header823
  %index1162 = phi i64 [ 0, %polly.loop_header823 ], [ %index.next1163, %vector.body1160 ]
  %vec.ind1168 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header823 ], [ %vec.ind.next1169, %vector.body1160 ]
  %210 = mul <4 x i32> %vec.ind1168, %broadcast.splat1171
  %211 = add <4 x i32> %210, <i32 2, i32 2, i32 2, i32 2>
  %212 = urem <4 x i32> %211, <i32 60, i32 60, i32 60, i32 60>
  %213 = sitofp <4 x i32> %212 to <4 x double>
  %214 = fmul fast <4 x double> %213, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %215 = shl i64 %index1162, 3
  %216 = add i64 %215, %208
  %217 = getelementptr i8, i8* %call2, i64 %216
  %218 = bitcast i8* %217 to <4 x double>*
  store <4 x double> %214, <4 x double>* %218, align 8, !alias.scope !113, !noalias !115
  %index.next1163 = add i64 %index1162, 4
  %vec.ind.next1169 = add <4 x i32> %vec.ind1168, <i32 4, i32 4, i32 4, i32 4>
  %219 = icmp eq i64 %index.next1163, 32
  br i1 %219, label %polly.loop_exit831, label %vector.body1160, !llvm.loop !116

polly.loop_exit831:                               ; preds = %vector.body1160
  %polly.indvar_next827 = add nuw nsw i64 %polly.indvar826, 1
  %exitcond957.not = icmp eq i64 %polly.indvar_next827, 32
  br i1 %exitcond957.not, label %polly.loop_header823.1, label %polly.loop_header823

polly.loop_header849:                             ; preds = %polly.loop_exit831.1.2, %polly.loop_exit857
  %polly.indvar852 = phi i64 [ %polly.indvar_next853, %polly.loop_exit857 ], [ 0, %polly.loop_exit831.1.2 ]
  %220 = mul nuw nsw i64 %polly.indvar852, 480
  %221 = trunc i64 %polly.indvar852 to i32
  %broadcast.splatinsert1248 = insertelement <4 x i32> poison, i32 %221, i32 0
  %broadcast.splat1249 = shufflevector <4 x i32> %broadcast.splatinsert1248, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1238

vector.body1238:                                  ; preds = %vector.body1238, %polly.loop_header849
  %index1240 = phi i64 [ 0, %polly.loop_header849 ], [ %index.next1241, %vector.body1238 ]
  %vec.ind1246 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header849 ], [ %vec.ind.next1247, %vector.body1238 ]
  %222 = mul <4 x i32> %vec.ind1246, %broadcast.splat1249
  %223 = add <4 x i32> %222, <i32 1, i32 1, i32 1, i32 1>
  %224 = urem <4 x i32> %223, <i32 80, i32 80, i32 80, i32 80>
  %225 = sitofp <4 x i32> %224 to <4 x double>
  %226 = fmul fast <4 x double> %225, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %227 = shl i64 %index1240, 3
  %228 = add i64 %227, %220
  %229 = getelementptr i8, i8* %call1, i64 %228
  %230 = bitcast i8* %229 to <4 x double>*
  store <4 x double> %226, <4 x double>* %230, align 8, !alias.scope !112, !noalias !117
  %index.next1241 = add i64 %index1240, 4
  %vec.ind.next1247 = add <4 x i32> %vec.ind1246, <i32 4, i32 4, i32 4, i32 4>
  %231 = icmp eq i64 %index.next1241, 32
  br i1 %231, label %polly.loop_exit857, label %vector.body1238, !llvm.loop !118

polly.loop_exit857:                               ; preds = %vector.body1238
  %polly.indvar_next853 = add nuw nsw i64 %polly.indvar852, 1
  %exitcond951.not = icmp eq i64 %polly.indvar_next853, 32
  br i1 %exitcond951.not, label %polly.loop_header849.1, label %polly.loop_header849

polly.loop_header849.1:                           ; preds = %polly.loop_exit857, %polly.loop_exit857.1
  %polly.indvar852.1 = phi i64 [ %polly.indvar_next853.1, %polly.loop_exit857.1 ], [ 0, %polly.loop_exit857 ]
  %232 = mul nuw nsw i64 %polly.indvar852.1, 480
  %233 = trunc i64 %polly.indvar852.1 to i32
  %broadcast.splatinsert1260 = insertelement <4 x i32> poison, i32 %233, i32 0
  %broadcast.splat1261 = shufflevector <4 x i32> %broadcast.splatinsert1260, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1252

vector.body1252:                                  ; preds = %vector.body1252, %polly.loop_header849.1
  %index1254 = phi i64 [ 0, %polly.loop_header849.1 ], [ %index.next1255, %vector.body1252 ]
  %vec.ind1258 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header849.1 ], [ %vec.ind.next1259, %vector.body1252 ]
  %234 = add nuw nsw <4 x i64> %vec.ind1258, <i64 32, i64 32, i64 32, i64 32>
  %235 = trunc <4 x i64> %234 to <4 x i32>
  %236 = mul <4 x i32> %broadcast.splat1261, %235
  %237 = add <4 x i32> %236, <i32 1, i32 1, i32 1, i32 1>
  %238 = urem <4 x i32> %237, <i32 80, i32 80, i32 80, i32 80>
  %239 = sitofp <4 x i32> %238 to <4 x double>
  %240 = fmul fast <4 x double> %239, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %241 = extractelement <4 x i64> %234, i32 0
  %242 = shl i64 %241, 3
  %243 = add i64 %242, %232
  %244 = getelementptr i8, i8* %call1, i64 %243
  %245 = bitcast i8* %244 to <4 x double>*
  store <4 x double> %240, <4 x double>* %245, align 8, !alias.scope !112, !noalias !117
  %index.next1255 = add i64 %index1254, 4
  %vec.ind.next1259 = add <4 x i64> %vec.ind1258, <i64 4, i64 4, i64 4, i64 4>
  %246 = icmp eq i64 %index.next1255, 28
  br i1 %246, label %polly.loop_exit857.1, label %vector.body1252, !llvm.loop !119

polly.loop_exit857.1:                             ; preds = %vector.body1252
  %polly.indvar_next853.1 = add nuw nsw i64 %polly.indvar852.1, 1
  %exitcond951.1.not = icmp eq i64 %polly.indvar_next853.1, 32
  br i1 %exitcond951.1.not, label %polly.loop_header849.1971, label %polly.loop_header849.1

polly.loop_header849.1971:                        ; preds = %polly.loop_exit857.1, %polly.loop_exit857.1982
  %polly.indvar852.1970 = phi i64 [ %polly.indvar_next853.1980, %polly.loop_exit857.1982 ], [ 0, %polly.loop_exit857.1 ]
  %247 = add nuw nsw i64 %polly.indvar852.1970, 32
  %248 = mul nuw nsw i64 %247, 480
  %249 = trunc i64 %247 to i32
  %broadcast.splatinsert1274 = insertelement <4 x i32> poison, i32 %249, i32 0
  %broadcast.splat1275 = shufflevector <4 x i32> %broadcast.splatinsert1274, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1264

vector.body1264:                                  ; preds = %vector.body1264, %polly.loop_header849.1971
  %index1266 = phi i64 [ 0, %polly.loop_header849.1971 ], [ %index.next1267, %vector.body1264 ]
  %vec.ind1272 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header849.1971 ], [ %vec.ind.next1273, %vector.body1264 ]
  %250 = mul <4 x i32> %vec.ind1272, %broadcast.splat1275
  %251 = add <4 x i32> %250, <i32 1, i32 1, i32 1, i32 1>
  %252 = urem <4 x i32> %251, <i32 80, i32 80, i32 80, i32 80>
  %253 = sitofp <4 x i32> %252 to <4 x double>
  %254 = fmul fast <4 x double> %253, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %255 = shl i64 %index1266, 3
  %256 = add i64 %255, %248
  %257 = getelementptr i8, i8* %call1, i64 %256
  %258 = bitcast i8* %257 to <4 x double>*
  store <4 x double> %254, <4 x double>* %258, align 8, !alias.scope !112, !noalias !117
  %index.next1267 = add i64 %index1266, 4
  %vec.ind.next1273 = add <4 x i32> %vec.ind1272, <i32 4, i32 4, i32 4, i32 4>
  %259 = icmp eq i64 %index.next1267, 32
  br i1 %259, label %polly.loop_exit857.1982, label %vector.body1264, !llvm.loop !120

polly.loop_exit857.1982:                          ; preds = %vector.body1264
  %polly.indvar_next853.1980 = add nuw nsw i64 %polly.indvar852.1970, 1
  %exitcond951.1981.not = icmp eq i64 %polly.indvar_next853.1980, 32
  br i1 %exitcond951.1981.not, label %polly.loop_header849.1.1, label %polly.loop_header849.1971

polly.loop_header849.1.1:                         ; preds = %polly.loop_exit857.1982, %polly.loop_exit857.1.1
  %polly.indvar852.1.1 = phi i64 [ %polly.indvar_next853.1.1, %polly.loop_exit857.1.1 ], [ 0, %polly.loop_exit857.1982 ]
  %260 = add nuw nsw i64 %polly.indvar852.1.1, 32
  %261 = mul nuw nsw i64 %260, 480
  %262 = trunc i64 %260 to i32
  %broadcast.splatinsert1286 = insertelement <4 x i32> poison, i32 %262, i32 0
  %broadcast.splat1287 = shufflevector <4 x i32> %broadcast.splatinsert1286, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1278

vector.body1278:                                  ; preds = %vector.body1278, %polly.loop_header849.1.1
  %index1280 = phi i64 [ 0, %polly.loop_header849.1.1 ], [ %index.next1281, %vector.body1278 ]
  %vec.ind1284 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header849.1.1 ], [ %vec.ind.next1285, %vector.body1278 ]
  %263 = add nuw nsw <4 x i64> %vec.ind1284, <i64 32, i64 32, i64 32, i64 32>
  %264 = trunc <4 x i64> %263 to <4 x i32>
  %265 = mul <4 x i32> %broadcast.splat1287, %264
  %266 = add <4 x i32> %265, <i32 1, i32 1, i32 1, i32 1>
  %267 = urem <4 x i32> %266, <i32 80, i32 80, i32 80, i32 80>
  %268 = sitofp <4 x i32> %267 to <4 x double>
  %269 = fmul fast <4 x double> %268, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %270 = extractelement <4 x i64> %263, i32 0
  %271 = shl i64 %270, 3
  %272 = add i64 %271, %261
  %273 = getelementptr i8, i8* %call1, i64 %272
  %274 = bitcast i8* %273 to <4 x double>*
  store <4 x double> %269, <4 x double>* %274, align 8, !alias.scope !112, !noalias !117
  %index.next1281 = add i64 %index1280, 4
  %vec.ind.next1285 = add <4 x i64> %vec.ind1284, <i64 4, i64 4, i64 4, i64 4>
  %275 = icmp eq i64 %index.next1281, 28
  br i1 %275, label %polly.loop_exit857.1.1, label %vector.body1278, !llvm.loop !121

polly.loop_exit857.1.1:                           ; preds = %vector.body1278
  %polly.indvar_next853.1.1 = add nuw nsw i64 %polly.indvar852.1.1, 1
  %exitcond951.1.1.not = icmp eq i64 %polly.indvar_next853.1.1, 32
  br i1 %exitcond951.1.1.not, label %polly.loop_header849.2, label %polly.loop_header849.1.1

polly.loop_header849.2:                           ; preds = %polly.loop_exit857.1.1, %polly.loop_exit857.2
  %polly.indvar852.2 = phi i64 [ %polly.indvar_next853.2, %polly.loop_exit857.2 ], [ 0, %polly.loop_exit857.1.1 ]
  %276 = add nuw nsw i64 %polly.indvar852.2, 64
  %277 = mul nuw nsw i64 %276, 480
  %278 = trunc i64 %276 to i32
  %broadcast.splatinsert1300 = insertelement <4 x i32> poison, i32 %278, i32 0
  %broadcast.splat1301 = shufflevector <4 x i32> %broadcast.splatinsert1300, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1290

vector.body1290:                                  ; preds = %vector.body1290, %polly.loop_header849.2
  %index1292 = phi i64 [ 0, %polly.loop_header849.2 ], [ %index.next1293, %vector.body1290 ]
  %vec.ind1298 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header849.2 ], [ %vec.ind.next1299, %vector.body1290 ]
  %279 = mul <4 x i32> %vec.ind1298, %broadcast.splat1301
  %280 = add <4 x i32> %279, <i32 1, i32 1, i32 1, i32 1>
  %281 = urem <4 x i32> %280, <i32 80, i32 80, i32 80, i32 80>
  %282 = sitofp <4 x i32> %281 to <4 x double>
  %283 = fmul fast <4 x double> %282, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %284 = shl i64 %index1292, 3
  %285 = add i64 %284, %277
  %286 = getelementptr i8, i8* %call1, i64 %285
  %287 = bitcast i8* %286 to <4 x double>*
  store <4 x double> %283, <4 x double>* %287, align 8, !alias.scope !112, !noalias !117
  %index.next1293 = add i64 %index1292, 4
  %vec.ind.next1299 = add <4 x i32> %vec.ind1298, <i32 4, i32 4, i32 4, i32 4>
  %288 = icmp eq i64 %index.next1293, 32
  br i1 %288, label %polly.loop_exit857.2, label %vector.body1290, !llvm.loop !122

polly.loop_exit857.2:                             ; preds = %vector.body1290
  %polly.indvar_next853.2 = add nuw nsw i64 %polly.indvar852.2, 1
  %exitcond951.2.not = icmp eq i64 %polly.indvar_next853.2, 16
  br i1 %exitcond951.2.not, label %polly.loop_header849.1.2, label %polly.loop_header849.2

polly.loop_header849.1.2:                         ; preds = %polly.loop_exit857.2, %polly.loop_exit857.1.2
  %polly.indvar852.1.2 = phi i64 [ %polly.indvar_next853.1.2, %polly.loop_exit857.1.2 ], [ 0, %polly.loop_exit857.2 ]
  %289 = add nuw nsw i64 %polly.indvar852.1.2, 64
  %290 = mul nuw nsw i64 %289, 480
  %291 = trunc i64 %289 to i32
  %broadcast.splatinsert1312 = insertelement <4 x i32> poison, i32 %291, i32 0
  %broadcast.splat1313 = shufflevector <4 x i32> %broadcast.splatinsert1312, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1304

vector.body1304:                                  ; preds = %vector.body1304, %polly.loop_header849.1.2
  %index1306 = phi i64 [ 0, %polly.loop_header849.1.2 ], [ %index.next1307, %vector.body1304 ]
  %vec.ind1310 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header849.1.2 ], [ %vec.ind.next1311, %vector.body1304 ]
  %292 = add nuw nsw <4 x i64> %vec.ind1310, <i64 32, i64 32, i64 32, i64 32>
  %293 = trunc <4 x i64> %292 to <4 x i32>
  %294 = mul <4 x i32> %broadcast.splat1313, %293
  %295 = add <4 x i32> %294, <i32 1, i32 1, i32 1, i32 1>
  %296 = urem <4 x i32> %295, <i32 80, i32 80, i32 80, i32 80>
  %297 = sitofp <4 x i32> %296 to <4 x double>
  %298 = fmul fast <4 x double> %297, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %299 = extractelement <4 x i64> %292, i32 0
  %300 = shl i64 %299, 3
  %301 = add i64 %300, %290
  %302 = getelementptr i8, i8* %call1, i64 %301
  %303 = bitcast i8* %302 to <4 x double>*
  store <4 x double> %298, <4 x double>* %303, align 8, !alias.scope !112, !noalias !117
  %index.next1307 = add i64 %index1306, 4
  %vec.ind.next1311 = add <4 x i64> %vec.ind1310, <i64 4, i64 4, i64 4, i64 4>
  %304 = icmp eq i64 %index.next1307, 28
  br i1 %304, label %polly.loop_exit857.1.2, label %vector.body1304, !llvm.loop !123

polly.loop_exit857.1.2:                           ; preds = %vector.body1304
  %polly.indvar_next853.1.2 = add nuw nsw i64 %polly.indvar852.1.2, 1
  %exitcond951.1.2.not = icmp eq i64 %polly.indvar_next853.1.2, 16
  br i1 %exitcond951.1.2.not, label %init_array.exit, label %polly.loop_header849.1.2

polly.loop_header823.1:                           ; preds = %polly.loop_exit831, %polly.loop_exit831.1
  %polly.indvar826.1 = phi i64 [ %polly.indvar_next827.1, %polly.loop_exit831.1 ], [ 0, %polly.loop_exit831 ]
  %305 = mul nuw nsw i64 %polly.indvar826.1, 480
  %306 = trunc i64 %polly.indvar826.1 to i32
  %broadcast.splatinsert1182 = insertelement <4 x i32> poison, i32 %306, i32 0
  %broadcast.splat1183 = shufflevector <4 x i32> %broadcast.splatinsert1182, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1174

vector.body1174:                                  ; preds = %vector.body1174, %polly.loop_header823.1
  %index1176 = phi i64 [ 0, %polly.loop_header823.1 ], [ %index.next1177, %vector.body1174 ]
  %vec.ind1180 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header823.1 ], [ %vec.ind.next1181, %vector.body1174 ]
  %307 = add nuw nsw <4 x i64> %vec.ind1180, <i64 32, i64 32, i64 32, i64 32>
  %308 = trunc <4 x i64> %307 to <4 x i32>
  %309 = mul <4 x i32> %broadcast.splat1183, %308
  %310 = add <4 x i32> %309, <i32 2, i32 2, i32 2, i32 2>
  %311 = urem <4 x i32> %310, <i32 60, i32 60, i32 60, i32 60>
  %312 = sitofp <4 x i32> %311 to <4 x double>
  %313 = fmul fast <4 x double> %312, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %314 = extractelement <4 x i64> %307, i32 0
  %315 = shl i64 %314, 3
  %316 = add i64 %315, %305
  %317 = getelementptr i8, i8* %call2, i64 %316
  %318 = bitcast i8* %317 to <4 x double>*
  store <4 x double> %313, <4 x double>* %318, align 8, !alias.scope !113, !noalias !115
  %index.next1177 = add i64 %index1176, 4
  %vec.ind.next1181 = add <4 x i64> %vec.ind1180, <i64 4, i64 4, i64 4, i64 4>
  %319 = icmp eq i64 %index.next1177, 28
  br i1 %319, label %polly.loop_exit831.1, label %vector.body1174, !llvm.loop !124

polly.loop_exit831.1:                             ; preds = %vector.body1174
  %polly.indvar_next827.1 = add nuw nsw i64 %polly.indvar826.1, 1
  %exitcond957.1.not = icmp eq i64 %polly.indvar_next827.1, 32
  br i1 %exitcond957.1.not, label %polly.loop_header823.1985, label %polly.loop_header823.1

polly.loop_header823.1985:                        ; preds = %polly.loop_exit831.1, %polly.loop_exit831.1996
  %polly.indvar826.1984 = phi i64 [ %polly.indvar_next827.1994, %polly.loop_exit831.1996 ], [ 0, %polly.loop_exit831.1 ]
  %320 = add nuw nsw i64 %polly.indvar826.1984, 32
  %321 = mul nuw nsw i64 %320, 480
  %322 = trunc i64 %320 to i32
  %broadcast.splatinsert1196 = insertelement <4 x i32> poison, i32 %322, i32 0
  %broadcast.splat1197 = shufflevector <4 x i32> %broadcast.splatinsert1196, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1186

vector.body1186:                                  ; preds = %vector.body1186, %polly.loop_header823.1985
  %index1188 = phi i64 [ 0, %polly.loop_header823.1985 ], [ %index.next1189, %vector.body1186 ]
  %vec.ind1194 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header823.1985 ], [ %vec.ind.next1195, %vector.body1186 ]
  %323 = mul <4 x i32> %vec.ind1194, %broadcast.splat1197
  %324 = add <4 x i32> %323, <i32 2, i32 2, i32 2, i32 2>
  %325 = urem <4 x i32> %324, <i32 60, i32 60, i32 60, i32 60>
  %326 = sitofp <4 x i32> %325 to <4 x double>
  %327 = fmul fast <4 x double> %326, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %328 = shl i64 %index1188, 3
  %329 = add i64 %328, %321
  %330 = getelementptr i8, i8* %call2, i64 %329
  %331 = bitcast i8* %330 to <4 x double>*
  store <4 x double> %327, <4 x double>* %331, align 8, !alias.scope !113, !noalias !115
  %index.next1189 = add i64 %index1188, 4
  %vec.ind.next1195 = add <4 x i32> %vec.ind1194, <i32 4, i32 4, i32 4, i32 4>
  %332 = icmp eq i64 %index.next1189, 32
  br i1 %332, label %polly.loop_exit831.1996, label %vector.body1186, !llvm.loop !125

polly.loop_exit831.1996:                          ; preds = %vector.body1186
  %polly.indvar_next827.1994 = add nuw nsw i64 %polly.indvar826.1984, 1
  %exitcond957.1995.not = icmp eq i64 %polly.indvar_next827.1994, 32
  br i1 %exitcond957.1995.not, label %polly.loop_header823.1.1, label %polly.loop_header823.1985

polly.loop_header823.1.1:                         ; preds = %polly.loop_exit831.1996, %polly.loop_exit831.1.1
  %polly.indvar826.1.1 = phi i64 [ %polly.indvar_next827.1.1, %polly.loop_exit831.1.1 ], [ 0, %polly.loop_exit831.1996 ]
  %333 = add nuw nsw i64 %polly.indvar826.1.1, 32
  %334 = mul nuw nsw i64 %333, 480
  %335 = trunc i64 %333 to i32
  %broadcast.splatinsert1208 = insertelement <4 x i32> poison, i32 %335, i32 0
  %broadcast.splat1209 = shufflevector <4 x i32> %broadcast.splatinsert1208, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1200

vector.body1200:                                  ; preds = %vector.body1200, %polly.loop_header823.1.1
  %index1202 = phi i64 [ 0, %polly.loop_header823.1.1 ], [ %index.next1203, %vector.body1200 ]
  %vec.ind1206 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header823.1.1 ], [ %vec.ind.next1207, %vector.body1200 ]
  %336 = add nuw nsw <4 x i64> %vec.ind1206, <i64 32, i64 32, i64 32, i64 32>
  %337 = trunc <4 x i64> %336 to <4 x i32>
  %338 = mul <4 x i32> %broadcast.splat1209, %337
  %339 = add <4 x i32> %338, <i32 2, i32 2, i32 2, i32 2>
  %340 = urem <4 x i32> %339, <i32 60, i32 60, i32 60, i32 60>
  %341 = sitofp <4 x i32> %340 to <4 x double>
  %342 = fmul fast <4 x double> %341, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %343 = extractelement <4 x i64> %336, i32 0
  %344 = shl i64 %343, 3
  %345 = add i64 %344, %334
  %346 = getelementptr i8, i8* %call2, i64 %345
  %347 = bitcast i8* %346 to <4 x double>*
  store <4 x double> %342, <4 x double>* %347, align 8, !alias.scope !113, !noalias !115
  %index.next1203 = add i64 %index1202, 4
  %vec.ind.next1207 = add <4 x i64> %vec.ind1206, <i64 4, i64 4, i64 4, i64 4>
  %348 = icmp eq i64 %index.next1203, 28
  br i1 %348, label %polly.loop_exit831.1.1, label %vector.body1200, !llvm.loop !126

polly.loop_exit831.1.1:                           ; preds = %vector.body1200
  %polly.indvar_next827.1.1 = add nuw nsw i64 %polly.indvar826.1.1, 1
  %exitcond957.1.1.not = icmp eq i64 %polly.indvar_next827.1.1, 32
  br i1 %exitcond957.1.1.not, label %polly.loop_header823.2, label %polly.loop_header823.1.1

polly.loop_header823.2:                           ; preds = %polly.loop_exit831.1.1, %polly.loop_exit831.2
  %polly.indvar826.2 = phi i64 [ %polly.indvar_next827.2, %polly.loop_exit831.2 ], [ 0, %polly.loop_exit831.1.1 ]
  %349 = add nuw nsw i64 %polly.indvar826.2, 64
  %350 = mul nuw nsw i64 %349, 480
  %351 = trunc i64 %349 to i32
  %broadcast.splatinsert1222 = insertelement <4 x i32> poison, i32 %351, i32 0
  %broadcast.splat1223 = shufflevector <4 x i32> %broadcast.splatinsert1222, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1212

vector.body1212:                                  ; preds = %vector.body1212, %polly.loop_header823.2
  %index1214 = phi i64 [ 0, %polly.loop_header823.2 ], [ %index.next1215, %vector.body1212 ]
  %vec.ind1220 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header823.2 ], [ %vec.ind.next1221, %vector.body1212 ]
  %352 = mul <4 x i32> %vec.ind1220, %broadcast.splat1223
  %353 = add <4 x i32> %352, <i32 2, i32 2, i32 2, i32 2>
  %354 = urem <4 x i32> %353, <i32 60, i32 60, i32 60, i32 60>
  %355 = sitofp <4 x i32> %354 to <4 x double>
  %356 = fmul fast <4 x double> %355, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %357 = shl i64 %index1214, 3
  %358 = add i64 %357, %350
  %359 = getelementptr i8, i8* %call2, i64 %358
  %360 = bitcast i8* %359 to <4 x double>*
  store <4 x double> %356, <4 x double>* %360, align 8, !alias.scope !113, !noalias !115
  %index.next1215 = add i64 %index1214, 4
  %vec.ind.next1221 = add <4 x i32> %vec.ind1220, <i32 4, i32 4, i32 4, i32 4>
  %361 = icmp eq i64 %index.next1215, 32
  br i1 %361, label %polly.loop_exit831.2, label %vector.body1212, !llvm.loop !127

polly.loop_exit831.2:                             ; preds = %vector.body1212
  %polly.indvar_next827.2 = add nuw nsw i64 %polly.indvar826.2, 1
  %exitcond957.2.not = icmp eq i64 %polly.indvar_next827.2, 16
  br i1 %exitcond957.2.not, label %polly.loop_header823.1.2, label %polly.loop_header823.2

polly.loop_header823.1.2:                         ; preds = %polly.loop_exit831.2, %polly.loop_exit831.1.2
  %polly.indvar826.1.2 = phi i64 [ %polly.indvar_next827.1.2, %polly.loop_exit831.1.2 ], [ 0, %polly.loop_exit831.2 ]
  %362 = add nuw nsw i64 %polly.indvar826.1.2, 64
  %363 = mul nuw nsw i64 %362, 480
  %364 = trunc i64 %362 to i32
  %broadcast.splatinsert1234 = insertelement <4 x i32> poison, i32 %364, i32 0
  %broadcast.splat1235 = shufflevector <4 x i32> %broadcast.splatinsert1234, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1226

vector.body1226:                                  ; preds = %vector.body1226, %polly.loop_header823.1.2
  %index1228 = phi i64 [ 0, %polly.loop_header823.1.2 ], [ %index.next1229, %vector.body1226 ]
  %vec.ind1232 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header823.1.2 ], [ %vec.ind.next1233, %vector.body1226 ]
  %365 = add nuw nsw <4 x i64> %vec.ind1232, <i64 32, i64 32, i64 32, i64 32>
  %366 = trunc <4 x i64> %365 to <4 x i32>
  %367 = mul <4 x i32> %broadcast.splat1235, %366
  %368 = add <4 x i32> %367, <i32 2, i32 2, i32 2, i32 2>
  %369 = urem <4 x i32> %368, <i32 60, i32 60, i32 60, i32 60>
  %370 = sitofp <4 x i32> %369 to <4 x double>
  %371 = fmul fast <4 x double> %370, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %372 = extractelement <4 x i64> %365, i32 0
  %373 = shl i64 %372, 3
  %374 = add i64 %373, %363
  %375 = getelementptr i8, i8* %call2, i64 %374
  %376 = bitcast i8* %375 to <4 x double>*
  store <4 x double> %371, <4 x double>* %376, align 8, !alias.scope !113, !noalias !115
  %index.next1229 = add i64 %index1228, 4
  %vec.ind.next1233 = add <4 x i64> %vec.ind1232, <i64 4, i64 4, i64 4, i64 4>
  %377 = icmp eq i64 %index.next1229, 28
  br i1 %377, label %polly.loop_exit831.1.2, label %vector.body1226, !llvm.loop !128

polly.loop_exit831.1.2:                           ; preds = %vector.body1226
  %polly.indvar_next827.1.2 = add nuw nsw i64 %polly.indvar826.1.2, 1
  %exitcond957.1.2.not = icmp eq i64 %polly.indvar_next827.1.2, 16
  br i1 %exitcond957.1.2.not, label %polly.loop_header849, label %polly.loop_header823.1.2

polly.loop_header796.1:                           ; preds = %polly.loop_exit804, %polly.loop_exit804.1
  %polly.indvar799.1 = phi i64 [ %polly.indvar_next800.1, %polly.loop_exit804.1 ], [ 0, %polly.loop_exit804 ]
  %378 = mul nuw nsw i64 %polly.indvar799.1, 640
  %379 = trunc i64 %polly.indvar799.1 to i32
  %broadcast.splatinsert1068 = insertelement <4 x i32> poison, i32 %379, i32 0
  %broadcast.splat1069 = shufflevector <4 x i32> %broadcast.splatinsert1068, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1060

vector.body1060:                                  ; preds = %vector.body1060, %polly.loop_header796.1
  %index1062 = phi i64 [ 0, %polly.loop_header796.1 ], [ %index.next1063, %vector.body1060 ]
  %vec.ind1066 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header796.1 ], [ %vec.ind.next1067, %vector.body1060 ]
  %380 = add nuw nsw <4 x i64> %vec.ind1066, <i64 32, i64 32, i64 32, i64 32>
  %381 = trunc <4 x i64> %380 to <4 x i32>
  %382 = mul <4 x i32> %broadcast.splat1069, %381
  %383 = add <4 x i32> %382, <i32 3, i32 3, i32 3, i32 3>
  %384 = urem <4 x i32> %383, <i32 80, i32 80, i32 80, i32 80>
  %385 = sitofp <4 x i32> %384 to <4 x double>
  %386 = fmul fast <4 x double> %385, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %387 = extractelement <4 x i64> %380, i32 0
  %388 = shl i64 %387, 3
  %389 = add nuw nsw i64 %388, %378
  %390 = getelementptr i8, i8* %call, i64 %389
  %391 = bitcast i8* %390 to <4 x double>*
  store <4 x double> %386, <4 x double>* %391, align 8, !alias.scope !109, !noalias !111
  %index.next1063 = add i64 %index1062, 4
  %vec.ind.next1067 = add <4 x i64> %vec.ind1066, <i64 4, i64 4, i64 4, i64 4>
  %392 = icmp eq i64 %index.next1063, 32
  br i1 %392, label %polly.loop_exit804.1, label %vector.body1060, !llvm.loop !129

polly.loop_exit804.1:                             ; preds = %vector.body1060
  %polly.indvar_next800.1 = add nuw nsw i64 %polly.indvar799.1, 1
  %exitcond966.1.not = icmp eq i64 %polly.indvar_next800.1, 32
  br i1 %exitcond966.1.not, label %polly.loop_header796.2, label %polly.loop_header796.1

polly.loop_header796.2:                           ; preds = %polly.loop_exit804.1, %polly.loop_exit804.2
  %polly.indvar799.2 = phi i64 [ %polly.indvar_next800.2, %polly.loop_exit804.2 ], [ 0, %polly.loop_exit804.1 ]
  %393 = mul nuw nsw i64 %polly.indvar799.2, 640
  %394 = trunc i64 %polly.indvar799.2 to i32
  %broadcast.splatinsert1080 = insertelement <4 x i32> poison, i32 %394, i32 0
  %broadcast.splat1081 = shufflevector <4 x i32> %broadcast.splatinsert1080, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1072

vector.body1072:                                  ; preds = %vector.body1072, %polly.loop_header796.2
  %index1074 = phi i64 [ 0, %polly.loop_header796.2 ], [ %index.next1075, %vector.body1072 ]
  %vec.ind1078 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header796.2 ], [ %vec.ind.next1079, %vector.body1072 ]
  %395 = add nuw nsw <4 x i64> %vec.ind1078, <i64 64, i64 64, i64 64, i64 64>
  %396 = trunc <4 x i64> %395 to <4 x i32>
  %397 = mul <4 x i32> %broadcast.splat1081, %396
  %398 = add <4 x i32> %397, <i32 3, i32 3, i32 3, i32 3>
  %399 = urem <4 x i32> %398, <i32 80, i32 80, i32 80, i32 80>
  %400 = sitofp <4 x i32> %399 to <4 x double>
  %401 = fmul fast <4 x double> %400, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %402 = extractelement <4 x i64> %395, i32 0
  %403 = shl i64 %402, 3
  %404 = add nuw nsw i64 %403, %393
  %405 = getelementptr i8, i8* %call, i64 %404
  %406 = bitcast i8* %405 to <4 x double>*
  store <4 x double> %401, <4 x double>* %406, align 8, !alias.scope !109, !noalias !111
  %index.next1075 = add i64 %index1074, 4
  %vec.ind.next1079 = add <4 x i64> %vec.ind1078, <i64 4, i64 4, i64 4, i64 4>
  %407 = icmp eq i64 %index.next1075, 16
  br i1 %407, label %polly.loop_exit804.2, label %vector.body1072, !llvm.loop !130

polly.loop_exit804.2:                             ; preds = %vector.body1072
  %polly.indvar_next800.2 = add nuw nsw i64 %polly.indvar799.2, 1
  %exitcond966.2.not = icmp eq i64 %polly.indvar_next800.2, 32
  br i1 %exitcond966.2.not, label %polly.loop_header796.1999, label %polly.loop_header796.2

polly.loop_header796.1999:                        ; preds = %polly.loop_exit804.2, %polly.loop_exit804.11010
  %polly.indvar799.1998 = phi i64 [ %polly.indvar_next800.11008, %polly.loop_exit804.11010 ], [ 0, %polly.loop_exit804.2 ]
  %408 = add nuw nsw i64 %polly.indvar799.1998, 32
  %409 = mul nuw nsw i64 %408, 640
  %410 = trunc i64 %408 to i32
  %broadcast.splatinsert1094 = insertelement <4 x i32> poison, i32 %410, i32 0
  %broadcast.splat1095 = shufflevector <4 x i32> %broadcast.splatinsert1094, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1084

vector.body1084:                                  ; preds = %vector.body1084, %polly.loop_header796.1999
  %index1086 = phi i64 [ 0, %polly.loop_header796.1999 ], [ %index.next1087, %vector.body1084 ]
  %vec.ind1092 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header796.1999 ], [ %vec.ind.next1093, %vector.body1084 ]
  %411 = mul <4 x i32> %vec.ind1092, %broadcast.splat1095
  %412 = add <4 x i32> %411, <i32 3, i32 3, i32 3, i32 3>
  %413 = urem <4 x i32> %412, <i32 80, i32 80, i32 80, i32 80>
  %414 = sitofp <4 x i32> %413 to <4 x double>
  %415 = fmul fast <4 x double> %414, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %416 = shl i64 %index1086, 3
  %417 = add nuw nsw i64 %416, %409
  %418 = getelementptr i8, i8* %call, i64 %417
  %419 = bitcast i8* %418 to <4 x double>*
  store <4 x double> %415, <4 x double>* %419, align 8, !alias.scope !109, !noalias !111
  %index.next1087 = add i64 %index1086, 4
  %vec.ind.next1093 = add <4 x i32> %vec.ind1092, <i32 4, i32 4, i32 4, i32 4>
  %420 = icmp eq i64 %index.next1087, 32
  br i1 %420, label %polly.loop_exit804.11010, label %vector.body1084, !llvm.loop !131

polly.loop_exit804.11010:                         ; preds = %vector.body1084
  %polly.indvar_next800.11008 = add nuw nsw i64 %polly.indvar799.1998, 1
  %exitcond966.11009.not = icmp eq i64 %polly.indvar_next800.11008, 32
  br i1 %exitcond966.11009.not, label %polly.loop_header796.1.1, label %polly.loop_header796.1999

polly.loop_header796.1.1:                         ; preds = %polly.loop_exit804.11010, %polly.loop_exit804.1.1
  %polly.indvar799.1.1 = phi i64 [ %polly.indvar_next800.1.1, %polly.loop_exit804.1.1 ], [ 0, %polly.loop_exit804.11010 ]
  %421 = add nuw nsw i64 %polly.indvar799.1.1, 32
  %422 = mul nuw nsw i64 %421, 640
  %423 = trunc i64 %421 to i32
  %broadcast.splatinsert1106 = insertelement <4 x i32> poison, i32 %423, i32 0
  %broadcast.splat1107 = shufflevector <4 x i32> %broadcast.splatinsert1106, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1098

vector.body1098:                                  ; preds = %vector.body1098, %polly.loop_header796.1.1
  %index1100 = phi i64 [ 0, %polly.loop_header796.1.1 ], [ %index.next1101, %vector.body1098 ]
  %vec.ind1104 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header796.1.1 ], [ %vec.ind.next1105, %vector.body1098 ]
  %424 = add nuw nsw <4 x i64> %vec.ind1104, <i64 32, i64 32, i64 32, i64 32>
  %425 = trunc <4 x i64> %424 to <4 x i32>
  %426 = mul <4 x i32> %broadcast.splat1107, %425
  %427 = add <4 x i32> %426, <i32 3, i32 3, i32 3, i32 3>
  %428 = urem <4 x i32> %427, <i32 80, i32 80, i32 80, i32 80>
  %429 = sitofp <4 x i32> %428 to <4 x double>
  %430 = fmul fast <4 x double> %429, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %431 = extractelement <4 x i64> %424, i32 0
  %432 = shl i64 %431, 3
  %433 = add nuw nsw i64 %432, %422
  %434 = getelementptr i8, i8* %call, i64 %433
  %435 = bitcast i8* %434 to <4 x double>*
  store <4 x double> %430, <4 x double>* %435, align 8, !alias.scope !109, !noalias !111
  %index.next1101 = add i64 %index1100, 4
  %vec.ind.next1105 = add <4 x i64> %vec.ind1104, <i64 4, i64 4, i64 4, i64 4>
  %436 = icmp eq i64 %index.next1101, 32
  br i1 %436, label %polly.loop_exit804.1.1, label %vector.body1098, !llvm.loop !132

polly.loop_exit804.1.1:                           ; preds = %vector.body1098
  %polly.indvar_next800.1.1 = add nuw nsw i64 %polly.indvar799.1.1, 1
  %exitcond966.1.1.not = icmp eq i64 %polly.indvar_next800.1.1, 32
  br i1 %exitcond966.1.1.not, label %polly.loop_header796.2.1, label %polly.loop_header796.1.1

polly.loop_header796.2.1:                         ; preds = %polly.loop_exit804.1.1, %polly.loop_exit804.2.1
  %polly.indvar799.2.1 = phi i64 [ %polly.indvar_next800.2.1, %polly.loop_exit804.2.1 ], [ 0, %polly.loop_exit804.1.1 ]
  %437 = add nuw nsw i64 %polly.indvar799.2.1, 32
  %438 = mul nuw nsw i64 %437, 640
  %439 = trunc i64 %437 to i32
  %broadcast.splatinsert1118 = insertelement <4 x i32> poison, i32 %439, i32 0
  %broadcast.splat1119 = shufflevector <4 x i32> %broadcast.splatinsert1118, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1110

vector.body1110:                                  ; preds = %vector.body1110, %polly.loop_header796.2.1
  %index1112 = phi i64 [ 0, %polly.loop_header796.2.1 ], [ %index.next1113, %vector.body1110 ]
  %vec.ind1116 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header796.2.1 ], [ %vec.ind.next1117, %vector.body1110 ]
  %440 = add nuw nsw <4 x i64> %vec.ind1116, <i64 64, i64 64, i64 64, i64 64>
  %441 = trunc <4 x i64> %440 to <4 x i32>
  %442 = mul <4 x i32> %broadcast.splat1119, %441
  %443 = add <4 x i32> %442, <i32 3, i32 3, i32 3, i32 3>
  %444 = urem <4 x i32> %443, <i32 80, i32 80, i32 80, i32 80>
  %445 = sitofp <4 x i32> %444 to <4 x double>
  %446 = fmul fast <4 x double> %445, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %447 = extractelement <4 x i64> %440, i32 0
  %448 = shl i64 %447, 3
  %449 = add nuw nsw i64 %448, %438
  %450 = getelementptr i8, i8* %call, i64 %449
  %451 = bitcast i8* %450 to <4 x double>*
  store <4 x double> %446, <4 x double>* %451, align 8, !alias.scope !109, !noalias !111
  %index.next1113 = add i64 %index1112, 4
  %vec.ind.next1117 = add <4 x i64> %vec.ind1116, <i64 4, i64 4, i64 4, i64 4>
  %452 = icmp eq i64 %index.next1113, 16
  br i1 %452, label %polly.loop_exit804.2.1, label %vector.body1110, !llvm.loop !133

polly.loop_exit804.2.1:                           ; preds = %vector.body1110
  %polly.indvar_next800.2.1 = add nuw nsw i64 %polly.indvar799.2.1, 1
  %exitcond966.2.1.not = icmp eq i64 %polly.indvar_next800.2.1, 32
  br i1 %exitcond966.2.1.not, label %polly.loop_header796.21013, label %polly.loop_header796.2.1

polly.loop_header796.21013:                       ; preds = %polly.loop_exit804.2.1, %polly.loop_exit804.21024
  %polly.indvar799.21012 = phi i64 [ %polly.indvar_next800.21022, %polly.loop_exit804.21024 ], [ 0, %polly.loop_exit804.2.1 ]
  %453 = add nuw nsw i64 %polly.indvar799.21012, 64
  %454 = mul nuw nsw i64 %453, 640
  %455 = trunc i64 %453 to i32
  %broadcast.splatinsert1132 = insertelement <4 x i32> poison, i32 %455, i32 0
  %broadcast.splat1133 = shufflevector <4 x i32> %broadcast.splatinsert1132, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1122

vector.body1122:                                  ; preds = %vector.body1122, %polly.loop_header796.21013
  %index1124 = phi i64 [ 0, %polly.loop_header796.21013 ], [ %index.next1125, %vector.body1122 ]
  %vec.ind1130 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header796.21013 ], [ %vec.ind.next1131, %vector.body1122 ]
  %456 = mul <4 x i32> %vec.ind1130, %broadcast.splat1133
  %457 = add <4 x i32> %456, <i32 3, i32 3, i32 3, i32 3>
  %458 = urem <4 x i32> %457, <i32 80, i32 80, i32 80, i32 80>
  %459 = sitofp <4 x i32> %458 to <4 x double>
  %460 = fmul fast <4 x double> %459, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %461 = shl i64 %index1124, 3
  %462 = add nuw nsw i64 %461, %454
  %463 = getelementptr i8, i8* %call, i64 %462
  %464 = bitcast i8* %463 to <4 x double>*
  store <4 x double> %460, <4 x double>* %464, align 8, !alias.scope !109, !noalias !111
  %index.next1125 = add i64 %index1124, 4
  %vec.ind.next1131 = add <4 x i32> %vec.ind1130, <i32 4, i32 4, i32 4, i32 4>
  %465 = icmp eq i64 %index.next1125, 32
  br i1 %465, label %polly.loop_exit804.21024, label %vector.body1122, !llvm.loop !134

polly.loop_exit804.21024:                         ; preds = %vector.body1122
  %polly.indvar_next800.21022 = add nuw nsw i64 %polly.indvar799.21012, 1
  %exitcond966.21023.not = icmp eq i64 %polly.indvar_next800.21022, 16
  br i1 %exitcond966.21023.not, label %polly.loop_header796.1.2, label %polly.loop_header796.21013

polly.loop_header796.1.2:                         ; preds = %polly.loop_exit804.21024, %polly.loop_exit804.1.2
  %polly.indvar799.1.2 = phi i64 [ %polly.indvar_next800.1.2, %polly.loop_exit804.1.2 ], [ 0, %polly.loop_exit804.21024 ]
  %466 = add nuw nsw i64 %polly.indvar799.1.2, 64
  %467 = mul nuw nsw i64 %466, 640
  %468 = trunc i64 %466 to i32
  %broadcast.splatinsert1144 = insertelement <4 x i32> poison, i32 %468, i32 0
  %broadcast.splat1145 = shufflevector <4 x i32> %broadcast.splatinsert1144, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1136

vector.body1136:                                  ; preds = %vector.body1136, %polly.loop_header796.1.2
  %index1138 = phi i64 [ 0, %polly.loop_header796.1.2 ], [ %index.next1139, %vector.body1136 ]
  %vec.ind1142 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header796.1.2 ], [ %vec.ind.next1143, %vector.body1136 ]
  %469 = add nuw nsw <4 x i64> %vec.ind1142, <i64 32, i64 32, i64 32, i64 32>
  %470 = trunc <4 x i64> %469 to <4 x i32>
  %471 = mul <4 x i32> %broadcast.splat1145, %470
  %472 = add <4 x i32> %471, <i32 3, i32 3, i32 3, i32 3>
  %473 = urem <4 x i32> %472, <i32 80, i32 80, i32 80, i32 80>
  %474 = sitofp <4 x i32> %473 to <4 x double>
  %475 = fmul fast <4 x double> %474, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %476 = extractelement <4 x i64> %469, i32 0
  %477 = shl i64 %476, 3
  %478 = add nuw nsw i64 %477, %467
  %479 = getelementptr i8, i8* %call, i64 %478
  %480 = bitcast i8* %479 to <4 x double>*
  store <4 x double> %475, <4 x double>* %480, align 8, !alias.scope !109, !noalias !111
  %index.next1139 = add i64 %index1138, 4
  %vec.ind.next1143 = add <4 x i64> %vec.ind1142, <i64 4, i64 4, i64 4, i64 4>
  %481 = icmp eq i64 %index.next1139, 32
  br i1 %481, label %polly.loop_exit804.1.2, label %vector.body1136, !llvm.loop !135

polly.loop_exit804.1.2:                           ; preds = %vector.body1136
  %polly.indvar_next800.1.2 = add nuw nsw i64 %polly.indvar799.1.2, 1
  %exitcond966.1.2.not = icmp eq i64 %polly.indvar_next800.1.2, 16
  br i1 %exitcond966.1.2.not, label %polly.loop_header796.2.2, label %polly.loop_header796.1.2

polly.loop_header796.2.2:                         ; preds = %polly.loop_exit804.1.2, %polly.loop_exit804.2.2
  %polly.indvar799.2.2 = phi i64 [ %polly.indvar_next800.2.2, %polly.loop_exit804.2.2 ], [ 0, %polly.loop_exit804.1.2 ]
  %482 = add nuw nsw i64 %polly.indvar799.2.2, 64
  %483 = mul nuw nsw i64 %482, 640
  %484 = trunc i64 %482 to i32
  %broadcast.splatinsert1156 = insertelement <4 x i32> poison, i32 %484, i32 0
  %broadcast.splat1157 = shufflevector <4 x i32> %broadcast.splatinsert1156, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1148

vector.body1148:                                  ; preds = %vector.body1148, %polly.loop_header796.2.2
  %index1150 = phi i64 [ 0, %polly.loop_header796.2.2 ], [ %index.next1151, %vector.body1148 ]
  %vec.ind1154 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header796.2.2 ], [ %vec.ind.next1155, %vector.body1148 ]
  %485 = add nuw nsw <4 x i64> %vec.ind1154, <i64 64, i64 64, i64 64, i64 64>
  %486 = trunc <4 x i64> %485 to <4 x i32>
  %487 = mul <4 x i32> %broadcast.splat1157, %486
  %488 = add <4 x i32> %487, <i32 3, i32 3, i32 3, i32 3>
  %489 = urem <4 x i32> %488, <i32 80, i32 80, i32 80, i32 80>
  %490 = sitofp <4 x i32> %489 to <4 x double>
  %491 = fmul fast <4 x double> %490, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %492 = extractelement <4 x i64> %485, i32 0
  %493 = shl i64 %492, 3
  %494 = add nuw nsw i64 %493, %483
  %495 = getelementptr i8, i8* %call, i64 %494
  %496 = bitcast i8* %495 to <4 x double>*
  store <4 x double> %491, <4 x double>* %496, align 8, !alias.scope !109, !noalias !111
  %index.next1151 = add i64 %index1150, 4
  %vec.ind.next1155 = add <4 x i64> %vec.ind1154, <i64 4, i64 4, i64 4, i64 4>
  %497 = icmp eq i64 %index.next1151, 16
  br i1 %497, label %polly.loop_exit804.2.2, label %vector.body1148, !llvm.loop !136

polly.loop_exit804.2.2:                           ; preds = %vector.body1148
  %polly.indvar_next800.2.2 = add nuw nsw i64 %polly.indvar799.2.2, 1
  %exitcond966.2.2.not = icmp eq i64 %polly.indvar_next800.2.2, 16
  br i1 %exitcond966.2.2.not, label %polly.loop_header823, label %polly.loop_header796.2.2
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
!26 = !{!"llvm.loop.tile.size", i32 4}
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
!85 = distinct !{!85, !86, !"polly.alias.scope.MemRef_call"}
!86 = distinct !{!86, !"polly.alias.scope.domain"}
!87 = !{!88, !89, !90, !91}
!88 = distinct !{!88, !86, !"polly.alias.scope.MemRef_call1"}
!89 = distinct !{!89, !86, !"polly.alias.scope.MemRef_call2"}
!90 = distinct !{!90, !86, !"polly.alias.scope.Packed_MemRef_call1"}
!91 = distinct !{!91, !86, !"polly.alias.scope.Packed_MemRef_call2"}
!92 = distinct !{!92, !13}
!93 = distinct !{!93, !81, !13}
!94 = !{!85, !88, !90, !91}
!95 = !{!85, !89, !90, !91}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !98, !"polly.alias.scope.MemRef_call"}
!98 = distinct !{!98, !"polly.alias.scope.domain"}
!99 = !{!100, !101, !102, !103}
!100 = distinct !{!100, !98, !"polly.alias.scope.MemRef_call1"}
!101 = distinct !{!101, !98, !"polly.alias.scope.MemRef_call2"}
!102 = distinct !{!102, !98, !"polly.alias.scope.Packed_MemRef_call1"}
!103 = distinct !{!103, !98, !"polly.alias.scope.Packed_MemRef_call2"}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !81, !13}
!106 = !{!97, !100, !102, !103}
!107 = !{!97, !101, !102, !103}
!108 = distinct !{!108, !13}
!109 = distinct !{!109, !110, !"polly.alias.scope.MemRef_call"}
!110 = distinct !{!110, !"polly.alias.scope.domain"}
!111 = !{!112, !113}
!112 = distinct !{!112, !110, !"polly.alias.scope.MemRef_call1"}
!113 = distinct !{!113, !110, !"polly.alias.scope.MemRef_call2"}
!114 = distinct !{!114, !13}
!115 = !{!112, !109}
!116 = distinct !{!116, !13}
!117 = !{!113, !109}
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
!133 = distinct !{!133, !13}
!134 = distinct !{!134, !13}
!135 = distinct !{!135, !13}
!136 = distinct !{!136, !13}
