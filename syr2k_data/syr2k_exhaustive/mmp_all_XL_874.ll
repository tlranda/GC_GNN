; ModuleID = 'syr2k_exhaustive/mmp_all_XL_874.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_874.c"
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
  %scevgep1334 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1333 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1332 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1331 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1331, %scevgep1334
  %bound1 = icmp ult i8* %scevgep1333, %scevgep1332
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
  br i1 %exitcond18.not.i, label %vector.ph1338, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1338:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1345 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1346 = shufflevector <4 x i64> %broadcast.splatinsert1345, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1337

vector.body1337:                                  ; preds = %vector.body1337, %vector.ph1338
  %index1339 = phi i64 [ 0, %vector.ph1338 ], [ %index.next1340, %vector.body1337 ]
  %vec.ind1343 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1338 ], [ %vec.ind.next1344, %vector.body1337 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1343, %broadcast.splat1346
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call941, i64 %indvars.iv7.i, i64 %index1339
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1340 = add i64 %index1339, 4
  %vec.ind.next1344 = add <4 x i64> %vec.ind1343, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1340, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1337, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1337
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1338, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit976
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start557, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1400 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1400, label %for.body3.i46.preheader1549, label %vector.ph1401

vector.ph1401:                                    ; preds = %for.body3.i46.preheader
  %n.vec1403 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1399

vector.body1399:                                  ; preds = %vector.body1399, %vector.ph1401
  %index1404 = phi i64 [ 0, %vector.ph1401 ], [ %index.next1405, %vector.body1399 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call941, i64 %indvars.iv21.i, i64 %index1404
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1405 = add i64 %index1404, 4
  %46 = icmp eq i64 %index.next1405, %n.vec1403
  br i1 %46, label %middle.block1397, label %vector.body1399, !llvm.loop !18

middle.block1397:                                 ; preds = %vector.body1399
  %cmp.n1407 = icmp eq i64 %indvars.iv21.i, %n.vec1403
  br i1 %cmp.n1407, label %for.inc6.i, label %for.body3.i46.preheader1549

for.body3.i46.preheader1549:                      ; preds = %for.body3.i46.preheader, %middle.block1397
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1403, %middle.block1397 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1549, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1549 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call941, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1397, %for.cond1.preheader.i45
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
  %min.iters.check1447 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1447, label %for.body3.i60.preheader1547, label %vector.ph1448

vector.ph1448:                                    ; preds = %for.body3.i60.preheader
  %n.vec1450 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1446

vector.body1446:                                  ; preds = %vector.body1446, %vector.ph1448
  %index1451 = phi i64 [ 0, %vector.ph1448 ], [ %index.next1452, %vector.body1446 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call941, i64 %indvars.iv21.i52, i64 %index1451
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1455 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1455, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1452 = add i64 %index1451, 4
  %57 = icmp eq i64 %index.next1452, %n.vec1450
  br i1 %57, label %middle.block1444, label %vector.body1446, !llvm.loop !64

middle.block1444:                                 ; preds = %vector.body1446
  %cmp.n1454 = icmp eq i64 %indvars.iv21.i52, %n.vec1450
  br i1 %cmp.n1454, label %for.inc6.i63, label %for.body3.i60.preheader1547

for.body3.i60.preheader1547:                      ; preds = %for.body3.i60.preheader, %middle.block1444
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1450, %middle.block1444 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1547, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1547 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call941, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1444, %for.cond1.preheader.i54
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
  %min.iters.check1497 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1497, label %for.body3.i99.preheader1545, label %vector.ph1498

vector.ph1498:                                    ; preds = %for.body3.i99.preheader
  %n.vec1500 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1496

vector.body1496:                                  ; preds = %vector.body1496, %vector.ph1498
  %index1501 = phi i64 [ 0, %vector.ph1498 ], [ %index.next1502, %vector.body1496 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call941, i64 %indvars.iv21.i91, i64 %index1501
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1505 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1505, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1502 = add i64 %index1501, 4
  %68 = icmp eq i64 %index.next1502, %n.vec1500
  br i1 %68, label %middle.block1494, label %vector.body1496, !llvm.loop !66

middle.block1494:                                 ; preds = %vector.body1496
  %cmp.n1504 = icmp eq i64 %indvars.iv21.i91, %n.vec1500
  br i1 %cmp.n1504, label %for.inc6.i102, label %for.body3.i99.preheader1545

for.body3.i99.preheader1545:                      ; preds = %for.body3.i99.preheader, %middle.block1494
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1500, %middle.block1494 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1545, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1545 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call941, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1494, %for.cond1.preheader.i93
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
  %malloccall = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  %malloccall136 = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1509 = phi i64 [ %indvar.next1510, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1509, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1511 = icmp ult i64 %88, 4
  br i1 %min.iters.check1511, label %polly.loop_header192.preheader, label %vector.ph1512

vector.ph1512:                                    ; preds = %polly.loop_header
  %n.vec1514 = and i64 %88, -4
  br label %vector.body1508

vector.body1508:                                  ; preds = %vector.body1508, %vector.ph1512
  %index1515 = phi i64 [ 0, %vector.ph1512 ], [ %index.next1516, %vector.body1508 ]
  %90 = shl nuw nsw i64 %index1515, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1519 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1519, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1516 = add i64 %index1515, 4
  %95 = icmp eq i64 %index.next1516, %n.vec1514
  br i1 %95, label %middle.block1506, label %vector.body1508, !llvm.loop !79

middle.block1506:                                 ; preds = %vector.body1508
  %cmp.n1518 = icmp eq i64 %88, %n.vec1514
  br i1 %cmp.n1518, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1506
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1514, %middle.block1506 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1506
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1207.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1510 = add i64 %indvar1509, 1
  br i1 %exitcond1207.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1206.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1206.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %indvars.iv1174 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1175, %polly.loop_exit208 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit208 ]
  %smin1202 = call i64 @llvm.smin.i64(i64 %indvars.iv1174, i64 -984)
  %97 = add nsw i64 %smin1202, 1000
  %98 = shl nsw i64 %polly.indvar203, 4
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next1175 = add nsw i64 %indvars.iv1174, -16
  %exitcond1205.not = icmp eq i64 %polly.indvar_next204, 63
  br i1 %exitcond1205.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1194 = phi i64 [ %indvars.iv.next1195, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1189 = phi i64 [ %indvars.iv.next1190, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1179 = phi i64 [ %indvars.iv.next1180, %polly.loop_exit230 ], [ 7, %polly.loop_header200 ]
  %indvars.iv1177 = phi i64 [ %indvars.iv.next1178, %polly.loop_exit230 ], [ 79, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %99 = mul nsw i64 %polly.indvar209, -30
  %100 = mul nuw nsw i64 %polly.indvar209, 3
  %101 = add nuw i64 %100, 7
  %102 = lshr i64 %101, 3
  %103 = mul nuw nsw i64 %102, 80
  %104 = add i64 %99, %103
  %105 = mul nuw nsw i64 %polly.indvar209, 30
  %106 = sub nsw i64 %105, %103
  %107 = lshr i64 %indvars.iv1179, 3
  %108 = mul nuw nsw i64 %107, 80
  %109 = add i64 %indvars.iv1189, %108
  %110 = sub nsw i64 %indvars.iv1194, %108
  %111 = sub nsw i64 %indvars.iv1177, %108
  %112 = mul nuw nsw i64 %polly.indvar209, 50
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %113 = mul nsw i64 %polly.indvar209, -50
  %114 = mul nuw nsw i64 %polly.indvar209, 3
  %115 = add nuw nsw i64 %114, 7
  %pexp.p_div_q = lshr i64 %115, 3
  %116 = sub nsw i64 %polly.indvar209, %pexp.p_div_q
  %polly.loop_guard = icmp slt i64 %116, 15
  br i1 %polly.loop_guard, label %polly.loop_header228.preheader, label %polly.loop_exit230

polly.loop_header228.preheader:                   ; preds = %polly.loop_exit214
  %117 = mul nuw nsw i64 %polly.indvar209, 5
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit282, %polly.loop_exit214
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -50
  %indvars.iv.next1178 = add nuw nsw i64 %indvars.iv1177, 30
  %indvars.iv.next1180 = add nuw nsw i64 %indvars.iv1179, 3
  %indvars.iv.next1190 = add nsw i64 %indvars.iv1189, -30
  %indvars.iv.next1195 = add nuw nsw i64 %indvars.iv1194, 30
  %exitcond1204.not = icmp eq i64 %polly.indvar_next210, 24
  br i1 %exitcond1204.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %118 = add nuw nsw i64 %polly.indvar215, %98
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1176.not = icmp eq i64 %polly.indvar_next216, %97
  br i1 %exitcond1176.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %119 = add nuw nsw i64 %polly.indvar221, %112
  %polly.access.mul.call2225 = mul nuw nsw i64 %119, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %118, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2803, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_header228.preheader, %polly.loop_exit282
  %indvar1523 = phi i64 [ 0, %polly.loop_header228.preheader ], [ %indvar.next1524, %polly.loop_exit282 ]
  %indvars.iv1196 = phi i64 [ %110, %polly.loop_header228.preheader ], [ %indvars.iv.next1197, %polly.loop_exit282 ]
  %indvars.iv1191 = phi i64 [ %109, %polly.loop_header228.preheader ], [ %indvars.iv.next1192, %polly.loop_exit282 ]
  %indvars.iv1181 = phi i64 [ %111, %polly.loop_header228.preheader ], [ %indvars.iv.next1182, %polly.loop_exit282 ]
  %polly.indvar231 = phi i64 [ %116, %polly.loop_header228.preheader ], [ %polly.indvar_next232, %polly.loop_exit282 ]
  %120 = mul nsw i64 %indvar1523, -80
  %121 = add i64 %104, %120
  %smax1525 = call i64 @llvm.smax.i64(i64 %121, i64 0)
  %122 = mul nuw nsw i64 %indvar1523, 80
  %123 = add i64 %106, %122
  %124 = add i64 %smax1525, %123
  %smax1193 = call i64 @llvm.smax.i64(i64 %indvars.iv1191, i64 0)
  %125 = add i64 %smax1193, %indvars.iv1196
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1181, i64 0)
  %126 = shl nsw i64 %polly.indvar231, 3
  %.not.not = icmp sgt i64 %126, %117
  %127 = mul nsw i64 %polly.indvar231, 80
  %128 = add nsw i64 %127, %113
  %129 = icmp sgt i64 %128, 50
  %130 = select i1 %129, i64 %128, i64 50
  %131 = add nsw i64 %128, 79
  %polly.loop_guard254.not = icmp sgt i64 %130, %131
  br i1 %.not.not, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.merge.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.merge.us ], [ 0, %polly.loop_header228 ]
  %132 = add nuw nsw i64 %polly.indvar237.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header234.us ]
  %133 = add nuw nsw i64 %polly.indvar243.us, %112
  %polly.access.mul.call1247.us = mul nuw nsw i64 %133, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %polly.access.mul.call1247.us, %132
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1793, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1186.not = icmp eq i64 %polly.indvar_next244.us, 50
  br i1 %exitcond1186.not, label %polly.loop_exit242.us, label %polly.loop_header240.us

polly.loop_exit242.us:                            ; preds = %polly.loop_header240.us
  br i1 %polly.loop_guard254.not, label %polly.merge.us, label %polly.loop_header251.us

polly.loop_header251.us:                          ; preds = %polly.loop_exit242.us, %polly.loop_header251.us
  %polly.indvar255.us = phi i64 [ %polly.indvar_next256.us, %polly.loop_header251.us ], [ %130, %polly.loop_exit242.us ]
  %134 = add nuw nsw i64 %polly.indvar255.us, %112
  %polly.access.mul.call1259.us = mul nsw i64 %134, 1000
  %polly.access.add.call1260.us = add nuw nsw i64 %polly.access.mul.call1259.us, %132
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1793, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us = add nuw nsw i64 %polly.indvar255.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %polly.indvar_next256.us = add nuw nsw i64 %polly.indvar255.us, 1
  %polly.loop_cond257.not.not.us = icmp slt i64 %polly.indvar255.us, %131
  br i1 %polly.loop_cond257.not.not.us, label %polly.loop_header251.us, label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.loop_header251.us, %polly.loop_exit242.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1188.not = icmp eq i64 %polly.indvar_next238.us, %97
  br i1 %exitcond1188.not, label %polly.loop_header280.preheader, label %polly.loop_header234.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  %polly.loop_guard269 = icmp sgt i64 %128, -80
  br i1 %polly.loop_guard269, label %polly.loop_header234.us1023, label %polly.loop_header280.preheader

polly.loop_header234.us1023:                      ; preds = %polly.loop_header228.split, %polly.merge.loopexit997.us1068
  %polly.indvar237.us1024 = phi i64 [ %polly.indvar_next238.us1060, %polly.merge.loopexit997.us1068 ], [ 0, %polly.loop_header228.split ]
  %135 = add nuw nsw i64 %polly.indvar237.us1024, %98
  %polly.access.mul.Packed_MemRef_call1277.us1067 = mul nuw nsw i64 %polly.indvar237.us1024, 1200
  br label %polly.loop_header266.us1026

polly.loop_header266.us1026:                      ; preds = %polly.loop_header234.us1023, %polly.loop_header266.us1026
  %polly.indvar270.us1027 = phi i64 [ %polly.indvar_next271.us1034, %polly.loop_header266.us1026 ], [ 0, %polly.loop_header234.us1023 ]
  %136 = add nuw nsw i64 %polly.indvar270.us1027, %112
  %polly.access.mul.call1274.us1028 = mul nuw nsw i64 %136, 1000
  %polly.access.add.call1275.us1029 = add nuw nsw i64 %135, %polly.access.mul.call1274.us1028
  %polly.access.call1276.us1030 = getelementptr double, double* %polly.access.cast.call1793, i64 %polly.access.add.call1275.us1029
  %polly.access.call1276.load.us1031 = load double, double* %polly.access.call1276.us1030, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1278.us1032 = add nuw nsw i64 %polly.indvar270.us1027, %polly.access.mul.Packed_MemRef_call1277.us1067
  %polly.access.Packed_MemRef_call1279.us1033 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1278.us1032
  store double %polly.access.call1276.load.us1031, double* %polly.access.Packed_MemRef_call1279.us1033, align 8
  %polly.indvar_next271.us1034 = add nuw nsw i64 %polly.indvar270.us1027, 1
  %exitcond1183.not = icmp eq i64 %polly.indvar270.us1027, %smax
  br i1 %exitcond1183.not, label %polly.merge.loopexit997.us1068, label %polly.loop_header266.us1026

polly.merge.loopexit997.us1068:                   ; preds = %polly.loop_header266.us1026
  %polly.indvar_next238.us1060 = add nuw nsw i64 %polly.indvar237.us1024, 1
  %exitcond1185.not = icmp eq i64 %polly.indvar_next238.us1060, %97
  br i1 %exitcond1185.not, label %polly.loop_header280.preheader, label %polly.loop_header234.us1023

polly.loop_exit282:                               ; preds = %polly.loop_exit289.loopexit.us, %polly.loop_header280.preheader
  %polly.indvar_next232 = add nsw i64 %polly.indvar231, 1
  %polly.loop_cond233 = icmp slt i64 %polly.indvar231, 14
  %indvars.iv.next1182 = add i64 %indvars.iv1181, 80
  %indvars.iv.next1192 = add i64 %indvars.iv1191, -80
  %indvars.iv.next1197 = add i64 %indvars.iv1196, 80
  %indvar.next1524 = add i64 %indvar1523, 1
  br i1 %polly.loop_cond233, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header280.preheader:                   ; preds = %polly.merge.loopexit997.us1068, %polly.merge.us, %polly.loop_header228.split
  %137 = sub nsw i64 %112, %127
  %138 = icmp sgt i64 %137, 0
  %139 = select i1 %138, i64 %137, i64 0
  %polly.loop_guard290 = icmp slt i64 %139, 80
  br i1 %polly.loop_guard290, label %polly.loop_header280.us, label %polly.loop_exit282

polly.loop_header280.us:                          ; preds = %polly.loop_header280.preheader, %polly.loop_exit289.loopexit.us
  %polly.indvar283.us = phi i64 [ %polly.indvar_next284.us, %polly.loop_exit289.loopexit.us ], [ 0, %polly.loop_header280.preheader ]
  %polly.access.mul.Packed_MemRef_call1302.us = mul nuw nsw i64 %polly.indvar283.us, 1200
  br label %polly.loop_header287.us

polly.loop_header287.us:                          ; preds = %polly.loop_header280.us, %polly.loop_exit297.us
  %indvar1526 = phi i64 [ 0, %polly.loop_header280.us ], [ %indvar.next1527, %polly.loop_exit297.us ]
  %indvars.iv1198 = phi i64 [ %125, %polly.loop_header280.us ], [ %indvars.iv.next1199, %polly.loop_exit297.us ]
  %polly.indvar291.us = phi i64 [ %139, %polly.loop_header280.us ], [ %polly.indvar_next292.us, %polly.loop_exit297.us ]
  %140 = add i64 %124, %indvar1526
  %smin1528 = call i64 @llvm.smin.i64(i64 %140, i64 49)
  %141 = add nsw i64 %smin1528, 1
  %smin1200 = call i64 @llvm.smin.i64(i64 %indvars.iv1198, i64 49)
  %142 = add i64 %polly.indvar291.us, %127
  %143 = add i64 %142, %113
  %polly.loop_guard298.us1320 = icmp sgt i64 %143, -1
  br i1 %polly.loop_guard298.us1320, label %polly.loop_header295.preheader.us, label %polly.loop_exit297.us

polly.loop_header295.us:                          ; preds = %polly.loop_header295.us.preheader, %polly.loop_header295.us
  %polly.indvar299.us = phi i64 [ %polly.indvar_next300.us, %polly.loop_header295.us ], [ %polly.indvar299.us.ph, %polly.loop_header295.us.preheader ]
  %144 = add nuw nsw i64 %polly.indvar299.us, %112
  %polly.access.add.Packed_MemRef_call1303.us = add nuw nsw i64 %polly.indvar299.us, %polly.access.mul.Packed_MemRef_call1302.us
  %polly.access.Packed_MemRef_call1304.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1303.us
  %_p_scalar_305.us = load double, double* %polly.access.Packed_MemRef_call1304.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_309.us, %_p_scalar_305.us
  %polly.access.Packed_MemRef_call2312.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1303.us
  %_p_scalar_313.us = load double, double* %polly.access.Packed_MemRef_call2312.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_317.us, %_p_scalar_313.us
  %145 = shl i64 %144, 3
  %146 = add i64 %145, %147
  %scevgep318.us = getelementptr i8, i8* %call, i64 %146
  %scevgep318319.us = bitcast i8* %scevgep318.us to double*
  %_p_scalar_320.us = load double, double* %scevgep318319.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_320.us
  store double %p_add42.i118.us, double* %scevgep318319.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next300.us = add nuw nsw i64 %polly.indvar299.us, 1
  %exitcond1201.not = icmp eq i64 %polly.indvar299.us, %smin1200
  br i1 %exitcond1201.not, label %polly.loop_exit297.us, label %polly.loop_header295.us, !llvm.loop !84

polly.loop_exit297.us:                            ; preds = %polly.loop_header295.us, %middle.block1520, %polly.loop_header287.us
  %polly.indvar_next292.us = add nuw nsw i64 %polly.indvar291.us, 1
  %polly.loop_cond293.us = icmp ult i64 %polly.indvar291.us, 79
  %indvars.iv.next1199 = add i64 %indvars.iv1198, 1
  %indvar.next1527 = add i64 %indvar1526, 1
  br i1 %polly.loop_cond293.us, label %polly.loop_header287.us, label %polly.loop_exit289.loopexit.us

polly.loop_header295.preheader.us:                ; preds = %polly.loop_header287.us
  %polly.access.add.Packed_MemRef_call2307.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1302.us, %143
  %polly.access.Packed_MemRef_call2308.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2307.us
  %_p_scalar_309.us = load double, double* %polly.access.Packed_MemRef_call2308.us, align 8
  %polly.access.Packed_MemRef_call1316.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2307.us
  %_p_scalar_317.us = load double, double* %polly.access.Packed_MemRef_call1316.us, align 8
  %147 = mul i64 %142, 9600
  %min.iters.check1529 = icmp ult i64 %141, 4
  br i1 %min.iters.check1529, label %polly.loop_header295.us.preheader, label %vector.ph1530

vector.ph1530:                                    ; preds = %polly.loop_header295.preheader.us
  %n.vec1532 = and i64 %141, -4
  %broadcast.splatinsert1538 = insertelement <4 x double> poison, double %_p_scalar_309.us, i32 0
  %broadcast.splat1539 = shufflevector <4 x double> %broadcast.splatinsert1538, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1541 = insertelement <4 x double> poison, double %_p_scalar_317.us, i32 0
  %broadcast.splat1542 = shufflevector <4 x double> %broadcast.splatinsert1541, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1522

vector.body1522:                                  ; preds = %vector.body1522, %vector.ph1530
  %index1533 = phi i64 [ 0, %vector.ph1530 ], [ %index.next1534, %vector.body1522 ]
  %148 = add nuw nsw i64 %index1533, %112
  %149 = add nuw nsw i64 %index1533, %polly.access.mul.Packed_MemRef_call1302.us
  %150 = getelementptr double, double* %Packed_MemRef_call1, i64 %149
  %151 = bitcast double* %150 to <4 x double>*
  %wide.load1537 = load <4 x double>, <4 x double>* %151, align 8
  %152 = fmul fast <4 x double> %broadcast.splat1539, %wide.load1537
  %153 = getelementptr double, double* %Packed_MemRef_call2, i64 %149
  %154 = bitcast double* %153 to <4 x double>*
  %wide.load1540 = load <4 x double>, <4 x double>* %154, align 8
  %155 = fmul fast <4 x double> %broadcast.splat1542, %wide.load1540
  %156 = shl i64 %148, 3
  %157 = add i64 %156, %147
  %158 = getelementptr i8, i8* %call, i64 %157
  %159 = bitcast i8* %158 to <4 x double>*
  %wide.load1543 = load <4 x double>, <4 x double>* %159, align 8, !alias.scope !72, !noalias !74
  %160 = fadd fast <4 x double> %155, %152
  %161 = fmul fast <4 x double> %160, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %162 = fadd fast <4 x double> %161, %wide.load1543
  %163 = bitcast i8* %158 to <4 x double>*
  store <4 x double> %162, <4 x double>* %163, align 8, !alias.scope !72, !noalias !74
  %index.next1534 = add i64 %index1533, 4
  %164 = icmp eq i64 %index.next1534, %n.vec1532
  br i1 %164, label %middle.block1520, label %vector.body1522, !llvm.loop !85

middle.block1520:                                 ; preds = %vector.body1522
  %cmp.n1536 = icmp eq i64 %141, %n.vec1532
  br i1 %cmp.n1536, label %polly.loop_exit297.us, label %polly.loop_header295.us.preheader

polly.loop_header295.us.preheader:                ; preds = %polly.loop_header295.preheader.us, %middle.block1520
  %polly.indvar299.us.ph = phi i64 [ 0, %polly.loop_header295.preheader.us ], [ %n.vec1532, %middle.block1520 ]
  br label %polly.loop_header295.us

polly.loop_exit289.loopexit.us:                   ; preds = %polly.loop_exit297.us
  %polly.indvar_next284.us = add nuw nsw i64 %polly.indvar283.us, 1
  %exitcond1203.not = icmp eq i64 %polly.indvar_next284.us, %97
  br i1 %exitcond1203.not, label %polly.loop_exit282, label %polly.loop_header280.us

polly.start323:                                   ; preds = %kernel_syr2k.exit
  %malloccall325 = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  %malloccall327 = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  br label %polly.loop_header411

polly.exiting324:                                 ; preds = %polly.loop_exit435
  tail call void @free(i8* %malloccall325)
  tail call void @free(i8* %malloccall327)
  br label %kernel_syr2k.exit90

polly.loop_header411:                             ; preds = %polly.loop_exit419, %polly.start323
  %indvar1459 = phi i64 [ %indvar.next1460, %polly.loop_exit419 ], [ 0, %polly.start323 ]
  %polly.indvar414 = phi i64 [ %polly.indvar_next415, %polly.loop_exit419 ], [ 1, %polly.start323 ]
  %165 = add i64 %indvar1459, 1
  %166 = mul nuw nsw i64 %polly.indvar414, 9600
  %scevgep423 = getelementptr i8, i8* %call, i64 %166
  %min.iters.check1461 = icmp ult i64 %165, 4
  br i1 %min.iters.check1461, label %polly.loop_header417.preheader, label %vector.ph1462

vector.ph1462:                                    ; preds = %polly.loop_header411
  %n.vec1464 = and i64 %165, -4
  br label %vector.body1458

vector.body1458:                                  ; preds = %vector.body1458, %vector.ph1462
  %index1465 = phi i64 [ 0, %vector.ph1462 ], [ %index.next1466, %vector.body1458 ]
  %167 = shl nuw nsw i64 %index1465, 3
  %168 = getelementptr i8, i8* %scevgep423, i64 %167
  %169 = bitcast i8* %168 to <4 x double>*
  %wide.load1469 = load <4 x double>, <4 x double>* %169, align 8, !alias.scope !86, !noalias !88
  %170 = fmul fast <4 x double> %wide.load1469, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %171 = bitcast i8* %168 to <4 x double>*
  store <4 x double> %170, <4 x double>* %171, align 8, !alias.scope !86, !noalias !88
  %index.next1466 = add i64 %index1465, 4
  %172 = icmp eq i64 %index.next1466, %n.vec1464
  br i1 %172, label %middle.block1456, label %vector.body1458, !llvm.loop !93

middle.block1456:                                 ; preds = %vector.body1458
  %cmp.n1468 = icmp eq i64 %165, %n.vec1464
  br i1 %cmp.n1468, label %polly.loop_exit419, label %polly.loop_header417.preheader

polly.loop_header417.preheader:                   ; preds = %polly.loop_header411, %middle.block1456
  %polly.indvar420.ph = phi i64 [ 0, %polly.loop_header411 ], [ %n.vec1464, %middle.block1456 ]
  br label %polly.loop_header417

polly.loop_exit419:                               ; preds = %polly.loop_header417, %middle.block1456
  %polly.indvar_next415 = add nuw nsw i64 %polly.indvar414, 1
  %exitcond1246.not = icmp eq i64 %polly.indvar_next415, 1200
  %indvar.next1460 = add i64 %indvar1459, 1
  br i1 %exitcond1246.not, label %polly.loop_header427.preheader, label %polly.loop_header411

polly.loop_header427.preheader:                   ; preds = %polly.loop_exit419
  %Packed_MemRef_call1326 = bitcast i8* %malloccall325 to double*
  %Packed_MemRef_call2328 = bitcast i8* %malloccall327 to double*
  br label %polly.loop_header427

polly.loop_header417:                             ; preds = %polly.loop_header417.preheader, %polly.loop_header417
  %polly.indvar420 = phi i64 [ %polly.indvar_next421, %polly.loop_header417 ], [ %polly.indvar420.ph, %polly.loop_header417.preheader ]
  %173 = shl nuw nsw i64 %polly.indvar420, 3
  %scevgep424 = getelementptr i8, i8* %scevgep423, i64 %173
  %scevgep424425 = bitcast i8* %scevgep424 to double*
  %_p_scalar_426 = load double, double* %scevgep424425, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_426, 1.200000e+00
  store double %p_mul.i57, double* %scevgep424425, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next421 = add nuw nsw i64 %polly.indvar420, 1
  %exitcond1245.not = icmp eq i64 %polly.indvar_next421, %polly.indvar414
  br i1 %exitcond1245.not, label %polly.loop_exit419, label %polly.loop_header417, !llvm.loop !94

polly.loop_header427:                             ; preds = %polly.loop_header427.preheader, %polly.loop_exit435
  %indvars.iv1211 = phi i64 [ 0, %polly.loop_header427.preheader ], [ %indvars.iv.next1212, %polly.loop_exit435 ]
  %polly.indvar430 = phi i64 [ 0, %polly.loop_header427.preheader ], [ %polly.indvar_next431, %polly.loop_exit435 ]
  %smin1241 = call i64 @llvm.smin.i64(i64 %indvars.iv1211, i64 -984)
  %174 = add nsw i64 %smin1241, 1000
  %175 = shl nsw i64 %polly.indvar430, 4
  br label %polly.loop_header433

polly.loop_exit435:                               ; preds = %polly.loop_exit459
  %polly.indvar_next431 = add nuw nsw i64 %polly.indvar430, 1
  %indvars.iv.next1212 = add nsw i64 %indvars.iv1211, -16
  %exitcond1244.not = icmp eq i64 %polly.indvar_next431, 63
  br i1 %exitcond1244.not, label %polly.exiting324, label %polly.loop_header427

polly.loop_header433:                             ; preds = %polly.loop_exit459, %polly.loop_header427
  %indvars.iv1233 = phi i64 [ %indvars.iv.next1234, %polly.loop_exit459 ], [ 0, %polly.loop_header427 ]
  %indvars.iv1228 = phi i64 [ %indvars.iv.next1229, %polly.loop_exit459 ], [ 0, %polly.loop_header427 ]
  %indvars.iv1217 = phi i64 [ %indvars.iv.next1218, %polly.loop_exit459 ], [ 7, %polly.loop_header427 ]
  %indvars.iv1215 = phi i64 [ %indvars.iv.next1216, %polly.loop_exit459 ], [ 79, %polly.loop_header427 ]
  %indvars.iv1208 = phi i64 [ %indvars.iv.next1209, %polly.loop_exit459 ], [ 1200, %polly.loop_header427 ]
  %polly.indvar436 = phi i64 [ %polly.indvar_next437, %polly.loop_exit459 ], [ 0, %polly.loop_header427 ]
  %176 = mul nsw i64 %polly.indvar436, -30
  %177 = mul nuw nsw i64 %polly.indvar436, 3
  %178 = add nuw i64 %177, 7
  %179 = lshr i64 %178, 3
  %180 = mul nuw nsw i64 %179, 80
  %181 = add i64 %176, %180
  %182 = mul nuw nsw i64 %polly.indvar436, 30
  %183 = sub nsw i64 %182, %180
  %184 = lshr i64 %indvars.iv1217, 3
  %185 = mul nuw nsw i64 %184, 80
  %186 = add i64 %indvars.iv1228, %185
  %187 = sub nsw i64 %indvars.iv1233, %185
  %188 = sub nsw i64 %indvars.iv1215, %185
  %189 = mul nuw nsw i64 %polly.indvar436, 50
  br label %polly.loop_header439

polly.loop_exit441:                               ; preds = %polly.loop_exit447
  %190 = mul nsw i64 %polly.indvar436, -50
  %191 = mul nuw nsw i64 %polly.indvar436, 3
  %192 = add nuw nsw i64 %191, 7
  %pexp.p_div_q455 = lshr i64 %192, 3
  %193 = sub nsw i64 %polly.indvar436, %pexp.p_div_q455
  %polly.loop_guard460 = icmp slt i64 %193, 15
  br i1 %polly.loop_guard460, label %polly.loop_header457.preheader, label %polly.loop_exit459

polly.loop_header457.preheader:                   ; preds = %polly.loop_exit441
  %194 = mul nuw nsw i64 %polly.indvar436, 5
  br label %polly.loop_header457

polly.loop_exit459:                               ; preds = %polly.loop_exit516, %polly.loop_exit441
  %polly.indvar_next437 = add nuw nsw i64 %polly.indvar436, 1
  %indvars.iv.next1209 = add nsw i64 %indvars.iv1208, -50
  %indvars.iv.next1216 = add nuw nsw i64 %indvars.iv1215, 30
  %indvars.iv.next1218 = add nuw nsw i64 %indvars.iv1217, 3
  %indvars.iv.next1229 = add nsw i64 %indvars.iv1228, -30
  %indvars.iv.next1234 = add nuw nsw i64 %indvars.iv1233, 30
  %exitcond1243.not = icmp eq i64 %polly.indvar_next437, 24
  br i1 %exitcond1243.not, label %polly.loop_exit435, label %polly.loop_header433

polly.loop_header439:                             ; preds = %polly.loop_exit447, %polly.loop_header433
  %polly.indvar442 = phi i64 [ 0, %polly.loop_header433 ], [ %polly.indvar_next443, %polly.loop_exit447 ]
  %195 = add nuw nsw i64 %polly.indvar442, %175
  %polly.access.mul.Packed_MemRef_call2328 = mul nuw nsw i64 %polly.indvar442, 1200
  br label %polly.loop_header445

polly.loop_exit447:                               ; preds = %polly.loop_header445
  %polly.indvar_next443 = add nuw nsw i64 %polly.indvar442, 1
  %exitcond1214.not = icmp eq i64 %polly.indvar_next443, %174
  br i1 %exitcond1214.not, label %polly.loop_exit441, label %polly.loop_header439

polly.loop_header445:                             ; preds = %polly.loop_header445, %polly.loop_header439
  %polly.indvar448 = phi i64 [ 0, %polly.loop_header439 ], [ %polly.indvar_next449, %polly.loop_header445 ]
  %196 = add nuw nsw i64 %polly.indvar448, %189
  %polly.access.mul.call2452 = mul nuw nsw i64 %196, 1000
  %polly.access.add.call2453 = add nuw nsw i64 %195, %polly.access.mul.call2452
  %polly.access.call2454 = getelementptr double, double* %polly.access.cast.call2803, i64 %polly.access.add.call2453
  %polly.access.call2454.load = load double, double* %polly.access.call2454, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2328 = add nuw nsw i64 %polly.indvar448, %polly.access.mul.Packed_MemRef_call2328
  %polly.access.Packed_MemRef_call2328 = getelementptr double, double* %Packed_MemRef_call2328, i64 %polly.access.add.Packed_MemRef_call2328
  store double %polly.access.call2454.load, double* %polly.access.Packed_MemRef_call2328, align 8
  %polly.indvar_next449 = add nuw nsw i64 %polly.indvar448, 1
  %exitcond1210.not = icmp eq i64 %polly.indvar_next449, %indvars.iv1208
  br i1 %exitcond1210.not, label %polly.loop_exit447, label %polly.loop_header445

polly.loop_header457:                             ; preds = %polly.loop_header457.preheader, %polly.loop_exit516
  %indvar1473 = phi i64 [ 0, %polly.loop_header457.preheader ], [ %indvar.next1474, %polly.loop_exit516 ]
  %indvars.iv1235 = phi i64 [ %187, %polly.loop_header457.preheader ], [ %indvars.iv.next1236, %polly.loop_exit516 ]
  %indvars.iv1230 = phi i64 [ %186, %polly.loop_header457.preheader ], [ %indvars.iv.next1231, %polly.loop_exit516 ]
  %indvars.iv1219 = phi i64 [ %188, %polly.loop_header457.preheader ], [ %indvars.iv.next1220, %polly.loop_exit516 ]
  %polly.indvar461 = phi i64 [ %193, %polly.loop_header457.preheader ], [ %polly.indvar_next462, %polly.loop_exit516 ]
  %197 = mul nsw i64 %indvar1473, -80
  %198 = add i64 %181, %197
  %smax1475 = call i64 @llvm.smax.i64(i64 %198, i64 0)
  %199 = mul nuw nsw i64 %indvar1473, 80
  %200 = add i64 %183, %199
  %201 = add i64 %smax1475, %200
  %smax1232 = call i64 @llvm.smax.i64(i64 %indvars.iv1230, i64 0)
  %202 = add i64 %smax1232, %indvars.iv1235
  %smax1221 = call i64 @llvm.smax.i64(i64 %indvars.iv1219, i64 0)
  %203 = shl nsw i64 %polly.indvar461, 3
  %.not.not995 = icmp sgt i64 %203, %194
  %204 = mul nsw i64 %polly.indvar461, 80
  %205 = add nsw i64 %204, %190
  %206 = icmp sgt i64 %205, 50
  %207 = select i1 %206, i64 %205, i64 50
  %208 = add nsw i64 %205, 79
  %polly.loop_guard488.not = icmp sgt i64 %207, %208
  br i1 %.not.not995, label %polly.loop_header464.us, label %polly.loop_header457.split

polly.loop_header464.us:                          ; preds = %polly.loop_header457, %polly.merge471.us
  %polly.indvar467.us = phi i64 [ %polly.indvar_next468.us, %polly.merge471.us ], [ 0, %polly.loop_header457 ]
  %209 = add nuw nsw i64 %polly.indvar467.us, %175
  %polly.access.mul.Packed_MemRef_call1326.us = mul nuw nsw i64 %polly.indvar467.us, 1200
  br label %polly.loop_header474.us

polly.loop_header474.us:                          ; preds = %polly.loop_header464.us, %polly.loop_header474.us
  %polly.indvar477.us = phi i64 [ %polly.indvar_next478.us, %polly.loop_header474.us ], [ 0, %polly.loop_header464.us ]
  %210 = add nuw nsw i64 %polly.indvar477.us, %189
  %polly.access.mul.call1481.us = mul nuw nsw i64 %210, 1000
  %polly.access.add.call1482.us = add nuw nsw i64 %polly.access.mul.call1481.us, %209
  %polly.access.call1483.us = getelementptr double, double* %polly.access.cast.call1793, i64 %polly.access.add.call1482.us
  %polly.access.call1483.load.us = load double, double* %polly.access.call1483.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1326.us = add nuw nsw i64 %polly.indvar477.us, %polly.access.mul.Packed_MemRef_call1326.us
  %polly.access.Packed_MemRef_call1326.us = getelementptr double, double* %Packed_MemRef_call1326, i64 %polly.access.add.Packed_MemRef_call1326.us
  store double %polly.access.call1483.load.us, double* %polly.access.Packed_MemRef_call1326.us, align 8
  %polly.indvar_next478.us = add nuw nsw i64 %polly.indvar477.us, 1
  %exitcond1225.not = icmp eq i64 %polly.indvar_next478.us, 50
  br i1 %exitcond1225.not, label %polly.loop_exit476.us, label %polly.loop_header474.us

polly.loop_exit476.us:                            ; preds = %polly.loop_header474.us
  br i1 %polly.loop_guard488.not, label %polly.merge471.us, label %polly.loop_header485.us

polly.loop_header485.us:                          ; preds = %polly.loop_exit476.us, %polly.loop_header485.us
  %polly.indvar489.us = phi i64 [ %polly.indvar_next490.us, %polly.loop_header485.us ], [ %207, %polly.loop_exit476.us ]
  %211 = add nuw nsw i64 %polly.indvar489.us, %189
  %polly.access.mul.call1493.us = mul nsw i64 %211, 1000
  %polly.access.add.call1494.us = add nuw nsw i64 %polly.access.mul.call1493.us, %209
  %polly.access.call1495.us = getelementptr double, double* %polly.access.cast.call1793, i64 %polly.access.add.call1494.us
  %polly.access.call1495.load.us = load double, double* %polly.access.call1495.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1326497.us = add nuw nsw i64 %polly.indvar489.us, %polly.access.mul.Packed_MemRef_call1326.us
  %polly.access.Packed_MemRef_call1326498.us = getelementptr double, double* %Packed_MemRef_call1326, i64 %polly.access.add.Packed_MemRef_call1326497.us
  store double %polly.access.call1495.load.us, double* %polly.access.Packed_MemRef_call1326498.us, align 8
  %polly.indvar_next490.us = add nuw nsw i64 %polly.indvar489.us, 1
  %polly.loop_cond491.not.not.us = icmp slt i64 %polly.indvar489.us, %208
  br i1 %polly.loop_cond491.not.not.us, label %polly.loop_header485.us, label %polly.merge471.us

polly.merge471.us:                                ; preds = %polly.loop_header485.us, %polly.loop_exit476.us
  %polly.indvar_next468.us = add nuw nsw i64 %polly.indvar467.us, 1
  %exitcond1227.not = icmp eq i64 %polly.indvar_next468.us, %174
  br i1 %exitcond1227.not, label %polly.loop_header514.preheader, label %polly.loop_header464.us

polly.loop_header457.split:                       ; preds = %polly.loop_header457
  %polly.loop_guard503 = icmp sgt i64 %205, -80
  br i1 %polly.loop_guard503, label %polly.loop_header464.us1069, label %polly.loop_header514.preheader

polly.loop_header464.us1069:                      ; preds = %polly.loop_header457.split, %polly.merge471.loopexit998.us1114
  %polly.indvar467.us1070 = phi i64 [ %polly.indvar_next468.us1106, %polly.merge471.loopexit998.us1114 ], [ 0, %polly.loop_header457.split ]
  %212 = add nuw nsw i64 %polly.indvar467.us1070, %175
  %polly.access.mul.Packed_MemRef_call1326511.us1113 = mul nuw nsw i64 %polly.indvar467.us1070, 1200
  br label %polly.loop_header500.us1072

polly.loop_header500.us1072:                      ; preds = %polly.loop_header464.us1069, %polly.loop_header500.us1072
  %polly.indvar504.us1073 = phi i64 [ %polly.indvar_next505.us1080, %polly.loop_header500.us1072 ], [ 0, %polly.loop_header464.us1069 ]
  %213 = add nuw nsw i64 %polly.indvar504.us1073, %189
  %polly.access.mul.call1508.us1074 = mul nuw nsw i64 %213, 1000
  %polly.access.add.call1509.us1075 = add nuw nsw i64 %212, %polly.access.mul.call1508.us1074
  %polly.access.call1510.us1076 = getelementptr double, double* %polly.access.cast.call1793, i64 %polly.access.add.call1509.us1075
  %polly.access.call1510.load.us1077 = load double, double* %polly.access.call1510.us1076, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1326512.us1078 = add nuw nsw i64 %polly.indvar504.us1073, %polly.access.mul.Packed_MemRef_call1326511.us1113
  %polly.access.Packed_MemRef_call1326513.us1079 = getelementptr double, double* %Packed_MemRef_call1326, i64 %polly.access.add.Packed_MemRef_call1326512.us1078
  store double %polly.access.call1510.load.us1077, double* %polly.access.Packed_MemRef_call1326513.us1079, align 8
  %polly.indvar_next505.us1080 = add nuw nsw i64 %polly.indvar504.us1073, 1
  %exitcond1222.not = icmp eq i64 %polly.indvar504.us1073, %smax1221
  br i1 %exitcond1222.not, label %polly.merge471.loopexit998.us1114, label %polly.loop_header500.us1072

polly.merge471.loopexit998.us1114:                ; preds = %polly.loop_header500.us1072
  %polly.indvar_next468.us1106 = add nuw nsw i64 %polly.indvar467.us1070, 1
  %exitcond1224.not = icmp eq i64 %polly.indvar_next468.us1106, %174
  br i1 %exitcond1224.not, label %polly.loop_header514.preheader, label %polly.loop_header464.us1069

polly.loop_exit516:                               ; preds = %polly.loop_exit523.loopexit.us, %polly.loop_header514.preheader
  %polly.indvar_next462 = add nsw i64 %polly.indvar461, 1
  %polly.loop_cond463 = icmp slt i64 %polly.indvar461, 14
  %indvars.iv.next1220 = add i64 %indvars.iv1219, 80
  %indvars.iv.next1231 = add i64 %indvars.iv1230, -80
  %indvars.iv.next1236 = add i64 %indvars.iv1235, 80
  %indvar.next1474 = add i64 %indvar1473, 1
  br i1 %polly.loop_cond463, label %polly.loop_header457, label %polly.loop_exit459

polly.loop_header514.preheader:                   ; preds = %polly.merge471.loopexit998.us1114, %polly.merge471.us, %polly.loop_header457.split
  %214 = sub nsw i64 %189, %204
  %215 = icmp sgt i64 %214, 0
  %216 = select i1 %215, i64 %214, i64 0
  %polly.loop_guard524 = icmp slt i64 %216, 80
  br i1 %polly.loop_guard524, label %polly.loop_header514.us, label %polly.loop_exit516

polly.loop_header514.us:                          ; preds = %polly.loop_header514.preheader, %polly.loop_exit523.loopexit.us
  %polly.indvar517.us = phi i64 [ %polly.indvar_next518.us, %polly.loop_exit523.loopexit.us ], [ 0, %polly.loop_header514.preheader ]
  %polly.access.mul.Packed_MemRef_call1326536.us = mul nuw nsw i64 %polly.indvar517.us, 1200
  br label %polly.loop_header521.us

polly.loop_header521.us:                          ; preds = %polly.loop_header514.us, %polly.loop_exit531.us
  %indvar1476 = phi i64 [ 0, %polly.loop_header514.us ], [ %indvar.next1477, %polly.loop_exit531.us ]
  %indvars.iv1237 = phi i64 [ %202, %polly.loop_header514.us ], [ %indvars.iv.next1238, %polly.loop_exit531.us ]
  %polly.indvar525.us = phi i64 [ %216, %polly.loop_header514.us ], [ %polly.indvar_next526.us, %polly.loop_exit531.us ]
  %217 = add i64 %201, %indvar1476
  %smin1478 = call i64 @llvm.smin.i64(i64 %217, i64 49)
  %218 = add nsw i64 %smin1478, 1
  %smin1239 = call i64 @llvm.smin.i64(i64 %indvars.iv1237, i64 49)
  %219 = add i64 %polly.indvar525.us, %204
  %220 = add i64 %219, %190
  %polly.loop_guard532.us1321 = icmp sgt i64 %220, -1
  br i1 %polly.loop_guard532.us1321, label %polly.loop_header529.preheader.us, label %polly.loop_exit531.us

polly.loop_header529.us:                          ; preds = %polly.loop_header529.us.preheader, %polly.loop_header529.us
  %polly.indvar533.us = phi i64 [ %polly.indvar_next534.us, %polly.loop_header529.us ], [ %polly.indvar533.us.ph, %polly.loop_header529.us.preheader ]
  %221 = add nuw nsw i64 %polly.indvar533.us, %189
  %polly.access.add.Packed_MemRef_call1326537.us = add nuw nsw i64 %polly.indvar533.us, %polly.access.mul.Packed_MemRef_call1326536.us
  %polly.access.Packed_MemRef_call1326538.us = getelementptr double, double* %Packed_MemRef_call1326, i64 %polly.access.add.Packed_MemRef_call1326537.us
  %_p_scalar_539.us = load double, double* %polly.access.Packed_MemRef_call1326538.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_543.us, %_p_scalar_539.us
  %polly.access.Packed_MemRef_call2328546.us = getelementptr double, double* %Packed_MemRef_call2328, i64 %polly.access.add.Packed_MemRef_call1326537.us
  %_p_scalar_547.us = load double, double* %polly.access.Packed_MemRef_call2328546.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_551.us, %_p_scalar_547.us
  %222 = shl i64 %221, 3
  %223 = add i64 %222, %224
  %scevgep552.us = getelementptr i8, i8* %call, i64 %223
  %scevgep552553.us = bitcast i8* %scevgep552.us to double*
  %_p_scalar_554.us = load double, double* %scevgep552553.us, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_554.us
  store double %p_add42.i79.us, double* %scevgep552553.us, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next534.us = add nuw nsw i64 %polly.indvar533.us, 1
  %exitcond1240.not = icmp eq i64 %polly.indvar533.us, %smin1239
  br i1 %exitcond1240.not, label %polly.loop_exit531.us, label %polly.loop_header529.us, !llvm.loop !97

polly.loop_exit531.us:                            ; preds = %polly.loop_header529.us, %middle.block1470, %polly.loop_header521.us
  %polly.indvar_next526.us = add nuw nsw i64 %polly.indvar525.us, 1
  %polly.loop_cond527.us = icmp ult i64 %polly.indvar525.us, 79
  %indvars.iv.next1238 = add i64 %indvars.iv1237, 1
  %indvar.next1477 = add i64 %indvar1476, 1
  br i1 %polly.loop_cond527.us, label %polly.loop_header521.us, label %polly.loop_exit523.loopexit.us

polly.loop_header529.preheader.us:                ; preds = %polly.loop_header521.us
  %polly.access.add.Packed_MemRef_call2328541.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1326536.us, %220
  %polly.access.Packed_MemRef_call2328542.us = getelementptr double, double* %Packed_MemRef_call2328, i64 %polly.access.add.Packed_MemRef_call2328541.us
  %_p_scalar_543.us = load double, double* %polly.access.Packed_MemRef_call2328542.us, align 8
  %polly.access.Packed_MemRef_call1326550.us = getelementptr double, double* %Packed_MemRef_call1326, i64 %polly.access.add.Packed_MemRef_call2328541.us
  %_p_scalar_551.us = load double, double* %polly.access.Packed_MemRef_call1326550.us, align 8
  %224 = mul i64 %219, 9600
  %min.iters.check1479 = icmp ult i64 %218, 4
  br i1 %min.iters.check1479, label %polly.loop_header529.us.preheader, label %vector.ph1480

vector.ph1480:                                    ; preds = %polly.loop_header529.preheader.us
  %n.vec1482 = and i64 %218, -4
  %broadcast.splatinsert1488 = insertelement <4 x double> poison, double %_p_scalar_543.us, i32 0
  %broadcast.splat1489 = shufflevector <4 x double> %broadcast.splatinsert1488, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1491 = insertelement <4 x double> poison, double %_p_scalar_551.us, i32 0
  %broadcast.splat1492 = shufflevector <4 x double> %broadcast.splatinsert1491, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1472

vector.body1472:                                  ; preds = %vector.body1472, %vector.ph1480
  %index1483 = phi i64 [ 0, %vector.ph1480 ], [ %index.next1484, %vector.body1472 ]
  %225 = add nuw nsw i64 %index1483, %189
  %226 = add nuw nsw i64 %index1483, %polly.access.mul.Packed_MemRef_call1326536.us
  %227 = getelementptr double, double* %Packed_MemRef_call1326, i64 %226
  %228 = bitcast double* %227 to <4 x double>*
  %wide.load1487 = load <4 x double>, <4 x double>* %228, align 8
  %229 = fmul fast <4 x double> %broadcast.splat1489, %wide.load1487
  %230 = getelementptr double, double* %Packed_MemRef_call2328, i64 %226
  %231 = bitcast double* %230 to <4 x double>*
  %wide.load1490 = load <4 x double>, <4 x double>* %231, align 8
  %232 = fmul fast <4 x double> %broadcast.splat1492, %wide.load1490
  %233 = shl i64 %225, 3
  %234 = add i64 %233, %224
  %235 = getelementptr i8, i8* %call, i64 %234
  %236 = bitcast i8* %235 to <4 x double>*
  %wide.load1493 = load <4 x double>, <4 x double>* %236, align 8, !alias.scope !86, !noalias !88
  %237 = fadd fast <4 x double> %232, %229
  %238 = fmul fast <4 x double> %237, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %239 = fadd fast <4 x double> %238, %wide.load1493
  %240 = bitcast i8* %235 to <4 x double>*
  store <4 x double> %239, <4 x double>* %240, align 8, !alias.scope !86, !noalias !88
  %index.next1484 = add i64 %index1483, 4
  %241 = icmp eq i64 %index.next1484, %n.vec1482
  br i1 %241, label %middle.block1470, label %vector.body1472, !llvm.loop !98

middle.block1470:                                 ; preds = %vector.body1472
  %cmp.n1486 = icmp eq i64 %218, %n.vec1482
  br i1 %cmp.n1486, label %polly.loop_exit531.us, label %polly.loop_header529.us.preheader

polly.loop_header529.us.preheader:                ; preds = %polly.loop_header529.preheader.us, %middle.block1470
  %polly.indvar533.us.ph = phi i64 [ 0, %polly.loop_header529.preheader.us ], [ %n.vec1482, %middle.block1470 ]
  br label %polly.loop_header529.us

polly.loop_exit523.loopexit.us:                   ; preds = %polly.loop_exit531.us
  %polly.indvar_next518.us = add nuw nsw i64 %polly.indvar517.us, 1
  %exitcond1242.not = icmp eq i64 %polly.indvar_next518.us, %174
  br i1 %exitcond1242.not, label %polly.loop_exit516, label %polly.loop_header514.us

polly.start557:                                   ; preds = %init_array.exit
  %malloccall559 = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  %malloccall561 = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  br label %polly.loop_header645

polly.exiting558:                                 ; preds = %polly.loop_exit669
  tail call void @free(i8* %malloccall559)
  tail call void @free(i8* %malloccall561)
  br label %kernel_syr2k.exit

polly.loop_header645:                             ; preds = %polly.loop_exit653, %polly.start557
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit653 ], [ 0, %polly.start557 ]
  %polly.indvar648 = phi i64 [ %polly.indvar_next649, %polly.loop_exit653 ], [ 1, %polly.start557 ]
  %242 = add i64 %indvar, 1
  %243 = mul nuw nsw i64 %polly.indvar648, 9600
  %scevgep657 = getelementptr i8, i8* %call, i64 %243
  %min.iters.check1411 = icmp ult i64 %242, 4
  br i1 %min.iters.check1411, label %polly.loop_header651.preheader, label %vector.ph1412

vector.ph1412:                                    ; preds = %polly.loop_header645
  %n.vec1414 = and i64 %242, -4
  br label %vector.body1410

vector.body1410:                                  ; preds = %vector.body1410, %vector.ph1412
  %index1415 = phi i64 [ 0, %vector.ph1412 ], [ %index.next1416, %vector.body1410 ]
  %244 = shl nuw nsw i64 %index1415, 3
  %245 = getelementptr i8, i8* %scevgep657, i64 %244
  %246 = bitcast i8* %245 to <4 x double>*
  %wide.load1419 = load <4 x double>, <4 x double>* %246, align 8, !alias.scope !99, !noalias !101
  %247 = fmul fast <4 x double> %wide.load1419, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %248 = bitcast i8* %245 to <4 x double>*
  store <4 x double> %247, <4 x double>* %248, align 8, !alias.scope !99, !noalias !101
  %index.next1416 = add i64 %index1415, 4
  %249 = icmp eq i64 %index.next1416, %n.vec1414
  br i1 %249, label %middle.block1408, label %vector.body1410, !llvm.loop !106

middle.block1408:                                 ; preds = %vector.body1410
  %cmp.n1418 = icmp eq i64 %242, %n.vec1414
  br i1 %cmp.n1418, label %polly.loop_exit653, label %polly.loop_header651.preheader

polly.loop_header651.preheader:                   ; preds = %polly.loop_header645, %middle.block1408
  %polly.indvar654.ph = phi i64 [ 0, %polly.loop_header645 ], [ %n.vec1414, %middle.block1408 ]
  br label %polly.loop_header651

polly.loop_exit653:                               ; preds = %polly.loop_header651, %middle.block1408
  %polly.indvar_next649 = add nuw nsw i64 %polly.indvar648, 1
  %exitcond1285.not = icmp eq i64 %polly.indvar_next649, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1285.not, label %polly.loop_header661.preheader, label %polly.loop_header645

polly.loop_header661.preheader:                   ; preds = %polly.loop_exit653
  %Packed_MemRef_call1560 = bitcast i8* %malloccall559 to double*
  %Packed_MemRef_call2562 = bitcast i8* %malloccall561 to double*
  br label %polly.loop_header661

polly.loop_header651:                             ; preds = %polly.loop_header651.preheader, %polly.loop_header651
  %polly.indvar654 = phi i64 [ %polly.indvar_next655, %polly.loop_header651 ], [ %polly.indvar654.ph, %polly.loop_header651.preheader ]
  %250 = shl nuw nsw i64 %polly.indvar654, 3
  %scevgep658 = getelementptr i8, i8* %scevgep657, i64 %250
  %scevgep658659 = bitcast i8* %scevgep658 to double*
  %_p_scalar_660 = load double, double* %scevgep658659, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_660, 1.200000e+00
  store double %p_mul.i, double* %scevgep658659, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next655 = add nuw nsw i64 %polly.indvar654, 1
  %exitcond1284.not = icmp eq i64 %polly.indvar_next655, %polly.indvar648
  br i1 %exitcond1284.not, label %polly.loop_exit653, label %polly.loop_header651, !llvm.loop !107

polly.loop_header661:                             ; preds = %polly.loop_header661.preheader, %polly.loop_exit669
  %indvars.iv1250 = phi i64 [ 0, %polly.loop_header661.preheader ], [ %indvars.iv.next1251, %polly.loop_exit669 ]
  %polly.indvar664 = phi i64 [ 0, %polly.loop_header661.preheader ], [ %polly.indvar_next665, %polly.loop_exit669 ]
  %smin1280 = call i64 @llvm.smin.i64(i64 %indvars.iv1250, i64 -984)
  %251 = add nsw i64 %smin1280, 1000
  %252 = shl nsw i64 %polly.indvar664, 4
  br label %polly.loop_header667

polly.loop_exit669:                               ; preds = %polly.loop_exit693
  %polly.indvar_next665 = add nuw nsw i64 %polly.indvar664, 1
  %indvars.iv.next1251 = add nsw i64 %indvars.iv1250, -16
  %exitcond1283.not = icmp eq i64 %polly.indvar_next665, 63
  br i1 %exitcond1283.not, label %polly.exiting558, label %polly.loop_header661

polly.loop_header667:                             ; preds = %polly.loop_exit693, %polly.loop_header661
  %indvars.iv1272 = phi i64 [ %indvars.iv.next1273, %polly.loop_exit693 ], [ 0, %polly.loop_header661 ]
  %indvars.iv1267 = phi i64 [ %indvars.iv.next1268, %polly.loop_exit693 ], [ 0, %polly.loop_header661 ]
  %indvars.iv1256 = phi i64 [ %indvars.iv.next1257, %polly.loop_exit693 ], [ 7, %polly.loop_header661 ]
  %indvars.iv1254 = phi i64 [ %indvars.iv.next1255, %polly.loop_exit693 ], [ 79, %polly.loop_header661 ]
  %indvars.iv1247 = phi i64 [ %indvars.iv.next1248, %polly.loop_exit693 ], [ 1200, %polly.loop_header661 ]
  %polly.indvar670 = phi i64 [ %polly.indvar_next671, %polly.loop_exit693 ], [ 0, %polly.loop_header661 ]
  %253 = mul nsw i64 %polly.indvar670, -30
  %254 = mul nuw nsw i64 %polly.indvar670, 3
  %255 = add nuw i64 %254, 7
  %256 = lshr i64 %255, 3
  %257 = mul nuw nsw i64 %256, 80
  %258 = add i64 %253, %257
  %259 = mul nuw nsw i64 %polly.indvar670, 30
  %260 = sub nsw i64 %259, %257
  %261 = lshr i64 %indvars.iv1256, 3
  %262 = mul nuw nsw i64 %261, 80
  %263 = add i64 %indvars.iv1267, %262
  %264 = sub nsw i64 %indvars.iv1272, %262
  %265 = sub nsw i64 %indvars.iv1254, %262
  %266 = mul nuw nsw i64 %polly.indvar670, 50
  br label %polly.loop_header673

polly.loop_exit675:                               ; preds = %polly.loop_exit681
  %267 = mul nsw i64 %polly.indvar670, -50
  %268 = mul nuw nsw i64 %polly.indvar670, 3
  %269 = add nuw nsw i64 %268, 7
  %pexp.p_div_q689 = lshr i64 %269, 3
  %270 = sub nsw i64 %polly.indvar670, %pexp.p_div_q689
  %polly.loop_guard694 = icmp slt i64 %270, 15
  br i1 %polly.loop_guard694, label %polly.loop_header691.preheader, label %polly.loop_exit693

polly.loop_header691.preheader:                   ; preds = %polly.loop_exit675
  %271 = mul nuw nsw i64 %polly.indvar670, 5
  br label %polly.loop_header691

polly.loop_exit693:                               ; preds = %polly.loop_exit750, %polly.loop_exit675
  %polly.indvar_next671 = add nuw nsw i64 %polly.indvar670, 1
  %indvars.iv.next1248 = add nsw i64 %indvars.iv1247, -50
  %indvars.iv.next1255 = add nuw nsw i64 %indvars.iv1254, 30
  %indvars.iv.next1257 = add nuw nsw i64 %indvars.iv1256, 3
  %indvars.iv.next1268 = add nsw i64 %indvars.iv1267, -30
  %indvars.iv.next1273 = add nuw nsw i64 %indvars.iv1272, 30
  %exitcond1282.not = icmp eq i64 %polly.indvar_next671, 24
  br i1 %exitcond1282.not, label %polly.loop_exit669, label %polly.loop_header667

polly.loop_header673:                             ; preds = %polly.loop_exit681, %polly.loop_header667
  %polly.indvar676 = phi i64 [ 0, %polly.loop_header667 ], [ %polly.indvar_next677, %polly.loop_exit681 ]
  %272 = add nuw nsw i64 %polly.indvar676, %252
  %polly.access.mul.Packed_MemRef_call2562 = mul nuw nsw i64 %polly.indvar676, 1200
  br label %polly.loop_header679

polly.loop_exit681:                               ; preds = %polly.loop_header679
  %polly.indvar_next677 = add nuw nsw i64 %polly.indvar676, 1
  %exitcond1253.not = icmp eq i64 %polly.indvar_next677, %251
  br i1 %exitcond1253.not, label %polly.loop_exit675, label %polly.loop_header673

polly.loop_header679:                             ; preds = %polly.loop_header679, %polly.loop_header673
  %polly.indvar682 = phi i64 [ 0, %polly.loop_header673 ], [ %polly.indvar_next683, %polly.loop_header679 ]
  %273 = add nuw nsw i64 %polly.indvar682, %266
  %polly.access.mul.call2686 = mul nuw nsw i64 %273, 1000
  %polly.access.add.call2687 = add nuw nsw i64 %272, %polly.access.mul.call2686
  %polly.access.call2688 = getelementptr double, double* %polly.access.cast.call2803, i64 %polly.access.add.call2687
  %polly.access.call2688.load = load double, double* %polly.access.call2688, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2562 = add nuw nsw i64 %polly.indvar682, %polly.access.mul.Packed_MemRef_call2562
  %polly.access.Packed_MemRef_call2562 = getelementptr double, double* %Packed_MemRef_call2562, i64 %polly.access.add.Packed_MemRef_call2562
  store double %polly.access.call2688.load, double* %polly.access.Packed_MemRef_call2562, align 8
  %polly.indvar_next683 = add nuw nsw i64 %polly.indvar682, 1
  %exitcond1249.not = icmp eq i64 %polly.indvar_next683, %indvars.iv1247
  br i1 %exitcond1249.not, label %polly.loop_exit681, label %polly.loop_header679

polly.loop_header691:                             ; preds = %polly.loop_header691.preheader, %polly.loop_exit750
  %indvar1423 = phi i64 [ 0, %polly.loop_header691.preheader ], [ %indvar.next1424, %polly.loop_exit750 ]
  %indvars.iv1274 = phi i64 [ %264, %polly.loop_header691.preheader ], [ %indvars.iv.next1275, %polly.loop_exit750 ]
  %indvars.iv1269 = phi i64 [ %263, %polly.loop_header691.preheader ], [ %indvars.iv.next1270, %polly.loop_exit750 ]
  %indvars.iv1258 = phi i64 [ %265, %polly.loop_header691.preheader ], [ %indvars.iv.next1259, %polly.loop_exit750 ]
  %polly.indvar695 = phi i64 [ %270, %polly.loop_header691.preheader ], [ %polly.indvar_next696, %polly.loop_exit750 ]
  %274 = mul nsw i64 %indvar1423, -80
  %275 = add i64 %258, %274
  %smax1425 = call i64 @llvm.smax.i64(i64 %275, i64 0)
  %276 = mul nuw nsw i64 %indvar1423, 80
  %277 = add i64 %260, %276
  %278 = add i64 %smax1425, %277
  %smax1271 = call i64 @llvm.smax.i64(i64 %indvars.iv1269, i64 0)
  %279 = add i64 %smax1271, %indvars.iv1274
  %smax1260 = call i64 @llvm.smax.i64(i64 %indvars.iv1258, i64 0)
  %280 = shl nsw i64 %polly.indvar695, 3
  %.not.not996 = icmp sgt i64 %280, %271
  %281 = mul nsw i64 %polly.indvar695, 80
  %282 = add nsw i64 %281, %267
  %283 = icmp sgt i64 %282, 50
  %284 = select i1 %283, i64 %282, i64 50
  %285 = add nsw i64 %282, 79
  %polly.loop_guard722.not = icmp sgt i64 %284, %285
  br i1 %.not.not996, label %polly.loop_header698.us, label %polly.loop_header691.split

polly.loop_header698.us:                          ; preds = %polly.loop_header691, %polly.merge705.us
  %polly.indvar701.us = phi i64 [ %polly.indvar_next702.us, %polly.merge705.us ], [ 0, %polly.loop_header691 ]
  %286 = add nuw nsw i64 %polly.indvar701.us, %252
  %polly.access.mul.Packed_MemRef_call1560.us = mul nuw nsw i64 %polly.indvar701.us, 1200
  br label %polly.loop_header708.us

polly.loop_header708.us:                          ; preds = %polly.loop_header698.us, %polly.loop_header708.us
  %polly.indvar711.us = phi i64 [ %polly.indvar_next712.us, %polly.loop_header708.us ], [ 0, %polly.loop_header698.us ]
  %287 = add nuw nsw i64 %polly.indvar711.us, %266
  %polly.access.mul.call1715.us = mul nuw nsw i64 %287, 1000
  %polly.access.add.call1716.us = add nuw nsw i64 %polly.access.mul.call1715.us, %286
  %polly.access.call1717.us = getelementptr double, double* %polly.access.cast.call1793, i64 %polly.access.add.call1716.us
  %polly.access.call1717.load.us = load double, double* %polly.access.call1717.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1560.us = add nuw nsw i64 %polly.indvar711.us, %polly.access.mul.Packed_MemRef_call1560.us
  %polly.access.Packed_MemRef_call1560.us = getelementptr double, double* %Packed_MemRef_call1560, i64 %polly.access.add.Packed_MemRef_call1560.us
  store double %polly.access.call1717.load.us, double* %polly.access.Packed_MemRef_call1560.us, align 8
  %polly.indvar_next712.us = add nuw nsw i64 %polly.indvar711.us, 1
  %exitcond1264.not = icmp eq i64 %polly.indvar_next712.us, 50
  br i1 %exitcond1264.not, label %polly.loop_exit710.us, label %polly.loop_header708.us

polly.loop_exit710.us:                            ; preds = %polly.loop_header708.us
  br i1 %polly.loop_guard722.not, label %polly.merge705.us, label %polly.loop_header719.us

polly.loop_header719.us:                          ; preds = %polly.loop_exit710.us, %polly.loop_header719.us
  %polly.indvar723.us = phi i64 [ %polly.indvar_next724.us, %polly.loop_header719.us ], [ %284, %polly.loop_exit710.us ]
  %288 = add nuw nsw i64 %polly.indvar723.us, %266
  %polly.access.mul.call1727.us = mul nsw i64 %288, 1000
  %polly.access.add.call1728.us = add nuw nsw i64 %polly.access.mul.call1727.us, %286
  %polly.access.call1729.us = getelementptr double, double* %polly.access.cast.call1793, i64 %polly.access.add.call1728.us
  %polly.access.call1729.load.us = load double, double* %polly.access.call1729.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1560731.us = add nuw nsw i64 %polly.indvar723.us, %polly.access.mul.Packed_MemRef_call1560.us
  %polly.access.Packed_MemRef_call1560732.us = getelementptr double, double* %Packed_MemRef_call1560, i64 %polly.access.add.Packed_MemRef_call1560731.us
  store double %polly.access.call1729.load.us, double* %polly.access.Packed_MemRef_call1560732.us, align 8
  %polly.indvar_next724.us = add nuw nsw i64 %polly.indvar723.us, 1
  %polly.loop_cond725.not.not.us = icmp slt i64 %polly.indvar723.us, %285
  br i1 %polly.loop_cond725.not.not.us, label %polly.loop_header719.us, label %polly.merge705.us

polly.merge705.us:                                ; preds = %polly.loop_header719.us, %polly.loop_exit710.us
  %polly.indvar_next702.us = add nuw nsw i64 %polly.indvar701.us, 1
  %exitcond1266.not = icmp eq i64 %polly.indvar_next702.us, %251
  br i1 %exitcond1266.not, label %polly.loop_header748.preheader, label %polly.loop_header698.us

polly.loop_header691.split:                       ; preds = %polly.loop_header691
  %polly.loop_guard737 = icmp sgt i64 %282, -80
  br i1 %polly.loop_guard737, label %polly.loop_header698.us1115, label %polly.loop_header748.preheader

polly.loop_header698.us1115:                      ; preds = %polly.loop_header691.split, %polly.merge705.loopexit999.us1160
  %polly.indvar701.us1116 = phi i64 [ %polly.indvar_next702.us1152, %polly.merge705.loopexit999.us1160 ], [ 0, %polly.loop_header691.split ]
  %289 = add nuw nsw i64 %polly.indvar701.us1116, %252
  %polly.access.mul.Packed_MemRef_call1560745.us1159 = mul nuw nsw i64 %polly.indvar701.us1116, 1200
  br label %polly.loop_header734.us1118

polly.loop_header734.us1118:                      ; preds = %polly.loop_header698.us1115, %polly.loop_header734.us1118
  %polly.indvar738.us1119 = phi i64 [ %polly.indvar_next739.us1126, %polly.loop_header734.us1118 ], [ 0, %polly.loop_header698.us1115 ]
  %290 = add nuw nsw i64 %polly.indvar738.us1119, %266
  %polly.access.mul.call1742.us1120 = mul nuw nsw i64 %290, 1000
  %polly.access.add.call1743.us1121 = add nuw nsw i64 %289, %polly.access.mul.call1742.us1120
  %polly.access.call1744.us1122 = getelementptr double, double* %polly.access.cast.call1793, i64 %polly.access.add.call1743.us1121
  %polly.access.call1744.load.us1123 = load double, double* %polly.access.call1744.us1122, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1560746.us1124 = add nuw nsw i64 %polly.indvar738.us1119, %polly.access.mul.Packed_MemRef_call1560745.us1159
  %polly.access.Packed_MemRef_call1560747.us1125 = getelementptr double, double* %Packed_MemRef_call1560, i64 %polly.access.add.Packed_MemRef_call1560746.us1124
  store double %polly.access.call1744.load.us1123, double* %polly.access.Packed_MemRef_call1560747.us1125, align 8
  %polly.indvar_next739.us1126 = add nuw nsw i64 %polly.indvar738.us1119, 1
  %exitcond1261.not = icmp eq i64 %polly.indvar738.us1119, %smax1260
  br i1 %exitcond1261.not, label %polly.merge705.loopexit999.us1160, label %polly.loop_header734.us1118

polly.merge705.loopexit999.us1160:                ; preds = %polly.loop_header734.us1118
  %polly.indvar_next702.us1152 = add nuw nsw i64 %polly.indvar701.us1116, 1
  %exitcond1263.not = icmp eq i64 %polly.indvar_next702.us1152, %251
  br i1 %exitcond1263.not, label %polly.loop_header748.preheader, label %polly.loop_header698.us1115

polly.loop_exit750:                               ; preds = %polly.loop_exit757.loopexit.us, %polly.loop_header748.preheader
  %polly.indvar_next696 = add nsw i64 %polly.indvar695, 1
  %polly.loop_cond697 = icmp slt i64 %polly.indvar695, 14
  %indvars.iv.next1259 = add i64 %indvars.iv1258, 80
  %indvars.iv.next1270 = add i64 %indvars.iv1269, -80
  %indvars.iv.next1275 = add i64 %indvars.iv1274, 80
  %indvar.next1424 = add i64 %indvar1423, 1
  br i1 %polly.loop_cond697, label %polly.loop_header691, label %polly.loop_exit693

polly.loop_header748.preheader:                   ; preds = %polly.merge705.loopexit999.us1160, %polly.merge705.us, %polly.loop_header691.split
  %291 = sub nsw i64 %266, %281
  %292 = icmp sgt i64 %291, 0
  %293 = select i1 %292, i64 %291, i64 0
  %polly.loop_guard758 = icmp slt i64 %293, 80
  br i1 %polly.loop_guard758, label %polly.loop_header748.us, label %polly.loop_exit750

polly.loop_header748.us:                          ; preds = %polly.loop_header748.preheader, %polly.loop_exit757.loopexit.us
  %polly.indvar751.us = phi i64 [ %polly.indvar_next752.us, %polly.loop_exit757.loopexit.us ], [ 0, %polly.loop_header748.preheader ]
  %polly.access.mul.Packed_MemRef_call1560770.us = mul nuw nsw i64 %polly.indvar751.us, 1200
  br label %polly.loop_header755.us

polly.loop_header755.us:                          ; preds = %polly.loop_header748.us, %polly.loop_exit765.us
  %indvar1426 = phi i64 [ 0, %polly.loop_header748.us ], [ %indvar.next1427, %polly.loop_exit765.us ]
  %indvars.iv1276 = phi i64 [ %279, %polly.loop_header748.us ], [ %indvars.iv.next1277, %polly.loop_exit765.us ]
  %polly.indvar759.us = phi i64 [ %293, %polly.loop_header748.us ], [ %polly.indvar_next760.us, %polly.loop_exit765.us ]
  %294 = add i64 %278, %indvar1426
  %smin1428 = call i64 @llvm.smin.i64(i64 %294, i64 49)
  %295 = add nsw i64 %smin1428, 1
  %smin1278 = call i64 @llvm.smin.i64(i64 %indvars.iv1276, i64 49)
  %296 = add i64 %polly.indvar759.us, %281
  %297 = add i64 %296, %267
  %polly.loop_guard766.us1322 = icmp sgt i64 %297, -1
  br i1 %polly.loop_guard766.us1322, label %polly.loop_header763.preheader.us, label %polly.loop_exit765.us

polly.loop_header763.us:                          ; preds = %polly.loop_header763.us.preheader, %polly.loop_header763.us
  %polly.indvar767.us = phi i64 [ %polly.indvar_next768.us, %polly.loop_header763.us ], [ %polly.indvar767.us.ph, %polly.loop_header763.us.preheader ]
  %298 = add nuw nsw i64 %polly.indvar767.us, %266
  %polly.access.add.Packed_MemRef_call1560771.us = add nuw nsw i64 %polly.indvar767.us, %polly.access.mul.Packed_MemRef_call1560770.us
  %polly.access.Packed_MemRef_call1560772.us = getelementptr double, double* %Packed_MemRef_call1560, i64 %polly.access.add.Packed_MemRef_call1560771.us
  %_p_scalar_773.us = load double, double* %polly.access.Packed_MemRef_call1560772.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_777.us, %_p_scalar_773.us
  %polly.access.Packed_MemRef_call2562780.us = getelementptr double, double* %Packed_MemRef_call2562, i64 %polly.access.add.Packed_MemRef_call1560771.us
  %_p_scalar_781.us = load double, double* %polly.access.Packed_MemRef_call2562780.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_785.us, %_p_scalar_781.us
  %299 = shl i64 %298, 3
  %300 = add i64 %299, %301
  %scevgep786.us = getelementptr i8, i8* %call, i64 %300
  %scevgep786787.us = bitcast i8* %scevgep786.us to double*
  %_p_scalar_788.us = load double, double* %scevgep786787.us, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_788.us
  store double %p_add42.i.us, double* %scevgep786787.us, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next768.us = add nuw nsw i64 %polly.indvar767.us, 1
  %exitcond1279.not = icmp eq i64 %polly.indvar767.us, %smin1278
  br i1 %exitcond1279.not, label %polly.loop_exit765.us, label %polly.loop_header763.us, !llvm.loop !110

polly.loop_exit765.us:                            ; preds = %polly.loop_header763.us, %middle.block1420, %polly.loop_header755.us
  %polly.indvar_next760.us = add nuw nsw i64 %polly.indvar759.us, 1
  %polly.loop_cond761.us = icmp ult i64 %polly.indvar759.us, 79
  %indvars.iv.next1277 = add i64 %indvars.iv1276, 1
  %indvar.next1427 = add i64 %indvar1426, 1
  br i1 %polly.loop_cond761.us, label %polly.loop_header755.us, label %polly.loop_exit757.loopexit.us

polly.loop_header763.preheader.us:                ; preds = %polly.loop_header755.us
  %polly.access.add.Packed_MemRef_call2562775.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1560770.us, %297
  %polly.access.Packed_MemRef_call2562776.us = getelementptr double, double* %Packed_MemRef_call2562, i64 %polly.access.add.Packed_MemRef_call2562775.us
  %_p_scalar_777.us = load double, double* %polly.access.Packed_MemRef_call2562776.us, align 8
  %polly.access.Packed_MemRef_call1560784.us = getelementptr double, double* %Packed_MemRef_call1560, i64 %polly.access.add.Packed_MemRef_call2562775.us
  %_p_scalar_785.us = load double, double* %polly.access.Packed_MemRef_call1560784.us, align 8
  %301 = mul i64 %296, 9600
  %min.iters.check1429 = icmp ult i64 %295, 4
  br i1 %min.iters.check1429, label %polly.loop_header763.us.preheader, label %vector.ph1430

vector.ph1430:                                    ; preds = %polly.loop_header763.preheader.us
  %n.vec1432 = and i64 %295, -4
  %broadcast.splatinsert1438 = insertelement <4 x double> poison, double %_p_scalar_777.us, i32 0
  %broadcast.splat1439 = shufflevector <4 x double> %broadcast.splatinsert1438, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1441 = insertelement <4 x double> poison, double %_p_scalar_785.us, i32 0
  %broadcast.splat1442 = shufflevector <4 x double> %broadcast.splatinsert1441, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1422

vector.body1422:                                  ; preds = %vector.body1422, %vector.ph1430
  %index1433 = phi i64 [ 0, %vector.ph1430 ], [ %index.next1434, %vector.body1422 ]
  %302 = add nuw nsw i64 %index1433, %266
  %303 = add nuw nsw i64 %index1433, %polly.access.mul.Packed_MemRef_call1560770.us
  %304 = getelementptr double, double* %Packed_MemRef_call1560, i64 %303
  %305 = bitcast double* %304 to <4 x double>*
  %wide.load1437 = load <4 x double>, <4 x double>* %305, align 8
  %306 = fmul fast <4 x double> %broadcast.splat1439, %wide.load1437
  %307 = getelementptr double, double* %Packed_MemRef_call2562, i64 %303
  %308 = bitcast double* %307 to <4 x double>*
  %wide.load1440 = load <4 x double>, <4 x double>* %308, align 8
  %309 = fmul fast <4 x double> %broadcast.splat1442, %wide.load1440
  %310 = shl i64 %302, 3
  %311 = add i64 %310, %301
  %312 = getelementptr i8, i8* %call, i64 %311
  %313 = bitcast i8* %312 to <4 x double>*
  %wide.load1443 = load <4 x double>, <4 x double>* %313, align 8, !alias.scope !99, !noalias !101
  %314 = fadd fast <4 x double> %309, %306
  %315 = fmul fast <4 x double> %314, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %316 = fadd fast <4 x double> %315, %wide.load1443
  %317 = bitcast i8* %312 to <4 x double>*
  store <4 x double> %316, <4 x double>* %317, align 8, !alias.scope !99, !noalias !101
  %index.next1434 = add i64 %index1433, 4
  %318 = icmp eq i64 %index.next1434, %n.vec1432
  br i1 %318, label %middle.block1420, label %vector.body1422, !llvm.loop !111

middle.block1420:                                 ; preds = %vector.body1422
  %cmp.n1436 = icmp eq i64 %295, %n.vec1432
  br i1 %cmp.n1436, label %polly.loop_exit765.us, label %polly.loop_header763.us.preheader

polly.loop_header763.us.preheader:                ; preds = %polly.loop_header763.preheader.us, %middle.block1420
  %polly.indvar767.us.ph = phi i64 [ 0, %polly.loop_header763.preheader.us ], [ %n.vec1432, %middle.block1420 ]
  br label %polly.loop_header763.us

polly.loop_exit757.loopexit.us:                   ; preds = %polly.loop_exit765.us
  %polly.indvar_next752.us = add nuw nsw i64 %polly.indvar751.us, 1
  %exitcond1281.not = icmp eq i64 %polly.indvar_next752.us, %251
  br i1 %exitcond1281.not, label %polly.loop_exit750, label %polly.loop_header748.us

polly.loop_header915:                             ; preds = %entry, %polly.loop_exit923
  %indvars.iv1310 = phi i64 [ %indvars.iv.next1311, %polly.loop_exit923 ], [ 0, %entry ]
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_exit923 ], [ 0, %entry ]
  %smin1312 = call i64 @llvm.smin.i64(i64 %indvars.iv1310, i64 -1168)
  %319 = shl nsw i64 %polly.indvar918, 5
  %320 = add nsw i64 %smin1312, 1199
  br label %polly.loop_header921

polly.loop_exit923:                               ; preds = %polly.loop_exit929
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %indvars.iv.next1311 = add nsw i64 %indvars.iv1310, -32
  %exitcond1315.not = icmp eq i64 %polly.indvar_next919, 38
  br i1 %exitcond1315.not, label %polly.loop_header942, label %polly.loop_header915

polly.loop_header921:                             ; preds = %polly.loop_exit929, %polly.loop_header915
  %indvars.iv1306 = phi i64 [ %indvars.iv.next1307, %polly.loop_exit929 ], [ 0, %polly.loop_header915 ]
  %polly.indvar924 = phi i64 [ %polly.indvar_next925, %polly.loop_exit929 ], [ 0, %polly.loop_header915 ]
  %321 = mul nsw i64 %polly.indvar924, -32
  %smin = call i64 @llvm.smin.i64(i64 %321, i64 -1168)
  %322 = add nsw i64 %smin, 1200
  %smin1308 = call i64 @llvm.smin.i64(i64 %indvars.iv1306, i64 -1168)
  %323 = shl nsw i64 %polly.indvar924, 5
  %324 = add nsw i64 %smin1308, 1199
  br label %polly.loop_header927

polly.loop_exit929:                               ; preds = %polly.loop_exit935
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %indvars.iv.next1307 = add nsw i64 %indvars.iv1306, -32
  %exitcond1314.not = icmp eq i64 %polly.indvar_next925, 38
  br i1 %exitcond1314.not, label %polly.loop_exit923, label %polly.loop_header921

polly.loop_header927:                             ; preds = %polly.loop_exit935, %polly.loop_header921
  %polly.indvar930 = phi i64 [ 0, %polly.loop_header921 ], [ %polly.indvar_next931, %polly.loop_exit935 ]
  %325 = add nuw nsw i64 %polly.indvar930, %319
  %326 = trunc i64 %325 to i32
  %327 = mul nuw nsw i64 %325, 9600
  %min.iters.check = icmp eq i64 %322, 0
  br i1 %min.iters.check, label %polly.loop_header933, label %vector.ph1350

vector.ph1350:                                    ; preds = %polly.loop_header927
  %broadcast.splatinsert1357 = insertelement <4 x i64> poison, i64 %323, i32 0
  %broadcast.splat1358 = shufflevector <4 x i64> %broadcast.splatinsert1357, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1359 = insertelement <4 x i32> poison, i32 %326, i32 0
  %broadcast.splat1360 = shufflevector <4 x i32> %broadcast.splatinsert1359, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1349

vector.body1349:                                  ; preds = %vector.body1349, %vector.ph1350
  %index1351 = phi i64 [ 0, %vector.ph1350 ], [ %index.next1352, %vector.body1349 ]
  %vec.ind1355 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1350 ], [ %vec.ind.next1356, %vector.body1349 ]
  %328 = add nuw nsw <4 x i64> %vec.ind1355, %broadcast.splat1358
  %329 = trunc <4 x i64> %328 to <4 x i32>
  %330 = mul <4 x i32> %broadcast.splat1360, %329
  %331 = add <4 x i32> %330, <i32 3, i32 3, i32 3, i32 3>
  %332 = urem <4 x i32> %331, <i32 1200, i32 1200, i32 1200, i32 1200>
  %333 = sitofp <4 x i32> %332 to <4 x double>
  %334 = fmul fast <4 x double> %333, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %335 = extractelement <4 x i64> %328, i32 0
  %336 = shl i64 %335, 3
  %337 = add nuw nsw i64 %336, %327
  %338 = getelementptr i8, i8* %call, i64 %337
  %339 = bitcast i8* %338 to <4 x double>*
  store <4 x double> %334, <4 x double>* %339, align 8, !alias.scope !112, !noalias !114
  %index.next1352 = add i64 %index1351, 4
  %vec.ind.next1356 = add <4 x i64> %vec.ind1355, <i64 4, i64 4, i64 4, i64 4>
  %340 = icmp eq i64 %index.next1352, %322
  br i1 %340, label %polly.loop_exit935, label %vector.body1349, !llvm.loop !117

polly.loop_exit935:                               ; preds = %vector.body1349, %polly.loop_header933
  %polly.indvar_next931 = add nuw nsw i64 %polly.indvar930, 1
  %exitcond1313.not = icmp eq i64 %polly.indvar930, %320
  br i1 %exitcond1313.not, label %polly.loop_exit929, label %polly.loop_header927

polly.loop_header933:                             ; preds = %polly.loop_header927, %polly.loop_header933
  %polly.indvar936 = phi i64 [ %polly.indvar_next937, %polly.loop_header933 ], [ 0, %polly.loop_header927 ]
  %341 = add nuw nsw i64 %polly.indvar936, %323
  %342 = trunc i64 %341 to i32
  %343 = mul i32 %342, %326
  %344 = add i32 %343, 3
  %345 = urem i32 %344, 1200
  %p_conv31.i = sitofp i32 %345 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %346 = shl i64 %341, 3
  %347 = add nuw nsw i64 %346, %327
  %scevgep939 = getelementptr i8, i8* %call, i64 %347
  %scevgep939940 = bitcast i8* %scevgep939 to double*
  store double %p_div33.i, double* %scevgep939940, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next937 = add nuw nsw i64 %polly.indvar936, 1
  %exitcond1309.not = icmp eq i64 %polly.indvar936, %324
  br i1 %exitcond1309.not, label %polly.loop_exit935, label %polly.loop_header933, !llvm.loop !118

polly.loop_header942:                             ; preds = %polly.loop_exit923, %polly.loop_exit950
  %indvars.iv1300 = phi i64 [ %indvars.iv.next1301, %polly.loop_exit950 ], [ 0, %polly.loop_exit923 ]
  %polly.indvar945 = phi i64 [ %polly.indvar_next946, %polly.loop_exit950 ], [ 0, %polly.loop_exit923 ]
  %smin1302 = call i64 @llvm.smin.i64(i64 %indvars.iv1300, i64 -1168)
  %348 = shl nsw i64 %polly.indvar945, 5
  %349 = add nsw i64 %smin1302, 1199
  br label %polly.loop_header948

polly.loop_exit950:                               ; preds = %polly.loop_exit956
  %polly.indvar_next946 = add nuw nsw i64 %polly.indvar945, 1
  %indvars.iv.next1301 = add nsw i64 %indvars.iv1300, -32
  %exitcond1305.not = icmp eq i64 %polly.indvar_next946, 38
  br i1 %exitcond1305.not, label %polly.loop_header968, label %polly.loop_header942

polly.loop_header948:                             ; preds = %polly.loop_exit956, %polly.loop_header942
  %indvars.iv1296 = phi i64 [ %indvars.iv.next1297, %polly.loop_exit956 ], [ 0, %polly.loop_header942 ]
  %polly.indvar951 = phi i64 [ %polly.indvar_next952, %polly.loop_exit956 ], [ 0, %polly.loop_header942 ]
  %350 = mul nsw i64 %polly.indvar951, -32
  %smin1364 = call i64 @llvm.smin.i64(i64 %350, i64 -968)
  %351 = add nsw i64 %smin1364, 1000
  %smin1298 = call i64 @llvm.smin.i64(i64 %indvars.iv1296, i64 -968)
  %352 = shl nsw i64 %polly.indvar951, 5
  %353 = add nsw i64 %smin1298, 999
  br label %polly.loop_header954

polly.loop_exit956:                               ; preds = %polly.loop_exit962
  %polly.indvar_next952 = add nuw nsw i64 %polly.indvar951, 1
  %indvars.iv.next1297 = add nsw i64 %indvars.iv1296, -32
  %exitcond1304.not = icmp eq i64 %polly.indvar_next952, 32
  br i1 %exitcond1304.not, label %polly.loop_exit950, label %polly.loop_header948

polly.loop_header954:                             ; preds = %polly.loop_exit962, %polly.loop_header948
  %polly.indvar957 = phi i64 [ 0, %polly.loop_header948 ], [ %polly.indvar_next958, %polly.loop_exit962 ]
  %354 = add nuw nsw i64 %polly.indvar957, %348
  %355 = trunc i64 %354 to i32
  %356 = mul nuw nsw i64 %354, 8000
  %min.iters.check1365 = icmp eq i64 %351, 0
  br i1 %min.iters.check1365, label %polly.loop_header960, label %vector.ph1366

vector.ph1366:                                    ; preds = %polly.loop_header954
  %broadcast.splatinsert1375 = insertelement <4 x i64> poison, i64 %352, i32 0
  %broadcast.splat1376 = shufflevector <4 x i64> %broadcast.splatinsert1375, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1377 = insertelement <4 x i32> poison, i32 %355, i32 0
  %broadcast.splat1378 = shufflevector <4 x i32> %broadcast.splatinsert1377, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1363

vector.body1363:                                  ; preds = %vector.body1363, %vector.ph1366
  %index1369 = phi i64 [ 0, %vector.ph1366 ], [ %index.next1370, %vector.body1363 ]
  %vec.ind1373 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1366 ], [ %vec.ind.next1374, %vector.body1363 ]
  %357 = add nuw nsw <4 x i64> %vec.ind1373, %broadcast.splat1376
  %358 = trunc <4 x i64> %357 to <4 x i32>
  %359 = mul <4 x i32> %broadcast.splat1378, %358
  %360 = add <4 x i32> %359, <i32 2, i32 2, i32 2, i32 2>
  %361 = urem <4 x i32> %360, <i32 1000, i32 1000, i32 1000, i32 1000>
  %362 = sitofp <4 x i32> %361 to <4 x double>
  %363 = fmul fast <4 x double> %362, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %364 = extractelement <4 x i64> %357, i32 0
  %365 = shl i64 %364, 3
  %366 = add nuw nsw i64 %365, %356
  %367 = getelementptr i8, i8* %call2, i64 %366
  %368 = bitcast i8* %367 to <4 x double>*
  store <4 x double> %363, <4 x double>* %368, align 8, !alias.scope !116, !noalias !119
  %index.next1370 = add i64 %index1369, 4
  %vec.ind.next1374 = add <4 x i64> %vec.ind1373, <i64 4, i64 4, i64 4, i64 4>
  %369 = icmp eq i64 %index.next1370, %351
  br i1 %369, label %polly.loop_exit962, label %vector.body1363, !llvm.loop !120

