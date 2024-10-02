; ModuleID = 'syr2k_recreations//mmp_syr2k_S_112.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_112.c"
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
  %call754 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1615 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2616 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1615, %call2
  %polly.access.call2635 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2635, %call1
  %2 = or i1 %0, %1
  %polly.access.call655 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call655, %call2
  %4 = icmp ule i8* %polly.access.call2635, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call655, %call1
  %8 = icmp ule i8* %polly.access.call1615, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header740, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1052 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1051 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1050 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1049 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1049, %scevgep1052
  %bound1 = icmp ult i8* %scevgep1051, %scevgep1050
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
  br i1 %exitcond18.not.i, label %vector.ph1056, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1056:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1063 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1064 = shufflevector <4 x i64> %broadcast.splatinsert1063, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1055

vector.body1055:                                  ; preds = %vector.body1055, %vector.ph1056
  %index1057 = phi i64 [ 0, %vector.ph1056 ], [ %index.next1058, %vector.body1055 ]
  %vec.ind1061 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1056 ], [ %vec.ind.next1062, %vector.body1055 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1061, %broadcast.splat1064
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv7.i, i64 %index1057
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1058 = add i64 %index1057, 4
  %vec.ind.next1062 = add <4 x i64> %vec.ind1061, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1058, 80
  br i1 %40, label %for.inc41.i, label %vector.body1055, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1055
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1056, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit801.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start435, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1409, label %vector.ph1338

vector.ph1338:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1337

vector.body1337:                                  ; preds = %vector.body1337, %vector.ph1338
  %index1339 = phi i64 [ 0, %vector.ph1338 ], [ %index.next1340, %vector.body1337 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i, i64 %index1339
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1340 = add i64 %index1339, 4
  %46 = icmp eq i64 %index.next1340, %n.vec
  br i1 %46, label %middle.block1335, label %vector.body1337, !llvm.loop !18

middle.block1335:                                 ; preds = %vector.body1337
  %cmp.n1342 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1342, label %for.inc6.i, label %for.body3.i46.preheader1409

for.body3.i46.preheader1409:                      ; preds = %for.body3.i46.preheader, %middle.block1335
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1335 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1409, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1409 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1335, %for.cond1.preheader.i45
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
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2, !llvm.access !21
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2, !llvm.access !21
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !41

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit567.2.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start266, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1358 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1358, label %for.body3.i60.preheader1408, label %vector.ph1359

vector.ph1359:                                    ; preds = %for.body3.i60.preheader
  %n.vec1361 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1357

vector.body1357:                                  ; preds = %vector.body1357, %vector.ph1359
  %index1362 = phi i64 [ 0, %vector.ph1359 ], [ %index.next1363, %vector.body1357 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i52, i64 %index1362
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1366 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1366, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1363 = add i64 %index1362, 4
  %57 = icmp eq i64 %index.next1363, %n.vec1361
  br i1 %57, label %middle.block1355, label %vector.body1357, !llvm.loop !55

middle.block1355:                                 ; preds = %vector.body1357
  %cmp.n1365 = icmp eq i64 %indvars.iv21.i52, %n.vec1361
  br i1 %cmp.n1365, label %for.inc6.i63, label %for.body3.i60.preheader1408

for.body3.i60.preheader1408:                      ; preds = %for.body3.i60.preheader, %middle.block1355
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1361, %middle.block1355 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1408, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1408 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1355, %for.cond1.preheader.i54
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
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2, !llvm.access !21
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2, !llvm.access !21
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !41

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit398.2.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1384 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1384, label %for.body3.i99.preheader1407, label %vector.ph1385

vector.ph1385:                                    ; preds = %for.body3.i99.preheader
  %n.vec1387 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1383

vector.body1383:                                  ; preds = %vector.body1383, %vector.ph1385
  %index1388 = phi i64 [ 0, %vector.ph1385 ], [ %index.next1389, %vector.body1383 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i91, i64 %index1388
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1392 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1392, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1389 = add i64 %index1388, 4
  %68 = icmp eq i64 %index.next1389, %n.vec1387
  br i1 %68, label %middle.block1381, label %vector.body1383, !llvm.loop !57

middle.block1381:                                 ; preds = %vector.body1383
  %cmp.n1391 = icmp eq i64 %indvars.iv21.i91, %n.vec1387
  br i1 %cmp.n1391, label %for.inc6.i102, label %for.body3.i99.preheader1407

for.body3.i99.preheader1407:                      ; preds = %for.body3.i99.preheader, %middle.block1381
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1387, %middle.block1381 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1407, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1407 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1381, %for.cond1.preheader.i93
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
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2, !llvm.access !21
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2, !llvm.access !21
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !41

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit229.2.1
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1396 = phi i64 [ %indvar.next1397, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1396, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1398 = icmp ult i64 %88, 4
  br i1 %min.iters.check1398, label %polly.loop_header191.preheader, label %vector.ph1399

vector.ph1399:                                    ; preds = %polly.loop_header
  %n.vec1401 = and i64 %88, -4
  br label %vector.body1395

vector.body1395:                                  ; preds = %vector.body1395, %vector.ph1399
  %index1402 = phi i64 [ 0, %vector.ph1399 ], [ %index.next1403, %vector.body1395 ]
  %90 = shl nuw nsw i64 %index1402, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1406 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1406, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1403 = add i64 %index1402, 4
  %95 = icmp eq i64 %index.next1403, %n.vec1401
  br i1 %95, label %middle.block1393, label %vector.body1395, !llvm.loop !69

middle.block1393:                                 ; preds = %vector.body1395
  %cmp.n1405 = icmp eq i64 %88, %n.vec1401
  br i1 %cmp.n1405, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1393
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1401, %middle.block1393 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1393
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond818.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1397 = add i64 %indvar1396, 1
  br i1 %exitcond818.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
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
  %exitcond817.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond817.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar202, 80
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_header205
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond816.not = icmp eq i64 %polly.indvar_next203, 60
  br i1 %exitcond816.not, label %polly.loop_header227, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %polly.access.mul.call2212 = mul nuw nsw i64 %polly.indvar208, 60
  %polly.access.add.call2213 = add nuw nsw i64 %polly.access.mul.call2212, %polly.indvar202
  %polly.access.call2214 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2213
  %polly.access.call2214.load = load double, double* %polly.access.call2214, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar208, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2214.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond815.not = icmp eq i64 %polly.indvar_next209, 80
  br i1 %exitcond815.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header227:                             ; preds = %polly.loop_exit207, %polly.loop_exit235
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit235 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_exit207 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 31)
  %97 = mul nuw nsw i64 %polly.indvar230, 480
  %scevgep256 = getelementptr i8, i8* %call1, i64 %97
  %98 = mul nuw nsw i64 %polly.indvar230, 640
  %scevgep260 = getelementptr i8, i8* %call, i64 %98
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond813.not = icmp eq i64 %indvars.iv.next, 80
  br i1 %exitcond813.not, label %polly.loop_header227.1, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_exit241, %polly.loop_header227
  %polly.indvar236 = phi i64 [ 0, %polly.loop_header227 ], [ %polly.indvar_next237, %polly.loop_exit241 ]
  %99 = shl i64 %polly.indvar236, 3
  %polly.access.mul.Packed_MemRef_call2248 = mul nuw nsw i64 %polly.indvar236, 80
  %polly.access.add.Packed_MemRef_call2249 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2248, %polly.indvar230
  %polly.access.Packed_MemRef_call2250 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249
  %_p_scalar_251 = load double, double* %polly.access.Packed_MemRef_call2250, align 8
  %scevgep257 = getelementptr i8, i8* %scevgep256, i64 %99
  %scevgep257258 = bitcast i8* %scevgep257 to double*
  %_p_scalar_259 = load double, double* %scevgep257258, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header239

polly.loop_exit241:                               ; preds = %polly.loop_header239
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond810.not = icmp eq i64 %polly.indvar_next237, 50
  br i1 %exitcond810.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_header239:                             ; preds = %polly.loop_header239, %polly.loop_header233
  %polly.indvar242 = phi i64 [ 0, %polly.loop_header233 ], [ %polly.indvar_next243, %polly.loop_header239 ]
  %100 = mul nuw nsw i64 %polly.indvar242, 480
  %101 = add nuw nsw i64 %100, %99
  %scevgep245 = getelementptr i8, i8* %call1, i64 %101
  %scevgep245246 = bitcast i8* %scevgep245 to double*
  %_p_scalar_247 = load double, double* %scevgep245246, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112 = fmul fast double %_p_scalar_251, %_p_scalar_247
  %polly.access.add.Packed_MemRef_call2253 = add nuw nsw i64 %polly.indvar242, %polly.access.mul.Packed_MemRef_call2248
  %polly.access.Packed_MemRef_call2254 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253
  %_p_scalar_255 = load double, double* %polly.access.Packed_MemRef_call2254, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_259, %_p_scalar_255
  %102 = shl i64 %polly.indvar242, 3
  %scevgep261 = getelementptr i8, i8* %scevgep260, i64 %102
  %scevgep261262 = bitcast i8* %scevgep261 to double*
  %_p_scalar_263 = load double, double* %scevgep261262, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_263
  store double %p_add42.i118, double* %scevgep261262, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243 = add nuw nsw i64 %polly.indvar242, 1
  %exitcond.not = icmp eq i64 %polly.indvar242, %smin
  br i1 %exitcond.not, label %polly.loop_exit241, label %polly.loop_header239

polly.start266:                                   ; preds = %kernel_syr2k.exit
  %malloccall268 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header352

polly.loop_header352:                             ; preds = %polly.loop_exit360, %polly.start266
  %indvar1370 = phi i64 [ %indvar.next1371, %polly.loop_exit360 ], [ 0, %polly.start266 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit360 ], [ 1, %polly.start266 ]
  %103 = add i64 %indvar1370, 1
  %104 = mul nuw nsw i64 %polly.indvar355, 640
  %scevgep364 = getelementptr i8, i8* %call, i64 %104
  %min.iters.check1372 = icmp ult i64 %103, 4
  br i1 %min.iters.check1372, label %polly.loop_header358.preheader, label %vector.ph1373

vector.ph1373:                                    ; preds = %polly.loop_header352
  %n.vec1375 = and i64 %103, -4
  br label %vector.body1369

vector.body1369:                                  ; preds = %vector.body1369, %vector.ph1373
  %index1376 = phi i64 [ 0, %vector.ph1373 ], [ %index.next1377, %vector.body1369 ]
  %105 = shl nuw nsw i64 %index1376, 3
  %106 = getelementptr i8, i8* %scevgep364, i64 %105
  %107 = bitcast i8* %106 to <4 x double>*
  %wide.load1380 = load <4 x double>, <4 x double>* %107, align 8, !alias.scope !74, !noalias !76
  %108 = fmul fast <4 x double> %wide.load1380, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %109 = bitcast i8* %106 to <4 x double>*
  store <4 x double> %108, <4 x double>* %109, align 8, !alias.scope !74, !noalias !76
  %index.next1377 = add i64 %index1376, 4
  %110 = icmp eq i64 %index.next1377, %n.vec1375
  br i1 %110, label %middle.block1367, label %vector.body1369, !llvm.loop !80

middle.block1367:                                 ; preds = %vector.body1369
  %cmp.n1379 = icmp eq i64 %103, %n.vec1375
  br i1 %cmp.n1379, label %polly.loop_exit360, label %polly.loop_header358.preheader

polly.loop_header358.preheader:                   ; preds = %polly.loop_header352, %middle.block1367
  %polly.indvar361.ph = phi i64 [ 0, %polly.loop_header352 ], [ %n.vec1375, %middle.block1367 ]
  br label %polly.loop_header358

polly.loop_exit360:                               ; preds = %polly.loop_header358, %middle.block1367
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %exitcond831.not = icmp eq i64 %polly.indvar_next356, 80
  %indvar.next1371 = add i64 %indvar1370, 1
  br i1 %exitcond831.not, label %polly.loop_header368.preheader, label %polly.loop_header352

polly.loop_header368.preheader:                   ; preds = %polly.loop_exit360
  %Packed_MemRef_call2269 = bitcast i8* %malloccall268 to double*
  br label %polly.loop_header368

polly.loop_header358:                             ; preds = %polly.loop_header358.preheader, %polly.loop_header358
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_header358 ], [ %polly.indvar361.ph, %polly.loop_header358.preheader ]
  %111 = shl nuw nsw i64 %polly.indvar361, 3
  %scevgep365 = getelementptr i8, i8* %scevgep364, i64 %111
  %scevgep365366 = bitcast i8* %scevgep365 to double*
  %_p_scalar_367 = load double, double* %scevgep365366, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_367, 1.200000e+00
  store double %p_mul.i57, double* %scevgep365366, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond830.not = icmp eq i64 %polly.indvar_next362, %polly.indvar355
  br i1 %exitcond830.not, label %polly.loop_exit360, label %polly.loop_header358, !llvm.loop !81

polly.loop_header368:                             ; preds = %polly.loop_header368.preheader, %polly.loop_exit376
  %polly.indvar371 = phi i64 [ %polly.indvar_next372, %polly.loop_exit376 ], [ 0, %polly.loop_header368.preheader ]
  %polly.access.mul.Packed_MemRef_call2269 = mul nuw nsw i64 %polly.indvar371, 80
  br label %polly.loop_header374

polly.loop_exit376:                               ; preds = %polly.loop_header374
  %polly.indvar_next372 = add nuw nsw i64 %polly.indvar371, 1
  %exitcond829.not = icmp eq i64 %polly.indvar_next372, 60
  br i1 %exitcond829.not, label %polly.loop_header396, label %polly.loop_header368

polly.loop_header374:                             ; preds = %polly.loop_header374, %polly.loop_header368
  %polly.indvar377 = phi i64 [ 0, %polly.loop_header368 ], [ %polly.indvar_next378, %polly.loop_header374 ]
  %polly.access.mul.call2381 = mul nuw nsw i64 %polly.indvar377, 60
  %polly.access.add.call2382 = add nuw nsw i64 %polly.access.mul.call2381, %polly.indvar371
  %polly.access.call2383 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2382
  %polly.access.call2383.load = load double, double* %polly.access.call2383, align 8, !alias.scope !78, !noalias !82
  %polly.access.add.Packed_MemRef_call2269 = add nuw nsw i64 %polly.indvar377, %polly.access.mul.Packed_MemRef_call2269
  %polly.access.Packed_MemRef_call2269 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269
  store double %polly.access.call2383.load, double* %polly.access.Packed_MemRef_call2269, align 8
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %exitcond828.not = icmp eq i64 %polly.indvar_next378, 80
  br i1 %exitcond828.not, label %polly.loop_exit376, label %polly.loop_header374

polly.loop_header396:                             ; preds = %polly.loop_exit376, %polly.loop_exit404
  %indvars.iv819 = phi i64 [ %indvars.iv.next820, %polly.loop_exit404 ], [ 0, %polly.loop_exit376 ]
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit404 ], [ 0, %polly.loop_exit376 ]
  %smin821 = call i64 @llvm.smin.i64(i64 %indvars.iv819, i64 31)
  %112 = mul nuw nsw i64 %polly.indvar399, 480
  %scevgep425 = getelementptr i8, i8* %call1, i64 %112
  %113 = mul nuw nsw i64 %polly.indvar399, 640
  %scevgep429 = getelementptr i8, i8* %call, i64 %113
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_exit410
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %indvars.iv.next820 = add nuw nsw i64 %indvars.iv819, 1
  %exitcond826.not = icmp eq i64 %indvars.iv.next820, 80
  br i1 %exitcond826.not, label %polly.loop_header396.1, label %polly.loop_header396

polly.loop_header402:                             ; preds = %polly.loop_exit410, %polly.loop_header396
  %polly.indvar405 = phi i64 [ 0, %polly.loop_header396 ], [ %polly.indvar_next406, %polly.loop_exit410 ]
  %114 = shl i64 %polly.indvar405, 3
  %polly.access.mul.Packed_MemRef_call2269417 = mul nuw nsw i64 %polly.indvar405, 80
  %polly.access.add.Packed_MemRef_call2269418 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269417, %polly.indvar399
  %polly.access.Packed_MemRef_call2269419 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269418
  %_p_scalar_420 = load double, double* %polly.access.Packed_MemRef_call2269419, align 8
  %scevgep426 = getelementptr i8, i8* %scevgep425, i64 %114
  %scevgep426427 = bitcast i8* %scevgep426 to double*
  %_p_scalar_428 = load double, double* %scevgep426427, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header408

polly.loop_exit410:                               ; preds = %polly.loop_header408
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond823.not = icmp eq i64 %polly.indvar_next406, 50
  br i1 %exitcond823.not, label %polly.loop_exit404, label %polly.loop_header402

polly.loop_header408:                             ; preds = %polly.loop_header408, %polly.loop_header402
  %polly.indvar411 = phi i64 [ 0, %polly.loop_header402 ], [ %polly.indvar_next412, %polly.loop_header408 ]
  %115 = mul nuw nsw i64 %polly.indvar411, 480
  %116 = add nuw nsw i64 %115, %114
  %scevgep414 = getelementptr i8, i8* %call1, i64 %116
  %scevgep414415 = bitcast i8* %scevgep414 to double*
  %_p_scalar_416 = load double, double* %scevgep414415, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73 = fmul fast double %_p_scalar_420, %_p_scalar_416
  %polly.access.add.Packed_MemRef_call2269422 = add nuw nsw i64 %polly.indvar411, %polly.access.mul.Packed_MemRef_call2269417
  %polly.access.Packed_MemRef_call2269423 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422
  %_p_scalar_424 = load double, double* %polly.access.Packed_MemRef_call2269423, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_428, %_p_scalar_424
  %117 = shl i64 %polly.indvar411, 3
  %scevgep430 = getelementptr i8, i8* %scevgep429, i64 %117
  %scevgep430431 = bitcast i8* %scevgep430 to double*
  %_p_scalar_432 = load double, double* %scevgep430431, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_432
  store double %p_add42.i79, double* %scevgep430431, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond822.not = icmp eq i64 %polly.indvar411, %smin821
  br i1 %exitcond822.not, label %polly.loop_exit410, label %polly.loop_header408

polly.start435:                                   ; preds = %init_array.exit
  %malloccall437 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header521

polly.loop_header521:                             ; preds = %polly.loop_exit529, %polly.start435
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit529 ], [ 0, %polly.start435 ]
  %polly.indvar524 = phi i64 [ %polly.indvar_next525, %polly.loop_exit529 ], [ 1, %polly.start435 ]
  %118 = add i64 %indvar, 1
  %119 = mul nuw nsw i64 %polly.indvar524, 640
  %scevgep533 = getelementptr i8, i8* %call, i64 %119
  %min.iters.check1346 = icmp ult i64 %118, 4
  br i1 %min.iters.check1346, label %polly.loop_header527.preheader, label %vector.ph1347

vector.ph1347:                                    ; preds = %polly.loop_header521
  %n.vec1349 = and i64 %118, -4
  br label %vector.body1345

vector.body1345:                                  ; preds = %vector.body1345, %vector.ph1347
  %index1350 = phi i64 [ 0, %vector.ph1347 ], [ %index.next1351, %vector.body1345 ]
  %120 = shl nuw nsw i64 %index1350, 3
  %121 = getelementptr i8, i8* %scevgep533, i64 %120
  %122 = bitcast i8* %121 to <4 x double>*
  %wide.load1354 = load <4 x double>, <4 x double>* %122, align 8, !alias.scope !84, !noalias !86
  %123 = fmul fast <4 x double> %wide.load1354, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %124 = bitcast i8* %121 to <4 x double>*
  store <4 x double> %123, <4 x double>* %124, align 8, !alias.scope !84, !noalias !86
  %index.next1351 = add i64 %index1350, 4
  %125 = icmp eq i64 %index.next1351, %n.vec1349
  br i1 %125, label %middle.block1343, label %vector.body1345, !llvm.loop !90

middle.block1343:                                 ; preds = %vector.body1345
  %cmp.n1353 = icmp eq i64 %118, %n.vec1349
  br i1 %cmp.n1353, label %polly.loop_exit529, label %polly.loop_header527.preheader

polly.loop_header527.preheader:                   ; preds = %polly.loop_header521, %middle.block1343
  %polly.indvar530.ph = phi i64 [ 0, %polly.loop_header521 ], [ %n.vec1349, %middle.block1343 ]
  br label %polly.loop_header527

polly.loop_exit529:                               ; preds = %polly.loop_header527, %middle.block1343
  %polly.indvar_next525 = add nuw nsw i64 %polly.indvar524, 1
  %exitcond844.not = icmp eq i64 %polly.indvar_next525, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond844.not, label %polly.loop_header537.preheader, label %polly.loop_header521

polly.loop_header537.preheader:                   ; preds = %polly.loop_exit529
  %Packed_MemRef_call2438 = bitcast i8* %malloccall437 to double*
  br label %polly.loop_header537

polly.loop_header527:                             ; preds = %polly.loop_header527.preheader, %polly.loop_header527
  %polly.indvar530 = phi i64 [ %polly.indvar_next531, %polly.loop_header527 ], [ %polly.indvar530.ph, %polly.loop_header527.preheader ]
  %126 = shl nuw nsw i64 %polly.indvar530, 3
  %scevgep534 = getelementptr i8, i8* %scevgep533, i64 %126
  %scevgep534535 = bitcast i8* %scevgep534 to double*
  %_p_scalar_536 = load double, double* %scevgep534535, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_536, 1.200000e+00
  store double %p_mul.i, double* %scevgep534535, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next531 = add nuw nsw i64 %polly.indvar530, 1
  %exitcond843.not = icmp eq i64 %polly.indvar_next531, %polly.indvar524
  br i1 %exitcond843.not, label %polly.loop_exit529, label %polly.loop_header527, !llvm.loop !91

polly.loop_header537:                             ; preds = %polly.loop_header537.preheader, %polly.loop_exit545
  %polly.indvar540 = phi i64 [ %polly.indvar_next541, %polly.loop_exit545 ], [ 0, %polly.loop_header537.preheader ]
  %polly.access.mul.Packed_MemRef_call2438 = mul nuw nsw i64 %polly.indvar540, 80
  br label %polly.loop_header543

polly.loop_exit545:                               ; preds = %polly.loop_header543
  %polly.indvar_next541 = add nuw nsw i64 %polly.indvar540, 1
  %exitcond842.not = icmp eq i64 %polly.indvar_next541, 60
  br i1 %exitcond842.not, label %polly.loop_header565, label %polly.loop_header537

polly.loop_header543:                             ; preds = %polly.loop_header543, %polly.loop_header537
  %polly.indvar546 = phi i64 [ 0, %polly.loop_header537 ], [ %polly.indvar_next547, %polly.loop_header543 ]
  %polly.access.mul.call2550 = mul nuw nsw i64 %polly.indvar546, 60
  %polly.access.add.call2551 = add nuw nsw i64 %polly.access.mul.call2550, %polly.indvar540
  %polly.access.call2552 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2551
  %polly.access.call2552.load = load double, double* %polly.access.call2552, align 8, !alias.scope !88, !noalias !92
  %polly.access.add.Packed_MemRef_call2438 = add nuw nsw i64 %polly.indvar546, %polly.access.mul.Packed_MemRef_call2438
  %polly.access.Packed_MemRef_call2438 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438
  store double %polly.access.call2552.load, double* %polly.access.Packed_MemRef_call2438, align 8
  %polly.indvar_next547 = add nuw nsw i64 %polly.indvar546, 1
  %exitcond841.not = icmp eq i64 %polly.indvar_next547, 80
  br i1 %exitcond841.not, label %polly.loop_exit545, label %polly.loop_header543

polly.loop_header565:                             ; preds = %polly.loop_exit545, %polly.loop_exit573
  %indvars.iv832 = phi i64 [ %indvars.iv.next833, %polly.loop_exit573 ], [ 0, %polly.loop_exit545 ]
  %polly.indvar568 = phi i64 [ %polly.indvar_next569, %polly.loop_exit573 ], [ 0, %polly.loop_exit545 ]
  %smin834 = call i64 @llvm.smin.i64(i64 %indvars.iv832, i64 31)
  %127 = mul nuw nsw i64 %polly.indvar568, 480
  %scevgep594 = getelementptr i8, i8* %call1, i64 %127
  %128 = mul nuw nsw i64 %polly.indvar568, 640
  %scevgep598 = getelementptr i8, i8* %call, i64 %128
  br label %polly.loop_header571

polly.loop_exit573:                               ; preds = %polly.loop_exit579
  %polly.indvar_next569 = add nuw nsw i64 %polly.indvar568, 1
  %indvars.iv.next833 = add nuw nsw i64 %indvars.iv832, 1
  %exitcond839.not = icmp eq i64 %indvars.iv.next833, 80
  br i1 %exitcond839.not, label %polly.loop_header565.1, label %polly.loop_header565

polly.loop_header571:                             ; preds = %polly.loop_exit579, %polly.loop_header565
  %polly.indvar574 = phi i64 [ 0, %polly.loop_header565 ], [ %polly.indvar_next575, %polly.loop_exit579 ]
  %129 = shl i64 %polly.indvar574, 3
  %polly.access.mul.Packed_MemRef_call2438586 = mul nuw nsw i64 %polly.indvar574, 80
  %polly.access.add.Packed_MemRef_call2438587 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2438586, %polly.indvar568
  %polly.access.Packed_MemRef_call2438588 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438587
  %_p_scalar_589 = load double, double* %polly.access.Packed_MemRef_call2438588, align 8
  %scevgep595 = getelementptr i8, i8* %scevgep594, i64 %129
  %scevgep595596 = bitcast i8* %scevgep595 to double*
  %_p_scalar_597 = load double, double* %scevgep595596, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header577

polly.loop_exit579:                               ; preds = %polly.loop_header577
  %polly.indvar_next575 = add nuw nsw i64 %polly.indvar574, 1
  %exitcond836.not = icmp eq i64 %polly.indvar_next575, 50
  br i1 %exitcond836.not, label %polly.loop_exit573, label %polly.loop_header571

polly.loop_header577:                             ; preds = %polly.loop_header577, %polly.loop_header571
  %polly.indvar580 = phi i64 [ 0, %polly.loop_header571 ], [ %polly.indvar_next581, %polly.loop_header577 ]
  %130 = mul nuw nsw i64 %polly.indvar580, 480
  %131 = add nuw nsw i64 %130, %129
  %scevgep583 = getelementptr i8, i8* %call1, i64 %131
  %scevgep583584 = bitcast i8* %scevgep583 to double*
  %_p_scalar_585 = load double, double* %scevgep583584, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i = fmul fast double %_p_scalar_589, %_p_scalar_585
  %polly.access.add.Packed_MemRef_call2438591 = add nuw nsw i64 %polly.indvar580, %polly.access.mul.Packed_MemRef_call2438586
  %polly.access.Packed_MemRef_call2438592 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438591
  %_p_scalar_593 = load double, double* %polly.access.Packed_MemRef_call2438592, align 8
  %p_mul37.i = fmul fast double %_p_scalar_597, %_p_scalar_593
  %132 = shl i64 %polly.indvar580, 3
  %scevgep599 = getelementptr i8, i8* %scevgep598, i64 %132
  %scevgep599600 = bitcast i8* %scevgep599 to double*
  %_p_scalar_601 = load double, double* %scevgep599600, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_601
  store double %p_add42.i, double* %scevgep599600, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next581 = add nuw nsw i64 %polly.indvar580, 1
  %exitcond835.not = icmp eq i64 %polly.indvar580, %smin834
  br i1 %exitcond835.not, label %polly.loop_exit579, label %polly.loop_header577

polly.loop_header740:                             ; preds = %entry, %polly.loop_exit748
  %polly.indvar743 = phi i64 [ %polly.indvar_next744, %polly.loop_exit748 ], [ 0, %entry ]
  %133 = mul nuw nsw i64 %polly.indvar743, 640
  %134 = trunc i64 %polly.indvar743 to i32
  %broadcast.splatinsert1077 = insertelement <4 x i32> poison, i32 %134, i32 0
  %broadcast.splat1078 = shufflevector <4 x i32> %broadcast.splatinsert1077, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1067

vector.body1067:                                  ; preds = %vector.body1067, %polly.loop_header740
  %index1069 = phi i64 [ 0, %polly.loop_header740 ], [ %index.next1070, %vector.body1067 ]
  %vec.ind1075 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header740 ], [ %vec.ind.next1076, %vector.body1067 ]
  %135 = mul <4 x i32> %vec.ind1075, %broadcast.splat1078
  %136 = add <4 x i32> %135, <i32 3, i32 3, i32 3, i32 3>
  %137 = urem <4 x i32> %136, <i32 80, i32 80, i32 80, i32 80>
  %138 = sitofp <4 x i32> %137 to <4 x double>
  %139 = fmul fast <4 x double> %138, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %140 = shl i64 %index1069, 3
  %141 = add nuw nsw i64 %140, %133
  %142 = getelementptr i8, i8* %call, i64 %141
  %143 = bitcast i8* %142 to <4 x double>*
  store <4 x double> %139, <4 x double>* %143, align 8, !alias.scope !94, !noalias !96
  %index.next1070 = add i64 %index1069, 4
  %vec.ind.next1076 = add <4 x i32> %vec.ind1075, <i32 4, i32 4, i32 4, i32 4>
  %144 = icmp eq i64 %index.next1070, 32
  br i1 %144, label %polly.loop_exit748, label %vector.body1067, !llvm.loop !99

