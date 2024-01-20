; ModuleID = 'syr2k_exhaustive/mmp_all_XL_962.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_962.c"
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
  %call = tail call i8* @polybench_alloc_data(i64 1440000, i32 8) #6
  %call923 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1775 = bitcast i8* %call1 to double*
  %polly.access.call1784 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2785 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1784, %call2
  %polly.access.call2804 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2804, %call1
  %2 = or i1 %0, %1
  %polly.access.call824 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call824, %call2
  %4 = icmp ule i8* %polly.access.call2804, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call824, %call1
  %8 = icmp ule i8* %polly.access.call1784, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header897, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1280 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1279 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1278 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1277 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1277, %scevgep1280
  %bound1 = icmp ult i8* %scevgep1279, %scevgep1278
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
  %16 = urem <4 x i32> %15, <i32 1200, i32 1200, i32 1200, i32 1200>
  %17 = sitofp <4 x i32> %16 to <4 x double>
  %18 = fmul fast <4 x double> %17, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %19 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %index
  %20 = bitcast double* %19 to <4 x double>*
  store <4 x double> %18, <4 x double>* %20, align 8, !tbaa !2, !alias.scope !6, !noalias !9
  %21 = add <4 x i32> %14, <i32 2, i32 2, i32 2, i32 2>
  %22 = urem <4 x i32> %21, <i32 1000, i32 1000, i32 1000, i32 1000>
  %23 = sitofp <4 x i32> %22 to <4 x double>
  %24 = fmul fast <4 x double> %23, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %25 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv16.i, i64 %index
  %26 = bitcast double* %25 to <4 x double>*
  store <4 x double> %24, <4 x double>* %26, align 8, !tbaa !2, !alias.scope !9
  %index.next = add i64 %index, 4
  %vec.ind.next = add <4 x i64> %vec.ind, <i64 4, i64 4, i64 4, i64 4>
  %27 = icmp eq i64 %index.next, 1000
  br i1 %27, label %for.inc17.i, label %vector.body, !llvm.loop !11

for.body3.i:                                      ; preds = %for.cond1.preheader.i, %for.body3.i
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %for.body3.i ], [ 0, %for.cond1.preheader.i ]
  %28 = mul nuw nsw i64 %indvars.iv10.i, %indvars.iv16.i
  %29 = trunc i64 %28 to i32
  %30 = add i32 %29, 1
  %rem.i = urem i32 %30, 1200
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fmul fast double %conv.i, 0x3F4B4E81B4E81B4F
  %arrayidx6.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %indvars.iv10.i
  store double %div.i, double* %arrayidx6.i, align 8, !tbaa !2
  %31 = add i32 %29, 2
  %rem9.i = urem i32 %31, 1000
  %conv10.i = sitofp i32 %rem9.i to double
  %div12.i = fmul fast double %conv10.i, 1.000000e-03
  %arrayidx16.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv16.i, i64 %indvars.iv10.i
  store double %div12.i, double* %arrayidx16.i, align 8, !tbaa !2
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond15.not.i = icmp eq i64 %indvars.iv.next11.i, 1000
  br i1 %exitcond15.not.i, label %for.inc17.i, label %for.body3.i, !llvm.loop !14

for.inc17.i:                                      ; preds = %vector.body, %for.body3.i
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next17.i, 1200
  br i1 %exitcond18.not.i, label %vector.ph1284, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1284:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1291 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1292 = shufflevector <4 x i64> %broadcast.splatinsert1291, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1283

vector.body1283:                                  ; preds = %vector.body1283, %vector.ph1284
  %index1285 = phi i64 [ 0, %vector.ph1284 ], [ %index.next1286, %vector.body1283 ]
  %vec.ind1289 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1284 ], [ %vec.ind.next1290, %vector.body1283 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1289, %broadcast.splat1292
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call923, i64 %indvars.iv7.i, i64 %index1285
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1286 = add i64 %index1285, 4
  %vec.ind.next1290 = add <4 x i64> %vec.ind1289, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1286, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1283, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1283
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1284, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit958
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start545, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1347 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1347, label %for.body3.i46.preheader1496, label %vector.ph1348

vector.ph1348:                                    ; preds = %for.body3.i46.preheader
  %n.vec1350 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1346

vector.body1346:                                  ; preds = %vector.body1346, %vector.ph1348
  %index1351 = phi i64 [ 0, %vector.ph1348 ], [ %index.next1352, %vector.body1346 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call923, i64 %indvars.iv21.i, i64 %index1351
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1352 = add i64 %index1351, 4
  %46 = icmp eq i64 %index.next1352, %n.vec1350
  br i1 %46, label %middle.block1344, label %vector.body1346, !llvm.loop !18

middle.block1344:                                 ; preds = %vector.body1346
  %cmp.n1354 = icmp eq i64 %indvars.iv21.i, %n.vec1350
  br i1 %cmp.n1354, label %for.inc6.i, label %for.body3.i46.preheader1496

for.body3.i46.preheader1496:                      ; preds = %for.body3.i46.preheader, %middle.block1344
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1350, %middle.block1344 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1496, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1496 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call923, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1344, %for.cond1.preheader.i45
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next22.i, 1200
  br i1 %exitcond23.not.i, label %for.cond12.preheader.i, label %for.cond1.preheader.i45, !llvm.loop !20

for.cond12.preheader.i:                           ; preds = %for.inc6.i, %for.inc49.i
  %indvars.iv15.i = phi i64 [ %indvars.iv.next16.i, %for.inc49.i ], [ 0, %for.inc6.i ]
  %indvars.iv13.i = phi i64 [ %indvars.iv.next14.i, %for.inc49.i ], [ 1, %for.inc6.i ]
  br label %for.cond15.preheader.i

for.cond15.preheader.i:                           ; preds = %for.inc46.i, %for.cond12.preheader.i
  %indvars.iv10.i47 = phi i64 [ 0, %for.cond12.preheader.i ], [ %indvars.iv.next11.i51, %for.inc46.i ]
  %arrayidx26.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv15.i, i64 %indvars.iv10.i47
  %arrayidx36.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv15.i, i64 %indvars.iv10.i47
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i, %for.cond15.preheader.i
  %indvars.iv.i48 = phi i64 [ 0, %for.cond15.preheader.i ], [ %indvars.iv.next.i49, %for.body17.i ]
  %arrayidx21.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2, !llvm.access !21
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2, !llvm.access !22
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2, !llvm.access !22
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call923, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 1000
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !33

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 1200
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !47

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting546
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start317, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1394 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1394, label %for.body3.i60.preheader1494, label %vector.ph1395

vector.ph1395:                                    ; preds = %for.body3.i60.preheader
  %n.vec1397 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1393

vector.body1393:                                  ; preds = %vector.body1393, %vector.ph1395
  %index1398 = phi i64 [ 0, %vector.ph1395 ], [ %index.next1399, %vector.body1393 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call923, i64 %indvars.iv21.i52, i64 %index1398
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1402 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1402, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1399 = add i64 %index1398, 4
  %57 = icmp eq i64 %index.next1399, %n.vec1397
  br i1 %57, label %middle.block1391, label %vector.body1393, !llvm.loop !64

middle.block1391:                                 ; preds = %vector.body1393
  %cmp.n1401 = icmp eq i64 %indvars.iv21.i52, %n.vec1397
  br i1 %cmp.n1401, label %for.inc6.i63, label %for.body3.i60.preheader1494

for.body3.i60.preheader1494:                      ; preds = %for.body3.i60.preheader, %middle.block1391
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1397, %middle.block1391 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1494, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1494 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call923, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1391, %for.cond1.preheader.i54
  %indvars.iv.next22.i61 = add nuw nsw i64 %indvars.iv21.i52, 1
  %exitcond23.not.i62 = icmp eq i64 %indvars.iv.next22.i61, 1200
  br i1 %exitcond23.not.i62, label %for.cond12.preheader.i66, label %for.cond1.preheader.i54, !llvm.loop !20

for.cond12.preheader.i66:                         ; preds = %for.inc6.i63, %for.inc49.i89
  %indvars.iv15.i64 = phi i64 [ %indvars.iv.next16.i86, %for.inc49.i89 ], [ 0, %for.inc6.i63 ]
  %indvars.iv13.i65 = phi i64 [ %indvars.iv.next14.i87, %for.inc49.i89 ], [ 1, %for.inc6.i63 ]
  br label %for.cond15.preheader.i70

for.cond15.preheader.i70:                         ; preds = %for.inc46.i85, %for.cond12.preheader.i66
  %indvars.iv10.i67 = phi i64 [ 0, %for.cond12.preheader.i66 ], [ %indvars.iv.next11.i83, %for.inc46.i85 ]
  %arrayidx26.i68 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv15.i64, i64 %indvars.iv10.i67
  %arrayidx36.i69 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv15.i64, i64 %indvars.iv10.i67
  br label %for.body17.i82

for.body17.i82:                                   ; preds = %for.body17.i82, %for.cond15.preheader.i70
  %indvars.iv.i71 = phi i64 [ 0, %for.cond15.preheader.i70 ], [ %indvars.iv.next.i80, %for.body17.i82 ]
  %arrayidx21.i72 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2, !llvm.access !21
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2, !llvm.access !22
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2, !llvm.access !22
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call923, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 1000
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !33

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 1200
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !47

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting318
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1444 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1444, label %for.body3.i99.preheader1492, label %vector.ph1445

vector.ph1445:                                    ; preds = %for.body3.i99.preheader
  %n.vec1447 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1443

vector.body1443:                                  ; preds = %vector.body1443, %vector.ph1445
  %index1448 = phi i64 [ 0, %vector.ph1445 ], [ %index.next1449, %vector.body1443 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call923, i64 %indvars.iv21.i91, i64 %index1448
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1452 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1452, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1449 = add i64 %index1448, 4
  %68 = icmp eq i64 %index.next1449, %n.vec1447
  br i1 %68, label %middle.block1441, label %vector.body1443, !llvm.loop !66

middle.block1441:                                 ; preds = %vector.body1443
  %cmp.n1451 = icmp eq i64 %indvars.iv21.i91, %n.vec1447
  br i1 %cmp.n1451, label %for.inc6.i102, label %for.body3.i99.preheader1492

for.body3.i99.preheader1492:                      ; preds = %for.body3.i99.preheader, %middle.block1441
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1447, %middle.block1441 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1492, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1492 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call923, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1441, %for.cond1.preheader.i93
  %indvars.iv.next22.i100 = add nuw nsw i64 %indvars.iv21.i91, 1
  %exitcond23.not.i101 = icmp eq i64 %indvars.iv.next22.i100, 1200
  br i1 %exitcond23.not.i101, label %for.cond12.preheader.i105, label %for.cond1.preheader.i93, !llvm.loop !20

for.cond12.preheader.i105:                        ; preds = %for.inc6.i102, %for.inc49.i128
  %indvars.iv15.i103 = phi i64 [ %indvars.iv.next16.i125, %for.inc49.i128 ], [ 0, %for.inc6.i102 ]
  %indvars.iv13.i104 = phi i64 [ %indvars.iv.next14.i126, %for.inc49.i128 ], [ 1, %for.inc6.i102 ]
  br label %for.cond15.preheader.i109

for.cond15.preheader.i109:                        ; preds = %for.inc46.i124, %for.cond12.preheader.i105
  %indvars.iv10.i106 = phi i64 [ 0, %for.cond12.preheader.i105 ], [ %indvars.iv.next11.i122, %for.inc46.i124 ]
  %arrayidx26.i107 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv15.i103, i64 %indvars.iv10.i106
  %arrayidx36.i108 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv15.i103, i64 %indvars.iv10.i106
  br label %for.body17.i121

for.body17.i121:                                  ; preds = %for.body17.i121, %for.cond15.preheader.i109
  %indvars.iv.i110 = phi i64 [ 0, %for.cond15.preheader.i109 ], [ %indvars.iv.next.i119, %for.body17.i121 ]
  %arrayidx21.i111 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2, !llvm.access !21
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2, !llvm.access !22
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2, !llvm.access !22
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call923, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 1000
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !33

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 1200
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
  %79 = mul nuw nsw i64 %indvars.iv4.i, 1200
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call923, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !70

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
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
  %malloccall = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall136 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1456 = phi i64 [ %indvar.next1457, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1456, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1458 = icmp ult i64 %88, 4
  br i1 %min.iters.check1458, label %polly.loop_header192.preheader, label %vector.ph1459

vector.ph1459:                                    ; preds = %polly.loop_header
  %n.vec1461 = and i64 %88, -4
  br label %vector.body1455

vector.body1455:                                  ; preds = %vector.body1455, %vector.ph1459
  %index1462 = phi i64 [ 0, %vector.ph1459 ], [ %index.next1463, %vector.body1455 ]
  %90 = shl nuw nsw i64 %index1462, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1466 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1466, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1463 = add i64 %index1462, 4
  %95 = icmp eq i64 %index.next1463, %n.vec1461
  br i1 %95, label %middle.block1453, label %vector.body1455, !llvm.loop !79

middle.block1453:                                 ; preds = %vector.body1455
  %cmp.n1465 = icmp eq i64 %88, %n.vec1461
  br i1 %cmp.n1465, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1453
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1461, %middle.block1453 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1453
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1167.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1457 = add i64 %indvar1456, 1
  br i1 %exitcond1167.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1166.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1166.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit224
  %indvars.iv1157 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1158, %polly.loop_exit224 ]
  %indvars.iv1152 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1153, %polly.loop_exit224 ]
  %indvars.iv1144 = phi i64 [ 7, %polly.loop_header200.preheader ], [ %indvars.iv.next1145, %polly.loop_exit224 ]
  %indvars.iv1142 = phi i64 [ 79, %polly.loop_header200.preheader ], [ %indvars.iv.next1143, %polly.loop_exit224 ]
  %indvars.iv = phi i64 [ 1200, %polly.loop_header200.preheader ], [ %indvars.iv.next, %polly.loop_exit224 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit224 ]
  %97 = mul nsw i64 %polly.indvar203, -30
  %98 = mul nuw nsw i64 %polly.indvar203, 3
  %99 = add nuw i64 %98, 7
  %100 = lshr i64 %99, 3
  %101 = mul nuw nsw i64 %100, 80
  %102 = add i64 %97, %101
  %103 = mul nuw nsw i64 %polly.indvar203, 30
  %104 = sub nsw i64 %103, %101
  %105 = lshr i64 %indvars.iv1144, 3
  %106 = mul nuw nsw i64 %105, 80
  %107 = add i64 %indvars.iv1152, %106
  %108 = sub nsw i64 %indvars.iv1157, %106
  %109 = sub nsw i64 %indvars.iv1142, %106
  %110 = mul nuw nsw i64 %polly.indvar203, 50
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit214
  %111 = mul nsw i64 %polly.indvar203, -50
  %112 = mul nuw nsw i64 %polly.indvar203, 3
  %113 = add nuw nsw i64 %112, 7
  %pexp.p_div_q = lshr i64 %113, 3
  %114 = sub nsw i64 %polly.indvar203, %pexp.p_div_q
  %polly.loop_guard = icmp slt i64 %114, 15
  br i1 %polly.loop_guard, label %polly.loop_header222.preheader, label %polly.loop_exit224

polly.loop_header222.preheader:                   ; preds = %polly.loop_exit208
  %115 = mul nuw nsw i64 %polly.indvar203, 5
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit276, %polly.loop_exit208
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -50
  %indvars.iv.next1143 = add nuw nsw i64 %indvars.iv1142, 30
  %indvars.iv.next1145 = add nuw nsw i64 %indvars.iv1144, 3
  %indvars.iv.next1153 = add nsw i64 %indvars.iv1152, -30
  %indvars.iv.next1158 = add nuw nsw i64 %indvars.iv1157, 30
  %exitcond1165.not = icmp eq i64 %polly.indvar_next204, 24
  br i1 %exitcond1165.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit214, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_exit214 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar209, 1200
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_header212
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1141.not = icmp eq i64 %polly.indvar_next210, 1000
  br i1 %exitcond1141.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_header212, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_header212 ]
  %116 = add nuw nsw i64 %polly.indvar215, %110
  %polly.access.mul.call2219 = mul nuw nsw i64 %116, 1000
  %polly.access.add.call2220 = add nuw nsw i64 %polly.access.mul.call2219, %polly.indvar209
  %polly.access.call2221 = getelementptr double, double* %polly.access.cast.call2785, i64 %polly.access.add.call2220
  %polly.access.call2221.load = load double, double* %polly.access.call2221, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar215, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2221.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next216, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header222:                             ; preds = %polly.loop_header222.preheader, %polly.loop_exit276
  %indvar1470 = phi i64 [ 0, %polly.loop_header222.preheader ], [ %indvar.next1471, %polly.loop_exit276 ]
  %indvars.iv1159 = phi i64 [ %108, %polly.loop_header222.preheader ], [ %indvars.iv.next1160, %polly.loop_exit276 ]
  %indvars.iv1154 = phi i64 [ %107, %polly.loop_header222.preheader ], [ %indvars.iv.next1155, %polly.loop_exit276 ]
  %indvars.iv1146 = phi i64 [ %109, %polly.loop_header222.preheader ], [ %indvars.iv.next1147, %polly.loop_exit276 ]
  %polly.indvar225 = phi i64 [ %114, %polly.loop_header222.preheader ], [ %polly.indvar_next226, %polly.loop_exit276 ]
  %117 = mul nsw i64 %indvar1470, -80
  %118 = add i64 %102, %117
  %smax1472 = call i64 @llvm.smax.i64(i64 %118, i64 0)
  %119 = mul nuw nsw i64 %indvar1470, 80
  %120 = add i64 %104, %119
  %121 = add i64 %smax1472, %120
  %smax1156 = call i64 @llvm.smax.i64(i64 %indvars.iv1154, i64 0)
  %122 = add i64 %smax1156, %indvars.iv1159
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1146, i64 0)
  %123 = shl nsw i64 %polly.indvar225, 3
  %.not.not = icmp sgt i64 %123, %115
  %124 = mul nsw i64 %polly.indvar225, 80
  %125 = add nsw i64 %124, %111
  %126 = icmp sgt i64 %125, 50
  %127 = select i1 %126, i64 %125, i64 50
  %128 = add nsw i64 %125, 79
  %polly.loop_guard248.not = icmp sgt i64 %127, %128
  br i1 %.not.not, label %polly.loop_header228.us, label %polly.loop_header222.split

polly.loop_header228.us:                          ; preds = %polly.loop_header222, %polly.merge.us
  %polly.indvar231.us = phi i64 [ %polly.indvar_next232.us, %polly.merge.us ], [ 0, %polly.loop_header222 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar231.us, 1200
  br label %polly.loop_header234.us

polly.loop_header234.us:                          ; preds = %polly.loop_header228.us, %polly.loop_header234.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_header234.us ], [ 0, %polly.loop_header228.us ]
  %129 = add nuw nsw i64 %polly.indvar237.us, %110
  %polly.access.mul.call1241.us = mul nuw nsw i64 %129, 1000
  %polly.access.add.call1242.us = add nuw nsw i64 %polly.access.mul.call1241.us, %polly.indvar231.us
  %polly.access.call1243.us = getelementptr double, double* %polly.access.cast.call1775, i64 %polly.access.add.call1242.us
  %polly.access.call1243.load.us = load double, double* %polly.access.call1243.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar237.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1243.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1150.not = icmp eq i64 %polly.indvar_next238.us, 50
  br i1 %exitcond1150.not, label %polly.loop_exit236.us, label %polly.loop_header234.us

polly.loop_exit236.us:                            ; preds = %polly.loop_header234.us
  br i1 %polly.loop_guard248.not, label %polly.merge.us, label %polly.loop_header245.us

polly.loop_header245.us:                          ; preds = %polly.loop_exit236.us, %polly.loop_header245.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_header245.us ], [ %127, %polly.loop_exit236.us ]
  %130 = add nuw nsw i64 %polly.indvar249.us, %110
  %polly.access.mul.call1253.us = mul nsw i64 %130, 1000
  %polly.access.add.call1254.us = add nuw nsw i64 %polly.access.mul.call1253.us, %polly.indvar231.us
  %polly.access.call1255.us = getelementptr double, double* %polly.access.cast.call1775, i64 %polly.access.add.call1254.us
  %polly.access.call1255.load.us = load double, double* %polly.access.call1255.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1257.us = add nuw nsw i64 %polly.indvar249.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1258.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.us
  store double %polly.access.call1255.load.us, double* %polly.access.Packed_MemRef_call1258.us, align 8
  %polly.indvar_next250.us = add nuw nsw i64 %polly.indvar249.us, 1
  %polly.loop_cond251.not.not.us = icmp slt i64 %polly.indvar249.us, %128
  br i1 %polly.loop_cond251.not.not.us, label %polly.loop_header245.us, label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.loop_header245.us, %polly.loop_exit236.us
  %polly.indvar_next232.us = add nuw nsw i64 %polly.indvar231.us, 1
  %exitcond1151.not = icmp eq i64 %polly.indvar_next232.us, 1000
  br i1 %exitcond1151.not, label %polly.loop_header274.preheader, label %polly.loop_header228.us

