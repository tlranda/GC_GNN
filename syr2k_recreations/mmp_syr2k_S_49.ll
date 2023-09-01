; ModuleID = 'syr2k_recreations//mmp_syr2k_S_49.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_49.c"
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
  %call748 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1609 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1609, %call2
  %polly.access.call2629 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2629, %call1
  %2 = or i1 %0, %1
  %polly.access.call649 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call649, %call2
  %4 = icmp ule i8* %polly.access.call2629, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call649, %call1
  %8 = icmp ule i8* %polly.access.call1609, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header734, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv7.i, i64 %index1057
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit795.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start431, label %for.cond1.preheader.i45

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
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i, i64 %index1339
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
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit563.1.2
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start264, label %for.cond1.preheader.i54

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
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i52, i64 %index1362
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1366 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1366, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1363 = add i64 %index1362, 4
  %57 = icmp eq i64 %index.next1363, %n.vec1361
  br i1 %57, label %middle.block1355, label %vector.body1357, !llvm.loop !54

middle.block1355:                                 ; preds = %vector.body1357
  %cmp.n1365 = icmp eq i64 %indvars.iv21.i52, %n.vec1361
  br i1 %cmp.n1365, label %for.inc6.i63, label %for.body3.i60.preheader1408

for.body3.i60.preheader1408:                      ; preds = %for.body3.i60.preheader, %middle.block1355
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1361, %middle.block1355 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1408, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1408 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit396.1.2
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
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i91, i64 %index1388
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1392 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1392, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1389 = add i64 %index1388, 4
  %68 = icmp eq i64 %index.next1389, %n.vec1387
  br i1 %68, label %middle.block1381, label %vector.body1383, !llvm.loop !56

middle.block1381:                                 ; preds = %vector.body1383
  %cmp.n1391 = icmp eq i64 %indvars.iv21.i91, %n.vec1387
  br i1 %cmp.n1391, label %for.inc6.i102, label %for.body3.i99.preheader1407

for.body3.i99.preheader1407:                      ; preds = %for.body3.i99.preheader, %middle.block1381
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1387, %middle.block1381 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1407, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1407 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit229.1.2
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !58
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !60

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !61

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
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
  %wide.load1406 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1406, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1403 = add i64 %index1402, 4
  %95 = icmp eq i64 %index.next1403, %n.vec1401
  br i1 %95, label %middle.block1393, label %vector.body1395, !llvm.loop !68

middle.block1393:                                 ; preds = %vector.body1395
  %cmp.n1405 = icmp eq i64 %88, %n.vec1401
  br i1 %cmp.n1405, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1393
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1401, %middle.block1393 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1393
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond816.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1397 = add i64 %indvar1396, 1
  br i1 %exitcond816.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep812.1 = getelementptr i8, i8* %malloccall, i64 480
  %scevgep813.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.1, i64 480, i1 false)
  %scevgep812.2 = getelementptr i8, i8* %malloccall, i64 960
  %scevgep813.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.2, i64 480, i1 false)
  %scevgep812.3 = getelementptr i8, i8* %malloccall, i64 1440
  %scevgep813.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.3, i64 480, i1 false)
  %scevgep812.4 = getelementptr i8, i8* %malloccall, i64 1920
  %scevgep813.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.4, i64 480, i1 false)
  %scevgep812.5 = getelementptr i8, i8* %malloccall, i64 2400
  %scevgep813.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.5, i64 480, i1 false)
  %scevgep812.6 = getelementptr i8, i8* %malloccall, i64 2880
  %scevgep813.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.6, i64 480, i1 false)
  %scevgep812.7 = getelementptr i8, i8* %malloccall, i64 3360
  %scevgep813.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.7, i64 480, i1 false)
  %scevgep812.8 = getelementptr i8, i8* %malloccall, i64 3840
  %scevgep813.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.8, i64 480, i1 false)
  %scevgep812.9 = getelementptr i8, i8* %malloccall, i64 4320
  %scevgep813.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.9, i64 480, i1 false)
  %scevgep812.10 = getelementptr i8, i8* %malloccall, i64 4800
  %scevgep813.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.10, i64 480, i1 false)
  %scevgep812.11 = getelementptr i8, i8* %malloccall, i64 5280
  %scevgep813.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.11, i64 480, i1 false)
  %scevgep812.12 = getelementptr i8, i8* %malloccall, i64 5760
  %scevgep813.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.12, i64 480, i1 false)
  %scevgep812.13 = getelementptr i8, i8* %malloccall, i64 6240
  %scevgep813.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.13, i64 480, i1 false)
  %scevgep812.14 = getelementptr i8, i8* %malloccall, i64 6720
  %scevgep813.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.14, i64 480, i1 false)
  %scevgep812.15 = getelementptr i8, i8* %malloccall, i64 7200
  %scevgep813.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.15, i64 480, i1 false)
  %scevgep812.16 = getelementptr i8, i8* %malloccall, i64 7680
  %scevgep813.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.16, i64 480, i1 false)
  %scevgep812.17 = getelementptr i8, i8* %malloccall, i64 8160
  %scevgep813.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.17, i64 480, i1 false)
  %scevgep812.18 = getelementptr i8, i8* %malloccall, i64 8640
  %scevgep813.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.18, i64 480, i1 false)
  %scevgep812.19 = getelementptr i8, i8* %malloccall, i64 9120
  %scevgep813.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.19, i64 480, i1 false)
  %scevgep812.20 = getelementptr i8, i8* %malloccall, i64 9600
  %scevgep813.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.20, i64 480, i1 false)
  %scevgep812.21 = getelementptr i8, i8* %malloccall, i64 10080
  %scevgep813.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.21, i64 480, i1 false)
  %scevgep812.22 = getelementptr i8, i8* %malloccall, i64 10560
  %scevgep813.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.22, i64 480, i1 false)
  %scevgep812.23 = getelementptr i8, i8* %malloccall, i64 11040
  %scevgep813.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.23, i64 480, i1 false)
  %scevgep812.24 = getelementptr i8, i8* %malloccall, i64 11520
  %scevgep813.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.24, i64 480, i1 false)
  %scevgep812.25 = getelementptr i8, i8* %malloccall, i64 12000
  %scevgep813.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.25, i64 480, i1 false)
  %scevgep812.26 = getelementptr i8, i8* %malloccall, i64 12480
  %scevgep813.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.26, i64 480, i1 false)
  %scevgep812.27 = getelementptr i8, i8* %malloccall, i64 12960
  %scevgep813.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.27, i64 480, i1 false)
  %scevgep812.28 = getelementptr i8, i8* %malloccall, i64 13440
  %scevgep813.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.28, i64 480, i1 false)
  %scevgep812.29 = getelementptr i8, i8* %malloccall, i64 13920
  %scevgep813.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.29, i64 480, i1 false)
  %scevgep812.30 = getelementptr i8, i8* %malloccall, i64 14400
  %scevgep813.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.30, i64 480, i1 false)
  %scevgep812.31 = getelementptr i8, i8* %malloccall, i64 14880
  %scevgep813.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.31, i64 480, i1 false)
  %scevgep812.32 = getelementptr i8, i8* %malloccall, i64 15360
  %scevgep813.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.32, i64 480, i1 false)
  %scevgep812.33 = getelementptr i8, i8* %malloccall, i64 15840
  %scevgep813.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.33, i64 480, i1 false)
  %scevgep812.34 = getelementptr i8, i8* %malloccall, i64 16320
  %scevgep813.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.34, i64 480, i1 false)
  %scevgep812.35 = getelementptr i8, i8* %malloccall, i64 16800
  %scevgep813.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.35, i64 480, i1 false)
  %scevgep812.36 = getelementptr i8, i8* %malloccall, i64 17280
  %scevgep813.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.36, i64 480, i1 false)
  %scevgep812.37 = getelementptr i8, i8* %malloccall, i64 17760
  %scevgep813.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.37, i64 480, i1 false)
  %scevgep812.38 = getelementptr i8, i8* %malloccall, i64 18240
  %scevgep813.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.38, i64 480, i1 false)
  %scevgep812.39 = getelementptr i8, i8* %malloccall, i64 18720
  %scevgep813.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.39, i64 480, i1 false)
  %scevgep812.40 = getelementptr i8, i8* %malloccall, i64 19200
  %scevgep813.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.40, i64 480, i1 false)
  %scevgep812.41 = getelementptr i8, i8* %malloccall, i64 19680
  %scevgep813.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.41, i64 480, i1 false)
  %scevgep812.42 = getelementptr i8, i8* %malloccall, i64 20160
  %scevgep813.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.42, i64 480, i1 false)
  %scevgep812.43 = getelementptr i8, i8* %malloccall, i64 20640
  %scevgep813.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.43, i64 480, i1 false)
  %scevgep812.44 = getelementptr i8, i8* %malloccall, i64 21120
  %scevgep813.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.44, i64 480, i1 false)
  %scevgep812.45 = getelementptr i8, i8* %malloccall, i64 21600
  %scevgep813.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.45, i64 480, i1 false)
  %scevgep812.46 = getelementptr i8, i8* %malloccall, i64 22080
  %scevgep813.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.46, i64 480, i1 false)
  %scevgep812.47 = getelementptr i8, i8* %malloccall, i64 22560
  %scevgep813.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.47, i64 480, i1 false)
  %scevgep812.48 = getelementptr i8, i8* %malloccall, i64 23040
  %scevgep813.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.48, i64 480, i1 false)
  %scevgep812.49 = getelementptr i8, i8* %malloccall, i64 23520
  %scevgep813.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.49, i64 480, i1 false)
  %scevgep812.50 = getelementptr i8, i8* %malloccall, i64 24000
  %scevgep813.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.50, i64 480, i1 false)
  %scevgep812.51 = getelementptr i8, i8* %malloccall, i64 24480
  %scevgep813.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.51, i64 480, i1 false)
  %scevgep812.52 = getelementptr i8, i8* %malloccall, i64 24960
  %scevgep813.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.52, i64 480, i1 false)
  %scevgep812.53 = getelementptr i8, i8* %malloccall, i64 25440
  %scevgep813.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.53, i64 480, i1 false)
  %scevgep812.54 = getelementptr i8, i8* %malloccall, i64 25920
  %scevgep813.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.54, i64 480, i1 false)
  %scevgep812.55 = getelementptr i8, i8* %malloccall, i64 26400
  %scevgep813.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.55, i64 480, i1 false)
  %scevgep812.56 = getelementptr i8, i8* %malloccall, i64 26880
  %scevgep813.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.56, i64 480, i1 false)
  %scevgep812.57 = getelementptr i8, i8* %malloccall, i64 27360
  %scevgep813.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.57, i64 480, i1 false)
  %scevgep812.58 = getelementptr i8, i8* %malloccall, i64 27840
  %scevgep813.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.58, i64 480, i1 false)
  %scevgep812.59 = getelementptr i8, i8* %malloccall, i64 28320
  %scevgep813.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.59, i64 480, i1 false)
  %scevgep812.60 = getelementptr i8, i8* %malloccall, i64 28800
  %scevgep813.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.60, i64 480, i1 false)
  %scevgep812.61 = getelementptr i8, i8* %malloccall, i64 29280
  %scevgep813.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.61, i64 480, i1 false)
  %scevgep812.62 = getelementptr i8, i8* %malloccall, i64 29760
  %scevgep813.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.62, i64 480, i1 false)
  %scevgep812.63 = getelementptr i8, i8* %malloccall, i64 30240
  %scevgep813.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.63, i64 480, i1 false)
  %scevgep812.64 = getelementptr i8, i8* %malloccall, i64 30720
  %scevgep813.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.64, i64 480, i1 false)
  %scevgep812.65 = getelementptr i8, i8* %malloccall, i64 31200
  %scevgep813.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.65, i64 480, i1 false)
  %scevgep812.66 = getelementptr i8, i8* %malloccall, i64 31680
  %scevgep813.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.66, i64 480, i1 false)
  %scevgep812.67 = getelementptr i8, i8* %malloccall, i64 32160
  %scevgep813.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.67, i64 480, i1 false)
  %scevgep812.68 = getelementptr i8, i8* %malloccall, i64 32640
  %scevgep813.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.68, i64 480, i1 false)
  %scevgep812.69 = getelementptr i8, i8* %malloccall, i64 33120
  %scevgep813.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.69, i64 480, i1 false)
  %scevgep812.70 = getelementptr i8, i8* %malloccall, i64 33600
  %scevgep813.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.70, i64 480, i1 false)
  %scevgep812.71 = getelementptr i8, i8* %malloccall, i64 34080
  %scevgep813.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.71, i64 480, i1 false)
  %scevgep812.72 = getelementptr i8, i8* %malloccall, i64 34560
  %scevgep813.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.72, i64 480, i1 false)
  %scevgep812.73 = getelementptr i8, i8* %malloccall, i64 35040
  %scevgep813.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.73, i64 480, i1 false)
  %scevgep812.74 = getelementptr i8, i8* %malloccall, i64 35520
  %scevgep813.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.74, i64 480, i1 false)
  %scevgep812.75 = getelementptr i8, i8* %malloccall, i64 36000
  %scevgep813.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.75, i64 480, i1 false)
  %scevgep812.76 = getelementptr i8, i8* %malloccall, i64 36480
  %scevgep813.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.76, i64 480, i1 false)
  %scevgep812.77 = getelementptr i8, i8* %malloccall, i64 36960
  %scevgep813.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.77, i64 480, i1 false)
  %scevgep812.78 = getelementptr i8, i8* %malloccall, i64 37440
  %scevgep813.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.78, i64 480, i1 false)
  %scevgep812.79 = getelementptr i8, i8* %malloccall, i64 37920
  %scevgep813.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.79, i64 480, i1 false)
  br label %polly.loop_header227

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond815.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond815.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !69

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_header199.preheader
  %indvars.iv804 = phi i64 [ %indvars.iv.next805, %polly.loop_exit235 ], [ 1, %polly.loop_header199.preheader ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2248 = mul nuw nsw i64 %polly.indvar230, 60
  %97 = mul nuw nsw i64 %polly.indvar230, 480
  %98 = mul nuw nsw i64 %polly.indvar230, 640
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next805 = add nuw nsw i64 %indvars.iv804, 1
  %exitcond809.not = icmp eq i64 %polly.indvar_next231, 32
  br i1 %exitcond809.not, label %polly.loop_header227.1, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_exit241, %polly.loop_header227
  %polly.indvar236 = phi i64 [ 0, %polly.loop_header227 ], [ %polly.indvar_next237, %polly.loop_exit241 ]
  %99 = shl i64 %polly.indvar236, 3
  %polly.access.add.Packed_MemRef_call2249 = add nuw nsw i64 %polly.indvar236, %polly.access.mul.Packed_MemRef_call2248
  %polly.access.Packed_MemRef_call2250 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249
  %_p_scalar_251 = load double, double* %polly.access.Packed_MemRef_call2250, align 8
  %100 = add i64 %99, %97
  %scevgep256 = getelementptr i8, i8* %call1, i64 %100
  %scevgep256257 = bitcast i8* %scevgep256 to double*
  %_p_scalar_258 = load double, double* %scevgep256257, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header239

polly.loop_exit241:                               ; preds = %polly.loop_header239
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond806.not = icmp eq i64 %polly.indvar_next237, 32
  br i1 %exitcond806.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_header239:                             ; preds = %polly.loop_header239, %polly.loop_header233
  %polly.indvar242 = phi i64 [ 0, %polly.loop_header233 ], [ %polly.indvar_next243, %polly.loop_header239 ]
  %101 = mul nuw nsw i64 %polly.indvar242, 480
  %102 = add nuw nsw i64 %101, %99
  %scevgep245 = getelementptr i8, i8* %call1, i64 %102
  %scevgep245246 = bitcast i8* %scevgep245 to double*
  %_p_scalar_247 = load double, double* %scevgep245246, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112 = fmul fast double %_p_scalar_251, %_p_scalar_247
  %polly.access.mul.Packed_MemRef_call2252 = mul nuw nsw i64 %polly.indvar242, 60
  %polly.access.add.Packed_MemRef_call2253 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252, %polly.indvar236
  %polly.access.Packed_MemRef_call2254 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253
  %_p_scalar_255 = load double, double* %polly.access.Packed_MemRef_call2254, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_258, %_p_scalar_255
  %103 = shl nuw nsw i64 %polly.indvar242, 3
  %104 = add nuw nsw i64 %103, %98
  %scevgep259 = getelementptr i8, i8* %call, i64 %104
  %scevgep259260 = bitcast i8* %scevgep259 to double*
  %_p_scalar_261 = load double, double* %scevgep259260, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_261
  store double %p_add42.i118, double* %scevgep259260, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next243 = add nuw nsw i64 %polly.indvar242, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next243, %indvars.iv804
  br i1 %exitcond.not, label %polly.loop_exit241, label %polly.loop_header239

polly.start264:                                   ; preds = %kernel_syr2k.exit
  %malloccall266 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header350

polly.loop_header350:                             ; preds = %polly.loop_exit358, %polly.start264
  %indvar1370 = phi i64 [ %indvar.next1371, %polly.loop_exit358 ], [ 0, %polly.start264 ]
  %polly.indvar353 = phi i64 [ %polly.indvar_next354, %polly.loop_exit358 ], [ 1, %polly.start264 ]
  %105 = add i64 %indvar1370, 1
  %106 = mul nuw nsw i64 %polly.indvar353, 640
  %scevgep362 = getelementptr i8, i8* %call, i64 %106
  %min.iters.check1372 = icmp ult i64 %105, 4
  br i1 %min.iters.check1372, label %polly.loop_header356.preheader, label %vector.ph1373

vector.ph1373:                                    ; preds = %polly.loop_header350
  %n.vec1375 = and i64 %105, -4
  br label %vector.body1369

vector.body1369:                                  ; preds = %vector.body1369, %vector.ph1373
  %index1376 = phi i64 [ 0, %vector.ph1373 ], [ %index.next1377, %vector.body1369 ]
  %107 = shl nuw nsw i64 %index1376, 3
  %108 = getelementptr i8, i8* %scevgep362, i64 %107
  %109 = bitcast i8* %108 to <4 x double>*
  %wide.load1380 = load <4 x double>, <4 x double>* %109, align 8, !alias.scope !72, !noalias !74
  %110 = fmul fast <4 x double> %wide.load1380, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %111 = bitcast i8* %108 to <4 x double>*
  store <4 x double> %110, <4 x double>* %111, align 8, !alias.scope !72, !noalias !74
  %index.next1377 = add i64 %index1376, 4
  %112 = icmp eq i64 %index.next1377, %n.vec1375
  br i1 %112, label %middle.block1367, label %vector.body1369, !llvm.loop !78

middle.block1367:                                 ; preds = %vector.body1369
  %cmp.n1379 = icmp eq i64 %105, %n.vec1375
  br i1 %cmp.n1379, label %polly.loop_exit358, label %polly.loop_header356.preheader

polly.loop_header356.preheader:                   ; preds = %polly.loop_header350, %middle.block1367
  %polly.indvar359.ph = phi i64 [ 0, %polly.loop_header350 ], [ %n.vec1375, %middle.block1367 ]
  br label %polly.loop_header356

polly.loop_exit358:                               ; preds = %polly.loop_header356, %middle.block1367
  %polly.indvar_next354 = add nuw nsw i64 %polly.indvar353, 1
  %exitcond833.not = icmp eq i64 %polly.indvar_next354, 80
  %indvar.next1371 = add i64 %indvar1370, 1
  br i1 %exitcond833.not, label %polly.loop_header366.preheader, label %polly.loop_header350

polly.loop_header366.preheader:                   ; preds = %polly.loop_exit358
  %Packed_MemRef_call2267 = bitcast i8* %malloccall266 to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall266, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep829.1 = getelementptr i8, i8* %malloccall266, i64 480
  %scevgep830.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.1, i64 480, i1 false)
  %scevgep829.2 = getelementptr i8, i8* %malloccall266, i64 960
  %scevgep830.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.2, i64 480, i1 false)
  %scevgep829.3 = getelementptr i8, i8* %malloccall266, i64 1440
  %scevgep830.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.3, i64 480, i1 false)
  %scevgep829.4 = getelementptr i8, i8* %malloccall266, i64 1920
  %scevgep830.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.4, i64 480, i1 false)
  %scevgep829.5 = getelementptr i8, i8* %malloccall266, i64 2400
  %scevgep830.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.5, i64 480, i1 false)
  %scevgep829.6 = getelementptr i8, i8* %malloccall266, i64 2880
  %scevgep830.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.6, i64 480, i1 false)
  %scevgep829.7 = getelementptr i8, i8* %malloccall266, i64 3360
  %scevgep830.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.7, i64 480, i1 false)
  %scevgep829.8 = getelementptr i8, i8* %malloccall266, i64 3840
  %scevgep830.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.8, i64 480, i1 false)
  %scevgep829.9 = getelementptr i8, i8* %malloccall266, i64 4320
  %scevgep830.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.9, i64 480, i1 false)
  %scevgep829.10 = getelementptr i8, i8* %malloccall266, i64 4800
  %scevgep830.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.10, i64 480, i1 false)
  %scevgep829.11 = getelementptr i8, i8* %malloccall266, i64 5280
  %scevgep830.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.11, i64 480, i1 false)
  %scevgep829.12 = getelementptr i8, i8* %malloccall266, i64 5760
  %scevgep830.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.12, i64 480, i1 false)
  %scevgep829.13 = getelementptr i8, i8* %malloccall266, i64 6240
  %scevgep830.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.13, i64 480, i1 false)
  %scevgep829.14 = getelementptr i8, i8* %malloccall266, i64 6720
  %scevgep830.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.14, i64 480, i1 false)
  %scevgep829.15 = getelementptr i8, i8* %malloccall266, i64 7200
  %scevgep830.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.15, i64 480, i1 false)
  %scevgep829.16 = getelementptr i8, i8* %malloccall266, i64 7680
  %scevgep830.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.16, i64 480, i1 false)
  %scevgep829.17 = getelementptr i8, i8* %malloccall266, i64 8160
  %scevgep830.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.17, i64 480, i1 false)
  %scevgep829.18 = getelementptr i8, i8* %malloccall266, i64 8640
  %scevgep830.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.18, i64 480, i1 false)
  %scevgep829.19 = getelementptr i8, i8* %malloccall266, i64 9120
  %scevgep830.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.19, i64 480, i1 false)
  %scevgep829.20 = getelementptr i8, i8* %malloccall266, i64 9600
  %scevgep830.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.20, i64 480, i1 false)
  %scevgep829.21 = getelementptr i8, i8* %malloccall266, i64 10080
  %scevgep830.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.21, i64 480, i1 false)
  %scevgep829.22 = getelementptr i8, i8* %malloccall266, i64 10560
  %scevgep830.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.22, i64 480, i1 false)
  %scevgep829.23 = getelementptr i8, i8* %malloccall266, i64 11040
  %scevgep830.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.23, i64 480, i1 false)
  %scevgep829.24 = getelementptr i8, i8* %malloccall266, i64 11520
  %scevgep830.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.24, i64 480, i1 false)
  %scevgep829.25 = getelementptr i8, i8* %malloccall266, i64 12000
  %scevgep830.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.25, i64 480, i1 false)
  %scevgep829.26 = getelementptr i8, i8* %malloccall266, i64 12480
  %scevgep830.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.26, i64 480, i1 false)
  %scevgep829.27 = getelementptr i8, i8* %malloccall266, i64 12960
  %scevgep830.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.27, i64 480, i1 false)
  %scevgep829.28 = getelementptr i8, i8* %malloccall266, i64 13440
  %scevgep830.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.28, i64 480, i1 false)
  %scevgep829.29 = getelementptr i8, i8* %malloccall266, i64 13920
  %scevgep830.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.29, i64 480, i1 false)
  %scevgep829.30 = getelementptr i8, i8* %malloccall266, i64 14400
  %scevgep830.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.30, i64 480, i1 false)
  %scevgep829.31 = getelementptr i8, i8* %malloccall266, i64 14880
  %scevgep830.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.31, i64 480, i1 false)
  %scevgep829.32 = getelementptr i8, i8* %malloccall266, i64 15360
  %scevgep830.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.32, i64 480, i1 false)
  %scevgep829.33 = getelementptr i8, i8* %malloccall266, i64 15840
  %scevgep830.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.33, i64 480, i1 false)
  %scevgep829.34 = getelementptr i8, i8* %malloccall266, i64 16320
  %scevgep830.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.34, i64 480, i1 false)
  %scevgep829.35 = getelementptr i8, i8* %malloccall266, i64 16800
  %scevgep830.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.35, i64 480, i1 false)
  %scevgep829.36 = getelementptr i8, i8* %malloccall266, i64 17280
  %scevgep830.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.36, i64 480, i1 false)
  %scevgep829.37 = getelementptr i8, i8* %malloccall266, i64 17760
  %scevgep830.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.37, i64 480, i1 false)
  %scevgep829.38 = getelementptr i8, i8* %malloccall266, i64 18240
  %scevgep830.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.38, i64 480, i1 false)
  %scevgep829.39 = getelementptr i8, i8* %malloccall266, i64 18720
  %scevgep830.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.39, i64 480, i1 false)
  %scevgep829.40 = getelementptr i8, i8* %malloccall266, i64 19200
  %scevgep830.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.40, i64 480, i1 false)
  %scevgep829.41 = getelementptr i8, i8* %malloccall266, i64 19680
  %scevgep830.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.41, i64 480, i1 false)
  %scevgep829.42 = getelementptr i8, i8* %malloccall266, i64 20160
  %scevgep830.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.42, i64 480, i1 false)
  %scevgep829.43 = getelementptr i8, i8* %malloccall266, i64 20640
  %scevgep830.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.43, i64 480, i1 false)
  %scevgep829.44 = getelementptr i8, i8* %malloccall266, i64 21120
  %scevgep830.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.44, i64 480, i1 false)
  %scevgep829.45 = getelementptr i8, i8* %malloccall266, i64 21600
  %scevgep830.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.45, i64 480, i1 false)
  %scevgep829.46 = getelementptr i8, i8* %malloccall266, i64 22080
  %scevgep830.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.46, i64 480, i1 false)
  %scevgep829.47 = getelementptr i8, i8* %malloccall266, i64 22560
  %scevgep830.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.47, i64 480, i1 false)
  %scevgep829.48 = getelementptr i8, i8* %malloccall266, i64 23040
  %scevgep830.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.48, i64 480, i1 false)
  %scevgep829.49 = getelementptr i8, i8* %malloccall266, i64 23520
  %scevgep830.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.49, i64 480, i1 false)
  %scevgep829.50 = getelementptr i8, i8* %malloccall266, i64 24000
  %scevgep830.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.50, i64 480, i1 false)
  %scevgep829.51 = getelementptr i8, i8* %malloccall266, i64 24480
  %scevgep830.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.51, i64 480, i1 false)
  %scevgep829.52 = getelementptr i8, i8* %malloccall266, i64 24960
  %scevgep830.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.52, i64 480, i1 false)
  %scevgep829.53 = getelementptr i8, i8* %malloccall266, i64 25440
  %scevgep830.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.53, i64 480, i1 false)
  %scevgep829.54 = getelementptr i8, i8* %malloccall266, i64 25920
  %scevgep830.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.54, i64 480, i1 false)
  %scevgep829.55 = getelementptr i8, i8* %malloccall266, i64 26400
  %scevgep830.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.55, i64 480, i1 false)
  %scevgep829.56 = getelementptr i8, i8* %malloccall266, i64 26880
  %scevgep830.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.56, i64 480, i1 false)
  %scevgep829.57 = getelementptr i8, i8* %malloccall266, i64 27360
  %scevgep830.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.57, i64 480, i1 false)
  %scevgep829.58 = getelementptr i8, i8* %malloccall266, i64 27840
  %scevgep830.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.58, i64 480, i1 false)
  %scevgep829.59 = getelementptr i8, i8* %malloccall266, i64 28320
  %scevgep830.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.59, i64 480, i1 false)
  %scevgep829.60 = getelementptr i8, i8* %malloccall266, i64 28800
  %scevgep830.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.60, i64 480, i1 false)
  %scevgep829.61 = getelementptr i8, i8* %malloccall266, i64 29280
  %scevgep830.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.61, i64 480, i1 false)
  %scevgep829.62 = getelementptr i8, i8* %malloccall266, i64 29760
  %scevgep830.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.62, i64 480, i1 false)
  %scevgep829.63 = getelementptr i8, i8* %malloccall266, i64 30240
  %scevgep830.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.63, i64 480, i1 false)
  %scevgep829.64 = getelementptr i8, i8* %malloccall266, i64 30720
  %scevgep830.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.64, i64 480, i1 false)
  %scevgep829.65 = getelementptr i8, i8* %malloccall266, i64 31200
  %scevgep830.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.65, i64 480, i1 false)
  %scevgep829.66 = getelementptr i8, i8* %malloccall266, i64 31680
  %scevgep830.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.66, i64 480, i1 false)
  %scevgep829.67 = getelementptr i8, i8* %malloccall266, i64 32160
  %scevgep830.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.67, i64 480, i1 false)
  %scevgep829.68 = getelementptr i8, i8* %malloccall266, i64 32640
  %scevgep830.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.68, i64 480, i1 false)
  %scevgep829.69 = getelementptr i8, i8* %malloccall266, i64 33120
  %scevgep830.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.69, i64 480, i1 false)
  %scevgep829.70 = getelementptr i8, i8* %malloccall266, i64 33600
  %scevgep830.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.70, i64 480, i1 false)
  %scevgep829.71 = getelementptr i8, i8* %malloccall266, i64 34080
  %scevgep830.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.71, i64 480, i1 false)
  %scevgep829.72 = getelementptr i8, i8* %malloccall266, i64 34560
  %scevgep830.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.72, i64 480, i1 false)
  %scevgep829.73 = getelementptr i8, i8* %malloccall266, i64 35040
  %scevgep830.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.73, i64 480, i1 false)
  %scevgep829.74 = getelementptr i8, i8* %malloccall266, i64 35520
  %scevgep830.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.74, i64 480, i1 false)
  %scevgep829.75 = getelementptr i8, i8* %malloccall266, i64 36000
  %scevgep830.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.75, i64 480, i1 false)
  %scevgep829.76 = getelementptr i8, i8* %malloccall266, i64 36480
  %scevgep830.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.76, i64 480, i1 false)
  %scevgep829.77 = getelementptr i8, i8* %malloccall266, i64 36960
  %scevgep830.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.77, i64 480, i1 false)
  %scevgep829.78 = getelementptr i8, i8* %malloccall266, i64 37440
  %scevgep830.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.78, i64 480, i1 false)
  %scevgep829.79 = getelementptr i8, i8* %malloccall266, i64 37920
  %scevgep830.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep829.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep830.79, i64 480, i1 false)
  br label %polly.loop_header394