polly.loop_exit962:                               ; preds = %vector.body1363, %polly.loop_header960
  %polly.indvar_next958 = add nuw nsw i64 %polly.indvar957, 1
  %exitcond1303.not = icmp eq i64 %polly.indvar957, %349
  br i1 %exitcond1303.not, label %polly.loop_exit956, label %polly.loop_header954

polly.loop_header960:                             ; preds = %polly.loop_header954, %polly.loop_header960
  %polly.indvar963 = phi i64 [ %polly.indvar_next964, %polly.loop_header960 ], [ 0, %polly.loop_header954 ]
  %370 = add nuw nsw i64 %polly.indvar963, %352
  %371 = trunc i64 %370 to i32
  %372 = mul i32 %371, %355
  %373 = add i32 %372, 2
  %374 = urem i32 %373, 1000
  %p_conv10.i = sitofp i32 %374 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %375 = shl i64 %370, 3
  %376 = add nuw nsw i64 %375, %356
  %scevgep966 = getelementptr i8, i8* %call2, i64 %376
  %scevgep966967 = bitcast i8* %scevgep966 to double*
  store double %p_div12.i, double* %scevgep966967, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next964 = add nuw nsw i64 %polly.indvar963, 1
  %exitcond1299.not = icmp eq i64 %polly.indvar963, %353
  br i1 %exitcond1299.not, label %polly.loop_exit962, label %polly.loop_header960, !llvm.loop !121

