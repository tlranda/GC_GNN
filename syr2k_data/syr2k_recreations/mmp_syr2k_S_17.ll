; ModuleID = 'syr2k_recreations//mmp_syr2k_S_17.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_17.c"
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
  %call784 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1645 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2646 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1645, %call2
  %polly.access.call2665 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2665, %call1
  %2 = or i1 %0, %1
  %polly.access.call685 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call685, %call2
  %4 = icmp ule i8* %polly.access.call2665, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call685, %call1
  %8 = icmp ule i8* %polly.access.call1645, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header770, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1025 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1024 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1023 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1022 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1022, %scevgep1025
  %bound1 = icmp ult i8* %scevgep1024, %scevgep1023
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
  br i1 %exitcond18.not.i, label %vector.ph1029, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1029:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1036 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1037 = shufflevector <4 x i64> %broadcast.splatinsert1036, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1028

vector.body1028:                                  ; preds = %vector.body1028, %vector.ph1029
  %index1030 = phi i64 [ 0, %vector.ph1029 ], [ %index.next1031, %vector.body1028 ]
  %vec.ind1034 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1029 ], [ %vec.ind.next1035, %vector.body1028 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1034, %broadcast.splat1037
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call784, i64 %indvars.iv7.i, i64 %index1030
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1031 = add i64 %index1030, 4
  %vec.ind.next1035 = add <4 x i64> %vec.ind1034, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1031, 80
  br i1 %40, label %for.inc41.i, label %vector.body1028, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1028
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1029, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit831.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start454, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1382, label %vector.ph1311

vector.ph1311:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1310

vector.body1310:                                  ; preds = %vector.body1310, %vector.ph1311
  %index1312 = phi i64 [ 0, %vector.ph1311 ], [ %index.next1313, %vector.body1310 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call784, i64 %indvars.iv21.i, i64 %index1312
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1313 = add i64 %index1312, 4
  %46 = icmp eq i64 %index.next1313, %n.vec
  br i1 %46, label %middle.block1308, label %vector.body1310, !llvm.loop !18

middle.block1308:                                 ; preds = %vector.body1310
  %cmp.n1315 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1315, label %for.inc6.i, label %for.body3.i46.preheader1382

for.body3.i46.preheader1382:                      ; preds = %for.body3.i46.preheader, %middle.block1308
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1308 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1382, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1382 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call784, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1308, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call784, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting455
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start274, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1331 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1331, label %for.body3.i60.preheader1381, label %vector.ph1332

vector.ph1332:                                    ; preds = %for.body3.i60.preheader
  %n.vec1334 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1330

vector.body1330:                                  ; preds = %vector.body1330, %vector.ph1332
  %index1335 = phi i64 [ 0, %vector.ph1332 ], [ %index.next1336, %vector.body1330 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call784, i64 %indvars.iv21.i52, i64 %index1335
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1339 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1339, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1336 = add i64 %index1335, 4
  %57 = icmp eq i64 %index.next1336, %n.vec1334
  br i1 %57, label %middle.block1328, label %vector.body1330, !llvm.loop !60

middle.block1328:                                 ; preds = %vector.body1330
  %cmp.n1338 = icmp eq i64 %indvars.iv21.i52, %n.vec1334
  br i1 %cmp.n1338, label %for.inc6.i63, label %for.body3.i60.preheader1381

for.body3.i60.preheader1381:                      ; preds = %for.body3.i60.preheader, %middle.block1328
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1334, %middle.block1328 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1381, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1381 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call784, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1328, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call784, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting275
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1357 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1357, label %for.body3.i99.preheader1380, label %vector.ph1358

vector.ph1358:                                    ; preds = %for.body3.i99.preheader
  %n.vec1360 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1356

vector.body1356:                                  ; preds = %vector.body1356, %vector.ph1358
  %index1361 = phi i64 [ 0, %vector.ph1358 ], [ %index.next1362, %vector.body1356 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call784, i64 %indvars.iv21.i91, i64 %index1361
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1365 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1365, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1362 = add i64 %index1361, 4
  %68 = icmp eq i64 %index.next1362, %n.vec1360
  br i1 %68, label %middle.block1354, label %vector.body1356, !llvm.loop !62

middle.block1354:                                 ; preds = %vector.body1356
  %cmp.n1364 = icmp eq i64 %indvars.iv21.i91, %n.vec1360
  br i1 %cmp.n1364, label %for.inc6.i102, label %for.body3.i99.preheader1380

for.body3.i99.preheader1380:                      ; preds = %for.body3.i99.preheader, %middle.block1354
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1360, %middle.block1354 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1380, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1380 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call784, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1354, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call784, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !64
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call784, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !66

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !67

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1369 = phi i64 [ %indvar.next1370, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1369, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1371 = icmp ult i64 %88, 4
  br i1 %min.iters.check1371, label %polly.loop_header191.preheader, label %vector.ph1372

vector.ph1372:                                    ; preds = %polly.loop_header
  %n.vec1374 = and i64 %88, -4
  br label %vector.body1368

vector.body1368:                                  ; preds = %vector.body1368, %vector.ph1372
  %index1375 = phi i64 [ 0, %vector.ph1372 ], [ %index.next1376, %vector.body1368 ]
  %90 = shl nuw nsw i64 %index1375, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1379 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1379, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1376 = add i64 %index1375, 4
  %95 = icmp eq i64 %index.next1376, %n.vec1374
  br i1 %95, label %middle.block1366, label %vector.body1368, !llvm.loop !74

middle.block1366:                                 ; preds = %vector.body1368
  %cmp.n1378 = icmp eq i64 %88, %n.vec1374
  br i1 %cmp.n1378, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1366
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1374, %middle.block1366 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1366
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond881.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1370 = add i64 %indvar1369, 1
  br i1 %exitcond881.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond880.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond880.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv859 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next860, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %smin876 = call i64 @llvm.smin.i64(i64 %indvars.iv859, i64 -52)
  %97 = add nsw i64 %smin876, 60
  %98 = shl nsw i64 %polly.indvar202, 3
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit229
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next860 = add nsw i64 %indvars.iv859, -8
  %exitcond879.not = icmp eq i64 %polly.indvar_next203, 8
  br i1 %exitcond879.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit229, %polly.loop_header199
  %indvars.iv868 = phi i64 [ %indvars.iv.next869, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %indvars.iv864 = phi i64 [ %indvars.iv.next865, %polly.loop_exit229 ], [ 24, %polly.loop_header199 ]
  %indvars.iv862 = phi i64 [ %indvars.iv.next863, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit229 ], [ 80, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %99 = udiv i64 %indvars.iv864, 25
  %100 = mul nuw nsw i64 %99, 50
  %101 = add i64 %indvars.iv862, %100
  %102 = sub nsw i64 %indvars.iv868, %100
  %103 = shl nsw i64 %polly.indvar208, 5
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %104 = mul nsw i64 %polly.indvar208, -32
  %105 = mul nuw nsw i64 %polly.indvar208, 9
  %106 = add nuw nsw i64 %105, 24
  %pexp.p_div_q = udiv i64 %106, 25
  %107 = sub nsw i64 %polly.indvar208, %pexp.p_div_q
  %polly.loop_guard = icmp slt i64 %107, 2
  br i1 %polly.loop_guard, label %polly.loop_header227, label %polly.loop_exit229

polly.loop_exit229:                               ; preds = %polly.loop_exit235, %polly.loop_exit213
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %indvars.iv.next863 = add nsw i64 %indvars.iv862, -18
  %indvars.iv.next865 = add nuw nsw i64 %indvars.iv864, 9
  %indvars.iv.next869 = add nuw nsw i64 %indvars.iv868, 18
  %exitcond878.not = icmp eq i64 %polly.indvar_next209, 3
  br i1 %exitcond878.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %108 = add nuw nsw i64 %polly.indvar214, %98
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar214, 80
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_header217
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond861.not = icmp eq i64 %polly.indvar_next215, %97
  br i1 %exitcond861.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %109 = add nuw nsw i64 %polly.indvar220, %103
  %polly.access.mul.call2224 = mul nuw nsw i64 %109, 60
  %polly.access.add.call2225 = add nuw nsw i64 %108, %polly.access.mul.call2224
  %polly.access.call2226 = getelementptr double, double* %polly.access.cast.call2646, i64 %polly.access.add.call2225
  %polly.access.call2226.load = load double, double* %polly.access.call2226, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar220, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2226.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header227:                             ; preds = %polly.loop_exit213, %polly.loop_exit235
  %indvars.iv870 = phi i64 [ %indvars.iv.next871, %polly.loop_exit235 ], [ %102, %polly.loop_exit213 ]
  %indvars.iv866 = phi i64 [ %indvars.iv.next867, %polly.loop_exit235 ], [ %101, %polly.loop_exit213 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ %107, %polly.loop_exit213 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv866, i64 0)
  %110 = add i64 %smax, %indvars.iv870
  %111 = mul nsw i64 %polly.indvar230, 50
  %112 = sub nsw i64 %103, %111
  %113 = icmp sgt i64 %112, 0
  %114 = select i1 %113, i64 %112, i64 0
  %115 = mul nsw i64 %polly.indvar230, -50
  %116 = icmp slt i64 %115, -30
  %117 = select i1 %116, i64 %115, i64 -30
  %118 = add nsw i64 %117, 79
  %polly.loop_guard243.not = icmp sgt i64 %114, %118
  br i1 %polly.loop_guard243.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit242, %polly.loop_header227
  %polly.indvar_next231 = add nsw i64 %polly.indvar230, 1
  %polly.loop_cond232 = icmp slt i64 %polly.indvar230, 1
  %indvars.iv.next867 = add i64 %indvars.iv866, -50
  %indvars.iv.next871 = add i64 %indvars.iv870, 50
  br i1 %polly.loop_cond232, label %polly.loop_header227, label %polly.loop_exit229

polly.loop_header233:                             ; preds = %polly.loop_header227, %polly.loop_exit242
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_exit242 ], [ 0, %polly.loop_header227 ]
  %119 = add nuw nsw i64 %polly.indvar236, %98
  %120 = shl i64 %119, 3
  %polly.access.mul.Packed_MemRef_call2258 = mul nuw nsw i64 %polly.indvar236, 80
  br label %polly.loop_header240

polly.loop_exit242:                               ; preds = %polly.loop_exit250
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond877.not = icmp eq i64 %polly.indvar_next237, %97
  br i1 %exitcond877.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_header240:                             ; preds = %polly.loop_header233, %polly.loop_exit250
  %indvars.iv872 = phi i64 [ %110, %polly.loop_header233 ], [ %indvars.iv.next873, %polly.loop_exit250 ]
  %polly.indvar244 = phi i64 [ %114, %polly.loop_header233 ], [ %polly.indvar_next245, %polly.loop_exit250 ]
  %smin874 = call i64 @llvm.smin.i64(i64 %indvars.iv872, i64 31)
  %121 = add i64 %polly.indvar244, %111
  %122 = add i64 %121, %104
  %polly.loop_guard2511017 = icmp sgt i64 %122, -1
  br i1 %polly.loop_guard2511017, label %polly.loop_header248.preheader, label %polly.loop_exit250

polly.loop_header248.preheader:                   ; preds = %polly.loop_header240
  %polly.access.add.Packed_MemRef_call2259 = add nsw i64 %polly.access.mul.Packed_MemRef_call2258, %122
  %polly.access.Packed_MemRef_call2260 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259
  %_p_scalar_261 = load double, double* %polly.access.Packed_MemRef_call2260, align 8
  %123 = mul i64 %121, 480
  %124 = add i64 %123, %120
  %scevgep266 = getelementptr i8, i8* %call1, i64 %124
  %scevgep266267 = bitcast i8* %scevgep266 to double*
  %_p_scalar_268 = load double, double* %scevgep266267, align 8, !alias.scope !71, !noalias !78
  %125 = mul i64 %121, 640
  br label %polly.loop_header248

polly.loop_exit250:                               ; preds = %polly.loop_header248, %polly.loop_header240
  %polly.indvar_next245 = add nuw nsw i64 %polly.indvar244, 1
  %polly.loop_cond246.not.not = icmp slt i64 %polly.indvar244, %118
  %indvars.iv.next873 = add i64 %indvars.iv872, 1
  br i1 %polly.loop_cond246.not.not, label %polly.loop_header240, label %polly.loop_exit242

polly.loop_header248:                             ; preds = %polly.loop_header248.preheader, %polly.loop_header248
  %polly.indvar252 = phi i64 [ %polly.indvar_next253, %polly.loop_header248 ], [ 0, %polly.loop_header248.preheader ]
  %126 = add nuw nsw i64 %polly.indvar252, %103
  %127 = mul nuw nsw i64 %126, 480
  %128 = add nuw nsw i64 %127, %120
  %scevgep255 = getelementptr i8, i8* %call1, i64 %128
  %scevgep255256 = bitcast i8* %scevgep255 to double*
  %_p_scalar_257 = load double, double* %scevgep255256, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112 = fmul fast double %_p_scalar_261, %_p_scalar_257
  %polly.access.add.Packed_MemRef_call2263 = add nuw nsw i64 %polly.indvar252, %polly.access.mul.Packed_MemRef_call2258
  %polly.access.Packed_MemRef_call2264 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2263
  %_p_scalar_265 = load double, double* %polly.access.Packed_MemRef_call2264, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_268, %_p_scalar_265
  %129 = shl i64 %126, 3
  %130 = add i64 %129, %125
  %scevgep269 = getelementptr i8, i8* %call, i64 %130
  %scevgep269270 = bitcast i8* %scevgep269 to double*
  %_p_scalar_271 = load double, double* %scevgep269270, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_271
  store double %p_add42.i118, double* %scevgep269270, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next253 = add nuw nsw i64 %polly.indvar252, 1
  %exitcond875.not = icmp eq i64 %polly.indvar252, %smin874
  br i1 %exitcond875.not, label %polly.loop_exit250, label %polly.loop_header248

polly.start274:                                   ; preds = %kernel_syr2k.exit
  %malloccall276 = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #6
  br label %polly.loop_header360

polly.exiting275:                                 ; preds = %polly.loop_exit384
  tail call void @free(i8* %malloccall276)
  br label %kernel_syr2k.exit90

polly.loop_header360:                             ; preds = %polly.loop_exit368, %polly.start274
  %indvar1343 = phi i64 [ %indvar.next1344, %polly.loop_exit368 ], [ 0, %polly.start274 ]
  %polly.indvar363 = phi i64 [ %polly.indvar_next364, %polly.loop_exit368 ], [ 1, %polly.start274 ]
  %131 = add i64 %indvar1343, 1
  %132 = mul nuw nsw i64 %polly.indvar363, 640
  %scevgep372 = getelementptr i8, i8* %call, i64 %132
  %min.iters.check1345 = icmp ult i64 %131, 4
  br i1 %min.iters.check1345, label %polly.loop_header366.preheader, label %vector.ph1346

vector.ph1346:                                    ; preds = %polly.loop_header360
  %n.vec1348 = and i64 %131, -4
  br label %vector.body1342

vector.body1342:                                  ; preds = %vector.body1342, %vector.ph1346
  %index1349 = phi i64 [ 0, %vector.ph1346 ], [ %index.next1350, %vector.body1342 ]
  %133 = shl nuw nsw i64 %index1349, 3
  %134 = getelementptr i8, i8* %scevgep372, i64 %133
  %135 = bitcast i8* %134 to <4 x double>*
  %wide.load1353 = load <4 x double>, <4 x double>* %135, align 8, !alias.scope !79, !noalias !81
  %136 = fmul fast <4 x double> %wide.load1353, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %137 = bitcast i8* %134 to <4 x double>*
  store <4 x double> %136, <4 x double>* %137, align 8, !alias.scope !79, !noalias !81
  %index.next1350 = add i64 %index1349, 4
  %138 = icmp eq i64 %index.next1350, %n.vec1348
  br i1 %138, label %middle.block1340, label %vector.body1342, !llvm.loop !85

middle.block1340:                                 ; preds = %vector.body1342
  %cmp.n1352 = icmp eq i64 %131, %n.vec1348
  br i1 %cmp.n1352, label %polly.loop_exit368, label %polly.loop_header366.preheader

polly.loop_header366.preheader:                   ; preds = %polly.loop_header360, %middle.block1340
  %polly.indvar369.ph = phi i64 [ 0, %polly.loop_header360 ], [ %n.vec1348, %middle.block1340 ]
  br label %polly.loop_header366

polly.loop_exit368:                               ; preds = %polly.loop_header366, %middle.block1340
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %exitcond909.not = icmp eq i64 %polly.indvar_next364, 80
  %indvar.next1344 = add i64 %indvar1343, 1
  br i1 %exitcond909.not, label %polly.loop_header376.preheader, label %polly.loop_header360

polly.loop_header376.preheader:                   ; preds = %polly.loop_exit368
  %Packed_MemRef_call2277 = bitcast i8* %malloccall276 to double*
  br label %polly.loop_header376

polly.loop_header366:                             ; preds = %polly.loop_header366.preheader, %polly.loop_header366
  %polly.indvar369 = phi i64 [ %polly.indvar_next370, %polly.loop_header366 ], [ %polly.indvar369.ph, %polly.loop_header366.preheader ]
  %139 = shl nuw nsw i64 %polly.indvar369, 3
  %scevgep373 = getelementptr i8, i8* %scevgep372, i64 %139
  %scevgep373374 = bitcast i8* %scevgep373 to double*
  %_p_scalar_375 = load double, double* %scevgep373374, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_375, 1.200000e+00
  store double %p_mul.i57, double* %scevgep373374, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next370 = add nuw nsw i64 %polly.indvar369, 1
  %exitcond908.not = icmp eq i64 %polly.indvar_next370, %polly.indvar363
  br i1 %exitcond908.not, label %polly.loop_exit368, label %polly.loop_header366, !llvm.loop !86

polly.loop_header376:                             ; preds = %polly.loop_header376.preheader, %polly.loop_exit384
  %indvars.iv885 = phi i64 [ 0, %polly.loop_header376.preheader ], [ %indvars.iv.next886, %polly.loop_exit384 ]
  %polly.indvar379 = phi i64 [ 0, %polly.loop_header376.preheader ], [ %polly.indvar_next380, %polly.loop_exit384 ]
  %smin904 = call i64 @llvm.smin.i64(i64 %indvars.iv885, i64 -52)
  %140 = add nsw i64 %smin904, 60
  %141 = shl nsw i64 %polly.indvar379, 3
  br label %polly.loop_header382

polly.loop_exit384:                               ; preds = %polly.loop_exit408
  %polly.indvar_next380 = add nuw nsw i64 %polly.indvar379, 1
  %indvars.iv.next886 = add nsw i64 %indvars.iv885, -8
  %exitcond907.not = icmp eq i64 %polly.indvar_next380, 8
  br i1 %exitcond907.not, label %polly.exiting275, label %polly.loop_header376

polly.loop_header382:                             ; preds = %polly.loop_exit408, %polly.loop_header376
  %indvars.iv896 = phi i64 [ %indvars.iv.next897, %polly.loop_exit408 ], [ 0, %polly.loop_header376 ]
  %indvars.iv891 = phi i64 [ %indvars.iv.next892, %polly.loop_exit408 ], [ 24, %polly.loop_header376 ]
  %indvars.iv889 = phi i64 [ %indvars.iv.next890, %polly.loop_exit408 ], [ 0, %polly.loop_header376 ]
  %indvars.iv882 = phi i64 [ %indvars.iv.next883, %polly.loop_exit408 ], [ 80, %polly.loop_header376 ]
  %polly.indvar385 = phi i64 [ %polly.indvar_next386, %polly.loop_exit408 ], [ 0, %polly.loop_header376 ]
  %142 = udiv i64 %indvars.iv891, 25
  %143 = mul nuw nsw i64 %142, 50
  %144 = add i64 %indvars.iv889, %143
  %145 = sub nsw i64 %indvars.iv896, %143
  %146 = shl nsw i64 %polly.indvar385, 5
  br label %polly.loop_header388

polly.loop_exit390:                               ; preds = %polly.loop_exit396
  %147 = mul nsw i64 %polly.indvar385, -32
  %148 = mul nuw nsw i64 %polly.indvar385, 9
  %149 = add nuw nsw i64 %148, 24
  %pexp.p_div_q404 = udiv i64 %149, 25
  %150 = sub nsw i64 %polly.indvar385, %pexp.p_div_q404
  %polly.loop_guard409 = icmp slt i64 %150, 2
  br i1 %polly.loop_guard409, label %polly.loop_header406, label %polly.loop_exit408

polly.loop_exit408:                               ; preds = %polly.loop_exit415, %polly.loop_exit390
  %polly.indvar_next386 = add nuw nsw i64 %polly.indvar385, 1
  %indvars.iv.next883 = add nsw i64 %indvars.iv882, -32
  %indvars.iv.next890 = add nsw i64 %indvars.iv889, -18
  %indvars.iv.next892 = add nuw nsw i64 %indvars.iv891, 9
  %indvars.iv.next897 = add nuw nsw i64 %indvars.iv896, 18
  %exitcond906.not = icmp eq i64 %polly.indvar_next386, 3
  br i1 %exitcond906.not, label %polly.loop_exit384, label %polly.loop_header382

polly.loop_header388:                             ; preds = %polly.loop_exit396, %polly.loop_header382
  %polly.indvar391 = phi i64 [ 0, %polly.loop_header382 ], [ %polly.indvar_next392, %polly.loop_exit396 ]
  %151 = add nuw nsw i64 %polly.indvar391, %141
  %polly.access.mul.Packed_MemRef_call2277 = mul nuw nsw i64 %polly.indvar391, 80
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_header394
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond888.not = icmp eq i64 %polly.indvar_next392, %140
  br i1 %exitcond888.not, label %polly.loop_exit390, label %polly.loop_header388

polly.loop_header394:                             ; preds = %polly.loop_header394, %polly.loop_header388
  %polly.indvar397 = phi i64 [ 0, %polly.loop_header388 ], [ %polly.indvar_next398, %polly.loop_header394 ]
  %152 = add nuw nsw i64 %polly.indvar397, %146
  %polly.access.mul.call2401 = mul nuw nsw i64 %152, 60
  %polly.access.add.call2402 = add nuw nsw i64 %151, %polly.access.mul.call2401
  %polly.access.call2403 = getelementptr double, double* %polly.access.cast.call2646, i64 %polly.access.add.call2402
  %polly.access.call2403.load = load double, double* %polly.access.call2403, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2277 = add nuw nsw i64 %polly.indvar397, %polly.access.mul.Packed_MemRef_call2277
  %polly.access.Packed_MemRef_call2277 = getelementptr double, double* %Packed_MemRef_call2277, i64 %polly.access.add.Packed_MemRef_call2277
  store double %polly.access.call2403.load, double* %polly.access.Packed_MemRef_call2277, align 8
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond884.not = icmp eq i64 %polly.indvar_next398, %indvars.iv882
  br i1 %exitcond884.not, label %polly.loop_exit396, label %polly.loop_header394

polly.loop_header406:                             ; preds = %polly.loop_exit390, %polly.loop_exit415
  %indvars.iv898 = phi i64 [ %indvars.iv.next899, %polly.loop_exit415 ], [ %145, %polly.loop_exit390 ]
  %indvars.iv893 = phi i64 [ %indvars.iv.next894, %polly.loop_exit415 ], [ %144, %polly.loop_exit390 ]
  %polly.indvar410 = phi i64 [ %polly.indvar_next411, %polly.loop_exit415 ], [ %150, %polly.loop_exit390 ]
  %smax895 = call i64 @llvm.smax.i64(i64 %indvars.iv893, i64 0)
  %153 = add i64 %smax895, %indvars.iv898
  %154 = mul nsw i64 %polly.indvar410, 50
  %155 = sub nsw i64 %146, %154
  %156 = icmp sgt i64 %155, 0
  %157 = select i1 %156, i64 %155, i64 0
  %158 = mul nsw i64 %polly.indvar410, -50
  %159 = icmp slt i64 %158, -30
  %160 = select i1 %159, i64 %158, i64 -30
  %161 = add nsw i64 %160, 79
  %polly.loop_guard423.not = icmp sgt i64 %157, %161
  br i1 %polly.loop_guard423.not, label %polly.loop_exit415, label %polly.loop_header413

polly.loop_exit415:                               ; preds = %polly.loop_exit422, %polly.loop_header406
  %polly.indvar_next411 = add nsw i64 %polly.indvar410, 1
  %polly.loop_cond412 = icmp slt i64 %polly.indvar410, 1
  %indvars.iv.next894 = add i64 %indvars.iv893, -50
  %indvars.iv.next899 = add i64 %indvars.iv898, 50
  br i1 %polly.loop_cond412, label %polly.loop_header406, label %polly.loop_exit408

polly.loop_header413:                             ; preds = %polly.loop_header406, %polly.loop_exit422
  %polly.indvar416 = phi i64 [ %polly.indvar_next417, %polly.loop_exit422 ], [ 0, %polly.loop_header406 ]
  %162 = add nuw nsw i64 %polly.indvar416, %141
  %163 = shl i64 %162, 3
  %polly.access.mul.Packed_MemRef_call2277438 = mul nuw nsw i64 %polly.indvar416, 80
  br label %polly.loop_header420

polly.loop_exit422:                               ; preds = %polly.loop_exit430
  %polly.indvar_next417 = add nuw nsw i64 %polly.indvar416, 1
  %exitcond905.not = icmp eq i64 %polly.indvar_next417, %140
  br i1 %exitcond905.not, label %polly.loop_exit415, label %polly.loop_header413

polly.loop_header420:                             ; preds = %polly.loop_header413, %polly.loop_exit430
  %indvars.iv900 = phi i64 [ %153, %polly.loop_header413 ], [ %indvars.iv.next901, %polly.loop_exit430 ]
  %polly.indvar424 = phi i64 [ %157, %polly.loop_header413 ], [ %polly.indvar_next425, %polly.loop_exit430 ]
  %smin902 = call i64 @llvm.smin.i64(i64 %indvars.iv900, i64 31)
  %164 = add i64 %polly.indvar424, %154
  %165 = add i64 %164, %147
  %polly.loop_guard4311018 = icmp sgt i64 %165, -1
  br i1 %polly.loop_guard4311018, label %polly.loop_header428.preheader, label %polly.loop_exit430

polly.loop_header428.preheader:                   ; preds = %polly.loop_header420
  %polly.access.add.Packed_MemRef_call2277439 = add nsw i64 %polly.access.mul.Packed_MemRef_call2277438, %165
  %polly.access.Packed_MemRef_call2277440 = getelementptr double, double* %Packed_MemRef_call2277, i64 %polly.access.add.Packed_MemRef_call2277439
  %_p_scalar_441 = load double, double* %polly.access.Packed_MemRef_call2277440, align 8
  %166 = mul i64 %164, 480
  %167 = add i64 %166, %163
  %scevgep446 = getelementptr i8, i8* %call1, i64 %167
  %scevgep446447 = bitcast i8* %scevgep446 to double*
  %_p_scalar_448 = load double, double* %scevgep446447, align 8, !alias.scope !82, !noalias !88
  %168 = mul i64 %164, 640
  br label %polly.loop_header428

polly.loop_exit430:                               ; preds = %polly.loop_header428, %polly.loop_header420
  %polly.indvar_next425 = add nuw nsw i64 %polly.indvar424, 1
  %polly.loop_cond426.not.not = icmp slt i64 %polly.indvar424, %161
  %indvars.iv.next901 = add i64 %indvars.iv900, 1
  br i1 %polly.loop_cond426.not.not, label %polly.loop_header420, label %polly.loop_exit422

polly.loop_header428:                             ; preds = %polly.loop_header428.preheader, %polly.loop_header428
  %polly.indvar432 = phi i64 [ %polly.indvar_next433, %polly.loop_header428 ], [ 0, %polly.loop_header428.preheader ]
  %169 = add nuw nsw i64 %polly.indvar432, %146
  %170 = mul nuw nsw i64 %169, 480
  %171 = add nuw nsw i64 %170, %163
  %scevgep435 = getelementptr i8, i8* %call1, i64 %171
  %scevgep435436 = bitcast i8* %scevgep435 to double*
  %_p_scalar_437 = load double, double* %scevgep435436, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73 = fmul fast double %_p_scalar_441, %_p_scalar_437
  %polly.access.add.Packed_MemRef_call2277443 = add nuw nsw i64 %polly.indvar432, %polly.access.mul.Packed_MemRef_call2277438
  %polly.access.Packed_MemRef_call2277444 = getelementptr double, double* %Packed_MemRef_call2277, i64 %polly.access.add.Packed_MemRef_call2277443
  %_p_scalar_445 = load double, double* %polly.access.Packed_MemRef_call2277444, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_448, %_p_scalar_445
  %172 = shl i64 %169, 3
  %173 = add i64 %172, %168
  %scevgep449 = getelementptr i8, i8* %call, i64 %173
  %scevgep449450 = bitcast i8* %scevgep449 to double*
  %_p_scalar_451 = load double, double* %scevgep449450, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_451
  store double %p_add42.i79, double* %scevgep449450, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next433 = add nuw nsw i64 %polly.indvar432, 1
  %exitcond903.not = icmp eq i64 %polly.indvar432, %smin902
  br i1 %exitcond903.not, label %polly.loop_exit430, label %polly.loop_header428

polly.start454:                                   ; preds = %init_array.exit
  %malloccall456 = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #6
  br label %polly.loop_header540

polly.exiting455:                                 ; preds = %polly.loop_exit564
  tail call void @free(i8* %malloccall456)
  br label %kernel_syr2k.exit

polly.loop_header540:                             ; preds = %polly.loop_exit548, %polly.start454
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit548 ], [ 0, %polly.start454 ]
  %polly.indvar543 = phi i64 [ %polly.indvar_next544, %polly.loop_exit548 ], [ 1, %polly.start454 ]
  %174 = add i64 %indvar, 1
  %175 = mul nuw nsw i64 %polly.indvar543, 640
  %scevgep552 = getelementptr i8, i8* %call, i64 %175
  %min.iters.check1319 = icmp ult i64 %174, 4
  br i1 %min.iters.check1319, label %polly.loop_header546.preheader, label %vector.ph1320

vector.ph1320:                                    ; preds = %polly.loop_header540
  %n.vec1322 = and i64 %174, -4
  br label %vector.body1318

vector.body1318:                                  ; preds = %vector.body1318, %vector.ph1320
  %index1323 = phi i64 [ 0, %vector.ph1320 ], [ %index.next1324, %vector.body1318 ]
  %176 = shl nuw nsw i64 %index1323, 3
  %177 = getelementptr i8, i8* %scevgep552, i64 %176
  %178 = bitcast i8* %177 to <4 x double>*
  %wide.load1327 = load <4 x double>, <4 x double>* %178, align 8, !alias.scope !89, !noalias !91
  %179 = fmul fast <4 x double> %wide.load1327, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %180 = bitcast i8* %177 to <4 x double>*
  store <4 x double> %179, <4 x double>* %180, align 8, !alias.scope !89, !noalias !91
  %index.next1324 = add i64 %index1323, 4
  %181 = icmp eq i64 %index.next1324, %n.vec1322
  br i1 %181, label %middle.block1316, label %vector.body1318, !llvm.loop !95

middle.block1316:                                 ; preds = %vector.body1318
  %cmp.n1326 = icmp eq i64 %174, %n.vec1322
  br i1 %cmp.n1326, label %polly.loop_exit548, label %polly.loop_header546.preheader

polly.loop_header546.preheader:                   ; preds = %polly.loop_header540, %middle.block1316
  %polly.indvar549.ph = phi i64 [ 0, %polly.loop_header540 ], [ %n.vec1322, %middle.block1316 ]
  br label %polly.loop_header546

polly.loop_exit548:                               ; preds = %polly.loop_header546, %middle.block1316
  %polly.indvar_next544 = add nuw nsw i64 %polly.indvar543, 1
  %exitcond937.not = icmp eq i64 %polly.indvar_next544, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond937.not, label %polly.loop_header556.preheader, label %polly.loop_header540

polly.loop_header556.preheader:                   ; preds = %polly.loop_exit548
  %Packed_MemRef_call2457 = bitcast i8* %malloccall456 to double*
  br label %polly.loop_header556

polly.loop_header546:                             ; preds = %polly.loop_header546.preheader, %polly.loop_header546
  %polly.indvar549 = phi i64 [ %polly.indvar_next550, %polly.loop_header546 ], [ %polly.indvar549.ph, %polly.loop_header546.preheader ]
  %182 = shl nuw nsw i64 %polly.indvar549, 3
  %scevgep553 = getelementptr i8, i8* %scevgep552, i64 %182
  %scevgep553554 = bitcast i8* %scevgep553 to double*
  %_p_scalar_555 = load double, double* %scevgep553554, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_555, 1.200000e+00
  store double %p_mul.i, double* %scevgep553554, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next550 = add nuw nsw i64 %polly.indvar549, 1
  %exitcond936.not = icmp eq i64 %polly.indvar_next550, %polly.indvar543
  br i1 %exitcond936.not, label %polly.loop_exit548, label %polly.loop_header546, !llvm.loop !96

polly.loop_header556:                             ; preds = %polly.loop_header556.preheader, %polly.loop_exit564
  %indvars.iv913 = phi i64 [ 0, %polly.loop_header556.preheader ], [ %indvars.iv.next914, %polly.loop_exit564 ]
  %polly.indvar559 = phi i64 [ 0, %polly.loop_header556.preheader ], [ %polly.indvar_next560, %polly.loop_exit564 ]
  %smin932 = call i64 @llvm.smin.i64(i64 %indvars.iv913, i64 -52)
  %183 = add nsw i64 %smin932, 60
  %184 = shl nsw i64 %polly.indvar559, 3
  br label %polly.loop_header562

polly.loop_exit564:                               ; preds = %polly.loop_exit588
  %polly.indvar_next560 = add nuw nsw i64 %polly.indvar559, 1
  %indvars.iv.next914 = add nsw i64 %indvars.iv913, -8
  %exitcond935.not = icmp eq i64 %polly.indvar_next560, 8
  br i1 %exitcond935.not, label %polly.exiting455, label %polly.loop_header556

polly.loop_header562:                             ; preds = %polly.loop_exit588, %polly.loop_header556
  %indvars.iv924 = phi i64 [ %indvars.iv.next925, %polly.loop_exit588 ], [ 0, %polly.loop_header556 ]
  %indvars.iv919 = phi i64 [ %indvars.iv.next920, %polly.loop_exit588 ], [ 24, %polly.loop_header556 ]
  %indvars.iv917 = phi i64 [ %indvars.iv.next918, %polly.loop_exit588 ], [ 0, %polly.loop_header556 ]
  %indvars.iv910 = phi i64 [ %indvars.iv.next911, %polly.loop_exit588 ], [ 80, %polly.loop_header556 ]
  %polly.indvar565 = phi i64 [ %polly.indvar_next566, %polly.loop_exit588 ], [ 0, %polly.loop_header556 ]
  %185 = udiv i64 %indvars.iv919, 25
  %186 = mul nuw nsw i64 %185, 50
  %187 = add i64 %indvars.iv917, %186
  %188 = sub nsw i64 %indvars.iv924, %186
  %189 = shl nsw i64 %polly.indvar565, 5
  br label %polly.loop_header568

polly.loop_exit570:                               ; preds = %polly.loop_exit576
  %190 = mul nsw i64 %polly.indvar565, -32
  %191 = mul nuw nsw i64 %polly.indvar565, 9
  %192 = add nuw nsw i64 %191, 24
  %pexp.p_div_q584 = udiv i64 %192, 25
  %193 = sub nsw i64 %polly.indvar565, %pexp.p_div_q584
  %polly.loop_guard589 = icmp slt i64 %193, 2
  br i1 %polly.loop_guard589, label %polly.loop_header586, label %polly.loop_exit588

polly.loop_exit588:                               ; preds = %polly.loop_exit595, %polly.loop_exit570
  %polly.indvar_next566 = add nuw nsw i64 %polly.indvar565, 1
  %indvars.iv.next911 = add nsw i64 %indvars.iv910, -32
  %indvars.iv.next918 = add nsw i64 %indvars.iv917, -18
  %indvars.iv.next920 = add nuw nsw i64 %indvars.iv919, 9
  %indvars.iv.next925 = add nuw nsw i64 %indvars.iv924, 18
  %exitcond934.not = icmp eq i64 %polly.indvar_next566, 3
  br i1 %exitcond934.not, label %polly.loop_exit564, label %polly.loop_header562

polly.loop_header568:                             ; preds = %polly.loop_exit576, %polly.loop_header562
  %polly.indvar571 = phi i64 [ 0, %polly.loop_header562 ], [ %polly.indvar_next572, %polly.loop_exit576 ]
  %194 = add nuw nsw i64 %polly.indvar571, %184
  %polly.access.mul.Packed_MemRef_call2457 = mul nuw nsw i64 %polly.indvar571, 80
  br label %polly.loop_header574

polly.loop_exit576:                               ; preds = %polly.loop_header574
  %polly.indvar_next572 = add nuw nsw i64 %polly.indvar571, 1
  %exitcond916.not = icmp eq i64 %polly.indvar_next572, %183
  br i1 %exitcond916.not, label %polly.loop_exit570, label %polly.loop_header568

polly.loop_header574:                             ; preds = %polly.loop_header574, %polly.loop_header568
  %polly.indvar577 = phi i64 [ 0, %polly.loop_header568 ], [ %polly.indvar_next578, %polly.loop_header574 ]
  %195 = add nuw nsw i64 %polly.indvar577, %189
  %polly.access.mul.call2581 = mul nuw nsw i64 %195, 60
  %polly.access.add.call2582 = add nuw nsw i64 %194, %polly.access.mul.call2581
  %polly.access.call2583 = getelementptr double, double* %polly.access.cast.call2646, i64 %polly.access.add.call2582
  %polly.access.call2583.load = load double, double* %polly.access.call2583, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2457 = add nuw nsw i64 %polly.indvar577, %polly.access.mul.Packed_MemRef_call2457
  %polly.access.Packed_MemRef_call2457 = getelementptr double, double* %Packed_MemRef_call2457, i64 %polly.access.add.Packed_MemRef_call2457
  store double %polly.access.call2583.load, double* %polly.access.Packed_MemRef_call2457, align 8
  %polly.indvar_next578 = add nuw nsw i64 %polly.indvar577, 1
  %exitcond912.not = icmp eq i64 %polly.indvar_next578, %indvars.iv910
  br i1 %exitcond912.not, label %polly.loop_exit576, label %polly.loop_header574

polly.loop_header586:                             ; preds = %polly.loop_exit570, %polly.loop_exit595
  %indvars.iv926 = phi i64 [ %indvars.iv.next927, %polly.loop_exit595 ], [ %188, %polly.loop_exit570 ]
  %indvars.iv921 = phi i64 [ %indvars.iv.next922, %polly.loop_exit595 ], [ %187, %polly.loop_exit570 ]
  %polly.indvar590 = phi i64 [ %polly.indvar_next591, %polly.loop_exit595 ], [ %193, %polly.loop_exit570 ]
  %smax923 = call i64 @llvm.smax.i64(i64 %indvars.iv921, i64 0)
  %196 = add i64 %smax923, %indvars.iv926
  %197 = mul nsw i64 %polly.indvar590, 50
  %198 = sub nsw i64 %189, %197
  %199 = icmp sgt i64 %198, 0
  %200 = select i1 %199, i64 %198, i64 0
  %201 = mul nsw i64 %polly.indvar590, -50
  %202 = icmp slt i64 %201, -30
  %203 = select i1 %202, i64 %201, i64 -30
  %204 = add nsw i64 %203, 79
  %polly.loop_guard603.not = icmp sgt i64 %200, %204
  br i1 %polly.loop_guard603.not, label %polly.loop_exit595, label %polly.loop_header593

polly.loop_exit595:                               ; preds = %polly.loop_exit602, %polly.loop_header586
  %polly.indvar_next591 = add nsw i64 %polly.indvar590, 1
  %polly.loop_cond592 = icmp slt i64 %polly.indvar590, 1
  %indvars.iv.next922 = add i64 %indvars.iv921, -50
  %indvars.iv.next927 = add i64 %indvars.iv926, 50
  br i1 %polly.loop_cond592, label %polly.loop_header586, label %polly.loop_exit588

polly.loop_header593:                             ; preds = %polly.loop_header586, %polly.loop_exit602
  %polly.indvar596 = phi i64 [ %polly.indvar_next597, %polly.loop_exit602 ], [ 0, %polly.loop_header586 ]
  %205 = add nuw nsw i64 %polly.indvar596, %184
  %206 = shl i64 %205, 3
  %polly.access.mul.Packed_MemRef_call2457618 = mul nuw nsw i64 %polly.indvar596, 80
  br label %polly.loop_header600

polly.loop_exit602:                               ; preds = %polly.loop_exit610
  %polly.indvar_next597 = add nuw nsw i64 %polly.indvar596, 1
  %exitcond933.not = icmp eq i64 %polly.indvar_next597, %183
  br i1 %exitcond933.not, label %polly.loop_exit595, label %polly.loop_header593

polly.loop_header600:                             ; preds = %polly.loop_header593, %polly.loop_exit610
  %indvars.iv928 = phi i64 [ %196, %polly.loop_header593 ], [ %indvars.iv.next929, %polly.loop_exit610 ]
  %polly.indvar604 = phi i64 [ %200, %polly.loop_header593 ], [ %polly.indvar_next605, %polly.loop_exit610 ]
  %smin930 = call i64 @llvm.smin.i64(i64 %indvars.iv928, i64 31)
  %207 = add i64 %polly.indvar604, %197
  %208 = add i64 %207, %190
  %polly.loop_guard6111019 = icmp sgt i64 %208, -1
  br i1 %polly.loop_guard6111019, label %polly.loop_header608.preheader, label %polly.loop_exit610

polly.loop_header608.preheader:                   ; preds = %polly.loop_header600
  %polly.access.add.Packed_MemRef_call2457619 = add nsw i64 %polly.access.mul.Packed_MemRef_call2457618, %208
  %polly.access.Packed_MemRef_call2457620 = getelementptr double, double* %Packed_MemRef_call2457, i64 %polly.access.add.Packed_MemRef_call2457619
  %_p_scalar_621 = load double, double* %polly.access.Packed_MemRef_call2457620, align 8
  %209 = mul i64 %207, 480
  %210 = add i64 %209, %206
  %scevgep626 = getelementptr i8, i8* %call1, i64 %210
  %scevgep626627 = bitcast i8* %scevgep626 to double*
  %_p_scalar_628 = load double, double* %scevgep626627, align 8, !alias.scope !92, !noalias !98
  %211 = mul i64 %207, 640
  br label %polly.loop_header608

polly.loop_exit610:                               ; preds = %polly.loop_header608, %polly.loop_header600
  %polly.indvar_next605 = add nuw nsw i64 %polly.indvar604, 1
  %polly.loop_cond606.not.not = icmp slt i64 %polly.indvar604, %204
  %indvars.iv.next929 = add i64 %indvars.iv928, 1
  br i1 %polly.loop_cond606.not.not, label %polly.loop_header600, label %polly.loop_exit602

polly.loop_header608:                             ; preds = %polly.loop_header608.preheader, %polly.loop_header608
  %polly.indvar612 = phi i64 [ %polly.indvar_next613, %polly.loop_header608 ], [ 0, %polly.loop_header608.preheader ]
  %212 = add nuw nsw i64 %polly.indvar612, %189
  %213 = mul nuw nsw i64 %212, 480
  %214 = add nuw nsw i64 %213, %206
  %scevgep615 = getelementptr i8, i8* %call1, i64 %214
  %scevgep615616 = bitcast i8* %scevgep615 to double*
  %_p_scalar_617 = load double, double* %scevgep615616, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i = fmul fast double %_p_scalar_621, %_p_scalar_617
  %polly.access.add.Packed_MemRef_call2457623 = add nuw nsw i64 %polly.indvar612, %polly.access.mul.Packed_MemRef_call2457618
  %polly.access.Packed_MemRef_call2457624 = getelementptr double, double* %Packed_MemRef_call2457, i64 %polly.access.add.Packed_MemRef_call2457623
  %_p_scalar_625 = load double, double* %polly.access.Packed_MemRef_call2457624, align 8
  %p_mul37.i = fmul fast double %_p_scalar_628, %_p_scalar_625
  %215 = shl i64 %212, 3
  %216 = add i64 %215, %211
  %scevgep629 = getelementptr i8, i8* %call, i64 %216
  %scevgep629630 = bitcast i8* %scevgep629 to double*
  %_p_scalar_631 = load double, double* %scevgep629630, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_631
  store double %p_add42.i, double* %scevgep629630, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next613 = add nuw nsw i64 %polly.indvar612, 1
  %exitcond931.not = icmp eq i64 %polly.indvar612, %smin930
  br i1 %exitcond931.not, label %polly.loop_exit610, label %polly.loop_header608

polly.loop_header770:                             ; preds = %entry, %polly.loop_exit778
  %polly.indvar773 = phi i64 [ %polly.indvar_next774, %polly.loop_exit778 ], [ 0, %entry ]
  %217 = mul nuw nsw i64 %polly.indvar773, 640
  %218 = trunc i64 %polly.indvar773 to i32
  %broadcast.splatinsert1050 = insertelement <4 x i32> poison, i32 %218, i32 0
  %broadcast.splat1051 = shufflevector <4 x i32> %broadcast.splatinsert1050, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1040

vector.body1040:                                  ; preds = %vector.body1040, %polly.loop_header770
  %index1042 = phi i64 [ 0, %polly.loop_header770 ], [ %index.next1043, %vector.body1040 ]
  %vec.ind1048 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header770 ], [ %vec.ind.next1049, %vector.body1040 ]
  %219 = mul <4 x i32> %vec.ind1048, %broadcast.splat1051
  %220 = add <4 x i32> %219, <i32 3, i32 3, i32 3, i32 3>
  %221 = urem <4 x i32> %220, <i32 80, i32 80, i32 80, i32 80>
  %222 = sitofp <4 x i32> %221 to <4 x double>
  %223 = fmul fast <4 x double> %222, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %224 = shl i64 %index1042, 3
  %225 = add nuw nsw i64 %224, %217
  %226 = getelementptr i8, i8* %call, i64 %225
  %227 = bitcast i8* %226 to <4 x double>*
  store <4 x double> %223, <4 x double>* %227, align 8, !alias.scope !99, !noalias !101
  %index.next1043 = add i64 %index1042, 4
  %vec.ind.next1049 = add <4 x i32> %vec.ind1048, <i32 4, i32 4, i32 4, i32 4>
  %228 = icmp eq i64 %index.next1043, 32
  br i1 %228, label %polly.loop_exit778, label %vector.body1040, !llvm.loop !104

polly.loop_exit778:                               ; preds = %vector.body1040
  %polly.indvar_next774 = add nuw nsw i64 %polly.indvar773, 1
  %exitcond957.not = icmp eq i64 %polly.indvar_next774, 32
  br i1 %exitcond957.not, label %polly.loop_header770.1, label %polly.loop_header770

polly.loop_header797:                             ; preds = %polly.loop_exit778.2.2, %polly.loop_exit805
  %polly.indvar800 = phi i64 [ %polly.indvar_next801, %polly.loop_exit805 ], [ 0, %polly.loop_exit778.2.2 ]
  %229 = mul nuw nsw i64 %polly.indvar800, 480
  %230 = trunc i64 %polly.indvar800 to i32
  %broadcast.splatinsert1164 = insertelement <4 x i32> poison, i32 %230, i32 0
  %broadcast.splat1165 = shufflevector <4 x i32> %broadcast.splatinsert1164, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1154

vector.body1154:                                  ; preds = %vector.body1154, %polly.loop_header797
  %index1156 = phi i64 [ 0, %polly.loop_header797 ], [ %index.next1157, %vector.body1154 ]
  %vec.ind1162 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header797 ], [ %vec.ind.next1163, %vector.body1154 ]
  %231 = mul <4 x i32> %vec.ind1162, %broadcast.splat1165
  %232 = add <4 x i32> %231, <i32 2, i32 2, i32 2, i32 2>
  %233 = urem <4 x i32> %232, <i32 60, i32 60, i32 60, i32 60>
  %234 = sitofp <4 x i32> %233 to <4 x double>
  %235 = fmul fast <4 x double> %234, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %236 = shl i64 %index1156, 3
  %237 = add i64 %236, %229
  %238 = getelementptr i8, i8* %call2, i64 %237
  %239 = bitcast i8* %238 to <4 x double>*
  store <4 x double> %235, <4 x double>* %239, align 8, !alias.scope !103, !noalias !105
  %index.next1157 = add i64 %index1156, 4
  %vec.ind.next1163 = add <4 x i32> %vec.ind1162, <i32 4, i32 4, i32 4, i32 4>
  %240 = icmp eq i64 %index.next1157, 32
  br i1 %240, label %polly.loop_exit805, label %vector.body1154, !llvm.loop !106

polly.loop_exit805:                               ; preds = %vector.body1154
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %exitcond948.not = icmp eq i64 %polly.indvar_next801, 32
  br i1 %exitcond948.not, label %polly.loop_header797.1, label %polly.loop_header797

polly.loop_header823:                             ; preds = %polly.loop_exit805.1.2, %polly.loop_exit831
  %polly.indvar826 = phi i64 [ %polly.indvar_next827, %polly.loop_exit831 ], [ 0, %polly.loop_exit805.1.2 ]
  %241 = mul nuw nsw i64 %polly.indvar826, 480
  %242 = trunc i64 %polly.indvar826 to i32
  %broadcast.splatinsert1242 = insertelement <4 x i32> poison, i32 %242, i32 0
  %broadcast.splat1243 = shufflevector <4 x i32> %broadcast.splatinsert1242, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1232

vector.body1232:                                  ; preds = %vector.body1232, %polly.loop_header823
  %index1234 = phi i64 [ 0, %polly.loop_header823 ], [ %index.next1235, %vector.body1232 ]
  %vec.ind1240 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header823 ], [ %vec.ind.next1241, %vector.body1232 ]
  %243 = mul <4 x i32> %vec.ind1240, %broadcast.splat1243
  %244 = add <4 x i32> %243, <i32 1, i32 1, i32 1, i32 1>
  %245 = urem <4 x i32> %244, <i32 80, i32 80, i32 80, i32 80>
  %246 = sitofp <4 x i32> %245 to <4 x double>
  %247 = fmul fast <4 x double> %246, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %248 = shl i64 %index1234, 3
  %249 = add i64 %248, %241
  %250 = getelementptr i8, i8* %call1, i64 %249
  %251 = bitcast i8* %250 to <4 x double>*
  store <4 x double> %247, <4 x double>* %251, align 8, !alias.scope !102, !noalias !107
  %index.next1235 = add i64 %index1234, 4
  %vec.ind.next1241 = add <4 x i32> %vec.ind1240, <i32 4, i32 4, i32 4, i32 4>
  %252 = icmp eq i64 %index.next1235, 32
  br i1 %252, label %polly.loop_exit831, label %vector.body1232, !llvm.loop !108

polly.loop_exit831:                               ; preds = %vector.body1232
  %polly.indvar_next827 = add nuw nsw i64 %polly.indvar826, 1
  %exitcond942.not = icmp eq i64 %polly.indvar_next827, 32
  br i1 %exitcond942.not, label %polly.loop_header823.1, label %polly.loop_header823

polly.loop_header823.1:                           ; preds = %polly.loop_exit831, %polly.loop_exit831.1
  %polly.indvar826.1 = phi i64 [ %polly.indvar_next827.1, %polly.loop_exit831.1 ], [ 0, %polly.loop_exit831 ]
  %253 = mul nuw nsw i64 %polly.indvar826.1, 480
  %254 = trunc i64 %polly.indvar826.1 to i32
  %broadcast.splatinsert1254 = insertelement <4 x i32> poison, i32 %254, i32 0
  %broadcast.splat1255 = shufflevector <4 x i32> %broadcast.splatinsert1254, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1246

vector.body1246:                                  ; preds = %vector.body1246, %polly.loop_header823.1
  %index1248 = phi i64 [ 0, %polly.loop_header823.1 ], [ %index.next1249, %vector.body1246 ]
  %vec.ind1252 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header823.1 ], [ %vec.ind.next1253, %vector.body1246 ]
  %255 = add nuw nsw <4 x i64> %vec.ind1252, <i64 32, i64 32, i64 32, i64 32>
  %256 = trunc <4 x i64> %255 to <4 x i32>
  %257 = mul <4 x i32> %broadcast.splat1255, %256
  %258 = add <4 x i32> %257, <i32 1, i32 1, i32 1, i32 1>
  %259 = urem <4 x i32> %258, <i32 80, i32 80, i32 80, i32 80>
  %260 = sitofp <4 x i32> %259 to <4 x double>
  %261 = fmul fast <4 x double> %260, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %262 = extractelement <4 x i64> %255, i32 0
  %263 = shl i64 %262, 3
  %264 = add i64 %263, %253
  %265 = getelementptr i8, i8* %call1, i64 %264
  %266 = bitcast i8* %265 to <4 x double>*
  store <4 x double> %261, <4 x double>* %266, align 8, !alias.scope !102, !noalias !107
  %index.next1249 = add i64 %index1248, 4
  %vec.ind.next1253 = add <4 x i64> %vec.ind1252, <i64 4, i64 4, i64 4, i64 4>
  %267 = icmp eq i64 %index.next1249, 28
  br i1 %267, label %polly.loop_exit831.1, label %vector.body1246, !llvm.loop !109

polly.loop_exit831.1:                             ; preds = %vector.body1246
  %polly.indvar_next827.1 = add nuw nsw i64 %polly.indvar826.1, 1
  %exitcond942.1.not = icmp eq i64 %polly.indvar_next827.1, 32
  br i1 %exitcond942.1.not, label %polly.loop_header823.1962, label %polly.loop_header823.1

polly.loop_header823.1962:                        ; preds = %polly.loop_exit831.1, %polly.loop_exit831.1973
  %polly.indvar826.1961 = phi i64 [ %polly.indvar_next827.1971, %polly.loop_exit831.1973 ], [ 0, %polly.loop_exit831.1 ]
  %268 = add nuw nsw i64 %polly.indvar826.1961, 32
  %269 = mul nuw nsw i64 %268, 480
  %270 = trunc i64 %268 to i32
  %broadcast.splatinsert1268 = insertelement <4 x i32> poison, i32 %270, i32 0
  %broadcast.splat1269 = shufflevector <4 x i32> %broadcast.splatinsert1268, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1258

vector.body1258:                                  ; preds = %vector.body1258, %polly.loop_header823.1962
  %index1260 = phi i64 [ 0, %polly.loop_header823.1962 ], [ %index.next1261, %vector.body1258 ]
  %vec.ind1266 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header823.1962 ], [ %vec.ind.next1267, %vector.body1258 ]
  %271 = mul <4 x i32> %vec.ind1266, %broadcast.splat1269
  %272 = add <4 x i32> %271, <i32 1, i32 1, i32 1, i32 1>
  %273 = urem <4 x i32> %272, <i32 80, i32 80, i32 80, i32 80>
  %274 = sitofp <4 x i32> %273 to <4 x double>
  %275 = fmul fast <4 x double> %274, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %276 = shl i64 %index1260, 3
  %277 = add i64 %276, %269
  %278 = getelementptr i8, i8* %call1, i64 %277
  %279 = bitcast i8* %278 to <4 x double>*
  store <4 x double> %275, <4 x double>* %279, align 8, !alias.scope !102, !noalias !107
  %index.next1261 = add i64 %index1260, 4
  %vec.ind.next1267 = add <4 x i32> %vec.ind1266, <i32 4, i32 4, i32 4, i32 4>
  %280 = icmp eq i64 %index.next1261, 32
  br i1 %280, label %polly.loop_exit831.1973, label %vector.body1258, !llvm.loop !110