polly.loop_header356:                             ; preds = %polly.loop_header356.preheader, %polly.loop_header356
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_header356 ], [ %polly.indvar359.ph, %polly.loop_header356.preheader ]
  %113 = shl nuw nsw i64 %polly.indvar359, 3
  %scevgep363 = getelementptr i8, i8* %scevgep362, i64 %113
  %scevgep363364 = bitcast i8* %scevgep363 to double*
  %_p_scalar_365 = load double, double* %scevgep363364, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_365, 1.200000e+00
  store double %p_mul.i57, double* %scevgep363364, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %exitcond832.not = icmp eq i64 %polly.indvar_next360, %polly.indvar353
  br i1 %exitcond832.not, label %polly.loop_exit358, label %polly.loop_header356, !llvm.loop !79

polly.loop_header394:                             ; preds = %polly.loop_exit402, %polly.loop_header366.preheader
  %indvars.iv819 = phi i64 [ %indvars.iv.next820, %polly.loop_exit402 ], [ 1, %polly.loop_header366.preheader ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit402 ], [ 0, %polly.loop_header366.preheader ]
  %polly.access.mul.Packed_MemRef_call2267415 = mul nuw nsw i64 %polly.indvar397, 60
  %114 = mul nuw nsw i64 %polly.indvar397, 480
  %115 = mul nuw nsw i64 %polly.indvar397, 640
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_exit408
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %indvars.iv.next820 = add nuw nsw i64 %indvars.iv819, 1
  %exitcond826.not = icmp eq i64 %polly.indvar_next398, 32
  br i1 %exitcond826.not, label %polly.loop_header394.1, label %polly.loop_header394

polly.loop_header400:                             ; preds = %polly.loop_exit408, %polly.loop_header394
  %polly.indvar403 = phi i64 [ 0, %polly.loop_header394 ], [ %polly.indvar_next404, %polly.loop_exit408 ]
  %116 = shl i64 %polly.indvar403, 3
  %polly.access.add.Packed_MemRef_call2267416 = add nuw nsw i64 %polly.indvar403, %polly.access.mul.Packed_MemRef_call2267415
  %polly.access.Packed_MemRef_call2267417 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416
  %_p_scalar_418 = load double, double* %polly.access.Packed_MemRef_call2267417, align 8
  %117 = add i64 %116, %114
  %scevgep423 = getelementptr i8, i8* %call1, i64 %117
  %scevgep423424 = bitcast i8* %scevgep423 to double*
  %_p_scalar_425 = load double, double* %scevgep423424, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header406

polly.loop_exit408:                               ; preds = %polly.loop_header406
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond822.not = icmp eq i64 %polly.indvar_next404, 32
  br i1 %exitcond822.not, label %polly.loop_exit402, label %polly.loop_header400

polly.loop_header406:                             ; preds = %polly.loop_header406, %polly.loop_header400
  %polly.indvar409 = phi i64 [ 0, %polly.loop_header400 ], [ %polly.indvar_next410, %polly.loop_header406 ]
  %118 = mul nuw nsw i64 %polly.indvar409, 480
  %119 = add nuw nsw i64 %118, %116
  %scevgep412 = getelementptr i8, i8* %call1, i64 %119
  %scevgep412413 = bitcast i8* %scevgep412 to double*
  %_p_scalar_414 = load double, double* %scevgep412413, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73 = fmul fast double %_p_scalar_418, %_p_scalar_414
  %polly.access.mul.Packed_MemRef_call2267419 = mul nuw nsw i64 %polly.indvar409, 60
  %polly.access.add.Packed_MemRef_call2267420 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419, %polly.indvar403
  %polly.access.Packed_MemRef_call2267421 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420
  %_p_scalar_422 = load double, double* %polly.access.Packed_MemRef_call2267421, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_425, %_p_scalar_422
  %120 = shl nuw nsw i64 %polly.indvar409, 3
  %121 = add nuw nsw i64 %120, %115
  %scevgep426 = getelementptr i8, i8* %call, i64 %121
  %scevgep426427 = bitcast i8* %scevgep426 to double*
  %_p_scalar_428 = load double, double* %scevgep426427, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_428
  store double %p_add42.i79, double* %scevgep426427, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond821.not = icmp eq i64 %polly.indvar_next410, %indvars.iv819
  br i1 %exitcond821.not, label %polly.loop_exit408, label %polly.loop_header406

polly.start431:                                   ; preds = %init_array.exit
  %malloccall433 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header517

polly.loop_header517:                             ; preds = %polly.loop_exit525, %polly.start431
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit525 ], [ 0, %polly.start431 ]
  %polly.indvar520 = phi i64 [ %polly.indvar_next521, %polly.loop_exit525 ], [ 1, %polly.start431 ]
  %122 = add i64 %indvar, 1
  %123 = mul nuw nsw i64 %polly.indvar520, 640
  %scevgep529 = getelementptr i8, i8* %call, i64 %123
  %min.iters.check1346 = icmp ult i64 %122, 4
  br i1 %min.iters.check1346, label %polly.loop_header523.preheader, label %vector.ph1347

vector.ph1347:                                    ; preds = %polly.loop_header517
  %n.vec1349 = and i64 %122, -4
  br label %vector.body1345

vector.body1345:                                  ; preds = %vector.body1345, %vector.ph1347
  %index1350 = phi i64 [ 0, %vector.ph1347 ], [ %index.next1351, %vector.body1345 ]
  %124 = shl nuw nsw i64 %index1350, 3
  %125 = getelementptr i8, i8* %scevgep529, i64 %124
  %126 = bitcast i8* %125 to <4 x double>*
  %wide.load1354 = load <4 x double>, <4 x double>* %126, align 8, !alias.scope !81, !noalias !83
  %127 = fmul fast <4 x double> %wide.load1354, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %128 = bitcast i8* %125 to <4 x double>*
  store <4 x double> %127, <4 x double>* %128, align 8, !alias.scope !81, !noalias !83
  %index.next1351 = add i64 %index1350, 4
  %129 = icmp eq i64 %index.next1351, %n.vec1349
  br i1 %129, label %middle.block1343, label %vector.body1345, !llvm.loop !87

middle.block1343:                                 ; preds = %vector.body1345
  %cmp.n1353 = icmp eq i64 %122, %n.vec1349
  br i1 %cmp.n1353, label %polly.loop_exit525, label %polly.loop_header523.preheader

polly.loop_header523.preheader:                   ; preds = %polly.loop_header517, %middle.block1343
  %polly.indvar526.ph = phi i64 [ 0, %polly.loop_header517 ], [ %n.vec1349, %middle.block1343 ]
  br label %polly.loop_header523

polly.loop_exit525:                               ; preds = %polly.loop_header523, %middle.block1343
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %exitcond850.not = icmp eq i64 %polly.indvar_next521, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond850.not, label %polly.loop_header533.preheader, label %polly.loop_header517

polly.loop_header533.preheader:                   ; preds = %polly.loop_exit525
  %Packed_MemRef_call2434 = bitcast i8* %malloccall433 to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall433, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep846.1 = getelementptr i8, i8* %malloccall433, i64 480
  %scevgep847.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.1, i64 480, i1 false)
  %scevgep846.2 = getelementptr i8, i8* %malloccall433, i64 960
  %scevgep847.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.2, i64 480, i1 false)
  %scevgep846.3 = getelementptr i8, i8* %malloccall433, i64 1440
  %scevgep847.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.3, i64 480, i1 false)
  %scevgep846.4 = getelementptr i8, i8* %malloccall433, i64 1920
  %scevgep847.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.4, i64 480, i1 false)
  %scevgep846.5 = getelementptr i8, i8* %malloccall433, i64 2400
  %scevgep847.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.5, i64 480, i1 false)
  %scevgep846.6 = getelementptr i8, i8* %malloccall433, i64 2880
  %scevgep847.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.6, i64 480, i1 false)
  %scevgep846.7 = getelementptr i8, i8* %malloccall433, i64 3360
  %scevgep847.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.7, i64 480, i1 false)
  %scevgep846.8 = getelementptr i8, i8* %malloccall433, i64 3840
  %scevgep847.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.8, i64 480, i1 false)
  %scevgep846.9 = getelementptr i8, i8* %malloccall433, i64 4320
  %scevgep847.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.9, i64 480, i1 false)
  %scevgep846.10 = getelementptr i8, i8* %malloccall433, i64 4800
  %scevgep847.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.10, i64 480, i1 false)
  %scevgep846.11 = getelementptr i8, i8* %malloccall433, i64 5280
  %scevgep847.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.11, i64 480, i1 false)
  %scevgep846.12 = getelementptr i8, i8* %malloccall433, i64 5760
  %scevgep847.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.12, i64 480, i1 false)
  %scevgep846.13 = getelementptr i8, i8* %malloccall433, i64 6240
  %scevgep847.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.13, i64 480, i1 false)
  %scevgep846.14 = getelementptr i8, i8* %malloccall433, i64 6720
  %scevgep847.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.14, i64 480, i1 false)
  %scevgep846.15 = getelementptr i8, i8* %malloccall433, i64 7200
  %scevgep847.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.15, i64 480, i1 false)
  %scevgep846.16 = getelementptr i8, i8* %malloccall433, i64 7680
  %scevgep847.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.16, i64 480, i1 false)
  %scevgep846.17 = getelementptr i8, i8* %malloccall433, i64 8160
  %scevgep847.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.17, i64 480, i1 false)
  %scevgep846.18 = getelementptr i8, i8* %malloccall433, i64 8640
  %scevgep847.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.18, i64 480, i1 false)
  %scevgep846.19 = getelementptr i8, i8* %malloccall433, i64 9120
  %scevgep847.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.19, i64 480, i1 false)
  %scevgep846.20 = getelementptr i8, i8* %malloccall433, i64 9600
  %scevgep847.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.20, i64 480, i1 false)
  %scevgep846.21 = getelementptr i8, i8* %malloccall433, i64 10080
  %scevgep847.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.21, i64 480, i1 false)
  %scevgep846.22 = getelementptr i8, i8* %malloccall433, i64 10560
  %scevgep847.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.22, i64 480, i1 false)
  %scevgep846.23 = getelementptr i8, i8* %malloccall433, i64 11040
  %scevgep847.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.23, i64 480, i1 false)
  %scevgep846.24 = getelementptr i8, i8* %malloccall433, i64 11520
  %scevgep847.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.24, i64 480, i1 false)
  %scevgep846.25 = getelementptr i8, i8* %malloccall433, i64 12000
  %scevgep847.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.25, i64 480, i1 false)
  %scevgep846.26 = getelementptr i8, i8* %malloccall433, i64 12480
  %scevgep847.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.26, i64 480, i1 false)
  %scevgep846.27 = getelementptr i8, i8* %malloccall433, i64 12960
  %scevgep847.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.27, i64 480, i1 false)
  %scevgep846.28 = getelementptr i8, i8* %malloccall433, i64 13440
  %scevgep847.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.28, i64 480, i1 false)
  %scevgep846.29 = getelementptr i8, i8* %malloccall433, i64 13920
  %scevgep847.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.29, i64 480, i1 false)
  %scevgep846.30 = getelementptr i8, i8* %malloccall433, i64 14400
  %scevgep847.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.30, i64 480, i1 false)
  %scevgep846.31 = getelementptr i8, i8* %malloccall433, i64 14880
  %scevgep847.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.31, i64 480, i1 false)
  %scevgep846.32 = getelementptr i8, i8* %malloccall433, i64 15360
  %scevgep847.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.32, i64 480, i1 false)
  %scevgep846.33 = getelementptr i8, i8* %malloccall433, i64 15840
  %scevgep847.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.33, i64 480, i1 false)
  %scevgep846.34 = getelementptr i8, i8* %malloccall433, i64 16320
  %scevgep847.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.34, i64 480, i1 false)
  %scevgep846.35 = getelementptr i8, i8* %malloccall433, i64 16800
  %scevgep847.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.35, i64 480, i1 false)
  %scevgep846.36 = getelementptr i8, i8* %malloccall433, i64 17280
  %scevgep847.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.36, i64 480, i1 false)
  %scevgep846.37 = getelementptr i8, i8* %malloccall433, i64 17760
  %scevgep847.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.37, i64 480, i1 false)
  %scevgep846.38 = getelementptr i8, i8* %malloccall433, i64 18240
  %scevgep847.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.38, i64 480, i1 false)
  %scevgep846.39 = getelementptr i8, i8* %malloccall433, i64 18720
  %scevgep847.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.39, i64 480, i1 false)
  %scevgep846.40 = getelementptr i8, i8* %malloccall433, i64 19200
  %scevgep847.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.40, i64 480, i1 false)
  %scevgep846.41 = getelementptr i8, i8* %malloccall433, i64 19680
  %scevgep847.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.41, i64 480, i1 false)
  %scevgep846.42 = getelementptr i8, i8* %malloccall433, i64 20160
  %scevgep847.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.42, i64 480, i1 false)
  %scevgep846.43 = getelementptr i8, i8* %malloccall433, i64 20640
  %scevgep847.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.43, i64 480, i1 false)
  %scevgep846.44 = getelementptr i8, i8* %malloccall433, i64 21120
  %scevgep847.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.44, i64 480, i1 false)
  %scevgep846.45 = getelementptr i8, i8* %malloccall433, i64 21600
  %scevgep847.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.45, i64 480, i1 false)
  %scevgep846.46 = getelementptr i8, i8* %malloccall433, i64 22080
  %scevgep847.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.46, i64 480, i1 false)
  %scevgep846.47 = getelementptr i8, i8* %malloccall433, i64 22560
  %scevgep847.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.47, i64 480, i1 false)
  %scevgep846.48 = getelementptr i8, i8* %malloccall433, i64 23040
  %scevgep847.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.48, i64 480, i1 false)
  %scevgep846.49 = getelementptr i8, i8* %malloccall433, i64 23520
  %scevgep847.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.49, i64 480, i1 false)
  %scevgep846.50 = getelementptr i8, i8* %malloccall433, i64 24000
  %scevgep847.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.50, i64 480, i1 false)
  %scevgep846.51 = getelementptr i8, i8* %malloccall433, i64 24480
  %scevgep847.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.51, i64 480, i1 false)
  %scevgep846.52 = getelementptr i8, i8* %malloccall433, i64 24960
  %scevgep847.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.52, i64 480, i1 false)
  %scevgep846.53 = getelementptr i8, i8* %malloccall433, i64 25440
  %scevgep847.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.53, i64 480, i1 false)
  %scevgep846.54 = getelementptr i8, i8* %malloccall433, i64 25920
  %scevgep847.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.54, i64 480, i1 false)
  %scevgep846.55 = getelementptr i8, i8* %malloccall433, i64 26400
  %scevgep847.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.55, i64 480, i1 false)
  %scevgep846.56 = getelementptr i8, i8* %malloccall433, i64 26880
  %scevgep847.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.56, i64 480, i1 false)
  %scevgep846.57 = getelementptr i8, i8* %malloccall433, i64 27360
  %scevgep847.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.57, i64 480, i1 false)
  %scevgep846.58 = getelementptr i8, i8* %malloccall433, i64 27840
  %scevgep847.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.58, i64 480, i1 false)
  %scevgep846.59 = getelementptr i8, i8* %malloccall433, i64 28320
  %scevgep847.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.59, i64 480, i1 false)
  %scevgep846.60 = getelementptr i8, i8* %malloccall433, i64 28800
  %scevgep847.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.60, i64 480, i1 false)
  %scevgep846.61 = getelementptr i8, i8* %malloccall433, i64 29280
  %scevgep847.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.61, i64 480, i1 false)
  %scevgep846.62 = getelementptr i8, i8* %malloccall433, i64 29760
  %scevgep847.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.62, i64 480, i1 false)
  %scevgep846.63 = getelementptr i8, i8* %malloccall433, i64 30240
  %scevgep847.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.63, i64 480, i1 false)
  %scevgep846.64 = getelementptr i8, i8* %malloccall433, i64 30720
  %scevgep847.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.64, i64 480, i1 false)
  %scevgep846.65 = getelementptr i8, i8* %malloccall433, i64 31200
  %scevgep847.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.65, i64 480, i1 false)
  %scevgep846.66 = getelementptr i8, i8* %malloccall433, i64 31680
  %scevgep847.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.66, i64 480, i1 false)
  %scevgep846.67 = getelementptr i8, i8* %malloccall433, i64 32160
  %scevgep847.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.67, i64 480, i1 false)
  %scevgep846.68 = getelementptr i8, i8* %malloccall433, i64 32640
  %scevgep847.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.68, i64 480, i1 false)
  %scevgep846.69 = getelementptr i8, i8* %malloccall433, i64 33120
  %scevgep847.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.69, i64 480, i1 false)
  %scevgep846.70 = getelementptr i8, i8* %malloccall433, i64 33600
  %scevgep847.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.70, i64 480, i1 false)
  %scevgep846.71 = getelementptr i8, i8* %malloccall433, i64 34080
  %scevgep847.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.71, i64 480, i1 false)
  %scevgep846.72 = getelementptr i8, i8* %malloccall433, i64 34560
  %scevgep847.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.72, i64 480, i1 false)
  %scevgep846.73 = getelementptr i8, i8* %malloccall433, i64 35040
  %scevgep847.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.73, i64 480, i1 false)
  %scevgep846.74 = getelementptr i8, i8* %malloccall433, i64 35520
  %scevgep847.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.74, i64 480, i1 false)
  %scevgep846.75 = getelementptr i8, i8* %malloccall433, i64 36000
  %scevgep847.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.75, i64 480, i1 false)
  %scevgep846.76 = getelementptr i8, i8* %malloccall433, i64 36480
  %scevgep847.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.76, i64 480, i1 false)
  %scevgep846.77 = getelementptr i8, i8* %malloccall433, i64 36960
  %scevgep847.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.77, i64 480, i1 false)
  %scevgep846.78 = getelementptr i8, i8* %malloccall433, i64 37440
  %scevgep847.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.78, i64 480, i1 false)
  %scevgep846.79 = getelementptr i8, i8* %malloccall433, i64 37920
  %scevgep847.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep847.79, i64 480, i1 false)
  br label %polly.loop_header561

