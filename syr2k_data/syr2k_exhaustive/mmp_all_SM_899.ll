; ModuleID = 'syr2k_exhaustive/mmp_all_SM_899.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_899.c"
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
  %call935 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1787 = bitcast i8* %call1 to double*
  %polly.access.call1796 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2797 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1796, %call2
  %polly.access.call2816 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2816, %call1
  %2 = or i1 %0, %1
  %polly.access.call836 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call836, %call2
  %4 = icmp ule i8* %polly.access.call2816, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call836, %call1
  %8 = icmp ule i8* %polly.access.call1796, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header909, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1322 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1321 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1320 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1319 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1319, %scevgep1322
  %bound1 = icmp ult i8* %scevgep1321, %scevgep1320
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
  br i1 %exitcond18.not.i, label %vector.ph1326, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1326:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1333 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1334 = shufflevector <4 x i64> %broadcast.splatinsert1333, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1325

vector.body1325:                                  ; preds = %vector.body1325, %vector.ph1326
  %index1327 = phi i64 [ 0, %vector.ph1326 ], [ %index.next1328, %vector.body1325 ]
  %vec.ind1331 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1326 ], [ %vec.ind.next1332, %vector.body1325 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1331, %broadcast.splat1334
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv7.i, i64 %index1327
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1328 = add i64 %index1327, 4
  %vec.ind.next1332 = add <4 x i64> %vec.ind1331, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1328, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1325, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1325
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1326, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit970
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start553, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1388 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1388, label %for.body3.i46.preheader1537, label %vector.ph1389

vector.ph1389:                                    ; preds = %for.body3.i46.preheader
  %n.vec1391 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1387

vector.body1387:                                  ; preds = %vector.body1387, %vector.ph1389
  %index1392 = phi i64 [ 0, %vector.ph1389 ], [ %index.next1393, %vector.body1387 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv21.i, i64 %index1392
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1393 = add i64 %index1392, 4
  %46 = icmp eq i64 %index.next1393, %n.vec1391
  br i1 %46, label %middle.block1385, label %vector.body1387, !llvm.loop !18

middle.block1385:                                 ; preds = %vector.body1387
  %cmp.n1395 = icmp eq i64 %indvars.iv21.i, %n.vec1391
  br i1 %cmp.n1395, label %for.inc6.i, label %for.body3.i46.preheader1537

for.body3.i46.preheader1537:                      ; preds = %for.body3.i46.preheader, %middle.block1385
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1391, %middle.block1385 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1537, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1537 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1385, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting554
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start321, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1435 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1435, label %for.body3.i60.preheader1535, label %vector.ph1436

vector.ph1436:                                    ; preds = %for.body3.i60.preheader
  %n.vec1438 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1434

vector.body1434:                                  ; preds = %vector.body1434, %vector.ph1436
  %index1439 = phi i64 [ 0, %vector.ph1436 ], [ %index.next1440, %vector.body1434 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv21.i52, i64 %index1439
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1443 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1443, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1440 = add i64 %index1439, 4
  %57 = icmp eq i64 %index.next1440, %n.vec1438
  br i1 %57, label %middle.block1432, label %vector.body1434, !llvm.loop !64

middle.block1432:                                 ; preds = %vector.body1434
  %cmp.n1442 = icmp eq i64 %indvars.iv21.i52, %n.vec1438
  br i1 %cmp.n1442, label %for.inc6.i63, label %for.body3.i60.preheader1535

for.body3.i60.preheader1535:                      ; preds = %for.body3.i60.preheader, %middle.block1432
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1438, %middle.block1432 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1535, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1535 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1432, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting322
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1485 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1485, label %for.body3.i99.preheader1533, label %vector.ph1486

vector.ph1486:                                    ; preds = %for.body3.i99.preheader
  %n.vec1488 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1484

vector.body1484:                                  ; preds = %vector.body1484, %vector.ph1486
  %index1489 = phi i64 [ 0, %vector.ph1486 ], [ %index.next1490, %vector.body1484 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv21.i91, i64 %index1489
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1493 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1493, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1490 = add i64 %index1489, 4
  %68 = icmp eq i64 %index.next1490, %n.vec1488
  br i1 %68, label %middle.block1482, label %vector.body1484, !llvm.loop !66

middle.block1482:                                 ; preds = %vector.body1484
  %cmp.n1492 = icmp eq i64 %indvars.iv21.i91, %n.vec1488
  br i1 %cmp.n1492, label %for.inc6.i102, label %for.body3.i99.preheader1533

for.body3.i99.preheader1533:                      ; preds = %for.body3.i99.preheader, %middle.block1482
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1488, %middle.block1482 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1533, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1533 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1482, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  %malloccall136 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1497 = phi i64 [ %indvar.next1498, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1497, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1499 = icmp ult i64 %88, 4
  br i1 %min.iters.check1499, label %polly.loop_header192.preheader, label %vector.ph1500

vector.ph1500:                                    ; preds = %polly.loop_header
  %n.vec1502 = and i64 %88, -4
  br label %vector.body1496

vector.body1496:                                  ; preds = %vector.body1496, %vector.ph1500
  %index1503 = phi i64 [ 0, %vector.ph1500 ], [ %index.next1504, %vector.body1496 ]
  %90 = shl nuw nsw i64 %index1503, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1507 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1507, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1504 = add i64 %index1503, 4
  %95 = icmp eq i64 %index.next1504, %n.vec1502
  br i1 %95, label %middle.block1494, label %vector.body1496, !llvm.loop !79

middle.block1494:                                 ; preds = %vector.body1496
  %cmp.n1506 = icmp eq i64 %88, %n.vec1502
  br i1 %cmp.n1506, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1494
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1502, %middle.block1494 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1494
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1199.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1498 = add i64 %indvar1497, 1
  br i1 %exitcond1199.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1198.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1198.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %indvars.iv1168 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1169, %polly.loop_exit208 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit208 ]
  %smin1194 = call i64 @llvm.smin.i64(i64 %indvars.iv1168, i64 -968)
  %97 = add nsw i64 %smin1194, 1000
  %98 = shl nsw i64 %polly.indvar203, 5
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next1169 = add nsw i64 %indvars.iv1168, -32
  %exitcond1197.not = icmp eq i64 %polly.indvar_next204, 32
  br i1 %exitcond1197.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1186 = phi i64 [ %indvars.iv.next1187, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1181 = phi i64 [ %indvars.iv.next1182, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1171 = phi i64 [ %indvars.iv.next1172, %polly.loop_exit230 ], [ 79, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %99 = mul nuw nsw i64 %polly.indvar209, 100
  %100 = lshr i64 %polly.indvar209, 2
  %101 = add nuw i64 %polly.indvar209, %100
  %102 = mul nuw nsw i64 %101, 80
  %103 = sub i64 %99, %102
  %104 = mul nsw i64 %polly.indvar209, -100
  %105 = add i64 %104, %102
  %106 = lshr i64 %polly.indvar209, 2
  %107 = add nuw i64 %polly.indvar209, %106
  %108 = mul nuw nsw i64 %107, 80
  %109 = sub i64 %indvars.iv1181, %108
  %110 = add i64 %indvars.iv1186, %108
  %111 = add i64 %indvars.iv1171, %108
  %112 = mul nuw nsw i64 %polly.indvar209, 100
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %113 = mul nsw i64 %polly.indvar209, -100
  %114 = mul nuw nsw i64 %polly.indvar209, 5
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit280
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -100
  %indvars.iv.next1172 = add nsw i64 %indvars.iv1171, -100
  %indvars.iv.next1182 = add nuw nsw i64 %indvars.iv1181, 100
  %indvars.iv.next1187 = add nsw i64 %indvars.iv1186, -100
  %exitcond1196.not = icmp eq i64 %polly.indvar_next210, 12
  br i1 %exitcond1196.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %115 = add nuw nsw i64 %polly.indvar215, %98
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1170.not = icmp eq i64 %polly.indvar_next216, %97
  br i1 %exitcond1170.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %116 = add nuw nsw i64 %polly.indvar221, %112
  %polly.access.mul.call2225 = mul nuw nsw i64 %116, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %115, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2797, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit280, %polly.loop_exit214
  %indvar1511 = phi i64 [ %indvar.next1512, %polly.loop_exit280 ], [ 0, %polly.loop_exit214 ]
  %indvars.iv1188 = phi i64 [ %indvars.iv.next1189, %polly.loop_exit280 ], [ %110, %polly.loop_exit214 ]
  %indvars.iv1183 = phi i64 [ %indvars.iv.next1184, %polly.loop_exit280 ], [ %109, %polly.loop_exit214 ]
  %indvars.iv1173 = phi i64 [ %indvars.iv.next1174, %polly.loop_exit280 ], [ %111, %polly.loop_exit214 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit280 ], [ %107, %polly.loop_exit214 ]
  %117 = mul nsw i64 %indvar1511, -80
  %118 = add i64 %103, %117
  %smax1513 = call i64 @llvm.smax.i64(i64 %118, i64 0)
  %119 = mul nuw nsw i64 %indvar1511, 80
  %120 = add i64 %105, %119
  %121 = add i64 %smax1513, %120
  %smax1185 = call i64 @llvm.smax.i64(i64 %indvars.iv1183, i64 0)
  %122 = add i64 %smax1185, %indvars.iv1188
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1173, i64 0)
  %123 = shl nsw i64 %polly.indvar231, 2
  %.not.not = icmp ugt i64 %123, %114
  %124 = mul nuw nsw i64 %polly.indvar231, 80
  %125 = add nsw i64 %124, %113
  %126 = icmp sgt i64 %125, 100
  %127 = select i1 %126, i64 %125, i64 100
  %128 = add nsw i64 %125, 79
  %polly.loop_guard.not = icmp sgt i64 %127, %128
  br i1 %.not.not, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.merge.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.merge.us ], [ 0, %polly.loop_header228 ]
  %129 = add nuw nsw i64 %polly.indvar237.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header234.us ]
  %130 = add nuw nsw i64 %polly.indvar243.us, %112
  %polly.access.mul.call1247.us = mul nuw nsw i64 %130, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %polly.access.mul.call1247.us, %129
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1178.not = icmp eq i64 %polly.indvar_next244.us, 100
  br i1 %exitcond1178.not, label %polly.loop_exit242.us, label %polly.loop_header240.us

polly.loop_exit242.us:                            ; preds = %polly.loop_header240.us
  br i1 %polly.loop_guard.not, label %polly.merge.us, label %polly.loop_header250.us

polly.loop_header250.us:                          ; preds = %polly.loop_exit242.us, %polly.loop_header250.us
  %polly.indvar253.us = phi i64 [ %polly.indvar_next254.us, %polly.loop_header250.us ], [ %127, %polly.loop_exit242.us ]
  %131 = add nuw nsw i64 %polly.indvar253.us, %112
  %polly.access.mul.call1257.us = mul nsw i64 %131, 1000
  %polly.access.add.call1258.us = add nuw nsw i64 %polly.access.mul.call1257.us, %129
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1258.us
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261.us = add nuw nsw i64 %polly.indvar253.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1262.us, align 8
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %polly.loop_cond255.not.not.us = icmp slt i64 %polly.indvar253.us, %128
  br i1 %polly.loop_cond255.not.not.us, label %polly.loop_header250.us, label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.loop_header250.us, %polly.loop_exit242.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1180.not = icmp eq i64 %polly.indvar_next238.us, %97
  br i1 %exitcond1180.not, label %polly.loop_header278.preheader, label %polly.loop_header234.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  %polly.loop_guard267 = icmp sgt i64 %125, -80
  br i1 %polly.loop_guard267, label %polly.loop_header234.us1017, label %polly.loop_header278.preheader

polly.loop_header234.us1017:                      ; preds = %polly.loop_header228.split, %polly.merge.loopexit991.us1062
  %polly.indvar237.us1018 = phi i64 [ %polly.indvar_next238.us1054, %polly.merge.loopexit991.us1062 ], [ 0, %polly.loop_header228.split ]
  %132 = add nuw nsw i64 %polly.indvar237.us1018, %98
  %polly.access.mul.Packed_MemRef_call1275.us1061 = mul nuw nsw i64 %polly.indvar237.us1018, 1200
  br label %polly.loop_header264.us1020

polly.loop_header264.us1020:                      ; preds = %polly.loop_header234.us1017, %polly.loop_header264.us1020
  %polly.indvar268.us1021 = phi i64 [ %polly.indvar_next269.us1028, %polly.loop_header264.us1020 ], [ 0, %polly.loop_header234.us1017 ]
  %133 = add nuw nsw i64 %polly.indvar268.us1021, %112
  %polly.access.mul.call1272.us1022 = mul nuw nsw i64 %133, 1000
  %polly.access.add.call1273.us1023 = add nuw nsw i64 %132, %polly.access.mul.call1272.us1022
  %polly.access.call1274.us1024 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1273.us1023
  %polly.access.call1274.load.us1025 = load double, double* %polly.access.call1274.us1024, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1276.us1026 = add nuw nsw i64 %polly.indvar268.us1021, %polly.access.mul.Packed_MemRef_call1275.us1061
  %polly.access.Packed_MemRef_call1277.us1027 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1276.us1026
  store double %polly.access.call1274.load.us1025, double* %polly.access.Packed_MemRef_call1277.us1027, align 8
  %polly.indvar_next269.us1028 = add nuw nsw i64 %polly.indvar268.us1021, 1
  %exitcond1175.not = icmp eq i64 %polly.indvar268.us1021, %smax
  br i1 %exitcond1175.not, label %polly.merge.loopexit991.us1062, label %polly.loop_header264.us1020

polly.merge.loopexit991.us1062:                   ; preds = %polly.loop_header264.us1020
  %polly.indvar_next238.us1054 = add nuw nsw i64 %polly.indvar237.us1018, 1
  %exitcond1177.not = icmp eq i64 %polly.indvar_next238.us1054, %97
  br i1 %exitcond1177.not, label %polly.loop_header278.preheader, label %polly.loop_header234.us1017

polly.loop_exit280:                               ; preds = %polly.loop_exit287.loopexit.us, %polly.loop_header278.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %polly.loop_cond233 = icmp ult i64 %polly.indvar231, 14
  %indvars.iv.next1174 = add i64 %indvars.iv1173, 80
  %indvars.iv.next1184 = add i64 %indvars.iv1183, -80
  %indvars.iv.next1189 = add i64 %indvars.iv1188, 80
  %indvar.next1512 = add i64 %indvar1511, 1
  br i1 %polly.loop_cond233, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header278.preheader:                   ; preds = %polly.merge.loopexit991.us1062, %polly.merge.us, %polly.loop_header228.split
  %134 = sub nsw i64 %112, %124
  %135 = icmp sgt i64 %134, 0
  %136 = select i1 %135, i64 %134, i64 0
  %polly.loop_guard288 = icmp slt i64 %136, 80
  br i1 %polly.loop_guard288, label %polly.loop_header278.us, label %polly.loop_exit280

polly.loop_header278.us:                          ; preds = %polly.loop_header278.preheader, %polly.loop_exit287.loopexit.us
  %polly.indvar281.us = phi i64 [ %polly.indvar_next282.us, %polly.loop_exit287.loopexit.us ], [ 0, %polly.loop_header278.preheader ]
  %polly.access.mul.Packed_MemRef_call1300.us = mul nuw nsw i64 %polly.indvar281.us, 1200
  br label %polly.loop_header285.us

polly.loop_header285.us:                          ; preds = %polly.loop_header278.us, %polly.loop_exit295.us
  %indvar1514 = phi i64 [ 0, %polly.loop_header278.us ], [ %indvar.next1515, %polly.loop_exit295.us ]
  %indvars.iv1190 = phi i64 [ %122, %polly.loop_header278.us ], [ %indvars.iv.next1191, %polly.loop_exit295.us ]
  %polly.indvar289.us = phi i64 [ %136, %polly.loop_header278.us ], [ %polly.indvar_next290.us, %polly.loop_exit295.us ]
  %137 = add i64 %121, %indvar1514
  %smin1516 = call i64 @llvm.smin.i64(i64 %137, i64 99)
  %138 = add nsw i64 %smin1516, 1
  %smin1192 = call i64 @llvm.smin.i64(i64 %indvars.iv1190, i64 99)
  %139 = add nuw i64 %polly.indvar289.us, %124
  %140 = add i64 %139, %113
  %polly.loop_guard296.us1308 = icmp sgt i64 %140, -1
  br i1 %polly.loop_guard296.us1308, label %polly.loop_header293.preheader.us, label %polly.loop_exit295.us

polly.loop_header293.us:                          ; preds = %polly.loop_header293.us.preheader, %polly.loop_header293.us
  %polly.indvar297.us = phi i64 [ %polly.indvar_next298.us, %polly.loop_header293.us ], [ %polly.indvar297.us.ph, %polly.loop_header293.us.preheader ]
  %141 = add nuw nsw i64 %polly.indvar297.us, %112
  %polly.access.add.Packed_MemRef_call1301.us = add nuw nsw i64 %polly.indvar297.us, %polly.access.mul.Packed_MemRef_call1300.us
  %polly.access.Packed_MemRef_call1302.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1301.us
  %_p_scalar_303.us = load double, double* %polly.access.Packed_MemRef_call1302.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_307.us, %_p_scalar_303.us
  %polly.access.Packed_MemRef_call2310.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1301.us
  %_p_scalar_311.us = load double, double* %polly.access.Packed_MemRef_call2310.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_315.us, %_p_scalar_311.us
  %142 = shl i64 %141, 3
  %143 = add i64 %142, %144
  %scevgep316.us = getelementptr i8, i8* %call, i64 %143
  %scevgep316317.us = bitcast i8* %scevgep316.us to double*
  %_p_scalar_318.us = load double, double* %scevgep316317.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_318.us
  store double %p_add42.i118.us, double* %scevgep316317.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next298.us = add nuw nsw i64 %polly.indvar297.us, 1
  %exitcond1193.not = icmp eq i64 %polly.indvar297.us, %smin1192
  br i1 %exitcond1193.not, label %polly.loop_exit295.us, label %polly.loop_header293.us, !llvm.loop !84

polly.loop_exit295.us:                            ; preds = %polly.loop_header293.us, %middle.block1508, %polly.loop_header285.us
  %polly.indvar_next290.us = add nuw nsw i64 %polly.indvar289.us, 1
  %polly.loop_cond291.us = icmp ult i64 %polly.indvar289.us, 79
  %indvars.iv.next1191 = add i64 %indvars.iv1190, 1
  %indvar.next1515 = add i64 %indvar1514, 1
  br i1 %polly.loop_cond291.us, label %polly.loop_header285.us, label %polly.loop_exit287.loopexit.us

polly.loop_header293.preheader.us:                ; preds = %polly.loop_header285.us
  %polly.access.add.Packed_MemRef_call2305.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1300.us, %140
  %polly.access.Packed_MemRef_call2306.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2305.us
  %_p_scalar_307.us = load double, double* %polly.access.Packed_MemRef_call2306.us, align 8
  %polly.access.Packed_MemRef_call1314.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2305.us
  %_p_scalar_315.us = load double, double* %polly.access.Packed_MemRef_call1314.us, align 8
  %144 = mul i64 %139, 9600
  %min.iters.check1517 = icmp ult i64 %138, 4
  br i1 %min.iters.check1517, label %polly.loop_header293.us.preheader, label %vector.ph1518

vector.ph1518:                                    ; preds = %polly.loop_header293.preheader.us
  %n.vec1520 = and i64 %138, -4
  %broadcast.splatinsert1526 = insertelement <4 x double> poison, double %_p_scalar_307.us, i32 0
  %broadcast.splat1527 = shufflevector <4 x double> %broadcast.splatinsert1526, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1529 = insertelement <4 x double> poison, double %_p_scalar_315.us, i32 0
  %broadcast.splat1530 = shufflevector <4 x double> %broadcast.splatinsert1529, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1510

vector.body1510:                                  ; preds = %vector.body1510, %vector.ph1518
  %index1521 = phi i64 [ 0, %vector.ph1518 ], [ %index.next1522, %vector.body1510 ]
  %145 = add nuw nsw i64 %index1521, %112
  %146 = add nuw nsw i64 %index1521, %polly.access.mul.Packed_MemRef_call1300.us
  %147 = getelementptr double, double* %Packed_MemRef_call1, i64 %146
  %148 = bitcast double* %147 to <4 x double>*
  %wide.load1525 = load <4 x double>, <4 x double>* %148, align 8
  %149 = fmul fast <4 x double> %broadcast.splat1527, %wide.load1525
  %150 = getelementptr double, double* %Packed_MemRef_call2, i64 %146
  %151 = bitcast double* %150 to <4 x double>*
  %wide.load1528 = load <4 x double>, <4 x double>* %151, align 8
  %152 = fmul fast <4 x double> %broadcast.splat1530, %wide.load1528
  %153 = shl i64 %145, 3
  %154 = add i64 %153, %144
  %155 = getelementptr i8, i8* %call, i64 %154
  %156 = bitcast i8* %155 to <4 x double>*
  %wide.load1531 = load <4 x double>, <4 x double>* %156, align 8, !alias.scope !72, !noalias !74
  %157 = fadd fast <4 x double> %152, %149
  %158 = fmul fast <4 x double> %157, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %159 = fadd fast <4 x double> %158, %wide.load1531
  %160 = bitcast i8* %155 to <4 x double>*
  store <4 x double> %159, <4 x double>* %160, align 8, !alias.scope !72, !noalias !74
  %index.next1522 = add i64 %index1521, 4
  %161 = icmp eq i64 %index.next1522, %n.vec1520
  br i1 %161, label %middle.block1508, label %vector.body1510, !llvm.loop !85

middle.block1508:                                 ; preds = %vector.body1510
  %cmp.n1524 = icmp eq i64 %138, %n.vec1520
  br i1 %cmp.n1524, label %polly.loop_exit295.us, label %polly.loop_header293.us.preheader

polly.loop_header293.us.preheader:                ; preds = %polly.loop_header293.preheader.us, %middle.block1508
  %polly.indvar297.us.ph = phi i64 [ 0, %polly.loop_header293.preheader.us ], [ %n.vec1520, %middle.block1508 ]
  br label %polly.loop_header293.us

polly.loop_exit287.loopexit.us:                   ; preds = %polly.loop_exit295.us
  %polly.indvar_next282.us = add nuw nsw i64 %polly.indvar281.us, 1
  %exitcond1195.not = icmp eq i64 %polly.indvar_next282.us, %97
  br i1 %exitcond1195.not, label %polly.loop_exit280, label %polly.loop_header278.us

polly.start321:                                   ; preds = %kernel_syr2k.exit
  %malloccall323 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  %malloccall325 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header409

polly.exiting322:                                 ; preds = %polly.loop_exit433
  tail call void @free(i8* %malloccall323)
  tail call void @free(i8* %malloccall325)
  br label %kernel_syr2k.exit90

polly.loop_header409:                             ; preds = %polly.loop_exit417, %polly.start321
  %indvar1447 = phi i64 [ %indvar.next1448, %polly.loop_exit417 ], [ 0, %polly.start321 ]
  %polly.indvar412 = phi i64 [ %polly.indvar_next413, %polly.loop_exit417 ], [ 1, %polly.start321 ]
  %162 = add i64 %indvar1447, 1
  %163 = mul nuw nsw i64 %polly.indvar412, 9600
  %scevgep421 = getelementptr i8, i8* %call, i64 %163
  %min.iters.check1449 = icmp ult i64 %162, 4
  br i1 %min.iters.check1449, label %polly.loop_header415.preheader, label %vector.ph1450

vector.ph1450:                                    ; preds = %polly.loop_header409
  %n.vec1452 = and i64 %162, -4
  br label %vector.body1446

vector.body1446:                                  ; preds = %vector.body1446, %vector.ph1450
  %index1453 = phi i64 [ 0, %vector.ph1450 ], [ %index.next1454, %vector.body1446 ]
  %164 = shl nuw nsw i64 %index1453, 3
  %165 = getelementptr i8, i8* %scevgep421, i64 %164
  %166 = bitcast i8* %165 to <4 x double>*
  %wide.load1457 = load <4 x double>, <4 x double>* %166, align 8, !alias.scope !86, !noalias !88
  %167 = fmul fast <4 x double> %wide.load1457, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %168 = bitcast i8* %165 to <4 x double>*
  store <4 x double> %167, <4 x double>* %168, align 8, !alias.scope !86, !noalias !88
  %index.next1454 = add i64 %index1453, 4
  %169 = icmp eq i64 %index.next1454, %n.vec1452
  br i1 %169, label %middle.block1444, label %vector.body1446, !llvm.loop !93

middle.block1444:                                 ; preds = %vector.body1446
  %cmp.n1456 = icmp eq i64 %162, %n.vec1452
  br i1 %cmp.n1456, label %polly.loop_exit417, label %polly.loop_header415.preheader

polly.loop_header415.preheader:                   ; preds = %polly.loop_header409, %middle.block1444
  %polly.indvar418.ph = phi i64 [ 0, %polly.loop_header409 ], [ %n.vec1452, %middle.block1444 ]
  br label %polly.loop_header415

polly.loop_exit417:                               ; preds = %polly.loop_header415, %middle.block1444
  %polly.indvar_next413 = add nuw nsw i64 %polly.indvar412, 1
  %exitcond1236.not = icmp eq i64 %polly.indvar_next413, 1200
  %indvar.next1448 = add i64 %indvar1447, 1
  br i1 %exitcond1236.not, label %polly.loop_header425.preheader, label %polly.loop_header409

polly.loop_header425.preheader:                   ; preds = %polly.loop_exit417
  %Packed_MemRef_call1324 = bitcast i8* %malloccall323 to double*
  %Packed_MemRef_call2326 = bitcast i8* %malloccall325 to double*
  br label %polly.loop_header425

polly.loop_header415:                             ; preds = %polly.loop_header415.preheader, %polly.loop_header415
  %polly.indvar418 = phi i64 [ %polly.indvar_next419, %polly.loop_header415 ], [ %polly.indvar418.ph, %polly.loop_header415.preheader ]
  %170 = shl nuw nsw i64 %polly.indvar418, 3
  %scevgep422 = getelementptr i8, i8* %scevgep421, i64 %170
  %scevgep422423 = bitcast i8* %scevgep422 to double*
  %_p_scalar_424 = load double, double* %scevgep422423, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_424, 1.200000e+00
  store double %p_mul.i57, double* %scevgep422423, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next419 = add nuw nsw i64 %polly.indvar418, 1
  %exitcond1235.not = icmp eq i64 %polly.indvar_next419, %polly.indvar412
  br i1 %exitcond1235.not, label %polly.loop_exit417, label %polly.loop_header415, !llvm.loop !94

polly.loop_header425:                             ; preds = %polly.loop_header425.preheader, %polly.loop_exit433
  %indvars.iv1203 = phi i64 [ 0, %polly.loop_header425.preheader ], [ %indvars.iv.next1204, %polly.loop_exit433 ]
  %polly.indvar428 = phi i64 [ 0, %polly.loop_header425.preheader ], [ %polly.indvar_next429, %polly.loop_exit433 ]
  %smin1231 = call i64 @llvm.smin.i64(i64 %indvars.iv1203, i64 -968)
  %171 = add nsw i64 %smin1231, 1000
  %172 = shl nsw i64 %polly.indvar428, 5
  br label %polly.loop_header431

polly.loop_exit433:                               ; preds = %polly.loop_exit456
  %polly.indvar_next429 = add nuw nsw i64 %polly.indvar428, 1
  %indvars.iv.next1204 = add nsw i64 %indvars.iv1203, -32
  %exitcond1234.not = icmp eq i64 %polly.indvar_next429, 32
  br i1 %exitcond1234.not, label %polly.exiting322, label %polly.loop_header425

polly.loop_header431:                             ; preds = %polly.loop_exit456, %polly.loop_header425
  %indvars.iv1223 = phi i64 [ %indvars.iv.next1224, %polly.loop_exit456 ], [ 0, %polly.loop_header425 ]
  %indvars.iv1218 = phi i64 [ %indvars.iv.next1219, %polly.loop_exit456 ], [ 0, %polly.loop_header425 ]
  %indvars.iv1207 = phi i64 [ %indvars.iv.next1208, %polly.loop_exit456 ], [ 79, %polly.loop_header425 ]
  %indvars.iv1200 = phi i64 [ %indvars.iv.next1201, %polly.loop_exit456 ], [ 1200, %polly.loop_header425 ]
  %polly.indvar434 = phi i64 [ %polly.indvar_next435, %polly.loop_exit456 ], [ 0, %polly.loop_header425 ]
  %173 = mul nuw nsw i64 %polly.indvar434, 100
  %174 = lshr i64 %polly.indvar434, 2
  %175 = add nuw i64 %polly.indvar434, %174
  %176 = mul nuw nsw i64 %175, 80
  %177 = sub i64 %173, %176
  %178 = mul nsw i64 %polly.indvar434, -100
  %179 = add i64 %178, %176
  %180 = lshr i64 %polly.indvar434, 2
  %181 = add nuw i64 %polly.indvar434, %180
  %182 = mul nuw nsw i64 %181, 80
  %183 = sub i64 %indvars.iv1218, %182
  %184 = add i64 %indvars.iv1223, %182
  %185 = add i64 %indvars.iv1207, %182
  %186 = mul nuw nsw i64 %polly.indvar434, 100
  br label %polly.loop_header437

polly.loop_exit439:                               ; preds = %polly.loop_exit445
  %187 = mul nsw i64 %polly.indvar434, -100
  %188 = mul nuw nsw i64 %polly.indvar434, 5
  br label %polly.loop_header454

polly.loop_exit456:                               ; preds = %polly.loop_exit512
  %polly.indvar_next435 = add nuw nsw i64 %polly.indvar434, 1
  %indvars.iv.next1201 = add nsw i64 %indvars.iv1200, -100
  %indvars.iv.next1208 = add nsw i64 %indvars.iv1207, -100
  %indvars.iv.next1219 = add nuw nsw i64 %indvars.iv1218, 100
  %indvars.iv.next1224 = add nsw i64 %indvars.iv1223, -100
  %exitcond1233.not = icmp eq i64 %polly.indvar_next435, 12
  br i1 %exitcond1233.not, label %polly.loop_exit433, label %polly.loop_header431

polly.loop_header437:                             ; preds = %polly.loop_exit445, %polly.loop_header431
  %polly.indvar440 = phi i64 [ 0, %polly.loop_header431 ], [ %polly.indvar_next441, %polly.loop_exit445 ]
  %189 = add nuw nsw i64 %polly.indvar440, %172
  %polly.access.mul.Packed_MemRef_call2326 = mul nuw nsw i64 %polly.indvar440, 1200
  br label %polly.loop_header443

polly.loop_exit445:                               ; preds = %polly.loop_header443
  %polly.indvar_next441 = add nuw nsw i64 %polly.indvar440, 1
  %exitcond1206.not = icmp eq i64 %polly.indvar_next441, %171
  br i1 %exitcond1206.not, label %polly.loop_exit439, label %polly.loop_header437

polly.loop_header443:                             ; preds = %polly.loop_header443, %polly.loop_header437
  %polly.indvar446 = phi i64 [ 0, %polly.loop_header437 ], [ %polly.indvar_next447, %polly.loop_header443 ]
  %190 = add nuw nsw i64 %polly.indvar446, %186
  %polly.access.mul.call2450 = mul nuw nsw i64 %190, 1000
  %polly.access.add.call2451 = add nuw nsw i64 %189, %polly.access.mul.call2450
  %polly.access.call2452 = getelementptr double, double* %polly.access.cast.call2797, i64 %polly.access.add.call2451
  %polly.access.call2452.load = load double, double* %polly.access.call2452, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2326 = add nuw nsw i64 %polly.indvar446, %polly.access.mul.Packed_MemRef_call2326
  %polly.access.Packed_MemRef_call2326 = getelementptr double, double* %Packed_MemRef_call2326, i64 %polly.access.add.Packed_MemRef_call2326
  store double %polly.access.call2452.load, double* %polly.access.Packed_MemRef_call2326, align 8
  %polly.indvar_next447 = add nuw nsw i64 %polly.indvar446, 1
  %exitcond1202.not = icmp eq i64 %polly.indvar_next447, %indvars.iv1200
  br i1 %exitcond1202.not, label %polly.loop_exit445, label %polly.loop_header443

polly.loop_header454:                             ; preds = %polly.loop_exit512, %polly.loop_exit439
  %indvar1461 = phi i64 [ %indvar.next1462, %polly.loop_exit512 ], [ 0, %polly.loop_exit439 ]
  %indvars.iv1225 = phi i64 [ %indvars.iv.next1226, %polly.loop_exit512 ], [ %184, %polly.loop_exit439 ]
  %indvars.iv1220 = phi i64 [ %indvars.iv.next1221, %polly.loop_exit512 ], [ %183, %polly.loop_exit439 ]
  %indvars.iv1209 = phi i64 [ %indvars.iv.next1210, %polly.loop_exit512 ], [ %185, %polly.loop_exit439 ]
  %polly.indvar457 = phi i64 [ %polly.indvar_next458, %polly.loop_exit512 ], [ %181, %polly.loop_exit439 ]
  %191 = mul nsw i64 %indvar1461, -80
  %192 = add i64 %177, %191
  %smax1463 = call i64 @llvm.smax.i64(i64 %192, i64 0)
  %193 = mul nuw nsw i64 %indvar1461, 80
  %194 = add i64 %179, %193
  %195 = add i64 %smax1463, %194
  %smax1222 = call i64 @llvm.smax.i64(i64 %indvars.iv1220, i64 0)
  %196 = add i64 %smax1222, %indvars.iv1225
  %smax1211 = call i64 @llvm.smax.i64(i64 %indvars.iv1209, i64 0)
  %197 = shl nsw i64 %polly.indvar457, 2
  %.not.not989 = icmp ugt i64 %197, %188
  %198 = mul nuw nsw i64 %polly.indvar457, 80
  %199 = add nsw i64 %198, %187
  %200 = icmp sgt i64 %199, 100
  %201 = select i1 %200, i64 %199, i64 100
  %202 = add nsw i64 %199, 79
  %polly.loop_guard484.not = icmp sgt i64 %201, %202
  br i1 %.not.not989, label %polly.loop_header460.us, label %polly.loop_header454.split

polly.loop_header460.us:                          ; preds = %polly.loop_header454, %polly.merge467.us
  %polly.indvar463.us = phi i64 [ %polly.indvar_next464.us, %polly.merge467.us ], [ 0, %polly.loop_header454 ]
  %203 = add nuw nsw i64 %polly.indvar463.us, %172
  %polly.access.mul.Packed_MemRef_call1324.us = mul nuw nsw i64 %polly.indvar463.us, 1200
  br label %polly.loop_header470.us

polly.loop_header470.us:                          ; preds = %polly.loop_header460.us, %polly.loop_header470.us
  %polly.indvar473.us = phi i64 [ %polly.indvar_next474.us, %polly.loop_header470.us ], [ 0, %polly.loop_header460.us ]
  %204 = add nuw nsw i64 %polly.indvar473.us, %186
  %polly.access.mul.call1477.us = mul nuw nsw i64 %204, 1000
  %polly.access.add.call1478.us = add nuw nsw i64 %polly.access.mul.call1477.us, %203
  %polly.access.call1479.us = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1478.us
  %polly.access.call1479.load.us = load double, double* %polly.access.call1479.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1324.us = add nuw nsw i64 %polly.indvar473.us, %polly.access.mul.Packed_MemRef_call1324.us
  %polly.access.Packed_MemRef_call1324.us = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call1324.us
  store double %polly.access.call1479.load.us, double* %polly.access.Packed_MemRef_call1324.us, align 8
  %polly.indvar_next474.us = add nuw nsw i64 %polly.indvar473.us, 1
  %exitcond1215.not = icmp eq i64 %polly.indvar_next474.us, 100
  br i1 %exitcond1215.not, label %polly.loop_exit472.us, label %polly.loop_header470.us

polly.loop_exit472.us:                            ; preds = %polly.loop_header470.us
  br i1 %polly.loop_guard484.not, label %polly.merge467.us, label %polly.loop_header481.us

polly.loop_header481.us:                          ; preds = %polly.loop_exit472.us, %polly.loop_header481.us
  %polly.indvar485.us = phi i64 [ %polly.indvar_next486.us, %polly.loop_header481.us ], [ %201, %polly.loop_exit472.us ]
  %205 = add nuw nsw i64 %polly.indvar485.us, %186
  %polly.access.mul.call1489.us = mul nsw i64 %205, 1000
  %polly.access.add.call1490.us = add nuw nsw i64 %polly.access.mul.call1489.us, %203
  %polly.access.call1491.us = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1490.us
  %polly.access.call1491.load.us = load double, double* %polly.access.call1491.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1324493.us = add nuw nsw i64 %polly.indvar485.us, %polly.access.mul.Packed_MemRef_call1324.us
  %polly.access.Packed_MemRef_call1324494.us = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call1324493.us
  store double %polly.access.call1491.load.us, double* %polly.access.Packed_MemRef_call1324494.us, align 8
  %polly.indvar_next486.us = add nuw nsw i64 %polly.indvar485.us, 1
  %polly.loop_cond487.not.not.us = icmp slt i64 %polly.indvar485.us, %202
  br i1 %polly.loop_cond487.not.not.us, label %polly.loop_header481.us, label %polly.merge467.us

polly.merge467.us:                                ; preds = %polly.loop_header481.us, %polly.loop_exit472.us
  %polly.indvar_next464.us = add nuw nsw i64 %polly.indvar463.us, 1
  %exitcond1217.not = icmp eq i64 %polly.indvar_next464.us, %171
  br i1 %exitcond1217.not, label %polly.loop_header510.preheader, label %polly.loop_header460.us

polly.loop_header454.split:                       ; preds = %polly.loop_header454
  %polly.loop_guard499 = icmp sgt i64 %199, -80
  br i1 %polly.loop_guard499, label %polly.loop_header460.us1063, label %polly.loop_header510.preheader

polly.loop_header460.us1063:                      ; preds = %polly.loop_header454.split, %polly.merge467.loopexit992.us1108
  %polly.indvar463.us1064 = phi i64 [ %polly.indvar_next464.us1100, %polly.merge467.loopexit992.us1108 ], [ 0, %polly.loop_header454.split ]
  %206 = add nuw nsw i64 %polly.indvar463.us1064, %172
  %polly.access.mul.Packed_MemRef_call1324507.us1107 = mul nuw nsw i64 %polly.indvar463.us1064, 1200
  br label %polly.loop_header496.us1066

polly.loop_header496.us1066:                      ; preds = %polly.loop_header460.us1063, %polly.loop_header496.us1066
  %polly.indvar500.us1067 = phi i64 [ %polly.indvar_next501.us1074, %polly.loop_header496.us1066 ], [ 0, %polly.loop_header460.us1063 ]
  %207 = add nuw nsw i64 %polly.indvar500.us1067, %186
  %polly.access.mul.call1504.us1068 = mul nuw nsw i64 %207, 1000
  %polly.access.add.call1505.us1069 = add nuw nsw i64 %206, %polly.access.mul.call1504.us1068
  %polly.access.call1506.us1070 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1505.us1069
  %polly.access.call1506.load.us1071 = load double, double* %polly.access.call1506.us1070, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1324508.us1072 = add nuw nsw i64 %polly.indvar500.us1067, %polly.access.mul.Packed_MemRef_call1324507.us1107
  %polly.access.Packed_MemRef_call1324509.us1073 = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call1324508.us1072
  store double %polly.access.call1506.load.us1071, double* %polly.access.Packed_MemRef_call1324509.us1073, align 8
  %polly.indvar_next501.us1074 = add nuw nsw i64 %polly.indvar500.us1067, 1
  %exitcond1212.not = icmp eq i64 %polly.indvar500.us1067, %smax1211
  br i1 %exitcond1212.not, label %polly.merge467.loopexit992.us1108, label %polly.loop_header496.us1066

polly.merge467.loopexit992.us1108:                ; preds = %polly.loop_header496.us1066
  %polly.indvar_next464.us1100 = add nuw nsw i64 %polly.indvar463.us1064, 1
  %exitcond1214.not = icmp eq i64 %polly.indvar_next464.us1100, %171
  br i1 %exitcond1214.not, label %polly.loop_header510.preheader, label %polly.loop_header460.us1063

polly.loop_exit512:                               ; preds = %polly.loop_exit519.loopexit.us, %polly.loop_header510.preheader
  %polly.indvar_next458 = add nuw nsw i64 %polly.indvar457, 1
  %polly.loop_cond459 = icmp ult i64 %polly.indvar457, 14
  %indvars.iv.next1210 = add i64 %indvars.iv1209, 80
  %indvars.iv.next1221 = add i64 %indvars.iv1220, -80
  %indvars.iv.next1226 = add i64 %indvars.iv1225, 80
  %indvar.next1462 = add i64 %indvar1461, 1
  br i1 %polly.loop_cond459, label %polly.loop_header454, label %polly.loop_exit456

polly.loop_header510.preheader:                   ; preds = %polly.merge467.loopexit992.us1108, %polly.merge467.us, %polly.loop_header454.split
  %208 = sub nsw i64 %186, %198
  %209 = icmp sgt i64 %208, 0
  %210 = select i1 %209, i64 %208, i64 0
  %polly.loop_guard520 = icmp slt i64 %210, 80
  br i1 %polly.loop_guard520, label %polly.loop_header510.us, label %polly.loop_exit512

polly.loop_header510.us:                          ; preds = %polly.loop_header510.preheader, %polly.loop_exit519.loopexit.us
  %polly.indvar513.us = phi i64 [ %polly.indvar_next514.us, %polly.loop_exit519.loopexit.us ], [ 0, %polly.loop_header510.preheader ]
  %polly.access.mul.Packed_MemRef_call1324532.us = mul nuw nsw i64 %polly.indvar513.us, 1200
  br label %polly.loop_header517.us

polly.loop_header517.us:                          ; preds = %polly.loop_header510.us, %polly.loop_exit527.us
  %indvar1464 = phi i64 [ 0, %polly.loop_header510.us ], [ %indvar.next1465, %polly.loop_exit527.us ]
  %indvars.iv1227 = phi i64 [ %196, %polly.loop_header510.us ], [ %indvars.iv.next1228, %polly.loop_exit527.us ]
  %polly.indvar521.us = phi i64 [ %210, %polly.loop_header510.us ], [ %polly.indvar_next522.us, %polly.loop_exit527.us ]
  %211 = add i64 %195, %indvar1464
  %smin1466 = call i64 @llvm.smin.i64(i64 %211, i64 99)
  %212 = add nsw i64 %smin1466, 1
  %smin1229 = call i64 @llvm.smin.i64(i64 %indvars.iv1227, i64 99)
  %213 = add nuw i64 %polly.indvar521.us, %198
  %214 = add i64 %213, %187
  %polly.loop_guard528.us1309 = icmp sgt i64 %214, -1
  br i1 %polly.loop_guard528.us1309, label %polly.loop_header525.preheader.us, label %polly.loop_exit527.us

polly.loop_header525.us:                          ; preds = %polly.loop_header525.us.preheader, %polly.loop_header525.us
  %polly.indvar529.us = phi i64 [ %polly.indvar_next530.us, %polly.loop_header525.us ], [ %polly.indvar529.us.ph, %polly.loop_header525.us.preheader ]
  %215 = add nuw nsw i64 %polly.indvar529.us, %186
  %polly.access.add.Packed_MemRef_call1324533.us = add nuw nsw i64 %polly.indvar529.us, %polly.access.mul.Packed_MemRef_call1324532.us
  %polly.access.Packed_MemRef_call1324534.us = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call1324533.us
  %_p_scalar_535.us = load double, double* %polly.access.Packed_MemRef_call1324534.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_539.us, %_p_scalar_535.us
  %polly.access.Packed_MemRef_call2326542.us = getelementptr double, double* %Packed_MemRef_call2326, i64 %polly.access.add.Packed_MemRef_call1324533.us
  %_p_scalar_543.us = load double, double* %polly.access.Packed_MemRef_call2326542.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_547.us, %_p_scalar_543.us
  %216 = shl i64 %215, 3
  %217 = add i64 %216, %218
  %scevgep548.us = getelementptr i8, i8* %call, i64 %217
  %scevgep548549.us = bitcast i8* %scevgep548.us to double*
  %_p_scalar_550.us = load double, double* %scevgep548549.us, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_550.us
  store double %p_add42.i79.us, double* %scevgep548549.us, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next530.us = add nuw nsw i64 %polly.indvar529.us, 1
  %exitcond1230.not = icmp eq i64 %polly.indvar529.us, %smin1229
  br i1 %exitcond1230.not, label %polly.loop_exit527.us, label %polly.loop_header525.us, !llvm.loop !97

polly.loop_exit527.us:                            ; preds = %polly.loop_header525.us, %middle.block1458, %polly.loop_header517.us
  %polly.indvar_next522.us = add nuw nsw i64 %polly.indvar521.us, 1
  %polly.loop_cond523.us = icmp ult i64 %polly.indvar521.us, 79
  %indvars.iv.next1228 = add i64 %indvars.iv1227, 1
  %indvar.next1465 = add i64 %indvar1464, 1
  br i1 %polly.loop_cond523.us, label %polly.loop_header517.us, label %polly.loop_exit519.loopexit.us

polly.loop_header525.preheader.us:                ; preds = %polly.loop_header517.us
  %polly.access.add.Packed_MemRef_call2326537.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1324532.us, %214
  %polly.access.Packed_MemRef_call2326538.us = getelementptr double, double* %Packed_MemRef_call2326, i64 %polly.access.add.Packed_MemRef_call2326537.us
  %_p_scalar_539.us = load double, double* %polly.access.Packed_MemRef_call2326538.us, align 8
  %polly.access.Packed_MemRef_call1324546.us = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call2326537.us
  %_p_scalar_547.us = load double, double* %polly.access.Packed_MemRef_call1324546.us, align 8
  %218 = mul i64 %213, 9600
  %min.iters.check1467 = icmp ult i64 %212, 4
  br i1 %min.iters.check1467, label %polly.loop_header525.us.preheader, label %vector.ph1468

vector.ph1468:                                    ; preds = %polly.loop_header525.preheader.us
  %n.vec1470 = and i64 %212, -4
  %broadcast.splatinsert1476 = insertelement <4 x double> poison, double %_p_scalar_539.us, i32 0
  %broadcast.splat1477 = shufflevector <4 x double> %broadcast.splatinsert1476, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1479 = insertelement <4 x double> poison, double %_p_scalar_547.us, i32 0
  %broadcast.splat1480 = shufflevector <4 x double> %broadcast.splatinsert1479, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1460

vector.body1460:                                  ; preds = %vector.body1460, %vector.ph1468
  %index1471 = phi i64 [ 0, %vector.ph1468 ], [ %index.next1472, %vector.body1460 ]
  %219 = add nuw nsw i64 %index1471, %186
  %220 = add nuw nsw i64 %index1471, %polly.access.mul.Packed_MemRef_call1324532.us
  %221 = getelementptr double, double* %Packed_MemRef_call1324, i64 %220
  %222 = bitcast double* %221 to <4 x double>*
  %wide.load1475 = load <4 x double>, <4 x double>* %222, align 8
  %223 = fmul fast <4 x double> %broadcast.splat1477, %wide.load1475
  %224 = getelementptr double, double* %Packed_MemRef_call2326, i64 %220
  %225 = bitcast double* %224 to <4 x double>*
  %wide.load1478 = load <4 x double>, <4 x double>* %225, align 8
  %226 = fmul fast <4 x double> %broadcast.splat1480, %wide.load1478
  %227 = shl i64 %219, 3
  %228 = add i64 %227, %218
  %229 = getelementptr i8, i8* %call, i64 %228
  %230 = bitcast i8* %229 to <4 x double>*
  %wide.load1481 = load <4 x double>, <4 x double>* %230, align 8, !alias.scope !86, !noalias !88
  %231 = fadd fast <4 x double> %226, %223
  %232 = fmul fast <4 x double> %231, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %233 = fadd fast <4 x double> %232, %wide.load1481
  %234 = bitcast i8* %229 to <4 x double>*
  store <4 x double> %233, <4 x double>* %234, align 8, !alias.scope !86, !noalias !88
  %index.next1472 = add i64 %index1471, 4
  %235 = icmp eq i64 %index.next1472, %n.vec1470
  br i1 %235, label %middle.block1458, label %vector.body1460, !llvm.loop !98

middle.block1458:                                 ; preds = %vector.body1460
  %cmp.n1474 = icmp eq i64 %212, %n.vec1470
  br i1 %cmp.n1474, label %polly.loop_exit527.us, label %polly.loop_header525.us.preheader

polly.loop_header525.us.preheader:                ; preds = %polly.loop_header525.preheader.us, %middle.block1458
  %polly.indvar529.us.ph = phi i64 [ 0, %polly.loop_header525.preheader.us ], [ %n.vec1470, %middle.block1458 ]
  br label %polly.loop_header525.us

polly.loop_exit519.loopexit.us:                   ; preds = %polly.loop_exit527.us
  %polly.indvar_next514.us = add nuw nsw i64 %polly.indvar513.us, 1
  %exitcond1232.not = icmp eq i64 %polly.indvar_next514.us, %171
  br i1 %exitcond1232.not, label %polly.loop_exit512, label %polly.loop_header510.us

polly.start553:                                   ; preds = %init_array.exit
  %malloccall555 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  %malloccall557 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header641

polly.exiting554:                                 ; preds = %polly.loop_exit665
  tail call void @free(i8* %malloccall555)
  tail call void @free(i8* %malloccall557)
  br label %kernel_syr2k.exit

polly.loop_header641:                             ; preds = %polly.loop_exit649, %polly.start553
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit649 ], [ 0, %polly.start553 ]
  %polly.indvar644 = phi i64 [ %polly.indvar_next645, %polly.loop_exit649 ], [ 1, %polly.start553 ]
  %236 = add i64 %indvar, 1
  %237 = mul nuw nsw i64 %polly.indvar644, 9600
  %scevgep653 = getelementptr i8, i8* %call, i64 %237
  %min.iters.check1399 = icmp ult i64 %236, 4
  br i1 %min.iters.check1399, label %polly.loop_header647.preheader, label %vector.ph1400

vector.ph1400:                                    ; preds = %polly.loop_header641
  %n.vec1402 = and i64 %236, -4
  br label %vector.body1398

vector.body1398:                                  ; preds = %vector.body1398, %vector.ph1400
  %index1403 = phi i64 [ 0, %vector.ph1400 ], [ %index.next1404, %vector.body1398 ]
  %238 = shl nuw nsw i64 %index1403, 3
  %239 = getelementptr i8, i8* %scevgep653, i64 %238
  %240 = bitcast i8* %239 to <4 x double>*
  %wide.load1407 = load <4 x double>, <4 x double>* %240, align 8, !alias.scope !99, !noalias !101
  %241 = fmul fast <4 x double> %wide.load1407, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %242 = bitcast i8* %239 to <4 x double>*
  store <4 x double> %241, <4 x double>* %242, align 8, !alias.scope !99, !noalias !101
  %index.next1404 = add i64 %index1403, 4
  %243 = icmp eq i64 %index.next1404, %n.vec1402
  br i1 %243, label %middle.block1396, label %vector.body1398, !llvm.loop !106

middle.block1396:                                 ; preds = %vector.body1398
  %cmp.n1406 = icmp eq i64 %236, %n.vec1402
  br i1 %cmp.n1406, label %polly.loop_exit649, label %polly.loop_header647.preheader

polly.loop_header647.preheader:                   ; preds = %polly.loop_header641, %middle.block1396
  %polly.indvar650.ph = phi i64 [ 0, %polly.loop_header641 ], [ %n.vec1402, %middle.block1396 ]
  br label %polly.loop_header647

polly.loop_exit649:                               ; preds = %polly.loop_header647, %middle.block1396
  %polly.indvar_next645 = add nuw nsw i64 %polly.indvar644, 1
  %exitcond1273.not = icmp eq i64 %polly.indvar_next645, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1273.not, label %polly.loop_header657.preheader, label %polly.loop_header641

polly.loop_header657.preheader:                   ; preds = %polly.loop_exit649
  %Packed_MemRef_call1556 = bitcast i8* %malloccall555 to double*
  %Packed_MemRef_call2558 = bitcast i8* %malloccall557 to double*
  br label %polly.loop_header657

polly.loop_header647:                             ; preds = %polly.loop_header647.preheader, %polly.loop_header647
  %polly.indvar650 = phi i64 [ %polly.indvar_next651, %polly.loop_header647 ], [ %polly.indvar650.ph, %polly.loop_header647.preheader ]
  %244 = shl nuw nsw i64 %polly.indvar650, 3
  %scevgep654 = getelementptr i8, i8* %scevgep653, i64 %244
  %scevgep654655 = bitcast i8* %scevgep654 to double*
  %_p_scalar_656 = load double, double* %scevgep654655, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_656, 1.200000e+00
  store double %p_mul.i, double* %scevgep654655, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next651 = add nuw nsw i64 %polly.indvar650, 1
  %exitcond1272.not = icmp eq i64 %polly.indvar_next651, %polly.indvar644
  br i1 %exitcond1272.not, label %polly.loop_exit649, label %polly.loop_header647, !llvm.loop !107

polly.loop_header657:                             ; preds = %polly.loop_header657.preheader, %polly.loop_exit665
  %indvars.iv1240 = phi i64 [ 0, %polly.loop_header657.preheader ], [ %indvars.iv.next1241, %polly.loop_exit665 ]
  %polly.indvar660 = phi i64 [ 0, %polly.loop_header657.preheader ], [ %polly.indvar_next661, %polly.loop_exit665 ]
  %smin1268 = call i64 @llvm.smin.i64(i64 %indvars.iv1240, i64 -968)
  %245 = add nsw i64 %smin1268, 1000
  %246 = shl nsw i64 %polly.indvar660, 5
  br label %polly.loop_header663

polly.loop_exit665:                               ; preds = %polly.loop_exit688
  %polly.indvar_next661 = add nuw nsw i64 %polly.indvar660, 1
  %indvars.iv.next1241 = add nsw i64 %indvars.iv1240, -32
  %exitcond1271.not = icmp eq i64 %polly.indvar_next661, 32
  br i1 %exitcond1271.not, label %polly.exiting554, label %polly.loop_header657

polly.loop_header663:                             ; preds = %polly.loop_exit688, %polly.loop_header657
  %indvars.iv1260 = phi i64 [ %indvars.iv.next1261, %polly.loop_exit688 ], [ 0, %polly.loop_header657 ]
  %indvars.iv1255 = phi i64 [ %indvars.iv.next1256, %polly.loop_exit688 ], [ 0, %polly.loop_header657 ]
  %indvars.iv1244 = phi i64 [ %indvars.iv.next1245, %polly.loop_exit688 ], [ 79, %polly.loop_header657 ]
  %indvars.iv1237 = phi i64 [ %indvars.iv.next1238, %polly.loop_exit688 ], [ 1200, %polly.loop_header657 ]
  %polly.indvar666 = phi i64 [ %polly.indvar_next667, %polly.loop_exit688 ], [ 0, %polly.loop_header657 ]
  %247 = mul nuw nsw i64 %polly.indvar666, 100
  %248 = lshr i64 %polly.indvar666, 2
  %249 = add nuw i64 %polly.indvar666, %248
  %250 = mul nuw nsw i64 %249, 80
  %251 = sub i64 %247, %250
  %252 = mul nsw i64 %polly.indvar666, -100
  %253 = add i64 %252, %250
  %254 = lshr i64 %polly.indvar666, 2
  %255 = add nuw i64 %polly.indvar666, %254
  %256 = mul nuw nsw i64 %255, 80
  %257 = sub i64 %indvars.iv1255, %256
  %258 = add i64 %indvars.iv1260, %256
  %259 = add i64 %indvars.iv1244, %256
  %260 = mul nuw nsw i64 %polly.indvar666, 100
  br label %polly.loop_header669

polly.loop_exit671:                               ; preds = %polly.loop_exit677
  %261 = mul nsw i64 %polly.indvar666, -100
  %262 = mul nuw nsw i64 %polly.indvar666, 5
  br label %polly.loop_header686

polly.loop_exit688:                               ; preds = %polly.loop_exit744
  %polly.indvar_next667 = add nuw nsw i64 %polly.indvar666, 1
  %indvars.iv.next1238 = add nsw i64 %indvars.iv1237, -100
  %indvars.iv.next1245 = add nsw i64 %indvars.iv1244, -100
  %indvars.iv.next1256 = add nuw nsw i64 %indvars.iv1255, 100
  %indvars.iv.next1261 = add nsw i64 %indvars.iv1260, -100
  %exitcond1270.not = icmp eq i64 %polly.indvar_next667, 12
  br i1 %exitcond1270.not, label %polly.loop_exit665, label %polly.loop_header663

polly.loop_header669:                             ; preds = %polly.loop_exit677, %polly.loop_header663
  %polly.indvar672 = phi i64 [ 0, %polly.loop_header663 ], [ %polly.indvar_next673, %polly.loop_exit677 ]
  %263 = add nuw nsw i64 %polly.indvar672, %246
  %polly.access.mul.Packed_MemRef_call2558 = mul nuw nsw i64 %polly.indvar672, 1200
  br label %polly.loop_header675

polly.loop_exit677:                               ; preds = %polly.loop_header675
  %polly.indvar_next673 = add nuw nsw i64 %polly.indvar672, 1
  %exitcond1243.not = icmp eq i64 %polly.indvar_next673, %245
  br i1 %exitcond1243.not, label %polly.loop_exit671, label %polly.loop_header669

polly.loop_header675:                             ; preds = %polly.loop_header675, %polly.loop_header669
  %polly.indvar678 = phi i64 [ 0, %polly.loop_header669 ], [ %polly.indvar_next679, %polly.loop_header675 ]
  %264 = add nuw nsw i64 %polly.indvar678, %260
  %polly.access.mul.call2682 = mul nuw nsw i64 %264, 1000
  %polly.access.add.call2683 = add nuw nsw i64 %263, %polly.access.mul.call2682
  %polly.access.call2684 = getelementptr double, double* %polly.access.cast.call2797, i64 %polly.access.add.call2683
  %polly.access.call2684.load = load double, double* %polly.access.call2684, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2558 = add nuw nsw i64 %polly.indvar678, %polly.access.mul.Packed_MemRef_call2558
  %polly.access.Packed_MemRef_call2558 = getelementptr double, double* %Packed_MemRef_call2558, i64 %polly.access.add.Packed_MemRef_call2558
  store double %polly.access.call2684.load, double* %polly.access.Packed_MemRef_call2558, align 8
  %polly.indvar_next679 = add nuw nsw i64 %polly.indvar678, 1
  %exitcond1239.not = icmp eq i64 %polly.indvar_next679, %indvars.iv1237
  br i1 %exitcond1239.not, label %polly.loop_exit677, label %polly.loop_header675

polly.loop_header686:                             ; preds = %polly.loop_exit744, %polly.loop_exit671
  %indvar1411 = phi i64 [ %indvar.next1412, %polly.loop_exit744 ], [ 0, %polly.loop_exit671 ]
  %indvars.iv1262 = phi i64 [ %indvars.iv.next1263, %polly.loop_exit744 ], [ %258, %polly.loop_exit671 ]
  %indvars.iv1257 = phi i64 [ %indvars.iv.next1258, %polly.loop_exit744 ], [ %257, %polly.loop_exit671 ]
  %indvars.iv1246 = phi i64 [ %indvars.iv.next1247, %polly.loop_exit744 ], [ %259, %polly.loop_exit671 ]
  %polly.indvar689 = phi i64 [ %polly.indvar_next690, %polly.loop_exit744 ], [ %255, %polly.loop_exit671 ]
  %265 = mul nsw i64 %indvar1411, -80
  %266 = add i64 %251, %265
  %smax1413 = call i64 @llvm.smax.i64(i64 %266, i64 0)
  %267 = mul nuw nsw i64 %indvar1411, 80
  %268 = add i64 %253, %267
  %269 = add i64 %smax1413, %268
  %smax1259 = call i64 @llvm.smax.i64(i64 %indvars.iv1257, i64 0)
  %270 = add i64 %smax1259, %indvars.iv1262
  %smax1248 = call i64 @llvm.smax.i64(i64 %indvars.iv1246, i64 0)
  %271 = shl nsw i64 %polly.indvar689, 2
  %.not.not990 = icmp ugt i64 %271, %262
  %272 = mul nuw nsw i64 %polly.indvar689, 80
  %273 = add nsw i64 %272, %261
  %274 = icmp sgt i64 %273, 100
  %275 = select i1 %274, i64 %273, i64 100
  %276 = add nsw i64 %273, 79
  %polly.loop_guard716.not = icmp sgt i64 %275, %276
  br i1 %.not.not990, label %polly.loop_header692.us, label %polly.loop_header686.split

polly.loop_header692.us:                          ; preds = %polly.loop_header686, %polly.merge699.us
  %polly.indvar695.us = phi i64 [ %polly.indvar_next696.us, %polly.merge699.us ], [ 0, %polly.loop_header686 ]
  %277 = add nuw nsw i64 %polly.indvar695.us, %246
  %polly.access.mul.Packed_MemRef_call1556.us = mul nuw nsw i64 %polly.indvar695.us, 1200
  br label %polly.loop_header702.us

polly.loop_header702.us:                          ; preds = %polly.loop_header692.us, %polly.loop_header702.us
  %polly.indvar705.us = phi i64 [ %polly.indvar_next706.us, %polly.loop_header702.us ], [ 0, %polly.loop_header692.us ]
  %278 = add nuw nsw i64 %polly.indvar705.us, %260
  %polly.access.mul.call1709.us = mul nuw nsw i64 %278, 1000
  %polly.access.add.call1710.us = add nuw nsw i64 %polly.access.mul.call1709.us, %277
  %polly.access.call1711.us = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1710.us
  %polly.access.call1711.load.us = load double, double* %polly.access.call1711.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1556.us = add nuw nsw i64 %polly.indvar705.us, %polly.access.mul.Packed_MemRef_call1556.us
  %polly.access.Packed_MemRef_call1556.us = getelementptr double, double* %Packed_MemRef_call1556, i64 %polly.access.add.Packed_MemRef_call1556.us
  store double %polly.access.call1711.load.us, double* %polly.access.Packed_MemRef_call1556.us, align 8
  %polly.indvar_next706.us = add nuw nsw i64 %polly.indvar705.us, 1
  %exitcond1252.not = icmp eq i64 %polly.indvar_next706.us, 100
  br i1 %exitcond1252.not, label %polly.loop_exit704.us, label %polly.loop_header702.us

polly.loop_exit704.us:                            ; preds = %polly.loop_header702.us
  br i1 %polly.loop_guard716.not, label %polly.merge699.us, label %polly.loop_header713.us

polly.loop_header713.us:                          ; preds = %polly.loop_exit704.us, %polly.loop_header713.us
  %polly.indvar717.us = phi i64 [ %polly.indvar_next718.us, %polly.loop_header713.us ], [ %275, %polly.loop_exit704.us ]
  %279 = add nuw nsw i64 %polly.indvar717.us, %260
  %polly.access.mul.call1721.us = mul nsw i64 %279, 1000
  %polly.access.add.call1722.us = add nuw nsw i64 %polly.access.mul.call1721.us, %277
  %polly.access.call1723.us = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1722.us
  %polly.access.call1723.load.us = load double, double* %polly.access.call1723.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1556725.us = add nuw nsw i64 %polly.indvar717.us, %polly.access.mul.Packed_MemRef_call1556.us
  %polly.access.Packed_MemRef_call1556726.us = getelementptr double, double* %Packed_MemRef_call1556, i64 %polly.access.add.Packed_MemRef_call1556725.us
  store double %polly.access.call1723.load.us, double* %polly.access.Packed_MemRef_call1556726.us, align 8
  %polly.indvar_next718.us = add nuw nsw i64 %polly.indvar717.us, 1
  %polly.loop_cond719.not.not.us = icmp slt i64 %polly.indvar717.us, %276
  br i1 %polly.loop_cond719.not.not.us, label %polly.loop_header713.us, label %polly.merge699.us

polly.merge699.us:                                ; preds = %polly.loop_header713.us, %polly.loop_exit704.us
  %polly.indvar_next696.us = add nuw nsw i64 %polly.indvar695.us, 1
  %exitcond1254.not = icmp eq i64 %polly.indvar_next696.us, %245
  br i1 %exitcond1254.not, label %polly.loop_header742.preheader, label %polly.loop_header692.us

polly.loop_header686.split:                       ; preds = %polly.loop_header686
  %polly.loop_guard731 = icmp sgt i64 %273, -80
  br i1 %polly.loop_guard731, label %polly.loop_header692.us1109, label %polly.loop_header742.preheader

polly.loop_header692.us1109:                      ; preds = %polly.loop_header686.split, %polly.merge699.loopexit993.us1154
  %polly.indvar695.us1110 = phi i64 [ %polly.indvar_next696.us1146, %polly.merge699.loopexit993.us1154 ], [ 0, %polly.loop_header686.split ]
  %280 = add nuw nsw i64 %polly.indvar695.us1110, %246
  %polly.access.mul.Packed_MemRef_call1556739.us1153 = mul nuw nsw i64 %polly.indvar695.us1110, 1200
  br label %polly.loop_header728.us1112

polly.loop_header728.us1112:                      ; preds = %polly.loop_header692.us1109, %polly.loop_header728.us1112
  %polly.indvar732.us1113 = phi i64 [ %polly.indvar_next733.us1120, %polly.loop_header728.us1112 ], [ 0, %polly.loop_header692.us1109 ]
  %281 = add nuw nsw i64 %polly.indvar732.us1113, %260
  %polly.access.mul.call1736.us1114 = mul nuw nsw i64 %281, 1000
  %polly.access.add.call1737.us1115 = add nuw nsw i64 %280, %polly.access.mul.call1736.us1114
  %polly.access.call1738.us1116 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1737.us1115
  %polly.access.call1738.load.us1117 = load double, double* %polly.access.call1738.us1116, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1556740.us1118 = add nuw nsw i64 %polly.indvar732.us1113, %polly.access.mul.Packed_MemRef_call1556739.us1153
  %polly.access.Packed_MemRef_call1556741.us1119 = getelementptr double, double* %Packed_MemRef_call1556, i64 %polly.access.add.Packed_MemRef_call1556740.us1118
  store double %polly.access.call1738.load.us1117, double* %polly.access.Packed_MemRef_call1556741.us1119, align 8
  %polly.indvar_next733.us1120 = add nuw nsw i64 %polly.indvar732.us1113, 1
  %exitcond1249.not = icmp eq i64 %polly.indvar732.us1113, %smax1248
  br i1 %exitcond1249.not, label %polly.merge699.loopexit993.us1154, label %polly.loop_header728.us1112

polly.merge699.loopexit993.us1154:                ; preds = %polly.loop_header728.us1112
  %polly.indvar_next696.us1146 = add nuw nsw i64 %polly.indvar695.us1110, 1
  %exitcond1251.not = icmp eq i64 %polly.indvar_next696.us1146, %245
  br i1 %exitcond1251.not, label %polly.loop_header742.preheader, label %polly.loop_header692.us1109

polly.loop_exit744:                               ; preds = %polly.loop_exit751.loopexit.us, %polly.loop_header742.preheader
  %polly.indvar_next690 = add nuw nsw i64 %polly.indvar689, 1
  %polly.loop_cond691 = icmp ult i64 %polly.indvar689, 14
  %indvars.iv.next1247 = add i64 %indvars.iv1246, 80
  %indvars.iv.next1258 = add i64 %indvars.iv1257, -80
  %indvars.iv.next1263 = add i64 %indvars.iv1262, 80
  %indvar.next1412 = add i64 %indvar1411, 1
  br i1 %polly.loop_cond691, label %polly.loop_header686, label %polly.loop_exit688

polly.loop_header742.preheader:                   ; preds = %polly.merge699.loopexit993.us1154, %polly.merge699.us, %polly.loop_header686.split
  %282 = sub nsw i64 %260, %272
  %283 = icmp sgt i64 %282, 0
  %284 = select i1 %283, i64 %282, i64 0
  %polly.loop_guard752 = icmp slt i64 %284, 80
  br i1 %polly.loop_guard752, label %polly.loop_header742.us, label %polly.loop_exit744

polly.loop_header742.us:                          ; preds = %polly.loop_header742.preheader, %polly.loop_exit751.loopexit.us
  %polly.indvar745.us = phi i64 [ %polly.indvar_next746.us, %polly.loop_exit751.loopexit.us ], [ 0, %polly.loop_header742.preheader ]
  %polly.access.mul.Packed_MemRef_call1556764.us = mul nuw nsw i64 %polly.indvar745.us, 1200
  br label %polly.loop_header749.us

polly.loop_header749.us:                          ; preds = %polly.loop_header742.us, %polly.loop_exit759.us
  %indvar1414 = phi i64 [ 0, %polly.loop_header742.us ], [ %indvar.next1415, %polly.loop_exit759.us ]
  %indvars.iv1264 = phi i64 [ %270, %polly.loop_header742.us ], [ %indvars.iv.next1265, %polly.loop_exit759.us ]
  %polly.indvar753.us = phi i64 [ %284, %polly.loop_header742.us ], [ %polly.indvar_next754.us, %polly.loop_exit759.us ]
  %285 = add i64 %269, %indvar1414
  %smin1416 = call i64 @llvm.smin.i64(i64 %285, i64 99)
  %286 = add nsw i64 %smin1416, 1
  %smin1266 = call i64 @llvm.smin.i64(i64 %indvars.iv1264, i64 99)
  %287 = add nuw i64 %polly.indvar753.us, %272
  %288 = add i64 %287, %261
  %polly.loop_guard760.us1310 = icmp sgt i64 %288, -1
  br i1 %polly.loop_guard760.us1310, label %polly.loop_header757.preheader.us, label %polly.loop_exit759.us

polly.loop_header757.us:                          ; preds = %polly.loop_header757.us.preheader, %polly.loop_header757.us
  %polly.indvar761.us = phi i64 [ %polly.indvar_next762.us, %polly.loop_header757.us ], [ %polly.indvar761.us.ph, %polly.loop_header757.us.preheader ]
  %289 = add nuw nsw i64 %polly.indvar761.us, %260
  %polly.access.add.Packed_MemRef_call1556765.us = add nuw nsw i64 %polly.indvar761.us, %polly.access.mul.Packed_MemRef_call1556764.us
  %polly.access.Packed_MemRef_call1556766.us = getelementptr double, double* %Packed_MemRef_call1556, i64 %polly.access.add.Packed_MemRef_call1556765.us
  %_p_scalar_767.us = load double, double* %polly.access.Packed_MemRef_call1556766.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_771.us, %_p_scalar_767.us
  %polly.access.Packed_MemRef_call2558774.us = getelementptr double, double* %Packed_MemRef_call2558, i64 %polly.access.add.Packed_MemRef_call1556765.us
  %_p_scalar_775.us = load double, double* %polly.access.Packed_MemRef_call2558774.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_779.us, %_p_scalar_775.us
  %290 = shl i64 %289, 3
  %291 = add i64 %290, %292
  %scevgep780.us = getelementptr i8, i8* %call, i64 %291
  %scevgep780781.us = bitcast i8* %scevgep780.us to double*
  %_p_scalar_782.us = load double, double* %scevgep780781.us, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_782.us
  store double %p_add42.i.us, double* %scevgep780781.us, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next762.us = add nuw nsw i64 %polly.indvar761.us, 1
  %exitcond1267.not = icmp eq i64 %polly.indvar761.us, %smin1266
  br i1 %exitcond1267.not, label %polly.loop_exit759.us, label %polly.loop_header757.us, !llvm.loop !110

polly.loop_exit759.us:                            ; preds = %polly.loop_header757.us, %middle.block1408, %polly.loop_header749.us
  %polly.indvar_next754.us = add nuw nsw i64 %polly.indvar753.us, 1
  %polly.loop_cond755.us = icmp ult i64 %polly.indvar753.us, 79
  %indvars.iv.next1265 = add i64 %indvars.iv1264, 1
  %indvar.next1415 = add i64 %indvar1414, 1
  br i1 %polly.loop_cond755.us, label %polly.loop_header749.us, label %polly.loop_exit751.loopexit.us

polly.loop_header757.preheader.us:                ; preds = %polly.loop_header749.us
  %polly.access.add.Packed_MemRef_call2558769.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1556764.us, %288
  %polly.access.Packed_MemRef_call2558770.us = getelementptr double, double* %Packed_MemRef_call2558, i64 %polly.access.add.Packed_MemRef_call2558769.us
  %_p_scalar_771.us = load double, double* %polly.access.Packed_MemRef_call2558770.us, align 8
  %polly.access.Packed_MemRef_call1556778.us = getelementptr double, double* %Packed_MemRef_call1556, i64 %polly.access.add.Packed_MemRef_call2558769.us
  %_p_scalar_779.us = load double, double* %polly.access.Packed_MemRef_call1556778.us, align 8
  %292 = mul i64 %287, 9600
  %min.iters.check1417 = icmp ult i64 %286, 4
  br i1 %min.iters.check1417, label %polly.loop_header757.us.preheader, label %vector.ph1418

vector.ph1418:                                    ; preds = %polly.loop_header757.preheader.us
  %n.vec1420 = and i64 %286, -4
  %broadcast.splatinsert1426 = insertelement <4 x double> poison, double %_p_scalar_771.us, i32 0
  %broadcast.splat1427 = shufflevector <4 x double> %broadcast.splatinsert1426, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1429 = insertelement <4 x double> poison, double %_p_scalar_779.us, i32 0
  %broadcast.splat1430 = shufflevector <4 x double> %broadcast.splatinsert1429, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1410

vector.body1410:                                  ; preds = %vector.body1410, %vector.ph1418
  %index1421 = phi i64 [ 0, %vector.ph1418 ], [ %index.next1422, %vector.body1410 ]
  %293 = add nuw nsw i64 %index1421, %260
  %294 = add nuw nsw i64 %index1421, %polly.access.mul.Packed_MemRef_call1556764.us
  %295 = getelementptr double, double* %Packed_MemRef_call1556, i64 %294
  %296 = bitcast double* %295 to <4 x double>*
  %wide.load1425 = load <4 x double>, <4 x double>* %296, align 8
  %297 = fmul fast <4 x double> %broadcast.splat1427, %wide.load1425
  %298 = getelementptr double, double* %Packed_MemRef_call2558, i64 %294
  %299 = bitcast double* %298 to <4 x double>*
  %wide.load1428 = load <4 x double>, <4 x double>* %299, align 8
  %300 = fmul fast <4 x double> %broadcast.splat1430, %wide.load1428
  %301 = shl i64 %293, 3
  %302 = add i64 %301, %292
  %303 = getelementptr i8, i8* %call, i64 %302
  %304 = bitcast i8* %303 to <4 x double>*
  %wide.load1431 = load <4 x double>, <4 x double>* %304, align 8, !alias.scope !99, !noalias !101
  %305 = fadd fast <4 x double> %300, %297
  %306 = fmul fast <4 x double> %305, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %307 = fadd fast <4 x double> %306, %wide.load1431
  %308 = bitcast i8* %303 to <4 x double>*
  store <4 x double> %307, <4 x double>* %308, align 8, !alias.scope !99, !noalias !101
  %index.next1422 = add i64 %index1421, 4
  %309 = icmp eq i64 %index.next1422, %n.vec1420
  br i1 %309, label %middle.block1408, label %vector.body1410, !llvm.loop !111

middle.block1408:                                 ; preds = %vector.body1410
  %cmp.n1424 = icmp eq i64 %286, %n.vec1420
  br i1 %cmp.n1424, label %polly.loop_exit759.us, label %polly.loop_header757.us.preheader

polly.loop_header757.us.preheader:                ; preds = %polly.loop_header757.preheader.us, %middle.block1408
  %polly.indvar761.us.ph = phi i64 [ 0, %polly.loop_header757.preheader.us ], [ %n.vec1420, %middle.block1408 ]
  br label %polly.loop_header757.us

polly.loop_exit751.loopexit.us:                   ; preds = %polly.loop_exit759.us
  %polly.indvar_next746.us = add nuw nsw i64 %polly.indvar745.us, 1
  %exitcond1269.not = icmp eq i64 %polly.indvar_next746.us, %245
  br i1 %exitcond1269.not, label %polly.loop_exit744, label %polly.loop_header742.us

polly.loop_header909:                             ; preds = %entry, %polly.loop_exit917
  %indvars.iv1298 = phi i64 [ %indvars.iv.next1299, %polly.loop_exit917 ], [ 0, %entry ]
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_exit917 ], [ 0, %entry ]
  %smin1300 = call i64 @llvm.smin.i64(i64 %indvars.iv1298, i64 -1168)
  %310 = shl nsw i64 %polly.indvar912, 5
  %311 = add nsw i64 %smin1300, 1199
  br label %polly.loop_header915

polly.loop_exit917:                               ; preds = %polly.loop_exit923
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %indvars.iv.next1299 = add nsw i64 %indvars.iv1298, -32
  %exitcond1303.not = icmp eq i64 %polly.indvar_next913, 38
  br i1 %exitcond1303.not, label %polly.loop_header936, label %polly.loop_header909

polly.loop_header915:                             ; preds = %polly.loop_exit923, %polly.loop_header909
  %indvars.iv1294 = phi i64 [ %indvars.iv.next1295, %polly.loop_exit923 ], [ 0, %polly.loop_header909 ]
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_exit923 ], [ 0, %polly.loop_header909 ]
  %312 = mul nsw i64 %polly.indvar918, -32
  %smin = call i64 @llvm.smin.i64(i64 %312, i64 -1168)
  %313 = add nsw i64 %smin, 1200
  %smin1296 = call i64 @llvm.smin.i64(i64 %indvars.iv1294, i64 -1168)
  %314 = shl nsw i64 %polly.indvar918, 5
  %315 = add nsw i64 %smin1296, 1199
  br label %polly.loop_header921

polly.loop_exit923:                               ; preds = %polly.loop_exit929
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %indvars.iv.next1295 = add nsw i64 %indvars.iv1294, -32
  %exitcond1302.not = icmp eq i64 %polly.indvar_next919, 38
  br i1 %exitcond1302.not, label %polly.loop_exit917, label %polly.loop_header915

polly.loop_header921:                             ; preds = %polly.loop_exit929, %polly.loop_header915
  %polly.indvar924 = phi i64 [ 0, %polly.loop_header915 ], [ %polly.indvar_next925, %polly.loop_exit929 ]
  %316 = add nuw nsw i64 %polly.indvar924, %310
  %317 = trunc i64 %316 to i32
  %318 = mul nuw nsw i64 %316, 9600
  %min.iters.check = icmp eq i64 %313, 0
  br i1 %min.iters.check, label %polly.loop_header927, label %vector.ph1338

vector.ph1338:                                    ; preds = %polly.loop_header921
  %broadcast.splatinsert1345 = insertelement <4 x i64> poison, i64 %314, i32 0
  %broadcast.splat1346 = shufflevector <4 x i64> %broadcast.splatinsert1345, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1347 = insertelement <4 x i32> poison, i32 %317, i32 0
  %broadcast.splat1348 = shufflevector <4 x i32> %broadcast.splatinsert1347, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1337

vector.body1337:                                  ; preds = %vector.body1337, %vector.ph1338
  %index1339 = phi i64 [ 0, %vector.ph1338 ], [ %index.next1340, %vector.body1337 ]
  %vec.ind1343 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1338 ], [ %vec.ind.next1344, %vector.body1337 ]
  %319 = add nuw nsw <4 x i64> %vec.ind1343, %broadcast.splat1346
  %320 = trunc <4 x i64> %319 to <4 x i32>
  %321 = mul <4 x i32> %broadcast.splat1348, %320
  %322 = add <4 x i32> %321, <i32 3, i32 3, i32 3, i32 3>
  %323 = urem <4 x i32> %322, <i32 1200, i32 1200, i32 1200, i32 1200>
  %324 = sitofp <4 x i32> %323 to <4 x double>
  %325 = fmul fast <4 x double> %324, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %326 = extractelement <4 x i64> %319, i32 0
  %327 = shl i64 %326, 3
  %328 = add nuw nsw i64 %327, %318
  %329 = getelementptr i8, i8* %call, i64 %328
  %330 = bitcast i8* %329 to <4 x double>*
  store <4 x double> %325, <4 x double>* %330, align 8, !alias.scope !112, !noalias !114
  %index.next1340 = add i64 %index1339, 4
  %vec.ind.next1344 = add <4 x i64> %vec.ind1343, <i64 4, i64 4, i64 4, i64 4>
  %331 = icmp eq i64 %index.next1340, %313
  br i1 %331, label %polly.loop_exit929, label %vector.body1337, !llvm.loop !117