polly.loop_exit831.1973:                          ; preds = %vector.body1258
  %polly.indvar_next827.1971 = add nuw nsw i64 %polly.indvar826.1961, 1
  %exitcond942.1972.not = icmp eq i64 %polly.indvar_next827.1971, 32
  br i1 %exitcond942.1972.not, label %polly.loop_header823.1.1, label %polly.loop_header823.1962

polly.loop_header823.1.1:                         ; preds = %polly.loop_exit831.1973, %polly.loop_exit831.1.1
  %polly.indvar826.1.1 = phi i64 [ %polly.indvar_next827.1.1, %polly.loop_exit831.1.1 ], [ 0, %polly.loop_exit831.1973 ]
  %281 = add nuw nsw i64 %polly.indvar826.1.1, 32
  %282 = mul nuw nsw i64 %281, 480
  %283 = trunc i64 %281 to i32
  %broadcast.splatinsert1280 = insertelement <4 x i32> poison, i32 %283, i32 0
  %broadcast.splat1281 = shufflevector <4 x i32> %broadcast.splatinsert1280, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1272

vector.body1272:                                  ; preds = %vector.body1272, %polly.loop_header823.1.1
  %index1274 = phi i64 [ 0, %polly.loop_header823.1.1 ], [ %index.next1275, %vector.body1272 ]
  %vec.ind1278 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header823.1.1 ], [ %vec.ind.next1279, %vector.body1272 ]
  %284 = add nuw nsw <4 x i64> %vec.ind1278, <i64 32, i64 32, i64 32, i64 32>
  %285 = trunc <4 x i64> %284 to <4 x i32>
  %286 = mul <4 x i32> %broadcast.splat1281, %285
  %287 = add <4 x i32> %286, <i32 1, i32 1, i32 1, i32 1>
  %288 = urem <4 x i32> %287, <i32 80, i32 80, i32 80, i32 80>
  %289 = sitofp <4 x i32> %288 to <4 x double>
  %290 = fmul fast <4 x double> %289, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %291 = extractelement <4 x i64> %284, i32 0
  %292 = shl i64 %291, 3
  %293 = add i64 %292, %282
  %294 = getelementptr i8, i8* %call1, i64 %293
  %295 = bitcast i8* %294 to <4 x double>*
  store <4 x double> %290, <4 x double>* %295, align 8, !alias.scope !102, !noalias !107
  %index.next1275 = add i64 %index1274, 4
  %vec.ind.next1279 = add <4 x i64> %vec.ind1278, <i64 4, i64 4, i64 4, i64 4>
  %296 = icmp eq i64 %index.next1275, 28
  br i1 %296, label %polly.loop_exit831.1.1, label %vector.body1272, !llvm.loop !111