polly.loop_exit748:                               ; preds = %vector.body1067
  %polly.indvar_next744 = add nuw nsw i64 %polly.indvar743, 1
  %exitcond864.not = icmp eq i64 %polly.indvar_next744, 32
  br i1 %exitcond864.not, label %polly.loop_header740.1, label %polly.loop_header740

polly.loop_header767:                             ; preds = %polly.loop_exit748.2.2, %polly.loop_exit775
  %polly.indvar770 = phi i64 [ %polly.indvar_next771, %polly.loop_exit775 ], [ 0, %polly.loop_exit748.2.2 ]
  %145 = mul nuw nsw i64 %polly.indvar770, 480
  %146 = trunc i64 %polly.indvar770 to i32
  %broadcast.splatinsert1191 = insertelement <4 x i32> poison, i32 %146, i32 0
  %broadcast.splat1192 = shufflevector <4 x i32> %broadcast.splatinsert1191, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1181

vector.body1181:                                  ; preds = %vector.body1181, %polly.loop_header767
  %index1183 = phi i64 [ 0, %polly.loop_header767 ], [ %index.next1184, %vector.body1181 ]
  %vec.ind1189 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header767 ], [ %vec.ind.next1190, %vector.body1181 ]
  %147 = mul <4 x i32> %vec.ind1189, %broadcast.splat1192
  %148 = add <4 x i32> %147, <i32 2, i32 2, i32 2, i32 2>
  %149 = urem <4 x i32> %148, <i32 60, i32 60, i32 60, i32 60>
  %150 = sitofp <4 x i32> %149 to <4 x double>
  %151 = fmul fast <4 x double> %150, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %152 = shl i64 %index1183, 3
  %153 = add i64 %152, %145
  %154 = getelementptr i8, i8* %call2, i64 %153
  %155 = bitcast i8* %154 to <4 x double>*
  store <4 x double> %151, <4 x double>* %155, align 8, !alias.scope !98, !noalias !100
  %index.next1184 = add i64 %index1183, 4
  %vec.ind.next1190 = add <4 x i32> %vec.ind1189, <i32 4, i32 4, i32 4, i32 4>
  %156 = icmp eq i64 %index.next1184, 32
  br i1 %156, label %polly.loop_exit775, label %vector.body1181, !llvm.loop !101

polly.loop_exit775:                               ; preds = %vector.body1181
  %polly.indvar_next771 = add nuw nsw i64 %polly.indvar770, 1
  %exitcond855.not = icmp eq i64 %polly.indvar_next771, 32
  br i1 %exitcond855.not, label %polly.loop_header767.1, label %polly.loop_header767

polly.loop_header793:                             ; preds = %polly.loop_exit775.1.2, %polly.loop_exit801
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %polly.loop_exit775.1.2 ]
  %157 = mul nuw nsw i64 %polly.indvar796, 480
  %158 = trunc i64 %polly.indvar796 to i32
  %broadcast.splatinsert1269 = insertelement <4 x i32> poison, i32 %158, i32 0
  %broadcast.splat1270 = shufflevector <4 x i32> %broadcast.splatinsert1269, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1259

vector.body1259:                                  ; preds = %vector.body1259, %polly.loop_header793
  %index1261 = phi i64 [ 0, %polly.loop_header793 ], [ %index.next1262, %vector.body1259 ]
  %vec.ind1267 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793 ], [ %vec.ind.next1268, %vector.body1259 ]
  %159 = mul <4 x i32> %vec.ind1267, %broadcast.splat1270
  %160 = add <4 x i32> %159, <i32 1, i32 1, i32 1, i32 1>
  %161 = urem <4 x i32> %160, <i32 80, i32 80, i32 80, i32 80>
  %162 = sitofp <4 x i32> %161 to <4 x double>
  %163 = fmul fast <4 x double> %162, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %164 = shl i64 %index1261, 3
  %165 = add i64 %164, %157
  %166 = getelementptr i8, i8* %call1, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %163, <4 x double>* %167, align 8, !alias.scope !97, !noalias !102
  %index.next1262 = add i64 %index1261, 4
  %vec.ind.next1268 = add <4 x i32> %vec.ind1267, <i32 4, i32 4, i32 4, i32 4>
  %168 = icmp eq i64 %index.next1262, 32
  br i1 %168, label %polly.loop_exit801, label %vector.body1259, !llvm.loop !103

polly.loop_exit801:                               ; preds = %vector.body1259
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %exitcond849.not = icmp eq i64 %polly.indvar_next797, 32
  br i1 %exitcond849.not, label %polly.loop_header793.1, label %polly.loop_header793

polly.loop_header227.1:                           ; preds = %polly.loop_exit235, %polly.loop_exit235.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit235.1 ], [ 0, %polly.loop_exit235 ]
  %polly.indvar230.1 = phi i64 [ %polly.indvar_next231.1, %polly.loop_exit235.1 ], [ 32, %polly.loop_exit235 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.1, i64 31)
  %169 = mul nuw nsw i64 %polly.indvar230.1, 480
  %scevgep256.1 = getelementptr i8, i8* %call1, i64 %169
  %170 = mul nuw nsw i64 %polly.indvar230.1, 640
  %scevgep260.1 = getelementptr i8, i8* %call, i64 %170
  br label %polly.loop_header233.1

polly.loop_header233.1:                           ; preds = %polly.loop_exit241.1, %polly.loop_header227.1
  %polly.indvar236.1 = phi i64 [ 0, %polly.loop_header227.1 ], [ %polly.indvar_next237.1, %polly.loop_exit241.1 ]
  %171 = shl i64 %polly.indvar236.1, 3
  %polly.access.mul.Packed_MemRef_call2248.1 = mul nuw nsw i64 %polly.indvar236.1, 80
  %polly.access.add.Packed_MemRef_call2249.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2248.1, %polly.indvar230.1
  %polly.access.Packed_MemRef_call2250.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.1
  %_p_scalar_251.1 = load double, double* %polly.access.Packed_MemRef_call2250.1, align 8
  %scevgep257.1 = getelementptr i8, i8* %scevgep256.1, i64 %171
  %scevgep257258.1 = bitcast i8* %scevgep257.1 to double*
  %_p_scalar_259.1 = load double, double* %scevgep257258.1, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header239.1

polly.loop_header239.1:                           ; preds = %polly.loop_header239.1, %polly.loop_header233.1
  %polly.indvar242.1 = phi i64 [ 0, %polly.loop_header233.1 ], [ %polly.indvar_next243.1, %polly.loop_header239.1 ]
  %172 = add nuw nsw i64 %polly.indvar242.1, 32
  %173 = mul nuw nsw i64 %172, 480
  %174 = add nuw nsw i64 %173, %171
  %scevgep245.1 = getelementptr i8, i8* %call1, i64 %174
  %scevgep245246.1 = bitcast i8* %scevgep245.1 to double*
  %_p_scalar_247.1 = load double, double* %scevgep245246.1, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.1 = fmul fast double %_p_scalar_251.1, %_p_scalar_247.1
  %polly.access.add.Packed_MemRef_call2253.1 = add nuw nsw i64 %172, %polly.access.mul.Packed_MemRef_call2248.1
  %polly.access.Packed_MemRef_call2254.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.1
  %_p_scalar_255.1 = load double, double* %polly.access.Packed_MemRef_call2254.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_259.1, %_p_scalar_255.1
  %175 = shl i64 %172, 3
  %scevgep261.1 = getelementptr i8, i8* %scevgep260.1, i64 %175
  %scevgep261262.1 = bitcast i8* %scevgep261.1 to double*
  %_p_scalar_263.1 = load double, double* %scevgep261262.1, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_263.1
  store double %p_add42.i118.1, double* %scevgep261262.1, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243.1 = add nuw nsw i64 %polly.indvar242.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar242.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit241.1, label %polly.loop_header239.1

polly.loop_exit241.1:                             ; preds = %polly.loop_header239.1
  %polly.indvar_next237.1 = add nuw nsw i64 %polly.indvar236.1, 1
  %exitcond810.1.not = icmp eq i64 %polly.indvar_next237.1, 50
  br i1 %exitcond810.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.1

polly.loop_exit235.1:                             ; preds = %polly.loop_exit241.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond813.1.not = icmp eq i64 %indvars.iv.next.1, 48
  br i1 %exitcond813.1.not, label %polly.loop_header227.2, label %polly.loop_header227.1

polly.loop_header227.2:                           ; preds = %polly.loop_exit235.1, %polly.loop_exit235.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %polly.loop_exit235.2 ], [ 0, %polly.loop_exit235.1 ]
  %polly.indvar230.2 = phi i64 [ %polly.indvar_next231.2, %polly.loop_exit235.2 ], [ 64, %polly.loop_exit235.1 ]
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.2, i64 31)
  %176 = mul nuw nsw i64 %polly.indvar230.2, 480
  %scevgep256.2 = getelementptr i8, i8* %call1, i64 %176
  %177 = mul nuw nsw i64 %polly.indvar230.2, 640
  %scevgep260.2 = getelementptr i8, i8* %call, i64 %177
  br label %polly.loop_header233.2