polly.loop_exit929:                               ; preds = %vector.body1337, %polly.loop_header927
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %exitcond1301.not = icmp eq i64 %polly.indvar924, %311
  br i1 %exitcond1301.not, label %polly.loop_exit923, label %polly.loop_header921

polly.loop_header927:                             ; preds = %polly.loop_header921, %polly.loop_header927
  %polly.indvar930 = phi i64 [ %polly.indvar_next931, %polly.loop_header927 ], [ 0, %polly.loop_header921 ]
  %332 = add nuw nsw i64 %polly.indvar930, %314
  %333 = trunc i64 %332 to i32
  %334 = mul i32 %333, %317
  %335 = add i32 %334, 3
  %336 = urem i32 %335, 1200
  %p_conv31.i = sitofp i32 %336 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %337 = shl i64 %332, 3
  %338 = add nuw nsw i64 %337, %318
  %scevgep933 = getelementptr i8, i8* %call, i64 %338
  %scevgep933934 = bitcast i8* %scevgep933 to double*
  store double %p_div33.i, double* %scevgep933934, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next931 = add nuw nsw i64 %polly.indvar930, 1
  %exitcond1297.not = icmp eq i64 %polly.indvar930, %315
  br i1 %exitcond1297.not, label %polly.loop_exit929, label %polly.loop_header927, !llvm.loop !118

