; ModuleID = 'syr2k_exhaustive/mmp_all_XL_963.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_963.c"
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
  %scevgep1295 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1294 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1293 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1292 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1292, %scevgep1295
  %bound1 = icmp ult i8* %scevgep1294, %scevgep1293
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
  br i1 %exitcond18.not.i, label %vector.ph1299, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1299:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1306 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1307 = shufflevector <4 x i64> %broadcast.splatinsert1306, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1298

vector.body1298:                                  ; preds = %vector.body1298, %vector.ph1299
  %index1300 = phi i64 [ 0, %vector.ph1299 ], [ %index.next1301, %vector.body1298 ]
  %vec.ind1304 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1299 ], [ %vec.ind.next1305, %vector.body1298 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1304, %broadcast.splat1307
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call923, i64 %indvars.iv7.i, i64 %index1300
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1301 = add i64 %index1300, 4
  %vec.ind.next1305 = add <4 x i64> %vec.ind1304, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1301, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1298, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1298
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1299, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit958
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start545, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1362 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1362, label %for.body3.i46.preheader1514, label %vector.ph1363

vector.ph1363:                                    ; preds = %for.body3.i46.preheader
  %n.vec1365 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1361

vector.body1361:                                  ; preds = %vector.body1361, %vector.ph1363
  %index1366 = phi i64 [ 0, %vector.ph1363 ], [ %index.next1367, %vector.body1361 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call923, i64 %indvars.iv21.i, i64 %index1366
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1367 = add i64 %index1366, 4
  %46 = icmp eq i64 %index.next1367, %n.vec1365
  br i1 %46, label %middle.block1359, label %vector.body1361, !llvm.loop !18

middle.block1359:                                 ; preds = %vector.body1361
  %cmp.n1369 = icmp eq i64 %indvars.iv21.i, %n.vec1365
  br i1 %cmp.n1369, label %for.inc6.i, label %for.body3.i46.preheader1514

for.body3.i46.preheader1514:                      ; preds = %for.body3.i46.preheader, %middle.block1359
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1365, %middle.block1359 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1514, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1514 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call923, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1359, %for.cond1.preheader.i45
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
  %min.iters.check1409 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1409, label %for.body3.i60.preheader1511, label %vector.ph1410

vector.ph1410:                                    ; preds = %for.body3.i60.preheader
  %n.vec1412 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1408

vector.body1408:                                  ; preds = %vector.body1408, %vector.ph1410
  %index1413 = phi i64 [ 0, %vector.ph1410 ], [ %index.next1414, %vector.body1408 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call923, i64 %indvars.iv21.i52, i64 %index1413
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1417 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1417, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1414 = add i64 %index1413, 4
  %57 = icmp eq i64 %index.next1414, %n.vec1412
  br i1 %57, label %middle.block1406, label %vector.body1408, !llvm.loop !64

middle.block1406:                                 ; preds = %vector.body1408
  %cmp.n1416 = icmp eq i64 %indvars.iv21.i52, %n.vec1412
  br i1 %cmp.n1416, label %for.inc6.i63, label %for.body3.i60.preheader1511

for.body3.i60.preheader1511:                      ; preds = %for.body3.i60.preheader, %middle.block1406
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1412, %middle.block1406 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1511, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1511 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call923, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1406, %for.cond1.preheader.i54
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
  %min.iters.check1459 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1459, label %for.body3.i99.preheader1508, label %vector.ph1460

vector.ph1460:                                    ; preds = %for.body3.i99.preheader
  %n.vec1462 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1458

vector.body1458:                                  ; preds = %vector.body1458, %vector.ph1460
  %index1463 = phi i64 [ 0, %vector.ph1460 ], [ %index.next1464, %vector.body1458 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call923, i64 %indvars.iv21.i91, i64 %index1463
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1467 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1467, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1464 = add i64 %index1463, 4
  %68 = icmp eq i64 %index.next1464, %n.vec1462
  br i1 %68, label %middle.block1456, label %vector.body1458, !llvm.loop !66

middle.block1456:                                 ; preds = %vector.body1458
  %cmp.n1466 = icmp eq i64 %indvars.iv21.i91, %n.vec1462
  br i1 %cmp.n1466, label %for.inc6.i102, label %for.body3.i99.preheader1508

for.body3.i99.preheader1508:                      ; preds = %for.body3.i99.preheader, %middle.block1456
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1462, %middle.block1456 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1508, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1508 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call923, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1456, %for.cond1.preheader.i93
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
  %indvar1471 = phi i64 [ %indvar.next1472, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1471, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1473 = icmp ult i64 %88, 4
  br i1 %min.iters.check1473, label %polly.loop_header192.preheader, label %vector.ph1474

vector.ph1474:                                    ; preds = %polly.loop_header
  %n.vec1476 = and i64 %88, -4
  br label %vector.body1470

vector.body1470:                                  ; preds = %vector.body1470, %vector.ph1474
  %index1477 = phi i64 [ 0, %vector.ph1474 ], [ %index.next1478, %vector.body1470 ]
  %90 = shl nuw nsw i64 %index1477, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1481 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1481, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1478 = add i64 %index1477, 4
  %95 = icmp eq i64 %index.next1478, %n.vec1476
  br i1 %95, label %middle.block1468, label %vector.body1470, !llvm.loop !79

middle.block1468:                                 ; preds = %vector.body1470
  %cmp.n1480 = icmp eq i64 %88, %n.vec1476
  br i1 %cmp.n1480, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1468
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1476, %middle.block1468 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1468
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1169.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1472 = add i64 %indvar1471, 1
  br i1 %exitcond1169.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1168.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1168.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit224
  %indvars.iv1159 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1160, %polly.loop_exit224 ]
  %indvars.iv1154 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1155, %polly.loop_exit224 ]
  %indvars.iv1148 = phi i64 [ 4, %polly.loop_header200.preheader ], [ %indvars.iv.next1149, %polly.loop_exit224 ]
  %indvars.iv1146 = phi i64 [ 79, %polly.loop_header200.preheader ], [ %indvars.iv.next1147, %polly.loop_exit224 ]
  %indvars.iv = phi i64 [ 1200, %polly.loop_header200.preheader ], [ %indvars.iv.next, %polly.loop_exit224 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit224 ]
  %97 = mul nsw i64 %polly.indvar203, -16
  %98 = add nuw i64 %polly.indvar203, 4
  %99 = udiv i64 %98, 5
  %100 = mul nuw nsw i64 %99, 80
  %101 = add i64 %97, %100
  %102 = shl nuw nsw i64 %polly.indvar203, 4
  %103 = sub nsw i64 %102, %100
  %104 = udiv i64 %indvars.iv1148, 5
  %105 = mul nuw nsw i64 %104, 80
  %106 = add i64 %indvars.iv1154, %105
  %107 = sub nsw i64 %indvars.iv1159, %105
  %108 = sub nsw i64 %indvars.iv1146, %105
  %109 = shl nsw i64 %polly.indvar203, 6
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit214
  %110 = mul nsw i64 %polly.indvar203, -64
  %111 = add nuw nsw i64 %polly.indvar203, 4
  %pexp.p_div_q = udiv i64 %111, 5
  %112 = sub nsw i64 %polly.indvar203, %pexp.p_div_q
  %polly.loop_guard = icmp slt i64 %112, 15
  br i1 %polly.loop_guard, label %polly.loop_header222.preheader, label %polly.loop_exit224

polly.loop_header222.preheader:                   ; preds = %polly.loop_exit208
  %113 = shl nsw i64 %polly.indvar203, 2
  %114 = or i64 %113, 1
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit276, %polly.loop_exit208
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -64
  %indvars.iv.next1147 = add nuw nsw i64 %indvars.iv1146, 16
  %indvars.iv.next1149 = add nuw nsw i64 %indvars.iv1148, 1
  %indvars.iv.next1155 = add nsw i64 %indvars.iv1154, -16
  %indvars.iv.next1160 = add nuw nsw i64 %indvars.iv1159, 16
  %exitcond1167.not = icmp eq i64 %polly.indvar_next204, 19
  br i1 %exitcond1167.not, label %polly.exiting, label %polly.loop_header200

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
  %115 = add nuw nsw i64 %polly.indvar215, %109
  %polly.access.mul.call2219 = mul nuw nsw i64 %115, 1000
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
  %indvar1485 = phi i64 [ 0, %polly.loop_header222.preheader ], [ %indvar.next1486, %polly.loop_exit276 ]
  %indvars.iv1161 = phi i64 [ %107, %polly.loop_header222.preheader ], [ %indvars.iv.next1162, %polly.loop_exit276 ]
  %indvars.iv1156 = phi i64 [ %106, %polly.loop_header222.preheader ], [ %indvars.iv.next1157, %polly.loop_exit276 ]
  %indvars.iv1150 = phi i64 [ %108, %polly.loop_header222.preheader ], [ %indvars.iv.next1151, %polly.loop_exit276 ]
  %polly.indvar225 = phi i64 [ %112, %polly.loop_header222.preheader ], [ %polly.indvar_next226, %polly.loop_exit276 ]
  %116 = mul nsw i64 %indvar1485, -80
  %117 = add i64 %101, %116
  %smax1487 = call i64 @llvm.smax.i64(i64 %117, i64 0)
  %118 = mul nuw nsw i64 %indvar1485, 80
  %119 = add i64 %103, %118
  %120 = add i64 %smax1487, %119
  %smax1158 = call i64 @llvm.smax.i64(i64 %indvars.iv1156, i64 0)
  %121 = add i64 %smax1158, %indvars.iv1161
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1150, i64 0)
  %122 = mul nsw i64 %polly.indvar225, 5
  %.not = icmp slt i64 %122, %114
  %123 = mul nsw i64 %polly.indvar225, 80
  %124 = add nsw i64 %123, %110
  %125 = icmp sgt i64 %124, 64
  %126 = select i1 %125, i64 %124, i64 64
  %127 = add nsw i64 %124, 79
  %polly.loop_guard263 = icmp sgt i64 %124, -80
  br i1 %.not, label %polly.loop_header228.us, label %polly.loop_header222.split

polly.loop_header228.us:                          ; preds = %polly.loop_header222, %polly.merge.us
  %polly.indvar231.us = phi i64 [ %polly.indvar_next232.us, %polly.merge.us ], [ 0, %polly.loop_header222 ]
  br i1 %polly.loop_guard263, label %polly.loop_header260.preheader.us, label %polly.merge.us

polly.loop_header260.us:                          ; preds = %polly.loop_header260.preheader.us, %polly.loop_header260.us
  %polly.indvar264.us = phi i64 [ %polly.indvar_next265.us, %polly.loop_header260.us ], [ 0, %polly.loop_header260.preheader.us ]
  %128 = add nuw nsw i64 %polly.indvar264.us, %109
  %polly.access.mul.call1268.us = mul nuw nsw i64 %128, 1000
  %polly.access.add.call1269.us = add nuw nsw i64 %polly.access.mul.call1268.us, %polly.indvar231.us
  %polly.access.call1270.us = getelementptr double, double* %polly.access.cast.call1775, i64 %polly.access.add.call1269.us
  %polly.access.call1270.load.us = load double, double* %polly.access.call1270.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1272.us = add nuw nsw i64 %polly.indvar264.us, %polly.access.mul.Packed_MemRef_call1271.us
  %polly.access.Packed_MemRef_call1273.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1272.us
  store double %polly.access.call1270.load.us, double* %polly.access.Packed_MemRef_call1273.us, align 8
  %polly.indvar_next265.us = add nuw nsw i64 %polly.indvar264.us, 1
  %exitcond1152.not = icmp eq i64 %polly.indvar264.us, %smax
  br i1 %exitcond1152.not, label %polly.merge.us, label %polly.loop_header260.us

polly.merge.us:                                   ; preds = %polly.loop_header260.us, %polly.loop_header228.us
  %polly.indvar_next232.us = add nuw nsw i64 %polly.indvar231.us, 1
  %exitcond1153.not = icmp eq i64 %polly.indvar_next232.us, 1000
  br i1 %exitcond1153.not, label %polly.loop_header274.preheader, label %polly.loop_header228.us

polly.loop_header260.preheader.us:                ; preds = %polly.loop_header228.us
  %polly.access.mul.Packed_MemRef_call1271.us = mul nuw nsw i64 %polly.indvar231.us, 1200
  br label %polly.loop_header260.us

polly.loop_header222.split:                       ; preds = %polly.loop_header222
  %polly.loop_guard248.not = icmp sgt i64 %126, %127
  br i1 %polly.loop_guard248.not, label %polly.loop_header228.us993, label %polly.loop_header228

polly.loop_header228.us993:                       ; preds = %polly.loop_header222.split, %polly.merge.us1028
  %polly.indvar231.us994 = phi i64 [ %polly.indvar_next232.us1029, %polly.merge.us1028 ], [ 0, %polly.loop_header222.split ]
  %polly.access.mul.Packed_MemRef_call1.us1037 = mul nuw nsw i64 %polly.indvar231.us994, 1200
  br label %polly.loop_header234.us995

polly.loop_header234.us995:                       ; preds = %polly.loop_header228.us993, %polly.loop_header234.us995
  %polly.indvar237.us996 = phi i64 [ %polly.indvar_next238.us1003, %polly.loop_header234.us995 ], [ 0, %polly.loop_header228.us993 ]
  %129 = add nuw nsw i64 %polly.indvar237.us996, %109
  %polly.access.mul.call1241.us997 = mul nuw nsw i64 %129, 1000
  %polly.access.add.call1242.us998 = add nuw nsw i64 %polly.access.mul.call1241.us997, %polly.indvar231.us994
  %polly.access.call1243.us999 = getelementptr double, double* %polly.access.cast.call1775, i64 %polly.access.add.call1242.us998
  %polly.access.call1243.load.us1000 = load double, double* %polly.access.call1243.us999, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us1001 = add nuw nsw i64 %polly.indvar237.us996, %polly.access.mul.Packed_MemRef_call1.us1037
  %polly.access.Packed_MemRef_call1.us1002 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us1001
  store double %polly.access.call1243.load.us1000, double* %polly.access.Packed_MemRef_call1.us1002, align 8
  %polly.indvar_next238.us1003 = add nuw nsw i64 %polly.indvar237.us996, 1
  %exitcond1144.not = icmp eq i64 %polly.indvar_next238.us1003, 64
  br i1 %exitcond1144.not, label %polly.merge.us1028, label %polly.loop_header234.us995

polly.merge.us1028:                               ; preds = %polly.loop_header234.us995
  %polly.indvar_next232.us1029 = add nuw nsw i64 %polly.indvar231.us994, 1
  %exitcond1145.not = icmp eq i64 %polly.indvar_next232.us1029, 1000
  br i1 %exitcond1145.not, label %polly.loop_header274.preheader, label %polly.loop_header228.us993

polly.loop_exit276:                               ; preds = %polly.loop_exit283.loopexit.us, %polly.loop_header274.preheader
  %polly.indvar_next226 = add nsw i64 %polly.indvar225, 1
  %polly.loop_cond227 = icmp slt i64 %polly.indvar225, 14
  %indvars.iv.next1151 = add i64 %indvars.iv1150, 80
  %indvars.iv.next1157 = add i64 %indvars.iv1156, -80
  %indvars.iv.next1162 = add i64 %indvars.iv1161, 80
  %indvar.next1486 = add i64 %indvar1485, 1
  br i1 %polly.loop_cond227, label %polly.loop_header222, label %polly.loop_exit224

polly.loop_header228:                             ; preds = %polly.loop_header222.split, %polly.merge
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.merge ], [ 0, %polly.loop_header222.split ]
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar231, 1200
  br label %polly.loop_header234

polly.merge:                                      ; preds = %polly.loop_header245
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %exitcond1143.not = icmp eq i64 %polly.indvar_next232, 1000
  br i1 %exitcond1143.not, label %polly.loop_header274.preheader, label %polly.loop_header228

polly.loop_header274.preheader:                   ; preds = %polly.merge, %polly.merge.us1028, %polly.merge.us
  %130 = sub nsw i64 %109, %123
  %131 = icmp sgt i64 %130, 0
  %132 = select i1 %131, i64 %130, i64 0
  %polly.loop_guard284 = icmp slt i64 %132, 80
  br i1 %polly.loop_guard284, label %polly.loop_header274.us, label %polly.loop_exit276

polly.loop_header274.us:                          ; preds = %polly.loop_header274.preheader, %polly.loop_exit283.loopexit.us
  %polly.indvar277.us = phi i64 [ %polly.indvar_next278.us, %polly.loop_exit283.loopexit.us ], [ 0, %polly.loop_header274.preheader ]
  %polly.access.mul.Packed_MemRef_call1296.us = mul nuw nsw i64 %polly.indvar277.us, 1200
  br label %polly.loop_header281.us

polly.loop_header281.us:                          ; preds = %polly.loop_header274.us, %polly.loop_exit291.us
  %indvar1488 = phi i64 [ 0, %polly.loop_header274.us ], [ %indvar.next1489, %polly.loop_exit291.us ]
  %indvars.iv1163 = phi i64 [ %121, %polly.loop_header274.us ], [ %indvars.iv.next1164, %polly.loop_exit291.us ]
  %polly.indvar285.us = phi i64 [ %132, %polly.loop_header274.us ], [ %polly.indvar_next286.us, %polly.loop_exit291.us ]
  %133 = add i64 %120, %indvar1488
  %smin1490 = call i64 @llvm.smin.i64(i64 %133, i64 63)
  %134 = add nsw i64 %smin1490, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1163, i64 63)
  %135 = add i64 %polly.indvar285.us, %123
  %136 = add i64 %135, %110
  %polly.loop_guard292.us1275 = icmp sgt i64 %136, -1
  br i1 %polly.loop_guard292.us1275, label %polly.loop_header289.preheader.us, label %polly.loop_exit291.us