polly.loop_header523:                             ; preds = %polly.loop_header523.preheader, %polly.loop_header523
  %polly.indvar526 = phi i64 [ %polly.indvar_next527, %polly.loop_header523 ], [ %polly.indvar526.ph, %polly.loop_header523.preheader ]
  %130 = shl nuw nsw i64 %polly.indvar526, 3
  %scevgep530 = getelementptr i8, i8* %scevgep529, i64 %130
  %scevgep530531 = bitcast i8* %scevgep530 to double*
  %_p_scalar_532 = load double, double* %scevgep530531, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_532, 1.200000e+00
  store double %p_mul.i, double* %scevgep530531, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %exitcond849.not = icmp eq i64 %polly.indvar_next527, %polly.indvar520
  br i1 %exitcond849.not, label %polly.loop_exit525, label %polly.loop_header523, !llvm.loop !88

polly.loop_header561:                             ; preds = %polly.loop_exit569, %polly.loop_header533.preheader
  %indvars.iv836 = phi i64 [ %indvars.iv.next837, %polly.loop_exit569 ], [ 1, %polly.loop_header533.preheader ]
  %polly.indvar564 = phi i64 [ %polly.indvar_next565, %polly.loop_exit569 ], [ 0, %polly.loop_header533.preheader ]
  %polly.access.mul.Packed_MemRef_call2434582 = mul nuw nsw i64 %polly.indvar564, 60
  %131 = mul nuw nsw i64 %polly.indvar564, 480
  %132 = mul nuw nsw i64 %polly.indvar564, 640
  br label %polly.loop_header567

polly.loop_exit569:                               ; preds = %polly.loop_exit575
  %polly.indvar_next565 = add nuw nsw i64 %polly.indvar564, 1
  %indvars.iv.next837 = add nuw nsw i64 %indvars.iv836, 1
  %exitcond843.not = icmp eq i64 %polly.indvar_next565, 32
  br i1 %exitcond843.not, label %polly.loop_header561.1, label %polly.loop_header561

polly.loop_header567:                             ; preds = %polly.loop_exit575, %polly.loop_header561
  %polly.indvar570 = phi i64 [ 0, %polly.loop_header561 ], [ %polly.indvar_next571, %polly.loop_exit575 ]
  %133 = shl i64 %polly.indvar570, 3
  %polly.access.add.Packed_MemRef_call2434583 = add nuw nsw i64 %polly.indvar570, %polly.access.mul.Packed_MemRef_call2434582
  %polly.access.Packed_MemRef_call2434584 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583
  %_p_scalar_585 = load double, double* %polly.access.Packed_MemRef_call2434584, align 8
  %134 = add i64 %133, %131
  %scevgep590 = getelementptr i8, i8* %call1, i64 %134
  %scevgep590591 = bitcast i8* %scevgep590 to double*
  %_p_scalar_592 = load double, double* %scevgep590591, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header573

polly.loop_exit575:                               ; preds = %polly.loop_header573
  %polly.indvar_next571 = add nuw nsw i64 %polly.indvar570, 1
  %exitcond839.not = icmp eq i64 %polly.indvar_next571, 32
  br i1 %exitcond839.not, label %polly.loop_exit569, label %polly.loop_header567

polly.loop_header573:                             ; preds = %polly.loop_header573, %polly.loop_header567
  %polly.indvar576 = phi i64 [ 0, %polly.loop_header567 ], [ %polly.indvar_next577, %polly.loop_header573 ]
  %135 = mul nuw nsw i64 %polly.indvar576, 480
  %136 = add nuw nsw i64 %135, %133
  %scevgep579 = getelementptr i8, i8* %call1, i64 %136
  %scevgep579580 = bitcast i8* %scevgep579 to double*
  %_p_scalar_581 = load double, double* %scevgep579580, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i = fmul fast double %_p_scalar_585, %_p_scalar_581
  %polly.access.mul.Packed_MemRef_call2434586 = mul nuw nsw i64 %polly.indvar576, 60
  %polly.access.add.Packed_MemRef_call2434587 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586, %polly.indvar570
  %polly.access.Packed_MemRef_call2434588 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587
  %_p_scalar_589 = load double, double* %polly.access.Packed_MemRef_call2434588, align 8
  %p_mul37.i = fmul fast double %_p_scalar_592, %_p_scalar_589
  %137 = shl nuw nsw i64 %polly.indvar576, 3
  %138 = add nuw nsw i64 %137, %132
  %scevgep593 = getelementptr i8, i8* %call, i64 %138
  %scevgep593594 = bitcast i8* %scevgep593 to double*
  %_p_scalar_595 = load double, double* %scevgep593594, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_595
  store double %p_add42.i, double* %scevgep593594, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %exitcond838.not = icmp eq i64 %polly.indvar_next577, %indvars.iv836
  br i1 %exitcond838.not, label %polly.loop_exit575, label %polly.loop_header573

polly.loop_header734:                             ; preds = %entry, %polly.loop_exit742
  %polly.indvar737 = phi i64 [ %polly.indvar_next738, %polly.loop_exit742 ], [ 0, %entry ]
  %139 = mul nuw nsw i64 %polly.indvar737, 640
  %140 = trunc i64 %polly.indvar737 to i32
  %broadcast.splatinsert1077 = insertelement <4 x i32> poison, i32 %140, i32 0
  %broadcast.splat1078 = shufflevector <4 x i32> %broadcast.splatinsert1077, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1067

vector.body1067:                                  ; preds = %vector.body1067, %polly.loop_header734
  %index1069 = phi i64 [ 0, %polly.loop_header734 ], [ %index.next1070, %vector.body1067 ]
  %vec.ind1075 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734 ], [ %vec.ind.next1076, %vector.body1067 ]
  %141 = mul <4 x i32> %vec.ind1075, %broadcast.splat1078
  %142 = add <4 x i32> %141, <i32 3, i32 3, i32 3, i32 3>
  %143 = urem <4 x i32> %142, <i32 80, i32 80, i32 80, i32 80>
  %144 = sitofp <4 x i32> %143 to <4 x double>
  %145 = fmul fast <4 x double> %144, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %146 = shl i64 %index1069, 3
  %147 = add nuw nsw i64 %146, %139
  %148 = getelementptr i8, i8* %call, i64 %147
  %149 = bitcast i8* %148 to <4 x double>*
  store <4 x double> %145, <4 x double>* %149, align 8, !alias.scope !90, !noalias !92
  %index.next1070 = add i64 %index1069, 4
  %vec.ind.next1076 = add <4 x i32> %vec.ind1075, <i32 4, i32 4, i32 4, i32 4>
  %150 = icmp eq i64 %index.next1070, 32
  br i1 %150, label %polly.loop_exit742, label %vector.body1067, !llvm.loop !95

polly.loop_exit742:                               ; preds = %vector.body1067
  %polly.indvar_next738 = add nuw nsw i64 %polly.indvar737, 1
  %exitcond870.not = icmp eq i64 %polly.indvar_next738, 32
  br i1 %exitcond870.not, label %polly.loop_header734.1, label %polly.loop_header734

polly.loop_header761:                             ; preds = %polly.loop_exit742.2.2, %polly.loop_exit769
  %polly.indvar764 = phi i64 [ %polly.indvar_next765, %polly.loop_exit769 ], [ 0, %polly.loop_exit742.2.2 ]
  %151 = mul nuw nsw i64 %polly.indvar764, 480
  %152 = trunc i64 %polly.indvar764 to i32
  %broadcast.splatinsert1191 = insertelement <4 x i32> poison, i32 %152, i32 0
  %broadcast.splat1192 = shufflevector <4 x i32> %broadcast.splatinsert1191, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1181

vector.body1181:                                  ; preds = %vector.body1181, %polly.loop_header761
  %index1183 = phi i64 [ 0, %polly.loop_header761 ], [ %index.next1184, %vector.body1181 ]
  %vec.ind1189 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header761 ], [ %vec.ind.next1190, %vector.body1181 ]
  %153 = mul <4 x i32> %vec.ind1189, %broadcast.splat1192
  %154 = add <4 x i32> %153, <i32 2, i32 2, i32 2, i32 2>
  %155 = urem <4 x i32> %154, <i32 60, i32 60, i32 60, i32 60>
  %156 = sitofp <4 x i32> %155 to <4 x double>
  %157 = fmul fast <4 x double> %156, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %158 = shl i64 %index1183, 3
  %159 = add i64 %158, %151
  %160 = getelementptr i8, i8* %call2, i64 %159
  %161 = bitcast i8* %160 to <4 x double>*
  store <4 x double> %157, <4 x double>* %161, align 8, !alias.scope !94, !noalias !96
  %index.next1184 = add i64 %index1183, 4
  %vec.ind.next1190 = add <4 x i32> %vec.ind1189, <i32 4, i32 4, i32 4, i32 4>
  %162 = icmp eq i64 %index.next1184, 32
  br i1 %162, label %polly.loop_exit769, label %vector.body1181, !llvm.loop !97

polly.loop_exit769:                               ; preds = %vector.body1181
  %polly.indvar_next765 = add nuw nsw i64 %polly.indvar764, 1
  %exitcond861.not = icmp eq i64 %polly.indvar_next765, 32
  br i1 %exitcond861.not, label %polly.loop_header761.1, label %polly.loop_header761

polly.loop_header787:                             ; preds = %polly.loop_exit769.1.2, %polly.loop_exit795
  %polly.indvar790 = phi i64 [ %polly.indvar_next791, %polly.loop_exit795 ], [ 0, %polly.loop_exit769.1.2 ]
  %163 = mul nuw nsw i64 %polly.indvar790, 480
  %164 = trunc i64 %polly.indvar790 to i32
  %broadcast.splatinsert1269 = insertelement <4 x i32> poison, i32 %164, i32 0
  %broadcast.splat1270 = shufflevector <4 x i32> %broadcast.splatinsert1269, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1259

vector.body1259:                                  ; preds = %vector.body1259, %polly.loop_header787
  %index1261 = phi i64 [ 0, %polly.loop_header787 ], [ %index.next1262, %vector.body1259 ]
  %vec.ind1267 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787 ], [ %vec.ind.next1268, %vector.body1259 ]
  %165 = mul <4 x i32> %vec.ind1267, %broadcast.splat1270
  %166 = add <4 x i32> %165, <i32 1, i32 1, i32 1, i32 1>
  %167 = urem <4 x i32> %166, <i32 80, i32 80, i32 80, i32 80>
  %168 = sitofp <4 x i32> %167 to <4 x double>
  %169 = fmul fast <4 x double> %168, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %170 = shl i64 %index1261, 3
  %171 = add i64 %170, %163
  %172 = getelementptr i8, i8* %call1, i64 %171
  %173 = bitcast i8* %172 to <4 x double>*
  store <4 x double> %169, <4 x double>* %173, align 8, !alias.scope !93, !noalias !98
  %index.next1262 = add i64 %index1261, 4
  %vec.ind.next1268 = add <4 x i32> %vec.ind1267, <i32 4, i32 4, i32 4, i32 4>
  %174 = icmp eq i64 %index.next1262, 32
  br i1 %174, label %polly.loop_exit795, label %vector.body1259, !llvm.loop !99

polly.loop_exit795:                               ; preds = %vector.body1259
  %polly.indvar_next791 = add nuw nsw i64 %polly.indvar790, 1
  %exitcond855.not = icmp eq i64 %polly.indvar_next791, 32
  br i1 %exitcond855.not, label %polly.loop_header787.1, label %polly.loop_header787

polly.loop_header227.1:                           ; preds = %polly.loop_exit235, %polly.loop_exit235.1
  %indvars.iv804.1 = phi i64 [ %indvars.iv.next805.1, %polly.loop_exit235.1 ], [ 1, %polly.loop_exit235 ]
  %polly.indvar230.1 = phi i64 [ %polly.indvar_next231.1, %polly.loop_exit235.1 ], [ 0, %polly.loop_exit235 ]
  %polly.access.mul.Packed_MemRef_call2248.1 = mul nuw nsw i64 %polly.indvar230.1, 60
  %175 = mul nuw nsw i64 %polly.indvar230.1, 480
  %176 = mul nuw nsw i64 %polly.indvar230.1, 640
  br label %polly.loop_header233.1

polly.loop_header233.1:                           ; preds = %polly.loop_exit241.1, %polly.loop_header227.1
  %polly.indvar236.1 = phi i64 [ 0, %polly.loop_header227.1 ], [ %polly.indvar_next237.1, %polly.loop_exit241.1 ]
  %177 = add nuw nsw i64 %polly.indvar236.1, 32
  %178 = shl i64 %177, 3
  %polly.access.add.Packed_MemRef_call2249.1 = add nuw nsw i64 %177, %polly.access.mul.Packed_MemRef_call2248.1
  %polly.access.Packed_MemRef_call2250.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.1
  %_p_scalar_251.1 = load double, double* %polly.access.Packed_MemRef_call2250.1, align 8
  %179 = add i64 %178, %175
  %scevgep256.1 = getelementptr i8, i8* %call1, i64 %179
  %scevgep256257.1 = bitcast i8* %scevgep256.1 to double*
  %_p_scalar_258.1 = load double, double* %scevgep256257.1, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header239.1

polly.loop_header239.1:                           ; preds = %polly.loop_header239.1, %polly.loop_header233.1
  %polly.indvar242.1 = phi i64 [ 0, %polly.loop_header233.1 ], [ %polly.indvar_next243.1, %polly.loop_header239.1 ]
  %180 = mul nuw nsw i64 %polly.indvar242.1, 480
  %181 = add nuw nsw i64 %180, %178
  %scevgep245.1 = getelementptr i8, i8* %call1, i64 %181
  %scevgep245246.1 = bitcast i8* %scevgep245.1 to double*
  %_p_scalar_247.1 = load double, double* %scevgep245246.1, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.1 = fmul fast double %_p_scalar_251.1, %_p_scalar_247.1
  %polly.access.mul.Packed_MemRef_call2252.1 = mul nuw nsw i64 %polly.indvar242.1, 60
  %polly.access.add.Packed_MemRef_call2253.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252.1, %177
  %polly.access.Packed_MemRef_call2254.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.1
  %_p_scalar_255.1 = load double, double* %polly.access.Packed_MemRef_call2254.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_258.1, %_p_scalar_255.1
  %182 = shl nuw nsw i64 %polly.indvar242.1, 3
  %183 = add nuw nsw i64 %182, %176
  %scevgep259.1 = getelementptr i8, i8* %call, i64 %183
  %scevgep259260.1 = bitcast i8* %scevgep259.1 to double*
  %_p_scalar_261.1 = load double, double* %scevgep259260.1, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_261.1
  store double %p_add42.i118.1, double* %scevgep259260.1, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next243.1 = add nuw nsw i64 %polly.indvar242.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next243.1, %indvars.iv804.1
  br i1 %exitcond.1.not, label %polly.loop_exit241.1, label %polly.loop_header239.1

polly.loop_exit241.1:                             ; preds = %polly.loop_header239.1
  %polly.indvar_next237.1 = add nuw nsw i64 %polly.indvar236.1, 1
  %exitcond806.1.not = icmp eq i64 %polly.indvar_next237.1, 28
  br i1 %exitcond806.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.1

polly.loop_exit235.1:                             ; preds = %polly.loop_exit241.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %indvars.iv.next805.1 = add nuw nsw i64 %indvars.iv804.1, 1
  %exitcond809.1.not = icmp eq i64 %polly.indvar_next231.1, 32
  br i1 %exitcond809.1.not, label %polly.loop_header227.1877, label %polly.loop_header227.1

polly.loop_header227.1877:                        ; preds = %polly.loop_exit235.1, %polly.loop_exit235.1911
  %indvars.iv804.1874 = phi i64 [ %indvars.iv.next805.1909, %polly.loop_exit235.1911 ], [ 33, %polly.loop_exit235.1 ]
  %polly.indvar230.1875 = phi i64 [ %polly.indvar_next231.1908, %polly.loop_exit235.1911 ], [ 0, %polly.loop_exit235.1 ]
  %184 = add nuw nsw i64 %polly.indvar230.1875, 32
  %polly.access.mul.Packed_MemRef_call2248.1876 = mul nuw nsw i64 %184, 60
  %185 = mul nuw nsw i64 %184, 480
  %186 = mul nuw nsw i64 %184, 640
  br label %polly.loop_header233.1885

polly.loop_header233.1885:                        ; preds = %polly.loop_exit241.1907, %polly.loop_header227.1877
  %polly.indvar236.1878 = phi i64 [ 0, %polly.loop_header227.1877 ], [ %polly.indvar_next237.1905, %polly.loop_exit241.1907 ]
  %187 = shl i64 %polly.indvar236.1878, 3
  %polly.access.add.Packed_MemRef_call2249.1879 = add nuw nsw i64 %polly.indvar236.1878, %polly.access.mul.Packed_MemRef_call2248.1876
  %polly.access.Packed_MemRef_call2250.1880 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.1879
  %_p_scalar_251.1881 = load double, double* %polly.access.Packed_MemRef_call2250.1880, align 8
  %188 = add i64 %187, %185
  %scevgep256.1882 = getelementptr i8, i8* %call1, i64 %188
  %scevgep256257.1883 = bitcast i8* %scevgep256.1882 to double*
  %_p_scalar_258.1884 = load double, double* %scevgep256257.1883, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header239.1904

polly.loop_header239.1904:                        ; preds = %polly.loop_header239.1904, %polly.loop_header233.1885
  %polly.indvar242.1886 = phi i64 [ 0, %polly.loop_header233.1885 ], [ %polly.indvar_next243.1902, %polly.loop_header239.1904 ]
  %189 = mul nuw nsw i64 %polly.indvar242.1886, 480
  %190 = add nuw nsw i64 %189, %187
  %scevgep245.1887 = getelementptr i8, i8* %call1, i64 %190
  %scevgep245246.1888 = bitcast i8* %scevgep245.1887 to double*
  %_p_scalar_247.1889 = load double, double* %scevgep245246.1888, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.1890 = fmul fast double %_p_scalar_251.1881, %_p_scalar_247.1889
  %polly.access.mul.Packed_MemRef_call2252.1891 = mul nuw nsw i64 %polly.indvar242.1886, 60
  %polly.access.add.Packed_MemRef_call2253.1892 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252.1891, %polly.indvar236.1878
  %polly.access.Packed_MemRef_call2254.1893 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.1892
  %_p_scalar_255.1894 = load double, double* %polly.access.Packed_MemRef_call2254.1893, align 8
  %p_mul37.i114.1895 = fmul fast double %_p_scalar_258.1884, %_p_scalar_255.1894
  %191 = shl nuw nsw i64 %polly.indvar242.1886, 3
  %192 = add nuw nsw i64 %191, %186
  %scevgep259.1896 = getelementptr i8, i8* %call, i64 %192
  %scevgep259260.1897 = bitcast i8* %scevgep259.1896 to double*
  %_p_scalar_261.1898 = load double, double* %scevgep259260.1897, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.1899 = fadd fast double %p_mul37.i114.1895, %p_mul27.i112.1890
  %p_reass.mul.i117.1900 = fmul fast double %p_reass.add.i116.1899, 1.500000e+00
  %p_add42.i118.1901 = fadd fast double %p_reass.mul.i117.1900, %_p_scalar_261.1898
  store double %p_add42.i118.1901, double* %scevgep259260.1897, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next243.1902 = add nuw nsw i64 %polly.indvar242.1886, 1
  %exitcond.1903.not = icmp eq i64 %polly.indvar_next243.1902, %indvars.iv804.1874
  br i1 %exitcond.1903.not, label %polly.loop_exit241.1907, label %polly.loop_header239.1904