polly.loop_header222.split:                       ; preds = %polly.loop_header222
  %polly.loop_guard263 = icmp sgt i64 %125, -80
  br i1 %polly.loop_guard263, label %polly.loop_header228.us993, label %polly.loop_header274.preheader

polly.loop_header228.us993:                       ; preds = %polly.loop_header222.split, %polly.merge.loopexit979.us1037
  %polly.indvar231.us994 = phi i64 [ %polly.indvar_next232.us1029, %polly.merge.loopexit979.us1037 ], [ 0, %polly.loop_header222.split ]
  %polly.access.mul.Packed_MemRef_call1271.us1036 = mul nuw nsw i64 %polly.indvar231.us994, 1200
  br label %polly.loop_header260.us996

polly.loop_header260.us996:                       ; preds = %polly.loop_header228.us993, %polly.loop_header260.us996
  %polly.indvar264.us997 = phi i64 [ %polly.indvar_next265.us1004, %polly.loop_header260.us996 ], [ 0, %polly.loop_header228.us993 ]
  %131 = add nuw nsw i64 %polly.indvar264.us997, %110
  %polly.access.mul.call1268.us998 = mul nuw nsw i64 %131, 1000
  %polly.access.add.call1269.us999 = add nuw nsw i64 %polly.access.mul.call1268.us998, %polly.indvar231.us994
  %polly.access.call1270.us1000 = getelementptr double, double* %polly.access.cast.call1775, i64 %polly.access.add.call1269.us999
  %polly.access.call1270.load.us1001 = load double, double* %polly.access.call1270.us1000, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1272.us1002 = add nuw nsw i64 %polly.indvar264.us997, %polly.access.mul.Packed_MemRef_call1271.us1036
  %polly.access.Packed_MemRef_call1273.us1003 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1272.us1002
  store double %polly.access.call1270.load.us1001, double* %polly.access.Packed_MemRef_call1273.us1003, align 8
  %polly.indvar_next265.us1004 = add nuw nsw i64 %polly.indvar264.us997, 1
  %exitcond1148.not = icmp eq i64 %polly.indvar264.us997, %smax
  br i1 %exitcond1148.not, label %polly.merge.loopexit979.us1037, label %polly.loop_header260.us996

polly.merge.loopexit979.us1037:                   ; preds = %polly.loop_header260.us996
  %polly.indvar_next232.us1029 = add nuw nsw i64 %polly.indvar231.us994, 1
  %exitcond1149.not = icmp eq i64 %polly.indvar_next232.us1029, 1000
  br i1 %exitcond1149.not, label %polly.loop_header274.preheader, label %polly.loop_header228.us993

polly.loop_exit276:                               ; preds = %polly.loop_exit283.loopexit.us, %polly.loop_header274.preheader
  %polly.indvar_next226 = add nsw i64 %polly.indvar225, 1
  %polly.loop_cond227 = icmp slt i64 %polly.indvar225, 14
  %indvars.iv.next1147 = add i64 %indvars.iv1146, 80
  %indvars.iv.next1155 = add i64 %indvars.iv1154, -80
  %indvars.iv.next1160 = add i64 %indvars.iv1159, 80
  %indvar.next1471 = add i64 %indvar1470, 1
  br i1 %polly.loop_cond227, label %polly.loop_header222, label %polly.loop_exit224

polly.loop_header274.preheader:                   ; preds = %polly.merge.loopexit979.us1037, %polly.merge.us, %polly.loop_header222.split
  %132 = sub nsw i64 %110, %124
  %133 = icmp sgt i64 %132, 0
  %134 = select i1 %133, i64 %132, i64 0
  %polly.loop_guard284 = icmp slt i64 %134, 80
  br i1 %polly.loop_guard284, label %polly.loop_header274.us, label %polly.loop_exit276

polly.loop_header274.us:                          ; preds = %polly.loop_header274.preheader, %polly.loop_exit283.loopexit.us
  %polly.indvar277.us = phi i64 [ %polly.indvar_next278.us, %polly.loop_exit283.loopexit.us ], [ 0, %polly.loop_header274.preheader ]
  %polly.access.mul.Packed_MemRef_call1296.us = mul nuw nsw i64 %polly.indvar277.us, 1200
  br label %polly.loop_header281.us

polly.loop_header281.us:                          ; preds = %polly.loop_header274.us, %polly.loop_exit291.us
  %indvar1473 = phi i64 [ 0, %polly.loop_header274.us ], [ %indvar.next1474, %polly.loop_exit291.us ]
  %indvars.iv1161 = phi i64 [ %122, %polly.loop_header274.us ], [ %indvars.iv.next1162, %polly.loop_exit291.us ]
  %polly.indvar285.us = phi i64 [ %134, %polly.loop_header274.us ], [ %polly.indvar_next286.us, %polly.loop_exit291.us ]
  %135 = add i64 %121, %indvar1473
  %smin1475 = call i64 @llvm.smin.i64(i64 %135, i64 49)
  %136 = add nsw i64 %smin1475, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1161, i64 49)
  %137 = add i64 %polly.indvar285.us, %124
  %138 = add i64 %137, %111
  %polly.loop_guard292.us1266 = icmp sgt i64 %138, -1
  br i1 %polly.loop_guard292.us1266, label %polly.loop_header289.preheader.us, label %polly.loop_exit291.us

