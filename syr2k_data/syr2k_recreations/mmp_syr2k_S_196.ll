; ModuleID = 'syr2k_recreations//mmp_syr2k_S_196.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_196.c"
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
  %call792 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #8
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #8
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1644 = bitcast i8* %call1 to double*
  %polly.access.call1653 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2654 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1653, %call2
  %polly.access.call2673 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2673, %call1
  %2 = or i1 %0, %1
  %polly.access.call693 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call693, %call2
  %4 = icmp ule i8* %polly.access.call2673, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call693, %call1
  %8 = icmp ule i8* %polly.access.call1653, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header778, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep989 = getelementptr i8, i8* %call2, i64 %12
  %scevgep988 = getelementptr i8, i8* %call2, i64 %11
  %scevgep987 = getelementptr i8, i8* %call1, i64 %12
  %scevgep986 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep986, %scevgep989
  %bound1 = icmp ult i8* %scevgep988, %scevgep987
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
  br i1 %exitcond18.not.i, label %vector.ph993, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph993:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1000 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1001 = shufflevector <4 x i64> %broadcast.splatinsert1000, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body992

vector.body992:                                   ; preds = %vector.body992, %vector.ph993
  %index994 = phi i64 [ 0, %vector.ph993 ], [ %index.next995, %vector.body992 ]
  %vec.ind998 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph993 ], [ %vec.ind.next999, %vector.body992 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind998, %broadcast.splat1001
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv7.i, i64 %index994
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next995 = add i64 %index994, 4
  %vec.ind.next999 = add <4 x i64> %vec.ind998, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next995, 80
  br i1 %40, label %for.inc41.i, label %vector.body992, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body992
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph993, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit839.1.2
  tail call void (...) @polybench_timer_start() #8
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start460, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1414, label %vector.ph1275

vector.ph1275:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1274

vector.body1274:                                  ; preds = %vector.body1274, %vector.ph1275
  %index1276 = phi i64 [ 0, %vector.ph1275 ], [ %index.next1277, %vector.body1274 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv21.i, i64 %index1276
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1277 = add i64 %index1276, 4
  %46 = icmp eq i64 %index.next1277, %n.vec
  br i1 %46, label %middle.block1272, label %vector.body1274, !llvm.loop !18

middle.block1272:                                 ; preds = %vector.body1274
  %cmp.n1279 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1279, label %for.inc6.i, label %for.body3.i46.preheader1414

for.body3.i46.preheader1414:                      ; preds = %for.body3.i46.preheader, %middle.block1272
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1272 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1414, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1414 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1272, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting461
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  tail call void (...) @polybench_timer_start() #8
  br i1 %41, label %polly.start278, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1315 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1315, label %for.body3.i60.preheader1413, label %vector.ph1316

vector.ph1316:                                    ; preds = %for.body3.i60.preheader
  %n.vec1318 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1314

vector.body1314:                                  ; preds = %vector.body1314, %vector.ph1316
  %index1319 = phi i64 [ 0, %vector.ph1316 ], [ %index.next1320, %vector.body1314 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv21.i52, i64 %index1319
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1323 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1323, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1320 = add i64 %index1319, 4
  %57 = icmp eq i64 %index.next1320, %n.vec1318
  br i1 %57, label %middle.block1312, label %vector.body1314, !llvm.loop !64

middle.block1312:                                 ; preds = %vector.body1314
  %cmp.n1322 = icmp eq i64 %indvars.iv21.i52, %n.vec1318
  br i1 %cmp.n1322, label %for.inc6.i63, label %for.body3.i60.preheader1413

for.body3.i60.preheader1413:                      ; preds = %for.body3.i60.preheader, %middle.block1312
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1318, %middle.block1312 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1413, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1413 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1312, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting279
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  tail call void (...) @polybench_timer_start() #8
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1365 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1365, label %for.body3.i99.preheader1412, label %vector.ph1366

vector.ph1366:                                    ; preds = %for.body3.i99.preheader
  %n.vec1368 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1364

vector.body1364:                                  ; preds = %vector.body1364, %vector.ph1366
  %index1369 = phi i64 [ 0, %vector.ph1366 ], [ %index.next1370, %vector.body1364 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv21.i91, i64 %index1369
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1373 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1373, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1370 = add i64 %index1369, 4
  %68 = icmp eq i64 %index.next1370, %n.vec1368
  br i1 %68, label %middle.block1362, label %vector.body1364, !llvm.loop !66

middle.block1362:                                 ; preds = %vector.body1364
  %cmp.n1372 = icmp eq i64 %indvars.iv21.i91, %n.vec1368
  br i1 %cmp.n1372, label %for.inc6.i102, label %for.body3.i99.preheader1412

for.body3.i99.preheader1412:                      ; preds = %for.body3.i99.preheader, %middle.block1362
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1368, %middle.block1362 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1412, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1412 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1362, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #8
  %malloccall136 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #8
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit240
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1377 = phi i64 [ %indvar.next1378, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1377, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1379 = icmp ult i64 %88, 4
  br i1 %min.iters.check1379, label %polly.loop_header192.preheader, label %vector.ph1380

vector.ph1380:                                    ; preds = %polly.loop_header
  %n.vec1382 = and i64 %88, -4
  br label %vector.body1376

vector.body1376:                                  ; preds = %vector.body1376, %vector.ph1380
  %index1383 = phi i64 [ 0, %vector.ph1380 ], [ %index.next1384, %vector.body1376 ]
  %90 = shl nuw nsw i64 %index1383, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1387 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1387, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1384 = add i64 %index1383, 4
  %95 = icmp eq i64 %index.next1384, %n.vec1382
  br i1 %95, label %middle.block1374, label %vector.body1376, !llvm.loop !79

middle.block1374:                                 ; preds = %vector.body1376
  %cmp.n1386 = icmp eq i64 %88, %n.vec1382
  br i1 %cmp.n1386, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1374
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1382, %middle.block1374 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1374
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond874.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1378 = add i64 %indvar1377, 1
  br i1 %exitcond874.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond873.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond873.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit240
  %indvars.iv = phi i64 [ 80, %polly.loop_header200.preheader ], [ %indvars.iv.next, %polly.loop_exit240 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit240 ]
  %97 = mul nsw i64 %polly.indvar203, -4
  %98 = shl nsw i64 %polly.indvar203, 2
  br label %polly.loop_header206

polly.loop_exit240:                               ; preds = %polly.loop_exit246
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  %exitcond872.not = icmp eq i64 %polly.indvar_next204, 20
  br i1 %exitcond872.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit214, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_exit214 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar209, 80
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_header212
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond864.not = icmp eq i64 %polly.indvar_next210, 60
  br i1 %exitcond864.not, label %polly.loop_header222, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_header212, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_header212 ]
  %99 = add nuw nsw i64 %polly.indvar215, %98
  %polly.access.mul.call2219 = mul nuw nsw i64 %99, 60
  %polly.access.add.call2220 = add nuw nsw i64 %polly.access.mul.call2219, %polly.indvar209
  %polly.access.call2221 = getelementptr double, double* %polly.access.cast.call2654, i64 %polly.access.add.call2220
  %polly.access.call2221.load = load double, double* %polly.access.call2221, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar215, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2221.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next216, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header222:                             ; preds = %polly.loop_exit214, %polly.loop_exit230
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit230 ], [ 0, %polly.loop_exit214 ]
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar225, 80
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_header228
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond866.not = icmp eq i64 %polly.indvar_next226, 60
  br i1 %exitcond866.not, label %polly.loop_header238, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header228, %polly.loop_header222
  %polly.indvar231 = phi i64 [ 0, %polly.loop_header222 ], [ %polly.indvar_next232, %polly.loop_header228 ]
  %100 = add nuw nsw i64 %polly.indvar231, %98
  %polly.access.mul.call1235 = mul nuw nsw i64 %100, 60
  %polly.access.add.call1236 = add nuw nsw i64 %polly.access.mul.call1235, %polly.indvar225
  %polly.access.call1237 = getelementptr double, double* %polly.access.cast.call1644, i64 %polly.access.add.call1236
  %polly.access.call1237.load = load double, double* %polly.access.call1237, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1 = add nuw nsw i64 %polly.indvar231, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1
  store double %polly.access.call1237.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %exitcond865.not = icmp eq i64 %polly.indvar_next232, %indvars.iv
  br i1 %exitcond865.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header238:                             ; preds = %polly.loop_exit230, %polly.loop_exit246
  %polly.indvar241 = phi i64 [ %polly.indvar_next242, %polly.loop_exit246 ], [ 0, %polly.loop_exit230 ]
  %polly.access.mul.Packed_MemRef_call1256 = mul nuw nsw i64 %polly.indvar241, 80
  br label %polly.loop_header244

polly.loop_exit246:                               ; preds = %polly.loop_exit252
  %polly.indvar_next242 = add nuw nsw i64 %polly.indvar241, 1
  %exitcond871.not = icmp eq i64 %polly.indvar_next242, 60
  br i1 %exitcond871.not, label %polly.loop_exit240, label %polly.loop_header238

polly.loop_header244:                             ; preds = %polly.loop_exit252, %polly.loop_header238
  %indvars.iv867 = phi i64 [ %indvars.iv.next868, %polly.loop_exit252 ], [ 0, %polly.loop_header238 ]
  %polly.indvar247 = phi i64 [ %polly.indvar_next248, %polly.loop_exit252 ], [ %98, %polly.loop_header238 ]
  %101 = add nsw i64 %polly.indvar247, %97
  %102 = mul nuw nsw i64 %polly.indvar247, 640
  %scevgep272 = getelementptr i8, i8* %call, i64 %102
  %polly.access.add.Packed_MemRef_call2261 = add nuw nsw i64 %101, %polly.access.mul.Packed_MemRef_call1256
  %smin1391 = call i64 @llvm.smin.i64(i64 %indvars.iv867, i64 3)
  %polly.access.Packed_MemRef_call1270 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2261
  %_p_scalar_271 = load double, double* %polly.access.Packed_MemRef_call1270, align 8
  %polly.access.Packed_MemRef_call2262 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261
  %_p_scalar_263 = load double, double* %polly.access.Packed_MemRef_call2262, align 8
  %broadcast.splatinsert1400 = insertelement <4 x i64> poison, i64 %smin1391, i32 0
  %broadcast.splat1401 = shufflevector <4 x i64> %broadcast.splatinsert1400, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1406 = insertelement <4 x double> poison, double %_p_scalar_263, i32 0
  %broadcast.splat1407 = shufflevector <4 x double> %broadcast.splatinsert1406, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1409 = insertelement <4 x double> poison, double %_p_scalar_271, i32 0
  %broadcast.splat1410 = shufflevector <4 x double> %broadcast.splatinsert1409, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1390

vector.body1390:                                  ; preds = %vector.body1390, %polly.loop_header244
  %index1396 = phi i64 [ 0, %polly.loop_header244 ], [ %index.next1397, %vector.body1390 ]
  %broadcast.splatinsert1402 = insertelement <4 x i64> poison, i64 %index1396, i32 0
  %broadcast.splat1403 = shufflevector <4 x i64> %broadcast.splatinsert1402, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1404 = or <4 x i64> %broadcast.splat1403, <i64 0, i64 1, i64 2, i64 3>
  %103 = icmp ule <4 x i64> %induction1404, %broadcast.splat1401
  %104 = add nuw nsw i64 %index1396, %98
  %105 = add nuw nsw i64 %index1396, %polly.access.mul.Packed_MemRef_call1256
  %106 = getelementptr double, double* %Packed_MemRef_call1, i64 %105
  %107 = bitcast double* %106 to <4 x double>*
  %wide.masked.load1405 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %107, i32 8, <4 x i1> %103, <4 x double> poison)
  %108 = fmul fast <4 x double> %broadcast.splat1407, %wide.masked.load1405
  %109 = getelementptr double, double* %Packed_MemRef_call2, i64 %105
  %110 = bitcast double* %109 to <4 x double>*
  %wide.masked.load1408 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %110, i32 8, <4 x i1> %103, <4 x double> poison)
  %111 = fmul fast <4 x double> %broadcast.splat1410, %wide.masked.load1408
  %112 = shl i64 %104, 3
  %113 = getelementptr i8, i8* %scevgep272, i64 %112
  %114 = bitcast i8* %113 to <4 x double>*
  %wide.masked.load1411 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %114, i32 8, <4 x i1> %103, <4 x double> poison), !alias.scope !72, !noalias !74
  %115 = fadd fast <4 x double> %111, %108
  %116 = fmul fast <4 x double> %115, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %117 = fadd fast <4 x double> %116, %wide.masked.load1411
  %118 = bitcast i8* %113 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %117, <4 x double>* %118, i32 8, <4 x i1> %103), !alias.scope !72, !noalias !74
  %index.next1397 = add i64 %index1396, 4
  %119 = icmp eq i64 %index1396, 0
  br i1 %119, label %polly.loop_exit252, label %vector.body1390, !llvm.loop !84

