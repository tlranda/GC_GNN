; ModuleID = 'syr2k_recreations//mmp_syr2k_S_109.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_109.c"
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
  %call807 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1668 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1668, %call2
  %polly.access.call2688 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2688, %call1
  %2 = or i1 %0, %1
  %polly.access.call708 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call708, %call2
  %4 = icmp ule i8* %polly.access.call2688, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call708, %call1
  %8 = icmp ule i8* %polly.access.call1668, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header793, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1009 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1008 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1007 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1006 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1006, %scevgep1009
  %bound1 = icmp ult i8* %scevgep1008, %scevgep1007
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
  br i1 %exitcond18.not.i, label %vector.ph1013, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1013:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1020 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1021 = shufflevector <4 x i64> %broadcast.splatinsert1020, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1012

vector.body1012:                                  ; preds = %vector.body1012, %vector.ph1013
  %index1014 = phi i64 [ 0, %vector.ph1013 ], [ %index.next1015, %vector.body1012 ]
  %vec.ind1018 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1013 ], [ %vec.ind.next1019, %vector.body1012 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1018, %broadcast.splat1021
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv7.i, i64 %index1014
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1015 = add i64 %index1014, 4
  %vec.ind.next1019 = add <4 x i64> %vec.ind1018, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1015, 80
  br i1 %40, label %for.inc41.i, label %vector.body1012, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1012
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1013, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit854.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start470, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1366, label %vector.ph1295

vector.ph1295:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1294

vector.body1294:                                  ; preds = %vector.body1294, %vector.ph1295
  %index1296 = phi i64 [ 0, %vector.ph1295 ], [ %index.next1297, %vector.body1294 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv21.i, i64 %index1296
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1297 = add i64 %index1296, 4
  %46 = icmp eq i64 %index.next1297, %n.vec
  br i1 %46, label %middle.block1292, label %vector.body1294, !llvm.loop !18

middle.block1292:                                 ; preds = %vector.body1294
  %cmp.n1299 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1299, label %for.inc6.i, label %for.body3.i46.preheader1366

for.body3.i46.preheader1366:                      ; preds = %for.body3.i46.preheader, %middle.block1292
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1292 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1366, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1366 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1292, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting471
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start283, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1315 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1315, label %for.body3.i60.preheader1365, label %vector.ph1316

vector.ph1316:                                    ; preds = %for.body3.i60.preheader
  %n.vec1318 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1314

vector.body1314:                                  ; preds = %vector.body1314, %vector.ph1316
  %index1319 = phi i64 [ 0, %vector.ph1316 ], [ %index.next1320, %vector.body1314 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv21.i52, i64 %index1319
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
  br i1 %cmp.n1322, label %for.inc6.i63, label %for.body3.i60.preheader1365

for.body3.i60.preheader1365:                      ; preds = %for.body3.i60.preheader, %middle.block1312
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1318, %middle.block1312 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1365, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1365 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting284
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1341 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1341, label %for.body3.i99.preheader1364, label %vector.ph1342

vector.ph1342:                                    ; preds = %for.body3.i99.preheader
  %n.vec1344 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1340

vector.body1340:                                  ; preds = %vector.body1340, %vector.ph1342
  %index1345 = phi i64 [ 0, %vector.ph1342 ], [ %index.next1346, %vector.body1340 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv21.i91, i64 %index1345
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1349 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1349, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1346 = add i64 %index1345, 4
  %68 = icmp eq i64 %index.next1346, %n.vec1344
  br i1 %68, label %middle.block1338, label %vector.body1340, !llvm.loop !66

middle.block1338:                                 ; preds = %vector.body1340
  %cmp.n1348 = icmp eq i64 %indvars.iv21.i91, %n.vec1344
  br i1 %cmp.n1348, label %for.inc6.i102, label %for.body3.i99.preheader1364

for.body3.i99.preheader1364:                      ; preds = %for.body3.i99.preheader, %middle.block1338
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1344, %middle.block1338 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1364, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1364 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1338, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(12800) i8* @malloc(i64 12800) #6
  %malloccall136 = tail call dereferenceable_or_null(12800) i8* @malloc(i64 12800) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1353 = phi i64 [ %indvar.next1354, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1353, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1355 = icmp ult i64 %88, 4
  br i1 %min.iters.check1355, label %polly.loop_header192.preheader, label %vector.ph1356

vector.ph1356:                                    ; preds = %polly.loop_header
  %n.vec1358 = and i64 %88, -4
  br label %vector.body1352

vector.body1352:                                  ; preds = %vector.body1352, %vector.ph1356
  %index1359 = phi i64 [ 0, %vector.ph1356 ], [ %index.next1360, %vector.body1352 ]
  %90 = shl nuw nsw i64 %index1359, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1363 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1363, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1360 = add i64 %index1359, 4
  %95 = icmp eq i64 %index.next1360, %n.vec1358
  br i1 %95, label %middle.block1350, label %vector.body1352, !llvm.loop !79

middle.block1350:                                 ; preds = %vector.body1352
  %cmp.n1362 = icmp eq i64 %88, %n.vec1358
  br i1 %cmp.n1362, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1350
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1358, %middle.block1350 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1350
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond883.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1354 = add i64 %indvar1353, 1
  br i1 %exitcond883.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond882.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond882.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit224
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit224 ], [ 0, %polly.loop_header200.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar203, 160
  br label %polly.loop_header206

polly.loop_exit224:                               ; preds = %polly.loop_exit246
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond881.not = icmp eq i64 %polly.indvar_next204, 3
  br i1 %exitcond881.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %98 = mul nuw nsw i64 %polly.indvar209, 160
  %scevgep867 = getelementptr i8, i8* %malloccall136, i64 %98
  %99 = mul nuw nsw i64 %polly.indvar209, 480
  %100 = add nuw nsw i64 %97, %99
  %scevgep868 = getelementptr i8, i8* %call2, i64 %100
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %scevgep867, i8* noundef nonnull align 8 dereferenceable(160) %scevgep868, i64 160, i1 false)
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next210, 80
  br i1 %exitcond.not, label %polly.loop_header222, label %polly.loop_header206

polly.loop_header222:                             ; preds = %polly.loop_header206, %polly.loop_exit246
  %indvars.iv873 = phi i64 [ %indvars.iv.next874, %polly.loop_exit246 ], [ 1, %polly.loop_header206 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit246 ], [ 4, %polly.loop_header206 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit246 ], [ 0, %polly.loop_header206 ]
  br label %polly.loop_header228

polly.loop_exit246:                               ; preds = %polly.loop_exit258.3
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %indvars.iv.next874 = add nuw nsw i64 %indvars.iv873, 4
  %exitcond880.not = icmp eq i64 %polly.indvar_next226, 20
  br i1 %exitcond880.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header228, %polly.loop_header222
  %polly.indvar231 = phi i64 [ 0, %polly.loop_header222 ], [ %polly.indvar_next232, %polly.loop_header228 ]
  %101 = mul nuw nsw i64 %polly.indvar231, 160
  %scevgep870 = getelementptr i8, i8* %malloccall, i64 %101
  %102 = mul nuw nsw i64 %polly.indvar231, 480
  %103 = add nuw nsw i64 %97, %102
  %scevgep871 = getelementptr i8, i8* %call1, i64 %103
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %scevgep870, i8* noundef nonnull align 8 dereferenceable(160) %scevgep871, i64 160, i1 false)
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %exitcond872.not = icmp eq i64 %polly.indvar_next232, %indvars.iv
  br i1 %exitcond872.not, label %polly.loop_header244.preheader, label %polly.loop_header228

polly.loop_header244.preheader:                   ; preds = %polly.loop_header228
  %104 = shl nuw nsw i64 %polly.indvar225, 2
  %polly.access.mul.Packed_MemRef_call2266 = mul nuw nsw i64 %polly.indvar225, 80
  %105 = mul nuw nsw i64 %polly.indvar225, 2560
  %106 = or i64 %104, 1
  %polly.access.mul.Packed_MemRef_call2266.1 = mul nuw nsw i64 %106, 20
  %107 = mul nuw nsw i64 %106, 640
  %108 = or i64 %104, 2
  %polly.access.mul.Packed_MemRef_call2266.2 = mul nuw nsw i64 %108, 20
  %109 = mul nuw nsw i64 %108, 640
  %110 = or i64 %104, 3
  %polly.access.mul.Packed_MemRef_call2266.3 = mul nuw nsw i64 %110, 20
  %111 = mul nuw nsw i64 %110, 640
  %112 = add nuw nsw i64 %indvars.iv873, 2
  br label %polly.loop_header244

polly.loop_header244:                             ; preds = %polly.loop_header244.preheader, %polly.loop_exit258.3
  %polly.indvar247 = phi i64 [ %polly.indvar_next248, %polly.loop_exit258.3 ], [ 0, %polly.loop_header244.preheader ]
  %polly.access.add.Packed_MemRef_call2267 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2266, %polly.indvar247
  %polly.access.Packed_MemRef_call2268 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2267
  %_p_scalar_269 = load double, double* %polly.access.Packed_MemRef_call2268, align 8
  %polly.access.Packed_MemRef_call1276 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2267
  %_p_scalar_277 = load double, double* %polly.access.Packed_MemRef_call1276, align 8
  br label %polly.loop_header256

polly.loop_exit258:                               ; preds = %polly.loop_header256
  %polly.access.add.Packed_MemRef_call2267.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2266.1, %polly.indvar247
  %polly.access.Packed_MemRef_call2268.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2267.1
  %_p_scalar_269.1 = load double, double* %polly.access.Packed_MemRef_call2268.1, align 8
  %polly.access.Packed_MemRef_call1276.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2267.1
  %_p_scalar_277.1 = load double, double* %polly.access.Packed_MemRef_call1276.1, align 8
  br label %polly.loop_header256.1

polly.loop_header256:                             ; preds = %polly.loop_header256, %polly.loop_header244
  %polly.indvar259 = phi i64 [ 0, %polly.loop_header244 ], [ %polly.indvar_next260, %polly.loop_header256 ]
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar259, 20
  %polly.access.add.Packed_MemRef_call1263 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1262, %polly.indvar247
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  %_p_scalar_265 = load double, double* %polly.access.Packed_MemRef_call1264, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_269, %_p_scalar_265
  %polly.access.Packed_MemRef_call2272 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1263
  %_p_scalar_273 = load double, double* %polly.access.Packed_MemRef_call2272, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_277, %_p_scalar_273
  %113 = shl nuw nsw i64 %polly.indvar259, 3
  %114 = add nuw nsw i64 %113, %105
  %scevgep278 = getelementptr i8, i8* %call, i64 %114
  %scevgep278279 = bitcast i8* %scevgep278 to double*
  %_p_scalar_280 = load double, double* %scevgep278279, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_280
  store double %p_add42.i118, double* %scevgep278279, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next260 = add nuw nsw i64 %polly.indvar259, 1
  %exitcond877.not = icmp eq i64 %polly.indvar_next260, %indvars.iv873
  br i1 %exitcond877.not, label %polly.loop_exit258, label %polly.loop_header256

polly.start283:                                   ; preds = %kernel_syr2k.exit
  %malloccall285 = tail call dereferenceable_or_null(12800) i8* @malloc(i64 12800) #6
  %malloccall287 = tail call dereferenceable_or_null(12800) i8* @malloc(i64 12800) #6
  br label %polly.loop_header371

polly.exiting284:                                 ; preds = %polly.loop_exit411
  tail call void @free(i8* nonnull %malloccall285)
  tail call void @free(i8* nonnull %malloccall287)
  br label %kernel_syr2k.exit90

polly.loop_header371:                             ; preds = %polly.loop_exit379, %polly.start283
  %indvar1327 = phi i64 [ %indvar.next1328, %polly.loop_exit379 ], [ 0, %polly.start283 ]
  %polly.indvar374 = phi i64 [ %polly.indvar_next375, %polly.loop_exit379 ], [ 1, %polly.start283 ]
  %115 = add i64 %indvar1327, 1
  %116 = mul nuw nsw i64 %polly.indvar374, 640
  %scevgep383 = getelementptr i8, i8* %call, i64 %116
  %min.iters.check1329 = icmp ult i64 %115, 4
  br i1 %min.iters.check1329, label %polly.loop_header377.preheader, label %vector.ph1330

vector.ph1330:                                    ; preds = %polly.loop_header371
  %n.vec1332 = and i64 %115, -4
  br label %vector.body1326

vector.body1326:                                  ; preds = %vector.body1326, %vector.ph1330
  %index1333 = phi i64 [ 0, %vector.ph1330 ], [ %index.next1334, %vector.body1326 ]
  %117 = shl nuw nsw i64 %index1333, 3
  %118 = getelementptr i8, i8* %scevgep383, i64 %117
  %119 = bitcast i8* %118 to <4 x double>*
  %wide.load1337 = load <4 x double>, <4 x double>* %119, align 8, !alias.scope !82, !noalias !84
  %120 = fmul fast <4 x double> %wide.load1337, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %121 = bitcast i8* %118 to <4 x double>*
  store <4 x double> %120, <4 x double>* %121, align 8, !alias.scope !82, !noalias !84
  %index.next1334 = add i64 %index1333, 4
  %122 = icmp eq i64 %index.next1334, %n.vec1332
  br i1 %122, label %middle.block1324, label %vector.body1326, !llvm.loop !89

middle.block1324:                                 ; preds = %vector.body1326
  %cmp.n1336 = icmp eq i64 %115, %n.vec1332
  br i1 %cmp.n1336, label %polly.loop_exit379, label %polly.loop_header377.preheader

polly.loop_header377.preheader:                   ; preds = %polly.loop_header371, %middle.block1324
  %polly.indvar380.ph = phi i64 [ 0, %polly.loop_header371 ], [ %n.vec1332, %middle.block1324 ]
  br label %polly.loop_header377

polly.loop_exit379:                               ; preds = %polly.loop_header377, %middle.block1324
  %polly.indvar_next375 = add nuw nsw i64 %polly.indvar374, 1
  %exitcond904.not = icmp eq i64 %polly.indvar_next375, 80
  %indvar.next1328 = add i64 %indvar1327, 1
  br i1 %exitcond904.not, label %polly.loop_header387.preheader, label %polly.loop_header371

polly.loop_header387.preheader:                   ; preds = %polly.loop_exit379
  %Packed_MemRef_call1286 = bitcast i8* %malloccall285 to double*
  %Packed_MemRef_call2288 = bitcast i8* %malloccall287 to double*
  br label %polly.loop_header387

polly.loop_header377:                             ; preds = %polly.loop_header377.preheader, %polly.loop_header377
  %polly.indvar380 = phi i64 [ %polly.indvar_next381, %polly.loop_header377 ], [ %polly.indvar380.ph, %polly.loop_header377.preheader ]
  %123 = shl nuw nsw i64 %polly.indvar380, 3
  %scevgep384 = getelementptr i8, i8* %scevgep383, i64 %123
  %scevgep384385 = bitcast i8* %scevgep384 to double*
  %_p_scalar_386 = load double, double* %scevgep384385, align 8, !alias.scope !82, !noalias !84
  %p_mul.i57 = fmul fast double %_p_scalar_386, 1.200000e+00
  store double %p_mul.i57, double* %scevgep384385, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next381 = add nuw nsw i64 %polly.indvar380, 1
  %exitcond903.not = icmp eq i64 %polly.indvar_next381, %polly.indvar374
  br i1 %exitcond903.not, label %polly.loop_exit379, label %polly.loop_header377, !llvm.loop !90

polly.loop_header387:                             ; preds = %polly.loop_header387.preheader, %polly.loop_exit411
  %polly.indvar390 = phi i64 [ %polly.indvar_next391, %polly.loop_exit411 ], [ 0, %polly.loop_header387.preheader ]
  %124 = mul nuw nsw i64 %polly.indvar390, 160
  br label %polly.loop_header393

polly.loop_exit411:                               ; preds = %polly.loop_exit433
  %polly.indvar_next391 = add nuw nsw i64 %polly.indvar390, 1
  %exitcond902.not = icmp eq i64 %polly.indvar_next391, 3
  br i1 %exitcond902.not, label %polly.exiting284, label %polly.loop_header387

polly.loop_header393:                             ; preds = %polly.loop_header393, %polly.loop_header387
  %polly.indvar396 = phi i64 [ 0, %polly.loop_header387 ], [ %polly.indvar_next397, %polly.loop_header393 ]
  %125 = mul nuw nsw i64 %polly.indvar396, 160
  %scevgep885 = getelementptr i8, i8* %malloccall287, i64 %125
  %126 = mul nuw nsw i64 %polly.indvar396, 480
  %127 = add nuw nsw i64 %124, %126
  %scevgep886 = getelementptr i8, i8* %call2, i64 %127
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %scevgep885, i8* noundef nonnull align 8 dereferenceable(160) %scevgep886, i64 160, i1 false)
  %polly.indvar_next397 = add nuw nsw i64 %polly.indvar396, 1
  %exitcond887.not = icmp eq i64 %polly.indvar_next397, 80
  br i1 %exitcond887.not, label %polly.loop_header409, label %polly.loop_header393

polly.loop_header409:                             ; preds = %polly.loop_header393, %polly.loop_exit433
  %indvars.iv894 = phi i64 [ %indvars.iv.next895, %polly.loop_exit433 ], [ 1, %polly.loop_header393 ]
  %indvars.iv891 = phi i64 [ %indvars.iv.next892, %polly.loop_exit433 ], [ 4, %polly.loop_header393 ]
  %polly.indvar412 = phi i64 [ %polly.indvar_next413, %polly.loop_exit433 ], [ 0, %polly.loop_header393 ]
  br label %polly.loop_header415

polly.loop_exit433:                               ; preds = %polly.loop_exit445.3
  %polly.indvar_next413 = add nuw nsw i64 %polly.indvar412, 1
  %indvars.iv.next892 = add nuw nsw i64 %indvars.iv891, 4
  %indvars.iv.next895 = add nuw nsw i64 %indvars.iv894, 4
  %exitcond901.not = icmp eq i64 %polly.indvar_next413, 20
  br i1 %exitcond901.not, label %polly.loop_exit411, label %polly.loop_header409

polly.loop_header415:                             ; preds = %polly.loop_header415, %polly.loop_header409
  %polly.indvar418 = phi i64 [ 0, %polly.loop_header409 ], [ %polly.indvar_next419, %polly.loop_header415 ]
  %128 = mul nuw nsw i64 %polly.indvar418, 160
  %scevgep889 = getelementptr i8, i8* %malloccall285, i64 %128
  %129 = mul nuw nsw i64 %polly.indvar418, 480
  %130 = add nuw nsw i64 %124, %129
  %scevgep890 = getelementptr i8, i8* %call1, i64 %130
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %scevgep889, i8* noundef nonnull align 8 dereferenceable(160) %scevgep890, i64 160, i1 false)
  %polly.indvar_next419 = add nuw nsw i64 %polly.indvar418, 1
  %exitcond893.not = icmp eq i64 %polly.indvar_next419, %indvars.iv891
  br i1 %exitcond893.not, label %polly.loop_header431.preheader, label %polly.loop_header415

polly.loop_header431.preheader:                   ; preds = %polly.loop_header415
  %131 = shl nuw nsw i64 %polly.indvar412, 2
  %polly.access.mul.Packed_MemRef_call2288453 = mul nuw nsw i64 %polly.indvar412, 80
  %132 = mul nuw nsw i64 %polly.indvar412, 2560
  %133 = or i64 %131, 1
  %polly.access.mul.Packed_MemRef_call2288453.1 = mul nuw nsw i64 %133, 20
  %134 = mul nuw nsw i64 %133, 640
  %135 = or i64 %131, 2
  %polly.access.mul.Packed_MemRef_call2288453.2 = mul nuw nsw i64 %135, 20
  %136 = mul nuw nsw i64 %135, 640
  %137 = or i64 %131, 3
  %polly.access.mul.Packed_MemRef_call2288453.3 = mul nuw nsw i64 %137, 20
  %138 = mul nuw nsw i64 %137, 640
  %139 = add nuw nsw i64 %indvars.iv894, 2
  br label %polly.loop_header431

polly.loop_header431:                             ; preds = %polly.loop_header431.preheader, %polly.loop_exit445.3
  %polly.indvar434 = phi i64 [ %polly.indvar_next435, %polly.loop_exit445.3 ], [ 0, %polly.loop_header431.preheader ]
  %polly.access.add.Packed_MemRef_call2288454 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2288453, %polly.indvar434
  %polly.access.Packed_MemRef_call2288455 = getelementptr double, double* %Packed_MemRef_call2288, i64 %polly.access.add.Packed_MemRef_call2288454
  %_p_scalar_456 = load double, double* %polly.access.Packed_MemRef_call2288455, align 8
  %polly.access.Packed_MemRef_call1286463 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call2288454
  %_p_scalar_464 = load double, double* %polly.access.Packed_MemRef_call1286463, align 8
  br label %polly.loop_header443

polly.loop_exit445:                               ; preds = %polly.loop_header443
  %polly.access.add.Packed_MemRef_call2288454.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2288453.1, %polly.indvar434
  %polly.access.Packed_MemRef_call2288455.1 = getelementptr double, double* %Packed_MemRef_call2288, i64 %polly.access.add.Packed_MemRef_call2288454.1
  %_p_scalar_456.1 = load double, double* %polly.access.Packed_MemRef_call2288455.1, align 8
  %polly.access.Packed_MemRef_call1286463.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call2288454.1
  %_p_scalar_464.1 = load double, double* %polly.access.Packed_MemRef_call1286463.1, align 8
  br label %polly.loop_header443.1

polly.loop_header443:                             ; preds = %polly.loop_header443, %polly.loop_header431
  %polly.indvar446 = phi i64 [ 0, %polly.loop_header431 ], [ %polly.indvar_next447, %polly.loop_header443 ]
  %polly.access.mul.Packed_MemRef_call1286449 = mul nuw nsw i64 %polly.indvar446, 20
  %polly.access.add.Packed_MemRef_call1286450 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1286449, %polly.indvar434
  %polly.access.Packed_MemRef_call1286451 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286450
  %_p_scalar_452 = load double, double* %polly.access.Packed_MemRef_call1286451, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_456, %_p_scalar_452
  %polly.access.Packed_MemRef_call2288459 = getelementptr double, double* %Packed_MemRef_call2288, i64 %polly.access.add.Packed_MemRef_call1286450
  %_p_scalar_460 = load double, double* %polly.access.Packed_MemRef_call2288459, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_464, %_p_scalar_460
  %140 = shl nuw nsw i64 %polly.indvar446, 3
  %141 = add nuw nsw i64 %140, %132
  %scevgep465 = getelementptr i8, i8* %call, i64 %141
  %scevgep465466 = bitcast i8* %scevgep465 to double*
  %_p_scalar_467 = load double, double* %scevgep465466, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_467
  store double %p_add42.i79, double* %scevgep465466, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next447 = add nuw nsw i64 %polly.indvar446, 1
  %exitcond898.not = icmp eq i64 %polly.indvar_next447, %indvars.iv894
  br i1 %exitcond898.not, label %polly.loop_exit445, label %polly.loop_header443

polly.start470:                                   ; preds = %init_array.exit
  %malloccall472 = tail call dereferenceable_or_null(12800) i8* @malloc(i64 12800) #6
  %malloccall474 = tail call dereferenceable_or_null(12800) i8* @malloc(i64 12800) #6
  br label %polly.loop_header558

polly.exiting471:                                 ; preds = %polly.loop_exit598
  tail call void @free(i8* nonnull %malloccall472)
  tail call void @free(i8* nonnull %malloccall474)
  br label %kernel_syr2k.exit

polly.loop_header558:                             ; preds = %polly.loop_exit566, %polly.start470
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit566 ], [ 0, %polly.start470 ]
  %polly.indvar561 = phi i64 [ %polly.indvar_next562, %polly.loop_exit566 ], [ 1, %polly.start470 ]
  %142 = add i64 %indvar, 1
  %143 = mul nuw nsw i64 %polly.indvar561, 640
  %scevgep570 = getelementptr i8, i8* %call, i64 %143
  %min.iters.check1303 = icmp ult i64 %142, 4
  br i1 %min.iters.check1303, label %polly.loop_header564.preheader, label %vector.ph1304

