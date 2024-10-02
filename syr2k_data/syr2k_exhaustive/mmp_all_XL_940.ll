; ModuleID = 'syr2k_exhaustive/mmp_all_XL_940.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_940.c"
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
  %call941 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1793 = bitcast i8* %call1 to double*
  %polly.access.call1802 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2803 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1802, %call2
  %polly.access.call2822 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2822, %call1
  %2 = or i1 %0, %1
  %polly.access.call842 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call842, %call2
  %4 = icmp ule i8* %polly.access.call2822, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call842, %call1
  %8 = icmp ule i8* %polly.access.call1802, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header915, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1316 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1315 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1314 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1313 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1313, %scevgep1316
  %bound1 = icmp ult i8* %scevgep1315, %scevgep1314
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
  br i1 %exitcond18.not.i, label %vector.ph1320, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1320:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1327 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1328 = shufflevector <4 x i64> %broadcast.splatinsert1327, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1319

vector.body1319:                                  ; preds = %vector.body1319, %vector.ph1320
  %index1321 = phi i64 [ 0, %vector.ph1320 ], [ %index.next1322, %vector.body1319 ]
  %vec.ind1325 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1320 ], [ %vec.ind.next1326, %vector.body1319 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1325, %broadcast.splat1328
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call941, i64 %indvars.iv7.i, i64 %index1321
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1322 = add i64 %index1321, 4
  %vec.ind.next1326 = add <4 x i64> %vec.ind1325, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1322, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1319, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1319
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1320, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit976
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start557, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1383 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1383, label %for.body3.i46.preheader1532, label %vector.ph1384

vector.ph1384:                                    ; preds = %for.body3.i46.preheader
  %n.vec1386 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1382

vector.body1382:                                  ; preds = %vector.body1382, %vector.ph1384
  %index1387 = phi i64 [ 0, %vector.ph1384 ], [ %index.next1388, %vector.body1382 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call941, i64 %indvars.iv21.i, i64 %index1387
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1388 = add i64 %index1387, 4
  %46 = icmp eq i64 %index.next1388, %n.vec1386
  br i1 %46, label %middle.block1380, label %vector.body1382, !llvm.loop !18

middle.block1380:                                 ; preds = %vector.body1382
  %cmp.n1390 = icmp eq i64 %indvars.iv21.i, %n.vec1386
  br i1 %cmp.n1390, label %for.inc6.i, label %for.body3.i46.preheader1532

for.body3.i46.preheader1532:                      ; preds = %for.body3.i46.preheader, %middle.block1380
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1386, %middle.block1380 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1532, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1532 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call941, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1380, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call941, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting558
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start323, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1430 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1430, label %for.body3.i60.preheader1530, label %vector.ph1431

vector.ph1431:                                    ; preds = %for.body3.i60.preheader
  %n.vec1433 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1429

vector.body1429:                                  ; preds = %vector.body1429, %vector.ph1431
  %index1434 = phi i64 [ 0, %vector.ph1431 ], [ %index.next1435, %vector.body1429 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call941, i64 %indvars.iv21.i52, i64 %index1434
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1438 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1438, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1435 = add i64 %index1434, 4
  %57 = icmp eq i64 %index.next1435, %n.vec1433
  br i1 %57, label %middle.block1427, label %vector.body1429, !llvm.loop !64

middle.block1427:                                 ; preds = %vector.body1429
  %cmp.n1437 = icmp eq i64 %indvars.iv21.i52, %n.vec1433
  br i1 %cmp.n1437, label %for.inc6.i63, label %for.body3.i60.preheader1530

for.body3.i60.preheader1530:                      ; preds = %for.body3.i60.preheader, %middle.block1427
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1433, %middle.block1427 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1530, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1530 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call941, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1427, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call941, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting324
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1480 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1480, label %for.body3.i99.preheader1528, label %vector.ph1481

vector.ph1481:                                    ; preds = %for.body3.i99.preheader
  %n.vec1483 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1479

vector.body1479:                                  ; preds = %vector.body1479, %vector.ph1481
  %index1484 = phi i64 [ 0, %vector.ph1481 ], [ %index.next1485, %vector.body1479 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call941, i64 %indvars.iv21.i91, i64 %index1484
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1488 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1488, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1485 = add i64 %index1484, 4
  %68 = icmp eq i64 %index.next1485, %n.vec1483
  br i1 %68, label %middle.block1477, label %vector.body1479, !llvm.loop !66

middle.block1477:                                 ; preds = %vector.body1479
  %cmp.n1487 = icmp eq i64 %indvars.iv21.i91, %n.vec1483
  br i1 %cmp.n1487, label %for.inc6.i102, label %for.body3.i99.preheader1528

for.body3.i99.preheader1528:                      ; preds = %for.body3.i99.preheader, %middle.block1477
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1483, %middle.block1477 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1528, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1528 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call941, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1477, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call941, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call941, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  %malloccall136 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1492 = phi i64 [ %indvar.next1493, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1492, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1494 = icmp ult i64 %88, 4
  br i1 %min.iters.check1494, label %polly.loop_header192.preheader, label %vector.ph1495

vector.ph1495:                                    ; preds = %polly.loop_header
  %n.vec1497 = and i64 %88, -4
  br label %vector.body1491

vector.body1491:                                  ; preds = %vector.body1491, %vector.ph1495
  %index1498 = phi i64 [ 0, %vector.ph1495 ], [ %index.next1499, %vector.body1491 ]
  %90 = shl nuw nsw i64 %index1498, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1502 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1502, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1499 = add i64 %index1498, 4
  %95 = icmp eq i64 %index.next1499, %n.vec1497
  br i1 %95, label %middle.block1489, label %vector.body1491, !llvm.loop !79

middle.block1489:                                 ; preds = %vector.body1491
  %cmp.n1501 = icmp eq i64 %88, %n.vec1497
  br i1 %cmp.n1501, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1489
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1497, %middle.block1489 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1489
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1201.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1493 = add i64 %indvar1492, 1
  br i1 %exitcond1201.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1200.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1200.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar203, 100
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1199.not = icmp eq i64 %polly.indvar_next204, 10
  br i1 %exitcond1199.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1190 = phi i64 [ %indvars.iv.next1191, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1185 = phi i64 [ %indvars.iv.next1186, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1177 = phi i64 [ %indvars.iv.next1178, %polly.loop_exit230 ], [ 7, %polly.loop_header200 ]
  %indvars.iv1175 = phi i64 [ %indvars.iv.next1176, %polly.loop_exit230 ], [ 79, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %98 = mul nsw i64 %polly.indvar209, -30
  %99 = mul nuw nsw i64 %polly.indvar209, 3
  %100 = add nuw i64 %99, 7
  %101 = lshr i64 %100, 3
  %102 = mul nuw nsw i64 %101, 80
  %103 = add i64 %98, %102
  %104 = mul nuw nsw i64 %polly.indvar209, 30
  %105 = sub nsw i64 %104, %102
  %106 = lshr i64 %indvars.iv1177, 3
  %107 = mul nuw nsw i64 %106, 80
  %108 = add i64 %indvars.iv1185, %107
  %109 = sub nsw i64 %indvars.iv1190, %107
  %110 = sub nsw i64 %indvars.iv1175, %107
  %111 = mul nuw nsw i64 %polly.indvar209, 50
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %112 = mul nsw i64 %polly.indvar209, -50
  %113 = mul nuw nsw i64 %polly.indvar209, 3
  %114 = add nuw nsw i64 %113, 7
  %pexp.p_div_q = lshr i64 %114, 3
  %115 = sub nsw i64 %polly.indvar209, %pexp.p_div_q
  %polly.loop_guard = icmp slt i64 %115, 15
  br i1 %polly.loop_guard, label %polly.loop_header228.preheader, label %polly.loop_exit230

polly.loop_header228.preheader:                   ; preds = %polly.loop_exit214
  %116 = mul nuw nsw i64 %polly.indvar209, 5
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit282, %polly.loop_exit214
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -50
  %indvars.iv.next1176 = add nuw nsw i64 %indvars.iv1175, 30
  %indvars.iv.next1178 = add nuw nsw i64 %indvars.iv1177, 3
  %indvars.iv.next1186 = add nsw i64 %indvars.iv1185, -30
  %indvars.iv.next1191 = add nuw nsw i64 %indvars.iv1190, 30
  %exitcond1198.not = icmp eq i64 %polly.indvar_next210, 24
  br i1 %exitcond1198.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %117 = add nuw nsw i64 %polly.indvar215, %97
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1174.not = icmp eq i64 %polly.indvar_next216, 100
  br i1 %exitcond1174.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %118 = add nuw nsw i64 %polly.indvar221, %111
  %polly.access.mul.call2225 = mul nuw nsw i64 %118, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %117, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2803, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_header228.preheader, %polly.loop_exit282
  %indvar1506 = phi i64 [ 0, %polly.loop_header228.preheader ], [ %indvar.next1507, %polly.loop_exit282 ]
  %indvars.iv1192 = phi i64 [ %109, %polly.loop_header228.preheader ], [ %indvars.iv.next1193, %polly.loop_exit282 ]
  %indvars.iv1187 = phi i64 [ %108, %polly.loop_header228.preheader ], [ %indvars.iv.next1188, %polly.loop_exit282 ]
  %indvars.iv1179 = phi i64 [ %110, %polly.loop_header228.preheader ], [ %indvars.iv.next1180, %polly.loop_exit282 ]
  %polly.indvar231 = phi i64 [ %115, %polly.loop_header228.preheader ], [ %polly.indvar_next232, %polly.loop_exit282 ]
  %119 = mul nsw i64 %indvar1506, -80
  %120 = add i64 %103, %119
  %smax1508 = call i64 @llvm.smax.i64(i64 %120, i64 0)
  %121 = mul nuw nsw i64 %indvar1506, 80
  %122 = add i64 %105, %121
  %123 = add i64 %smax1508, %122
  %smax1189 = call i64 @llvm.smax.i64(i64 %indvars.iv1187, i64 0)
  %124 = add i64 %smax1189, %indvars.iv1192
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1179, i64 0)
  %125 = shl nsw i64 %polly.indvar231, 3
  %.not.not = icmp sgt i64 %125, %116
  %126 = mul nsw i64 %polly.indvar231, 80
  %127 = add nsw i64 %126, %112
  %128 = icmp sgt i64 %127, 50
  %129 = select i1 %128, i64 %127, i64 50
  %130 = add nsw i64 %127, 79
  %polly.loop_guard254.not = icmp sgt i64 %129, %130
  br i1 %.not.not, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.merge.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.merge.us ], [ 0, %polly.loop_header228 ]
  %131 = add nuw nsw i64 %polly.indvar237.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header234.us ]
  %132 = add nuw nsw i64 %polly.indvar243.us, %111
  %polly.access.mul.call1247.us = mul nuw nsw i64 %132, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %polly.access.mul.call1247.us, %131
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1793, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1183.not = icmp eq i64 %polly.indvar_next244.us, 50
  br i1 %exitcond1183.not, label %polly.loop_exit242.us, label %polly.loop_header240.us

polly.loop_exit242.us:                            ; preds = %polly.loop_header240.us
  br i1 %polly.loop_guard254.not, label %polly.merge.us, label %polly.loop_header251.us

polly.loop_header251.us:                          ; preds = %polly.loop_exit242.us, %polly.loop_header251.us
  %polly.indvar255.us = phi i64 [ %polly.indvar_next256.us, %polly.loop_header251.us ], [ %129, %polly.loop_exit242.us ]
  %133 = add nuw nsw i64 %polly.indvar255.us, %111
  %polly.access.mul.call1259.us = mul nsw i64 %133, 1000
  %polly.access.add.call1260.us = add nuw nsw i64 %polly.access.mul.call1259.us, %131
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1793, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us = add nuw nsw i64 %polly.indvar255.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %polly.indvar_next256.us = add nuw nsw i64 %polly.indvar255.us, 1
  %polly.loop_cond257.not.not.us = icmp slt i64 %polly.indvar255.us, %130
  br i1 %polly.loop_cond257.not.not.us, label %polly.loop_header251.us, label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.loop_header251.us, %polly.loop_exit242.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1184.not = icmp eq i64 %polly.indvar_next238.us, 100
  br i1 %exitcond1184.not, label %polly.loop_header280.preheader, label %polly.loop_header234.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  %polly.loop_guard269 = icmp sgt i64 %127, -80
  br i1 %polly.loop_guard269, label %polly.loop_header234.us1023, label %polly.loop_header280.preheader

polly.loop_header234.us1023:                      ; preds = %polly.loop_header228.split, %polly.merge.loopexit997.us1068
  %polly.indvar237.us1024 = phi i64 [ %polly.indvar_next238.us1060, %polly.merge.loopexit997.us1068 ], [ 0, %polly.loop_header228.split ]
  %134 = add nuw nsw i64 %polly.indvar237.us1024, %97
  %polly.access.mul.Packed_MemRef_call1277.us1067 = mul nuw nsw i64 %polly.indvar237.us1024, 1200
  br label %polly.loop_header266.us1026

polly.loop_header266.us1026:                      ; preds = %polly.loop_header234.us1023, %polly.loop_header266.us1026
  %polly.indvar270.us1027 = phi i64 [ %polly.indvar_next271.us1034, %polly.loop_header266.us1026 ], [ 0, %polly.loop_header234.us1023 ]
  %135 = add nuw nsw i64 %polly.indvar270.us1027, %111
  %polly.access.mul.call1274.us1028 = mul nuw nsw i64 %135, 1000
  %polly.access.add.call1275.us1029 = add nuw nsw i64 %134, %polly.access.mul.call1274.us1028
  %polly.access.call1276.us1030 = getelementptr double, double* %polly.access.cast.call1793, i64 %polly.access.add.call1275.us1029
  %polly.access.call1276.load.us1031 = load double, double* %polly.access.call1276.us1030, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1278.us1032 = add nuw nsw i64 %polly.indvar270.us1027, %polly.access.mul.Packed_MemRef_call1277.us1067
  %polly.access.Packed_MemRef_call1279.us1033 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1278.us1032
  store double %polly.access.call1276.load.us1031, double* %polly.access.Packed_MemRef_call1279.us1033, align 8
  %polly.indvar_next271.us1034 = add nuw nsw i64 %polly.indvar270.us1027, 1
  %exitcond1181.not = icmp eq i64 %polly.indvar270.us1027, %smax
  br i1 %exitcond1181.not, label %polly.merge.loopexit997.us1068, label %polly.loop_header266.us1026

polly.merge.loopexit997.us1068:                   ; preds = %polly.loop_header266.us1026
  %polly.indvar_next238.us1060 = add nuw nsw i64 %polly.indvar237.us1024, 1
  %exitcond1182.not = icmp eq i64 %polly.indvar_next238.us1060, 100
  br i1 %exitcond1182.not, label %polly.loop_header280.preheader, label %polly.loop_header234.us1023

polly.loop_exit282:                               ; preds = %polly.loop_exit289.loopexit.us, %polly.loop_header280.preheader
  %polly.indvar_next232 = add nsw i64 %polly.indvar231, 1
  %polly.loop_cond233 = icmp slt i64 %polly.indvar231, 14
  %indvars.iv.next1180 = add i64 %indvars.iv1179, 80
  %indvars.iv.next1188 = add i64 %indvars.iv1187, -80
  %indvars.iv.next1193 = add i64 %indvars.iv1192, 80
  %indvar.next1507 = add i64 %indvar1506, 1
  br i1 %polly.loop_cond233, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header280.preheader:                   ; preds = %polly.merge.loopexit997.us1068, %polly.merge.us, %polly.loop_header228.split
  %136 = sub nsw i64 %111, %126
  %137 = icmp sgt i64 %136, 0
  %138 = select i1 %137, i64 %136, i64 0
  %polly.loop_guard290 = icmp slt i64 %138, 80
  br i1 %polly.loop_guard290, label %polly.loop_header280.us, label %polly.loop_exit282

polly.loop_header280.us:                          ; preds = %polly.loop_header280.preheader, %polly.loop_exit289.loopexit.us
  %polly.indvar283.us = phi i64 [ %polly.indvar_next284.us, %polly.loop_exit289.loopexit.us ], [ 0, %polly.loop_header280.preheader ]
  %polly.access.mul.Packed_MemRef_call1302.us = mul nuw nsw i64 %polly.indvar283.us, 1200
  br label %polly.loop_header287.us

polly.loop_header287.us:                          ; preds = %polly.loop_header280.us, %polly.loop_exit297.us
  %indvar1509 = phi i64 [ 0, %polly.loop_header280.us ], [ %indvar.next1510, %polly.loop_exit297.us ]
  %indvars.iv1194 = phi i64 [ %124, %polly.loop_header280.us ], [ %indvars.iv.next1195, %polly.loop_exit297.us ]
  %polly.indvar291.us = phi i64 [ %138, %polly.loop_header280.us ], [ %polly.indvar_next292.us, %polly.loop_exit297.us ]
  %139 = add i64 %123, %indvar1509
  %smin1511 = call i64 @llvm.smin.i64(i64 %139, i64 49)
  %140 = add nsw i64 %smin1511, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1194, i64 49)
  %141 = add i64 %polly.indvar291.us, %126
  %142 = add i64 %141, %112
  %polly.loop_guard298.us1302 = icmp sgt i64 %142, -1
  br i1 %polly.loop_guard298.us1302, label %polly.loop_header295.preheader.us, label %polly.loop_exit297.us

polly.loop_header295.us:                          ; preds = %polly.loop_header295.us.preheader, %polly.loop_header295.us
  %polly.indvar299.us = phi i64 [ %polly.indvar_next300.us, %polly.loop_header295.us ], [ %polly.indvar299.us.ph, %polly.loop_header295.us.preheader ]
  %143 = add nuw nsw i64 %polly.indvar299.us, %111
  %polly.access.add.Packed_MemRef_call1303.us = add nuw nsw i64 %polly.indvar299.us, %polly.access.mul.Packed_MemRef_call1302.us
  %polly.access.Packed_MemRef_call1304.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1303.us
  %_p_scalar_305.us = load double, double* %polly.access.Packed_MemRef_call1304.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_309.us, %_p_scalar_305.us
  %polly.access.Packed_MemRef_call2312.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1303.us
  %_p_scalar_313.us = load double, double* %polly.access.Packed_MemRef_call2312.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_317.us, %_p_scalar_313.us
  %144 = shl i64 %143, 3
  %145 = add i64 %144, %146
  %scevgep318.us = getelementptr i8, i8* %call, i64 %145
  %scevgep318319.us = bitcast i8* %scevgep318.us to double*
  %_p_scalar_320.us = load double, double* %scevgep318319.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_320.us
  store double %p_add42.i118.us, double* %scevgep318319.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next300.us = add nuw nsw i64 %polly.indvar299.us, 1
  %exitcond1196.not = icmp eq i64 %polly.indvar299.us, %smin
  br i1 %exitcond1196.not, label %polly.loop_exit297.us, label %polly.loop_header295.us, !llvm.loop !84

polly.loop_exit297.us:                            ; preds = %polly.loop_header295.us, %middle.block1503, %polly.loop_header287.us
  %polly.indvar_next292.us = add nuw nsw i64 %polly.indvar291.us, 1
  %polly.loop_cond293.us = icmp ult i64 %polly.indvar291.us, 79
  %indvars.iv.next1195 = add i64 %indvars.iv1194, 1
  %indvar.next1510 = add i64 %indvar1509, 1
  br i1 %polly.loop_cond293.us, label %polly.loop_header287.us, label %polly.loop_exit289.loopexit.us

polly.loop_header295.preheader.us:                ; preds = %polly.loop_header287.us
  %polly.access.add.Packed_MemRef_call2307.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1302.us, %142
  %polly.access.Packed_MemRef_call2308.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2307.us
  %_p_scalar_309.us = load double, double* %polly.access.Packed_MemRef_call2308.us, align 8
  %polly.access.Packed_MemRef_call1316.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2307.us
  %_p_scalar_317.us = load double, double* %polly.access.Packed_MemRef_call1316.us, align 8
  %146 = mul i64 %141, 9600
  %min.iters.check1512 = icmp ult i64 %140, 4
  br i1 %min.iters.check1512, label %polly.loop_header295.us.preheader, label %vector.ph1513

vector.ph1513:                                    ; preds = %polly.loop_header295.preheader.us
  %n.vec1515 = and i64 %140, -4
  %broadcast.splatinsert1521 = insertelement <4 x double> poison, double %_p_scalar_309.us, i32 0
  %broadcast.splat1522 = shufflevector <4 x double> %broadcast.splatinsert1521, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1524 = insertelement <4 x double> poison, double %_p_scalar_317.us, i32 0
  %broadcast.splat1525 = shufflevector <4 x double> %broadcast.splatinsert1524, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1505

vector.body1505:                                  ; preds = %vector.body1505, %vector.ph1513
  %index1516 = phi i64 [ 0, %vector.ph1513 ], [ %index.next1517, %vector.body1505 ]
  %147 = add nuw nsw i64 %index1516, %111
  %148 = add nuw nsw i64 %index1516, %polly.access.mul.Packed_MemRef_call1302.us
  %149 = getelementptr double, double* %Packed_MemRef_call1, i64 %148
  %150 = bitcast double* %149 to <4 x double>*
  %wide.load1520 = load <4 x double>, <4 x double>* %150, align 8
  %151 = fmul fast <4 x double> %broadcast.splat1522, %wide.load1520
  %152 = getelementptr double, double* %Packed_MemRef_call2, i64 %148
  %153 = bitcast double* %152 to <4 x double>*
  %wide.load1523 = load <4 x double>, <4 x double>* %153, align 8
  %154 = fmul fast <4 x double> %broadcast.splat1525, %wide.load1523
  %155 = shl i64 %147, 3
  %156 = add i64 %155, %146
  %157 = getelementptr i8, i8* %call, i64 %156
  %158 = bitcast i8* %157 to <4 x double>*
  %wide.load1526 = load <4 x double>, <4 x double>* %158, align 8, !alias.scope !72, !noalias !74
  %159 = fadd fast <4 x double> %154, %151
  %160 = fmul fast <4 x double> %159, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %161 = fadd fast <4 x double> %160, %wide.load1526
  %162 = bitcast i8* %157 to <4 x double>*
  store <4 x double> %161, <4 x double>* %162, align 8, !alias.scope !72, !noalias !74
  %index.next1517 = add i64 %index1516, 4
  %163 = icmp eq i64 %index.next1517, %n.vec1515
  br i1 %163, label %middle.block1503, label %vector.body1505, !llvm.loop !85

middle.block1503:                                 ; preds = %vector.body1505
  %cmp.n1519 = icmp eq i64 %140, %n.vec1515
  br i1 %cmp.n1519, label %polly.loop_exit297.us, label %polly.loop_header295.us.preheader

polly.loop_header295.us.preheader:                ; preds = %polly.loop_header295.preheader.us, %middle.block1503
  %polly.indvar299.us.ph = phi i64 [ 0, %polly.loop_header295.preheader.us ], [ %n.vec1515, %middle.block1503 ]
  br label %polly.loop_header295.us

polly.loop_exit289.loopexit.us:                   ; preds = %polly.loop_exit297.us
  %polly.indvar_next284.us = add nuw nsw i64 %polly.indvar283.us, 1
  %exitcond1197.not = icmp eq i64 %polly.indvar_next284.us, 100
  br i1 %exitcond1197.not, label %polly.loop_exit282, label %polly.loop_header280.us

polly.start323:                                   ; preds = %kernel_syr2k.exit
  %malloccall325 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  %malloccall327 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header411

polly.exiting324:                                 ; preds = %polly.loop_exit435
  tail call void @free(i8* %malloccall325)
  tail call void @free(i8* %malloccall327)
  br label %kernel_syr2k.exit90

polly.loop_header411:                             ; preds = %polly.loop_exit419, %polly.start323
  %indvar1442 = phi i64 [ %indvar.next1443, %polly.loop_exit419 ], [ 0, %polly.start323 ]
  %polly.indvar414 = phi i64 [ %polly.indvar_next415, %polly.loop_exit419 ], [ 1, %polly.start323 ]
  %164 = add i64 %indvar1442, 1
  %165 = mul nuw nsw i64 %polly.indvar414, 9600
  %scevgep423 = getelementptr i8, i8* %call, i64 %165
  %min.iters.check1444 = icmp ult i64 %164, 4
  br i1 %min.iters.check1444, label %polly.loop_header417.preheader, label %vector.ph1445

vector.ph1445:                                    ; preds = %polly.loop_header411
  %n.vec1447 = and i64 %164, -4
  br label %vector.body1441

vector.body1441:                                  ; preds = %vector.body1441, %vector.ph1445
  %index1448 = phi i64 [ 0, %vector.ph1445 ], [ %index.next1449, %vector.body1441 ]
  %166 = shl nuw nsw i64 %index1448, 3
  %167 = getelementptr i8, i8* %scevgep423, i64 %166
  %168 = bitcast i8* %167 to <4 x double>*
  %wide.load1452 = load <4 x double>, <4 x double>* %168, align 8, !alias.scope !86, !noalias !88
  %169 = fmul fast <4 x double> %wide.load1452, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %170 = bitcast i8* %167 to <4 x double>*
  store <4 x double> %169, <4 x double>* %170, align 8, !alias.scope !86, !noalias !88
  %index.next1449 = add i64 %index1448, 4
  %171 = icmp eq i64 %index.next1449, %n.vec1447
  br i1 %171, label %middle.block1439, label %vector.body1441, !llvm.loop !93

middle.block1439:                                 ; preds = %vector.body1441
  %cmp.n1451 = icmp eq i64 %164, %n.vec1447
  br i1 %cmp.n1451, label %polly.loop_exit419, label %polly.loop_header417.preheader

polly.loop_header417.preheader:                   ; preds = %polly.loop_header411, %middle.block1439
  %polly.indvar420.ph = phi i64 [ 0, %polly.loop_header411 ], [ %n.vec1447, %middle.block1439 ]
  br label %polly.loop_header417

polly.loop_exit419:                               ; preds = %polly.loop_header417, %middle.block1439
  %polly.indvar_next415 = add nuw nsw i64 %polly.indvar414, 1
  %exitcond1234.not = icmp eq i64 %polly.indvar_next415, 1200
  %indvar.next1443 = add i64 %indvar1442, 1
  br i1 %exitcond1234.not, label %polly.loop_header427.preheader, label %polly.loop_header411

polly.loop_header427.preheader:                   ; preds = %polly.loop_exit419
  %Packed_MemRef_call1326 = bitcast i8* %malloccall325 to double*
  %Packed_MemRef_call2328 = bitcast i8* %malloccall327 to double*
  br label %polly.loop_header427

polly.loop_header417:                             ; preds = %polly.loop_header417.preheader, %polly.loop_header417
  %polly.indvar420 = phi i64 [ %polly.indvar_next421, %polly.loop_header417 ], [ %polly.indvar420.ph, %polly.loop_header417.preheader ]
  %172 = shl nuw nsw i64 %polly.indvar420, 3
  %scevgep424 = getelementptr i8, i8* %scevgep423, i64 %172
  %scevgep424425 = bitcast i8* %scevgep424 to double*
  %_p_scalar_426 = load double, double* %scevgep424425, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_426, 1.200000e+00
  store double %p_mul.i57, double* %scevgep424425, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next421 = add nuw nsw i64 %polly.indvar420, 1
  %exitcond1233.not = icmp eq i64 %polly.indvar_next421, %polly.indvar414
  br i1 %exitcond1233.not, label %polly.loop_exit419, label %polly.loop_header417, !llvm.loop !94

polly.loop_header427:                             ; preds = %polly.loop_header427.preheader, %polly.loop_exit435
  %polly.indvar430 = phi i64 [ %polly.indvar_next431, %polly.loop_exit435 ], [ 0, %polly.loop_header427.preheader ]
  %173 = mul nuw nsw i64 %polly.indvar430, 100
  br label %polly.loop_header433

polly.loop_exit435:                               ; preds = %polly.loop_exit459
  %polly.indvar_next431 = add nuw nsw i64 %polly.indvar430, 1
  %exitcond1232.not = icmp eq i64 %polly.indvar_next431, 10
  br i1 %exitcond1232.not, label %polly.exiting324, label %polly.loop_header427

polly.loop_header433:                             ; preds = %polly.loop_exit459, %polly.loop_header427
  %indvars.iv1222 = phi i64 [ %indvars.iv.next1223, %polly.loop_exit459 ], [ 0, %polly.loop_header427 ]
  %indvars.iv1217 = phi i64 [ %indvars.iv.next1218, %polly.loop_exit459 ], [ 0, %polly.loop_header427 ]
  %indvars.iv1208 = phi i64 [ %indvars.iv.next1209, %polly.loop_exit459 ], [ 7, %polly.loop_header427 ]
  %indvars.iv1206 = phi i64 [ %indvars.iv.next1207, %polly.loop_exit459 ], [ 79, %polly.loop_header427 ]
  %indvars.iv1202 = phi i64 [ %indvars.iv.next1203, %polly.loop_exit459 ], [ 1200, %polly.loop_header427 ]
  %polly.indvar436 = phi i64 [ %polly.indvar_next437, %polly.loop_exit459 ], [ 0, %polly.loop_header427 ]
  %174 = mul nsw i64 %polly.indvar436, -30
  %175 = mul nuw nsw i64 %polly.indvar436, 3
  %176 = add nuw i64 %175, 7
  %177 = lshr i64 %176, 3
  %178 = mul nuw nsw i64 %177, 80
  %179 = add i64 %174, %178
  %180 = mul nuw nsw i64 %polly.indvar436, 30
  %181 = sub nsw i64 %180, %178
  %182 = lshr i64 %indvars.iv1208, 3
  %183 = mul nuw nsw i64 %182, 80
  %184 = add i64 %indvars.iv1217, %183
  %185 = sub nsw i64 %indvars.iv1222, %183
  %186 = sub nsw i64 %indvars.iv1206, %183
  %187 = mul nuw nsw i64 %polly.indvar436, 50
  br label %polly.loop_header439

polly.loop_exit441:                               ; preds = %polly.loop_exit447
  %188 = mul nsw i64 %polly.indvar436, -50
  %189 = mul nuw nsw i64 %polly.indvar436, 3
  %190 = add nuw nsw i64 %189, 7
  %pexp.p_div_q455 = lshr i64 %190, 3
  %191 = sub nsw i64 %polly.indvar436, %pexp.p_div_q455
  %polly.loop_guard460 = icmp slt i64 %191, 15
  br i1 %polly.loop_guard460, label %polly.loop_header457.preheader, label %polly.loop_exit459

polly.loop_header457.preheader:                   ; preds = %polly.loop_exit441
  %192 = mul nuw nsw i64 %polly.indvar436, 5
  br label %polly.loop_header457

polly.loop_exit459:                               ; preds = %polly.loop_exit516, %polly.loop_exit441
  %polly.indvar_next437 = add nuw nsw i64 %polly.indvar436, 1
  %indvars.iv.next1203 = add nsw i64 %indvars.iv1202, -50
  %indvars.iv.next1207 = add nuw nsw i64 %indvars.iv1206, 30
  %indvars.iv.next1209 = add nuw nsw i64 %indvars.iv1208, 3
  %indvars.iv.next1218 = add nsw i64 %indvars.iv1217, -30
  %indvars.iv.next1223 = add nuw nsw i64 %indvars.iv1222, 30
  %exitcond1231.not = icmp eq i64 %polly.indvar_next437, 24
  br i1 %exitcond1231.not, label %polly.loop_exit435, label %polly.loop_header433

polly.loop_header439:                             ; preds = %polly.loop_exit447, %polly.loop_header433
  %polly.indvar442 = phi i64 [ 0, %polly.loop_header433 ], [ %polly.indvar_next443, %polly.loop_exit447 ]
  %193 = add nuw nsw i64 %polly.indvar442, %173
  %polly.access.mul.Packed_MemRef_call2328 = mul nuw nsw i64 %polly.indvar442, 1200
  br label %polly.loop_header445

polly.loop_exit447:                               ; preds = %polly.loop_header445
  %polly.indvar_next443 = add nuw nsw i64 %polly.indvar442, 1
  %exitcond1205.not = icmp eq i64 %polly.indvar_next443, 100
  br i1 %exitcond1205.not, label %polly.loop_exit441, label %polly.loop_header439

polly.loop_header445:                             ; preds = %polly.loop_header445, %polly.loop_header439
  %polly.indvar448 = phi i64 [ 0, %polly.loop_header439 ], [ %polly.indvar_next449, %polly.loop_header445 ]
  %194 = add nuw nsw i64 %polly.indvar448, %187
  %polly.access.mul.call2452 = mul nuw nsw i64 %194, 1000
  %polly.access.add.call2453 = add nuw nsw i64 %193, %polly.access.mul.call2452
  %polly.access.call2454 = getelementptr double, double* %polly.access.cast.call2803, i64 %polly.access.add.call2453
  %polly.access.call2454.load = load double, double* %polly.access.call2454, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2328 = add nuw nsw i64 %polly.indvar448, %polly.access.mul.Packed_MemRef_call2328
  %polly.access.Packed_MemRef_call2328 = getelementptr double, double* %Packed_MemRef_call2328, i64 %polly.access.add.Packed_MemRef_call2328
  store double %polly.access.call2454.load, double* %polly.access.Packed_MemRef_call2328, align 8
  %polly.indvar_next449 = add nuw nsw i64 %polly.indvar448, 1
  %exitcond1204.not = icmp eq i64 %polly.indvar_next449, %indvars.iv1202
  br i1 %exitcond1204.not, label %polly.loop_exit447, label %polly.loop_header445

polly.loop_header457:                             ; preds = %polly.loop_header457.preheader, %polly.loop_exit516
  %indvar1456 = phi i64 [ 0, %polly.loop_header457.preheader ], [ %indvar.next1457, %polly.loop_exit516 ]
  %indvars.iv1224 = phi i64 [ %185, %polly.loop_header457.preheader ], [ %indvars.iv.next1225, %polly.loop_exit516 ]
  %indvars.iv1219 = phi i64 [ %184, %polly.loop_header457.preheader ], [ %indvars.iv.next1220, %polly.loop_exit516 ]
  %indvars.iv1210 = phi i64 [ %186, %polly.loop_header457.preheader ], [ %indvars.iv.next1211, %polly.loop_exit516 ]
  %polly.indvar461 = phi i64 [ %191, %polly.loop_header457.preheader ], [ %polly.indvar_next462, %polly.loop_exit516 ]
  %195 = mul nsw i64 %indvar1456, -80
  %196 = add i64 %179, %195
  %smax1458 = call i64 @llvm.smax.i64(i64 %196, i64 0)
  %197 = mul nuw nsw i64 %indvar1456, 80
  %198 = add i64 %181, %197
  %199 = add i64 %smax1458, %198
  %smax1221 = call i64 @llvm.smax.i64(i64 %indvars.iv1219, i64 0)
  %200 = add i64 %smax1221, %indvars.iv1224
  %smax1212 = call i64 @llvm.smax.i64(i64 %indvars.iv1210, i64 0)
  %201 = shl nsw i64 %polly.indvar461, 3
  %.not.not995 = icmp sgt i64 %201, %192
  %202 = mul nsw i64 %polly.indvar461, 80
  %203 = add nsw i64 %202, %188
  %204 = icmp sgt i64 %203, 50
  %205 = select i1 %204, i64 %203, i64 50
  %206 = add nsw i64 %203, 79
  %polly.loop_guard488.not = icmp sgt i64 %205, %206
  br i1 %.not.not995, label %polly.loop_header464.us, label %polly.loop_header457.split

polly.loop_header464.us:                          ; preds = %polly.loop_header457, %polly.merge471.us
  %polly.indvar467.us = phi i64 [ %polly.indvar_next468.us, %polly.merge471.us ], [ 0, %polly.loop_header457 ]
  %207 = add nuw nsw i64 %polly.indvar467.us, %173
  %polly.access.mul.Packed_MemRef_call1326.us = mul nuw nsw i64 %polly.indvar467.us, 1200
  br label %polly.loop_header474.us

polly.loop_header474.us:                          ; preds = %polly.loop_header464.us, %polly.loop_header474.us
  %polly.indvar477.us = phi i64 [ %polly.indvar_next478.us, %polly.loop_header474.us ], [ 0, %polly.loop_header464.us ]
  %208 = add nuw nsw i64 %polly.indvar477.us, %187
  %polly.access.mul.call1481.us = mul nuw nsw i64 %208, 1000
  %polly.access.add.call1482.us = add nuw nsw i64 %polly.access.mul.call1481.us, %207
  %polly.access.call1483.us = getelementptr double, double* %polly.access.cast.call1793, i64 %polly.access.add.call1482.us
  %polly.access.call1483.load.us = load double, double* %polly.access.call1483.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1326.us = add nuw nsw i64 %polly.indvar477.us, %polly.access.mul.Packed_MemRef_call1326.us
  %polly.access.Packed_MemRef_call1326.us = getelementptr double, double* %Packed_MemRef_call1326, i64 %polly.access.add.Packed_MemRef_call1326.us
  store double %polly.access.call1483.load.us, double* %polly.access.Packed_MemRef_call1326.us, align 8
  %polly.indvar_next478.us = add nuw nsw i64 %polly.indvar477.us, 1
  %exitcond1215.not = icmp eq i64 %polly.indvar_next478.us, 50
  br i1 %exitcond1215.not, label %polly.loop_exit476.us, label %polly.loop_header474.us

polly.loop_exit476.us:                            ; preds = %polly.loop_header474.us
  br i1 %polly.loop_guard488.not, label %polly.merge471.us, label %polly.loop_header485.us

polly.loop_header485.us:                          ; preds = %polly.loop_exit476.us, %polly.loop_header485.us
  %polly.indvar489.us = phi i64 [ %polly.indvar_next490.us, %polly.loop_header485.us ], [ %205, %polly.loop_exit476.us ]
  %209 = add nuw nsw i64 %polly.indvar489.us, %187
  %polly.access.mul.call1493.us = mul nsw i64 %209, 1000
  %polly.access.add.call1494.us = add nuw nsw i64 %polly.access.mul.call1493.us, %207
  %polly.access.call1495.us = getelementptr double, double* %polly.access.cast.call1793, i64 %polly.access.add.call1494.us
  %polly.access.call1495.load.us = load double, double* %polly.access.call1495.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1326497.us = add nuw nsw i64 %polly.indvar489.us, %polly.access.mul.Packed_MemRef_call1326.us
  %polly.access.Packed_MemRef_call1326498.us = getelementptr double, double* %Packed_MemRef_call1326, i64 %polly.access.add.Packed_MemRef_call1326497.us
  store double %polly.access.call1495.load.us, double* %polly.access.Packed_MemRef_call1326498.us, align 8
  %polly.indvar_next490.us = add nuw nsw i64 %polly.indvar489.us, 1
  %polly.loop_cond491.not.not.us = icmp slt i64 %polly.indvar489.us, %206
  br i1 %polly.loop_cond491.not.not.us, label %polly.loop_header485.us, label %polly.merge471.us

polly.merge471.us:                                ; preds = %polly.loop_header485.us, %polly.loop_exit476.us
  %polly.indvar_next468.us = add nuw nsw i64 %polly.indvar467.us, 1
  %exitcond1216.not = icmp eq i64 %polly.indvar_next468.us, 100
  br i1 %exitcond1216.not, label %polly.loop_header514.preheader, label %polly.loop_header464.us

polly.loop_header457.split:                       ; preds = %polly.loop_header457
  %polly.loop_guard503 = icmp sgt i64 %203, -80
  br i1 %polly.loop_guard503, label %polly.loop_header464.us1069, label %polly.loop_header514.preheader

polly.loop_header464.us1069:                      ; preds = %polly.loop_header457.split, %polly.merge471.loopexit998.us1114
  %polly.indvar467.us1070 = phi i64 [ %polly.indvar_next468.us1106, %polly.merge471.loopexit998.us1114 ], [ 0, %polly.loop_header457.split ]
  %210 = add nuw nsw i64 %polly.indvar467.us1070, %173
  %polly.access.mul.Packed_MemRef_call1326511.us1113 = mul nuw nsw i64 %polly.indvar467.us1070, 1200
  br label %polly.loop_header500.us1072

polly.loop_header500.us1072:                      ; preds = %polly.loop_header464.us1069, %polly.loop_header500.us1072
  %polly.indvar504.us1073 = phi i64 [ %polly.indvar_next505.us1080, %polly.loop_header500.us1072 ], [ 0, %polly.loop_header464.us1069 ]
  %211 = add nuw nsw i64 %polly.indvar504.us1073, %187
  %polly.access.mul.call1508.us1074 = mul nuw nsw i64 %211, 1000
  %polly.access.add.call1509.us1075 = add nuw nsw i64 %210, %polly.access.mul.call1508.us1074
  %polly.access.call1510.us1076 = getelementptr double, double* %polly.access.cast.call1793, i64 %polly.access.add.call1509.us1075
  %polly.access.call1510.load.us1077 = load double, double* %polly.access.call1510.us1076, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1326512.us1078 = add nuw nsw i64 %polly.indvar504.us1073, %polly.access.mul.Packed_MemRef_call1326511.us1113
  %polly.access.Packed_MemRef_call1326513.us1079 = getelementptr double, double* %Packed_MemRef_call1326, i64 %polly.access.add.Packed_MemRef_call1326512.us1078
  store double %polly.access.call1510.load.us1077, double* %polly.access.Packed_MemRef_call1326513.us1079, align 8
  %polly.indvar_next505.us1080 = add nuw nsw i64 %polly.indvar504.us1073, 1
  %exitcond1213.not = icmp eq i64 %polly.indvar504.us1073, %smax1212
  br i1 %exitcond1213.not, label %polly.merge471.loopexit998.us1114, label %polly.loop_header500.us1072

polly.merge471.loopexit998.us1114:                ; preds = %polly.loop_header500.us1072
  %polly.indvar_next468.us1106 = add nuw nsw i64 %polly.indvar467.us1070, 1
  %exitcond1214.not = icmp eq i64 %polly.indvar_next468.us1106, 100
  br i1 %exitcond1214.not, label %polly.loop_header514.preheader, label %polly.loop_header464.us1069

polly.loop_exit516:                               ; preds = %polly.loop_exit523.loopexit.us, %polly.loop_header514.preheader
  %polly.indvar_next462 = add nsw i64 %polly.indvar461, 1
  %polly.loop_cond463 = icmp slt i64 %polly.indvar461, 14
  %indvars.iv.next1211 = add i64 %indvars.iv1210, 80
  %indvars.iv.next1220 = add i64 %indvars.iv1219, -80
  %indvars.iv.next1225 = add i64 %indvars.iv1224, 80
  %indvar.next1457 = add i64 %indvar1456, 1
  br i1 %polly.loop_cond463, label %polly.loop_header457, label %polly.loop_exit459

polly.loop_header514.preheader:                   ; preds = %polly.merge471.loopexit998.us1114, %polly.merge471.us, %polly.loop_header457.split
  %212 = sub nsw i64 %187, %202
  %213 = icmp sgt i64 %212, 0
  %214 = select i1 %213, i64 %212, i64 0
  %polly.loop_guard524 = icmp slt i64 %214, 80
  br i1 %polly.loop_guard524, label %polly.loop_header514.us, label %polly.loop_exit516

polly.loop_header514.us:                          ; preds = %polly.loop_header514.preheader, %polly.loop_exit523.loopexit.us
  %polly.indvar517.us = phi i64 [ %polly.indvar_next518.us, %polly.loop_exit523.loopexit.us ], [ 0, %polly.loop_header514.preheader ]
  %polly.access.mul.Packed_MemRef_call1326536.us = mul nuw nsw i64 %polly.indvar517.us, 1200
  br label %polly.loop_header521.us

polly.loop_header521.us:                          ; preds = %polly.loop_header514.us, %polly.loop_exit531.us
  %indvar1459 = phi i64 [ 0, %polly.loop_header514.us ], [ %indvar.next1460, %polly.loop_exit531.us ]
  %indvars.iv1226 = phi i64 [ %200, %polly.loop_header514.us ], [ %indvars.iv.next1227, %polly.loop_exit531.us ]
  %polly.indvar525.us = phi i64 [ %214, %polly.loop_header514.us ], [ %polly.indvar_next526.us, %polly.loop_exit531.us ]
  %215 = add i64 %199, %indvar1459
  %smin1461 = call i64 @llvm.smin.i64(i64 %215, i64 49)
  %216 = add nsw i64 %smin1461, 1
  %smin1228 = call i64 @llvm.smin.i64(i64 %indvars.iv1226, i64 49)
  %217 = add i64 %polly.indvar525.us, %202
  %218 = add i64 %217, %188
  %polly.loop_guard532.us1303 = icmp sgt i64 %218, -1
  br i1 %polly.loop_guard532.us1303, label %polly.loop_header529.preheader.us, label %polly.loop_exit531.us

polly.loop_header529.us:                          ; preds = %polly.loop_header529.us.preheader, %polly.loop_header529.us
  %polly.indvar533.us = phi i64 [ %polly.indvar_next534.us, %polly.loop_header529.us ], [ %polly.indvar533.us.ph, %polly.loop_header529.us.preheader ]
  %219 = add nuw nsw i64 %polly.indvar533.us, %187
  %polly.access.add.Packed_MemRef_call1326537.us = add nuw nsw i64 %polly.indvar533.us, %polly.access.mul.Packed_MemRef_call1326536.us
  %polly.access.Packed_MemRef_call1326538.us = getelementptr double, double* %Packed_MemRef_call1326, i64 %polly.access.add.Packed_MemRef_call1326537.us
  %_p_scalar_539.us = load double, double* %polly.access.Packed_MemRef_call1326538.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_543.us, %_p_scalar_539.us
  %polly.access.Packed_MemRef_call2328546.us = getelementptr double, double* %Packed_MemRef_call2328, i64 %polly.access.add.Packed_MemRef_call1326537.us
  %_p_scalar_547.us = load double, double* %polly.access.Packed_MemRef_call2328546.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_551.us, %_p_scalar_547.us
  %220 = shl i64 %219, 3
  %221 = add i64 %220, %222
  %scevgep552.us = getelementptr i8, i8* %call, i64 %221
  %scevgep552553.us = bitcast i8* %scevgep552.us to double*
  %_p_scalar_554.us = load double, double* %scevgep552553.us, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_554.us
  store double %p_add42.i79.us, double* %scevgep552553.us, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next534.us = add nuw nsw i64 %polly.indvar533.us, 1
  %exitcond1229.not = icmp eq i64 %polly.indvar533.us, %smin1228
  br i1 %exitcond1229.not, label %polly.loop_exit531.us, label %polly.loop_header529.us, !llvm.loop !97

polly.loop_exit531.us:                            ; preds = %polly.loop_header529.us, %middle.block1453, %polly.loop_header521.us
  %polly.indvar_next526.us = add nuw nsw i64 %polly.indvar525.us, 1
  %polly.loop_cond527.us = icmp ult i64 %polly.indvar525.us, 79
  %indvars.iv.next1227 = add i64 %indvars.iv1226, 1
  %indvar.next1460 = add i64 %indvar1459, 1
  br i1 %polly.loop_cond527.us, label %polly.loop_header521.us, label %polly.loop_exit523.loopexit.us

polly.loop_header529.preheader.us:                ; preds = %polly.loop_header521.us
  %polly.access.add.Packed_MemRef_call2328541.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1326536.us, %218
  %polly.access.Packed_MemRef_call2328542.us = getelementptr double, double* %Packed_MemRef_call2328, i64 %polly.access.add.Packed_MemRef_call2328541.us
  %_p_scalar_543.us = load double, double* %polly.access.Packed_MemRef_call2328542.us, align 8
  %polly.access.Packed_MemRef_call1326550.us = getelementptr double, double* %Packed_MemRef_call1326, i64 %polly.access.add.Packed_MemRef_call2328541.us
  %_p_scalar_551.us = load double, double* %polly.access.Packed_MemRef_call1326550.us, align 8
  %222 = mul i64 %217, 9600
  %min.iters.check1462 = icmp ult i64 %216, 4
  br i1 %min.iters.check1462, label %polly.loop_header529.us.preheader, label %vector.ph1463

vector.ph1463:                                    ; preds = %polly.loop_header529.preheader.us
  %n.vec1465 = and i64 %216, -4
  %broadcast.splatinsert1471 = insertelement <4 x double> poison, double %_p_scalar_543.us, i32 0
  %broadcast.splat1472 = shufflevector <4 x double> %broadcast.splatinsert1471, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1474 = insertelement <4 x double> poison, double %_p_scalar_551.us, i32 0
  %broadcast.splat1475 = shufflevector <4 x double> %broadcast.splatinsert1474, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1455

vector.body1455:                                  ; preds = %vector.body1455, %vector.ph1463
  %index1466 = phi i64 [ 0, %vector.ph1463 ], [ %index.next1467, %vector.body1455 ]
  %223 = add nuw nsw i64 %index1466, %187
  %224 = add nuw nsw i64 %index1466, %polly.access.mul.Packed_MemRef_call1326536.us
  %225 = getelementptr double, double* %Packed_MemRef_call1326, i64 %224
  %226 = bitcast double* %225 to <4 x double>*
  %wide.load1470 = load <4 x double>, <4 x double>* %226, align 8
  %227 = fmul fast <4 x double> %broadcast.splat1472, %wide.load1470
  %228 = getelementptr double, double* %Packed_MemRef_call2328, i64 %224
  %229 = bitcast double* %228 to <4 x double>*
  %wide.load1473 = load <4 x double>, <4 x double>* %229, align 8
  %230 = fmul fast <4 x double> %broadcast.splat1475, %wide.load1473
  %231 = shl i64 %223, 3
  %232 = add i64 %231, %222
  %233 = getelementptr i8, i8* %call, i64 %232
  %234 = bitcast i8* %233 to <4 x double>*
  %wide.load1476 = load <4 x double>, <4 x double>* %234, align 8, !alias.scope !86, !noalias !88
  %235 = fadd fast <4 x double> %230, %227
  %236 = fmul fast <4 x double> %235, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %237 = fadd fast <4 x double> %236, %wide.load1476
  %238 = bitcast i8* %233 to <4 x double>*
  store <4 x double> %237, <4 x double>* %238, align 8, !alias.scope !86, !noalias !88
  %index.next1467 = add i64 %index1466, 4
  %239 = icmp eq i64 %index.next1467, %n.vec1465
  br i1 %239, label %middle.block1453, label %vector.body1455, !llvm.loop !98

middle.block1453:                                 ; preds = %vector.body1455
  %cmp.n1469 = icmp eq i64 %216, %n.vec1465
  br i1 %cmp.n1469, label %polly.loop_exit531.us, label %polly.loop_header529.us.preheader

polly.loop_header529.us.preheader:                ; preds = %polly.loop_header529.preheader.us, %middle.block1453
  %polly.indvar533.us.ph = phi i64 [ 0, %polly.loop_header529.preheader.us ], [ %n.vec1465, %middle.block1453 ]
  br label %polly.loop_header529.us

polly.loop_exit523.loopexit.us:                   ; preds = %polly.loop_exit531.us
  %polly.indvar_next518.us = add nuw nsw i64 %polly.indvar517.us, 1
  %exitcond1230.not = icmp eq i64 %polly.indvar_next518.us, 100
  br i1 %exitcond1230.not, label %polly.loop_exit516, label %polly.loop_header514.us

polly.start557:                                   ; preds = %init_array.exit
  %malloccall559 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  %malloccall561 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header645

polly.exiting558:                                 ; preds = %polly.loop_exit669
  tail call void @free(i8* %malloccall559)
  tail call void @free(i8* %malloccall561)
  br label %kernel_syr2k.exit

polly.loop_header645:                             ; preds = %polly.loop_exit653, %polly.start557
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit653 ], [ 0, %polly.start557 ]
  %polly.indvar648 = phi i64 [ %polly.indvar_next649, %polly.loop_exit653 ], [ 1, %polly.start557 ]
  %240 = add i64 %indvar, 1
  %241 = mul nuw nsw i64 %polly.indvar648, 9600
  %scevgep657 = getelementptr i8, i8* %call, i64 %241
  %min.iters.check1394 = icmp ult i64 %240, 4
  br i1 %min.iters.check1394, label %polly.loop_header651.preheader, label %vector.ph1395

vector.ph1395:                                    ; preds = %polly.loop_header645
  %n.vec1397 = and i64 %240, -4
  br label %vector.body1393

vector.body1393:                                  ; preds = %vector.body1393, %vector.ph1395
  %index1398 = phi i64 [ 0, %vector.ph1395 ], [ %index.next1399, %vector.body1393 ]
  %242 = shl nuw nsw i64 %index1398, 3
  %243 = getelementptr i8, i8* %scevgep657, i64 %242
  %244 = bitcast i8* %243 to <4 x double>*
  %wide.load1402 = load <4 x double>, <4 x double>* %244, align 8, !alias.scope !99, !noalias !101
  %245 = fmul fast <4 x double> %wide.load1402, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %246 = bitcast i8* %243 to <4 x double>*
  store <4 x double> %245, <4 x double>* %246, align 8, !alias.scope !99, !noalias !101
  %index.next1399 = add i64 %index1398, 4
  %247 = icmp eq i64 %index.next1399, %n.vec1397
  br i1 %247, label %middle.block1391, label %vector.body1393, !llvm.loop !106

middle.block1391:                                 ; preds = %vector.body1393
  %cmp.n1401 = icmp eq i64 %240, %n.vec1397
  br i1 %cmp.n1401, label %polly.loop_exit653, label %polly.loop_header651.preheader

polly.loop_header651.preheader:                   ; preds = %polly.loop_header645, %middle.block1391
  %polly.indvar654.ph = phi i64 [ 0, %polly.loop_header645 ], [ %n.vec1397, %middle.block1391 ]
  br label %polly.loop_header651

polly.loop_exit653:                               ; preds = %polly.loop_header651, %middle.block1391
  %polly.indvar_next649 = add nuw nsw i64 %polly.indvar648, 1
  %exitcond1267.not = icmp eq i64 %polly.indvar_next649, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1267.not, label %polly.loop_header661.preheader, label %polly.loop_header645

polly.loop_header661.preheader:                   ; preds = %polly.loop_exit653
  %Packed_MemRef_call1560 = bitcast i8* %malloccall559 to double*
  %Packed_MemRef_call2562 = bitcast i8* %malloccall561 to double*
  br label %polly.loop_header661

polly.loop_header651:                             ; preds = %polly.loop_header651.preheader, %polly.loop_header651
  %polly.indvar654 = phi i64 [ %polly.indvar_next655, %polly.loop_header651 ], [ %polly.indvar654.ph, %polly.loop_header651.preheader ]
  %248 = shl nuw nsw i64 %polly.indvar654, 3
  %scevgep658 = getelementptr i8, i8* %scevgep657, i64 %248
  %scevgep658659 = bitcast i8* %scevgep658 to double*
  %_p_scalar_660 = load double, double* %scevgep658659, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_660, 1.200000e+00
  store double %p_mul.i, double* %scevgep658659, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next655 = add nuw nsw i64 %polly.indvar654, 1
  %exitcond1266.not = icmp eq i64 %polly.indvar_next655, %polly.indvar648
  br i1 %exitcond1266.not, label %polly.loop_exit653, label %polly.loop_header651, !llvm.loop !107

polly.loop_header661:                             ; preds = %polly.loop_header661.preheader, %polly.loop_exit669
  %polly.indvar664 = phi i64 [ %polly.indvar_next665, %polly.loop_exit669 ], [ 0, %polly.loop_header661.preheader ]
  %249 = mul nuw nsw i64 %polly.indvar664, 100
  br label %polly.loop_header667

polly.loop_exit669:                               ; preds = %polly.loop_exit693
  %polly.indvar_next665 = add nuw nsw i64 %polly.indvar664, 1
  %exitcond1265.not = icmp eq i64 %polly.indvar_next665, 10
  br i1 %exitcond1265.not, label %polly.exiting558, label %polly.loop_header661

polly.loop_header667:                             ; preds = %polly.loop_exit693, %polly.loop_header661
  %indvars.iv1255 = phi i64 [ %indvars.iv.next1256, %polly.loop_exit693 ], [ 0, %polly.loop_header661 ]
  %indvars.iv1250 = phi i64 [ %indvars.iv.next1251, %polly.loop_exit693 ], [ 0, %polly.loop_header661 ]
  %indvars.iv1241 = phi i64 [ %indvars.iv.next1242, %polly.loop_exit693 ], [ 7, %polly.loop_header661 ]
  %indvars.iv1239 = phi i64 [ %indvars.iv.next1240, %polly.loop_exit693 ], [ 79, %polly.loop_header661 ]
  %indvars.iv1235 = phi i64 [ %indvars.iv.next1236, %polly.loop_exit693 ], [ 1200, %polly.loop_header661 ]
  %polly.indvar670 = phi i64 [ %polly.indvar_next671, %polly.loop_exit693 ], [ 0, %polly.loop_header661 ]
  %250 = mul nsw i64 %polly.indvar670, -30
  %251 = mul nuw nsw i64 %polly.indvar670, 3
  %252 = add nuw i64 %251, 7
  %253 = lshr i64 %252, 3
  %254 = mul nuw nsw i64 %253, 80
  %255 = add i64 %250, %254
  %256 = mul nuw nsw i64 %polly.indvar670, 30
  %257 = sub nsw i64 %256, %254
  %258 = lshr i64 %indvars.iv1241, 3
  %259 = mul nuw nsw i64 %258, 80
  %260 = add i64 %indvars.iv1250, %259
  %261 = sub nsw i64 %indvars.iv1255, %259
  %262 = sub nsw i64 %indvars.iv1239, %259
  %263 = mul nuw nsw i64 %polly.indvar670, 50
  br label %polly.loop_header673

polly.loop_exit675:                               ; preds = %polly.loop_exit681
  %264 = mul nsw i64 %polly.indvar670, -50
  %265 = mul nuw nsw i64 %polly.indvar670, 3
  %266 = add nuw nsw i64 %265, 7
  %pexp.p_div_q689 = lshr i64 %266, 3
  %267 = sub nsw i64 %polly.indvar670, %pexp.p_div_q689
  %polly.loop_guard694 = icmp slt i64 %267, 15
  br i1 %polly.loop_guard694, label %polly.loop_header691.preheader, label %polly.loop_exit693

polly.loop_header691.preheader:                   ; preds = %polly.loop_exit675
  %268 = mul nuw nsw i64 %polly.indvar670, 5
  br label %polly.loop_header691

polly.loop_exit693:                               ; preds = %polly.loop_exit750, %polly.loop_exit675
  %polly.indvar_next671 = add nuw nsw i64 %polly.indvar670, 1
  %indvars.iv.next1236 = add nsw i64 %indvars.iv1235, -50
  %indvars.iv.next1240 = add nuw nsw i64 %indvars.iv1239, 30
  %indvars.iv.next1242 = add nuw nsw i64 %indvars.iv1241, 3
  %indvars.iv.next1251 = add nsw i64 %indvars.iv1250, -30
  %indvars.iv.next1256 = add nuw nsw i64 %indvars.iv1255, 30
  %exitcond1264.not = icmp eq i64 %polly.indvar_next671, 24
  br i1 %exitcond1264.not, label %polly.loop_exit669, label %polly.loop_header667

polly.loop_header673:                             ; preds = %polly.loop_exit681, %polly.loop_header667
  %polly.indvar676 = phi i64 [ 0, %polly.loop_header667 ], [ %polly.indvar_next677, %polly.loop_exit681 ]
  %269 = add nuw nsw i64 %polly.indvar676, %249
  %polly.access.mul.Packed_MemRef_call2562 = mul nuw nsw i64 %polly.indvar676, 1200
  br label %polly.loop_header679

polly.loop_exit681:                               ; preds = %polly.loop_header679
  %polly.indvar_next677 = add nuw nsw i64 %polly.indvar676, 1
  %exitcond1238.not = icmp eq i64 %polly.indvar_next677, 100
  br i1 %exitcond1238.not, label %polly.loop_exit675, label %polly.loop_header673

polly.loop_header679:                             ; preds = %polly.loop_header679, %polly.loop_header673
  %polly.indvar682 = phi i64 [ 0, %polly.loop_header673 ], [ %polly.indvar_next683, %polly.loop_header679 ]
  %270 = add nuw nsw i64 %polly.indvar682, %263
  %polly.access.mul.call2686 = mul nuw nsw i64 %270, 1000
  %polly.access.add.call2687 = add nuw nsw i64 %269, %polly.access.mul.call2686
  %polly.access.call2688 = getelementptr double, double* %polly.access.cast.call2803, i64 %polly.access.add.call2687
  %polly.access.call2688.load = load double, double* %polly.access.call2688, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2562 = add nuw nsw i64 %polly.indvar682, %polly.access.mul.Packed_MemRef_call2562
  %polly.access.Packed_MemRef_call2562 = getelementptr double, double* %Packed_MemRef_call2562, i64 %polly.access.add.Packed_MemRef_call2562
  store double %polly.access.call2688.load, double* %polly.access.Packed_MemRef_call2562, align 8
  %polly.indvar_next683 = add nuw nsw i64 %polly.indvar682, 1
  %exitcond1237.not = icmp eq i64 %polly.indvar_next683, %indvars.iv1235
  br i1 %exitcond1237.not, label %polly.loop_exit681, label %polly.loop_header679

polly.loop_header691:                             ; preds = %polly.loop_header691.preheader, %polly.loop_exit750
  %indvar1406 = phi i64 [ 0, %polly.loop_header691.preheader ], [ %indvar.next1407, %polly.loop_exit750 ]
  %indvars.iv1257 = phi i64 [ %261, %polly.loop_header691.preheader ], [ %indvars.iv.next1258, %polly.loop_exit750 ]
  %indvars.iv1252 = phi i64 [ %260, %polly.loop_header691.preheader ], [ %indvars.iv.next1253, %polly.loop_exit750 ]
  %indvars.iv1243 = phi i64 [ %262, %polly.loop_header691.preheader ], [ %indvars.iv.next1244, %polly.loop_exit750 ]
  %polly.indvar695 = phi i64 [ %267, %polly.loop_header691.preheader ], [ %polly.indvar_next696, %polly.loop_exit750 ]
  %271 = mul nsw i64 %indvar1406, -80
  %272 = add i64 %255, %271
  %smax1408 = call i64 @llvm.smax.i64(i64 %272, i64 0)
  %273 = mul nuw nsw i64 %indvar1406, 80
  %274 = add i64 %257, %273
  %275 = add i64 %smax1408, %274
  %smax1254 = call i64 @llvm.smax.i64(i64 %indvars.iv1252, i64 0)
  %276 = add i64 %smax1254, %indvars.iv1257
  %smax1245 = call i64 @llvm.smax.i64(i64 %indvars.iv1243, i64 0)
  %277 = shl nsw i64 %polly.indvar695, 3
  %.not.not996 = icmp sgt i64 %277, %268
  %278 = mul nsw i64 %polly.indvar695, 80
  %279 = add nsw i64 %278, %264
  %280 = icmp sgt i64 %279, 50
  %281 = select i1 %280, i64 %279, i64 50
  %282 = add nsw i64 %279, 79
  %polly.loop_guard722.not = icmp sgt i64 %281, %282
  br i1 %.not.not996, label %polly.loop_header698.us, label %polly.loop_header691.split

polly.loop_header698.us:                          ; preds = %polly.loop_header691, %polly.merge705.us
  %polly.indvar701.us = phi i64 [ %polly.indvar_next702.us, %polly.merge705.us ], [ 0, %polly.loop_header691 ]
  %283 = add nuw nsw i64 %polly.indvar701.us, %249
  %polly.access.mul.Packed_MemRef_call1560.us = mul nuw nsw i64 %polly.indvar701.us, 1200
  br label %polly.loop_header708.us

polly.loop_header708.us:                          ; preds = %polly.loop_header698.us, %polly.loop_header708.us
  %polly.indvar711.us = phi i64 [ %polly.indvar_next712.us, %polly.loop_header708.us ], [ 0, %polly.loop_header698.us ]
  %284 = add nuw nsw i64 %polly.indvar711.us, %263
  %polly.access.mul.call1715.us = mul nuw nsw i64 %284, 1000
  %polly.access.add.call1716.us = add nuw nsw i64 %polly.access.mul.call1715.us, %283
  %polly.access.call1717.us = getelementptr double, double* %polly.access.cast.call1793, i64 %polly.access.add.call1716.us
  %polly.access.call1717.load.us = load double, double* %polly.access.call1717.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1560.us = add nuw nsw i64 %polly.indvar711.us, %polly.access.mul.Packed_MemRef_call1560.us
  %polly.access.Packed_MemRef_call1560.us = getelementptr double, double* %Packed_MemRef_call1560, i64 %polly.access.add.Packed_MemRef_call1560.us
  store double %polly.access.call1717.load.us, double* %polly.access.Packed_MemRef_call1560.us, align 8
  %polly.indvar_next712.us = add nuw nsw i64 %polly.indvar711.us, 1
  %exitcond1248.not = icmp eq i64 %polly.indvar_next712.us, 50
  br i1 %exitcond1248.not, label %polly.loop_exit710.us, label %polly.loop_header708.us

polly.loop_exit710.us:                            ; preds = %polly.loop_header708.us
  br i1 %polly.loop_guard722.not, label %polly.merge705.us, label %polly.loop_header719.us

polly.loop_header719.us:                          ; preds = %polly.loop_exit710.us, %polly.loop_header719.us
  %polly.indvar723.us = phi i64 [ %polly.indvar_next724.us, %polly.loop_header719.us ], [ %281, %polly.loop_exit710.us ]
  %285 = add nuw nsw i64 %polly.indvar723.us, %263
  %polly.access.mul.call1727.us = mul nsw i64 %285, 1000
  %polly.access.add.call1728.us = add nuw nsw i64 %polly.access.mul.call1727.us, %283
  %polly.access.call1729.us = getelementptr double, double* %polly.access.cast.call1793, i64 %polly.access.add.call1728.us
  %polly.access.call1729.load.us = load double, double* %polly.access.call1729.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1560731.us = add nuw nsw i64 %polly.indvar723.us, %polly.access.mul.Packed_MemRef_call1560.us
  %polly.access.Packed_MemRef_call1560732.us = getelementptr double, double* %Packed_MemRef_call1560, i64 %polly.access.add.Packed_MemRef_call1560731.us
  store double %polly.access.call1729.load.us, double* %polly.access.Packed_MemRef_call1560732.us, align 8
  %polly.indvar_next724.us = add nuw nsw i64 %polly.indvar723.us, 1
  %polly.loop_cond725.not.not.us = icmp slt i64 %polly.indvar723.us, %282
  br i1 %polly.loop_cond725.not.not.us, label %polly.loop_header719.us, label %polly.merge705.us

polly.merge705.us:                                ; preds = %polly.loop_header719.us, %polly.loop_exit710.us
  %polly.indvar_next702.us = add nuw nsw i64 %polly.indvar701.us, 1
  %exitcond1249.not = icmp eq i64 %polly.indvar_next702.us, 100
  br i1 %exitcond1249.not, label %polly.loop_header748.preheader, label %polly.loop_header698.us

polly.loop_header691.split:                       ; preds = %polly.loop_header691
  %polly.loop_guard737 = icmp sgt i64 %279, -80
  br i1 %polly.loop_guard737, label %polly.loop_header698.us1115, label %polly.loop_header748.preheader

polly.loop_header698.us1115:                      ; preds = %polly.loop_header691.split, %polly.merge705.loopexit999.us1160
  %polly.indvar701.us1116 = phi i64 [ %polly.indvar_next702.us1152, %polly.merge705.loopexit999.us1160 ], [ 0, %polly.loop_header691.split ]
  %286 = add nuw nsw i64 %polly.indvar701.us1116, %249
  %polly.access.mul.Packed_MemRef_call1560745.us1159 = mul nuw nsw i64 %polly.indvar701.us1116, 1200
  br label %polly.loop_header734.us1118

polly.loop_header734.us1118:                      ; preds = %polly.loop_header698.us1115, %polly.loop_header734.us1118
  %polly.indvar738.us1119 = phi i64 [ %polly.indvar_next739.us1126, %polly.loop_header734.us1118 ], [ 0, %polly.loop_header698.us1115 ]
  %287 = add nuw nsw i64 %polly.indvar738.us1119, %263
  %polly.access.mul.call1742.us1120 = mul nuw nsw i64 %287, 1000
  %polly.access.add.call1743.us1121 = add nuw nsw i64 %286, %polly.access.mul.call1742.us1120
  %polly.access.call1744.us1122 = getelementptr double, double* %polly.access.cast.call1793, i64 %polly.access.add.call1743.us1121
  %polly.access.call1744.load.us1123 = load double, double* %polly.access.call1744.us1122, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1560746.us1124 = add nuw nsw i64 %polly.indvar738.us1119, %polly.access.mul.Packed_MemRef_call1560745.us1159
  %polly.access.Packed_MemRef_call1560747.us1125 = getelementptr double, double* %Packed_MemRef_call1560, i64 %polly.access.add.Packed_MemRef_call1560746.us1124
  store double %polly.access.call1744.load.us1123, double* %polly.access.Packed_MemRef_call1560747.us1125, align 8
  %polly.indvar_next739.us1126 = add nuw nsw i64 %polly.indvar738.us1119, 1
  %exitcond1246.not = icmp eq i64 %polly.indvar738.us1119, %smax1245
  br i1 %exitcond1246.not, label %polly.merge705.loopexit999.us1160, label %polly.loop_header734.us1118

polly.merge705.loopexit999.us1160:                ; preds = %polly.loop_header734.us1118
  %polly.indvar_next702.us1152 = add nuw nsw i64 %polly.indvar701.us1116, 1
  %exitcond1247.not = icmp eq i64 %polly.indvar_next702.us1152, 100
  br i1 %exitcond1247.not, label %polly.loop_header748.preheader, label %polly.loop_header698.us1115

polly.loop_exit750:                               ; preds = %polly.loop_exit757.loopexit.us, %polly.loop_header748.preheader
  %polly.indvar_next696 = add nsw i64 %polly.indvar695, 1
  %polly.loop_cond697 = icmp slt i64 %polly.indvar695, 14
  %indvars.iv.next1244 = add i64 %indvars.iv1243, 80
  %indvars.iv.next1253 = add i64 %indvars.iv1252, -80
  %indvars.iv.next1258 = add i64 %indvars.iv1257, 80
  %indvar.next1407 = add i64 %indvar1406, 1
  br i1 %polly.loop_cond697, label %polly.loop_header691, label %polly.loop_exit693

polly.loop_header748.preheader:                   ; preds = %polly.merge705.loopexit999.us1160, %polly.merge705.us, %polly.loop_header691.split
  %288 = sub nsw i64 %263, %278
  %289 = icmp sgt i64 %288, 0
  %290 = select i1 %289, i64 %288, i64 0
  %polly.loop_guard758 = icmp slt i64 %290, 80
  br i1 %polly.loop_guard758, label %polly.loop_header748.us, label %polly.loop_exit750

polly.loop_header748.us:                          ; preds = %polly.loop_header748.preheader, %polly.loop_exit757.loopexit.us
  %polly.indvar751.us = phi i64 [ %polly.indvar_next752.us, %polly.loop_exit757.loopexit.us ], [ 0, %polly.loop_header748.preheader ]
  %polly.access.mul.Packed_MemRef_call1560770.us = mul nuw nsw i64 %polly.indvar751.us, 1200
  br label %polly.loop_header755.us

polly.loop_header755.us:                          ; preds = %polly.loop_header748.us, %polly.loop_exit765.us
  %indvar1409 = phi i64 [ 0, %polly.loop_header748.us ], [ %indvar.next1410, %polly.loop_exit765.us ]
  %indvars.iv1259 = phi i64 [ %276, %polly.loop_header748.us ], [ %indvars.iv.next1260, %polly.loop_exit765.us ]
  %polly.indvar759.us = phi i64 [ %290, %polly.loop_header748.us ], [ %polly.indvar_next760.us, %polly.loop_exit765.us ]
  %291 = add i64 %275, %indvar1409
  %smin1411 = call i64 @llvm.smin.i64(i64 %291, i64 49)
  %292 = add nsw i64 %smin1411, 1
  %smin1261 = call i64 @llvm.smin.i64(i64 %indvars.iv1259, i64 49)
  %293 = add i64 %polly.indvar759.us, %278
  %294 = add i64 %293, %264
  %polly.loop_guard766.us1304 = icmp sgt i64 %294, -1
  br i1 %polly.loop_guard766.us1304, label %polly.loop_header763.preheader.us, label %polly.loop_exit765.us

polly.loop_header763.us:                          ; preds = %polly.loop_header763.us.preheader, %polly.loop_header763.us
  %polly.indvar767.us = phi i64 [ %polly.indvar_next768.us, %polly.loop_header763.us ], [ %polly.indvar767.us.ph, %polly.loop_header763.us.preheader ]
  %295 = add nuw nsw i64 %polly.indvar767.us, %263
  %polly.access.add.Packed_MemRef_call1560771.us = add nuw nsw i64 %polly.indvar767.us, %polly.access.mul.Packed_MemRef_call1560770.us
  %polly.access.Packed_MemRef_call1560772.us = getelementptr double, double* %Packed_MemRef_call1560, i64 %polly.access.add.Packed_MemRef_call1560771.us
  %_p_scalar_773.us = load double, double* %polly.access.Packed_MemRef_call1560772.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_777.us, %_p_scalar_773.us
  %polly.access.Packed_MemRef_call2562780.us = getelementptr double, double* %Packed_MemRef_call2562, i64 %polly.access.add.Packed_MemRef_call1560771.us
  %_p_scalar_781.us = load double, double* %polly.access.Packed_MemRef_call2562780.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_785.us, %_p_scalar_781.us
  %296 = shl i64 %295, 3
  %297 = add i64 %296, %298
  %scevgep786.us = getelementptr i8, i8* %call, i64 %297
  %scevgep786787.us = bitcast i8* %scevgep786.us to double*
  %_p_scalar_788.us = load double, double* %scevgep786787.us, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_788.us
  store double %p_add42.i.us, double* %scevgep786787.us, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next768.us = add nuw nsw i64 %polly.indvar767.us, 1
  %exitcond1262.not = icmp eq i64 %polly.indvar767.us, %smin1261
  br i1 %exitcond1262.not, label %polly.loop_exit765.us, label %polly.loop_header763.us, !llvm.loop !110

polly.loop_exit765.us:                            ; preds = %polly.loop_header763.us, %middle.block1403, %polly.loop_header755.us
  %polly.indvar_next760.us = add nuw nsw i64 %polly.indvar759.us, 1
  %polly.loop_cond761.us = icmp ult i64 %polly.indvar759.us, 79
  %indvars.iv.next1260 = add i64 %indvars.iv1259, 1
  %indvar.next1410 = add i64 %indvar1409, 1
  br i1 %polly.loop_cond761.us, label %polly.loop_header755.us, label %polly.loop_exit757.loopexit.us

polly.loop_header763.preheader.us:                ; preds = %polly.loop_header755.us
  %polly.access.add.Packed_MemRef_call2562775.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1560770.us, %294
  %polly.access.Packed_MemRef_call2562776.us = getelementptr double, double* %Packed_MemRef_call2562, i64 %polly.access.add.Packed_MemRef_call2562775.us
  %_p_scalar_777.us = load double, double* %polly.access.Packed_MemRef_call2562776.us, align 8
  %polly.access.Packed_MemRef_call1560784.us = getelementptr double, double* %Packed_MemRef_call1560, i64 %polly.access.add.Packed_MemRef_call2562775.us
  %_p_scalar_785.us = load double, double* %polly.access.Packed_MemRef_call1560784.us, align 8
  %298 = mul i64 %293, 9600
  %min.iters.check1412 = icmp ult i64 %292, 4
  br i1 %min.iters.check1412, label %polly.loop_header763.us.preheader, label %vector.ph1413

vector.ph1413:                                    ; preds = %polly.loop_header763.preheader.us
  %n.vec1415 = and i64 %292, -4
  %broadcast.splatinsert1421 = insertelement <4 x double> poison, double %_p_scalar_777.us, i32 0
  %broadcast.splat1422 = shufflevector <4 x double> %broadcast.splatinsert1421, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1424 = insertelement <4 x double> poison, double %_p_scalar_785.us, i32 0
  %broadcast.splat1425 = shufflevector <4 x double> %broadcast.splatinsert1424, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1405

vector.body1405:                                  ; preds = %vector.body1405, %vector.ph1413
  %index1416 = phi i64 [ 0, %vector.ph1413 ], [ %index.next1417, %vector.body1405 ]
  %299 = add nuw nsw i64 %index1416, %263
  %300 = add nuw nsw i64 %index1416, %polly.access.mul.Packed_MemRef_call1560770.us
  %301 = getelementptr double, double* %Packed_MemRef_call1560, i64 %300
  %302 = bitcast double* %301 to <4 x double>*
  %wide.load1420 = load <4 x double>, <4 x double>* %302, align 8
  %303 = fmul fast <4 x double> %broadcast.splat1422, %wide.load1420
  %304 = getelementptr double, double* %Packed_MemRef_call2562, i64 %300
  %305 = bitcast double* %304 to <4 x double>*
  %wide.load1423 = load <4 x double>, <4 x double>* %305, align 8
  %306 = fmul fast <4 x double> %broadcast.splat1425, %wide.load1423
  %307 = shl i64 %299, 3
  %308 = add i64 %307, %298
  %309 = getelementptr i8, i8* %call, i64 %308
  %310 = bitcast i8* %309 to <4 x double>*
  %wide.load1426 = load <4 x double>, <4 x double>* %310, align 8, !alias.scope !99, !noalias !101
  %311 = fadd fast <4 x double> %306, %303
  %312 = fmul fast <4 x double> %311, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %313 = fadd fast <4 x double> %312, %wide.load1426
  %314 = bitcast i8* %309 to <4 x double>*
  store <4 x double> %313, <4 x double>* %314, align 8, !alias.scope !99, !noalias !101
  %index.next1417 = add i64 %index1416, 4
  %315 = icmp eq i64 %index.next1417, %n.vec1415
  br i1 %315, label %middle.block1403, label %vector.body1405, !llvm.loop !111

middle.block1403:                                 ; preds = %vector.body1405
  %cmp.n1419 = icmp eq i64 %292, %n.vec1415
  br i1 %cmp.n1419, label %polly.loop_exit765.us, label %polly.loop_header763.us.preheader

polly.loop_header763.us.preheader:                ; preds = %polly.loop_header763.preheader.us, %middle.block1403
  %polly.indvar767.us.ph = phi i64 [ 0, %polly.loop_header763.preheader.us ], [ %n.vec1415, %middle.block1403 ]
  br label %polly.loop_header763.us

polly.loop_exit757.loopexit.us:                   ; preds = %polly.loop_exit765.us
  %polly.indvar_next752.us = add nuw nsw i64 %polly.indvar751.us, 1
  %exitcond1263.not = icmp eq i64 %polly.indvar_next752.us, 100
  br i1 %exitcond1263.not, label %polly.loop_exit750, label %polly.loop_header748.us

polly.loop_header915:                             ; preds = %entry, %polly.loop_exit923
  %indvars.iv1292 = phi i64 [ %indvars.iv.next1293, %polly.loop_exit923 ], [ 0, %entry ]
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_exit923 ], [ 0, %entry ]
  %smin1294 = call i64 @llvm.smin.i64(i64 %indvars.iv1292, i64 -1168)
  %316 = shl nsw i64 %polly.indvar918, 5
  %317 = add nsw i64 %smin1294, 1199
  br label %polly.loop_header921

polly.loop_exit923:                               ; preds = %polly.loop_exit929
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %indvars.iv.next1293 = add nsw i64 %indvars.iv1292, -32
  %exitcond1297.not = icmp eq i64 %polly.indvar_next919, 38
  br i1 %exitcond1297.not, label %polly.loop_header942, label %polly.loop_header915

polly.loop_header921:                             ; preds = %polly.loop_exit929, %polly.loop_header915
  %indvars.iv1288 = phi i64 [ %indvars.iv.next1289, %polly.loop_exit929 ], [ 0, %polly.loop_header915 ]
  %polly.indvar924 = phi i64 [ %polly.indvar_next925, %polly.loop_exit929 ], [ 0, %polly.loop_header915 ]
  %318 = mul nsw i64 %polly.indvar924, -32
  %smin1332 = call i64 @llvm.smin.i64(i64 %318, i64 -1168)
  %319 = add nsw i64 %smin1332, 1200
  %smin1290 = call i64 @llvm.smin.i64(i64 %indvars.iv1288, i64 -1168)
  %320 = shl nsw i64 %polly.indvar924, 5
  %321 = add nsw i64 %smin1290, 1199
  br label %polly.loop_header927

polly.loop_exit929:                               ; preds = %polly.loop_exit935
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %indvars.iv.next1289 = add nsw i64 %indvars.iv1288, -32
  %exitcond1296.not = icmp eq i64 %polly.indvar_next925, 38
  br i1 %exitcond1296.not, label %polly.loop_exit923, label %polly.loop_header921

polly.loop_header927:                             ; preds = %polly.loop_exit935, %polly.loop_header921
  %polly.indvar930 = phi i64 [ 0, %polly.loop_header921 ], [ %polly.indvar_next931, %polly.loop_exit935 ]
  %322 = add nuw nsw i64 %polly.indvar930, %316
  %323 = trunc i64 %322 to i32
  %324 = mul nuw nsw i64 %322, 9600
  %min.iters.check = icmp eq i64 %319, 0
  br i1 %min.iters.check, label %polly.loop_header933, label %vector.ph1333

vector.ph1333:                                    ; preds = %polly.loop_header927
  %broadcast.splatinsert1340 = insertelement <4 x i64> poison, i64 %320, i32 0
  %broadcast.splat1341 = shufflevector <4 x i64> %broadcast.splatinsert1340, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1342 = insertelement <4 x i32> poison, i32 %323, i32 0
  %broadcast.splat1343 = shufflevector <4 x i32> %broadcast.splatinsert1342, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1331

vector.body1331:                                  ; preds = %vector.body1331, %vector.ph1333
  %index1334 = phi i64 [ 0, %vector.ph1333 ], [ %index.next1335, %vector.body1331 ]
  %vec.ind1338 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1333 ], [ %vec.ind.next1339, %vector.body1331 ]
  %325 = add nuw nsw <4 x i64> %vec.ind1338, %broadcast.splat1341
  %326 = trunc <4 x i64> %325 to <4 x i32>
  %327 = mul <4 x i32> %broadcast.splat1343, %326
  %328 = add <4 x i32> %327, <i32 3, i32 3, i32 3, i32 3>
  %329 = urem <4 x i32> %328, <i32 1200, i32 1200, i32 1200, i32 1200>
  %330 = sitofp <4 x i32> %329 to <4 x double>
  %331 = fmul fast <4 x double> %330, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %332 = extractelement <4 x i64> %325, i32 0
  %333 = shl i64 %332, 3
  %334 = add nuw nsw i64 %333, %324
  %335 = getelementptr i8, i8* %call, i64 %334
  %336 = bitcast i8* %335 to <4 x double>*
  store <4 x double> %331, <4 x double>* %336, align 8, !alias.scope !112, !noalias !114
  %index.next1335 = add i64 %index1334, 4
  %vec.ind.next1339 = add <4 x i64> %vec.ind1338, <i64 4, i64 4, i64 4, i64 4>
  %337 = icmp eq i64 %index.next1335, %319
  br i1 %337, label %polly.loop_exit935, label %vector.body1331, !llvm.loop !117

polly.loop_exit935:                               ; preds = %vector.body1331, %polly.loop_header933
  %polly.indvar_next931 = add nuw nsw i64 %polly.indvar930, 1
  %exitcond1295.not = icmp eq i64 %polly.indvar930, %317
  br i1 %exitcond1295.not, label %polly.loop_exit929, label %polly.loop_header927

polly.loop_header933:                             ; preds = %polly.loop_header927, %polly.loop_header933
  %polly.indvar936 = phi i64 [ %polly.indvar_next937, %polly.loop_header933 ], [ 0, %polly.loop_header927 ]
  %338 = add nuw nsw i64 %polly.indvar936, %320
  %339 = trunc i64 %338 to i32
  %340 = mul i32 %339, %323
  %341 = add i32 %340, 3
  %342 = urem i32 %341, 1200
  %p_conv31.i = sitofp i32 %342 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %343 = shl i64 %338, 3
  %344 = add nuw nsw i64 %343, %324
  %scevgep939 = getelementptr i8, i8* %call, i64 %344
  %scevgep939940 = bitcast i8* %scevgep939 to double*
  store double %p_div33.i, double* %scevgep939940, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next937 = add nuw nsw i64 %polly.indvar936, 1
  %exitcond1291.not = icmp eq i64 %polly.indvar936, %321
  br i1 %exitcond1291.not, label %polly.loop_exit935, label %polly.loop_header933, !llvm.loop !118

polly.loop_header942:                             ; preds = %polly.loop_exit923, %polly.loop_exit950
  %indvars.iv1282 = phi i64 [ %indvars.iv.next1283, %polly.loop_exit950 ], [ 0, %polly.loop_exit923 ]
  %polly.indvar945 = phi i64 [ %polly.indvar_next946, %polly.loop_exit950 ], [ 0, %polly.loop_exit923 ]
  %smin1284 = call i64 @llvm.smin.i64(i64 %indvars.iv1282, i64 -1168)
  %345 = shl nsw i64 %polly.indvar945, 5
  %346 = add nsw i64 %smin1284, 1199
  br label %polly.loop_header948

polly.loop_exit950:                               ; preds = %polly.loop_exit956
  %polly.indvar_next946 = add nuw nsw i64 %polly.indvar945, 1
  %indvars.iv.next1283 = add nsw i64 %indvars.iv1282, -32
  %exitcond1287.not = icmp eq i64 %polly.indvar_next946, 38
  br i1 %exitcond1287.not, label %polly.loop_header968, label %polly.loop_header942

polly.loop_header948:                             ; preds = %polly.loop_exit956, %polly.loop_header942
  %indvars.iv1278 = phi i64 [ %indvars.iv.next1279, %polly.loop_exit956 ], [ 0, %polly.loop_header942 ]
  %polly.indvar951 = phi i64 [ %polly.indvar_next952, %polly.loop_exit956 ], [ 0, %polly.loop_header942 ]
  %347 = mul nsw i64 %polly.indvar951, -32
  %smin1347 = call i64 @llvm.smin.i64(i64 %347, i64 -968)
  %348 = add nsw i64 %smin1347, 1000
  %smin1280 = call i64 @llvm.smin.i64(i64 %indvars.iv1278, i64 -968)
  %349 = shl nsw i64 %polly.indvar951, 5
  %350 = add nsw i64 %smin1280, 999
  br label %polly.loop_header954

polly.loop_exit956:                               ; preds = %polly.loop_exit962
  %polly.indvar_next952 = add nuw nsw i64 %polly.indvar951, 1
  %indvars.iv.next1279 = add nsw i64 %indvars.iv1278, -32
  %exitcond1286.not = icmp eq i64 %polly.indvar_next952, 32
  br i1 %exitcond1286.not, label %polly.loop_exit950, label %polly.loop_header948

polly.loop_header954:                             ; preds = %polly.loop_exit962, %polly.loop_header948
  %polly.indvar957 = phi i64 [ 0, %polly.loop_header948 ], [ %polly.indvar_next958, %polly.loop_exit962 ]
  %351 = add nuw nsw i64 %polly.indvar957, %345
  %352 = trunc i64 %351 to i32
  %353 = mul nuw nsw i64 %351, 8000
  %min.iters.check1348 = icmp eq i64 %348, 0
  br i1 %min.iters.check1348, label %polly.loop_header960, label %vector.ph1349

vector.ph1349:                                    ; preds = %polly.loop_header954
  %broadcast.splatinsert1358 = insertelement <4 x i64> poison, i64 %349, i32 0
  %broadcast.splat1359 = shufflevector <4 x i64> %broadcast.splatinsert1358, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1360 = insertelement <4 x i32> poison, i32 %352, i32 0
  %broadcast.splat1361 = shufflevector <4 x i32> %broadcast.splatinsert1360, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1346

vector.body1346:                                  ; preds = %vector.body1346, %vector.ph1349
  %index1352 = phi i64 [ 0, %vector.ph1349 ], [ %index.next1353, %vector.body1346 ]
  %vec.ind1356 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1349 ], [ %vec.ind.next1357, %vector.body1346 ]
  %354 = add nuw nsw <4 x i64> %vec.ind1356, %broadcast.splat1359
  %355 = trunc <4 x i64> %354 to <4 x i32>
  %356 = mul <4 x i32> %broadcast.splat1361, %355
  %357 = add <4 x i32> %356, <i32 2, i32 2, i32 2, i32 2>
  %358 = urem <4 x i32> %357, <i32 1000, i32 1000, i32 1000, i32 1000>
  %359 = sitofp <4 x i32> %358 to <4 x double>
  %360 = fmul fast <4 x double> %359, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %361 = extractelement <4 x i64> %354, i32 0
  %362 = shl i64 %361, 3
  %363 = add nuw nsw i64 %362, %353
  %364 = getelementptr i8, i8* %call2, i64 %363
  %365 = bitcast i8* %364 to <4 x double>*
  store <4 x double> %360, <4 x double>* %365, align 8, !alias.scope !116, !noalias !119
  %index.next1353 = add i64 %index1352, 4
  %vec.ind.next1357 = add <4 x i64> %vec.ind1356, <i64 4, i64 4, i64 4, i64 4>
  %366 = icmp eq i64 %index.next1353, %348
  br i1 %366, label %polly.loop_exit962, label %vector.body1346, !llvm.loop !120