polly.loop_header289.us:                          ; preds = %polly.loop_header289.us.preheader, %polly.loop_header289.us
  %polly.indvar293.us = phi i64 [ %polly.indvar_next294.us, %polly.loop_header289.us ], [ %polly.indvar293.us.ph, %polly.loop_header289.us.preheader ]
  %137 = add nuw nsw i64 %polly.indvar293.us, %109
  %polly.access.add.Packed_MemRef_call1297.us = add nuw nsw i64 %polly.indvar293.us, %polly.access.mul.Packed_MemRef_call1296.us
  %polly.access.Packed_MemRef_call1298.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1297.us
  %_p_scalar_299.us = load double, double* %polly.access.Packed_MemRef_call1298.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_303.us, %_p_scalar_299.us
  %polly.access.Packed_MemRef_call2306.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1297.us
  %_p_scalar_307.us = load double, double* %polly.access.Packed_MemRef_call2306.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_311.us, %_p_scalar_307.us
  %138 = shl i64 %137, 3
  %139 = add i64 %138, %140
  %scevgep312.us = getelementptr i8, i8* %call, i64 %139
  %scevgep312313.us = bitcast i8* %scevgep312.us to double*
  %_p_scalar_314.us = load double, double* %scevgep312313.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_314.us
  store double %p_add42.i118.us, double* %scevgep312313.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next294.us = add nuw nsw i64 %polly.indvar293.us, 1
  %exitcond1165.not = icmp eq i64 %polly.indvar293.us, %smin
  br i1 %exitcond1165.not, label %polly.loop_exit291.us, label %polly.loop_header289.us, !llvm.loop !84

polly.loop_exit291.us:                            ; preds = %polly.loop_header289.us, %middle.block1482, %polly.loop_header281.us
  %polly.indvar_next286.us = add nuw nsw i64 %polly.indvar285.us, 1
  %polly.loop_cond287.us = icmp ult i64 %polly.indvar285.us, 79
  %indvars.iv.next1164 = add i64 %indvars.iv1163, 1
  %indvar.next1489 = add i64 %indvar1488, 1
  br i1 %polly.loop_cond287.us, label %polly.loop_header281.us, label %polly.loop_exit283.loopexit.us

polly.loop_header289.preheader.us:                ; preds = %polly.loop_header281.us
  %polly.access.add.Packed_MemRef_call2301.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1296.us, %136
  %polly.access.Packed_MemRef_call2302.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2301.us
  %_p_scalar_303.us = load double, double* %polly.access.Packed_MemRef_call2302.us, align 8
  %polly.access.Packed_MemRef_call1310.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2301.us
  %_p_scalar_311.us = load double, double* %polly.access.Packed_MemRef_call1310.us, align 8
  %140 = mul i64 %135, 9600
  %min.iters.check1491 = icmp ult i64 %134, 4
  br i1 %min.iters.check1491, label %polly.loop_header289.us.preheader, label %vector.ph1492

vector.ph1492:                                    ; preds = %polly.loop_header289.preheader.us
  %n.vec1494 = and i64 %134, -4
  %broadcast.splatinsert1500 = insertelement <4 x double> poison, double %_p_scalar_303.us, i32 0
  %broadcast.splat1501 = shufflevector <4 x double> %broadcast.splatinsert1500, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1503 = insertelement <4 x double> poison, double %_p_scalar_311.us, i32 0
  %broadcast.splat1504 = shufflevector <4 x double> %broadcast.splatinsert1503, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1484

vector.body1484:                                  ; preds = %vector.body1484, %vector.ph1492
  %index1495 = phi i64 [ 0, %vector.ph1492 ], [ %index.next1496, %vector.body1484 ]
  %141 = add nuw nsw i64 %index1495, %109
  %142 = add nuw nsw i64 %index1495, %polly.access.mul.Packed_MemRef_call1296.us
  %143 = getelementptr double, double* %Packed_MemRef_call1, i64 %142
  %144 = bitcast double* %143 to <4 x double>*
  %wide.load1499 = load <4 x double>, <4 x double>* %144, align 8
  %145 = fmul fast <4 x double> %broadcast.splat1501, %wide.load1499
  %146 = getelementptr double, double* %Packed_MemRef_call2, i64 %142
  %147 = bitcast double* %146 to <4 x double>*
  %wide.load1502 = load <4 x double>, <4 x double>* %147, align 8
  %148 = fmul fast <4 x double> %broadcast.splat1504, %wide.load1502
  %149 = shl i64 %141, 3
  %150 = add i64 %149, %140
  %151 = getelementptr i8, i8* %call, i64 %150
  %152 = bitcast i8* %151 to <4 x double>*
  %wide.load1505 = load <4 x double>, <4 x double>* %152, align 8, !alias.scope !72, !noalias !74
  %153 = fadd fast <4 x double> %148, %145
  %154 = fmul fast <4 x double> %153, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %155 = fadd fast <4 x double> %154, %wide.load1505
  %156 = bitcast i8* %151 to <4 x double>*
  store <4 x double> %155, <4 x double>* %156, align 8, !alias.scope !72, !noalias !74
  %index.next1496 = add i64 %index1495, 4
  %157 = icmp eq i64 %index.next1496, %n.vec1494
  br i1 %157, label %middle.block1482, label %vector.body1484, !llvm.loop !85

middle.block1482:                                 ; preds = %vector.body1484
  %cmp.n1498 = icmp eq i64 %134, %n.vec1494
  br i1 %cmp.n1498, label %polly.loop_exit291.us, label %polly.loop_header289.us.preheader

polly.loop_header289.us.preheader:                ; preds = %polly.loop_header289.preheader.us, %middle.block1482
  %polly.indvar293.us.ph = phi i64 [ 0, %polly.loop_header289.preheader.us ], [ %n.vec1494, %middle.block1482 ]
  br label %polly.loop_header289.us

polly.loop_exit283.loopexit.us:                   ; preds = %polly.loop_exit291.us
  %polly.indvar_next278.us = add nuw nsw i64 %polly.indvar277.us, 1
  %exitcond1166.not = icmp eq i64 %polly.indvar_next278.us, 1000
  br i1 %exitcond1166.not, label %polly.loop_exit276, label %polly.loop_header274.us