polly.loop_header289.us:                          ; preds = %polly.loop_header289.us.preheader, %polly.loop_header289.us
  %polly.indvar293.us = phi i64 [ %polly.indvar_next294.us, %polly.loop_header289.us ], [ %polly.indvar293.us.ph, %polly.loop_header289.us.preheader ]
  %139 = add nuw nsw i64 %polly.indvar293.us, %110
  %polly.access.add.Packed_MemRef_call1297.us = add nuw nsw i64 %polly.indvar293.us, %polly.access.mul.Packed_MemRef_call1296.us
  %polly.access.Packed_MemRef_call1298.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1297.us
  %_p_scalar_299.us = load double, double* %polly.access.Packed_MemRef_call1298.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_303.us, %_p_scalar_299.us
  %polly.access.Packed_MemRef_call2306.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1297.us
  %_p_scalar_307.us = load double, double* %polly.access.Packed_MemRef_call2306.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_311.us, %_p_scalar_307.us
  %140 = shl i64 %139, 3
  %141 = add i64 %140, %142
  %scevgep312.us = getelementptr i8, i8* %call, i64 %141
  %scevgep312313.us = bitcast i8* %scevgep312.us to double*
  %_p_scalar_314.us = load double, double* %scevgep312313.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_314.us
  store double %p_add42.i118.us, double* %scevgep312313.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next294.us = add nuw nsw i64 %polly.indvar293.us, 1
  %exitcond1163.not = icmp eq i64 %polly.indvar293.us, %smin
  br i1 %exitcond1163.not, label %polly.loop_exit291.us, label %polly.loop_header289.us, !llvm.loop !84

polly.loop_exit291.us:                            ; preds = %polly.loop_header289.us, %middle.block1467, %polly.loop_header281.us
  %polly.indvar_next286.us = add nuw nsw i64 %polly.indvar285.us, 1
  %polly.loop_cond287.us = icmp ult i64 %polly.indvar285.us, 79
  %indvars.iv.next1162 = add i64 %indvars.iv1161, 1
  %indvar.next1474 = add i64 %indvar1473, 1
  br i1 %polly.loop_cond287.us, label %polly.loop_header281.us, label %polly.loop_exit283.loopexit.us

polly.loop_header289.preheader.us:                ; preds = %polly.loop_header281.us
  %polly.access.add.Packed_MemRef_call2301.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1296.us, %138
  %polly.access.Packed_MemRef_call2302.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2301.us
  %_p_scalar_303.us = load double, double* %polly.access.Packed_MemRef_call2302.us, align 8
  %polly.access.Packed_MemRef_call1310.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2301.us
  %_p_scalar_311.us = load double, double* %polly.access.Packed_MemRef_call1310.us, align 8
  %142 = mul i64 %137, 9600
  %min.iters.check1476 = icmp ult i64 %136, 4
  br i1 %min.iters.check1476, label %polly.loop_header289.us.preheader, label %vector.ph1477

vector.ph1477:                                    ; preds = %polly.loop_header289.preheader.us
  %n.vec1479 = and i64 %136, -4
  %broadcast.splatinsert1485 = insertelement <4 x double> poison, double %_p_scalar_303.us, i32 0
  %broadcast.splat1486 = shufflevector <4 x double> %broadcast.splatinsert1485, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1488 = insertelement <4 x double> poison, double %_p_scalar_311.us, i32 0
  %broadcast.splat1489 = shufflevector <4 x double> %broadcast.splatinsert1488, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1469

vector.body1469:                                  ; preds = %vector.body1469, %vector.ph1477
  %index1480 = phi i64 [ 0, %vector.ph1477 ], [ %index.next1481, %vector.body1469 ]
  %143 = add nuw nsw i64 %index1480, %110
  %144 = add nuw nsw i64 %index1480, %polly.access.mul.Packed_MemRef_call1296.us
  %145 = getelementptr double, double* %Packed_MemRef_call1, i64 %144
  %146 = bitcast double* %145 to <4 x double>*
  %wide.load1484 = load <4 x double>, <4 x double>* %146, align 8
  %147 = fmul fast <4 x double> %broadcast.splat1486, %wide.load1484
  %148 = getelementptr double, double* %Packed_MemRef_call2, i64 %144
  %149 = bitcast double* %148 to <4 x double>*
  %wide.load1487 = load <4 x double>, <4 x double>* %149, align 8
  %150 = fmul fast <4 x double> %broadcast.splat1489, %wide.load1487
  %151 = shl i64 %143, 3
  %152 = add i64 %151, %142
  %153 = getelementptr i8, i8* %call, i64 %152
  %154 = bitcast i8* %153 to <4 x double>*
  %wide.load1490 = load <4 x double>, <4 x double>* %154, align 8, !alias.scope !72, !noalias !74
  %155 = fadd fast <4 x double> %150, %147
  %156 = fmul fast <4 x double> %155, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %157 = fadd fast <4 x double> %156, %wide.load1490
  %158 = bitcast i8* %153 to <4 x double>*
  store <4 x double> %157, <4 x double>* %158, align 8, !alias.scope !72, !noalias !74
  %index.next1481 = add i64 %index1480, 4
  %159 = icmp eq i64 %index.next1481, %n.vec1479
  br i1 %159, label %middle.block1467, label %vector.body1469, !llvm.loop !85

middle.block1467:                                 ; preds = %vector.body1469
  %cmp.n1483 = icmp eq i64 %136, %n.vec1479
  br i1 %cmp.n1483, label %polly.loop_exit291.us, label %polly.loop_header289.us.preheader

polly.loop_header289.us.preheader:                ; preds = %polly.loop_header289.preheader.us, %middle.block1467
  %polly.indvar293.us.ph = phi i64 [ 0, %polly.loop_header289.preheader.us ], [ %n.vec1479, %middle.block1467 ]
  br label %polly.loop_header289.us

polly.loop_exit283.loopexit.us:                   ; preds = %polly.loop_exit291.us
  %polly.indvar_next278.us = add nuw nsw i64 %polly.indvar277.us, 1
  %exitcond1164.not = icmp eq i64 %polly.indvar_next278.us, 1000
  br i1 %exitcond1164.not, label %polly.loop_exit276, label %polly.loop_header274.us

polly.start317:                                   ; preds = %kernel_syr2k.exit
  %malloccall319 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall321 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header405

polly.exiting318:                                 ; preds = %polly.loop_exit447
  tail call void @free(i8* %malloccall319)
  tail call void @free(i8* %malloccall321)
  br label %kernel_syr2k.exit90

polly.loop_header405:                             ; preds = %polly.loop_exit413, %polly.start317
  %indvar1406 = phi i64 [ %indvar.next1407, %polly.loop_exit413 ], [ 0, %polly.start317 ]
  %polly.indvar408 = phi i64 [ %polly.indvar_next409, %polly.loop_exit413 ], [ 1, %polly.start317 ]
  %160 = add i64 %indvar1406, 1
  %161 = mul nuw nsw i64 %polly.indvar408, 9600
  %scevgep417 = getelementptr i8, i8* %call, i64 %161
  %min.iters.check1408 = icmp ult i64 %160, 4
  br i1 %min.iters.check1408, label %polly.loop_header411.preheader, label %vector.ph1409

vector.ph1409:                                    ; preds = %polly.loop_header405
  %n.vec1411 = and i64 %160, -4
  br label %vector.body1405

vector.body1405:                                  ; preds = %vector.body1405, %vector.ph1409
  %index1412 = phi i64 [ 0, %vector.ph1409 ], [ %index.next1413, %vector.body1405 ]
  %162 = shl nuw nsw i64 %index1412, 3
  %163 = getelementptr i8, i8* %scevgep417, i64 %162
  %164 = bitcast i8* %163 to <4 x double>*
  %wide.load1416 = load <4 x double>, <4 x double>* %164, align 8, !alias.scope !86, !noalias !88
  %165 = fmul fast <4 x double> %wide.load1416, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %166 = bitcast i8* %163 to <4 x double>*
  store <4 x double> %165, <4 x double>* %166, align 8, !alias.scope !86, !noalias !88
  %index.next1413 = add i64 %index1412, 4
  %167 = icmp eq i64 %index.next1413, %n.vec1411
  br i1 %167, label %middle.block1403, label %vector.body1405, !llvm.loop !93

middle.block1403:                                 ; preds = %vector.body1405
  %cmp.n1415 = icmp eq i64 %160, %n.vec1411
  br i1 %cmp.n1415, label %polly.loop_exit413, label %polly.loop_header411.preheader

polly.loop_header411.preheader:                   ; preds = %polly.loop_header405, %middle.block1403
  %polly.indvar414.ph = phi i64 [ 0, %polly.loop_header405 ], [ %n.vec1411, %middle.block1403 ]
  br label %polly.loop_header411

polly.loop_exit413:                               ; preds = %polly.loop_header411, %middle.block1403
  %polly.indvar_next409 = add nuw nsw i64 %polly.indvar408, 1
  %exitcond1199.not = icmp eq i64 %polly.indvar_next409, 1200
  %indvar.next1407 = add i64 %indvar1406, 1
  br i1 %exitcond1199.not, label %polly.loop_header421.preheader, label %polly.loop_header405

polly.loop_header421.preheader:                   ; preds = %polly.loop_exit413
  %Packed_MemRef_call1320 = bitcast i8* %malloccall319 to double*
  %Packed_MemRef_call2322 = bitcast i8* %malloccall321 to double*
  br label %polly.loop_header421

polly.loop_header411:                             ; preds = %polly.loop_header411.preheader, %polly.loop_header411
  %polly.indvar414 = phi i64 [ %polly.indvar_next415, %polly.loop_header411 ], [ %polly.indvar414.ph, %polly.loop_header411.preheader ]
  %168 = shl nuw nsw i64 %polly.indvar414, 3
  %scevgep418 = getelementptr i8, i8* %scevgep417, i64 %168
  %scevgep418419 = bitcast i8* %scevgep418 to double*
  %_p_scalar_420 = load double, double* %scevgep418419, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_420, 1.200000e+00
  store double %p_mul.i57, double* %scevgep418419, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next415 = add nuw nsw i64 %polly.indvar414, 1
  %exitcond1198.not = icmp eq i64 %polly.indvar_next415, %polly.indvar408
  br i1 %exitcond1198.not, label %polly.loop_exit413, label %polly.loop_header411, !llvm.loop !94

polly.loop_header421:                             ; preds = %polly.loop_header421.preheader, %polly.loop_exit447
  %indvars.iv1188 = phi i64 [ 0, %polly.loop_header421.preheader ], [ %indvars.iv.next1189, %polly.loop_exit447 ]
  %indvars.iv1183 = phi i64 [ 0, %polly.loop_header421.preheader ], [ %indvars.iv.next1184, %polly.loop_exit447 ]
  %indvars.iv1174 = phi i64 [ 7, %polly.loop_header421.preheader ], [ %indvars.iv.next1175, %polly.loop_exit447 ]
  %indvars.iv1172 = phi i64 [ 79, %polly.loop_header421.preheader ], [ %indvars.iv.next1173, %polly.loop_exit447 ]
  %indvars.iv1168 = phi i64 [ 1200, %polly.loop_header421.preheader ], [ %indvars.iv.next1169, %polly.loop_exit447 ]
  %polly.indvar424 = phi i64 [ 0, %polly.loop_header421.preheader ], [ %polly.indvar_next425, %polly.loop_exit447 ]
  %169 = mul nsw i64 %polly.indvar424, -30
  %170 = mul nuw nsw i64 %polly.indvar424, 3
  %171 = add nuw i64 %170, 7
  %172 = lshr i64 %171, 3
  %173 = mul nuw nsw i64 %172, 80
  %174 = add i64 %169, %173
  %175 = mul nuw nsw i64 %polly.indvar424, 30
  %176 = sub nsw i64 %175, %173
  %177 = lshr i64 %indvars.iv1174, 3
  %178 = mul nuw nsw i64 %177, 80
  %179 = add i64 %indvars.iv1183, %178
  %180 = sub nsw i64 %indvars.iv1188, %178
  %181 = sub nsw i64 %indvars.iv1172, %178
  %182 = mul nuw nsw i64 %polly.indvar424, 50
  br label %polly.loop_header427

polly.loop_exit429:                               ; preds = %polly.loop_exit435
  %183 = mul nsw i64 %polly.indvar424, -50
  %184 = mul nuw nsw i64 %polly.indvar424, 3
  %185 = add nuw nsw i64 %184, 7
  %pexp.p_div_q443 = lshr i64 %185, 3
  %186 = sub nsw i64 %polly.indvar424, %pexp.p_div_q443
  %polly.loop_guard448 = icmp slt i64 %186, 15
  br i1 %polly.loop_guard448, label %polly.loop_header445.preheader, label %polly.loop_exit447

polly.loop_header445.preheader:                   ; preds = %polly.loop_exit429
  %187 = mul nuw nsw i64 %polly.indvar424, 5
  br label %polly.loop_header445

polly.loop_exit447:                               ; preds = %polly.loop_exit504, %polly.loop_exit429
  %polly.indvar_next425 = add nuw nsw i64 %polly.indvar424, 1
  %indvars.iv.next1169 = add nsw i64 %indvars.iv1168, -50
  %indvars.iv.next1173 = add nuw nsw i64 %indvars.iv1172, 30
  %indvars.iv.next1175 = add nuw nsw i64 %indvars.iv1174, 3
  %indvars.iv.next1184 = add nsw i64 %indvars.iv1183, -30
  %indvars.iv.next1189 = add nuw nsw i64 %indvars.iv1188, 30
  %exitcond1197.not = icmp eq i64 %polly.indvar_next425, 24
  br i1 %exitcond1197.not, label %polly.exiting318, label %polly.loop_header421