polly.loop_exit962:                               ; preds = %vector.body1346, %polly.loop_header960
  %polly.indvar_next958 = add nuw nsw i64 %polly.indvar957, 1
  %exitcond1285.not = icmp eq i64 %polly.indvar957, %346
  br i1 %exitcond1285.not, label %polly.loop_exit956, label %polly.loop_header954

polly.loop_header960:                             ; preds = %polly.loop_header954, %polly.loop_header960
  %polly.indvar963 = phi i64 [ %polly.indvar_next964, %polly.loop_header960 ], [ 0, %polly.loop_header954 ]
  %367 = add nuw nsw i64 %polly.indvar963, %349
  %368 = trunc i64 %367 to i32
  %369 = mul i32 %368, %352
  %370 = add i32 %369, 2
  %371 = urem i32 %370, 1000
  %p_conv10.i = sitofp i32 %371 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %372 = shl i64 %367, 3
  %373 = add nuw nsw i64 %372, %353
  %scevgep966 = getelementptr i8, i8* %call2, i64 %373
  %scevgep966967 = bitcast i8* %scevgep966 to double*
  store double %p_div12.i, double* %scevgep966967, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next964 = add nuw nsw i64 %polly.indvar963, 1
  %exitcond1281.not = icmp eq i64 %polly.indvar963, %350
  br i1 %exitcond1281.not, label %polly.loop_exit962, label %polly.loop_header960, !llvm.loop !121