polly.loop_header234:                             ; preds = %polly.loop_header228, %polly.loop_header234
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_header234 ], [ 0, %polly.loop_header228 ]
  %158 = add nuw nsw i64 %polly.indvar237, %109
  %polly.access.mul.call1241 = mul nuw nsw i64 %158, 1000
  %polly.access.add.call1242 = add nuw nsw i64 %polly.access.mul.call1241, %polly.indvar231
  %polly.access.call1243 = getelementptr double, double* %polly.access.cast.call1775, i64 %polly.access.add.call1242
  %polly.access.call1243.load = load double, double* %polly.access.call1243, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1 = add nuw nsw i64 %polly.indvar237, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1
  store double %polly.access.call1243.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1142.not = icmp eq i64 %polly.indvar_next238, 64
  br i1 %exitcond1142.not, label %polly.loop_header245, label %polly.loop_header234

polly.loop_header245:                             ; preds = %polly.loop_header234, %polly.loop_header245
  %polly.indvar249 = phi i64 [ %polly.indvar_next250, %polly.loop_header245 ], [ %126, %polly.loop_header234 ]
  %159 = add nuw nsw i64 %polly.indvar249, %109
  %polly.access.mul.call1253 = mul nsw i64 %159, 1000
  %polly.access.add.call1254 = add nuw nsw i64 %polly.access.mul.call1253, %polly.indvar231
  %polly.access.call1255 = getelementptr double, double* %polly.access.cast.call1775, i64 %polly.access.add.call1254
  %polly.access.call1255.load = load double, double* %polly.access.call1255, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1257 = add nuw nsw i64 %polly.indvar249, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1258 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257
  store double %polly.access.call1255.load, double* %polly.access.Packed_MemRef_call1258, align 8
  %polly.indvar_next250 = add nuw nsw i64 %polly.indvar249, 1
  %polly.loop_cond251.not.not = icmp slt i64 %polly.indvar249, %127
  br i1 %polly.loop_cond251.not.not, label %polly.loop_header245, label %polly.merge

polly.start317:                                   ; preds = %kernel_syr2k.exit
  %malloccall319 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall321 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header405

polly.exiting318:                                 ; preds = %polly.loop_exit447
  tail call void @free(i8* %malloccall319)
  tail call void @free(i8* %malloccall321)
  br label %kernel_syr2k.exit90

polly.loop_header405:                             ; preds = %polly.loop_exit413, %polly.start317
  %indvar1421 = phi i64 [ %indvar.next1422, %polly.loop_exit413 ], [ 0, %polly.start317 ]
  %polly.indvar408 = phi i64 [ %polly.indvar_next409, %polly.loop_exit413 ], [ 1, %polly.start317 ]
  %160 = add i64 %indvar1421, 1
  %161 = mul nuw nsw i64 %polly.indvar408, 9600
  %scevgep417 = getelementptr i8, i8* %call, i64 %161
  %min.iters.check1423 = icmp ult i64 %160, 4
  br i1 %min.iters.check1423, label %polly.loop_header411.preheader, label %vector.ph1424

vector.ph1424:                                    ; preds = %polly.loop_header405
  %n.vec1426 = and i64 %160, -4
  br label %vector.body1420

vector.body1420:                                  ; preds = %vector.body1420, %vector.ph1424
  %index1427 = phi i64 [ 0, %vector.ph1424 ], [ %index.next1428, %vector.body1420 ]
  %162 = shl nuw nsw i64 %index1427, 3
  %163 = getelementptr i8, i8* %scevgep417, i64 %162
  %164 = bitcast i8* %163 to <4 x double>*
  %wide.load1431 = load <4 x double>, <4 x double>* %164, align 8, !alias.scope !86, !noalias !88
  %165 = fmul fast <4 x double> %wide.load1431, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %166 = bitcast i8* %163 to <4 x double>*
  store <4 x double> %165, <4 x double>* %166, align 8, !alias.scope !86, !noalias !88
  %index.next1428 = add i64 %index1427, 4
  %167 = icmp eq i64 %index.next1428, %n.vec1426
  br i1 %167, label %middle.block1418, label %vector.body1420, !llvm.loop !93

middle.block1418:                                 ; preds = %vector.body1420
  %cmp.n1430 = icmp eq i64 %160, %n.vec1426
  br i1 %cmp.n1430, label %polly.loop_exit413, label %polly.loop_header411.preheader

polly.loop_header411.preheader:                   ; preds = %polly.loop_header405, %middle.block1418
  %polly.indvar414.ph = phi i64 [ 0, %polly.loop_header405 ], [ %n.vec1426, %middle.block1418 ]
  br label %polly.loop_header411

polly.loop_exit413:                               ; preds = %polly.loop_header411, %middle.block1418
  %polly.indvar_next409 = add nuw nsw i64 %polly.indvar408, 1
  %exitcond1203.not = icmp eq i64 %polly.indvar_next409, 1200
  %indvar.next1422 = add i64 %indvar1421, 1
  br i1 %exitcond1203.not, label %polly.loop_header421.preheader, label %polly.loop_header405

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
  %exitcond1202.not = icmp eq i64 %polly.indvar_next415, %polly.indvar408
  br i1 %exitcond1202.not, label %polly.loop_exit413, label %polly.loop_header411, !llvm.loop !94

polly.loop_header421:                             ; preds = %polly.loop_header421.preheader, %polly.loop_exit447
  %indvars.iv1192 = phi i64 [ 0, %polly.loop_header421.preheader ], [ %indvars.iv.next1193, %polly.loop_exit447 ]
  %indvars.iv1187 = phi i64 [ 0, %polly.loop_header421.preheader ], [ %indvars.iv.next1188, %polly.loop_exit447 ]
  %indvars.iv1180 = phi i64 [ 4, %polly.loop_header421.preheader ], [ %indvars.iv.next1181, %polly.loop_exit447 ]
  %indvars.iv1178 = phi i64 [ 79, %polly.loop_header421.preheader ], [ %indvars.iv.next1179, %polly.loop_exit447 ]
  %indvars.iv1170 = phi i64 [ 1200, %polly.loop_header421.preheader ], [ %indvars.iv.next1171, %polly.loop_exit447 ]
  %polly.indvar424 = phi i64 [ 0, %polly.loop_header421.preheader ], [ %polly.indvar_next425, %polly.loop_exit447 ]
  %169 = mul nsw i64 %polly.indvar424, -16
  %170 = add nuw i64 %polly.indvar424, 4
  %171 = udiv i64 %170, 5
  %172 = mul nuw nsw i64 %171, 80
  %173 = add i64 %169, %172
  %174 = shl nuw nsw i64 %polly.indvar424, 4
  %175 = sub nsw i64 %174, %172
  %176 = udiv i64 %indvars.iv1180, 5
  %177 = mul nuw nsw i64 %176, 80
  %178 = add i64 %indvars.iv1187, %177
  %179 = sub nsw i64 %indvars.iv1192, %177
  %180 = sub nsw i64 %indvars.iv1178, %177
  %181 = shl nsw i64 %polly.indvar424, 6
  br label %polly.loop_header427

polly.loop_exit429:                               ; preds = %polly.loop_exit435
  %182 = mul nsw i64 %polly.indvar424, -64
  %183 = add nuw nsw i64 %polly.indvar424, 4
  %pexp.p_div_q443 = udiv i64 %183, 5
  %184 = sub nsw i64 %polly.indvar424, %pexp.p_div_q443
  %polly.loop_guard448 = icmp slt i64 %184, 15
  br i1 %polly.loop_guard448, label %polly.loop_header445.preheader, label %polly.loop_exit447

polly.loop_header445.preheader:                   ; preds = %polly.loop_exit429
  %185 = shl nsw i64 %polly.indvar424, 2
  %186 = or i64 %185, 1
  br label %polly.loop_header445

polly.loop_exit447:                               ; preds = %polly.loop_exit504, %polly.loop_exit429
  %polly.indvar_next425 = add nuw nsw i64 %polly.indvar424, 1
  %indvars.iv.next1171 = add nsw i64 %indvars.iv1170, -64
  %indvars.iv.next1179 = add nuw nsw i64 %indvars.iv1178, 16
  %indvars.iv.next1181 = add nuw nsw i64 %indvars.iv1180, 1
  %indvars.iv.next1188 = add nsw i64 %indvars.iv1187, -16
  %indvars.iv.next1193 = add nuw nsw i64 %indvars.iv1192, 16
  %exitcond1201.not = icmp eq i64 %polly.indvar_next425, 19
  br i1 %exitcond1201.not, label %polly.exiting318, label %polly.loop_header421

polly.loop_header427:                             ; preds = %polly.loop_exit435, %polly.loop_header421
  %polly.indvar430 = phi i64 [ 0, %polly.loop_header421 ], [ %polly.indvar_next431, %polly.loop_exit435 ]
  %polly.access.mul.Packed_MemRef_call2322 = mul nuw nsw i64 %polly.indvar430, 1200
  br label %polly.loop_header433

polly.loop_exit435:                               ; preds = %polly.loop_header433
  %polly.indvar_next431 = add nuw nsw i64 %polly.indvar430, 1
  %exitcond1173.not = icmp eq i64 %polly.indvar_next431, 1000
  br i1 %exitcond1173.not, label %polly.loop_exit429, label %polly.loop_header427

polly.loop_header433:                             ; preds = %polly.loop_header433, %polly.loop_header427
  %polly.indvar436 = phi i64 [ 0, %polly.loop_header427 ], [ %polly.indvar_next437, %polly.loop_header433 ]
  %187 = add nuw nsw i64 %polly.indvar436, %181
  %polly.access.mul.call2440 = mul nuw nsw i64 %187, 1000
  %polly.access.add.call2441 = add nuw nsw i64 %polly.access.mul.call2440, %polly.indvar430
  %polly.access.call2442 = getelementptr double, double* %polly.access.cast.call2785, i64 %polly.access.add.call2441
  %polly.access.call2442.load = load double, double* %polly.access.call2442, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2322 = add nuw nsw i64 %polly.indvar436, %polly.access.mul.Packed_MemRef_call2322
  %polly.access.Packed_MemRef_call2322 = getelementptr double, double* %Packed_MemRef_call2322, i64 %polly.access.add.Packed_MemRef_call2322
  store double %polly.access.call2442.load, double* %polly.access.Packed_MemRef_call2322, align 8
  %polly.indvar_next437 = add nuw nsw i64 %polly.indvar436, 1
  %exitcond1172.not = icmp eq i64 %polly.indvar_next437, %indvars.iv1170
  br i1 %exitcond1172.not, label %polly.loop_exit435, label %polly.loop_header433

polly.loop_header445:                             ; preds = %polly.loop_header445.preheader, %polly.loop_exit504
  %indvar1435 = phi i64 [ 0, %polly.loop_header445.preheader ], [ %indvar.next1436, %polly.loop_exit504 ]
  %indvars.iv1194 = phi i64 [ %179, %polly.loop_header445.preheader ], [ %indvars.iv.next1195, %polly.loop_exit504 ]
  %indvars.iv1189 = phi i64 [ %178, %polly.loop_header445.preheader ], [ %indvars.iv.next1190, %polly.loop_exit504 ]
  %indvars.iv1182 = phi i64 [ %180, %polly.loop_header445.preheader ], [ %indvars.iv.next1183, %polly.loop_exit504 ]
  %polly.indvar449 = phi i64 [ %184, %polly.loop_header445.preheader ], [ %polly.indvar_next450, %polly.loop_exit504 ]
  %188 = mul nsw i64 %indvar1435, -80
  %189 = add i64 %173, %188
  %smax1437 = call i64 @llvm.smax.i64(i64 %189, i64 0)
  %190 = mul nuw nsw i64 %indvar1435, 80
  %191 = add i64 %175, %190
  %192 = add i64 %smax1437, %191
  %smax1191 = call i64 @llvm.smax.i64(i64 %indvars.iv1189, i64 0)
  %193 = add i64 %smax1191, %indvars.iv1194
  %smax1184 = call i64 @llvm.smax.i64(i64 %indvars.iv1182, i64 0)
  %194 = mul nsw i64 %polly.indvar449, 5
  %.not977 = icmp slt i64 %194, %186
  %195 = mul nsw i64 %polly.indvar449, 80
  %196 = add nsw i64 %195, %182
  %197 = icmp sgt i64 %196, 64
  %198 = select i1 %197, i64 %196, i64 64
  %199 = add nsw i64 %196, 79
  %polly.loop_guard491 = icmp sgt i64 %196, -80
  br i1 %.not977, label %polly.loop_header452.us, label %polly.loop_header445.split