polly.loop_header427:                             ; preds = %polly.loop_exit435, %polly.loop_header421
  %polly.indvar430 = phi i64 [ 0, %polly.loop_header421 ], [ %polly.indvar_next431, %polly.loop_exit435 ]
  %polly.access.mul.Packed_MemRef_call2322 = mul nuw nsw i64 %polly.indvar430, 1200
  br label %polly.loop_header433

polly.loop_exit435:                               ; preds = %polly.loop_header433
  %polly.indvar_next431 = add nuw nsw i64 %polly.indvar430, 1
  %exitcond1171.not = icmp eq i64 %polly.indvar_next431, 1000
  br i1 %exitcond1171.not, label %polly.loop_exit429, label %polly.loop_header427

polly.loop_header433:                             ; preds = %polly.loop_header433, %polly.loop_header427
  %polly.indvar436 = phi i64 [ 0, %polly.loop_header427 ], [ %polly.indvar_next437, %polly.loop_header433 ]
  %188 = add nuw nsw i64 %polly.indvar436, %182
  %polly.access.mul.call2440 = mul nuw nsw i64 %188, 1000
  %polly.access.add.call2441 = add nuw nsw i64 %polly.access.mul.call2440, %polly.indvar430
  %polly.access.call2442 = getelementptr double, double* %polly.access.cast.call2785, i64 %polly.access.add.call2441
  %polly.access.call2442.load = load double, double* %polly.access.call2442, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2322 = add nuw nsw i64 %polly.indvar436, %polly.access.mul.Packed_MemRef_call2322
  %polly.access.Packed_MemRef_call2322 = getelementptr double, double* %Packed_MemRef_call2322, i64 %polly.access.add.Packed_MemRef_call2322
  store double %polly.access.call2442.load, double* %polly.access.Packed_MemRef_call2322, align 8
  %polly.indvar_next437 = add nuw nsw i64 %polly.indvar436, 1
  %exitcond1170.not = icmp eq i64 %polly.indvar_next437, %indvars.iv1168
  br i1 %exitcond1170.not, label %polly.loop_exit435, label %polly.loop_header433

polly.loop_header445:                             ; preds = %polly.loop_header445.preheader, %polly.loop_exit504
  %indvar1420 = phi i64 [ 0, %polly.loop_header445.preheader ], [ %indvar.next1421, %polly.loop_exit504 ]
  %indvars.iv1190 = phi i64 [ %180, %polly.loop_header445.preheader ], [ %indvars.iv.next1191, %polly.loop_exit504 ]
  %indvars.iv1185 = phi i64 [ %179, %polly.loop_header445.preheader ], [ %indvars.iv.next1186, %polly.loop_exit504 ]
  %indvars.iv1176 = phi i64 [ %181, %polly.loop_header445.preheader ], [ %indvars.iv.next1177, %polly.loop_exit504 ]
  %polly.indvar449 = phi i64 [ %186, %polly.loop_header445.preheader ], [ %polly.indvar_next450, %polly.loop_exit504 ]
  %189 = mul nsw i64 %indvar1420, -80
  %190 = add i64 %174, %189
  %smax1422 = call i64 @llvm.smax.i64(i64 %190, i64 0)
  %191 = mul nuw nsw i64 %indvar1420, 80
  %192 = add i64 %176, %191
  %193 = add i64 %smax1422, %192
  %smax1187 = call i64 @llvm.smax.i64(i64 %indvars.iv1185, i64 0)
  %194 = add i64 %smax1187, %indvars.iv1190
  %smax1178 = call i64 @llvm.smax.i64(i64 %indvars.iv1176, i64 0)
  %195 = shl nsw i64 %polly.indvar449, 3
  %.not.not977 = icmp sgt i64 %195, %187
  %196 = mul nsw i64 %polly.indvar449, 80
  %197 = add nsw i64 %196, %183
  %198 = icmp sgt i64 %197, 50
  %199 = select i1 %198, i64 %197, i64 50
  %200 = add nsw i64 %197, 79
  %polly.loop_guard476.not = icmp sgt i64 %199, %200
  br i1 %.not.not977, label %polly.loop_header452.us, label %polly.loop_header445.split

polly.loop_header452.us:                          ; preds = %polly.loop_header445, %polly.merge459.us
  %polly.indvar455.us = phi i64 [ %polly.indvar_next456.us, %polly.merge459.us ], [ 0, %polly.loop_header445 ]
  %polly.access.mul.Packed_MemRef_call1320.us = mul nuw nsw i64 %polly.indvar455.us, 1200
  br label %polly.loop_header462.us

polly.loop_header462.us:                          ; preds = %polly.loop_header452.us, %polly.loop_header462.us
  %polly.indvar465.us = phi i64 [ %polly.indvar_next466.us, %polly.loop_header462.us ], [ 0, %polly.loop_header452.us ]
  %201 = add nuw nsw i64 %polly.indvar465.us, %182
  %polly.access.mul.call1469.us = mul nuw nsw i64 %201, 1000
  %polly.access.add.call1470.us = add nuw nsw i64 %polly.access.mul.call1469.us, %polly.indvar455.us
  %polly.access.call1471.us = getelementptr double, double* %polly.access.cast.call1775, i64 %polly.access.add.call1470.us
  %polly.access.call1471.load.us = load double, double* %polly.access.call1471.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1320.us = add nuw nsw i64 %polly.indvar465.us, %polly.access.mul.Packed_MemRef_call1320.us
  %polly.access.Packed_MemRef_call1320.us = getelementptr double, double* %Packed_MemRef_call1320, i64 %polly.access.add.Packed_MemRef_call1320.us
  store double %polly.access.call1471.load.us, double* %polly.access.Packed_MemRef_call1320.us, align 8
  %polly.indvar_next466.us = add nuw nsw i64 %polly.indvar465.us, 1
  %exitcond1181.not = icmp eq i64 %polly.indvar_next466.us, 50
  br i1 %exitcond1181.not, label %polly.loop_exit464.us, label %polly.loop_header462.us

polly.loop_exit464.us:                            ; preds = %polly.loop_header462.us
  br i1 %polly.loop_guard476.not, label %polly.merge459.us, label %polly.loop_header473.us

polly.loop_header473.us:                          ; preds = %polly.loop_exit464.us, %polly.loop_header473.us
  %polly.indvar477.us = phi i64 [ %polly.indvar_next478.us, %polly.loop_header473.us ], [ %199, %polly.loop_exit464.us ]
  %202 = add nuw nsw i64 %polly.indvar477.us, %182
  %polly.access.mul.call1481.us = mul nsw i64 %202, 1000
  %polly.access.add.call1482.us = add nuw nsw i64 %polly.access.mul.call1481.us, %polly.indvar455.us
  %polly.access.call1483.us = getelementptr double, double* %polly.access.cast.call1775, i64 %polly.access.add.call1482.us
  %polly.access.call1483.load.us = load double, double* %polly.access.call1483.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1320485.us = add nuw nsw i64 %polly.indvar477.us, %polly.access.mul.Packed_MemRef_call1320.us
  %polly.access.Packed_MemRef_call1320486.us = getelementptr double, double* %Packed_MemRef_call1320, i64 %polly.access.add.Packed_MemRef_call1320485.us
  store double %polly.access.call1483.load.us, double* %polly.access.Packed_MemRef_call1320486.us, align 8
  %polly.indvar_next478.us = add nuw nsw i64 %polly.indvar477.us, 1
  %polly.loop_cond479.not.not.us = icmp slt i64 %polly.indvar477.us, %200
  br i1 %polly.loop_cond479.not.not.us, label %polly.loop_header473.us, label %polly.merge459.us

polly.merge459.us:                                ; preds = %polly.loop_header473.us, %polly.loop_exit464.us
  %polly.indvar_next456.us = add nuw nsw i64 %polly.indvar455.us, 1
  %exitcond1182.not = icmp eq i64 %polly.indvar_next456.us, 1000
  br i1 %exitcond1182.not, label %polly.loop_header502.preheader, label %polly.loop_header452.us

polly.loop_header445.split:                       ; preds = %polly.loop_header445
  %polly.loop_guard491 = icmp sgt i64 %197, -80
  br i1 %polly.loop_guard491, label %polly.loop_header452.us1038, label %polly.loop_header502.preheader

polly.loop_header452.us1038:                      ; preds = %polly.loop_header445.split, %polly.merge459.loopexit980.us1082
  %polly.indvar455.us1039 = phi i64 [ %polly.indvar_next456.us1074, %polly.merge459.loopexit980.us1082 ], [ 0, %polly.loop_header445.split ]
  %polly.access.mul.Packed_MemRef_call1320499.us1081 = mul nuw nsw i64 %polly.indvar455.us1039, 1200
  br label %polly.loop_header488.us1041

polly.loop_header488.us1041:                      ; preds = %polly.loop_header452.us1038, %polly.loop_header488.us1041
  %polly.indvar492.us1042 = phi i64 [ %polly.indvar_next493.us1049, %polly.loop_header488.us1041 ], [ 0, %polly.loop_header452.us1038 ]
  %203 = add nuw nsw i64 %polly.indvar492.us1042, %182
  %polly.access.mul.call1496.us1043 = mul nuw nsw i64 %203, 1000
  %polly.access.add.call1497.us1044 = add nuw nsw i64 %polly.access.mul.call1496.us1043, %polly.indvar455.us1039
  %polly.access.call1498.us1045 = getelementptr double, double* %polly.access.cast.call1775, i64 %polly.access.add.call1497.us1044
  %polly.access.call1498.load.us1046 = load double, double* %polly.access.call1498.us1045, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1320500.us1047 = add nuw nsw i64 %polly.indvar492.us1042, %polly.access.mul.Packed_MemRef_call1320499.us1081
  %polly.access.Packed_MemRef_call1320501.us1048 = getelementptr double, double* %Packed_MemRef_call1320, i64 %polly.access.add.Packed_MemRef_call1320500.us1047
  store double %polly.access.call1498.load.us1046, double* %polly.access.Packed_MemRef_call1320501.us1048, align 8
  %polly.indvar_next493.us1049 = add nuw nsw i64 %polly.indvar492.us1042, 1
  %exitcond1179.not = icmp eq i64 %polly.indvar492.us1042, %smax1178
  br i1 %exitcond1179.not, label %polly.merge459.loopexit980.us1082, label %polly.loop_header488.us1041

polly.merge459.loopexit980.us1082:                ; preds = %polly.loop_header488.us1041
  %polly.indvar_next456.us1074 = add nuw nsw i64 %polly.indvar455.us1039, 1
  %exitcond1180.not = icmp eq i64 %polly.indvar_next456.us1074, 1000
  br i1 %exitcond1180.not, label %polly.loop_header502.preheader, label %polly.loop_header452.us1038

polly.loop_exit504:                               ; preds = %polly.loop_exit511.loopexit.us, %polly.loop_header502.preheader
  %polly.indvar_next450 = add nsw i64 %polly.indvar449, 1
  %polly.loop_cond451 = icmp slt i64 %polly.indvar449, 14
  %indvars.iv.next1177 = add i64 %indvars.iv1176, 80
  %indvars.iv.next1186 = add i64 %indvars.iv1185, -80
  %indvars.iv.next1191 = add i64 %indvars.iv1190, 80
  %indvar.next1421 = add i64 %indvar1420, 1
  br i1 %polly.loop_cond451, label %polly.loop_header445, label %polly.loop_exit447

polly.loop_header502.preheader:                   ; preds = %polly.merge459.loopexit980.us1082, %polly.merge459.us, %polly.loop_header445.split
  %204 = sub nsw i64 %182, %196
  %205 = icmp sgt i64 %204, 0
  %206 = select i1 %205, i64 %204, i64 0
  %polly.loop_guard512 = icmp slt i64 %206, 80
  br i1 %polly.loop_guard512, label %polly.loop_header502.us, label %polly.loop_exit504

polly.loop_header502.us:                          ; preds = %polly.loop_header502.preheader, %polly.loop_exit511.loopexit.us
  %polly.indvar505.us = phi i64 [ %polly.indvar_next506.us, %polly.loop_exit511.loopexit.us ], [ 0, %polly.loop_header502.preheader ]
  %polly.access.mul.Packed_MemRef_call1320524.us = mul nuw nsw i64 %polly.indvar505.us, 1200
  br label %polly.loop_header509.us

polly.loop_header509.us:                          ; preds = %polly.loop_header502.us, %polly.loop_exit519.us
  %indvar1423 = phi i64 [ 0, %polly.loop_header502.us ], [ %indvar.next1424, %polly.loop_exit519.us ]
  %indvars.iv1192 = phi i64 [ %194, %polly.loop_header502.us ], [ %indvars.iv.next1193, %polly.loop_exit519.us ]
  %polly.indvar513.us = phi i64 [ %206, %polly.loop_header502.us ], [ %polly.indvar_next514.us, %polly.loop_exit519.us ]
  %207 = add i64 %193, %indvar1423
  %smin1425 = call i64 @llvm.smin.i64(i64 %207, i64 49)
  %208 = add nsw i64 %smin1425, 1
  %smin1194 = call i64 @llvm.smin.i64(i64 %indvars.iv1192, i64 49)
  %209 = add i64 %polly.indvar513.us, %196
  %210 = add i64 %209, %183
  %polly.loop_guard520.us1267 = icmp sgt i64 %210, -1
  br i1 %polly.loop_guard520.us1267, label %polly.loop_header517.preheader.us, label %polly.loop_exit519.us

