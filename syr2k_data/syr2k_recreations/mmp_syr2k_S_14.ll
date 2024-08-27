; ModuleID = 'syr2k_recreations//mmp_syr2k_S_14.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_14.c"
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
  %call870 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1722 = bitcast i8* %call1 to double*
  %polly.access.call1731 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2732 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1731, %call2
  %polly.access.call2751 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2751, %call1
  %2 = or i1 %0, %1
  %polly.access.call771 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call771, %call2
  %4 = icmp ule i8* %polly.access.call2751, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call771, %call1
  %8 = icmp ule i8* %polly.access.call1731, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header856, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1227 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1226 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1225 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1224 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1224, %scevgep1227
  %bound1 = icmp ult i8* %scevgep1226, %scevgep1225
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
  br i1 %exitcond18.not.i, label %vector.ph1231, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1231:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1238 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1239 = shufflevector <4 x i64> %broadcast.splatinsert1238, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1230

vector.body1230:                                  ; preds = %vector.body1230, %vector.ph1231
  %index1232 = phi i64 [ 0, %vector.ph1231 ], [ %index.next1233, %vector.body1230 ]
  %vec.ind1236 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1231 ], [ %vec.ind.next1237, %vector.body1230 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1236, %broadcast.splat1239
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv7.i, i64 %index1232
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1233 = add i64 %index1232, 4
  %vec.ind.next1237 = add <4 x i64> %vec.ind1236, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1233, 80
  br i1 %40, label %for.inc41.i, label %vector.body1230, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1230
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1231, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit917.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start510, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1652, label %vector.ph1513

vector.ph1513:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1512

vector.body1512:                                  ; preds = %vector.body1512, %vector.ph1513
  %index1514 = phi i64 [ 0, %vector.ph1513 ], [ %index.next1515, %vector.body1512 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv21.i, i64 %index1514
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1515 = add i64 %index1514, 4
  %46 = icmp eq i64 %index.next1515, %n.vec
  br i1 %46, label %middle.block1510, label %vector.body1512, !llvm.loop !18

middle.block1510:                                 ; preds = %vector.body1512
  %cmp.n1517 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1517, label %for.inc6.i, label %for.body3.i46.preheader1652

for.body3.i46.preheader1652:                      ; preds = %for.body3.i46.preheader, %middle.block1510
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1510 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1652, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1652 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1510, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !45

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting511
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start300, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1554 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1554, label %for.body3.i60.preheader1650, label %vector.ph1555

vector.ph1555:                                    ; preds = %for.body3.i60.preheader
  %n.vec1557 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1553

vector.body1553:                                  ; preds = %vector.body1553, %vector.ph1555
  %index1558 = phi i64 [ 0, %vector.ph1555 ], [ %index.next1559, %vector.body1553 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv21.i52, i64 %index1558
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1562 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1562, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1559 = add i64 %index1558, 4
  %57 = icmp eq i64 %index.next1559, %n.vec1557
  br i1 %57, label %middle.block1551, label %vector.body1553, !llvm.loop !57

middle.block1551:                                 ; preds = %vector.body1553
  %cmp.n1561 = icmp eq i64 %indvars.iv21.i52, %n.vec1557
  br i1 %cmp.n1561, label %for.inc6.i63, label %for.body3.i60.preheader1650

for.body3.i60.preheader1650:                      ; preds = %for.body3.i60.preheader, %middle.block1551
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1557, %middle.block1551 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1650, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1650 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1551, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !45

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting301
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1602 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1602, label %for.body3.i99.preheader1648, label %vector.ph1603

vector.ph1603:                                    ; preds = %for.body3.i99.preheader
  %n.vec1605 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1601

vector.body1601:                                  ; preds = %vector.body1601, %vector.ph1603
  %index1606 = phi i64 [ 0, %vector.ph1603 ], [ %index.next1607, %vector.body1601 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv21.i91, i64 %index1606
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1610 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1610, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1607 = add i64 %index1606, 4
  %68 = icmp eq i64 %index.next1607, %n.vec1605
  br i1 %68, label %middle.block1599, label %vector.body1601, !llvm.loop !59

middle.block1599:                                 ; preds = %vector.body1601
  %cmp.n1609 = icmp eq i64 %indvars.iv21.i91, %n.vec1605
  br i1 %cmp.n1609, label %for.inc6.i102, label %for.body3.i99.preheader1648

for.body3.i99.preheader1648:                      ; preds = %for.body3.i99.preheader, %middle.block1599
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1605, %middle.block1599 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1648, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1648 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1599, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !45

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !61
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !63

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !64

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #6
  %malloccall136 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1614 = phi i64 [ %indvar.next1615, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1614, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1616 = icmp ult i64 %88, 4
  br i1 %min.iters.check1616, label %polly.loop_header192.preheader, label %vector.ph1617

vector.ph1617:                                    ; preds = %polly.loop_header
  %n.vec1619 = and i64 %88, -4
  br label %vector.body1613

vector.body1613:                                  ; preds = %vector.body1613, %vector.ph1617
  %index1620 = phi i64 [ 0, %vector.ph1617 ], [ %index.next1621, %vector.body1613 ]
  %90 = shl nuw nsw i64 %index1620, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1624 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1624, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1621 = add i64 %index1620, 4
  %95 = icmp eq i64 %index.next1621, %n.vec1619
  br i1 %95, label %middle.block1611, label %vector.body1613, !llvm.loop !72

middle.block1611:                                 ; preds = %vector.body1613
  %cmp.n1623 = icmp eq i64 %88, %n.vec1619
  br i1 %cmp.n1623, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1611
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1619, %middle.block1611 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1611
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1615 = add i64 %indvar1614, 1
  br i1 %exitcond1066.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1065.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 80
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar_next204, 60
  br i1 %exitcond1064.not, label %polly.loop_header216, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 60
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2732, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !69, !noalias !75
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1063.not = icmp eq i64 %polly.indvar_next210, 80
  br i1 %exitcond1063.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv1058 = phi i64 [ %indvars.iv.next1059, %polly.loop_exit224 ], [ 2, %polly.loop_exit208 ]
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %101, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = mul nsw i64 %polly.indvar219, -20
  %98 = mul nuw nsw i64 %polly.indvar219, 20
  %99 = mul nsw i64 %polly.indvar219, -20
  %100 = mul nuw nsw i64 %polly.indvar219, 20
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %101 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next1041 = add nsw i64 %indvars.iv1040, -20
  %indvars.iv.next1045 = add nuw nsw i64 %indvars.iv1044, 20
  %indvars.iv.next1059 = add nuw nsw i64 %indvars.iv1058, 1
  %exitcond1062.not = icmp eq i64 %101, 4
  br i1 %exitcond1062.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 0, %polly.loop_header216 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit230 ], [ 0, %polly.loop_header216 ]
  %smin1056 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -52)
  %102 = add nsw i64 %smin1056, 60
  %103 = shl nsw i64 %polly.indvar225, 3
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit236
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -8
  %exitcond1061.not = icmp eq i64 %polly.indvar_next226, 8
  br i1 %exitcond1061.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit236, %polly.loop_header222
  %indvars.iv1046 = phi i64 [ %indvars.iv.next1047, %polly.loop_exit236 ], [ %indvars.iv1044, %polly.loop_header222 ]
  %indvars.iv1042 = phi i64 [ %indvars.iv.next1043, %polly.loop_exit236 ], [ %indvars.iv1040, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_header222 ]
  %104 = shl nuw nsw i64 %polly.indvar231, 4
  %105 = add i64 %97, %104
  %smax1628 = call i64 @llvm.smax.i64(i64 %105, i64 0)
  %106 = mul nsw i64 %polly.indvar231, -16
  %107 = add i64 %98, %106
  %108 = add i64 %smax1628, %107
  %109 = shl nsw i64 %polly.indvar231, 4
  %110 = add nsw i64 %109, %99
  %111 = icmp sgt i64 %110, 0
  %112 = select i1 %111, i64 %110, i64 0
  %polly.loop_guard = icmp slt i64 %112, 20
  br i1 %polly.loop_guard, label %polly.loop_header234.preheader, label %polly.loop_exit236

polly.loop_header234.preheader:                   ; preds = %polly.loop_header228
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1042, i64 0)
  %113 = add i64 %smax, %indvars.iv1046
  %114 = sub nsw i64 %100, %109
  %115 = add nuw nsw i64 %109, 16
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit267, %polly.loop_header228
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1043 = add nsw i64 %indvars.iv1042, 16
  %indvars.iv.next1047 = add nsw i64 %indvars.iv1046, -16
  %exitcond1060 = icmp eq i64 %polly.indvar_next232, %indvars.iv1058
  br i1 %exitcond1060, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header234.preheader, %polly.loop_exit267
  %indvar1629 = phi i64 [ 0, %polly.loop_header234.preheader ], [ %indvar.next1630, %polly.loop_exit267 ]
  %indvars.iv1048 = phi i64 [ %113, %polly.loop_header234.preheader ], [ %indvars.iv.next1049, %polly.loop_exit267 ]
  %polly.indvar237 = phi i64 [ %112, %polly.loop_header234.preheader ], [ %polly.indvar_next238, %polly.loop_exit267 ]
  %116 = add i64 %108, %indvar1629
  %smin1631 = call i64 @llvm.smin.i64(i64 %116, i64 15)
  %117 = add nsw i64 %smin1631, 1
  %smin1054 = call i64 @llvm.smin.i64(i64 %indvars.iv1048, i64 15)
  %118 = add nsw i64 %polly.indvar237, %114
  %polly.loop_guard2501213 = icmp sgt i64 %118, -1
  %119 = add nuw nsw i64 %polly.indvar237, %100
  %.not = icmp ult i64 %119, %115
  %polly.access.mul.call1259 = mul nsw i64 %119, 60
  %120 = add nuw i64 %polly.access.mul.call1259, %103
  br i1 %polly.loop_guard2501213, label %polly.loop_header240.us, label %polly.loop_header234.split

polly.loop_header240.us:                          ; preds = %polly.loop_header234, %polly.merge.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.merge.us ], [ 0, %polly.loop_header234 ]
  %121 = add nuw nsw i64 %polly.indvar243.us, %103
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar243.us, 80
  br label %polly.loop_header247.us

polly.loop_header247.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header247.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_header247.us ], [ 0, %polly.loop_header240.us ]
  %122 = add nuw nsw i64 %polly.indvar251.us, %109
  %polly.access.mul.call1255.us = mul nuw nsw i64 %122, 60
  %polly.access.add.call1256.us = add nuw nsw i64 %121, %polly.access.mul.call1255.us
  %polly.access.call1257.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1256.us
  %polly.access.call1257.load.us = load double, double* %polly.access.call1257.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar251.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1257.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar251.us, %smin1054
  br i1 %exitcond1051.not, label %polly.cond.loopexit.us, label %polly.loop_header247.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1260.us = add nuw nsw i64 %120, %polly.indvar243.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %118
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar_next244.us, %102
  br i1 %exitcond1053.not, label %polly.loop_header265.preheader, label %polly.loop_header240.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header247.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header234.split:                       ; preds = %polly.loop_header234
  br i1 %.not, label %polly.loop_exit267, label %polly.loop_header240

polly.loop_exit267:                               ; preds = %polly.loop_exit274.loopexit.us, %polly.loop_header234.split, %polly.loop_header265.preheader
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %polly.loop_cond239 = icmp ult i64 %polly.indvar237, 19
  %indvars.iv.next1049 = add i64 %indvars.iv1048, 1
  %indvar.next1630 = add i64 %indvar1629, 1
  br i1 %polly.loop_cond239, label %polly.loop_header234, label %polly.loop_exit236

polly.loop_header240:                             ; preds = %polly.loop_header234.split, %polly.loop_header240
  %polly.indvar243 = phi i64 [ %polly.indvar_next244, %polly.loop_header240 ], [ 0, %polly.loop_header234.split ]
  %polly.access.add.call1260 = add nuw nsw i64 %120, %polly.indvar243
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !68, !noalias !76
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar243, 80
  %polly.access.add.Packed_MemRef_call1263 = add nsw i64 %polly.access.mul.Packed_MemRef_call1262, %118
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next244 = add nuw nsw i64 %polly.indvar243, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next244, %102
  br i1 %exitcond.not, label %polly.loop_header265.preheader, label %polly.loop_header240

polly.loop_header265.preheader:                   ; preds = %polly.loop_header240, %polly.merge.us
  %123 = mul i64 %119, 640
  br i1 %polly.loop_guard2501213, label %polly.loop_header265.us, label %polly.loop_exit267

polly.loop_header265.us:                          ; preds = %polly.loop_header265.preheader, %polly.loop_exit274.loopexit.us
  %polly.indvar268.us = phi i64 [ %polly.indvar_next269.us, %polly.loop_exit274.loopexit.us ], [ 0, %polly.loop_header265.preheader ]
  %polly.access.mul.Packed_MemRef_call1279.us = mul nuw nsw i64 %polly.indvar268.us, 80
  %124 = add nuw nsw i64 %polly.indvar268.us, %103
  %polly.access.mul.Packed_MemRef_call2283.us = mul nuw nsw i64 %124, 80
  %polly.access.add.Packed_MemRef_call2284.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us, %119
  %polly.access.Packed_MemRef_call2285.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call2285.us, align 8
  %polly.access.add.Packed_MemRef_call1292.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1279.us, %118
  %polly.access.Packed_MemRef_call1293.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us
  %_p_scalar_294.us = load double, double* %polly.access.Packed_MemRef_call1293.us, align 8
  %min.iters.check1632 = icmp ult i64 %117, 4
  br i1 %min.iters.check1632, label %polly.loop_header272.us.preheader, label %vector.ph1633

vector.ph1633:                                    ; preds = %polly.loop_header265.us
  %n.vec1635 = and i64 %117, -4
  %broadcast.splatinsert1641 = insertelement <4 x double> poison, double %_p_scalar_286.us, i32 0
  %broadcast.splat1642 = shufflevector <4 x double> %broadcast.splatinsert1641, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1644 = insertelement <4 x double> poison, double %_p_scalar_294.us, i32 0
  %broadcast.splat1645 = shufflevector <4 x double> %broadcast.splatinsert1644, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1627

