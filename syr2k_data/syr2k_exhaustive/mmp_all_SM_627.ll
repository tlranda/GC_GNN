; ModuleID = 'syr2k_exhaustive/mmp_all_SM_627.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_627.c"
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
  %scevgep1346 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1345 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1344 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1343 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1343, %scevgep1346
  %bound1 = icmp ult i8* %scevgep1345, %scevgep1344
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
  br i1 %exitcond18.not.i, label %vector.ph1350, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1350:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1357 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1358 = shufflevector <4 x i64> %broadcast.splatinsert1357, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1349

vector.body1349:                                  ; preds = %vector.body1349, %vector.ph1350
  %index1351 = phi i64 [ 0, %vector.ph1350 ], [ %index.next1352, %vector.body1349 ]
  %vec.ind1355 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1350 ], [ %vec.ind.next1356, %vector.body1349 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1355, %broadcast.splat1358
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv7.i, i64 %index1351
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1352 = add i64 %index1351, 4
  %vec.ind.next1356 = add <4 x i64> %vec.ind1355, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1352, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1349, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1349
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1350, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit970
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start553, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1412 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1412, label %for.body3.i46.preheader1564, label %vector.ph1413

vector.ph1413:                                    ; preds = %for.body3.i46.preheader
  %n.vec1415 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1411

vector.body1411:                                  ; preds = %vector.body1411, %vector.ph1413
  %index1416 = phi i64 [ 0, %vector.ph1413 ], [ %index.next1417, %vector.body1411 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv21.i, i64 %index1416
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1417 = add i64 %index1416, 4
  %46 = icmp eq i64 %index.next1417, %n.vec1415
  br i1 %46, label %middle.block1409, label %vector.body1411, !llvm.loop !18

middle.block1409:                                 ; preds = %vector.body1411
  %cmp.n1419 = icmp eq i64 %indvars.iv21.i, %n.vec1415
  br i1 %cmp.n1419, label %for.inc6.i, label %for.body3.i46.preheader1564

for.body3.i46.preheader1564:                      ; preds = %for.body3.i46.preheader, %middle.block1409
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1415, %middle.block1409 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1564, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1564 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1409, %for.cond1.preheader.i45
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
  %min.iters.check1459 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1459, label %for.body3.i60.preheader1561, label %vector.ph1460

vector.ph1460:                                    ; preds = %for.body3.i60.preheader
  %n.vec1462 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1458

vector.body1458:                                  ; preds = %vector.body1458, %vector.ph1460
  %index1463 = phi i64 [ 0, %vector.ph1460 ], [ %index.next1464, %vector.body1458 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv21.i52, i64 %index1463
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1467 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1467, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1464 = add i64 %index1463, 4
  %57 = icmp eq i64 %index.next1464, %n.vec1462
  br i1 %57, label %middle.block1456, label %vector.body1458, !llvm.loop !64

middle.block1456:                                 ; preds = %vector.body1458
  %cmp.n1466 = icmp eq i64 %indvars.iv21.i52, %n.vec1462
  br i1 %cmp.n1466, label %for.inc6.i63, label %for.body3.i60.preheader1561

for.body3.i60.preheader1561:                      ; preds = %for.body3.i60.preheader, %middle.block1456
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1462, %middle.block1456 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1561, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1561 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1456, %for.cond1.preheader.i54
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
  %min.iters.check1509 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1509, label %for.body3.i99.preheader1558, label %vector.ph1510

vector.ph1510:                                    ; preds = %for.body3.i99.preheader
  %n.vec1512 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1508

vector.body1508:                                  ; preds = %vector.body1508, %vector.ph1510
  %index1513 = phi i64 [ 0, %vector.ph1510 ], [ %index.next1514, %vector.body1508 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv21.i91, i64 %index1513
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1517 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1517, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1514 = add i64 %index1513, 4
  %68 = icmp eq i64 %index.next1514, %n.vec1512
  br i1 %68, label %middle.block1506, label %vector.body1508, !llvm.loop !66

middle.block1506:                                 ; preds = %vector.body1508
  %cmp.n1516 = icmp eq i64 %indvars.iv21.i91, %n.vec1512
  br i1 %cmp.n1516, label %for.inc6.i102, label %for.body3.i99.preheader1558

for.body3.i99.preheader1558:                      ; preds = %for.body3.i99.preheader, %middle.block1506
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1512, %middle.block1506 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1558, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1558 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1506, %for.cond1.preheader.i93
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
  %malloccall = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  %malloccall136 = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1521 = phi i64 [ %indvar.next1522, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1521, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1523 = icmp ult i64 %88, 4
  br i1 %min.iters.check1523, label %polly.loop_header192.preheader, label %vector.ph1524

vector.ph1524:                                    ; preds = %polly.loop_header
  %n.vec1526 = and i64 %88, -4
  br label %vector.body1520

vector.body1520:                                  ; preds = %vector.body1520, %vector.ph1524
  %index1527 = phi i64 [ 0, %vector.ph1524 ], [ %index.next1528, %vector.body1520 ]
  %90 = shl nuw nsw i64 %index1527, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1531 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1531, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1528 = add i64 %index1527, 4
  %95 = icmp eq i64 %index.next1528, %n.vec1526
  br i1 %95, label %middle.block1518, label %vector.body1520, !llvm.loop !79

middle.block1518:                                 ; preds = %vector.body1520
  %cmp.n1530 = icmp eq i64 %88, %n.vec1526
  br i1 %cmp.n1530, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1518
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1526, %middle.block1518 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1518
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1204.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1522 = add i64 %indvar1521, 1
  br i1 %exitcond1204.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1203.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1203.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %indvars.iv1168 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1169, %polly.loop_exit208 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit208 ]
  %smin1199 = call i64 @llvm.smin.i64(i64 %indvars.iv1168, i64 -984)
  %97 = add nsw i64 %smin1199, 1000
  %98 = shl nsw i64 %polly.indvar203, 4
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next1169 = add nsw i64 %indvars.iv1168, -16
  %exitcond1202.not = icmp eq i64 %polly.indvar_next204, 63
  br i1 %exitcond1202.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1191 = phi i64 [ %indvars.iv.next1192, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1186 = phi i64 [ %indvars.iv.next1187, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1179 = phi i64 [ %indvars.iv.next1180, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1177 = phi i64 [ %indvars.iv.next1178, %polly.loop_exit230 ], [ 49, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %99 = shl nuw nsw i64 %polly.indvar209, 2
  %100 = shl nuw nsw i64 %polly.indvar209, 1
  %101 = udiv i64 %100, 25
  %102 = mul nuw nsw i64 %101, 50
  %103 = sub nsw i64 %99, %102
  %104 = mul nsw i64 %polly.indvar209, -4
  %105 = add i64 %104, %102
  %106 = udiv i64 %indvars.iv1179, 25
  %107 = mul nuw nsw i64 %106, 50
  %108 = sub nsw i64 %indvars.iv1186, %107
  %109 = add i64 %indvars.iv1191, %107
  %110 = add i64 %indvars.iv1177, %107
  %111 = shl nsw i64 %polly.indvar209, 2
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %112 = mul nsw i64 %polly.indvar209, -4
  %113 = shl nuw nsw i64 %polly.indvar209, 1
  %pexp.p_div_q = udiv i64 %113, 25
  %114 = or i64 %113, 1
  %polly.access.mul.call1247 = mul nsw i64 %polly.indvar209, 4000
  %115 = or i64 %111, 1
  %polly.access.mul.call1247.1 = mul nuw nsw i64 %115, 1000
  %116 = or i64 %111, 2
  %polly.access.mul.call1247.2 = mul nuw nsw i64 %116, 1000
  %117 = or i64 %111, 3
  %polly.access.mul.call1247.3 = mul nuw nsw i64 %117, 1000
  %polly.access.mul.call1247.us1021 = mul nsw i64 %polly.indvar209, 4000
  %118 = or i64 %111, 1
  %polly.access.mul.call1247.us1021.1 = mul nuw nsw i64 %118, 1000
  %119 = or i64 %111, 2
  %polly.access.mul.call1247.us1021.2 = mul nuw nsw i64 %119, 1000
  %120 = or i64 %111, 3
  %polly.access.mul.call1247.us1021.3 = mul nuw nsw i64 %120, 1000
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit280
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  %indvars.iv.next1178 = add nsw i64 %indvars.iv1177, -4
  %indvars.iv.next1180 = add nuw nsw i64 %indvars.iv1179, 2
  %indvars.iv.next1187 = add nuw nsw i64 %indvars.iv1186, 4
  %indvars.iv.next1192 = add nsw i64 %indvars.iv1191, -4
  %exitcond1201.not = icmp eq i64 %polly.indvar_next210, 300
  br i1 %exitcond1201.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %121 = add nuw nsw i64 %polly.indvar215, %98
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1170.not = icmp eq i64 %polly.indvar_next216, %97
  br i1 %exitcond1170.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %122 = add nuw nsw i64 %polly.indvar221, %111
  %polly.access.mul.call2225 = mul nuw nsw i64 %122, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %121, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2797, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit280, %polly.loop_exit214
  %indvar1535 = phi i64 [ %indvar.next1536, %polly.loop_exit280 ], [ 0, %polly.loop_exit214 ]
  %indvars.iv1193 = phi i64 [ %indvars.iv.next1194, %polly.loop_exit280 ], [ %109, %polly.loop_exit214 ]
  %indvars.iv1188 = phi i64 [ %indvars.iv.next1189, %polly.loop_exit280 ], [ %108, %polly.loop_exit214 ]
  %indvars.iv1181 = phi i64 [ %indvars.iv.next1182, %polly.loop_exit280 ], [ %110, %polly.loop_exit214 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit280 ], [ %pexp.p_div_q, %polly.loop_exit214 ]
  %123 = mul nsw i64 %indvar1535, -50
  %124 = add i64 %103, %123
  %smax1537 = call i64 @llvm.smax.i64(i64 %124, i64 0)
  %125 = mul nuw nsw i64 %indvar1535, 50
  %126 = add i64 %105, %125
  %127 = add i64 %smax1537, %126
  %smax1190 = call i64 @llvm.smax.i64(i64 %indvars.iv1188, i64 0)
  %128 = add i64 %smax1190, %indvars.iv1193
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1181, i64 0)
  %129 = mul nuw nsw i64 %polly.indvar231, 25
  %.not = icmp ult i64 %129, %114
  %130 = mul nuw nsw i64 %polly.indvar231, 50
  %131 = add nsw i64 %130, %112
  %132 = icmp sgt i64 %131, 4
  %133 = select i1 %132, i64 %131, i64 4
  %134 = add nsw i64 %131, 49
  %polly.loop_guard267 = icmp sgt i64 %131, -50
  br i1 %.not, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.merge.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.merge.us ], [ 0, %polly.loop_header228 ]
  br i1 %polly.loop_guard267, label %polly.loop_header264.preheader.us, label %polly.merge.us

polly.loop_header264.us:                          ; preds = %polly.loop_header264.preheader.us, %polly.loop_header264.us
  %polly.indvar268.us = phi i64 [ %polly.indvar_next269.us, %polly.loop_header264.us ], [ 0, %polly.loop_header264.preheader.us ]
  %135 = add nuw nsw i64 %polly.indvar268.us, %111
  %polly.access.mul.call1272.us = mul nuw nsw i64 %135, 1000
  %polly.access.add.call1273.us = add nuw nsw i64 %136, %polly.access.mul.call1272.us
  %polly.access.call1274.us = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1273.us
  %polly.access.call1274.load.us = load double, double* %polly.access.call1274.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1276.us = add nuw nsw i64 %polly.indvar268.us, %polly.access.mul.Packed_MemRef_call1275.us
  %polly.access.Packed_MemRef_call1277.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1276.us
  store double %polly.access.call1274.load.us, double* %polly.access.Packed_MemRef_call1277.us, align 8
  %polly.indvar_next269.us = add nuw nsw i64 %polly.indvar268.us, 1
  %exitcond1183.not = icmp eq i64 %polly.indvar268.us, %smax
  br i1 %exitcond1183.not, label %polly.merge.us, label %polly.loop_header264.us

polly.merge.us:                                   ; preds = %polly.loop_header264.us, %polly.loop_header234.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1185.not = icmp eq i64 %polly.indvar_next238.us, %97
  br i1 %exitcond1185.not, label %polly.loop_header278.preheader, label %polly.loop_header234.us

polly.loop_header264.preheader.us:                ; preds = %polly.loop_header234.us
  %136 = add nuw nsw i64 %polly.indvar237.us, %98
  %polly.access.mul.Packed_MemRef_call1275.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header264.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  %polly.loop_guard.not = icmp sgt i64 %133, %134
  br i1 %polly.loop_guard.not, label %polly.loop_header234.us1017, label %polly.loop_header234

polly.loop_header234.us1017:                      ; preds = %polly.loop_header228.split, %polly.loop_header234.us1017
  %polly.indvar237.us1018 = phi i64 [ %polly.indvar_next238.us1054, %polly.loop_header234.us1017 ], [ 0, %polly.loop_header228.split ]
  %137 = add nuw nsw i64 %polly.indvar237.us1018, %98
  %polly.access.mul.Packed_MemRef_call1.us1062 = mul nuw nsw i64 %polly.indvar237.us1018, 1200
  %polly.access.add.call1248.us1022 = add nuw nsw i64 %polly.access.mul.call1247.us1021, %137
  %polly.access.call1249.us1023 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1248.us1022
  %polly.access.call1249.load.us1024 = load double, double* %polly.access.call1249.us1023, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1.us1026 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1.us1062
  store double %polly.access.call1249.load.us1024, double* %polly.access.Packed_MemRef_call1.us1026, align 8
  %polly.access.add.call1248.us1022.1 = add nuw nsw i64 %polly.access.mul.call1247.us1021.1, %137
  %polly.access.call1249.us1023.1 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1248.us1022.1
  %polly.access.call1249.load.us1024.1 = load double, double* %polly.access.call1249.us1023.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us1025.1 = or i64 %polly.access.mul.Packed_MemRef_call1.us1062, 1
  %polly.access.Packed_MemRef_call1.us1026.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us1025.1
  store double %polly.access.call1249.load.us1024.1, double* %polly.access.Packed_MemRef_call1.us1026.1, align 8
  %polly.access.add.call1248.us1022.2 = add nuw nsw i64 %polly.access.mul.call1247.us1021.2, %137
  %polly.access.call1249.us1023.2 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1248.us1022.2
  %polly.access.call1249.load.us1024.2 = load double, double* %polly.access.call1249.us1023.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us1025.2 = or i64 %polly.access.mul.Packed_MemRef_call1.us1062, 2
  %polly.access.Packed_MemRef_call1.us1026.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us1025.2
  store double %polly.access.call1249.load.us1024.2, double* %polly.access.Packed_MemRef_call1.us1026.2, align 8
  %polly.access.add.call1248.us1022.3 = add nuw nsw i64 %polly.access.mul.call1247.us1021.3, %137
  %polly.access.call1249.us1023.3 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1248.us1022.3
  %polly.access.call1249.load.us1024.3 = load double, double* %polly.access.call1249.us1023.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us1025.3 = or i64 %polly.access.mul.Packed_MemRef_call1.us1062, 3
  %polly.access.Packed_MemRef_call1.us1026.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us1025.3
  store double %polly.access.call1249.load.us1024.3, double* %polly.access.Packed_MemRef_call1.us1026.3, align 8
  %polly.indvar_next238.us1054 = add nuw nsw i64 %polly.indvar237.us1018, 1
  %exitcond1176.not = icmp eq i64 %polly.indvar_next238.us1054, %97
  br i1 %exitcond1176.not, label %polly.loop_header278.preheader, label %polly.loop_header234.us1017

polly.loop_exit280:                               ; preds = %polly.loop_exit287.loopexit.us, %polly.loop_header278.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %polly.loop_cond233 = icmp ult i64 %polly.indvar231, 23
  %indvars.iv.next1182 = add i64 %indvars.iv1181, 50
  %indvars.iv.next1189 = add i64 %indvars.iv1188, -50
  %indvars.iv.next1194 = add i64 %indvars.iv1193, 50
  %indvar.next1536 = add i64 %indvar1535, 1
  br i1 %polly.loop_cond233, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.merge
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.merge ], [ 0, %polly.loop_header228.split ]
  %138 = add nuw nsw i64 %polly.indvar237, %98
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar237, 1200
  %polly.access.add.call1248 = add nuw nsw i64 %polly.access.mul.call1247, %138
  %polly.access.call1249 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1248
  %polly.access.call1249.load = load double, double* %polly.access.call1249, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1
  store double %polly.access.call1249.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.access.add.call1248.1 = add nuw nsw i64 %polly.access.mul.call1247.1, %138
  %polly.access.call1249.1 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1248.1
  %polly.access.call1249.load.1 = load double, double* %polly.access.call1249.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.1 = or i64 %polly.access.mul.Packed_MemRef_call1, 1
  %polly.access.Packed_MemRef_call1.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.1
  store double %polly.access.call1249.load.1, double* %polly.access.Packed_MemRef_call1.1, align 8
  %polly.access.add.call1248.2 = add nuw nsw i64 %polly.access.mul.call1247.2, %138
  %polly.access.call1249.2 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1248.2
  %polly.access.call1249.load.2 = load double, double* %polly.access.call1249.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.2 = or i64 %polly.access.mul.Packed_MemRef_call1, 2
  %polly.access.Packed_MemRef_call1.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.2
  store double %polly.access.call1249.load.2, double* %polly.access.Packed_MemRef_call1.2, align 8
  %polly.access.add.call1248.3 = add nuw nsw i64 %polly.access.mul.call1247.3, %138
  %polly.access.call1249.3 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1248.3
  %polly.access.call1249.load.3 = load double, double* %polly.access.call1249.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.3 = or i64 %polly.access.mul.Packed_MemRef_call1, 3
  %polly.access.Packed_MemRef_call1.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.3
  store double %polly.access.call1249.load.3, double* %polly.access.Packed_MemRef_call1.3, align 8
  br label %polly.loop_header250

polly.merge:                                      ; preds = %polly.loop_header250
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1173.not = icmp eq i64 %polly.indvar_next238, %97
  br i1 %exitcond1173.not, label %polly.loop_header278.preheader, label %polly.loop_header234

polly.loop_header278.preheader:                   ; preds = %polly.merge, %polly.loop_header234.us1017, %polly.merge.us
  %139 = sub nsw i64 %111, %130
  %140 = icmp sgt i64 %139, 0
  %141 = select i1 %140, i64 %139, i64 0
  %polly.loop_guard288 = icmp slt i64 %141, 50
  br i1 %polly.loop_guard288, label %polly.loop_header278.us, label %polly.loop_exit280

polly.loop_header278.us:                          ; preds = %polly.loop_header278.preheader, %polly.loop_exit287.loopexit.us
  %polly.indvar281.us = phi i64 [ %polly.indvar_next282.us, %polly.loop_exit287.loopexit.us ], [ 0, %polly.loop_header278.preheader ]
  %polly.access.mul.Packed_MemRef_call1300.us = mul nuw nsw i64 %polly.indvar281.us, 1200
  br label %polly.loop_header285.us

polly.loop_header285.us:                          ; preds = %polly.loop_header278.us, %polly.loop_exit295.us
  %indvar1538 = phi i64 [ 0, %polly.loop_header278.us ], [ %indvar.next1539, %polly.loop_exit295.us ]
  %indvars.iv1195 = phi i64 [ %128, %polly.loop_header278.us ], [ %indvars.iv.next1196, %polly.loop_exit295.us ]
  %polly.indvar289.us = phi i64 [ %141, %polly.loop_header278.us ], [ %polly.indvar_next290.us, %polly.loop_exit295.us ]
  %142 = add i64 %127, %indvar1538
  %smin1540 = call i64 @llvm.smin.i64(i64 %142, i64 3)
  %143 = add nsw i64 %smin1540, 1
  %smin1197 = call i64 @llvm.smin.i64(i64 %indvars.iv1195, i64 3)
  %144 = add nuw i64 %polly.indvar289.us, %130
  %145 = add i64 %144, %112
  %polly.loop_guard296.us1326 = icmp sgt i64 %145, -1
  br i1 %polly.loop_guard296.us1326, label %polly.loop_header293.preheader.us, label %polly.loop_exit295.us

polly.loop_header293.us:                          ; preds = %polly.loop_header293.us.preheader, %polly.loop_header293.us
  %polly.indvar297.us = phi i64 [ %polly.indvar_next298.us, %polly.loop_header293.us ], [ %polly.indvar297.us.ph, %polly.loop_header293.us.preheader ]
  %146 = add nuw nsw i64 %polly.indvar297.us, %111
  %polly.access.add.Packed_MemRef_call1301.us = add nuw nsw i64 %polly.indvar297.us, %polly.access.mul.Packed_MemRef_call1300.us
  %polly.access.Packed_MemRef_call1302.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1301.us
  %_p_scalar_303.us = load double, double* %polly.access.Packed_MemRef_call1302.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_307.us, %_p_scalar_303.us
  %polly.access.Packed_MemRef_call2310.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1301.us
  %_p_scalar_311.us = load double, double* %polly.access.Packed_MemRef_call2310.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_315.us, %_p_scalar_311.us
  %147 = shl i64 %146, 3
  %148 = add i64 %147, %149
  %scevgep316.us = getelementptr i8, i8* %call, i64 %148
  %scevgep316317.us = bitcast i8* %scevgep316.us to double*
  %_p_scalar_318.us = load double, double* %scevgep316317.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_318.us
  store double %p_add42.i118.us, double* %scevgep316317.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next298.us = add nuw nsw i64 %polly.indvar297.us, 1
  %exitcond1198.not = icmp eq i64 %polly.indvar297.us, %smin1197
  br i1 %exitcond1198.not, label %polly.loop_exit295.us, label %polly.loop_header293.us, !llvm.loop !84

polly.loop_exit295.us:                            ; preds = %polly.loop_header293.us, %middle.block1532, %polly.loop_header285.us
  %polly.indvar_next290.us = add nuw nsw i64 %polly.indvar289.us, 1
  %polly.loop_cond291.us = icmp ult i64 %polly.indvar289.us, 49
  %indvars.iv.next1196 = add i64 %indvars.iv1195, 1
  %indvar.next1539 = add i64 %indvar1538, 1
  br i1 %polly.loop_cond291.us, label %polly.loop_header285.us, label %polly.loop_exit287.loopexit.us

polly.loop_header293.preheader.us:                ; preds = %polly.loop_header285.us
  %polly.access.add.Packed_MemRef_call2305.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1300.us, %145
  %polly.access.Packed_MemRef_call2306.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2305.us
  %_p_scalar_307.us = load double, double* %polly.access.Packed_MemRef_call2306.us, align 8
  %polly.access.Packed_MemRef_call1314.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2305.us
  %_p_scalar_315.us = load double, double* %polly.access.Packed_MemRef_call1314.us, align 8
  %149 = mul i64 %144, 9600
  %min.iters.check1541 = icmp ult i64 %143, 4
  br i1 %min.iters.check1541, label %polly.loop_header293.us.preheader, label %vector.ph1542

vector.ph1542:                                    ; preds = %polly.loop_header293.preheader.us
  %n.vec1544 = and i64 %143, -4
  %broadcast.splatinsert1550 = insertelement <4 x double> poison, double %_p_scalar_307.us, i32 0
  %broadcast.splat1551 = shufflevector <4 x double> %broadcast.splatinsert1550, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1553 = insertelement <4 x double> poison, double %_p_scalar_315.us, i32 0
  %broadcast.splat1554 = shufflevector <4 x double> %broadcast.splatinsert1553, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1534

vector.body1534:                                  ; preds = %vector.body1534, %vector.ph1542
  %index1545 = phi i64 [ 0, %vector.ph1542 ], [ %index.next1546, %vector.body1534 ]
  %150 = add nuw nsw i64 %index1545, %111
  %151 = add nuw nsw i64 %index1545, %polly.access.mul.Packed_MemRef_call1300.us
  %152 = getelementptr double, double* %Packed_MemRef_call1, i64 %151
  %153 = bitcast double* %152 to <4 x double>*
  %wide.load1549 = load <4 x double>, <4 x double>* %153, align 8
  %154 = fmul fast <4 x double> %broadcast.splat1551, %wide.load1549
  %155 = getelementptr double, double* %Packed_MemRef_call2, i64 %151
  %156 = bitcast double* %155 to <4 x double>*
  %wide.load1552 = load <4 x double>, <4 x double>* %156, align 8
  %157 = fmul fast <4 x double> %broadcast.splat1554, %wide.load1552
  %158 = shl i64 %150, 3
  %159 = add i64 %158, %149
  %160 = getelementptr i8, i8* %call, i64 %159
  %161 = bitcast i8* %160 to <4 x double>*
  %wide.load1555 = load <4 x double>, <4 x double>* %161, align 8, !alias.scope !72, !noalias !74
  %162 = fadd fast <4 x double> %157, %154
  %163 = fmul fast <4 x double> %162, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %164 = fadd fast <4 x double> %163, %wide.load1555
  %165 = bitcast i8* %160 to <4 x double>*
  store <4 x double> %164, <4 x double>* %165, align 8, !alias.scope !72, !noalias !74
  %index.next1546 = add i64 %index1545, 4
  %166 = icmp eq i64 %index.next1546, %n.vec1544
  br i1 %166, label %middle.block1532, label %vector.body1534, !llvm.loop !85

middle.block1532:                                 ; preds = %vector.body1534
  %cmp.n1548 = icmp eq i64 %143, %n.vec1544
  br i1 %cmp.n1548, label %polly.loop_exit295.us, label %polly.loop_header293.us.preheader

polly.loop_header293.us.preheader:                ; preds = %polly.loop_header293.preheader.us, %middle.block1532
  %polly.indvar297.us.ph = phi i64 [ 0, %polly.loop_header293.preheader.us ], [ %n.vec1544, %middle.block1532 ]
  br label %polly.loop_header293.us

polly.loop_exit287.loopexit.us:                   ; preds = %polly.loop_exit295.us
  %polly.indvar_next282.us = add nuw nsw i64 %polly.indvar281.us, 1
  %exitcond1200.not = icmp eq i64 %polly.indvar_next282.us, %97
  br i1 %exitcond1200.not, label %polly.loop_exit280, label %polly.loop_header278.us

polly.loop_header250:                             ; preds = %polly.loop_header234, %polly.loop_header250
  %polly.indvar253 = phi i64 [ %polly.indvar_next254, %polly.loop_header250 ], [ %133, %polly.loop_header234 ]
  %167 = add nuw nsw i64 %polly.indvar253, %111
  %polly.access.mul.call1257 = mul nsw i64 %167, 1000
  %polly.access.add.call1258 = add nuw nsw i64 %polly.access.mul.call1257, %138
  %polly.access.call1259 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1258
  %polly.access.call1259.load = load double, double* %polly.access.call1259, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261 = add nuw nsw i64 %polly.indvar253, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261
  store double %polly.access.call1259.load, double* %polly.access.Packed_MemRef_call1262, align 8
  %polly.indvar_next254 = add nuw nsw i64 %polly.indvar253, 1
  %polly.loop_cond255.not.not = icmp slt i64 %polly.indvar253, %134
  br i1 %polly.loop_cond255.not.not, label %polly.loop_header250, label %polly.merge

polly.start321:                                   ; preds = %kernel_syr2k.exit
  %malloccall323 = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  %malloccall325 = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  br label %polly.loop_header409

polly.exiting322:                                 ; preds = %polly.loop_exit433
  tail call void @free(i8* %malloccall323)
  tail call void @free(i8* %malloccall325)
  br label %kernel_syr2k.exit90

polly.loop_header409:                             ; preds = %polly.loop_exit417, %polly.start321
  %indvar1471 = phi i64 [ %indvar.next1472, %polly.loop_exit417 ], [ 0, %polly.start321 ]
  %polly.indvar412 = phi i64 [ %polly.indvar_next413, %polly.loop_exit417 ], [ 1, %polly.start321 ]
  %168 = add i64 %indvar1471, 1
  %169 = mul nuw nsw i64 %polly.indvar412, 9600
  %scevgep421 = getelementptr i8, i8* %call, i64 %169
  %min.iters.check1473 = icmp ult i64 %168, 4
  br i1 %min.iters.check1473, label %polly.loop_header415.preheader, label %vector.ph1474

vector.ph1474:                                    ; preds = %polly.loop_header409
  %n.vec1476 = and i64 %168, -4
  br label %vector.body1470

vector.body1470:                                  ; preds = %vector.body1470, %vector.ph1474
  %index1477 = phi i64 [ 0, %vector.ph1474 ], [ %index.next1478, %vector.body1470 ]
  %170 = shl nuw nsw i64 %index1477, 3
  %171 = getelementptr i8, i8* %scevgep421, i64 %170
  %172 = bitcast i8* %171 to <4 x double>*
  %wide.load1481 = load <4 x double>, <4 x double>* %172, align 8, !alias.scope !86, !noalias !88
  %173 = fmul fast <4 x double> %wide.load1481, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %174 = bitcast i8* %171 to <4 x double>*
  store <4 x double> %173, <4 x double>* %174, align 8, !alias.scope !86, !noalias !88
  %index.next1478 = add i64 %index1477, 4
  %175 = icmp eq i64 %index.next1478, %n.vec1476
  br i1 %175, label %middle.block1468, label %vector.body1470, !llvm.loop !93

middle.block1468:                                 ; preds = %vector.body1470
  %cmp.n1480 = icmp eq i64 %168, %n.vec1476
  br i1 %cmp.n1480, label %polly.loop_exit417, label %polly.loop_header415.preheader

polly.loop_header415.preheader:                   ; preds = %polly.loop_header409, %middle.block1468
  %polly.indvar418.ph = phi i64 [ 0, %polly.loop_header409 ], [ %n.vec1476, %middle.block1468 ]
  br label %polly.loop_header415

polly.loop_exit417:                               ; preds = %polly.loop_header415, %middle.block1468
  %polly.indvar_next413 = add nuw nsw i64 %polly.indvar412, 1
  %exitcond1246.not = icmp eq i64 %polly.indvar_next413, 1200
  %indvar.next1472 = add i64 %indvar1471, 1
  br i1 %exitcond1246.not, label %polly.loop_header425.preheader, label %polly.loop_header409

polly.loop_header425.preheader:                   ; preds = %polly.loop_exit417
  %Packed_MemRef_call1324 = bitcast i8* %malloccall323 to double*
  %Packed_MemRef_call2326 = bitcast i8* %malloccall325 to double*
  br label %polly.loop_header425

polly.loop_header415:                             ; preds = %polly.loop_header415.preheader, %polly.loop_header415
  %polly.indvar418 = phi i64 [ %polly.indvar_next419, %polly.loop_header415 ], [ %polly.indvar418.ph, %polly.loop_header415.preheader ]
  %176 = shl nuw nsw i64 %polly.indvar418, 3
  %scevgep422 = getelementptr i8, i8* %scevgep421, i64 %176
  %scevgep422423 = bitcast i8* %scevgep422 to double*
  %_p_scalar_424 = load double, double* %scevgep422423, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_424, 1.200000e+00
  store double %p_mul.i57, double* %scevgep422423, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next419 = add nuw nsw i64 %polly.indvar418, 1
  %exitcond1245.not = icmp eq i64 %polly.indvar_next419, %polly.indvar412
  br i1 %exitcond1245.not, label %polly.loop_exit417, label %polly.loop_header415, !llvm.loop !94

polly.loop_header425:                             ; preds = %polly.loop_header425.preheader, %polly.loop_exit433
  %indvars.iv1208 = phi i64 [ 0, %polly.loop_header425.preheader ], [ %indvars.iv.next1209, %polly.loop_exit433 ]
  %polly.indvar428 = phi i64 [ 0, %polly.loop_header425.preheader ], [ %polly.indvar_next429, %polly.loop_exit433 ]
  %smin1241 = call i64 @llvm.smin.i64(i64 %indvars.iv1208, i64 -984)
  %177 = add nsw i64 %smin1241, 1000
  %178 = shl nsw i64 %polly.indvar428, 4
  br label %polly.loop_header431

polly.loop_exit433:                               ; preds = %polly.loop_exit456
  %polly.indvar_next429 = add nuw nsw i64 %polly.indvar428, 1
  %indvars.iv.next1209 = add nsw i64 %indvars.iv1208, -16
  %exitcond1244.not = icmp eq i64 %polly.indvar_next429, 63
  br i1 %exitcond1244.not, label %polly.exiting322, label %polly.loop_header425

polly.loop_header431:                             ; preds = %polly.loop_exit456, %polly.loop_header425
  %indvars.iv1233 = phi i64 [ %indvars.iv.next1234, %polly.loop_exit456 ], [ 0, %polly.loop_header425 ]
  %indvars.iv1228 = phi i64 [ %indvars.iv.next1229, %polly.loop_exit456 ], [ 0, %polly.loop_header425 ]
  %indvars.iv1220 = phi i64 [ %indvars.iv.next1221, %polly.loop_exit456 ], [ 0, %polly.loop_header425 ]
  %indvars.iv1218 = phi i64 [ %indvars.iv.next1219, %polly.loop_exit456 ], [ 49, %polly.loop_header425 ]
  %indvars.iv1205 = phi i64 [ %indvars.iv.next1206, %polly.loop_exit456 ], [ 1200, %polly.loop_header425 ]
  %polly.indvar434 = phi i64 [ %polly.indvar_next435, %polly.loop_exit456 ], [ 0, %polly.loop_header425 ]
  %179 = shl nuw nsw i64 %polly.indvar434, 2
  %180 = shl nuw nsw i64 %polly.indvar434, 1
  %181 = udiv i64 %180, 25
  %182 = mul nuw nsw i64 %181, 50
  %183 = sub nsw i64 %179, %182
  %184 = mul nsw i64 %polly.indvar434, -4
  %185 = add i64 %184, %182
  %186 = udiv i64 %indvars.iv1220, 25
  %187 = mul nuw nsw i64 %186, 50
  %188 = sub nsw i64 %indvars.iv1228, %187
  %189 = add i64 %indvars.iv1233, %187
  %190 = add i64 %indvars.iv1218, %187
  %191 = shl nsw i64 %polly.indvar434, 2
  br label %polly.loop_header437

polly.loop_exit439:                               ; preds = %polly.loop_exit445
  %192 = mul nsw i64 %polly.indvar434, -4
  %193 = shl nuw nsw i64 %polly.indvar434, 1
  %pexp.p_div_q453 = udiv i64 %193, 25
  %194 = or i64 %193, 1
  %polly.access.mul.call1477 = mul nsw i64 %polly.indvar434, 4000
  %195 = or i64 %191, 1
  %polly.access.mul.call1477.1 = mul nuw nsw i64 %195, 1000
  %196 = or i64 %191, 2
  %polly.access.mul.call1477.2 = mul nuw nsw i64 %196, 1000
  %197 = or i64 %191, 3
  %polly.access.mul.call1477.3 = mul nuw nsw i64 %197, 1000
  %polly.access.mul.call1477.us1067 = mul nsw i64 %polly.indvar434, 4000
  %198 = or i64 %191, 1
  %polly.access.mul.call1477.us1067.1 = mul nuw nsw i64 %198, 1000
  %199 = or i64 %191, 2
  %polly.access.mul.call1477.us1067.2 = mul nuw nsw i64 %199, 1000
  %200 = or i64 %191, 3
  %polly.access.mul.call1477.us1067.3 = mul nuw nsw i64 %200, 1000
  br label %polly.loop_header454

polly.loop_exit456:                               ; preds = %polly.loop_exit512
  %polly.indvar_next435 = add nuw nsw i64 %polly.indvar434, 1
  %indvars.iv.next1206 = add nsw i64 %indvars.iv1205, -4
  %indvars.iv.next1219 = add nsw i64 %indvars.iv1218, -4
  %indvars.iv.next1221 = add nuw nsw i64 %indvars.iv1220, 2
  %indvars.iv.next1229 = add nuw nsw i64 %indvars.iv1228, 4
  %indvars.iv.next1234 = add nsw i64 %indvars.iv1233, -4
  %exitcond1243.not = icmp eq i64 %polly.indvar_next435, 300
  br i1 %exitcond1243.not, label %polly.loop_exit433, label %polly.loop_header431

polly.loop_header437:                             ; preds = %polly.loop_exit445, %polly.loop_header431
  %polly.indvar440 = phi i64 [ 0, %polly.loop_header431 ], [ %polly.indvar_next441, %polly.loop_exit445 ]
  %201 = add nuw nsw i64 %polly.indvar440, %178
  %polly.access.mul.Packed_MemRef_call2326 = mul nuw nsw i64 %polly.indvar440, 1200
  br label %polly.loop_header443

polly.loop_exit445:                               ; preds = %polly.loop_header443
  %polly.indvar_next441 = add nuw nsw i64 %polly.indvar440, 1
  %exitcond1211.not = icmp eq i64 %polly.indvar_next441, %177
  br i1 %exitcond1211.not, label %polly.loop_exit439, label %polly.loop_header437

polly.loop_header443:                             ; preds = %polly.loop_header443, %polly.loop_header437
  %polly.indvar446 = phi i64 [ 0, %polly.loop_header437 ], [ %polly.indvar_next447, %polly.loop_header443 ]
  %202 = add nuw nsw i64 %polly.indvar446, %191
  %polly.access.mul.call2450 = mul nuw nsw i64 %202, 1000
  %polly.access.add.call2451 = add nuw nsw i64 %201, %polly.access.mul.call2450
  %polly.access.call2452 = getelementptr double, double* %polly.access.cast.call2797, i64 %polly.access.add.call2451
  %polly.access.call2452.load = load double, double* %polly.access.call2452, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2326 = add nuw nsw i64 %polly.indvar446, %polly.access.mul.Packed_MemRef_call2326
  %polly.access.Packed_MemRef_call2326 = getelementptr double, double* %Packed_MemRef_call2326, i64 %polly.access.add.Packed_MemRef_call2326
  store double %polly.access.call2452.load, double* %polly.access.Packed_MemRef_call2326, align 8
  %polly.indvar_next447 = add nuw nsw i64 %polly.indvar446, 1
  %exitcond1207.not = icmp eq i64 %polly.indvar_next447, %indvars.iv1205
  br i1 %exitcond1207.not, label %polly.loop_exit445, label %polly.loop_header443

polly.loop_header454:                             ; preds = %polly.loop_exit512, %polly.loop_exit439
  %indvar1485 = phi i64 [ %indvar.next1486, %polly.loop_exit512 ], [ 0, %polly.loop_exit439 ]
  %indvars.iv1235 = phi i64 [ %indvars.iv.next1236, %polly.loop_exit512 ], [ %189, %polly.loop_exit439 ]
  %indvars.iv1230 = phi i64 [ %indvars.iv.next1231, %polly.loop_exit512 ], [ %188, %polly.loop_exit439 ]
  %indvars.iv1222 = phi i64 [ %indvars.iv.next1223, %polly.loop_exit512 ], [ %190, %polly.loop_exit439 ]
  %polly.indvar457 = phi i64 [ %polly.indvar_next458, %polly.loop_exit512 ], [ %pexp.p_div_q453, %polly.loop_exit439 ]
  %203 = mul nsw i64 %indvar1485, -50
  %204 = add i64 %183, %203
  %smax1487 = call i64 @llvm.smax.i64(i64 %204, i64 0)
  %205 = mul nuw nsw i64 %indvar1485, 50
  %206 = add i64 %185, %205
  %207 = add i64 %smax1487, %206
  %smax1232 = call i64 @llvm.smax.i64(i64 %indvars.iv1230, i64 0)
  %208 = add i64 %smax1232, %indvars.iv1235
  %smax1224 = call i64 @llvm.smax.i64(i64 %indvars.iv1222, i64 0)
  %209 = mul nuw nsw i64 %polly.indvar457, 25
  %.not989 = icmp ult i64 %209, %194
  %210 = mul nuw nsw i64 %polly.indvar457, 50
  %211 = add nsw i64 %210, %192
  %212 = icmp sgt i64 %211, 4
  %213 = select i1 %212, i64 %211, i64 4
  %214 = add nsw i64 %211, 49
  %polly.loop_guard499 = icmp sgt i64 %211, -50
  br i1 %.not989, label %polly.loop_header460.us, label %polly.loop_header454.split

polly.loop_header460.us:                          ; preds = %polly.loop_header454, %polly.merge467.us
  %polly.indvar463.us = phi i64 [ %polly.indvar_next464.us, %polly.merge467.us ], [ 0, %polly.loop_header454 ]
  br i1 %polly.loop_guard499, label %polly.loop_header496.preheader.us, label %polly.merge467.us

polly.loop_header496.us:                          ; preds = %polly.loop_header496.preheader.us, %polly.loop_header496.us
  %polly.indvar500.us = phi i64 [ %polly.indvar_next501.us, %polly.loop_header496.us ], [ 0, %polly.loop_header496.preheader.us ]
  %215 = add nuw nsw i64 %polly.indvar500.us, %191
  %polly.access.mul.call1504.us = mul nuw nsw i64 %215, 1000
  %polly.access.add.call1505.us = add nuw nsw i64 %216, %polly.access.mul.call1504.us
  %polly.access.call1506.us = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1505.us
  %polly.access.call1506.load.us = load double, double* %polly.access.call1506.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1324508.us = add nuw nsw i64 %polly.indvar500.us, %polly.access.mul.Packed_MemRef_call1324507.us
  %polly.access.Packed_MemRef_call1324509.us = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call1324508.us
  store double %polly.access.call1506.load.us, double* %polly.access.Packed_MemRef_call1324509.us, align 8
  %polly.indvar_next501.us = add nuw nsw i64 %polly.indvar500.us, 1
  %exitcond1225.not = icmp eq i64 %polly.indvar500.us, %smax1224
  br i1 %exitcond1225.not, label %polly.merge467.us, label %polly.loop_header496.us

polly.merge467.us:                                ; preds = %polly.loop_header496.us, %polly.loop_header460.us
  %polly.indvar_next464.us = add nuw nsw i64 %polly.indvar463.us, 1
  %exitcond1227.not = icmp eq i64 %polly.indvar_next464.us, %177
  br i1 %exitcond1227.not, label %polly.loop_header510.preheader, label %polly.loop_header460.us

polly.loop_header496.preheader.us:                ; preds = %polly.loop_header460.us
  %216 = add nuw nsw i64 %polly.indvar463.us, %178
  %polly.access.mul.Packed_MemRef_call1324507.us = mul nuw nsw i64 %polly.indvar463.us, 1200
  br label %polly.loop_header496.us

polly.loop_header454.split:                       ; preds = %polly.loop_header454
  %polly.loop_guard484.not = icmp sgt i64 %213, %214
  br i1 %polly.loop_guard484.not, label %polly.loop_header460.us1063, label %polly.loop_header460

polly.loop_header460.us1063:                      ; preds = %polly.loop_header454.split, %polly.loop_header460.us1063
  %polly.indvar463.us1064 = phi i64 [ %polly.indvar_next464.us1100, %polly.loop_header460.us1063 ], [ 0, %polly.loop_header454.split ]
  %217 = add nuw nsw i64 %polly.indvar463.us1064, %178
  %polly.access.mul.Packed_MemRef_call1324.us1108 = mul nuw nsw i64 %polly.indvar463.us1064, 1200
  %polly.access.add.call1478.us1068 = add nuw nsw i64 %polly.access.mul.call1477.us1067, %217
  %polly.access.call1479.us1069 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1478.us1068
  %polly.access.call1479.load.us1070 = load double, double* %polly.access.call1479.us1069, align 8, !alias.scope !89, !noalias !96
  %polly.access.Packed_MemRef_call1324.us1072 = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.mul.Packed_MemRef_call1324.us1108
  store double %polly.access.call1479.load.us1070, double* %polly.access.Packed_MemRef_call1324.us1072, align 8
  %polly.access.add.call1478.us1068.1 = add nuw nsw i64 %polly.access.mul.call1477.us1067.1, %217
  %polly.access.call1479.us1069.1 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1478.us1068.1
  %polly.access.call1479.load.us1070.1 = load double, double* %polly.access.call1479.us1069.1, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1324.us1071.1 = or i64 %polly.access.mul.Packed_MemRef_call1324.us1108, 1
  %polly.access.Packed_MemRef_call1324.us1072.1 = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call1324.us1071.1
  store double %polly.access.call1479.load.us1070.1, double* %polly.access.Packed_MemRef_call1324.us1072.1, align 8
  %polly.access.add.call1478.us1068.2 = add nuw nsw i64 %polly.access.mul.call1477.us1067.2, %217
  %polly.access.call1479.us1069.2 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1478.us1068.2
  %polly.access.call1479.load.us1070.2 = load double, double* %polly.access.call1479.us1069.2, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1324.us1071.2 = or i64 %polly.access.mul.Packed_MemRef_call1324.us1108, 2
  %polly.access.Packed_MemRef_call1324.us1072.2 = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call1324.us1071.2
  store double %polly.access.call1479.load.us1070.2, double* %polly.access.Packed_MemRef_call1324.us1072.2, align 8
  %polly.access.add.call1478.us1068.3 = add nuw nsw i64 %polly.access.mul.call1477.us1067.3, %217
  %polly.access.call1479.us1069.3 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1478.us1068.3
  %polly.access.call1479.load.us1070.3 = load double, double* %polly.access.call1479.us1069.3, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1324.us1071.3 = or i64 %polly.access.mul.Packed_MemRef_call1324.us1108, 3
  %polly.access.Packed_MemRef_call1324.us1072.3 = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call1324.us1071.3
  store double %polly.access.call1479.load.us1070.3, double* %polly.access.Packed_MemRef_call1324.us1072.3, align 8
  %polly.indvar_next464.us1100 = add nuw nsw i64 %polly.indvar463.us1064, 1
  %exitcond1217.not = icmp eq i64 %polly.indvar_next464.us1100, %177
  br i1 %exitcond1217.not, label %polly.loop_header510.preheader, label %polly.loop_header460.us1063

polly.loop_exit512:                               ; preds = %polly.loop_exit519.loopexit.us, %polly.loop_header510.preheader
  %polly.indvar_next458 = add nuw nsw i64 %polly.indvar457, 1
  %polly.loop_cond459 = icmp ult i64 %polly.indvar457, 23
  %indvars.iv.next1223 = add i64 %indvars.iv1222, 50
  %indvars.iv.next1231 = add i64 %indvars.iv1230, -50
  %indvars.iv.next1236 = add i64 %indvars.iv1235, 50
  %indvar.next1486 = add i64 %indvar1485, 1
  br i1 %polly.loop_cond459, label %polly.loop_header454, label %polly.loop_exit456

polly.loop_header460:                             ; preds = %polly.loop_header454.split, %polly.merge467
  %polly.indvar463 = phi i64 [ %polly.indvar_next464, %polly.merge467 ], [ 0, %polly.loop_header454.split ]
  %218 = add nuw nsw i64 %polly.indvar463, %178
  %polly.access.mul.Packed_MemRef_call1324 = mul nuw nsw i64 %polly.indvar463, 1200
  %polly.access.add.call1478 = add nuw nsw i64 %polly.access.mul.call1477, %218
  %polly.access.call1479 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1478
  %polly.access.call1479.load = load double, double* %polly.access.call1479, align 8, !alias.scope !89, !noalias !96
  %polly.access.Packed_MemRef_call1324 = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.mul.Packed_MemRef_call1324
  store double %polly.access.call1479.load, double* %polly.access.Packed_MemRef_call1324, align 8
  %polly.access.add.call1478.1 = add nuw nsw i64 %polly.access.mul.call1477.1, %218
  %polly.access.call1479.1 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1478.1
  %polly.access.call1479.load.1 = load double, double* %polly.access.call1479.1, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1324.1 = or i64 %polly.access.mul.Packed_MemRef_call1324, 1
  %polly.access.Packed_MemRef_call1324.1 = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call1324.1
  store double %polly.access.call1479.load.1, double* %polly.access.Packed_MemRef_call1324.1, align 8
  %polly.access.add.call1478.2 = add nuw nsw i64 %polly.access.mul.call1477.2, %218
  %polly.access.call1479.2 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1478.2
  %polly.access.call1479.load.2 = load double, double* %polly.access.call1479.2, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1324.2 = or i64 %polly.access.mul.Packed_MemRef_call1324, 2
  %polly.access.Packed_MemRef_call1324.2 = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call1324.2
  store double %polly.access.call1479.load.2, double* %polly.access.Packed_MemRef_call1324.2, align 8
  %polly.access.add.call1478.3 = add nuw nsw i64 %polly.access.mul.call1477.3, %218
  %polly.access.call1479.3 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1478.3
  %polly.access.call1479.load.3 = load double, double* %polly.access.call1479.3, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1324.3 = or i64 %polly.access.mul.Packed_MemRef_call1324, 3
  %polly.access.Packed_MemRef_call1324.3 = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call1324.3
  store double %polly.access.call1479.load.3, double* %polly.access.Packed_MemRef_call1324.3, align 8
  br label %polly.loop_header481

polly.merge467:                                   ; preds = %polly.loop_header481
  %polly.indvar_next464 = add nuw nsw i64 %polly.indvar463, 1
  %exitcond1214.not = icmp eq i64 %polly.indvar_next464, %177
  br i1 %exitcond1214.not, label %polly.loop_header510.preheader, label %polly.loop_header460

polly.loop_header510.preheader:                   ; preds = %polly.merge467, %polly.loop_header460.us1063, %polly.merge467.us
  %219 = sub nsw i64 %191, %210
  %220 = icmp sgt i64 %219, 0
  %221 = select i1 %220, i64 %219, i64 0
  %polly.loop_guard520 = icmp slt i64 %221, 50
  br i1 %polly.loop_guard520, label %polly.loop_header510.us, label %polly.loop_exit512

polly.loop_header510.us:                          ; preds = %polly.loop_header510.preheader, %polly.loop_exit519.loopexit.us
  %polly.indvar513.us = phi i64 [ %polly.indvar_next514.us, %polly.loop_exit519.loopexit.us ], [ 0, %polly.loop_header510.preheader ]
  %polly.access.mul.Packed_MemRef_call1324532.us = mul nuw nsw i64 %polly.indvar513.us, 1200
  br label %polly.loop_header517.us

polly.loop_header517.us:                          ; preds = %polly.loop_header510.us, %polly.loop_exit527.us
  %indvar1488 = phi i64 [ 0, %polly.loop_header510.us ], [ %indvar.next1489, %polly.loop_exit527.us ]
  %indvars.iv1237 = phi i64 [ %208, %polly.loop_header510.us ], [ %indvars.iv.next1238, %polly.loop_exit527.us ]
  %polly.indvar521.us = phi i64 [ %221, %polly.loop_header510.us ], [ %polly.indvar_next522.us, %polly.loop_exit527.us ]
  %222 = add i64 %207, %indvar1488
  %smin1490 = call i64 @llvm.smin.i64(i64 %222, i64 3)
  %223 = add nsw i64 %smin1490, 1
  %smin1239 = call i64 @llvm.smin.i64(i64 %indvars.iv1237, i64 3)
  %224 = add nuw i64 %polly.indvar521.us, %210
  %225 = add i64 %224, %192
  %polly.loop_guard528.us1327 = icmp sgt i64 %225, -1
  br i1 %polly.loop_guard528.us1327, label %polly.loop_header525.preheader.us, label %polly.loop_exit527.us

polly.loop_header525.us:                          ; preds = %polly.loop_header525.us.preheader, %polly.loop_header525.us
  %polly.indvar529.us = phi i64 [ %polly.indvar_next530.us, %polly.loop_header525.us ], [ %polly.indvar529.us.ph, %polly.loop_header525.us.preheader ]
  %226 = add nuw nsw i64 %polly.indvar529.us, %191
  %polly.access.add.Packed_MemRef_call1324533.us = add nuw nsw i64 %polly.indvar529.us, %polly.access.mul.Packed_MemRef_call1324532.us
  %polly.access.Packed_MemRef_call1324534.us = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call1324533.us
  %_p_scalar_535.us = load double, double* %polly.access.Packed_MemRef_call1324534.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_539.us, %_p_scalar_535.us
  %polly.access.Packed_MemRef_call2326542.us = getelementptr double, double* %Packed_MemRef_call2326, i64 %polly.access.add.Packed_MemRef_call1324533.us
  %_p_scalar_543.us = load double, double* %polly.access.Packed_MemRef_call2326542.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_547.us, %_p_scalar_543.us
  %227 = shl i64 %226, 3
  %228 = add i64 %227, %229
  %scevgep548.us = getelementptr i8, i8* %call, i64 %228
  %scevgep548549.us = bitcast i8* %scevgep548.us to double*
  %_p_scalar_550.us = load double, double* %scevgep548549.us, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_550.us
  store double %p_add42.i79.us, double* %scevgep548549.us, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next530.us = add nuw nsw i64 %polly.indvar529.us, 1
  %exitcond1240.not = icmp eq i64 %polly.indvar529.us, %smin1239
  br i1 %exitcond1240.not, label %polly.loop_exit527.us, label %polly.loop_header525.us, !llvm.loop !97

polly.loop_exit527.us:                            ; preds = %polly.loop_header525.us, %middle.block1482, %polly.loop_header517.us
  %polly.indvar_next522.us = add nuw nsw i64 %polly.indvar521.us, 1
  %polly.loop_cond523.us = icmp ult i64 %polly.indvar521.us, 49
  %indvars.iv.next1238 = add i64 %indvars.iv1237, 1
  %indvar.next1489 = add i64 %indvar1488, 1
  br i1 %polly.loop_cond523.us, label %polly.loop_header517.us, label %polly.loop_exit519.loopexit.us

polly.loop_header525.preheader.us:                ; preds = %polly.loop_header517.us
  %polly.access.add.Packed_MemRef_call2326537.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1324532.us, %225
  %polly.access.Packed_MemRef_call2326538.us = getelementptr double, double* %Packed_MemRef_call2326, i64 %polly.access.add.Packed_MemRef_call2326537.us
  %_p_scalar_539.us = load double, double* %polly.access.Packed_MemRef_call2326538.us, align 8
  %polly.access.Packed_MemRef_call1324546.us = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call2326537.us
  %_p_scalar_547.us = load double, double* %polly.access.Packed_MemRef_call1324546.us, align 8
  %229 = mul i64 %224, 9600
  %min.iters.check1491 = icmp ult i64 %223, 4
  br i1 %min.iters.check1491, label %polly.loop_header525.us.preheader, label %vector.ph1492

vector.ph1492:                                    ; preds = %polly.loop_header525.preheader.us
  %n.vec1494 = and i64 %223, -4
  %broadcast.splatinsert1500 = insertelement <4 x double> poison, double %_p_scalar_539.us, i32 0
  %broadcast.splat1501 = shufflevector <4 x double> %broadcast.splatinsert1500, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1503 = insertelement <4 x double> poison, double %_p_scalar_547.us, i32 0
  %broadcast.splat1504 = shufflevector <4 x double> %broadcast.splatinsert1503, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1484

vector.body1484:                                  ; preds = %vector.body1484, %vector.ph1492
  %index1495 = phi i64 [ 0, %vector.ph1492 ], [ %index.next1496, %vector.body1484 ]
  %230 = add nuw nsw i64 %index1495, %191
  %231 = add nuw nsw i64 %index1495, %polly.access.mul.Packed_MemRef_call1324532.us
  %232 = getelementptr double, double* %Packed_MemRef_call1324, i64 %231
  %233 = bitcast double* %232 to <4 x double>*
  %wide.load1499 = load <4 x double>, <4 x double>* %233, align 8
  %234 = fmul fast <4 x double> %broadcast.splat1501, %wide.load1499
  %235 = getelementptr double, double* %Packed_MemRef_call2326, i64 %231
  %236 = bitcast double* %235 to <4 x double>*
  %wide.load1502 = load <4 x double>, <4 x double>* %236, align 8
  %237 = fmul fast <4 x double> %broadcast.splat1504, %wide.load1502
  %238 = shl i64 %230, 3
  %239 = add i64 %238, %229
  %240 = getelementptr i8, i8* %call, i64 %239
  %241 = bitcast i8* %240 to <4 x double>*
  %wide.load1505 = load <4 x double>, <4 x double>* %241, align 8, !alias.scope !86, !noalias !88
  %242 = fadd fast <4 x double> %237, %234
  %243 = fmul fast <4 x double> %242, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %244 = fadd fast <4 x double> %243, %wide.load1505
  %245 = bitcast i8* %240 to <4 x double>*
  store <4 x double> %244, <4 x double>* %245, align 8, !alias.scope !86, !noalias !88
  %index.next1496 = add i64 %index1495, 4
  %246 = icmp eq i64 %index.next1496, %n.vec1494
  br i1 %246, label %middle.block1482, label %vector.body1484, !llvm.loop !98

middle.block1482:                                 ; preds = %vector.body1484
  %cmp.n1498 = icmp eq i64 %223, %n.vec1494
  br i1 %cmp.n1498, label %polly.loop_exit527.us, label %polly.loop_header525.us.preheader

polly.loop_header525.us.preheader:                ; preds = %polly.loop_header525.preheader.us, %middle.block1482
  %polly.indvar529.us.ph = phi i64 [ 0, %polly.loop_header525.preheader.us ], [ %n.vec1494, %middle.block1482 ]
  br label %polly.loop_header525.us

polly.loop_exit519.loopexit.us:                   ; preds = %polly.loop_exit527.us
  %polly.indvar_next514.us = add nuw nsw i64 %polly.indvar513.us, 1
  %exitcond1242.not = icmp eq i64 %polly.indvar_next514.us, %177
  br i1 %exitcond1242.not, label %polly.loop_exit512, label %polly.loop_header510.us

polly.loop_header481:                             ; preds = %polly.loop_header460, %polly.loop_header481
  %polly.indvar485 = phi i64 [ %polly.indvar_next486, %polly.loop_header481 ], [ %213, %polly.loop_header460 ]
  %247 = add nuw nsw i64 %polly.indvar485, %191
  %polly.access.mul.call1489 = mul nsw i64 %247, 1000
  %polly.access.add.call1490 = add nuw nsw i64 %polly.access.mul.call1489, %218
  %polly.access.call1491 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1490
  %polly.access.call1491.load = load double, double* %polly.access.call1491, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1324493 = add nuw nsw i64 %polly.indvar485, %polly.access.mul.Packed_MemRef_call1324
  %polly.access.Packed_MemRef_call1324494 = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call1324493
  store double %polly.access.call1491.load, double* %polly.access.Packed_MemRef_call1324494, align 8
  %polly.indvar_next486 = add nuw nsw i64 %polly.indvar485, 1
  %polly.loop_cond487.not.not = icmp slt i64 %polly.indvar485, %214
  br i1 %polly.loop_cond487.not.not, label %polly.loop_header481, label %polly.merge467

polly.start553:                                   ; preds = %init_array.exit
  %malloccall555 = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  %malloccall557 = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  br label %polly.loop_header641

polly.exiting554:                                 ; preds = %polly.loop_exit665
  tail call void @free(i8* %malloccall555)
  tail call void @free(i8* %malloccall557)
  br label %kernel_syr2k.exit

polly.loop_header641:                             ; preds = %polly.loop_exit649, %polly.start553
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit649 ], [ 0, %polly.start553 ]
  %polly.indvar644 = phi i64 [ %polly.indvar_next645, %polly.loop_exit649 ], [ 1, %polly.start553 ]
  %248 = add i64 %indvar, 1
  %249 = mul nuw nsw i64 %polly.indvar644, 9600
  %scevgep653 = getelementptr i8, i8* %call, i64 %249
  %min.iters.check1423 = icmp ult i64 %248, 4
  br i1 %min.iters.check1423, label %polly.loop_header647.preheader, label %vector.ph1424

vector.ph1424:                                    ; preds = %polly.loop_header641
  %n.vec1426 = and i64 %248, -4
  br label %vector.body1422

vector.body1422:                                  ; preds = %vector.body1422, %vector.ph1424
  %index1427 = phi i64 [ 0, %vector.ph1424 ], [ %index.next1428, %vector.body1422 ]
  %250 = shl nuw nsw i64 %index1427, 3
  %251 = getelementptr i8, i8* %scevgep653, i64 %250
  %252 = bitcast i8* %251 to <4 x double>*
  %wide.load1431 = load <4 x double>, <4 x double>* %252, align 8, !alias.scope !99, !noalias !101
  %253 = fmul fast <4 x double> %wide.load1431, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %254 = bitcast i8* %251 to <4 x double>*
  store <4 x double> %253, <4 x double>* %254, align 8, !alias.scope !99, !noalias !101
  %index.next1428 = add i64 %index1427, 4
  %255 = icmp eq i64 %index.next1428, %n.vec1426
  br i1 %255, label %middle.block1420, label %vector.body1422, !llvm.loop !106

middle.block1420:                                 ; preds = %vector.body1422
  %cmp.n1430 = icmp eq i64 %248, %n.vec1426
  br i1 %cmp.n1430, label %polly.loop_exit649, label %polly.loop_header647.preheader

polly.loop_header647.preheader:                   ; preds = %polly.loop_header641, %middle.block1420
  %polly.indvar650.ph = phi i64 [ 0, %polly.loop_header641 ], [ %n.vec1426, %middle.block1420 ]
  br label %polly.loop_header647

polly.loop_exit649:                               ; preds = %polly.loop_header647, %middle.block1420
  %polly.indvar_next645 = add nuw nsw i64 %polly.indvar644, 1
  %exitcond1288.not = icmp eq i64 %polly.indvar_next645, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1288.not, label %polly.loop_header657.preheader, label %polly.loop_header641

polly.loop_header657.preheader:                   ; preds = %polly.loop_exit649
  %Packed_MemRef_call1556 = bitcast i8* %malloccall555 to double*
  %Packed_MemRef_call2558 = bitcast i8* %malloccall557 to double*
  br label %polly.loop_header657

polly.loop_header647:                             ; preds = %polly.loop_header647.preheader, %polly.loop_header647
  %polly.indvar650 = phi i64 [ %polly.indvar_next651, %polly.loop_header647 ], [ %polly.indvar650.ph, %polly.loop_header647.preheader ]
  %256 = shl nuw nsw i64 %polly.indvar650, 3
  %scevgep654 = getelementptr i8, i8* %scevgep653, i64 %256
  %scevgep654655 = bitcast i8* %scevgep654 to double*
  %_p_scalar_656 = load double, double* %scevgep654655, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_656, 1.200000e+00
  store double %p_mul.i, double* %scevgep654655, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next651 = add nuw nsw i64 %polly.indvar650, 1
  %exitcond1287.not = icmp eq i64 %polly.indvar_next651, %polly.indvar644
  br i1 %exitcond1287.not, label %polly.loop_exit649, label %polly.loop_header647, !llvm.loop !107

polly.loop_header657:                             ; preds = %polly.loop_header657.preheader, %polly.loop_exit665
  %indvars.iv1250 = phi i64 [ 0, %polly.loop_header657.preheader ], [ %indvars.iv.next1251, %polly.loop_exit665 ]
  %polly.indvar660 = phi i64 [ 0, %polly.loop_header657.preheader ], [ %polly.indvar_next661, %polly.loop_exit665 ]
  %smin1283 = call i64 @llvm.smin.i64(i64 %indvars.iv1250, i64 -984)
  %257 = add nsw i64 %smin1283, 1000
  %258 = shl nsw i64 %polly.indvar660, 4
  br label %polly.loop_header663

polly.loop_exit665:                               ; preds = %polly.loop_exit688
  %polly.indvar_next661 = add nuw nsw i64 %polly.indvar660, 1
  %indvars.iv.next1251 = add nsw i64 %indvars.iv1250, -16
  %exitcond1286.not = icmp eq i64 %polly.indvar_next661, 63
  br i1 %exitcond1286.not, label %polly.exiting554, label %polly.loop_header657

polly.loop_header663:                             ; preds = %polly.loop_exit688, %polly.loop_header657
  %indvars.iv1275 = phi i64 [ %indvars.iv.next1276, %polly.loop_exit688 ], [ 0, %polly.loop_header657 ]
  %indvars.iv1270 = phi i64 [ %indvars.iv.next1271, %polly.loop_exit688 ], [ 0, %polly.loop_header657 ]
  %indvars.iv1262 = phi i64 [ %indvars.iv.next1263, %polly.loop_exit688 ], [ 0, %polly.loop_header657 ]
  %indvars.iv1260 = phi i64 [ %indvars.iv.next1261, %polly.loop_exit688 ], [ 49, %polly.loop_header657 ]
  %indvars.iv1247 = phi i64 [ %indvars.iv.next1248, %polly.loop_exit688 ], [ 1200, %polly.loop_header657 ]
  %polly.indvar666 = phi i64 [ %polly.indvar_next667, %polly.loop_exit688 ], [ 0, %polly.loop_header657 ]
  %259 = shl nuw nsw i64 %polly.indvar666, 2
  %260 = shl nuw nsw i64 %polly.indvar666, 1
  %261 = udiv i64 %260, 25
  %262 = mul nuw nsw i64 %261, 50
  %263 = sub nsw i64 %259, %262
  %264 = mul nsw i64 %polly.indvar666, -4
  %265 = add i64 %264, %262
  %266 = udiv i64 %indvars.iv1262, 25
  %267 = mul nuw nsw i64 %266, 50
  %268 = sub nsw i64 %indvars.iv1270, %267
  %269 = add i64 %indvars.iv1275, %267
  %270 = add i64 %indvars.iv1260, %267
  %271 = shl nsw i64 %polly.indvar666, 2
  br label %polly.loop_header669

polly.loop_exit671:                               ; preds = %polly.loop_exit677
  %272 = mul nsw i64 %polly.indvar666, -4
  %273 = shl nuw nsw i64 %polly.indvar666, 1
  %pexp.p_div_q685 = udiv i64 %273, 25
  %274 = or i64 %273, 1
  %polly.access.mul.call1709 = mul nsw i64 %polly.indvar666, 4000
  %275 = or i64 %271, 1
  %polly.access.mul.call1709.1 = mul nuw nsw i64 %275, 1000
  %276 = or i64 %271, 2
  %polly.access.mul.call1709.2 = mul nuw nsw i64 %276, 1000
  %277 = or i64 %271, 3
  %polly.access.mul.call1709.3 = mul nuw nsw i64 %277, 1000
  %polly.access.mul.call1709.us1113 = mul nsw i64 %polly.indvar666, 4000
  %278 = or i64 %271, 1
  %polly.access.mul.call1709.us1113.1 = mul nuw nsw i64 %278, 1000
  %279 = or i64 %271, 2
  %polly.access.mul.call1709.us1113.2 = mul nuw nsw i64 %279, 1000
  %280 = or i64 %271, 3
  %polly.access.mul.call1709.us1113.3 = mul nuw nsw i64 %280, 1000
  br label %polly.loop_header686

polly.loop_exit688:                               ; preds = %polly.loop_exit744
  %polly.indvar_next667 = add nuw nsw i64 %polly.indvar666, 1
  %indvars.iv.next1248 = add nsw i64 %indvars.iv1247, -4
  %indvars.iv.next1261 = add nsw i64 %indvars.iv1260, -4
  %indvars.iv.next1263 = add nuw nsw i64 %indvars.iv1262, 2
  %indvars.iv.next1271 = add nuw nsw i64 %indvars.iv1270, 4
  %indvars.iv.next1276 = add nsw i64 %indvars.iv1275, -4
  %exitcond1285.not = icmp eq i64 %polly.indvar_next667, 300
  br i1 %exitcond1285.not, label %polly.loop_exit665, label %polly.loop_header663

polly.loop_header669:                             ; preds = %polly.loop_exit677, %polly.loop_header663
  %polly.indvar672 = phi i64 [ 0, %polly.loop_header663 ], [ %polly.indvar_next673, %polly.loop_exit677 ]
  %281 = add nuw nsw i64 %polly.indvar672, %258
  %polly.access.mul.Packed_MemRef_call2558 = mul nuw nsw i64 %polly.indvar672, 1200
  br label %polly.loop_header675

polly.loop_exit677:                               ; preds = %polly.loop_header675
  %polly.indvar_next673 = add nuw nsw i64 %polly.indvar672, 1
  %exitcond1253.not = icmp eq i64 %polly.indvar_next673, %257
  br i1 %exitcond1253.not, label %polly.loop_exit671, label %polly.loop_header669

polly.loop_header675:                             ; preds = %polly.loop_header675, %polly.loop_header669
  %polly.indvar678 = phi i64 [ 0, %polly.loop_header669 ], [ %polly.indvar_next679, %polly.loop_header675 ]
  %282 = add nuw nsw i64 %polly.indvar678, %271
  %polly.access.mul.call2682 = mul nuw nsw i64 %282, 1000
  %polly.access.add.call2683 = add nuw nsw i64 %281, %polly.access.mul.call2682
  %polly.access.call2684 = getelementptr double, double* %polly.access.cast.call2797, i64 %polly.access.add.call2683
  %polly.access.call2684.load = load double, double* %polly.access.call2684, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2558 = add nuw nsw i64 %polly.indvar678, %polly.access.mul.Packed_MemRef_call2558
  %polly.access.Packed_MemRef_call2558 = getelementptr double, double* %Packed_MemRef_call2558, i64 %polly.access.add.Packed_MemRef_call2558
  store double %polly.access.call2684.load, double* %polly.access.Packed_MemRef_call2558, align 8
  %polly.indvar_next679 = add nuw nsw i64 %polly.indvar678, 1
  %exitcond1249.not = icmp eq i64 %polly.indvar_next679, %indvars.iv1247
  br i1 %exitcond1249.not, label %polly.loop_exit677, label %polly.loop_header675

polly.loop_header686:                             ; preds = %polly.loop_exit744, %polly.loop_exit671
  %indvar1435 = phi i64 [ %indvar.next1436, %polly.loop_exit744 ], [ 0, %polly.loop_exit671 ]
  %indvars.iv1277 = phi i64 [ %indvars.iv.next1278, %polly.loop_exit744 ], [ %269, %polly.loop_exit671 ]
  %indvars.iv1272 = phi i64 [ %indvars.iv.next1273, %polly.loop_exit744 ], [ %268, %polly.loop_exit671 ]
  %indvars.iv1264 = phi i64 [ %indvars.iv.next1265, %polly.loop_exit744 ], [ %270, %polly.loop_exit671 ]
  %polly.indvar689 = phi i64 [ %polly.indvar_next690, %polly.loop_exit744 ], [ %pexp.p_div_q685, %polly.loop_exit671 ]
  %283 = mul nsw i64 %indvar1435, -50
  %284 = add i64 %263, %283
  %smax1437 = call i64 @llvm.smax.i64(i64 %284, i64 0)
  %285 = mul nuw nsw i64 %indvar1435, 50
  %286 = add i64 %265, %285
  %287 = add i64 %smax1437, %286
  %smax1274 = call i64 @llvm.smax.i64(i64 %indvars.iv1272, i64 0)
  %288 = add i64 %smax1274, %indvars.iv1277
  %smax1266 = call i64 @llvm.smax.i64(i64 %indvars.iv1264, i64 0)
  %289 = mul nuw nsw i64 %polly.indvar689, 25
  %.not990 = icmp ult i64 %289, %274
  %290 = mul nuw nsw i64 %polly.indvar689, 50
  %291 = add nsw i64 %290, %272
  %292 = icmp sgt i64 %291, 4
  %293 = select i1 %292, i64 %291, i64 4
  %294 = add nsw i64 %291, 49
  %polly.loop_guard731 = icmp sgt i64 %291, -50
  br i1 %.not990, label %polly.loop_header692.us, label %polly.loop_header686.split

polly.loop_header692.us:                          ; preds = %polly.loop_header686, %polly.merge699.us
  %polly.indvar695.us = phi i64 [ %polly.indvar_next696.us, %polly.merge699.us ], [ 0, %polly.loop_header686 ]
  br i1 %polly.loop_guard731, label %polly.loop_header728.preheader.us, label %polly.merge699.us

polly.loop_header728.us:                          ; preds = %polly.loop_header728.preheader.us, %polly.loop_header728.us
  %polly.indvar732.us = phi i64 [ %polly.indvar_next733.us, %polly.loop_header728.us ], [ 0, %polly.loop_header728.preheader.us ]
  %295 = add nuw nsw i64 %polly.indvar732.us, %271
  %polly.access.mul.call1736.us = mul nuw nsw i64 %295, 1000
  %polly.access.add.call1737.us = add nuw nsw i64 %296, %polly.access.mul.call1736.us
  %polly.access.call1738.us = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1737.us
  %polly.access.call1738.load.us = load double, double* %polly.access.call1738.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1556740.us = add nuw nsw i64 %polly.indvar732.us, %polly.access.mul.Packed_MemRef_call1556739.us
  %polly.access.Packed_MemRef_call1556741.us = getelementptr double, double* %Packed_MemRef_call1556, i64 %polly.access.add.Packed_MemRef_call1556740.us
  store double %polly.access.call1738.load.us, double* %polly.access.Packed_MemRef_call1556741.us, align 8
  %polly.indvar_next733.us = add nuw nsw i64 %polly.indvar732.us, 1
  %exitcond1267.not = icmp eq i64 %polly.indvar732.us, %smax1266
  br i1 %exitcond1267.not, label %polly.merge699.us, label %polly.loop_header728.us

polly.merge699.us:                                ; preds = %polly.loop_header728.us, %polly.loop_header692.us
  %polly.indvar_next696.us = add nuw nsw i64 %polly.indvar695.us, 1
  %exitcond1269.not = icmp eq i64 %polly.indvar_next696.us, %257
  br i1 %exitcond1269.not, label %polly.loop_header742.preheader, label %polly.loop_header692.us

polly.loop_header728.preheader.us:                ; preds = %polly.loop_header692.us
  %296 = add nuw nsw i64 %polly.indvar695.us, %258
  %polly.access.mul.Packed_MemRef_call1556739.us = mul nuw nsw i64 %polly.indvar695.us, 1200
  br label %polly.loop_header728.us

polly.loop_header686.split:                       ; preds = %polly.loop_header686
  %polly.loop_guard716.not = icmp sgt i64 %293, %294
  br i1 %polly.loop_guard716.not, label %polly.loop_header692.us1109, label %polly.loop_header692

polly.loop_header692.us1109:                      ; preds = %polly.loop_header686.split, %polly.loop_header692.us1109
  %polly.indvar695.us1110 = phi i64 [ %polly.indvar_next696.us1146, %polly.loop_header692.us1109 ], [ 0, %polly.loop_header686.split ]
  %297 = add nuw nsw i64 %polly.indvar695.us1110, %258
  %polly.access.mul.Packed_MemRef_call1556.us1154 = mul nuw nsw i64 %polly.indvar695.us1110, 1200
  %polly.access.add.call1710.us1114 = add nuw nsw i64 %polly.access.mul.call1709.us1113, %297
  %polly.access.call1711.us1115 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1710.us1114
  %polly.access.call1711.load.us1116 = load double, double* %polly.access.call1711.us1115, align 8, !alias.scope !102, !noalias !109
  %polly.access.Packed_MemRef_call1556.us1118 = getelementptr double, double* %Packed_MemRef_call1556, i64 %polly.access.mul.Packed_MemRef_call1556.us1154
  store double %polly.access.call1711.load.us1116, double* %polly.access.Packed_MemRef_call1556.us1118, align 8
  %polly.access.add.call1710.us1114.1 = add nuw nsw i64 %polly.access.mul.call1709.us1113.1, %297
  %polly.access.call1711.us1115.1 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1710.us1114.1
  %polly.access.call1711.load.us1116.1 = load double, double* %polly.access.call1711.us1115.1, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1556.us1117.1 = or i64 %polly.access.mul.Packed_MemRef_call1556.us1154, 1
  %polly.access.Packed_MemRef_call1556.us1118.1 = getelementptr double, double* %Packed_MemRef_call1556, i64 %polly.access.add.Packed_MemRef_call1556.us1117.1
  store double %polly.access.call1711.load.us1116.1, double* %polly.access.Packed_MemRef_call1556.us1118.1, align 8
  %polly.access.add.call1710.us1114.2 = add nuw nsw i64 %polly.access.mul.call1709.us1113.2, %297
  %polly.access.call1711.us1115.2 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1710.us1114.2
  %polly.access.call1711.load.us1116.2 = load double, double* %polly.access.call1711.us1115.2, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1556.us1117.2 = or i64 %polly.access.mul.Packed_MemRef_call1556.us1154, 2
  %polly.access.Packed_MemRef_call1556.us1118.2 = getelementptr double, double* %Packed_MemRef_call1556, i64 %polly.access.add.Packed_MemRef_call1556.us1117.2
  store double %polly.access.call1711.load.us1116.2, double* %polly.access.Packed_MemRef_call1556.us1118.2, align 8
  %polly.access.add.call1710.us1114.3 = add nuw nsw i64 %polly.access.mul.call1709.us1113.3, %297
  %polly.access.call1711.us1115.3 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1710.us1114.3
  %polly.access.call1711.load.us1116.3 = load double, double* %polly.access.call1711.us1115.3, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1556.us1117.3 = or i64 %polly.access.mul.Packed_MemRef_call1556.us1154, 3
  %polly.access.Packed_MemRef_call1556.us1118.3 = getelementptr double, double* %Packed_MemRef_call1556, i64 %polly.access.add.Packed_MemRef_call1556.us1117.3
  store double %polly.access.call1711.load.us1116.3, double* %polly.access.Packed_MemRef_call1556.us1118.3, align 8
  %polly.indvar_next696.us1146 = add nuw nsw i64 %polly.indvar695.us1110, 1
  %exitcond1259.not = icmp eq i64 %polly.indvar_next696.us1146, %257
  br i1 %exitcond1259.not, label %polly.loop_header742.preheader, label %polly.loop_header692.us1109

polly.loop_exit744:                               ; preds = %polly.loop_exit751.loopexit.us, %polly.loop_header742.preheader
  %polly.indvar_next690 = add nuw nsw i64 %polly.indvar689, 1
  %polly.loop_cond691 = icmp ult i64 %polly.indvar689, 23
  %indvars.iv.next1265 = add i64 %indvars.iv1264, 50
  %indvars.iv.next1273 = add i64 %indvars.iv1272, -50
  %indvars.iv.next1278 = add i64 %indvars.iv1277, 50
  %indvar.next1436 = add i64 %indvar1435, 1
  br i1 %polly.loop_cond691, label %polly.loop_header686, label %polly.loop_exit688

polly.loop_header692:                             ; preds = %polly.loop_header686.split, %polly.merge699
  %polly.indvar695 = phi i64 [ %polly.indvar_next696, %polly.merge699 ], [ 0, %polly.loop_header686.split ]
  %298 = add nuw nsw i64 %polly.indvar695, %258
  %polly.access.mul.Packed_MemRef_call1556 = mul nuw nsw i64 %polly.indvar695, 1200
  %polly.access.add.call1710 = add nuw nsw i64 %polly.access.mul.call1709, %298
  %polly.access.call1711 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1710
  %polly.access.call1711.load = load double, double* %polly.access.call1711, align 8, !alias.scope !102, !noalias !109
  %polly.access.Packed_MemRef_call1556 = getelementptr double, double* %Packed_MemRef_call1556, i64 %polly.access.mul.Packed_MemRef_call1556
  store double %polly.access.call1711.load, double* %polly.access.Packed_MemRef_call1556, align 8
  %polly.access.add.call1710.1 = add nuw nsw i64 %polly.access.mul.call1709.1, %298
  %polly.access.call1711.1 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1710.1
  %polly.access.call1711.load.1 = load double, double* %polly.access.call1711.1, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1556.1 = or i64 %polly.access.mul.Packed_MemRef_call1556, 1
  %polly.access.Packed_MemRef_call1556.1 = getelementptr double, double* %Packed_MemRef_call1556, i64 %polly.access.add.Packed_MemRef_call1556.1
  store double %polly.access.call1711.load.1, double* %polly.access.Packed_MemRef_call1556.1, align 8
  %polly.access.add.call1710.2 = add nuw nsw i64 %polly.access.mul.call1709.2, %298
  %polly.access.call1711.2 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1710.2
  %polly.access.call1711.load.2 = load double, double* %polly.access.call1711.2, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1556.2 = or i64 %polly.access.mul.Packed_MemRef_call1556, 2
  %polly.access.Packed_MemRef_call1556.2 = getelementptr double, double* %Packed_MemRef_call1556, i64 %polly.access.add.Packed_MemRef_call1556.2
  store double %polly.access.call1711.load.2, double* %polly.access.Packed_MemRef_call1556.2, align 8
  %polly.access.add.call1710.3 = add nuw nsw i64 %polly.access.mul.call1709.3, %298
  %polly.access.call1711.3 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1710.3
  %polly.access.call1711.load.3 = load double, double* %polly.access.call1711.3, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1556.3 = or i64 %polly.access.mul.Packed_MemRef_call1556, 3
  %polly.access.Packed_MemRef_call1556.3 = getelementptr double, double* %Packed_MemRef_call1556, i64 %polly.access.add.Packed_MemRef_call1556.3
  store double %polly.access.call1711.load.3, double* %polly.access.Packed_MemRef_call1556.3, align 8
  br label %polly.loop_header713

polly.merge699:                                   ; preds = %polly.loop_header713
  %polly.indvar_next696 = add nuw nsw i64 %polly.indvar695, 1
  %exitcond1256.not = icmp eq i64 %polly.indvar_next696, %257
  br i1 %exitcond1256.not, label %polly.loop_header742.preheader, label %polly.loop_header692

polly.loop_header742.preheader:                   ; preds = %polly.merge699, %polly.loop_header692.us1109, %polly.merge699.us
  %299 = sub nsw i64 %271, %290
  %300 = icmp sgt i64 %299, 0
  %301 = select i1 %300, i64 %299, i64 0
  %polly.loop_guard752 = icmp slt i64 %301, 50
  br i1 %polly.loop_guard752, label %polly.loop_header742.us, label %polly.loop_exit744

polly.loop_header742.us:                          ; preds = %polly.loop_header742.preheader, %polly.loop_exit751.loopexit.us
  %polly.indvar745.us = phi i64 [ %polly.indvar_next746.us, %polly.loop_exit751.loopexit.us ], [ 0, %polly.loop_header742.preheader ]
  %polly.access.mul.Packed_MemRef_call1556764.us = mul nuw nsw i64 %polly.indvar745.us, 1200
  br label %polly.loop_header749.us

polly.loop_header749.us:                          ; preds = %polly.loop_header742.us, %polly.loop_exit759.us
  %indvar1438 = phi i64 [ 0, %polly.loop_header742.us ], [ %indvar.next1439, %polly.loop_exit759.us ]
  %indvars.iv1279 = phi i64 [ %288, %polly.loop_header742.us ], [ %indvars.iv.next1280, %polly.loop_exit759.us ]
  %polly.indvar753.us = phi i64 [ %301, %polly.loop_header742.us ], [ %polly.indvar_next754.us, %polly.loop_exit759.us ]
  %302 = add i64 %287, %indvar1438
  %smin1440 = call i64 @llvm.smin.i64(i64 %302, i64 3)
  %303 = add nsw i64 %smin1440, 1
  %smin1281 = call i64 @llvm.smin.i64(i64 %indvars.iv1279, i64 3)
  %304 = add nuw i64 %polly.indvar753.us, %290
  %305 = add i64 %304, %272
  %polly.loop_guard760.us1328 = icmp sgt i64 %305, -1
  br i1 %polly.loop_guard760.us1328, label %polly.loop_header757.preheader.us, label %polly.loop_exit759.us

polly.loop_header757.us:                          ; preds = %polly.loop_header757.us.preheader, %polly.loop_header757.us
  %polly.indvar761.us = phi i64 [ %polly.indvar_next762.us, %polly.loop_header757.us ], [ %polly.indvar761.us.ph, %polly.loop_header757.us.preheader ]
  %306 = add nuw nsw i64 %polly.indvar761.us, %271
  %polly.access.add.Packed_MemRef_call1556765.us = add nuw nsw i64 %polly.indvar761.us, %polly.access.mul.Packed_MemRef_call1556764.us
  %polly.access.Packed_MemRef_call1556766.us = getelementptr double, double* %Packed_MemRef_call1556, i64 %polly.access.add.Packed_MemRef_call1556765.us
  %_p_scalar_767.us = load double, double* %polly.access.Packed_MemRef_call1556766.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_771.us, %_p_scalar_767.us
  %polly.access.Packed_MemRef_call2558774.us = getelementptr double, double* %Packed_MemRef_call2558, i64 %polly.access.add.Packed_MemRef_call1556765.us
  %_p_scalar_775.us = load double, double* %polly.access.Packed_MemRef_call2558774.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_779.us, %_p_scalar_775.us
  %307 = shl i64 %306, 3
  %308 = add i64 %307, %309
  %scevgep780.us = getelementptr i8, i8* %call, i64 %308
  %scevgep780781.us = bitcast i8* %scevgep780.us to double*
  %_p_scalar_782.us = load double, double* %scevgep780781.us, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_782.us
  store double %p_add42.i.us, double* %scevgep780781.us, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next762.us = add nuw nsw i64 %polly.indvar761.us, 1
  %exitcond1282.not = icmp eq i64 %polly.indvar761.us, %smin1281
  br i1 %exitcond1282.not, label %polly.loop_exit759.us, label %polly.loop_header757.us, !llvm.loop !110

polly.loop_exit759.us:                            ; preds = %polly.loop_header757.us, %middle.block1432, %polly.loop_header749.us
  %polly.indvar_next754.us = add nuw nsw i64 %polly.indvar753.us, 1
  %polly.loop_cond755.us = icmp ult i64 %polly.indvar753.us, 49
  %indvars.iv.next1280 = add i64 %indvars.iv1279, 1
  %indvar.next1439 = add i64 %indvar1438, 1
  br i1 %polly.loop_cond755.us, label %polly.loop_header749.us, label %polly.loop_exit751.loopexit.us

polly.loop_header757.preheader.us:                ; preds = %polly.loop_header749.us
  %polly.access.add.Packed_MemRef_call2558769.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1556764.us, %305
  %polly.access.Packed_MemRef_call2558770.us = getelementptr double, double* %Packed_MemRef_call2558, i64 %polly.access.add.Packed_MemRef_call2558769.us
  %_p_scalar_771.us = load double, double* %polly.access.Packed_MemRef_call2558770.us, align 8
  %polly.access.Packed_MemRef_call1556778.us = getelementptr double, double* %Packed_MemRef_call1556, i64 %polly.access.add.Packed_MemRef_call2558769.us
  %_p_scalar_779.us = load double, double* %polly.access.Packed_MemRef_call1556778.us, align 8
  %309 = mul i64 %304, 9600
  %min.iters.check1441 = icmp ult i64 %303, 4
  br i1 %min.iters.check1441, label %polly.loop_header757.us.preheader, label %vector.ph1442

vector.ph1442:                                    ; preds = %polly.loop_header757.preheader.us
  %n.vec1444 = and i64 %303, -4
  %broadcast.splatinsert1450 = insertelement <4 x double> poison, double %_p_scalar_771.us, i32 0
  %broadcast.splat1451 = shufflevector <4 x double> %broadcast.splatinsert1450, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1453 = insertelement <4 x double> poison, double %_p_scalar_779.us, i32 0
  %broadcast.splat1454 = shufflevector <4 x double> %broadcast.splatinsert1453, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1434

vector.body1434:                                  ; preds = %vector.body1434, %vector.ph1442
  %index1445 = phi i64 [ 0, %vector.ph1442 ], [ %index.next1446, %vector.body1434 ]
  %310 = add nuw nsw i64 %index1445, %271
  %311 = add nuw nsw i64 %index1445, %polly.access.mul.Packed_MemRef_call1556764.us
  %312 = getelementptr double, double* %Packed_MemRef_call1556, i64 %311
  %313 = bitcast double* %312 to <4 x double>*
  %wide.load1449 = load <4 x double>, <4 x double>* %313, align 8
  %314 = fmul fast <4 x double> %broadcast.splat1451, %wide.load1449
  %315 = getelementptr double, double* %Packed_MemRef_call2558, i64 %311
  %316 = bitcast double* %315 to <4 x double>*
  %wide.load1452 = load <4 x double>, <4 x double>* %316, align 8
  %317 = fmul fast <4 x double> %broadcast.splat1454, %wide.load1452
  %318 = shl i64 %310, 3
  %319 = add i64 %318, %309
  %320 = getelementptr i8, i8* %call, i64 %319
  %321 = bitcast i8* %320 to <4 x double>*
  %wide.load1455 = load <4 x double>, <4 x double>* %321, align 8, !alias.scope !99, !noalias !101
  %322 = fadd fast <4 x double> %317, %314
  %323 = fmul fast <4 x double> %322, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %324 = fadd fast <4 x double> %323, %wide.load1455
  %325 = bitcast i8* %320 to <4 x double>*
  store <4 x double> %324, <4 x double>* %325, align 8, !alias.scope !99, !noalias !101
  %index.next1446 = add i64 %index1445, 4
  %326 = icmp eq i64 %index.next1446, %n.vec1444
  br i1 %326, label %middle.block1432, label %vector.body1434, !llvm.loop !111

middle.block1432:                                 ; preds = %vector.body1434
  %cmp.n1448 = icmp eq i64 %303, %n.vec1444
  br i1 %cmp.n1448, label %polly.loop_exit759.us, label %polly.loop_header757.us.preheader

polly.loop_header757.us.preheader:                ; preds = %polly.loop_header757.preheader.us, %middle.block1432
  %polly.indvar761.us.ph = phi i64 [ 0, %polly.loop_header757.preheader.us ], [ %n.vec1444, %middle.block1432 ]
  br label %polly.loop_header757.us

polly.loop_exit751.loopexit.us:                   ; preds = %polly.loop_exit759.us
  %polly.indvar_next746.us = add nuw nsw i64 %polly.indvar745.us, 1
  %exitcond1284.not = icmp eq i64 %polly.indvar_next746.us, %257
  br i1 %exitcond1284.not, label %polly.loop_exit744, label %polly.loop_header742.us

polly.loop_header713:                             ; preds = %polly.loop_header692, %polly.loop_header713
  %polly.indvar717 = phi i64 [ %polly.indvar_next718, %polly.loop_header713 ], [ %293, %polly.loop_header692 ]
  %327 = add nuw nsw i64 %polly.indvar717, %271
  %polly.access.mul.call1721 = mul nsw i64 %327, 1000
  %polly.access.add.call1722 = add nuw nsw i64 %polly.access.mul.call1721, %298
  %polly.access.call1723 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1722
  %polly.access.call1723.load = load double, double* %polly.access.call1723, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1556725 = add nuw nsw i64 %polly.indvar717, %polly.access.mul.Packed_MemRef_call1556
  %polly.access.Packed_MemRef_call1556726 = getelementptr double, double* %Packed_MemRef_call1556, i64 %polly.access.add.Packed_MemRef_call1556725
  store double %polly.access.call1723.load, double* %polly.access.Packed_MemRef_call1556726, align 8
  %polly.indvar_next718 = add nuw nsw i64 %polly.indvar717, 1
  %polly.loop_cond719.not.not = icmp slt i64 %polly.indvar717, %294
  br i1 %polly.loop_cond719.not.not, label %polly.loop_header713, label %polly.merge699

polly.loop_header909:                             ; preds = %entry, %polly.loop_exit917
  %indvars.iv1313 = phi i64 [ %indvars.iv.next1314, %polly.loop_exit917 ], [ 0, %entry ]
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_exit917 ], [ 0, %entry ]
  %smin1315 = call i64 @llvm.smin.i64(i64 %indvars.iv1313, i64 -1168)
  %328 = shl nsw i64 %polly.indvar912, 5
  %329 = add nsw i64 %smin1315, 1199
  br label %polly.loop_header915

polly.loop_exit917:                               ; preds = %polly.loop_exit923
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %indvars.iv.next1314 = add nsw i64 %indvars.iv1313, -32
  %exitcond1318.not = icmp eq i64 %polly.indvar_next913, 38
  br i1 %exitcond1318.not, label %polly.loop_header936, label %polly.loop_header909

polly.loop_header915:                             ; preds = %polly.loop_exit923, %polly.loop_header909
  %indvars.iv1309 = phi i64 [ %indvars.iv.next1310, %polly.loop_exit923 ], [ 0, %polly.loop_header909 ]
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_exit923 ], [ 0, %polly.loop_header909 ]
  %330 = mul nsw i64 %polly.indvar918, -32
  %smin = call i64 @llvm.smin.i64(i64 %330, i64 -1168)
  %331 = add nsw i64 %smin, 1200
  %smin1311 = call i64 @llvm.smin.i64(i64 %indvars.iv1309, i64 -1168)
  %332 = shl nsw i64 %polly.indvar918, 5
  %333 = add nsw i64 %smin1311, 1199
  br label %polly.loop_header921

polly.loop_exit923:                               ; preds = %polly.loop_exit929
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %indvars.iv.next1310 = add nsw i64 %indvars.iv1309, -32
  %exitcond1317.not = icmp eq i64 %polly.indvar_next919, 38
  br i1 %exitcond1317.not, label %polly.loop_exit917, label %polly.loop_header915

polly.loop_header921:                             ; preds = %polly.loop_exit929, %polly.loop_header915
  %polly.indvar924 = phi i64 [ 0, %polly.loop_header915 ], [ %polly.indvar_next925, %polly.loop_exit929 ]
  %334 = add nuw nsw i64 %polly.indvar924, %328
  %335 = trunc i64 %334 to i32
  %336 = mul nuw nsw i64 %334, 9600
  %min.iters.check = icmp eq i64 %331, 0
  br i1 %min.iters.check, label %polly.loop_header927, label %vector.ph1362

vector.ph1362:                                    ; preds = %polly.loop_header921
  %broadcast.splatinsert1369 = insertelement <4 x i64> poison, i64 %332, i32 0
  %broadcast.splat1370 = shufflevector <4 x i64> %broadcast.splatinsert1369, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1371 = insertelement <4 x i32> poison, i32 %335, i32 0
  %broadcast.splat1372 = shufflevector <4 x i32> %broadcast.splatinsert1371, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1361

vector.body1361:                                  ; preds = %vector.body1361, %vector.ph1362
  %index1363 = phi i64 [ 0, %vector.ph1362 ], [ %index.next1364, %vector.body1361 ]
  %vec.ind1367 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1362 ], [ %vec.ind.next1368, %vector.body1361 ]
  %337 = add nuw nsw <4 x i64> %vec.ind1367, %broadcast.splat1370
  %338 = trunc <4 x i64> %337 to <4 x i32>
  %339 = mul <4 x i32> %broadcast.splat1372, %338
  %340 = add <4 x i32> %339, <i32 3, i32 3, i32 3, i32 3>
  %341 = urem <4 x i32> %340, <i32 1200, i32 1200, i32 1200, i32 1200>
  %342 = sitofp <4 x i32> %341 to <4 x double>
  %343 = fmul fast <4 x double> %342, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %344 = extractelement <4 x i64> %337, i32 0
  %345 = shl i64 %344, 3
  %346 = add nuw nsw i64 %345, %336
  %347 = getelementptr i8, i8* %call, i64 %346
  %348 = bitcast i8* %347 to <4 x double>*
  store <4 x double> %343, <4 x double>* %348, align 8, !alias.scope !112, !noalias !114
  %index.next1364 = add i64 %index1363, 4
  %vec.ind.next1368 = add <4 x i64> %vec.ind1367, <i64 4, i64 4, i64 4, i64 4>
  %349 = icmp eq i64 %index.next1364, %331
  br i1 %349, label %polly.loop_exit929, label %vector.body1361, !llvm.loop !117

polly.loop_exit929:                               ; preds = %vector.body1361, %polly.loop_header927
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %exitcond1316.not = icmp eq i64 %polly.indvar924, %329
  br i1 %exitcond1316.not, label %polly.loop_exit923, label %polly.loop_header921

polly.loop_header927:                             ; preds = %polly.loop_header921, %polly.loop_header927
  %polly.indvar930 = phi i64 [ %polly.indvar_next931, %polly.loop_header927 ], [ 0, %polly.loop_header921 ]
  %350 = add nuw nsw i64 %polly.indvar930, %332
  %351 = trunc i64 %350 to i32
  %352 = mul i32 %351, %335
  %353 = add i32 %352, 3
  %354 = urem i32 %353, 1200
  %p_conv31.i = sitofp i32 %354 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %355 = shl i64 %350, 3
  %356 = add nuw nsw i64 %355, %336
  %scevgep933 = getelementptr i8, i8* %call, i64 %356
  %scevgep933934 = bitcast i8* %scevgep933 to double*
  store double %p_div33.i, double* %scevgep933934, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next931 = add nuw nsw i64 %polly.indvar930, 1
  %exitcond1312.not = icmp eq i64 %polly.indvar930, %333
  br i1 %exitcond1312.not, label %polly.loop_exit929, label %polly.loop_header927, !llvm.loop !118

polly.loop_header936:                             ; preds = %polly.loop_exit917, %polly.loop_exit944
  %indvars.iv1303 = phi i64 [ %indvars.iv.next1304, %polly.loop_exit944 ], [ 0, %polly.loop_exit917 ]
  %polly.indvar939 = phi i64 [ %polly.indvar_next940, %polly.loop_exit944 ], [ 0, %polly.loop_exit917 ]
  %smin1305 = call i64 @llvm.smin.i64(i64 %indvars.iv1303, i64 -1168)
  %357 = shl nsw i64 %polly.indvar939, 5
  %358 = add nsw i64 %smin1305, 1199
  br label %polly.loop_header942

polly.loop_exit944:                               ; preds = %polly.loop_exit950
  %polly.indvar_next940 = add nuw nsw i64 %polly.indvar939, 1
  %indvars.iv.next1304 = add nsw i64 %indvars.iv1303, -32
  %exitcond1308.not = icmp eq i64 %polly.indvar_next940, 38
  br i1 %exitcond1308.not, label %polly.loop_header962, label %polly.loop_header936

polly.loop_header942:                             ; preds = %polly.loop_exit950, %polly.loop_header936
  %indvars.iv1299 = phi i64 [ %indvars.iv.next1300, %polly.loop_exit950 ], [ 0, %polly.loop_header936 ]
  %polly.indvar945 = phi i64 [ %polly.indvar_next946, %polly.loop_exit950 ], [ 0, %polly.loop_header936 ]
  %359 = mul nsw i64 %polly.indvar945, -32
  %smin1376 = call i64 @llvm.smin.i64(i64 %359, i64 -968)
  %360 = add nsw i64 %smin1376, 1000
  %smin1301 = call i64 @llvm.smin.i64(i64 %indvars.iv1299, i64 -968)
  %361 = shl nsw i64 %polly.indvar945, 5
  %362 = add nsw i64 %smin1301, 999
  br label %polly.loop_header948

polly.loop_exit950:                               ; preds = %polly.loop_exit956
  %polly.indvar_next946 = add nuw nsw i64 %polly.indvar945, 1
  %indvars.iv.next1300 = add nsw i64 %indvars.iv1299, -32
  %exitcond1307.not = icmp eq i64 %polly.indvar_next946, 32
  br i1 %exitcond1307.not, label %polly.loop_exit944, label %polly.loop_header942

polly.loop_header948:                             ; preds = %polly.loop_exit956, %polly.loop_header942
  %polly.indvar951 = phi i64 [ 0, %polly.loop_header942 ], [ %polly.indvar_next952, %polly.loop_exit956 ]
  %363 = add nuw nsw i64 %polly.indvar951, %357
  %364 = trunc i64 %363 to i32
  %365 = mul nuw nsw i64 %363, 8000
  %min.iters.check1377 = icmp eq i64 %360, 0
  br i1 %min.iters.check1377, label %polly.loop_header954, label %vector.ph1378

vector.ph1378:                                    ; preds = %polly.loop_header948
  %broadcast.splatinsert1387 = insertelement <4 x i64> poison, i64 %361, i32 0
  %broadcast.splat1388 = shufflevector <4 x i64> %broadcast.splatinsert1387, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1389 = insertelement <4 x i32> poison, i32 %364, i32 0
  %broadcast.splat1390 = shufflevector <4 x i32> %broadcast.splatinsert1389, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1375

vector.body1375:                                  ; preds = %vector.body1375, %vector.ph1378
  %index1381 = phi i64 [ 0, %vector.ph1378 ], [ %index.next1382, %vector.body1375 ]
  %vec.ind1385 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1378 ], [ %vec.ind.next1386, %vector.body1375 ]
  %366 = add nuw nsw <4 x i64> %vec.ind1385, %broadcast.splat1388
  %367 = trunc <4 x i64> %366 to <4 x i32>
  %368 = mul <4 x i32> %broadcast.splat1390, %367
  %369 = add <4 x i32> %368, <i32 2, i32 2, i32 2, i32 2>
  %370 = urem <4 x i32> %369, <i32 1000, i32 1000, i32 1000, i32 1000>
  %371 = sitofp <4 x i32> %370 to <4 x double>
  %372 = fmul fast <4 x double> %371, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %373 = extractelement <4 x i64> %366, i32 0
  %374 = shl i64 %373, 3
  %375 = add nuw nsw i64 %374, %365
  %376 = getelementptr i8, i8* %call2, i64 %375
  %377 = bitcast i8* %376 to <4 x double>*
  store <4 x double> %372, <4 x double>* %377, align 8, !alias.scope !116, !noalias !119
  %index.next1382 = add i64 %index1381, 4
  %vec.ind.next1386 = add <4 x i64> %vec.ind1385, <i64 4, i64 4, i64 4, i64 4>
  %378 = icmp eq i64 %index.next1382, %360
  br i1 %378, label %polly.loop_exit956, label %vector.body1375, !llvm.loop !120