polly.loop_header517.us:                          ; preds = %polly.loop_header517.us.preheader, %polly.loop_header517.us
  %polly.indvar521.us = phi i64 [ %polly.indvar_next522.us, %polly.loop_header517.us ], [ %polly.indvar521.us.ph, %polly.loop_header517.us.preheader ]
  %211 = add nuw nsw i64 %polly.indvar521.us, %182
  %polly.access.add.Packed_MemRef_call1320525.us = add nuw nsw i64 %polly.indvar521.us, %polly.access.mul.Packed_MemRef_call1320524.us
  %polly.access.Packed_MemRef_call1320526.us = getelementptr double, double* %Packed_MemRef_call1320, i64 %polly.access.add.Packed_MemRef_call1320525.us
  %_p_scalar_527.us = load double, double* %polly.access.Packed_MemRef_call1320526.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_531.us, %_p_scalar_527.us
  %polly.access.Packed_MemRef_call2322534.us = getelementptr double, double* %Packed_MemRef_call2322, i64 %polly.access.add.Packed_MemRef_call1320525.us
  %_p_scalar_535.us = load double, double* %polly.access.Packed_MemRef_call2322534.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_539.us, %_p_scalar_535.us
  %212 = shl i64 %211, 3
  %213 = add i64 %212, %214
  %scevgep540.us = getelementptr i8, i8* %call, i64 %213
  %scevgep540541.us = bitcast i8* %scevgep540.us to double*
  %_p_scalar_542.us = load double, double* %scevgep540541.us, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_542.us
  store double %p_add42.i79.us, double* %scevgep540541.us, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next522.us = add nuw nsw i64 %polly.indvar521.us, 1
  %exitcond1195.not = icmp eq i64 %polly.indvar521.us, %smin1194
  br i1 %exitcond1195.not, label %polly.loop_exit519.us, label %polly.loop_header517.us, !llvm.loop !97

polly.loop_exit519.us:                            ; preds = %polly.loop_header517.us, %middle.block1417, %polly.loop_header509.us
  %polly.indvar_next514.us = add nuw nsw i64 %polly.indvar513.us, 1
  %polly.loop_cond515.us = icmp ult i64 %polly.indvar513.us, 79
  %indvars.iv.next1193 = add i64 %indvars.iv1192, 1
  %indvar.next1424 = add i64 %indvar1423, 1
  br i1 %polly.loop_cond515.us, label %polly.loop_header509.us, label %polly.loop_exit511.loopexit.us

polly.loop_header517.preheader.us:                ; preds = %polly.loop_header509.us
  %polly.access.add.Packed_MemRef_call2322529.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1320524.us, %210
  %polly.access.Packed_MemRef_call2322530.us = getelementptr double, double* %Packed_MemRef_call2322, i64 %polly.access.add.Packed_MemRef_call2322529.us
  %_p_scalar_531.us = load double, double* %polly.access.Packed_MemRef_call2322530.us, align 8
  %polly.access.Packed_MemRef_call1320538.us = getelementptr double, double* %Packed_MemRef_call1320, i64 %polly.access.add.Packed_MemRef_call2322529.us
  %_p_scalar_539.us = load double, double* %polly.access.Packed_MemRef_call1320538.us, align 8
  %214 = mul i64 %209, 9600
  %min.iters.check1426 = icmp ult i64 %208, 4
  br i1 %min.iters.check1426, label %polly.loop_header517.us.preheader, label %vector.ph1427

vector.ph1427:                                    ; preds = %polly.loop_header517.preheader.us
  %n.vec1429 = and i64 %208, -4
  %broadcast.splatinsert1435 = insertelement <4 x double> poison, double %_p_scalar_531.us, i32 0
  %broadcast.splat1436 = shufflevector <4 x double> %broadcast.splatinsert1435, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1438 = insertelement <4 x double> poison, double %_p_scalar_539.us, i32 0
  %broadcast.splat1439 = shufflevector <4 x double> %broadcast.splatinsert1438, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1419

vector.body1419:                                  ; preds = %vector.body1419, %vector.ph1427
  %index1430 = phi i64 [ 0, %vector.ph1427 ], [ %index.next1431, %vector.body1419 ]
  %215 = add nuw nsw i64 %index1430, %182
  %216 = add nuw nsw i64 %index1430, %polly.access.mul.Packed_MemRef_call1320524.us
  %217 = getelementptr double, double* %Packed_MemRef_call1320, i64 %216
  %218 = bitcast double* %217 to <4 x double>*
  %wide.load1434 = load <4 x double>, <4 x double>* %218, align 8
  %219 = fmul fast <4 x double> %broadcast.splat1436, %wide.load1434
  %220 = getelementptr double, double* %Packed_MemRef_call2322, i64 %216
  %221 = bitcast double* %220 to <4 x double>*
  %wide.load1437 = load <4 x double>, <4 x double>* %221, align 8
  %222 = fmul fast <4 x double> %broadcast.splat1439, %wide.load1437
  %223 = shl i64 %215, 3
  %224 = add i64 %223, %214
  %225 = getelementptr i8, i8* %call, i64 %224
  %226 = bitcast i8* %225 to <4 x double>*
  %wide.load1440 = load <4 x double>, <4 x double>* %226, align 8, !alias.scope !86, !noalias !88
  %227 = fadd fast <4 x double> %222, %219
  %228 = fmul fast <4 x double> %227, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %229 = fadd fast <4 x double> %228, %wide.load1440
  %230 = bitcast i8* %225 to <4 x double>*
  store <4 x double> %229, <4 x double>* %230, align 8, !alias.scope !86, !noalias !88
  %index.next1431 = add i64 %index1430, 4
  %231 = icmp eq i64 %index.next1431, %n.vec1429
  br i1 %231, label %middle.block1417, label %vector.body1419, !llvm.loop !98

middle.block1417:                                 ; preds = %vector.body1419
  %cmp.n1433 = icmp eq i64 %208, %n.vec1429
  br i1 %cmp.n1433, label %polly.loop_exit519.us, label %polly.loop_header517.us.preheader

polly.loop_header517.us.preheader:                ; preds = %polly.loop_header517.preheader.us, %middle.block1417
  %polly.indvar521.us.ph = phi i64 [ 0, %polly.loop_header517.preheader.us ], [ %n.vec1429, %middle.block1417 ]
  br label %polly.loop_header517.us

polly.loop_exit511.loopexit.us:                   ; preds = %polly.loop_exit519.us
  %polly.indvar_next506.us = add nuw nsw i64 %polly.indvar505.us, 1
  %exitcond1196.not = icmp eq i64 %polly.indvar_next506.us, 1000
  br i1 %exitcond1196.not, label %polly.loop_exit504, label %polly.loop_header502.us

polly.start545:                                   ; preds = %init_array.exit
  %malloccall547 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall549 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header633

polly.exiting546:                                 ; preds = %polly.loop_exit675
  tail call void @free(i8* %malloccall547)
  tail call void @free(i8* %malloccall549)
  br label %kernel_syr2k.exit

polly.loop_header633:                             ; preds = %polly.loop_exit641, %polly.start545
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit641 ], [ 0, %polly.start545 ]
  %polly.indvar636 = phi i64 [ %polly.indvar_next637, %polly.loop_exit641 ], [ 1, %polly.start545 ]
  %232 = add i64 %indvar, 1
  %233 = mul nuw nsw i64 %polly.indvar636, 9600
  %scevgep645 = getelementptr i8, i8* %call, i64 %233
  %min.iters.check1358 = icmp ult i64 %232, 4
  br i1 %min.iters.check1358, label %polly.loop_header639.preheader, label %vector.ph1359

vector.ph1359:                                    ; preds = %polly.loop_header633
  %n.vec1361 = and i64 %232, -4
  br label %vector.body1357

vector.body1357:                                  ; preds = %vector.body1357, %vector.ph1359
  %index1362 = phi i64 [ 0, %vector.ph1359 ], [ %index.next1363, %vector.body1357 ]
  %234 = shl nuw nsw i64 %index1362, 3
  %235 = getelementptr i8, i8* %scevgep645, i64 %234
  %236 = bitcast i8* %235 to <4 x double>*
  %wide.load1366 = load <4 x double>, <4 x double>* %236, align 8, !alias.scope !99, !noalias !101
  %237 = fmul fast <4 x double> %wide.load1366, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %238 = bitcast i8* %235 to <4 x double>*
  store <4 x double> %237, <4 x double>* %238, align 8, !alias.scope !99, !noalias !101
  %index.next1363 = add i64 %index1362, 4
  %239 = icmp eq i64 %index.next1363, %n.vec1361
  br i1 %239, label %middle.block1355, label %vector.body1357, !llvm.loop !106

middle.block1355:                                 ; preds = %vector.body1357
  %cmp.n1365 = icmp eq i64 %232, %n.vec1361
  br i1 %cmp.n1365, label %polly.loop_exit641, label %polly.loop_header639.preheader

polly.loop_header639.preheader:                   ; preds = %polly.loop_header633, %middle.block1355
  %polly.indvar642.ph = phi i64 [ 0, %polly.loop_header633 ], [ %n.vec1361, %middle.block1355 ]
  br label %polly.loop_header639

polly.loop_exit641:                               ; preds = %polly.loop_header639, %middle.block1355
  %polly.indvar_next637 = add nuw nsw i64 %polly.indvar636, 1
  %exitcond1231.not = icmp eq i64 %polly.indvar_next637, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1231.not, label %polly.loop_header649.preheader, label %polly.loop_header633

polly.loop_header649.preheader:                   ; preds = %polly.loop_exit641
  %Packed_MemRef_call1548 = bitcast i8* %malloccall547 to double*
  %Packed_MemRef_call2550 = bitcast i8* %malloccall549 to double*
  br label %polly.loop_header649

polly.loop_header639:                             ; preds = %polly.loop_header639.preheader, %polly.loop_header639
  %polly.indvar642 = phi i64 [ %polly.indvar_next643, %polly.loop_header639 ], [ %polly.indvar642.ph, %polly.loop_header639.preheader ]
  %240 = shl nuw nsw i64 %polly.indvar642, 3
  %scevgep646 = getelementptr i8, i8* %scevgep645, i64 %240
  %scevgep646647 = bitcast i8* %scevgep646 to double*
  %_p_scalar_648 = load double, double* %scevgep646647, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_648, 1.200000e+00
  store double %p_mul.i, double* %scevgep646647, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next643 = add nuw nsw i64 %polly.indvar642, 1
  %exitcond1230.not = icmp eq i64 %polly.indvar_next643, %polly.indvar636
  br i1 %exitcond1230.not, label %polly.loop_exit641, label %polly.loop_header639, !llvm.loop !107

polly.loop_header649:                             ; preds = %polly.loop_header649.preheader, %polly.loop_exit675
  %indvars.iv1220 = phi i64 [ 0, %polly.loop_header649.preheader ], [ %indvars.iv.next1221, %polly.loop_exit675 ]
  %indvars.iv1215 = phi i64 [ 0, %polly.loop_header649.preheader ], [ %indvars.iv.next1216, %polly.loop_exit675 ]
  %indvars.iv1206 = phi i64 [ 7, %polly.loop_header649.preheader ], [ %indvars.iv.next1207, %polly.loop_exit675 ]
  %indvars.iv1204 = phi i64 [ 79, %polly.loop_header649.preheader ], [ %indvars.iv.next1205, %polly.loop_exit675 ]
  %indvars.iv1200 = phi i64 [ 1200, %polly.loop_header649.preheader ], [ %indvars.iv.next1201, %polly.loop_exit675 ]
  %polly.indvar652 = phi i64 [ 0, %polly.loop_header649.preheader ], [ %polly.indvar_next653, %polly.loop_exit675 ]
  %241 = mul nsw i64 %polly.indvar652, -30
  %242 = mul nuw nsw i64 %polly.indvar652, 3
  %243 = add nuw i64 %242, 7
  %244 = lshr i64 %243, 3
  %245 = mul nuw nsw i64 %244, 80
  %246 = add i64 %241, %245
  %247 = mul nuw nsw i64 %polly.indvar652, 30
  %248 = sub nsw i64 %247, %245
  %249 = lshr i64 %indvars.iv1206, 3
  %250 = mul nuw nsw i64 %249, 80
  %251 = add i64 %indvars.iv1215, %250
  %252 = sub nsw i64 %indvars.iv1220, %250
  %253 = sub nsw i64 %indvars.iv1204, %250
  %254 = mul nuw nsw i64 %polly.indvar652, 50
  br label %polly.loop_header655

polly.loop_exit657:                               ; preds = %polly.loop_exit663
  %255 = mul nsw i64 %polly.indvar652, -50
  %256 = mul nuw nsw i64 %polly.indvar652, 3
  %257 = add nuw nsw i64 %256, 7
  %pexp.p_div_q671 = lshr i64 %257, 3
  %258 = sub nsw i64 %polly.indvar652, %pexp.p_div_q671
  %polly.loop_guard676 = icmp slt i64 %258, 15
  br i1 %polly.loop_guard676, label %polly.loop_header673.preheader, label %polly.loop_exit675