polly.loop_exit252:                               ; preds = %vector.body1390
  %polly.indvar_next248 = add nuw nsw i64 %polly.indvar247, 1
  %indvars.iv.next868 = add nuw nsw i64 %indvars.iv867, 1
  %exitcond870.not = icmp eq i64 %indvars.iv.next868, %indvars.iv
  br i1 %exitcond870.not, label %polly.loop_exit246, label %polly.loop_header244

polly.start278:                                   ; preds = %kernel_syr2k.exit
  %malloccall280 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #8
  %malloccall282 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #8
  br label %polly.loop_header366

polly.exiting279:                                 ; preds = %polly.loop_exit422
  tail call void @free(i8* nonnull %malloccall280)
  tail call void @free(i8* nonnull %malloccall282)
  br label %kernel_syr2k.exit90

polly.loop_header366:                             ; preds = %polly.loop_exit374, %polly.start278
  %indvar1327 = phi i64 [ %indvar.next1328, %polly.loop_exit374 ], [ 0, %polly.start278 ]
  %polly.indvar369 = phi i64 [ %polly.indvar_next370, %polly.loop_exit374 ], [ 1, %polly.start278 ]
  %120 = add i64 %indvar1327, 1
  %121 = mul nuw nsw i64 %polly.indvar369, 640
  %scevgep378 = getelementptr i8, i8* %call, i64 %121
  %min.iters.check1329 = icmp ult i64 %120, 4
  br i1 %min.iters.check1329, label %polly.loop_header372.preheader, label %vector.ph1330

vector.ph1330:                                    ; preds = %polly.loop_header366
  %n.vec1332 = and i64 %120, -4
  br label %vector.body1326

vector.body1326:                                  ; preds = %vector.body1326, %vector.ph1330
  %index1333 = phi i64 [ 0, %vector.ph1330 ], [ %index.next1334, %vector.body1326 ]
  %122 = shl nuw nsw i64 %index1333, 3
  %123 = getelementptr i8, i8* %scevgep378, i64 %122
  %124 = bitcast i8* %123 to <4 x double>*
  %wide.load1337 = load <4 x double>, <4 x double>* %124, align 8, !alias.scope !85, !noalias !87
  %125 = fmul fast <4 x double> %wide.load1337, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %126 = bitcast i8* %123 to <4 x double>*
  store <4 x double> %125, <4 x double>* %126, align 8, !alias.scope !85, !noalias !87
  %index.next1334 = add i64 %index1333, 4
  %127 = icmp eq i64 %index.next1334, %n.vec1332
  br i1 %127, label %middle.block1324, label %vector.body1326, !llvm.loop !92

middle.block1324:                                 ; preds = %vector.body1326
  %cmp.n1336 = icmp eq i64 %120, %n.vec1332
  br i1 %cmp.n1336, label %polly.loop_exit374, label %polly.loop_header372.preheader

polly.loop_header372.preheader:                   ; preds = %polly.loop_header366, %middle.block1324
  %polly.indvar375.ph = phi i64 [ 0, %polly.loop_header366 ], [ %n.vec1332, %middle.block1324 ]
  br label %polly.loop_header372

polly.loop_exit374:                               ; preds = %polly.loop_header372, %middle.block1324
  %polly.indvar_next370 = add nuw nsw i64 %polly.indvar369, 1
  %exitcond889.not = icmp eq i64 %polly.indvar_next370, 80
  %indvar.next1328 = add i64 %indvar1327, 1
  br i1 %exitcond889.not, label %polly.loop_header382.preheader, label %polly.loop_header366

polly.loop_header382.preheader:                   ; preds = %polly.loop_exit374
  %Packed_MemRef_call1281 = bitcast i8* %malloccall280 to double*
  %Packed_MemRef_call2283 = bitcast i8* %malloccall282 to double*
  br label %polly.loop_header382

polly.loop_header372:                             ; preds = %polly.loop_header372.preheader, %polly.loop_header372
  %polly.indvar375 = phi i64 [ %polly.indvar_next376, %polly.loop_header372 ], [ %polly.indvar375.ph, %polly.loop_header372.preheader ]
  %128 = shl nuw nsw i64 %polly.indvar375, 3
  %scevgep379 = getelementptr i8, i8* %scevgep378, i64 %128
  %scevgep379380 = bitcast i8* %scevgep379 to double*
  %_p_scalar_381 = load double, double* %scevgep379380, align 8, !alias.scope !85, !noalias !87
  %p_mul.i57 = fmul fast double %_p_scalar_381, 1.200000e+00
  store double %p_mul.i57, double* %scevgep379380, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next376 = add nuw nsw i64 %polly.indvar375, 1
  %exitcond888.not = icmp eq i64 %polly.indvar_next376, %polly.indvar369
  br i1 %exitcond888.not, label %polly.loop_exit374, label %polly.loop_header372, !llvm.loop !93

polly.loop_header382:                             ; preds = %polly.loop_header382.preheader, %polly.loop_exit422
  %indvars.iv875 = phi i64 [ 80, %polly.loop_header382.preheader ], [ %indvars.iv.next876, %polly.loop_exit422 ]
  %polly.indvar385 = phi i64 [ 0, %polly.loop_header382.preheader ], [ %polly.indvar_next386, %polly.loop_exit422 ]
  %129 = mul nsw i64 %polly.indvar385, -4
  %130 = shl nsw i64 %polly.indvar385, 2
  br label %polly.loop_header388

polly.loop_exit422:                               ; preds = %polly.loop_exit428
  %polly.indvar_next386 = add nuw nsw i64 %polly.indvar385, 1
  %indvars.iv.next876 = add nsw i64 %indvars.iv875, -4
  %exitcond887.not = icmp eq i64 %polly.indvar_next386, 20
  br i1 %exitcond887.not, label %polly.exiting279, label %polly.loop_header382

polly.loop_header388:                             ; preds = %polly.loop_exit396, %polly.loop_header382
  %polly.indvar391 = phi i64 [ 0, %polly.loop_header382 ], [ %polly.indvar_next392, %polly.loop_exit396 ]
  %polly.access.mul.Packed_MemRef_call2283 = mul nuw nsw i64 %polly.indvar391, 80
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_header394
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond878.not = icmp eq i64 %polly.indvar_next392, 60
  br i1 %exitcond878.not, label %polly.loop_header404, label %polly.loop_header388

polly.loop_header394:                             ; preds = %polly.loop_header394, %polly.loop_header388
  %polly.indvar397 = phi i64 [ 0, %polly.loop_header388 ], [ %polly.indvar_next398, %polly.loop_header394 ]
  %131 = add nuw nsw i64 %polly.indvar397, %130
  %polly.access.mul.call2401 = mul nuw nsw i64 %131, 60
  %polly.access.add.call2402 = add nuw nsw i64 %polly.access.mul.call2401, %polly.indvar391
  %polly.access.call2403 = getelementptr double, double* %polly.access.cast.call2654, i64 %polly.access.add.call2402
  %polly.access.call2403.load = load double, double* %polly.access.call2403, align 8, !alias.scope !89, !noalias !94
  %polly.access.add.Packed_MemRef_call2283 = add nuw nsw i64 %polly.indvar397, %polly.access.mul.Packed_MemRef_call2283
  %polly.access.Packed_MemRef_call2283 = getelementptr double, double* %Packed_MemRef_call2283, i64 %polly.access.add.Packed_MemRef_call2283
  store double %polly.access.call2403.load, double* %polly.access.Packed_MemRef_call2283, align 8
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond877.not = icmp eq i64 %polly.indvar_next398, %indvars.iv875
  br i1 %exitcond877.not, label %polly.loop_exit396, label %polly.loop_header394

polly.loop_header404:                             ; preds = %polly.loop_exit396, %polly.loop_exit412
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_exit412 ], [ 0, %polly.loop_exit396 ]
  %polly.access.mul.Packed_MemRef_call1281 = mul nuw nsw i64 %polly.indvar407, 80
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_header410
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond880.not = icmp eq i64 %polly.indvar_next408, 60
  br i1 %exitcond880.not, label %polly.loop_header420, label %polly.loop_header404

polly.loop_header410:                             ; preds = %polly.loop_header410, %polly.loop_header404
  %polly.indvar413 = phi i64 [ 0, %polly.loop_header404 ], [ %polly.indvar_next414, %polly.loop_header410 ]
  %132 = add nuw nsw i64 %polly.indvar413, %130
  %polly.access.mul.call1417 = mul nuw nsw i64 %132, 60
  %polly.access.add.call1418 = add nuw nsw i64 %polly.access.mul.call1417, %polly.indvar407
  %polly.access.call1419 = getelementptr double, double* %polly.access.cast.call1644, i64 %polly.access.add.call1418
  %polly.access.call1419.load = load double, double* %polly.access.call1419, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1281 = add nuw nsw i64 %polly.indvar413, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call1281 = getelementptr double, double* %Packed_MemRef_call1281, i64 %polly.access.add.Packed_MemRef_call1281
  store double %polly.access.call1419.load, double* %polly.access.Packed_MemRef_call1281, align 8
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond879.not = icmp eq i64 %polly.indvar_next414, %indvars.iv875
  br i1 %exitcond879.not, label %polly.loop_exit412, label %polly.loop_header410

polly.loop_header420:                             ; preds = %polly.loop_exit412, %polly.loop_exit428
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_exit428 ], [ 0, %polly.loop_exit412 ]
  %polly.access.mul.Packed_MemRef_call1281438 = mul nuw nsw i64 %polly.indvar423, 80
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_exit434
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %exitcond886.not = icmp eq i64 %polly.indvar_next424, 60
  br i1 %exitcond886.not, label %polly.loop_exit422, label %polly.loop_header420

polly.loop_header426:                             ; preds = %polly.loop_exit434, %polly.loop_header420
  %indvars.iv881 = phi i64 [ %indvars.iv.next882, %polly.loop_exit434 ], [ 0, %polly.loop_header420 ]
  %polly.indvar429 = phi i64 [ %polly.indvar_next430, %polly.loop_exit434 ], [ %130, %polly.loop_header420 ]
  %133 = add nsw i64 %polly.indvar429, %129
  %134 = mul nuw nsw i64 %polly.indvar429, 640
  %scevgep454 = getelementptr i8, i8* %call, i64 %134
  %polly.access.add.Packed_MemRef_call2283443 = add nuw nsw i64 %133, %polly.access.mul.Packed_MemRef_call1281438
  %smin1341 = call i64 @llvm.smin.i64(i64 %indvars.iv881, i64 3)
  %polly.access.Packed_MemRef_call1281452 = getelementptr double, double* %Packed_MemRef_call1281, i64 %polly.access.add.Packed_MemRef_call2283443
  %_p_scalar_453 = load double, double* %polly.access.Packed_MemRef_call1281452, align 8
  %polly.access.Packed_MemRef_call2283444 = getelementptr double, double* %Packed_MemRef_call2283, i64 %polly.access.add.Packed_MemRef_call2283443
  %_p_scalar_445 = load double, double* %polly.access.Packed_MemRef_call2283444, align 8
  %broadcast.splatinsert1350 = insertelement <4 x i64> poison, i64 %smin1341, i32 0
  %broadcast.splat1351 = shufflevector <4 x i64> %broadcast.splatinsert1350, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1356 = insertelement <4 x double> poison, double %_p_scalar_445, i32 0
  %broadcast.splat1357 = shufflevector <4 x double> %broadcast.splatinsert1356, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1359 = insertelement <4 x double> poison, double %_p_scalar_453, i32 0
  %broadcast.splat1360 = shufflevector <4 x double> %broadcast.splatinsert1359, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1340