polly.loop_header936:                             ; preds = %polly.loop_exit917, %polly.loop_exit944
  %indvars.iv1288 = phi i64 [ %indvars.iv.next1289, %polly.loop_exit944 ], [ 0, %polly.loop_exit917 ]
  %polly.indvar939 = phi i64 [ %polly.indvar_next940, %polly.loop_exit944 ], [ 0, %polly.loop_exit917 ]
  %smin1290 = call i64 @llvm.smin.i64(i64 %indvars.iv1288, i64 -1168)
  %339 = shl nsw i64 %polly.indvar939, 5
  %340 = add nsw i64 %smin1290, 1199
  br label %polly.loop_header942

polly.loop_exit944:                               ; preds = %polly.loop_exit950
  %polly.indvar_next940 = add nuw nsw i64 %polly.indvar939, 1
  %indvars.iv.next1289 = add nsw i64 %indvars.iv1288, -32
  %exitcond1293.not = icmp eq i64 %polly.indvar_next940, 38
  br i1 %exitcond1293.not, label %polly.loop_header962, label %polly.loop_header936

polly.loop_header942:                             ; preds = %polly.loop_exit950, %polly.loop_header936
  %indvars.iv1284 = phi i64 [ %indvars.iv.next1285, %polly.loop_exit950 ], [ 0, %polly.loop_header936 ]
  %polly.indvar945 = phi i64 [ %polly.indvar_next946, %polly.loop_exit950 ], [ 0, %polly.loop_header936 ]
  %341 = mul nsw i64 %polly.indvar945, -32
  %smin1352 = call i64 @llvm.smin.i64(i64 %341, i64 -968)
  %342 = add nsw i64 %smin1352, 1000
  %smin1286 = call i64 @llvm.smin.i64(i64 %indvars.iv1284, i64 -968)
  %343 = shl nsw i64 %polly.indvar945, 5
  %344 = add nsw i64 %smin1286, 999
  br label %polly.loop_header948