vector.body1627:                                  ; preds = %vector.body1627, %vector.ph1633
  %index1636 = phi i64 [ 0, %vector.ph1633 ], [ %index.next1637, %vector.body1627 ]
  %125 = add nuw nsw i64 %index1636, %109
  %126 = add nuw nsw i64 %index1636, %polly.access.mul.Packed_MemRef_call1279.us
  %127 = getelementptr double, double* %Packed_MemRef_call1, i64 %126
  %128 = bitcast double* %127 to <4 x double>*
  %wide.load1640 = load <4 x double>, <4 x double>* %128, align 8
  %129 = fmul fast <4 x double> %broadcast.splat1642, %wide.load1640
  %130 = add nuw nsw i64 %125, %polly.access.mul.Packed_MemRef_call2283.us
  %131 = getelementptr double, double* %Packed_MemRef_call2, i64 %130
  %132 = bitcast double* %131 to <4 x double>*
  %wide.load1643 = load <4 x double>, <4 x double>* %132, align 8
  %133 = fmul fast <4 x double> %broadcast.splat1645, %wide.load1643
  %134 = shl i64 %125, 3
  %135 = add i64 %134, %123
  %136 = getelementptr i8, i8* %call, i64 %135
  %137 = bitcast i8* %136 to <4 x double>*
  %wide.load1646 = load <4 x double>, <4 x double>* %137, align 8, !alias.scope !65, !noalias !67
  %138 = fadd fast <4 x double> %133, %129
  %139 = fmul fast <4 x double> %138, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %140 = fadd fast <4 x double> %139, %wide.load1646
  %141 = bitcast i8* %136 to <4 x double>*
  store <4 x double> %140, <4 x double>* %141, align 8, !alias.scope !65, !noalias !67
  %index.next1637 = add i64 %index1636, 4
  %142 = icmp eq i64 %index.next1637, %n.vec1635
  br i1 %142, label %middle.block1625, label %vector.body1627, !llvm.loop !77

middle.block1625:                                 ; preds = %vector.body1627
  %cmp.n1639 = icmp eq i64 %117, %n.vec1635
  br i1 %cmp.n1639, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us.preheader

polly.loop_header272.us.preheader:                ; preds = %polly.loop_header265.us, %middle.block1625
  %polly.indvar276.us.ph = phi i64 [ 0, %polly.loop_header265.us ], [ %n.vec1635, %middle.block1625 ]
  br label %polly.loop_header272.us

polly.loop_header272.us:                          ; preds = %polly.loop_header272.us.preheader, %polly.loop_header272.us
  %polly.indvar276.us = phi i64 [ %polly.indvar_next277.us, %polly.loop_header272.us ], [ %polly.indvar276.us.ph, %polly.loop_header272.us.preheader ]
  %143 = add nuw nsw i64 %polly.indvar276.us, %109
  %polly.access.add.Packed_MemRef_call1280.us = add nuw nsw i64 %polly.indvar276.us, %polly.access.mul.Packed_MemRef_call1279.us
  %polly.access.Packed_MemRef_call1281.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us
  %_p_scalar_282.us = load double, double* %polly.access.Packed_MemRef_call1281.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_286.us, %_p_scalar_282.us
  %polly.access.add.Packed_MemRef_call2288.us = add nuw nsw i64 %143, %polly.access.mul.Packed_MemRef_call2283.us
  %polly.access.Packed_MemRef_call2289.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us
  %_p_scalar_290.us = load double, double* %polly.access.Packed_MemRef_call2289.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_294.us, %_p_scalar_290.us
  %144 = shl i64 %143, 3
  %145 = add i64 %144, %123
  %scevgep295.us = getelementptr i8, i8* %call, i64 %145
  %scevgep295296.us = bitcast i8* %scevgep295.us to double*
  %_p_scalar_297.us = load double, double* %scevgep295296.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_297.us
  store double %p_add42.i118.us, double* %scevgep295296.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar276.us, %smin1054
  br i1 %exitcond1055.not, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us, !llvm.loop !78

polly.loop_exit274.loopexit.us:                   ; preds = %polly.loop_header272.us, %middle.block1625
  %polly.indvar_next269.us = add nuw nsw i64 %polly.indvar268.us, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar_next269.us, %102
  br i1 %exitcond1057.not, label %polly.loop_exit267, label %polly.loop_header265.us

polly.start300:                                   ; preds = %kernel_syr2k.exit
  %malloccall302 = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #6
  %malloccall304 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header388

polly.exiting301:                                 ; preds = %polly.loop_exit428
  tail call void @free(i8* %malloccall302)
  tail call void @free(i8* %malloccall304)
  br label %kernel_syr2k.exit90

polly.loop_header388:                             ; preds = %polly.loop_exit396, %polly.start300
  %indvar1566 = phi i64 [ %indvar.next1567, %polly.loop_exit396 ], [ 0, %polly.start300 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 1, %polly.start300 ]
  %146 = add i64 %indvar1566, 1
  %147 = mul nuw nsw i64 %polly.indvar391, 640
  %scevgep400 = getelementptr i8, i8* %call, i64 %147
  %min.iters.check1568 = icmp ult i64 %146, 4
  br i1 %min.iters.check1568, label %polly.loop_header394.preheader, label %vector.ph1569

vector.ph1569:                                    ; preds = %polly.loop_header388
  %n.vec1571 = and i64 %146, -4
  br label %vector.body1565

vector.body1565:                                  ; preds = %vector.body1565, %vector.ph1569
  %index1572 = phi i64 [ 0, %vector.ph1569 ], [ %index.next1573, %vector.body1565 ]
  %148 = shl nuw nsw i64 %index1572, 3
  %149 = getelementptr i8, i8* %scevgep400, i64 %148
  %150 = bitcast i8* %149 to <4 x double>*
  %wide.load1576 = load <4 x double>, <4 x double>* %150, align 8, !alias.scope !79, !noalias !81
  %151 = fmul fast <4 x double> %wide.load1576, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %152 = bitcast i8* %149 to <4 x double>*
  store <4 x double> %151, <4 x double>* %152, align 8, !alias.scope !79, !noalias !81
  %index.next1573 = add i64 %index1572, 4
  %153 = icmp eq i64 %index.next1573, %n.vec1571
  br i1 %153, label %middle.block1563, label %vector.body1565, !llvm.loop !86

middle.block1563:                                 ; preds = %vector.body1565
  %cmp.n1575 = icmp eq i64 %146, %n.vec1571
  br i1 %cmp.n1575, label %polly.loop_exit396, label %polly.loop_header394.preheader

polly.loop_header394.preheader:                   ; preds = %polly.loop_header388, %middle.block1563
  %polly.indvar397.ph = phi i64 [ 0, %polly.loop_header388 ], [ %n.vec1571, %middle.block1563 ]
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_header394, %middle.block1563
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar_next392, 80
  %indvar.next1567 = add i64 %indvar1566, 1
  br i1 %exitcond1098.not, label %polly.loop_header404.preheader, label %polly.loop_header388

polly.loop_header404.preheader:                   ; preds = %polly.loop_exit396
  %Packed_MemRef_call1303 = bitcast i8* %malloccall302 to double*
  %Packed_MemRef_call2305 = bitcast i8* %malloccall304 to double*
  br label %polly.loop_header404

polly.loop_header394:                             ; preds = %polly.loop_header394.preheader, %polly.loop_header394
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_header394 ], [ %polly.indvar397.ph, %polly.loop_header394.preheader ]
  %154 = shl nuw nsw i64 %polly.indvar397, 3
  %scevgep401 = getelementptr i8, i8* %scevgep400, i64 %154
  %scevgep401402 = bitcast i8* %scevgep401 to double*
  %_p_scalar_403 = load double, double* %scevgep401402, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_403, 1.200000e+00
  store double %p_mul.i57, double* %scevgep401402, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1097.not = icmp eq i64 %polly.indvar_next398, %polly.indvar391
  br i1 %exitcond1097.not, label %polly.loop_exit396, label %polly.loop_header394, !llvm.loop !87

polly.loop_header404:                             ; preds = %polly.loop_header404.preheader, %polly.loop_exit412
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_exit412 ], [ 0, %polly.loop_header404.preheader ]
  %polly.access.mul.Packed_MemRef_call2305 = mul nuw nsw i64 %polly.indvar407, 80
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_header410
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar_next408, 60
  br i1 %exitcond1096.not, label %polly.loop_header420, label %polly.loop_header404

polly.loop_header410:                             ; preds = %polly.loop_header410, %polly.loop_header404
  %polly.indvar413 = phi i64 [ 0, %polly.loop_header404 ], [ %polly.indvar_next414, %polly.loop_header410 ]
  %polly.access.mul.call2417 = mul nuw nsw i64 %polly.indvar413, 60
  %polly.access.add.call2418 = add nuw nsw i64 %polly.access.mul.call2417, %polly.indvar407
  %polly.access.call2419 = getelementptr double, double* %polly.access.cast.call2732, i64 %polly.access.add.call2418
  %polly.access.call2419.load = load double, double* %polly.access.call2419, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call2305 = add nuw nsw i64 %polly.indvar413, %polly.access.mul.Packed_MemRef_call2305
  %polly.access.Packed_MemRef_call2305 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305
  store double %polly.access.call2419.load, double* %polly.access.Packed_MemRef_call2305, align 8
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1095.not = icmp eq i64 %polly.indvar_next414, 80
  br i1 %exitcond1095.not, label %polly.loop_exit412, label %polly.loop_header410

polly.loop_header420:                             ; preds = %polly.loop_exit412, %polly.loop_exit428
  %indvars.iv1090 = phi i64 [ %indvars.iv.next1091, %polly.loop_exit428 ], [ 2, %polly.loop_exit412 ]
  %indvars.iv1076 = phi i64 [ %indvars.iv.next1077, %polly.loop_exit428 ], [ 0, %polly.loop_exit412 ]
  %indvars.iv1071 = phi i64 [ %indvars.iv.next1072, %polly.loop_exit428 ], [ 0, %polly.loop_exit412 ]
  %polly.indvar423 = phi i64 [ %159, %polly.loop_exit428 ], [ 0, %polly.loop_exit412 ]
  %155 = mul nsw i64 %polly.indvar423, -20
  %156 = mul nuw nsw i64 %polly.indvar423, 20
  %157 = mul nsw i64 %polly.indvar423, -20
  %158 = mul nuw nsw i64 %polly.indvar423, 20
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_exit434
  %159 = add nuw nsw i64 %polly.indvar423, 1
  %indvars.iv.next1072 = add nsw i64 %indvars.iv1071, -20
  %indvars.iv.next1077 = add nuw nsw i64 %indvars.iv1076, 20
  %indvars.iv.next1091 = add nuw nsw i64 %indvars.iv1090, 1
  %exitcond1094.not = icmp eq i64 %159, 4
  br i1 %exitcond1094.not, label %polly.exiting301, label %polly.loop_header420

polly.loop_header426:                             ; preds = %polly.loop_exit434, %polly.loop_header420
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068, %polly.loop_exit434 ], [ 0, %polly.loop_header420 ]
  %polly.indvar429 = phi i64 [ %polly.indvar_next430, %polly.loop_exit434 ], [ 0, %polly.loop_header420 ]
  %smin1088 = call i64 @llvm.smin.i64(i64 %indvars.iv1067, i64 -52)
  %160 = add nsw i64 %smin1088, 60
  %161 = shl nsw i64 %polly.indvar429, 3
  br label %polly.loop_header432

polly.loop_exit434:                               ; preds = %polly.loop_exit441
  %polly.indvar_next430 = add nuw nsw i64 %polly.indvar429, 1
  %indvars.iv.next1068 = add nsw i64 %indvars.iv1067, -8
  %exitcond1093.not = icmp eq i64 %polly.indvar_next430, 8
  br i1 %exitcond1093.not, label %polly.loop_exit428, label %polly.loop_header426

polly.loop_header432:                             ; preds = %polly.loop_exit441, %polly.loop_header426
  %indvars.iv1078 = phi i64 [ %indvars.iv.next1079, %polly.loop_exit441 ], [ %indvars.iv1076, %polly.loop_header426 ]
  %indvars.iv1073 = phi i64 [ %indvars.iv.next1074, %polly.loop_exit441 ], [ %indvars.iv1071, %polly.loop_header426 ]
  %polly.indvar435 = phi i64 [ %polly.indvar_next436, %polly.loop_exit441 ], [ 0, %polly.loop_header426 ]
  %162 = shl nuw nsw i64 %polly.indvar435, 4
  %163 = add i64 %155, %162
  %smax1580 = call i64 @llvm.smax.i64(i64 %163, i64 0)
  %164 = mul nsw i64 %polly.indvar435, -16
  %165 = add i64 %156, %164
  %166 = add i64 %smax1580, %165
  %167 = shl nsw i64 %polly.indvar435, 4
  %168 = add nsw i64 %167, %157
  %169 = icmp sgt i64 %168, 0
  %170 = select i1 %169, i64 %168, i64 0
  %polly.loop_guard442 = icmp slt i64 %170, 20
  br i1 %polly.loop_guard442, label %polly.loop_header439.preheader, label %polly.loop_exit441

polly.loop_header439.preheader:                   ; preds = %polly.loop_header432
  %smax1075 = call i64 @llvm.smax.i64(i64 %indvars.iv1073, i64 0)
  %171 = add i64 %smax1075, %indvars.iv1078
  %172 = sub nsw i64 %158, %167
  %173 = add nuw nsw i64 %167, 16
  br label %polly.loop_header439

polly.loop_exit441:                               ; preds = %polly.loop_exit477, %polly.loop_header432
  %polly.indvar_next436 = add nuw nsw i64 %polly.indvar435, 1
  %indvars.iv.next1074 = add nsw i64 %indvars.iv1073, 16
  %indvars.iv.next1079 = add nsw i64 %indvars.iv1078, -16
  %exitcond1092 = icmp eq i64 %polly.indvar_next436, %indvars.iv1090
  br i1 %exitcond1092, label %polly.loop_exit434, label %polly.loop_header432

polly.loop_header439:                             ; preds = %polly.loop_header439.preheader, %polly.loop_exit477
  %indvar1581 = phi i64 [ 0, %polly.loop_header439.preheader ], [ %indvar.next1582, %polly.loop_exit477 ]
  %indvars.iv1080 = phi i64 [ %171, %polly.loop_header439.preheader ], [ %indvars.iv.next1081, %polly.loop_exit477 ]
  %polly.indvar443 = phi i64 [ %170, %polly.loop_header439.preheader ], [ %polly.indvar_next444, %polly.loop_exit477 ]
  %174 = add i64 %166, %indvar1581
  %smin1583 = call i64 @llvm.smin.i64(i64 %174, i64 15)
  %175 = add nsw i64 %smin1583, 1
  %smin1086 = call i64 @llvm.smin.i64(i64 %indvars.iv1080, i64 15)
  %176 = add nsw i64 %polly.indvar443, %172
  %polly.loop_guard4561214 = icmp sgt i64 %176, -1
  %177 = add nuw nsw i64 %polly.indvar443, %158
  %.not924 = icmp ult i64 %177, %173
  %polly.access.mul.call1469 = mul nsw i64 %177, 60
  %178 = add nuw i64 %polly.access.mul.call1469, %161
  br i1 %polly.loop_guard4561214, label %polly.loop_header446.us, label %polly.loop_header439.split

polly.loop_header446.us:                          ; preds = %polly.loop_header439, %polly.merge465.us
  %polly.indvar449.us = phi i64 [ %polly.indvar_next450.us, %polly.merge465.us ], [ 0, %polly.loop_header439 ]
  %179 = add nuw nsw i64 %polly.indvar449.us, %161
  %polly.access.mul.Packed_MemRef_call1303.us = mul nuw nsw i64 %polly.indvar449.us, 80
  br label %polly.loop_header453.us