vector.body1340:                                  ; preds = %vector.body1340, %polly.loop_header426
  %index1346 = phi i64 [ 0, %polly.loop_header426 ], [ %index.next1347, %vector.body1340 ]
  %broadcast.splatinsert1352 = insertelement <4 x i64> poison, i64 %index1346, i32 0
  %broadcast.splat1353 = shufflevector <4 x i64> %broadcast.splatinsert1352, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1354 = or <4 x i64> %broadcast.splat1353, <i64 0, i64 1, i64 2, i64 3>
  %135 = icmp ule <4 x i64> %induction1354, %broadcast.splat1351
  %136 = add nuw nsw i64 %index1346, %130
  %137 = add nuw nsw i64 %index1346, %polly.access.mul.Packed_MemRef_call1281438
  %138 = getelementptr double, double* %Packed_MemRef_call1281, i64 %137
  %139 = bitcast double* %138 to <4 x double>*
  %wide.masked.load1355 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %139, i32 8, <4 x i1> %135, <4 x double> poison)
  %140 = fmul fast <4 x double> %broadcast.splat1357, %wide.masked.load1355
  %141 = getelementptr double, double* %Packed_MemRef_call2283, i64 %137
  %142 = bitcast double* %141 to <4 x double>*
  %wide.masked.load1358 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %142, i32 8, <4 x i1> %135, <4 x double> poison)
  %143 = fmul fast <4 x double> %broadcast.splat1360, %wide.masked.load1358
  %144 = shl i64 %136, 3
  %145 = getelementptr i8, i8* %scevgep454, i64 %144
  %146 = bitcast i8* %145 to <4 x double>*
  %wide.masked.load1361 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %146, i32 8, <4 x i1> %135, <4 x double> poison), !alias.scope !85, !noalias !87
  %147 = fadd fast <4 x double> %143, %140
  %148 = fmul fast <4 x double> %147, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %149 = fadd fast <4 x double> %148, %wide.masked.load1361
  %150 = bitcast i8* %145 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %149, <4 x double>* %150, i32 8, <4 x i1> %135), !alias.scope !85, !noalias !87
  %index.next1347 = add i64 %index1346, 4
  %151 = icmp eq i64 %index1346, 0
  br i1 %151, label %polly.loop_exit434, label %vector.body1340, !llvm.loop !96

polly.loop_exit434:                               ; preds = %vector.body1340
  %polly.indvar_next430 = add nuw nsw i64 %polly.indvar429, 1
  %indvars.iv.next882 = add nuw nsw i64 %indvars.iv881, 1
  %exitcond885.not = icmp eq i64 %indvars.iv.next882, %indvars.iv875
  br i1 %exitcond885.not, label %polly.loop_exit428, label %polly.loop_header426

polly.start460:                                   ; preds = %init_array.exit
  %malloccall462 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #8
  %malloccall464 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #8
  br label %polly.loop_header548

polly.exiting461:                                 ; preds = %polly.loop_exit604
  tail call void @free(i8* nonnull %malloccall462)
  tail call void @free(i8* nonnull %malloccall464)
  br label %kernel_syr2k.exit

polly.loop_header548:                             ; preds = %polly.loop_exit556, %polly.start460
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit556 ], [ 0, %polly.start460 ]
  %polly.indvar551 = phi i64 [ %polly.indvar_next552, %polly.loop_exit556 ], [ 1, %polly.start460 ]
  %152 = add i64 %indvar, 1
  %153 = mul nuw nsw i64 %polly.indvar551, 640
  %scevgep560 = getelementptr i8, i8* %call, i64 %153
  %min.iters.check1283 = icmp ult i64 %152, 4
  br i1 %min.iters.check1283, label %polly.loop_header554.preheader, label %vector.ph1284

vector.ph1284:                                    ; preds = %polly.loop_header548
  %n.vec1286 = and i64 %152, -4
  br label %vector.body1282

vector.body1282:                                  ; preds = %vector.body1282, %vector.ph1284
  %index1287 = phi i64 [ 0, %vector.ph1284 ], [ %index.next1288, %vector.body1282 ]
  %154 = shl nuw nsw i64 %index1287, 3
  %155 = getelementptr i8, i8* %scevgep560, i64 %154
  %156 = bitcast i8* %155 to <4 x double>*
  %wide.load1291 = load <4 x double>, <4 x double>* %156, align 8, !alias.scope !97, !noalias !99
  %157 = fmul fast <4 x double> %wide.load1291, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %158 = bitcast i8* %155 to <4 x double>*
  store <4 x double> %157, <4 x double>* %158, align 8, !alias.scope !97, !noalias !99
  %index.next1288 = add i64 %index1287, 4
  %159 = icmp eq i64 %index.next1288, %n.vec1286
  br i1 %159, label %middle.block1280, label %vector.body1282, !llvm.loop !104

middle.block1280:                                 ; preds = %vector.body1282
  %cmp.n1290 = icmp eq i64 %152, %n.vec1286
  br i1 %cmp.n1290, label %polly.loop_exit556, label %polly.loop_header554.preheader

polly.loop_header554.preheader:                   ; preds = %polly.loop_header548, %middle.block1280
  %polly.indvar557.ph = phi i64 [ 0, %polly.loop_header548 ], [ %n.vec1286, %middle.block1280 ]
  br label %polly.loop_header554

polly.loop_exit556:                               ; preds = %polly.loop_header554, %middle.block1280
  %polly.indvar_next552 = add nuw nsw i64 %polly.indvar551, 1
  %exitcond904.not = icmp eq i64 %polly.indvar_next552, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond904.not, label %polly.loop_header564.preheader, label %polly.loop_header548

polly.loop_header564.preheader:                   ; preds = %polly.loop_exit556
  %Packed_MemRef_call1463 = bitcast i8* %malloccall462 to double*
  %Packed_MemRef_call2465 = bitcast i8* %malloccall464 to double*
  br label %polly.loop_header564

polly.loop_header554:                             ; preds = %polly.loop_header554.preheader, %polly.loop_header554
  %polly.indvar557 = phi i64 [ %polly.indvar_next558, %polly.loop_header554 ], [ %polly.indvar557.ph, %polly.loop_header554.preheader ]
  %160 = shl nuw nsw i64 %polly.indvar557, 3
  %scevgep561 = getelementptr i8, i8* %scevgep560, i64 %160
  %scevgep561562 = bitcast i8* %scevgep561 to double*
  %_p_scalar_563 = load double, double* %scevgep561562, align 8, !alias.scope !97, !noalias !99
  %p_mul.i = fmul fast double %_p_scalar_563, 1.200000e+00
  store double %p_mul.i, double* %scevgep561562, align 8, !alias.scope !97, !noalias !99
  %polly.indvar_next558 = add nuw nsw i64 %polly.indvar557, 1
  %exitcond903.not = icmp eq i64 %polly.indvar_next558, %polly.indvar551
  br i1 %exitcond903.not, label %polly.loop_exit556, label %polly.loop_header554, !llvm.loop !105

polly.loop_header564:                             ; preds = %polly.loop_header564.preheader, %polly.loop_exit604
  %indvars.iv890 = phi i64 [ 80, %polly.loop_header564.preheader ], [ %indvars.iv.next891, %polly.loop_exit604 ]
  %polly.indvar567 = phi i64 [ 0, %polly.loop_header564.preheader ], [ %polly.indvar_next568, %polly.loop_exit604 ]
  %161 = mul nsw i64 %polly.indvar567, -4
  %162 = shl nsw i64 %polly.indvar567, 2
  br label %polly.loop_header570

polly.loop_exit604:                               ; preds = %polly.loop_exit610
  %polly.indvar_next568 = add nuw nsw i64 %polly.indvar567, 1
  %indvars.iv.next891 = add nsw i64 %indvars.iv890, -4
  %exitcond902.not = icmp eq i64 %polly.indvar_next568, 20
  br i1 %exitcond902.not, label %polly.exiting461, label %polly.loop_header564

polly.loop_header570:                             ; preds = %polly.loop_exit578, %polly.loop_header564
  %polly.indvar573 = phi i64 [ 0, %polly.loop_header564 ], [ %polly.indvar_next574, %polly.loop_exit578 ]
  %polly.access.mul.Packed_MemRef_call2465 = mul nuw nsw i64 %polly.indvar573, 80
  br label %polly.loop_header576

polly.loop_exit578:                               ; preds = %polly.loop_header576
  %polly.indvar_next574 = add nuw nsw i64 %polly.indvar573, 1
  %exitcond893.not = icmp eq i64 %polly.indvar_next574, 60
  br i1 %exitcond893.not, label %polly.loop_header586, label %polly.loop_header570

polly.loop_header576:                             ; preds = %polly.loop_header576, %polly.loop_header570
  %polly.indvar579 = phi i64 [ 0, %polly.loop_header570 ], [ %polly.indvar_next580, %polly.loop_header576 ]
  %163 = add nuw nsw i64 %polly.indvar579, %162
  %polly.access.mul.call2583 = mul nuw nsw i64 %163, 60
  %polly.access.add.call2584 = add nuw nsw i64 %polly.access.mul.call2583, %polly.indvar573
  %polly.access.call2585 = getelementptr double, double* %polly.access.cast.call2654, i64 %polly.access.add.call2584
  %polly.access.call2585.load = load double, double* %polly.access.call2585, align 8, !alias.scope !101, !noalias !106
  %polly.access.add.Packed_MemRef_call2465 = add nuw nsw i64 %polly.indvar579, %polly.access.mul.Packed_MemRef_call2465
  %polly.access.Packed_MemRef_call2465 = getelementptr double, double* %Packed_MemRef_call2465, i64 %polly.access.add.Packed_MemRef_call2465
  store double %polly.access.call2585.load, double* %polly.access.Packed_MemRef_call2465, align 8
  %polly.indvar_next580 = add nuw nsw i64 %polly.indvar579, 1
  %exitcond892.not = icmp eq i64 %polly.indvar_next580, %indvars.iv890
  br i1 %exitcond892.not, label %polly.loop_exit578, label %polly.loop_header576

polly.loop_header586:                             ; preds = %polly.loop_exit578, %polly.loop_exit594
  %polly.indvar589 = phi i64 [ %polly.indvar_next590, %polly.loop_exit594 ], [ 0, %polly.loop_exit578 ]
  %polly.access.mul.Packed_MemRef_call1463 = mul nuw nsw i64 %polly.indvar589, 80
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_header592
  %polly.indvar_next590 = add nuw nsw i64 %polly.indvar589, 1
  %exitcond895.not = icmp eq i64 %polly.indvar_next590, 60
  br i1 %exitcond895.not, label %polly.loop_header602, label %polly.loop_header586