polly.loop_exit241.1907:                          ; preds = %polly.loop_header239.1904
  %polly.indvar_next237.1905 = add nuw nsw i64 %polly.indvar236.1878, 1
  %exitcond806.1906.not = icmp eq i64 %polly.indvar_next237.1905, 32
  br i1 %exitcond806.1906.not, label %polly.loop_exit235.1911, label %polly.loop_header233.1885

polly.loop_exit235.1911:                          ; preds = %polly.loop_exit241.1907
  %polly.indvar_next231.1908 = add nuw nsw i64 %polly.indvar230.1875, 1
  %indvars.iv.next805.1909 = add nuw nsw i64 %indvars.iv804.1874, 1
  %exitcond809.1910.not = icmp eq i64 %polly.indvar_next231.1908, 32
  br i1 %exitcond809.1910.not, label %polly.loop_header227.1.1, label %polly.loop_header227.1877

polly.loop_header227.1.1:                         ; preds = %polly.loop_exit235.1911, %polly.loop_exit235.1.1
  %indvars.iv804.1.1 = phi i64 [ %indvars.iv.next805.1.1, %polly.loop_exit235.1.1 ], [ 33, %polly.loop_exit235.1911 ]
  %polly.indvar230.1.1 = phi i64 [ %polly.indvar_next231.1.1, %polly.loop_exit235.1.1 ], [ 0, %polly.loop_exit235.1911 ]
  %193 = add nuw nsw i64 %polly.indvar230.1.1, 32
  %polly.access.mul.Packed_MemRef_call2248.1.1 = mul nuw nsw i64 %193, 60
  %194 = mul nuw nsw i64 %193, 480
  %195 = mul nuw nsw i64 %193, 640
  br label %polly.loop_header233.1.1

polly.loop_header233.1.1:                         ; preds = %polly.loop_exit241.1.1, %polly.loop_header227.1.1
  %polly.indvar236.1.1 = phi i64 [ 0, %polly.loop_header227.1.1 ], [ %polly.indvar_next237.1.1, %polly.loop_exit241.1.1 ]
  %196 = add nuw nsw i64 %polly.indvar236.1.1, 32
  %197 = shl i64 %196, 3
  %polly.access.add.Packed_MemRef_call2249.1.1 = add nuw nsw i64 %196, %polly.access.mul.Packed_MemRef_call2248.1.1
  %polly.access.Packed_MemRef_call2250.1.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.1.1
  %_p_scalar_251.1.1 = load double, double* %polly.access.Packed_MemRef_call2250.1.1, align 8
  %198 = add i64 %197, %194
  %scevgep256.1.1 = getelementptr i8, i8* %call1, i64 %198
  %scevgep256257.1.1 = bitcast i8* %scevgep256.1.1 to double*
  %_p_scalar_258.1.1 = load double, double* %scevgep256257.1.1, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header239.1.1

polly.loop_header239.1.1:                         ; preds = %polly.loop_header239.1.1, %polly.loop_header233.1.1
  %polly.indvar242.1.1 = phi i64 [ 0, %polly.loop_header233.1.1 ], [ %polly.indvar_next243.1.1, %polly.loop_header239.1.1 ]
  %199 = mul nuw nsw i64 %polly.indvar242.1.1, 480
  %200 = add nuw nsw i64 %199, %197
  %scevgep245.1.1 = getelementptr i8, i8* %call1, i64 %200
  %scevgep245246.1.1 = bitcast i8* %scevgep245.1.1 to double*
  %_p_scalar_247.1.1 = load double, double* %scevgep245246.1.1, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.1.1 = fmul fast double %_p_scalar_251.1.1, %_p_scalar_247.1.1
  %polly.access.mul.Packed_MemRef_call2252.1.1 = mul nuw nsw i64 %polly.indvar242.1.1, 60
  %polly.access.add.Packed_MemRef_call2253.1.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252.1.1, %196
  %polly.access.Packed_MemRef_call2254.1.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.1.1
  %_p_scalar_255.1.1 = load double, double* %polly.access.Packed_MemRef_call2254.1.1, align 8
  %p_mul37.i114.1.1 = fmul fast double %_p_scalar_258.1.1, %_p_scalar_255.1.1
  %201 = shl nuw nsw i64 %polly.indvar242.1.1, 3
  %202 = add nuw nsw i64 %201, %195
  %scevgep259.1.1 = getelementptr i8, i8* %call, i64 %202
  %scevgep259260.1.1 = bitcast i8* %scevgep259.1.1 to double*
  %_p_scalar_261.1.1 = load double, double* %scevgep259260.1.1, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.1.1 = fadd fast double %p_mul37.i114.1.1, %p_mul27.i112.1.1
  %p_reass.mul.i117.1.1 = fmul fast double %p_reass.add.i116.1.1, 1.500000e+00
  %p_add42.i118.1.1 = fadd fast double %p_reass.mul.i117.1.1, %_p_scalar_261.1.1
  store double %p_add42.i118.1.1, double* %scevgep259260.1.1, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next243.1.1 = add nuw nsw i64 %polly.indvar242.1.1, 1
  %exitcond.1.1.not = icmp eq i64 %polly.indvar_next243.1.1, %indvars.iv804.1.1
  br i1 %exitcond.1.1.not, label %polly.loop_exit241.1.1, label %polly.loop_header239.1.1

polly.loop_exit241.1.1:                           ; preds = %polly.loop_header239.1.1
  %polly.indvar_next237.1.1 = add nuw nsw i64 %polly.indvar236.1.1, 1
  %exitcond806.1.1.not = icmp eq i64 %polly.indvar_next237.1.1, 28
  br i1 %exitcond806.1.1.not, label %polly.loop_exit235.1.1, label %polly.loop_header233.1.1

polly.loop_exit235.1.1:                           ; preds = %polly.loop_exit241.1.1
  %polly.indvar_next231.1.1 = add nuw nsw i64 %polly.indvar230.1.1, 1
  %indvars.iv.next805.1.1 = add nuw nsw i64 %indvars.iv804.1.1, 1
  %exitcond809.1.1.not = icmp eq i64 %polly.indvar_next231.1.1, 32
  br i1 %exitcond809.1.1.not, label %polly.loop_header227.2, label %polly.loop_header227.1.1

polly.loop_header227.2:                           ; preds = %polly.loop_exit235.1.1, %polly.loop_exit235.2
  %indvars.iv804.2 = phi i64 [ %indvars.iv.next805.2, %polly.loop_exit235.2 ], [ 65, %polly.loop_exit235.1.1 ]
  %polly.indvar230.2 = phi i64 [ %polly.indvar_next231.2, %polly.loop_exit235.2 ], [ 0, %polly.loop_exit235.1.1 ]
  %203 = add nuw nsw i64 %polly.indvar230.2, 64
  %polly.access.mul.Packed_MemRef_call2248.2 = mul nuw nsw i64 %203, 60
  %204 = mul nuw nsw i64 %203, 480
  %205 = mul nuw nsw i64 %203, 640
  br label %polly.loop_header233.2

polly.loop_header233.2:                           ; preds = %polly.loop_exit241.2, %polly.loop_header227.2
  %polly.indvar236.2 = phi i64 [ 0, %polly.loop_header227.2 ], [ %polly.indvar_next237.2, %polly.loop_exit241.2 ]
  %206 = shl i64 %polly.indvar236.2, 3
  %polly.access.add.Packed_MemRef_call2249.2 = add nuw nsw i64 %polly.indvar236.2, %polly.access.mul.Packed_MemRef_call2248.2
  %polly.access.Packed_MemRef_call2250.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.2
  %_p_scalar_251.2 = load double, double* %polly.access.Packed_MemRef_call2250.2, align 8
  %207 = add i64 %206, %204
  %scevgep256.2 = getelementptr i8, i8* %call1, i64 %207
  %scevgep256257.2 = bitcast i8* %scevgep256.2 to double*
  %_p_scalar_258.2 = load double, double* %scevgep256257.2, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header239.2

polly.loop_header239.2:                           ; preds = %polly.loop_header239.2, %polly.loop_header233.2
  %polly.indvar242.2 = phi i64 [ 0, %polly.loop_header233.2 ], [ %polly.indvar_next243.2, %polly.loop_header239.2 ]
  %208 = mul nuw nsw i64 %polly.indvar242.2, 480
  %209 = add nuw nsw i64 %208, %206
  %scevgep245.2 = getelementptr i8, i8* %call1, i64 %209
  %scevgep245246.2 = bitcast i8* %scevgep245.2 to double*
  %_p_scalar_247.2 = load double, double* %scevgep245246.2, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.2 = fmul fast double %_p_scalar_251.2, %_p_scalar_247.2
  %polly.access.mul.Packed_MemRef_call2252.2 = mul nuw nsw i64 %polly.indvar242.2, 60
  %polly.access.add.Packed_MemRef_call2253.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252.2, %polly.indvar236.2
  %polly.access.Packed_MemRef_call2254.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.2
  %_p_scalar_255.2 = load double, double* %polly.access.Packed_MemRef_call2254.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_258.2, %_p_scalar_255.2
  %210 = shl nuw nsw i64 %polly.indvar242.2, 3
  %211 = add nuw nsw i64 %210, %205
  %scevgep259.2 = getelementptr i8, i8* %call, i64 %211
  %scevgep259260.2 = bitcast i8* %scevgep259.2 to double*
  %_p_scalar_261.2 = load double, double* %scevgep259260.2, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_261.2
  store double %p_add42.i118.2, double* %scevgep259260.2, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next243.2 = add nuw nsw i64 %polly.indvar242.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next243.2, %indvars.iv804.2
  br i1 %exitcond.2.not, label %polly.loop_exit241.2, label %polly.loop_header239.2

polly.loop_exit241.2:                             ; preds = %polly.loop_header239.2
  %polly.indvar_next237.2 = add nuw nsw i64 %polly.indvar236.2, 1
  %exitcond806.2.not = icmp eq i64 %polly.indvar_next237.2, 32
  br i1 %exitcond806.2.not, label %polly.loop_exit235.2, label %polly.loop_header233.2

polly.loop_exit235.2:                             ; preds = %polly.loop_exit241.2
  %polly.indvar_next231.2 = add nuw nsw i64 %polly.indvar230.2, 1
  %indvars.iv.next805.2 = add nuw nsw i64 %indvars.iv804.2, 1
  %exitcond809.2.not = icmp eq i64 %polly.indvar_next231.2, 16
  br i1 %exitcond809.2.not, label %polly.loop_header227.1.2, label %polly.loop_header227.2

polly.loop_header227.1.2:                         ; preds = %polly.loop_exit235.2, %polly.loop_exit235.1.2
  %indvars.iv804.1.2 = phi i64 [ %indvars.iv.next805.1.2, %polly.loop_exit235.1.2 ], [ 65, %polly.loop_exit235.2 ]
  %polly.indvar230.1.2 = phi i64 [ %polly.indvar_next231.1.2, %polly.loop_exit235.1.2 ], [ 0, %polly.loop_exit235.2 ]
  %212 = add nuw nsw i64 %polly.indvar230.1.2, 64
  %polly.access.mul.Packed_MemRef_call2248.1.2 = mul nuw nsw i64 %212, 60
  %213 = mul nuw nsw i64 %212, 480
  %214 = mul nuw nsw i64 %212, 640
  br label %polly.loop_header233.1.2

polly.loop_header233.1.2:                         ; preds = %polly.loop_exit241.1.2, %polly.loop_header227.1.2
  %polly.indvar236.1.2 = phi i64 [ 0, %polly.loop_header227.1.2 ], [ %polly.indvar_next237.1.2, %polly.loop_exit241.1.2 ]
  %215 = add nuw nsw i64 %polly.indvar236.1.2, 32
  %216 = shl i64 %215, 3
  %polly.access.add.Packed_MemRef_call2249.1.2 = add nuw nsw i64 %215, %polly.access.mul.Packed_MemRef_call2248.1.2
  %polly.access.Packed_MemRef_call2250.1.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.1.2
  %_p_scalar_251.1.2 = load double, double* %polly.access.Packed_MemRef_call2250.1.2, align 8
  %217 = add i64 %216, %213
  %scevgep256.1.2 = getelementptr i8, i8* %call1, i64 %217
  %scevgep256257.1.2 = bitcast i8* %scevgep256.1.2 to double*
  %_p_scalar_258.1.2 = load double, double* %scevgep256257.1.2, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header239.1.2

polly.loop_header239.1.2:                         ; preds = %polly.loop_header239.1.2, %polly.loop_header233.1.2
  %polly.indvar242.1.2 = phi i64 [ 0, %polly.loop_header233.1.2 ], [ %polly.indvar_next243.1.2, %polly.loop_header239.1.2 ]
  %218 = mul nuw nsw i64 %polly.indvar242.1.2, 480
  %219 = add nuw nsw i64 %218, %216
  %scevgep245.1.2 = getelementptr i8, i8* %call1, i64 %219
  %scevgep245246.1.2 = bitcast i8* %scevgep245.1.2 to double*
  %_p_scalar_247.1.2 = load double, double* %scevgep245246.1.2, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.1.2 = fmul fast double %_p_scalar_251.1.2, %_p_scalar_247.1.2
  %polly.access.mul.Packed_MemRef_call2252.1.2 = mul nuw nsw i64 %polly.indvar242.1.2, 60
  %polly.access.add.Packed_MemRef_call2253.1.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252.1.2, %215
  %polly.access.Packed_MemRef_call2254.1.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.1.2
  %_p_scalar_255.1.2 = load double, double* %polly.access.Packed_MemRef_call2254.1.2, align 8
  %p_mul37.i114.1.2 = fmul fast double %_p_scalar_258.1.2, %_p_scalar_255.1.2
  %220 = shl nuw nsw i64 %polly.indvar242.1.2, 3
  %221 = add nuw nsw i64 %220, %214
  %scevgep259.1.2 = getelementptr i8, i8* %call, i64 %221
  %scevgep259260.1.2 = bitcast i8* %scevgep259.1.2 to double*
  %_p_scalar_261.1.2 = load double, double* %scevgep259260.1.2, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.1.2 = fadd fast double %p_mul37.i114.1.2, %p_mul27.i112.1.2
  %p_reass.mul.i117.1.2 = fmul fast double %p_reass.add.i116.1.2, 1.500000e+00
  %p_add42.i118.1.2 = fadd fast double %p_reass.mul.i117.1.2, %_p_scalar_261.1.2
  store double %p_add42.i118.1.2, double* %scevgep259260.1.2, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next243.1.2 = add nuw nsw i64 %polly.indvar242.1.2, 1
  %exitcond.1.2.not = icmp eq i64 %polly.indvar_next243.1.2, %indvars.iv804.1.2
  br i1 %exitcond.1.2.not, label %polly.loop_exit241.1.2, label %polly.loop_header239.1.2

polly.loop_exit241.1.2:                           ; preds = %polly.loop_header239.1.2
  %polly.indvar_next237.1.2 = add nuw nsw i64 %polly.indvar236.1.2, 1
  %exitcond806.1.2.not = icmp eq i64 %polly.indvar_next237.1.2, 28
  br i1 %exitcond806.1.2.not, label %polly.loop_exit235.1.2, label %polly.loop_header233.1.2

polly.loop_exit235.1.2:                           ; preds = %polly.loop_exit241.1.2
  %polly.indvar_next231.1.2 = add nuw nsw i64 %polly.indvar230.1.2, 1
  %indvars.iv.next805.1.2 = add nuw nsw i64 %indvars.iv804.1.2, 1
  %exitcond809.1.2.not = icmp eq i64 %polly.indvar_next231.1.2, 16
  br i1 %exitcond809.1.2.not, label %polly.loop_exit229.1.2, label %polly.loop_header227.1.2

polly.loop_exit229.1.2:                           ; preds = %polly.loop_exit235.1.2
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header394.1:                           ; preds = %polly.loop_exit402, %polly.loop_exit402.1
  %indvars.iv819.1 = phi i64 [ %indvars.iv.next820.1, %polly.loop_exit402.1 ], [ 1, %polly.loop_exit402 ]
  %polly.indvar397.1 = phi i64 [ %polly.indvar_next398.1, %polly.loop_exit402.1 ], [ 0, %polly.loop_exit402 ]
  %polly.access.mul.Packed_MemRef_call2267415.1 = mul nuw nsw i64 %polly.indvar397.1, 60
  %222 = mul nuw nsw i64 %polly.indvar397.1, 480
  %223 = mul nuw nsw i64 %polly.indvar397.1, 640
  br label %polly.loop_header400.1

polly.loop_header400.1:                           ; preds = %polly.loop_exit408.1, %polly.loop_header394.1
  %polly.indvar403.1 = phi i64 [ 0, %polly.loop_header394.1 ], [ %polly.indvar_next404.1, %polly.loop_exit408.1 ]
  %224 = add nuw nsw i64 %polly.indvar403.1, 32
  %225 = shl i64 %224, 3
  %polly.access.add.Packed_MemRef_call2267416.1 = add nuw nsw i64 %224, %polly.access.mul.Packed_MemRef_call2267415.1
  %polly.access.Packed_MemRef_call2267417.1 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.1
  %_p_scalar_418.1 = load double, double* %polly.access.Packed_MemRef_call2267417.1, align 8
  %226 = add i64 %225, %222
  %scevgep423.1 = getelementptr i8, i8* %call1, i64 %226
  %scevgep423424.1 = bitcast i8* %scevgep423.1 to double*
  %_p_scalar_425.1 = load double, double* %scevgep423424.1, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header406.1

polly.loop_header406.1:                           ; preds = %polly.loop_header406.1, %polly.loop_header400.1
  %polly.indvar409.1 = phi i64 [ 0, %polly.loop_header400.1 ], [ %polly.indvar_next410.1, %polly.loop_header406.1 ]
  %227 = mul nuw nsw i64 %polly.indvar409.1, 480
  %228 = add nuw nsw i64 %227, %225
  %scevgep412.1 = getelementptr i8, i8* %call1, i64 %228
  %scevgep412413.1 = bitcast i8* %scevgep412.1 to double*
  %_p_scalar_414.1 = load double, double* %scevgep412413.1, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.1 = fmul fast double %_p_scalar_418.1, %_p_scalar_414.1
  %polly.access.mul.Packed_MemRef_call2267419.1 = mul nuw nsw i64 %polly.indvar409.1, 60
  %polly.access.add.Packed_MemRef_call2267420.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419.1, %224
  %polly.access.Packed_MemRef_call2267421.1 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.1
  %_p_scalar_422.1 = load double, double* %polly.access.Packed_MemRef_call2267421.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_425.1, %_p_scalar_422.1
  %229 = shl nuw nsw i64 %polly.indvar409.1, 3
  %230 = add nuw nsw i64 %229, %223
  %scevgep426.1 = getelementptr i8, i8* %call, i64 %230
  %scevgep426427.1 = bitcast i8* %scevgep426.1 to double*
  %_p_scalar_428.1 = load double, double* %scevgep426427.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_428.1
  store double %p_add42.i79.1, double* %scevgep426427.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next410.1 = add nuw nsw i64 %polly.indvar409.1, 1
  %exitcond821.1.not = icmp eq i64 %polly.indvar_next410.1, %indvars.iv819.1
  br i1 %exitcond821.1.not, label %polly.loop_exit408.1, label %polly.loop_header406.1

polly.loop_exit408.1:                             ; preds = %polly.loop_header406.1
  %polly.indvar_next404.1 = add nuw nsw i64 %polly.indvar403.1, 1
  %exitcond822.1.not = icmp eq i64 %polly.indvar_next404.1, 28
  br i1 %exitcond822.1.not, label %polly.loop_exit402.1, label %polly.loop_header400.1

polly.loop_exit402.1:                             ; preds = %polly.loop_exit408.1
  %polly.indvar_next398.1 = add nuw nsw i64 %polly.indvar397.1, 1
  %indvars.iv.next820.1 = add nuw nsw i64 %indvars.iv819.1, 1
  %exitcond826.1.not = icmp eq i64 %polly.indvar_next398.1, 32
  br i1 %exitcond826.1.not, label %polly.loop_header394.1916, label %polly.loop_header394.1

polly.loop_header394.1916:                        ; preds = %polly.loop_exit402.1, %polly.loop_exit402.1950
  %indvars.iv819.1913 = phi i64 [ %indvars.iv.next820.1948, %polly.loop_exit402.1950 ], [ 33, %polly.loop_exit402.1 ]
  %polly.indvar397.1914 = phi i64 [ %polly.indvar_next398.1947, %polly.loop_exit402.1950 ], [ 0, %polly.loop_exit402.1 ]
  %231 = add nuw nsw i64 %polly.indvar397.1914, 32
  %polly.access.mul.Packed_MemRef_call2267415.1915 = mul nuw nsw i64 %231, 60
  %232 = mul nuw nsw i64 %231, 480
  %233 = mul nuw nsw i64 %231, 640
  br label %polly.loop_header400.1924

polly.loop_header400.1924:                        ; preds = %polly.loop_exit408.1946, %polly.loop_header394.1916
  %polly.indvar403.1917 = phi i64 [ 0, %polly.loop_header394.1916 ], [ %polly.indvar_next404.1944, %polly.loop_exit408.1946 ]
  %234 = shl i64 %polly.indvar403.1917, 3
  %polly.access.add.Packed_MemRef_call2267416.1918 = add nuw nsw i64 %polly.indvar403.1917, %polly.access.mul.Packed_MemRef_call2267415.1915
  %polly.access.Packed_MemRef_call2267417.1919 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.1918
  %_p_scalar_418.1920 = load double, double* %polly.access.Packed_MemRef_call2267417.1919, align 8
  %235 = add i64 %234, %232
  %scevgep423.1921 = getelementptr i8, i8* %call1, i64 %235
  %scevgep423424.1922 = bitcast i8* %scevgep423.1921 to double*
  %_p_scalar_425.1923 = load double, double* %scevgep423424.1922, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header406.1943