polly.loop_header453.us:                          ; preds = %polly.loop_header446.us, %polly.loop_header453.us
  %polly.indvar457.us = phi i64 [ %polly.indvar_next458.us, %polly.loop_header453.us ], [ 0, %polly.loop_header446.us ]
  %180 = add nuw nsw i64 %polly.indvar457.us, %167
  %polly.access.mul.call1461.us = mul nuw nsw i64 %180, 60
  %polly.access.add.call1462.us = add nuw nsw i64 %179, %polly.access.mul.call1461.us
  %polly.access.call1463.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1462.us
  %polly.access.call1463.load.us = load double, double* %polly.access.call1463.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1303.us = add nuw nsw i64 %polly.indvar457.us, %polly.access.mul.Packed_MemRef_call1303.us
  %polly.access.Packed_MemRef_call1303.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us
  store double %polly.access.call1463.load.us, double* %polly.access.Packed_MemRef_call1303.us, align 8
  %polly.indvar_next458.us = add nuw nsw i64 %polly.indvar457.us, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar457.us, %smin1086
  br i1 %exitcond1083.not, label %polly.cond464.loopexit.us, label %polly.loop_header453.us

polly.then466.us:                                 ; preds = %polly.cond464.loopexit.us
  %polly.access.add.call1470.us = add nuw nsw i64 %178, %polly.indvar449.us
  %polly.access.call1471.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1470.us
  %polly.access.call1471.load.us = load double, double* %polly.access.call1471.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1303473.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1303.us, %176
  %polly.access.Packed_MemRef_call1303474.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303473.us
  store double %polly.access.call1471.load.us, double* %polly.access.Packed_MemRef_call1303474.us, align 8
  br label %polly.merge465.us

polly.merge465.us:                                ; preds = %polly.then466.us, %polly.cond464.loopexit.us
  %polly.indvar_next450.us = add nuw nsw i64 %polly.indvar449.us, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar_next450.us, %160
  br i1 %exitcond1085.not, label %polly.loop_header475.preheader, label %polly.loop_header446.us

polly.cond464.loopexit.us:                        ; preds = %polly.loop_header453.us
  br i1 %.not924, label %polly.merge465.us, label %polly.then466.us

polly.loop_header439.split:                       ; preds = %polly.loop_header439
  br i1 %.not924, label %polly.loop_exit477, label %polly.loop_header446

polly.loop_exit477:                               ; preds = %polly.loop_exit484.loopexit.us, %polly.loop_header439.split, %polly.loop_header475.preheader
  %polly.indvar_next444 = add nuw nsw i64 %polly.indvar443, 1
  %polly.loop_cond445 = icmp ult i64 %polly.indvar443, 19
  %indvars.iv.next1081 = add i64 %indvars.iv1080, 1
  %indvar.next1582 = add i64 %indvar1581, 1
  br i1 %polly.loop_cond445, label %polly.loop_header439, label %polly.loop_exit441

polly.loop_header446:                             ; preds = %polly.loop_header439.split, %polly.loop_header446
  %polly.indvar449 = phi i64 [ %polly.indvar_next450, %polly.loop_header446 ], [ 0, %polly.loop_header439.split ]
  %polly.access.add.call1470 = add nuw nsw i64 %178, %polly.indvar449
  %polly.access.call1471 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1470
  %polly.access.call1471.load = load double, double* %polly.access.call1471, align 8, !alias.scope !82, !noalias !89
  %polly.access.mul.Packed_MemRef_call1303472 = mul nuw nsw i64 %polly.indvar449, 80
  %polly.access.add.Packed_MemRef_call1303473 = add nsw i64 %polly.access.mul.Packed_MemRef_call1303472, %176
  %polly.access.Packed_MemRef_call1303474 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303473
  store double %polly.access.call1471.load, double* %polly.access.Packed_MemRef_call1303474, align 8
  %polly.indvar_next450 = add nuw nsw i64 %polly.indvar449, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar_next450, %160
  br i1 %exitcond1070.not, label %polly.loop_header475.preheader, label %polly.loop_header446

polly.loop_header475.preheader:                   ; preds = %polly.loop_header446, %polly.merge465.us
  %181 = mul i64 %177, 640
  br i1 %polly.loop_guard4561214, label %polly.loop_header475.us, label %polly.loop_exit477

polly.loop_header475.us:                          ; preds = %polly.loop_header475.preheader, %polly.loop_exit484.loopexit.us
  %polly.indvar478.us = phi i64 [ %polly.indvar_next479.us, %polly.loop_exit484.loopexit.us ], [ 0, %polly.loop_header475.preheader ]
  %polly.access.mul.Packed_MemRef_call1303489.us = mul nuw nsw i64 %polly.indvar478.us, 80
  %182 = add nuw nsw i64 %polly.indvar478.us, %161
  %polly.access.mul.Packed_MemRef_call2305493.us = mul nuw nsw i64 %182, 80
  %polly.access.add.Packed_MemRef_call2305494.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305493.us, %177
  %polly.access.Packed_MemRef_call2305495.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305494.us
  %_p_scalar_496.us = load double, double* %polly.access.Packed_MemRef_call2305495.us, align 8
  %polly.access.add.Packed_MemRef_call1303502.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1303489.us, %176
  %polly.access.Packed_MemRef_call1303503.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303502.us
  %_p_scalar_504.us = load double, double* %polly.access.Packed_MemRef_call1303503.us, align 8
  %min.iters.check1584 = icmp ult i64 %175, 4
  br i1 %min.iters.check1584, label %polly.loop_header482.us.preheader, label %vector.ph1585

vector.ph1585:                                    ; preds = %polly.loop_header475.us
  %n.vec1587 = and i64 %175, -4
  %broadcast.splatinsert1593 = insertelement <4 x double> poison, double %_p_scalar_496.us, i32 0
  %broadcast.splat1594 = shufflevector <4 x double> %broadcast.splatinsert1593, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1596 = insertelement <4 x double> poison, double %_p_scalar_504.us, i32 0
  %broadcast.splat1597 = shufflevector <4 x double> %broadcast.splatinsert1596, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1579

vector.body1579:                                  ; preds = %vector.body1579, %vector.ph1585
  %index1588 = phi i64 [ 0, %vector.ph1585 ], [ %index.next1589, %vector.body1579 ]
  %183 = add nuw nsw i64 %index1588, %167
  %184 = add nuw nsw i64 %index1588, %polly.access.mul.Packed_MemRef_call1303489.us
  %185 = getelementptr double, double* %Packed_MemRef_call1303, i64 %184
  %186 = bitcast double* %185 to <4 x double>*
  %wide.load1592 = load <4 x double>, <4 x double>* %186, align 8
  %187 = fmul fast <4 x double> %broadcast.splat1594, %wide.load1592
  %188 = add nuw nsw i64 %183, %polly.access.mul.Packed_MemRef_call2305493.us
  %189 = getelementptr double, double* %Packed_MemRef_call2305, i64 %188
  %190 = bitcast double* %189 to <4 x double>*
  %wide.load1595 = load <4 x double>, <4 x double>* %190, align 8
  %191 = fmul fast <4 x double> %broadcast.splat1597, %wide.load1595
  %192 = shl i64 %183, 3
  %193 = add i64 %192, %181
  %194 = getelementptr i8, i8* %call, i64 %193
  %195 = bitcast i8* %194 to <4 x double>*
  %wide.load1598 = load <4 x double>, <4 x double>* %195, align 8, !alias.scope !79, !noalias !81
  %196 = fadd fast <4 x double> %191, %187
  %197 = fmul fast <4 x double> %196, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %198 = fadd fast <4 x double> %197, %wide.load1598
  %199 = bitcast i8* %194 to <4 x double>*
  store <4 x double> %198, <4 x double>* %199, align 8, !alias.scope !79, !noalias !81
  %index.next1589 = add i64 %index1588, 4
  %200 = icmp eq i64 %index.next1589, %n.vec1587
  br i1 %200, label %middle.block1577, label %vector.body1579, !llvm.loop !90

middle.block1577:                                 ; preds = %vector.body1579
  %cmp.n1591 = icmp eq i64 %175, %n.vec1587
  br i1 %cmp.n1591, label %polly.loop_exit484.loopexit.us, label %polly.loop_header482.us.preheader

polly.loop_header482.us.preheader:                ; preds = %polly.loop_header475.us, %middle.block1577
  %polly.indvar486.us.ph = phi i64 [ 0, %polly.loop_header475.us ], [ %n.vec1587, %middle.block1577 ]
  br label %polly.loop_header482.us

polly.loop_header482.us:                          ; preds = %polly.loop_header482.us.preheader, %polly.loop_header482.us
  %polly.indvar486.us = phi i64 [ %polly.indvar_next487.us, %polly.loop_header482.us ], [ %polly.indvar486.us.ph, %polly.loop_header482.us.preheader ]
  %201 = add nuw nsw i64 %polly.indvar486.us, %167
  %polly.access.add.Packed_MemRef_call1303490.us = add nuw nsw i64 %polly.indvar486.us, %polly.access.mul.Packed_MemRef_call1303489.us
  %polly.access.Packed_MemRef_call1303491.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303490.us
  %_p_scalar_492.us = load double, double* %polly.access.Packed_MemRef_call1303491.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_496.us, %_p_scalar_492.us
  %polly.access.add.Packed_MemRef_call2305498.us = add nuw nsw i64 %201, %polly.access.mul.Packed_MemRef_call2305493.us
  %polly.access.Packed_MemRef_call2305499.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305498.us
  %_p_scalar_500.us = load double, double* %polly.access.Packed_MemRef_call2305499.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_504.us, %_p_scalar_500.us
  %202 = shl i64 %201, 3
  %203 = add i64 %202, %181
  %scevgep505.us = getelementptr i8, i8* %call, i64 %203
  %scevgep505506.us = bitcast i8* %scevgep505.us to double*
  %_p_scalar_507.us = load double, double* %scevgep505506.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_507.us
  store double %p_add42.i79.us, double* %scevgep505506.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next487.us = add nuw nsw i64 %polly.indvar486.us, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar486.us, %smin1086
  br i1 %exitcond1087.not, label %polly.loop_exit484.loopexit.us, label %polly.loop_header482.us, !llvm.loop !91

polly.loop_exit484.loopexit.us:                   ; preds = %polly.loop_header482.us, %middle.block1577
  %polly.indvar_next479.us = add nuw nsw i64 %polly.indvar478.us, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next479.us, %160
  br i1 %exitcond1089.not, label %polly.loop_exit477, label %polly.loop_header475.us

polly.start510:                                   ; preds = %init_array.exit
  %malloccall512 = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #6
  %malloccall514 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header598

polly.exiting511:                                 ; preds = %polly.loop_exit638
  tail call void @free(i8* %malloccall512)
  tail call void @free(i8* %malloccall514)
  br label %kernel_syr2k.exit

polly.loop_header598:                             ; preds = %polly.loop_exit606, %polly.start510
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit606 ], [ 0, %polly.start510 ]
  %polly.indvar601 = phi i64 [ %polly.indvar_next602, %polly.loop_exit606 ], [ 1, %polly.start510 ]
  %204 = add i64 %indvar, 1
  %205 = mul nuw nsw i64 %polly.indvar601, 640
  %scevgep610 = getelementptr i8, i8* %call, i64 %205
  %min.iters.check1521 = icmp ult i64 %204, 4
  br i1 %min.iters.check1521, label %polly.loop_header604.preheader, label %vector.ph1522

vector.ph1522:                                    ; preds = %polly.loop_header598
  %n.vec1524 = and i64 %204, -4
  br label %vector.body1520

vector.body1520:                                  ; preds = %vector.body1520, %vector.ph1522
  %index1525 = phi i64 [ 0, %vector.ph1522 ], [ %index.next1526, %vector.body1520 ]
  %206 = shl nuw nsw i64 %index1525, 3
  %207 = getelementptr i8, i8* %scevgep610, i64 %206
  %208 = bitcast i8* %207 to <4 x double>*
  %wide.load1529 = load <4 x double>, <4 x double>* %208, align 8, !alias.scope !92, !noalias !94
  %209 = fmul fast <4 x double> %wide.load1529, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %210 = bitcast i8* %207 to <4 x double>*
  store <4 x double> %209, <4 x double>* %210, align 8, !alias.scope !92, !noalias !94
  %index.next1526 = add i64 %index1525, 4
  %211 = icmp eq i64 %index.next1526, %n.vec1524
  br i1 %211, label %middle.block1518, label %vector.body1520, !llvm.loop !99

middle.block1518:                                 ; preds = %vector.body1520
  %cmp.n1528 = icmp eq i64 %204, %n.vec1524
  br i1 %cmp.n1528, label %polly.loop_exit606, label %polly.loop_header604.preheader

polly.loop_header604.preheader:                   ; preds = %polly.loop_header598, %middle.block1518
  %polly.indvar607.ph = phi i64 [ 0, %polly.loop_header598 ], [ %n.vec1524, %middle.block1518 ]
  br label %polly.loop_header604

polly.loop_exit606:                               ; preds = %polly.loop_header604, %middle.block1518
  %polly.indvar_next602 = add nuw nsw i64 %polly.indvar601, 1
  %exitcond1130.not = icmp eq i64 %polly.indvar_next602, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1130.not, label %polly.loop_header614.preheader, label %polly.loop_header598

polly.loop_header614.preheader:                   ; preds = %polly.loop_exit606
  %Packed_MemRef_call1513 = bitcast i8* %malloccall512 to double*
  %Packed_MemRef_call2515 = bitcast i8* %malloccall514 to double*
  br label %polly.loop_header614

polly.loop_header604:                             ; preds = %polly.loop_header604.preheader, %polly.loop_header604
  %polly.indvar607 = phi i64 [ %polly.indvar_next608, %polly.loop_header604 ], [ %polly.indvar607.ph, %polly.loop_header604.preheader ]
  %212 = shl nuw nsw i64 %polly.indvar607, 3
  %scevgep611 = getelementptr i8, i8* %scevgep610, i64 %212
  %scevgep611612 = bitcast i8* %scevgep611 to double*
  %_p_scalar_613 = load double, double* %scevgep611612, align 8, !alias.scope !92, !noalias !94
  %p_mul.i = fmul fast double %_p_scalar_613, 1.200000e+00
  store double %p_mul.i, double* %scevgep611612, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next608 = add nuw nsw i64 %polly.indvar607, 1
  %exitcond1129.not = icmp eq i64 %polly.indvar_next608, %polly.indvar601
  br i1 %exitcond1129.not, label %polly.loop_exit606, label %polly.loop_header604, !llvm.loop !100

polly.loop_header614:                             ; preds = %polly.loop_header614.preheader, %polly.loop_exit622
  %polly.indvar617 = phi i64 [ %polly.indvar_next618, %polly.loop_exit622 ], [ 0, %polly.loop_header614.preheader ]
  %polly.access.mul.Packed_MemRef_call2515 = mul nuw nsw i64 %polly.indvar617, 80
  br label %polly.loop_header620