polly.loop_exit950:                               ; preds = %polly.loop_exit956
  %polly.indvar_next946 = add nuw nsw i64 %polly.indvar945, 1
  %indvars.iv.next1285 = add nsw i64 %indvars.iv1284, -32
  %exitcond1292.not = icmp eq i64 %polly.indvar_next946, 32
  br i1 %exitcond1292.not, label %polly.loop_exit944, label %polly.loop_header942

polly.loop_header948:                             ; preds = %polly.loop_exit956, %polly.loop_header942
  %polly.indvar951 = phi i64 [ 0, %polly.loop_header942 ], [ %polly.indvar_next952, %polly.loop_exit956 ]
  %345 = add nuw nsw i64 %polly.indvar951, %339
  %346 = trunc i64 %345 to i32
  %347 = mul nuw nsw i64 %345, 8000
  %min.iters.check1353 = icmp eq i64 %342, 0
  br i1 %min.iters.check1353, label %polly.loop_header954, label %vector.ph1354

vector.ph1354:                                    ; preds = %polly.loop_header948
  %broadcast.splatinsert1363 = insertelement <4 x i64> poison, i64 %343, i32 0
  %broadcast.splat1364 = shufflevector <4 x i64> %broadcast.splatinsert1363, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1365 = insertelement <4 x i32> poison, i32 %346, i32 0
  %broadcast.splat1366 = shufflevector <4 x i32> %broadcast.splatinsert1365, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1351