polly.loop_exit956:                               ; preds = %vector.body1375, %polly.loop_header954
  %polly.indvar_next952 = add nuw nsw i64 %polly.indvar951, 1
  %exitcond1306.not = icmp eq i64 %polly.indvar951, %358
  br i1 %exitcond1306.not, label %polly.loop_exit950, label %polly.loop_header948

polly.loop_header954:                             ; preds = %polly.loop_header948, %polly.loop_header954
  %polly.indvar957 = phi i64 [ %polly.indvar_next958, %polly.loop_header954 ], [ 0, %polly.loop_header948 ]
  %379 = add nuw nsw i64 %polly.indvar957, %361
  %380 = trunc i64 %379 to i32
  %381 = mul i32 %380, %364
  %382 = add i32 %381, 2
  %383 = urem i32 %382, 1000
  %p_conv10.i = sitofp i32 %383 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %384 = shl i64 %379, 3
  %385 = add nuw nsw i64 %384, %365
  %scevgep960 = getelementptr i8, i8* %call2, i64 %385
  %scevgep960961 = bitcast i8* %scevgep960 to double*
  store double %p_div12.i, double* %scevgep960961, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next958 = add nuw nsw i64 %polly.indvar957, 1
  %exitcond1302.not = icmp eq i64 %polly.indvar957, %362
  br i1 %exitcond1302.not, label %polly.loop_exit956, label %polly.loop_header954, !llvm.loop !121