polly.loop_exit622:                               ; preds = %polly.loop_header620
  %polly.indvar_next618 = add nuw nsw i64 %polly.indvar617, 1
  %exitcond1128.not = icmp eq i64 %polly.indvar_next618, 60
  br i1 %exitcond1128.not, label %polly.loop_header630, label %polly.loop_header614

polly.loop_header620:                             ; preds = %polly.loop_header620, %polly.loop_header614
  %polly.indvar623 = phi i64 [ 0, %polly.loop_header614 ], [ %polly.indvar_next624, %polly.loop_header620 ]
  %polly.access.mul.call2627 = mul nuw nsw i64 %polly.indvar623, 60
  %polly.access.add.call2628 = add nuw nsw i64 %polly.access.mul.call2627, %polly.indvar617
  %polly.access.call2629 = getelementptr double, double* %polly.access.cast.call2732, i64 %polly.access.add.call2628
  %polly.access.call2629.load = load double, double* %polly.access.call2629, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2515 = add nuw nsw i64 %polly.indvar623, %polly.access.mul.Packed_MemRef_call2515
  %polly.access.Packed_MemRef_call2515 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515
  store double %polly.access.call2629.load, double* %polly.access.Packed_MemRef_call2515, align 8
  %polly.indvar_next624 = add nuw nsw i64 %polly.indvar623, 1
  %exitcond1127.not = icmp eq i64 %polly.indvar_next624, 80
  br i1 %exitcond1127.not, label %polly.loop_exit622, label %polly.loop_header620

polly.loop_header630:                             ; preds = %polly.loop_exit622, %polly.loop_exit638
  %indvars.iv1122 = phi i64 [ %indvars.iv.next1123, %polly.loop_exit638 ], [ 2, %polly.loop_exit622 ]
  %indvars.iv1108 = phi i64 [ %indvars.iv.next1109, %polly.loop_exit638 ], [ 0, %polly.loop_exit622 ]
  %indvars.iv1103 = phi i64 [ %indvars.iv.next1104, %polly.loop_exit638 ], [ 0, %polly.loop_exit622 ]
  %polly.indvar633 = phi i64 [ %217, %polly.loop_exit638 ], [ 0, %polly.loop_exit622 ]
  %213 = mul nsw i64 %polly.indvar633, -20
  %214 = mul nuw nsw i64 %polly.indvar633, 20
  %215 = mul nsw i64 %polly.indvar633, -20
  %216 = mul nuw nsw i64 %polly.indvar633, 20
  br label %polly.loop_header636

polly.loop_exit638:                               ; preds = %polly.loop_exit644
  %217 = add nuw nsw i64 %polly.indvar633, 1
  %indvars.iv.next1104 = add nsw i64 %indvars.iv1103, -20
  %indvars.iv.next1109 = add nuw nsw i64 %indvars.iv1108, 20
  %indvars.iv.next1123 = add nuw nsw i64 %indvars.iv1122, 1
  %exitcond1126.not = icmp eq i64 %217, 4
  br i1 %exitcond1126.not, label %polly.exiting511, label %polly.loop_header630

polly.loop_header636:                             ; preds = %polly.loop_exit644, %polly.loop_header630
  %indvars.iv1099 = phi i64 [ %indvars.iv.next1100, %polly.loop_exit644 ], [ 0, %polly.loop_header630 ]
  %polly.indvar639 = phi i64 [ %polly.indvar_next640, %polly.loop_exit644 ], [ 0, %polly.loop_header630 ]
  %smin1120 = call i64 @llvm.smin.i64(i64 %indvars.iv1099, i64 -52)
  %218 = add nsw i64 %smin1120, 60
  %219 = shl nsw i64 %polly.indvar639, 3
  br label %polly.loop_header642

polly.loop_exit644:                               ; preds = %polly.loop_exit651
  %polly.indvar_next640 = add nuw nsw i64 %polly.indvar639, 1
  %indvars.iv.next1100 = add nsw i64 %indvars.iv1099, -8
  %exitcond1125.not = icmp eq i64 %polly.indvar_next640, 8
  br i1 %exitcond1125.not, label %polly.loop_exit638, label %polly.loop_header636

polly.loop_header642:                             ; preds = %polly.loop_exit651, %polly.loop_header636
  %indvars.iv1110 = phi i64 [ %indvars.iv.next1111, %polly.loop_exit651 ], [ %indvars.iv1108, %polly.loop_header636 ]
  %indvars.iv1105 = phi i64 [ %indvars.iv.next1106, %polly.loop_exit651 ], [ %indvars.iv1103, %polly.loop_header636 ]
  %polly.indvar645 = phi i64 [ %polly.indvar_next646, %polly.loop_exit651 ], [ 0, %polly.loop_header636 ]
  %220 = shl nuw nsw i64 %polly.indvar645, 4
  %221 = add i64 %213, %220
  %smax1533 = call i64 @llvm.smax.i64(i64 %221, i64 0)
  %222 = mul nsw i64 %polly.indvar645, -16
  %223 = add i64 %214, %222
  %224 = add i64 %smax1533, %223
  %225 = shl nsw i64 %polly.indvar645, 4
  %226 = add nsw i64 %225, %215
  %227 = icmp sgt i64 %226, 0
  %228 = select i1 %227, i64 %226, i64 0
  %polly.loop_guard652 = icmp slt i64 %228, 20
  br i1 %polly.loop_guard652, label %polly.loop_header649.preheader, label %polly.loop_exit651

polly.loop_header649.preheader:                   ; preds = %polly.loop_header642
  %smax1107 = call i64 @llvm.smax.i64(i64 %indvars.iv1105, i64 0)
  %229 = add i64 %smax1107, %indvars.iv1110
  %230 = sub nsw i64 %216, %225
  %231 = add nuw nsw i64 %225, 16
  br label %polly.loop_header649

polly.loop_exit651:                               ; preds = %polly.loop_exit687, %polly.loop_header642
  %polly.indvar_next646 = add nuw nsw i64 %polly.indvar645, 1
  %indvars.iv.next1106 = add nsw i64 %indvars.iv1105, 16
  %indvars.iv.next1111 = add nsw i64 %indvars.iv1110, -16
  %exitcond1124 = icmp eq i64 %polly.indvar_next646, %indvars.iv1122
  br i1 %exitcond1124, label %polly.loop_exit644, label %polly.loop_header642

polly.loop_header649:                             ; preds = %polly.loop_header649.preheader, %polly.loop_exit687
  %indvar1534 = phi i64 [ 0, %polly.loop_header649.preheader ], [ %indvar.next1535, %polly.loop_exit687 ]
  %indvars.iv1112 = phi i64 [ %229, %polly.loop_header649.preheader ], [ %indvars.iv.next1113, %polly.loop_exit687 ]
  %polly.indvar653 = phi i64 [ %228, %polly.loop_header649.preheader ], [ %polly.indvar_next654, %polly.loop_exit687 ]
  %232 = add i64 %224, %indvar1534
  %smin = call i64 @llvm.smin.i64(i64 %232, i64 15)
  %233 = add nsw i64 %smin, 1
  %smin1118 = call i64 @llvm.smin.i64(i64 %indvars.iv1112, i64 15)
  %234 = add nsw i64 %polly.indvar653, %230
  %polly.loop_guard6661215 = icmp sgt i64 %234, -1
  %235 = add nuw nsw i64 %polly.indvar653, %216
  %.not925 = icmp ult i64 %235, %231
  %polly.access.mul.call1679 = mul nsw i64 %235, 60
  %236 = add nuw i64 %polly.access.mul.call1679, %219
  br i1 %polly.loop_guard6661215, label %polly.loop_header656.us, label %polly.loop_header649.split

polly.loop_header656.us:                          ; preds = %polly.loop_header649, %polly.merge675.us
  %polly.indvar659.us = phi i64 [ %polly.indvar_next660.us, %polly.merge675.us ], [ 0, %polly.loop_header649 ]
  %237 = add nuw nsw i64 %polly.indvar659.us, %219
  %polly.access.mul.Packed_MemRef_call1513.us = mul nuw nsw i64 %polly.indvar659.us, 80
  br label %polly.loop_header663.us

polly.loop_header663.us:                          ; preds = %polly.loop_header656.us, %polly.loop_header663.us
  %polly.indvar667.us = phi i64 [ %polly.indvar_next668.us, %polly.loop_header663.us ], [ 0, %polly.loop_header656.us ]
  %238 = add nuw nsw i64 %polly.indvar667.us, %225
  %polly.access.mul.call1671.us = mul nuw nsw i64 %238, 60
  %polly.access.add.call1672.us = add nuw nsw i64 %237, %polly.access.mul.call1671.us
  %polly.access.call1673.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1672.us
  %polly.access.call1673.load.us = load double, double* %polly.access.call1673.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1513.us = add nuw nsw i64 %polly.indvar667.us, %polly.access.mul.Packed_MemRef_call1513.us
  %polly.access.Packed_MemRef_call1513.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us
  store double %polly.access.call1673.load.us, double* %polly.access.Packed_MemRef_call1513.us, align 8
  %polly.indvar_next668.us = add nuw nsw i64 %polly.indvar667.us, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar667.us, %smin1118
  br i1 %exitcond1115.not, label %polly.cond674.loopexit.us, label %polly.loop_header663.us

polly.then676.us:                                 ; preds = %polly.cond674.loopexit.us
  %polly.access.add.call1680.us = add nuw nsw i64 %236, %polly.indvar659.us
  %polly.access.call1681.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1680.us
  %polly.access.call1681.load.us = load double, double* %polly.access.call1681.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1513683.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1513.us, %234
  %polly.access.Packed_MemRef_call1513684.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513683.us
  store double %polly.access.call1681.load.us, double* %polly.access.Packed_MemRef_call1513684.us, align 8
  br label %polly.merge675.us

polly.merge675.us:                                ; preds = %polly.then676.us, %polly.cond674.loopexit.us
  %polly.indvar_next660.us = add nuw nsw i64 %polly.indvar659.us, 1
  %exitcond1117.not = icmp eq i64 %polly.indvar_next660.us, %218
  br i1 %exitcond1117.not, label %polly.loop_header685.preheader, label %polly.loop_header656.us

polly.cond674.loopexit.us:                        ; preds = %polly.loop_header663.us
  br i1 %.not925, label %polly.merge675.us, label %polly.then676.us

polly.loop_header649.split:                       ; preds = %polly.loop_header649
  br i1 %.not925, label %polly.loop_exit687, label %polly.loop_header656

polly.loop_exit687:                               ; preds = %polly.loop_exit694.loopexit.us, %polly.loop_header649.split, %polly.loop_header685.preheader
  %polly.indvar_next654 = add nuw nsw i64 %polly.indvar653, 1
  %polly.loop_cond655 = icmp ult i64 %polly.indvar653, 19
  %indvars.iv.next1113 = add i64 %indvars.iv1112, 1
  %indvar.next1535 = add i64 %indvar1534, 1
  br i1 %polly.loop_cond655, label %polly.loop_header649, label %polly.loop_exit651

polly.loop_header656:                             ; preds = %polly.loop_header649.split, %polly.loop_header656
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_header656 ], [ 0, %polly.loop_header649.split ]
  %polly.access.add.call1680 = add nuw nsw i64 %236, %polly.indvar659
  %polly.access.call1681 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1680
  %polly.access.call1681.load = load double, double* %polly.access.call1681, align 8, !alias.scope !95, !noalias !102
  %polly.access.mul.Packed_MemRef_call1513682 = mul nuw nsw i64 %polly.indvar659, 80
  %polly.access.add.Packed_MemRef_call1513683 = add nsw i64 %polly.access.mul.Packed_MemRef_call1513682, %234
  %polly.access.Packed_MemRef_call1513684 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513683
  store double %polly.access.call1681.load, double* %polly.access.Packed_MemRef_call1513684, align 8
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar_next660, %218
  br i1 %exitcond1102.not, label %polly.loop_header685.preheader, label %polly.loop_header656

polly.loop_header685.preheader:                   ; preds = %polly.loop_header656, %polly.merge675.us
  %239 = mul i64 %235, 640
  br i1 %polly.loop_guard6661215, label %polly.loop_header685.us, label %polly.loop_exit687

polly.loop_header685.us:                          ; preds = %polly.loop_header685.preheader, %polly.loop_exit694.loopexit.us
  %polly.indvar688.us = phi i64 [ %polly.indvar_next689.us, %polly.loop_exit694.loopexit.us ], [ 0, %polly.loop_header685.preheader ]
  %polly.access.mul.Packed_MemRef_call1513699.us = mul nuw nsw i64 %polly.indvar688.us, 80
  %240 = add nuw nsw i64 %polly.indvar688.us, %219
  %polly.access.mul.Packed_MemRef_call2515703.us = mul nuw nsw i64 %240, 80
  %polly.access.add.Packed_MemRef_call2515704.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2515703.us, %235
  %polly.access.Packed_MemRef_call2515705.us = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515704.us
  %_p_scalar_706.us = load double, double* %polly.access.Packed_MemRef_call2515705.us, align 8
  %polly.access.add.Packed_MemRef_call1513712.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1513699.us, %234
  %polly.access.Packed_MemRef_call1513713.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513712.us
  %_p_scalar_714.us = load double, double* %polly.access.Packed_MemRef_call1513713.us, align 8
  %min.iters.check1536 = icmp ult i64 %233, 4
  br i1 %min.iters.check1536, label %polly.loop_header692.us.preheader, label %vector.ph1537

vector.ph1537:                                    ; preds = %polly.loop_header685.us
  %n.vec1539 = and i64 %233, -4
  %broadcast.splatinsert1545 = insertelement <4 x double> poison, double %_p_scalar_706.us, i32 0
  %broadcast.splat1546 = shufflevector <4 x double> %broadcast.splatinsert1545, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1548 = insertelement <4 x double> poison, double %_p_scalar_714.us, i32 0
  %broadcast.splat1549 = shufflevector <4 x double> %broadcast.splatinsert1548, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1532

vector.body1532:                                  ; preds = %vector.body1532, %vector.ph1537
  %index1540 = phi i64 [ 0, %vector.ph1537 ], [ %index.next1541, %vector.body1532 ]
  %241 = add nuw nsw i64 %index1540, %225
  %242 = add nuw nsw i64 %index1540, %polly.access.mul.Packed_MemRef_call1513699.us
  %243 = getelementptr double, double* %Packed_MemRef_call1513, i64 %242
  %244 = bitcast double* %243 to <4 x double>*
  %wide.load1544 = load <4 x double>, <4 x double>* %244, align 8
  %245 = fmul fast <4 x double> %broadcast.splat1546, %wide.load1544
  %246 = add nuw nsw i64 %241, %polly.access.mul.Packed_MemRef_call2515703.us
  %247 = getelementptr double, double* %Packed_MemRef_call2515, i64 %246
  %248 = bitcast double* %247 to <4 x double>*
  %wide.load1547 = load <4 x double>, <4 x double>* %248, align 8
  %249 = fmul fast <4 x double> %broadcast.splat1549, %wide.load1547
  %250 = shl i64 %241, 3
  %251 = add i64 %250, %239
  %252 = getelementptr i8, i8* %call, i64 %251
  %253 = bitcast i8* %252 to <4 x double>*
  %wide.load1550 = load <4 x double>, <4 x double>* %253, align 8, !alias.scope !92, !noalias !94
  %254 = fadd fast <4 x double> %249, %245
  %255 = fmul fast <4 x double> %254, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %256 = fadd fast <4 x double> %255, %wide.load1550
  %257 = bitcast i8* %252 to <4 x double>*
  store <4 x double> %256, <4 x double>* %257, align 8, !alias.scope !92, !noalias !94
  %index.next1541 = add i64 %index1540, 4
  %258 = icmp eq i64 %index.next1541, %n.vec1539
  br i1 %258, label %middle.block1530, label %vector.body1532, !llvm.loop !103