polly.loop_header452.us:                          ; preds = %polly.loop_header445, %polly.merge459.us
  %polly.indvar455.us = phi i64 [ %polly.indvar_next456.us, %polly.merge459.us ], [ 0, %polly.loop_header445 ]
  br i1 %polly.loop_guard491, label %polly.loop_header488.preheader.us, label %polly.merge459.us

polly.loop_header488.us:                          ; preds = %polly.loop_header488.preheader.us, %polly.loop_header488.us
  %polly.indvar492.us = phi i64 [ %polly.indvar_next493.us, %polly.loop_header488.us ], [ 0, %polly.loop_header488.preheader.us ]
  %200 = add nuw nsw i64 %polly.indvar492.us, %181
  %polly.access.mul.call1496.us = mul nuw nsw i64 %200, 1000
  %polly.access.add.call1497.us = add nuw nsw i64 %polly.access.mul.call1496.us, %polly.indvar455.us
  %polly.access.call1498.us = getelementptr double, double* %polly.access.cast.call1775, i64 %polly.access.add.call1497.us
  %polly.access.call1498.load.us = load double, double* %polly.access.call1498.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1320500.us = add nuw nsw i64 %polly.indvar492.us, %polly.access.mul.Packed_MemRef_call1320499.us
  %polly.access.Packed_MemRef_call1320501.us = getelementptr double, double* %Packed_MemRef_call1320, i64 %polly.access.add.Packed_MemRef_call1320500.us
  store double %polly.access.call1498.load.us, double* %polly.access.Packed_MemRef_call1320501.us, align 8
  %polly.indvar_next493.us = add nuw nsw i64 %polly.indvar492.us, 1
  %exitcond1185.not = icmp eq i64 %polly.indvar492.us, %smax1184
  br i1 %exitcond1185.not, label %polly.merge459.us, label %polly.loop_header488.us

polly.merge459.us:                                ; preds = %polly.loop_header488.us, %polly.loop_header452.us
  %polly.indvar_next456.us = add nuw nsw i64 %polly.indvar455.us, 1
  %exitcond1186.not = icmp eq i64 %polly.indvar_next456.us, 1000
  br i1 %exitcond1186.not, label %polly.loop_header502.preheader, label %polly.loop_header452.us

polly.loop_header488.preheader.us:                ; preds = %polly.loop_header452.us
  %polly.access.mul.Packed_MemRef_call1320499.us = mul nuw nsw i64 %polly.indvar455.us, 1200
  br label %polly.loop_header488.us

polly.loop_header445.split:                       ; preds = %polly.loop_header445
  %polly.loop_guard476.not = icmp sgt i64 %198, %199
  br i1 %polly.loop_guard476.not, label %polly.loop_header452.us1038, label %polly.loop_header452

polly.loop_header452.us1038:                      ; preds = %polly.loop_header445.split, %polly.merge459.us1073
  %polly.indvar455.us1039 = phi i64 [ %polly.indvar_next456.us1074, %polly.merge459.us1073 ], [ 0, %polly.loop_header445.split ]
  %polly.access.mul.Packed_MemRef_call1320.us1082 = mul nuw nsw i64 %polly.indvar455.us1039, 1200
  br label %polly.loop_header462.us1040

polly.loop_header462.us1040:                      ; preds = %polly.loop_header452.us1038, %polly.loop_header462.us1040
  %polly.indvar465.us1041 = phi i64 [ %polly.indvar_next466.us1048, %polly.loop_header462.us1040 ], [ 0, %polly.loop_header452.us1038 ]
  %201 = add nuw nsw i64 %polly.indvar465.us1041, %181
  %polly.access.mul.call1469.us1042 = mul nuw nsw i64 %201, 1000
  %polly.access.add.call1470.us1043 = add nuw nsw i64 %polly.access.mul.call1469.us1042, %polly.indvar455.us1039
  %polly.access.call1471.us1044 = getelementptr double, double* %polly.access.cast.call1775, i64 %polly.access.add.call1470.us1043
  %polly.access.call1471.load.us1045 = load double, double* %polly.access.call1471.us1044, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1320.us1046 = add nuw nsw i64 %polly.indvar465.us1041, %polly.access.mul.Packed_MemRef_call1320.us1082
  %polly.access.Packed_MemRef_call1320.us1047 = getelementptr double, double* %Packed_MemRef_call1320, i64 %polly.access.add.Packed_MemRef_call1320.us1046
  store double %polly.access.call1471.load.us1045, double* %polly.access.Packed_MemRef_call1320.us1047, align 8
  %polly.indvar_next466.us1048 = add nuw nsw i64 %polly.indvar465.us1041, 1
  %exitcond1176.not = icmp eq i64 %polly.indvar_next466.us1048, 64
  br i1 %exitcond1176.not, label %polly.merge459.us1073, label %polly.loop_header462.us1040

polly.merge459.us1073:                            ; preds = %polly.loop_header462.us1040
  %polly.indvar_next456.us1074 = add nuw nsw i64 %polly.indvar455.us1039, 1
  %exitcond1177.not = icmp eq i64 %polly.indvar_next456.us1074, 1000
  br i1 %exitcond1177.not, label %polly.loop_header502.preheader, label %polly.loop_header452.us1038

polly.loop_exit504:                               ; preds = %polly.loop_exit511.loopexit.us, %polly.loop_header502.preheader
  %polly.indvar_next450 = add nsw i64 %polly.indvar449, 1
  %polly.loop_cond451 = icmp slt i64 %polly.indvar449, 14
  %indvars.iv.next1183 = add i64 %indvars.iv1182, 80
  %indvars.iv.next1190 = add i64 %indvars.iv1189, -80
  %indvars.iv.next1195 = add i64 %indvars.iv1194, 80
  %indvar.next1436 = add i64 %indvar1435, 1
  br i1 %polly.loop_cond451, label %polly.loop_header445, label %polly.loop_exit447

polly.loop_header452:                             ; preds = %polly.loop_header445.split, %polly.merge459
  %polly.indvar455 = phi i64 [ %polly.indvar_next456, %polly.merge459 ], [ 0, %polly.loop_header445.split ]
  %polly.access.mul.Packed_MemRef_call1320 = mul nuw nsw i64 %polly.indvar455, 1200
  br label %polly.loop_header462

polly.merge459:                                   ; preds = %polly.loop_header473
  %polly.indvar_next456 = add nuw nsw i64 %polly.indvar455, 1
  %exitcond1175.not = icmp eq i64 %polly.indvar_next456, 1000
  br i1 %exitcond1175.not, label %polly.loop_header502.preheader, label %polly.loop_header452

polly.loop_header502.preheader:                   ; preds = %polly.merge459, %polly.merge459.us1073, %polly.merge459.us
  %202 = sub nsw i64 %181, %195
  %203 = icmp sgt i64 %202, 0
  %204 = select i1 %203, i64 %202, i64 0
  %polly.loop_guard512 = icmp slt i64 %204, 80
  br i1 %polly.loop_guard512, label %polly.loop_header502.us, label %polly.loop_exit504

polly.loop_header502.us:                          ; preds = %polly.loop_header502.preheader, %polly.loop_exit511.loopexit.us
  %polly.indvar505.us = phi i64 [ %polly.indvar_next506.us, %polly.loop_exit511.loopexit.us ], [ 0, %polly.loop_header502.preheader ]
  %polly.access.mul.Packed_MemRef_call1320524.us = mul nuw nsw i64 %polly.indvar505.us, 1200
  br label %polly.loop_header509.us

polly.loop_header509.us:                          ; preds = %polly.loop_header502.us, %polly.loop_exit519.us
  %indvar1438 = phi i64 [ 0, %polly.loop_header502.us ], [ %indvar.next1439, %polly.loop_exit519.us ]
  %indvars.iv1196 = phi i64 [ %193, %polly.loop_header502.us ], [ %indvars.iv.next1197, %polly.loop_exit519.us ]
  %polly.indvar513.us = phi i64 [ %204, %polly.loop_header502.us ], [ %polly.indvar_next514.us, %polly.loop_exit519.us ]
  %205 = add i64 %192, %indvar1438
  %smin1440 = call i64 @llvm.smin.i64(i64 %205, i64 63)
  %206 = add nsw i64 %smin1440, 1
  %smin1198 = call i64 @llvm.smin.i64(i64 %indvars.iv1196, i64 63)
  %207 = add i64 %polly.indvar513.us, %195
  %208 = add i64 %207, %182
  %polly.loop_guard520.us1276 = icmp sgt i64 %208, -1
  br i1 %polly.loop_guard520.us1276, label %polly.loop_header517.preheader.us, label %polly.loop_exit519.us

polly.loop_header517.us:                          ; preds = %polly.loop_header517.us.preheader, %polly.loop_header517.us
  %polly.indvar521.us = phi i64 [ %polly.indvar_next522.us, %polly.loop_header517.us ], [ %polly.indvar521.us.ph, %polly.loop_header517.us.preheader ]
  %209 = add nuw nsw i64 %polly.indvar521.us, %181
  %polly.access.add.Packed_MemRef_call1320525.us = add nuw nsw i64 %polly.indvar521.us, %polly.access.mul.Packed_MemRef_call1320524.us
  %polly.access.Packed_MemRef_call1320526.us = getelementptr double, double* %Packed_MemRef_call1320, i64 %polly.access.add.Packed_MemRef_call1320525.us
  %_p_scalar_527.us = load double, double* %polly.access.Packed_MemRef_call1320526.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_531.us, %_p_scalar_527.us
  %polly.access.Packed_MemRef_call2322534.us = getelementptr double, double* %Packed_MemRef_call2322, i64 %polly.access.add.Packed_MemRef_call1320525.us
  %_p_scalar_535.us = load double, double* %polly.access.Packed_MemRef_call2322534.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_539.us, %_p_scalar_535.us
  %210 = shl i64 %209, 3
  %211 = add i64 %210, %212
  %scevgep540.us = getelementptr i8, i8* %call, i64 %211
  %scevgep540541.us = bitcast i8* %scevgep540.us to double*
  %_p_scalar_542.us = load double, double* %scevgep540541.us, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_542.us
  store double %p_add42.i79.us, double* %scevgep540541.us, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next522.us = add nuw nsw i64 %polly.indvar521.us, 1
  %exitcond1199.not = icmp eq i64 %polly.indvar521.us, %smin1198
  br i1 %exitcond1199.not, label %polly.loop_exit519.us, label %polly.loop_header517.us, !llvm.loop !97

polly.loop_exit519.us:                            ; preds = %polly.loop_header517.us, %middle.block1432, %polly.loop_header509.us
  %polly.indvar_next514.us = add nuw nsw i64 %polly.indvar513.us, 1
  %polly.loop_cond515.us = icmp ult i64 %polly.indvar513.us, 79
  %indvars.iv.next1197 = add i64 %indvars.iv1196, 1
  %indvar.next1439 = add i64 %indvar1438, 1
  br i1 %polly.loop_cond515.us, label %polly.loop_header509.us, label %polly.loop_exit511.loopexit.us