vector.ph1304:                                    ; preds = %polly.loop_header558
  %n.vec1306 = and i64 %142, -4
  br label %vector.body1302

vector.body1302:                                  ; preds = %vector.body1302, %vector.ph1304
  %index1307 = phi i64 [ 0, %vector.ph1304 ], [ %index.next1308, %vector.body1302 ]
  %144 = shl nuw nsw i64 %index1307, 3
  %145 = getelementptr i8, i8* %scevgep570, i64 %144
  %146 = bitcast i8* %145 to <4 x double>*
  %wide.load1311 = load <4 x double>, <4 x double>* %146, align 8, !alias.scope !91, !noalias !93
  %147 = fmul fast <4 x double> %wide.load1311, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %148 = bitcast i8* %145 to <4 x double>*
  store <4 x double> %147, <4 x double>* %148, align 8, !alias.scope !91, !noalias !93
  %index.next1308 = add i64 %index1307, 4
  %149 = icmp eq i64 %index.next1308, %n.vec1306
  br i1 %149, label %middle.block1300, label %vector.body1302, !llvm.loop !98

middle.block1300:                                 ; preds = %vector.body1302
  %cmp.n1310 = icmp eq i64 %142, %n.vec1306
  br i1 %cmp.n1310, label %polly.loop_exit566, label %polly.loop_header564.preheader

polly.loop_header564.preheader:                   ; preds = %polly.loop_header558, %middle.block1300
  %polly.indvar567.ph = phi i64 [ 0, %polly.loop_header558 ], [ %n.vec1306, %middle.block1300 ]
  br label %polly.loop_header564

polly.loop_exit566:                               ; preds = %polly.loop_header564, %middle.block1300
  %polly.indvar_next562 = add nuw nsw i64 %polly.indvar561, 1
  %exitcond925.not = icmp eq i64 %polly.indvar_next562, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond925.not, label %polly.loop_header574.preheader, label %polly.loop_header558

polly.loop_header574.preheader:                   ; preds = %polly.loop_exit566
  %Packed_MemRef_call1473 = bitcast i8* %malloccall472 to double*
  %Packed_MemRef_call2475 = bitcast i8* %malloccall474 to double*
  br label %polly.loop_header574

polly.loop_header564:                             ; preds = %polly.loop_header564.preheader, %polly.loop_header564
  %polly.indvar567 = phi i64 [ %polly.indvar_next568, %polly.loop_header564 ], [ %polly.indvar567.ph, %polly.loop_header564.preheader ]
  %150 = shl nuw nsw i64 %polly.indvar567, 3
  %scevgep571 = getelementptr i8, i8* %scevgep570, i64 %150
  %scevgep571572 = bitcast i8* %scevgep571 to double*
  %_p_scalar_573 = load double, double* %scevgep571572, align 8, !alias.scope !91, !noalias !93
  %p_mul.i = fmul fast double %_p_scalar_573, 1.200000e+00
  store double %p_mul.i, double* %scevgep571572, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next568 = add nuw nsw i64 %polly.indvar567, 1
  %exitcond924.not = icmp eq i64 %polly.indvar_next568, %polly.indvar561
  br i1 %exitcond924.not, label %polly.loop_exit566, label %polly.loop_header564, !llvm.loop !99

polly.loop_header574:                             ; preds = %polly.loop_header574.preheader, %polly.loop_exit598
  %polly.indvar577 = phi i64 [ %polly.indvar_next578, %polly.loop_exit598 ], [ 0, %polly.loop_header574.preheader ]
  %151 = mul nuw nsw i64 %polly.indvar577, 160
  br label %polly.loop_header580