middle.block1530:                                 ; preds = %vector.body1532
  %cmp.n1543 = icmp eq i64 %233, %n.vec1539
  br i1 %cmp.n1543, label %polly.loop_exit694.loopexit.us, label %polly.loop_header692.us.preheader

polly.loop_header692.us.preheader:                ; preds = %polly.loop_header685.us, %middle.block1530
  %polly.indvar696.us.ph = phi i64 [ 0, %polly.loop_header685.us ], [ %n.vec1539, %middle.block1530 ]
  br label %polly.loop_header692.us

polly.loop_header692.us:                          ; preds = %polly.loop_header692.us.preheader, %polly.loop_header692.us
  %polly.indvar696.us = phi i64 [ %polly.indvar_next697.us, %polly.loop_header692.us ], [ %polly.indvar696.us.ph, %polly.loop_header692.us.preheader ]
  %259 = add nuw nsw i64 %polly.indvar696.us, %225
  %polly.access.add.Packed_MemRef_call1513700.us = add nuw nsw i64 %polly.indvar696.us, %polly.access.mul.Packed_MemRef_call1513699.us
  %polly.access.Packed_MemRef_call1513701.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513700.us
  %_p_scalar_702.us = load double, double* %polly.access.Packed_MemRef_call1513701.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_706.us, %_p_scalar_702.us
  %polly.access.add.Packed_MemRef_call2515708.us = add nuw nsw i64 %259, %polly.access.mul.Packed_MemRef_call2515703.us
  %polly.access.Packed_MemRef_call2515709.us = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515708.us
  %_p_scalar_710.us = load double, double* %polly.access.Packed_MemRef_call2515709.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_714.us, %_p_scalar_710.us
  %260 = shl i64 %259, 3
  %261 = add i64 %260, %239
  %scevgep715.us = getelementptr i8, i8* %call, i64 %261
  %scevgep715716.us = bitcast i8* %scevgep715.us to double*
  %_p_scalar_717.us = load double, double* %scevgep715716.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_717.us
  store double %p_add42.i.us, double* %scevgep715716.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next697.us = add nuw nsw i64 %polly.indvar696.us, 1
  %exitcond1119.not = icmp eq i64 %polly.indvar696.us, %smin1118
  br i1 %exitcond1119.not, label %polly.loop_exit694.loopexit.us, label %polly.loop_header692.us, !llvm.loop !104

polly.loop_exit694.loopexit.us:                   ; preds = %polly.loop_header692.us, %middle.block1530
  %polly.indvar_next689.us = add nuw nsw i64 %polly.indvar688.us, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar_next689.us, %218
  br i1 %exitcond1121.not, label %polly.loop_exit687, label %polly.loop_header685.us

polly.loop_header856:                             ; preds = %entry, %polly.loop_exit864
  %polly.indvar859 = phi i64 [ %polly.indvar_next860, %polly.loop_exit864 ], [ 0, %entry ]
  %262 = mul nuw nsw i64 %polly.indvar859, 640
  %263 = trunc i64 %polly.indvar859 to i32
  %broadcast.splatinsert1252 = insertelement <4 x i32> poison, i32 %263, i32 0
  %broadcast.splat1253 = shufflevector <4 x i32> %broadcast.splatinsert1252, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1242

vector.body1242:                                  ; preds = %vector.body1242, %polly.loop_header856
  %index1244 = phi i64 [ 0, %polly.loop_header856 ], [ %index.next1245, %vector.body1242 ]
  %vec.ind1250 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header856 ], [ %vec.ind.next1251, %vector.body1242 ]
  %264 = mul <4 x i32> %vec.ind1250, %broadcast.splat1253
  %265 = add <4 x i32> %264, <i32 3, i32 3, i32 3, i32 3>
  %266 = urem <4 x i32> %265, <i32 80, i32 80, i32 80, i32 80>
  %267 = sitofp <4 x i32> %266 to <4 x double>
  %268 = fmul fast <4 x double> %267, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %269 = shl i64 %index1244, 3
  %270 = add nuw nsw i64 %269, %262
  %271 = getelementptr i8, i8* %call, i64 %270
  %272 = bitcast i8* %271 to <4 x double>*
  store <4 x double> %268, <4 x double>* %272, align 8, !alias.scope !105, !noalias !107
  %index.next1245 = add i64 %index1244, 4
  %vec.ind.next1251 = add <4 x i32> %vec.ind1250, <i32 4, i32 4, i32 4, i32 4>
  %273 = icmp eq i64 %index.next1245, 32
  br i1 %273, label %polly.loop_exit864, label %vector.body1242, !llvm.loop !110

polly.loop_exit864:                               ; preds = %vector.body1242
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %exitcond1150.not = icmp eq i64 %polly.indvar_next860, 32
  br i1 %exitcond1150.not, label %polly.loop_header856.1, label %polly.loop_header856

polly.loop_header883:                             ; preds = %polly.loop_exit864.2.2, %polly.loop_exit891
  %polly.indvar886 = phi i64 [ %polly.indvar_next887, %polly.loop_exit891 ], [ 0, %polly.loop_exit864.2.2 ]
  %274 = mul nuw nsw i64 %polly.indvar886, 480
  %275 = trunc i64 %polly.indvar886 to i32
  %broadcast.splatinsert1366 = insertelement <4 x i32> poison, i32 %275, i32 0
  %broadcast.splat1367 = shufflevector <4 x i32> %broadcast.splatinsert1366, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1356

vector.body1356:                                  ; preds = %vector.body1356, %polly.loop_header883
  %index1358 = phi i64 [ 0, %polly.loop_header883 ], [ %index.next1359, %vector.body1356 ]
  %vec.ind1364 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header883 ], [ %vec.ind.next1365, %vector.body1356 ]
  %276 = mul <4 x i32> %vec.ind1364, %broadcast.splat1367
  %277 = add <4 x i32> %276, <i32 2, i32 2, i32 2, i32 2>
  %278 = urem <4 x i32> %277, <i32 60, i32 60, i32 60, i32 60>
  %279 = sitofp <4 x i32> %278 to <4 x double>
  %280 = fmul fast <4 x double> %279, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %281 = shl i64 %index1358, 3
  %282 = add i64 %281, %274
  %283 = getelementptr i8, i8* %call2, i64 %282
  %284 = bitcast i8* %283 to <4 x double>*
  store <4 x double> %280, <4 x double>* %284, align 8, !alias.scope !109, !noalias !111
  %index.next1359 = add i64 %index1358, 4
  %vec.ind.next1365 = add <4 x i32> %vec.ind1364, <i32 4, i32 4, i32 4, i32 4>
  %285 = icmp eq i64 %index.next1359, 32
  br i1 %285, label %polly.loop_exit891, label %vector.body1356, !llvm.loop !112

polly.loop_exit891:                               ; preds = %vector.body1356
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %exitcond1141.not = icmp eq i64 %polly.indvar_next887, 32
  br i1 %exitcond1141.not, label %polly.loop_header883.1, label %polly.loop_header883

polly.loop_header909:                             ; preds = %polly.loop_exit891.1.2, %polly.loop_exit917
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_exit917 ], [ 0, %polly.loop_exit891.1.2 ]
  %286 = mul nuw nsw i64 %polly.indvar912, 480
  %287 = trunc i64 %polly.indvar912 to i32
  %broadcast.splatinsert1444 = insertelement <4 x i32> poison, i32 %287, i32 0
  %broadcast.splat1445 = shufflevector <4 x i32> %broadcast.splatinsert1444, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1434

vector.body1434:                                  ; preds = %vector.body1434, %polly.loop_header909
  %index1436 = phi i64 [ 0, %polly.loop_header909 ], [ %index.next1437, %vector.body1434 ]
  %vec.ind1442 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header909 ], [ %vec.ind.next1443, %vector.body1434 ]
  %288 = mul <4 x i32> %vec.ind1442, %broadcast.splat1445
  %289 = add <4 x i32> %288, <i32 1, i32 1, i32 1, i32 1>
  %290 = urem <4 x i32> %289, <i32 80, i32 80, i32 80, i32 80>
  %291 = sitofp <4 x i32> %290 to <4 x double>
  %292 = fmul fast <4 x double> %291, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %293 = shl i64 %index1436, 3
  %294 = add i64 %293, %286
  %295 = getelementptr i8, i8* %call1, i64 %294
  %296 = bitcast i8* %295 to <4 x double>*
  store <4 x double> %292, <4 x double>* %296, align 8, !alias.scope !108, !noalias !113
  %index.next1437 = add i64 %index1436, 4
  %vec.ind.next1443 = add <4 x i32> %vec.ind1442, <i32 4, i32 4, i32 4, i32 4>
  %297 = icmp eq i64 %index.next1437, 32
  br i1 %297, label %polly.loop_exit917, label %vector.body1434, !llvm.loop !114

polly.loop_exit917:                               ; preds = %vector.body1434
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1135.not = icmp eq i64 %polly.indvar_next913, 32
  br i1 %exitcond1135.not, label %polly.loop_header909.1, label %polly.loop_header909

polly.loop_header909.1:                           ; preds = %polly.loop_exit917, %polly.loop_exit917.1
  %polly.indvar912.1 = phi i64 [ %polly.indvar_next913.1, %polly.loop_exit917.1 ], [ 0, %polly.loop_exit917 ]
  %298 = mul nuw nsw i64 %polly.indvar912.1, 480
  %299 = trunc i64 %polly.indvar912.1 to i32
  %broadcast.splatinsert1456 = insertelement <4 x i32> poison, i32 %299, i32 0
  %broadcast.splat1457 = shufflevector <4 x i32> %broadcast.splatinsert1456, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1448

vector.body1448:                                  ; preds = %vector.body1448, %polly.loop_header909.1
  %index1450 = phi i64 [ 0, %polly.loop_header909.1 ], [ %index.next1451, %vector.body1448 ]
  %vec.ind1454 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header909.1 ], [ %vec.ind.next1455, %vector.body1448 ]
  %300 = add nuw nsw <4 x i64> %vec.ind1454, <i64 32, i64 32, i64 32, i64 32>
  %301 = trunc <4 x i64> %300 to <4 x i32>
  %302 = mul <4 x i32> %broadcast.splat1457, %301
  %303 = add <4 x i32> %302, <i32 1, i32 1, i32 1, i32 1>
  %304 = urem <4 x i32> %303, <i32 80, i32 80, i32 80, i32 80>
  %305 = sitofp <4 x i32> %304 to <4 x double>
  %306 = fmul fast <4 x double> %305, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %307 = extractelement <4 x i64> %300, i32 0
  %308 = shl i64 %307, 3
  %309 = add i64 %308, %298
  %310 = getelementptr i8, i8* %call1, i64 %309
  %311 = bitcast i8* %310 to <4 x double>*
  store <4 x double> %306, <4 x double>* %311, align 8, !alias.scope !108, !noalias !113
  %index.next1451 = add i64 %index1450, 4
  %vec.ind.next1455 = add <4 x i64> %vec.ind1454, <i64 4, i64 4, i64 4, i64 4>
  %312 = icmp eq i64 %index.next1451, 28
  br i1 %312, label %polly.loop_exit917.1, label %vector.body1448, !llvm.loop !115

polly.loop_exit917.1:                             ; preds = %vector.body1448
  %polly.indvar_next913.1 = add nuw nsw i64 %polly.indvar912.1, 1
  %exitcond1135.1.not = icmp eq i64 %polly.indvar_next913.1, 32
  br i1 %exitcond1135.1.not, label %polly.loop_header909.11158, label %polly.loop_header909.1

polly.loop_header909.11158:                       ; preds = %polly.loop_exit917.1, %polly.loop_exit917.11169
  %polly.indvar912.11157 = phi i64 [ %polly.indvar_next913.11167, %polly.loop_exit917.11169 ], [ 0, %polly.loop_exit917.1 ]
  %313 = add nuw nsw i64 %polly.indvar912.11157, 32
  %314 = mul nuw nsw i64 %313, 480
  %315 = trunc i64 %313 to i32
  %broadcast.splatinsert1470 = insertelement <4 x i32> poison, i32 %315, i32 0
  %broadcast.splat1471 = shufflevector <4 x i32> %broadcast.splatinsert1470, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1460

vector.body1460:                                  ; preds = %vector.body1460, %polly.loop_header909.11158
  %index1462 = phi i64 [ 0, %polly.loop_header909.11158 ], [ %index.next1463, %vector.body1460 ]
  %vec.ind1468 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header909.11158 ], [ %vec.ind.next1469, %vector.body1460 ]
  %316 = mul <4 x i32> %vec.ind1468, %broadcast.splat1471
  %317 = add <4 x i32> %316, <i32 1, i32 1, i32 1, i32 1>
  %318 = urem <4 x i32> %317, <i32 80, i32 80, i32 80, i32 80>
  %319 = sitofp <4 x i32> %318 to <4 x double>
  %320 = fmul fast <4 x double> %319, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %321 = shl i64 %index1462, 3
  %322 = add i64 %321, %314
  %323 = getelementptr i8, i8* %call1, i64 %322
  %324 = bitcast i8* %323 to <4 x double>*
  store <4 x double> %320, <4 x double>* %324, align 8, !alias.scope !108, !noalias !113
  %index.next1463 = add i64 %index1462, 4
  %vec.ind.next1469 = add <4 x i32> %vec.ind1468, <i32 4, i32 4, i32 4, i32 4>
  %325 = icmp eq i64 %index.next1463, 32
  br i1 %325, label %polly.loop_exit917.11169, label %vector.body1460, !llvm.loop !116

polly.loop_exit917.11169:                         ; preds = %vector.body1460
  %polly.indvar_next913.11167 = add nuw nsw i64 %polly.indvar912.11157, 1
  %exitcond1135.11168.not = icmp eq i64 %polly.indvar_next913.11167, 32
  br i1 %exitcond1135.11168.not, label %polly.loop_header909.1.1, label %polly.loop_header909.11158