polly.loop_header968:                             ; preds = %polly.loop_exit950, %polly.loop_exit976
  %indvars.iv1272 = phi i64 [ %indvars.iv.next1273, %polly.loop_exit976 ], [ 0, %polly.loop_exit950 ]
  %polly.indvar971 = phi i64 [ %polly.indvar_next972, %polly.loop_exit976 ], [ 0, %polly.loop_exit950 ]
  %smin1274 = call i64 @llvm.smin.i64(i64 %indvars.iv1272, i64 -1168)
  %374 = shl nsw i64 %polly.indvar971, 5
  %375 = add nsw i64 %smin1274, 1199
  br label %polly.loop_header974

polly.loop_exit976:                               ; preds = %polly.loop_exit982
  %polly.indvar_next972 = add nuw nsw i64 %polly.indvar971, 1
  %indvars.iv.next1273 = add nsw i64 %indvars.iv1272, -32
  %exitcond1277.not = icmp eq i64 %polly.indvar_next972, 38
  br i1 %exitcond1277.not, label %init_array.exit, label %polly.loop_header968

polly.loop_header974:                             ; preds = %polly.loop_exit982, %polly.loop_header968
  %indvars.iv1268 = phi i64 [ %indvars.iv.next1269, %polly.loop_exit982 ], [ 0, %polly.loop_header968 ]
  %polly.indvar977 = phi i64 [ %polly.indvar_next978, %polly.loop_exit982 ], [ 0, %polly.loop_header968 ]
  %376 = mul nsw i64 %polly.indvar977, -32
  %smin1365 = call i64 @llvm.smin.i64(i64 %376, i64 -968)
  %377 = add nsw i64 %smin1365, 1000
  %smin1270 = call i64 @llvm.smin.i64(i64 %indvars.iv1268, i64 -968)
  %378 = shl nsw i64 %polly.indvar977, 5
  %379 = add nsw i64 %smin1270, 999
  br label %polly.loop_header980