polly.loop_header233.2:                           ; preds = %polly.loop_exit241.2, %polly.loop_header227.2
  %polly.indvar236.2 = phi i64 [ 0, %polly.loop_header227.2 ], [ %polly.indvar_next237.2, %polly.loop_exit241.2 ]
  %178 = shl i64 %polly.indvar236.2, 3
  %polly.access.mul.Packed_MemRef_call2248.2 = mul nuw nsw i64 %polly.indvar236.2, 80
  %polly.access.add.Packed_MemRef_call2249.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2248.2, %polly.indvar230.2
  %polly.access.Packed_MemRef_call2250.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.2
  %_p_scalar_251.2 = load double, double* %polly.access.Packed_MemRef_call2250.2, align 8
  %scevgep257.2 = getelementptr i8, i8* %scevgep256.2, i64 %178
  %scevgep257258.2 = bitcast i8* %scevgep257.2 to double*
  %_p_scalar_259.2 = load double, double* %scevgep257258.2, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header239.2

polly.loop_header239.2:                           ; preds = %polly.loop_header239.2, %polly.loop_header233.2
  %polly.indvar242.2 = phi i64 [ 0, %polly.loop_header233.2 ], [ %polly.indvar_next243.2, %polly.loop_header239.2 ]
  %179 = add nuw nsw i64 %polly.indvar242.2, 64
  %180 = mul nuw nsw i64 %179, 480
  %181 = add nuw nsw i64 %180, %178
  %scevgep245.2 = getelementptr i8, i8* %call1, i64 %181
  %scevgep245246.2 = bitcast i8* %scevgep245.2 to double*
  %_p_scalar_247.2 = load double, double* %scevgep245246.2, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.2 = fmul fast double %_p_scalar_251.2, %_p_scalar_247.2
  %polly.access.add.Packed_MemRef_call2253.2 = add nuw nsw i64 %179, %polly.access.mul.Packed_MemRef_call2248.2
  %polly.access.Packed_MemRef_call2254.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.2
  %_p_scalar_255.2 = load double, double* %polly.access.Packed_MemRef_call2254.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_259.2, %_p_scalar_255.2
  %182 = shl i64 %179, 3
  %scevgep261.2 = getelementptr i8, i8* %scevgep260.2, i64 %182
  %scevgep261262.2 = bitcast i8* %scevgep261.2 to double*
  %_p_scalar_263.2 = load double, double* %scevgep261262.2, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_263.2
  store double %p_add42.i118.2, double* %scevgep261262.2, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243.2 = add nuw nsw i64 %polly.indvar242.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar242.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit241.2, label %polly.loop_header239.2

polly.loop_exit241.2:                             ; preds = %polly.loop_header239.2
  %polly.indvar_next237.2 = add nuw nsw i64 %polly.indvar236.2, 1
  %exitcond810.2.not = icmp eq i64 %polly.indvar_next237.2, 50
  br i1 %exitcond810.2.not, label %polly.loop_exit235.2, label %polly.loop_header233.2

polly.loop_exit235.2:                             ; preds = %polly.loop_exit241.2
  %polly.indvar_next231.2 = add nuw nsw i64 %polly.indvar230.2, 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond813.2.not = icmp eq i64 %indvars.iv.next.2, 16
  br i1 %exitcond813.2.not, label %polly.loop_header227.1873, label %polly.loop_header227.2

polly.loop_header227.1873:                        ; preds = %polly.loop_exit235.2, %polly.loop_exit235.1907
  %indvars.iv.1868 = phi i64 [ %indvars.iv.next.1905, %polly.loop_exit235.1907 ], [ 0, %polly.loop_exit235.2 ]
  %polly.indvar230.1869 = phi i64 [ %polly.indvar_next231.1904, %polly.loop_exit235.1907 ], [ 0, %polly.loop_exit235.2 ]
  %smin.1870 = call i64 @llvm.smin.i64(i64 %indvars.iv.1868, i64 31)
  %183 = mul nuw nsw i64 %polly.indvar230.1869, 480
  %scevgep256.1871 = getelementptr i8, i8* %call1, i64 %183
  %184 = mul nuw nsw i64 %polly.indvar230.1869, 640
  %scevgep260.1872 = getelementptr i8, i8* %call, i64 %184
  br label %polly.loop_header233.1882

polly.loop_header233.1882:                        ; preds = %polly.loop_exit241.1903, %polly.loop_header227.1873
  %polly.indvar236.1874 = phi i64 [ 0, %polly.loop_header227.1873 ], [ %polly.indvar_next237.1901, %polly.loop_exit241.1903 ]
  %185 = add nuw nsw i64 %polly.indvar236.1874, 50
  %186 = shl i64 %185, 3
  %polly.access.mul.Packed_MemRef_call2248.1875 = mul nuw nsw i64 %185, 80
  %polly.access.add.Packed_MemRef_call2249.1876 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2248.1875, %polly.indvar230.1869
  %polly.access.Packed_MemRef_call2250.1877 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.1876
  %_p_scalar_251.1878 = load double, double* %polly.access.Packed_MemRef_call2250.1877, align 8
  %scevgep257.1879 = getelementptr i8, i8* %scevgep256.1871, i64 %186
  %scevgep257258.1880 = bitcast i8* %scevgep257.1879 to double*
  %_p_scalar_259.1881 = load double, double* %scevgep257258.1880, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header239.1900

polly.loop_header239.1900:                        ; preds = %polly.loop_header239.1900, %polly.loop_header233.1882
  %polly.indvar242.1883 = phi i64 [ 0, %polly.loop_header233.1882 ], [ %polly.indvar_next243.1898, %polly.loop_header239.1900 ]
  %187 = mul nuw nsw i64 %polly.indvar242.1883, 480
  %188 = add nuw nsw i64 %187, %186
  %scevgep245.1884 = getelementptr i8, i8* %call1, i64 %188
  %scevgep245246.1885 = bitcast i8* %scevgep245.1884 to double*
  %_p_scalar_247.1886 = load double, double* %scevgep245246.1885, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.1887 = fmul fast double %_p_scalar_251.1878, %_p_scalar_247.1886
  %polly.access.add.Packed_MemRef_call2253.1888 = add nuw nsw i64 %polly.indvar242.1883, %polly.access.mul.Packed_MemRef_call2248.1875
  %polly.access.Packed_MemRef_call2254.1889 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.1888
  %_p_scalar_255.1890 = load double, double* %polly.access.Packed_MemRef_call2254.1889, align 8
  %p_mul37.i114.1891 = fmul fast double %_p_scalar_259.1881, %_p_scalar_255.1890
  %189 = shl i64 %polly.indvar242.1883, 3
  %scevgep261.1892 = getelementptr i8, i8* %scevgep260.1872, i64 %189
  %scevgep261262.1893 = bitcast i8* %scevgep261.1892 to double*
  %_p_scalar_263.1894 = load double, double* %scevgep261262.1893, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.1895 = fadd fast double %p_mul37.i114.1891, %p_mul27.i112.1887
  %p_reass.mul.i117.1896 = fmul fast double %p_reass.add.i116.1895, 1.500000e+00
  %p_add42.i118.1897 = fadd fast double %p_reass.mul.i117.1896, %_p_scalar_263.1894
  store double %p_add42.i118.1897, double* %scevgep261262.1893, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243.1898 = add nuw nsw i64 %polly.indvar242.1883, 1
  %exitcond.1899.not = icmp eq i64 %polly.indvar242.1883, %smin.1870
  br i1 %exitcond.1899.not, label %polly.loop_exit241.1903, label %polly.loop_header239.1900

polly.loop_exit241.1903:                          ; preds = %polly.loop_header239.1900
  %polly.indvar_next237.1901 = add nuw nsw i64 %polly.indvar236.1874, 1
  %exitcond810.1902.not = icmp eq i64 %polly.indvar_next237.1901, 10
  br i1 %exitcond810.1902.not, label %polly.loop_exit235.1907, label %polly.loop_header233.1882

polly.loop_exit235.1907:                          ; preds = %polly.loop_exit241.1903
  %polly.indvar_next231.1904 = add nuw nsw i64 %polly.indvar230.1869, 1
  %indvars.iv.next.1905 = add nuw nsw i64 %indvars.iv.1868, 1
  %exitcond813.1906.not = icmp eq i64 %indvars.iv.next.1905, 80
  br i1 %exitcond813.1906.not, label %polly.loop_header227.1.1, label %polly.loop_header227.1873

polly.loop_header227.1.1:                         ; preds = %polly.loop_exit235.1907, %polly.loop_exit235.1.1
  %indvars.iv.1.1 = phi i64 [ %indvars.iv.next.1.1, %polly.loop_exit235.1.1 ], [ 0, %polly.loop_exit235.1907 ]
  %polly.indvar230.1.1 = phi i64 [ %polly.indvar_next231.1.1, %polly.loop_exit235.1.1 ], [ 32, %polly.loop_exit235.1907 ]
  %smin.1.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.1.1, i64 31)
  %190 = mul nuw nsw i64 %polly.indvar230.1.1, 480
  %scevgep256.1.1 = getelementptr i8, i8* %call1, i64 %190
  %191 = mul nuw nsw i64 %polly.indvar230.1.1, 640
  %scevgep260.1.1 = getelementptr i8, i8* %call, i64 %191
  br label %polly.loop_header233.1.1

polly.loop_header233.1.1:                         ; preds = %polly.loop_exit241.1.1, %polly.loop_header227.1.1
  %polly.indvar236.1.1 = phi i64 [ 0, %polly.loop_header227.1.1 ], [ %polly.indvar_next237.1.1, %polly.loop_exit241.1.1 ]
  %192 = add nuw nsw i64 %polly.indvar236.1.1, 50
  %193 = shl i64 %192, 3
  %polly.access.mul.Packed_MemRef_call2248.1.1 = mul nuw nsw i64 %192, 80
  %polly.access.add.Packed_MemRef_call2249.1.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2248.1.1, %polly.indvar230.1.1
  %polly.access.Packed_MemRef_call2250.1.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.1.1
  %_p_scalar_251.1.1 = load double, double* %polly.access.Packed_MemRef_call2250.1.1, align 8
  %scevgep257.1.1 = getelementptr i8, i8* %scevgep256.1.1, i64 %193
  %scevgep257258.1.1 = bitcast i8* %scevgep257.1.1 to double*
  %_p_scalar_259.1.1 = load double, double* %scevgep257258.1.1, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header239.1.1

polly.loop_header239.1.1:                         ; preds = %polly.loop_header239.1.1, %polly.loop_header233.1.1
  %polly.indvar242.1.1 = phi i64 [ 0, %polly.loop_header233.1.1 ], [ %polly.indvar_next243.1.1, %polly.loop_header239.1.1 ]
  %194 = add nuw nsw i64 %polly.indvar242.1.1, 32
  %195 = mul nuw nsw i64 %194, 480
  %196 = add nuw nsw i64 %195, %193
  %scevgep245.1.1 = getelementptr i8, i8* %call1, i64 %196
  %scevgep245246.1.1 = bitcast i8* %scevgep245.1.1 to double*
  %_p_scalar_247.1.1 = load double, double* %scevgep245246.1.1, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.1.1 = fmul fast double %_p_scalar_251.1.1, %_p_scalar_247.1.1
  %polly.access.add.Packed_MemRef_call2253.1.1 = add nuw nsw i64 %194, %polly.access.mul.Packed_MemRef_call2248.1.1
  %polly.access.Packed_MemRef_call2254.1.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.1.1
  %_p_scalar_255.1.1 = load double, double* %polly.access.Packed_MemRef_call2254.1.1, align 8
  %p_mul37.i114.1.1 = fmul fast double %_p_scalar_259.1.1, %_p_scalar_255.1.1
  %197 = shl i64 %194, 3
  %scevgep261.1.1 = getelementptr i8, i8* %scevgep260.1.1, i64 %197
  %scevgep261262.1.1 = bitcast i8* %scevgep261.1.1 to double*
  %_p_scalar_263.1.1 = load double, double* %scevgep261262.1.1, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.1.1 = fadd fast double %p_mul37.i114.1.1, %p_mul27.i112.1.1
  %p_reass.mul.i117.1.1 = fmul fast double %p_reass.add.i116.1.1, 1.500000e+00
  %p_add42.i118.1.1 = fadd fast double %p_reass.mul.i117.1.1, %_p_scalar_263.1.1
  store double %p_add42.i118.1.1, double* %scevgep261262.1.1, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243.1.1 = add nuw nsw i64 %polly.indvar242.1.1, 1
  %exitcond.1.1.not = icmp eq i64 %polly.indvar242.1.1, %smin.1.1
  br i1 %exitcond.1.1.not, label %polly.loop_exit241.1.1, label %polly.loop_header239.1.1

polly.loop_exit241.1.1:                           ; preds = %polly.loop_header239.1.1
  %polly.indvar_next237.1.1 = add nuw nsw i64 %polly.indvar236.1.1, 1
  %exitcond810.1.1.not = icmp eq i64 %polly.indvar_next237.1.1, 10
  br i1 %exitcond810.1.1.not, label %polly.loop_exit235.1.1, label %polly.loop_header233.1.1

polly.loop_exit235.1.1:                           ; preds = %polly.loop_exit241.1.1
  %polly.indvar_next231.1.1 = add nuw nsw i64 %polly.indvar230.1.1, 1
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1.1, 1
  %exitcond813.1.1.not = icmp eq i64 %indvars.iv.next.1.1, 48
  br i1 %exitcond813.1.1.not, label %polly.loop_header227.2.1, label %polly.loop_header227.1.1

polly.loop_header227.2.1:                         ; preds = %polly.loop_exit235.1.1, %polly.loop_exit235.2.1
  %indvars.iv.2.1 = phi i64 [ %indvars.iv.next.2.1, %polly.loop_exit235.2.1 ], [ 0, %polly.loop_exit235.1.1 ]
  %polly.indvar230.2.1 = phi i64 [ %polly.indvar_next231.2.1, %polly.loop_exit235.2.1 ], [ 64, %polly.loop_exit235.1.1 ]
  %smin.2.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.2.1, i64 31)
  %198 = mul nuw nsw i64 %polly.indvar230.2.1, 480
  %scevgep256.2.1 = getelementptr i8, i8* %call1, i64 %198
  %199 = mul nuw nsw i64 %polly.indvar230.2.1, 640
  %scevgep260.2.1 = getelementptr i8, i8* %call, i64 %199
  br label %polly.loop_header233.2.1

polly.loop_header233.2.1:                         ; preds = %polly.loop_exit241.2.1, %polly.loop_header227.2.1
  %polly.indvar236.2.1 = phi i64 [ 0, %polly.loop_header227.2.1 ], [ %polly.indvar_next237.2.1, %polly.loop_exit241.2.1 ]
  %200 = add nuw nsw i64 %polly.indvar236.2.1, 50
  %201 = shl i64 %200, 3
  %polly.access.mul.Packed_MemRef_call2248.2.1 = mul nuw nsw i64 %200, 80
  %polly.access.add.Packed_MemRef_call2249.2.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2248.2.1, %polly.indvar230.2.1
  %polly.access.Packed_MemRef_call2250.2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.2.1
  %_p_scalar_251.2.1 = load double, double* %polly.access.Packed_MemRef_call2250.2.1, align 8
  %scevgep257.2.1 = getelementptr i8, i8* %scevgep256.2.1, i64 %201
  %scevgep257258.2.1 = bitcast i8* %scevgep257.2.1 to double*
  %_p_scalar_259.2.1 = load double, double* %scevgep257258.2.1, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header239.2.1

polly.loop_header239.2.1:                         ; preds = %polly.loop_header239.2.1, %polly.loop_header233.2.1
  %polly.indvar242.2.1 = phi i64 [ 0, %polly.loop_header233.2.1 ], [ %polly.indvar_next243.2.1, %polly.loop_header239.2.1 ]
  %202 = add nuw nsw i64 %polly.indvar242.2.1, 64
  %203 = mul nuw nsw i64 %202, 480
  %204 = add nuw nsw i64 %203, %201
  %scevgep245.2.1 = getelementptr i8, i8* %call1, i64 %204
  %scevgep245246.2.1 = bitcast i8* %scevgep245.2.1 to double*
  %_p_scalar_247.2.1 = load double, double* %scevgep245246.2.1, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.2.1 = fmul fast double %_p_scalar_251.2.1, %_p_scalar_247.2.1
  %polly.access.add.Packed_MemRef_call2253.2.1 = add nuw nsw i64 %202, %polly.access.mul.Packed_MemRef_call2248.2.1
  %polly.access.Packed_MemRef_call2254.2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.2.1
  %_p_scalar_255.2.1 = load double, double* %polly.access.Packed_MemRef_call2254.2.1, align 8
  %p_mul37.i114.2.1 = fmul fast double %_p_scalar_259.2.1, %_p_scalar_255.2.1
  %205 = shl i64 %202, 3
  %scevgep261.2.1 = getelementptr i8, i8* %scevgep260.2.1, i64 %205
  %scevgep261262.2.1 = bitcast i8* %scevgep261.2.1 to double*
  %_p_scalar_263.2.1 = load double, double* %scevgep261262.2.1, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.2.1 = fadd fast double %p_mul37.i114.2.1, %p_mul27.i112.2.1
  %p_reass.mul.i117.2.1 = fmul fast double %p_reass.add.i116.2.1, 1.500000e+00
  %p_add42.i118.2.1 = fadd fast double %p_reass.mul.i117.2.1, %_p_scalar_263.2.1
  store double %p_add42.i118.2.1, double* %scevgep261262.2.1, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243.2.1 = add nuw nsw i64 %polly.indvar242.2.1, 1
  %exitcond.2.1.not = icmp eq i64 %polly.indvar242.2.1, %smin.2.1
  br i1 %exitcond.2.1.not, label %polly.loop_exit241.2.1, label %polly.loop_header239.2.1

polly.loop_exit241.2.1:                           ; preds = %polly.loop_header239.2.1
  %polly.indvar_next237.2.1 = add nuw nsw i64 %polly.indvar236.2.1, 1
  %exitcond810.2.1.not = icmp eq i64 %polly.indvar_next237.2.1, 10
  br i1 %exitcond810.2.1.not, label %polly.loop_exit235.2.1, label %polly.loop_header233.2.1

polly.loop_exit235.2.1:                           ; preds = %polly.loop_exit241.2.1
  %polly.indvar_next231.2.1 = add nuw nsw i64 %polly.indvar230.2.1, 1
  %indvars.iv.next.2.1 = add nuw nsw i64 %indvars.iv.2.1, 1
  %exitcond813.2.1.not = icmp eq i64 %indvars.iv.next.2.1, 16
  br i1 %exitcond813.2.1.not, label %polly.loop_exit229.2.1, label %polly.loop_header227.2.1

polly.loop_exit229.2.1:                           ; preds = %polly.loop_exit235.2.1
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header396.1:                           ; preds = %polly.loop_exit404, %polly.loop_exit404.1
  %indvars.iv819.1 = phi i64 [ %indvars.iv.next820.1, %polly.loop_exit404.1 ], [ 0, %polly.loop_exit404 ]
  %polly.indvar399.1 = phi i64 [ %polly.indvar_next400.1, %polly.loop_exit404.1 ], [ 32, %polly.loop_exit404 ]
  %smin821.1 = call i64 @llvm.smin.i64(i64 %indvars.iv819.1, i64 31)
  %206 = mul nuw nsw i64 %polly.indvar399.1, 480
  %scevgep425.1 = getelementptr i8, i8* %call1, i64 %206
  %207 = mul nuw nsw i64 %polly.indvar399.1, 640
  %scevgep429.1 = getelementptr i8, i8* %call, i64 %207
  br label %polly.loop_header402.1