polly.loop_exit831.1.1:                           ; preds = %vector.body1272
  %polly.indvar_next827.1.1 = add nuw nsw i64 %polly.indvar826.1.1, 1
  %exitcond942.1.1.not = icmp eq i64 %polly.indvar_next827.1.1, 32
  br i1 %exitcond942.1.1.not, label %polly.loop_header823.2, label %polly.loop_header823.1.1

polly.loop_header823.2:                           ; preds = %polly.loop_exit831.1.1, %polly.loop_exit831.2
  %polly.indvar826.2 = phi i64 [ %polly.indvar_next827.2, %polly.loop_exit831.2 ], [ 0, %polly.loop_exit831.1.1 ]
  %297 = add nuw nsw i64 %polly.indvar826.2, 64
  %298 = mul nuw nsw i64 %297, 480
  %299 = trunc i64 %297 to i32
  %broadcast.splatinsert1294 = insertelement <4 x i32> poison, i32 %299, i32 0
  %broadcast.splat1295 = shufflevector <4 x i32> %broadcast.splatinsert1294, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1284

vector.body1284:                                  ; preds = %vector.body1284, %polly.loop_header823.2
  %index1286 = phi i64 [ 0, %polly.loop_header823.2 ], [ %index.next1287, %vector.body1284 ]
  %vec.ind1292 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header823.2 ], [ %vec.ind.next1293, %vector.body1284 ]
  %300 = mul <4 x i32> %vec.ind1292, %broadcast.splat1295
  %301 = add <4 x i32> %300, <i32 1, i32 1, i32 1, i32 1>
  %302 = urem <4 x i32> %301, <i32 80, i32 80, i32 80, i32 80>
  %303 = sitofp <4 x i32> %302 to <4 x double>
  %304 = fmul fast <4 x double> %303, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %305 = shl i64 %index1286, 3
  %306 = add i64 %305, %298
  %307 = getelementptr i8, i8* %call1, i64 %306
  %308 = bitcast i8* %307 to <4 x double>*
  store <4 x double> %304, <4 x double>* %308, align 8, !alias.scope !102, !noalias !107
  %index.next1287 = add i64 %index1286, 4
  %vec.ind.next1293 = add <4 x i32> %vec.ind1292, <i32 4, i32 4, i32 4, i32 4>
  %309 = icmp eq i64 %index.next1287, 32
  br i1 %309, label %polly.loop_exit831.2, label %vector.body1284, !llvm.loop !112