polly.loop_header968:                             ; preds = %polly.loop_exit950, %polly.loop_exit976
  %indvars.iv1290 = phi i64 [ %indvars.iv.next1291, %polly.loop_exit976 ], [ 0, %polly.loop_exit950 ]
  %polly.indvar971 = phi i64 [ %polly.indvar_next972, %polly.loop_exit976 ], [ 0, %polly.loop_exit950 ]
  %smin1292 = call i64 @llvm.smin.i64(i64 %indvars.iv1290, i64 -1168)
  %377 = shl nsw i64 %polly.indvar971, 5
  %378 = add nsw i64 %smin1292, 1199
  br label %polly.loop_header974

polly.loop_exit976:                               ; preds = %polly.loop_exit982
  %polly.indvar_next972 = add nuw nsw i64 %polly.indvar971, 1
  %indvars.iv.next1291 = add nsw i64 %indvars.iv1290, -32
  %exitcond1295.not = icmp eq i64 %polly.indvar_next972, 38
  br i1 %exitcond1295.not, label %init_array.exit, label %polly.loop_header968

polly.loop_header974:                             ; preds = %polly.loop_exit982, %polly.loop_header968
  %indvars.iv1286 = phi i64 [ %indvars.iv.next1287, %polly.loop_exit982 ], [ 0, %polly.loop_header968 ]
  %polly.indvar977 = phi i64 [ %polly.indvar_next978, %polly.loop_exit982 ], [ 0, %polly.loop_header968 ]
  %379 = mul nsw i64 %polly.indvar977, -32
  %smin1382 = call i64 @llvm.smin.i64(i64 %379, i64 -968)
  %380 = add nsw i64 %smin1382, 1000
  %smin1288 = call i64 @llvm.smin.i64(i64 %indvars.iv1286, i64 -968)
  %381 = shl nsw i64 %polly.indvar977, 5
  %382 = add nsw i64 %smin1288, 999
  br label %polly.loop_header980