polly.loop_header402.1:                           ; preds = %polly.loop_exit410.1, %polly.loop_header396.1
  %polly.indvar405.1 = phi i64 [ 0, %polly.loop_header396.1 ], [ %polly.indvar_next406.1, %polly.loop_exit410.1 ]
  %208 = shl i64 %polly.indvar405.1, 3
  %polly.access.mul.Packed_MemRef_call2269417.1 = mul nuw nsw i64 %polly.indvar405.1, 80
  %polly.access.add.Packed_MemRef_call2269418.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269417.1, %polly.indvar399.1
  %polly.access.Packed_MemRef_call2269419.1 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269418.1
  %_p_scalar_420.1 = load double, double* %polly.access.Packed_MemRef_call2269419.1, align 8
  %scevgep426.1 = getelementptr i8, i8* %scevgep425.1, i64 %208
  %scevgep426427.1 = bitcast i8* %scevgep426.1 to double*
  %_p_scalar_428.1 = load double, double* %scevgep426427.1, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header408.1

polly.loop_header408.1:                           ; preds = %polly.loop_header408.1, %polly.loop_header402.1
  %polly.indvar411.1 = phi i64 [ 0, %polly.loop_header402.1 ], [ %polly.indvar_next412.1, %polly.loop_header408.1 ]
  %209 = add nuw nsw i64 %polly.indvar411.1, 32
  %210 = mul nuw nsw i64 %209, 480
  %211 = add nuw nsw i64 %210, %208
  %scevgep414.1 = getelementptr i8, i8* %call1, i64 %211
  %scevgep414415.1 = bitcast i8* %scevgep414.1 to double*
  %_p_scalar_416.1 = load double, double* %scevgep414415.1, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.1 = fmul fast double %_p_scalar_420.1, %_p_scalar_416.1
  %polly.access.add.Packed_MemRef_call2269422.1 = add nuw nsw i64 %209, %polly.access.mul.Packed_MemRef_call2269417.1
  %polly.access.Packed_MemRef_call2269423.1 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422.1
  %_p_scalar_424.1 = load double, double* %polly.access.Packed_MemRef_call2269423.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_428.1, %_p_scalar_424.1
  %212 = shl i64 %209, 3
  %scevgep430.1 = getelementptr i8, i8* %scevgep429.1, i64 %212
  %scevgep430431.1 = bitcast i8* %scevgep430.1 to double*
  %_p_scalar_432.1 = load double, double* %scevgep430431.1, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_432.1
  store double %p_add42.i79.1, double* %scevgep430431.1, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next412.1 = add nuw nsw i64 %polly.indvar411.1, 1
  %exitcond822.1.not = icmp eq i64 %polly.indvar411.1, %smin821.1
  br i1 %exitcond822.1.not, label %polly.loop_exit410.1, label %polly.loop_header408.1

polly.loop_exit410.1:                             ; preds = %polly.loop_header408.1
  %polly.indvar_next406.1 = add nuw nsw i64 %polly.indvar405.1, 1
  %exitcond823.1.not = icmp eq i64 %polly.indvar_next406.1, 50
  br i1 %exitcond823.1.not, label %polly.loop_exit404.1, label %polly.loop_header402.1

polly.loop_exit404.1:                             ; preds = %polly.loop_exit410.1
  %polly.indvar_next400.1 = add nuw nsw i64 %polly.indvar399.1, 1
  %indvars.iv.next820.1 = add nuw nsw i64 %indvars.iv819.1, 1
  %exitcond826.1.not = icmp eq i64 %indvars.iv.next820.1, 48
  br i1 %exitcond826.1.not, label %polly.loop_header396.2, label %polly.loop_header396.1

polly.loop_header396.2:                           ; preds = %polly.loop_exit404.1, %polly.loop_exit404.2
  %indvars.iv819.2 = phi i64 [ %indvars.iv.next820.2, %polly.loop_exit404.2 ], [ 0, %polly.loop_exit404.1 ]
  %polly.indvar399.2 = phi i64 [ %polly.indvar_next400.2, %polly.loop_exit404.2 ], [ 64, %polly.loop_exit404.1 ]
  %smin821.2 = call i64 @llvm.smin.i64(i64 %indvars.iv819.2, i64 31)
  %213 = mul nuw nsw i64 %polly.indvar399.2, 480
  %scevgep425.2 = getelementptr i8, i8* %call1, i64 %213
  %214 = mul nuw nsw i64 %polly.indvar399.2, 640
  %scevgep429.2 = getelementptr i8, i8* %call, i64 %214
  br label %polly.loop_header402.2

polly.loop_header402.2:                           ; preds = %polly.loop_exit410.2, %polly.loop_header396.2
  %polly.indvar405.2 = phi i64 [ 0, %polly.loop_header396.2 ], [ %polly.indvar_next406.2, %polly.loop_exit410.2 ]
  %215 = shl i64 %polly.indvar405.2, 3
  %polly.access.mul.Packed_MemRef_call2269417.2 = mul nuw nsw i64 %polly.indvar405.2, 80
  %polly.access.add.Packed_MemRef_call2269418.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269417.2, %polly.indvar399.2
  %polly.access.Packed_MemRef_call2269419.2 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269418.2
  %_p_scalar_420.2 = load double, double* %polly.access.Packed_MemRef_call2269419.2, align 8
  %scevgep426.2 = getelementptr i8, i8* %scevgep425.2, i64 %215
  %scevgep426427.2 = bitcast i8* %scevgep426.2 to double*
  %_p_scalar_428.2 = load double, double* %scevgep426427.2, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header408.2

polly.loop_header408.2:                           ; preds = %polly.loop_header408.2, %polly.loop_header402.2
  %polly.indvar411.2 = phi i64 [ 0, %polly.loop_header402.2 ], [ %polly.indvar_next412.2, %polly.loop_header408.2 ]
  %216 = add nuw nsw i64 %polly.indvar411.2, 64
  %217 = mul nuw nsw i64 %216, 480
  %218 = add nuw nsw i64 %217, %215
  %scevgep414.2 = getelementptr i8, i8* %call1, i64 %218
  %scevgep414415.2 = bitcast i8* %scevgep414.2 to double*
  %_p_scalar_416.2 = load double, double* %scevgep414415.2, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.2 = fmul fast double %_p_scalar_420.2, %_p_scalar_416.2
  %polly.access.add.Packed_MemRef_call2269422.2 = add nuw nsw i64 %216, %polly.access.mul.Packed_MemRef_call2269417.2
  %polly.access.Packed_MemRef_call2269423.2 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422.2
  %_p_scalar_424.2 = load double, double* %polly.access.Packed_MemRef_call2269423.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_428.2, %_p_scalar_424.2
  %219 = shl i64 %216, 3
  %scevgep430.2 = getelementptr i8, i8* %scevgep429.2, i64 %219
  %scevgep430431.2 = bitcast i8* %scevgep430.2 to double*
  %_p_scalar_432.2 = load double, double* %scevgep430431.2, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_432.2
  store double %p_add42.i79.2, double* %scevgep430431.2, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next412.2 = add nuw nsw i64 %polly.indvar411.2, 1
  %exitcond822.2.not = icmp eq i64 %polly.indvar411.2, %smin821.2
  br i1 %exitcond822.2.not, label %polly.loop_exit410.2, label %polly.loop_header408.2

polly.loop_exit410.2:                             ; preds = %polly.loop_header408.2
  %polly.indvar_next406.2 = add nuw nsw i64 %polly.indvar405.2, 1
  %exitcond823.2.not = icmp eq i64 %polly.indvar_next406.2, 50
  br i1 %exitcond823.2.not, label %polly.loop_exit404.2, label %polly.loop_header402.2

polly.loop_exit404.2:                             ; preds = %polly.loop_exit410.2
  %polly.indvar_next400.2 = add nuw nsw i64 %polly.indvar399.2, 1
  %indvars.iv.next820.2 = add nuw nsw i64 %indvars.iv819.2, 1
  %exitcond826.2.not = icmp eq i64 %indvars.iv.next820.2, 16
  br i1 %exitcond826.2.not, label %polly.loop_header396.1914, label %polly.loop_header396.2

polly.loop_header396.1914:                        ; preds = %polly.loop_exit404.2, %polly.loop_exit404.1948
  %indvars.iv819.1909 = phi i64 [ %indvars.iv.next820.1946, %polly.loop_exit404.1948 ], [ 0, %polly.loop_exit404.2 ]
  %polly.indvar399.1910 = phi i64 [ %polly.indvar_next400.1945, %polly.loop_exit404.1948 ], [ 0, %polly.loop_exit404.2 ]
  %smin821.1911 = call i64 @llvm.smin.i64(i64 %indvars.iv819.1909, i64 31)
  %220 = mul nuw nsw i64 %polly.indvar399.1910, 480
  %scevgep425.1912 = getelementptr i8, i8* %call1, i64 %220
  %221 = mul nuw nsw i64 %polly.indvar399.1910, 640
  %scevgep429.1913 = getelementptr i8, i8* %call, i64 %221
  br label %polly.loop_header402.1923

polly.loop_header402.1923:                        ; preds = %polly.loop_exit410.1944, %polly.loop_header396.1914
  %polly.indvar405.1915 = phi i64 [ 0, %polly.loop_header396.1914 ], [ %polly.indvar_next406.1942, %polly.loop_exit410.1944 ]
  %222 = add nuw nsw i64 %polly.indvar405.1915, 50
  %223 = shl i64 %222, 3
  %polly.access.mul.Packed_MemRef_call2269417.1916 = mul nuw nsw i64 %222, 80
  %polly.access.add.Packed_MemRef_call2269418.1917 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269417.1916, %polly.indvar399.1910
  %polly.access.Packed_MemRef_call2269419.1918 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269418.1917
  %_p_scalar_420.1919 = load double, double* %polly.access.Packed_MemRef_call2269419.1918, align 8
  %scevgep426.1920 = getelementptr i8, i8* %scevgep425.1912, i64 %223
  %scevgep426427.1921 = bitcast i8* %scevgep426.1920 to double*
  %_p_scalar_428.1922 = load double, double* %scevgep426427.1921, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header408.1941

polly.loop_header408.1941:                        ; preds = %polly.loop_header408.1941, %polly.loop_header402.1923
  %polly.indvar411.1924 = phi i64 [ 0, %polly.loop_header402.1923 ], [ %polly.indvar_next412.1939, %polly.loop_header408.1941 ]
  %224 = mul nuw nsw i64 %polly.indvar411.1924, 480
  %225 = add nuw nsw i64 %224, %223
  %scevgep414.1925 = getelementptr i8, i8* %call1, i64 %225
  %scevgep414415.1926 = bitcast i8* %scevgep414.1925 to double*
  %_p_scalar_416.1927 = load double, double* %scevgep414415.1926, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.1928 = fmul fast double %_p_scalar_420.1919, %_p_scalar_416.1927
  %polly.access.add.Packed_MemRef_call2269422.1929 = add nuw nsw i64 %polly.indvar411.1924, %polly.access.mul.Packed_MemRef_call2269417.1916
  %polly.access.Packed_MemRef_call2269423.1930 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422.1929
  %_p_scalar_424.1931 = load double, double* %polly.access.Packed_MemRef_call2269423.1930, align 8
  %p_mul37.i75.1932 = fmul fast double %_p_scalar_428.1922, %_p_scalar_424.1931
  %226 = shl i64 %polly.indvar411.1924, 3
  %scevgep430.1933 = getelementptr i8, i8* %scevgep429.1913, i64 %226
  %scevgep430431.1934 = bitcast i8* %scevgep430.1933 to double*
  %_p_scalar_432.1935 = load double, double* %scevgep430431.1934, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.1936 = fadd fast double %p_mul37.i75.1932, %p_mul27.i73.1928
  %p_reass.mul.i78.1937 = fmul fast double %p_reass.add.i77.1936, 1.500000e+00
  %p_add42.i79.1938 = fadd fast double %p_reass.mul.i78.1937, %_p_scalar_432.1935
  store double %p_add42.i79.1938, double* %scevgep430431.1934, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next412.1939 = add nuw nsw i64 %polly.indvar411.1924, 1
  %exitcond822.1940.not = icmp eq i64 %polly.indvar411.1924, %smin821.1911
  br i1 %exitcond822.1940.not, label %polly.loop_exit410.1944, label %polly.loop_header408.1941

polly.loop_exit410.1944:                          ; preds = %polly.loop_header408.1941
  %polly.indvar_next406.1942 = add nuw nsw i64 %polly.indvar405.1915, 1
  %exitcond823.1943.not = icmp eq i64 %polly.indvar_next406.1942, 10
  br i1 %exitcond823.1943.not, label %polly.loop_exit404.1948, label %polly.loop_header402.1923

polly.loop_exit404.1948:                          ; preds = %polly.loop_exit410.1944
  %polly.indvar_next400.1945 = add nuw nsw i64 %polly.indvar399.1910, 1
  %indvars.iv.next820.1946 = add nuw nsw i64 %indvars.iv819.1909, 1
  %exitcond826.1947.not = icmp eq i64 %indvars.iv.next820.1946, 80
  br i1 %exitcond826.1947.not, label %polly.loop_header396.1.1, label %polly.loop_header396.1914

polly.loop_header396.1.1:                         ; preds = %polly.loop_exit404.1948, %polly.loop_exit404.1.1
  %indvars.iv819.1.1 = phi i64 [ %indvars.iv.next820.1.1, %polly.loop_exit404.1.1 ], [ 0, %polly.loop_exit404.1948 ]
  %polly.indvar399.1.1 = phi i64 [ %polly.indvar_next400.1.1, %polly.loop_exit404.1.1 ], [ 32, %polly.loop_exit404.1948 ]
  %smin821.1.1 = call i64 @llvm.smin.i64(i64 %indvars.iv819.1.1, i64 31)
  %227 = mul nuw nsw i64 %polly.indvar399.1.1, 480
  %scevgep425.1.1 = getelementptr i8, i8* %call1, i64 %227
  %228 = mul nuw nsw i64 %polly.indvar399.1.1, 640
  %scevgep429.1.1 = getelementptr i8, i8* %call, i64 %228
  br label %polly.loop_header402.1.1

polly.loop_header402.1.1:                         ; preds = %polly.loop_exit410.1.1, %polly.loop_header396.1.1
  %polly.indvar405.1.1 = phi i64 [ 0, %polly.loop_header396.1.1 ], [ %polly.indvar_next406.1.1, %polly.loop_exit410.1.1 ]
  %229 = add nuw nsw i64 %polly.indvar405.1.1, 50
  %230 = shl i64 %229, 3
  %polly.access.mul.Packed_MemRef_call2269417.1.1 = mul nuw nsw i64 %229, 80
  %polly.access.add.Packed_MemRef_call2269418.1.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269417.1.1, %polly.indvar399.1.1
  %polly.access.Packed_MemRef_call2269419.1.1 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269418.1.1
  %_p_scalar_420.1.1 = load double, double* %polly.access.Packed_MemRef_call2269419.1.1, align 8
  %scevgep426.1.1 = getelementptr i8, i8* %scevgep425.1.1, i64 %230
  %scevgep426427.1.1 = bitcast i8* %scevgep426.1.1 to double*
  %_p_scalar_428.1.1 = load double, double* %scevgep426427.1.1, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header408.1.1

polly.loop_header408.1.1:                         ; preds = %polly.loop_header408.1.1, %polly.loop_header402.1.1
  %polly.indvar411.1.1 = phi i64 [ 0, %polly.loop_header402.1.1 ], [ %polly.indvar_next412.1.1, %polly.loop_header408.1.1 ]
  %231 = add nuw nsw i64 %polly.indvar411.1.1, 32
  %232 = mul nuw nsw i64 %231, 480
  %233 = add nuw nsw i64 %232, %230
  %scevgep414.1.1 = getelementptr i8, i8* %call1, i64 %233
  %scevgep414415.1.1 = bitcast i8* %scevgep414.1.1 to double*
  %_p_scalar_416.1.1 = load double, double* %scevgep414415.1.1, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.1.1 = fmul fast double %_p_scalar_420.1.1, %_p_scalar_416.1.1
  %polly.access.add.Packed_MemRef_call2269422.1.1 = add nuw nsw i64 %231, %polly.access.mul.Packed_MemRef_call2269417.1.1
  %polly.access.Packed_MemRef_call2269423.1.1 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422.1.1
  %_p_scalar_424.1.1 = load double, double* %polly.access.Packed_MemRef_call2269423.1.1, align 8
  %p_mul37.i75.1.1 = fmul fast double %_p_scalar_428.1.1, %_p_scalar_424.1.1
  %234 = shl i64 %231, 3
  %scevgep430.1.1 = getelementptr i8, i8* %scevgep429.1.1, i64 %234
  %scevgep430431.1.1 = bitcast i8* %scevgep430.1.1 to double*
  %_p_scalar_432.1.1 = load double, double* %scevgep430431.1.1, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.1.1 = fadd fast double %p_mul37.i75.1.1, %p_mul27.i73.1.1
  %p_reass.mul.i78.1.1 = fmul fast double %p_reass.add.i77.1.1, 1.500000e+00
  %p_add42.i79.1.1 = fadd fast double %p_reass.mul.i78.1.1, %_p_scalar_432.1.1
  store double %p_add42.i79.1.1, double* %scevgep430431.1.1, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next412.1.1 = add nuw nsw i64 %polly.indvar411.1.1, 1
  %exitcond822.1.1.not = icmp eq i64 %polly.indvar411.1.1, %smin821.1.1
  br i1 %exitcond822.1.1.not, label %polly.loop_exit410.1.1, label %polly.loop_header408.1.1

polly.loop_exit410.1.1:                           ; preds = %polly.loop_header408.1.1
  %polly.indvar_next406.1.1 = add nuw nsw i64 %polly.indvar405.1.1, 1
  %exitcond823.1.1.not = icmp eq i64 %polly.indvar_next406.1.1, 10
  br i1 %exitcond823.1.1.not, label %polly.loop_exit404.1.1, label %polly.loop_header402.1.1

polly.loop_exit404.1.1:                           ; preds = %polly.loop_exit410.1.1
  %polly.indvar_next400.1.1 = add nuw nsw i64 %polly.indvar399.1.1, 1
  %indvars.iv.next820.1.1 = add nuw nsw i64 %indvars.iv819.1.1, 1
  %exitcond826.1.1.not = icmp eq i64 %indvars.iv.next820.1.1, 48
  br i1 %exitcond826.1.1.not, label %polly.loop_header396.2.1, label %polly.loop_header396.1.1

polly.loop_header396.2.1:                         ; preds = %polly.loop_exit404.1.1, %polly.loop_exit404.2.1
  %indvars.iv819.2.1 = phi i64 [ %indvars.iv.next820.2.1, %polly.loop_exit404.2.1 ], [ 0, %polly.loop_exit404.1.1 ]
  %polly.indvar399.2.1 = phi i64 [ %polly.indvar_next400.2.1, %polly.loop_exit404.2.1 ], [ 64, %polly.loop_exit404.1.1 ]
  %smin821.2.1 = call i64 @llvm.smin.i64(i64 %indvars.iv819.2.1, i64 31)
  %235 = mul nuw nsw i64 %polly.indvar399.2.1, 480
  %scevgep425.2.1 = getelementptr i8, i8* %call1, i64 %235
  %236 = mul nuw nsw i64 %polly.indvar399.2.1, 640
  %scevgep429.2.1 = getelementptr i8, i8* %call, i64 %236
  br label %polly.loop_header402.2.1