polly.loop_exit831.2:                             ; preds = %vector.body1284
  %polly.indvar_next827.2 = add nuw nsw i64 %polly.indvar826.2, 1
  %exitcond942.2.not = icmp eq i64 %polly.indvar_next827.2, 16
  br i1 %exitcond942.2.not, label %polly.loop_header823.1.2, label %polly.loop_header823.2

polly.loop_header823.1.2:                         ; preds = %polly.loop_exit831.2, %polly.loop_exit831.1.2
  %polly.indvar826.1.2 = phi i64 [ %polly.indvar_next827.1.2, %polly.loop_exit831.1.2 ], [ 0, %polly.loop_exit831.2 ]
  %310 = add nuw nsw i64 %polly.indvar826.1.2, 64
  %311 = mul nuw nsw i64 %310, 480
  %312 = trunc i64 %310 to i32
  %broadcast.splatinsert1306 = insertelement <4 x i32> poison, i32 %312, i32 0
  %broadcast.splat1307 = shufflevector <4 x i32> %broadcast.splatinsert1306, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1298

vector.body1298:                                  ; preds = %vector.body1298, %polly.loop_header823.1.2
  %index1300 = phi i64 [ 0, %polly.loop_header823.1.2 ], [ %index.next1301, %vector.body1298 ]
  %vec.ind1304 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header823.1.2 ], [ %vec.ind.next1305, %vector.body1298 ]
  %313 = add nuw nsw <4 x i64> %vec.ind1304, <i64 32, i64 32, i64 32, i64 32>
  %314 = trunc <4 x i64> %313 to <4 x i32>
  %315 = mul <4 x i32> %broadcast.splat1307, %314
  %316 = add <4 x i32> %315, <i32 1, i32 1, i32 1, i32 1>
  %317 = urem <4 x i32> %316, <i32 80, i32 80, i32 80, i32 80>
  %318 = sitofp <4 x i32> %317 to <4 x double>
  %319 = fmul fast <4 x double> %318, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %320 = extractelement <4 x i64> %313, i32 0
  %321 = shl i64 %320, 3
  %322 = add i64 %321, %311
  %323 = getelementptr i8, i8* %call1, i64 %322
  %324 = bitcast i8* %323 to <4 x double>*
  store <4 x double> %319, <4 x double>* %324, align 8, !alias.scope !102, !noalias !107
  %index.next1301 = add i64 %index1300, 4
  %vec.ind.next1305 = add <4 x i64> %vec.ind1304, <i64 4, i64 4, i64 4, i64 4>
  %325 = icmp eq i64 %index.next1301, 28
  br i1 %325, label %polly.loop_exit831.1.2, label %vector.body1298, !llvm.loop !113