polly.loop_header406.1943:                        ; preds = %polly.loop_header406.1943, %polly.loop_header400.1924
  %polly.indvar409.1925 = phi i64 [ 0, %polly.loop_header400.1924 ], [ %polly.indvar_next410.1941, %polly.loop_header406.1943 ]
  %236 = mul nuw nsw i64 %polly.indvar409.1925, 480
  %237 = add nuw nsw i64 %236, %234
  %scevgep412.1926 = getelementptr i8, i8* %call1, i64 %237
  %scevgep412413.1927 = bitcast i8* %scevgep412.1926 to double*
  %_p_scalar_414.1928 = load double, double* %scevgep412413.1927, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.1929 = fmul fast double %_p_scalar_418.1920, %_p_scalar_414.1928
  %polly.access.mul.Packed_MemRef_call2267419.1930 = mul nuw nsw i64 %polly.indvar409.1925, 60
  %polly.access.add.Packed_MemRef_call2267420.1931 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419.1930, %polly.indvar403.1917
  %polly.access.Packed_MemRef_call2267421.1932 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.1931
  %_p_scalar_422.1933 = load double, double* %polly.access.Packed_MemRef_call2267421.1932, align 8
  %p_mul37.i75.1934 = fmul fast double %_p_scalar_425.1923, %_p_scalar_422.1933
  %238 = shl nuw nsw i64 %polly.indvar409.1925, 3
  %239 = add nuw nsw i64 %238, %233
  %scevgep426.1935 = getelementptr i8, i8* %call, i64 %239
  %scevgep426427.1936 = bitcast i8* %scevgep426.1935 to double*
  %_p_scalar_428.1937 = load double, double* %scevgep426427.1936, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.1938 = fadd fast double %p_mul37.i75.1934, %p_mul27.i73.1929
  %p_reass.mul.i78.1939 = fmul fast double %p_reass.add.i77.1938, 1.500000e+00
  %p_add42.i79.1940 = fadd fast double %p_reass.mul.i78.1939, %_p_scalar_428.1937
  store double %p_add42.i79.1940, double* %scevgep426427.1936, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next410.1941 = add nuw nsw i64 %polly.indvar409.1925, 1
  %exitcond821.1942.not = icmp eq i64 %polly.indvar_next410.1941, %indvars.iv819.1913
  br i1 %exitcond821.1942.not, label %polly.loop_exit408.1946, label %polly.loop_header406.1943

polly.loop_exit408.1946:                          ; preds = %polly.loop_header406.1943
  %polly.indvar_next404.1944 = add nuw nsw i64 %polly.indvar403.1917, 1
  %exitcond822.1945.not = icmp eq i64 %polly.indvar_next404.1944, 32
  br i1 %exitcond822.1945.not, label %polly.loop_exit402.1950, label %polly.loop_header400.1924

polly.loop_exit402.1950:                          ; preds = %polly.loop_exit408.1946
  %polly.indvar_next398.1947 = add nuw nsw i64 %polly.indvar397.1914, 1
  %indvars.iv.next820.1948 = add nuw nsw i64 %indvars.iv819.1913, 1
  %exitcond826.1949.not = icmp eq i64 %polly.indvar_next398.1947, 32
  br i1 %exitcond826.1949.not, label %polly.loop_header394.1.1, label %polly.loop_header394.1916

polly.loop_header394.1.1:                         ; preds = %polly.loop_exit402.1950, %polly.loop_exit402.1.1
  %indvars.iv819.1.1 = phi i64 [ %indvars.iv.next820.1.1, %polly.loop_exit402.1.1 ], [ 33, %polly.loop_exit402.1950 ]
  %polly.indvar397.1.1 = phi i64 [ %polly.indvar_next398.1.1, %polly.loop_exit402.1.1 ], [ 0, %polly.loop_exit402.1950 ]
  %240 = add nuw nsw i64 %polly.indvar397.1.1, 32
  %polly.access.mul.Packed_MemRef_call2267415.1.1 = mul nuw nsw i64 %240, 60
  %241 = mul nuw nsw i64 %240, 480
  %242 = mul nuw nsw i64 %240, 640
  br label %polly.loop_header400.1.1

polly.loop_header400.1.1:                         ; preds = %polly.loop_exit408.1.1, %polly.loop_header394.1.1
  %polly.indvar403.1.1 = phi i64 [ 0, %polly.loop_header394.1.1 ], [ %polly.indvar_next404.1.1, %polly.loop_exit408.1.1 ]
  %243 = add nuw nsw i64 %polly.indvar403.1.1, 32
  %244 = shl i64 %243, 3
  %polly.access.add.Packed_MemRef_call2267416.1.1 = add nuw nsw i64 %243, %polly.access.mul.Packed_MemRef_call2267415.1.1
  %polly.access.Packed_MemRef_call2267417.1.1 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.1.1
  %_p_scalar_418.1.1 = load double, double* %polly.access.Packed_MemRef_call2267417.1.1, align 8
  %245 = add i64 %244, %241
  %scevgep423.1.1 = getelementptr i8, i8* %call1, i64 %245
  %scevgep423424.1.1 = bitcast i8* %scevgep423.1.1 to double*
  %_p_scalar_425.1.1 = load double, double* %scevgep423424.1.1, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header406.1.1

polly.loop_header406.1.1:                         ; preds = %polly.loop_header406.1.1, %polly.loop_header400.1.1
  %polly.indvar409.1.1 = phi i64 [ 0, %polly.loop_header400.1.1 ], [ %polly.indvar_next410.1.1, %polly.loop_header406.1.1 ]
  %246 = mul nuw nsw i64 %polly.indvar409.1.1, 480
  %247 = add nuw nsw i64 %246, %244
  %scevgep412.1.1 = getelementptr i8, i8* %call1, i64 %247
  %scevgep412413.1.1 = bitcast i8* %scevgep412.1.1 to double*
  %_p_scalar_414.1.1 = load double, double* %scevgep412413.1.1, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.1.1 = fmul fast double %_p_scalar_418.1.1, %_p_scalar_414.1.1
  %polly.access.mul.Packed_MemRef_call2267419.1.1 = mul nuw nsw i64 %polly.indvar409.1.1, 60
  %polly.access.add.Packed_MemRef_call2267420.1.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419.1.1, %243
  %polly.access.Packed_MemRef_call2267421.1.1 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.1.1
  %_p_scalar_422.1.1 = load double, double* %polly.access.Packed_MemRef_call2267421.1.1, align 8
  %p_mul37.i75.1.1 = fmul fast double %_p_scalar_425.1.1, %_p_scalar_422.1.1
  %248 = shl nuw nsw i64 %polly.indvar409.1.1, 3
  %249 = add nuw nsw i64 %248, %242
  %scevgep426.1.1 = getelementptr i8, i8* %call, i64 %249
  %scevgep426427.1.1 = bitcast i8* %scevgep426.1.1 to double*
  %_p_scalar_428.1.1 = load double, double* %scevgep426427.1.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.1.1 = fadd fast double %p_mul37.i75.1.1, %p_mul27.i73.1.1
  %p_reass.mul.i78.1.1 = fmul fast double %p_reass.add.i77.1.1, 1.500000e+00
  %p_add42.i79.1.1 = fadd fast double %p_reass.mul.i78.1.1, %_p_scalar_428.1.1
  store double %p_add42.i79.1.1, double* %scevgep426427.1.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next410.1.1 = add nuw nsw i64 %polly.indvar409.1.1, 1
  %exitcond821.1.1.not = icmp eq i64 %polly.indvar_next410.1.1, %indvars.iv819.1.1
  br i1 %exitcond821.1.1.not, label %polly.loop_exit408.1.1, label %polly.loop_header406.1.1

polly.loop_exit408.1.1:                           ; preds = %polly.loop_header406.1.1
  %polly.indvar_next404.1.1 = add nuw nsw i64 %polly.indvar403.1.1, 1
  %exitcond822.1.1.not = icmp eq i64 %polly.indvar_next404.1.1, 28
  br i1 %exitcond822.1.1.not, label %polly.loop_exit402.1.1, label %polly.loop_header400.1.1

polly.loop_exit402.1.1:                           ; preds = %polly.loop_exit408.1.1
  %polly.indvar_next398.1.1 = add nuw nsw i64 %polly.indvar397.1.1, 1
  %indvars.iv.next820.1.1 = add nuw nsw i64 %indvars.iv819.1.1, 1
  %exitcond826.1.1.not = icmp eq i64 %polly.indvar_next398.1.1, 32
  br i1 %exitcond826.1.1.not, label %polly.loop_header394.2, label %polly.loop_header394.1.1

polly.loop_header394.2:                           ; preds = %polly.loop_exit402.1.1, %polly.loop_exit402.2
  %indvars.iv819.2 = phi i64 [ %indvars.iv.next820.2, %polly.loop_exit402.2 ], [ 65, %polly.loop_exit402.1.1 ]
  %polly.indvar397.2 = phi i64 [ %polly.indvar_next398.2, %polly.loop_exit402.2 ], [ 0, %polly.loop_exit402.1.1 ]
  %250 = add nuw nsw i64 %polly.indvar397.2, 64
  %polly.access.mul.Packed_MemRef_call2267415.2 = mul nuw nsw i64 %250, 60
  %251 = mul nuw nsw i64 %250, 480
  %252 = mul nuw nsw i64 %250, 640
  br label %polly.loop_header400.2

polly.loop_header400.2:                           ; preds = %polly.loop_exit408.2, %polly.loop_header394.2
  %polly.indvar403.2 = phi i64 [ 0, %polly.loop_header394.2 ], [ %polly.indvar_next404.2, %polly.loop_exit408.2 ]
  %253 = shl i64 %polly.indvar403.2, 3
  %polly.access.add.Packed_MemRef_call2267416.2 = add nuw nsw i64 %polly.indvar403.2, %polly.access.mul.Packed_MemRef_call2267415.2
  %polly.access.Packed_MemRef_call2267417.2 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.2
  %_p_scalar_418.2 = load double, double* %polly.access.Packed_MemRef_call2267417.2, align 8
  %254 = add i64 %253, %251
  %scevgep423.2 = getelementptr i8, i8* %call1, i64 %254
  %scevgep423424.2 = bitcast i8* %scevgep423.2 to double*
  %_p_scalar_425.2 = load double, double* %scevgep423424.2, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header406.2

polly.loop_header406.2:                           ; preds = %polly.loop_header406.2, %polly.loop_header400.2
  %polly.indvar409.2 = phi i64 [ 0, %polly.loop_header400.2 ], [ %polly.indvar_next410.2, %polly.loop_header406.2 ]
  %255 = mul nuw nsw i64 %polly.indvar409.2, 480
  %256 = add nuw nsw i64 %255, %253
  %scevgep412.2 = getelementptr i8, i8* %call1, i64 %256
  %scevgep412413.2 = bitcast i8* %scevgep412.2 to double*
  %_p_scalar_414.2 = load double, double* %scevgep412413.2, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.2 = fmul fast double %_p_scalar_418.2, %_p_scalar_414.2
  %polly.access.mul.Packed_MemRef_call2267419.2 = mul nuw nsw i64 %polly.indvar409.2, 60
  %polly.access.add.Packed_MemRef_call2267420.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419.2, %polly.indvar403.2
  %polly.access.Packed_MemRef_call2267421.2 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.2
  %_p_scalar_422.2 = load double, double* %polly.access.Packed_MemRef_call2267421.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_425.2, %_p_scalar_422.2
  %257 = shl nuw nsw i64 %polly.indvar409.2, 3
  %258 = add nuw nsw i64 %257, %252
  %scevgep426.2 = getelementptr i8, i8* %call, i64 %258
  %scevgep426427.2 = bitcast i8* %scevgep426.2 to double*
  %_p_scalar_428.2 = load double, double* %scevgep426427.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_428.2
  store double %p_add42.i79.2, double* %scevgep426427.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next410.2 = add nuw nsw i64 %polly.indvar409.2, 1
  %exitcond821.2.not = icmp eq i64 %polly.indvar_next410.2, %indvars.iv819.2
  br i1 %exitcond821.2.not, label %polly.loop_exit408.2, label %polly.loop_header406.2

polly.loop_exit408.2:                             ; preds = %polly.loop_header406.2
  %polly.indvar_next404.2 = add nuw nsw i64 %polly.indvar403.2, 1
  %exitcond822.2.not = icmp eq i64 %polly.indvar_next404.2, 32
  br i1 %exitcond822.2.not, label %polly.loop_exit402.2, label %polly.loop_header400.2

polly.loop_exit402.2:                             ; preds = %polly.loop_exit408.2
  %polly.indvar_next398.2 = add nuw nsw i64 %polly.indvar397.2, 1
  %indvars.iv.next820.2 = add nuw nsw i64 %indvars.iv819.2, 1
  %exitcond826.2.not = icmp eq i64 %polly.indvar_next398.2, 16
  br i1 %exitcond826.2.not, label %polly.loop_header394.1.2, label %polly.loop_header394.2

polly.loop_header394.1.2:                         ; preds = %polly.loop_exit402.2, %polly.loop_exit402.1.2
  %indvars.iv819.1.2 = phi i64 [ %indvars.iv.next820.1.2, %polly.loop_exit402.1.2 ], [ 65, %polly.loop_exit402.2 ]
  %polly.indvar397.1.2 = phi i64 [ %polly.indvar_next398.1.2, %polly.loop_exit402.1.2 ], [ 0, %polly.loop_exit402.2 ]
  %259 = add nuw nsw i64 %polly.indvar397.1.2, 64
  %polly.access.mul.Packed_MemRef_call2267415.1.2 = mul nuw nsw i64 %259, 60
  %260 = mul nuw nsw i64 %259, 480
  %261 = mul nuw nsw i64 %259, 640
  br label %polly.loop_header400.1.2

polly.loop_header400.1.2:                         ; preds = %polly.loop_exit408.1.2, %polly.loop_header394.1.2
  %polly.indvar403.1.2 = phi i64 [ 0, %polly.loop_header394.1.2 ], [ %polly.indvar_next404.1.2, %polly.loop_exit408.1.2 ]
  %262 = add nuw nsw i64 %polly.indvar403.1.2, 32
  %263 = shl i64 %262, 3
  %polly.access.add.Packed_MemRef_call2267416.1.2 = add nuw nsw i64 %262, %polly.access.mul.Packed_MemRef_call2267415.1.2
  %polly.access.Packed_MemRef_call2267417.1.2 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.1.2
  %_p_scalar_418.1.2 = load double, double* %polly.access.Packed_MemRef_call2267417.1.2, align 8
  %264 = add i64 %263, %260
  %scevgep423.1.2 = getelementptr i8, i8* %call1, i64 %264
  %scevgep423424.1.2 = bitcast i8* %scevgep423.1.2 to double*
  %_p_scalar_425.1.2 = load double, double* %scevgep423424.1.2, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header406.1.2

polly.loop_header406.1.2:                         ; preds = %polly.loop_header406.1.2, %polly.loop_header400.1.2
  %polly.indvar409.1.2 = phi i64 [ 0, %polly.loop_header400.1.2 ], [ %polly.indvar_next410.1.2, %polly.loop_header406.1.2 ]
  %265 = mul nuw nsw i64 %polly.indvar409.1.2, 480
  %266 = add nuw nsw i64 %265, %263
  %scevgep412.1.2 = getelementptr i8, i8* %call1, i64 %266
  %scevgep412413.1.2 = bitcast i8* %scevgep412.1.2 to double*
  %_p_scalar_414.1.2 = load double, double* %scevgep412413.1.2, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.1.2 = fmul fast double %_p_scalar_418.1.2, %_p_scalar_414.1.2
  %polly.access.mul.Packed_MemRef_call2267419.1.2 = mul nuw nsw i64 %polly.indvar409.1.2, 60
  %polly.access.add.Packed_MemRef_call2267420.1.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419.1.2, %262
  %polly.access.Packed_MemRef_call2267421.1.2 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.1.2
  %_p_scalar_422.1.2 = load double, double* %polly.access.Packed_MemRef_call2267421.1.2, align 8
  %p_mul37.i75.1.2 = fmul fast double %_p_scalar_425.1.2, %_p_scalar_422.1.2
  %267 = shl nuw nsw i64 %polly.indvar409.1.2, 3
  %268 = add nuw nsw i64 %267, %261
  %scevgep426.1.2 = getelementptr i8, i8* %call, i64 %268
  %scevgep426427.1.2 = bitcast i8* %scevgep426.1.2 to double*
  %_p_scalar_428.1.2 = load double, double* %scevgep426427.1.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.1.2 = fadd fast double %p_mul37.i75.1.2, %p_mul27.i73.1.2
  %p_reass.mul.i78.1.2 = fmul fast double %p_reass.add.i77.1.2, 1.500000e+00
  %p_add42.i79.1.2 = fadd fast double %p_reass.mul.i78.1.2, %_p_scalar_428.1.2
  store double %p_add42.i79.1.2, double* %scevgep426427.1.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next410.1.2 = add nuw nsw i64 %polly.indvar409.1.2, 1
  %exitcond821.1.2.not = icmp eq i64 %polly.indvar_next410.1.2, %indvars.iv819.1.2
  br i1 %exitcond821.1.2.not, label %polly.loop_exit408.1.2, label %polly.loop_header406.1.2

polly.loop_exit408.1.2:                           ; preds = %polly.loop_header406.1.2
  %polly.indvar_next404.1.2 = add nuw nsw i64 %polly.indvar403.1.2, 1
  %exitcond822.1.2.not = icmp eq i64 %polly.indvar_next404.1.2, 28
  br i1 %exitcond822.1.2.not, label %polly.loop_exit402.1.2, label %polly.loop_header400.1.2

polly.loop_exit402.1.2:                           ; preds = %polly.loop_exit408.1.2
  %polly.indvar_next398.1.2 = add nuw nsw i64 %polly.indvar397.1.2, 1
  %indvars.iv.next820.1.2 = add nuw nsw i64 %indvars.iv819.1.2, 1
  %exitcond826.1.2.not = icmp eq i64 %polly.indvar_next398.1.2, 16
  br i1 %exitcond826.1.2.not, label %polly.loop_exit396.1.2, label %polly.loop_header394.1.2

polly.loop_exit396.1.2:                           ; preds = %polly.loop_exit402.1.2
  tail call void @free(i8* nonnull %malloccall266)
  br label %kernel_syr2k.exit90

polly.loop_header561.1:                           ; preds = %polly.loop_exit569, %polly.loop_exit569.1
  %indvars.iv836.1 = phi i64 [ %indvars.iv.next837.1, %polly.loop_exit569.1 ], [ 1, %polly.loop_exit569 ]
  %polly.indvar564.1 = phi i64 [ %polly.indvar_next565.1, %polly.loop_exit569.1 ], [ 0, %polly.loop_exit569 ]
  %polly.access.mul.Packed_MemRef_call2434582.1 = mul nuw nsw i64 %polly.indvar564.1, 60
  %269 = mul nuw nsw i64 %polly.indvar564.1, 480
  %270 = mul nuw nsw i64 %polly.indvar564.1, 640
  br label %polly.loop_header567.1

polly.loop_header567.1:                           ; preds = %polly.loop_exit575.1, %polly.loop_header561.1
  %polly.indvar570.1 = phi i64 [ 0, %polly.loop_header561.1 ], [ %polly.indvar_next571.1, %polly.loop_exit575.1 ]
  %271 = add nuw nsw i64 %polly.indvar570.1, 32
  %272 = shl i64 %271, 3
  %polly.access.add.Packed_MemRef_call2434583.1 = add nuw nsw i64 %271, %polly.access.mul.Packed_MemRef_call2434582.1
  %polly.access.Packed_MemRef_call2434584.1 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.1
  %_p_scalar_585.1 = load double, double* %polly.access.Packed_MemRef_call2434584.1, align 8
  %273 = add i64 %272, %269
  %scevgep590.1 = getelementptr i8, i8* %call1, i64 %273
  %scevgep590591.1 = bitcast i8* %scevgep590.1 to double*
  %_p_scalar_592.1 = load double, double* %scevgep590591.1, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header573.1

polly.loop_header573.1:                           ; preds = %polly.loop_header573.1, %polly.loop_header567.1
  %polly.indvar576.1 = phi i64 [ 0, %polly.loop_header567.1 ], [ %polly.indvar_next577.1, %polly.loop_header573.1 ]
  %274 = mul nuw nsw i64 %polly.indvar576.1, 480
  %275 = add nuw nsw i64 %274, %272
  %scevgep579.1 = getelementptr i8, i8* %call1, i64 %275
  %scevgep579580.1 = bitcast i8* %scevgep579.1 to double*
  %_p_scalar_581.1 = load double, double* %scevgep579580.1, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.1 = fmul fast double %_p_scalar_585.1, %_p_scalar_581.1
  %polly.access.mul.Packed_MemRef_call2434586.1 = mul nuw nsw i64 %polly.indvar576.1, 60
  %polly.access.add.Packed_MemRef_call2434587.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586.1, %271
  %polly.access.Packed_MemRef_call2434588.1 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.1
  %_p_scalar_589.1 = load double, double* %polly.access.Packed_MemRef_call2434588.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_592.1, %_p_scalar_589.1
  %276 = shl nuw nsw i64 %polly.indvar576.1, 3
  %277 = add nuw nsw i64 %276, %270
  %scevgep593.1 = getelementptr i8, i8* %call, i64 %277
  %scevgep593594.1 = bitcast i8* %scevgep593.1 to double*
  %_p_scalar_595.1 = load double, double* %scevgep593594.1, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_595.1
  store double %p_add42.i.1, double* %scevgep593594.1, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next577.1 = add nuw nsw i64 %polly.indvar576.1, 1
  %exitcond838.1.not = icmp eq i64 %polly.indvar_next577.1, %indvars.iv836.1
  br i1 %exitcond838.1.not, label %polly.loop_exit575.1, label %polly.loop_header573.1

polly.loop_exit575.1:                             ; preds = %polly.loop_header573.1
  %polly.indvar_next571.1 = add nuw nsw i64 %polly.indvar570.1, 1
  %exitcond839.1.not = icmp eq i64 %polly.indvar_next571.1, 28
  br i1 %exitcond839.1.not, label %polly.loop_exit569.1, label %polly.loop_header567.1

polly.loop_exit569.1:                             ; preds = %polly.loop_exit575.1
  %polly.indvar_next565.1 = add nuw nsw i64 %polly.indvar564.1, 1
  %indvars.iv.next837.1 = add nuw nsw i64 %indvars.iv836.1, 1
  %exitcond843.1.not = icmp eq i64 %polly.indvar_next565.1, 32
  br i1 %exitcond843.1.not, label %polly.loop_header561.1955, label %polly.loop_header561.1