polly.loop_header962:                             ; preds = %polly.loop_exit944, %polly.loop_exit970
  %indvars.iv1293 = phi i64 [ %indvars.iv.next1294, %polly.loop_exit970 ], [ 0, %polly.loop_exit944 ]
  %polly.indvar965 = phi i64 [ %polly.indvar_next966, %polly.loop_exit970 ], [ 0, %polly.loop_exit944 ]
  %smin1295 = call i64 @llvm.smin.i64(i64 %indvars.iv1293, i64 -1168)
  %386 = shl nsw i64 %polly.indvar965, 5
  %387 = add nsw i64 %smin1295, 1199
  br label %polly.loop_header968

polly.loop_exit970:                               ; preds = %polly.loop_exit976
  %polly.indvar_next966 = add nuw nsw i64 %polly.indvar965, 1
  %indvars.iv.next1294 = add nsw i64 %indvars.iv1293, -32
  %exitcond1298.not = icmp eq i64 %polly.indvar_next966, 38
  br i1 %exitcond1298.not, label %init_array.exit, label %polly.loop_header962

polly.loop_header968:                             ; preds = %polly.loop_exit976, %polly.loop_header962
  %indvars.iv1289 = phi i64 [ %indvars.iv.next1290, %polly.loop_exit976 ], [ 0, %polly.loop_header962 ]
  %polly.indvar971 = phi i64 [ %polly.indvar_next972, %polly.loop_exit976 ], [ 0, %polly.loop_header962 ]
  %388 = mul nsw i64 %polly.indvar971, -32
  %smin1394 = call i64 @llvm.smin.i64(i64 %388, i64 -968)
  %389 = add nsw i64 %smin1394, 1000
  %smin1291 = call i64 @llvm.smin.i64(i64 %indvars.iv1289, i64 -968)
  %390 = shl nsw i64 %polly.indvar971, 5
  %391 = add nsw i64 %smin1291, 999
  br label %polly.loop_header974