polly.loop_header402.2.1:                         ; preds = %polly.loop_exit410.2.1, %polly.loop_header396.2.1
  %polly.indvar405.2.1 = phi i64 [ 0, %polly.loop_header396.2.1 ], [ %polly.indvar_next406.2.1, %polly.loop_exit410.2.1 ]
  %237 = add nuw nsw i64 %polly.indvar405.2.1, 50
  %238 = shl i64 %237, 3
  %polly.access.mul.Packed_MemRef_call2269417.2.1 = mul nuw nsw i64 %237, 80
  %polly.access.add.Packed_MemRef_call2269418.2.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269417.2.1, %polly.indvar399.2.1
  %polly.access.Packed_MemRef_call2269419.2.1 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269418.2.1
  %_p_scalar_420.2.1 = load double, double* %polly.access.Packed_MemRef_call2269419.2.1, align 8
  %scevgep426.2.1 = getelementptr i8, i8* %scevgep425.2.1, i64 %238
  %scevgep426427.2.1 = bitcast i8* %scevgep426.2.1 to double*
  %_p_scalar_428.2.1 = load double, double* %scevgep426427.2.1, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header408.2.1

polly.loop_header408.2.1:                         ; preds = %polly.loop_header408.2.1, %polly.loop_header402.2.1
  %polly.indvar411.2.1 = phi i64 [ 0, %polly.loop_header402.2.1 ], [ %polly.indvar_next412.2.1, %polly.loop_header408.2.1 ]
  %239 = add nuw nsw i64 %polly.indvar411.2.1, 64
  %240 = mul nuw nsw i64 %239, 480
  %241 = add nuw nsw i64 %240, %238
  %scevgep414.2.1 = getelementptr i8, i8* %call1, i64 %241
  %scevgep414415.2.1 = bitcast i8* %scevgep414.2.1 to double*
  %_p_scalar_416.2.1 = load double, double* %scevgep414415.2.1, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.2.1 = fmul fast double %_p_scalar_420.2.1, %_p_scalar_416.2.1
  %polly.access.add.Packed_MemRef_call2269422.2.1 = add nuw nsw i64 %239, %polly.access.mul.Packed_MemRef_call2269417.2.1
  %polly.access.Packed_MemRef_call2269423.2.1 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422.2.1
  %_p_scalar_424.2.1 = load double, double* %polly.access.Packed_MemRef_call2269423.2.1, align 8
  %p_mul37.i75.2.1 = fmul fast double %_p_scalar_428.2.1, %_p_scalar_424.2.1
  %242 = shl i64 %239, 3
  %scevgep430.2.1 = getelementptr i8, i8* %scevgep429.2.1, i64 %242
  %scevgep430431.2.1 = bitcast i8* %scevgep430.2.1 to double*
  %_p_scalar_432.2.1 = load double, double* %scevgep430431.2.1, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.2.1 = fadd fast double %p_mul37.i75.2.1, %p_mul27.i73.2.1
  %p_reass.mul.i78.2.1 = fmul fast double %p_reass.add.i77.2.1, 1.500000e+00
  %p_add42.i79.2.1 = fadd fast double %p_reass.mul.i78.2.1, %_p_scalar_432.2.1
  store double %p_add42.i79.2.1, double* %scevgep430431.2.1, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next412.2.1 = add nuw nsw i64 %polly.indvar411.2.1, 1
  %exitcond822.2.1.not = icmp eq i64 %polly.indvar411.2.1, %smin821.2.1
  br i1 %exitcond822.2.1.not, label %polly.loop_exit410.2.1, label %polly.loop_header408.2.1

polly.loop_exit410.2.1:                           ; preds = %polly.loop_header408.2.1
  %polly.indvar_next406.2.1 = add nuw nsw i64 %polly.indvar405.2.1, 1
  %exitcond823.2.1.not = icmp eq i64 %polly.indvar_next406.2.1, 10
  br i1 %exitcond823.2.1.not, label %polly.loop_exit404.2.1, label %polly.loop_header402.2.1

polly.loop_exit404.2.1:                           ; preds = %polly.loop_exit410.2.1
  %polly.indvar_next400.2.1 = add nuw nsw i64 %polly.indvar399.2.1, 1
  %indvars.iv.next820.2.1 = add nuw nsw i64 %indvars.iv819.2.1, 1
  %exitcond826.2.1.not = icmp eq i64 %indvars.iv.next820.2.1, 16
  br i1 %exitcond826.2.1.not, label %polly.loop_exit398.2.1, label %polly.loop_header396.2.1

polly.loop_exit398.2.1:                           ; preds = %polly.loop_exit404.2.1
  tail call void @free(i8* nonnull %malloccall268)
  br label %kernel_syr2k.exit90

polly.loop_header565.1:                           ; preds = %polly.loop_exit573, %polly.loop_exit573.1
  %indvars.iv832.1 = phi i64 [ %indvars.iv.next833.1, %polly.loop_exit573.1 ], [ 0, %polly.loop_exit573 ]
  %polly.indvar568.1 = phi i64 [ %polly.indvar_next569.1, %polly.loop_exit573.1 ], [ 32, %polly.loop_exit573 ]
  %smin834.1 = call i64 @llvm.smin.i64(i64 %indvars.iv832.1, i64 31)
  %243 = mul nuw nsw i64 %polly.indvar568.1, 480
  %scevgep594.1 = getelementptr i8, i8* %call1, i64 %243
  %244 = mul nuw nsw i64 %polly.indvar568.1, 640
  %scevgep598.1 = getelementptr i8, i8* %call, i64 %244
  br label %polly.loop_header571.1

polly.loop_header571.1:                           ; preds = %polly.loop_exit579.1, %polly.loop_header565.1
  %polly.indvar574.1 = phi i64 [ 0, %polly.loop_header565.1 ], [ %polly.indvar_next575.1, %polly.loop_exit579.1 ]
  %245 = shl i64 %polly.indvar574.1, 3
  %polly.access.mul.Packed_MemRef_call2438586.1 = mul nuw nsw i64 %polly.indvar574.1, 80
  %polly.access.add.Packed_MemRef_call2438587.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2438586.1, %polly.indvar568.1
  %polly.access.Packed_MemRef_call2438588.1 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438587.1
  %_p_scalar_589.1 = load double, double* %polly.access.Packed_MemRef_call2438588.1, align 8
  %scevgep595.1 = getelementptr i8, i8* %scevgep594.1, i64 %245
  %scevgep595596.1 = bitcast i8* %scevgep595.1 to double*
  %_p_scalar_597.1 = load double, double* %scevgep595596.1, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header577.1

polly.loop_header577.1:                           ; preds = %polly.loop_header577.1, %polly.loop_header571.1
  %polly.indvar580.1 = phi i64 [ 0, %polly.loop_header571.1 ], [ %polly.indvar_next581.1, %polly.loop_header577.1 ]
  %246 = add nuw nsw i64 %polly.indvar580.1, 32
  %247 = mul nuw nsw i64 %246, 480
  %248 = add nuw nsw i64 %247, %245
  %scevgep583.1 = getelementptr i8, i8* %call1, i64 %248
  %scevgep583584.1 = bitcast i8* %scevgep583.1 to double*
  %_p_scalar_585.1 = load double, double* %scevgep583584.1, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.1 = fmul fast double %_p_scalar_589.1, %_p_scalar_585.1
  %polly.access.add.Packed_MemRef_call2438591.1 = add nuw nsw i64 %246, %polly.access.mul.Packed_MemRef_call2438586.1
  %polly.access.Packed_MemRef_call2438592.1 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438591.1
  %_p_scalar_593.1 = load double, double* %polly.access.Packed_MemRef_call2438592.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_597.1, %_p_scalar_593.1
  %249 = shl i64 %246, 3
  %scevgep599.1 = getelementptr i8, i8* %scevgep598.1, i64 %249
  %scevgep599600.1 = bitcast i8* %scevgep599.1 to double*
  %_p_scalar_601.1 = load double, double* %scevgep599600.1, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_601.1
  store double %p_add42.i.1, double* %scevgep599600.1, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next581.1 = add nuw nsw i64 %polly.indvar580.1, 1
  %exitcond835.1.not = icmp eq i64 %polly.indvar580.1, %smin834.1
  br i1 %exitcond835.1.not, label %polly.loop_exit579.1, label %polly.loop_header577.1

polly.loop_exit579.1:                             ; preds = %polly.loop_header577.1
  %polly.indvar_next575.1 = add nuw nsw i64 %polly.indvar574.1, 1
  %exitcond836.1.not = icmp eq i64 %polly.indvar_next575.1, 50
  br i1 %exitcond836.1.not, label %polly.loop_exit573.1, label %polly.loop_header571.1

polly.loop_exit573.1:                             ; preds = %polly.loop_exit579.1
  %polly.indvar_next569.1 = add nuw nsw i64 %polly.indvar568.1, 1
  %indvars.iv.next833.1 = add nuw nsw i64 %indvars.iv832.1, 1
  %exitcond839.1.not = icmp eq i64 %indvars.iv.next833.1, 48
  br i1 %exitcond839.1.not, label %polly.loop_header565.2, label %polly.loop_header565.1

polly.loop_header565.2:                           ; preds = %polly.loop_exit573.1, %polly.loop_exit573.2
  %indvars.iv832.2 = phi i64 [ %indvars.iv.next833.2, %polly.loop_exit573.2 ], [ 0, %polly.loop_exit573.1 ]
  %polly.indvar568.2 = phi i64 [ %polly.indvar_next569.2, %polly.loop_exit573.2 ], [ 64, %polly.loop_exit573.1 ]
  %smin834.2 = call i64 @llvm.smin.i64(i64 %indvars.iv832.2, i64 31)
  %250 = mul nuw nsw i64 %polly.indvar568.2, 480
  %scevgep594.2 = getelementptr i8, i8* %call1, i64 %250
  %251 = mul nuw nsw i64 %polly.indvar568.2, 640
  %scevgep598.2 = getelementptr i8, i8* %call, i64 %251
  br label %polly.loop_header571.2

polly.loop_header571.2:                           ; preds = %polly.loop_exit579.2, %polly.loop_header565.2
  %polly.indvar574.2 = phi i64 [ 0, %polly.loop_header565.2 ], [ %polly.indvar_next575.2, %polly.loop_exit579.2 ]
  %252 = shl i64 %polly.indvar574.2, 3
  %polly.access.mul.Packed_MemRef_call2438586.2 = mul nuw nsw i64 %polly.indvar574.2, 80
  %polly.access.add.Packed_MemRef_call2438587.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2438586.2, %polly.indvar568.2
  %polly.access.Packed_MemRef_call2438588.2 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438587.2
  %_p_scalar_589.2 = load double, double* %polly.access.Packed_MemRef_call2438588.2, align 8
  %scevgep595.2 = getelementptr i8, i8* %scevgep594.2, i64 %252
  %scevgep595596.2 = bitcast i8* %scevgep595.2 to double*
  %_p_scalar_597.2 = load double, double* %scevgep595596.2, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header577.2

polly.loop_header577.2:                           ; preds = %polly.loop_header577.2, %polly.loop_header571.2
  %polly.indvar580.2 = phi i64 [ 0, %polly.loop_header571.2 ], [ %polly.indvar_next581.2, %polly.loop_header577.2 ]
  %253 = add nuw nsw i64 %polly.indvar580.2, 64
  %254 = mul nuw nsw i64 %253, 480
  %255 = add nuw nsw i64 %254, %252
  %scevgep583.2 = getelementptr i8, i8* %call1, i64 %255
  %scevgep583584.2 = bitcast i8* %scevgep583.2 to double*
  %_p_scalar_585.2 = load double, double* %scevgep583584.2, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.2 = fmul fast double %_p_scalar_589.2, %_p_scalar_585.2
  %polly.access.add.Packed_MemRef_call2438591.2 = add nuw nsw i64 %253, %polly.access.mul.Packed_MemRef_call2438586.2
  %polly.access.Packed_MemRef_call2438592.2 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438591.2
  %_p_scalar_593.2 = load double, double* %polly.access.Packed_MemRef_call2438592.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_597.2, %_p_scalar_593.2
  %256 = shl i64 %253, 3
  %scevgep599.2 = getelementptr i8, i8* %scevgep598.2, i64 %256
  %scevgep599600.2 = bitcast i8* %scevgep599.2 to double*
  %_p_scalar_601.2 = load double, double* %scevgep599600.2, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_601.2
  store double %p_add42.i.2, double* %scevgep599600.2, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next581.2 = add nuw nsw i64 %polly.indvar580.2, 1
  %exitcond835.2.not = icmp eq i64 %polly.indvar580.2, %smin834.2
  br i1 %exitcond835.2.not, label %polly.loop_exit579.2, label %polly.loop_header577.2

polly.loop_exit579.2:                             ; preds = %polly.loop_header577.2
  %polly.indvar_next575.2 = add nuw nsw i64 %polly.indvar574.2, 1
  %exitcond836.2.not = icmp eq i64 %polly.indvar_next575.2, 50
  br i1 %exitcond836.2.not, label %polly.loop_exit573.2, label %polly.loop_header571.2

polly.loop_exit573.2:                             ; preds = %polly.loop_exit579.2
  %polly.indvar_next569.2 = add nuw nsw i64 %polly.indvar568.2, 1
  %indvars.iv.next833.2 = add nuw nsw i64 %indvars.iv832.2, 1
  %exitcond839.2.not = icmp eq i64 %indvars.iv.next833.2, 16
  br i1 %exitcond839.2.not, label %polly.loop_header565.1955, label %polly.loop_header565.2

polly.loop_header565.1955:                        ; preds = %polly.loop_exit573.2, %polly.loop_exit573.1989
  %indvars.iv832.1950 = phi i64 [ %indvars.iv.next833.1987, %polly.loop_exit573.1989 ], [ 0, %polly.loop_exit573.2 ]
  %polly.indvar568.1951 = phi i64 [ %polly.indvar_next569.1986, %polly.loop_exit573.1989 ], [ 0, %polly.loop_exit573.2 ]
  %smin834.1952 = call i64 @llvm.smin.i64(i64 %indvars.iv832.1950, i64 31)
  %257 = mul nuw nsw i64 %polly.indvar568.1951, 480
  %scevgep594.1953 = getelementptr i8, i8* %call1, i64 %257
  %258 = mul nuw nsw i64 %polly.indvar568.1951, 640
  %scevgep598.1954 = getelementptr i8, i8* %call, i64 %258
  br label %polly.loop_header571.1964

polly.loop_header571.1964:                        ; preds = %polly.loop_exit579.1985, %polly.loop_header565.1955
  %polly.indvar574.1956 = phi i64 [ 0, %polly.loop_header565.1955 ], [ %polly.indvar_next575.1983, %polly.loop_exit579.1985 ]
  %259 = add nuw nsw i64 %polly.indvar574.1956, 50
  %260 = shl i64 %259, 3
  %polly.access.mul.Packed_MemRef_call2438586.1957 = mul nuw nsw i64 %259, 80
  %polly.access.add.Packed_MemRef_call2438587.1958 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2438586.1957, %polly.indvar568.1951
  %polly.access.Packed_MemRef_call2438588.1959 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438587.1958
  %_p_scalar_589.1960 = load double, double* %polly.access.Packed_MemRef_call2438588.1959, align 8
  %scevgep595.1961 = getelementptr i8, i8* %scevgep594.1953, i64 %260
  %scevgep595596.1962 = bitcast i8* %scevgep595.1961 to double*
  %_p_scalar_597.1963 = load double, double* %scevgep595596.1962, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header577.1982

polly.loop_header577.1982:                        ; preds = %polly.loop_header577.1982, %polly.loop_header571.1964
  %polly.indvar580.1965 = phi i64 [ 0, %polly.loop_header571.1964 ], [ %polly.indvar_next581.1980, %polly.loop_header577.1982 ]
  %261 = mul nuw nsw i64 %polly.indvar580.1965, 480
  %262 = add nuw nsw i64 %261, %260
  %scevgep583.1966 = getelementptr i8, i8* %call1, i64 %262
  %scevgep583584.1967 = bitcast i8* %scevgep583.1966 to double*
  %_p_scalar_585.1968 = load double, double* %scevgep583584.1967, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.1969 = fmul fast double %_p_scalar_589.1960, %_p_scalar_585.1968
  %polly.access.add.Packed_MemRef_call2438591.1970 = add nuw nsw i64 %polly.indvar580.1965, %polly.access.mul.Packed_MemRef_call2438586.1957
  %polly.access.Packed_MemRef_call2438592.1971 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438591.1970
  %_p_scalar_593.1972 = load double, double* %polly.access.Packed_MemRef_call2438592.1971, align 8
  %p_mul37.i.1973 = fmul fast double %_p_scalar_597.1963, %_p_scalar_593.1972
  %263 = shl i64 %polly.indvar580.1965, 3
  %scevgep599.1974 = getelementptr i8, i8* %scevgep598.1954, i64 %263
  %scevgep599600.1975 = bitcast i8* %scevgep599.1974 to double*
  %_p_scalar_601.1976 = load double, double* %scevgep599600.1975, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.1977 = fadd fast double %p_mul37.i.1973, %p_mul27.i.1969
  %p_reass.mul.i.1978 = fmul fast double %p_reass.add.i.1977, 1.500000e+00
  %p_add42.i.1979 = fadd fast double %p_reass.mul.i.1978, %_p_scalar_601.1976
  store double %p_add42.i.1979, double* %scevgep599600.1975, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next581.1980 = add nuw nsw i64 %polly.indvar580.1965, 1
  %exitcond835.1981.not = icmp eq i64 %polly.indvar580.1965, %smin834.1952
  br i1 %exitcond835.1981.not, label %polly.loop_exit579.1985, label %polly.loop_header577.1982

polly.loop_exit579.1985:                          ; preds = %polly.loop_header577.1982
  %polly.indvar_next575.1983 = add nuw nsw i64 %polly.indvar574.1956, 1
  %exitcond836.1984.not = icmp eq i64 %polly.indvar_next575.1983, 10
  br i1 %exitcond836.1984.not, label %polly.loop_exit573.1989, label %polly.loop_header571.1964

polly.loop_exit573.1989:                          ; preds = %polly.loop_exit579.1985
  %polly.indvar_next569.1986 = add nuw nsw i64 %polly.indvar568.1951, 1
  %indvars.iv.next833.1987 = add nuw nsw i64 %indvars.iv832.1950, 1
  %exitcond839.1988.not = icmp eq i64 %indvars.iv.next833.1987, 80
  br i1 %exitcond839.1988.not, label %polly.loop_header565.1.1, label %polly.loop_header565.1955