polly.loop_header561.1955:                        ; preds = %polly.loop_exit569.1, %polly.loop_exit569.1989
  %indvars.iv836.1952 = phi i64 [ %indvars.iv.next837.1987, %polly.loop_exit569.1989 ], [ 33, %polly.loop_exit569.1 ]
  %polly.indvar564.1953 = phi i64 [ %polly.indvar_next565.1986, %polly.loop_exit569.1989 ], [ 0, %polly.loop_exit569.1 ]
  %278 = add nuw nsw i64 %polly.indvar564.1953, 32
  %polly.access.mul.Packed_MemRef_call2434582.1954 = mul nuw nsw i64 %278, 60
  %279 = mul nuw nsw i64 %278, 480
  %280 = mul nuw nsw i64 %278, 640
  br label %polly.loop_header567.1963

polly.loop_header567.1963:                        ; preds = %polly.loop_exit575.1985, %polly.loop_header561.1955
  %polly.indvar570.1956 = phi i64 [ 0, %polly.loop_header561.1955 ], [ %polly.indvar_next571.1983, %polly.loop_exit575.1985 ]
  %281 = shl i64 %polly.indvar570.1956, 3
  %polly.access.add.Packed_MemRef_call2434583.1957 = add nuw nsw i64 %polly.indvar570.1956, %polly.access.mul.Packed_MemRef_call2434582.1954
  %polly.access.Packed_MemRef_call2434584.1958 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.1957
  %_p_scalar_585.1959 = load double, double* %polly.access.Packed_MemRef_call2434584.1958, align 8
  %282 = add i64 %281, %279
  %scevgep590.1960 = getelementptr i8, i8* %call1, i64 %282
  %scevgep590591.1961 = bitcast i8* %scevgep590.1960 to double*
  %_p_scalar_592.1962 = load double, double* %scevgep590591.1961, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header573.1982

polly.loop_header573.1982:                        ; preds = %polly.loop_header573.1982, %polly.loop_header567.1963
  %polly.indvar576.1964 = phi i64 [ 0, %polly.loop_header567.1963 ], [ %polly.indvar_next577.1980, %polly.loop_header573.1982 ]
  %283 = mul nuw nsw i64 %polly.indvar576.1964, 480
  %284 = add nuw nsw i64 %283, %281
  %scevgep579.1965 = getelementptr i8, i8* %call1, i64 %284
  %scevgep579580.1966 = bitcast i8* %scevgep579.1965 to double*
  %_p_scalar_581.1967 = load double, double* %scevgep579580.1966, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.1968 = fmul fast double %_p_scalar_585.1959, %_p_scalar_581.1967
  %polly.access.mul.Packed_MemRef_call2434586.1969 = mul nuw nsw i64 %polly.indvar576.1964, 60
  %polly.access.add.Packed_MemRef_call2434587.1970 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586.1969, %polly.indvar570.1956
  %polly.access.Packed_MemRef_call2434588.1971 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.1970
  %_p_scalar_589.1972 = load double, double* %polly.access.Packed_MemRef_call2434588.1971, align 8
  %p_mul37.i.1973 = fmul fast double %_p_scalar_592.1962, %_p_scalar_589.1972
  %285 = shl nuw nsw i64 %polly.indvar576.1964, 3
  %286 = add nuw nsw i64 %285, %280
  %scevgep593.1974 = getelementptr i8, i8* %call, i64 %286
  %scevgep593594.1975 = bitcast i8* %scevgep593.1974 to double*
  %_p_scalar_595.1976 = load double, double* %scevgep593594.1975, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.1977 = fadd fast double %p_mul37.i.1973, %p_mul27.i.1968
  %p_reass.mul.i.1978 = fmul fast double %p_reass.add.i.1977, 1.500000e+00
  %p_add42.i.1979 = fadd fast double %p_reass.mul.i.1978, %_p_scalar_595.1976
  store double %p_add42.i.1979, double* %scevgep593594.1975, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next577.1980 = add nuw nsw i64 %polly.indvar576.1964, 1
  %exitcond838.1981.not = icmp eq i64 %polly.indvar_next577.1980, %indvars.iv836.1952
  br i1 %exitcond838.1981.not, label %polly.loop_exit575.1985, label %polly.loop_header573.1982

polly.loop_exit575.1985:                          ; preds = %polly.loop_header573.1982
  %polly.indvar_next571.1983 = add nuw nsw i64 %polly.indvar570.1956, 1
  %exitcond839.1984.not = icmp eq i64 %polly.indvar_next571.1983, 32
  br i1 %exitcond839.1984.not, label %polly.loop_exit569.1989, label %polly.loop_header567.1963

polly.loop_exit569.1989:                          ; preds = %polly.loop_exit575.1985
  %polly.indvar_next565.1986 = add nuw nsw i64 %polly.indvar564.1953, 1
  %indvars.iv.next837.1987 = add nuw nsw i64 %indvars.iv836.1952, 1
  %exitcond843.1988.not = icmp eq i64 %polly.indvar_next565.1986, 32
  br i1 %exitcond843.1988.not, label %polly.loop_header561.1.1, label %polly.loop_header561.1955

polly.loop_header561.1.1:                         ; preds = %polly.loop_exit569.1989, %polly.loop_exit569.1.1
  %indvars.iv836.1.1 = phi i64 [ %indvars.iv.next837.1.1, %polly.loop_exit569.1.1 ], [ 33, %polly.loop_exit569.1989 ]
  %polly.indvar564.1.1 = phi i64 [ %polly.indvar_next565.1.1, %polly.loop_exit569.1.1 ], [ 0, %polly.loop_exit569.1989 ]
  %287 = add nuw nsw i64 %polly.indvar564.1.1, 32
  %polly.access.mul.Packed_MemRef_call2434582.1.1 = mul nuw nsw i64 %287, 60
  %288 = mul nuw nsw i64 %287, 480
  %289 = mul nuw nsw i64 %287, 640
  br label %polly.loop_header567.1.1

polly.loop_header567.1.1:                         ; preds = %polly.loop_exit575.1.1, %polly.loop_header561.1.1
  %polly.indvar570.1.1 = phi i64 [ 0, %polly.loop_header561.1.1 ], [ %polly.indvar_next571.1.1, %polly.loop_exit575.1.1 ]
  %290 = add nuw nsw i64 %polly.indvar570.1.1, 32
  %291 = shl i64 %290, 3
  %polly.access.add.Packed_MemRef_call2434583.1.1 = add nuw nsw i64 %290, %polly.access.mul.Packed_MemRef_call2434582.1.1
  %polly.access.Packed_MemRef_call2434584.1.1 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.1.1
  %_p_scalar_585.1.1 = load double, double* %polly.access.Packed_MemRef_call2434584.1.1, align 8
  %292 = add i64 %291, %288
  %scevgep590.1.1 = getelementptr i8, i8* %call1, i64 %292
  %scevgep590591.1.1 = bitcast i8* %scevgep590.1.1 to double*
  %_p_scalar_592.1.1 = load double, double* %scevgep590591.1.1, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header573.1.1

polly.loop_header573.1.1:                         ; preds = %polly.loop_header573.1.1, %polly.loop_header567.1.1
  %polly.indvar576.1.1 = phi i64 [ 0, %polly.loop_header567.1.1 ], [ %polly.indvar_next577.1.1, %polly.loop_header573.1.1 ]
  %293 = mul nuw nsw i64 %polly.indvar576.1.1, 480
  %294 = add nuw nsw i64 %293, %291
  %scevgep579.1.1 = getelementptr i8, i8* %call1, i64 %294
  %scevgep579580.1.1 = bitcast i8* %scevgep579.1.1 to double*
  %_p_scalar_581.1.1 = load double, double* %scevgep579580.1.1, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.1.1 = fmul fast double %_p_scalar_585.1.1, %_p_scalar_581.1.1
  %polly.access.mul.Packed_MemRef_call2434586.1.1 = mul nuw nsw i64 %polly.indvar576.1.1, 60
  %polly.access.add.Packed_MemRef_call2434587.1.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586.1.1, %290
  %polly.access.Packed_MemRef_call2434588.1.1 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.1.1
  %_p_scalar_589.1.1 = load double, double* %polly.access.Packed_MemRef_call2434588.1.1, align 8
  %p_mul37.i.1.1 = fmul fast double %_p_scalar_592.1.1, %_p_scalar_589.1.1
  %295 = shl nuw nsw i64 %polly.indvar576.1.1, 3
  %296 = add nuw nsw i64 %295, %289
  %scevgep593.1.1 = getelementptr i8, i8* %call, i64 %296
  %scevgep593594.1.1 = bitcast i8* %scevgep593.1.1 to double*
  %_p_scalar_595.1.1 = load double, double* %scevgep593594.1.1, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.1.1 = fadd fast double %p_mul37.i.1.1, %p_mul27.i.1.1
  %p_reass.mul.i.1.1 = fmul fast double %p_reass.add.i.1.1, 1.500000e+00
  %p_add42.i.1.1 = fadd fast double %p_reass.mul.i.1.1, %_p_scalar_595.1.1
  store double %p_add42.i.1.1, double* %scevgep593594.1.1, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next577.1.1 = add nuw nsw i64 %polly.indvar576.1.1, 1
  %exitcond838.1.1.not = icmp eq i64 %polly.indvar_next577.1.1, %indvars.iv836.1.1
  br i1 %exitcond838.1.1.not, label %polly.loop_exit575.1.1, label %polly.loop_header573.1.1

polly.loop_exit575.1.1:                           ; preds = %polly.loop_header573.1.1
  %polly.indvar_next571.1.1 = add nuw nsw i64 %polly.indvar570.1.1, 1
  %exitcond839.1.1.not = icmp eq i64 %polly.indvar_next571.1.1, 28
  br i1 %exitcond839.1.1.not, label %polly.loop_exit569.1.1, label %polly.loop_header567.1.1

polly.loop_exit569.1.1:                           ; preds = %polly.loop_exit575.1.1
  %polly.indvar_next565.1.1 = add nuw nsw i64 %polly.indvar564.1.1, 1
  %indvars.iv.next837.1.1 = add nuw nsw i64 %indvars.iv836.1.1, 1
  %exitcond843.1.1.not = icmp eq i64 %polly.indvar_next565.1.1, 32
  br i1 %exitcond843.1.1.not, label %polly.loop_header561.2, label %polly.loop_header561.1.1

polly.loop_header561.2:                           ; preds = %polly.loop_exit569.1.1, %polly.loop_exit569.2
  %indvars.iv836.2 = phi i64 [ %indvars.iv.next837.2, %polly.loop_exit569.2 ], [ 65, %polly.loop_exit569.1.1 ]
  %polly.indvar564.2 = phi i64 [ %polly.indvar_next565.2, %polly.loop_exit569.2 ], [ 0, %polly.loop_exit569.1.1 ]
  %297 = add nuw nsw i64 %polly.indvar564.2, 64
  %polly.access.mul.Packed_MemRef_call2434582.2 = mul nuw nsw i64 %297, 60
  %298 = mul nuw nsw i64 %297, 480
  %299 = mul nuw nsw i64 %297, 640
  br label %polly.loop_header567.2

polly.loop_header567.2:                           ; preds = %polly.loop_exit575.2, %polly.loop_header561.2
  %polly.indvar570.2 = phi i64 [ 0, %polly.loop_header561.2 ], [ %polly.indvar_next571.2, %polly.loop_exit575.2 ]
  %300 = shl i64 %polly.indvar570.2, 3
  %polly.access.add.Packed_MemRef_call2434583.2 = add nuw nsw i64 %polly.indvar570.2, %polly.access.mul.Packed_MemRef_call2434582.2
  %polly.access.Packed_MemRef_call2434584.2 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.2
  %_p_scalar_585.2 = load double, double* %polly.access.Packed_MemRef_call2434584.2, align 8
  %301 = add i64 %300, %298
  %scevgep590.2 = getelementptr i8, i8* %call1, i64 %301
  %scevgep590591.2 = bitcast i8* %scevgep590.2 to double*
  %_p_scalar_592.2 = load double, double* %scevgep590591.2, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header573.2

polly.loop_header573.2:                           ; preds = %polly.loop_header573.2, %polly.loop_header567.2
  %polly.indvar576.2 = phi i64 [ 0, %polly.loop_header567.2 ], [ %polly.indvar_next577.2, %polly.loop_header573.2 ]
  %302 = mul nuw nsw i64 %polly.indvar576.2, 480
  %303 = add nuw nsw i64 %302, %300
  %scevgep579.2 = getelementptr i8, i8* %call1, i64 %303
  %scevgep579580.2 = bitcast i8* %scevgep579.2 to double*
  %_p_scalar_581.2 = load double, double* %scevgep579580.2, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.2 = fmul fast double %_p_scalar_585.2, %_p_scalar_581.2
  %polly.access.mul.Packed_MemRef_call2434586.2 = mul nuw nsw i64 %polly.indvar576.2, 60
  %polly.access.add.Packed_MemRef_call2434587.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586.2, %polly.indvar570.2
  %polly.access.Packed_MemRef_call2434588.2 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.2
  %_p_scalar_589.2 = load double, double* %polly.access.Packed_MemRef_call2434588.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_592.2, %_p_scalar_589.2
  %304 = shl nuw nsw i64 %polly.indvar576.2, 3
  %305 = add nuw nsw i64 %304, %299
  %scevgep593.2 = getelementptr i8, i8* %call, i64 %305
  %scevgep593594.2 = bitcast i8* %scevgep593.2 to double*
  %_p_scalar_595.2 = load double, double* %scevgep593594.2, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_595.2
  store double %p_add42.i.2, double* %scevgep593594.2, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next577.2 = add nuw nsw i64 %polly.indvar576.2, 1
  %exitcond838.2.not = icmp eq i64 %polly.indvar_next577.2, %indvars.iv836.2
  br i1 %exitcond838.2.not, label %polly.loop_exit575.2, label %polly.loop_header573.2

polly.loop_exit575.2:                             ; preds = %polly.loop_header573.2
  %polly.indvar_next571.2 = add nuw nsw i64 %polly.indvar570.2, 1
  %exitcond839.2.not = icmp eq i64 %polly.indvar_next571.2, 32
  br i1 %exitcond839.2.not, label %polly.loop_exit569.2, label %polly.loop_header567.2

polly.loop_exit569.2:                             ; preds = %polly.loop_exit575.2
  %polly.indvar_next565.2 = add nuw nsw i64 %polly.indvar564.2, 1
  %indvars.iv.next837.2 = add nuw nsw i64 %indvars.iv836.2, 1
  %exitcond843.2.not = icmp eq i64 %polly.indvar_next565.2, 16
  br i1 %exitcond843.2.not, label %polly.loop_header561.1.2, label %polly.loop_header561.2

polly.loop_header561.1.2:                         ; preds = %polly.loop_exit569.2, %polly.loop_exit569.1.2
  %indvars.iv836.1.2 = phi i64 [ %indvars.iv.next837.1.2, %polly.loop_exit569.1.2 ], [ 65, %polly.loop_exit569.2 ]
  %polly.indvar564.1.2 = phi i64 [ %polly.indvar_next565.1.2, %polly.loop_exit569.1.2 ], [ 0, %polly.loop_exit569.2 ]
  %306 = add nuw nsw i64 %polly.indvar564.1.2, 64
  %polly.access.mul.Packed_MemRef_call2434582.1.2 = mul nuw nsw i64 %306, 60
  %307 = mul nuw nsw i64 %306, 480
  %308 = mul nuw nsw i64 %306, 640
  br label %polly.loop_header567.1.2

polly.loop_header567.1.2:                         ; preds = %polly.loop_exit575.1.2, %polly.loop_header561.1.2
  %polly.indvar570.1.2 = phi i64 [ 0, %polly.loop_header561.1.2 ], [ %polly.indvar_next571.1.2, %polly.loop_exit575.1.2 ]
  %309 = add nuw nsw i64 %polly.indvar570.1.2, 32
  %310 = shl i64 %309, 3
  %polly.access.add.Packed_MemRef_call2434583.1.2 = add nuw nsw i64 %309, %polly.access.mul.Packed_MemRef_call2434582.1.2
  %polly.access.Packed_MemRef_call2434584.1.2 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.1.2
  %_p_scalar_585.1.2 = load double, double* %polly.access.Packed_MemRef_call2434584.1.2, align 8
  %311 = add i64 %310, %307
  %scevgep590.1.2 = getelementptr i8, i8* %call1, i64 %311
  %scevgep590591.1.2 = bitcast i8* %scevgep590.1.2 to double*
  %_p_scalar_592.1.2 = load double, double* %scevgep590591.1.2, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header573.1.2

polly.loop_header573.1.2:                         ; preds = %polly.loop_header573.1.2, %polly.loop_header567.1.2
  %polly.indvar576.1.2 = phi i64 [ 0, %polly.loop_header567.1.2 ], [ %polly.indvar_next577.1.2, %polly.loop_header573.1.2 ]
  %312 = mul nuw nsw i64 %polly.indvar576.1.2, 480
  %313 = add nuw nsw i64 %312, %310
  %scevgep579.1.2 = getelementptr i8, i8* %call1, i64 %313
  %scevgep579580.1.2 = bitcast i8* %scevgep579.1.2 to double*
  %_p_scalar_581.1.2 = load double, double* %scevgep579580.1.2, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.1.2 = fmul fast double %_p_scalar_585.1.2, %_p_scalar_581.1.2
  %polly.access.mul.Packed_MemRef_call2434586.1.2 = mul nuw nsw i64 %polly.indvar576.1.2, 60
  %polly.access.add.Packed_MemRef_call2434587.1.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586.1.2, %309
  %polly.access.Packed_MemRef_call2434588.1.2 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.1.2
  %_p_scalar_589.1.2 = load double, double* %polly.access.Packed_MemRef_call2434588.1.2, align 8
  %p_mul37.i.1.2 = fmul fast double %_p_scalar_592.1.2, %_p_scalar_589.1.2
  %314 = shl nuw nsw i64 %polly.indvar576.1.2, 3
  %315 = add nuw nsw i64 %314, %308
  %scevgep593.1.2 = getelementptr i8, i8* %call, i64 %315
  %scevgep593594.1.2 = bitcast i8* %scevgep593.1.2 to double*
  %_p_scalar_595.1.2 = load double, double* %scevgep593594.1.2, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.1.2 = fadd fast double %p_mul37.i.1.2, %p_mul27.i.1.2
  %p_reass.mul.i.1.2 = fmul fast double %p_reass.add.i.1.2, 1.500000e+00
  %p_add42.i.1.2 = fadd fast double %p_reass.mul.i.1.2, %_p_scalar_595.1.2
  store double %p_add42.i.1.2, double* %scevgep593594.1.2, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next577.1.2 = add nuw nsw i64 %polly.indvar576.1.2, 1
  %exitcond838.1.2.not = icmp eq i64 %polly.indvar_next577.1.2, %indvars.iv836.1.2
  br i1 %exitcond838.1.2.not, label %polly.loop_exit575.1.2, label %polly.loop_header573.1.2

polly.loop_exit575.1.2:                           ; preds = %polly.loop_header573.1.2
  %polly.indvar_next571.1.2 = add nuw nsw i64 %polly.indvar570.1.2, 1
  %exitcond839.1.2.not = icmp eq i64 %polly.indvar_next571.1.2, 28
  br i1 %exitcond839.1.2.not, label %polly.loop_exit569.1.2, label %polly.loop_header567.1.2

polly.loop_exit569.1.2:                           ; preds = %polly.loop_exit575.1.2
  %polly.indvar_next565.1.2 = add nuw nsw i64 %polly.indvar564.1.2, 1
  %indvars.iv.next837.1.2 = add nuw nsw i64 %indvars.iv836.1.2, 1
  %exitcond843.1.2.not = icmp eq i64 %polly.indvar_next565.1.2, 16
  br i1 %exitcond843.1.2.not, label %polly.loop_exit563.1.2, label %polly.loop_header561.1.2

polly.loop_exit563.1.2:                           ; preds = %polly.loop_exit569.1.2
  tail call void @free(i8* nonnull %malloccall433)
  br label %kernel_syr2k.exit

polly.loop_header787.1:                           ; preds = %polly.loop_exit795, %polly.loop_exit795.1
  %polly.indvar790.1 = phi i64 [ %polly.indvar_next791.1, %polly.loop_exit795.1 ], [ 0, %polly.loop_exit795 ]
  %316 = mul nuw nsw i64 %polly.indvar790.1, 480
  %317 = trunc i64 %polly.indvar790.1 to i32
  %broadcast.splatinsert1281 = insertelement <4 x i32> poison, i32 %317, i32 0
  %broadcast.splat1282 = shufflevector <4 x i32> %broadcast.splatinsert1281, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1273

vector.body1273:                                  ; preds = %vector.body1273, %polly.loop_header787.1
  %index1275 = phi i64 [ 0, %polly.loop_header787.1 ], [ %index.next1276, %vector.body1273 ]
  %vec.ind1279 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1 ], [ %vec.ind.next1280, %vector.body1273 ]
  %318 = add nuw nsw <4 x i64> %vec.ind1279, <i64 32, i64 32, i64 32, i64 32>
  %319 = trunc <4 x i64> %318 to <4 x i32>
  %320 = mul <4 x i32> %broadcast.splat1282, %319
  %321 = add <4 x i32> %320, <i32 1, i32 1, i32 1, i32 1>
  %322 = urem <4 x i32> %321, <i32 80, i32 80, i32 80, i32 80>
  %323 = sitofp <4 x i32> %322 to <4 x double>
  %324 = fmul fast <4 x double> %323, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %325 = extractelement <4 x i64> %318, i32 0
  %326 = shl i64 %325, 3
  %327 = add i64 %326, %316
  %328 = getelementptr i8, i8* %call1, i64 %327
  %329 = bitcast i8* %328 to <4 x double>*
  store <4 x double> %324, <4 x double>* %329, align 8, !alias.scope !93, !noalias !98
  %index.next1276 = add i64 %index1275, 4
  %vec.ind.next1280 = add <4 x i64> %vec.ind1279, <i64 4, i64 4, i64 4, i64 4>
  %330 = icmp eq i64 %index.next1276, 28
  br i1 %330, label %polly.loop_exit795.1, label %vector.body1273, !llvm.loop !100

polly.loop_exit795.1:                             ; preds = %vector.body1273
  %polly.indvar_next791.1 = add nuw nsw i64 %polly.indvar790.1, 1
  %exitcond855.1.not = icmp eq i64 %polly.indvar_next791.1, 32
  br i1 %exitcond855.1.not, label %polly.loop_header787.1992, label %polly.loop_header787.1

polly.loop_header787.1992:                        ; preds = %polly.loop_exit795.1, %polly.loop_exit795.11003
  %polly.indvar790.1991 = phi i64 [ %polly.indvar_next791.11001, %polly.loop_exit795.11003 ], [ 0, %polly.loop_exit795.1 ]
  %331 = add nuw nsw i64 %polly.indvar790.1991, 32
  %332 = mul nuw nsw i64 %331, 480
  %333 = trunc i64 %331 to i32
  %broadcast.splatinsert1295 = insertelement <4 x i32> poison, i32 %333, i32 0
  %broadcast.splat1296 = shufflevector <4 x i32> %broadcast.splatinsert1295, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1285