polly.loop_exit831.1.2:                           ; preds = %vector.body1298
  %polly.indvar_next827.1.2 = add nuw nsw i64 %polly.indvar826.1.2, 1
  %exitcond942.1.2.not = icmp eq i64 %polly.indvar_next827.1.2, 16
  br i1 %exitcond942.1.2.not, label %init_array.exit, label %polly.loop_header823.1.2

polly.loop_header797.1:                           ; preds = %polly.loop_exit805, %polly.loop_exit805.1
  %polly.indvar800.1 = phi i64 [ %polly.indvar_next801.1, %polly.loop_exit805.1 ], [ 0, %polly.loop_exit805 ]
  %326 = mul nuw nsw i64 %polly.indvar800.1, 480
  %327 = trunc i64 %polly.indvar800.1 to i32
  %broadcast.splatinsert1176 = insertelement <4 x i32> poison, i32 %327, i32 0
  %broadcast.splat1177 = shufflevector <4 x i32> %broadcast.splatinsert1176, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1168

vector.body1168:                                  ; preds = %vector.body1168, %polly.loop_header797.1
  %index1170 = phi i64 [ 0, %polly.loop_header797.1 ], [ %index.next1171, %vector.body1168 ]
  %vec.ind1174 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header797.1 ], [ %vec.ind.next1175, %vector.body1168 ]
  %328 = add nuw nsw <4 x i64> %vec.ind1174, <i64 32, i64 32, i64 32, i64 32>
  %329 = trunc <4 x i64> %328 to <4 x i32>
  %330 = mul <4 x i32> %broadcast.splat1177, %329
  %331 = add <4 x i32> %330, <i32 2, i32 2, i32 2, i32 2>
  %332 = urem <4 x i32> %331, <i32 60, i32 60, i32 60, i32 60>
  %333 = sitofp <4 x i32> %332 to <4 x double>
  %334 = fmul fast <4 x double> %333, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %335 = extractelement <4 x i64> %328, i32 0
  %336 = shl i64 %335, 3
  %337 = add i64 %336, %326
  %338 = getelementptr i8, i8* %call2, i64 %337
  %339 = bitcast i8* %338 to <4 x double>*
  store <4 x double> %334, <4 x double>* %339, align 8, !alias.scope !103, !noalias !105
  %index.next1171 = add i64 %index1170, 4
  %vec.ind.next1175 = add <4 x i64> %vec.ind1174, <i64 4, i64 4, i64 4, i64 4>
  %340 = icmp eq i64 %index.next1171, 28
  br i1 %340, label %polly.loop_exit805.1, label %vector.body1168, !llvm.loop !114