polly.loop_header565.1.1:                         ; preds = %polly.loop_exit573.1989, %polly.loop_exit573.1.1
  %indvars.iv832.1.1 = phi i64 [ %indvars.iv.next833.1.1, %polly.loop_exit573.1.1 ], [ 0, %polly.loop_exit573.1989 ]
  %polly.indvar568.1.1 = phi i64 [ %polly.indvar_next569.1.1, %polly.loop_exit573.1.1 ], [ 32, %polly.loop_exit573.1989 ]
  %smin834.1.1 = call i64 @llvm.smin.i64(i64 %indvars.iv832.1.1, i64 31)
  %264 = mul nuw nsw i64 %polly.indvar568.1.1, 480
  %scevgep594.1.1 = getelementptr i8, i8* %call1, i64 %264
  %265 = mul nuw nsw i64 %polly.indvar568.1.1, 640
  %scevgep598.1.1 = getelementptr i8, i8* %call, i64 %265
  br label %polly.loop_header571.1.1

polly.loop_header571.1.1:                         ; preds = %polly.loop_exit579.1.1, %polly.loop_header565.1.1
  %polly.indvar574.1.1 = phi i64 [ 0, %polly.loop_header565.1.1 ], [ %polly.indvar_next575.1.1, %polly.loop_exit579.1.1 ]
  %266 = add nuw nsw i64 %polly.indvar574.1.1, 50
  %267 = shl i64 %266, 3
  %polly.access.mul.Packed_MemRef_call2438586.1.1 = mul nuw nsw i64 %266, 80
  %polly.access.add.Packed_MemRef_call2438587.1.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2438586.1.1, %polly.indvar568.1.1
  %polly.access.Packed_MemRef_call2438588.1.1 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438587.1.1
  %_p_scalar_589.1.1 = load double, double* %polly.access.Packed_MemRef_call2438588.1.1, align 8
  %scevgep595.1.1 = getelementptr i8, i8* %scevgep594.1.1, i64 %267
  %scevgep595596.1.1 = bitcast i8* %scevgep595.1.1 to double*
  %_p_scalar_597.1.1 = load double, double* %scevgep595596.1.1, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header577.1.1

polly.loop_header577.1.1:                         ; preds = %polly.loop_header577.1.1, %polly.loop_header571.1.1
  %polly.indvar580.1.1 = phi i64 [ 0, %polly.loop_header571.1.1 ], [ %polly.indvar_next581.1.1, %polly.loop_header577.1.1 ]
  %268 = add nuw nsw i64 %polly.indvar580.1.1, 32
  %269 = mul nuw nsw i64 %268, 480
  %270 = add nuw nsw i64 %269, %267
  %scevgep583.1.1 = getelementptr i8, i8* %call1, i64 %270
  %scevgep583584.1.1 = bitcast i8* %scevgep583.1.1 to double*
  %_p_scalar_585.1.1 = load double, double* %scevgep583584.1.1, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.1.1 = fmul fast double %_p_scalar_589.1.1, %_p_scalar_585.1.1
  %polly.access.add.Packed_MemRef_call2438591.1.1 = add nuw nsw i64 %268, %polly.access.mul.Packed_MemRef_call2438586.1.1
  %polly.access.Packed_MemRef_call2438592.1.1 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438591.1.1
  %_p_scalar_593.1.1 = load double, double* %polly.access.Packed_MemRef_call2438592.1.1, align 8
  %p_mul37.i.1.1 = fmul fast double %_p_scalar_597.1.1, %_p_scalar_593.1.1
  %271 = shl i64 %268, 3
  %scevgep599.1.1 = getelementptr i8, i8* %scevgep598.1.1, i64 %271
  %scevgep599600.1.1 = bitcast i8* %scevgep599.1.1 to double*
  %_p_scalar_601.1.1 = load double, double* %scevgep599600.1.1, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.1.1 = fadd fast double %p_mul37.i.1.1, %p_mul27.i.1.1
  %p_reass.mul.i.1.1 = fmul fast double %p_reass.add.i.1.1, 1.500000e+00
  %p_add42.i.1.1 = fadd fast double %p_reass.mul.i.1.1, %_p_scalar_601.1.1
  store double %p_add42.i.1.1, double* %scevgep599600.1.1, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next581.1.1 = add nuw nsw i64 %polly.indvar580.1.1, 1
  %exitcond835.1.1.not = icmp eq i64 %polly.indvar580.1.1, %smin834.1.1
  br i1 %exitcond835.1.1.not, label %polly.loop_exit579.1.1, label %polly.loop_header577.1.1

polly.loop_exit579.1.1:                           ; preds = %polly.loop_header577.1.1
  %polly.indvar_next575.1.1 = add nuw nsw i64 %polly.indvar574.1.1, 1
  %exitcond836.1.1.not = icmp eq i64 %polly.indvar_next575.1.1, 10
  br i1 %exitcond836.1.1.not, label %polly.loop_exit573.1.1, label %polly.loop_header571.1.1

polly.loop_exit573.1.1:                           ; preds = %polly.loop_exit579.1.1
  %polly.indvar_next569.1.1 = add nuw nsw i64 %polly.indvar568.1.1, 1
  %indvars.iv.next833.1.1 = add nuw nsw i64 %indvars.iv832.1.1, 1
  %exitcond839.1.1.not = icmp eq i64 %indvars.iv.next833.1.1, 48
  br i1 %exitcond839.1.1.not, label %polly.loop_header565.2.1, label %polly.loop_header565.1.1

polly.loop_header565.2.1:                         ; preds = %polly.loop_exit573.1.1, %polly.loop_exit573.2.1
  %indvars.iv832.2.1 = phi i64 [ %indvars.iv.next833.2.1, %polly.loop_exit573.2.1 ], [ 0, %polly.loop_exit573.1.1 ]
  %polly.indvar568.2.1 = phi i64 [ %polly.indvar_next569.2.1, %polly.loop_exit573.2.1 ], [ 64, %polly.loop_exit573.1.1 ]
  %smin834.2.1 = call i64 @llvm.smin.i64(i64 %indvars.iv832.2.1, i64 31)
  %272 = mul nuw nsw i64 %polly.indvar568.2.1, 480
  %scevgep594.2.1 = getelementptr i8, i8* %call1, i64 %272
  %273 = mul nuw nsw i64 %polly.indvar568.2.1, 640
  %scevgep598.2.1 = getelementptr i8, i8* %call, i64 %273
  br label %polly.loop_header571.2.1

polly.loop_header571.2.1:                         ; preds = %polly.loop_exit579.2.1, %polly.loop_header565.2.1
  %polly.indvar574.2.1 = phi i64 [ 0, %polly.loop_header565.2.1 ], [ %polly.indvar_next575.2.1, %polly.loop_exit579.2.1 ]
  %274 = add nuw nsw i64 %polly.indvar574.2.1, 50
  %275 = shl i64 %274, 3
  %polly.access.mul.Packed_MemRef_call2438586.2.1 = mul nuw nsw i64 %274, 80
  %polly.access.add.Packed_MemRef_call2438587.2.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2438586.2.1, %polly.indvar568.2.1
  %polly.access.Packed_MemRef_call2438588.2.1 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438587.2.1
  %_p_scalar_589.2.1 = load double, double* %polly.access.Packed_MemRef_call2438588.2.1, align 8
  %scevgep595.2.1 = getelementptr i8, i8* %scevgep594.2.1, i64 %275
  %scevgep595596.2.1 = bitcast i8* %scevgep595.2.1 to double*
  %_p_scalar_597.2.1 = load double, double* %scevgep595596.2.1, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header577.2.1

polly.loop_header577.2.1:                         ; preds = %polly.loop_header577.2.1, %polly.loop_header571.2.1
  %polly.indvar580.2.1 = phi i64 [ 0, %polly.loop_header571.2.1 ], [ %polly.indvar_next581.2.1, %polly.loop_header577.2.1 ]
  %276 = add nuw nsw i64 %polly.indvar580.2.1, 64
  %277 = mul nuw nsw i64 %276, 480
  %278 = add nuw nsw i64 %277, %275
  %scevgep583.2.1 = getelementptr i8, i8* %call1, i64 %278
  %scevgep583584.2.1 = bitcast i8* %scevgep583.2.1 to double*
  %_p_scalar_585.2.1 = load double, double* %scevgep583584.2.1, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.2.1 = fmul fast double %_p_scalar_589.2.1, %_p_scalar_585.2.1
  %polly.access.add.Packed_MemRef_call2438591.2.1 = add nuw nsw i64 %276, %polly.access.mul.Packed_MemRef_call2438586.2.1
  %polly.access.Packed_MemRef_call2438592.2.1 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438591.2.1
  %_p_scalar_593.2.1 = load double, double* %polly.access.Packed_MemRef_call2438592.2.1, align 8
  %p_mul37.i.2.1 = fmul fast double %_p_scalar_597.2.1, %_p_scalar_593.2.1
  %279 = shl i64 %276, 3
  %scevgep599.2.1 = getelementptr i8, i8* %scevgep598.2.1, i64 %279
  %scevgep599600.2.1 = bitcast i8* %scevgep599.2.1 to double*
  %_p_scalar_601.2.1 = load double, double* %scevgep599600.2.1, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.2.1 = fadd fast double %p_mul37.i.2.1, %p_mul27.i.2.1
  %p_reass.mul.i.2.1 = fmul fast double %p_reass.add.i.2.1, 1.500000e+00
  %p_add42.i.2.1 = fadd fast double %p_reass.mul.i.2.1, %_p_scalar_601.2.1
  store double %p_add42.i.2.1, double* %scevgep599600.2.1, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next581.2.1 = add nuw nsw i64 %polly.indvar580.2.1, 1
  %exitcond835.2.1.not = icmp eq i64 %polly.indvar580.2.1, %smin834.2.1
  br i1 %exitcond835.2.1.not, label %polly.loop_exit579.2.1, label %polly.loop_header577.2.1

polly.loop_exit579.2.1:                           ; preds = %polly.loop_header577.2.1
  %polly.indvar_next575.2.1 = add nuw nsw i64 %polly.indvar574.2.1, 1
  %exitcond836.2.1.not = icmp eq i64 %polly.indvar_next575.2.1, 10
  br i1 %exitcond836.2.1.not, label %polly.loop_exit573.2.1, label %polly.loop_header571.2.1

polly.loop_exit573.2.1:                           ; preds = %polly.loop_exit579.2.1
  %polly.indvar_next569.2.1 = add nuw nsw i64 %polly.indvar568.2.1, 1
  %indvars.iv.next833.2.1 = add nuw nsw i64 %indvars.iv832.2.1, 1
  %exitcond839.2.1.not = icmp eq i64 %indvars.iv.next833.2.1, 16
  br i1 %exitcond839.2.1.not, label %polly.loop_exit567.2.1, label %polly.loop_header565.2.1

polly.loop_exit567.2.1:                           ; preds = %polly.loop_exit573.2.1
  tail call void @free(i8* nonnull %malloccall437)
  br label %kernel_syr2k.exit

polly.loop_header793.1:                           ; preds = %polly.loop_exit801, %polly.loop_exit801.1
  %polly.indvar796.1 = phi i64 [ %polly.indvar_next797.1, %polly.loop_exit801.1 ], [ 0, %polly.loop_exit801 ]
  %280 = mul nuw nsw i64 %polly.indvar796.1, 480
  %281 = trunc i64 %polly.indvar796.1 to i32
  %broadcast.splatinsert1281 = insertelement <4 x i32> poison, i32 %281, i32 0
  %broadcast.splat1282 = shufflevector <4 x i32> %broadcast.splatinsert1281, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1273

vector.body1273:                                  ; preds = %vector.body1273, %polly.loop_header793.1
  %index1275 = phi i64 [ 0, %polly.loop_header793.1 ], [ %index.next1276, %vector.body1273 ]
  %vec.ind1279 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1 ], [ %vec.ind.next1280, %vector.body1273 ]
  %282 = add nuw nsw <4 x i64> %vec.ind1279, <i64 32, i64 32, i64 32, i64 32>
  %283 = trunc <4 x i64> %282 to <4 x i32>
  %284 = mul <4 x i32> %broadcast.splat1282, %283
  %285 = add <4 x i32> %284, <i32 1, i32 1, i32 1, i32 1>
  %286 = urem <4 x i32> %285, <i32 80, i32 80, i32 80, i32 80>
  %287 = sitofp <4 x i32> %286 to <4 x double>
  %288 = fmul fast <4 x double> %287, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %289 = extractelement <4 x i64> %282, i32 0
  %290 = shl i64 %289, 3
  %291 = add i64 %290, %280
  %292 = getelementptr i8, i8* %call1, i64 %291
  %293 = bitcast i8* %292 to <4 x double>*
  store <4 x double> %288, <4 x double>* %293, align 8, !alias.scope !97, !noalias !102
  %index.next1276 = add i64 %index1275, 4
  %vec.ind.next1280 = add <4 x i64> %vec.ind1279, <i64 4, i64 4, i64 4, i64 4>
  %294 = icmp eq i64 %index.next1276, 28
  br i1 %294, label %polly.loop_exit801.1, label %vector.body1273, !llvm.loop !104

polly.loop_exit801.1:                             ; preds = %vector.body1273
  %polly.indvar_next797.1 = add nuw nsw i64 %polly.indvar796.1, 1
  %exitcond849.1.not = icmp eq i64 %polly.indvar_next797.1, 32
  br i1 %exitcond849.1.not, label %polly.loop_header793.1992, label %polly.loop_header793.1

polly.loop_header793.1992:                        ; preds = %polly.loop_exit801.1, %polly.loop_exit801.11003
  %polly.indvar796.1991 = phi i64 [ %polly.indvar_next797.11001, %polly.loop_exit801.11003 ], [ 0, %polly.loop_exit801.1 ]
  %295 = add nuw nsw i64 %polly.indvar796.1991, 32
  %296 = mul nuw nsw i64 %295, 480
  %297 = trunc i64 %295 to i32
  %broadcast.splatinsert1295 = insertelement <4 x i32> poison, i32 %297, i32 0
  %broadcast.splat1296 = shufflevector <4 x i32> %broadcast.splatinsert1295, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1285

vector.body1285:                                  ; preds = %vector.body1285, %polly.loop_header793.1992
  %index1287 = phi i64 [ 0, %polly.loop_header793.1992 ], [ %index.next1288, %vector.body1285 ]
  %vec.ind1293 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793.1992 ], [ %vec.ind.next1294, %vector.body1285 ]
  %298 = mul <4 x i32> %vec.ind1293, %broadcast.splat1296
  %299 = add <4 x i32> %298, <i32 1, i32 1, i32 1, i32 1>
  %300 = urem <4 x i32> %299, <i32 80, i32 80, i32 80, i32 80>
  %301 = sitofp <4 x i32> %300 to <4 x double>
  %302 = fmul fast <4 x double> %301, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %303 = shl i64 %index1287, 3
  %304 = add i64 %303, %296
  %305 = getelementptr i8, i8* %call1, i64 %304
  %306 = bitcast i8* %305 to <4 x double>*
  store <4 x double> %302, <4 x double>* %306, align 8, !alias.scope !97, !noalias !102
  %index.next1288 = add i64 %index1287, 4
  %vec.ind.next1294 = add <4 x i32> %vec.ind1293, <i32 4, i32 4, i32 4, i32 4>
  %307 = icmp eq i64 %index.next1288, 32
  br i1 %307, label %polly.loop_exit801.11003, label %vector.body1285, !llvm.loop !105

polly.loop_exit801.11003:                         ; preds = %vector.body1285
  %polly.indvar_next797.11001 = add nuw nsw i64 %polly.indvar796.1991, 1
  %exitcond849.11002.not = icmp eq i64 %polly.indvar_next797.11001, 32
  br i1 %exitcond849.11002.not, label %polly.loop_header793.1.1, label %polly.loop_header793.1992

polly.loop_header793.1.1:                         ; preds = %polly.loop_exit801.11003, %polly.loop_exit801.1.1
  %polly.indvar796.1.1 = phi i64 [ %polly.indvar_next797.1.1, %polly.loop_exit801.1.1 ], [ 0, %polly.loop_exit801.11003 ]
  %308 = add nuw nsw i64 %polly.indvar796.1.1, 32
  %309 = mul nuw nsw i64 %308, 480
  %310 = trunc i64 %308 to i32
  %broadcast.splatinsert1307 = insertelement <4 x i32> poison, i32 %310, i32 0
  %broadcast.splat1308 = shufflevector <4 x i32> %broadcast.splatinsert1307, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1299

vector.body1299:                                  ; preds = %vector.body1299, %polly.loop_header793.1.1
  %index1301 = phi i64 [ 0, %polly.loop_header793.1.1 ], [ %index.next1302, %vector.body1299 ]
  %vec.ind1305 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1.1 ], [ %vec.ind.next1306, %vector.body1299 ]
  %311 = add nuw nsw <4 x i64> %vec.ind1305, <i64 32, i64 32, i64 32, i64 32>
  %312 = trunc <4 x i64> %311 to <4 x i32>
  %313 = mul <4 x i32> %broadcast.splat1308, %312
  %314 = add <4 x i32> %313, <i32 1, i32 1, i32 1, i32 1>
  %315 = urem <4 x i32> %314, <i32 80, i32 80, i32 80, i32 80>
  %316 = sitofp <4 x i32> %315 to <4 x double>
  %317 = fmul fast <4 x double> %316, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %318 = extractelement <4 x i64> %311, i32 0
  %319 = shl i64 %318, 3
  %320 = add i64 %319, %309
  %321 = getelementptr i8, i8* %call1, i64 %320
  %322 = bitcast i8* %321 to <4 x double>*
  store <4 x double> %317, <4 x double>* %322, align 8, !alias.scope !97, !noalias !102
  %index.next1302 = add i64 %index1301, 4
  %vec.ind.next1306 = add <4 x i64> %vec.ind1305, <i64 4, i64 4, i64 4, i64 4>
  %323 = icmp eq i64 %index.next1302, 28
  br i1 %323, label %polly.loop_exit801.1.1, label %vector.body1299, !llvm.loop !106

polly.loop_exit801.1.1:                           ; preds = %vector.body1299
  %polly.indvar_next797.1.1 = add nuw nsw i64 %polly.indvar796.1.1, 1
  %exitcond849.1.1.not = icmp eq i64 %polly.indvar_next797.1.1, 32
  br i1 %exitcond849.1.1.not, label %polly.loop_header793.2, label %polly.loop_header793.1.1

polly.loop_header793.2:                           ; preds = %polly.loop_exit801.1.1, %polly.loop_exit801.2
  %polly.indvar796.2 = phi i64 [ %polly.indvar_next797.2, %polly.loop_exit801.2 ], [ 0, %polly.loop_exit801.1.1 ]
  %324 = add nuw nsw i64 %polly.indvar796.2, 64
  %325 = mul nuw nsw i64 %324, 480
  %326 = trunc i64 %324 to i32
  %broadcast.splatinsert1321 = insertelement <4 x i32> poison, i32 %326, i32 0
  %broadcast.splat1322 = shufflevector <4 x i32> %broadcast.splatinsert1321, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1311