vector.body1285:                                  ; preds = %vector.body1285, %polly.loop_header787.1992
  %index1287 = phi i64 [ 0, %polly.loop_header787.1992 ], [ %index.next1288, %vector.body1285 ]
  %vec.ind1293 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787.1992 ], [ %vec.ind.next1294, %vector.body1285 ]
  %334 = mul <4 x i32> %vec.ind1293, %broadcast.splat1296
  %335 = add <4 x i32> %334, <i32 1, i32 1, i32 1, i32 1>
  %336 = urem <4 x i32> %335, <i32 80, i32 80, i32 80, i32 80>
  %337 = sitofp <4 x i32> %336 to <4 x double>
  %338 = fmul fast <4 x double> %337, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %339 = shl i64 %index1287, 3
  %340 = add i64 %339, %332
  %341 = getelementptr i8, i8* %call1, i64 %340
  %342 = bitcast i8* %341 to <4 x double>*
  store <4 x double> %338, <4 x double>* %342, align 8, !alias.scope !93, !noalias !98
  %index.next1288 = add i64 %index1287, 4
  %vec.ind.next1294 = add <4 x i32> %vec.ind1293, <i32 4, i32 4, i32 4, i32 4>
  %343 = icmp eq i64 %index.next1288, 32
  br i1 %343, label %polly.loop_exit795.11003, label %vector.body1285, !llvm.loop !101

polly.loop_exit795.11003:                         ; preds = %vector.body1285
  %polly.indvar_next791.11001 = add nuw nsw i64 %polly.indvar790.1991, 1
  %exitcond855.11002.not = icmp eq i64 %polly.indvar_next791.11001, 32
  br i1 %exitcond855.11002.not, label %polly.loop_header787.1.1, label %polly.loop_header787.1992

polly.loop_header787.1.1:                         ; preds = %polly.loop_exit795.11003, %polly.loop_exit795.1.1
  %polly.indvar790.1.1 = phi i64 [ %polly.indvar_next791.1.1, %polly.loop_exit795.1.1 ], [ 0, %polly.loop_exit795.11003 ]
  %344 = add nuw nsw i64 %polly.indvar790.1.1, 32
  %345 = mul nuw nsw i64 %344, 480
  %346 = trunc i64 %344 to i32
  %broadcast.splatinsert1307 = insertelement <4 x i32> poison, i32 %346, i32 0
  %broadcast.splat1308 = shufflevector <4 x i32> %broadcast.splatinsert1307, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1299

vector.body1299:                                  ; preds = %vector.body1299, %polly.loop_header787.1.1
  %index1301 = phi i64 [ 0, %polly.loop_header787.1.1 ], [ %index.next1302, %vector.body1299 ]
  %vec.ind1305 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1.1 ], [ %vec.ind.next1306, %vector.body1299 ]
  %347 = add nuw nsw <4 x i64> %vec.ind1305, <i64 32, i64 32, i64 32, i64 32>
  %348 = trunc <4 x i64> %347 to <4 x i32>
  %349 = mul <4 x i32> %broadcast.splat1308, %348
  %350 = add <4 x i32> %349, <i32 1, i32 1, i32 1, i32 1>
  %351 = urem <4 x i32> %350, <i32 80, i32 80, i32 80, i32 80>
  %352 = sitofp <4 x i32> %351 to <4 x double>
  %353 = fmul fast <4 x double> %352, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %354 = extractelement <4 x i64> %347, i32 0
  %355 = shl i64 %354, 3
  %356 = add i64 %355, %345
  %357 = getelementptr i8, i8* %call1, i64 %356
  %358 = bitcast i8* %357 to <4 x double>*
  store <4 x double> %353, <4 x double>* %358, align 8, !alias.scope !93, !noalias !98
  %index.next1302 = add i64 %index1301, 4
  %vec.ind.next1306 = add <4 x i64> %vec.ind1305, <i64 4, i64 4, i64 4, i64 4>
  %359 = icmp eq i64 %index.next1302, 28
  br i1 %359, label %polly.loop_exit795.1.1, label %vector.body1299, !llvm.loop !102

polly.loop_exit795.1.1:                           ; preds = %vector.body1299
  %polly.indvar_next791.1.1 = add nuw nsw i64 %polly.indvar790.1.1, 1
  %exitcond855.1.1.not = icmp eq i64 %polly.indvar_next791.1.1, 32
  br i1 %exitcond855.1.1.not, label %polly.loop_header787.2, label %polly.loop_header787.1.1

polly.loop_header787.2:                           ; preds = %polly.loop_exit795.1.1, %polly.loop_exit795.2
  %polly.indvar790.2 = phi i64 [ %polly.indvar_next791.2, %polly.loop_exit795.2 ], [ 0, %polly.loop_exit795.1.1 ]
  %360 = add nuw nsw i64 %polly.indvar790.2, 64
  %361 = mul nuw nsw i64 %360, 480
  %362 = trunc i64 %360 to i32
  %broadcast.splatinsert1321 = insertelement <4 x i32> poison, i32 %362, i32 0
  %broadcast.splat1322 = shufflevector <4 x i32> %broadcast.splatinsert1321, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1311

vector.body1311:                                  ; preds = %vector.body1311, %polly.loop_header787.2
  %index1313 = phi i64 [ 0, %polly.loop_header787.2 ], [ %index.next1314, %vector.body1311 ]
  %vec.ind1319 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787.2 ], [ %vec.ind.next1320, %vector.body1311 ]
  %363 = mul <4 x i32> %vec.ind1319, %broadcast.splat1322
  %364 = add <4 x i32> %363, <i32 1, i32 1, i32 1, i32 1>
  %365 = urem <4 x i32> %364, <i32 80, i32 80, i32 80, i32 80>
  %366 = sitofp <4 x i32> %365 to <4 x double>
  %367 = fmul fast <4 x double> %366, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %368 = shl i64 %index1313, 3
  %369 = add i64 %368, %361
  %370 = getelementptr i8, i8* %call1, i64 %369
  %371 = bitcast i8* %370 to <4 x double>*
  store <4 x double> %367, <4 x double>* %371, align 8, !alias.scope !93, !noalias !98
  %index.next1314 = add i64 %index1313, 4
  %vec.ind.next1320 = add <4 x i32> %vec.ind1319, <i32 4, i32 4, i32 4, i32 4>
  %372 = icmp eq i64 %index.next1314, 32
  br i1 %372, label %polly.loop_exit795.2, label %vector.body1311, !llvm.loop !103

polly.loop_exit795.2:                             ; preds = %vector.body1311
  %polly.indvar_next791.2 = add nuw nsw i64 %polly.indvar790.2, 1
  %exitcond855.2.not = icmp eq i64 %polly.indvar_next791.2, 16
  br i1 %exitcond855.2.not, label %polly.loop_header787.1.2, label %polly.loop_header787.2

polly.loop_header787.1.2:                         ; preds = %polly.loop_exit795.2, %polly.loop_exit795.1.2
  %polly.indvar790.1.2 = phi i64 [ %polly.indvar_next791.1.2, %polly.loop_exit795.1.2 ], [ 0, %polly.loop_exit795.2 ]
  %373 = add nuw nsw i64 %polly.indvar790.1.2, 64
  %374 = mul nuw nsw i64 %373, 480
  %375 = trunc i64 %373 to i32
  %broadcast.splatinsert1333 = insertelement <4 x i32> poison, i32 %375, i32 0
  %broadcast.splat1334 = shufflevector <4 x i32> %broadcast.splatinsert1333, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1325

vector.body1325:                                  ; preds = %vector.body1325, %polly.loop_header787.1.2
  %index1327 = phi i64 [ 0, %polly.loop_header787.1.2 ], [ %index.next1328, %vector.body1325 ]
  %vec.ind1331 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1.2 ], [ %vec.ind.next1332, %vector.body1325 ]
  %376 = add nuw nsw <4 x i64> %vec.ind1331, <i64 32, i64 32, i64 32, i64 32>
  %377 = trunc <4 x i64> %376 to <4 x i32>
  %378 = mul <4 x i32> %broadcast.splat1334, %377
  %379 = add <4 x i32> %378, <i32 1, i32 1, i32 1, i32 1>
  %380 = urem <4 x i32> %379, <i32 80, i32 80, i32 80, i32 80>
  %381 = sitofp <4 x i32> %380 to <4 x double>
  %382 = fmul fast <4 x double> %381, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %383 = extractelement <4 x i64> %376, i32 0
  %384 = shl i64 %383, 3
  %385 = add i64 %384, %374
  %386 = getelementptr i8, i8* %call1, i64 %385
  %387 = bitcast i8* %386 to <4 x double>*
  store <4 x double> %382, <4 x double>* %387, align 8, !alias.scope !93, !noalias !98
  %index.next1328 = add i64 %index1327, 4
  %vec.ind.next1332 = add <4 x i64> %vec.ind1331, <i64 4, i64 4, i64 4, i64 4>
  %388 = icmp eq i64 %index.next1328, 28
  br i1 %388, label %polly.loop_exit795.1.2, label %vector.body1325, !llvm.loop !104

polly.loop_exit795.1.2:                           ; preds = %vector.body1325
  %polly.indvar_next791.1.2 = add nuw nsw i64 %polly.indvar790.1.2, 1
  %exitcond855.1.2.not = icmp eq i64 %polly.indvar_next791.1.2, 16
  br i1 %exitcond855.1.2.not, label %init_array.exit, label %polly.loop_header787.1.2

polly.loop_header761.1:                           ; preds = %polly.loop_exit769, %polly.loop_exit769.1
  %polly.indvar764.1 = phi i64 [ %polly.indvar_next765.1, %polly.loop_exit769.1 ], [ 0, %polly.loop_exit769 ]
  %389 = mul nuw nsw i64 %polly.indvar764.1, 480
  %390 = trunc i64 %polly.indvar764.1 to i32
  %broadcast.splatinsert1203 = insertelement <4 x i32> poison, i32 %390, i32 0
  %broadcast.splat1204 = shufflevector <4 x i32> %broadcast.splatinsert1203, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1195

vector.body1195:                                  ; preds = %vector.body1195, %polly.loop_header761.1
  %index1197 = phi i64 [ 0, %polly.loop_header761.1 ], [ %index.next1198, %vector.body1195 ]
  %vec.ind1201 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header761.1 ], [ %vec.ind.next1202, %vector.body1195 ]
  %391 = add nuw nsw <4 x i64> %vec.ind1201, <i64 32, i64 32, i64 32, i64 32>
  %392 = trunc <4 x i64> %391 to <4 x i32>
  %393 = mul <4 x i32> %broadcast.splat1204, %392
  %394 = add <4 x i32> %393, <i32 2, i32 2, i32 2, i32 2>
  %395 = urem <4 x i32> %394, <i32 60, i32 60, i32 60, i32 60>
  %396 = sitofp <4 x i32> %395 to <4 x double>
  %397 = fmul fast <4 x double> %396, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %398 = extractelement <4 x i64> %391, i32 0
  %399 = shl i64 %398, 3
  %400 = add i64 %399, %389
  %401 = getelementptr i8, i8* %call2, i64 %400
  %402 = bitcast i8* %401 to <4 x double>*
  store <4 x double> %397, <4 x double>* %402, align 8, !alias.scope !94, !noalias !96
  %index.next1198 = add i64 %index1197, 4
  %vec.ind.next1202 = add <4 x i64> %vec.ind1201, <i64 4, i64 4, i64 4, i64 4>
  %403 = icmp eq i64 %index.next1198, 28
  br i1 %403, label %polly.loop_exit769.1, label %vector.body1195, !llvm.loop !105

polly.loop_exit769.1:                             ; preds = %vector.body1195
  %polly.indvar_next765.1 = add nuw nsw i64 %polly.indvar764.1, 1
  %exitcond861.1.not = icmp eq i64 %polly.indvar_next765.1, 32
  br i1 %exitcond861.1.not, label %polly.loop_header761.11006, label %polly.loop_header761.1

polly.loop_header761.11006:                       ; preds = %polly.loop_exit769.1, %polly.loop_exit769.11017
  %polly.indvar764.11005 = phi i64 [ %polly.indvar_next765.11015, %polly.loop_exit769.11017 ], [ 0, %polly.loop_exit769.1 ]
  %404 = add nuw nsw i64 %polly.indvar764.11005, 32
  %405 = mul nuw nsw i64 %404, 480
  %406 = trunc i64 %404 to i32
  %broadcast.splatinsert1217 = insertelement <4 x i32> poison, i32 %406, i32 0
  %broadcast.splat1218 = shufflevector <4 x i32> %broadcast.splatinsert1217, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1207

vector.body1207:                                  ; preds = %vector.body1207, %polly.loop_header761.11006
  %index1209 = phi i64 [ 0, %polly.loop_header761.11006 ], [ %index.next1210, %vector.body1207 ]
  %vec.ind1215 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header761.11006 ], [ %vec.ind.next1216, %vector.body1207 ]
  %407 = mul <4 x i32> %vec.ind1215, %broadcast.splat1218
  %408 = add <4 x i32> %407, <i32 2, i32 2, i32 2, i32 2>
  %409 = urem <4 x i32> %408, <i32 60, i32 60, i32 60, i32 60>
  %410 = sitofp <4 x i32> %409 to <4 x double>
  %411 = fmul fast <4 x double> %410, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %412 = shl i64 %index1209, 3
  %413 = add i64 %412, %405
  %414 = getelementptr i8, i8* %call2, i64 %413
  %415 = bitcast i8* %414 to <4 x double>*
  store <4 x double> %411, <4 x double>* %415, align 8, !alias.scope !94, !noalias !96
  %index.next1210 = add i64 %index1209, 4
  %vec.ind.next1216 = add <4 x i32> %vec.ind1215, <i32 4, i32 4, i32 4, i32 4>
  %416 = icmp eq i64 %index.next1210, 32
  br i1 %416, label %polly.loop_exit769.11017, label %vector.body1207, !llvm.loop !106

polly.loop_exit769.11017:                         ; preds = %vector.body1207
  %polly.indvar_next765.11015 = add nuw nsw i64 %polly.indvar764.11005, 1
  %exitcond861.11016.not = icmp eq i64 %polly.indvar_next765.11015, 32
  br i1 %exitcond861.11016.not, label %polly.loop_header761.1.1, label %polly.loop_header761.11006

polly.loop_header761.1.1:                         ; preds = %polly.loop_exit769.11017, %polly.loop_exit769.1.1
  %polly.indvar764.1.1 = phi i64 [ %polly.indvar_next765.1.1, %polly.loop_exit769.1.1 ], [ 0, %polly.loop_exit769.11017 ]
  %417 = add nuw nsw i64 %polly.indvar764.1.1, 32
  %418 = mul nuw nsw i64 %417, 480
  %419 = trunc i64 %417 to i32
  %broadcast.splatinsert1229 = insertelement <4 x i32> poison, i32 %419, i32 0
  %broadcast.splat1230 = shufflevector <4 x i32> %broadcast.splatinsert1229, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1221

vector.body1221:                                  ; preds = %vector.body1221, %polly.loop_header761.1.1
  %index1223 = phi i64 [ 0, %polly.loop_header761.1.1 ], [ %index.next1224, %vector.body1221 ]
  %vec.ind1227 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header761.1.1 ], [ %vec.ind.next1228, %vector.body1221 ]
  %420 = add nuw nsw <4 x i64> %vec.ind1227, <i64 32, i64 32, i64 32, i64 32>
  %421 = trunc <4 x i64> %420 to <4 x i32>
  %422 = mul <4 x i32> %broadcast.splat1230, %421
  %423 = add <4 x i32> %422, <i32 2, i32 2, i32 2, i32 2>
  %424 = urem <4 x i32> %423, <i32 60, i32 60, i32 60, i32 60>
  %425 = sitofp <4 x i32> %424 to <4 x double>
  %426 = fmul fast <4 x double> %425, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %427 = extractelement <4 x i64> %420, i32 0
  %428 = shl i64 %427, 3
  %429 = add i64 %428, %418
  %430 = getelementptr i8, i8* %call2, i64 %429
  %431 = bitcast i8* %430 to <4 x double>*
  store <4 x double> %426, <4 x double>* %431, align 8, !alias.scope !94, !noalias !96
  %index.next1224 = add i64 %index1223, 4
  %vec.ind.next1228 = add <4 x i64> %vec.ind1227, <i64 4, i64 4, i64 4, i64 4>
  %432 = icmp eq i64 %index.next1224, 28
  br i1 %432, label %polly.loop_exit769.1.1, label %vector.body1221, !llvm.loop !107

polly.loop_exit769.1.1:                           ; preds = %vector.body1221
  %polly.indvar_next765.1.1 = add nuw nsw i64 %polly.indvar764.1.1, 1
  %exitcond861.1.1.not = icmp eq i64 %polly.indvar_next765.1.1, 32
  br i1 %exitcond861.1.1.not, label %polly.loop_header761.2, label %polly.loop_header761.1.1

polly.loop_header761.2:                           ; preds = %polly.loop_exit769.1.1, %polly.loop_exit769.2
  %polly.indvar764.2 = phi i64 [ %polly.indvar_next765.2, %polly.loop_exit769.2 ], [ 0, %polly.loop_exit769.1.1 ]
  %433 = add nuw nsw i64 %polly.indvar764.2, 64
  %434 = mul nuw nsw i64 %433, 480
  %435 = trunc i64 %433 to i32
  %broadcast.splatinsert1243 = insertelement <4 x i32> poison, i32 %435, i32 0
  %broadcast.splat1244 = shufflevector <4 x i32> %broadcast.splatinsert1243, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1233

vector.body1233:                                  ; preds = %vector.body1233, %polly.loop_header761.2
  %index1235 = phi i64 [ 0, %polly.loop_header761.2 ], [ %index.next1236, %vector.body1233 ]
  %vec.ind1241 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header761.2 ], [ %vec.ind.next1242, %vector.body1233 ]
  %436 = mul <4 x i32> %vec.ind1241, %broadcast.splat1244
  %437 = add <4 x i32> %436, <i32 2, i32 2, i32 2, i32 2>
  %438 = urem <4 x i32> %437, <i32 60, i32 60, i32 60, i32 60>
  %439 = sitofp <4 x i32> %438 to <4 x double>
  %440 = fmul fast <4 x double> %439, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %441 = shl i64 %index1235, 3
  %442 = add i64 %441, %434
  %443 = getelementptr i8, i8* %call2, i64 %442
  %444 = bitcast i8* %443 to <4 x double>*
  store <4 x double> %440, <4 x double>* %444, align 8, !alias.scope !94, !noalias !96
  %index.next1236 = add i64 %index1235, 4
  %vec.ind.next1242 = add <4 x i32> %vec.ind1241, <i32 4, i32 4, i32 4, i32 4>
  %445 = icmp eq i64 %index.next1236, 32
  br i1 %445, label %polly.loop_exit769.2, label %vector.body1233, !llvm.loop !108

polly.loop_exit769.2:                             ; preds = %vector.body1233
  %polly.indvar_next765.2 = add nuw nsw i64 %polly.indvar764.2, 1
  %exitcond861.2.not = icmp eq i64 %polly.indvar_next765.2, 16
  br i1 %exitcond861.2.not, label %polly.loop_header761.1.2, label %polly.loop_header761.2

polly.loop_header761.1.2:                         ; preds = %polly.loop_exit769.2, %polly.loop_exit769.1.2
  %polly.indvar764.1.2 = phi i64 [ %polly.indvar_next765.1.2, %polly.loop_exit769.1.2 ], [ 0, %polly.loop_exit769.2 ]
  %446 = add nuw nsw i64 %polly.indvar764.1.2, 64
  %447 = mul nuw nsw i64 %446, 480
  %448 = trunc i64 %446 to i32
  %broadcast.splatinsert1255 = insertelement <4 x i32> poison, i32 %448, i32 0
  %broadcast.splat1256 = shufflevector <4 x i32> %broadcast.splatinsert1255, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1247

vector.body1247:                                  ; preds = %vector.body1247, %polly.loop_header761.1.2
  %index1249 = phi i64 [ 0, %polly.loop_header761.1.2 ], [ %index.next1250, %vector.body1247 ]
  %vec.ind1253 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header761.1.2 ], [ %vec.ind.next1254, %vector.body1247 ]
  %449 = add nuw nsw <4 x i64> %vec.ind1253, <i64 32, i64 32, i64 32, i64 32>
  %450 = trunc <4 x i64> %449 to <4 x i32>
  %451 = mul <4 x i32> %broadcast.splat1256, %450
  %452 = add <4 x i32> %451, <i32 2, i32 2, i32 2, i32 2>
  %453 = urem <4 x i32> %452, <i32 60, i32 60, i32 60, i32 60>
  %454 = sitofp <4 x i32> %453 to <4 x double>
  %455 = fmul fast <4 x double> %454, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %456 = extractelement <4 x i64> %449, i32 0
  %457 = shl i64 %456, 3
  %458 = add i64 %457, %447
  %459 = getelementptr i8, i8* %call2, i64 %458
  %460 = bitcast i8* %459 to <4 x double>*
  store <4 x double> %455, <4 x double>* %460, align 8, !alias.scope !94, !noalias !96
  %index.next1250 = add i64 %index1249, 4
  %vec.ind.next1254 = add <4 x i64> %vec.ind1253, <i64 4, i64 4, i64 4, i64 4>
  %461 = icmp eq i64 %index.next1250, 28
  br i1 %461, label %polly.loop_exit769.1.2, label %vector.body1247, !llvm.loop !109

polly.loop_exit769.1.2:                           ; preds = %vector.body1247
  %polly.indvar_next765.1.2 = add nuw nsw i64 %polly.indvar764.1.2, 1
  %exitcond861.1.2.not = icmp eq i64 %polly.indvar_next765.1.2, 16
  br i1 %exitcond861.1.2.not, label %polly.loop_header787, label %polly.loop_header761.1.2

polly.loop_header734.1:                           ; preds = %polly.loop_exit742, %polly.loop_exit742.1
  %polly.indvar737.1 = phi i64 [ %polly.indvar_next738.1, %polly.loop_exit742.1 ], [ 0, %polly.loop_exit742 ]
  %462 = mul nuw nsw i64 %polly.indvar737.1, 640
  %463 = trunc i64 %polly.indvar737.1 to i32
  %broadcast.splatinsert1089 = insertelement <4 x i32> poison, i32 %463, i32 0
  %broadcast.splat1090 = shufflevector <4 x i32> %broadcast.splatinsert1089, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1081