polly.loop_header592:                             ; preds = %polly.loop_header592, %polly.loop_header586
  %polly.indvar595 = phi i64 [ 0, %polly.loop_header586 ], [ %polly.indvar_next596, %polly.loop_header592 ]
  %164 = add nuw nsw i64 %polly.indvar595, %162
  %polly.access.mul.call1599 = mul nuw nsw i64 %164, 60
  %polly.access.add.call1600 = add nuw nsw i64 %polly.access.mul.call1599, %polly.indvar589
  %polly.access.call1601 = getelementptr double, double* %polly.access.cast.call1644, i64 %polly.access.add.call1600
  %polly.access.call1601.load = load double, double* %polly.access.call1601, align 8, !alias.scope !100, !noalias !107
  %polly.access.add.Packed_MemRef_call1463 = add nuw nsw i64 %polly.indvar595, %polly.access.mul.Packed_MemRef_call1463
  %polly.access.Packed_MemRef_call1463 = getelementptr double, double* %Packed_MemRef_call1463, i64 %polly.access.add.Packed_MemRef_call1463
  store double %polly.access.call1601.load, double* %polly.access.Packed_MemRef_call1463, align 8
  %polly.indvar_next596 = add nuw nsw i64 %polly.indvar595, 1
  %exitcond894.not = icmp eq i64 %polly.indvar_next596, %indvars.iv890
  br i1 %exitcond894.not, label %polly.loop_exit594, label %polly.loop_header592

polly.loop_header602:                             ; preds = %polly.loop_exit594, %polly.loop_exit610
  %polly.indvar605 = phi i64 [ %polly.indvar_next606, %polly.loop_exit610 ], [ 0, %polly.loop_exit594 ]
  %polly.access.mul.Packed_MemRef_call1463620 = mul nuw nsw i64 %polly.indvar605, 80
  br label %polly.loop_header608

polly.loop_exit610:                               ; preds = %polly.loop_exit616
  %polly.indvar_next606 = add nuw nsw i64 %polly.indvar605, 1
  %exitcond901.not = icmp eq i64 %polly.indvar_next606, 60
  br i1 %exitcond901.not, label %polly.loop_exit604, label %polly.loop_header602

polly.loop_header608:                             ; preds = %polly.loop_exit616, %polly.loop_header602
  %indvars.iv896 = phi i64 [ %indvars.iv.next897, %polly.loop_exit616 ], [ 0, %polly.loop_header602 ]
  %polly.indvar611 = phi i64 [ %polly.indvar_next612, %polly.loop_exit616 ], [ %162, %polly.loop_header602 ]
  %165 = add nsw i64 %polly.indvar611, %161
  %166 = mul nuw nsw i64 %polly.indvar611, 640
  %scevgep636 = getelementptr i8, i8* %call, i64 %166
  %polly.access.add.Packed_MemRef_call2465625 = add nuw nsw i64 %165, %polly.access.mul.Packed_MemRef_call1463620
  %smin1295 = call i64 @llvm.smin.i64(i64 %indvars.iv896, i64 3)
  %polly.access.Packed_MemRef_call1463634 = getelementptr double, double* %Packed_MemRef_call1463, i64 %polly.access.add.Packed_MemRef_call2465625
  %_p_scalar_635 = load double, double* %polly.access.Packed_MemRef_call1463634, align 8
  %polly.access.Packed_MemRef_call2465626 = getelementptr double, double* %Packed_MemRef_call2465, i64 %polly.access.add.Packed_MemRef_call2465625
  %_p_scalar_627 = load double, double* %polly.access.Packed_MemRef_call2465626, align 8
  %broadcast.splatinsert1302 = insertelement <4 x i64> poison, i64 %smin1295, i32 0
  %broadcast.splat1303 = shufflevector <4 x i64> %broadcast.splatinsert1302, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1306 = insertelement <4 x double> poison, double %_p_scalar_627, i32 0
  %broadcast.splat1307 = shufflevector <4 x double> %broadcast.splatinsert1306, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1309 = insertelement <4 x double> poison, double %_p_scalar_635, i32 0
  %broadcast.splat1310 = shufflevector <4 x double> %broadcast.splatinsert1309, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1294

vector.body1294:                                  ; preds = %vector.body1294, %polly.loop_header608
  %index1299 = phi i64 [ 0, %polly.loop_header608 ], [ %index.next1300, %vector.body1294 ]
  %broadcast.splatinsert1304 = insertelement <4 x i64> poison, i64 %index1299, i32 0
  %broadcast.splat1305 = shufflevector <4 x i64> %broadcast.splatinsert1304, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or <4 x i64> %broadcast.splat1305, <i64 0, i64 1, i64 2, i64 3>
  %167 = icmp ule <4 x i64> %induction, %broadcast.splat1303
  %168 = add nuw nsw i64 %index1299, %162
  %169 = add nuw nsw i64 %index1299, %polly.access.mul.Packed_MemRef_call1463620
  %170 = getelementptr double, double* %Packed_MemRef_call1463, i64 %169
  %171 = bitcast double* %170 to <4 x double>*
  %wide.masked.load = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %171, i32 8, <4 x i1> %167, <4 x double> poison)
  %172 = fmul fast <4 x double> %broadcast.splat1307, %wide.masked.load
  %173 = getelementptr double, double* %Packed_MemRef_call2465, i64 %169
  %174 = bitcast double* %173 to <4 x double>*
  %wide.masked.load1308 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %174, i32 8, <4 x i1> %167, <4 x double> poison)
  %175 = fmul fast <4 x double> %broadcast.splat1310, %wide.masked.load1308
  %176 = shl i64 %168, 3
  %177 = getelementptr i8, i8* %scevgep636, i64 %176
  %178 = bitcast i8* %177 to <4 x double>*
  %wide.masked.load1311 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %178, i32 8, <4 x i1> %167, <4 x double> poison), !alias.scope !97, !noalias !99
  %179 = fadd fast <4 x double> %175, %172
  %180 = fmul fast <4 x double> %179, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %181 = fadd fast <4 x double> %180, %wide.masked.load1311
  %182 = bitcast i8* %177 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %181, <4 x double>* %182, i32 8, <4 x i1> %167), !alias.scope !97, !noalias !99
  %index.next1300 = add i64 %index1299, 4
  %183 = icmp eq i64 %index1299, 0
  br i1 %183, label %polly.loop_exit616, label %vector.body1294, !llvm.loop !108

polly.loop_exit616:                               ; preds = %vector.body1294
  %polly.indvar_next612 = add nuw nsw i64 %polly.indvar611, 1
  %indvars.iv.next897 = add nuw nsw i64 %indvars.iv896, 1
  %exitcond900.not = icmp eq i64 %indvars.iv.next897, %indvars.iv890
  br i1 %exitcond900.not, label %polly.loop_exit610, label %polly.loop_header608

polly.loop_header778:                             ; preds = %entry, %polly.loop_exit786
  %polly.indvar781 = phi i64 [ %polly.indvar_next782, %polly.loop_exit786 ], [ 0, %entry ]
  %184 = mul nuw nsw i64 %polly.indvar781, 640
  %185 = trunc i64 %polly.indvar781 to i32
  %broadcast.splatinsert1014 = insertelement <4 x i32> poison, i32 %185, i32 0
  %broadcast.splat1015 = shufflevector <4 x i32> %broadcast.splatinsert1014, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1004

vector.body1004:                                  ; preds = %vector.body1004, %polly.loop_header778
  %index1006 = phi i64 [ 0, %polly.loop_header778 ], [ %index.next1007, %vector.body1004 ]
  %vec.ind1012 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header778 ], [ %vec.ind.next1013, %vector.body1004 ]
  %186 = mul <4 x i32> %vec.ind1012, %broadcast.splat1015
  %187 = add <4 x i32> %186, <i32 3, i32 3, i32 3, i32 3>
  %188 = urem <4 x i32> %187, <i32 80, i32 80, i32 80, i32 80>
  %189 = sitofp <4 x i32> %188 to <4 x double>
  %190 = fmul fast <4 x double> %189, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %191 = shl i64 %index1006, 3
  %192 = add nuw nsw i64 %191, %184
  %193 = getelementptr i8, i8* %call, i64 %192
  %194 = bitcast i8* %193 to <4 x double>*
  store <4 x double> %190, <4 x double>* %194, align 8, !alias.scope !109, !noalias !111
  %index.next1007 = add i64 %index1006, 4
  %vec.ind.next1013 = add <4 x i32> %vec.ind1012, <i32 4, i32 4, i32 4, i32 4>
  %195 = icmp eq i64 %index.next1007, 32
  br i1 %195, label %polly.loop_exit786, label %vector.body1004, !llvm.loop !114

polly.loop_exit786:                               ; preds = %vector.body1004
  %polly.indvar_next782 = add nuw nsw i64 %polly.indvar781, 1
  %exitcond924.not = icmp eq i64 %polly.indvar_next782, 32
  br i1 %exitcond924.not, label %polly.loop_header778.1, label %polly.loop_header778

polly.loop_header805:                             ; preds = %polly.loop_exit786.2.2, %polly.loop_exit813
  %polly.indvar808 = phi i64 [ %polly.indvar_next809, %polly.loop_exit813 ], [ 0, %polly.loop_exit786.2.2 ]
  %196 = mul nuw nsw i64 %polly.indvar808, 480
  %197 = trunc i64 %polly.indvar808 to i32
  %broadcast.splatinsert1128 = insertelement <4 x i32> poison, i32 %197, i32 0
  %broadcast.splat1129 = shufflevector <4 x i32> %broadcast.splatinsert1128, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1118

vector.body1118:                                  ; preds = %vector.body1118, %polly.loop_header805
  %index1120 = phi i64 [ 0, %polly.loop_header805 ], [ %index.next1121, %vector.body1118 ]
  %vec.ind1126 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header805 ], [ %vec.ind.next1127, %vector.body1118 ]
  %198 = mul <4 x i32> %vec.ind1126, %broadcast.splat1129
  %199 = add <4 x i32> %198, <i32 2, i32 2, i32 2, i32 2>
  %200 = urem <4 x i32> %199, <i32 60, i32 60, i32 60, i32 60>
  %201 = sitofp <4 x i32> %200 to <4 x double>
  %202 = fmul fast <4 x double> %201, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %203 = shl i64 %index1120, 3
  %204 = add i64 %203, %196
  %205 = getelementptr i8, i8* %call2, i64 %204
  %206 = bitcast i8* %205 to <4 x double>*
  store <4 x double> %202, <4 x double>* %206, align 8, !alias.scope !113, !noalias !115
  %index.next1121 = add i64 %index1120, 4
  %vec.ind.next1127 = add <4 x i32> %vec.ind1126, <i32 4, i32 4, i32 4, i32 4>
  %207 = icmp eq i64 %index.next1121, 32
  br i1 %207, label %polly.loop_exit813, label %vector.body1118, !llvm.loop !116

polly.loop_exit813:                               ; preds = %vector.body1118
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond915.not = icmp eq i64 %polly.indvar_next809, 32
  br i1 %exitcond915.not, label %polly.loop_header805.1, label %polly.loop_header805

polly.loop_header831:                             ; preds = %polly.loop_exit813.1.2, %polly.loop_exit839
  %polly.indvar834 = phi i64 [ %polly.indvar_next835, %polly.loop_exit839 ], [ 0, %polly.loop_exit813.1.2 ]
  %208 = mul nuw nsw i64 %polly.indvar834, 480
  %209 = trunc i64 %polly.indvar834 to i32
  %broadcast.splatinsert1206 = insertelement <4 x i32> poison, i32 %209, i32 0
  %broadcast.splat1207 = shufflevector <4 x i32> %broadcast.splatinsert1206, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1196