polly.loop_header673.preheader:                   ; preds = %polly.loop_exit657
  %259 = mul nuw nsw i64 %polly.indvar652, 5
  br label %polly.loop_header673

polly.loop_exit675:                               ; preds = %polly.loop_exit732, %polly.loop_exit657
  %polly.indvar_next653 = add nuw nsw i64 %polly.indvar652, 1
  %indvars.iv.next1201 = add nsw i64 %indvars.iv1200, -50
  %indvars.iv.next1205 = add nuw nsw i64 %indvars.iv1204, 30
  %indvars.iv.next1207 = add nuw nsw i64 %indvars.iv1206, 3
  %indvars.iv.next1216 = add nsw i64 %indvars.iv1215, -30
  %indvars.iv.next1221 = add nuw nsw i64 %indvars.iv1220, 30
  %exitcond1229.not = icmp eq i64 %polly.indvar_next653, 24
  br i1 %exitcond1229.not, label %polly.exiting546, label %polly.loop_header649

polly.loop_header655:                             ; preds = %polly.loop_exit663, %polly.loop_header649
  %polly.indvar658 = phi i64 [ 0, %polly.loop_header649 ], [ %polly.indvar_next659, %polly.loop_exit663 ]
  %polly.access.mul.Packed_MemRef_call2550 = mul nuw nsw i64 %polly.indvar658, 1200
  br label %polly.loop_header661

polly.loop_exit663:                               ; preds = %polly.loop_header661
  %polly.indvar_next659 = add nuw nsw i64 %polly.indvar658, 1
  %exitcond1203.not = icmp eq i64 %polly.indvar_next659, 1000
  br i1 %exitcond1203.not, label %polly.loop_exit657, label %polly.loop_header655

polly.loop_header661:                             ; preds = %polly.loop_header661, %polly.loop_header655
  %polly.indvar664 = phi i64 [ 0, %polly.loop_header655 ], [ %polly.indvar_next665, %polly.loop_header661 ]
  %260 = add nuw nsw i64 %polly.indvar664, %254
  %polly.access.mul.call2668 = mul nuw nsw i64 %260, 1000
  %polly.access.add.call2669 = add nuw nsw i64 %polly.access.mul.call2668, %polly.indvar658
  %polly.access.call2670 = getelementptr double, double* %polly.access.cast.call2785, i64 %polly.access.add.call2669
  %polly.access.call2670.load = load double, double* %polly.access.call2670, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2550 = add nuw nsw i64 %polly.indvar664, %polly.access.mul.Packed_MemRef_call2550
  %polly.access.Packed_MemRef_call2550 = getelementptr double, double* %Packed_MemRef_call2550, i64 %polly.access.add.Packed_MemRef_call2550
  store double %polly.access.call2670.load, double* %polly.access.Packed_MemRef_call2550, align 8
  %polly.indvar_next665 = add nuw nsw i64 %polly.indvar664, 1
  %exitcond1202.not = icmp eq i64 %polly.indvar_next665, %indvars.iv1200
  br i1 %exitcond1202.not, label %polly.loop_exit663, label %polly.loop_header661

polly.loop_header673:                             ; preds = %polly.loop_header673.preheader, %polly.loop_exit732
  %indvar1370 = phi i64 [ 0, %polly.loop_header673.preheader ], [ %indvar.next1371, %polly.loop_exit732 ]
  %indvars.iv1222 = phi i64 [ %252, %polly.loop_header673.preheader ], [ %indvars.iv.next1223, %polly.loop_exit732 ]
  %indvars.iv1217 = phi i64 [ %251, %polly.loop_header673.preheader ], [ %indvars.iv.next1218, %polly.loop_exit732 ]
  %indvars.iv1208 = phi i64 [ %253, %polly.loop_header673.preheader ], [ %indvars.iv.next1209, %polly.loop_exit732 ]
  %polly.indvar677 = phi i64 [ %258, %polly.loop_header673.preheader ], [ %polly.indvar_next678, %polly.loop_exit732 ]
  %261 = mul nsw i64 %indvar1370, -80
  %262 = add i64 %246, %261
  %smax1372 = call i64 @llvm.smax.i64(i64 %262, i64 0)
  %263 = mul nuw nsw i64 %indvar1370, 80
  %264 = add i64 %248, %263
  %265 = add i64 %smax1372, %264
  %smax1219 = call i64 @llvm.smax.i64(i64 %indvars.iv1217, i64 0)
  %266 = add i64 %smax1219, %indvars.iv1222
  %smax1210 = call i64 @llvm.smax.i64(i64 %indvars.iv1208, i64 0)
  %267 = shl nsw i64 %polly.indvar677, 3
  %.not.not978 = icmp sgt i64 %267, %259
  %268 = mul nsw i64 %polly.indvar677, 80
  %269 = add nsw i64 %268, %255
  %270 = icmp sgt i64 %269, 50
  %271 = select i1 %270, i64 %269, i64 50
  %272 = add nsw i64 %269, 79
  %polly.loop_guard704.not = icmp sgt i64 %271, %272
  br i1 %.not.not978, label %polly.loop_header680.us, label %polly.loop_header673.split

polly.loop_header680.us:                          ; preds = %polly.loop_header673, %polly.merge687.us
  %polly.indvar683.us = phi i64 [ %polly.indvar_next684.us, %polly.merge687.us ], [ 0, %polly.loop_header673 ]
  %polly.access.mul.Packed_MemRef_call1548.us = mul nuw nsw i64 %polly.indvar683.us, 1200
  br label %polly.loop_header690.us

polly.loop_header690.us:                          ; preds = %polly.loop_header680.us, %polly.loop_header690.us
  %polly.indvar693.us = phi i64 [ %polly.indvar_next694.us, %polly.loop_header690.us ], [ 0, %polly.loop_header680.us ]
  %273 = add nuw nsw i64 %polly.indvar693.us, %254
  %polly.access.mul.call1697.us = mul nuw nsw i64 %273, 1000
  %polly.access.add.call1698.us = add nuw nsw i64 %polly.access.mul.call1697.us, %polly.indvar683.us
  %polly.access.call1699.us = getelementptr double, double* %polly.access.cast.call1775, i64 %polly.access.add.call1698.us
  %polly.access.call1699.load.us = load double, double* %polly.access.call1699.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1548.us = add nuw nsw i64 %polly.indvar693.us, %polly.access.mul.Packed_MemRef_call1548.us
  %polly.access.Packed_MemRef_call1548.us = getelementptr double, double* %Packed_MemRef_call1548, i64 %polly.access.add.Packed_MemRef_call1548.us
  store double %polly.access.call1699.load.us, double* %polly.access.Packed_MemRef_call1548.us, align 8
  %polly.indvar_next694.us = add nuw nsw i64 %polly.indvar693.us, 1
  %exitcond1213.not = icmp eq i64 %polly.indvar_next694.us, 50
  br i1 %exitcond1213.not, label %polly.loop_exit692.us, label %polly.loop_header690.us

polly.loop_exit692.us:                            ; preds = %polly.loop_header690.us
  br i1 %polly.loop_guard704.not, label %polly.merge687.us, label %polly.loop_header701.us

polly.loop_header701.us:                          ; preds = %polly.loop_exit692.us, %polly.loop_header701.us
  %polly.indvar705.us = phi i64 [ %polly.indvar_next706.us, %polly.loop_header701.us ], [ %271, %polly.loop_exit692.us ]
  %274 = add nuw nsw i64 %polly.indvar705.us, %254
  %polly.access.mul.call1709.us = mul nsw i64 %274, 1000
  %polly.access.add.call1710.us = add nuw nsw i64 %polly.access.mul.call1709.us, %polly.indvar683.us
  %polly.access.call1711.us = getelementptr double, double* %polly.access.cast.call1775, i64 %polly.access.add.call1710.us
  %polly.access.call1711.load.us = load double, double* %polly.access.call1711.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1548713.us = add nuw nsw i64 %polly.indvar705.us, %polly.access.mul.Packed_MemRef_call1548.us
  %polly.access.Packed_MemRef_call1548714.us = getelementptr double, double* %Packed_MemRef_call1548, i64 %polly.access.add.Packed_MemRef_call1548713.us
  store double %polly.access.call1711.load.us, double* %polly.access.Packed_MemRef_call1548714.us, align 8
  %polly.indvar_next706.us = add nuw nsw i64 %polly.indvar705.us, 1
  %polly.loop_cond707.not.not.us = icmp slt i64 %polly.indvar705.us, %272
  br i1 %polly.loop_cond707.not.not.us, label %polly.loop_header701.us, label %polly.merge687.us

polly.merge687.us:                                ; preds = %polly.loop_header701.us, %polly.loop_exit692.us
  %polly.indvar_next684.us = add nuw nsw i64 %polly.indvar683.us, 1
  %exitcond1214.not = icmp eq i64 %polly.indvar_next684.us, 1000
  br i1 %exitcond1214.not, label %polly.loop_header730.preheader, label %polly.loop_header680.us

polly.loop_header673.split:                       ; preds = %polly.loop_header673
  %polly.loop_guard719 = icmp sgt i64 %269, -80
  br i1 %polly.loop_guard719, label %polly.loop_header680.us1083, label %polly.loop_header730.preheader

polly.loop_header680.us1083:                      ; preds = %polly.loop_header673.split, %polly.merge687.loopexit981.us1127
  %polly.indvar683.us1084 = phi i64 [ %polly.indvar_next684.us1119, %polly.merge687.loopexit981.us1127 ], [ 0, %polly.loop_header673.split ]
  %polly.access.mul.Packed_MemRef_call1548727.us1126 = mul nuw nsw i64 %polly.indvar683.us1084, 1200
  br label %polly.loop_header716.us1086

polly.loop_header716.us1086:                      ; preds = %polly.loop_header680.us1083, %polly.loop_header716.us1086
  %polly.indvar720.us1087 = phi i64 [ %polly.indvar_next721.us1094, %polly.loop_header716.us1086 ], [ 0, %polly.loop_header680.us1083 ]
  %275 = add nuw nsw i64 %polly.indvar720.us1087, %254
  %polly.access.mul.call1724.us1088 = mul nuw nsw i64 %275, 1000
  %polly.access.add.call1725.us1089 = add nuw nsw i64 %polly.access.mul.call1724.us1088, %polly.indvar683.us1084
  %polly.access.call1726.us1090 = getelementptr double, double* %polly.access.cast.call1775, i64 %polly.access.add.call1725.us1089
  %polly.access.call1726.load.us1091 = load double, double* %polly.access.call1726.us1090, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1548728.us1092 = add nuw nsw i64 %polly.indvar720.us1087, %polly.access.mul.Packed_MemRef_call1548727.us1126
  %polly.access.Packed_MemRef_call1548729.us1093 = getelementptr double, double* %Packed_MemRef_call1548, i64 %polly.access.add.Packed_MemRef_call1548728.us1092
  store double %polly.access.call1726.load.us1091, double* %polly.access.Packed_MemRef_call1548729.us1093, align 8
  %polly.indvar_next721.us1094 = add nuw nsw i64 %polly.indvar720.us1087, 1
  %exitcond1211.not = icmp eq i64 %polly.indvar720.us1087, %smax1210
  br i1 %exitcond1211.not, label %polly.merge687.loopexit981.us1127, label %polly.loop_header716.us1086

polly.merge687.loopexit981.us1127:                ; preds = %polly.loop_header716.us1086
  %polly.indvar_next684.us1119 = add nuw nsw i64 %polly.indvar683.us1084, 1
  %exitcond1212.not = icmp eq i64 %polly.indvar_next684.us1119, 1000
  br i1 %exitcond1212.not, label %polly.loop_header730.preheader, label %polly.loop_header680.us1083

polly.loop_exit732:                               ; preds = %polly.loop_exit739.loopexit.us, %polly.loop_header730.preheader
  %polly.indvar_next678 = add nsw i64 %polly.indvar677, 1
  %polly.loop_cond679 = icmp slt i64 %polly.indvar677, 14
  %indvars.iv.next1209 = add i64 %indvars.iv1208, 80
  %indvars.iv.next1218 = add i64 %indvars.iv1217, -80
  %indvars.iv.next1223 = add i64 %indvars.iv1222, 80
  %indvar.next1371 = add i64 %indvar1370, 1
  br i1 %polly.loop_cond679, label %polly.loop_header673, label %polly.loop_exit675

polly.loop_header730.preheader:                   ; preds = %polly.merge687.loopexit981.us1127, %polly.merge687.us, %polly.loop_header673.split
  %276 = sub nsw i64 %254, %268
  %277 = icmp sgt i64 %276, 0
  %278 = select i1 %277, i64 %276, i64 0
  %polly.loop_guard740 = icmp slt i64 %278, 80
  br i1 %polly.loop_guard740, label %polly.loop_header730.us, label %polly.loop_exit732

polly.loop_header730.us:                          ; preds = %polly.loop_header730.preheader, %polly.loop_exit739.loopexit.us
  %polly.indvar733.us = phi i64 [ %polly.indvar_next734.us, %polly.loop_exit739.loopexit.us ], [ 0, %polly.loop_header730.preheader ]
  %polly.access.mul.Packed_MemRef_call1548752.us = mul nuw nsw i64 %polly.indvar733.us, 1200
  br label %polly.loop_header737.us