polly.loop_header517.preheader.us:                ; preds = %polly.loop_header509.us
  %polly.access.add.Packed_MemRef_call2322529.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1320524.us, %208
  %polly.access.Packed_MemRef_call2322530.us = getelementptr double, double* %Packed_MemRef_call2322, i64 %polly.access.add.Packed_MemRef_call2322529.us
  %_p_scalar_531.us = load double, double* %polly.access.Packed_MemRef_call2322530.us, align 8
  %polly.access.Packed_MemRef_call1320538.us = getelementptr double, double* %Packed_MemRef_call1320, i64 %polly.access.add.Packed_MemRef_call2322529.us
  %_p_scalar_539.us = load double, double* %polly.access.Packed_MemRef_call1320538.us, align 8
  %212 = mul i64 %207, 9600
  %min.iters.check1441 = icmp ult i64 %206, 4
  br i1 %min.iters.check1441, label %polly.loop_header517.us.preheader, label %vector.ph1442

vector.ph1442:                                    ; preds = %polly.loop_header517.preheader.us
  %n.vec1444 = and i64 %206, -4
  %broadcast.splatinsert1450 = insertelement <4 x double> poison, double %_p_scalar_531.us, i32 0
  %broadcast.splat1451 = shufflevector <4 x double> %broadcast.splatinsert1450, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1453 = insertelement <4 x double> poison, double %_p_scalar_539.us, i32 0
  %broadcast.splat1454 = shufflevector <4 x double> %broadcast.splatinsert1453, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1434

vector.body1434:                                  ; preds = %vector.body1434, %vector.ph1442
  %index1445 = phi i64 [ 0, %vector.ph1442 ], [ %index.next1446, %vector.body1434 ]
  %213 = add nuw nsw i64 %index1445, %181
  %214 = add nuw nsw i64 %index1445, %polly.access.mul.Packed_MemRef_call1320524.us
  %215 = getelementptr double, double* %Packed_MemRef_call1320, i64 %214
  %216 = bitcast double* %215 to <4 x double>*
  %wide.load1449 = load <4 x double>, <4 x double>* %216, align 8
  %217 = fmul fast <4 x double> %broadcast.splat1451, %wide.load1449
  %218 = getelementptr double, double* %Packed_MemRef_call2322, i64 %214
  %219 = bitcast double* %218 to <4 x double>*
  %wide.load1452 = load <4 x double>, <4 x double>* %219, align 8
  %220 = fmul fast <4 x double> %broadcast.splat1454, %wide.load1452
  %221 = shl i64 %213, 3
  %222 = add i64 %221, %212
  %223 = getelementptr i8, i8* %call, i64 %222
  %224 = bitcast i8* %223 to <4 x double>*
  %wide.load1455 = load <4 x double>, <4 x double>* %224, align 8, !alias.scope !86, !noalias !88
  %225 = fadd fast <4 x double> %220, %217
  %226 = fmul fast <4 x double> %225, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %227 = fadd fast <4 x double> %226, %wide.load1455
  %228 = bitcast i8* %223 to <4 x double>*
  store <4 x double> %227, <4 x double>* %228, align 8, !alias.scope !86, !noalias !88
  %index.next1446 = add i64 %index1445, 4
  %229 = icmp eq i64 %index.next1446, %n.vec1444
  br i1 %229, label %middle.block1432, label %vector.body1434, !llvm.loop !98

middle.block1432:                                 ; preds = %vector.body1434
  %cmp.n1448 = icmp eq i64 %206, %n.vec1444
  br i1 %cmp.n1448, label %polly.loop_exit519.us, label %polly.loop_header517.us.preheader

polly.loop_header517.us.preheader:                ; preds = %polly.loop_header517.preheader.us, %middle.block1432
  %polly.indvar521.us.ph = phi i64 [ 0, %polly.loop_header517.preheader.us ], [ %n.vec1444, %middle.block1432 ]
  br label %polly.loop_header517.us

polly.loop_exit511.loopexit.us:                   ; preds = %polly.loop_exit519.us
  %polly.indvar_next506.us = add nuw nsw i64 %polly.indvar505.us, 1
  %exitcond1200.not = icmp eq i64 %polly.indvar_next506.us, 1000
  br i1 %exitcond1200.not, label %polly.loop_exit504, label %polly.loop_header502.us

polly.loop_header462:                             ; preds = %polly.loop_header452, %polly.loop_header462
  %polly.indvar465 = phi i64 [ %polly.indvar_next466, %polly.loop_header462 ], [ 0, %polly.loop_header452 ]
  %230 = add nuw nsw i64 %polly.indvar465, %181
  %polly.access.mul.call1469 = mul nuw nsw i64 %230, 1000
  %polly.access.add.call1470 = add nuw nsw i64 %polly.access.mul.call1469, %polly.indvar455
  %polly.access.call1471 = getelementptr double, double* %polly.access.cast.call1775, i64 %polly.access.add.call1470
  %polly.access.call1471.load = load double, double* %polly.access.call1471, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1320 = add nuw nsw i64 %polly.indvar465, %polly.access.mul.Packed_MemRef_call1320
  %polly.access.Packed_MemRef_call1320 = getelementptr double, double* %Packed_MemRef_call1320, i64 %polly.access.add.Packed_MemRef_call1320
  store double %polly.access.call1471.load, double* %polly.access.Packed_MemRef_call1320, align 8
  %polly.indvar_next466 = add nuw nsw i64 %polly.indvar465, 1
  %exitcond1174.not = icmp eq i64 %polly.indvar_next466, 64
  br i1 %exitcond1174.not, label %polly.loop_header473, label %polly.loop_header462

polly.loop_header473:                             ; preds = %polly.loop_header462, %polly.loop_header473
  %polly.indvar477 = phi i64 [ %polly.indvar_next478, %polly.loop_header473 ], [ %198, %polly.loop_header462 ]
  %231 = add nuw nsw i64 %polly.indvar477, %181
  %polly.access.mul.call1481 = mul nsw i64 %231, 1000
  %polly.access.add.call1482 = add nuw nsw i64 %polly.access.mul.call1481, %polly.indvar455
  %polly.access.call1483 = getelementptr double, double* %polly.access.cast.call1775, i64 %polly.access.add.call1482
  %polly.access.call1483.load = load double, double* %polly.access.call1483, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1320485 = add nuw nsw i64 %polly.indvar477, %polly.access.mul.Packed_MemRef_call1320
  %polly.access.Packed_MemRef_call1320486 = getelementptr double, double* %Packed_MemRef_call1320, i64 %polly.access.add.Packed_MemRef_call1320485
  store double %polly.access.call1483.load, double* %polly.access.Packed_MemRef_call1320486, align 8
  %polly.indvar_next478 = add nuw nsw i64 %polly.indvar477, 1
  %polly.loop_cond479.not.not = icmp slt i64 %polly.indvar477, %199
  br i1 %polly.loop_cond479.not.not, label %polly.loop_header473, label %polly.merge459

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
  %min.iters.check1373 = icmp ult i64 %232, 4
  br i1 %min.iters.check1373, label %polly.loop_header639.preheader, label %vector.ph1374

vector.ph1374:                                    ; preds = %polly.loop_header633
  %n.vec1376 = and i64 %232, -4
  br label %vector.body1372

vector.body1372:                                  ; preds = %vector.body1372, %vector.ph1374
  %index1377 = phi i64 [ 0, %vector.ph1374 ], [ %index.next1378, %vector.body1372 ]
  %234 = shl nuw nsw i64 %index1377, 3
  %235 = getelementptr i8, i8* %scevgep645, i64 %234
  %236 = bitcast i8* %235 to <4 x double>*
  %wide.load1381 = load <4 x double>, <4 x double>* %236, align 8, !alias.scope !99, !noalias !101
  %237 = fmul fast <4 x double> %wide.load1381, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %238 = bitcast i8* %235 to <4 x double>*
  store <4 x double> %237, <4 x double>* %238, align 8, !alias.scope !99, !noalias !101
  %index.next1378 = add i64 %index1377, 4
  %239 = icmp eq i64 %index.next1378, %n.vec1376
  br i1 %239, label %middle.block1370, label %vector.body1372, !llvm.loop !106

middle.block1370:                                 ; preds = %vector.body1372
  %cmp.n1380 = icmp eq i64 %232, %n.vec1376
  br i1 %cmp.n1380, label %polly.loop_exit641, label %polly.loop_header639.preheader

polly.loop_header639.preheader:                   ; preds = %polly.loop_header633, %middle.block1370
  %polly.indvar642.ph = phi i64 [ 0, %polly.loop_header633 ], [ %n.vec1376, %middle.block1370 ]
  br label %polly.loop_header639

polly.loop_exit641:                               ; preds = %polly.loop_header639, %middle.block1370
  %polly.indvar_next637 = add nuw nsw i64 %polly.indvar636, 1
  %exitcond1237.not = icmp eq i64 %polly.indvar_next637, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1237.not, label %polly.loop_header649.preheader, label %polly.loop_header633

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
  %exitcond1236.not = icmp eq i64 %polly.indvar_next643, %polly.indvar636
  br i1 %exitcond1236.not, label %polly.loop_exit641, label %polly.loop_header639, !llvm.loop !107

polly.loop_header649:                             ; preds = %polly.loop_header649.preheader, %polly.loop_exit675
  %indvars.iv1226 = phi i64 [ 0, %polly.loop_header649.preheader ], [ %indvars.iv.next1227, %polly.loop_exit675 ]
  %indvars.iv1221 = phi i64 [ 0, %polly.loop_header649.preheader ], [ %indvars.iv.next1222, %polly.loop_exit675 ]
  %indvars.iv1214 = phi i64 [ 4, %polly.loop_header649.preheader ], [ %indvars.iv.next1215, %polly.loop_exit675 ]
  %indvars.iv1212 = phi i64 [ 79, %polly.loop_header649.preheader ], [ %indvars.iv.next1213, %polly.loop_exit675 ]
  %indvars.iv1204 = phi i64 [ 1200, %polly.loop_header649.preheader ], [ %indvars.iv.next1205, %polly.loop_exit675 ]
  %polly.indvar652 = phi i64 [ 0, %polly.loop_header649.preheader ], [ %polly.indvar_next653, %polly.loop_exit675 ]
  %241 = mul nsw i64 %polly.indvar652, -16
  %242 = add nuw i64 %polly.indvar652, 4
  %243 = udiv i64 %242, 5
  %244 = mul nuw nsw i64 %243, 80
  %245 = add i64 %241, %244
  %246 = shl nuw nsw i64 %polly.indvar652, 4
  %247 = sub nsw i64 %246, %244
  %248 = udiv i64 %indvars.iv1214, 5
  %249 = mul nuw nsw i64 %248, 80
  %250 = add i64 %indvars.iv1221, %249
  %251 = sub nsw i64 %indvars.iv1226, %249
  %252 = sub nsw i64 %indvars.iv1212, %249
  %253 = shl nsw i64 %polly.indvar652, 6
  br label %polly.loop_header655

polly.loop_exit657:                               ; preds = %polly.loop_exit663
  %254 = mul nsw i64 %polly.indvar652, -64
  %255 = add nuw nsw i64 %polly.indvar652, 4
  %pexp.p_div_q671 = udiv i64 %255, 5
  %256 = sub nsw i64 %polly.indvar652, %pexp.p_div_q671
  %polly.loop_guard676 = icmp slt i64 %256, 15
  br i1 %polly.loop_guard676, label %polly.loop_header673.preheader, label %polly.loop_exit675

polly.loop_header673.preheader:                   ; preds = %polly.loop_exit657
  %257 = shl nsw i64 %polly.indvar652, 2
  %258 = or i64 %257, 1
  br label %polly.loop_header673