vector.body1351:                                  ; preds = %vector.body1351, %vector.ph1354
  %index1357 = phi i64 [ 0, %vector.ph1354 ], [ %index.next1358, %vector.body1351 ]
  %vec.ind1361 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1354 ], [ %vec.ind.next1362, %vector.body1351 ]
  %348 = add nuw nsw <4 x i64> %vec.ind1361, %broadcast.splat1364
  %349 = trunc <4 x i64> %348 to <4 x i32>
  %350 = mul <4 x i32> %broadcast.splat1366, %349
  %351 = add <4 x i32> %350, <i32 2, i32 2, i32 2, i32 2>
  %352 = urem <4 x i32> %351, <i32 1000, i32 1000, i32 1000, i32 1000>
  %353 = sitofp <4 x i32> %352 to <4 x double>
  %354 = fmul fast <4 x double> %353, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %355 = extractelement <4 x i64> %348, i32 0
  %356 = shl i64 %355, 3
  %357 = add nuw nsw i64 %356, %347
  %358 = getelementptr i8, i8* %call2, i64 %357
  %359 = bitcast i8* %358 to <4 x double>*
  store <4 x double> %354, <4 x double>* %359, align 8, !alias.scope !116, !noalias !119
  %index.next1358 = add i64 %index1357, 4
  %vec.ind.next1362 = add <4 x i64> %vec.ind1361, <i64 4, i64 4, i64 4, i64 4>
  %360 = icmp eq i64 %index.next1358, %342
  br i1 %360, label %polly.loop_exit956, label %vector.body1351, !llvm.loop !120