polly.loop_exit805.1:                             ; preds = %vector.body1168
  %polly.indvar_next801.1 = add nuw nsw i64 %polly.indvar800.1, 1
  %exitcond948.1.not = icmp eq i64 %polly.indvar_next801.1, 32
  br i1 %exitcond948.1.not, label %polly.loop_header797.1976, label %polly.loop_header797.1

polly.loop_header797.1976:                        ; preds = %polly.loop_exit805.1, %polly.loop_exit805.1987
  %polly.indvar800.1975 = phi i64 [ %polly.indvar_next801.1985, %polly.loop_exit805.1987 ], [ 0, %polly.loop_exit805.1 ]
  %341 = add nuw nsw i64 %polly.indvar800.1975, 32
  %342 = mul nuw nsw i64 %341, 480
  %343 = trunc i64 %341 to i32
  %broadcast.splatinsert1190 = insertelement <4 x i32> poison, i32 %343, i32 0
  %broadcast.splat1191 = shufflevector <4 x i32> %broadcast.splatinsert1190, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1180

vector.body1180:                                  ; preds = %vector.body1180, %polly.loop_header797.1976
  %index1182 = phi i64 [ 0, %polly.loop_header797.1976 ], [ %index.next1183, %vector.body1180 ]
  %vec.ind1188 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header797.1976 ], [ %vec.ind.next1189, %vector.body1180 ]
  %344 = mul <4 x i32> %vec.ind1188, %broadcast.splat1191
  %345 = add <4 x i32> %344, <i32 2, i32 2, i32 2, i32 2>
  %346 = urem <4 x i32> %345, <i32 60, i32 60, i32 60, i32 60>
  %347 = sitofp <4 x i32> %346 to <4 x double>
  %348 = fmul fast <4 x double> %347, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %349 = shl i64 %index1182, 3
  %350 = add i64 %349, %342
  %351 = getelementptr i8, i8* %call2, i64 %350
  %352 = bitcast i8* %351 to <4 x double>*
  store <4 x double> %348, <4 x double>* %352, align 8, !alias.scope !103, !noalias !105
  %index.next1183 = add i64 %index1182, 4
  %vec.ind.next1189 = add <4 x i32> %vec.ind1188, <i32 4, i32 4, i32 4, i32 4>
  %353 = icmp eq i64 %index.next1183, 32
  br i1 %353, label %polly.loop_exit805.1987, label %vector.body1180, !llvm.loop !115

polly.loop_exit805.1987:                          ; preds = %vector.body1180
  %polly.indvar_next801.1985 = add nuw nsw i64 %polly.indvar800.1975, 1
  %exitcond948.1986.not = icmp eq i64 %polly.indvar_next801.1985, 32
  br i1 %exitcond948.1986.not, label %polly.loop_header797.1.1, label %polly.loop_header797.1976

polly.loop_header797.1.1:                         ; preds = %polly.loop_exit805.1987, %polly.loop_exit805.1.1
  %polly.indvar800.1.1 = phi i64 [ %polly.indvar_next801.1.1, %polly.loop_exit805.1.1 ], [ 0, %polly.loop_exit805.1987 ]
  %354 = add nuw nsw i64 %polly.indvar800.1.1, 32
  %355 = mul nuw nsw i64 %354, 480
  %356 = trunc i64 %354 to i32
  %broadcast.splatinsert1202 = insertelement <4 x i32> poison, i32 %356, i32 0
  %broadcast.splat1203 = shufflevector <4 x i32> %broadcast.splatinsert1202, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1194

vector.body1194:                                  ; preds = %vector.body1194, %polly.loop_header797.1.1
  %index1196 = phi i64 [ 0, %polly.loop_header797.1.1 ], [ %index.next1197, %vector.body1194 ]
  %vec.ind1200 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header797.1.1 ], [ %vec.ind.next1201, %vector.body1194 ]
  %357 = add nuw nsw <4 x i64> %vec.ind1200, <i64 32, i64 32, i64 32, i64 32>
  %358 = trunc <4 x i64> %357 to <4 x i32>
  %359 = mul <4 x i32> %broadcast.splat1203, %358
  %360 = add <4 x i32> %359, <i32 2, i32 2, i32 2, i32 2>
  %361 = urem <4 x i32> %360, <i32 60, i32 60, i32 60, i32 60>
  %362 = sitofp <4 x i32> %361 to <4 x double>
  %363 = fmul fast <4 x double> %362, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %364 = extractelement <4 x i64> %357, i32 0
  %365 = shl i64 %364, 3
  %366 = add i64 %365, %355
  %367 = getelementptr i8, i8* %call2, i64 %366
  %368 = bitcast i8* %367 to <4 x double>*
  store <4 x double> %363, <4 x double>* %368, align 8, !alias.scope !103, !noalias !105
  %index.next1197 = add i64 %index1196, 4
  %vec.ind.next1201 = add <4 x i64> %vec.ind1200, <i64 4, i64 4, i64 4, i64 4>
  %369 = icmp eq i64 %index.next1197, 28
  br i1 %369, label %polly.loop_exit805.1.1, label %vector.body1194, !llvm.loop !116

polly.loop_exit805.1.1:                           ; preds = %vector.body1194
  %polly.indvar_next801.1.1 = add nuw nsw i64 %polly.indvar800.1.1, 1
  %exitcond948.1.1.not = icmp eq i64 %polly.indvar_next801.1.1, 32
  br i1 %exitcond948.1.1.not, label %polly.loop_header797.2, label %polly.loop_header797.1.1

polly.loop_header797.2:                           ; preds = %polly.loop_exit805.1.1, %polly.loop_exit805.2
  %polly.indvar800.2 = phi i64 [ %polly.indvar_next801.2, %polly.loop_exit805.2 ], [ 0, %polly.loop_exit805.1.1 ]
  %370 = add nuw nsw i64 %polly.indvar800.2, 64
  %371 = mul nuw nsw i64 %370, 480
  %372 = trunc i64 %370 to i32
  %broadcast.splatinsert1216 = insertelement <4 x i32> poison, i32 %372, i32 0
  %broadcast.splat1217 = shufflevector <4 x i32> %broadcast.splatinsert1216, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1206

vector.body1206:                                  ; preds = %vector.body1206, %polly.loop_header797.2
  %index1208 = phi i64 [ 0, %polly.loop_header797.2 ], [ %index.next1209, %vector.body1206 ]
  %vec.ind1214 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header797.2 ], [ %vec.ind.next1215, %vector.body1206 ]
  %373 = mul <4 x i32> %vec.ind1214, %broadcast.splat1217
  %374 = add <4 x i32> %373, <i32 2, i32 2, i32 2, i32 2>
  %375 = urem <4 x i32> %374, <i32 60, i32 60, i32 60, i32 60>
  %376 = sitofp <4 x i32> %375 to <4 x double>
  %377 = fmul fast <4 x double> %376, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %378 = shl i64 %index1208, 3
  %379 = add i64 %378, %371
  %380 = getelementptr i8, i8* %call2, i64 %379
  %381 = bitcast i8* %380 to <4 x double>*
  store <4 x double> %377, <4 x double>* %381, align 8, !alias.scope !103, !noalias !105
  %index.next1209 = add i64 %index1208, 4
  %vec.ind.next1215 = add <4 x i32> %vec.ind1214, <i32 4, i32 4, i32 4, i32 4>
  %382 = icmp eq i64 %index.next1209, 32
  br i1 %382, label %polly.loop_exit805.2, label %vector.body1206, !llvm.loop !117

polly.loop_exit805.2:                             ; preds = %vector.body1206
  %polly.indvar_next801.2 = add nuw nsw i64 %polly.indvar800.2, 1
  %exitcond948.2.not = icmp eq i64 %polly.indvar_next801.2, 16
  br i1 %exitcond948.2.not, label %polly.loop_header797.1.2, label %polly.loop_header797.2

polly.loop_header797.1.2:                         ; preds = %polly.loop_exit805.2, %polly.loop_exit805.1.2
  %polly.indvar800.1.2 = phi i64 [ %polly.indvar_next801.1.2, %polly.loop_exit805.1.2 ], [ 0, %polly.loop_exit805.2 ]
  %383 = add nuw nsw i64 %polly.indvar800.1.2, 64
  %384 = mul nuw nsw i64 %383, 480
  %385 = trunc i64 %383 to i32
  %broadcast.splatinsert1228 = insertelement <4 x i32> poison, i32 %385, i32 0
  %broadcast.splat1229 = shufflevector <4 x i32> %broadcast.splatinsert1228, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1220