polly.loop_exit675:                               ; preds = %polly.loop_exit732, %polly.loop_exit657
  %polly.indvar_next653 = add nuw nsw i64 %polly.indvar652, 1
  %indvars.iv.next1205 = add nsw i64 %indvars.iv1204, -64
  %indvars.iv.next1213 = add nuw nsw i64 %indvars.iv1212, 16
  %indvars.iv.next1215 = add nuw nsw i64 %indvars.iv1214, 1
  %indvars.iv.next1222 = add nsw i64 %indvars.iv1221, -16
  %indvars.iv.next1227 = add nuw nsw i64 %indvars.iv1226, 16
  %exitcond1235.not = icmp eq i64 %polly.indvar_next653, 19
  br i1 %exitcond1235.not, label %polly.exiting546, label %polly.loop_header649

polly.loop_header655:                             ; preds = %polly.loop_exit663, %polly.loop_header649
  %polly.indvar658 = phi i64 [ 0, %polly.loop_header649 ], [ %polly.indvar_next659, %polly.loop_exit663 ]
  %polly.access.mul.Packed_MemRef_call2550 = mul nuw nsw i64 %polly.indvar658, 1200
  br label %polly.loop_header661

polly.loop_exit663:                               ; preds = %polly.loop_header661
  %polly.indvar_next659 = add nuw nsw i64 %polly.indvar658, 1
  %exitcond1207.not = icmp eq i64 %polly.indvar_next659, 1000
  br i1 %exitcond1207.not, label %polly.loop_exit657, label %polly.loop_header655

polly.loop_header661:                             ; preds = %polly.loop_header661, %polly.loop_header655
  %polly.indvar664 = phi i64 [ 0, %polly.loop_header655 ], [ %polly.indvar_next665, %polly.loop_header661 ]
  %259 = add nuw nsw i64 %polly.indvar664, %253
  %polly.access.mul.call2668 = mul nuw nsw i64 %259, 1000
  %polly.access.add.call2669 = add nuw nsw i64 %polly.access.mul.call2668, %polly.indvar658
  %polly.access.call2670 = getelementptr double, double* %polly.access.cast.call2785, i64 %polly.access.add.call2669
  %polly.access.call2670.load = load double, double* %polly.access.call2670, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2550 = add nuw nsw i64 %polly.indvar664, %polly.access.mul.Packed_MemRef_call2550
  %polly.access.Packed_MemRef_call2550 = getelementptr double, double* %Packed_MemRef_call2550, i64 %polly.access.add.Packed_MemRef_call2550
  store double %polly.access.call2670.load, double* %polly.access.Packed_MemRef_call2550, align 8
  %polly.indvar_next665 = add nuw nsw i64 %polly.indvar664, 1
  %exitcond1206.not = icmp eq i64 %polly.indvar_next665, %indvars.iv1204
  br i1 %exitcond1206.not, label %polly.loop_exit663, label %polly.loop_header661

polly.loop_header673:                             ; preds = %polly.loop_header673.preheader, %polly.loop_exit732
  %indvar1385 = phi i64 [ 0, %polly.loop_header673.preheader ], [ %indvar.next1386, %polly.loop_exit732 ]
  %indvars.iv1228 = phi i64 [ %251, %polly.loop_header673.preheader ], [ %indvars.iv.next1229, %polly.loop_exit732 ]
  %indvars.iv1223 = phi i64 [ %250, %polly.loop_header673.preheader ], [ %indvars.iv.next1224, %polly.loop_exit732 ]
  %indvars.iv1216 = phi i64 [ %252, %polly.loop_header673.preheader ], [ %indvars.iv.next1217, %polly.loop_exit732 ]
  %polly.indvar677 = phi i64 [ %256, %polly.loop_header673.preheader ], [ %polly.indvar_next678, %polly.loop_exit732 ]
  %260 = mul nsw i64 %indvar1385, -80
  %261 = add i64 %245, %260
  %smax1387 = call i64 @llvm.smax.i64(i64 %261, i64 0)
  %262 = mul nuw nsw i64 %indvar1385, 80
  %263 = add i64 %247, %262
  %264 = add i64 %smax1387, %263
  %smax1225 = call i64 @llvm.smax.i64(i64 %indvars.iv1223, i64 0)
  %265 = add i64 %smax1225, %indvars.iv1228
  %smax1218 = call i64 @llvm.smax.i64(i64 %indvars.iv1216, i64 0)
  %266 = mul nsw i64 %polly.indvar677, 5
  %.not978 = icmp slt i64 %266, %258
  %267 = mul nsw i64 %polly.indvar677, 80
  %268 = add nsw i64 %267, %254
  %269 = icmp sgt i64 %268, 64
  %270 = select i1 %269, i64 %268, i64 64
  %271 = add nsw i64 %268, 79
  %polly.loop_guard719 = icmp sgt i64 %268, -80
  br i1 %.not978, label %polly.loop_header680.us, label %polly.loop_header673.split

polly.loop_header680.us:                          ; preds = %polly.loop_header673, %polly.merge687.us
  %polly.indvar683.us = phi i64 [ %polly.indvar_next684.us, %polly.merge687.us ], [ 0, %polly.loop_header673 ]
  br i1 %polly.loop_guard719, label %polly.loop_header716.preheader.us, label %polly.merge687.us

polly.loop_header716.us:                          ; preds = %polly.loop_header716.preheader.us, %polly.loop_header716.us
  %polly.indvar720.us = phi i64 [ %polly.indvar_next721.us, %polly.loop_header716.us ], [ 0, %polly.loop_header716.preheader.us ]
  %272 = add nuw nsw i64 %polly.indvar720.us, %253
  %polly.access.mul.call1724.us = mul nuw nsw i64 %272, 1000
  %polly.access.add.call1725.us = add nuw nsw i64 %polly.access.mul.call1724.us, %polly.indvar683.us
  %polly.access.call1726.us = getelementptr double, double* %polly.access.cast.call1775, i64 %polly.access.add.call1725.us
  %polly.access.call1726.load.us = load double, double* %polly.access.call1726.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1548728.us = add nuw nsw i64 %polly.indvar720.us, %polly.access.mul.Packed_MemRef_call1548727.us
  %polly.access.Packed_MemRef_call1548729.us = getelementptr double, double* %Packed_MemRef_call1548, i64 %polly.access.add.Packed_MemRef_call1548728.us
  store double %polly.access.call1726.load.us, double* %polly.access.Packed_MemRef_call1548729.us, align 8
  %polly.indvar_next721.us = add nuw nsw i64 %polly.indvar720.us, 1
  %exitcond1219.not = icmp eq i64 %polly.indvar720.us, %smax1218
  br i1 %exitcond1219.not, label %polly.merge687.us, label %polly.loop_header716.us

polly.merge687.us:                                ; preds = %polly.loop_header716.us, %polly.loop_header680.us
  %polly.indvar_next684.us = add nuw nsw i64 %polly.indvar683.us, 1
  %exitcond1220.not = icmp eq i64 %polly.indvar_next684.us, 1000
  br i1 %exitcond1220.not, label %polly.loop_header730.preheader, label %polly.loop_header680.us

polly.loop_header716.preheader.us:                ; preds = %polly.loop_header680.us
  %polly.access.mul.Packed_MemRef_call1548727.us = mul nuw nsw i64 %polly.indvar683.us, 1200
  br label %polly.loop_header716.us

polly.loop_header673.split:                       ; preds = %polly.loop_header673
  %polly.loop_guard704.not = icmp sgt i64 %270, %271
  br i1 %polly.loop_guard704.not, label %polly.loop_header680.us1083, label %polly.loop_header680

polly.loop_header680.us1083:                      ; preds = %polly.loop_header673.split, %polly.merge687.us1118
  %polly.indvar683.us1084 = phi i64 [ %polly.indvar_next684.us1119, %polly.merge687.us1118 ], [ 0, %polly.loop_header673.split ]
  %polly.access.mul.Packed_MemRef_call1548.us1127 = mul nuw nsw i64 %polly.indvar683.us1084, 1200
  br label %polly.loop_header690.us1085

polly.loop_header690.us1085:                      ; preds = %polly.loop_header680.us1083, %polly.loop_header690.us1085
  %polly.indvar693.us1086 = phi i64 [ %polly.indvar_next694.us1093, %polly.loop_header690.us1085 ], [ 0, %polly.loop_header680.us1083 ]
  %273 = add nuw nsw i64 %polly.indvar693.us1086, %253
  %polly.access.mul.call1697.us1087 = mul nuw nsw i64 %273, 1000
  %polly.access.add.call1698.us1088 = add nuw nsw i64 %polly.access.mul.call1697.us1087, %polly.indvar683.us1084
  %polly.access.call1699.us1089 = getelementptr double, double* %polly.access.cast.call1775, i64 %polly.access.add.call1698.us1088
  %polly.access.call1699.load.us1090 = load double, double* %polly.access.call1699.us1089, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1548.us1091 = add nuw nsw i64 %polly.indvar693.us1086, %polly.access.mul.Packed_MemRef_call1548.us1127
  %polly.access.Packed_MemRef_call1548.us1092 = getelementptr double, double* %Packed_MemRef_call1548, i64 %polly.access.add.Packed_MemRef_call1548.us1091
  store double %polly.access.call1699.load.us1090, double* %polly.access.Packed_MemRef_call1548.us1092, align 8
  %polly.indvar_next694.us1093 = add nuw nsw i64 %polly.indvar693.us1086, 1
  %exitcond1210.not = icmp eq i64 %polly.indvar_next694.us1093, 64
  br i1 %exitcond1210.not, label %polly.merge687.us1118, label %polly.loop_header690.us1085

polly.merge687.us1118:                            ; preds = %polly.loop_header690.us1085
  %polly.indvar_next684.us1119 = add nuw nsw i64 %polly.indvar683.us1084, 1
  %exitcond1211.not = icmp eq i64 %polly.indvar_next684.us1119, 1000
  br i1 %exitcond1211.not, label %polly.loop_header730.preheader, label %polly.loop_header680.us1083

polly.loop_exit732:                               ; preds = %polly.loop_exit739.loopexit.us, %polly.loop_header730.preheader
  %polly.indvar_next678 = add nsw i64 %polly.indvar677, 1
  %polly.loop_cond679 = icmp slt i64 %polly.indvar677, 14
  %indvars.iv.next1217 = add i64 %indvars.iv1216, 80
  %indvars.iv.next1224 = add i64 %indvars.iv1223, -80
  %indvars.iv.next1229 = add i64 %indvars.iv1228, 80
  %indvar.next1386 = add i64 %indvar1385, 1
  br i1 %polly.loop_cond679, label %polly.loop_header673, label %polly.loop_exit675

polly.loop_header680:                             ; preds = %polly.loop_header673.split, %polly.merge687
  %polly.indvar683 = phi i64 [ %polly.indvar_next684, %polly.merge687 ], [ 0, %polly.loop_header673.split ]
  %polly.access.mul.Packed_MemRef_call1548 = mul nuw nsw i64 %polly.indvar683, 1200
  br label %polly.loop_header690

polly.merge687:                                   ; preds = %polly.loop_header701
  %polly.indvar_next684 = add nuw nsw i64 %polly.indvar683, 1
  %exitcond1209.not = icmp eq i64 %polly.indvar_next684, 1000
  br i1 %exitcond1209.not, label %polly.loop_header730.preheader, label %polly.loop_header680

polly.loop_header730.preheader:                   ; preds = %polly.merge687, %polly.merge687.us1118, %polly.merge687.us
  %274 = sub nsw i64 %253, %267
  %275 = icmp sgt i64 %274, 0
  %276 = select i1 %275, i64 %274, i64 0
  %polly.loop_guard740 = icmp slt i64 %276, 80
  br i1 %polly.loop_guard740, label %polly.loop_header730.us, label %polly.loop_exit732

polly.loop_header730.us:                          ; preds = %polly.loop_header730.preheader, %polly.loop_exit739.loopexit.us
  %polly.indvar733.us = phi i64 [ %polly.indvar_next734.us, %polly.loop_exit739.loopexit.us ], [ 0, %polly.loop_header730.preheader ]
  %polly.access.mul.Packed_MemRef_call1548752.us = mul nuw nsw i64 %polly.indvar733.us, 1200
  br label %polly.loop_header737.us