polly.loop_exit598:                               ; preds = %polly.loop_exit620
  %polly.indvar_next578 = add nuw nsw i64 %polly.indvar577, 1
  %exitcond923.not = icmp eq i64 %polly.indvar_next578, 3
  br i1 %exitcond923.not, label %polly.exiting471, label %polly.loop_header574

polly.loop_header580:                             ; preds = %polly.loop_header580, %polly.loop_header574
  %polly.indvar583 = phi i64 [ 0, %polly.loop_header574 ], [ %polly.indvar_next584, %polly.loop_header580 ]
  %152 = mul nuw nsw i64 %polly.indvar583, 160
  %scevgep906 = getelementptr i8, i8* %malloccall474, i64 %152
  %153 = mul nuw nsw i64 %polly.indvar583, 480
  %154 = add nuw nsw i64 %151, %153
  %scevgep907 = getelementptr i8, i8* %call2, i64 %154
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %scevgep906, i8* noundef nonnull align 8 dereferenceable(160) %scevgep907, i64 160, i1 false)
  %polly.indvar_next584 = add nuw nsw i64 %polly.indvar583, 1
  %exitcond908.not = icmp eq i64 %polly.indvar_next584, 80
  br i1 %exitcond908.not, label %polly.loop_header596, label %polly.loop_header580

polly.loop_header596:                             ; preds = %polly.loop_header580, %polly.loop_exit620
  %indvars.iv915 = phi i64 [ %indvars.iv.next916, %polly.loop_exit620 ], [ 1, %polly.loop_header580 ]
  %indvars.iv912 = phi i64 [ %indvars.iv.next913, %polly.loop_exit620 ], [ 4, %polly.loop_header580 ]
  %polly.indvar599 = phi i64 [ %polly.indvar_next600, %polly.loop_exit620 ], [ 0, %polly.loop_header580 ]
  br label %polly.loop_header602

polly.loop_exit620:                               ; preds = %polly.loop_exit632.3
  %polly.indvar_next600 = add nuw nsw i64 %polly.indvar599, 1
  %indvars.iv.next913 = add nuw nsw i64 %indvars.iv912, 4
  %indvars.iv.next916 = add nuw nsw i64 %indvars.iv915, 4
  %exitcond922.not = icmp eq i64 %polly.indvar_next600, 20
  br i1 %exitcond922.not, label %polly.loop_exit598, label %polly.loop_header596

polly.loop_header602:                             ; preds = %polly.loop_header602, %polly.loop_header596
  %polly.indvar605 = phi i64 [ 0, %polly.loop_header596 ], [ %polly.indvar_next606, %polly.loop_header602 ]
  %155 = mul nuw nsw i64 %polly.indvar605, 160
  %scevgep910 = getelementptr i8, i8* %malloccall472, i64 %155
  %156 = mul nuw nsw i64 %polly.indvar605, 480
  %157 = add nuw nsw i64 %151, %156
  %scevgep911 = getelementptr i8, i8* %call1, i64 %157
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %scevgep910, i8* noundef nonnull align 8 dereferenceable(160) %scevgep911, i64 160, i1 false)
  %polly.indvar_next606 = add nuw nsw i64 %polly.indvar605, 1
  %exitcond914.not = icmp eq i64 %polly.indvar_next606, %indvars.iv912
  br i1 %exitcond914.not, label %polly.loop_header618.preheader, label %polly.loop_header602

polly.loop_header618.preheader:                   ; preds = %polly.loop_header602
  %158 = shl nuw nsw i64 %polly.indvar599, 2
  %polly.access.mul.Packed_MemRef_call2475640 = mul nuw nsw i64 %polly.indvar599, 80
  %159 = mul nuw nsw i64 %polly.indvar599, 2560
  %160 = or i64 %158, 1
  %polly.access.mul.Packed_MemRef_call2475640.1 = mul nuw nsw i64 %160, 20
  %161 = mul nuw nsw i64 %160, 640
  %162 = or i64 %158, 2
  %polly.access.mul.Packed_MemRef_call2475640.2 = mul nuw nsw i64 %162, 20
  %163 = mul nuw nsw i64 %162, 640
  %164 = or i64 %158, 3
  %polly.access.mul.Packed_MemRef_call2475640.3 = mul nuw nsw i64 %164, 20
  %165 = mul nuw nsw i64 %164, 640
  %166 = add nuw nsw i64 %indvars.iv915, 2
  br label %polly.loop_header618

polly.loop_header618:                             ; preds = %polly.loop_header618.preheader, %polly.loop_exit632.3
  %polly.indvar621 = phi i64 [ %polly.indvar_next622, %polly.loop_exit632.3 ], [ 0, %polly.loop_header618.preheader ]
  %polly.access.add.Packed_MemRef_call2475641 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2475640, %polly.indvar621
  %polly.access.Packed_MemRef_call2475642 = getelementptr double, double* %Packed_MemRef_call2475, i64 %polly.access.add.Packed_MemRef_call2475641
  %_p_scalar_643 = load double, double* %polly.access.Packed_MemRef_call2475642, align 8
  %polly.access.Packed_MemRef_call1473650 = getelementptr double, double* %Packed_MemRef_call1473, i64 %polly.access.add.Packed_MemRef_call2475641
  %_p_scalar_651 = load double, double* %polly.access.Packed_MemRef_call1473650, align 8
  br label %polly.loop_header630

polly.loop_exit632:                               ; preds = %polly.loop_header630
  %polly.access.add.Packed_MemRef_call2475641.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2475640.1, %polly.indvar621
  %polly.access.Packed_MemRef_call2475642.1 = getelementptr double, double* %Packed_MemRef_call2475, i64 %polly.access.add.Packed_MemRef_call2475641.1
  %_p_scalar_643.1 = load double, double* %polly.access.Packed_MemRef_call2475642.1, align 8
  %polly.access.Packed_MemRef_call1473650.1 = getelementptr double, double* %Packed_MemRef_call1473, i64 %polly.access.add.Packed_MemRef_call2475641.1
  %_p_scalar_651.1 = load double, double* %polly.access.Packed_MemRef_call1473650.1, align 8
  br label %polly.loop_header630.1

polly.loop_header630:                             ; preds = %polly.loop_header630, %polly.loop_header618
  %polly.indvar633 = phi i64 [ 0, %polly.loop_header618 ], [ %polly.indvar_next634, %polly.loop_header630 ]
  %polly.access.mul.Packed_MemRef_call1473636 = mul nuw nsw i64 %polly.indvar633, 20
  %polly.access.add.Packed_MemRef_call1473637 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1473636, %polly.indvar621
  %polly.access.Packed_MemRef_call1473638 = getelementptr double, double* %Packed_MemRef_call1473, i64 %polly.access.add.Packed_MemRef_call1473637
  %_p_scalar_639 = load double, double* %polly.access.Packed_MemRef_call1473638, align 8
  %p_mul27.i = fmul fast double %_p_scalar_643, %_p_scalar_639
  %polly.access.Packed_MemRef_call2475646 = getelementptr double, double* %Packed_MemRef_call2475, i64 %polly.access.add.Packed_MemRef_call1473637
  %_p_scalar_647 = load double, double* %polly.access.Packed_MemRef_call2475646, align 8
  %p_mul37.i = fmul fast double %_p_scalar_651, %_p_scalar_647
  %167 = shl nuw nsw i64 %polly.indvar633, 3
  %168 = add nuw nsw i64 %167, %159
  %scevgep652 = getelementptr i8, i8* %call, i64 %168
  %scevgep652653 = bitcast i8* %scevgep652 to double*
  %_p_scalar_654 = load double, double* %scevgep652653, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_654
  store double %p_add42.i, double* %scevgep652653, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next634 = add nuw nsw i64 %polly.indvar633, 1
  %exitcond919.not = icmp eq i64 %polly.indvar_next634, %indvars.iv915
  br i1 %exitcond919.not, label %polly.loop_exit632, label %polly.loop_header630

polly.loop_header793:                             ; preds = %entry, %polly.loop_exit801
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %entry ]
  %169 = mul nuw nsw i64 %polly.indvar796, 640
  %170 = trunc i64 %polly.indvar796 to i32
  %broadcast.splatinsert1034 = insertelement <4 x i32> poison, i32 %170, i32 0
  %broadcast.splat1035 = shufflevector <4 x i32> %broadcast.splatinsert1034, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1024

vector.body1024:                                  ; preds = %vector.body1024, %polly.loop_header793
  %index1026 = phi i64 [ 0, %polly.loop_header793 ], [ %index.next1027, %vector.body1024 ]
  %vec.ind1032 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793 ], [ %vec.ind.next1033, %vector.body1024 ]
  %171 = mul <4 x i32> %vec.ind1032, %broadcast.splat1035
  %172 = add <4 x i32> %171, <i32 3, i32 3, i32 3, i32 3>
  %173 = urem <4 x i32> %172, <i32 80, i32 80, i32 80, i32 80>
  %174 = sitofp <4 x i32> %173 to <4 x double>
  %175 = fmul fast <4 x double> %174, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %176 = shl i64 %index1026, 3
  %177 = add nuw nsw i64 %176, %169
  %178 = getelementptr i8, i8* %call, i64 %177
  %179 = bitcast i8* %178 to <4 x double>*
  store <4 x double> %175, <4 x double>* %179, align 8, !alias.scope !100, !noalias !102
  %index.next1027 = add i64 %index1026, 4
  %vec.ind.next1033 = add <4 x i32> %vec.ind1032, <i32 4, i32 4, i32 4, i32 4>
  %180 = icmp eq i64 %index.next1027, 32
  br i1 %180, label %polly.loop_exit801, label %vector.body1024, !llvm.loop !105

polly.loop_exit801:                               ; preds = %vector.body1024
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %exitcond944.not = icmp eq i64 %polly.indvar_next797, 32
  br i1 %exitcond944.not, label %polly.loop_header793.1, label %polly.loop_header793

polly.loop_header820:                             ; preds = %polly.loop_exit801.2.2, %polly.loop_exit828
  %polly.indvar823 = phi i64 [ %polly.indvar_next824, %polly.loop_exit828 ], [ 0, %polly.loop_exit801.2.2 ]
  %181 = mul nuw nsw i64 %polly.indvar823, 480
  %182 = trunc i64 %polly.indvar823 to i32
  %broadcast.splatinsert1148 = insertelement <4 x i32> poison, i32 %182, i32 0
  %broadcast.splat1149 = shufflevector <4 x i32> %broadcast.splatinsert1148, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1138

vector.body1138:                                  ; preds = %vector.body1138, %polly.loop_header820
  %index1140 = phi i64 [ 0, %polly.loop_header820 ], [ %index.next1141, %vector.body1138 ]
  %vec.ind1146 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header820 ], [ %vec.ind.next1147, %vector.body1138 ]
  %183 = mul <4 x i32> %vec.ind1146, %broadcast.splat1149
  %184 = add <4 x i32> %183, <i32 2, i32 2, i32 2, i32 2>
  %185 = urem <4 x i32> %184, <i32 60, i32 60, i32 60, i32 60>
  %186 = sitofp <4 x i32> %185 to <4 x double>
  %187 = fmul fast <4 x double> %186, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %188 = shl i64 %index1140, 3
  %189 = add i64 %188, %181
  %190 = getelementptr i8, i8* %call2, i64 %189
  %191 = bitcast i8* %190 to <4 x double>*
  store <4 x double> %187, <4 x double>* %191, align 8, !alias.scope !104, !noalias !106
  %index.next1141 = add i64 %index1140, 4
  %vec.ind.next1147 = add <4 x i32> %vec.ind1146, <i32 4, i32 4, i32 4, i32 4>
  %192 = icmp eq i64 %index.next1141, 32
  br i1 %192, label %polly.loop_exit828, label %vector.body1138, !llvm.loop !107

polly.loop_exit828:                               ; preds = %vector.body1138
  %polly.indvar_next824 = add nuw nsw i64 %polly.indvar823, 1
  %exitcond935.not = icmp eq i64 %polly.indvar_next824, 32
  br i1 %exitcond935.not, label %polly.loop_header820.1, label %polly.loop_header820

polly.loop_header846:                             ; preds = %polly.loop_exit828.1.2, %polly.loop_exit854
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %polly.loop_exit828.1.2 ]
  %193 = mul nuw nsw i64 %polly.indvar849, 480
  %194 = trunc i64 %polly.indvar849 to i32
  %broadcast.splatinsert1226 = insertelement <4 x i32> poison, i32 %194, i32 0
  %broadcast.splat1227 = shufflevector <4 x i32> %broadcast.splatinsert1226, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1216

vector.body1216:                                  ; preds = %vector.body1216, %polly.loop_header846
  %index1218 = phi i64 [ 0, %polly.loop_header846 ], [ %index.next1219, %vector.body1216 ]
  %vec.ind1224 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header846 ], [ %vec.ind.next1225, %vector.body1216 ]
  %195 = mul <4 x i32> %vec.ind1224, %broadcast.splat1227
  %196 = add <4 x i32> %195, <i32 1, i32 1, i32 1, i32 1>
  %197 = urem <4 x i32> %196, <i32 80, i32 80, i32 80, i32 80>
  %198 = sitofp <4 x i32> %197 to <4 x double>
  %199 = fmul fast <4 x double> %198, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %200 = shl i64 %index1218, 3
  %201 = add i64 %200, %193
  %202 = getelementptr i8, i8* %call1, i64 %201
  %203 = bitcast i8* %202 to <4 x double>*
  store <4 x double> %199, <4 x double>* %203, align 8, !alias.scope !103, !noalias !108
  %index.next1219 = add i64 %index1218, 4
  %vec.ind.next1225 = add <4 x i32> %vec.ind1224, <i32 4, i32 4, i32 4, i32 4>
  %204 = icmp eq i64 %index.next1219, 32
  br i1 %204, label %polly.loop_exit854, label %vector.body1216, !llvm.loop !109