polly.loop_exit982:                               ; preds = %polly.loop_exit988
  %polly.indvar_next978 = add nuw nsw i64 %polly.indvar977, 1
  %indvars.iv.next1269 = add nsw i64 %indvars.iv1268, -32
  %exitcond1276.not = icmp eq i64 %polly.indvar_next978, 32
  br i1 %exitcond1276.not, label %polly.loop_exit976, label %polly.loop_header974

polly.loop_header980:                             ; preds = %polly.loop_exit988, %polly.loop_header974
  %polly.indvar983 = phi i64 [ 0, %polly.loop_header974 ], [ %polly.indvar_next984, %polly.loop_exit988 ]
  %380 = add nuw nsw i64 %polly.indvar983, %374
  %381 = trunc i64 %380 to i32
  %382 = mul nuw nsw i64 %380, 8000
  %min.iters.check1366 = icmp eq i64 %377, 0
  br i1 %min.iters.check1366, label %polly.loop_header986, label %vector.ph1367

vector.ph1367:                                    ; preds = %polly.loop_header980
  %broadcast.splatinsert1376 = insertelement <4 x i64> poison, i64 %378, i32 0
  %broadcast.splat1377 = shufflevector <4 x i64> %broadcast.splatinsert1376, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1378 = insertelement <4 x i32> poison, i32 %381, i32 0
  %broadcast.splat1379 = shufflevector <4 x i32> %broadcast.splatinsert1378, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1364