polly.loop_exit956:                               ; preds = %vector.body1351, %polly.loop_header954
  %polly.indvar_next952 = add nuw nsw i64 %polly.indvar951, 1
  %exitcond1291.not = icmp eq i64 %polly.indvar951, %340
  br i1 %exitcond1291.not, label %polly.loop_exit950, label %polly.loop_header948

polly.loop_header954:                             ; preds = %polly.loop_header948, %polly.loop_header954
  %polly.indvar957 = phi i64 [ %polly.indvar_next958, %polly.loop_header954 ], [ 0, %polly.loop_header948 ]
  %361 = add nuw nsw i64 %polly.indvar957, %343
  %362 = trunc i64 %361 to i32
  %363 = mul i32 %362, %346
  %364 = add i32 %363, 2
  %365 = urem i32 %364, 1000
  %p_conv10.i = sitofp i32 %365 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %366 = shl i64 %361, 3
  %367 = add nuw nsw i64 %366, %347
  %scevgep960 = getelementptr i8, i8* %call2, i64 %367
  %scevgep960961 = bitcast i8* %scevgep960 to double*
  store double %p_div12.i, double* %scevgep960961, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next958 = add nuw nsw i64 %polly.indvar957, 1
  %exitcond1287.not = icmp eq i64 %polly.indvar957, %344
  br i1 %exitcond1287.not, label %polly.loop_exit956, label %polly.loop_header954, !llvm.loop !121