polly.loop_exit854:                               ; preds = %vector.body1216
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %exitcond929.not = icmp eq i64 %polly.indvar_next850, 32
  br i1 %exitcond929.not, label %polly.loop_header846.1, label %polly.loop_header846

polly.loop_header256.1:                           ; preds = %polly.loop_header256.1, %polly.loop_exit258
  %polly.indvar259.1 = phi i64 [ 0, %polly.loop_exit258 ], [ %polly.indvar_next260.1, %polly.loop_header256.1 ]
  %polly.access.mul.Packed_MemRef_call1262.1 = mul nuw nsw i64 %polly.indvar259.1, 20
  %polly.access.add.Packed_MemRef_call1263.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1262.1, %polly.indvar247
  %polly.access.Packed_MemRef_call1264.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.1
  %_p_scalar_265.1 = load double, double* %polly.access.Packed_MemRef_call1264.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_269.1, %_p_scalar_265.1
  %polly.access.Packed_MemRef_call2272.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1263.1
  %_p_scalar_273.1 = load double, double* %polly.access.Packed_MemRef_call2272.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_277.1, %_p_scalar_273.1
  %205 = shl nuw nsw i64 %polly.indvar259.1, 3
  %206 = add nuw nsw i64 %205, %107
  %scevgep278.1 = getelementptr i8, i8* %call, i64 %206
  %scevgep278279.1 = bitcast i8* %scevgep278.1 to double*
  %_p_scalar_280.1 = load double, double* %scevgep278279.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_280.1
  store double %p_add42.i118.1, double* %scevgep278279.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next260.1 = add nuw nsw i64 %polly.indvar259.1, 1
  %exitcond877.1.not = icmp eq i64 %polly.indvar259.1, %indvars.iv873
  br i1 %exitcond877.1.not, label %polly.loop_exit258.1, label %polly.loop_header256.1

polly.loop_exit258.1:                             ; preds = %polly.loop_header256.1
  %polly.access.add.Packed_MemRef_call2267.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2266.2, %polly.indvar247
  %polly.access.Packed_MemRef_call2268.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2267.2
  %_p_scalar_269.2 = load double, double* %polly.access.Packed_MemRef_call2268.2, align 8
  %polly.access.Packed_MemRef_call1276.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2267.2
  %_p_scalar_277.2 = load double, double* %polly.access.Packed_MemRef_call1276.2, align 8
  br label %polly.loop_header256.2

polly.loop_header256.2:                           ; preds = %polly.loop_header256.2, %polly.loop_exit258.1
  %polly.indvar259.2 = phi i64 [ 0, %polly.loop_exit258.1 ], [ %polly.indvar_next260.2, %polly.loop_header256.2 ]
  %polly.access.mul.Packed_MemRef_call1262.2 = mul nuw nsw i64 %polly.indvar259.2, 20
  %polly.access.add.Packed_MemRef_call1263.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1262.2, %polly.indvar247
  %polly.access.Packed_MemRef_call1264.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.2
  %_p_scalar_265.2 = load double, double* %polly.access.Packed_MemRef_call1264.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_269.2, %_p_scalar_265.2
  %polly.access.Packed_MemRef_call2272.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1263.2
  %_p_scalar_273.2 = load double, double* %polly.access.Packed_MemRef_call2272.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_277.2, %_p_scalar_273.2
  %207 = shl nuw nsw i64 %polly.indvar259.2, 3
  %208 = add nuw nsw i64 %207, %109
  %scevgep278.2 = getelementptr i8, i8* %call, i64 %208
  %scevgep278279.2 = bitcast i8* %scevgep278.2 to double*
  %_p_scalar_280.2 = load double, double* %scevgep278279.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_280.2
  store double %p_add42.i118.2, double* %scevgep278279.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next260.2 = add nuw nsw i64 %polly.indvar259.2, 1
  %209 = add nuw nsw i64 %indvars.iv873, 1
  %exitcond877.2.not = icmp eq i64 %polly.indvar259.2, %209
  br i1 %exitcond877.2.not, label %polly.loop_exit258.2, label %polly.loop_header256.2

polly.loop_exit258.2:                             ; preds = %polly.loop_header256.2
  %polly.access.add.Packed_MemRef_call2267.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2266.3, %polly.indvar247
  %polly.access.Packed_MemRef_call2268.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2267.3
  %_p_scalar_269.3 = load double, double* %polly.access.Packed_MemRef_call2268.3, align 8
  %polly.access.Packed_MemRef_call1276.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2267.3
  %_p_scalar_277.3 = load double, double* %polly.access.Packed_MemRef_call1276.3, align 8
  br label %polly.loop_header256.3

polly.loop_header256.3:                           ; preds = %polly.loop_header256.3, %polly.loop_exit258.2
  %polly.indvar259.3 = phi i64 [ 0, %polly.loop_exit258.2 ], [ %polly.indvar_next260.3, %polly.loop_header256.3 ]
  %polly.access.mul.Packed_MemRef_call1262.3 = mul nuw nsw i64 %polly.indvar259.3, 20
  %polly.access.add.Packed_MemRef_call1263.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1262.3, %polly.indvar247
  %polly.access.Packed_MemRef_call1264.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.3
  %_p_scalar_265.3 = load double, double* %polly.access.Packed_MemRef_call1264.3, align 8
  %p_mul27.i112.3 = fmul fast double %_p_scalar_269.3, %_p_scalar_265.3
  %polly.access.Packed_MemRef_call2272.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1263.3
  %_p_scalar_273.3 = load double, double* %polly.access.Packed_MemRef_call2272.3, align 8
  %p_mul37.i114.3 = fmul fast double %_p_scalar_277.3, %_p_scalar_273.3
  %210 = shl nuw nsw i64 %polly.indvar259.3, 3
  %211 = add nuw nsw i64 %210, %111
  %scevgep278.3 = getelementptr i8, i8* %call, i64 %211
  %scevgep278279.3 = bitcast i8* %scevgep278.3 to double*
  %_p_scalar_280.3 = load double, double* %scevgep278279.3, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_280.3
  store double %p_add42.i118.3, double* %scevgep278279.3, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next260.3 = add nuw nsw i64 %polly.indvar259.3, 1
  %exitcond877.3.not = icmp eq i64 %polly.indvar259.3, %112
  br i1 %exitcond877.3.not, label %polly.loop_exit258.3, label %polly.loop_header256.3

polly.loop_exit258.3:                             ; preds = %polly.loop_header256.3
  %polly.indvar_next248 = add nuw nsw i64 %polly.indvar247, 1
  %exitcond879.not = icmp eq i64 %polly.indvar_next248, 20
  br i1 %exitcond879.not, label %polly.loop_exit246, label %polly.loop_header244

polly.loop_header443.1:                           ; preds = %polly.loop_header443.1, %polly.loop_exit445
  %polly.indvar446.1 = phi i64 [ 0, %polly.loop_exit445 ], [ %polly.indvar_next447.1, %polly.loop_header443.1 ]
  %polly.access.mul.Packed_MemRef_call1286449.1 = mul nuw nsw i64 %polly.indvar446.1, 20
  %polly.access.add.Packed_MemRef_call1286450.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1286449.1, %polly.indvar434
  %polly.access.Packed_MemRef_call1286451.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286450.1
  %_p_scalar_452.1 = load double, double* %polly.access.Packed_MemRef_call1286451.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_456.1, %_p_scalar_452.1
  %polly.access.Packed_MemRef_call2288459.1 = getelementptr double, double* %Packed_MemRef_call2288, i64 %polly.access.add.Packed_MemRef_call1286450.1
  %_p_scalar_460.1 = load double, double* %polly.access.Packed_MemRef_call2288459.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_464.1, %_p_scalar_460.1
  %212 = shl nuw nsw i64 %polly.indvar446.1, 3
  %213 = add nuw nsw i64 %212, %134
  %scevgep465.1 = getelementptr i8, i8* %call, i64 %213
  %scevgep465466.1 = bitcast i8* %scevgep465.1 to double*
  %_p_scalar_467.1 = load double, double* %scevgep465466.1, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_467.1
  store double %p_add42.i79.1, double* %scevgep465466.1, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next447.1 = add nuw nsw i64 %polly.indvar446.1, 1
  %exitcond898.1.not = icmp eq i64 %polly.indvar446.1, %indvars.iv894
  br i1 %exitcond898.1.not, label %polly.loop_exit445.1, label %polly.loop_header443.1

polly.loop_exit445.1:                             ; preds = %polly.loop_header443.1
  %polly.access.add.Packed_MemRef_call2288454.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2288453.2, %polly.indvar434
  %polly.access.Packed_MemRef_call2288455.2 = getelementptr double, double* %Packed_MemRef_call2288, i64 %polly.access.add.Packed_MemRef_call2288454.2
  %_p_scalar_456.2 = load double, double* %polly.access.Packed_MemRef_call2288455.2, align 8
  %polly.access.Packed_MemRef_call1286463.2 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call2288454.2
  %_p_scalar_464.2 = load double, double* %polly.access.Packed_MemRef_call1286463.2, align 8
  br label %polly.loop_header443.2

polly.loop_header443.2:                           ; preds = %polly.loop_header443.2, %polly.loop_exit445.1
  %polly.indvar446.2 = phi i64 [ 0, %polly.loop_exit445.1 ], [ %polly.indvar_next447.2, %polly.loop_header443.2 ]
  %polly.access.mul.Packed_MemRef_call1286449.2 = mul nuw nsw i64 %polly.indvar446.2, 20
  %polly.access.add.Packed_MemRef_call1286450.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1286449.2, %polly.indvar434
  %polly.access.Packed_MemRef_call1286451.2 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286450.2
  %_p_scalar_452.2 = load double, double* %polly.access.Packed_MemRef_call1286451.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_456.2, %_p_scalar_452.2
  %polly.access.Packed_MemRef_call2288459.2 = getelementptr double, double* %Packed_MemRef_call2288, i64 %polly.access.add.Packed_MemRef_call1286450.2
  %_p_scalar_460.2 = load double, double* %polly.access.Packed_MemRef_call2288459.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_464.2, %_p_scalar_460.2
  %214 = shl nuw nsw i64 %polly.indvar446.2, 3
  %215 = add nuw nsw i64 %214, %136
  %scevgep465.2 = getelementptr i8, i8* %call, i64 %215
  %scevgep465466.2 = bitcast i8* %scevgep465.2 to double*
  %_p_scalar_467.2 = load double, double* %scevgep465466.2, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_467.2
  store double %p_add42.i79.2, double* %scevgep465466.2, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next447.2 = add nuw nsw i64 %polly.indvar446.2, 1
  %216 = add nuw nsw i64 %indvars.iv894, 1
  %exitcond898.2.not = icmp eq i64 %polly.indvar446.2, %216
  br i1 %exitcond898.2.not, label %polly.loop_exit445.2, label %polly.loop_header443.2

polly.loop_exit445.2:                             ; preds = %polly.loop_header443.2
  %polly.access.add.Packed_MemRef_call2288454.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2288453.3, %polly.indvar434
  %polly.access.Packed_MemRef_call2288455.3 = getelementptr double, double* %Packed_MemRef_call2288, i64 %polly.access.add.Packed_MemRef_call2288454.3
  %_p_scalar_456.3 = load double, double* %polly.access.Packed_MemRef_call2288455.3, align 8
  %polly.access.Packed_MemRef_call1286463.3 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call2288454.3
  %_p_scalar_464.3 = load double, double* %polly.access.Packed_MemRef_call1286463.3, align 8
  br label %polly.loop_header443.3

polly.loop_header443.3:                           ; preds = %polly.loop_header443.3, %polly.loop_exit445.2
  %polly.indvar446.3 = phi i64 [ 0, %polly.loop_exit445.2 ], [ %polly.indvar_next447.3, %polly.loop_header443.3 ]
  %polly.access.mul.Packed_MemRef_call1286449.3 = mul nuw nsw i64 %polly.indvar446.3, 20
  %polly.access.add.Packed_MemRef_call1286450.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1286449.3, %polly.indvar434
  %polly.access.Packed_MemRef_call1286451.3 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286450.3
  %_p_scalar_452.3 = load double, double* %polly.access.Packed_MemRef_call1286451.3, align 8
  %p_mul27.i73.3 = fmul fast double %_p_scalar_456.3, %_p_scalar_452.3
  %polly.access.Packed_MemRef_call2288459.3 = getelementptr double, double* %Packed_MemRef_call2288, i64 %polly.access.add.Packed_MemRef_call1286450.3
  %_p_scalar_460.3 = load double, double* %polly.access.Packed_MemRef_call2288459.3, align 8
  %p_mul37.i75.3 = fmul fast double %_p_scalar_464.3, %_p_scalar_460.3
  %217 = shl nuw nsw i64 %polly.indvar446.3, 3
  %218 = add nuw nsw i64 %217, %138
  %scevgep465.3 = getelementptr i8, i8* %call, i64 %218
  %scevgep465466.3 = bitcast i8* %scevgep465.3 to double*
  %_p_scalar_467.3 = load double, double* %scevgep465466.3, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_467.3
  store double %p_add42.i79.3, double* %scevgep465466.3, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next447.3 = add nuw nsw i64 %polly.indvar446.3, 1
  %exitcond898.3.not = icmp eq i64 %polly.indvar446.3, %139
  br i1 %exitcond898.3.not, label %polly.loop_exit445.3, label %polly.loop_header443.3

polly.loop_exit445.3:                             ; preds = %polly.loop_header443.3
  %polly.indvar_next435 = add nuw nsw i64 %polly.indvar434, 1
  %exitcond900.not = icmp eq i64 %polly.indvar_next435, 20
  br i1 %exitcond900.not, label %polly.loop_exit433, label %polly.loop_header431