vector.body1364:                                  ; preds = %vector.body1364, %vector.ph1367
  %index1370 = phi i64 [ 0, %vector.ph1367 ], [ %index.next1371, %vector.body1364 ]
  %vec.ind1374 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1367 ], [ %vec.ind.next1375, %vector.body1364 ]
  %383 = add nuw nsw <4 x i64> %vec.ind1374, %broadcast.splat1377
  %384 = trunc <4 x i64> %383 to <4 x i32>
  %385 = mul <4 x i32> %broadcast.splat1379, %384
  %386 = add <4 x i32> %385, <i32 1, i32 1, i32 1, i32 1>
  %387 = urem <4 x i32> %386, <i32 1200, i32 1200, i32 1200, i32 1200>
  %388 = sitofp <4 x i32> %387 to <4 x double>
  %389 = fmul fast <4 x double> %388, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %390 = extractelement <4 x i64> %383, i32 0
  %391 = shl i64 %390, 3
  %392 = add nuw nsw i64 %391, %382
  %393 = getelementptr i8, i8* %call1, i64 %392
  %394 = bitcast i8* %393 to <4 x double>*
  store <4 x double> %389, <4 x double>* %394, align 8, !alias.scope !115, !noalias !122
  %index.next1371 = add i64 %index1370, 4
  %vec.ind.next1375 = add <4 x i64> %vec.ind1374, <i64 4, i64 4, i64 4, i64 4>
  %395 = icmp eq i64 %index.next1371, %377
  br i1 %395, label %polly.loop_exit988, label %vector.body1364, !llvm.loop !123