polly.loop_header962:                             ; preds = %polly.loop_exit944, %polly.loop_exit970
  %indvars.iv1278 = phi i64 [ %indvars.iv.next1279, %polly.loop_exit970 ], [ 0, %polly.loop_exit944 ]
  %polly.indvar965 = phi i64 [ %polly.indvar_next966, %polly.loop_exit970 ], [ 0, %polly.loop_exit944 ]
  %smin1280 = call i64 @llvm.smin.i64(i64 %indvars.iv1278, i64 -1168)
  %368 = shl nsw i64 %polly.indvar965, 5
  %369 = add nsw i64 %smin1280, 1199
  br label %polly.loop_header968

polly.loop_exit970:                               ; preds = %polly.loop_exit976
  %polly.indvar_next966 = add nuw nsw i64 %polly.indvar965, 1
  %indvars.iv.next1279 = add nsw i64 %indvars.iv1278, -32
  %exitcond1283.not = icmp eq i64 %polly.indvar_next966, 38
  br i1 %exitcond1283.not, label %init_array.exit, label %polly.loop_header962

polly.loop_header968:                             ; preds = %polly.loop_exit976, %polly.loop_header962
  %indvars.iv1274 = phi i64 [ %indvars.iv.next1275, %polly.loop_exit976 ], [ 0, %polly.loop_header962 ]
  %polly.indvar971 = phi i64 [ %polly.indvar_next972, %polly.loop_exit976 ], [ 0, %polly.loop_header962 ]
  %370 = mul nsw i64 %polly.indvar971, -32
  %smin1370 = call i64 @llvm.smin.i64(i64 %370, i64 -968)
  %371 = add nsw i64 %smin1370, 1000
  %smin1276 = call i64 @llvm.smin.i64(i64 %indvars.iv1274, i64 -968)
  %372 = shl nsw i64 %polly.indvar971, 5
  %373 = add nsw i64 %smin1276, 999
  br label %polly.loop_header974