vector.body1196:                                  ; preds = %vector.body1196, %polly.loop_header831
  %index1198 = phi i64 [ 0, %polly.loop_header831 ], [ %index.next1199, %vector.body1196 ]
  %vec.ind1204 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header831 ], [ %vec.ind.next1205, %vector.body1196 ]
  %210 = mul <4 x i32> %vec.ind1204, %broadcast.splat1207
  %211 = add <4 x i32> %210, <i32 1, i32 1, i32 1, i32 1>
  %212 = urem <4 x i32> %211, <i32 80, i32 80, i32 80, i32 80>
  %213 = sitofp <4 x i32> %212 to <4 x double>
  %214 = fmul fast <4 x double> %213, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %215 = shl i64 %index1198, 3
  %216 = add i64 %215, %208
  %217 = getelementptr i8, i8* %call1, i64 %216
  %218 = bitcast i8* %217 to <4 x double>*
  store <4 x double> %214, <4 x double>* %218, align 8, !alias.scope !112, !noalias !117
  %index.next1199 = add i64 %index1198, 4
  %vec.ind.next1205 = add <4 x i32> %vec.ind1204, <i32 4, i32 4, i32 4, i32 4>
  %219 = icmp eq i64 %index.next1199, 32
  br i1 %219, label %polly.loop_exit839, label %vector.body1196, !llvm.loop !118

polly.loop_exit839:                               ; preds = %vector.body1196
  %polly.indvar_next835 = add nuw nsw i64 %polly.indvar834, 1
  %exitcond909.not = icmp eq i64 %polly.indvar_next835, 32
  br i1 %exitcond909.not, label %polly.loop_header831.1, label %polly.loop_header831

polly.loop_header831.1:                           ; preds = %polly.loop_exit839, %polly.loop_exit839.1
  %polly.indvar834.1 = phi i64 [ %polly.indvar_next835.1, %polly.loop_exit839.1 ], [ 0, %polly.loop_exit839 ]
  %220 = mul nuw nsw i64 %polly.indvar834.1, 480
  %221 = trunc i64 %polly.indvar834.1 to i32
  %broadcast.splatinsert1218 = insertelement <4 x i32> poison, i32 %221, i32 0
  %broadcast.splat1219 = shufflevector <4 x i32> %broadcast.splatinsert1218, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1210

vector.body1210:                                  ; preds = %vector.body1210, %polly.loop_header831.1
  %index1212 = phi i64 [ 0, %polly.loop_header831.1 ], [ %index.next1213, %vector.body1210 ]
  %vec.ind1216 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header831.1 ], [ %vec.ind.next1217, %vector.body1210 ]
  %222 = add nuw nsw <4 x i64> %vec.ind1216, <i64 32, i64 32, i64 32, i64 32>
  %223 = trunc <4 x i64> %222 to <4 x i32>
  %224 = mul <4 x i32> %broadcast.splat1219, %223
  %225 = add <4 x i32> %224, <i32 1, i32 1, i32 1, i32 1>
  %226 = urem <4 x i32> %225, <i32 80, i32 80, i32 80, i32 80>
  %227 = sitofp <4 x i32> %226 to <4 x double>
  %228 = fmul fast <4 x double> %227, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %229 = extractelement <4 x i64> %222, i32 0
  %230 = shl i64 %229, 3
  %231 = add i64 %230, %220
  %232 = getelementptr i8, i8* %call1, i64 %231
  %233 = bitcast i8* %232 to <4 x double>*
  store <4 x double> %228, <4 x double>* %233, align 8, !alias.scope !112, !noalias !117
  %index.next1213 = add i64 %index1212, 4
  %vec.ind.next1217 = add <4 x i64> %vec.ind1216, <i64 4, i64 4, i64 4, i64 4>
  %234 = icmp eq i64 %index.next1213, 28
  br i1 %234, label %polly.loop_exit839.1, label %vector.body1210, !llvm.loop !119

polly.loop_exit839.1:                             ; preds = %vector.body1210
  %polly.indvar_next835.1 = add nuw nsw i64 %polly.indvar834.1, 1
  %exitcond909.1.not = icmp eq i64 %polly.indvar_next835.1, 32
  br i1 %exitcond909.1.not, label %polly.loop_header831.1929, label %polly.loop_header831.1

polly.loop_header831.1929:                        ; preds = %polly.loop_exit839.1, %polly.loop_exit839.1940
  %polly.indvar834.1928 = phi i64 [ %polly.indvar_next835.1938, %polly.loop_exit839.1940 ], [ 0, %polly.loop_exit839.1 ]
  %235 = add nuw nsw i64 %polly.indvar834.1928, 32
  %236 = mul nuw nsw i64 %235, 480
  %237 = trunc i64 %235 to i32
  %broadcast.splatinsert1232 = insertelement <4 x i32> poison, i32 %237, i32 0
  %broadcast.splat1233 = shufflevector <4 x i32> %broadcast.splatinsert1232, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1222

vector.body1222:                                  ; preds = %vector.body1222, %polly.loop_header831.1929
  %index1224 = phi i64 [ 0, %polly.loop_header831.1929 ], [ %index.next1225, %vector.body1222 ]
  %vec.ind1230 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header831.1929 ], [ %vec.ind.next1231, %vector.body1222 ]
  %238 = mul <4 x i32> %vec.ind1230, %broadcast.splat1233
  %239 = add <4 x i32> %238, <i32 1, i32 1, i32 1, i32 1>
  %240 = urem <4 x i32> %239, <i32 80, i32 80, i32 80, i32 80>
  %241 = sitofp <4 x i32> %240 to <4 x double>
  %242 = fmul fast <4 x double> %241, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %243 = shl i64 %index1224, 3
  %244 = add i64 %243, %236
  %245 = getelementptr i8, i8* %call1, i64 %244
  %246 = bitcast i8* %245 to <4 x double>*
  store <4 x double> %242, <4 x double>* %246, align 8, !alias.scope !112, !noalias !117
  %index.next1225 = add i64 %index1224, 4
  %vec.ind.next1231 = add <4 x i32> %vec.ind1230, <i32 4, i32 4, i32 4, i32 4>
  %247 = icmp eq i64 %index.next1225, 32
  br i1 %247, label %polly.loop_exit839.1940, label %vector.body1222, !llvm.loop !120

polly.loop_exit839.1940:                          ; preds = %vector.body1222
  %polly.indvar_next835.1938 = add nuw nsw i64 %polly.indvar834.1928, 1
  %exitcond909.1939.not = icmp eq i64 %polly.indvar_next835.1938, 32
  br i1 %exitcond909.1939.not, label %polly.loop_header831.1.1, label %polly.loop_header831.1929

polly.loop_header831.1.1:                         ; preds = %polly.loop_exit839.1940, %polly.loop_exit839.1.1
  %polly.indvar834.1.1 = phi i64 [ %polly.indvar_next835.1.1, %polly.loop_exit839.1.1 ], [ 0, %polly.loop_exit839.1940 ]
  %248 = add nuw nsw i64 %polly.indvar834.1.1, 32
  %249 = mul nuw nsw i64 %248, 480
  %250 = trunc i64 %248 to i32
  %broadcast.splatinsert1244 = insertelement <4 x i32> poison, i32 %250, i32 0
  %broadcast.splat1245 = shufflevector <4 x i32> %broadcast.splatinsert1244, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1236

vector.body1236:                                  ; preds = %vector.body1236, %polly.loop_header831.1.1
  %index1238 = phi i64 [ 0, %polly.loop_header831.1.1 ], [ %index.next1239, %vector.body1236 ]
  %vec.ind1242 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header831.1.1 ], [ %vec.ind.next1243, %vector.body1236 ]
  %251 = add nuw nsw <4 x i64> %vec.ind1242, <i64 32, i64 32, i64 32, i64 32>
  %252 = trunc <4 x i64> %251 to <4 x i32>
  %253 = mul <4 x i32> %broadcast.splat1245, %252
  %254 = add <4 x i32> %253, <i32 1, i32 1, i32 1, i32 1>
  %255 = urem <4 x i32> %254, <i32 80, i32 80, i32 80, i32 80>
  %256 = sitofp <4 x i32> %255 to <4 x double>
  %257 = fmul fast <4 x double> %256, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %258 = extractelement <4 x i64> %251, i32 0
  %259 = shl i64 %258, 3
  %260 = add i64 %259, %249
  %261 = getelementptr i8, i8* %call1, i64 %260
  %262 = bitcast i8* %261 to <4 x double>*
  store <4 x double> %257, <4 x double>* %262, align 8, !alias.scope !112, !noalias !117
  %index.next1239 = add i64 %index1238, 4
  %vec.ind.next1243 = add <4 x i64> %vec.ind1242, <i64 4, i64 4, i64 4, i64 4>
  %263 = icmp eq i64 %index.next1239, 28
  br i1 %263, label %polly.loop_exit839.1.1, label %vector.body1236, !llvm.loop !121

polly.loop_exit839.1.1:                           ; preds = %vector.body1236
  %polly.indvar_next835.1.1 = add nuw nsw i64 %polly.indvar834.1.1, 1
  %exitcond909.1.1.not = icmp eq i64 %polly.indvar_next835.1.1, 32
  br i1 %exitcond909.1.1.not, label %polly.loop_header831.2, label %polly.loop_header831.1.1

polly.loop_header831.2:                           ; preds = %polly.loop_exit839.1.1, %polly.loop_exit839.2
  %polly.indvar834.2 = phi i64 [ %polly.indvar_next835.2, %polly.loop_exit839.2 ], [ 0, %polly.loop_exit839.1.1 ]
  %264 = add nuw nsw i64 %polly.indvar834.2, 64
  %265 = mul nuw nsw i64 %264, 480
  %266 = trunc i64 %264 to i32
  %broadcast.splatinsert1258 = insertelement <4 x i32> poison, i32 %266, i32 0
  %broadcast.splat1259 = shufflevector <4 x i32> %broadcast.splatinsert1258, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1248

vector.body1248:                                  ; preds = %vector.body1248, %polly.loop_header831.2
  %index1250 = phi i64 [ 0, %polly.loop_header831.2 ], [ %index.next1251, %vector.body1248 ]
  %vec.ind1256 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header831.2 ], [ %vec.ind.next1257, %vector.body1248 ]
  %267 = mul <4 x i32> %vec.ind1256, %broadcast.splat1259
  %268 = add <4 x i32> %267, <i32 1, i32 1, i32 1, i32 1>
  %269 = urem <4 x i32> %268, <i32 80, i32 80, i32 80, i32 80>
  %270 = sitofp <4 x i32> %269 to <4 x double>
  %271 = fmul fast <4 x double> %270, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %272 = shl i64 %index1250, 3
  %273 = add i64 %272, %265
  %274 = getelementptr i8, i8* %call1, i64 %273
  %275 = bitcast i8* %274 to <4 x double>*
  store <4 x double> %271, <4 x double>* %275, align 8, !alias.scope !112, !noalias !117
  %index.next1251 = add i64 %index1250, 4
  %vec.ind.next1257 = add <4 x i32> %vec.ind1256, <i32 4, i32 4, i32 4, i32 4>
  %276 = icmp eq i64 %index.next1251, 32
  br i1 %276, label %polly.loop_exit839.2, label %vector.body1248, !llvm.loop !122

polly.loop_exit839.2:                             ; preds = %vector.body1248
  %polly.indvar_next835.2 = add nuw nsw i64 %polly.indvar834.2, 1
  %exitcond909.2.not = icmp eq i64 %polly.indvar_next835.2, 16
  br i1 %exitcond909.2.not, label %polly.loop_header831.1.2, label %polly.loop_header831.2

polly.loop_header831.1.2:                         ; preds = %polly.loop_exit839.2, %polly.loop_exit839.1.2
  %polly.indvar834.1.2 = phi i64 [ %polly.indvar_next835.1.2, %polly.loop_exit839.1.2 ], [ 0, %polly.loop_exit839.2 ]
  %277 = add nuw nsw i64 %polly.indvar834.1.2, 64
  %278 = mul nuw nsw i64 %277, 480
  %279 = trunc i64 %277 to i32
  %broadcast.splatinsert1270 = insertelement <4 x i32> poison, i32 %279, i32 0
  %broadcast.splat1271 = shufflevector <4 x i32> %broadcast.splatinsert1270, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1262