polly.loop_exit988:                               ; preds = %vector.body1364, %polly.loop_header986
  %polly.indvar_next984 = add nuw nsw i64 %polly.indvar983, 1
  %exitcond1275.not = icmp eq i64 %polly.indvar983, %375
  br i1 %exitcond1275.not, label %polly.loop_exit982, label %polly.loop_header980

polly.loop_header986:                             ; preds = %polly.loop_header980, %polly.loop_header986
  %polly.indvar989 = phi i64 [ %polly.indvar_next990, %polly.loop_header986 ], [ 0, %polly.loop_header980 ]
  %396 = add nuw nsw i64 %polly.indvar989, %378
  %397 = trunc i64 %396 to i32
  %398 = mul i32 %397, %381
  %399 = add i32 %398, 1
  %400 = urem i32 %399, 1200
  %p_conv.i = sitofp i32 %400 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %401 = shl i64 %396, 3
  %402 = add nuw nsw i64 %401, %382
  %scevgep993 = getelementptr i8, i8* %call1, i64 %402
  %scevgep993994 = bitcast i8* %scevgep993 to double*
  store double %p_div.i, double* %scevgep993994, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next990 = add nuw nsw i64 %polly.indvar989, 1
  %exitcond1271.not = icmp eq i64 %polly.indvar989, %379
  br i1 %exitcond1271.not, label %polly.loop_exit988, label %polly.loop_header986, !llvm.loop !124
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