polly.loop_header630.1:                           ; preds = %polly.loop_header630.1, %polly.loop_exit632
  %polly.indvar633.1 = phi i64 [ 0, %polly.loop_exit632 ], [ %polly.indvar_next634.1, %polly.loop_header630.1 ]
  %polly.access.mul.Packed_MemRef_call1473636.1 = mul nuw nsw i64 %polly.indvar633.1, 20
  %polly.access.add.Packed_MemRef_call1473637.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1473636.1, %polly.indvar621
  %polly.access.Packed_MemRef_call1473638.1 = getelementptr double, double* %Packed_MemRef_call1473, i64 %polly.access.add.Packed_MemRef_call1473637.1
  %_p_scalar_639.1 = load double, double* %polly.access.Packed_MemRef_call1473638.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_643.1, %_p_scalar_639.1
  %polly.access.Packed_MemRef_call2475646.1 = getelementptr double, double* %Packed_MemRef_call2475, i64 %polly.access.add.Packed_MemRef_call1473637.1
  %_p_scalar_647.1 = load double, double* %polly.access.Packed_MemRef_call2475646.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_651.1, %_p_scalar_647.1
  %219 = shl nuw nsw i64 %polly.indvar633.1, 3
  %220 = add nuw nsw i64 %219, %161
  %scevgep652.1 = getelementptr i8, i8* %call, i64 %220
  %scevgep652653.1 = bitcast i8* %scevgep652.1 to double*
  %_p_scalar_654.1 = load double, double* %scevgep652653.1, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_654.1
  store double %p_add42.i.1, double* %scevgep652653.1, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next634.1 = add nuw nsw i64 %polly.indvar633.1, 1
  %exitcond919.1.not = icmp eq i64 %polly.indvar633.1, %indvars.iv915
  br i1 %exitcond919.1.not, label %polly.loop_exit632.1, label %polly.loop_header630.1

polly.loop_exit632.1:                             ; preds = %polly.loop_header630.1
  %polly.access.add.Packed_MemRef_call2475641.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2475640.2, %polly.indvar621
  %polly.access.Packed_MemRef_call2475642.2 = getelementptr double, double* %Packed_MemRef_call2475, i64 %polly.access.add.Packed_MemRef_call2475641.2
  %_p_scalar_643.2 = load double, double* %polly.access.Packed_MemRef_call2475642.2, align 8
  %polly.access.Packed_MemRef_call1473650.2 = getelementptr double, double* %Packed_MemRef_call1473, i64 %polly.access.add.Packed_MemRef_call2475641.2
  %_p_scalar_651.2 = load double, double* %polly.access.Packed_MemRef_call1473650.2, align 8
  br label %polly.loop_header630.2

polly.loop_header630.2:                           ; preds = %polly.loop_header630.2, %polly.loop_exit632.1
  %polly.indvar633.2 = phi i64 [ 0, %polly.loop_exit632.1 ], [ %polly.indvar_next634.2, %polly.loop_header630.2 ]
  %polly.access.mul.Packed_MemRef_call1473636.2 = mul nuw nsw i64 %polly.indvar633.2, 20
  %polly.access.add.Packed_MemRef_call1473637.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1473636.2, %polly.indvar621
  %polly.access.Packed_MemRef_call1473638.2 = getelementptr double, double* %Packed_MemRef_call1473, i64 %polly.access.add.Packed_MemRef_call1473637.2
  %_p_scalar_639.2 = load double, double* %polly.access.Packed_MemRef_call1473638.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_643.2, %_p_scalar_639.2
  %polly.access.Packed_MemRef_call2475646.2 = getelementptr double, double* %Packed_MemRef_call2475, i64 %polly.access.add.Packed_MemRef_call1473637.2
  %_p_scalar_647.2 = load double, double* %polly.access.Packed_MemRef_call2475646.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_651.2, %_p_scalar_647.2
  %221 = shl nuw nsw i64 %polly.indvar633.2, 3
  %222 = add nuw nsw i64 %221, %163
  %scevgep652.2 = getelementptr i8, i8* %call, i64 %222
  %scevgep652653.2 = bitcast i8* %scevgep652.2 to double*
  %_p_scalar_654.2 = load double, double* %scevgep652653.2, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_654.2
  store double %p_add42.i.2, double* %scevgep652653.2, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next634.2 = add nuw nsw i64 %polly.indvar633.2, 1
  %223 = add nuw nsw i64 %indvars.iv915, 1
  %exitcond919.2.not = icmp eq i64 %polly.indvar633.2, %223
  br i1 %exitcond919.2.not, label %polly.loop_exit632.2, label %polly.loop_header630.2

polly.loop_exit632.2:                             ; preds = %polly.loop_header630.2
  %polly.access.add.Packed_MemRef_call2475641.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2475640.3, %polly.indvar621
  %polly.access.Packed_MemRef_call2475642.3 = getelementptr double, double* %Packed_MemRef_call2475, i64 %polly.access.add.Packed_MemRef_call2475641.3
  %_p_scalar_643.3 = load double, double* %polly.access.Packed_MemRef_call2475642.3, align 8
  %polly.access.Packed_MemRef_call1473650.3 = getelementptr double, double* %Packed_MemRef_call1473, i64 %polly.access.add.Packed_MemRef_call2475641.3
  %_p_scalar_651.3 = load double, double* %polly.access.Packed_MemRef_call1473650.3, align 8
  br label %polly.loop_header630.3

polly.loop_header630.3:                           ; preds = %polly.loop_header630.3, %polly.loop_exit632.2
  %polly.indvar633.3 = phi i64 [ 0, %polly.loop_exit632.2 ], [ %polly.indvar_next634.3, %polly.loop_header630.3 ]
  %polly.access.mul.Packed_MemRef_call1473636.3 = mul nuw nsw i64 %polly.indvar633.3, 20
  %polly.access.add.Packed_MemRef_call1473637.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1473636.3, %polly.indvar621
  %polly.access.Packed_MemRef_call1473638.3 = getelementptr double, double* %Packed_MemRef_call1473, i64 %polly.access.add.Packed_MemRef_call1473637.3
  %_p_scalar_639.3 = load double, double* %polly.access.Packed_MemRef_call1473638.3, align 8
  %p_mul27.i.3 = fmul fast double %_p_scalar_643.3, %_p_scalar_639.3
  %polly.access.Packed_MemRef_call2475646.3 = getelementptr double, double* %Packed_MemRef_call2475, i64 %polly.access.add.Packed_MemRef_call1473637.3
  %_p_scalar_647.3 = load double, double* %polly.access.Packed_MemRef_call2475646.3, align 8
  %p_mul37.i.3 = fmul fast double %_p_scalar_651.3, %_p_scalar_647.3
  %224 = shl nuw nsw i64 %polly.indvar633.3, 3
  %225 = add nuw nsw i64 %224, %165
  %scevgep652.3 = getelementptr i8, i8* %call, i64 %225
  %scevgep652653.3 = bitcast i8* %scevgep652.3 to double*
  %_p_scalar_654.3 = load double, double* %scevgep652653.3, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_654.3
  store double %p_add42.i.3, double* %scevgep652653.3, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next634.3 = add nuw nsw i64 %polly.indvar633.3, 1
  %exitcond919.3.not = icmp eq i64 %polly.indvar633.3, %166
  br i1 %exitcond919.3.not, label %polly.loop_exit632.3, label %polly.loop_header630.3

polly.loop_exit632.3:                             ; preds = %polly.loop_header630.3
  %polly.indvar_next622 = add nuw nsw i64 %polly.indvar621, 1
  %exitcond921.not = icmp eq i64 %polly.indvar_next622, 20
  br i1 %exitcond921.not, label %polly.loop_exit620, label %polly.loop_header618

polly.loop_header846.1:                           ; preds = %polly.loop_exit854, %polly.loop_exit854.1
  %polly.indvar849.1 = phi i64 [ %polly.indvar_next850.1, %polly.loop_exit854.1 ], [ 0, %polly.loop_exit854 ]
  %226 = mul nuw nsw i64 %polly.indvar849.1, 480
  %227 = trunc i64 %polly.indvar849.1 to i32
  %broadcast.splatinsert1238 = insertelement <4 x i32> poison, i32 %227, i32 0
  %broadcast.splat1239 = shufflevector <4 x i32> %broadcast.splatinsert1238, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1230

vector.body1230:                                  ; preds = %vector.body1230, %polly.loop_header846.1
  %index1232 = phi i64 [ 0, %polly.loop_header846.1 ], [ %index.next1233, %vector.body1230 ]
  %vec.ind1236 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header846.1 ], [ %vec.ind.next1237, %vector.body1230 ]
  %228 = add nuw nsw <4 x i64> %vec.ind1236, <i64 32, i64 32, i64 32, i64 32>
  %229 = trunc <4 x i64> %228 to <4 x i32>
  %230 = mul <4 x i32> %broadcast.splat1239, %229
  %231 = add <4 x i32> %230, <i32 1, i32 1, i32 1, i32 1>
  %232 = urem <4 x i32> %231, <i32 80, i32 80, i32 80, i32 80>
  %233 = sitofp <4 x i32> %232 to <4 x double>
  %234 = fmul fast <4 x double> %233, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %235 = extractelement <4 x i64> %228, i32 0
  %236 = shl i64 %235, 3
  %237 = add i64 %236, %226
  %238 = getelementptr i8, i8* %call1, i64 %237
  %239 = bitcast i8* %238 to <4 x double>*
  store <4 x double> %234, <4 x double>* %239, align 8, !alias.scope !103, !noalias !108
  %index.next1233 = add i64 %index1232, 4
  %vec.ind.next1237 = add <4 x i64> %vec.ind1236, <i64 4, i64 4, i64 4, i64 4>
  %240 = icmp eq i64 %index.next1233, 28
  br i1 %240, label %polly.loop_exit854.1, label %vector.body1230, !llvm.loop !110

polly.loop_exit854.1:                             ; preds = %vector.body1230
  %polly.indvar_next850.1 = add nuw nsw i64 %polly.indvar849.1, 1
  %exitcond929.1.not = icmp eq i64 %polly.indvar_next850.1, 32
  br i1 %exitcond929.1.not, label %polly.loop_header846.1949, label %polly.loop_header846.1

polly.loop_header846.1949:                        ; preds = %polly.loop_exit854.1, %polly.loop_exit854.1960
  %polly.indvar849.1948 = phi i64 [ %polly.indvar_next850.1958, %polly.loop_exit854.1960 ], [ 0, %polly.loop_exit854.1 ]
  %241 = add nuw nsw i64 %polly.indvar849.1948, 32
  %242 = mul nuw nsw i64 %241, 480
  %243 = trunc i64 %241 to i32
  %broadcast.splatinsert1252 = insertelement <4 x i32> poison, i32 %243, i32 0
  %broadcast.splat1253 = shufflevector <4 x i32> %broadcast.splatinsert1252, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1242

vector.body1242:                                  ; preds = %vector.body1242, %polly.loop_header846.1949
  %index1244 = phi i64 [ 0, %polly.loop_header846.1949 ], [ %index.next1245, %vector.body1242 ]
  %vec.ind1250 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header846.1949 ], [ %vec.ind.next1251, %vector.body1242 ]
  %244 = mul <4 x i32> %vec.ind1250, %broadcast.splat1253
  %245 = add <4 x i32> %244, <i32 1, i32 1, i32 1, i32 1>
  %246 = urem <4 x i32> %245, <i32 80, i32 80, i32 80, i32 80>
  %247 = sitofp <4 x i32> %246 to <4 x double>
  %248 = fmul fast <4 x double> %247, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %249 = shl i64 %index1244, 3
  %250 = add i64 %249, %242
  %251 = getelementptr i8, i8* %call1, i64 %250
  %252 = bitcast i8* %251 to <4 x double>*
  store <4 x double> %248, <4 x double>* %252, align 8, !alias.scope !103, !noalias !108
  %index.next1245 = add i64 %index1244, 4
  %vec.ind.next1251 = add <4 x i32> %vec.ind1250, <i32 4, i32 4, i32 4, i32 4>
  %253 = icmp eq i64 %index.next1245, 32
  br i1 %253, label %polly.loop_exit854.1960, label %vector.body1242, !llvm.loop !111

polly.loop_exit854.1960:                          ; preds = %vector.body1242
  %polly.indvar_next850.1958 = add nuw nsw i64 %polly.indvar849.1948, 1
  %exitcond929.1959.not = icmp eq i64 %polly.indvar_next850.1958, 32
  br i1 %exitcond929.1959.not, label %polly.loop_header846.1.1, label %polly.loop_header846.1949

polly.loop_header846.1.1:                         ; preds = %polly.loop_exit854.1960, %polly.loop_exit854.1.1
  %polly.indvar849.1.1 = phi i64 [ %polly.indvar_next850.1.1, %polly.loop_exit854.1.1 ], [ 0, %polly.loop_exit854.1960 ]
  %254 = add nuw nsw i64 %polly.indvar849.1.1, 32
  %255 = mul nuw nsw i64 %254, 480
  %256 = trunc i64 %254 to i32
  %broadcast.splatinsert1264 = insertelement <4 x i32> poison, i32 %256, i32 0
  %broadcast.splat1265 = shufflevector <4 x i32> %broadcast.splatinsert1264, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1256