polly.loop_exit976:                               ; preds = %polly.loop_exit982
  %polly.indvar_next972 = add nuw nsw i64 %polly.indvar971, 1
  %indvars.iv.next1290 = add nsw i64 %indvars.iv1289, -32
  %exitcond1297.not = icmp eq i64 %polly.indvar_next972, 32
  br i1 %exitcond1297.not, label %polly.loop_exit970, label %polly.loop_header968

polly.loop_header974:                             ; preds = %polly.loop_exit982, %polly.loop_header968
  %polly.indvar977 = phi i64 [ 0, %polly.loop_header968 ], [ %polly.indvar_next978, %polly.loop_exit982 ]
  %392 = add nuw nsw i64 %polly.indvar977, %386
  %393 = trunc i64 %392 to i32
  %394 = mul nuw nsw i64 %392, 8000
  %min.iters.check1395 = icmp eq i64 %389, 0
  br i1 %min.iters.check1395, label %polly.loop_header980, label %vector.ph1396

vector.ph1396:                                    ; preds = %polly.loop_header974
  %broadcast.splatinsert1405 = insertelement <4 x i64> poison, i64 %390, i32 0
  %broadcast.splat1406 = shufflevector <4 x i64> %broadcast.splatinsert1405, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1407 = insertelement <4 x i32> poison, i32 %393, i32 0
  %broadcast.splat1408 = shufflevector <4 x i32> %broadcast.splatinsert1407, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1393