polly.loop_header909.1.1:                         ; preds = %polly.loop_exit917.11169, %polly.loop_exit917.1.1
  %polly.indvar912.1.1 = phi i64 [ %polly.indvar_next913.1.1, %polly.loop_exit917.1.1 ], [ 0, %polly.loop_exit917.11169 ]
  %326 = add nuw nsw i64 %polly.indvar912.1.1, 32
  %327 = mul nuw nsw i64 %326, 480
  %328 = trunc i64 %326 to i32
  %broadcast.splatinsert1482 = insertelement <4 x i32> poison, i32 %328, i32 0
  %broadcast.splat1483 = shufflevector <4 x i32> %broadcast.splatinsert1482, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1474

vector.body1474:                                  ; preds = %vector.body1474, %polly.loop_header909.1.1
  %index1476 = phi i64 [ 0, %polly.loop_header909.1.1 ], [ %index.next1477, %vector.body1474 ]
  %vec.ind1480 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header909.1.1 ], [ %vec.ind.next1481, %vector.body1474 ]
  %329 = add nuw nsw <4 x i64> %vec.ind1480, <i64 32, i64 32, i64 32, i64 32>
  %330 = trunc <4 x i64> %329 to <4 x i32>
  %331 = mul <4 x i32> %broadcast.splat1483, %330
  %332 = add <4 x i32> %331, <i32 1, i32 1, i32 1, i32 1>
  %333 = urem <4 x i32> %332, <i32 80, i32 80, i32 80, i32 80>
  %334 = sitofp <4 x i32> %333 to <4 x double>
  %335 = fmul fast <4 x double> %334, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %336 = extractelement <4 x i64> %329, i32 0
  %337 = shl i64 %336, 3
  %338 = add i64 %337, %327
  %339 = getelementptr i8, i8* %call1, i64 %338
  %340 = bitcast i8* %339 to <4 x double>*
  store <4 x double> %335, <4 x double>* %340, align 8, !alias.scope !108, !noalias !113
  %index.next1477 = add i64 %index1476, 4
  %vec.ind.next1481 = add <4 x i64> %vec.ind1480, <i64 4, i64 4, i64 4, i64 4>
  %341 = icmp eq i64 %index.next1477, 28
  br i1 %341, label %polly.loop_exit917.1.1, label %vector.body1474, !llvm.loop !117

polly.loop_exit917.1.1:                           ; preds = %vector.body1474
  %polly.indvar_next913.1.1 = add nuw nsw i64 %polly.indvar912.1.1, 1
  %exitcond1135.1.1.not = icmp eq i64 %polly.indvar_next913.1.1, 32
  br i1 %exitcond1135.1.1.not, label %polly.loop_header909.2, label %polly.loop_header909.1.1

polly.loop_header909.2:                           ; preds = %polly.loop_exit917.1.1, %polly.loop_exit917.2
  %polly.indvar912.2 = phi i64 [ %polly.indvar_next913.2, %polly.loop_exit917.2 ], [ 0, %polly.loop_exit917.1.1 ]
  %342 = add nuw nsw i64 %polly.indvar912.2, 64
  %343 = mul nuw nsw i64 %342, 480
  %344 = trunc i64 %342 to i32
  %broadcast.splatinsert1496 = insertelement <4 x i32> poison, i32 %344, i32 0
  %broadcast.splat1497 = shufflevector <4 x i32> %broadcast.splatinsert1496, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1486

vector.body1486:                                  ; preds = %vector.body1486, %polly.loop_header909.2
  %index1488 = phi i64 [ 0, %polly.loop_header909.2 ], [ %index.next1489, %vector.body1486 ]
  %vec.ind1494 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header909.2 ], [ %vec.ind.next1495, %vector.body1486 ]
  %345 = mul <4 x i32> %vec.ind1494, %broadcast.splat1497
  %346 = add <4 x i32> %345, <i32 1, i32 1, i32 1, i32 1>
  %347 = urem <4 x i32> %346, <i32 80, i32 80, i32 80, i32 80>
  %348 = sitofp <4 x i32> %347 to <4 x double>
  %349 = fmul fast <4 x double> %348, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %350 = shl i64 %index1488, 3
  %351 = add i64 %350, %343
  %352 = getelementptr i8, i8* %call1, i64 %351
  %353 = bitcast i8* %352 to <4 x double>*
  store <4 x double> %349, <4 x double>* %353, align 8, !alias.scope !108, !noalias !113
  %index.next1489 = add i64 %index1488, 4
  %vec.ind.next1495 = add <4 x i32> %vec.ind1494, <i32 4, i32 4, i32 4, i32 4>
  %354 = icmp eq i64 %index.next1489, 32
  br i1 %354, label %polly.loop_exit917.2, label %vector.body1486, !llvm.loop !118

polly.loop_exit917.2:                             ; preds = %vector.body1486
  %polly.indvar_next913.2 = add nuw nsw i64 %polly.indvar912.2, 1
  %exitcond1135.2.not = icmp eq i64 %polly.indvar_next913.2, 16
  br i1 %exitcond1135.2.not, label %polly.loop_header909.1.2, label %polly.loop_header909.2

polly.loop_header909.1.2:                         ; preds = %polly.loop_exit917.2, %polly.loop_exit917.1.2
  %polly.indvar912.1.2 = phi i64 [ %polly.indvar_next913.1.2, %polly.loop_exit917.1.2 ], [ 0, %polly.loop_exit917.2 ]
  %355 = add nuw nsw i64 %polly.indvar912.1.2, 64
  %356 = mul nuw nsw i64 %355, 480
  %357 = trunc i64 %355 to i32
  %broadcast.splatinsert1508 = insertelement <4 x i32> poison, i32 %357, i32 0
  %broadcast.splat1509 = shufflevector <4 x i32> %broadcast.splatinsert1508, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1500

vector.body1500:                                  ; preds = %vector.body1500, %polly.loop_header909.1.2
  %index1502 = phi i64 [ 0, %polly.loop_header909.1.2 ], [ %index.next1503, %vector.body1500 ]
  %vec.ind1506 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header909.1.2 ], [ %vec.ind.next1507, %vector.body1500 ]
  %358 = add nuw nsw <4 x i64> %vec.ind1506, <i64 32, i64 32, i64 32, i64 32>
  %359 = trunc <4 x i64> %358 to <4 x i32>
  %360 = mul <4 x i32> %broadcast.splat1509, %359
  %361 = add <4 x i32> %360, <i32 1, i32 1, i32 1, i32 1>
  %362 = urem <4 x i32> %361, <i32 80, i32 80, i32 80, i32 80>
  %363 = sitofp <4 x i32> %362 to <4 x double>
  %364 = fmul fast <4 x double> %363, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %365 = extractelement <4 x i64> %358, i32 0
  %366 = shl i64 %365, 3
  %367 = add i64 %366, %356
  %368 = getelementptr i8, i8* %call1, i64 %367
  %369 = bitcast i8* %368 to <4 x double>*
  store <4 x double> %364, <4 x double>* %369, align 8, !alias.scope !108, !noalias !113
  %index.next1503 = add i64 %index1502, 4
  %vec.ind.next1507 = add <4 x i64> %vec.ind1506, <i64 4, i64 4, i64 4, i64 4>
  %370 = icmp eq i64 %index.next1503, 28
  br i1 %370, label %polly.loop_exit917.1.2, label %vector.body1500, !llvm.loop !119

polly.loop_exit917.1.2:                           ; preds = %vector.body1500
  %polly.indvar_next913.1.2 = add nuw nsw i64 %polly.indvar912.1.2, 1
  %exitcond1135.1.2.not = icmp eq i64 %polly.indvar_next913.1.2, 16
  br i1 %exitcond1135.1.2.not, label %init_array.exit, label %polly.loop_header909.1.2

polly.loop_header883.1:                           ; preds = %polly.loop_exit891, %polly.loop_exit891.1
  %polly.indvar886.1 = phi i64 [ %polly.indvar_next887.1, %polly.loop_exit891.1 ], [ 0, %polly.loop_exit891 ]
  %371 = mul nuw nsw i64 %polly.indvar886.1, 480
  %372 = trunc i64 %polly.indvar886.1 to i32
  %broadcast.splatinsert1378 = insertelement <4 x i32> poison, i32 %372, i32 0
  %broadcast.splat1379 = shufflevector <4 x i32> %broadcast.splatinsert1378, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1370

vector.body1370:                                  ; preds = %vector.body1370, %polly.loop_header883.1
  %index1372 = phi i64 [ 0, %polly.loop_header883.1 ], [ %index.next1373, %vector.body1370 ]
  %vec.ind1376 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header883.1 ], [ %vec.ind.next1377, %vector.body1370 ]
  %373 = add nuw nsw <4 x i64> %vec.ind1376, <i64 32, i64 32, i64 32, i64 32>
  %374 = trunc <4 x i64> %373 to <4 x i32>
  %375 = mul <4 x i32> %broadcast.splat1379, %374
  %376 = add <4 x i32> %375, <i32 2, i32 2, i32 2, i32 2>
  %377 = urem <4 x i32> %376, <i32 60, i32 60, i32 60, i32 60>
  %378 = sitofp <4 x i32> %377 to <4 x double>
  %379 = fmul fast <4 x double> %378, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %380 = extractelement <4 x i64> %373, i32 0
  %381 = shl i64 %380, 3
  %382 = add i64 %381, %371
  %383 = getelementptr i8, i8* %call2, i64 %382
  %384 = bitcast i8* %383 to <4 x double>*
  store <4 x double> %379, <4 x double>* %384, align 8, !alias.scope !109, !noalias !111
  %index.next1373 = add i64 %index1372, 4
  %vec.ind.next1377 = add <4 x i64> %vec.ind1376, <i64 4, i64 4, i64 4, i64 4>
  %385 = icmp eq i64 %index.next1373, 28
  br i1 %385, label %polly.loop_exit891.1, label %vector.body1370, !llvm.loop !120

polly.loop_exit891.1:                             ; preds = %vector.body1370
  %polly.indvar_next887.1 = add nuw nsw i64 %polly.indvar886.1, 1
  %exitcond1141.1.not = icmp eq i64 %polly.indvar_next887.1, 32
  br i1 %exitcond1141.1.not, label %polly.loop_header883.11172, label %polly.loop_header883.1

polly.loop_header883.11172:                       ; preds = %polly.loop_exit891.1, %polly.loop_exit891.11183
  %polly.indvar886.11171 = phi i64 [ %polly.indvar_next887.11181, %polly.loop_exit891.11183 ], [ 0, %polly.loop_exit891.1 ]
  %386 = add nuw nsw i64 %polly.indvar886.11171, 32
  %387 = mul nuw nsw i64 %386, 480
  %388 = trunc i64 %386 to i32
  %broadcast.splatinsert1392 = insertelement <4 x i32> poison, i32 %388, i32 0
  %broadcast.splat1393 = shufflevector <4 x i32> %broadcast.splatinsert1392, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1382

vector.body1382:                                  ; preds = %vector.body1382, %polly.loop_header883.11172
  %index1384 = phi i64 [ 0, %polly.loop_header883.11172 ], [ %index.next1385, %vector.body1382 ]
  %vec.ind1390 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header883.11172 ], [ %vec.ind.next1391, %vector.body1382 ]
  %389 = mul <4 x i32> %vec.ind1390, %broadcast.splat1393
  %390 = add <4 x i32> %389, <i32 2, i32 2, i32 2, i32 2>
  %391 = urem <4 x i32> %390, <i32 60, i32 60, i32 60, i32 60>
  %392 = sitofp <4 x i32> %391 to <4 x double>
  %393 = fmul fast <4 x double> %392, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %394 = shl i64 %index1384, 3
  %395 = add i64 %394, %387
  %396 = getelementptr i8, i8* %call2, i64 %395
  %397 = bitcast i8* %396 to <4 x double>*
  store <4 x double> %393, <4 x double>* %397, align 8, !alias.scope !109, !noalias !111
  %index.next1385 = add i64 %index1384, 4
  %vec.ind.next1391 = add <4 x i32> %vec.ind1390, <i32 4, i32 4, i32 4, i32 4>
  %398 = icmp eq i64 %index.next1385, 32
  br i1 %398, label %polly.loop_exit891.11183, label %vector.body1382, !llvm.loop !121

polly.loop_exit891.11183:                         ; preds = %vector.body1382
  %polly.indvar_next887.11181 = add nuw nsw i64 %polly.indvar886.11171, 1
  %exitcond1141.11182.not = icmp eq i64 %polly.indvar_next887.11181, 32
  br i1 %exitcond1141.11182.not, label %polly.loop_header883.1.1, label %polly.loop_header883.11172

polly.loop_header883.1.1:                         ; preds = %polly.loop_exit891.11183, %polly.loop_exit891.1.1
  %polly.indvar886.1.1 = phi i64 [ %polly.indvar_next887.1.1, %polly.loop_exit891.1.1 ], [ 0, %polly.loop_exit891.11183 ]
  %399 = add nuw nsw i64 %polly.indvar886.1.1, 32
  %400 = mul nuw nsw i64 %399, 480
  %401 = trunc i64 %399 to i32
  %broadcast.splatinsert1404 = insertelement <4 x i32> poison, i32 %401, i32 0
  %broadcast.splat1405 = shufflevector <4 x i32> %broadcast.splatinsert1404, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1396

vector.body1396:                                  ; preds = %vector.body1396, %polly.loop_header883.1.1
  %index1398 = phi i64 [ 0, %polly.loop_header883.1.1 ], [ %index.next1399, %vector.body1396 ]
  %vec.ind1402 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header883.1.1 ], [ %vec.ind.next1403, %vector.body1396 ]
  %402 = add nuw nsw <4 x i64> %vec.ind1402, <i64 32, i64 32, i64 32, i64 32>
  %403 = trunc <4 x i64> %402 to <4 x i32>
  %404 = mul <4 x i32> %broadcast.splat1405, %403
  %405 = add <4 x i32> %404, <i32 2, i32 2, i32 2, i32 2>
  %406 = urem <4 x i32> %405, <i32 60, i32 60, i32 60, i32 60>
  %407 = sitofp <4 x i32> %406 to <4 x double>
  %408 = fmul fast <4 x double> %407, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %409 = extractelement <4 x i64> %402, i32 0
  %410 = shl i64 %409, 3
  %411 = add i64 %410, %400
  %412 = getelementptr i8, i8* %call2, i64 %411
  %413 = bitcast i8* %412 to <4 x double>*
  store <4 x double> %408, <4 x double>* %413, align 8, !alias.scope !109, !noalias !111
  %index.next1399 = add i64 %index1398, 4
  %vec.ind.next1403 = add <4 x i64> %vec.ind1402, <i64 4, i64 4, i64 4, i64 4>
  %414 = icmp eq i64 %index.next1399, 28
  br i1 %414, label %polly.loop_exit891.1.1, label %vector.body1396, !llvm.loop !122

polly.loop_exit891.1.1:                           ; preds = %vector.body1396
  %polly.indvar_next887.1.1 = add nuw nsw i64 %polly.indvar886.1.1, 1
  %exitcond1141.1.1.not = icmp eq i64 %polly.indvar_next887.1.1, 32
  br i1 %exitcond1141.1.1.not, label %polly.loop_header883.2, label %polly.loop_header883.1.1