vector.body1256:                                  ; preds = %vector.body1256, %polly.loop_header846.1.1
  %index1258 = phi i64 [ 0, %polly.loop_header846.1.1 ], [ %index.next1259, %vector.body1256 ]
  %vec.ind1262 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header846.1.1 ], [ %vec.ind.next1263, %vector.body1256 ]
  %257 = add nuw nsw <4 x i64> %vec.ind1262, <i64 32, i64 32, i64 32, i64 32>
  %258 = trunc <4 x i64> %257 to <4 x i32>
  %259 = mul <4 x i32> %broadcast.splat1265, %258
  %260 = add <4 x i32> %259, <i32 1, i32 1, i32 1, i32 1>
  %261 = urem <4 x i32> %260, <i32 80, i32 80, i32 80, i32 80>
  %262 = sitofp <4 x i32> %261 to <4 x double>
  %263 = fmul fast <4 x double> %262, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %264 = extractelement <4 x i64> %257, i32 0
  %265 = shl i64 %264, 3
  %266 = add i64 %265, %255
  %267 = getelementptr i8, i8* %call1, i64 %266
  %268 = bitcast i8* %267 to <4 x double>*
  store <4 x double> %263, <4 x double>* %268, align 8, !alias.scope !103, !noalias !108
  %index.next1259 = add i64 %index1258, 4
  %vec.ind.next1263 = add <4 x i64> %vec.ind1262, <i64 4, i64 4, i64 4, i64 4>
  %269 = icmp eq i64 %index.next1259, 28
  br i1 %269, label %polly.loop_exit854.1.1, label %vector.body1256, !llvm.loop !112

polly.loop_exit854.1.1:                           ; preds = %vector.body1256
  %polly.indvar_next850.1.1 = add nuw nsw i64 %polly.indvar849.1.1, 1
  %exitcond929.1.1.not = icmp eq i64 %polly.indvar_next850.1.1, 32
  br i1 %exitcond929.1.1.not, label %polly.loop_header846.2, label %polly.loop_header846.1.1

polly.loop_header846.2:                           ; preds = %polly.loop_exit854.1.1, %polly.loop_exit854.2
  %polly.indvar849.2 = phi i64 [ %polly.indvar_next850.2, %polly.loop_exit854.2 ], [ 0, %polly.loop_exit854.1.1 ]
  %270 = add nuw nsw i64 %polly.indvar849.2, 64
  %271 = mul nuw nsw i64 %270, 480
  %272 = trunc i64 %270 to i32
  %broadcast.splatinsert1278 = insertelement <4 x i32> poison, i32 %272, i32 0
  %broadcast.splat1279 = shufflevector <4 x i32> %broadcast.splatinsert1278, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1268

vector.body1268:                                  ; preds = %vector.body1268, %polly.loop_header846.2
  %index1270 = phi i64 [ 0, %polly.loop_header846.2 ], [ %index.next1271, %vector.body1268 ]
  %vec.ind1276 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header846.2 ], [ %vec.ind.next1277, %vector.body1268 ]
  %273 = mul <4 x i32> %vec.ind1276, %broadcast.splat1279
  %274 = add <4 x i32> %273, <i32 1, i32 1, i32 1, i32 1>
  %275 = urem <4 x i32> %274, <i32 80, i32 80, i32 80, i32 80>
  %276 = sitofp <4 x i32> %275 to <4 x double>
  %277 = fmul fast <4 x double> %276, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %278 = shl i64 %index1270, 3
  %279 = add i64 %278, %271
  %280 = getelementptr i8, i8* %call1, i64 %279
  %281 = bitcast i8* %280 to <4 x double>*
  store <4 x double> %277, <4 x double>* %281, align 8, !alias.scope !103, !noalias !108
  %index.next1271 = add i64 %index1270, 4
  %vec.ind.next1277 = add <4 x i32> %vec.ind1276, <i32 4, i32 4, i32 4, i32 4>
  %282 = icmp eq i64 %index.next1271, 32
  br i1 %282, label %polly.loop_exit854.2, label %vector.body1268, !llvm.loop !113

polly.loop_exit854.2:                             ; preds = %vector.body1268
  %polly.indvar_next850.2 = add nuw nsw i64 %polly.indvar849.2, 1
  %exitcond929.2.not = icmp eq i64 %polly.indvar_next850.2, 16
  br i1 %exitcond929.2.not, label %polly.loop_header846.1.2, label %polly.loop_header846.2

polly.loop_header846.1.2:                         ; preds = %polly.loop_exit854.2, %polly.loop_exit854.1.2
  %polly.indvar849.1.2 = phi i64 [ %polly.indvar_next850.1.2, %polly.loop_exit854.1.2 ], [ 0, %polly.loop_exit854.2 ]
  %283 = add nuw nsw i64 %polly.indvar849.1.2, 64
  %284 = mul nuw nsw i64 %283, 480
  %285 = trunc i64 %283 to i32
  %broadcast.splatinsert1290 = insertelement <4 x i32> poison, i32 %285, i32 0
  %broadcast.splat1291 = shufflevector <4 x i32> %broadcast.splatinsert1290, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1282

vector.body1282:                                  ; preds = %vector.body1282, %polly.loop_header846.1.2
  %index1284 = phi i64 [ 0, %polly.loop_header846.1.2 ], [ %index.next1285, %vector.body1282 ]
  %vec.ind1288 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header846.1.2 ], [ %vec.ind.next1289, %vector.body1282 ]
  %286 = add nuw nsw <4 x i64> %vec.ind1288, <i64 32, i64 32, i64 32, i64 32>
  %287 = trunc <4 x i64> %286 to <4 x i32>
  %288 = mul <4 x i32> %broadcast.splat1291, %287
  %289 = add <4 x i32> %288, <i32 1, i32 1, i32 1, i32 1>
  %290 = urem <4 x i32> %289, <i32 80, i32 80, i32 80, i32 80>
  %291 = sitofp <4 x i32> %290 to <4 x double>
  %292 = fmul fast <4 x double> %291, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %293 = extractelement <4 x i64> %286, i32 0
  %294 = shl i64 %293, 3
  %295 = add i64 %294, %284
  %296 = getelementptr i8, i8* %call1, i64 %295
  %297 = bitcast i8* %296 to <4 x double>*
  store <4 x double> %292, <4 x double>* %297, align 8, !alias.scope !103, !noalias !108
  %index.next1285 = add i64 %index1284, 4
  %vec.ind.next1289 = add <4 x i64> %vec.ind1288, <i64 4, i64 4, i64 4, i64 4>
  %298 = icmp eq i64 %index.next1285, 28
  br i1 %298, label %polly.loop_exit854.1.2, label %vector.body1282, !llvm.loop !114

polly.loop_exit854.1.2:                           ; preds = %vector.body1282
  %polly.indvar_next850.1.2 = add nuw nsw i64 %polly.indvar849.1.2, 1
  %exitcond929.1.2.not = icmp eq i64 %polly.indvar_next850.1.2, 16
  br i1 %exitcond929.1.2.not, label %init_array.exit, label %polly.loop_header846.1.2

polly.loop_header820.1:                           ; preds = %polly.loop_exit828, %polly.loop_exit828.1
  %polly.indvar823.1 = phi i64 [ %polly.indvar_next824.1, %polly.loop_exit828.1 ], [ 0, %polly.loop_exit828 ]
  %299 = mul nuw nsw i64 %polly.indvar823.1, 480
  %300 = trunc i64 %polly.indvar823.1 to i32
  %broadcast.splatinsert1160 = insertelement <4 x i32> poison, i32 %300, i32 0
  %broadcast.splat1161 = shufflevector <4 x i32> %broadcast.splatinsert1160, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1152

vector.body1152:                                  ; preds = %vector.body1152, %polly.loop_header820.1
  %index1154 = phi i64 [ 0, %polly.loop_header820.1 ], [ %index.next1155, %vector.body1152 ]
  %vec.ind1158 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header820.1 ], [ %vec.ind.next1159, %vector.body1152 ]
  %301 = add nuw nsw <4 x i64> %vec.ind1158, <i64 32, i64 32, i64 32, i64 32>
  %302 = trunc <4 x i64> %301 to <4 x i32>
  %303 = mul <4 x i32> %broadcast.splat1161, %302
  %304 = add <4 x i32> %303, <i32 2, i32 2, i32 2, i32 2>
  %305 = urem <4 x i32> %304, <i32 60, i32 60, i32 60, i32 60>
  %306 = sitofp <4 x i32> %305 to <4 x double>
  %307 = fmul fast <4 x double> %306, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %308 = extractelement <4 x i64> %301, i32 0
  %309 = shl i64 %308, 3
  %310 = add i64 %309, %299
  %311 = getelementptr i8, i8* %call2, i64 %310
  %312 = bitcast i8* %311 to <4 x double>*
  store <4 x double> %307, <4 x double>* %312, align 8, !alias.scope !104, !noalias !106
  %index.next1155 = add i64 %index1154, 4
  %vec.ind.next1159 = add <4 x i64> %vec.ind1158, <i64 4, i64 4, i64 4, i64 4>
  %313 = icmp eq i64 %index.next1155, 28
  br i1 %313, label %polly.loop_exit828.1, label %vector.body1152, !llvm.loop !115

polly.loop_exit828.1:                             ; preds = %vector.body1152
  %polly.indvar_next824.1 = add nuw nsw i64 %polly.indvar823.1, 1
  %exitcond935.1.not = icmp eq i64 %polly.indvar_next824.1, 32
  br i1 %exitcond935.1.not, label %polly.loop_header820.1963, label %polly.loop_header820.1

polly.loop_header820.1963:                        ; preds = %polly.loop_exit828.1, %polly.loop_exit828.1974
  %polly.indvar823.1962 = phi i64 [ %polly.indvar_next824.1972, %polly.loop_exit828.1974 ], [ 0, %polly.loop_exit828.1 ]
  %314 = add nuw nsw i64 %polly.indvar823.1962, 32
  %315 = mul nuw nsw i64 %314, 480
  %316 = trunc i64 %314 to i32
  %broadcast.splatinsert1174 = insertelement <4 x i32> poison, i32 %316, i32 0
  %broadcast.splat1175 = shufflevector <4 x i32> %broadcast.splatinsert1174, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1164

vector.body1164:                                  ; preds = %vector.body1164, %polly.loop_header820.1963
  %index1166 = phi i64 [ 0, %polly.loop_header820.1963 ], [ %index.next1167, %vector.body1164 ]
  %vec.ind1172 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header820.1963 ], [ %vec.ind.next1173, %vector.body1164 ]
  %317 = mul <4 x i32> %vec.ind1172, %broadcast.splat1175
  %318 = add <4 x i32> %317, <i32 2, i32 2, i32 2, i32 2>
  %319 = urem <4 x i32> %318, <i32 60, i32 60, i32 60, i32 60>
  %320 = sitofp <4 x i32> %319 to <4 x double>
  %321 = fmul fast <4 x double> %320, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %322 = shl i64 %index1166, 3
  %323 = add i64 %322, %315
  %324 = getelementptr i8, i8* %call2, i64 %323
  %325 = bitcast i8* %324 to <4 x double>*
  store <4 x double> %321, <4 x double>* %325, align 8, !alias.scope !104, !noalias !106
  %index.next1167 = add i64 %index1166, 4
  %vec.ind.next1173 = add <4 x i32> %vec.ind1172, <i32 4, i32 4, i32 4, i32 4>
  %326 = icmp eq i64 %index.next1167, 32
  br i1 %326, label %polly.loop_exit828.1974, label %vector.body1164, !llvm.loop !116

polly.loop_exit828.1974:                          ; preds = %vector.body1164
  %polly.indvar_next824.1972 = add nuw nsw i64 %polly.indvar823.1962, 1
  %exitcond935.1973.not = icmp eq i64 %polly.indvar_next824.1972, 32
  br i1 %exitcond935.1973.not, label %polly.loop_header820.1.1, label %polly.loop_header820.1963

polly.loop_header820.1.1:                         ; preds = %polly.loop_exit828.1974, %polly.loop_exit828.1.1
  %polly.indvar823.1.1 = phi i64 [ %polly.indvar_next824.1.1, %polly.loop_exit828.1.1 ], [ 0, %polly.loop_exit828.1974 ]
  %327 = add nuw nsw i64 %polly.indvar823.1.1, 32
  %328 = mul nuw nsw i64 %327, 480
  %329 = trunc i64 %327 to i32
  %broadcast.splatinsert1186 = insertelement <4 x i32> poison, i32 %329, i32 0
  %broadcast.splat1187 = shufflevector <4 x i32> %broadcast.splatinsert1186, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1178

vector.body1178:                                  ; preds = %vector.body1178, %polly.loop_header820.1.1
  %index1180 = phi i64 [ 0, %polly.loop_header820.1.1 ], [ %index.next1181, %vector.body1178 ]
  %vec.ind1184 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header820.1.1 ], [ %vec.ind.next1185, %vector.body1178 ]
  %330 = add nuw nsw <4 x i64> %vec.ind1184, <i64 32, i64 32, i64 32, i64 32>
  %331 = trunc <4 x i64> %330 to <4 x i32>
  %332 = mul <4 x i32> %broadcast.splat1187, %331
  %333 = add <4 x i32> %332, <i32 2, i32 2, i32 2, i32 2>
  %334 = urem <4 x i32> %333, <i32 60, i32 60, i32 60, i32 60>
  %335 = sitofp <4 x i32> %334 to <4 x double>
  %336 = fmul fast <4 x double> %335, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %337 = extractelement <4 x i64> %330, i32 0
  %338 = shl i64 %337, 3
  %339 = add i64 %338, %328
  %340 = getelementptr i8, i8* %call2, i64 %339
  %341 = bitcast i8* %340 to <4 x double>*
  store <4 x double> %336, <4 x double>* %341, align 8, !alias.scope !104, !noalias !106
  %index.next1181 = add i64 %index1180, 4
  %vec.ind.next1185 = add <4 x i64> %vec.ind1184, <i64 4, i64 4, i64 4, i64 4>
  %342 = icmp eq i64 %index.next1181, 28
  br i1 %342, label %polly.loop_exit828.1.1, label %vector.body1178, !llvm.loop !117

polly.loop_exit828.1.1:                           ; preds = %vector.body1178
  %polly.indvar_next824.1.1 = add nuw nsw i64 %polly.indvar823.1.1, 1
  %exitcond935.1.1.not = icmp eq i64 %polly.indvar_next824.1.1, 32
  br i1 %exitcond935.1.1.not, label %polly.loop_header820.2, label %polly.loop_header820.1.1