vector.body1393:                                  ; preds = %vector.body1393, %vector.ph1396
  %index1399 = phi i64 [ 0, %vector.ph1396 ], [ %index.next1400, %vector.body1393 ]
  %vec.ind1403 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1396 ], [ %vec.ind.next1404, %vector.body1393 ]
  %395 = add nuw nsw <4 x i64> %vec.ind1403, %broadcast.splat1406
  %396 = trunc <4 x i64> %395 to <4 x i32>
  %397 = mul <4 x i32> %broadcast.splat1408, %396
  %398 = add <4 x i32> %397, <i32 1, i32 1, i32 1, i32 1>
  %399 = urem <4 x i32> %398, <i32 1200, i32 1200, i32 1200, i32 1200>
  %400 = sitofp <4 x i32> %399 to <4 x double>
  %401 = fmul fast <4 x double> %400, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %402 = extractelement <4 x i64> %395, i32 0
  %403 = shl i64 %402, 3
  %404 = add nuw nsw i64 %403, %394
  %405 = getelementptr i8, i8* %call1, i64 %404
  %406 = bitcast i8* %405 to <4 x double>*
  store <4 x double> %401, <4 x double>* %406, align 8, !alias.scope !115, !noalias !122
  %index.next1400 = add i64 %index1399, 4
  %vec.ind.next1404 = add <4 x i64> %vec.ind1403, <i64 4, i64 4, i64 4, i64 4>
  %407 = icmp eq i64 %index.next1400, %389
  br i1 %407, label %polly.loop_exit982, label %vector.body1393, !llvm.loop !123