polly.loop_header737.us:                          ; preds = %polly.loop_header730.us, %polly.loop_exit747.us
  %indvar1388 = phi i64 [ 0, %polly.loop_header730.us ], [ %indvar.next1389, %polly.loop_exit747.us ]
  %indvars.iv1230 = phi i64 [ %265, %polly.loop_header730.us ], [ %indvars.iv.next1231, %polly.loop_exit747.us ]
  %polly.indvar741.us = phi i64 [ %276, %polly.loop_header730.us ], [ %polly.indvar_next742.us, %polly.loop_exit747.us ]
  %277 = add i64 %264, %indvar1388
  %smin1390 = call i64 @llvm.smin.i64(i64 %277, i64 63)
  %278 = add nsw i64 %smin1390, 1
  %smin1232 = call i64 @llvm.smin.i64(i64 %indvars.iv1230, i64 63)
  %279 = add i64 %polly.indvar741.us, %267
  %280 = add i64 %279, %254
  %polly.loop_guard748.us1277 = icmp sgt i64 %280, -1
  br i1 %polly.loop_guard748.us1277, label %polly.loop_header745.preheader.us, label %polly.loop_exit747.us

polly.loop_header745.us:                          ; preds = %polly.loop_header745.us.preheader, %polly.loop_header745.us
  %polly.indvar749.us = phi i64 [ %polly.indvar_next750.us, %polly.loop_header745.us ], [ %polly.indvar749.us.ph, %polly.loop_header745.us.preheader ]
  %281 = add nuw nsw i64 %polly.indvar749.us, %253
  %polly.access.add.Packed_MemRef_call1548753.us = add nuw nsw i64 %polly.indvar749.us, %polly.access.mul.Packed_MemRef_call1548752.us
  %polly.access.Packed_MemRef_call1548754.us = getelementptr double, double* %Packed_MemRef_call1548, i64 %polly.access.add.Packed_MemRef_call1548753.us
  %_p_scalar_755.us = load double, double* %polly.access.Packed_MemRef_call1548754.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_759.us, %_p_scalar_755.us
  %polly.access.Packed_MemRef_call2550762.us = getelementptr double, double* %Packed_MemRef_call2550, i64 %polly.access.add.Packed_MemRef_call1548753.us
  %_p_scalar_763.us = load double, double* %polly.access.Packed_MemRef_call2550762.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_767.us, %_p_scalar_763.us
  %282 = shl i64 %281, 3
  %283 = add i64 %282, %284
  %scevgep768.us = getelementptr i8, i8* %call, i64 %283
  %scevgep768769.us = bitcast i8* %scevgep768.us to double*
  %_p_scalar_770.us = load double, double* %scevgep768769.us, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_770.us
  store double %p_add42.i.us, double* %scevgep768769.us, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next750.us = add nuw nsw i64 %polly.indvar749.us, 1
  %exitcond1233.not = icmp eq i64 %polly.indvar749.us, %smin1232
  br i1 %exitcond1233.not, label %polly.loop_exit747.us, label %polly.loop_header745.us, !llvm.loop !110

polly.loop_exit747.us:                            ; preds = %polly.loop_header745.us, %middle.block1382, %polly.loop_header737.us
  %polly.indvar_next742.us = add nuw nsw i64 %polly.indvar741.us, 1
  %polly.loop_cond743.us = icmp ult i64 %polly.indvar741.us, 79
  %indvars.iv.next1231 = add i64 %indvars.iv1230, 1
  %indvar.next1389 = add i64 %indvar1388, 1
  br i1 %polly.loop_cond743.us, label %polly.loop_header737.us, label %polly.loop_exit739.loopexit.us

polly.loop_header745.preheader.us:                ; preds = %polly.loop_header737.us
  %polly.access.add.Packed_MemRef_call2550757.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1548752.us, %280
  %polly.access.Packed_MemRef_call2550758.us = getelementptr double, double* %Packed_MemRef_call2550, i64 %polly.access.add.Packed_MemRef_call2550757.us
  %_p_scalar_759.us = load double, double* %polly.access.Packed_MemRef_call2550758.us, align 8
  %polly.access.Packed_MemRef_call1548766.us = getelementptr double, double* %Packed_MemRef_call1548, i64 %polly.access.add.Packed_MemRef_call2550757.us
  %_p_scalar_767.us = load double, double* %polly.access.Packed_MemRef_call1548766.us, align 8
  %284 = mul i64 %279, 9600
  %min.iters.check1391 = icmp ult i64 %278, 4
  br i1 %min.iters.check1391, label %polly.loop_header745.us.preheader, label %vector.ph1392

vector.ph1392:                                    ; preds = %polly.loop_header745.preheader.us
  %n.vec1394 = and i64 %278, -4
  %broadcast.splatinsert1400 = insertelement <4 x double> poison, double %_p_scalar_759.us, i32 0
  %broadcast.splat1401 = shufflevector <4 x double> %broadcast.splatinsert1400, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1403 = insertelement <4 x double> poison, double %_p_scalar_767.us, i32 0
  %broadcast.splat1404 = shufflevector <4 x double> %broadcast.splatinsert1403, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1384

vector.body1384:                                  ; preds = %vector.body1384, %vector.ph1392
  %index1395 = phi i64 [ 0, %vector.ph1392 ], [ %index.next1396, %vector.body1384 ]
  %285 = add nuw nsw i64 %index1395, %253
  %286 = add nuw nsw i64 %index1395, %polly.access.mul.Packed_MemRef_call1548752.us
  %287 = getelementptr double, double* %Packed_MemRef_call1548, i64 %286
  %288 = bitcast double* %287 to <4 x double>*
  %wide.load1399 = load <4 x double>, <4 x double>* %288, align 8
  %289 = fmul fast <4 x double> %broadcast.splat1401, %wide.load1399
  %290 = getelementptr double, double* %Packed_MemRef_call2550, i64 %286
  %291 = bitcast double* %290 to <4 x double>*
  %wide.load1402 = load <4 x double>, <4 x double>* %291, align 8
  %292 = fmul fast <4 x double> %broadcast.splat1404, %wide.load1402
  %293 = shl i64 %285, 3
  %294 = add i64 %293, %284
  %295 = getelementptr i8, i8* %call, i64 %294
  %296 = bitcast i8* %295 to <4 x double>*
  %wide.load1405 = load <4 x double>, <4 x double>* %296, align 8, !alias.scope !99, !noalias !101
  %297 = fadd fast <4 x double> %292, %289
  %298 = fmul fast <4 x double> %297, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %299 = fadd fast <4 x double> %298, %wide.load1405
  %300 = bitcast i8* %295 to <4 x double>*
  store <4 x double> %299, <4 x double>* %300, align 8, !alias.scope !99, !noalias !101
  %index.next1396 = add i64 %index1395, 4
  %301 = icmp eq i64 %index.next1396, %n.vec1394
  br i1 %301, label %middle.block1382, label %vector.body1384, !llvm.loop !111

middle.block1382:                                 ; preds = %vector.body1384
  %cmp.n1398 = icmp eq i64 %278, %n.vec1394
  br i1 %cmp.n1398, label %polly.loop_exit747.us, label %polly.loop_header745.us.preheader

polly.loop_header745.us.preheader:                ; preds = %polly.loop_header745.preheader.us, %middle.block1382
  %polly.indvar749.us.ph = phi i64 [ 0, %polly.loop_header745.preheader.us ], [ %n.vec1394, %middle.block1382 ]
  br label %polly.loop_header745.us

polly.loop_exit739.loopexit.us:                   ; preds = %polly.loop_exit747.us
  %polly.indvar_next734.us = add nuw nsw i64 %polly.indvar733.us, 1
  %exitcond1234.not = icmp eq i64 %polly.indvar_next734.us, 1000
  br i1 %exitcond1234.not, label %polly.loop_exit732, label %polly.loop_header730.us

polly.loop_header690:                             ; preds = %polly.loop_header680, %polly.loop_header690
  %polly.indvar693 = phi i64 [ %polly.indvar_next694, %polly.loop_header690 ], [ 0, %polly.loop_header680 ]
  %302 = add nuw nsw i64 %polly.indvar693, %253
  %polly.access.mul.call1697 = mul nuw nsw i64 %302, 1000
  %polly.access.add.call1698 = add nuw nsw i64 %polly.access.mul.call1697, %polly.indvar683
  %polly.access.call1699 = getelementptr double, double* %polly.access.cast.call1775, i64 %polly.access.add.call1698
  %polly.access.call1699.load = load double, double* %polly.access.call1699, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1548 = add nuw nsw i64 %polly.indvar693, %polly.access.mul.Packed_MemRef_call1548
  %polly.access.Packed_MemRef_call1548 = getelementptr double, double* %Packed_MemRef_call1548, i64 %polly.access.add.Packed_MemRef_call1548
  store double %polly.access.call1699.load, double* %polly.access.Packed_MemRef_call1548, align 8
  %polly.indvar_next694 = add nuw nsw i64 %polly.indvar693, 1
  %exitcond1208.not = icmp eq i64 %polly.indvar_next694, 64
  br i1 %exitcond1208.not, label %polly.loop_header701, label %polly.loop_header690

polly.loop_header701:                             ; preds = %polly.loop_header690, %polly.loop_header701
  %polly.indvar705 = phi i64 [ %polly.indvar_next706, %polly.loop_header701 ], [ %270, %polly.loop_header690 ]
  %303 = add nuw nsw i64 %polly.indvar705, %253
  %polly.access.mul.call1709 = mul nsw i64 %303, 1000
  %polly.access.add.call1710 = add nuw nsw i64 %polly.access.mul.call1709, %polly.indvar683
  %polly.access.call1711 = getelementptr double, double* %polly.access.cast.call1775, i64 %polly.access.add.call1710
  %polly.access.call1711.load = load double, double* %polly.access.call1711, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1548713 = add nuw nsw i64 %polly.indvar705, %polly.access.mul.Packed_MemRef_call1548
  %polly.access.Packed_MemRef_call1548714 = getelementptr double, double* %Packed_MemRef_call1548, i64 %polly.access.add.Packed_MemRef_call1548713
  store double %polly.access.call1711.load, double* %polly.access.Packed_MemRef_call1548714, align 8
  %polly.indvar_next706 = add nuw nsw i64 %polly.indvar705, 1
  %polly.loop_cond707.not.not = icmp slt i64 %polly.indvar705, %271
  br i1 %polly.loop_cond707.not.not, label %polly.loop_header701, label %polly.merge687

polly.loop_header897:                             ; preds = %entry, %polly.loop_exit905
  %indvars.iv1262 = phi i64 [ %indvars.iv.next1263, %polly.loop_exit905 ], [ 0, %entry ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %entry ]
  %smin1264 = call i64 @llvm.smin.i64(i64 %indvars.iv1262, i64 -1168)
  %304 = shl nsw i64 %polly.indvar900, 5
  %305 = add nsw i64 %smin1264, 1199
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1263 = add nsw i64 %indvars.iv1262, -32
  %exitcond1267.not = icmp eq i64 %polly.indvar_next901, 38
  br i1 %exitcond1267.not, label %polly.loop_header924, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %indvars.iv1258 = phi i64 [ %indvars.iv.next1259, %polly.loop_exit911 ], [ 0, %polly.loop_header897 ]
  %polly.indvar906 = phi i64 [ %polly.indvar_next907, %polly.loop_exit911 ], [ 0, %polly.loop_header897 ]
  %306 = mul nsw i64 %polly.indvar906, -32
  %smin1311 = call i64 @llvm.smin.i64(i64 %306, i64 -1168)
  %307 = add nsw i64 %smin1311, 1200
  %smin1260 = call i64 @llvm.smin.i64(i64 %indvars.iv1258, i64 -1168)
  %308 = shl nsw i64 %polly.indvar906, 5
  %309 = add nsw i64 %smin1260, 1199
  br label %polly.loop_header909