polly.loop_exit982:                               ; preds = %polly.loop_exit988
  %polly.indvar_next978 = add nuw nsw i64 %polly.indvar977, 1
  %indvars.iv.next1287 = add nsw i64 %indvars.iv1286, -32
  %exitcond1294.not = icmp eq i64 %polly.indvar_next978, 32
  br i1 %exitcond1294.not, label %polly.loop_exit976, label %polly.loop_header974

polly.loop_header980:                             ; preds = %polly.loop_exit988, %polly.loop_header974
  %polly.indvar983 = phi i64 [ 0, %polly.loop_header974 ], [ %polly.indvar_next984, %polly.loop_exit988 ]
  %383 = add nuw nsw i64 %polly.indvar983, %377
  %384 = trunc i64 %383 to i32
  %385 = mul nuw nsw i64 %383, 8000
  %min.iters.check1383 = icmp eq i64 %380, 0
  br i1 %min.iters.check1383, label %polly.loop_header986, label %vector.ph1384

vector.ph1384:                                    ; preds = %polly.loop_header980
  %broadcast.splatinsert1393 = insertelement <4 x i64> poison, i64 %381, i32 0
  %broadcast.splat1394 = shufflevector <4 x i64> %broadcast.splatinsert1393, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1395 = insertelement <4 x i32> poison, i32 %384, i32 0
  %broadcast.splat1396 = shufflevector <4 x i32> %broadcast.splatinsert1395, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1381