vector.body1262:                                  ; preds = %vector.body1262, %polly.loop_header831.1.2
  %index1264 = phi i64 [ 0, %polly.loop_header831.1.2 ], [ %index.next1265, %vector.body1262 ]
  %vec.ind1268 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header831.1.2 ], [ %vec.ind.next1269, %vector.body1262 ]
  %280 = add nuw nsw <4 x i64> %vec.ind1268, <i64 32, i64 32, i64 32, i64 32>
  %281 = trunc <4 x i64> %280 to <4 x i32>
  %282 = mul <4 x i32> %broadcast.splat1271, %281
  %283 = add <4 x i32> %282, <i32 1, i32 1, i32 1, i32 1>
  %284 = urem <4 x i32> %283, <i32 80, i32 80, i32 80, i32 80>
  %285 = sitofp <4 x i32> %284 to <4 x double>
  %286 = fmul fast <4 x double> %285, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %287 = extractelement <4 x i64> %280, i32 0
  %288 = shl i64 %287, 3
  %289 = add i64 %288, %278
  %290 = getelementptr i8, i8* %call1, i64 %289
  %291 = bitcast i8* %290 to <4 x double>*
  store <4 x double> %286, <4 x double>* %291, align 8, !alias.scope !112, !noalias !117
  %index.next1265 = add i64 %index1264, 4
  %vec.ind.next1269 = add <4 x i64> %vec.ind1268, <i64 4, i64 4, i64 4, i64 4>
  %292 = icmp eq i64 %index.next1265, 28
  br i1 %292, label %polly.loop_exit839.1.2, label %vector.body1262, !llvm.loop !123

polly.loop_exit839.1.2:                           ; preds = %vector.body1262
  %polly.indvar_next835.1.2 = add nuw nsw i64 %polly.indvar834.1.2, 1
  %exitcond909.1.2.not = icmp eq i64 %polly.indvar_next835.1.2, 16
  br i1 %exitcond909.1.2.not, label %init_array.exit, label %polly.loop_header831.1.2

polly.loop_header805.1:                           ; preds = %polly.loop_exit813, %polly.loop_exit813.1
  %polly.indvar808.1 = phi i64 [ %polly.indvar_next809.1, %polly.loop_exit813.1 ], [ 0, %polly.loop_exit813 ]
  %293 = mul nuw nsw i64 %polly.indvar808.1, 480
  %294 = trunc i64 %polly.indvar808.1 to i32
  %broadcast.splatinsert1140 = insertelement <4 x i32> poison, i32 %294, i32 0
  %broadcast.splat1141 = shufflevector <4 x i32> %broadcast.splatinsert1140, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1132

vector.body1132:                                  ; preds = %vector.body1132, %polly.loop_header805.1
  %index1134 = phi i64 [ 0, %polly.loop_header805.1 ], [ %index.next1135, %vector.body1132 ]
  %vec.ind1138 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header805.1 ], [ %vec.ind.next1139, %vector.body1132 ]
  %295 = add nuw nsw <4 x i64> %vec.ind1138, <i64 32, i64 32, i64 32, i64 32>
  %296 = trunc <4 x i64> %295 to <4 x i32>
  %297 = mul <4 x i32> %broadcast.splat1141, %296
  %298 = add <4 x i32> %297, <i32 2, i32 2, i32 2, i32 2>
  %299 = urem <4 x i32> %298, <i32 60, i32 60, i32 60, i32 60>
  %300 = sitofp <4 x i32> %299 to <4 x double>
  %301 = fmul fast <4 x double> %300, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %302 = extractelement <4 x i64> %295, i32 0
  %303 = shl i64 %302, 3
  %304 = add i64 %303, %293
  %305 = getelementptr i8, i8* %call2, i64 %304
  %306 = bitcast i8* %305 to <4 x double>*
  store <4 x double> %301, <4 x double>* %306, align 8, !alias.scope !113, !noalias !115
  %index.next1135 = add i64 %index1134, 4
  %vec.ind.next1139 = add <4 x i64> %vec.ind1138, <i64 4, i64 4, i64 4, i64 4>
  %307 = icmp eq i64 %index.next1135, 28
  br i1 %307, label %polly.loop_exit813.1, label %vector.body1132, !llvm.loop !124

polly.loop_exit813.1:                             ; preds = %vector.body1132
  %polly.indvar_next809.1 = add nuw nsw i64 %polly.indvar808.1, 1
  %exitcond915.1.not = icmp eq i64 %polly.indvar_next809.1, 32
  br i1 %exitcond915.1.not, label %polly.loop_header805.1943, label %polly.loop_header805.1

polly.loop_header805.1943:                        ; preds = %polly.loop_exit813.1, %polly.loop_exit813.1954
  %polly.indvar808.1942 = phi i64 [ %polly.indvar_next809.1952, %polly.loop_exit813.1954 ], [ 0, %polly.loop_exit813.1 ]
  %308 = add nuw nsw i64 %polly.indvar808.1942, 32
  %309 = mul nuw nsw i64 %308, 480
  %310 = trunc i64 %308 to i32
  %broadcast.splatinsert1154 = insertelement <4 x i32> poison, i32 %310, i32 0
  %broadcast.splat1155 = shufflevector <4 x i32> %broadcast.splatinsert1154, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1144

vector.body1144:                                  ; preds = %vector.body1144, %polly.loop_header805.1943
  %index1146 = phi i64 [ 0, %polly.loop_header805.1943 ], [ %index.next1147, %vector.body1144 ]
  %vec.ind1152 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header805.1943 ], [ %vec.ind.next1153, %vector.body1144 ]
  %311 = mul <4 x i32> %vec.ind1152, %broadcast.splat1155
  %312 = add <4 x i32> %311, <i32 2, i32 2, i32 2, i32 2>
  %313 = urem <4 x i32> %312, <i32 60, i32 60, i32 60, i32 60>
  %314 = sitofp <4 x i32> %313 to <4 x double>
  %315 = fmul fast <4 x double> %314, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %316 = shl i64 %index1146, 3
  %317 = add i64 %316, %309
  %318 = getelementptr i8, i8* %call2, i64 %317
  %319 = bitcast i8* %318 to <4 x double>*
  store <4 x double> %315, <4 x double>* %319, align 8, !alias.scope !113, !noalias !115
  %index.next1147 = add i64 %index1146, 4
  %vec.ind.next1153 = add <4 x i32> %vec.ind1152, <i32 4, i32 4, i32 4, i32 4>
  %320 = icmp eq i64 %index.next1147, 32
  br i1 %320, label %polly.loop_exit813.1954, label %vector.body1144, !llvm.loop !125

polly.loop_exit813.1954:                          ; preds = %vector.body1144
  %polly.indvar_next809.1952 = add nuw nsw i64 %polly.indvar808.1942, 1
  %exitcond915.1953.not = icmp eq i64 %polly.indvar_next809.1952, 32
  br i1 %exitcond915.1953.not, label %polly.loop_header805.1.1, label %polly.loop_header805.1943

polly.loop_header805.1.1:                         ; preds = %polly.loop_exit813.1954, %polly.loop_exit813.1.1
  %polly.indvar808.1.1 = phi i64 [ %polly.indvar_next809.1.1, %polly.loop_exit813.1.1 ], [ 0, %polly.loop_exit813.1954 ]
  %321 = add nuw nsw i64 %polly.indvar808.1.1, 32
  %322 = mul nuw nsw i64 %321, 480
  %323 = trunc i64 %321 to i32
  %broadcast.splatinsert1166 = insertelement <4 x i32> poison, i32 %323, i32 0
  %broadcast.splat1167 = shufflevector <4 x i32> %broadcast.splatinsert1166, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1158

vector.body1158:                                  ; preds = %vector.body1158, %polly.loop_header805.1.1
  %index1160 = phi i64 [ 0, %polly.loop_header805.1.1 ], [ %index.next1161, %vector.body1158 ]
  %vec.ind1164 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header805.1.1 ], [ %vec.ind.next1165, %vector.body1158 ]
  %324 = add nuw nsw <4 x i64> %vec.ind1164, <i64 32, i64 32, i64 32, i64 32>
  %325 = trunc <4 x i64> %324 to <4 x i32>
  %326 = mul <4 x i32> %broadcast.splat1167, %325
  %327 = add <4 x i32> %326, <i32 2, i32 2, i32 2, i32 2>
  %328 = urem <4 x i32> %327, <i32 60, i32 60, i32 60, i32 60>
  %329 = sitofp <4 x i32> %328 to <4 x double>
  %330 = fmul fast <4 x double> %329, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %331 = extractelement <4 x i64> %324, i32 0
  %332 = shl i64 %331, 3
  %333 = add i64 %332, %322
  %334 = getelementptr i8, i8* %call2, i64 %333
  %335 = bitcast i8* %334 to <4 x double>*
  store <4 x double> %330, <4 x double>* %335, align 8, !alias.scope !113, !noalias !115
  %index.next1161 = add i64 %index1160, 4
  %vec.ind.next1165 = add <4 x i64> %vec.ind1164, <i64 4, i64 4, i64 4, i64 4>
  %336 = icmp eq i64 %index.next1161, 28
  br i1 %336, label %polly.loop_exit813.1.1, label %vector.body1158, !llvm.loop !126

polly.loop_exit813.1.1:                           ; preds = %vector.body1158
  %polly.indvar_next809.1.1 = add nuw nsw i64 %polly.indvar808.1.1, 1
  %exitcond915.1.1.not = icmp eq i64 %polly.indvar_next809.1.1, 32
  br i1 %exitcond915.1.1.not, label %polly.loop_header805.2, label %polly.loop_header805.1.1

polly.loop_header805.2:                           ; preds = %polly.loop_exit813.1.1, %polly.loop_exit813.2
  %polly.indvar808.2 = phi i64 [ %polly.indvar_next809.2, %polly.loop_exit813.2 ], [ 0, %polly.loop_exit813.1.1 ]
  %337 = add nuw nsw i64 %polly.indvar808.2, 64
  %338 = mul nuw nsw i64 %337, 480
  %339 = trunc i64 %337 to i32
  %broadcast.splatinsert1180 = insertelement <4 x i32> poison, i32 %339, i32 0
  %broadcast.splat1181 = shufflevector <4 x i32> %broadcast.splatinsert1180, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1170

vector.body1170:                                  ; preds = %vector.body1170, %polly.loop_header805.2
  %index1172 = phi i64 [ 0, %polly.loop_header805.2 ], [ %index.next1173, %vector.body1170 ]
  %vec.ind1178 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header805.2 ], [ %vec.ind.next1179, %vector.body1170 ]
  %340 = mul <4 x i32> %vec.ind1178, %broadcast.splat1181
  %341 = add <4 x i32> %340, <i32 2, i32 2, i32 2, i32 2>
  %342 = urem <4 x i32> %341, <i32 60, i32 60, i32 60, i32 60>
  %343 = sitofp <4 x i32> %342 to <4 x double>
  %344 = fmul fast <4 x double> %343, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %345 = shl i64 %index1172, 3
  %346 = add i64 %345, %338
  %347 = getelementptr i8, i8* %call2, i64 %346
  %348 = bitcast i8* %347 to <4 x double>*
  store <4 x double> %344, <4 x double>* %348, align 8, !alias.scope !113, !noalias !115
  %index.next1173 = add i64 %index1172, 4
  %vec.ind.next1179 = add <4 x i32> %vec.ind1178, <i32 4, i32 4, i32 4, i32 4>
  %349 = icmp eq i64 %index.next1173, 32
  br i1 %349, label %polly.loop_exit813.2, label %vector.body1170, !llvm.loop !127