polly.loop_header737.us:                          ; preds = %polly.loop_header730.us, %polly.loop_exit747.us
  %indvar1373 = phi i64 [ 0, %polly.loop_header730.us ], [ %indvar.next1374, %polly.loop_exit747.us ]
  %indvars.iv1224 = phi i64 [ %266, %polly.loop_header730.us ], [ %indvars.iv.next1225, %polly.loop_exit747.us ]
  %polly.indvar741.us = phi i64 [ %278, %polly.loop_header730.us ], [ %polly.indvar_next742.us, %polly.loop_exit747.us ]
  %279 = add i64 %265, %indvar1373
  %smin1375 = call i64 @llvm.smin.i64(i64 %279, i64 49)
  %280 = add nsw i64 %smin1375, 1
  %smin1226 = call i64 @llvm.smin.i64(i64 %indvars.iv1224, i64 49)
  %281 = add i64 %polly.indvar741.us, %268
  %282 = add i64 %281, %255
  %polly.loop_guard748.us1268 = icmp sgt i64 %282, -1
  br i1 %polly.loop_guard748.us1268, label %polly.loop_header745.preheader.us, label %polly.loop_exit747.us

polly.loop_header745.us:                          ; preds = %polly.loop_header745.us.preheader, %polly.loop_header745.us
  %polly.indvar749.us = phi i64 [ %polly.indvar_next750.us, %polly.loop_header745.us ], [ %polly.indvar749.us.ph, %polly.loop_header745.us.preheader ]
  %283 = add nuw nsw i64 %polly.indvar749.us, %254
  %polly.access.add.Packed_MemRef_call1548753.us = add nuw nsw i64 %polly.indvar749.us, %polly.access.mul.Packed_MemRef_call1548752.us
  %polly.access.Packed_MemRef_call1548754.us = getelementptr double, double* %Packed_MemRef_call1548, i64 %polly.access.add.Packed_MemRef_call1548753.us
  %_p_scalar_755.us = load double, double* %polly.access.Packed_MemRef_call1548754.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_759.us, %_p_scalar_755.us
  %polly.access.Packed_MemRef_call2550762.us = getelementptr double, double* %Packed_MemRef_call2550, i64 %polly.access.add.Packed_MemRef_call1548753.us
  %_p_scalar_763.us = load double, double* %polly.access.Packed_MemRef_call2550762.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_767.us, %_p_scalar_763.us
  %284 = shl i64 %283, 3
  %285 = add i64 %284, %286
  %scevgep768.us = getelementptr i8, i8* %call, i64 %285
  %scevgep768769.us = bitcast i8* %scevgep768.us to double*
  %_p_scalar_770.us = load double, double* %scevgep768769.us, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_770.us
  store double %p_add42.i.us, double* %scevgep768769.us, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next750.us = add nuw nsw i64 %polly.indvar749.us, 1
  %exitcond1227.not = icmp eq i64 %polly.indvar749.us, %smin1226
  br i1 %exitcond1227.not, label %polly.loop_exit747.us, label %polly.loop_header745.us, !llvm.loop !110

polly.loop_exit747.us:                            ; preds = %polly.loop_header745.us, %middle.block1367, %polly.loop_header737.us
  %polly.indvar_next742.us = add nuw nsw i64 %polly.indvar741.us, 1
  %polly.loop_cond743.us = icmp ult i64 %polly.indvar741.us, 79
  %indvars.iv.next1225 = add i64 %indvars.iv1224, 1
  %indvar.next1374 = add i64 %indvar1373, 1
  br i1 %polly.loop_cond743.us, label %polly.loop_header737.us, label %polly.loop_exit739.loopexit.us

polly.loop_header745.preheader.us:                ; preds = %polly.loop_header737.us
  %polly.access.add.Packed_MemRef_call2550757.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1548752.us, %282
  %polly.access.Packed_MemRef_call2550758.us = getelementptr double, double* %Packed_MemRef_call2550, i64 %polly.access.add.Packed_MemRef_call2550757.us
  %_p_scalar_759.us = load double, double* %polly.access.Packed_MemRef_call2550758.us, align 8
  %polly.access.Packed_MemRef_call1548766.us = getelementptr double, double* %Packed_MemRef_call1548, i64 %polly.access.add.Packed_MemRef_call2550757.us
  %_p_scalar_767.us = load double, double* %polly.access.Packed_MemRef_call1548766.us, align 8
  %286 = mul i64 %281, 9600
  %min.iters.check1376 = icmp ult i64 %280, 4
  br i1 %min.iters.check1376, label %polly.loop_header745.us.preheader, label %vector.ph1377

vector.ph1377:                                    ; preds = %polly.loop_header745.preheader.us
  %n.vec1379 = and i64 %280, -4
  %broadcast.splatinsert1385 = insertelement <4 x double> poison, double %_p_scalar_759.us, i32 0
  %broadcast.splat1386 = shufflevector <4 x double> %broadcast.splatinsert1385, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1388 = insertelement <4 x double> poison, double %_p_scalar_767.us, i32 0
  %broadcast.splat1389 = shufflevector <4 x double> %broadcast.splatinsert1388, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1369

vector.body1369:                                  ; preds = %vector.body1369, %vector.ph1377
  %index1380 = phi i64 [ 0, %vector.ph1377 ], [ %index.next1381, %vector.body1369 ]
  %287 = add nuw nsw i64 %index1380, %254
  %288 = add nuw nsw i64 %index1380, %polly.access.mul.Packed_MemRef_call1548752.us
  %289 = getelementptr double, double* %Packed_MemRef_call1548, i64 %288
  %290 = bitcast double* %289 to <4 x double>*
  %wide.load1384 = load <4 x double>, <4 x double>* %290, align 8
  %291 = fmul fast <4 x double> %broadcast.splat1386, %wide.load1384
  %292 = getelementptr double, double* %Packed_MemRef_call2550, i64 %288
  %293 = bitcast double* %292 to <4 x double>*
  %wide.load1387 = load <4 x double>, <4 x double>* %293, align 8
  %294 = fmul fast <4 x double> %broadcast.splat1389, %wide.load1387
  %295 = shl i64 %287, 3
  %296 = add i64 %295, %286
  %297 = getelementptr i8, i8* %call, i64 %296
  %298 = bitcast i8* %297 to <4 x double>*
  %wide.load1390 = load <4 x double>, <4 x double>* %298, align 8, !alias.scope !99, !noalias !101
  %299 = fadd fast <4 x double> %294, %291
  %300 = fmul fast <4 x double> %299, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %301 = fadd fast <4 x double> %300, %wide.load1390
  %302 = bitcast i8* %297 to <4 x double>*
  store <4 x double> %301, <4 x double>* %302, align 8, !alias.scope !99, !noalias !101
  %index.next1381 = add i64 %index1380, 4
  %303 = icmp eq i64 %index.next1381, %n.vec1379
  br i1 %303, label %middle.block1367, label %vector.body1369, !llvm.loop !111

middle.block1367:                                 ; preds = %vector.body1369
  %cmp.n1383 = icmp eq i64 %280, %n.vec1379
  br i1 %cmp.n1383, label %polly.loop_exit747.us, label %polly.loop_header745.us.preheader

polly.loop_header745.us.preheader:                ; preds = %polly.loop_header745.preheader.us, %middle.block1367
  %polly.indvar749.us.ph = phi i64 [ 0, %polly.loop_header745.preheader.us ], [ %n.vec1379, %middle.block1367 ]
  br label %polly.loop_header745.us

polly.loop_exit739.loopexit.us:                   ; preds = %polly.loop_exit747.us
  %polly.indvar_next734.us = add nuw nsw i64 %polly.indvar733.us, 1
  %exitcond1228.not = icmp eq i64 %polly.indvar_next734.us, 1000
  br i1 %exitcond1228.not, label %polly.loop_exit732, label %polly.loop_header730.us

polly.loop_header897:                             ; preds = %entry, %polly.loop_exit905
  %indvars.iv1256 = phi i64 [ %indvars.iv.next1257, %polly.loop_exit905 ], [ 0, %entry ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %entry ]
  %smin1258 = call i64 @llvm.smin.i64(i64 %indvars.iv1256, i64 -1168)
  %304 = shl nsw i64 %polly.indvar900, 5
  %305 = add nsw i64 %smin1258, 1199
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1257 = add nsw i64 %indvars.iv1256, -32
  %exitcond1261.not = icmp eq i64 %polly.indvar_next901, 38
  br i1 %exitcond1261.not, label %polly.loop_header924, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %indvars.iv1252 = phi i64 [ %indvars.iv.next1253, %polly.loop_exit911 ], [ 0, %polly.loop_header897 ]
  %polly.indvar906 = phi i64 [ %polly.indvar_next907, %polly.loop_exit911 ], [ 0, %polly.loop_header897 ]
  %306 = mul nsw i64 %polly.indvar906, -32
  %smin1296 = call i64 @llvm.smin.i64(i64 %306, i64 -1168)
  %307 = add nsw i64 %smin1296, 1200
  %smin1254 = call i64 @llvm.smin.i64(i64 %indvars.iv1252, i64 -1168)
  %308 = shl nsw i64 %polly.indvar906, 5
  %309 = add nsw i64 %smin1254, 1199
  br label %polly.loop_header909

polly.loop_exit911:                               ; preds = %polly.loop_exit917
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %indvars.iv.next1253 = add nsw i64 %indvars.iv1252, -32
  %exitcond1260.not = icmp eq i64 %polly.indvar_next907, 38
  br i1 %exitcond1260.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_exit917, %polly.loop_header903
  %polly.indvar912 = phi i64 [ 0, %polly.loop_header903 ], [ %polly.indvar_next913, %polly.loop_exit917 ]
  %310 = add nuw nsw i64 %polly.indvar912, %304
  %311 = trunc i64 %310 to i32
  %312 = mul nuw nsw i64 %310, 9600
  %min.iters.check = icmp eq i64 %307, 0
  br i1 %min.iters.check, label %polly.loop_header915, label %vector.ph1297

vector.ph1297:                                    ; preds = %polly.loop_header909
  %broadcast.splatinsert1304 = insertelement <4 x i64> poison, i64 %308, i32 0
  %broadcast.splat1305 = shufflevector <4 x i64> %broadcast.splatinsert1304, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1306 = insertelement <4 x i32> poison, i32 %311, i32 0
  %broadcast.splat1307 = shufflevector <4 x i32> %broadcast.splatinsert1306, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1295

vector.body1295:                                  ; preds = %vector.body1295, %vector.ph1297
  %index1298 = phi i64 [ 0, %vector.ph1297 ], [ %index.next1299, %vector.body1295 ]
  %vec.ind1302 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1297 ], [ %vec.ind.next1303, %vector.body1295 ]
  %313 = add nuw nsw <4 x i64> %vec.ind1302, %broadcast.splat1305
  %314 = trunc <4 x i64> %313 to <4 x i32>
  %315 = mul <4 x i32> %broadcast.splat1307, %314
  %316 = add <4 x i32> %315, <i32 3, i32 3, i32 3, i32 3>
  %317 = urem <4 x i32> %316, <i32 1200, i32 1200, i32 1200, i32 1200>
  %318 = sitofp <4 x i32> %317 to <4 x double>
  %319 = fmul fast <4 x double> %318, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %320 = extractelement <4 x i64> %313, i32 0
  %321 = shl i64 %320, 3
  %322 = add nuw nsw i64 %321, %312
  %323 = getelementptr i8, i8* %call, i64 %322
  %324 = bitcast i8* %323 to <4 x double>*
  store <4 x double> %319, <4 x double>* %324, align 8, !alias.scope !112, !noalias !114
  %index.next1299 = add i64 %index1298, 4
  %vec.ind.next1303 = add <4 x i64> %vec.ind1302, <i64 4, i64 4, i64 4, i64 4>
  %325 = icmp eq i64 %index.next1299, %307
  br i1 %325, label %polly.loop_exit917, label %vector.body1295, !llvm.loop !117

polly.loop_exit917:                               ; preds = %vector.body1295, %polly.loop_header915
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1259.not = icmp eq i64 %polly.indvar912, %305
  br i1 %exitcond1259.not, label %polly.loop_exit911, label %polly.loop_header909

polly.loop_header915:                             ; preds = %polly.loop_header909, %polly.loop_header915
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_header915 ], [ 0, %polly.loop_header909 ]
  %326 = add nuw nsw i64 %polly.indvar918, %308
  %327 = trunc i64 %326 to i32
  %328 = mul i32 %327, %311
  %329 = add i32 %328, 3
  %330 = urem i32 %329, 1200
  %p_conv31.i = sitofp i32 %330 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %331 = shl i64 %326, 3
  %332 = add nuw nsw i64 %331, %312
  %scevgep921 = getelementptr i8, i8* %call, i64 %332
  %scevgep921922 = bitcast i8* %scevgep921 to double*
  store double %p_div33.i, double* %scevgep921922, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %exitcond1255.not = icmp eq i64 %polly.indvar918, %309
  br i1 %exitcond1255.not, label %polly.loop_exit917, label %polly.loop_header915, !llvm.loop !118