vector.body1311:                                  ; preds = %vector.body1311, %polly.loop_header793.2
  %index1313 = phi i64 [ 0, %polly.loop_header793.2 ], [ %index.next1314, %vector.body1311 ]
  %vec.ind1319 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793.2 ], [ %vec.ind.next1320, %vector.body1311 ]
  %327 = mul <4 x i32> %vec.ind1319, %broadcast.splat1322
  %328 = add <4 x i32> %327, <i32 1, i32 1, i32 1, i32 1>
  %329 = urem <4 x i32> %328, <i32 80, i32 80, i32 80, i32 80>
  %330 = sitofp <4 x i32> %329 to <4 x double>
  %331 = fmul fast <4 x double> %330, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %332 = shl i64 %index1313, 3
  %333 = add i64 %332, %325
  %334 = getelementptr i8, i8* %call1, i64 %333
  %335 = bitcast i8* %334 to <4 x double>*
  store <4 x double> %331, <4 x double>* %335, align 8, !alias.scope !97, !noalias !102
  %index.next1314 = add i64 %index1313, 4
  %vec.ind.next1320 = add <4 x i32> %vec.ind1319, <i32 4, i32 4, i32 4, i32 4>
  %336 = icmp eq i64 %index.next1314, 32
  br i1 %336, label %polly.loop_exit801.2, label %vector.body1311, !llvm.loop !107

polly.loop_exit801.2:                             ; preds = %vector.body1311
  %polly.indvar_next797.2 = add nuw nsw i64 %polly.indvar796.2, 1
  %exitcond849.2.not = icmp eq i64 %polly.indvar_next797.2, 16
  br i1 %exitcond849.2.not, label %polly.loop_header793.1.2, label %polly.loop_header793.2

polly.loop_header793.1.2:                         ; preds = %polly.loop_exit801.2, %polly.loop_exit801.1.2
  %polly.indvar796.1.2 = phi i64 [ %polly.indvar_next797.1.2, %polly.loop_exit801.1.2 ], [ 0, %polly.loop_exit801.2 ]
  %337 = add nuw nsw i64 %polly.indvar796.1.2, 64
  %338 = mul nuw nsw i64 %337, 480
  %339 = trunc i64 %337 to i32
  %broadcast.splatinsert1333 = insertelement <4 x i32> poison, i32 %339, i32 0
  %broadcast.splat1334 = shufflevector <4 x i32> %broadcast.splatinsert1333, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1325

vector.body1325:                                  ; preds = %vector.body1325, %polly.loop_header793.1.2
  %index1327 = phi i64 [ 0, %polly.loop_header793.1.2 ], [ %index.next1328, %vector.body1325 ]
  %vec.ind1331 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1.2 ], [ %vec.ind.next1332, %vector.body1325 ]
  %340 = add nuw nsw <4 x i64> %vec.ind1331, <i64 32, i64 32, i64 32, i64 32>
  %341 = trunc <4 x i64> %340 to <4 x i32>
  %342 = mul <4 x i32> %broadcast.splat1334, %341
  %343 = add <4 x i32> %342, <i32 1, i32 1, i32 1, i32 1>
  %344 = urem <4 x i32> %343, <i32 80, i32 80, i32 80, i32 80>
  %345 = sitofp <4 x i32> %344 to <4 x double>
  %346 = fmul fast <4 x double> %345, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %347 = extractelement <4 x i64> %340, i32 0
  %348 = shl i64 %347, 3
  %349 = add i64 %348, %338
  %350 = getelementptr i8, i8* %call1, i64 %349
  %351 = bitcast i8* %350 to <4 x double>*
  store <4 x double> %346, <4 x double>* %351, align 8, !alias.scope !97, !noalias !102
  %index.next1328 = add i64 %index1327, 4
  %vec.ind.next1332 = add <4 x i64> %vec.ind1331, <i64 4, i64 4, i64 4, i64 4>
  %352 = icmp eq i64 %index.next1328, 28
  br i1 %352, label %polly.loop_exit801.1.2, label %vector.body1325, !llvm.loop !108

polly.loop_exit801.1.2:                           ; preds = %vector.body1325
  %polly.indvar_next797.1.2 = add nuw nsw i64 %polly.indvar796.1.2, 1
  %exitcond849.1.2.not = icmp eq i64 %polly.indvar_next797.1.2, 16
  br i1 %exitcond849.1.2.not, label %init_array.exit, label %polly.loop_header793.1.2

polly.loop_header767.1:                           ; preds = %polly.loop_exit775, %polly.loop_exit775.1
  %polly.indvar770.1 = phi i64 [ %polly.indvar_next771.1, %polly.loop_exit775.1 ], [ 0, %polly.loop_exit775 ]
  %353 = mul nuw nsw i64 %polly.indvar770.1, 480
  %354 = trunc i64 %polly.indvar770.1 to i32
  %broadcast.splatinsert1203 = insertelement <4 x i32> poison, i32 %354, i32 0
  %broadcast.splat1204 = shufflevector <4 x i32> %broadcast.splatinsert1203, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1195

vector.body1195:                                  ; preds = %vector.body1195, %polly.loop_header767.1
  %index1197 = phi i64 [ 0, %polly.loop_header767.1 ], [ %index.next1198, %vector.body1195 ]
  %vec.ind1201 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header767.1 ], [ %vec.ind.next1202, %vector.body1195 ]
  %355 = add nuw nsw <4 x i64> %vec.ind1201, <i64 32, i64 32, i64 32, i64 32>
  %356 = trunc <4 x i64> %355 to <4 x i32>
  %357 = mul <4 x i32> %broadcast.splat1204, %356
  %358 = add <4 x i32> %357, <i32 2, i32 2, i32 2, i32 2>
  %359 = urem <4 x i32> %358, <i32 60, i32 60, i32 60, i32 60>
  %360 = sitofp <4 x i32> %359 to <4 x double>
  %361 = fmul fast <4 x double> %360, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %362 = extractelement <4 x i64> %355, i32 0
  %363 = shl i64 %362, 3
  %364 = add i64 %363, %353
  %365 = getelementptr i8, i8* %call2, i64 %364
  %366 = bitcast i8* %365 to <4 x double>*
  store <4 x double> %361, <4 x double>* %366, align 8, !alias.scope !98, !noalias !100
  %index.next1198 = add i64 %index1197, 4
  %vec.ind.next1202 = add <4 x i64> %vec.ind1201, <i64 4, i64 4, i64 4, i64 4>
  %367 = icmp eq i64 %index.next1198, 28
  br i1 %367, label %polly.loop_exit775.1, label %vector.body1195, !llvm.loop !109

polly.loop_exit775.1:                             ; preds = %vector.body1195
  %polly.indvar_next771.1 = add nuw nsw i64 %polly.indvar770.1, 1
  %exitcond855.1.not = icmp eq i64 %polly.indvar_next771.1, 32
  br i1 %exitcond855.1.not, label %polly.loop_header767.11006, label %polly.loop_header767.1

polly.loop_header767.11006:                       ; preds = %polly.loop_exit775.1, %polly.loop_exit775.11017
  %polly.indvar770.11005 = phi i64 [ %polly.indvar_next771.11015, %polly.loop_exit775.11017 ], [ 0, %polly.loop_exit775.1 ]
  %368 = add nuw nsw i64 %polly.indvar770.11005, 32
  %369 = mul nuw nsw i64 %368, 480
  %370 = trunc i64 %368 to i32
  %broadcast.splatinsert1217 = insertelement <4 x i32> poison, i32 %370, i32 0
  %broadcast.splat1218 = shufflevector <4 x i32> %broadcast.splatinsert1217, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1207

vector.body1207:                                  ; preds = %vector.body1207, %polly.loop_header767.11006
  %index1209 = phi i64 [ 0, %polly.loop_header767.11006 ], [ %index.next1210, %vector.body1207 ]
  %vec.ind1215 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header767.11006 ], [ %vec.ind.next1216, %vector.body1207 ]
  %371 = mul <4 x i32> %vec.ind1215, %broadcast.splat1218
  %372 = add <4 x i32> %371, <i32 2, i32 2, i32 2, i32 2>
  %373 = urem <4 x i32> %372, <i32 60, i32 60, i32 60, i32 60>
  %374 = sitofp <4 x i32> %373 to <4 x double>
  %375 = fmul fast <4 x double> %374, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %376 = shl i64 %index1209, 3
  %377 = add i64 %376, %369
  %378 = getelementptr i8, i8* %call2, i64 %377
  %379 = bitcast i8* %378 to <4 x double>*
  store <4 x double> %375, <4 x double>* %379, align 8, !alias.scope !98, !noalias !100
  %index.next1210 = add i64 %index1209, 4
  %vec.ind.next1216 = add <4 x i32> %vec.ind1215, <i32 4, i32 4, i32 4, i32 4>
  %380 = icmp eq i64 %index.next1210, 32
  br i1 %380, label %polly.loop_exit775.11017, label %vector.body1207, !llvm.loop !110

polly.loop_exit775.11017:                         ; preds = %vector.body1207
  %polly.indvar_next771.11015 = add nuw nsw i64 %polly.indvar770.11005, 1
  %exitcond855.11016.not = icmp eq i64 %polly.indvar_next771.11015, 32
  br i1 %exitcond855.11016.not, label %polly.loop_header767.1.1, label %polly.loop_header767.11006

polly.loop_header767.1.1:                         ; preds = %polly.loop_exit775.11017, %polly.loop_exit775.1.1
  %polly.indvar770.1.1 = phi i64 [ %polly.indvar_next771.1.1, %polly.loop_exit775.1.1 ], [ 0, %polly.loop_exit775.11017 ]
  %381 = add nuw nsw i64 %polly.indvar770.1.1, 32
  %382 = mul nuw nsw i64 %381, 480
  %383 = trunc i64 %381 to i32
  %broadcast.splatinsert1229 = insertelement <4 x i32> poison, i32 %383, i32 0
  %broadcast.splat1230 = shufflevector <4 x i32> %broadcast.splatinsert1229, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1221

vector.body1221:                                  ; preds = %vector.body1221, %polly.loop_header767.1.1
  %index1223 = phi i64 [ 0, %polly.loop_header767.1.1 ], [ %index.next1224, %vector.body1221 ]
  %vec.ind1227 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header767.1.1 ], [ %vec.ind.next1228, %vector.body1221 ]
  %384 = add nuw nsw <4 x i64> %vec.ind1227, <i64 32, i64 32, i64 32, i64 32>
  %385 = trunc <4 x i64> %384 to <4 x i32>
  %386 = mul <4 x i32> %broadcast.splat1230, %385
  %387 = add <4 x i32> %386, <i32 2, i32 2, i32 2, i32 2>
  %388 = urem <4 x i32> %387, <i32 60, i32 60, i32 60, i32 60>
  %389 = sitofp <4 x i32> %388 to <4 x double>
  %390 = fmul fast <4 x double> %389, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %391 = extractelement <4 x i64> %384, i32 0
  %392 = shl i64 %391, 3
  %393 = add i64 %392, %382
  %394 = getelementptr i8, i8* %call2, i64 %393
  %395 = bitcast i8* %394 to <4 x double>*
  store <4 x double> %390, <4 x double>* %395, align 8, !alias.scope !98, !noalias !100
  %index.next1224 = add i64 %index1223, 4
  %vec.ind.next1228 = add <4 x i64> %vec.ind1227, <i64 4, i64 4, i64 4, i64 4>
  %396 = icmp eq i64 %index.next1224, 28
  br i1 %396, label %polly.loop_exit775.1.1, label %vector.body1221, !llvm.loop !111

polly.loop_exit775.1.1:                           ; preds = %vector.body1221
  %polly.indvar_next771.1.1 = add nuw nsw i64 %polly.indvar770.1.1, 1
  %exitcond855.1.1.not = icmp eq i64 %polly.indvar_next771.1.1, 32
  br i1 %exitcond855.1.1.not, label %polly.loop_header767.2, label %polly.loop_header767.1.1

polly.loop_header767.2:                           ; preds = %polly.loop_exit775.1.1, %polly.loop_exit775.2
  %polly.indvar770.2 = phi i64 [ %polly.indvar_next771.2, %polly.loop_exit775.2 ], [ 0, %polly.loop_exit775.1.1 ]
  %397 = add nuw nsw i64 %polly.indvar770.2, 64
  %398 = mul nuw nsw i64 %397, 480
  %399 = trunc i64 %397 to i32
  %broadcast.splatinsert1243 = insertelement <4 x i32> poison, i32 %399, i32 0
  %broadcast.splat1244 = shufflevector <4 x i32> %broadcast.splatinsert1243, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1233

vector.body1233:                                  ; preds = %vector.body1233, %polly.loop_header767.2
  %index1235 = phi i64 [ 0, %polly.loop_header767.2 ], [ %index.next1236, %vector.body1233 ]
  %vec.ind1241 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header767.2 ], [ %vec.ind.next1242, %vector.body1233 ]
  %400 = mul <4 x i32> %vec.ind1241, %broadcast.splat1244
  %401 = add <4 x i32> %400, <i32 2, i32 2, i32 2, i32 2>
  %402 = urem <4 x i32> %401, <i32 60, i32 60, i32 60, i32 60>
  %403 = sitofp <4 x i32> %402 to <4 x double>
  %404 = fmul fast <4 x double> %403, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %405 = shl i64 %index1235, 3
  %406 = add i64 %405, %398
  %407 = getelementptr i8, i8* %call2, i64 %406
  %408 = bitcast i8* %407 to <4 x double>*
  store <4 x double> %404, <4 x double>* %408, align 8, !alias.scope !98, !noalias !100
  %index.next1236 = add i64 %index1235, 4
  %vec.ind.next1242 = add <4 x i32> %vec.ind1241, <i32 4, i32 4, i32 4, i32 4>
  %409 = icmp eq i64 %index.next1236, 32
  br i1 %409, label %polly.loop_exit775.2, label %vector.body1233, !llvm.loop !112

polly.loop_exit775.2:                             ; preds = %vector.body1233
  %polly.indvar_next771.2 = add nuw nsw i64 %polly.indvar770.2, 1
  %exitcond855.2.not = icmp eq i64 %polly.indvar_next771.2, 16
  br i1 %exitcond855.2.not, label %polly.loop_header767.1.2, label %polly.loop_header767.2

polly.loop_header767.1.2:                         ; preds = %polly.loop_exit775.2, %polly.loop_exit775.1.2
  %polly.indvar770.1.2 = phi i64 [ %polly.indvar_next771.1.2, %polly.loop_exit775.1.2 ], [ 0, %polly.loop_exit775.2 ]
  %410 = add nuw nsw i64 %polly.indvar770.1.2, 64
  %411 = mul nuw nsw i64 %410, 480
  %412 = trunc i64 %410 to i32
  %broadcast.splatinsert1255 = insertelement <4 x i32> poison, i32 %412, i32 0
  %broadcast.splat1256 = shufflevector <4 x i32> %broadcast.splatinsert1255, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1247

vector.body1247:                                  ; preds = %vector.body1247, %polly.loop_header767.1.2
  %index1249 = phi i64 [ 0, %polly.loop_header767.1.2 ], [ %index.next1250, %vector.body1247 ]
  %vec.ind1253 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header767.1.2 ], [ %vec.ind.next1254, %vector.body1247 ]
  %413 = add nuw nsw <4 x i64> %vec.ind1253, <i64 32, i64 32, i64 32, i64 32>
  %414 = trunc <4 x i64> %413 to <4 x i32>
  %415 = mul <4 x i32> %broadcast.splat1256, %414
  %416 = add <4 x i32> %415, <i32 2, i32 2, i32 2, i32 2>
  %417 = urem <4 x i32> %416, <i32 60, i32 60, i32 60, i32 60>
  %418 = sitofp <4 x i32> %417 to <4 x double>
  %419 = fmul fast <4 x double> %418, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %420 = extractelement <4 x i64> %413, i32 0
  %421 = shl i64 %420, 3
  %422 = add i64 %421, %411
  %423 = getelementptr i8, i8* %call2, i64 %422
  %424 = bitcast i8* %423 to <4 x double>*
  store <4 x double> %419, <4 x double>* %424, align 8, !alias.scope !98, !noalias !100
  %index.next1250 = add i64 %index1249, 4
  %vec.ind.next1254 = add <4 x i64> %vec.ind1253, <i64 4, i64 4, i64 4, i64 4>
  %425 = icmp eq i64 %index.next1250, 28
  br i1 %425, label %polly.loop_exit775.1.2, label %vector.body1247, !llvm.loop !113

polly.loop_exit775.1.2:                           ; preds = %vector.body1247
  %polly.indvar_next771.1.2 = add nuw nsw i64 %polly.indvar770.1.2, 1
  %exitcond855.1.2.not = icmp eq i64 %polly.indvar_next771.1.2, 16
  br i1 %exitcond855.1.2.not, label %polly.loop_header793, label %polly.loop_header767.1.2

polly.loop_header740.1:                           ; preds = %polly.loop_exit748, %polly.loop_exit748.1
  %polly.indvar743.1 = phi i64 [ %polly.indvar_next744.1, %polly.loop_exit748.1 ], [ 0, %polly.loop_exit748 ]
  %426 = mul nuw nsw i64 %polly.indvar743.1, 640
  %427 = trunc i64 %polly.indvar743.1 to i32
  %broadcast.splatinsert1089 = insertelement <4 x i32> poison, i32 %427, i32 0
  %broadcast.splat1090 = shufflevector <4 x i32> %broadcast.splatinsert1089, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1081

vector.body1081:                                  ; preds = %vector.body1081, %polly.loop_header740.1
  %index1083 = phi i64 [ 0, %polly.loop_header740.1 ], [ %index.next1084, %vector.body1081 ]
  %vec.ind1087 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.1 ], [ %vec.ind.next1088, %vector.body1081 ]
  %428 = add nuw nsw <4 x i64> %vec.ind1087, <i64 32, i64 32, i64 32, i64 32>
  %429 = trunc <4 x i64> %428 to <4 x i32>
  %430 = mul <4 x i32> %broadcast.splat1090, %429
  %431 = add <4 x i32> %430, <i32 3, i32 3, i32 3, i32 3>
  %432 = urem <4 x i32> %431, <i32 80, i32 80, i32 80, i32 80>
  %433 = sitofp <4 x i32> %432 to <4 x double>
  %434 = fmul fast <4 x double> %433, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %435 = extractelement <4 x i64> %428, i32 0
  %436 = shl i64 %435, 3
  %437 = add nuw nsw i64 %436, %426
  %438 = getelementptr i8, i8* %call, i64 %437
  %439 = bitcast i8* %438 to <4 x double>*
  store <4 x double> %434, <4 x double>* %439, align 8, !alias.scope !94, !noalias !96
  %index.next1084 = add i64 %index1083, 4
  %vec.ind.next1088 = add <4 x i64> %vec.ind1087, <i64 4, i64 4, i64 4, i64 4>
  %440 = icmp eq i64 %index.next1084, 32
  br i1 %440, label %polly.loop_exit748.1, label %vector.body1081, !llvm.loop !114

polly.loop_exit748.1:                             ; preds = %vector.body1081
  %polly.indvar_next744.1 = add nuw nsw i64 %polly.indvar743.1, 1
  %exitcond864.1.not = icmp eq i64 %polly.indvar_next744.1, 32
  br i1 %exitcond864.1.not, label %polly.loop_header740.2, label %polly.loop_header740.1

polly.loop_header740.2:                           ; preds = %polly.loop_exit748.1, %polly.loop_exit748.2
  %polly.indvar743.2 = phi i64 [ %polly.indvar_next744.2, %polly.loop_exit748.2 ], [ 0, %polly.loop_exit748.1 ]
  %441 = mul nuw nsw i64 %polly.indvar743.2, 640
  %442 = trunc i64 %polly.indvar743.2 to i32
  %broadcast.splatinsert1101 = insertelement <4 x i32> poison, i32 %442, i32 0
  %broadcast.splat1102 = shufflevector <4 x i32> %broadcast.splatinsert1101, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1093