polly.loop_exit911:                               ; preds = %polly.loop_exit917
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %indvars.iv.next1259 = add nsw i64 %indvars.iv1258, -32
  %exitcond1266.not = icmp eq i64 %polly.indvar_next907, 38
  br i1 %exitcond1266.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_exit917, %polly.loop_header903
  %polly.indvar912 = phi i64 [ 0, %polly.loop_header903 ], [ %polly.indvar_next913, %polly.loop_exit917 ]
  %310 = add nuw nsw i64 %polly.indvar912, %304
  %311 = trunc i64 %310 to i32
  %312 = mul nuw nsw i64 %310, 9600
  %min.iters.check = icmp eq i64 %307, 0
  br i1 %min.iters.check, label %polly.loop_header915, label %vector.ph1312

vector.ph1312:                                    ; preds = %polly.loop_header909
  %broadcast.splatinsert1319 = insertelement <4 x i64> poison, i64 %308, i32 0
  %broadcast.splat1320 = shufflevector <4 x i64> %broadcast.splatinsert1319, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1321 = insertelement <4 x i32> poison, i32 %311, i32 0
  %broadcast.splat1322 = shufflevector <4 x i32> %broadcast.splatinsert1321, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1310

vector.body1310:                                  ; preds = %vector.body1310, %vector.ph1312
  %index1313 = phi i64 [ 0, %vector.ph1312 ], [ %index.next1314, %vector.body1310 ]
  %vec.ind1317 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1312 ], [ %vec.ind.next1318, %vector.body1310 ]
  %313 = add nuw nsw <4 x i64> %vec.ind1317, %broadcast.splat1320
  %314 = trunc <4 x i64> %313 to <4 x i32>
  %315 = mul <4 x i32> %broadcast.splat1322, %314
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
  %index.next1314 = add i64 %index1313, 4
  %vec.ind.next1318 = add <4 x i64> %vec.ind1317, <i64 4, i64 4, i64 4, i64 4>
  %325 = icmp eq i64 %index.next1314, %307
  br i1 %325, label %polly.loop_exit917, label %vector.body1310, !llvm.loop !117

polly.loop_exit917:                               ; preds = %vector.body1310, %polly.loop_header915
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1265.not = icmp eq i64 %polly.indvar912, %305
  br i1 %exitcond1265.not, label %polly.loop_exit911, label %polly.loop_header909

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
  %exitcond1261.not = icmp eq i64 %polly.indvar918, %309
  br i1 %exitcond1261.not, label %polly.loop_exit917, label %polly.loop_header915, !llvm.loop !118

polly.loop_header924:                             ; preds = %polly.loop_exit905, %polly.loop_exit932
  %indvars.iv1252 = phi i64 [ %indvars.iv.next1253, %polly.loop_exit932 ], [ 0, %polly.loop_exit905 ]
  %polly.indvar927 = phi i64 [ %polly.indvar_next928, %polly.loop_exit932 ], [ 0, %polly.loop_exit905 ]
  %smin1254 = call i64 @llvm.smin.i64(i64 %indvars.iv1252, i64 -1168)
  %333 = shl nsw i64 %polly.indvar927, 5
  %334 = add nsw i64 %smin1254, 1199
  br label %polly.loop_header930

polly.loop_exit932:                               ; preds = %polly.loop_exit938
  %polly.indvar_next928 = add nuw nsw i64 %polly.indvar927, 1
  %indvars.iv.next1253 = add nsw i64 %indvars.iv1252, -32
  %exitcond1257.not = icmp eq i64 %polly.indvar_next928, 38
  br i1 %exitcond1257.not, label %polly.loop_header950, label %polly.loop_header924

polly.loop_header930:                             ; preds = %polly.loop_exit938, %polly.loop_header924
  %indvars.iv1248 = phi i64 [ %indvars.iv.next1249, %polly.loop_exit938 ], [ 0, %polly.loop_header924 ]
  %polly.indvar933 = phi i64 [ %polly.indvar_next934, %polly.loop_exit938 ], [ 0, %polly.loop_header924 ]
  %335 = mul nsw i64 %polly.indvar933, -32
  %smin1326 = call i64 @llvm.smin.i64(i64 %335, i64 -968)
  %336 = add nsw i64 %smin1326, 1000
  %smin1250 = call i64 @llvm.smin.i64(i64 %indvars.iv1248, i64 -968)
  %337 = shl nsw i64 %polly.indvar933, 5
  %338 = add nsw i64 %smin1250, 999
  br label %polly.loop_header936

polly.loop_exit938:                               ; preds = %polly.loop_exit944
  %polly.indvar_next934 = add nuw nsw i64 %polly.indvar933, 1
  %indvars.iv.next1249 = add nsw i64 %indvars.iv1248, -32
  %exitcond1256.not = icmp eq i64 %polly.indvar_next934, 32
  br i1 %exitcond1256.not, label %polly.loop_exit932, label %polly.loop_header930

polly.loop_header936:                             ; preds = %polly.loop_exit944, %polly.loop_header930
  %polly.indvar939 = phi i64 [ 0, %polly.loop_header930 ], [ %polly.indvar_next940, %polly.loop_exit944 ]
  %339 = add nuw nsw i64 %polly.indvar939, %333
  %340 = trunc i64 %339 to i32
  %341 = mul nuw nsw i64 %339, 8000
  %min.iters.check1327 = icmp eq i64 %336, 0
  br i1 %min.iters.check1327, label %polly.loop_header942, label %vector.ph1328

vector.ph1328:                                    ; preds = %polly.loop_header936
  %broadcast.splatinsert1337 = insertelement <4 x i64> poison, i64 %337, i32 0
  %broadcast.splat1338 = shufflevector <4 x i64> %broadcast.splatinsert1337, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1339 = insertelement <4 x i32> poison, i32 %340, i32 0
  %broadcast.splat1340 = shufflevector <4 x i32> %broadcast.splatinsert1339, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1325

vector.body1325:                                  ; preds = %vector.body1325, %vector.ph1328
  %index1331 = phi i64 [ 0, %vector.ph1328 ], [ %index.next1332, %vector.body1325 ]
  %vec.ind1335 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1328 ], [ %vec.ind.next1336, %vector.body1325 ]
  %342 = add nuw nsw <4 x i64> %vec.ind1335, %broadcast.splat1338
  %343 = trunc <4 x i64> %342 to <4 x i32>
  %344 = mul <4 x i32> %broadcast.splat1340, %343
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
  %index.next1332 = add i64 %index1331, 4
  %vec.ind.next1336 = add <4 x i64> %vec.ind1335, <i64 4, i64 4, i64 4, i64 4>
  %354 = icmp eq i64 %index.next1332, %336
  br i1 %354, label %polly.loop_exit944, label %vector.body1325, !llvm.loop !120

polly.loop_exit944:                               ; preds = %vector.body1325, %polly.loop_header942
  %polly.indvar_next940 = add nuw nsw i64 %polly.indvar939, 1
  %exitcond1255.not = icmp eq i64 %polly.indvar939, %334
  br i1 %exitcond1255.not, label %polly.loop_exit938, label %polly.loop_header936

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
  %exitcond1251.not = icmp eq i64 %polly.indvar945, %338
  br i1 %exitcond1251.not, label %polly.loop_exit944, label %polly.loop_header942, !llvm.loop !121

polly.loop_header950:                             ; preds = %polly.loop_exit932, %polly.loop_exit958
  %indvars.iv1242 = phi i64 [ %indvars.iv.next1243, %polly.loop_exit958 ], [ 0, %polly.loop_exit932 ]
  %polly.indvar953 = phi i64 [ %polly.indvar_next954, %polly.loop_exit958 ], [ 0, %polly.loop_exit932 ]
  %smin1244 = call i64 @llvm.smin.i64(i64 %indvars.iv1242, i64 -1168)
  %362 = shl nsw i64 %polly.indvar953, 5
  %363 = add nsw i64 %smin1244, 1199
  br label %polly.loop_header956

polly.loop_exit958:                               ; preds = %polly.loop_exit964
  %polly.indvar_next954 = add nuw nsw i64 %polly.indvar953, 1
  %indvars.iv.next1243 = add nsw i64 %indvars.iv1242, -32
  %exitcond1247.not = icmp eq i64 %polly.indvar_next954, 38
  br i1 %exitcond1247.not, label %init_array.exit, label %polly.loop_header950

polly.loop_header956:                             ; preds = %polly.loop_exit964, %polly.loop_header950
  %indvars.iv1238 = phi i64 [ %indvars.iv.next1239, %polly.loop_exit964 ], [ 0, %polly.loop_header950 ]
  %polly.indvar959 = phi i64 [ %polly.indvar_next960, %polly.loop_exit964 ], [ 0, %polly.loop_header950 ]
  %364 = mul nsw i64 %polly.indvar959, -32
  %smin1344 = call i64 @llvm.smin.i64(i64 %364, i64 -968)
  %365 = add nsw i64 %smin1344, 1000
  %smin1240 = call i64 @llvm.smin.i64(i64 %indvars.iv1238, i64 -968)
  %366 = shl nsw i64 %polly.indvar959, 5
  %367 = add nsw i64 %smin1240, 999
  br label %polly.loop_header962

polly.loop_exit964:                               ; preds = %polly.loop_exit970
  %polly.indvar_next960 = add nuw nsw i64 %polly.indvar959, 1
  %indvars.iv.next1239 = add nsw i64 %indvars.iv1238, -32
  %exitcond1246.not = icmp eq i64 %polly.indvar_next960, 32
  br i1 %exitcond1246.not, label %polly.loop_exit958, label %polly.loop_header956

polly.loop_header962:                             ; preds = %polly.loop_exit970, %polly.loop_header956
  %polly.indvar965 = phi i64 [ 0, %polly.loop_header956 ], [ %polly.indvar_next966, %polly.loop_exit970 ]
  %368 = add nuw nsw i64 %polly.indvar965, %362
  %369 = trunc i64 %368 to i32
  %370 = mul nuw nsw i64 %368, 8000
  %min.iters.check1345 = icmp eq i64 %365, 0
  br i1 %min.iters.check1345, label %polly.loop_header968, label %vector.ph1346

vector.ph1346:                                    ; preds = %polly.loop_header962
  %broadcast.splatinsert1355 = insertelement <4 x i64> poison, i64 %366, i32 0
  %broadcast.splat1356 = shufflevector <4 x i64> %broadcast.splatinsert1355, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1357 = insertelement <4 x i32> poison, i32 %369, i32 0
  %broadcast.splat1358 = shufflevector <4 x i32> %broadcast.splatinsert1357, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1343

vector.body1343:                                  ; preds = %vector.body1343, %vector.ph1346
  %index1349 = phi i64 [ 0, %vector.ph1346 ], [ %index.next1350, %vector.body1343 ]
  %vec.ind1353 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1346 ], [ %vec.ind.next1354, %vector.body1343 ]
  %371 = add nuw nsw <4 x i64> %vec.ind1353, %broadcast.splat1356
  %372 = trunc <4 x i64> %371 to <4 x i32>
  %373 = mul <4 x i32> %broadcast.splat1358, %372
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
  %index.next1350 = add i64 %index1349, 4
  %vec.ind.next1354 = add <4 x i64> %vec.ind1353, <i64 4, i64 4, i64 4, i64 4>
  %383 = icmp eq i64 %index.next1350, %365
  br i1 %383, label %polly.loop_exit970, label %vector.body1343, !llvm.loop !123

polly.loop_exit970:                               ; preds = %vector.body1343, %polly.loop_header968
  %polly.indvar_next966 = add nuw nsw i64 %polly.indvar965, 1
  %exitcond1245.not = icmp eq i64 %polly.indvar965, %363
  br i1 %exitcond1245.not, label %polly.loop_exit964, label %polly.loop_header962

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
  %exitcond1241.not = icmp eq i64 %polly.indvar971, %367
  br i1 %exitcond1241.not, label %polly.loop_exit970, label %polly.loop_header968, !llvm.loop !124
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
!26 = !{!"llvm.loop.tile.size", i32 64}
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