polly.loop_header820.2:                           ; preds = %polly.loop_exit828.1.1, %polly.loop_exit828.2
  %polly.indvar823.2 = phi i64 [ %polly.indvar_next824.2, %polly.loop_exit828.2 ], [ 0, %polly.loop_exit828.1.1 ]
  %343 = add nuw nsw i64 %polly.indvar823.2, 64
  %344 = mul nuw nsw i64 %343, 480
  %345 = trunc i64 %343 to i32
  %broadcast.splatinsert1200 = insertelement <4 x i32> poison, i32 %345, i32 0
  %broadcast.splat1201 = shufflevector <4 x i32> %broadcast.splatinsert1200, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1190

vector.body1190:                                  ; preds = %vector.body1190, %polly.loop_header820.2
  %index1192 = phi i64 [ 0, %polly.loop_header820.2 ], [ %index.next1193, %vector.body1190 ]
  %vec.ind1198 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header820.2 ], [ %vec.ind.next1199, %vector.body1190 ]
  %346 = mul <4 x i32> %vec.ind1198, %broadcast.splat1201
  %347 = add <4 x i32> %346, <i32 2, i32 2, i32 2, i32 2>
  %348 = urem <4 x i32> %347, <i32 60, i32 60, i32 60, i32 60>
  %349 = sitofp <4 x i32> %348 to <4 x double>
  %350 = fmul fast <4 x double> %349, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %351 = shl i64 %index1192, 3
  %352 = add i64 %351, %344
  %353 = getelementptr i8, i8* %call2, i64 %352
  %354 = bitcast i8* %353 to <4 x double>*
  store <4 x double> %350, <4 x double>* %354, align 8, !alias.scope !104, !noalias !106
  %index.next1193 = add i64 %index1192, 4
  %vec.ind.next1199 = add <4 x i32> %vec.ind1198, <i32 4, i32 4, i32 4, i32 4>
  %355 = icmp eq i64 %index.next1193, 32
  br i1 %355, label %polly.loop_exit828.2, label %vector.body1190, !llvm.loop !118

polly.loop_exit828.2:                             ; preds = %vector.body1190
  %polly.indvar_next824.2 = add nuw nsw i64 %polly.indvar823.2, 1
  %exitcond935.2.not = icmp eq i64 %polly.indvar_next824.2, 16
  br i1 %exitcond935.2.not, label %polly.loop_header820.1.2, label %polly.loop_header820.2

polly.loop_header820.1.2:                         ; preds = %polly.loop_exit828.2, %polly.loop_exit828.1.2
  %polly.indvar823.1.2 = phi i64 [ %polly.indvar_next824.1.2, %polly.loop_exit828.1.2 ], [ 0, %polly.loop_exit828.2 ]
  %356 = add nuw nsw i64 %polly.indvar823.1.2, 64
  %357 = mul nuw nsw i64 %356, 480
  %358 = trunc i64 %356 to i32
  %broadcast.splatinsert1212 = insertelement <4 x i32> poison, i32 %358, i32 0
  %broadcast.splat1213 = shufflevector <4 x i32> %broadcast.splatinsert1212, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1204

vector.body1204:                                  ; preds = %vector.body1204, %polly.loop_header820.1.2
  %index1206 = phi i64 [ 0, %polly.loop_header820.1.2 ], [ %index.next1207, %vector.body1204 ]
  %vec.ind1210 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header820.1.2 ], [ %vec.ind.next1211, %vector.body1204 ]
  %359 = add nuw nsw <4 x i64> %vec.ind1210, <i64 32, i64 32, i64 32, i64 32>
  %360 = trunc <4 x i64> %359 to <4 x i32>
  %361 = mul <4 x i32> %broadcast.splat1213, %360
  %362 = add <4 x i32> %361, <i32 2, i32 2, i32 2, i32 2>
  %363 = urem <4 x i32> %362, <i32 60, i32 60, i32 60, i32 60>
  %364 = sitofp <4 x i32> %363 to <4 x double>
  %365 = fmul fast <4 x double> %364, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %366 = extractelement <4 x i64> %359, i32 0
  %367 = shl i64 %366, 3
  %368 = add i64 %367, %357
  %369 = getelementptr i8, i8* %call2, i64 %368
  %370 = bitcast i8* %369 to <4 x double>*
  store <4 x double> %365, <4 x double>* %370, align 8, !alias.scope !104, !noalias !106
  %index.next1207 = add i64 %index1206, 4
  %vec.ind.next1211 = add <4 x i64> %vec.ind1210, <i64 4, i64 4, i64 4, i64 4>
  %371 = icmp eq i64 %index.next1207, 28
  br i1 %371, label %polly.loop_exit828.1.2, label %vector.body1204, !llvm.loop !119

polly.loop_exit828.1.2:                           ; preds = %vector.body1204
  %polly.indvar_next824.1.2 = add nuw nsw i64 %polly.indvar823.1.2, 1
  %exitcond935.1.2.not = icmp eq i64 %polly.indvar_next824.1.2, 16
  br i1 %exitcond935.1.2.not, label %polly.loop_header846, label %polly.loop_header820.1.2

polly.loop_header793.1:                           ; preds = %polly.loop_exit801, %polly.loop_exit801.1
  %polly.indvar796.1 = phi i64 [ %polly.indvar_next797.1, %polly.loop_exit801.1 ], [ 0, %polly.loop_exit801 ]
  %372 = mul nuw nsw i64 %polly.indvar796.1, 640
  %373 = trunc i64 %polly.indvar796.1 to i32
  %broadcast.splatinsert1046 = insertelement <4 x i32> poison, i32 %373, i32 0
  %broadcast.splat1047 = shufflevector <4 x i32> %broadcast.splatinsert1046, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1038

vector.body1038:                                  ; preds = %vector.body1038, %polly.loop_header793.1
  %index1040 = phi i64 [ 0, %polly.loop_header793.1 ], [ %index.next1041, %vector.body1038 ]
  %vec.ind1044 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1 ], [ %vec.ind.next1045, %vector.body1038 ]
  %374 = add nuw nsw <4 x i64> %vec.ind1044, <i64 32, i64 32, i64 32, i64 32>
  %375 = trunc <4 x i64> %374 to <4 x i32>
  %376 = mul <4 x i32> %broadcast.splat1047, %375
  %377 = add <4 x i32> %376, <i32 3, i32 3, i32 3, i32 3>
  %378 = urem <4 x i32> %377, <i32 80, i32 80, i32 80, i32 80>
  %379 = sitofp <4 x i32> %378 to <4 x double>
  %380 = fmul fast <4 x double> %379, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %381 = extractelement <4 x i64> %374, i32 0
  %382 = shl i64 %381, 3
  %383 = add nuw nsw i64 %382, %372
  %384 = getelementptr i8, i8* %call, i64 %383
  %385 = bitcast i8* %384 to <4 x double>*
  store <4 x double> %380, <4 x double>* %385, align 8, !alias.scope !100, !noalias !102
  %index.next1041 = add i64 %index1040, 4
  %vec.ind.next1045 = add <4 x i64> %vec.ind1044, <i64 4, i64 4, i64 4, i64 4>
  %386 = icmp eq i64 %index.next1041, 32
  br i1 %386, label %polly.loop_exit801.1, label %vector.body1038, !llvm.loop !120

polly.loop_exit801.1:                             ; preds = %vector.body1038
  %polly.indvar_next797.1 = add nuw nsw i64 %polly.indvar796.1, 1
  %exitcond944.1.not = icmp eq i64 %polly.indvar_next797.1, 32
  br i1 %exitcond944.1.not, label %polly.loop_header793.2, label %polly.loop_header793.1

polly.loop_header793.2:                           ; preds = %polly.loop_exit801.1, %polly.loop_exit801.2
  %polly.indvar796.2 = phi i64 [ %polly.indvar_next797.2, %polly.loop_exit801.2 ], [ 0, %polly.loop_exit801.1 ]
  %387 = mul nuw nsw i64 %polly.indvar796.2, 640
  %388 = trunc i64 %polly.indvar796.2 to i32
  %broadcast.splatinsert1058 = insertelement <4 x i32> poison, i32 %388, i32 0
  %broadcast.splat1059 = shufflevector <4 x i32> %broadcast.splatinsert1058, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1050

vector.body1050:                                  ; preds = %vector.body1050, %polly.loop_header793.2
  %index1052 = phi i64 [ 0, %polly.loop_header793.2 ], [ %index.next1053, %vector.body1050 ]
  %vec.ind1056 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.2 ], [ %vec.ind.next1057, %vector.body1050 ]
  %389 = add nuw nsw <4 x i64> %vec.ind1056, <i64 64, i64 64, i64 64, i64 64>
  %390 = trunc <4 x i64> %389 to <4 x i32>
  %391 = mul <4 x i32> %broadcast.splat1059, %390
  %392 = add <4 x i32> %391, <i32 3, i32 3, i32 3, i32 3>
  %393 = urem <4 x i32> %392, <i32 80, i32 80, i32 80, i32 80>
  %394 = sitofp <4 x i32> %393 to <4 x double>
  %395 = fmul fast <4 x double> %394, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %396 = extractelement <4 x i64> %389, i32 0
  %397 = shl i64 %396, 3
  %398 = add nuw nsw i64 %397, %387
  %399 = getelementptr i8, i8* %call, i64 %398
  %400 = bitcast i8* %399 to <4 x double>*
  store <4 x double> %395, <4 x double>* %400, align 8, !alias.scope !100, !noalias !102
  %index.next1053 = add i64 %index1052, 4
  %vec.ind.next1057 = add <4 x i64> %vec.ind1056, <i64 4, i64 4, i64 4, i64 4>
  %401 = icmp eq i64 %index.next1053, 16
  br i1 %401, label %polly.loop_exit801.2, label %vector.body1050, !llvm.loop !121

polly.loop_exit801.2:                             ; preds = %vector.body1050
  %polly.indvar_next797.2 = add nuw nsw i64 %polly.indvar796.2, 1
  %exitcond944.2.not = icmp eq i64 %polly.indvar_next797.2, 32
  br i1 %exitcond944.2.not, label %polly.loop_header793.1977, label %polly.loop_header793.2

polly.loop_header793.1977:                        ; preds = %polly.loop_exit801.2, %polly.loop_exit801.1988
  %polly.indvar796.1976 = phi i64 [ %polly.indvar_next797.1986, %polly.loop_exit801.1988 ], [ 0, %polly.loop_exit801.2 ]
  %402 = add nuw nsw i64 %polly.indvar796.1976, 32
  %403 = mul nuw nsw i64 %402, 640
  %404 = trunc i64 %402 to i32
  %broadcast.splatinsert1072 = insertelement <4 x i32> poison, i32 %404, i32 0
  %broadcast.splat1073 = shufflevector <4 x i32> %broadcast.splatinsert1072, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1062

vector.body1062:                                  ; preds = %vector.body1062, %polly.loop_header793.1977
  %index1064 = phi i64 [ 0, %polly.loop_header793.1977 ], [ %index.next1065, %vector.body1062 ]
  %vec.ind1070 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793.1977 ], [ %vec.ind.next1071, %vector.body1062 ]
  %405 = mul <4 x i32> %vec.ind1070, %broadcast.splat1073
  %406 = add <4 x i32> %405, <i32 3, i32 3, i32 3, i32 3>
  %407 = urem <4 x i32> %406, <i32 80, i32 80, i32 80, i32 80>
  %408 = sitofp <4 x i32> %407 to <4 x double>
  %409 = fmul fast <4 x double> %408, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %410 = shl i64 %index1064, 3
  %411 = add nuw nsw i64 %410, %403
  %412 = getelementptr i8, i8* %call, i64 %411
  %413 = bitcast i8* %412 to <4 x double>*
  store <4 x double> %409, <4 x double>* %413, align 8, !alias.scope !100, !noalias !102
  %index.next1065 = add i64 %index1064, 4
  %vec.ind.next1071 = add <4 x i32> %vec.ind1070, <i32 4, i32 4, i32 4, i32 4>
  %414 = icmp eq i64 %index.next1065, 32
  br i1 %414, label %polly.loop_exit801.1988, label %vector.body1062, !llvm.loop !122

polly.loop_exit801.1988:                          ; preds = %vector.body1062
  %polly.indvar_next797.1986 = add nuw nsw i64 %polly.indvar796.1976, 1
  %exitcond944.1987.not = icmp eq i64 %polly.indvar_next797.1986, 32
  br i1 %exitcond944.1987.not, label %polly.loop_header793.1.1, label %polly.loop_header793.1977

polly.loop_header793.1.1:                         ; preds = %polly.loop_exit801.1988, %polly.loop_exit801.1.1
  %polly.indvar796.1.1 = phi i64 [ %polly.indvar_next797.1.1, %polly.loop_exit801.1.1 ], [ 0, %polly.loop_exit801.1988 ]
  %415 = add nuw nsw i64 %polly.indvar796.1.1, 32
  %416 = mul nuw nsw i64 %415, 640
  %417 = trunc i64 %415 to i32
  %broadcast.splatinsert1084 = insertelement <4 x i32> poison, i32 %417, i32 0
  %broadcast.splat1085 = shufflevector <4 x i32> %broadcast.splatinsert1084, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1076