vector.body1093:                                  ; preds = %vector.body1093, %polly.loop_header740.2
  %index1095 = phi i64 [ 0, %polly.loop_header740.2 ], [ %index.next1096, %vector.body1093 ]
  %vec.ind1099 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.2 ], [ %vec.ind.next1100, %vector.body1093 ]
  %443 = add nuw nsw <4 x i64> %vec.ind1099, <i64 64, i64 64, i64 64, i64 64>
  %444 = trunc <4 x i64> %443 to <4 x i32>
  %445 = mul <4 x i32> %broadcast.splat1102, %444
  %446 = add <4 x i32> %445, <i32 3, i32 3, i32 3, i32 3>
  %447 = urem <4 x i32> %446, <i32 80, i32 80, i32 80, i32 80>
  %448 = sitofp <4 x i32> %447 to <4 x double>
  %449 = fmul fast <4 x double> %448, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %450 = extractelement <4 x i64> %443, i32 0
  %451 = shl i64 %450, 3
  %452 = add nuw nsw i64 %451, %441
  %453 = getelementptr i8, i8* %call, i64 %452
  %454 = bitcast i8* %453 to <4 x double>*
  store <4 x double> %449, <4 x double>* %454, align 8, !alias.scope !94, !noalias !96
  %index.next1096 = add i64 %index1095, 4
  %vec.ind.next1100 = add <4 x i64> %vec.ind1099, <i64 4, i64 4, i64 4, i64 4>
  %455 = icmp eq i64 %index.next1096, 16
  br i1 %455, label %polly.loop_exit748.2, label %vector.body1093, !llvm.loop !115

polly.loop_exit748.2:                             ; preds = %vector.body1093
  %polly.indvar_next744.2 = add nuw nsw i64 %polly.indvar743.2, 1
  %exitcond864.2.not = icmp eq i64 %polly.indvar_next744.2, 32
  br i1 %exitcond864.2.not, label %polly.loop_header740.11020, label %polly.loop_header740.2

polly.loop_header740.11020:                       ; preds = %polly.loop_exit748.2, %polly.loop_exit748.11031
  %polly.indvar743.11019 = phi i64 [ %polly.indvar_next744.11029, %polly.loop_exit748.11031 ], [ 0, %polly.loop_exit748.2 ]
  %456 = add nuw nsw i64 %polly.indvar743.11019, 32
  %457 = mul nuw nsw i64 %456, 640
  %458 = trunc i64 %456 to i32
  %broadcast.splatinsert1115 = insertelement <4 x i32> poison, i32 %458, i32 0
  %broadcast.splat1116 = shufflevector <4 x i32> %broadcast.splatinsert1115, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1105

vector.body1105:                                  ; preds = %vector.body1105, %polly.loop_header740.11020
  %index1107 = phi i64 [ 0, %polly.loop_header740.11020 ], [ %index.next1108, %vector.body1105 ]
  %vec.ind1113 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header740.11020 ], [ %vec.ind.next1114, %vector.body1105 ]
  %459 = mul <4 x i32> %vec.ind1113, %broadcast.splat1116
  %460 = add <4 x i32> %459, <i32 3, i32 3, i32 3, i32 3>
  %461 = urem <4 x i32> %460, <i32 80, i32 80, i32 80, i32 80>
  %462 = sitofp <4 x i32> %461 to <4 x double>
  %463 = fmul fast <4 x double> %462, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %464 = shl i64 %index1107, 3
  %465 = add nuw nsw i64 %464, %457
  %466 = getelementptr i8, i8* %call, i64 %465
  %467 = bitcast i8* %466 to <4 x double>*
  store <4 x double> %463, <4 x double>* %467, align 8, !alias.scope !94, !noalias !96
  %index.next1108 = add i64 %index1107, 4
  %vec.ind.next1114 = add <4 x i32> %vec.ind1113, <i32 4, i32 4, i32 4, i32 4>
  %468 = icmp eq i64 %index.next1108, 32
  br i1 %468, label %polly.loop_exit748.11031, label %vector.body1105, !llvm.loop !116

polly.loop_exit748.11031:                         ; preds = %vector.body1105
  %polly.indvar_next744.11029 = add nuw nsw i64 %polly.indvar743.11019, 1
  %exitcond864.11030.not = icmp eq i64 %polly.indvar_next744.11029, 32
  br i1 %exitcond864.11030.not, label %polly.loop_header740.1.1, label %polly.loop_header740.11020

polly.loop_header740.1.1:                         ; preds = %polly.loop_exit748.11031, %polly.loop_exit748.1.1
  %polly.indvar743.1.1 = phi i64 [ %polly.indvar_next744.1.1, %polly.loop_exit748.1.1 ], [ 0, %polly.loop_exit748.11031 ]
  %469 = add nuw nsw i64 %polly.indvar743.1.1, 32
  %470 = mul nuw nsw i64 %469, 640
  %471 = trunc i64 %469 to i32
  %broadcast.splatinsert1127 = insertelement <4 x i32> poison, i32 %471, i32 0
  %broadcast.splat1128 = shufflevector <4 x i32> %broadcast.splatinsert1127, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1119

vector.body1119:                                  ; preds = %vector.body1119, %polly.loop_header740.1.1
  %index1121 = phi i64 [ 0, %polly.loop_header740.1.1 ], [ %index.next1122, %vector.body1119 ]
  %vec.ind1125 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.1.1 ], [ %vec.ind.next1126, %vector.body1119 ]
  %472 = add nuw nsw <4 x i64> %vec.ind1125, <i64 32, i64 32, i64 32, i64 32>
  %473 = trunc <4 x i64> %472 to <4 x i32>
  %474 = mul <4 x i32> %broadcast.splat1128, %473
  %475 = add <4 x i32> %474, <i32 3, i32 3, i32 3, i32 3>
  %476 = urem <4 x i32> %475, <i32 80, i32 80, i32 80, i32 80>
  %477 = sitofp <4 x i32> %476 to <4 x double>
  %478 = fmul fast <4 x double> %477, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %479 = extractelement <4 x i64> %472, i32 0
  %480 = shl i64 %479, 3
  %481 = add nuw nsw i64 %480, %470
  %482 = getelementptr i8, i8* %call, i64 %481
  %483 = bitcast i8* %482 to <4 x double>*
  store <4 x double> %478, <4 x double>* %483, align 8, !alias.scope !94, !noalias !96
  %index.next1122 = add i64 %index1121, 4
  %vec.ind.next1126 = add <4 x i64> %vec.ind1125, <i64 4, i64 4, i64 4, i64 4>
  %484 = icmp eq i64 %index.next1122, 32
  br i1 %484, label %polly.loop_exit748.1.1, label %vector.body1119, !llvm.loop !117

polly.loop_exit748.1.1:                           ; preds = %vector.body1119
  %polly.indvar_next744.1.1 = add nuw nsw i64 %polly.indvar743.1.1, 1
  %exitcond864.1.1.not = icmp eq i64 %polly.indvar_next744.1.1, 32
  br i1 %exitcond864.1.1.not, label %polly.loop_header740.2.1, label %polly.loop_header740.1.1

polly.loop_header740.2.1:                         ; preds = %polly.loop_exit748.1.1, %polly.loop_exit748.2.1
  %polly.indvar743.2.1 = phi i64 [ %polly.indvar_next744.2.1, %polly.loop_exit748.2.1 ], [ 0, %polly.loop_exit748.1.1 ]
  %485 = add nuw nsw i64 %polly.indvar743.2.1, 32
  %486 = mul nuw nsw i64 %485, 640
  %487 = trunc i64 %485 to i32
  %broadcast.splatinsert1139 = insertelement <4 x i32> poison, i32 %487, i32 0
  %broadcast.splat1140 = shufflevector <4 x i32> %broadcast.splatinsert1139, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1131

vector.body1131:                                  ; preds = %vector.body1131, %polly.loop_header740.2.1
  %index1133 = phi i64 [ 0, %polly.loop_header740.2.1 ], [ %index.next1134, %vector.body1131 ]
  %vec.ind1137 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.2.1 ], [ %vec.ind.next1138, %vector.body1131 ]
  %488 = add nuw nsw <4 x i64> %vec.ind1137, <i64 64, i64 64, i64 64, i64 64>
  %489 = trunc <4 x i64> %488 to <4 x i32>
  %490 = mul <4 x i32> %broadcast.splat1140, %489
  %491 = add <4 x i32> %490, <i32 3, i32 3, i32 3, i32 3>
  %492 = urem <4 x i32> %491, <i32 80, i32 80, i32 80, i32 80>
  %493 = sitofp <4 x i32> %492 to <4 x double>
  %494 = fmul fast <4 x double> %493, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %495 = extractelement <4 x i64> %488, i32 0
  %496 = shl i64 %495, 3
  %497 = add nuw nsw i64 %496, %486
  %498 = getelementptr i8, i8* %call, i64 %497
  %499 = bitcast i8* %498 to <4 x double>*
  store <4 x double> %494, <4 x double>* %499, align 8, !alias.scope !94, !noalias !96
  %index.next1134 = add i64 %index1133, 4
  %vec.ind.next1138 = add <4 x i64> %vec.ind1137, <i64 4, i64 4, i64 4, i64 4>
  %500 = icmp eq i64 %index.next1134, 16
  br i1 %500, label %polly.loop_exit748.2.1, label %vector.body1131, !llvm.loop !118

polly.loop_exit748.2.1:                           ; preds = %vector.body1131
  %polly.indvar_next744.2.1 = add nuw nsw i64 %polly.indvar743.2.1, 1
  %exitcond864.2.1.not = icmp eq i64 %polly.indvar_next744.2.1, 32
  br i1 %exitcond864.2.1.not, label %polly.loop_header740.21034, label %polly.loop_header740.2.1

polly.loop_header740.21034:                       ; preds = %polly.loop_exit748.2.1, %polly.loop_exit748.21045
  %polly.indvar743.21033 = phi i64 [ %polly.indvar_next744.21043, %polly.loop_exit748.21045 ], [ 0, %polly.loop_exit748.2.1 ]
  %501 = add nuw nsw i64 %polly.indvar743.21033, 64
  %502 = mul nuw nsw i64 %501, 640
  %503 = trunc i64 %501 to i32
  %broadcast.splatinsert1153 = insertelement <4 x i32> poison, i32 %503, i32 0
  %broadcast.splat1154 = shufflevector <4 x i32> %broadcast.splatinsert1153, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1143

vector.body1143:                                  ; preds = %vector.body1143, %polly.loop_header740.21034
  %index1145 = phi i64 [ 0, %polly.loop_header740.21034 ], [ %index.next1146, %vector.body1143 ]
  %vec.ind1151 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header740.21034 ], [ %vec.ind.next1152, %vector.body1143 ]
  %504 = mul <4 x i32> %vec.ind1151, %broadcast.splat1154
  %505 = add <4 x i32> %504, <i32 3, i32 3, i32 3, i32 3>
  %506 = urem <4 x i32> %505, <i32 80, i32 80, i32 80, i32 80>
  %507 = sitofp <4 x i32> %506 to <4 x double>
  %508 = fmul fast <4 x double> %507, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %509 = shl i64 %index1145, 3
  %510 = add nuw nsw i64 %509, %502
  %511 = getelementptr i8, i8* %call, i64 %510
  %512 = bitcast i8* %511 to <4 x double>*
  store <4 x double> %508, <4 x double>* %512, align 8, !alias.scope !94, !noalias !96
  %index.next1146 = add i64 %index1145, 4
  %vec.ind.next1152 = add <4 x i32> %vec.ind1151, <i32 4, i32 4, i32 4, i32 4>
  %513 = icmp eq i64 %index.next1146, 32
  br i1 %513, label %polly.loop_exit748.21045, label %vector.body1143, !llvm.loop !119

polly.loop_exit748.21045:                         ; preds = %vector.body1143
  %polly.indvar_next744.21043 = add nuw nsw i64 %polly.indvar743.21033, 1
  %exitcond864.21044.not = icmp eq i64 %polly.indvar_next744.21043, 16
  br i1 %exitcond864.21044.not, label %polly.loop_header740.1.2, label %polly.loop_header740.21034

polly.loop_header740.1.2:                         ; preds = %polly.loop_exit748.21045, %polly.loop_exit748.1.2
  %polly.indvar743.1.2 = phi i64 [ %polly.indvar_next744.1.2, %polly.loop_exit748.1.2 ], [ 0, %polly.loop_exit748.21045 ]
  %514 = add nuw nsw i64 %polly.indvar743.1.2, 64
  %515 = mul nuw nsw i64 %514, 640
  %516 = trunc i64 %514 to i32
  %broadcast.splatinsert1165 = insertelement <4 x i32> poison, i32 %516, i32 0
  %broadcast.splat1166 = shufflevector <4 x i32> %broadcast.splatinsert1165, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1157

vector.body1157:                                  ; preds = %vector.body1157, %polly.loop_header740.1.2
  %index1159 = phi i64 [ 0, %polly.loop_header740.1.2 ], [ %index.next1160, %vector.body1157 ]
  %vec.ind1163 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.1.2 ], [ %vec.ind.next1164, %vector.body1157 ]
  %517 = add nuw nsw <4 x i64> %vec.ind1163, <i64 32, i64 32, i64 32, i64 32>
  %518 = trunc <4 x i64> %517 to <4 x i32>
  %519 = mul <4 x i32> %broadcast.splat1166, %518
  %520 = add <4 x i32> %519, <i32 3, i32 3, i32 3, i32 3>
  %521 = urem <4 x i32> %520, <i32 80, i32 80, i32 80, i32 80>
  %522 = sitofp <4 x i32> %521 to <4 x double>
  %523 = fmul fast <4 x double> %522, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %524 = extractelement <4 x i64> %517, i32 0
  %525 = shl i64 %524, 3
  %526 = add nuw nsw i64 %525, %515
  %527 = getelementptr i8, i8* %call, i64 %526
  %528 = bitcast i8* %527 to <4 x double>*
  store <4 x double> %523, <4 x double>* %528, align 8, !alias.scope !94, !noalias !96
  %index.next1160 = add i64 %index1159, 4
  %vec.ind.next1164 = add <4 x i64> %vec.ind1163, <i64 4, i64 4, i64 4, i64 4>
  %529 = icmp eq i64 %index.next1160, 32
  br i1 %529, label %polly.loop_exit748.1.2, label %vector.body1157, !llvm.loop !120

polly.loop_exit748.1.2:                           ; preds = %vector.body1157
  %polly.indvar_next744.1.2 = add nuw nsw i64 %polly.indvar743.1.2, 1
  %exitcond864.1.2.not = icmp eq i64 %polly.indvar_next744.1.2, 16
  br i1 %exitcond864.1.2.not, label %polly.loop_header740.2.2, label %polly.loop_header740.1.2

polly.loop_header740.2.2:                         ; preds = %polly.loop_exit748.1.2, %polly.loop_exit748.2.2
  %polly.indvar743.2.2 = phi i64 [ %polly.indvar_next744.2.2, %polly.loop_exit748.2.2 ], [ 0, %polly.loop_exit748.1.2 ]
  %530 = add nuw nsw i64 %polly.indvar743.2.2, 64
  %531 = mul nuw nsw i64 %530, 640
  %532 = trunc i64 %530 to i32
  %broadcast.splatinsert1177 = insertelement <4 x i32> poison, i32 %532, i32 0
  %broadcast.splat1178 = shufflevector <4 x i32> %broadcast.splatinsert1177, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1169

vector.body1169:                                  ; preds = %vector.body1169, %polly.loop_header740.2.2
  %index1171 = phi i64 [ 0, %polly.loop_header740.2.2 ], [ %index.next1172, %vector.body1169 ]
  %vec.ind1175 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.2.2 ], [ %vec.ind.next1176, %vector.body1169 ]
  %533 = add nuw nsw <4 x i64> %vec.ind1175, <i64 64, i64 64, i64 64, i64 64>
  %534 = trunc <4 x i64> %533 to <4 x i32>
  %535 = mul <4 x i32> %broadcast.splat1178, %534
  %536 = add <4 x i32> %535, <i32 3, i32 3, i32 3, i32 3>
  %537 = urem <4 x i32> %536, <i32 80, i32 80, i32 80, i32 80>
  %538 = sitofp <4 x i32> %537 to <4 x double>
  %539 = fmul fast <4 x double> %538, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %540 = extractelement <4 x i64> %533, i32 0
  %541 = shl i64 %540, 3
  %542 = add nuw nsw i64 %541, %531
  %543 = getelementptr i8, i8* %call, i64 %542
  %544 = bitcast i8* %543 to <4 x double>*
  store <4 x double> %539, <4 x double>* %544, align 8, !alias.scope !94, !noalias !96
  %index.next1172 = add i64 %index1171, 4
  %vec.ind.next1176 = add <4 x i64> %vec.ind1175, <i64 4, i64 4, i64 4, i64 4>
  %545 = icmp eq i64 %index.next1172, 16
  br i1 %545, label %polly.loop_exit748.2.2, label %vector.body1169, !llvm.loop !121

polly.loop_exit748.2.2:                           ; preds = %vector.body1169
  %polly.indvar_next744.2.2 = add nuw nsw i64 %polly.indvar743.2.2, 1
  %exitcond864.2.2.not = icmp eq i64 %polly.indvar_next744.2.2, 16
  br i1 %exitcond864.2.2.not, label %polly.loop_header767, label %polly.loop_header740.2.2
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
!21 = distinct !{!"B"}
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 32}
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
!39 = distinct !{!39, !12, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !45, !46, !52}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.size", i32 100}
!46 = !{!"llvm.loop.tile.followup_floor", !47}
!47 = distinct !{!47, !12, !23, !48, !49, !50, !51}
!48 = !{!"llvm.loop.id", !"i1"}
!49 = !{!"llvm.data.pack.enable", i1 true}
!50 = !{!"llvm.data.pack.array", !21}
!51 = !{!"llvm.data.pack.allocate", !"malloc"}
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
!68 = distinct !{!68, !64, !"polly.alias.scope.Packed_MemRef_call2"}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !71, !13}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!63, !66, !68}
!73 = !{!63, !67, !68}
!74 = distinct !{!74, !75, !"polly.alias.scope.MemRef_call"}
!75 = distinct !{!75, !"polly.alias.scope.domain"}
!76 = !{!77, !78, !79}
!77 = distinct !{!77, !75, !"polly.alias.scope.MemRef_call1"}
!78 = distinct !{!78, !75, !"polly.alias.scope.MemRef_call2"}
!79 = distinct !{!79, !75, !"polly.alias.scope.Packed_MemRef_call2"}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !71, !13}
!82 = !{!74, !77, !79}
!83 = !{!74, !78, !79}
!84 = distinct !{!84, !85, !"polly.alias.scope.MemRef_call"}
!85 = distinct !{!85, !"polly.alias.scope.domain"}
!86 = !{!87, !88, !89}
!87 = distinct !{!87, !85, !"polly.alias.scope.MemRef_call1"}
!88 = distinct !{!88, !85, !"polly.alias.scope.MemRef_call2"}
!89 = distinct !{!89, !85, !"polly.alias.scope.Packed_MemRef_call2"}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !71, !13}
!92 = !{!84, !87, !89}
!93 = !{!84, !88, !89}
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