vector.body1220:                                  ; preds = %vector.body1220, %polly.loop_header797.1.2
  %index1222 = phi i64 [ 0, %polly.loop_header797.1.2 ], [ %index.next1223, %vector.body1220 ]
  %vec.ind1226 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header797.1.2 ], [ %vec.ind.next1227, %vector.body1220 ]
  %386 = add nuw nsw <4 x i64> %vec.ind1226, <i64 32, i64 32, i64 32, i64 32>
  %387 = trunc <4 x i64> %386 to <4 x i32>
  %388 = mul <4 x i32> %broadcast.splat1229, %387
  %389 = add <4 x i32> %388, <i32 2, i32 2, i32 2, i32 2>
  %390 = urem <4 x i32> %389, <i32 60, i32 60, i32 60, i32 60>
  %391 = sitofp <4 x i32> %390 to <4 x double>
  %392 = fmul fast <4 x double> %391, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %393 = extractelement <4 x i64> %386, i32 0
  %394 = shl i64 %393, 3
  %395 = add i64 %394, %384
  %396 = getelementptr i8, i8* %call2, i64 %395
  %397 = bitcast i8* %396 to <4 x double>*
  store <4 x double> %392, <4 x double>* %397, align 8, !alias.scope !103, !noalias !105
  %index.next1223 = add i64 %index1222, 4
  %vec.ind.next1227 = add <4 x i64> %vec.ind1226, <i64 4, i64 4, i64 4, i64 4>
  %398 = icmp eq i64 %index.next1223, 28
  br i1 %398, label %polly.loop_exit805.1.2, label %vector.body1220, !llvm.loop !118

polly.loop_exit805.1.2:                           ; preds = %vector.body1220
  %polly.indvar_next801.1.2 = add nuw nsw i64 %polly.indvar800.1.2, 1
  %exitcond948.1.2.not = icmp eq i64 %polly.indvar_next801.1.2, 16
  br i1 %exitcond948.1.2.not, label %polly.loop_header823, label %polly.loop_header797.1.2

polly.loop_header770.1:                           ; preds = %polly.loop_exit778, %polly.loop_exit778.1
  %polly.indvar773.1 = phi i64 [ %polly.indvar_next774.1, %polly.loop_exit778.1 ], [ 0, %polly.loop_exit778 ]
  %399 = mul nuw nsw i64 %polly.indvar773.1, 640
  %400 = trunc i64 %polly.indvar773.1 to i32
  %broadcast.splatinsert1062 = insertelement <4 x i32> poison, i32 %400, i32 0
  %broadcast.splat1063 = shufflevector <4 x i32> %broadcast.splatinsert1062, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1054

vector.body1054:                                  ; preds = %vector.body1054, %polly.loop_header770.1
  %index1056 = phi i64 [ 0, %polly.loop_header770.1 ], [ %index.next1057, %vector.body1054 ]
  %vec.ind1060 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header770.1 ], [ %vec.ind.next1061, %vector.body1054 ]
  %401 = add nuw nsw <4 x i64> %vec.ind1060, <i64 32, i64 32, i64 32, i64 32>
  %402 = trunc <4 x i64> %401 to <4 x i32>
  %403 = mul <4 x i32> %broadcast.splat1063, %402
  %404 = add <4 x i32> %403, <i32 3, i32 3, i32 3, i32 3>
  %405 = urem <4 x i32> %404, <i32 80, i32 80, i32 80, i32 80>
  %406 = sitofp <4 x i32> %405 to <4 x double>
  %407 = fmul fast <4 x double> %406, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %408 = extractelement <4 x i64> %401, i32 0
  %409 = shl i64 %408, 3
  %410 = add nuw nsw i64 %409, %399
  %411 = getelementptr i8, i8* %call, i64 %410
  %412 = bitcast i8* %411 to <4 x double>*
  store <4 x double> %407, <4 x double>* %412, align 8, !alias.scope !99, !noalias !101
  %index.next1057 = add i64 %index1056, 4
  %vec.ind.next1061 = add <4 x i64> %vec.ind1060, <i64 4, i64 4, i64 4, i64 4>
  %413 = icmp eq i64 %index.next1057, 32
  br i1 %413, label %polly.loop_exit778.1, label %vector.body1054, !llvm.loop !119

polly.loop_exit778.1:                             ; preds = %vector.body1054
  %polly.indvar_next774.1 = add nuw nsw i64 %polly.indvar773.1, 1
  %exitcond957.1.not = icmp eq i64 %polly.indvar_next774.1, 32
  br i1 %exitcond957.1.not, label %polly.loop_header770.2, label %polly.loop_header770.1

polly.loop_header770.2:                           ; preds = %polly.loop_exit778.1, %polly.loop_exit778.2
  %polly.indvar773.2 = phi i64 [ %polly.indvar_next774.2, %polly.loop_exit778.2 ], [ 0, %polly.loop_exit778.1 ]
  %414 = mul nuw nsw i64 %polly.indvar773.2, 640
  %415 = trunc i64 %polly.indvar773.2 to i32
  %broadcast.splatinsert1074 = insertelement <4 x i32> poison, i32 %415, i32 0
  %broadcast.splat1075 = shufflevector <4 x i32> %broadcast.splatinsert1074, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1066

vector.body1066:                                  ; preds = %vector.body1066, %polly.loop_header770.2
  %index1068 = phi i64 [ 0, %polly.loop_header770.2 ], [ %index.next1069, %vector.body1066 ]
  %vec.ind1072 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header770.2 ], [ %vec.ind.next1073, %vector.body1066 ]
  %416 = add nuw nsw <4 x i64> %vec.ind1072, <i64 64, i64 64, i64 64, i64 64>
  %417 = trunc <4 x i64> %416 to <4 x i32>
  %418 = mul <4 x i32> %broadcast.splat1075, %417
  %419 = add <4 x i32> %418, <i32 3, i32 3, i32 3, i32 3>
  %420 = urem <4 x i32> %419, <i32 80, i32 80, i32 80, i32 80>
  %421 = sitofp <4 x i32> %420 to <4 x double>
  %422 = fmul fast <4 x double> %421, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %423 = extractelement <4 x i64> %416, i32 0
  %424 = shl i64 %423, 3
  %425 = add nuw nsw i64 %424, %414
  %426 = getelementptr i8, i8* %call, i64 %425
  %427 = bitcast i8* %426 to <4 x double>*
  store <4 x double> %422, <4 x double>* %427, align 8, !alias.scope !99, !noalias !101
  %index.next1069 = add i64 %index1068, 4
  %vec.ind.next1073 = add <4 x i64> %vec.ind1072, <i64 4, i64 4, i64 4, i64 4>
  %428 = icmp eq i64 %index.next1069, 16
  br i1 %428, label %polly.loop_exit778.2, label %vector.body1066, !llvm.loop !120

polly.loop_exit778.2:                             ; preds = %vector.body1066
  %polly.indvar_next774.2 = add nuw nsw i64 %polly.indvar773.2, 1
  %exitcond957.2.not = icmp eq i64 %polly.indvar_next774.2, 32
  br i1 %exitcond957.2.not, label %polly.loop_header770.1990, label %polly.loop_header770.2

polly.loop_header770.1990:                        ; preds = %polly.loop_exit778.2, %polly.loop_exit778.11001
  %polly.indvar773.1989 = phi i64 [ %polly.indvar_next774.1999, %polly.loop_exit778.11001 ], [ 0, %polly.loop_exit778.2 ]
  %429 = add nuw nsw i64 %polly.indvar773.1989, 32
  %430 = mul nuw nsw i64 %429, 640
  %431 = trunc i64 %429 to i32
  %broadcast.splatinsert1088 = insertelement <4 x i32> poison, i32 %431, i32 0
  %broadcast.splat1089 = shufflevector <4 x i32> %broadcast.splatinsert1088, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1078

vector.body1078:                                  ; preds = %vector.body1078, %polly.loop_header770.1990
  %index1080 = phi i64 [ 0, %polly.loop_header770.1990 ], [ %index.next1081, %vector.body1078 ]
  %vec.ind1086 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header770.1990 ], [ %vec.ind.next1087, %vector.body1078 ]
  %432 = mul <4 x i32> %vec.ind1086, %broadcast.splat1089
  %433 = add <4 x i32> %432, <i32 3, i32 3, i32 3, i32 3>
  %434 = urem <4 x i32> %433, <i32 80, i32 80, i32 80, i32 80>
  %435 = sitofp <4 x i32> %434 to <4 x double>
  %436 = fmul fast <4 x double> %435, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %437 = shl i64 %index1080, 3
  %438 = add nuw nsw i64 %437, %430
  %439 = getelementptr i8, i8* %call, i64 %438
  %440 = bitcast i8* %439 to <4 x double>*
  store <4 x double> %436, <4 x double>* %440, align 8, !alias.scope !99, !noalias !101
  %index.next1081 = add i64 %index1080, 4
  %vec.ind.next1087 = add <4 x i32> %vec.ind1086, <i32 4, i32 4, i32 4, i32 4>
  %441 = icmp eq i64 %index.next1081, 32
  br i1 %441, label %polly.loop_exit778.11001, label %vector.body1078, !llvm.loop !121

polly.loop_exit778.11001:                         ; preds = %vector.body1078
  %polly.indvar_next774.1999 = add nuw nsw i64 %polly.indvar773.1989, 1
  %exitcond957.11000.not = icmp eq i64 %polly.indvar_next774.1999, 32
  br i1 %exitcond957.11000.not, label %polly.loop_header770.1.1, label %polly.loop_header770.1990

polly.loop_header770.1.1:                         ; preds = %polly.loop_exit778.11001, %polly.loop_exit778.1.1
  %polly.indvar773.1.1 = phi i64 [ %polly.indvar_next774.1.1, %polly.loop_exit778.1.1 ], [ 0, %polly.loop_exit778.11001 ]
  %442 = add nuw nsw i64 %polly.indvar773.1.1, 32
  %443 = mul nuw nsw i64 %442, 640
  %444 = trunc i64 %442 to i32
  %broadcast.splatinsert1100 = insertelement <4 x i32> poison, i32 %444, i32 0
  %broadcast.splat1101 = shufflevector <4 x i32> %broadcast.splatinsert1100, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1092

vector.body1092:                                  ; preds = %vector.body1092, %polly.loop_header770.1.1
  %index1094 = phi i64 [ 0, %polly.loop_header770.1.1 ], [ %index.next1095, %vector.body1092 ]
  %vec.ind1098 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header770.1.1 ], [ %vec.ind.next1099, %vector.body1092 ]
  %445 = add nuw nsw <4 x i64> %vec.ind1098, <i64 32, i64 32, i64 32, i64 32>
  %446 = trunc <4 x i64> %445 to <4 x i32>
  %447 = mul <4 x i32> %broadcast.splat1101, %446
  %448 = add <4 x i32> %447, <i32 3, i32 3, i32 3, i32 3>
  %449 = urem <4 x i32> %448, <i32 80, i32 80, i32 80, i32 80>
  %450 = sitofp <4 x i32> %449 to <4 x double>
  %451 = fmul fast <4 x double> %450, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %452 = extractelement <4 x i64> %445, i32 0
  %453 = shl i64 %452, 3
  %454 = add nuw nsw i64 %453, %443
  %455 = getelementptr i8, i8* %call, i64 %454
  %456 = bitcast i8* %455 to <4 x double>*
  store <4 x double> %451, <4 x double>* %456, align 8, !alias.scope !99, !noalias !101
  %index.next1095 = add i64 %index1094, 4
  %vec.ind.next1099 = add <4 x i64> %vec.ind1098, <i64 4, i64 4, i64 4, i64 4>
  %457 = icmp eq i64 %index.next1095, 32
  br i1 %457, label %polly.loop_exit778.1.1, label %vector.body1092, !llvm.loop !122

polly.loop_exit778.1.1:                           ; preds = %vector.body1092
  %polly.indvar_next774.1.1 = add nuw nsw i64 %polly.indvar773.1.1, 1
  %exitcond957.1.1.not = icmp eq i64 %polly.indvar_next774.1.1, 32
  br i1 %exitcond957.1.1.not, label %polly.loop_header770.2.1, label %polly.loop_header770.1.1

polly.loop_header770.2.1:                         ; preds = %polly.loop_exit778.1.1, %polly.loop_exit778.2.1
  %polly.indvar773.2.1 = phi i64 [ %polly.indvar_next774.2.1, %polly.loop_exit778.2.1 ], [ 0, %polly.loop_exit778.1.1 ]
  %458 = add nuw nsw i64 %polly.indvar773.2.1, 32
  %459 = mul nuw nsw i64 %458, 640
  %460 = trunc i64 %458 to i32
  %broadcast.splatinsert1112 = insertelement <4 x i32> poison, i32 %460, i32 0
  %broadcast.splat1113 = shufflevector <4 x i32> %broadcast.splatinsert1112, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1104