vector.body1076:                                  ; preds = %vector.body1076, %polly.loop_header793.1.1
  %index1078 = phi i64 [ 0, %polly.loop_header793.1.1 ], [ %index.next1079, %vector.body1076 ]
  %vec.ind1082 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1.1 ], [ %vec.ind.next1083, %vector.body1076 ]
  %418 = add nuw nsw <4 x i64> %vec.ind1082, <i64 32, i64 32, i64 32, i64 32>
  %419 = trunc <4 x i64> %418 to <4 x i32>
  %420 = mul <4 x i32> %broadcast.splat1085, %419
  %421 = add <4 x i32> %420, <i32 3, i32 3, i32 3, i32 3>
  %422 = urem <4 x i32> %421, <i32 80, i32 80, i32 80, i32 80>
  %423 = sitofp <4 x i32> %422 to <4 x double>
  %424 = fmul fast <4 x double> %423, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %425 = extractelement <4 x i64> %418, i32 0
  %426 = shl i64 %425, 3
  %427 = add nuw nsw i64 %426, %416
  %428 = getelementptr i8, i8* %call, i64 %427
  %429 = bitcast i8* %428 to <4 x double>*
  store <4 x double> %424, <4 x double>* %429, align 8, !alias.scope !100, !noalias !102
  %index.next1079 = add i64 %index1078, 4
  %vec.ind.next1083 = add <4 x i64> %vec.ind1082, <i64 4, i64 4, i64 4, i64 4>
  %430 = icmp eq i64 %index.next1079, 32
  br i1 %430, label %polly.loop_exit801.1.1, label %vector.body1076, !llvm.loop !123

polly.loop_exit801.1.1:                           ; preds = %vector.body1076
  %polly.indvar_next797.1.1 = add nuw nsw i64 %polly.indvar796.1.1, 1
  %exitcond944.1.1.not = icmp eq i64 %polly.indvar_next797.1.1, 32
  br i1 %exitcond944.1.1.not, label %polly.loop_header793.2.1, label %polly.loop_header793.1.1

polly.loop_header793.2.1:                         ; preds = %polly.loop_exit801.1.1, %polly.loop_exit801.2.1
  %polly.indvar796.2.1 = phi i64 [ %polly.indvar_next797.2.1, %polly.loop_exit801.2.1 ], [ 0, %polly.loop_exit801.1.1 ]
  %431 = add nuw nsw i64 %polly.indvar796.2.1, 32
  %432 = mul nuw nsw i64 %431, 640
  %433 = trunc i64 %431 to i32
  %broadcast.splatinsert1096 = insertelement <4 x i32> poison, i32 %433, i32 0
  %broadcast.splat1097 = shufflevector <4 x i32> %broadcast.splatinsert1096, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1088

vector.body1088:                                  ; preds = %vector.body1088, %polly.loop_header793.2.1
  %index1090 = phi i64 [ 0, %polly.loop_header793.2.1 ], [ %index.next1091, %vector.body1088 ]
  %vec.ind1094 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.2.1 ], [ %vec.ind.next1095, %vector.body1088 ]
  %434 = add nuw nsw <4 x i64> %vec.ind1094, <i64 64, i64 64, i64 64, i64 64>
  %435 = trunc <4 x i64> %434 to <4 x i32>
  %436 = mul <4 x i32> %broadcast.splat1097, %435
  %437 = add <4 x i32> %436, <i32 3, i32 3, i32 3, i32 3>
  %438 = urem <4 x i32> %437, <i32 80, i32 80, i32 80, i32 80>
  %439 = sitofp <4 x i32> %438 to <4 x double>
  %440 = fmul fast <4 x double> %439, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %441 = extractelement <4 x i64> %434, i32 0
  %442 = shl i64 %441, 3
  %443 = add nuw nsw i64 %442, %432
  %444 = getelementptr i8, i8* %call, i64 %443
  %445 = bitcast i8* %444 to <4 x double>*
  store <4 x double> %440, <4 x double>* %445, align 8, !alias.scope !100, !noalias !102
  %index.next1091 = add i64 %index1090, 4
  %vec.ind.next1095 = add <4 x i64> %vec.ind1094, <i64 4, i64 4, i64 4, i64 4>
  %446 = icmp eq i64 %index.next1091, 16
  br i1 %446, label %polly.loop_exit801.2.1, label %vector.body1088, !llvm.loop !124

polly.loop_exit801.2.1:                           ; preds = %vector.body1088
  %polly.indvar_next797.2.1 = add nuw nsw i64 %polly.indvar796.2.1, 1
  %exitcond944.2.1.not = icmp eq i64 %polly.indvar_next797.2.1, 32
  br i1 %exitcond944.2.1.not, label %polly.loop_header793.2991, label %polly.loop_header793.2.1

polly.loop_header793.2991:                        ; preds = %polly.loop_exit801.2.1, %polly.loop_exit801.21002
  %polly.indvar796.2990 = phi i64 [ %polly.indvar_next797.21000, %polly.loop_exit801.21002 ], [ 0, %polly.loop_exit801.2.1 ]
  %447 = add nuw nsw i64 %polly.indvar796.2990, 64
  %448 = mul nuw nsw i64 %447, 640
  %449 = trunc i64 %447 to i32
  %broadcast.splatinsert1110 = insertelement <4 x i32> poison, i32 %449, i32 0
  %broadcast.splat1111 = shufflevector <4 x i32> %broadcast.splatinsert1110, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1100

vector.body1100:                                  ; preds = %vector.body1100, %polly.loop_header793.2991
  %index1102 = phi i64 [ 0, %polly.loop_header793.2991 ], [ %index.next1103, %vector.body1100 ]
  %vec.ind1108 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793.2991 ], [ %vec.ind.next1109, %vector.body1100 ]
  %450 = mul <4 x i32> %vec.ind1108, %broadcast.splat1111
  %451 = add <4 x i32> %450, <i32 3, i32 3, i32 3, i32 3>
  %452 = urem <4 x i32> %451, <i32 80, i32 80, i32 80, i32 80>
  %453 = sitofp <4 x i32> %452 to <4 x double>
  %454 = fmul fast <4 x double> %453, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %455 = shl i64 %index1102, 3
  %456 = add nuw nsw i64 %455, %448
  %457 = getelementptr i8, i8* %call, i64 %456
  %458 = bitcast i8* %457 to <4 x double>*
  store <4 x double> %454, <4 x double>* %458, align 8, !alias.scope !100, !noalias !102
  %index.next1103 = add i64 %index1102, 4
  %vec.ind.next1109 = add <4 x i32> %vec.ind1108, <i32 4, i32 4, i32 4, i32 4>
  %459 = icmp eq i64 %index.next1103, 32
  br i1 %459, label %polly.loop_exit801.21002, label %vector.body1100, !llvm.loop !125

polly.loop_exit801.21002:                         ; preds = %vector.body1100
  %polly.indvar_next797.21000 = add nuw nsw i64 %polly.indvar796.2990, 1
  %exitcond944.21001.not = icmp eq i64 %polly.indvar_next797.21000, 16
  br i1 %exitcond944.21001.not, label %polly.loop_header793.1.2, label %polly.loop_header793.2991

polly.loop_header793.1.2:                         ; preds = %polly.loop_exit801.21002, %polly.loop_exit801.1.2
  %polly.indvar796.1.2 = phi i64 [ %polly.indvar_next797.1.2, %polly.loop_exit801.1.2 ], [ 0, %polly.loop_exit801.21002 ]
  %460 = add nuw nsw i64 %polly.indvar796.1.2, 64
  %461 = mul nuw nsw i64 %460, 640
  %462 = trunc i64 %460 to i32
  %broadcast.splatinsert1122 = insertelement <4 x i32> poison, i32 %462, i32 0
  %broadcast.splat1123 = shufflevector <4 x i32> %broadcast.splatinsert1122, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1114

vector.body1114:                                  ; preds = %vector.body1114, %polly.loop_header793.1.2
  %index1116 = phi i64 [ 0, %polly.loop_header793.1.2 ], [ %index.next1117, %vector.body1114 ]
  %vec.ind1120 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1.2 ], [ %vec.ind.next1121, %vector.body1114 ]
  %463 = add nuw nsw <4 x i64> %vec.ind1120, <i64 32, i64 32, i64 32, i64 32>
  %464 = trunc <4 x i64> %463 to <4 x i32>
  %465 = mul <4 x i32> %broadcast.splat1123, %464
  %466 = add <4 x i32> %465, <i32 3, i32 3, i32 3, i32 3>
  %467 = urem <4 x i32> %466, <i32 80, i32 80, i32 80, i32 80>
  %468 = sitofp <4 x i32> %467 to <4 x double>
  %469 = fmul fast <4 x double> %468, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %470 = extractelement <4 x i64> %463, i32 0
  %471 = shl i64 %470, 3
  %472 = add nuw nsw i64 %471, %461
  %473 = getelementptr i8, i8* %call, i64 %472
  %474 = bitcast i8* %473 to <4 x double>*
  store <4 x double> %469, <4 x double>* %474, align 8, !alias.scope !100, !noalias !102
  %index.next1117 = add i64 %index1116, 4
  %vec.ind.next1121 = add <4 x i64> %vec.ind1120, <i64 4, i64 4, i64 4, i64 4>
  %475 = icmp eq i64 %index.next1117, 32
  br i1 %475, label %polly.loop_exit801.1.2, label %vector.body1114, !llvm.loop !126

polly.loop_exit801.1.2:                           ; preds = %vector.body1114
  %polly.indvar_next797.1.2 = add nuw nsw i64 %polly.indvar796.1.2, 1
  %exitcond944.1.2.not = icmp eq i64 %polly.indvar_next797.1.2, 16
  br i1 %exitcond944.1.2.not, label %polly.loop_header793.2.2, label %polly.loop_header793.1.2

polly.loop_header793.2.2:                         ; preds = %polly.loop_exit801.1.2, %polly.loop_exit801.2.2
  %polly.indvar796.2.2 = phi i64 [ %polly.indvar_next797.2.2, %polly.loop_exit801.2.2 ], [ 0, %polly.loop_exit801.1.2 ]
  %476 = add nuw nsw i64 %polly.indvar796.2.2, 64
  %477 = mul nuw nsw i64 %476, 640
  %478 = trunc i64 %476 to i32
  %broadcast.splatinsert1134 = insertelement <4 x i32> poison, i32 %478, i32 0
  %broadcast.splat1135 = shufflevector <4 x i32> %broadcast.splatinsert1134, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1126

vector.body1126:                                  ; preds = %vector.body1126, %polly.loop_header793.2.2
  %index1128 = phi i64 [ 0, %polly.loop_header793.2.2 ], [ %index.next1129, %vector.body1126 ]
  %vec.ind1132 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.2.2 ], [ %vec.ind.next1133, %vector.body1126 ]
  %479 = add nuw nsw <4 x i64> %vec.ind1132, <i64 64, i64 64, i64 64, i64 64>
  %480 = trunc <4 x i64> %479 to <4 x i32>
  %481 = mul <4 x i32> %broadcast.splat1135, %480
  %482 = add <4 x i32> %481, <i32 3, i32 3, i32 3, i32 3>
  %483 = urem <4 x i32> %482, <i32 80, i32 80, i32 80, i32 80>
  %484 = sitofp <4 x i32> %483 to <4 x double>
  %485 = fmul fast <4 x double> %484, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %486 = extractelement <4 x i64> %479, i32 0
  %487 = shl i64 %486, 3
  %488 = add nuw nsw i64 %487, %477
  %489 = getelementptr i8, i8* %call, i64 %488
  %490 = bitcast i8* %489 to <4 x double>*
  store <4 x double> %485, <4 x double>* %490, align 8, !alias.scope !100, !noalias !102
  %index.next1129 = add i64 %index1128, 4
  %vec.ind.next1133 = add <4 x i64> %vec.ind1132, <i64 4, i64 4, i64 4, i64 4>
  %491 = icmp eq i64 %index.next1129, 16
  br i1 %491, label %polly.loop_exit801.2.2, label %vector.body1126, !llvm.loop !127

polly.loop_exit801.2.2:                           ; preds = %vector.body1126
  %polly.indvar_next797.2.2 = add nuw nsw i64 %polly.indvar796.2.2, 1
  %exitcond944.2.2.not = icmp eq i64 %polly.indvar_next797.2.2, 16
  br i1 %exitcond944.2.2.not, label %polly.loop_header820, label %polly.loop_header793.2.2
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
!21 = distinct !{!"A"}
!22 = distinct !{!"B"}
!23 = distinct !{!23, !12, !24, !25, !26, !27, !30}
!24 = !{!"llvm.loop.disable_nonforced"}
!25 = !{!"llvm.loop.id", !"k"}
!26 = !{!"llvm.loop.tile.size", i32 80}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 20}
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
!51 = !{!"llvm.loop.tile.size", i32 4}
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
!82 = distinct !{!82, !83, !"polly.alias.scope.MemRef_call"}
!83 = distinct !{!83, !"polly.alias.scope.domain"}
!84 = !{!85, !86, !87, !88}
!85 = distinct !{!85, !83, !"polly.alias.scope.MemRef_call1"}
!86 = distinct !{!86, !83, !"polly.alias.scope.MemRef_call2"}
!87 = distinct !{!87, !83, !"polly.alias.scope.Packed_MemRef_call1"}
!88 = distinct !{!88, !83, !"polly.alias.scope.Packed_MemRef_call2"}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !81, !13}
!91 = distinct !{!91, !92, !"polly.alias.scope.MemRef_call"}
!92 = distinct !{!92, !"polly.alias.scope.domain"}
!93 = !{!94, !95, !96, !97}
!94 = distinct !{!94, !92, !"polly.alias.scope.MemRef_call1"}
!95 = distinct !{!95, !92, !"polly.alias.scope.MemRef_call2"}
!96 = distinct !{!96, !92, !"polly.alias.scope.Packed_MemRef_call1"}
!97 = distinct !{!97, !92, !"polly.alias.scope.Packed_MemRef_call2"}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !81, !13}
!100 = distinct !{!100, !101, !"polly.alias.scope.MemRef_call"}
!101 = distinct !{!101, !"polly.alias.scope.domain"}
!102 = !{!103, !104}
!103 = distinct !{!103, !101, !"polly.alias.scope.MemRef_call1"}
!104 = distinct !{!104, !101, !"polly.alias.scope.MemRef_call2"}
!105 = distinct !{!105, !13}
!106 = !{!103, !100}
!107 = distinct !{!107, !13}
!108 = !{!104, !100}
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
!125 = distinct !{!125, !13}
!126 = distinct !{!126, !13}
!127 = distinct !{!127, !13}