polly.loop_exit982:                               ; preds = %vector.body1393, %polly.loop_header980
  %polly.indvar_next978 = add nuw nsw i64 %polly.indvar977, 1
  %exitcond1296.not = icmp eq i64 %polly.indvar977, %387
  br i1 %exitcond1296.not, label %polly.loop_exit976, label %polly.loop_header974

polly.loop_header980:                             ; preds = %polly.loop_header974, %polly.loop_header980
  %polly.indvar983 = phi i64 [ %polly.indvar_next984, %polly.loop_header980 ], [ 0, %polly.loop_header974 ]
  %408 = add nuw nsw i64 %polly.indvar983, %390
  %409 = trunc i64 %408 to i32
  %410 = mul i32 %409, %393
  %411 = add i32 %410, 1
  %412 = urem i32 %411, 1200
  %p_conv.i = sitofp i32 %412 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %413 = shl i64 %408, 3
  %414 = add nuw nsw i64 %413, %394
  %scevgep987 = getelementptr i8, i8* %call1, i64 %414
  %scevgep987988 = bitcast i8* %scevgep987 to double*
  store double %p_div.i, double* %scevgep987988, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next984 = add nuw nsw i64 %polly.indvar983, 1
  %exitcond1292.not = icmp eq i64 %polly.indvar983, %391
  br i1 %exitcond1292.not, label %polly.loop_exit982, label %polly.loop_header980, !llvm.loop !124
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
!51 = !{!"llvm.loop.tile.size", i32 50}
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