vector.body1104:                                  ; preds = %vector.body1104, %polly.loop_header770.2.1
  %index1106 = phi i64 [ 0, %polly.loop_header770.2.1 ], [ %index.next1107, %vector.body1104 ]
  %vec.ind1110 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header770.2.1 ], [ %vec.ind.next1111, %vector.body1104 ]
  %461 = add nuw nsw <4 x i64> %vec.ind1110, <i64 64, i64 64, i64 64, i64 64>
  %462 = trunc <4 x i64> %461 to <4 x i32>
  %463 = mul <4 x i32> %broadcast.splat1113, %462
  %464 = add <4 x i32> %463, <i32 3, i32 3, i32 3, i32 3>
  %465 = urem <4 x i32> %464, <i32 80, i32 80, i32 80, i32 80>
  %466 = sitofp <4 x i32> %465 to <4 x double>
  %467 = fmul fast <4 x double> %466, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %468 = extractelement <4 x i64> %461, i32 0
  %469 = shl i64 %468, 3
  %470 = add nuw nsw i64 %469, %459
  %471 = getelementptr i8, i8* %call, i64 %470
  %472 = bitcast i8* %471 to <4 x double>*
  store <4 x double> %467, <4 x double>* %472, align 8, !alias.scope !99, !noalias !101
  %index.next1107 = add i64 %index1106, 4
  %vec.ind.next1111 = add <4 x i64> %vec.ind1110, <i64 4, i64 4, i64 4, i64 4>
  %473 = icmp eq i64 %index.next1107, 16
  br i1 %473, label %polly.loop_exit778.2.1, label %vector.body1104, !llvm.loop !123

polly.loop_exit778.2.1:                           ; preds = %vector.body1104
  %polly.indvar_next774.2.1 = add nuw nsw i64 %polly.indvar773.2.1, 1
  %exitcond957.2.1.not = icmp eq i64 %polly.indvar_next774.2.1, 32
  br i1 %exitcond957.2.1.not, label %polly.loop_header770.21004, label %polly.loop_header770.2.1

polly.loop_header770.21004:                       ; preds = %polly.loop_exit778.2.1, %polly.loop_exit778.21015
  %polly.indvar773.21003 = phi i64 [ %polly.indvar_next774.21013, %polly.loop_exit778.21015 ], [ 0, %polly.loop_exit778.2.1 ]
  %474 = add nuw nsw i64 %polly.indvar773.21003, 64
  %475 = mul nuw nsw i64 %474, 640
  %476 = trunc i64 %474 to i32
  %broadcast.splatinsert1126 = insertelement <4 x i32> poison, i32 %476, i32 0
  %broadcast.splat1127 = shufflevector <4 x i32> %broadcast.splatinsert1126, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1116

vector.body1116:                                  ; preds = %vector.body1116, %polly.loop_header770.21004
  %index1118 = phi i64 [ 0, %polly.loop_header770.21004 ], [ %index.next1119, %vector.body1116 ]
  %vec.ind1124 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header770.21004 ], [ %vec.ind.next1125, %vector.body1116 ]
  %477 = mul <4 x i32> %vec.ind1124, %broadcast.splat1127
  %478 = add <4 x i32> %477, <i32 3, i32 3, i32 3, i32 3>
  %479 = urem <4 x i32> %478, <i32 80, i32 80, i32 80, i32 80>
  %480 = sitofp <4 x i32> %479 to <4 x double>
  %481 = fmul fast <4 x double> %480, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %482 = shl i64 %index1118, 3
  %483 = add nuw nsw i64 %482, %475
  %484 = getelementptr i8, i8* %call, i64 %483
  %485 = bitcast i8* %484 to <4 x double>*
  store <4 x double> %481, <4 x double>* %485, align 8, !alias.scope !99, !noalias !101
  %index.next1119 = add i64 %index1118, 4
  %vec.ind.next1125 = add <4 x i32> %vec.ind1124, <i32 4, i32 4, i32 4, i32 4>
  %486 = icmp eq i64 %index.next1119, 32
  br i1 %486, label %polly.loop_exit778.21015, label %vector.body1116, !llvm.loop !124

polly.loop_exit778.21015:                         ; preds = %vector.body1116
  %polly.indvar_next774.21013 = add nuw nsw i64 %polly.indvar773.21003, 1
  %exitcond957.21014.not = icmp eq i64 %polly.indvar_next774.21013, 16
  br i1 %exitcond957.21014.not, label %polly.loop_header770.1.2, label %polly.loop_header770.21004

polly.loop_header770.1.2:                         ; preds = %polly.loop_exit778.21015, %polly.loop_exit778.1.2
  %polly.indvar773.1.2 = phi i64 [ %polly.indvar_next774.1.2, %polly.loop_exit778.1.2 ], [ 0, %polly.loop_exit778.21015 ]
  %487 = add nuw nsw i64 %polly.indvar773.1.2, 64
  %488 = mul nuw nsw i64 %487, 640
  %489 = trunc i64 %487 to i32
  %broadcast.splatinsert1138 = insertelement <4 x i32> poison, i32 %489, i32 0
  %broadcast.splat1139 = shufflevector <4 x i32> %broadcast.splatinsert1138, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1130

vector.body1130:                                  ; preds = %vector.body1130, %polly.loop_header770.1.2
  %index1132 = phi i64 [ 0, %polly.loop_header770.1.2 ], [ %index.next1133, %vector.body1130 ]
  %vec.ind1136 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header770.1.2 ], [ %vec.ind.next1137, %vector.body1130 ]
  %490 = add nuw nsw <4 x i64> %vec.ind1136, <i64 32, i64 32, i64 32, i64 32>
  %491 = trunc <4 x i64> %490 to <4 x i32>
  %492 = mul <4 x i32> %broadcast.splat1139, %491
  %493 = add <4 x i32> %492, <i32 3, i32 3, i32 3, i32 3>
  %494 = urem <4 x i32> %493, <i32 80, i32 80, i32 80, i32 80>
  %495 = sitofp <4 x i32> %494 to <4 x double>
  %496 = fmul fast <4 x double> %495, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %497 = extractelement <4 x i64> %490, i32 0
  %498 = shl i64 %497, 3
  %499 = add nuw nsw i64 %498, %488
  %500 = getelementptr i8, i8* %call, i64 %499
  %501 = bitcast i8* %500 to <4 x double>*
  store <4 x double> %496, <4 x double>* %501, align 8, !alias.scope !99, !noalias !101
  %index.next1133 = add i64 %index1132, 4
  %vec.ind.next1137 = add <4 x i64> %vec.ind1136, <i64 4, i64 4, i64 4, i64 4>
  %502 = icmp eq i64 %index.next1133, 32
  br i1 %502, label %polly.loop_exit778.1.2, label %vector.body1130, !llvm.loop !125

polly.loop_exit778.1.2:                           ; preds = %vector.body1130
  %polly.indvar_next774.1.2 = add nuw nsw i64 %polly.indvar773.1.2, 1
  %exitcond957.1.2.not = icmp eq i64 %polly.indvar_next774.1.2, 16
  br i1 %exitcond957.1.2.not, label %polly.loop_header770.2.2, label %polly.loop_header770.1.2

polly.loop_header770.2.2:                         ; preds = %polly.loop_exit778.1.2, %polly.loop_exit778.2.2
  %polly.indvar773.2.2 = phi i64 [ %polly.indvar_next774.2.2, %polly.loop_exit778.2.2 ], [ 0, %polly.loop_exit778.1.2 ]
  %503 = add nuw nsw i64 %polly.indvar773.2.2, 64
  %504 = mul nuw nsw i64 %503, 640
  %505 = trunc i64 %503 to i32
  %broadcast.splatinsert1150 = insertelement <4 x i32> poison, i32 %505, i32 0
  %broadcast.splat1151 = shufflevector <4 x i32> %broadcast.splatinsert1150, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1142

vector.body1142:                                  ; preds = %vector.body1142, %polly.loop_header770.2.2
  %index1144 = phi i64 [ 0, %polly.loop_header770.2.2 ], [ %index.next1145, %vector.body1142 ]
  %vec.ind1148 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header770.2.2 ], [ %vec.ind.next1149, %vector.body1142 ]
  %506 = add nuw nsw <4 x i64> %vec.ind1148, <i64 64, i64 64, i64 64, i64 64>
  %507 = trunc <4 x i64> %506 to <4 x i32>
  %508 = mul <4 x i32> %broadcast.splat1151, %507
  %509 = add <4 x i32> %508, <i32 3, i32 3, i32 3, i32 3>
  %510 = urem <4 x i32> %509, <i32 80, i32 80, i32 80, i32 80>
  %511 = sitofp <4 x i32> %510 to <4 x double>
  %512 = fmul fast <4 x double> %511, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %513 = extractelement <4 x i64> %506, i32 0
  %514 = shl i64 %513, 3
  %515 = add nuw nsw i64 %514, %504
  %516 = getelementptr i8, i8* %call, i64 %515
  %517 = bitcast i8* %516 to <4 x double>*
  store <4 x double> %512, <4 x double>* %517, align 8, !alias.scope !99, !noalias !101
  %index.next1145 = add i64 %index1144, 4
  %vec.ind.next1149 = add <4 x i64> %vec.ind1148, <i64 4, i64 4, i64 4, i64 4>
  %518 = icmp eq i64 %index.next1145, 16
  br i1 %518, label %polly.loop_exit778.2.2, label %vector.body1142, !llvm.loop !126

polly.loop_exit778.2.2:                           ; preds = %vector.body1142
  %polly.indvar_next774.2.2 = add nuw nsw i64 %polly.indvar773.2.2, 1
  %exitcond957.2.2.not = icmp eq i64 %polly.indvar_next774.2.2, 16
  br i1 %exitcond957.2.2.not, label %polly.loop_header797, label %polly.loop_header770.2.2
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
!21 = distinct !{!"B"}
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 32}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 8}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !23, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !45, !46, !57}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.size", i32 50}
!46 = !{!"llvm.loop.tile.followup_floor", !47}
!47 = distinct !{!47, !12, !23, !48, !49, !50, !51, !52}
!48 = !{!"llvm.loop.id", !"i1"}
!49 = !{!"llvm.loop.interchange.enable", i1 true}
!50 = !{!"llvm.loop.interchange.depth", i32 5}
!51 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!52 = !{!"llvm.loop.interchange.followup_interchanged", !53}
!53 = distinct !{!53, !12, !23, !48, !54, !55, !56}
!54 = !{!"llvm.data.pack.enable", i1 true}
!55 = !{!"llvm.data.pack.array", !21}
!56 = !{!"llvm.data.pack.allocate", !"malloc"}
!57 = !{!"llvm.loop.tile.followup_tile", !58}
!58 = distinct !{!58, !12, !23, !59}
!59 = !{!"llvm.loop.id", !"i2"}
!60 = distinct !{!60, !12, !13}
!61 = distinct !{!61, !12, !13}
!62 = distinct !{!62, !12, !13}
!63 = distinct !{!63, !12, !13}
!64 = !{!65, !65, i64 0}
!65 = !{!"any pointer", !4, i64 0}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !69, !"polly.alias.scope.MemRef_call"}
!69 = distinct !{!69, !"polly.alias.scope.domain"}
!70 = !{!71, !72, !73}
!71 = distinct !{!71, !69, !"polly.alias.scope.MemRef_call1"}
!72 = distinct !{!72, !69, !"polly.alias.scope.MemRef_call2"}
!73 = distinct !{!73, !69, !"polly.alias.scope.Packed_MemRef_call2"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !76, !13}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!68, !71, !73}
!78 = !{!68, !72, !73}
!79 = distinct !{!79, !80, !"polly.alias.scope.MemRef_call"}
!80 = distinct !{!80, !"polly.alias.scope.domain"}
!81 = !{!82, !83, !84}
!82 = distinct !{!82, !80, !"polly.alias.scope.MemRef_call1"}
!83 = distinct !{!83, !80, !"polly.alias.scope.MemRef_call2"}
!84 = distinct !{!84, !80, !"polly.alias.scope.Packed_MemRef_call2"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !76, !13}
!87 = !{!79, !82, !84}
!88 = !{!79, !83, !84}
!89 = distinct !{!89, !90, !"polly.alias.scope.MemRef_call"}
!90 = distinct !{!90, !"polly.alias.scope.domain"}
!91 = !{!92, !93, !94}
!92 = distinct !{!92, !90, !"polly.alias.scope.MemRef_call1"}
!93 = distinct !{!93, !90, !"polly.alias.scope.MemRef_call2"}
!94 = distinct !{!94, !90, !"polly.alias.scope.Packed_MemRef_call2"}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !76, !13}
!97 = !{!89, !92, !94}
!98 = !{!89, !93, !94}
!99 = distinct !{!99, !100, !"polly.alias.scope.MemRef_call"}
!100 = distinct !{!100, !"polly.alias.scope.domain"}
!101 = !{!102, !103}
!102 = distinct !{!102, !100, !"polly.alias.scope.MemRef_call1"}
!103 = distinct !{!103, !100, !"polly.alias.scope.MemRef_call2"}
!104 = distinct !{!104, !13}
!105 = !{!102, !99}
!106 = distinct !{!106, !13}
!107 = !{!103, !99}
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
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !13}
!126 = distinct !{!126, !13}