polly.loop_header924:                             ; preds = %polly.loop_exit905, %polly.loop_exit932
  %indvars.iv1246 = phi i64 [ %indvars.iv.next1247, %polly.loop_exit932 ], [ 0, %polly.loop_exit905 ]
  %polly.indvar927 = phi i64 [ %polly.indvar_next928, %polly.loop_exit932 ], [ 0, %polly.loop_exit905 ]
  %smin1248 = call i64 @llvm.smin.i64(i64 %indvars.iv1246, i64 -1168)
  %333 = shl nsw i64 %polly.indvar927, 5
  %334 = add nsw i64 %smin1248, 1199
  br label %polly.loop_header930

polly.loop_exit932:                               ; preds = %polly.loop_exit938
  %polly.indvar_next928 = add nuw nsw i64 %polly.indvar927, 1
  %indvars.iv.next1247 = add nsw i64 %indvars.iv1246, -32
  %exitcond1251.not = icmp eq i64 %polly.indvar_next928, 38
  br i1 %exitcond1251.not, label %polly.loop_header950, label %polly.loop_header924

polly.loop_header930:                             ; preds = %polly.loop_exit938, %polly.loop_header924
  %indvars.iv1242 = phi i64 [ %indvars.iv.next1243, %polly.loop_exit938 ], [ 0, %polly.loop_header924 ]
  %polly.indvar933 = phi i64 [ %polly.indvar_next934, %polly.loop_exit938 ], [ 0, %polly.loop_header924 ]
  %335 = mul nsw i64 %polly.indvar933, -32
  %smin1311 = call i64 @llvm.smin.i64(i64 %335, i64 -968)
  %336 = add nsw i64 %smin1311, 1000
  %smin1244 = call i64 @llvm.smin.i64(i64 %indvars.iv1242, i64 -968)
  %337 = shl nsw i64 %polly.indvar933, 5
  %338 = add nsw i64 %smin1244, 999
  br label %polly.loop_header936

polly.loop_exit938:                               ; preds = %polly.loop_exit944
  %polly.indvar_next934 = add nuw nsw i64 %polly.indvar933, 1
  %indvars.iv.next1243 = add nsw i64 %indvars.iv1242, -32
  %exitcond1250.not = icmp eq i64 %polly.indvar_next934, 32
  br i1 %exitcond1250.not, label %polly.loop_exit932, label %polly.loop_header930

polly.loop_header936:                             ; preds = %polly.loop_exit944, %polly.loop_header930
  %polly.indvar939 = phi i64 [ 0, %polly.loop_header930 ], [ %polly.indvar_next940, %polly.loop_exit944 ]
  %339 = add nuw nsw i64 %polly.indvar939, %333
  %340 = trunc i64 %339 to i32
  %341 = mul nuw nsw i64 %339, 8000
  %min.iters.check1312 = icmp eq i64 %336, 0
  br i1 %min.iters.check1312, label %polly.loop_header942, label %vector.ph1313

vector.ph1313:                                    ; preds = %polly.loop_header936
  %broadcast.splatinsert1322 = insertelement <4 x i64> poison, i64 %337, i32 0
  %broadcast.splat1323 = shufflevector <4 x i64> %broadcast.splatinsert1322, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1324 = insertelement <4 x i32> poison, i32 %340, i32 0
  %broadcast.splat1325 = shufflevector <4 x i32> %broadcast.splatinsert1324, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1310

vector.body1310:                                  ; preds = %vector.body1310, %vector.ph1313
  %index1316 = phi i64 [ 0, %vector.ph1313 ], [ %index.next1317, %vector.body1310 ]
  %vec.ind1320 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1313 ], [ %vec.ind.next1321, %vector.body1310 ]
  %342 = add nuw nsw <4 x i64> %vec.ind1320, %broadcast.splat1323
  %343 = trunc <4 x i64> %342 to <4 x i32>
  %344 = mul <4 x i32> %broadcast.splat1325, %343
  %345 = add <4 x i32> %344, <i32 2, i32 2, i32 2, i32 2>
  %346 = urem <4 x i32> %345, <i32 1000, i32 1000, i32 1000, i32 1000>
  %347 = sitofp <4 x i32> %346 to <4 x double>
  %348 = fmul fast <4 x double> %347, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %349 = extractelement <4 x i64> %342, i32 0
  %350 = shl i64 %349, 3
  %351 = add nuw nsw i64 %350, %341
  %352 = getelementptr i8, i8* %call2, i64 %351
  %353 = bitcast i8* %352 to <4 x double>*
  store <4 x double> %348, <4 x double>* %353, align 8, !alias.scope !116, !noalias !119
  %index.next1317 = add i64 %index1316, 4
  %vec.ind.next1321 = add <4 x i64> %vec.ind1320, <i64 4, i64 4, i64 4, i64 4>
  %354 = icmp eq i64 %index.next1317, %336
  br i1 %354, label %polly.loop_exit944, label %vector.body1310, !llvm.loop !120

polly.loop_exit944:                               ; preds = %vector.body1310, %polly.loop_header942
  %polly.indvar_next940 = add nuw nsw i64 %polly.indvar939, 1
  %exitcond1249.not = icmp eq i64 %polly.indvar939, %334
  br i1 %exitcond1249.not, label %polly.loop_exit938, label %polly.loop_header936

polly.loop_header942:                             ; preds = %polly.loop_header936, %polly.loop_header942
  %polly.indvar945 = phi i64 [ %polly.indvar_next946, %polly.loop_header942 ], [ 0, %polly.loop_header936 ]
  %355 = add nuw nsw i64 %polly.indvar945, %337
  %356 = trunc i64 %355 to i32
  %357 = mul i32 %356, %340
  %358 = add i32 %357, 2
  %359 = urem i32 %358, 1000
  %p_conv10.i = sitofp i32 %359 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %360 = shl i64 %355, 3
  %361 = add nuw nsw i64 %360, %341
  %scevgep948 = getelementptr i8, i8* %call2, i64 %361
  %scevgep948949 = bitcast i8* %scevgep948 to double*
  store double %p_div12.i, double* %scevgep948949, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next946 = add nuw nsw i64 %polly.indvar945, 1
  %exitcond1245.not = icmp eq i64 %polly.indvar945, %338
  br i1 %exitcond1245.not, label %polly.loop_exit944, label %polly.loop_header942, !llvm.loop !121

polly.loop_header950:                             ; preds = %polly.loop_exit932, %polly.loop_exit958
  %indvars.iv1236 = phi i64 [ %indvars.iv.next1237, %polly.loop_exit958 ], [ 0, %polly.loop_exit932 ]
  %polly.indvar953 = phi i64 [ %polly.indvar_next954, %polly.loop_exit958 ], [ 0, %polly.loop_exit932 ]
  %smin1238 = call i64 @llvm.smin.i64(i64 %indvars.iv1236, i64 -1168)
  %362 = shl nsw i64 %polly.indvar953, 5
  %363 = add nsw i64 %smin1238, 1199
  br label %polly.loop_header956

polly.loop_exit958:                               ; preds = %polly.loop_exit964
  %polly.indvar_next954 = add nuw nsw i64 %polly.indvar953, 1
  %indvars.iv.next1237 = add nsw i64 %indvars.iv1236, -32
  %exitcond1241.not = icmp eq i64 %polly.indvar_next954, 38
  br i1 %exitcond1241.not, label %init_array.exit, label %polly.loop_header950

polly.loop_header956:                             ; preds = %polly.loop_exit964, %polly.loop_header950
  %indvars.iv1232 = phi i64 [ %indvars.iv.next1233, %polly.loop_exit964 ], [ 0, %polly.loop_header950 ]
  %polly.indvar959 = phi i64 [ %polly.indvar_next960, %polly.loop_exit964 ], [ 0, %polly.loop_header950 ]
  %364 = mul nsw i64 %polly.indvar959, -32
  %smin1329 = call i64 @llvm.smin.i64(i64 %364, i64 -968)
  %365 = add nsw i64 %smin1329, 1000
  %smin1234 = call i64 @llvm.smin.i64(i64 %indvars.iv1232, i64 -968)
  %366 = shl nsw i64 %polly.indvar959, 5
  %367 = add nsw i64 %smin1234, 999
  br label %polly.loop_header962

polly.loop_exit964:                               ; preds = %polly.loop_exit970
  %polly.indvar_next960 = add nuw nsw i64 %polly.indvar959, 1
  %indvars.iv.next1233 = add nsw i64 %indvars.iv1232, -32
  %exitcond1240.not = icmp eq i64 %polly.indvar_next960, 32
  br i1 %exitcond1240.not, label %polly.loop_exit958, label %polly.loop_header956

polly.loop_header962:                             ; preds = %polly.loop_exit970, %polly.loop_header956
  %polly.indvar965 = phi i64 [ 0, %polly.loop_header956 ], [ %polly.indvar_next966, %polly.loop_exit970 ]
  %368 = add nuw nsw i64 %polly.indvar965, %362
  %369 = trunc i64 %368 to i32
  %370 = mul nuw nsw i64 %368, 8000
  %min.iters.check1330 = icmp eq i64 %365, 0
  br i1 %min.iters.check1330, label %polly.loop_header968, label %vector.ph1331

vector.ph1331:                                    ; preds = %polly.loop_header962
  %broadcast.splatinsert1340 = insertelement <4 x i64> poison, i64 %366, i32 0
  %broadcast.splat1341 = shufflevector <4 x i64> %broadcast.splatinsert1340, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1342 = insertelement <4 x i32> poison, i32 %369, i32 0
  %broadcast.splat1343 = shufflevector <4 x i32> %broadcast.splatinsert1342, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1328

vector.body1328:                                  ; preds = %vector.body1328, %vector.ph1331
  %index1334 = phi i64 [ 0, %vector.ph1331 ], [ %index.next1335, %vector.body1328 ]
  %vec.ind1338 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1331 ], [ %vec.ind.next1339, %vector.body1328 ]
  %371 = add nuw nsw <4 x i64> %vec.ind1338, %broadcast.splat1341
  %372 = trunc <4 x i64> %371 to <4 x i32>
  %373 = mul <4 x i32> %broadcast.splat1343, %372
  %374 = add <4 x i32> %373, <i32 1, i32 1, i32 1, i32 1>
  %375 = urem <4 x i32> %374, <i32 1200, i32 1200, i32 1200, i32 1200>
  %376 = sitofp <4 x i32> %375 to <4 x double>
  %377 = fmul fast <4 x double> %376, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %378 = extractelement <4 x i64> %371, i32 0
  %379 = shl i64 %378, 3
  %380 = add nuw nsw i64 %379, %370
  %381 = getelementptr i8, i8* %call1, i64 %380
  %382 = bitcast i8* %381 to <4 x double>*
  store <4 x double> %377, <4 x double>* %382, align 8, !alias.scope !115, !noalias !122
  %index.next1335 = add i64 %index1334, 4
  %vec.ind.next1339 = add <4 x i64> %vec.ind1338, <i64 4, i64 4, i64 4, i64 4>
  %383 = icmp eq i64 %index.next1335, %365
  br i1 %383, label %polly.loop_exit970, label %vector.body1328, !llvm.loop !123

polly.loop_exit970:                               ; preds = %vector.body1328, %polly.loop_header968
  %polly.indvar_next966 = add nuw nsw i64 %polly.indvar965, 1
  %exitcond1239.not = icmp eq i64 %polly.indvar965, %363
  br i1 %exitcond1239.not, label %polly.loop_exit964, label %polly.loop_header962

polly.loop_header968:                             ; preds = %polly.loop_header962, %polly.loop_header968
  %polly.indvar971 = phi i64 [ %polly.indvar_next972, %polly.loop_header968 ], [ 0, %polly.loop_header962 ]
  %384 = add nuw nsw i64 %polly.indvar971, %366
  %385 = trunc i64 %384 to i32
  %386 = mul i32 %385, %369
  %387 = add i32 %386, 1
  %388 = urem i32 %387, 1200
  %p_conv.i = sitofp i32 %388 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %389 = shl i64 %384, 3
  %390 = add nuw nsw i64 %389, %370
  %scevgep975 = getelementptr i8, i8* %call1, i64 %390
  %scevgep975976 = bitcast i8* %scevgep975 to double*
  store double %p_div.i, double* %scevgep975976, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next972 = add nuw nsw i64 %polly.indvar971, 1
  %exitcond1235.not = icmp eq i64 %polly.indvar971, %367
  br i1 %exitcond1235.not, label %polly.loop_exit970, label %polly.loop_header968, !llvm.loop !124
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
declare i64 @llvm.smax.i64(i64, i64) #5

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
!26 = !{!"llvm.loop.tile.size", i32 50}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 2048}
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
!84 = distinct !{!84, !81, !13}
!85 = distinct !{!85, !13}
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
!97 = distinct !{!97, !81, !13}
!98 = distinct !{!98, !13}
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
!110 = distinct !{!110, !81, !13}
!111 = distinct !{!111, !13}
!112 = distinct !{!112, !113, !"polly.alias.scope.MemRef_call"}
!113 = distinct !{!113, !"polly.alias.scope.domain"}
!114 = !{!115, !116}
!115 = distinct !{!115, !113, !"polly.alias.scope.MemRef_call1"}
!116 = distinct !{!116, !113, !"polly.alias.scope.MemRef_call2"}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !81, !13}
!119 = !{!115, !112}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !81, !13}
!122 = !{!116, !112}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !81, !13}