polly.loop_exit976:                               ; preds = %polly.loop_exit982
  %polly.indvar_next972 = add nuw nsw i64 %polly.indvar971, 1
  %indvars.iv.next1275 = add nsw i64 %indvars.iv1274, -32
  %exitcond1282.not = icmp eq i64 %polly.indvar_next972, 32
  br i1 %exitcond1282.not, label %polly.loop_exit970, label %polly.loop_header968

polly.loop_header974:                             ; preds = %polly.loop_exit982, %polly.loop_header968
  %polly.indvar977 = phi i64 [ 0, %polly.loop_header968 ], [ %polly.indvar_next978, %polly.loop_exit982 ]
  %374 = add nuw nsw i64 %polly.indvar977, %368
  %375 = trunc i64 %374 to i32
  %376 = mul nuw nsw i64 %374, 8000
  %min.iters.check1371 = icmp eq i64 %371, 0
  br i1 %min.iters.check1371, label %polly.loop_header980, label %vector.ph1372

vector.ph1372:                                    ; preds = %polly.loop_header974
  %broadcast.splatinsert1381 = insertelement <4 x i64> poison, i64 %372, i32 0
  %broadcast.splat1382 = shufflevector <4 x i64> %broadcast.splatinsert1381, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1383 = insertelement <4 x i32> poison, i32 %375, i32 0
  %broadcast.splat1384 = shufflevector <4 x i32> %broadcast.splatinsert1383, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1369

vector.body1369:                                  ; preds = %vector.body1369, %vector.ph1372
  %index1375 = phi i64 [ 0, %vector.ph1372 ], [ %index.next1376, %vector.body1369 ]
  %vec.ind1379 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1372 ], [ %vec.ind.next1380, %vector.body1369 ]
  %377 = add nuw nsw <4 x i64> %vec.ind1379, %broadcast.splat1382
  %378 = trunc <4 x i64> %377 to <4 x i32>
  %379 = mul <4 x i32> %broadcast.splat1384, %378
  %380 = add <4 x i32> %379, <i32 1, i32 1, i32 1, i32 1>
  %381 = urem <4 x i32> %380, <i32 1200, i32 1200, i32 1200, i32 1200>
  %382 = sitofp <4 x i32> %381 to <4 x double>
  %383 = fmul fast <4 x double> %382, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %384 = extractelement <4 x i64> %377, i32 0
  %385 = shl i64 %384, 3
  %386 = add nuw nsw i64 %385, %376
  %387 = getelementptr i8, i8* %call1, i64 %386
  %388 = bitcast i8* %387 to <4 x double>*
  store <4 x double> %383, <4 x double>* %388, align 8, !alias.scope !115, !noalias !122
  %index.next1376 = add i64 %index1375, 4
  %vec.ind.next1380 = add <4 x i64> %vec.ind1379, <i64 4, i64 4, i64 4, i64 4>
  %389 = icmp eq i64 %index.next1376, %371
  br i1 %389, label %polly.loop_exit982, label %vector.body1369, !llvm.loop !123

polly.loop_exit982:                               ; preds = %vector.body1369, %polly.loop_header980
  %polly.indvar_next978 = add nuw nsw i64 %polly.indvar977, 1
  %exitcond1281.not = icmp eq i64 %polly.indvar977, %369
  br i1 %exitcond1281.not, label %polly.loop_exit976, label %polly.loop_header974

polly.loop_header980:                             ; preds = %polly.loop_header974, %polly.loop_header980
  %polly.indvar983 = phi i64 [ %polly.indvar_next984, %polly.loop_header980 ], [ 0, %polly.loop_header974 ]
  %390 = add nuw nsw i64 %polly.indvar983, %372
  %391 = trunc i64 %390 to i32
  %392 = mul i32 %391, %375
  %393 = add i32 %392, 1
  %394 = urem i32 %393, 1200
  %p_conv.i = sitofp i32 %394 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %395 = shl i64 %390, 3
  %396 = add nuw nsw i64 %395, %376
  %scevgep987 = getelementptr i8, i8* %call1, i64 %396
  %scevgep987988 = bitcast i8* %scevgep987 to double*
  store double %p_div.i, double* %scevgep987988, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next984 = add nuw nsw i64 %polly.indvar983, 1
  %exitcond1277.not = icmp eq i64 %polly.indvar983, %373
  br i1 %exitcond1277.not, label %polly.loop_exit982, label %polly.loop_header980, !llvm.loop !124
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #5

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
!26 = !{!"llvm.loop.tile.size", i32 100}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 32}
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