vector.body1381:                                  ; preds = %vector.body1381, %vector.ph1384
  %index1387 = phi i64 [ 0, %vector.ph1384 ], [ %index.next1388, %vector.body1381 ]
  %vec.ind1391 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1384 ], [ %vec.ind.next1392, %vector.body1381 ]
  %386 = add nuw nsw <4 x i64> %vec.ind1391, %broadcast.splat1394
  %387 = trunc <4 x i64> %386 to <4 x i32>
  %388 = mul <4 x i32> %broadcast.splat1396, %387
  %389 = add <4 x i32> %388, <i32 1, i32 1, i32 1, i32 1>
  %390 = urem <4 x i32> %389, <i32 1200, i32 1200, i32 1200, i32 1200>
  %391 = sitofp <4 x i32> %390 to <4 x double>
  %392 = fmul fast <4 x double> %391, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %393 = extractelement <4 x i64> %386, i32 0
  %394 = shl i64 %393, 3
  %395 = add nuw nsw i64 %394, %385
  %396 = getelementptr i8, i8* %call1, i64 %395
  %397 = bitcast i8* %396 to <4 x double>*
  store <4 x double> %392, <4 x double>* %397, align 8, !alias.scope !115, !noalias !122
  %index.next1388 = add i64 %index1387, 4
  %vec.ind.next1392 = add <4 x i64> %vec.ind1391, <i64 4, i64 4, i64 4, i64 4>
  %398 = icmp eq i64 %index.next1388, %380
  br i1 %398, label %polly.loop_exit988, label %vector.body1381, !llvm.loop !123