polly.loop_exit813.2:                             ; preds = %vector.body1170
  %polly.indvar_next809.2 = add nuw nsw i64 %polly.indvar808.2, 1
  %exitcond915.2.not = icmp eq i64 %polly.indvar_next809.2, 16
  br i1 %exitcond915.2.not, label %polly.loop_header805.1.2, label %polly.loop_header805.2

polly.loop_header805.1.2:                         ; preds = %polly.loop_exit813.2, %polly.loop_exit813.1.2
  %polly.indvar808.1.2 = phi i64 [ %polly.indvar_next809.1.2, %polly.loop_exit813.1.2 ], [ 0, %polly.loop_exit813.2 ]
  %350 = add nuw nsw i64 %polly.indvar808.1.2, 64
  %351 = mul nuw nsw i64 %350, 480
  %352 = trunc i64 %350 to i32
  %broadcast.splatinsert1192 = insertelement <4 x i32> poison, i32 %352, i32 0
  %broadcast.splat1193 = shufflevector <4 x i32> %broadcast.splatinsert1192, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1184

vector.body1184:                                  ; preds = %vector.body1184, %polly.loop_header805.1.2
  %index1186 = phi i64 [ 0, %polly.loop_header805.1.2 ], [ %index.next1187, %vector.body1184 ]
  %vec.ind1190 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header805.1.2 ], [ %vec.ind.next1191, %vector.body1184 ]
  %353 = add nuw nsw <4 x i64> %vec.ind1190, <i64 32, i64 32, i64 32, i64 32>
  %354 = trunc <4 x i64> %353 to <4 x i32>
  %355 = mul <4 x i32> %broadcast.splat1193, %354
  %356 = add <4 x i32> %355, <i32 2, i32 2, i32 2, i32 2>
  %357 = urem <4 x i32> %356, <i32 60, i32 60, i32 60, i32 60>
  %358 = sitofp <4 x i32> %357 to <4 x double>
  %359 = fmul fast <4 x double> %358, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %360 = extractelement <4 x i64> %353, i32 0
  %361 = shl i64 %360, 3
  %362 = add i64 %361, %351
  %363 = getelementptr i8, i8* %call2, i64 %362
  %364 = bitcast i8* %363 to <4 x double>*
  store <4 x double> %359, <4 x double>* %364, align 8, !alias.scope !113, !noalias !115
  %index.next1187 = add i64 %index1186, 4
  %vec.ind.next1191 = add <4 x i64> %vec.ind1190, <i64 4, i64 4, i64 4, i64 4>
  %365 = icmp eq i64 %index.next1187, 28
  br i1 %365, label %polly.loop_exit813.1.2, label %vector.body1184, !llvm.loop !128

polly.loop_exit813.1.2:                           ; preds = %vector.body1184
  %polly.indvar_next809.1.2 = add nuw nsw i64 %polly.indvar808.1.2, 1
  %exitcond915.1.2.not = icmp eq i64 %polly.indvar_next809.1.2, 16
  br i1 %exitcond915.1.2.not, label %polly.loop_header831, label %polly.loop_header805.1.2

polly.loop_header778.1:                           ; preds = %polly.loop_exit786, %polly.loop_exit786.1
  %polly.indvar781.1 = phi i64 [ %polly.indvar_next782.1, %polly.loop_exit786.1 ], [ 0, %polly.loop_exit786 ]
  %366 = mul nuw nsw i64 %polly.indvar781.1, 640
  %367 = trunc i64 %polly.indvar781.1 to i32
  %broadcast.splatinsert1026 = insertelement <4 x i32> poison, i32 %367, i32 0
  %broadcast.splat1027 = shufflevector <4 x i32> %broadcast.splatinsert1026, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1018

vector.body1018:                                  ; preds = %vector.body1018, %polly.loop_header778.1
  %index1020 = phi i64 [ 0, %polly.loop_header778.1 ], [ %index.next1021, %vector.body1018 ]
  %vec.ind1024 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.1 ], [ %vec.ind.next1025, %vector.body1018 ]
  %368 = add nuw nsw <4 x i64> %vec.ind1024, <i64 32, i64 32, i64 32, i64 32>
  %369 = trunc <4 x i64> %368 to <4 x i32>
  %370 = mul <4 x i32> %broadcast.splat1027, %369
  %371 = add <4 x i32> %370, <i32 3, i32 3, i32 3, i32 3>
  %372 = urem <4 x i32> %371, <i32 80, i32 80, i32 80, i32 80>
  %373 = sitofp <4 x i32> %372 to <4 x double>
  %374 = fmul fast <4 x double> %373, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %375 = extractelement <4 x i64> %368, i32 0
  %376 = shl i64 %375, 3
  %377 = add nuw nsw i64 %376, %366
  %378 = getelementptr i8, i8* %call, i64 %377
  %379 = bitcast i8* %378 to <4 x double>*
  store <4 x double> %374, <4 x double>* %379, align 8, !alias.scope !109, !noalias !111
  %index.next1021 = add i64 %index1020, 4
  %vec.ind.next1025 = add <4 x i64> %vec.ind1024, <i64 4, i64 4, i64 4, i64 4>
  %380 = icmp eq i64 %index.next1021, 32
  br i1 %380, label %polly.loop_exit786.1, label %vector.body1018, !llvm.loop !129

polly.loop_exit786.1:                             ; preds = %vector.body1018
  %polly.indvar_next782.1 = add nuw nsw i64 %polly.indvar781.1, 1
  %exitcond924.1.not = icmp eq i64 %polly.indvar_next782.1, 32
  br i1 %exitcond924.1.not, label %polly.loop_header778.2, label %polly.loop_header778.1

polly.loop_header778.2:                           ; preds = %polly.loop_exit786.1, %polly.loop_exit786.2
  %polly.indvar781.2 = phi i64 [ %polly.indvar_next782.2, %polly.loop_exit786.2 ], [ 0, %polly.loop_exit786.1 ]
  %381 = mul nuw nsw i64 %polly.indvar781.2, 640
  %382 = trunc i64 %polly.indvar781.2 to i32
  %broadcast.splatinsert1038 = insertelement <4 x i32> poison, i32 %382, i32 0
  %broadcast.splat1039 = shufflevector <4 x i32> %broadcast.splatinsert1038, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1030

vector.body1030:                                  ; preds = %vector.body1030, %polly.loop_header778.2
  %index1032 = phi i64 [ 0, %polly.loop_header778.2 ], [ %index.next1033, %vector.body1030 ]
  %vec.ind1036 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.2 ], [ %vec.ind.next1037, %vector.body1030 ]
  %383 = add nuw nsw <4 x i64> %vec.ind1036, <i64 64, i64 64, i64 64, i64 64>
  %384 = trunc <4 x i64> %383 to <4 x i32>
  %385 = mul <4 x i32> %broadcast.splat1039, %384
  %386 = add <4 x i32> %385, <i32 3, i32 3, i32 3, i32 3>
  %387 = urem <4 x i32> %386, <i32 80, i32 80, i32 80, i32 80>
  %388 = sitofp <4 x i32> %387 to <4 x double>
  %389 = fmul fast <4 x double> %388, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %390 = extractelement <4 x i64> %383, i32 0
  %391 = shl i64 %390, 3
  %392 = add nuw nsw i64 %391, %381
  %393 = getelementptr i8, i8* %call, i64 %392
  %394 = bitcast i8* %393 to <4 x double>*
  store <4 x double> %389, <4 x double>* %394, align 8, !alias.scope !109, !noalias !111
  %index.next1033 = add i64 %index1032, 4
  %vec.ind.next1037 = add <4 x i64> %vec.ind1036, <i64 4, i64 4, i64 4, i64 4>
  %395 = icmp eq i64 %index.next1033, 16
  br i1 %395, label %polly.loop_exit786.2, label %vector.body1030, !llvm.loop !130

polly.loop_exit786.2:                             ; preds = %vector.body1030
  %polly.indvar_next782.2 = add nuw nsw i64 %polly.indvar781.2, 1
  %exitcond924.2.not = icmp eq i64 %polly.indvar_next782.2, 32
  br i1 %exitcond924.2.not, label %polly.loop_header778.1957, label %polly.loop_header778.2

polly.loop_header778.1957:                        ; preds = %polly.loop_exit786.2, %polly.loop_exit786.1968
  %polly.indvar781.1956 = phi i64 [ %polly.indvar_next782.1966, %polly.loop_exit786.1968 ], [ 0, %polly.loop_exit786.2 ]
  %396 = add nuw nsw i64 %polly.indvar781.1956, 32
  %397 = mul nuw nsw i64 %396, 640
  %398 = trunc i64 %396 to i32
  %broadcast.splatinsert1052 = insertelement <4 x i32> poison, i32 %398, i32 0
  %broadcast.splat1053 = shufflevector <4 x i32> %broadcast.splatinsert1052, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1042

vector.body1042:                                  ; preds = %vector.body1042, %polly.loop_header778.1957
  %index1044 = phi i64 [ 0, %polly.loop_header778.1957 ], [ %index.next1045, %vector.body1042 ]
  %vec.ind1050 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header778.1957 ], [ %vec.ind.next1051, %vector.body1042 ]
  %399 = mul <4 x i32> %vec.ind1050, %broadcast.splat1053
  %400 = add <4 x i32> %399, <i32 3, i32 3, i32 3, i32 3>
  %401 = urem <4 x i32> %400, <i32 80, i32 80, i32 80, i32 80>
  %402 = sitofp <4 x i32> %401 to <4 x double>
  %403 = fmul fast <4 x double> %402, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %404 = shl i64 %index1044, 3
  %405 = add nuw nsw i64 %404, %397
  %406 = getelementptr i8, i8* %call, i64 %405
  %407 = bitcast i8* %406 to <4 x double>*
  store <4 x double> %403, <4 x double>* %407, align 8, !alias.scope !109, !noalias !111
  %index.next1045 = add i64 %index1044, 4
  %vec.ind.next1051 = add <4 x i32> %vec.ind1050, <i32 4, i32 4, i32 4, i32 4>
  %408 = icmp eq i64 %index.next1045, 32
  br i1 %408, label %polly.loop_exit786.1968, label %vector.body1042, !llvm.loop !131

polly.loop_exit786.1968:                          ; preds = %vector.body1042
  %polly.indvar_next782.1966 = add nuw nsw i64 %polly.indvar781.1956, 1
  %exitcond924.1967.not = icmp eq i64 %polly.indvar_next782.1966, 32
  br i1 %exitcond924.1967.not, label %polly.loop_header778.1.1, label %polly.loop_header778.1957

polly.loop_header778.1.1:                         ; preds = %polly.loop_exit786.1968, %polly.loop_exit786.1.1
  %polly.indvar781.1.1 = phi i64 [ %polly.indvar_next782.1.1, %polly.loop_exit786.1.1 ], [ 0, %polly.loop_exit786.1968 ]
  %409 = add nuw nsw i64 %polly.indvar781.1.1, 32
  %410 = mul nuw nsw i64 %409, 640
  %411 = trunc i64 %409 to i32
  %broadcast.splatinsert1064 = insertelement <4 x i32> poison, i32 %411, i32 0
  %broadcast.splat1065 = shufflevector <4 x i32> %broadcast.splatinsert1064, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1056