polly.loop_header883.2:                           ; preds = %polly.loop_exit891.1.1, %polly.loop_exit891.2
  %polly.indvar886.2 = phi i64 [ %polly.indvar_next887.2, %polly.loop_exit891.2 ], [ 0, %polly.loop_exit891.1.1 ]
  %415 = add nuw nsw i64 %polly.indvar886.2, 64
  %416 = mul nuw nsw i64 %415, 480
  %417 = trunc i64 %415 to i32
  %broadcast.splatinsert1418 = insertelement <4 x i32> poison, i32 %417, i32 0
  %broadcast.splat1419 = shufflevector <4 x i32> %broadcast.splatinsert1418, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1408

vector.body1408:                                  ; preds = %vector.body1408, %polly.loop_header883.2
  %index1410 = phi i64 [ 0, %polly.loop_header883.2 ], [ %index.next1411, %vector.body1408 ]
  %vec.ind1416 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header883.2 ], [ %vec.ind.next1417, %vector.body1408 ]
  %418 = mul <4 x i32> %vec.ind1416, %broadcast.splat1419
  %419 = add <4 x i32> %418, <i32 2, i32 2, i32 2, i32 2>
  %420 = urem <4 x i32> %419, <i32 60, i32 60, i32 60, i32 60>
  %421 = sitofp <4 x i32> %420 to <4 x double>
  %422 = fmul fast <4 x double> %421, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %423 = shl i64 %index1410, 3
  %424 = add i64 %423, %416
  %425 = getelementptr i8, i8* %call2, i64 %424
  %426 = bitcast i8* %425 to <4 x double>*
  store <4 x double> %422, <4 x double>* %426, align 8, !alias.scope !109, !noalias !111
  %index.next1411 = add i64 %index1410, 4
  %vec.ind.next1417 = add <4 x i32> %vec.ind1416, <i32 4, i32 4, i32 4, i32 4>
  %427 = icmp eq i64 %index.next1411, 32
  br i1 %427, label %polly.loop_exit891.2, label %vector.body1408, !llvm.loop !123

polly.loop_exit891.2:                             ; preds = %vector.body1408
  %polly.indvar_next887.2 = add nuw nsw i64 %polly.indvar886.2, 1
  %exitcond1141.2.not = icmp eq i64 %polly.indvar_next887.2, 16
  br i1 %exitcond1141.2.not, label %polly.loop_header883.1.2, label %polly.loop_header883.2

polly.loop_header883.1.2:                         ; preds = %polly.loop_exit891.2, %polly.loop_exit891.1.2
  %polly.indvar886.1.2 = phi i64 [ %polly.indvar_next887.1.2, %polly.loop_exit891.1.2 ], [ 0, %polly.loop_exit891.2 ]
  %428 = add nuw nsw i64 %polly.indvar886.1.2, 64
  %429 = mul nuw nsw i64 %428, 480
  %430 = trunc i64 %428 to i32
  %broadcast.splatinsert1430 = insertelement <4 x i32> poison, i32 %430, i32 0
  %broadcast.splat1431 = shufflevector <4 x i32> %broadcast.splatinsert1430, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1422

vector.body1422:                                  ; preds = %vector.body1422, %polly.loop_header883.1.2
  %index1424 = phi i64 [ 0, %polly.loop_header883.1.2 ], [ %index.next1425, %vector.body1422 ]
  %vec.ind1428 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header883.1.2 ], [ %vec.ind.next1429, %vector.body1422 ]
  %431 = add nuw nsw <4 x i64> %vec.ind1428, <i64 32, i64 32, i64 32, i64 32>
  %432 = trunc <4 x i64> %431 to <4 x i32>
  %433 = mul <4 x i32> %broadcast.splat1431, %432
  %434 = add <4 x i32> %433, <i32 2, i32 2, i32 2, i32 2>
  %435 = urem <4 x i32> %434, <i32 60, i32 60, i32 60, i32 60>
  %436 = sitofp <4 x i32> %435 to <4 x double>
  %437 = fmul fast <4 x double> %436, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %438 = extractelement <4 x i64> %431, i32 0
  %439 = shl i64 %438, 3
  %440 = add i64 %439, %429
  %441 = getelementptr i8, i8* %call2, i64 %440
  %442 = bitcast i8* %441 to <4 x double>*
  store <4 x double> %437, <4 x double>* %442, align 8, !alias.scope !109, !noalias !111
  %index.next1425 = add i64 %index1424, 4
  %vec.ind.next1429 = add <4 x i64> %vec.ind1428, <i64 4, i64 4, i64 4, i64 4>
  %443 = icmp eq i64 %index.next1425, 28
  br i1 %443, label %polly.loop_exit891.1.2, label %vector.body1422, !llvm.loop !124

polly.loop_exit891.1.2:                           ; preds = %vector.body1422
  %polly.indvar_next887.1.2 = add nuw nsw i64 %polly.indvar886.1.2, 1
  %exitcond1141.1.2.not = icmp eq i64 %polly.indvar_next887.1.2, 16
  br i1 %exitcond1141.1.2.not, label %polly.loop_header909, label %polly.loop_header883.1.2

polly.loop_header856.1:                           ; preds = %polly.loop_exit864, %polly.loop_exit864.1
  %polly.indvar859.1 = phi i64 [ %polly.indvar_next860.1, %polly.loop_exit864.1 ], [ 0, %polly.loop_exit864 ]
  %444 = mul nuw nsw i64 %polly.indvar859.1, 640
  %445 = trunc i64 %polly.indvar859.1 to i32
  %broadcast.splatinsert1264 = insertelement <4 x i32> poison, i32 %445, i32 0
  %broadcast.splat1265 = shufflevector <4 x i32> %broadcast.splatinsert1264, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1256

vector.body1256:                                  ; preds = %vector.body1256, %polly.loop_header856.1
  %index1258 = phi i64 [ 0, %polly.loop_header856.1 ], [ %index.next1259, %vector.body1256 ]
  %vec.ind1262 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header856.1 ], [ %vec.ind.next1263, %vector.body1256 ]
  %446 = add nuw nsw <4 x i64> %vec.ind1262, <i64 32, i64 32, i64 32, i64 32>
  %447 = trunc <4 x i64> %446 to <4 x i32>
  %448 = mul <4 x i32> %broadcast.splat1265, %447
  %449 = add <4 x i32> %448, <i32 3, i32 3, i32 3, i32 3>
  %450 = urem <4 x i32> %449, <i32 80, i32 80, i32 80, i32 80>
  %451 = sitofp <4 x i32> %450 to <4 x double>
  %452 = fmul fast <4 x double> %451, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %453 = extractelement <4 x i64> %446, i32 0
  %454 = shl i64 %453, 3
  %455 = add nuw nsw i64 %454, %444
  %456 = getelementptr i8, i8* %call, i64 %455
  %457 = bitcast i8* %456 to <4 x double>*
  store <4 x double> %452, <4 x double>* %457, align 8, !alias.scope !105, !noalias !107
  %index.next1259 = add i64 %index1258, 4
  %vec.ind.next1263 = add <4 x i64> %vec.ind1262, <i64 4, i64 4, i64 4, i64 4>
  %458 = icmp eq i64 %index.next1259, 32
  br i1 %458, label %polly.loop_exit864.1, label %vector.body1256, !llvm.loop !125

polly.loop_exit864.1:                             ; preds = %vector.body1256
  %polly.indvar_next860.1 = add nuw nsw i64 %polly.indvar859.1, 1
  %exitcond1150.1.not = icmp eq i64 %polly.indvar_next860.1, 32
  br i1 %exitcond1150.1.not, label %polly.loop_header856.2, label %polly.loop_header856.1

polly.loop_header856.2:                           ; preds = %polly.loop_exit864.1, %polly.loop_exit864.2
  %polly.indvar859.2 = phi i64 [ %polly.indvar_next860.2, %polly.loop_exit864.2 ], [ 0, %polly.loop_exit864.1 ]
  %459 = mul nuw nsw i64 %polly.indvar859.2, 640
  %460 = trunc i64 %polly.indvar859.2 to i32
  %broadcast.splatinsert1276 = insertelement <4 x i32> poison, i32 %460, i32 0
  %broadcast.splat1277 = shufflevector <4 x i32> %broadcast.splatinsert1276, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1268

vector.body1268:                                  ; preds = %vector.body1268, %polly.loop_header856.2
  %index1270 = phi i64 [ 0, %polly.loop_header856.2 ], [ %index.next1271, %vector.body1268 ]
  %vec.ind1274 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header856.2 ], [ %vec.ind.next1275, %vector.body1268 ]
  %461 = add nuw nsw <4 x i64> %vec.ind1274, <i64 64, i64 64, i64 64, i64 64>
  %462 = trunc <4 x i64> %461 to <4 x i32>
  %463 = mul <4 x i32> %broadcast.splat1277, %462
  %464 = add <4 x i32> %463, <i32 3, i32 3, i32 3, i32 3>
  %465 = urem <4 x i32> %464, <i32 80, i32 80, i32 80, i32 80>
  %466 = sitofp <4 x i32> %465 to <4 x double>
  %467 = fmul fast <4 x double> %466, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %468 = extractelement <4 x i64> %461, i32 0
  %469 = shl i64 %468, 3
  %470 = add nuw nsw i64 %469, %459
  %471 = getelementptr i8, i8* %call, i64 %470
  %472 = bitcast i8* %471 to <4 x double>*
  store <4 x double> %467, <4 x double>* %472, align 8, !alias.scope !105, !noalias !107
  %index.next1271 = add i64 %index1270, 4
  %vec.ind.next1275 = add <4 x i64> %vec.ind1274, <i64 4, i64 4, i64 4, i64 4>
  %473 = icmp eq i64 %index.next1271, 16
  br i1 %473, label %polly.loop_exit864.2, label %vector.body1268, !llvm.loop !126

polly.loop_exit864.2:                             ; preds = %vector.body1268
  %polly.indvar_next860.2 = add nuw nsw i64 %polly.indvar859.2, 1
  %exitcond1150.2.not = icmp eq i64 %polly.indvar_next860.2, 32
  br i1 %exitcond1150.2.not, label %polly.loop_header856.11186, label %polly.loop_header856.2

polly.loop_header856.11186:                       ; preds = %polly.loop_exit864.2, %polly.loop_exit864.11197
  %polly.indvar859.11185 = phi i64 [ %polly.indvar_next860.11195, %polly.loop_exit864.11197 ], [ 0, %polly.loop_exit864.2 ]
  %474 = add nuw nsw i64 %polly.indvar859.11185, 32
  %475 = mul nuw nsw i64 %474, 640
  %476 = trunc i64 %474 to i32
  %broadcast.splatinsert1290 = insertelement <4 x i32> poison, i32 %476, i32 0
  %broadcast.splat1291 = shufflevector <4 x i32> %broadcast.splatinsert1290, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1280

vector.body1280:                                  ; preds = %vector.body1280, %polly.loop_header856.11186
  %index1282 = phi i64 [ 0, %polly.loop_header856.11186 ], [ %index.next1283, %vector.body1280 ]
  %vec.ind1288 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header856.11186 ], [ %vec.ind.next1289, %vector.body1280 ]
  %477 = mul <4 x i32> %vec.ind1288, %broadcast.splat1291
  %478 = add <4 x i32> %477, <i32 3, i32 3, i32 3, i32 3>
  %479 = urem <4 x i32> %478, <i32 80, i32 80, i32 80, i32 80>
  %480 = sitofp <4 x i32> %479 to <4 x double>
  %481 = fmul fast <4 x double> %480, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %482 = shl i64 %index1282, 3
  %483 = add nuw nsw i64 %482, %475
  %484 = getelementptr i8, i8* %call, i64 %483
  %485 = bitcast i8* %484 to <4 x double>*
  store <4 x double> %481, <4 x double>* %485, align 8, !alias.scope !105, !noalias !107
  %index.next1283 = add i64 %index1282, 4
  %vec.ind.next1289 = add <4 x i32> %vec.ind1288, <i32 4, i32 4, i32 4, i32 4>
  %486 = icmp eq i64 %index.next1283, 32
  br i1 %486, label %polly.loop_exit864.11197, label %vector.body1280, !llvm.loop !127

polly.loop_exit864.11197:                         ; preds = %vector.body1280
  %polly.indvar_next860.11195 = add nuw nsw i64 %polly.indvar859.11185, 1
  %exitcond1150.11196.not = icmp eq i64 %polly.indvar_next860.11195, 32
  br i1 %exitcond1150.11196.not, label %polly.loop_header856.1.1, label %polly.loop_header856.11186

polly.loop_header856.1.1:                         ; preds = %polly.loop_exit864.11197, %polly.loop_exit864.1.1
  %polly.indvar859.1.1 = phi i64 [ %polly.indvar_next860.1.1, %polly.loop_exit864.1.1 ], [ 0, %polly.loop_exit864.11197 ]
  %487 = add nuw nsw i64 %polly.indvar859.1.1, 32
  %488 = mul nuw nsw i64 %487, 640
  %489 = trunc i64 %487 to i32
  %broadcast.splatinsert1302 = insertelement <4 x i32> poison, i32 %489, i32 0
  %broadcast.splat1303 = shufflevector <4 x i32> %broadcast.splatinsert1302, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1294

vector.body1294:                                  ; preds = %vector.body1294, %polly.loop_header856.1.1
  %index1296 = phi i64 [ 0, %polly.loop_header856.1.1 ], [ %index.next1297, %vector.body1294 ]
  %vec.ind1300 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header856.1.1 ], [ %vec.ind.next1301, %vector.body1294 ]
  %490 = add nuw nsw <4 x i64> %vec.ind1300, <i64 32, i64 32, i64 32, i64 32>
  %491 = trunc <4 x i64> %490 to <4 x i32>
  %492 = mul <4 x i32> %broadcast.splat1303, %491
  %493 = add <4 x i32> %492, <i32 3, i32 3, i32 3, i32 3>
  %494 = urem <4 x i32> %493, <i32 80, i32 80, i32 80, i32 80>
  %495 = sitofp <4 x i32> %494 to <4 x double>
  %496 = fmul fast <4 x double> %495, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %497 = extractelement <4 x i64> %490, i32 0
  %498 = shl i64 %497, 3
  %499 = add nuw nsw i64 %498, %488
  %500 = getelementptr i8, i8* %call, i64 %499
  %501 = bitcast i8* %500 to <4 x double>*
  store <4 x double> %496, <4 x double>* %501, align 8, !alias.scope !105, !noalias !107
  %index.next1297 = add i64 %index1296, 4
  %vec.ind.next1301 = add <4 x i64> %vec.ind1300, <i64 4, i64 4, i64 4, i64 4>
  %502 = icmp eq i64 %index.next1297, 32
  br i1 %502, label %polly.loop_exit864.1.1, label %vector.body1294, !llvm.loop !128

polly.loop_exit864.1.1:                           ; preds = %vector.body1294
  %polly.indvar_next860.1.1 = add nuw nsw i64 %polly.indvar859.1.1, 1
  %exitcond1150.1.1.not = icmp eq i64 %polly.indvar_next860.1.1, 32
  br i1 %exitcond1150.1.1.not, label %polly.loop_header856.2.1, label %polly.loop_header856.1.1