polly.loop_exit988:                               ; preds = %vector.body1381, %polly.loop_header986
  %polly.indvar_next984 = add nuw nsw i64 %polly.indvar983, 1
  %exitcond1293.not = icmp eq i64 %polly.indvar983, %378
  br i1 %exitcond1293.not, label %polly.loop_exit982, label %polly.loop_header980

polly.loop_header986:                             ; preds = %polly.loop_header980, %polly.loop_header986
  %polly.indvar989 = phi i64 [ %polly.indvar_next990, %polly.loop_header986 ], [ 0, %polly.loop_header980 ]
  %399 = add nuw nsw i64 %polly.indvar989, %381
  %400 = trunc i64 %399 to i32
  %401 = mul i32 %400, %384
  %402 = add i32 %401, 1
  %403 = urem i32 %402, 1200
  %p_conv.i = sitofp i32 %403 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %404 = shl i64 %399, 3
  %405 = add nuw nsw i64 %404, %385
  %scevgep993 = getelementptr i8, i8* %call1, i64 %405
  %scevgep993994 = bitcast i8* %scevgep993 to double*
  store double %p_div.i, double* %scevgep993994, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next990 = add nuw nsw i64 %polly.indvar989, 1
  %exitcond1289.not = icmp eq i64 %polly.indvar989, %382
  br i1 %exitcond1289.not, label %polly.loop_exit988, label %polly.loop_header986, !llvm.loop !124
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
!26 = !{!"llvm.loop.tile.size", i32 50}
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