vector.body1056:                                  ; preds = %vector.body1056, %polly.loop_header778.1.1
  %index1058 = phi i64 [ 0, %polly.loop_header778.1.1 ], [ %index.next1059, %vector.body1056 ]
  %vec.ind1062 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.1.1 ], [ %vec.ind.next1063, %vector.body1056 ]
  %412 = add nuw nsw <4 x i64> %vec.ind1062, <i64 32, i64 32, i64 32, i64 32>
  %413 = trunc <4 x i64> %412 to <4 x i32>
  %414 = mul <4 x i32> %broadcast.splat1065, %413
  %415 = add <4 x i32> %414, <i32 3, i32 3, i32 3, i32 3>
  %416 = urem <4 x i32> %415, <i32 80, i32 80, i32 80, i32 80>
  %417 = sitofp <4 x i32> %416 to <4 x double>
  %418 = fmul fast <4 x double> %417, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %419 = extractelement <4 x i64> %412, i32 0
  %420 = shl i64 %419, 3
  %421 = add nuw nsw i64 %420, %410
  %422 = getelementptr i8, i8* %call, i64 %421
  %423 = bitcast i8* %422 to <4 x double>*
  store <4 x double> %418, <4 x double>* %423, align 8, !alias.scope !109, !noalias !111
  %index.next1059 = add i64 %index1058, 4
  %vec.ind.next1063 = add <4 x i64> %vec.ind1062, <i64 4, i64 4, i64 4, i64 4>
  %424 = icmp eq i64 %index.next1059, 32
  br i1 %424, label %polly.loop_exit786.1.1, label %vector.body1056, !llvm.loop !132

polly.loop_exit786.1.1:                           ; preds = %vector.body1056
  %polly.indvar_next782.1.1 = add nuw nsw i64 %polly.indvar781.1.1, 1
  %exitcond924.1.1.not = icmp eq i64 %polly.indvar_next782.1.1, 32
  br i1 %exitcond924.1.1.not, label %polly.loop_header778.2.1, label %polly.loop_header778.1.1

polly.loop_header778.2.1:                         ; preds = %polly.loop_exit786.1.1, %polly.loop_exit786.2.1
  %polly.indvar781.2.1 = phi i64 [ %polly.indvar_next782.2.1, %polly.loop_exit786.2.1 ], [ 0, %polly.loop_exit786.1.1 ]
  %425 = add nuw nsw i64 %polly.indvar781.2.1, 32
  %426 = mul nuw nsw i64 %425, 640
  %427 = trunc i64 %425 to i32
  %broadcast.splatinsert1076 = insertelement <4 x i32> poison, i32 %427, i32 0
  %broadcast.splat1077 = shufflevector <4 x i32> %broadcast.splatinsert1076, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1068

vector.body1068:                                  ; preds = %vector.body1068, %polly.loop_header778.2.1
  %index1070 = phi i64 [ 0, %polly.loop_header778.2.1 ], [ %index.next1071, %vector.body1068 ]
  %vec.ind1074 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.2.1 ], [ %vec.ind.next1075, %vector.body1068 ]
  %428 = add nuw nsw <4 x i64> %vec.ind1074, <i64 64, i64 64, i64 64, i64 64>
  %429 = trunc <4 x i64> %428 to <4 x i32>
  %430 = mul <4 x i32> %broadcast.splat1077, %429
  %431 = add <4 x i32> %430, <i32 3, i32 3, i32 3, i32 3>
  %432 = urem <4 x i32> %431, <i32 80, i32 80, i32 80, i32 80>
  %433 = sitofp <4 x i32> %432 to <4 x double>
  %434 = fmul fast <4 x double> %433, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %435 = extractelement <4 x i64> %428, i32 0
  %436 = shl i64 %435, 3
  %437 = add nuw nsw i64 %436, %426
  %438 = getelementptr i8, i8* %call, i64 %437
  %439 = bitcast i8* %438 to <4 x double>*
  store <4 x double> %434, <4 x double>* %439, align 8, !alias.scope !109, !noalias !111
  %index.next1071 = add i64 %index1070, 4
  %vec.ind.next1075 = add <4 x i64> %vec.ind1074, <i64 4, i64 4, i64 4, i64 4>
  %440 = icmp eq i64 %index.next1071, 16
  br i1 %440, label %polly.loop_exit786.2.1, label %vector.body1068, !llvm.loop !133

polly.loop_exit786.2.1:                           ; preds = %vector.body1068
  %polly.indvar_next782.2.1 = add nuw nsw i64 %polly.indvar781.2.1, 1
  %exitcond924.2.1.not = icmp eq i64 %polly.indvar_next782.2.1, 32
  br i1 %exitcond924.2.1.not, label %polly.loop_header778.2971, label %polly.loop_header778.2.1

polly.loop_header778.2971:                        ; preds = %polly.loop_exit786.2.1, %polly.loop_exit786.2982
  %polly.indvar781.2970 = phi i64 [ %polly.indvar_next782.2980, %polly.loop_exit786.2982 ], [ 0, %polly.loop_exit786.2.1 ]
  %441 = add nuw nsw i64 %polly.indvar781.2970, 64
  %442 = mul nuw nsw i64 %441, 640
  %443 = trunc i64 %441 to i32
  %broadcast.splatinsert1090 = insertelement <4 x i32> poison, i32 %443, i32 0
  %broadcast.splat1091 = shufflevector <4 x i32> %broadcast.splatinsert1090, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1080

vector.body1080:                                  ; preds = %vector.body1080, %polly.loop_header778.2971
  %index1082 = phi i64 [ 0, %polly.loop_header778.2971 ], [ %index.next1083, %vector.body1080 ]
  %vec.ind1088 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header778.2971 ], [ %vec.ind.next1089, %vector.body1080 ]
  %444 = mul <4 x i32> %vec.ind1088, %broadcast.splat1091
  %445 = add <4 x i32> %444, <i32 3, i32 3, i32 3, i32 3>
  %446 = urem <4 x i32> %445, <i32 80, i32 80, i32 80, i32 80>
  %447 = sitofp <4 x i32> %446 to <4 x double>
  %448 = fmul fast <4 x double> %447, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %449 = shl i64 %index1082, 3
  %450 = add nuw nsw i64 %449, %442
  %451 = getelementptr i8, i8* %call, i64 %450
  %452 = bitcast i8* %451 to <4 x double>*
  store <4 x double> %448, <4 x double>* %452, align 8, !alias.scope !109, !noalias !111
  %index.next1083 = add i64 %index1082, 4
  %vec.ind.next1089 = add <4 x i32> %vec.ind1088, <i32 4, i32 4, i32 4, i32 4>
  %453 = icmp eq i64 %index.next1083, 32
  br i1 %453, label %polly.loop_exit786.2982, label %vector.body1080, !llvm.loop !134

polly.loop_exit786.2982:                          ; preds = %vector.body1080
  %polly.indvar_next782.2980 = add nuw nsw i64 %polly.indvar781.2970, 1
  %exitcond924.2981.not = icmp eq i64 %polly.indvar_next782.2980, 16
  br i1 %exitcond924.2981.not, label %polly.loop_header778.1.2, label %polly.loop_header778.2971

polly.loop_header778.1.2:                         ; preds = %polly.loop_exit786.2982, %polly.loop_exit786.1.2
  %polly.indvar781.1.2 = phi i64 [ %polly.indvar_next782.1.2, %polly.loop_exit786.1.2 ], [ 0, %polly.loop_exit786.2982 ]
  %454 = add nuw nsw i64 %polly.indvar781.1.2, 64
  %455 = mul nuw nsw i64 %454, 640
  %456 = trunc i64 %454 to i32
  %broadcast.splatinsert1102 = insertelement <4 x i32> poison, i32 %456, i32 0
  %broadcast.splat1103 = shufflevector <4 x i32> %broadcast.splatinsert1102, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1094

vector.body1094:                                  ; preds = %vector.body1094, %polly.loop_header778.1.2
  %index1096 = phi i64 [ 0, %polly.loop_header778.1.2 ], [ %index.next1097, %vector.body1094 ]
  %vec.ind1100 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.1.2 ], [ %vec.ind.next1101, %vector.body1094 ]
  %457 = add nuw nsw <4 x i64> %vec.ind1100, <i64 32, i64 32, i64 32, i64 32>
  %458 = trunc <4 x i64> %457 to <4 x i32>
  %459 = mul <4 x i32> %broadcast.splat1103, %458
  %460 = add <4 x i32> %459, <i32 3, i32 3, i32 3, i32 3>
  %461 = urem <4 x i32> %460, <i32 80, i32 80, i32 80, i32 80>
  %462 = sitofp <4 x i32> %461 to <4 x double>
  %463 = fmul fast <4 x double> %462, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %464 = extractelement <4 x i64> %457, i32 0
  %465 = shl i64 %464, 3
  %466 = add nuw nsw i64 %465, %455
  %467 = getelementptr i8, i8* %call, i64 %466
  %468 = bitcast i8* %467 to <4 x double>*
  store <4 x double> %463, <4 x double>* %468, align 8, !alias.scope !109, !noalias !111
  %index.next1097 = add i64 %index1096, 4
  %vec.ind.next1101 = add <4 x i64> %vec.ind1100, <i64 4, i64 4, i64 4, i64 4>
  %469 = icmp eq i64 %index.next1097, 32
  br i1 %469, label %polly.loop_exit786.1.2, label %vector.body1094, !llvm.loop !135

polly.loop_exit786.1.2:                           ; preds = %vector.body1094
  %polly.indvar_next782.1.2 = add nuw nsw i64 %polly.indvar781.1.2, 1
  %exitcond924.1.2.not = icmp eq i64 %polly.indvar_next782.1.2, 16
  br i1 %exitcond924.1.2.not, label %polly.loop_header778.2.2, label %polly.loop_header778.1.2

polly.loop_header778.2.2:                         ; preds = %polly.loop_exit786.1.2, %polly.loop_exit786.2.2
  %polly.indvar781.2.2 = phi i64 [ %polly.indvar_next782.2.2, %polly.loop_exit786.2.2 ], [ 0, %polly.loop_exit786.1.2 ]
  %470 = add nuw nsw i64 %polly.indvar781.2.2, 64
  %471 = mul nuw nsw i64 %470, 640
  %472 = trunc i64 %470 to i32
  %broadcast.splatinsert1114 = insertelement <4 x i32> poison, i32 %472, i32 0
  %broadcast.splat1115 = shufflevector <4 x i32> %broadcast.splatinsert1114, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1106

vector.body1106:                                  ; preds = %vector.body1106, %polly.loop_header778.2.2
  %index1108 = phi i64 [ 0, %polly.loop_header778.2.2 ], [ %index.next1109, %vector.body1106 ]
  %vec.ind1112 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.2.2 ], [ %vec.ind.next1113, %vector.body1106 ]
  %473 = add nuw nsw <4 x i64> %vec.ind1112, <i64 64, i64 64, i64 64, i64 64>
  %474 = trunc <4 x i64> %473 to <4 x i32>
  %475 = mul <4 x i32> %broadcast.splat1115, %474
  %476 = add <4 x i32> %475, <i32 3, i32 3, i32 3, i32 3>
  %477 = urem <4 x i32> %476, <i32 80, i32 80, i32 80, i32 80>
  %478 = sitofp <4 x i32> %477 to <4 x double>
  %479 = fmul fast <4 x double> %478, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %480 = extractelement <4 x i64> %473, i32 0
  %481 = shl i64 %480, 3
  %482 = add nuw nsw i64 %481, %471
  %483 = getelementptr i8, i8* %call, i64 %482
  %484 = bitcast i8* %483 to <4 x double>*
  store <4 x double> %479, <4 x double>* %484, align 8, !alias.scope !109, !noalias !111
  %index.next1109 = add i64 %index1108, 4
  %vec.ind.next1113 = add <4 x i64> %vec.ind1112, <i64 4, i64 4, i64 4, i64 4>
  %485 = icmp eq i64 %index.next1109, 16
  br i1 %485, label %polly.loop_exit786.2.2, label %vector.body1106, !llvm.loop !136

polly.loop_exit786.2.2:                           ; preds = %vector.body1106
  %polly.indvar_next782.2.2 = add nuw nsw i64 %polly.indvar781.2.2, 1
  %exitcond924.2.2.not = icmp eq i64 %polly.indvar_next782.2.2, 16
  br i1 %exitcond924.2.2.not, label %polly.loop_header805, label %polly.loop_header778.2.2
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
!35 = !{!"llvm.loop.tile.size", i32 100}
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
!51 = !{!"llvm.loop.tile.size", i32 80}
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