polly.loop_header856.2.1:                         ; preds = %polly.loop_exit864.1.1, %polly.loop_exit864.2.1
  %polly.indvar859.2.1 = phi i64 [ %polly.indvar_next860.2.1, %polly.loop_exit864.2.1 ], [ 0, %polly.loop_exit864.1.1 ]
  %503 = add nuw nsw i64 %polly.indvar859.2.1, 32
  %504 = mul nuw nsw i64 %503, 640
  %505 = trunc i64 %503 to i32
  %broadcast.splatinsert1314 = insertelement <4 x i32> poison, i32 %505, i32 0
  %broadcast.splat1315 = shufflevector <4 x i32> %broadcast.splatinsert1314, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1306

vector.body1306:                                  ; preds = %vector.body1306, %polly.loop_header856.2.1
  %index1308 = phi i64 [ 0, %polly.loop_header856.2.1 ], [ %index.next1309, %vector.body1306 ]
  %vec.ind1312 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header856.2.1 ], [ %vec.ind.next1313, %vector.body1306 ]
  %506 = add nuw nsw <4 x i64> %vec.ind1312, <i64 64, i64 64, i64 64, i64 64>
  %507 = trunc <4 x i64> %506 to <4 x i32>
  %508 = mul <4 x i32> %broadcast.splat1315, %507
  %509 = add <4 x i32> %508, <i32 3, i32 3, i32 3, i32 3>
  %510 = urem <4 x i32> %509, <i32 80, i32 80, i32 80, i32 80>
  %511 = sitofp <4 x i32> %510 to <4 x double>
  %512 = fmul fast <4 x double> %511, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %513 = extractelement <4 x i64> %506, i32 0
  %514 = shl i64 %513, 3
  %515 = add nuw nsw i64 %514, %504
  %516 = getelementptr i8, i8* %call, i64 %515
  %517 = bitcast i8* %516 to <4 x double>*
  store <4 x double> %512, <4 x double>* %517, align 8, !alias.scope !105, !noalias !107
  %index.next1309 = add i64 %index1308, 4
  %vec.ind.next1313 = add <4 x i64> %vec.ind1312, <i64 4, i64 4, i64 4, i64 4>
  %518 = icmp eq i64 %index.next1309, 16
  br i1 %518, label %polly.loop_exit864.2.1, label %vector.body1306, !llvm.loop !129

polly.loop_exit864.2.1:                           ; preds = %vector.body1306
  %polly.indvar_next860.2.1 = add nuw nsw i64 %polly.indvar859.2.1, 1
  %exitcond1150.2.1.not = icmp eq i64 %polly.indvar_next860.2.1, 32
  br i1 %exitcond1150.2.1.not, label %polly.loop_header856.21200, label %polly.loop_header856.2.1

polly.loop_header856.21200:                       ; preds = %polly.loop_exit864.2.1, %polly.loop_exit864.21211
  %polly.indvar859.21199 = phi i64 [ %polly.indvar_next860.21209, %polly.loop_exit864.21211 ], [ 0, %polly.loop_exit864.2.1 ]
  %519 = add nuw nsw i64 %polly.indvar859.21199, 64
  %520 = mul nuw nsw i64 %519, 640
  %521 = trunc i64 %519 to i32
  %broadcast.splatinsert1328 = insertelement <4 x i32> poison, i32 %521, i32 0
  %broadcast.splat1329 = shufflevector <4 x i32> %broadcast.splatinsert1328, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1318

vector.body1318:                                  ; preds = %vector.body1318, %polly.loop_header856.21200
  %index1320 = phi i64 [ 0, %polly.loop_header856.21200 ], [ %index.next1321, %vector.body1318 ]
  %vec.ind1326 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header856.21200 ], [ %vec.ind.next1327, %vector.body1318 ]
  %522 = mul <4 x i32> %vec.ind1326, %broadcast.splat1329
  %523 = add <4 x i32> %522, <i32 3, i32 3, i32 3, i32 3>
  %524 = urem <4 x i32> %523, <i32 80, i32 80, i32 80, i32 80>
  %525 = sitofp <4 x i32> %524 to <4 x double>
  %526 = fmul fast <4 x double> %525, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %527 = shl i64 %index1320, 3
  %528 = add nuw nsw i64 %527, %520
  %529 = getelementptr i8, i8* %call, i64 %528
  %530 = bitcast i8* %529 to <4 x double>*
  store <4 x double> %526, <4 x double>* %530, align 8, !alias.scope !105, !noalias !107
  %index.next1321 = add i64 %index1320, 4
  %vec.ind.next1327 = add <4 x i32> %vec.ind1326, <i32 4, i32 4, i32 4, i32 4>
  %531 = icmp eq i64 %index.next1321, 32
  br i1 %531, label %polly.loop_exit864.21211, label %vector.body1318, !llvm.loop !130

polly.loop_exit864.21211:                         ; preds = %vector.body1318
  %polly.indvar_next860.21209 = add nuw nsw i64 %polly.indvar859.21199, 1
  %exitcond1150.21210.not = icmp eq i64 %polly.indvar_next860.21209, 16
  br i1 %exitcond1150.21210.not, label %polly.loop_header856.1.2, label %polly.loop_header856.21200

polly.loop_header856.1.2:                         ; preds = %polly.loop_exit864.21211, %polly.loop_exit864.1.2
  %polly.indvar859.1.2 = phi i64 [ %polly.indvar_next860.1.2, %polly.loop_exit864.1.2 ], [ 0, %polly.loop_exit864.21211 ]
  %532 = add nuw nsw i64 %polly.indvar859.1.2, 64
  %533 = mul nuw nsw i64 %532, 640
  %534 = trunc i64 %532 to i32
  %broadcast.splatinsert1340 = insertelement <4 x i32> poison, i32 %534, i32 0
  %broadcast.splat1341 = shufflevector <4 x i32> %broadcast.splatinsert1340, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1332

vector.body1332:                                  ; preds = %vector.body1332, %polly.loop_header856.1.2
  %index1334 = phi i64 [ 0, %polly.loop_header856.1.2 ], [ %index.next1335, %vector.body1332 ]
  %vec.ind1338 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header856.1.2 ], [ %vec.ind.next1339, %vector.body1332 ]
  %535 = add nuw nsw <4 x i64> %vec.ind1338, <i64 32, i64 32, i64 32, i64 32>
  %536 = trunc <4 x i64> %535 to <4 x i32>
  %537 = mul <4 x i32> %broadcast.splat1341, %536
  %538 = add <4 x i32> %537, <i32 3, i32 3, i32 3, i32 3>
  %539 = urem <4 x i32> %538, <i32 80, i32 80, i32 80, i32 80>
  %540 = sitofp <4 x i32> %539 to <4 x double>
  %541 = fmul fast <4 x double> %540, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %542 = extractelement <4 x i64> %535, i32 0
  %543 = shl i64 %542, 3
  %544 = add nuw nsw i64 %543, %533
  %545 = getelementptr i8, i8* %call, i64 %544
  %546 = bitcast i8* %545 to <4 x double>*
  store <4 x double> %541, <4 x double>* %546, align 8, !alias.scope !105, !noalias !107
  %index.next1335 = add i64 %index1334, 4
  %vec.ind.next1339 = add <4 x i64> %vec.ind1338, <i64 4, i64 4, i64 4, i64 4>
  %547 = icmp eq i64 %index.next1335, 32
  br i1 %547, label %polly.loop_exit864.1.2, label %vector.body1332, !llvm.loop !131

polly.loop_exit864.1.2:                           ; preds = %vector.body1332
  %polly.indvar_next860.1.2 = add nuw nsw i64 %polly.indvar859.1.2, 1
  %exitcond1150.1.2.not = icmp eq i64 %polly.indvar_next860.1.2, 16
  br i1 %exitcond1150.1.2.not, label %polly.loop_header856.2.2, label %polly.loop_header856.1.2

polly.loop_header856.2.2:                         ; preds = %polly.loop_exit864.1.2, %polly.loop_exit864.2.2
  %polly.indvar859.2.2 = phi i64 [ %polly.indvar_next860.2.2, %polly.loop_exit864.2.2 ], [ 0, %polly.loop_exit864.1.2 ]
  %548 = add nuw nsw i64 %polly.indvar859.2.2, 64
  %549 = mul nuw nsw i64 %548, 640
  %550 = trunc i64 %548 to i32
  %broadcast.splatinsert1352 = insertelement <4 x i32> poison, i32 %550, i32 0
  %broadcast.splat1353 = shufflevector <4 x i32> %broadcast.splatinsert1352, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1344

vector.body1344:                                  ; preds = %vector.body1344, %polly.loop_header856.2.2
  %index1346 = phi i64 [ 0, %polly.loop_header856.2.2 ], [ %index.next1347, %vector.body1344 ]
  %vec.ind1350 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header856.2.2 ], [ %vec.ind.next1351, %vector.body1344 ]
  %551 = add nuw nsw <4 x i64> %vec.ind1350, <i64 64, i64 64, i64 64, i64 64>
  %552 = trunc <4 x i64> %551 to <4 x i32>
  %553 = mul <4 x i32> %broadcast.splat1353, %552
  %554 = add <4 x i32> %553, <i32 3, i32 3, i32 3, i32 3>
  %555 = urem <4 x i32> %554, <i32 80, i32 80, i32 80, i32 80>
  %556 = sitofp <4 x i32> %555 to <4 x double>
  %557 = fmul fast <4 x double> %556, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %558 = extractelement <4 x i64> %551, i32 0
  %559 = shl i64 %558, 3
  %560 = add nuw nsw i64 %559, %549
  %561 = getelementptr i8, i8* %call, i64 %560
  %562 = bitcast i8* %561 to <4 x double>*
  store <4 x double> %557, <4 x double>* %562, align 8, !alias.scope !105, !noalias !107
  %index.next1347 = add i64 %index1346, 4
  %vec.ind.next1351 = add <4 x i64> %vec.ind1350, <i64 4, i64 4, i64 4, i64 4>
  %563 = icmp eq i64 %index.next1347, 16
  br i1 %563, label %polly.loop_exit864.2.2, label %vector.body1344, !llvm.loop !132

polly.loop_exit864.2.2:                           ; preds = %vector.body1344
  %polly.indvar_next860.2.2 = add nuw nsw i64 %polly.indvar859.2.2, 1
  %exitcond1150.2.2.not = icmp eq i64 %polly.indvar_next860.2.2, 16
  br i1 %exitcond1150.2.2.not, label %polly.loop_header883, label %polly.loop_header856.2.2
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
!26 = !{!"llvm.loop.tile.size", i32 16}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 8}
!36 = !{!"llvm.loop.tile.followup_floor", !37}
!37 = distinct !{!37, !12, !38}
!38 = !{!"llvm.loop.id", !"j1"}
!39 = !{!"llvm.loop.tile.followup_tile", !40}
!40 = distinct !{!40, !12, !24, !41, !42, !43, !44}
!41 = !{!"llvm.loop.id", !"j2"}
!42 = !{!"llvm.data.pack.enable", i1 true}
!43 = !{!"llvm.data.pack.array", !21}
!44 = !{!"llvm.data.pack.allocate", !"malloc"}
!45 = distinct !{!45, !12, !24, !46, !47, !48, !49, !50, !54}
!46 = !{!"llvm.loop.id", !"i"}
!47 = !{!"llvm.loop.tile.enable", i1 true}
!48 = !{!"llvm.loop.tile.depth", i32 3}
!49 = !{!"llvm.loop.tile.size", i32 20}
!50 = !{!"llvm.loop.tile.followup_floor", !51}
!51 = distinct !{!51, !12, !24, !52, !42, !53, !44}
!52 = !{!"llvm.loop.id", !"i1"}
!53 = !{!"llvm.data.pack.array", !22}
!54 = !{!"llvm.loop.tile.followup_tile", !55}
!55 = distinct !{!55, !12, !56}
!56 = !{!"llvm.loop.id", !"i2"}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = distinct !{!59, !12, !13}
!60 = distinct !{!60, !12, !13}
!61 = !{!62, !62, i64 0}
!62 = !{!"any pointer", !4, i64 0}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !66, !"polly.alias.scope.MemRef_call"}
!66 = distinct !{!66, !"polly.alias.scope.domain"}
!67 = !{!68, !69, !70, !71}
!68 = distinct !{!68, !66, !"polly.alias.scope.MemRef_call1"}
!69 = distinct !{!69, !66, !"polly.alias.scope.MemRef_call2"}
!70 = distinct !{!70, !66, !"polly.alias.scope.Packed_MemRef_call1"}
!71 = distinct !{!71, !66, !"polly.alias.scope.Packed_MemRef_call2"}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !74, !13}
!74 = !{!"llvm.loop.unroll.runtime.disable"}
!75 = !{!65, !68, !70, !71}
!76 = !{!65, !69, !70, !71}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !74, !13}
!79 = distinct !{!79, !80, !"polly.alias.scope.MemRef_call"}
!80 = distinct !{!80, !"polly.alias.scope.domain"}
!81 = !{!82, !83, !84, !85}
!82 = distinct !{!82, !80, !"polly.alias.scope.MemRef_call1"}
!83 = distinct !{!83, !80, !"polly.alias.scope.MemRef_call2"}
!84 = distinct !{!84, !80, !"polly.alias.scope.Packed_MemRef_call1"}
!85 = distinct !{!85, !80, !"polly.alias.scope.Packed_MemRef_call2"}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !74, !13}
!88 = !{!79, !82, !84, !85}
!89 = !{!79, !83, !84, !85}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !74, !13}
!92 = distinct !{!92, !93, !"polly.alias.scope.MemRef_call"}
!93 = distinct !{!93, !"polly.alias.scope.domain"}
!94 = !{!95, !96, !97, !98}
!95 = distinct !{!95, !93, !"polly.alias.scope.MemRef_call1"}
!96 = distinct !{!96, !93, !"polly.alias.scope.MemRef_call2"}
!97 = distinct !{!97, !93, !"polly.alias.scope.Packed_MemRef_call1"}
!98 = distinct !{!98, !93, !"polly.alias.scope.Packed_MemRef_call2"}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !74, !13}
!101 = !{!92, !95, !97, !98}
!102 = !{!92, !96, !97, !98}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !74, !13}
!105 = distinct !{!105, !106, !"polly.alias.scope.MemRef_call"}
!106 = distinct !{!106, !"polly.alias.scope.domain"}
!107 = !{!108, !109}
!108 = distinct !{!108, !106, !"polly.alias.scope.MemRef_call1"}
!109 = distinct !{!109, !106, !"polly.alias.scope.MemRef_call2"}
!110 = distinct !{!110, !13}
!111 = !{!108, !105}
!112 = distinct !{!112, !13}
!113 = !{!109, !105}
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
!128 = distinct !{!128, !13}
!129 = distinct !{!129, !13}
!130 = distinct !{!130, !13}
!131 = distinct !{!131, !13}
!132 = distinct !{!132, !13}