vector.body1081:                                  ; preds = %vector.body1081, %polly.loop_header734.1
  %index1083 = phi i64 [ 0, %polly.loop_header734.1 ], [ %index.next1084, %vector.body1081 ]
  %vec.ind1087 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1 ], [ %vec.ind.next1088, %vector.body1081 ]
  %464 = add nuw nsw <4 x i64> %vec.ind1087, <i64 32, i64 32, i64 32, i64 32>
  %465 = trunc <4 x i64> %464 to <4 x i32>
  %466 = mul <4 x i32> %broadcast.splat1090, %465
  %467 = add <4 x i32> %466, <i32 3, i32 3, i32 3, i32 3>
  %468 = urem <4 x i32> %467, <i32 80, i32 80, i32 80, i32 80>
  %469 = sitofp <4 x i32> %468 to <4 x double>
  %470 = fmul fast <4 x double> %469, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %471 = extractelement <4 x i64> %464, i32 0
  %472 = shl i64 %471, 3
  %473 = add nuw nsw i64 %472, %462
  %474 = getelementptr i8, i8* %call, i64 %473
  %475 = bitcast i8* %474 to <4 x double>*
  store <4 x double> %470, <4 x double>* %475, align 8, !alias.scope !90, !noalias !92
  %index.next1084 = add i64 %index1083, 4
  %vec.ind.next1088 = add <4 x i64> %vec.ind1087, <i64 4, i64 4, i64 4, i64 4>
  %476 = icmp eq i64 %index.next1084, 32
  br i1 %476, label %polly.loop_exit742.1, label %vector.body1081, !llvm.loop !110

polly.loop_exit742.1:                             ; preds = %vector.body1081
  %polly.indvar_next738.1 = add nuw nsw i64 %polly.indvar737.1, 1
  %exitcond870.1.not = icmp eq i64 %polly.indvar_next738.1, 32
  br i1 %exitcond870.1.not, label %polly.loop_header734.2, label %polly.loop_header734.1

polly.loop_header734.2:                           ; preds = %polly.loop_exit742.1, %polly.loop_exit742.2
  %polly.indvar737.2 = phi i64 [ %polly.indvar_next738.2, %polly.loop_exit742.2 ], [ 0, %polly.loop_exit742.1 ]
  %477 = mul nuw nsw i64 %polly.indvar737.2, 640
  %478 = trunc i64 %polly.indvar737.2 to i32
  %broadcast.splatinsert1101 = insertelement <4 x i32> poison, i32 %478, i32 0
  %broadcast.splat1102 = shufflevector <4 x i32> %broadcast.splatinsert1101, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1093

vector.body1093:                                  ; preds = %vector.body1093, %polly.loop_header734.2
  %index1095 = phi i64 [ 0, %polly.loop_header734.2 ], [ %index.next1096, %vector.body1093 ]
  %vec.ind1099 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.2 ], [ %vec.ind.next1100, %vector.body1093 ]
  %479 = add nuw nsw <4 x i64> %vec.ind1099, <i64 64, i64 64, i64 64, i64 64>
  %480 = trunc <4 x i64> %479 to <4 x i32>
  %481 = mul <4 x i32> %broadcast.splat1102, %480
  %482 = add <4 x i32> %481, <i32 3, i32 3, i32 3, i32 3>
  %483 = urem <4 x i32> %482, <i32 80, i32 80, i32 80, i32 80>
  %484 = sitofp <4 x i32> %483 to <4 x double>
  %485 = fmul fast <4 x double> %484, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %486 = extractelement <4 x i64> %479, i32 0
  %487 = shl i64 %486, 3
  %488 = add nuw nsw i64 %487, %477
  %489 = getelementptr i8, i8* %call, i64 %488
  %490 = bitcast i8* %489 to <4 x double>*
  store <4 x double> %485, <4 x double>* %490, align 8, !alias.scope !90, !noalias !92
  %index.next1096 = add i64 %index1095, 4
  %vec.ind.next1100 = add <4 x i64> %vec.ind1099, <i64 4, i64 4, i64 4, i64 4>
  %491 = icmp eq i64 %index.next1096, 16
  br i1 %491, label %polly.loop_exit742.2, label %vector.body1093, !llvm.loop !111

polly.loop_exit742.2:                             ; preds = %vector.body1093
  %polly.indvar_next738.2 = add nuw nsw i64 %polly.indvar737.2, 1
  %exitcond870.2.not = icmp eq i64 %polly.indvar_next738.2, 32
  br i1 %exitcond870.2.not, label %polly.loop_header734.11020, label %polly.loop_header734.2

polly.loop_header734.11020:                       ; preds = %polly.loop_exit742.2, %polly.loop_exit742.11031
  %polly.indvar737.11019 = phi i64 [ %polly.indvar_next738.11029, %polly.loop_exit742.11031 ], [ 0, %polly.loop_exit742.2 ]
  %492 = add nuw nsw i64 %polly.indvar737.11019, 32
  %493 = mul nuw nsw i64 %492, 640
  %494 = trunc i64 %492 to i32
  %broadcast.splatinsert1115 = insertelement <4 x i32> poison, i32 %494, i32 0
  %broadcast.splat1116 = shufflevector <4 x i32> %broadcast.splatinsert1115, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1105

vector.body1105:                                  ; preds = %vector.body1105, %polly.loop_header734.11020
  %index1107 = phi i64 [ 0, %polly.loop_header734.11020 ], [ %index.next1108, %vector.body1105 ]
  %vec.ind1113 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734.11020 ], [ %vec.ind.next1114, %vector.body1105 ]
  %495 = mul <4 x i32> %vec.ind1113, %broadcast.splat1116
  %496 = add <4 x i32> %495, <i32 3, i32 3, i32 3, i32 3>
  %497 = urem <4 x i32> %496, <i32 80, i32 80, i32 80, i32 80>
  %498 = sitofp <4 x i32> %497 to <4 x double>
  %499 = fmul fast <4 x double> %498, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %500 = shl i64 %index1107, 3
  %501 = add nuw nsw i64 %500, %493
  %502 = getelementptr i8, i8* %call, i64 %501
  %503 = bitcast i8* %502 to <4 x double>*
  store <4 x double> %499, <4 x double>* %503, align 8, !alias.scope !90, !noalias !92
  %index.next1108 = add i64 %index1107, 4
  %vec.ind.next1114 = add <4 x i32> %vec.ind1113, <i32 4, i32 4, i32 4, i32 4>
  %504 = icmp eq i64 %index.next1108, 32
  br i1 %504, label %polly.loop_exit742.11031, label %vector.body1105, !llvm.loop !112

polly.loop_exit742.11031:                         ; preds = %vector.body1105
  %polly.indvar_next738.11029 = add nuw nsw i64 %polly.indvar737.11019, 1
  %exitcond870.11030.not = icmp eq i64 %polly.indvar_next738.11029, 32
  br i1 %exitcond870.11030.not, label %polly.loop_header734.1.1, label %polly.loop_header734.11020

polly.loop_header734.1.1:                         ; preds = %polly.loop_exit742.11031, %polly.loop_exit742.1.1
  %polly.indvar737.1.1 = phi i64 [ %polly.indvar_next738.1.1, %polly.loop_exit742.1.1 ], [ 0, %polly.loop_exit742.11031 ]
  %505 = add nuw nsw i64 %polly.indvar737.1.1, 32
  %506 = mul nuw nsw i64 %505, 640
  %507 = trunc i64 %505 to i32
  %broadcast.splatinsert1127 = insertelement <4 x i32> poison, i32 %507, i32 0
  %broadcast.splat1128 = shufflevector <4 x i32> %broadcast.splatinsert1127, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1119

vector.body1119:                                  ; preds = %vector.body1119, %polly.loop_header734.1.1
  %index1121 = phi i64 [ 0, %polly.loop_header734.1.1 ], [ %index.next1122, %vector.body1119 ]
  %vec.ind1125 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1.1 ], [ %vec.ind.next1126, %vector.body1119 ]
  %508 = add nuw nsw <4 x i64> %vec.ind1125, <i64 32, i64 32, i64 32, i64 32>
  %509 = trunc <4 x i64> %508 to <4 x i32>
  %510 = mul <4 x i32> %broadcast.splat1128, %509
  %511 = add <4 x i32> %510, <i32 3, i32 3, i32 3, i32 3>
  %512 = urem <4 x i32> %511, <i32 80, i32 80, i32 80, i32 80>
  %513 = sitofp <4 x i32> %512 to <4 x double>
  %514 = fmul fast <4 x double> %513, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %515 = extractelement <4 x i64> %508, i32 0
  %516 = shl i64 %515, 3
  %517 = add nuw nsw i64 %516, %506
  %518 = getelementptr i8, i8* %call, i64 %517
  %519 = bitcast i8* %518 to <4 x double>*
  store <4 x double> %514, <4 x double>* %519, align 8, !alias.scope !90, !noalias !92
  %index.next1122 = add i64 %index1121, 4
  %vec.ind.next1126 = add <4 x i64> %vec.ind1125, <i64 4, i64 4, i64 4, i64 4>
  %520 = icmp eq i64 %index.next1122, 32
  br i1 %520, label %polly.loop_exit742.1.1, label %vector.body1119, !llvm.loop !113

polly.loop_exit742.1.1:                           ; preds = %vector.body1119
  %polly.indvar_next738.1.1 = add nuw nsw i64 %polly.indvar737.1.1, 1
  %exitcond870.1.1.not = icmp eq i64 %polly.indvar_next738.1.1, 32
  br i1 %exitcond870.1.1.not, label %polly.loop_header734.2.1, label %polly.loop_header734.1.1

polly.loop_header734.2.1:                         ; preds = %polly.loop_exit742.1.1, %polly.loop_exit742.2.1
  %polly.indvar737.2.1 = phi i64 [ %polly.indvar_next738.2.1, %polly.loop_exit742.2.1 ], [ 0, %polly.loop_exit742.1.1 ]
  %521 = add nuw nsw i64 %polly.indvar737.2.1, 32
  %522 = mul nuw nsw i64 %521, 640
  %523 = trunc i64 %521 to i32
  %broadcast.splatinsert1139 = insertelement <4 x i32> poison, i32 %523, i32 0
  %broadcast.splat1140 = shufflevector <4 x i32> %broadcast.splatinsert1139, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1131

vector.body1131:                                  ; preds = %vector.body1131, %polly.loop_header734.2.1
  %index1133 = phi i64 [ 0, %polly.loop_header734.2.1 ], [ %index.next1134, %vector.body1131 ]
  %vec.ind1137 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.2.1 ], [ %vec.ind.next1138, %vector.body1131 ]
  %524 = add nuw nsw <4 x i64> %vec.ind1137, <i64 64, i64 64, i64 64, i64 64>
  %525 = trunc <4 x i64> %524 to <4 x i32>
  %526 = mul <4 x i32> %broadcast.splat1140, %525
  %527 = add <4 x i32> %526, <i32 3, i32 3, i32 3, i32 3>
  %528 = urem <4 x i32> %527, <i32 80, i32 80, i32 80, i32 80>
  %529 = sitofp <4 x i32> %528 to <4 x double>
  %530 = fmul fast <4 x double> %529, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %531 = extractelement <4 x i64> %524, i32 0
  %532 = shl i64 %531, 3
  %533 = add nuw nsw i64 %532, %522
  %534 = getelementptr i8, i8* %call, i64 %533
  %535 = bitcast i8* %534 to <4 x double>*
  store <4 x double> %530, <4 x double>* %535, align 8, !alias.scope !90, !noalias !92
  %index.next1134 = add i64 %index1133, 4
  %vec.ind.next1138 = add <4 x i64> %vec.ind1137, <i64 4, i64 4, i64 4, i64 4>
  %536 = icmp eq i64 %index.next1134, 16
  br i1 %536, label %polly.loop_exit742.2.1, label %vector.body1131, !llvm.loop !114

polly.loop_exit742.2.1:                           ; preds = %vector.body1131
  %polly.indvar_next738.2.1 = add nuw nsw i64 %polly.indvar737.2.1, 1
  %exitcond870.2.1.not = icmp eq i64 %polly.indvar_next738.2.1, 32
  br i1 %exitcond870.2.1.not, label %polly.loop_header734.21034, label %polly.loop_header734.2.1

polly.loop_header734.21034:                       ; preds = %polly.loop_exit742.2.1, %polly.loop_exit742.21045
  %polly.indvar737.21033 = phi i64 [ %polly.indvar_next738.21043, %polly.loop_exit742.21045 ], [ 0, %polly.loop_exit742.2.1 ]
  %537 = add nuw nsw i64 %polly.indvar737.21033, 64
  %538 = mul nuw nsw i64 %537, 640
  %539 = trunc i64 %537 to i32
  %broadcast.splatinsert1153 = insertelement <4 x i32> poison, i32 %539, i32 0
  %broadcast.splat1154 = shufflevector <4 x i32> %broadcast.splatinsert1153, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1143

vector.body1143:                                  ; preds = %vector.body1143, %polly.loop_header734.21034
  %index1145 = phi i64 [ 0, %polly.loop_header734.21034 ], [ %index.next1146, %vector.body1143 ]
  %vec.ind1151 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734.21034 ], [ %vec.ind.next1152, %vector.body1143 ]
  %540 = mul <4 x i32> %vec.ind1151, %broadcast.splat1154
  %541 = add <4 x i32> %540, <i32 3, i32 3, i32 3, i32 3>
  %542 = urem <4 x i32> %541, <i32 80, i32 80, i32 80, i32 80>
  %543 = sitofp <4 x i32> %542 to <4 x double>
  %544 = fmul fast <4 x double> %543, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %545 = shl i64 %index1145, 3
  %546 = add nuw nsw i64 %545, %538
  %547 = getelementptr i8, i8* %call, i64 %546
  %548 = bitcast i8* %547 to <4 x double>*
  store <4 x double> %544, <4 x double>* %548, align 8, !alias.scope !90, !noalias !92
  %index.next1146 = add i64 %index1145, 4
  %vec.ind.next1152 = add <4 x i32> %vec.ind1151, <i32 4, i32 4, i32 4, i32 4>
  %549 = icmp eq i64 %index.next1146, 32
  br i1 %549, label %polly.loop_exit742.21045, label %vector.body1143, !llvm.loop !115

polly.loop_exit742.21045:                         ; preds = %vector.body1143
  %polly.indvar_next738.21043 = add nuw nsw i64 %polly.indvar737.21033, 1
  %exitcond870.21044.not = icmp eq i64 %polly.indvar_next738.21043, 16
  br i1 %exitcond870.21044.not, label %polly.loop_header734.1.2, label %polly.loop_header734.21034

polly.loop_header734.1.2:                         ; preds = %polly.loop_exit742.21045, %polly.loop_exit742.1.2
  %polly.indvar737.1.2 = phi i64 [ %polly.indvar_next738.1.2, %polly.loop_exit742.1.2 ], [ 0, %polly.loop_exit742.21045 ]
  %550 = add nuw nsw i64 %polly.indvar737.1.2, 64
  %551 = mul nuw nsw i64 %550, 640
  %552 = trunc i64 %550 to i32
  %broadcast.splatinsert1165 = insertelement <4 x i32> poison, i32 %552, i32 0
  %broadcast.splat1166 = shufflevector <4 x i32> %broadcast.splatinsert1165, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1157

vector.body1157:                                  ; preds = %vector.body1157, %polly.loop_header734.1.2
  %index1159 = phi i64 [ 0, %polly.loop_header734.1.2 ], [ %index.next1160, %vector.body1157 ]
  %vec.ind1163 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1.2 ], [ %vec.ind.next1164, %vector.body1157 ]
  %553 = add nuw nsw <4 x i64> %vec.ind1163, <i64 32, i64 32, i64 32, i64 32>
  %554 = trunc <4 x i64> %553 to <4 x i32>
  %555 = mul <4 x i32> %broadcast.splat1166, %554
  %556 = add <4 x i32> %555, <i32 3, i32 3, i32 3, i32 3>
  %557 = urem <4 x i32> %556, <i32 80, i32 80, i32 80, i32 80>
  %558 = sitofp <4 x i32> %557 to <4 x double>
  %559 = fmul fast <4 x double> %558, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %560 = extractelement <4 x i64> %553, i32 0
  %561 = shl i64 %560, 3
  %562 = add nuw nsw i64 %561, %551
  %563 = getelementptr i8, i8* %call, i64 %562
  %564 = bitcast i8* %563 to <4 x double>*
  store <4 x double> %559, <4 x double>* %564, align 8, !alias.scope !90, !noalias !92
  %index.next1160 = add i64 %index1159, 4
  %vec.ind.next1164 = add <4 x i64> %vec.ind1163, <i64 4, i64 4, i64 4, i64 4>
  %565 = icmp eq i64 %index.next1160, 32
  br i1 %565, label %polly.loop_exit742.1.2, label %vector.body1157, !llvm.loop !116

polly.loop_exit742.1.2:                           ; preds = %vector.body1157
  %polly.indvar_next738.1.2 = add nuw nsw i64 %polly.indvar737.1.2, 1
  %exitcond870.1.2.not = icmp eq i64 %polly.indvar_next738.1.2, 16
  br i1 %exitcond870.1.2.not, label %polly.loop_header734.2.2, label %polly.loop_header734.1.2

polly.loop_header734.2.2:                         ; preds = %polly.loop_exit742.1.2, %polly.loop_exit742.2.2
  %polly.indvar737.2.2 = phi i64 [ %polly.indvar_next738.2.2, %polly.loop_exit742.2.2 ], [ 0, %polly.loop_exit742.1.2 ]
  %566 = add nuw nsw i64 %polly.indvar737.2.2, 64
  %567 = mul nuw nsw i64 %566, 640
  %568 = trunc i64 %566 to i32
  %broadcast.splatinsert1177 = insertelement <4 x i32> poison, i32 %568, i32 0
  %broadcast.splat1178 = shufflevector <4 x i32> %broadcast.splatinsert1177, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1169

vector.body1169:                                  ; preds = %vector.body1169, %polly.loop_header734.2.2
  %index1171 = phi i64 [ 0, %polly.loop_header734.2.2 ], [ %index.next1172, %vector.body1169 ]
  %vec.ind1175 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.2.2 ], [ %vec.ind.next1176, %vector.body1169 ]
  %569 = add nuw nsw <4 x i64> %vec.ind1175, <i64 64, i64 64, i64 64, i64 64>
  %570 = trunc <4 x i64> %569 to <4 x i32>
  %571 = mul <4 x i32> %broadcast.splat1178, %570
  %572 = add <4 x i32> %571, <i32 3, i32 3, i32 3, i32 3>
  %573 = urem <4 x i32> %572, <i32 80, i32 80, i32 80, i32 80>
  %574 = sitofp <4 x i32> %573 to <4 x double>
  %575 = fmul fast <4 x double> %574, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %576 = extractelement <4 x i64> %569, i32 0
  %577 = shl i64 %576, 3
  %578 = add nuw nsw i64 %577, %567
  %579 = getelementptr i8, i8* %call, i64 %578
  %580 = bitcast i8* %579 to <4 x double>*
  store <4 x double> %575, <4 x double>* %580, align 8, !alias.scope !90, !noalias !92
  %index.next1172 = add i64 %index1171, 4
  %vec.ind.next1176 = add <4 x i64> %vec.ind1175, <i64 4, i64 4, i64 4, i64 4>
  %581 = icmp eq i64 %index.next1172, 16
  br i1 %581, label %polly.loop_exit742.2.2, label %vector.body1169, !llvm.loop !117

polly.loop_exit742.2.2:                           ; preds = %vector.body1169
  %polly.indvar_next738.2.2 = add nuw nsw i64 %polly.indvar737.2.2, 1
  %exitcond870.2.2.not = icmp eq i64 %polly.indvar_next738.2.2, 16
  br i1 %exitcond870.2.2.not, label %polly.loop_header761, label %polly.loop_header734.2.2
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

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #1 = { "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #3 = { nofree nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #4 = { nofree nounwind }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
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
!25 = !{!"llvm.loop.tile.size", i32 128}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 32}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !34, !45, !51}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.followup_floor", !46}
!46 = distinct !{!46, !12, !23, !47, !48, !49, !50}
!47 = !{!"llvm.loop.id", !"i1"}
!48 = !{!"llvm.data.pack.enable", i1 true}
!49 = !{!"llvm.data.pack.array", !21}
!50 = !{!"llvm.data.pack.allocate", !"malloc"}
!51 = !{!"llvm.loop.tile.followup_tile", !52}
!52 = distinct !{!52, !12, !53}
!53 = !{!"llvm.loop.id", !"i2"}
!54 = distinct !{!54, !12, !13}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !4, i64 0}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !63, !"polly.alias.scope.MemRef_call"}
!63 = distinct !{!63, !"polly.alias.scope.domain"}
!64 = !{!65, !66, !67}
!65 = distinct !{!65, !63, !"polly.alias.scope.MemRef_call1"}
!66 = distinct !{!66, !63, !"polly.alias.scope.MemRef_call2"}
!67 = distinct !{!67, !63, !"polly.alias.scope.Packed_MemRef_call2"}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !70, !13}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!62, !66, !67}
!72 = distinct !{!72, !73, !"polly.alias.scope.MemRef_call"}
!73 = distinct !{!73, !"polly.alias.scope.domain"}
!74 = !{!75, !76, !77}
!75 = distinct !{!75, !73, !"polly.alias.scope.MemRef_call1"}
!76 = distinct !{!76, !73, !"polly.alias.scope.MemRef_call2"}
!77 = distinct !{!77, !73, !"polly.alias.scope.Packed_MemRef_call2"}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !70, !13}
!80 = !{!72, !76, !77}
!81 = distinct !{!81, !82, !"polly.alias.scope.MemRef_call"}
!82 = distinct !{!82, !"polly.alias.scope.domain"}
!83 = !{!84, !85, !86}
!84 = distinct !{!84, !82, !"polly.alias.scope.MemRef_call1"}
!85 = distinct !{!85, !82, !"polly.alias.scope.MemRef_call2"}
!86 = distinct !{!86, !82, !"polly.alias.scope.Packed_MemRef_call2"}
!87 = distinct !{!87, !13}
!88 = distinct !{!88, !70, !13}
!89 = !{!81, !85, !86}
!90 = distinct !{!90, !91, !"polly.alias.scope.MemRef_call"}
!91 = distinct !{!91, !"polly.alias.scope.domain"}
!92 = !{!93, !94}
!93 = distinct !{!93, !91, !"polly.alias.scope.MemRef_call1"}
!94 = distinct !{!94, !91, !"polly.alias.scope.MemRef_call2"}
!95 = distinct !{!95, !13}
!96 = !{!93, !90}
!97 = distinct !{!97, !13}
!98 = !{!94, !90}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !13}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !13}
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
