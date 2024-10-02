; ModuleID = 'syr2k_recreations//mmp_syr2k_S_135.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_135.c"
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
  %call811 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1663 = bitcast i8* %call1 to double*
  %polly.access.call1672 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1672, %call2
  %polly.access.call2692 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2692, %call1
  %2 = or i1 %0, %1
  %polly.access.call712 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call712, %call2
  %4 = icmp ule i8* %polly.access.call2692, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call712, %call1
  %8 = icmp ule i8* %polly.access.call1672, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header797, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1109 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1108 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1107 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1106 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1106, %scevgep1109
  %bound1 = icmp ult i8* %scevgep1108, %scevgep1107
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
  br i1 %exitcond18.not.i, label %vector.ph1113, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1113:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1120 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1121 = shufflevector <4 x i64> %broadcast.splatinsert1120, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1112

vector.body1112:                                  ; preds = %vector.body1112, %vector.ph1113
  %index1114 = phi i64 [ 0, %vector.ph1113 ], [ %index.next1115, %vector.body1112 ]
  %vec.ind1118 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1113 ], [ %vec.ind.next1119, %vector.body1112 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1118, %broadcast.splat1121
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv7.i, i64 %index1114
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1115 = add i64 %index1114, 4
  %vec.ind.next1119 = add <4 x i64> %vec.ind1118, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1115, 80
  br i1 %40, label %for.inc41.i, label %vector.body1112, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1112
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1113, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit858.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start471, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1469, label %vector.ph1395

vector.ph1395:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1394

vector.body1394:                                  ; preds = %vector.body1394, %vector.ph1395
  %index1396 = phi i64 [ 0, %vector.ph1395 ], [ %index.next1397, %vector.body1394 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv21.i, i64 %index1396
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1397 = add i64 %index1396, 4
  %46 = icmp eq i64 %index.next1397, %n.vec
  br i1 %46, label %middle.block1392, label %vector.body1394, !llvm.loop !18

middle.block1392:                                 ; preds = %vector.body1394
  %cmp.n1399 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1399, label %for.inc6.i, label %for.body3.i46.preheader1469

for.body3.i46.preheader1469:                      ; preds = %for.body3.i46.preheader, %middle.block1392
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1392 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1469, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1469 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1392, %for.cond1.preheader.i45
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
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !46

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit581.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start281, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1415 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1415, label %for.body3.i60.preheader1467, label %vector.ph1416

vector.ph1416:                                    ; preds = %for.body3.i60.preheader
  %n.vec1418 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1414

vector.body1414:                                  ; preds = %vector.body1414, %vector.ph1416
  %index1419 = phi i64 [ 0, %vector.ph1416 ], [ %index.next1420, %vector.body1414 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv21.i52, i64 %index1419
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1423 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1423, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1420 = add i64 %index1419, 4
  %57 = icmp eq i64 %index.next1420, %n.vec1418
  br i1 %57, label %middle.block1412, label %vector.body1414, !llvm.loop !59

middle.block1412:                                 ; preds = %vector.body1414
  %cmp.n1422 = icmp eq i64 %indvars.iv21.i52, %n.vec1418
  br i1 %cmp.n1422, label %for.inc6.i63, label %for.body3.i60.preheader1467

for.body3.i60.preheader1467:                      ; preds = %for.body3.i60.preheader, %middle.block1412
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1418, %middle.block1412 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1467, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1467 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !60

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1412, %for.cond1.preheader.i54
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
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !46

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit391.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1441 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1441, label %for.body3.i99.preheader1465, label %vector.ph1442

vector.ph1442:                                    ; preds = %for.body3.i99.preheader
  %n.vec1444 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1440

vector.body1440:                                  ; preds = %vector.body1440, %vector.ph1442
  %index1445 = phi i64 [ 0, %vector.ph1442 ], [ %index.next1446, %vector.body1440 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv21.i91, i64 %index1445
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1449 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1449, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1446 = add i64 %index1445, 4
  %68 = icmp eq i64 %index.next1446, %n.vec1444
  br i1 %68, label %middle.block1438, label %vector.body1440, !llvm.loop !61

middle.block1438:                                 ; preds = %vector.body1440
  %cmp.n1448 = icmp eq i64 %indvars.iv21.i91, %n.vec1444
  br i1 %cmp.n1448, label %for.inc6.i102, label %for.body3.i99.preheader1465

for.body3.i99.preheader1465:                      ; preds = %for.body3.i99.preheader, %middle.block1438
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1444, %middle.block1438 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1465, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1465 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !62

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1438, %for.cond1.preheader.i93
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
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !46

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit207.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !63
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !65

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !66

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1453 = phi i64 [ %indvar.next1454, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1453, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1455 = icmp ult i64 %88, 4
  br i1 %min.iters.check1455, label %polly.loop_header191.preheader, label %vector.ph1456

vector.ph1456:                                    ; preds = %polly.loop_header
  %n.vec1458 = and i64 %88, -4
  br label %vector.body1452

vector.body1452:                                  ; preds = %vector.body1452, %vector.ph1456
  %index1459 = phi i64 [ 0, %vector.ph1456 ], [ %index.next1460, %vector.body1452 ]
  %90 = shl nuw nsw i64 %index1459, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1463 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !67, !noalias !69
  %93 = fmul fast <4 x double> %wide.load1463, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !67, !noalias !69
  %index.next1460 = add i64 %index1459, 4
  %95 = icmp eq i64 %index.next1460, %n.vec1458
  br i1 %95, label %middle.block1450, label %vector.body1452, !llvm.loop !73

middle.block1450:                                 ; preds = %vector.body1452
  %cmp.n1462 = icmp eq i64 %88, %n.vec1458
  br i1 %cmp.n1462, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1450
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1458, %middle.block1450 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1450
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond991.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1454 = add i64 %indvar1453, 1
  br i1 %exitcond991.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header205

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond990.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond990.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !74

polly.loop_header205:                             ; preds = %polly.loop_exit242, %polly.loop_header199.preheader
  %97 = phi i1 [ true, %polly.loop_exit242 ], [ false, %polly.loop_header199.preheader ]
  %polly.loop_cond210 = phi i1 [ false, %polly.loop_exit242 ], [ true, %polly.loop_header199.preheader ]
  %polly.indvar208 = phi i64 [ 1, %polly.loop_exit242 ], [ 0, %polly.loop_header199.preheader ]
  %98 = mul nuw nsw i64 %polly.indvar208, 50
  %99 = icmp ult i64 %98, 30
  %100 = select i1 %99, i64 %98, i64 30
  %101 = add nuw nsw i64 %100, 49
  %polly.loop_guard.not = icmp sgt i64 %98, %101
  br i1 %97, label %polly.loop_header211.us, label %polly.loop_header205.split

polly.loop_header211.us:                          ; preds = %polly.loop_header205, %polly.loop_exit229.us
  %polly.indvar214.us = phi i64 [ %polly.indvar_next215.us, %polly.loop_exit229.us ], [ 0, %polly.loop_header205 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar214.us, 80
  br label %polly.loop_header217.us

polly.loop_header217.us:                          ; preds = %polly.loop_header211.us, %polly.loop_header217.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_header217.us ], [ 0, %polly.loop_header211.us ]
  %polly.access.mul.call1224.us = mul nuw nsw i64 %polly.indvar220.us, 60
  %polly.access.add.call1225.us = add nuw nsw i64 %polly.access.mul.call1224.us, %polly.indvar214.us
  %polly.access.call1226.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1225.us
  %polly.access.call1226.load.us = load double, double* %polly.access.call1226.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar220.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1226.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond985.not = icmp eq i64 %polly.indvar_next221.us, 50
  br i1 %exitcond985.not, label %polly.merge.loopexit.us, label %polly.loop_header217.us

polly.loop_header227.us:                          ; preds = %polly.merge.loopexit.us, %polly.loop_header227.us
  %polly.indvar230.us = phi i64 [ %polly.indvar_next231.us, %polly.loop_header227.us ], [ %98, %polly.merge.loopexit.us ]
  %polly.access.mul.call1234.us = mul nuw nsw i64 %polly.indvar230.us, 60
  %polly.access.add.call1235.us = add nuw nsw i64 %polly.access.mul.call1234.us, %polly.indvar214.us
  %polly.access.call1236.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1235.us
  %polly.access.call1236.load.us = load double, double* %polly.access.call1236.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1238.us = add nuw nsw i64 %polly.indvar230.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1239.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1238.us
  store double %polly.access.call1236.load.us, double* %polly.access.Packed_MemRef_call1239.us, align 8
  %polly.indvar_next231.us = add nuw nsw i64 %polly.indvar230.us, 1
  %polly.loop_cond232.not.not.us = icmp slt i64 %polly.indvar230.us, %101
  br i1 %polly.loop_cond232.not.not.us, label %polly.loop_header227.us, label %polly.loop_exit229.us

polly.loop_exit229.us:                            ; preds = %polly.loop_header227.us, %polly.merge.loopexit.us
  %polly.indvar_next215.us = add nuw nsw i64 %polly.indvar214.us, 1
  %exitcond986.not = icmp eq i64 %polly.indvar_next215.us, 60
  br i1 %exitcond986.not, label %polly.loop_header240.us.preheader, label %polly.loop_header211.us

polly.merge.loopexit.us:                          ; preds = %polly.loop_header217.us
  br i1 %polly.loop_guard.not, label %polly.loop_exit229.us, label %polly.loop_header227.us

polly.loop_header205.split:                       ; preds = %polly.loop_header205
  br i1 %polly.loop_guard.not, label %polly.loop_header240.us.preheader, label %polly.loop_header211

polly.loop_exit242:                               ; preds = %polly.loop_exit249.loopexit.us
  br i1 %polly.loop_cond210, label %polly.loop_header205, label %polly.loop_header211.1

polly.loop_header211:                             ; preds = %polly.loop_header205.split, %polly.loop_exit229
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit229 ], [ 0, %polly.loop_header205.split ]
  %polly.access.mul.Packed_MemRef_call1237 = mul nuw nsw i64 %polly.indvar214, 80
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_header227
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next215, 60
  br i1 %exitcond.not, label %polly.loop_header240.us.preheader, label %polly.loop_header211

polly.loop_header240.us.preheader:                ; preds = %polly.loop_exit229, %polly.loop_exit229.us, %polly.loop_header205.split
  %102 = mul nuw nsw i64 %polly.indvar208, -50
  %103 = icmp slt i64 %102, -30
  %104 = select i1 %103, i64 %102, i64 -30
  %105 = add nsw i64 %104, 79
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header240.us.preheader, %polly.loop_exit249.loopexit.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_exit249.loopexit.us ], [ 0, %polly.loop_header240.us.preheader ]
  %106 = shl nuw nsw i64 %polly.indvar243.us, 3
  %scevgep264.us = getelementptr i8, i8* %call2, i64 %106
  %polly.access.mul.Packed_MemRef_call1260.us = mul nuw nsw i64 %polly.indvar243.us, 80
  br label %polly.loop_header247.us

polly.loop_header247.us:                          ; preds = %polly.loop_exit256.us, %polly.loop_header240.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit256.us ], [ %98, %polly.loop_header240.us ]
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_exit256.us ], [ 0, %polly.loop_header240.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 49)
  %107 = add nuw nsw i64 %polly.indvar251.us, %98
  %108 = mul nuw nsw i64 %107, 480
  %scevgep265.us = getelementptr i8, i8* %scevgep264.us, i64 %108
  %scevgep265266.us = bitcast i8* %scevgep265.us to double*
  %_p_scalar_267.us = load double, double* %scevgep265266.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1273.us = add nuw nsw i64 %107, %polly.access.mul.Packed_MemRef_call1260.us
  %polly.access.Packed_MemRef_call1274.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1273.us
  %_p_scalar_275.us = load double, double* %polly.access.Packed_MemRef_call1274.us, align 8
  %109 = mul nuw nsw i64 %107, 640
  br label %polly.loop_header254.us

polly.loop_header254.us:                          ; preds = %polly.loop_header254.us, %polly.loop_header247.us
  %polly.indvar257.us = phi i64 [ 0, %polly.loop_header247.us ], [ %polly.indvar_next258.us, %polly.loop_header254.us ]
  %polly.access.add.Packed_MemRef_call1261.us = add nuw nsw i64 %polly.indvar257.us, %polly.access.mul.Packed_MemRef_call1260.us
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us
  %_p_scalar_263.us = load double, double* %polly.access.Packed_MemRef_call1262.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_267.us, %_p_scalar_263.us
  %110 = mul nuw nsw i64 %polly.indvar257.us, 480
  %scevgep269.us = getelementptr i8, i8* %scevgep264.us, i64 %110
  %scevgep269270.us = bitcast i8* %scevgep269.us to double*
  %_p_scalar_271.us = load double, double* %scevgep269270.us, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.us = fmul fast double %_p_scalar_275.us, %_p_scalar_271.us
  %111 = shl i64 %polly.indvar257.us, 3
  %112 = add i64 %111, %109
  %scevgep276.us = getelementptr i8, i8* %call, i64 %112
  %scevgep276277.us = bitcast i8* %scevgep276.us to double*
  %_p_scalar_278.us = load double, double* %scevgep276277.us, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_278.us
  store double %p_add42.i118.us, double* %scevgep276277.us, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next258.us = add nuw nsw i64 %polly.indvar257.us, 1
  %exitcond987.not = icmp eq i64 %polly.indvar257.us, %smin
  br i1 %exitcond987.not, label %polly.loop_exit256.us, label %polly.loop_header254.us

polly.loop_exit256.us:                            ; preds = %polly.loop_header254.us
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond988.not = icmp eq i64 %polly.indvar251.us, %105
  br i1 %exitcond988.not, label %polly.loop_exit249.loopexit.us, label %polly.loop_header247.us

polly.loop_exit249.loopexit.us:                   ; preds = %polly.loop_exit256.us
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond989.not = icmp eq i64 %polly.indvar_next244.us, 60
  br i1 %exitcond989.not, label %polly.loop_exit242, label %polly.loop_header240.us

polly.loop_header227:                             ; preds = %polly.loop_header211, %polly.loop_header227
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_header227 ], [ %98, %polly.loop_header211 ]
  %polly.access.mul.call1234 = mul nuw nsw i64 %polly.indvar230, 60
  %polly.access.add.call1235 = add nuw nsw i64 %polly.access.mul.call1234, %polly.indvar214
  %polly.access.call1236 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1235
  %polly.access.call1236.load = load double, double* %polly.access.call1236, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1238 = add nuw nsw i64 %polly.indvar230, %polly.access.mul.Packed_MemRef_call1237
  %polly.access.Packed_MemRef_call1239 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1238
  store double %polly.access.call1236.load, double* %polly.access.Packed_MemRef_call1239, align 8
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %polly.loop_cond232.not.not = icmp slt i64 %polly.indvar230, %101
  br i1 %polly.loop_cond232.not.not, label %polly.loop_header227, label %polly.loop_exit229

polly.start281:                                   ; preds = %kernel_syr2k.exit
  %malloccall283 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header367

polly.loop_header367:                             ; preds = %polly.loop_exit375, %polly.start281
  %indvar1427 = phi i64 [ %indvar.next1428, %polly.loop_exit375 ], [ 0, %polly.start281 ]
  %polly.indvar370 = phi i64 [ %polly.indvar_next371, %polly.loop_exit375 ], [ 1, %polly.start281 ]
  %113 = add i64 %indvar1427, 1
  %114 = mul nuw nsw i64 %polly.indvar370, 640
  %scevgep379 = getelementptr i8, i8* %call, i64 %114
  %min.iters.check1429 = icmp ult i64 %113, 4
  br i1 %min.iters.check1429, label %polly.loop_header373.preheader, label %vector.ph1430

vector.ph1430:                                    ; preds = %polly.loop_header367
  %n.vec1432 = and i64 %113, -4
  br label %vector.body1426

vector.body1426:                                  ; preds = %vector.body1426, %vector.ph1430
  %index1433 = phi i64 [ 0, %vector.ph1430 ], [ %index.next1434, %vector.body1426 ]
  %115 = shl nuw nsw i64 %index1433, 3
  %116 = getelementptr i8, i8* %scevgep379, i64 %115
  %117 = bitcast i8* %116 to <4 x double>*
  %wide.load1437 = load <4 x double>, <4 x double>* %117, align 8, !alias.scope !78, !noalias !80
  %118 = fmul fast <4 x double> %wide.load1437, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %119 = bitcast i8* %116 to <4 x double>*
  store <4 x double> %118, <4 x double>* %119, align 8, !alias.scope !78, !noalias !80
  %index.next1434 = add i64 %index1433, 4
  %120 = icmp eq i64 %index.next1434, %n.vec1432
  br i1 %120, label %middle.block1424, label %vector.body1426, !llvm.loop !84

middle.block1424:                                 ; preds = %vector.body1426
  %cmp.n1436 = icmp eq i64 %113, %n.vec1432
  br i1 %cmp.n1436, label %polly.loop_exit375, label %polly.loop_header373.preheader

polly.loop_header373.preheader:                   ; preds = %polly.loop_header367, %middle.block1424
  %polly.indvar376.ph = phi i64 [ 0, %polly.loop_header367 ], [ %n.vec1432, %middle.block1424 ]
  br label %polly.loop_header373

polly.loop_exit375:                               ; preds = %polly.loop_header373, %middle.block1424
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %exitcond1003.not = icmp eq i64 %polly.indvar_next371, 80
  %indvar.next1428 = add i64 %indvar1427, 1
  br i1 %exitcond1003.not, label %polly.loop_header383.preheader, label %polly.loop_header367

polly.loop_header383.preheader:                   ; preds = %polly.loop_exit375
  %Packed_MemRef_call1284 = bitcast i8* %malloccall283 to double*
  br label %polly.loop_header389

polly.loop_header373:                             ; preds = %polly.loop_header373.preheader, %polly.loop_header373
  %polly.indvar376 = phi i64 [ %polly.indvar_next377, %polly.loop_header373 ], [ %polly.indvar376.ph, %polly.loop_header373.preheader ]
  %121 = shl nuw nsw i64 %polly.indvar376, 3
  %scevgep380 = getelementptr i8, i8* %scevgep379, i64 %121
  %scevgep380381 = bitcast i8* %scevgep380 to double*
  %_p_scalar_382 = load double, double* %scevgep380381, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_382, 1.200000e+00
  store double %p_mul.i57, double* %scevgep380381, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond1002.not = icmp eq i64 %polly.indvar_next377, %polly.indvar370
  br i1 %exitcond1002.not, label %polly.loop_exit375, label %polly.loop_header373, !llvm.loop !85

polly.loop_header389:                             ; preds = %polly.loop_exit432, %polly.loop_header383.preheader
  %122 = phi i1 [ true, %polly.loop_exit432 ], [ false, %polly.loop_header383.preheader ]
  %polly.loop_cond394 = phi i1 [ false, %polly.loop_exit432 ], [ true, %polly.loop_header383.preheader ]
  %polly.indvar392 = phi i64 [ 1, %polly.loop_exit432 ], [ 0, %polly.loop_header383.preheader ]
  %123 = mul nuw nsw i64 %polly.indvar392, 50
  %124 = icmp ult i64 %123, 30
  %125 = select i1 %124, i64 %123, i64 30
  %126 = add nuw nsw i64 %125, 49
  %polly.loop_guard419.not = icmp sgt i64 %123, %126
  br i1 %122, label %polly.loop_header395.us, label %polly.loop_header389.split

polly.loop_header395.us:                          ; preds = %polly.loop_header389, %polly.loop_exit418.us
  %polly.indvar398.us = phi i64 [ %polly.indvar_next399.us, %polly.loop_exit418.us ], [ 0, %polly.loop_header389 ]
  %polly.access.mul.Packed_MemRef_call1284.us = mul nuw nsw i64 %polly.indvar398.us, 80
  br label %polly.loop_header405.us

polly.loop_header405.us:                          ; preds = %polly.loop_header395.us, %polly.loop_header405.us
  %polly.indvar408.us = phi i64 [ %polly.indvar_next409.us, %polly.loop_header405.us ], [ 0, %polly.loop_header395.us ]
  %polly.access.mul.call1412.us = mul nuw nsw i64 %polly.indvar408.us, 60
  %polly.access.add.call1413.us = add nuw nsw i64 %polly.access.mul.call1412.us, %polly.indvar398.us
  %polly.access.call1414.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1413.us
  %polly.access.call1414.load.us = load double, double* %polly.access.call1414.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1284.us = add nuw nsw i64 %polly.indvar408.us, %polly.access.mul.Packed_MemRef_call1284.us
  %polly.access.Packed_MemRef_call1284.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284.us
  store double %polly.access.call1414.load.us, double* %polly.access.Packed_MemRef_call1284.us, align 8
  %polly.indvar_next409.us = add nuw nsw i64 %polly.indvar408.us, 1
  %exitcond993.not = icmp eq i64 %polly.indvar_next409.us, 50
  br i1 %exitcond993.not, label %polly.merge402.loopexit.us, label %polly.loop_header405.us

polly.loop_header416.us:                          ; preds = %polly.merge402.loopexit.us, %polly.loop_header416.us
  %polly.indvar420.us = phi i64 [ %polly.indvar_next421.us, %polly.loop_header416.us ], [ %123, %polly.merge402.loopexit.us ]
  %polly.access.mul.call1424.us = mul nuw nsw i64 %polly.indvar420.us, 60
  %polly.access.add.call1425.us = add nuw nsw i64 %polly.access.mul.call1424.us, %polly.indvar398.us
  %polly.access.call1426.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1425.us
  %polly.access.call1426.load.us = load double, double* %polly.access.call1426.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1284428.us = add nuw nsw i64 %polly.indvar420.us, %polly.access.mul.Packed_MemRef_call1284.us
  %polly.access.Packed_MemRef_call1284429.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284428.us
  store double %polly.access.call1426.load.us, double* %polly.access.Packed_MemRef_call1284429.us, align 8
  %polly.indvar_next421.us = add nuw nsw i64 %polly.indvar420.us, 1
  %polly.loop_cond422.not.not.us = icmp slt i64 %polly.indvar420.us, %126
  br i1 %polly.loop_cond422.not.not.us, label %polly.loop_header416.us, label %polly.loop_exit418.us

polly.loop_exit418.us:                            ; preds = %polly.loop_header416.us, %polly.merge402.loopexit.us
  %polly.indvar_next399.us = add nuw nsw i64 %polly.indvar398.us, 1
  %exitcond994.not = icmp eq i64 %polly.indvar_next399.us, 60
  br i1 %exitcond994.not, label %polly.loop_header430.us.preheader, label %polly.loop_header395.us

polly.merge402.loopexit.us:                       ; preds = %polly.loop_header405.us
  br i1 %polly.loop_guard419.not, label %polly.loop_exit418.us, label %polly.loop_header416.us

polly.loop_header389.split:                       ; preds = %polly.loop_header389
  br i1 %polly.loop_guard419.not, label %polly.loop_header430.us.preheader, label %polly.loop_header395

polly.loop_exit432:                               ; preds = %polly.loop_exit439.loopexit.us
  br i1 %polly.loop_cond394, label %polly.loop_header389, label %polly.loop_header395.1

polly.loop_header395:                             ; preds = %polly.loop_header389.split, %polly.loop_exit418
  %polly.indvar398 = phi i64 [ %polly.indvar_next399, %polly.loop_exit418 ], [ 0, %polly.loop_header389.split ]
  %polly.access.mul.Packed_MemRef_call1284427 = mul nuw nsw i64 %polly.indvar398, 80
  br label %polly.loop_header416

polly.loop_exit418:                               ; preds = %polly.loop_header416
  %polly.indvar_next399 = add nuw nsw i64 %polly.indvar398, 1
  %exitcond992.not = icmp eq i64 %polly.indvar_next399, 60
  br i1 %exitcond992.not, label %polly.loop_header430.us.preheader, label %polly.loop_header395

polly.loop_header430.us.preheader:                ; preds = %polly.loop_exit418, %polly.loop_exit418.us, %polly.loop_header389.split
  %127 = mul nuw nsw i64 %polly.indvar392, -50
  %128 = icmp slt i64 %127, -30
  %129 = select i1 %128, i64 %127, i64 -30
  %130 = add nsw i64 %129, 79
  br label %polly.loop_header430.us

polly.loop_header430.us:                          ; preds = %polly.loop_header430.us.preheader, %polly.loop_exit439.loopexit.us
  %polly.indvar433.us = phi i64 [ %polly.indvar_next434.us, %polly.loop_exit439.loopexit.us ], [ 0, %polly.loop_header430.us.preheader ]
  %131 = shl nuw nsw i64 %polly.indvar433.us, 3
  %scevgep454.us = getelementptr i8, i8* %call2, i64 %131
  %polly.access.mul.Packed_MemRef_call1284450.us = mul nuw nsw i64 %polly.indvar433.us, 80
  br label %polly.loop_header437.us

polly.loop_header437.us:                          ; preds = %polly.loop_exit446.us, %polly.loop_header430.us
  %indvars.iv995 = phi i64 [ %indvars.iv.next996, %polly.loop_exit446.us ], [ %123, %polly.loop_header430.us ]
  %polly.indvar441.us = phi i64 [ %polly.indvar_next442.us, %polly.loop_exit446.us ], [ 0, %polly.loop_header430.us ]
  %smin997 = call i64 @llvm.smin.i64(i64 %indvars.iv995, i64 49)
  %132 = add nuw nsw i64 %polly.indvar441.us, %123
  %133 = mul nuw nsw i64 %132, 480
  %scevgep455.us = getelementptr i8, i8* %scevgep454.us, i64 %133
  %scevgep455456.us = bitcast i8* %scevgep455.us to double*
  %_p_scalar_457.us = load double, double* %scevgep455456.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1284463.us = add nuw nsw i64 %132, %polly.access.mul.Packed_MemRef_call1284450.us
  %polly.access.Packed_MemRef_call1284464.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284463.us
  %_p_scalar_465.us = load double, double* %polly.access.Packed_MemRef_call1284464.us, align 8
  %134 = mul nuw nsw i64 %132, 640
  br label %polly.loop_header444.us

polly.loop_header444.us:                          ; preds = %polly.loop_header444.us, %polly.loop_header437.us
  %polly.indvar447.us = phi i64 [ 0, %polly.loop_header437.us ], [ %polly.indvar_next448.us, %polly.loop_header444.us ]
  %polly.access.add.Packed_MemRef_call1284451.us = add nuw nsw i64 %polly.indvar447.us, %polly.access.mul.Packed_MemRef_call1284450.us
  %polly.access.Packed_MemRef_call1284452.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284451.us
  %_p_scalar_453.us = load double, double* %polly.access.Packed_MemRef_call1284452.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_457.us, %_p_scalar_453.us
  %135 = mul nuw nsw i64 %polly.indvar447.us, 480
  %scevgep459.us = getelementptr i8, i8* %scevgep454.us, i64 %135
  %scevgep459460.us = bitcast i8* %scevgep459.us to double*
  %_p_scalar_461.us = load double, double* %scevgep459460.us, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.us = fmul fast double %_p_scalar_465.us, %_p_scalar_461.us
  %136 = shl i64 %polly.indvar447.us, 3
  %137 = add i64 %136, %134
  %scevgep466.us = getelementptr i8, i8* %call, i64 %137
  %scevgep466467.us = bitcast i8* %scevgep466.us to double*
  %_p_scalar_468.us = load double, double* %scevgep466467.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_468.us
  store double %p_add42.i79.us, double* %scevgep466467.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next448.us = add nuw nsw i64 %polly.indvar447.us, 1
  %exitcond999.not = icmp eq i64 %polly.indvar447.us, %smin997
  br i1 %exitcond999.not, label %polly.loop_exit446.us, label %polly.loop_header444.us

polly.loop_exit446.us:                            ; preds = %polly.loop_header444.us
  %polly.indvar_next442.us = add nuw nsw i64 %polly.indvar441.us, 1
  %indvars.iv.next996 = add nuw nsw i64 %indvars.iv995, 1
  %exitcond1000.not = icmp eq i64 %polly.indvar441.us, %130
  br i1 %exitcond1000.not, label %polly.loop_exit439.loopexit.us, label %polly.loop_header437.us

polly.loop_exit439.loopexit.us:                   ; preds = %polly.loop_exit446.us
  %polly.indvar_next434.us = add nuw nsw i64 %polly.indvar433.us, 1
  %exitcond1001.not = icmp eq i64 %polly.indvar_next434.us, 60
  br i1 %exitcond1001.not, label %polly.loop_exit432, label %polly.loop_header430.us

polly.loop_header416:                             ; preds = %polly.loop_header395, %polly.loop_header416
  %polly.indvar420 = phi i64 [ %polly.indvar_next421, %polly.loop_header416 ], [ %123, %polly.loop_header395 ]
  %polly.access.mul.call1424 = mul nuw nsw i64 %polly.indvar420, 60
  %polly.access.add.call1425 = add nuw nsw i64 %polly.access.mul.call1424, %polly.indvar398
  %polly.access.call1426 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1425
  %polly.access.call1426.load = load double, double* %polly.access.call1426, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1284428 = add nuw nsw i64 %polly.indvar420, %polly.access.mul.Packed_MemRef_call1284427
  %polly.access.Packed_MemRef_call1284429 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284428
  store double %polly.access.call1426.load, double* %polly.access.Packed_MemRef_call1284429, align 8
  %polly.indvar_next421 = add nuw nsw i64 %polly.indvar420, 1
  %polly.loop_cond422.not.not = icmp slt i64 %polly.indvar420, %126
  br i1 %polly.loop_cond422.not.not, label %polly.loop_header416, label %polly.loop_exit418

polly.start471:                                   ; preds = %init_array.exit
  %malloccall473 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header557

polly.loop_header557:                             ; preds = %polly.loop_exit565, %polly.start471
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit565 ], [ 0, %polly.start471 ]
  %polly.indvar560 = phi i64 [ %polly.indvar_next561, %polly.loop_exit565 ], [ 1, %polly.start471 ]
  %138 = add i64 %indvar, 1
  %139 = mul nuw nsw i64 %polly.indvar560, 640
  %scevgep569 = getelementptr i8, i8* %call, i64 %139
  %min.iters.check1403 = icmp ult i64 %138, 4
  br i1 %min.iters.check1403, label %polly.loop_header563.preheader, label %vector.ph1404

vector.ph1404:                                    ; preds = %polly.loop_header557
  %n.vec1406 = and i64 %138, -4
  br label %vector.body1402

vector.body1402:                                  ; preds = %vector.body1402, %vector.ph1404
  %index1407 = phi i64 [ 0, %vector.ph1404 ], [ %index.next1408, %vector.body1402 ]
  %140 = shl nuw nsw i64 %index1407, 3
  %141 = getelementptr i8, i8* %scevgep569, i64 %140
  %142 = bitcast i8* %141 to <4 x double>*
  %wide.load1411 = load <4 x double>, <4 x double>* %142, align 8, !alias.scope !88, !noalias !90
  %143 = fmul fast <4 x double> %wide.load1411, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %144 = bitcast i8* %141 to <4 x double>*
  store <4 x double> %143, <4 x double>* %144, align 8, !alias.scope !88, !noalias !90
  %index.next1408 = add i64 %index1407, 4
  %145 = icmp eq i64 %index.next1408, %n.vec1406
  br i1 %145, label %middle.block1400, label %vector.body1402, !llvm.loop !94

middle.block1400:                                 ; preds = %vector.body1402
  %cmp.n1410 = icmp eq i64 %138, %n.vec1406
  br i1 %cmp.n1410, label %polly.loop_exit565, label %polly.loop_header563.preheader

polly.loop_header563.preheader:                   ; preds = %polly.loop_header557, %middle.block1400
  %polly.indvar566.ph = phi i64 [ 0, %polly.loop_header557 ], [ %n.vec1406, %middle.block1400 ]
  br label %polly.loop_header563

polly.loop_exit565:                               ; preds = %polly.loop_header563, %middle.block1400
  %polly.indvar_next561 = add nuw nsw i64 %polly.indvar560, 1
  %exitcond1015.not = icmp eq i64 %polly.indvar_next561, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1015.not, label %polly.loop_header573.preheader, label %polly.loop_header557

polly.loop_header573.preheader:                   ; preds = %polly.loop_exit565
  %Packed_MemRef_call1474 = bitcast i8* %malloccall473 to double*
  br label %polly.loop_header579

polly.loop_header563:                             ; preds = %polly.loop_header563.preheader, %polly.loop_header563
  %polly.indvar566 = phi i64 [ %polly.indvar_next567, %polly.loop_header563 ], [ %polly.indvar566.ph, %polly.loop_header563.preheader ]
  %146 = shl nuw nsw i64 %polly.indvar566, 3
  %scevgep570 = getelementptr i8, i8* %scevgep569, i64 %146
  %scevgep570571 = bitcast i8* %scevgep570 to double*
  %_p_scalar_572 = load double, double* %scevgep570571, align 8, !alias.scope !88, !noalias !90
  %p_mul.i = fmul fast double %_p_scalar_572, 1.200000e+00
  store double %p_mul.i, double* %scevgep570571, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next567 = add nuw nsw i64 %polly.indvar566, 1
  %exitcond1014.not = icmp eq i64 %polly.indvar_next567, %polly.indvar560
  br i1 %exitcond1014.not, label %polly.loop_exit565, label %polly.loop_header563, !llvm.loop !95

polly.loop_header579:                             ; preds = %polly.loop_exit622, %polly.loop_header573.preheader
  %147 = phi i1 [ true, %polly.loop_exit622 ], [ false, %polly.loop_header573.preheader ]
  %polly.loop_cond584 = phi i1 [ false, %polly.loop_exit622 ], [ true, %polly.loop_header573.preheader ]
  %polly.indvar582 = phi i64 [ 1, %polly.loop_exit622 ], [ 0, %polly.loop_header573.preheader ]
  %148 = mul nuw nsw i64 %polly.indvar582, 50
  %149 = icmp ult i64 %148, 30
  %150 = select i1 %149, i64 %148, i64 30
  %151 = add nuw nsw i64 %150, 49
  %polly.loop_guard609.not = icmp sgt i64 %148, %151
  br i1 %147, label %polly.loop_header585.us, label %polly.loop_header579.split

polly.loop_header585.us:                          ; preds = %polly.loop_header579, %polly.loop_exit608.us
  %polly.indvar588.us = phi i64 [ %polly.indvar_next589.us, %polly.loop_exit608.us ], [ 0, %polly.loop_header579 ]
  %polly.access.mul.Packed_MemRef_call1474.us = mul nuw nsw i64 %polly.indvar588.us, 80
  br label %polly.loop_header595.us

polly.loop_header595.us:                          ; preds = %polly.loop_header585.us, %polly.loop_header595.us
  %polly.indvar598.us = phi i64 [ %polly.indvar_next599.us, %polly.loop_header595.us ], [ 0, %polly.loop_header585.us ]
  %polly.access.mul.call1602.us = mul nuw nsw i64 %polly.indvar598.us, 60
  %polly.access.add.call1603.us = add nuw nsw i64 %polly.access.mul.call1602.us, %polly.indvar588.us
  %polly.access.call1604.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1603.us
  %polly.access.call1604.load.us = load double, double* %polly.access.call1604.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.us = add nuw nsw i64 %polly.indvar598.us, %polly.access.mul.Packed_MemRef_call1474.us
  %polly.access.Packed_MemRef_call1474.us = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.us
  store double %polly.access.call1604.load.us, double* %polly.access.Packed_MemRef_call1474.us, align 8
  %polly.indvar_next599.us = add nuw nsw i64 %polly.indvar598.us, 1
  %exitcond1005.not = icmp eq i64 %polly.indvar_next599.us, 50
  br i1 %exitcond1005.not, label %polly.merge592.loopexit.us, label %polly.loop_header595.us

polly.loop_header606.us:                          ; preds = %polly.merge592.loopexit.us, %polly.loop_header606.us
  %polly.indvar610.us = phi i64 [ %polly.indvar_next611.us, %polly.loop_header606.us ], [ %148, %polly.merge592.loopexit.us ]
  %polly.access.mul.call1614.us = mul nuw nsw i64 %polly.indvar610.us, 60
  %polly.access.add.call1615.us = add nuw nsw i64 %polly.access.mul.call1614.us, %polly.indvar588.us
  %polly.access.call1616.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1615.us
  %polly.access.call1616.load.us = load double, double* %polly.access.call1616.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474618.us = add nuw nsw i64 %polly.indvar610.us, %polly.access.mul.Packed_MemRef_call1474.us
  %polly.access.Packed_MemRef_call1474619.us = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474618.us
  store double %polly.access.call1616.load.us, double* %polly.access.Packed_MemRef_call1474619.us, align 8
  %polly.indvar_next611.us = add nuw nsw i64 %polly.indvar610.us, 1
  %polly.loop_cond612.not.not.us = icmp slt i64 %polly.indvar610.us, %151
  br i1 %polly.loop_cond612.not.not.us, label %polly.loop_header606.us, label %polly.loop_exit608.us

polly.loop_exit608.us:                            ; preds = %polly.loop_header606.us, %polly.merge592.loopexit.us
  %polly.indvar_next589.us = add nuw nsw i64 %polly.indvar588.us, 1
  %exitcond1006.not = icmp eq i64 %polly.indvar_next589.us, 60
  br i1 %exitcond1006.not, label %polly.loop_header620.us.preheader, label %polly.loop_header585.us

polly.merge592.loopexit.us:                       ; preds = %polly.loop_header595.us
  br i1 %polly.loop_guard609.not, label %polly.loop_exit608.us, label %polly.loop_header606.us

polly.loop_header579.split:                       ; preds = %polly.loop_header579
  br i1 %polly.loop_guard609.not, label %polly.loop_header620.us.preheader, label %polly.loop_header585

polly.loop_exit622:                               ; preds = %polly.loop_exit629.loopexit.us
  br i1 %polly.loop_cond584, label %polly.loop_header579, label %polly.loop_header585.1

polly.loop_header585:                             ; preds = %polly.loop_header579.split, %polly.loop_exit608
  %polly.indvar588 = phi i64 [ %polly.indvar_next589, %polly.loop_exit608 ], [ 0, %polly.loop_header579.split ]
  %polly.access.mul.Packed_MemRef_call1474617 = mul nuw nsw i64 %polly.indvar588, 80
  br label %polly.loop_header606

polly.loop_exit608:                               ; preds = %polly.loop_header606
  %polly.indvar_next589 = add nuw nsw i64 %polly.indvar588, 1
  %exitcond1004.not = icmp eq i64 %polly.indvar_next589, 60
  br i1 %exitcond1004.not, label %polly.loop_header620.us.preheader, label %polly.loop_header585

polly.loop_header620.us.preheader:                ; preds = %polly.loop_exit608, %polly.loop_exit608.us, %polly.loop_header579.split
  %152 = mul nuw nsw i64 %polly.indvar582, -50
  %153 = icmp slt i64 %152, -30
  %154 = select i1 %153, i64 %152, i64 -30
  %155 = add nsw i64 %154, 79
  br label %polly.loop_header620.us

polly.loop_header620.us:                          ; preds = %polly.loop_header620.us.preheader, %polly.loop_exit629.loopexit.us
  %polly.indvar623.us = phi i64 [ %polly.indvar_next624.us, %polly.loop_exit629.loopexit.us ], [ 0, %polly.loop_header620.us.preheader ]
  %156 = shl nuw nsw i64 %polly.indvar623.us, 3
  %scevgep644.us = getelementptr i8, i8* %call2, i64 %156
  %polly.access.mul.Packed_MemRef_call1474640.us = mul nuw nsw i64 %polly.indvar623.us, 80
  br label %polly.loop_header627.us

polly.loop_header627.us:                          ; preds = %polly.loop_exit636.us, %polly.loop_header620.us
  %indvars.iv1007 = phi i64 [ %indvars.iv.next1008, %polly.loop_exit636.us ], [ %148, %polly.loop_header620.us ]
  %polly.indvar631.us = phi i64 [ %polly.indvar_next632.us, %polly.loop_exit636.us ], [ 0, %polly.loop_header620.us ]
  %smin1009 = call i64 @llvm.smin.i64(i64 %indvars.iv1007, i64 49)
  %157 = add nuw nsw i64 %polly.indvar631.us, %148
  %158 = mul nuw nsw i64 %157, 480
  %scevgep645.us = getelementptr i8, i8* %scevgep644.us, i64 %158
  %scevgep645646.us = bitcast i8* %scevgep645.us to double*
  %_p_scalar_647.us = load double, double* %scevgep645646.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474653.us = add nuw nsw i64 %157, %polly.access.mul.Packed_MemRef_call1474640.us
  %polly.access.Packed_MemRef_call1474654.us = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474653.us
  %_p_scalar_655.us = load double, double* %polly.access.Packed_MemRef_call1474654.us, align 8
  %159 = mul nuw nsw i64 %157, 640
  br label %polly.loop_header634.us

polly.loop_header634.us:                          ; preds = %polly.loop_header634.us, %polly.loop_header627.us
  %polly.indvar637.us = phi i64 [ 0, %polly.loop_header627.us ], [ %polly.indvar_next638.us, %polly.loop_header634.us ]
  %polly.access.add.Packed_MemRef_call1474641.us = add nuw nsw i64 %polly.indvar637.us, %polly.access.mul.Packed_MemRef_call1474640.us
  %polly.access.Packed_MemRef_call1474642.us = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474641.us
  %_p_scalar_643.us = load double, double* %polly.access.Packed_MemRef_call1474642.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_647.us, %_p_scalar_643.us
  %160 = mul nuw nsw i64 %polly.indvar637.us, 480
  %scevgep649.us = getelementptr i8, i8* %scevgep644.us, i64 %160
  %scevgep649650.us = bitcast i8* %scevgep649.us to double*
  %_p_scalar_651.us = load double, double* %scevgep649650.us, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.us = fmul fast double %_p_scalar_655.us, %_p_scalar_651.us
  %161 = shl i64 %polly.indvar637.us, 3
  %162 = add i64 %161, %159
  %scevgep656.us = getelementptr i8, i8* %call, i64 %162
  %scevgep656657.us = bitcast i8* %scevgep656.us to double*
  %_p_scalar_658.us = load double, double* %scevgep656657.us, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_658.us
  store double %p_add42.i.us, double* %scevgep656657.us, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next638.us = add nuw nsw i64 %polly.indvar637.us, 1
  %exitcond1011.not = icmp eq i64 %polly.indvar637.us, %smin1009
  br i1 %exitcond1011.not, label %polly.loop_exit636.us, label %polly.loop_header634.us

polly.loop_exit636.us:                            ; preds = %polly.loop_header634.us
  %polly.indvar_next632.us = add nuw nsw i64 %polly.indvar631.us, 1
  %indvars.iv.next1008 = add nuw nsw i64 %indvars.iv1007, 1
  %exitcond1012.not = icmp eq i64 %polly.indvar631.us, %155
  br i1 %exitcond1012.not, label %polly.loop_exit629.loopexit.us, label %polly.loop_header627.us

polly.loop_exit629.loopexit.us:                   ; preds = %polly.loop_exit636.us
  %polly.indvar_next624.us = add nuw nsw i64 %polly.indvar623.us, 1
  %exitcond1013.not = icmp eq i64 %polly.indvar_next624.us, 60
  br i1 %exitcond1013.not, label %polly.loop_exit622, label %polly.loop_header620.us

polly.loop_header606:                             ; preds = %polly.loop_header585, %polly.loop_header606
  %polly.indvar610 = phi i64 [ %polly.indvar_next611, %polly.loop_header606 ], [ %148, %polly.loop_header585 ]
  %polly.access.mul.call1614 = mul nuw nsw i64 %polly.indvar610, 60
  %polly.access.add.call1615 = add nuw nsw i64 %polly.access.mul.call1614, %polly.indvar588
  %polly.access.call1616 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1615
  %polly.access.call1616.load = load double, double* %polly.access.call1616, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474618 = add nuw nsw i64 %polly.indvar610, %polly.access.mul.Packed_MemRef_call1474617
  %polly.access.Packed_MemRef_call1474619 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474618
  store double %polly.access.call1616.load, double* %polly.access.Packed_MemRef_call1474619, align 8
  %polly.indvar_next611 = add nuw nsw i64 %polly.indvar610, 1
  %polly.loop_cond612.not.not = icmp slt i64 %polly.indvar610, %151
  br i1 %polly.loop_cond612.not.not, label %polly.loop_header606, label %polly.loop_exit608

polly.loop_header797:                             ; preds = %entry, %polly.loop_exit805
  %polly.indvar800 = phi i64 [ %polly.indvar_next801, %polly.loop_exit805 ], [ 0, %entry ]
  %163 = mul nuw nsw i64 %polly.indvar800, 640
  %164 = trunc i64 %polly.indvar800 to i32
  %broadcast.splatinsert1134 = insertelement <4 x i32> poison, i32 %164, i32 0
  %broadcast.splat1135 = shufflevector <4 x i32> %broadcast.splatinsert1134, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1124

vector.body1124:                                  ; preds = %vector.body1124, %polly.loop_header797
  %index1126 = phi i64 [ 0, %polly.loop_header797 ], [ %index.next1127, %vector.body1124 ]
  %vec.ind1132 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header797 ], [ %vec.ind.next1133, %vector.body1124 ]
  %165 = mul <4 x i32> %vec.ind1132, %broadcast.splat1135
  %166 = add <4 x i32> %165, <i32 3, i32 3, i32 3, i32 3>
  %167 = urem <4 x i32> %166, <i32 80, i32 80, i32 80, i32 80>
  %168 = sitofp <4 x i32> %167 to <4 x double>
  %169 = fmul fast <4 x double> %168, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %170 = shl i64 %index1126, 3
  %171 = add nuw nsw i64 %170, %163
  %172 = getelementptr i8, i8* %call, i64 %171
  %173 = bitcast i8* %172 to <4 x double>*
  store <4 x double> %169, <4 x double>* %173, align 8, !alias.scope !98, !noalias !100
  %index.next1127 = add i64 %index1126, 4
  %vec.ind.next1133 = add <4 x i32> %vec.ind1132, <i32 4, i32 4, i32 4, i32 4>
  %174 = icmp eq i64 %index.next1127, 32
  br i1 %174, label %polly.loop_exit805, label %vector.body1124, !llvm.loop !103

polly.loop_exit805:                               ; preds = %vector.body1124
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar_next801, 32
  br i1 %exitcond1035.not, label %polly.loop_header797.1, label %polly.loop_header797

polly.loop_header824:                             ; preds = %polly.loop_exit805.2.2, %polly.loop_exit832
  %polly.indvar827 = phi i64 [ %polly.indvar_next828, %polly.loop_exit832 ], [ 0, %polly.loop_exit805.2.2 ]
  %175 = mul nuw nsw i64 %polly.indvar827, 480
  %176 = trunc i64 %polly.indvar827 to i32
  %broadcast.splatinsert1248 = insertelement <4 x i32> poison, i32 %176, i32 0
  %broadcast.splat1249 = shufflevector <4 x i32> %broadcast.splatinsert1248, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1238

vector.body1238:                                  ; preds = %vector.body1238, %polly.loop_header824
  %index1240 = phi i64 [ 0, %polly.loop_header824 ], [ %index.next1241, %vector.body1238 ]
  %vec.ind1246 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header824 ], [ %vec.ind.next1247, %vector.body1238 ]
  %177 = mul <4 x i32> %vec.ind1246, %broadcast.splat1249
  %178 = add <4 x i32> %177, <i32 2, i32 2, i32 2, i32 2>
  %179 = urem <4 x i32> %178, <i32 60, i32 60, i32 60, i32 60>
  %180 = sitofp <4 x i32> %179 to <4 x double>
  %181 = fmul fast <4 x double> %180, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %182 = shl i64 %index1240, 3
  %183 = add i64 %182, %175
  %184 = getelementptr i8, i8* %call2, i64 %183
  %185 = bitcast i8* %184 to <4 x double>*
  store <4 x double> %181, <4 x double>* %185, align 8, !alias.scope !102, !noalias !104
  %index.next1241 = add i64 %index1240, 4
  %vec.ind.next1247 = add <4 x i32> %vec.ind1246, <i32 4, i32 4, i32 4, i32 4>
  %186 = icmp eq i64 %index.next1241, 32
  br i1 %186, label %polly.loop_exit832, label %vector.body1238, !llvm.loop !105

polly.loop_exit832:                               ; preds = %vector.body1238
  %polly.indvar_next828 = add nuw nsw i64 %polly.indvar827, 1
  %exitcond1026.not = icmp eq i64 %polly.indvar_next828, 32
  br i1 %exitcond1026.not, label %polly.loop_header824.1, label %polly.loop_header824

polly.loop_header850:                             ; preds = %polly.loop_exit832.1.2, %polly.loop_exit858
  %polly.indvar853 = phi i64 [ %polly.indvar_next854, %polly.loop_exit858 ], [ 0, %polly.loop_exit832.1.2 ]
  %187 = mul nuw nsw i64 %polly.indvar853, 480
  %188 = trunc i64 %polly.indvar853 to i32
  %broadcast.splatinsert1326 = insertelement <4 x i32> poison, i32 %188, i32 0
  %broadcast.splat1327 = shufflevector <4 x i32> %broadcast.splatinsert1326, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1316

vector.body1316:                                  ; preds = %vector.body1316, %polly.loop_header850
  %index1318 = phi i64 [ 0, %polly.loop_header850 ], [ %index.next1319, %vector.body1316 ]
  %vec.ind1324 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header850 ], [ %vec.ind.next1325, %vector.body1316 ]
  %189 = mul <4 x i32> %vec.ind1324, %broadcast.splat1327
  %190 = add <4 x i32> %189, <i32 1, i32 1, i32 1, i32 1>
  %191 = urem <4 x i32> %190, <i32 80, i32 80, i32 80, i32 80>
  %192 = sitofp <4 x i32> %191 to <4 x double>
  %193 = fmul fast <4 x double> %192, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %194 = shl i64 %index1318, 3
  %195 = add i64 %194, %187
  %196 = getelementptr i8, i8* %call1, i64 %195
  %197 = bitcast i8* %196 to <4 x double>*
  store <4 x double> %193, <4 x double>* %197, align 8, !alias.scope !101, !noalias !106
  %index.next1319 = add i64 %index1318, 4
  %vec.ind.next1325 = add <4 x i32> %vec.ind1324, <i32 4, i32 4, i32 4, i32 4>
  %198 = icmp eq i64 %index.next1319, 32
  br i1 %198, label %polly.loop_exit858, label %vector.body1316, !llvm.loop !107

polly.loop_exit858:                               ; preds = %vector.body1316
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar_next854, 32
  br i1 %exitcond1020.not, label %polly.loop_header850.1, label %polly.loop_header850

polly.loop_header211.1:                           ; preds = %polly.loop_exit242, %polly.loop_exit229.1
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit229.1 ], [ 0, %polly.loop_exit242 ]
  %polly.access.mul.Packed_MemRef_call1237.1 = mul nuw nsw i64 %polly.indvar214.1, 80
  br label %polly.loop_header227.1

polly.loop_header227.1:                           ; preds = %polly.loop_header227.1, %polly.loop_header211.1
  %polly.indvar230.1 = phi i64 [ %polly.indvar_next231.1, %polly.loop_header227.1 ], [ 0, %polly.loop_header211.1 ]
  %199 = mul nuw nsw i64 %polly.indvar230.1, 60
  %polly.access.mul.call1234.1 = add nuw nsw i64 %199, 3000
  %polly.access.add.call1235.1 = add nuw nsw i64 %polly.access.mul.call1234.1, %polly.indvar214.1
  %polly.access.call1236.1 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1235.1
  %polly.access.call1236.load.1 = load double, double* %polly.access.call1236.1, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1238.1 = add nuw nsw i64 %polly.indvar230.1, %polly.access.mul.Packed_MemRef_call1237.1
  %polly.access.Packed_MemRef_call1239.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1238.1
  store double %polly.access.call1236.load.1, double* %polly.access.Packed_MemRef_call1239.1, align 8
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %polly.loop_cond232.not.not.1 = icmp ult i64 %polly.indvar230.1, 29
  br i1 %polly.loop_cond232.not.not.1, label %polly.loop_header227.1, label %polly.loop_exit229.1

polly.loop_exit229.1:                             ; preds = %polly.loop_header227.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next215.1, 60
  br i1 %exitcond.1.not, label %polly.loop_header240.us.1, label %polly.loop_header211.1

polly.loop_header240.us.1:                        ; preds = %polly.loop_exit229.1, %polly.loop_exit249.loopexit.us.1
  %polly.indvar243.us.1 = phi i64 [ %polly.indvar_next244.us.1, %polly.loop_exit249.loopexit.us.1 ], [ 0, %polly.loop_exit229.1 ]
  %200 = shl nuw nsw i64 %polly.indvar243.us.1, 3
  %scevgep264.us.1 = getelementptr i8, i8* %call2, i64 %200
  %polly.access.mul.Packed_MemRef_call1260.us.1 = mul nuw nsw i64 %polly.indvar243.us.1, 80
  br label %polly.loop_header247.us.1

polly.loop_header247.us.1:                        ; preds = %polly.loop_exit256.us.1, %polly.loop_header240.us.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit256.us.1 ], [ 0, %polly.loop_header240.us.1 ]
  %polly.indvar251.us.1 = phi i64 [ %polly.indvar_next252.us.1, %polly.loop_exit256.us.1 ], [ 0, %polly.loop_header240.us.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.1, i64 49)
  %201 = add nuw nsw i64 %polly.indvar251.us.1, 50
  %202 = mul nuw nsw i64 %201, 480
  %scevgep265.us.1 = getelementptr i8, i8* %scevgep264.us.1, i64 %202
  %scevgep265266.us.1 = bitcast i8* %scevgep265.us.1 to double*
  %_p_scalar_267.us.1 = load double, double* %scevgep265266.us.1, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1273.us.1 = add nuw nsw i64 %polly.indvar251.us.1, %polly.access.mul.Packed_MemRef_call1260.us.1
  %polly.access.Packed_MemRef_call1274.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1273.us.1
  %_p_scalar_275.us.1 = load double, double* %polly.access.Packed_MemRef_call1274.us.1, align 8
  %203 = mul nuw nsw i64 %201, 640
  br label %polly.loop_header254.us.1

polly.loop_header254.us.1:                        ; preds = %polly.loop_header254.us.1, %polly.loop_header247.us.1
  %polly.indvar257.us.1 = phi i64 [ 0, %polly.loop_header247.us.1 ], [ %polly.indvar_next258.us.1, %polly.loop_header254.us.1 ]
  %204 = add nuw nsw i64 %polly.indvar257.us.1, 50
  %polly.access.add.Packed_MemRef_call1261.us.1 = add nuw nsw i64 %polly.indvar257.us.1, %polly.access.mul.Packed_MemRef_call1260.us.1
  %polly.access.Packed_MemRef_call1262.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us.1
  %_p_scalar_263.us.1 = load double, double* %polly.access.Packed_MemRef_call1262.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_267.us.1, %_p_scalar_263.us.1
  %205 = mul nuw nsw i64 %204, 480
  %scevgep269.us.1 = getelementptr i8, i8* %scevgep264.us.1, i64 %205
  %scevgep269270.us.1 = bitcast i8* %scevgep269.us.1 to double*
  %_p_scalar_271.us.1 = load double, double* %scevgep269270.us.1, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_275.us.1, %_p_scalar_271.us.1
  %206 = shl i64 %204, 3
  %207 = add i64 %206, %203
  %scevgep276.us.1 = getelementptr i8, i8* %call, i64 %207
  %scevgep276277.us.1 = bitcast i8* %scevgep276.us.1 to double*
  %_p_scalar_278.us.1 = load double, double* %scevgep276277.us.1, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_278.us.1
  store double %p_add42.i118.us.1, double* %scevgep276277.us.1, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next258.us.1 = add nuw nsw i64 %polly.indvar257.us.1, 1
  %exitcond987.1.not = icmp eq i64 %polly.indvar257.us.1, %smin.1
  br i1 %exitcond987.1.not, label %polly.loop_exit256.us.1, label %polly.loop_header254.us.1

polly.loop_exit256.us.1:                          ; preds = %polly.loop_header254.us.1
  %polly.indvar_next252.us.1 = add nuw nsw i64 %polly.indvar251.us.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond988.1.not = icmp eq i64 %polly.indvar_next252.us.1, 30
  br i1 %exitcond988.1.not, label %polly.loop_exit249.loopexit.us.1, label %polly.loop_header247.us.1

polly.loop_exit249.loopexit.us.1:                 ; preds = %polly.loop_exit256.us.1
  %polly.indvar_next244.us.1 = add nuw nsw i64 %polly.indvar243.us.1, 1
  %exitcond989.1.not = icmp eq i64 %polly.indvar_next244.us.1, 60
  br i1 %exitcond989.1.not, label %polly.loop_exit207.1, label %polly.loop_header240.us.1

polly.loop_exit207.1:                             ; preds = %polly.loop_exit249.loopexit.us.1
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header395.1:                           ; preds = %polly.loop_exit432, %polly.loop_exit418.1
  %polly.indvar398.1 = phi i64 [ %polly.indvar_next399.1, %polly.loop_exit418.1 ], [ 0, %polly.loop_exit432 ]
  %polly.access.mul.Packed_MemRef_call1284427.1 = mul nuw nsw i64 %polly.indvar398.1, 80
  br label %polly.loop_header416.1

polly.loop_header416.1:                           ; preds = %polly.loop_header416.1, %polly.loop_header395.1
  %polly.indvar420.1 = phi i64 [ %polly.indvar_next421.1, %polly.loop_header416.1 ], [ 0, %polly.loop_header395.1 ]
  %208 = mul nuw nsw i64 %polly.indvar420.1, 60
  %polly.access.mul.call1424.1 = add nuw nsw i64 %208, 3000
  %polly.access.add.call1425.1 = add nuw nsw i64 %polly.access.mul.call1424.1, %polly.indvar398.1
  %polly.access.call1426.1 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1425.1
  %polly.access.call1426.load.1 = load double, double* %polly.access.call1426.1, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1284428.1 = add nuw nsw i64 %polly.indvar420.1, %polly.access.mul.Packed_MemRef_call1284427.1
  %polly.access.Packed_MemRef_call1284429.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284428.1
  store double %polly.access.call1426.load.1, double* %polly.access.Packed_MemRef_call1284429.1, align 8
  %polly.indvar_next421.1 = add nuw nsw i64 %polly.indvar420.1, 1
  %polly.loop_cond422.not.not.1 = icmp ult i64 %polly.indvar420.1, 29
  br i1 %polly.loop_cond422.not.not.1, label %polly.loop_header416.1, label %polly.loop_exit418.1

polly.loop_exit418.1:                             ; preds = %polly.loop_header416.1
  %polly.indvar_next399.1 = add nuw nsw i64 %polly.indvar398.1, 1
  %exitcond992.1.not = icmp eq i64 %polly.indvar_next399.1, 60
  br i1 %exitcond992.1.not, label %polly.loop_header430.us.1, label %polly.loop_header395.1

polly.loop_header430.us.1:                        ; preds = %polly.loop_exit418.1, %polly.loop_exit439.loopexit.us.1
  %polly.indvar433.us.1 = phi i64 [ %polly.indvar_next434.us.1, %polly.loop_exit439.loopexit.us.1 ], [ 0, %polly.loop_exit418.1 ]
  %209 = shl nuw nsw i64 %polly.indvar433.us.1, 3
  %scevgep454.us.1 = getelementptr i8, i8* %call2, i64 %209
  %polly.access.mul.Packed_MemRef_call1284450.us.1 = mul nuw nsw i64 %polly.indvar433.us.1, 80
  br label %polly.loop_header437.us.1

polly.loop_header437.us.1:                        ; preds = %polly.loop_exit446.us.1, %polly.loop_header430.us.1
  %indvars.iv995.1 = phi i64 [ %indvars.iv.next996.1, %polly.loop_exit446.us.1 ], [ 0, %polly.loop_header430.us.1 ]
  %polly.indvar441.us.1 = phi i64 [ %polly.indvar_next442.us.1, %polly.loop_exit446.us.1 ], [ 0, %polly.loop_header430.us.1 ]
  %smin997.1 = call i64 @llvm.smin.i64(i64 %indvars.iv995.1, i64 49)
  %210 = add nuw nsw i64 %polly.indvar441.us.1, 50
  %211 = mul nuw nsw i64 %210, 480
  %scevgep455.us.1 = getelementptr i8, i8* %scevgep454.us.1, i64 %211
  %scevgep455456.us.1 = bitcast i8* %scevgep455.us.1 to double*
  %_p_scalar_457.us.1 = load double, double* %scevgep455456.us.1, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1284463.us.1 = add nuw nsw i64 %polly.indvar441.us.1, %polly.access.mul.Packed_MemRef_call1284450.us.1
  %polly.access.Packed_MemRef_call1284464.us.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284463.us.1
  %_p_scalar_465.us.1 = load double, double* %polly.access.Packed_MemRef_call1284464.us.1, align 8
  %212 = mul nuw nsw i64 %210, 640
  br label %polly.loop_header444.us.1

polly.loop_header444.us.1:                        ; preds = %polly.loop_header444.us.1, %polly.loop_header437.us.1
  %polly.indvar447.us.1 = phi i64 [ 0, %polly.loop_header437.us.1 ], [ %polly.indvar_next448.us.1, %polly.loop_header444.us.1 ]
  %213 = add nuw nsw i64 %polly.indvar447.us.1, 50
  %polly.access.add.Packed_MemRef_call1284451.us.1 = add nuw nsw i64 %polly.indvar447.us.1, %polly.access.mul.Packed_MemRef_call1284450.us.1
  %polly.access.Packed_MemRef_call1284452.us.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284451.us.1
  %_p_scalar_453.us.1 = load double, double* %polly.access.Packed_MemRef_call1284452.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_457.us.1, %_p_scalar_453.us.1
  %214 = mul nuw nsw i64 %213, 480
  %scevgep459.us.1 = getelementptr i8, i8* %scevgep454.us.1, i64 %214
  %scevgep459460.us.1 = bitcast i8* %scevgep459.us.1 to double*
  %_p_scalar_461.us.1 = load double, double* %scevgep459460.us.1, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_465.us.1, %_p_scalar_461.us.1
  %215 = shl i64 %213, 3
  %216 = add i64 %215, %212
  %scevgep466.us.1 = getelementptr i8, i8* %call, i64 %216
  %scevgep466467.us.1 = bitcast i8* %scevgep466.us.1 to double*
  %_p_scalar_468.us.1 = load double, double* %scevgep466467.us.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_468.us.1
  store double %p_add42.i79.us.1, double* %scevgep466467.us.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next448.us.1 = add nuw nsw i64 %polly.indvar447.us.1, 1
  %exitcond999.1.not = icmp eq i64 %polly.indvar447.us.1, %smin997.1
  br i1 %exitcond999.1.not, label %polly.loop_exit446.us.1, label %polly.loop_header444.us.1

polly.loop_exit446.us.1:                          ; preds = %polly.loop_header444.us.1
  %polly.indvar_next442.us.1 = add nuw nsw i64 %polly.indvar441.us.1, 1
  %indvars.iv.next996.1 = add nuw nsw i64 %indvars.iv995.1, 1
  %exitcond1000.1.not = icmp eq i64 %polly.indvar_next442.us.1, 30
  br i1 %exitcond1000.1.not, label %polly.loop_exit439.loopexit.us.1, label %polly.loop_header437.us.1

polly.loop_exit439.loopexit.us.1:                 ; preds = %polly.loop_exit446.us.1
  %polly.indvar_next434.us.1 = add nuw nsw i64 %polly.indvar433.us.1, 1
  %exitcond1001.1.not = icmp eq i64 %polly.indvar_next434.us.1, 60
  br i1 %exitcond1001.1.not, label %polly.loop_exit391.1, label %polly.loop_header430.us.1

polly.loop_exit391.1:                             ; preds = %polly.loop_exit439.loopexit.us.1
  tail call void @free(i8* nonnull %malloccall283)
  br label %kernel_syr2k.exit90

polly.loop_header585.1:                           ; preds = %polly.loop_exit622, %polly.loop_exit608.1
  %polly.indvar588.1 = phi i64 [ %polly.indvar_next589.1, %polly.loop_exit608.1 ], [ 0, %polly.loop_exit622 ]
  %polly.access.mul.Packed_MemRef_call1474617.1 = mul nuw nsw i64 %polly.indvar588.1, 80
  br label %polly.loop_header606.1

polly.loop_header606.1:                           ; preds = %polly.loop_header606.1, %polly.loop_header585.1
  %polly.indvar610.1 = phi i64 [ %polly.indvar_next611.1, %polly.loop_header606.1 ], [ 0, %polly.loop_header585.1 ]
  %217 = mul nuw nsw i64 %polly.indvar610.1, 60
  %polly.access.mul.call1614.1 = add nuw nsw i64 %217, 3000
  %polly.access.add.call1615.1 = add nuw nsw i64 %polly.access.mul.call1614.1, %polly.indvar588.1
  %polly.access.call1616.1 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1615.1
  %polly.access.call1616.load.1 = load double, double* %polly.access.call1616.1, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474618.1 = add nuw nsw i64 %polly.indvar610.1, %polly.access.mul.Packed_MemRef_call1474617.1
  %polly.access.Packed_MemRef_call1474619.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474618.1
  store double %polly.access.call1616.load.1, double* %polly.access.Packed_MemRef_call1474619.1, align 8
  %polly.indvar_next611.1 = add nuw nsw i64 %polly.indvar610.1, 1
  %polly.loop_cond612.not.not.1 = icmp ult i64 %polly.indvar610.1, 29
  br i1 %polly.loop_cond612.not.not.1, label %polly.loop_header606.1, label %polly.loop_exit608.1

polly.loop_exit608.1:                             ; preds = %polly.loop_header606.1
  %polly.indvar_next589.1 = add nuw nsw i64 %polly.indvar588.1, 1
  %exitcond1004.1.not = icmp eq i64 %polly.indvar_next589.1, 60
  br i1 %exitcond1004.1.not, label %polly.loop_header620.us.1, label %polly.loop_header585.1

polly.loop_header620.us.1:                        ; preds = %polly.loop_exit608.1, %polly.loop_exit629.loopexit.us.1
  %polly.indvar623.us.1 = phi i64 [ %polly.indvar_next624.us.1, %polly.loop_exit629.loopexit.us.1 ], [ 0, %polly.loop_exit608.1 ]
  %218 = shl nuw nsw i64 %polly.indvar623.us.1, 3
  %scevgep644.us.1 = getelementptr i8, i8* %call2, i64 %218
  %polly.access.mul.Packed_MemRef_call1474640.us.1 = mul nuw nsw i64 %polly.indvar623.us.1, 80
  br label %polly.loop_header627.us.1

polly.loop_header627.us.1:                        ; preds = %polly.loop_exit636.us.1, %polly.loop_header620.us.1
  %indvars.iv1007.1 = phi i64 [ %indvars.iv.next1008.1, %polly.loop_exit636.us.1 ], [ 0, %polly.loop_header620.us.1 ]
  %polly.indvar631.us.1 = phi i64 [ %polly.indvar_next632.us.1, %polly.loop_exit636.us.1 ], [ 0, %polly.loop_header620.us.1 ]
  %smin1009.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1007.1, i64 49)
  %219 = add nuw nsw i64 %polly.indvar631.us.1, 50
  %220 = mul nuw nsw i64 %219, 480
  %scevgep645.us.1 = getelementptr i8, i8* %scevgep644.us.1, i64 %220
  %scevgep645646.us.1 = bitcast i8* %scevgep645.us.1 to double*
  %_p_scalar_647.us.1 = load double, double* %scevgep645646.us.1, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474653.us.1 = add nuw nsw i64 %polly.indvar631.us.1, %polly.access.mul.Packed_MemRef_call1474640.us.1
  %polly.access.Packed_MemRef_call1474654.us.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474653.us.1
  %_p_scalar_655.us.1 = load double, double* %polly.access.Packed_MemRef_call1474654.us.1, align 8
  %221 = mul nuw nsw i64 %219, 640
  br label %polly.loop_header634.us.1

polly.loop_header634.us.1:                        ; preds = %polly.loop_header634.us.1, %polly.loop_header627.us.1
  %polly.indvar637.us.1 = phi i64 [ 0, %polly.loop_header627.us.1 ], [ %polly.indvar_next638.us.1, %polly.loop_header634.us.1 ]
  %222 = add nuw nsw i64 %polly.indvar637.us.1, 50
  %polly.access.add.Packed_MemRef_call1474641.us.1 = add nuw nsw i64 %polly.indvar637.us.1, %polly.access.mul.Packed_MemRef_call1474640.us.1
  %polly.access.Packed_MemRef_call1474642.us.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474641.us.1
  %_p_scalar_643.us.1 = load double, double* %polly.access.Packed_MemRef_call1474642.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_647.us.1, %_p_scalar_643.us.1
  %223 = mul nuw nsw i64 %222, 480
  %scevgep649.us.1 = getelementptr i8, i8* %scevgep644.us.1, i64 %223
  %scevgep649650.us.1 = bitcast i8* %scevgep649.us.1 to double*
  %_p_scalar_651.us.1 = load double, double* %scevgep649650.us.1, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_655.us.1, %_p_scalar_651.us.1
  %224 = shl i64 %222, 3
  %225 = add i64 %224, %221
  %scevgep656.us.1 = getelementptr i8, i8* %call, i64 %225
  %scevgep656657.us.1 = bitcast i8* %scevgep656.us.1 to double*
  %_p_scalar_658.us.1 = load double, double* %scevgep656657.us.1, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_658.us.1
  store double %p_add42.i.us.1, double* %scevgep656657.us.1, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next638.us.1 = add nuw nsw i64 %polly.indvar637.us.1, 1
  %exitcond1011.1.not = icmp eq i64 %polly.indvar637.us.1, %smin1009.1
  br i1 %exitcond1011.1.not, label %polly.loop_exit636.us.1, label %polly.loop_header634.us.1

polly.loop_exit636.us.1:                          ; preds = %polly.loop_header634.us.1
  %polly.indvar_next632.us.1 = add nuw nsw i64 %polly.indvar631.us.1, 1
  %indvars.iv.next1008.1 = add nuw nsw i64 %indvars.iv1007.1, 1
  %exitcond1012.1.not = icmp eq i64 %polly.indvar_next632.us.1, 30
  br i1 %exitcond1012.1.not, label %polly.loop_exit629.loopexit.us.1, label %polly.loop_header627.us.1

polly.loop_exit629.loopexit.us.1:                 ; preds = %polly.loop_exit636.us.1
  %polly.indvar_next624.us.1 = add nuw nsw i64 %polly.indvar623.us.1, 1
  %exitcond1013.1.not = icmp eq i64 %polly.indvar_next624.us.1, 60
  br i1 %exitcond1013.1.not, label %polly.loop_exit581.1, label %polly.loop_header620.us.1

polly.loop_exit581.1:                             ; preds = %polly.loop_exit629.loopexit.us.1
  tail call void @free(i8* nonnull %malloccall473)
  br label %kernel_syr2k.exit

polly.loop_header850.1:                           ; preds = %polly.loop_exit858, %polly.loop_exit858.1
  %polly.indvar853.1 = phi i64 [ %polly.indvar_next854.1, %polly.loop_exit858.1 ], [ 0, %polly.loop_exit858 ]
  %226 = mul nuw nsw i64 %polly.indvar853.1, 480
  %227 = trunc i64 %polly.indvar853.1 to i32
  %broadcast.splatinsert1338 = insertelement <4 x i32> poison, i32 %227, i32 0
  %broadcast.splat1339 = shufflevector <4 x i32> %broadcast.splatinsert1338, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1330

vector.body1330:                                  ; preds = %vector.body1330, %polly.loop_header850.1
  %index1332 = phi i64 [ 0, %polly.loop_header850.1 ], [ %index.next1333, %vector.body1330 ]
  %vec.ind1336 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header850.1 ], [ %vec.ind.next1337, %vector.body1330 ]
  %228 = add nuw nsw <4 x i64> %vec.ind1336, <i64 32, i64 32, i64 32, i64 32>
  %229 = trunc <4 x i64> %228 to <4 x i32>
  %230 = mul <4 x i32> %broadcast.splat1339, %229
  %231 = add <4 x i32> %230, <i32 1, i32 1, i32 1, i32 1>
  %232 = urem <4 x i32> %231, <i32 80, i32 80, i32 80, i32 80>
  %233 = sitofp <4 x i32> %232 to <4 x double>
  %234 = fmul fast <4 x double> %233, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %235 = extractelement <4 x i64> %228, i32 0
  %236 = shl i64 %235, 3
  %237 = add i64 %236, %226
  %238 = getelementptr i8, i8* %call1, i64 %237
  %239 = bitcast i8* %238 to <4 x double>*
  store <4 x double> %234, <4 x double>* %239, align 8, !alias.scope !101, !noalias !106
  %index.next1333 = add i64 %index1332, 4
  %vec.ind.next1337 = add <4 x i64> %vec.ind1336, <i64 4, i64 4, i64 4, i64 4>
  %240 = icmp eq i64 %index.next1333, 28
  br i1 %240, label %polly.loop_exit858.1, label %vector.body1330, !llvm.loop !108

polly.loop_exit858.1:                             ; preds = %vector.body1330
  %polly.indvar_next854.1 = add nuw nsw i64 %polly.indvar853.1, 1
  %exitcond1020.1.not = icmp eq i64 %polly.indvar_next854.1, 32
  br i1 %exitcond1020.1.not, label %polly.loop_header850.11043, label %polly.loop_header850.1

polly.loop_header850.11043:                       ; preds = %polly.loop_exit858.1, %polly.loop_exit858.11054
  %polly.indvar853.11042 = phi i64 [ %polly.indvar_next854.11052, %polly.loop_exit858.11054 ], [ 0, %polly.loop_exit858.1 ]
  %241 = add nuw nsw i64 %polly.indvar853.11042, 32
  %242 = mul nuw nsw i64 %241, 480
  %243 = trunc i64 %241 to i32
  %broadcast.splatinsert1352 = insertelement <4 x i32> poison, i32 %243, i32 0
  %broadcast.splat1353 = shufflevector <4 x i32> %broadcast.splatinsert1352, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1342

vector.body1342:                                  ; preds = %vector.body1342, %polly.loop_header850.11043
  %index1344 = phi i64 [ 0, %polly.loop_header850.11043 ], [ %index.next1345, %vector.body1342 ]
  %vec.ind1350 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header850.11043 ], [ %vec.ind.next1351, %vector.body1342 ]
  %244 = mul <4 x i32> %vec.ind1350, %broadcast.splat1353
  %245 = add <4 x i32> %244, <i32 1, i32 1, i32 1, i32 1>
  %246 = urem <4 x i32> %245, <i32 80, i32 80, i32 80, i32 80>
  %247 = sitofp <4 x i32> %246 to <4 x double>
  %248 = fmul fast <4 x double> %247, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %249 = shl i64 %index1344, 3
  %250 = add i64 %249, %242
  %251 = getelementptr i8, i8* %call1, i64 %250
  %252 = bitcast i8* %251 to <4 x double>*
  store <4 x double> %248, <4 x double>* %252, align 8, !alias.scope !101, !noalias !106
  %index.next1345 = add i64 %index1344, 4
  %vec.ind.next1351 = add <4 x i32> %vec.ind1350, <i32 4, i32 4, i32 4, i32 4>
  %253 = icmp eq i64 %index.next1345, 32
  br i1 %253, label %polly.loop_exit858.11054, label %vector.body1342, !llvm.loop !109

polly.loop_exit858.11054:                         ; preds = %vector.body1342
  %polly.indvar_next854.11052 = add nuw nsw i64 %polly.indvar853.11042, 1
  %exitcond1020.11053.not = icmp eq i64 %polly.indvar_next854.11052, 32
  br i1 %exitcond1020.11053.not, label %polly.loop_header850.1.1, label %polly.loop_header850.11043

polly.loop_header850.1.1:                         ; preds = %polly.loop_exit858.11054, %polly.loop_exit858.1.1
  %polly.indvar853.1.1 = phi i64 [ %polly.indvar_next854.1.1, %polly.loop_exit858.1.1 ], [ 0, %polly.loop_exit858.11054 ]
  %254 = add nuw nsw i64 %polly.indvar853.1.1, 32
  %255 = mul nuw nsw i64 %254, 480
  %256 = trunc i64 %254 to i32
  %broadcast.splatinsert1364 = insertelement <4 x i32> poison, i32 %256, i32 0
  %broadcast.splat1365 = shufflevector <4 x i32> %broadcast.splatinsert1364, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1356

vector.body1356:                                  ; preds = %vector.body1356, %polly.loop_header850.1.1
  %index1358 = phi i64 [ 0, %polly.loop_header850.1.1 ], [ %index.next1359, %vector.body1356 ]
  %vec.ind1362 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header850.1.1 ], [ %vec.ind.next1363, %vector.body1356 ]
  %257 = add nuw nsw <4 x i64> %vec.ind1362, <i64 32, i64 32, i64 32, i64 32>
  %258 = trunc <4 x i64> %257 to <4 x i32>
  %259 = mul <4 x i32> %broadcast.splat1365, %258
  %260 = add <4 x i32> %259, <i32 1, i32 1, i32 1, i32 1>
  %261 = urem <4 x i32> %260, <i32 80, i32 80, i32 80, i32 80>
  %262 = sitofp <4 x i32> %261 to <4 x double>
  %263 = fmul fast <4 x double> %262, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %264 = extractelement <4 x i64> %257, i32 0
  %265 = shl i64 %264, 3
  %266 = add i64 %265, %255
  %267 = getelementptr i8, i8* %call1, i64 %266
  %268 = bitcast i8* %267 to <4 x double>*
  store <4 x double> %263, <4 x double>* %268, align 8, !alias.scope !101, !noalias !106
  %index.next1359 = add i64 %index1358, 4
  %vec.ind.next1363 = add <4 x i64> %vec.ind1362, <i64 4, i64 4, i64 4, i64 4>
  %269 = icmp eq i64 %index.next1359, 28
  br i1 %269, label %polly.loop_exit858.1.1, label %vector.body1356, !llvm.loop !110

polly.loop_exit858.1.1:                           ; preds = %vector.body1356
  %polly.indvar_next854.1.1 = add nuw nsw i64 %polly.indvar853.1.1, 1
  %exitcond1020.1.1.not = icmp eq i64 %polly.indvar_next854.1.1, 32
  br i1 %exitcond1020.1.1.not, label %polly.loop_header850.2, label %polly.loop_header850.1.1

polly.loop_header850.2:                           ; preds = %polly.loop_exit858.1.1, %polly.loop_exit858.2
  %polly.indvar853.2 = phi i64 [ %polly.indvar_next854.2, %polly.loop_exit858.2 ], [ 0, %polly.loop_exit858.1.1 ]
  %270 = add nuw nsw i64 %polly.indvar853.2, 64
  %271 = mul nuw nsw i64 %270, 480
  %272 = trunc i64 %270 to i32
  %broadcast.splatinsert1378 = insertelement <4 x i32> poison, i32 %272, i32 0
  %broadcast.splat1379 = shufflevector <4 x i32> %broadcast.splatinsert1378, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1368

vector.body1368:                                  ; preds = %vector.body1368, %polly.loop_header850.2
  %index1370 = phi i64 [ 0, %polly.loop_header850.2 ], [ %index.next1371, %vector.body1368 ]
  %vec.ind1376 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header850.2 ], [ %vec.ind.next1377, %vector.body1368 ]
  %273 = mul <4 x i32> %vec.ind1376, %broadcast.splat1379
  %274 = add <4 x i32> %273, <i32 1, i32 1, i32 1, i32 1>
  %275 = urem <4 x i32> %274, <i32 80, i32 80, i32 80, i32 80>
  %276 = sitofp <4 x i32> %275 to <4 x double>
  %277 = fmul fast <4 x double> %276, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %278 = shl i64 %index1370, 3
  %279 = add i64 %278, %271
  %280 = getelementptr i8, i8* %call1, i64 %279
  %281 = bitcast i8* %280 to <4 x double>*
  store <4 x double> %277, <4 x double>* %281, align 8, !alias.scope !101, !noalias !106
  %index.next1371 = add i64 %index1370, 4
  %vec.ind.next1377 = add <4 x i32> %vec.ind1376, <i32 4, i32 4, i32 4, i32 4>
  %282 = icmp eq i64 %index.next1371, 32
  br i1 %282, label %polly.loop_exit858.2, label %vector.body1368, !llvm.loop !111

polly.loop_exit858.2:                             ; preds = %vector.body1368
  %polly.indvar_next854.2 = add nuw nsw i64 %polly.indvar853.2, 1
  %exitcond1020.2.not = icmp eq i64 %polly.indvar_next854.2, 16
  br i1 %exitcond1020.2.not, label %polly.loop_header850.1.2, label %polly.loop_header850.2

polly.loop_header850.1.2:                         ; preds = %polly.loop_exit858.2, %polly.loop_exit858.1.2
  %polly.indvar853.1.2 = phi i64 [ %polly.indvar_next854.1.2, %polly.loop_exit858.1.2 ], [ 0, %polly.loop_exit858.2 ]
  %283 = add nuw nsw i64 %polly.indvar853.1.2, 64
  %284 = mul nuw nsw i64 %283, 480
  %285 = trunc i64 %283 to i32
  %broadcast.splatinsert1390 = insertelement <4 x i32> poison, i32 %285, i32 0
  %broadcast.splat1391 = shufflevector <4 x i32> %broadcast.splatinsert1390, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1382

vector.body1382:                                  ; preds = %vector.body1382, %polly.loop_header850.1.2
  %index1384 = phi i64 [ 0, %polly.loop_header850.1.2 ], [ %index.next1385, %vector.body1382 ]
  %vec.ind1388 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header850.1.2 ], [ %vec.ind.next1389, %vector.body1382 ]
  %286 = add nuw nsw <4 x i64> %vec.ind1388, <i64 32, i64 32, i64 32, i64 32>
  %287 = trunc <4 x i64> %286 to <4 x i32>
  %288 = mul <4 x i32> %broadcast.splat1391, %287
  %289 = add <4 x i32> %288, <i32 1, i32 1, i32 1, i32 1>
  %290 = urem <4 x i32> %289, <i32 80, i32 80, i32 80, i32 80>
  %291 = sitofp <4 x i32> %290 to <4 x double>
  %292 = fmul fast <4 x double> %291, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %293 = extractelement <4 x i64> %286, i32 0
  %294 = shl i64 %293, 3
  %295 = add i64 %294, %284
  %296 = getelementptr i8, i8* %call1, i64 %295
  %297 = bitcast i8* %296 to <4 x double>*
  store <4 x double> %292, <4 x double>* %297, align 8, !alias.scope !101, !noalias !106
  %index.next1385 = add i64 %index1384, 4
  %vec.ind.next1389 = add <4 x i64> %vec.ind1388, <i64 4, i64 4, i64 4, i64 4>
  %298 = icmp eq i64 %index.next1385, 28
  br i1 %298, label %polly.loop_exit858.1.2, label %vector.body1382, !llvm.loop !112

polly.loop_exit858.1.2:                           ; preds = %vector.body1382
  %polly.indvar_next854.1.2 = add nuw nsw i64 %polly.indvar853.1.2, 1
  %exitcond1020.1.2.not = icmp eq i64 %polly.indvar_next854.1.2, 16
  br i1 %exitcond1020.1.2.not, label %init_array.exit, label %polly.loop_header850.1.2

polly.loop_header824.1:                           ; preds = %polly.loop_exit832, %polly.loop_exit832.1
  %polly.indvar827.1 = phi i64 [ %polly.indvar_next828.1, %polly.loop_exit832.1 ], [ 0, %polly.loop_exit832 ]
  %299 = mul nuw nsw i64 %polly.indvar827.1, 480
  %300 = trunc i64 %polly.indvar827.1 to i32
  %broadcast.splatinsert1260 = insertelement <4 x i32> poison, i32 %300, i32 0
  %broadcast.splat1261 = shufflevector <4 x i32> %broadcast.splatinsert1260, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1252

vector.body1252:                                  ; preds = %vector.body1252, %polly.loop_header824.1
  %index1254 = phi i64 [ 0, %polly.loop_header824.1 ], [ %index.next1255, %vector.body1252 ]
  %vec.ind1258 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header824.1 ], [ %vec.ind.next1259, %vector.body1252 ]
  %301 = add nuw nsw <4 x i64> %vec.ind1258, <i64 32, i64 32, i64 32, i64 32>
  %302 = trunc <4 x i64> %301 to <4 x i32>
  %303 = mul <4 x i32> %broadcast.splat1261, %302
  %304 = add <4 x i32> %303, <i32 2, i32 2, i32 2, i32 2>
  %305 = urem <4 x i32> %304, <i32 60, i32 60, i32 60, i32 60>
  %306 = sitofp <4 x i32> %305 to <4 x double>
  %307 = fmul fast <4 x double> %306, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %308 = extractelement <4 x i64> %301, i32 0
  %309 = shl i64 %308, 3
  %310 = add i64 %309, %299
  %311 = getelementptr i8, i8* %call2, i64 %310
  %312 = bitcast i8* %311 to <4 x double>*
  store <4 x double> %307, <4 x double>* %312, align 8, !alias.scope !102, !noalias !104
  %index.next1255 = add i64 %index1254, 4
  %vec.ind.next1259 = add <4 x i64> %vec.ind1258, <i64 4, i64 4, i64 4, i64 4>
  %313 = icmp eq i64 %index.next1255, 28
  br i1 %313, label %polly.loop_exit832.1, label %vector.body1252, !llvm.loop !113

polly.loop_exit832.1:                             ; preds = %vector.body1252
  %polly.indvar_next828.1 = add nuw nsw i64 %polly.indvar827.1, 1
  %exitcond1026.1.not = icmp eq i64 %polly.indvar_next828.1, 32
  br i1 %exitcond1026.1.not, label %polly.loop_header824.11057, label %polly.loop_header824.1

polly.loop_header824.11057:                       ; preds = %polly.loop_exit832.1, %polly.loop_exit832.11068
  %polly.indvar827.11056 = phi i64 [ %polly.indvar_next828.11066, %polly.loop_exit832.11068 ], [ 0, %polly.loop_exit832.1 ]
  %314 = add nuw nsw i64 %polly.indvar827.11056, 32
  %315 = mul nuw nsw i64 %314, 480
  %316 = trunc i64 %314 to i32
  %broadcast.splatinsert1274 = insertelement <4 x i32> poison, i32 %316, i32 0
  %broadcast.splat1275 = shufflevector <4 x i32> %broadcast.splatinsert1274, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1264

vector.body1264:                                  ; preds = %vector.body1264, %polly.loop_header824.11057
  %index1266 = phi i64 [ 0, %polly.loop_header824.11057 ], [ %index.next1267, %vector.body1264 ]
  %vec.ind1272 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header824.11057 ], [ %vec.ind.next1273, %vector.body1264 ]
  %317 = mul <4 x i32> %vec.ind1272, %broadcast.splat1275
  %318 = add <4 x i32> %317, <i32 2, i32 2, i32 2, i32 2>
  %319 = urem <4 x i32> %318, <i32 60, i32 60, i32 60, i32 60>
  %320 = sitofp <4 x i32> %319 to <4 x double>
  %321 = fmul fast <4 x double> %320, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %322 = shl i64 %index1266, 3
  %323 = add i64 %322, %315
  %324 = getelementptr i8, i8* %call2, i64 %323
  %325 = bitcast i8* %324 to <4 x double>*
  store <4 x double> %321, <4 x double>* %325, align 8, !alias.scope !102, !noalias !104
  %index.next1267 = add i64 %index1266, 4
  %vec.ind.next1273 = add <4 x i32> %vec.ind1272, <i32 4, i32 4, i32 4, i32 4>
  %326 = icmp eq i64 %index.next1267, 32
  br i1 %326, label %polly.loop_exit832.11068, label %vector.body1264, !llvm.loop !114

polly.loop_exit832.11068:                         ; preds = %vector.body1264
  %polly.indvar_next828.11066 = add nuw nsw i64 %polly.indvar827.11056, 1
  %exitcond1026.11067.not = icmp eq i64 %polly.indvar_next828.11066, 32
  br i1 %exitcond1026.11067.not, label %polly.loop_header824.1.1, label %polly.loop_header824.11057

polly.loop_header824.1.1:                         ; preds = %polly.loop_exit832.11068, %polly.loop_exit832.1.1
  %polly.indvar827.1.1 = phi i64 [ %polly.indvar_next828.1.1, %polly.loop_exit832.1.1 ], [ 0, %polly.loop_exit832.11068 ]
  %327 = add nuw nsw i64 %polly.indvar827.1.1, 32
  %328 = mul nuw nsw i64 %327, 480
  %329 = trunc i64 %327 to i32
  %broadcast.splatinsert1286 = insertelement <4 x i32> poison, i32 %329, i32 0
  %broadcast.splat1287 = shufflevector <4 x i32> %broadcast.splatinsert1286, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1278

vector.body1278:                                  ; preds = %vector.body1278, %polly.loop_header824.1.1
  %index1280 = phi i64 [ 0, %polly.loop_header824.1.1 ], [ %index.next1281, %vector.body1278 ]
  %vec.ind1284 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header824.1.1 ], [ %vec.ind.next1285, %vector.body1278 ]
  %330 = add nuw nsw <4 x i64> %vec.ind1284, <i64 32, i64 32, i64 32, i64 32>
  %331 = trunc <4 x i64> %330 to <4 x i32>
  %332 = mul <4 x i32> %broadcast.splat1287, %331
  %333 = add <4 x i32> %332, <i32 2, i32 2, i32 2, i32 2>
  %334 = urem <4 x i32> %333, <i32 60, i32 60, i32 60, i32 60>
  %335 = sitofp <4 x i32> %334 to <4 x double>
  %336 = fmul fast <4 x double> %335, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %337 = extractelement <4 x i64> %330, i32 0
  %338 = shl i64 %337, 3
  %339 = add i64 %338, %328
  %340 = getelementptr i8, i8* %call2, i64 %339
  %341 = bitcast i8* %340 to <4 x double>*
  store <4 x double> %336, <4 x double>* %341, align 8, !alias.scope !102, !noalias !104
  %index.next1281 = add i64 %index1280, 4
  %vec.ind.next1285 = add <4 x i64> %vec.ind1284, <i64 4, i64 4, i64 4, i64 4>
  %342 = icmp eq i64 %index.next1281, 28
  br i1 %342, label %polly.loop_exit832.1.1, label %vector.body1278, !llvm.loop !115

polly.loop_exit832.1.1:                           ; preds = %vector.body1278
  %polly.indvar_next828.1.1 = add nuw nsw i64 %polly.indvar827.1.1, 1
  %exitcond1026.1.1.not = icmp eq i64 %polly.indvar_next828.1.1, 32
  br i1 %exitcond1026.1.1.not, label %polly.loop_header824.2, label %polly.loop_header824.1.1

polly.loop_header824.2:                           ; preds = %polly.loop_exit832.1.1, %polly.loop_exit832.2
  %polly.indvar827.2 = phi i64 [ %polly.indvar_next828.2, %polly.loop_exit832.2 ], [ 0, %polly.loop_exit832.1.1 ]
  %343 = add nuw nsw i64 %polly.indvar827.2, 64
  %344 = mul nuw nsw i64 %343, 480
  %345 = trunc i64 %343 to i32
  %broadcast.splatinsert1300 = insertelement <4 x i32> poison, i32 %345, i32 0
  %broadcast.splat1301 = shufflevector <4 x i32> %broadcast.splatinsert1300, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1290

vector.body1290:                                  ; preds = %vector.body1290, %polly.loop_header824.2
  %index1292 = phi i64 [ 0, %polly.loop_header824.2 ], [ %index.next1293, %vector.body1290 ]
  %vec.ind1298 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header824.2 ], [ %vec.ind.next1299, %vector.body1290 ]
  %346 = mul <4 x i32> %vec.ind1298, %broadcast.splat1301
  %347 = add <4 x i32> %346, <i32 2, i32 2, i32 2, i32 2>
  %348 = urem <4 x i32> %347, <i32 60, i32 60, i32 60, i32 60>
  %349 = sitofp <4 x i32> %348 to <4 x double>
  %350 = fmul fast <4 x double> %349, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %351 = shl i64 %index1292, 3
  %352 = add i64 %351, %344
  %353 = getelementptr i8, i8* %call2, i64 %352
  %354 = bitcast i8* %353 to <4 x double>*
  store <4 x double> %350, <4 x double>* %354, align 8, !alias.scope !102, !noalias !104
  %index.next1293 = add i64 %index1292, 4
  %vec.ind.next1299 = add <4 x i32> %vec.ind1298, <i32 4, i32 4, i32 4, i32 4>
  %355 = icmp eq i64 %index.next1293, 32
  br i1 %355, label %polly.loop_exit832.2, label %vector.body1290, !llvm.loop !116

polly.loop_exit832.2:                             ; preds = %vector.body1290
  %polly.indvar_next828.2 = add nuw nsw i64 %polly.indvar827.2, 1
  %exitcond1026.2.not = icmp eq i64 %polly.indvar_next828.2, 16
  br i1 %exitcond1026.2.not, label %polly.loop_header824.1.2, label %polly.loop_header824.2

polly.loop_header824.1.2:                         ; preds = %polly.loop_exit832.2, %polly.loop_exit832.1.2
  %polly.indvar827.1.2 = phi i64 [ %polly.indvar_next828.1.2, %polly.loop_exit832.1.2 ], [ 0, %polly.loop_exit832.2 ]
  %356 = add nuw nsw i64 %polly.indvar827.1.2, 64
  %357 = mul nuw nsw i64 %356, 480
  %358 = trunc i64 %356 to i32
  %broadcast.splatinsert1312 = insertelement <4 x i32> poison, i32 %358, i32 0
  %broadcast.splat1313 = shufflevector <4 x i32> %broadcast.splatinsert1312, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1304

vector.body1304:                                  ; preds = %vector.body1304, %polly.loop_header824.1.2
  %index1306 = phi i64 [ 0, %polly.loop_header824.1.2 ], [ %index.next1307, %vector.body1304 ]
  %vec.ind1310 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header824.1.2 ], [ %vec.ind.next1311, %vector.body1304 ]
  %359 = add nuw nsw <4 x i64> %vec.ind1310, <i64 32, i64 32, i64 32, i64 32>
  %360 = trunc <4 x i64> %359 to <4 x i32>
  %361 = mul <4 x i32> %broadcast.splat1313, %360
  %362 = add <4 x i32> %361, <i32 2, i32 2, i32 2, i32 2>
  %363 = urem <4 x i32> %362, <i32 60, i32 60, i32 60, i32 60>
  %364 = sitofp <4 x i32> %363 to <4 x double>
  %365 = fmul fast <4 x double> %364, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %366 = extractelement <4 x i64> %359, i32 0
  %367 = shl i64 %366, 3
  %368 = add i64 %367, %357
  %369 = getelementptr i8, i8* %call2, i64 %368
  %370 = bitcast i8* %369 to <4 x double>*
  store <4 x double> %365, <4 x double>* %370, align 8, !alias.scope !102, !noalias !104
  %index.next1307 = add i64 %index1306, 4
  %vec.ind.next1311 = add <4 x i64> %vec.ind1310, <i64 4, i64 4, i64 4, i64 4>
  %371 = icmp eq i64 %index.next1307, 28
  br i1 %371, label %polly.loop_exit832.1.2, label %vector.body1304, !llvm.loop !117

polly.loop_exit832.1.2:                           ; preds = %vector.body1304
  %polly.indvar_next828.1.2 = add nuw nsw i64 %polly.indvar827.1.2, 1
  %exitcond1026.1.2.not = icmp eq i64 %polly.indvar_next828.1.2, 16
  br i1 %exitcond1026.1.2.not, label %polly.loop_header850, label %polly.loop_header824.1.2

polly.loop_header797.1:                           ; preds = %polly.loop_exit805, %polly.loop_exit805.1
  %polly.indvar800.1 = phi i64 [ %polly.indvar_next801.1, %polly.loop_exit805.1 ], [ 0, %polly.loop_exit805 ]
  %372 = mul nuw nsw i64 %polly.indvar800.1, 640
  %373 = trunc i64 %polly.indvar800.1 to i32
  %broadcast.splatinsert1146 = insertelement <4 x i32> poison, i32 %373, i32 0
  %broadcast.splat1147 = shufflevector <4 x i32> %broadcast.splatinsert1146, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1138

vector.body1138:                                  ; preds = %vector.body1138, %polly.loop_header797.1
  %index1140 = phi i64 [ 0, %polly.loop_header797.1 ], [ %index.next1141, %vector.body1138 ]
  %vec.ind1144 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header797.1 ], [ %vec.ind.next1145, %vector.body1138 ]
  %374 = add nuw nsw <4 x i64> %vec.ind1144, <i64 32, i64 32, i64 32, i64 32>
  %375 = trunc <4 x i64> %374 to <4 x i32>
  %376 = mul <4 x i32> %broadcast.splat1147, %375
  %377 = add <4 x i32> %376, <i32 3, i32 3, i32 3, i32 3>
  %378 = urem <4 x i32> %377, <i32 80, i32 80, i32 80, i32 80>
  %379 = sitofp <4 x i32> %378 to <4 x double>
  %380 = fmul fast <4 x double> %379, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %381 = extractelement <4 x i64> %374, i32 0
  %382 = shl i64 %381, 3
  %383 = add nuw nsw i64 %382, %372
  %384 = getelementptr i8, i8* %call, i64 %383
  %385 = bitcast i8* %384 to <4 x double>*
  store <4 x double> %380, <4 x double>* %385, align 8, !alias.scope !98, !noalias !100
  %index.next1141 = add i64 %index1140, 4
  %vec.ind.next1145 = add <4 x i64> %vec.ind1144, <i64 4, i64 4, i64 4, i64 4>
  %386 = icmp eq i64 %index.next1141, 32
  br i1 %386, label %polly.loop_exit805.1, label %vector.body1138, !llvm.loop !118

polly.loop_exit805.1:                             ; preds = %vector.body1138
  %polly.indvar_next801.1 = add nuw nsw i64 %polly.indvar800.1, 1
  %exitcond1035.1.not = icmp eq i64 %polly.indvar_next801.1, 32
  br i1 %exitcond1035.1.not, label %polly.loop_header797.2, label %polly.loop_header797.1

polly.loop_header797.2:                           ; preds = %polly.loop_exit805.1, %polly.loop_exit805.2
  %polly.indvar800.2 = phi i64 [ %polly.indvar_next801.2, %polly.loop_exit805.2 ], [ 0, %polly.loop_exit805.1 ]
  %387 = mul nuw nsw i64 %polly.indvar800.2, 640
  %388 = trunc i64 %polly.indvar800.2 to i32
  %broadcast.splatinsert1158 = insertelement <4 x i32> poison, i32 %388, i32 0
  %broadcast.splat1159 = shufflevector <4 x i32> %broadcast.splatinsert1158, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1150

vector.body1150:                                  ; preds = %vector.body1150, %polly.loop_header797.2
  %index1152 = phi i64 [ 0, %polly.loop_header797.2 ], [ %index.next1153, %vector.body1150 ]
  %vec.ind1156 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header797.2 ], [ %vec.ind.next1157, %vector.body1150 ]
  %389 = add nuw nsw <4 x i64> %vec.ind1156, <i64 64, i64 64, i64 64, i64 64>
  %390 = trunc <4 x i64> %389 to <4 x i32>
  %391 = mul <4 x i32> %broadcast.splat1159, %390
  %392 = add <4 x i32> %391, <i32 3, i32 3, i32 3, i32 3>
  %393 = urem <4 x i32> %392, <i32 80, i32 80, i32 80, i32 80>
  %394 = sitofp <4 x i32> %393 to <4 x double>
  %395 = fmul fast <4 x double> %394, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %396 = extractelement <4 x i64> %389, i32 0
  %397 = shl i64 %396, 3
  %398 = add nuw nsw i64 %397, %387
  %399 = getelementptr i8, i8* %call, i64 %398
  %400 = bitcast i8* %399 to <4 x double>*
  store <4 x double> %395, <4 x double>* %400, align 8, !alias.scope !98, !noalias !100
  %index.next1153 = add i64 %index1152, 4
  %vec.ind.next1157 = add <4 x i64> %vec.ind1156, <i64 4, i64 4, i64 4, i64 4>
  %401 = icmp eq i64 %index.next1153, 16
  br i1 %401, label %polly.loop_exit805.2, label %vector.body1150, !llvm.loop !119

polly.loop_exit805.2:                             ; preds = %vector.body1150
  %polly.indvar_next801.2 = add nuw nsw i64 %polly.indvar800.2, 1
  %exitcond1035.2.not = icmp eq i64 %polly.indvar_next801.2, 32
  br i1 %exitcond1035.2.not, label %polly.loop_header797.11071, label %polly.loop_header797.2

polly.loop_header797.11071:                       ; preds = %polly.loop_exit805.2, %polly.loop_exit805.11082
  %polly.indvar800.11070 = phi i64 [ %polly.indvar_next801.11080, %polly.loop_exit805.11082 ], [ 0, %polly.loop_exit805.2 ]
  %402 = add nuw nsw i64 %polly.indvar800.11070, 32
  %403 = mul nuw nsw i64 %402, 640
  %404 = trunc i64 %402 to i32
  %broadcast.splatinsert1172 = insertelement <4 x i32> poison, i32 %404, i32 0
  %broadcast.splat1173 = shufflevector <4 x i32> %broadcast.splatinsert1172, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1162

vector.body1162:                                  ; preds = %vector.body1162, %polly.loop_header797.11071
  %index1164 = phi i64 [ 0, %polly.loop_header797.11071 ], [ %index.next1165, %vector.body1162 ]
  %vec.ind1170 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header797.11071 ], [ %vec.ind.next1171, %vector.body1162 ]
  %405 = mul <4 x i32> %vec.ind1170, %broadcast.splat1173
  %406 = add <4 x i32> %405, <i32 3, i32 3, i32 3, i32 3>
  %407 = urem <4 x i32> %406, <i32 80, i32 80, i32 80, i32 80>
  %408 = sitofp <4 x i32> %407 to <4 x double>
  %409 = fmul fast <4 x double> %408, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %410 = shl i64 %index1164, 3
  %411 = add nuw nsw i64 %410, %403
  %412 = getelementptr i8, i8* %call, i64 %411
  %413 = bitcast i8* %412 to <4 x double>*
  store <4 x double> %409, <4 x double>* %413, align 8, !alias.scope !98, !noalias !100
  %index.next1165 = add i64 %index1164, 4
  %vec.ind.next1171 = add <4 x i32> %vec.ind1170, <i32 4, i32 4, i32 4, i32 4>
  %414 = icmp eq i64 %index.next1165, 32
  br i1 %414, label %polly.loop_exit805.11082, label %vector.body1162, !llvm.loop !120

polly.loop_exit805.11082:                         ; preds = %vector.body1162
  %polly.indvar_next801.11080 = add nuw nsw i64 %polly.indvar800.11070, 1
  %exitcond1035.11081.not = icmp eq i64 %polly.indvar_next801.11080, 32
  br i1 %exitcond1035.11081.not, label %polly.loop_header797.1.1, label %polly.loop_header797.11071

polly.loop_header797.1.1:                         ; preds = %polly.loop_exit805.11082, %polly.loop_exit805.1.1
  %polly.indvar800.1.1 = phi i64 [ %polly.indvar_next801.1.1, %polly.loop_exit805.1.1 ], [ 0, %polly.loop_exit805.11082 ]
  %415 = add nuw nsw i64 %polly.indvar800.1.1, 32
  %416 = mul nuw nsw i64 %415, 640
  %417 = trunc i64 %415 to i32
  %broadcast.splatinsert1184 = insertelement <4 x i32> poison, i32 %417, i32 0
  %broadcast.splat1185 = shufflevector <4 x i32> %broadcast.splatinsert1184, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1176

vector.body1176:                                  ; preds = %vector.body1176, %polly.loop_header797.1.1
  %index1178 = phi i64 [ 0, %polly.loop_header797.1.1 ], [ %index.next1179, %vector.body1176 ]
  %vec.ind1182 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header797.1.1 ], [ %vec.ind.next1183, %vector.body1176 ]
  %418 = add nuw nsw <4 x i64> %vec.ind1182, <i64 32, i64 32, i64 32, i64 32>
  %419 = trunc <4 x i64> %418 to <4 x i32>
  %420 = mul <4 x i32> %broadcast.splat1185, %419
  %421 = add <4 x i32> %420, <i32 3, i32 3, i32 3, i32 3>
  %422 = urem <4 x i32> %421, <i32 80, i32 80, i32 80, i32 80>
  %423 = sitofp <4 x i32> %422 to <4 x double>
  %424 = fmul fast <4 x double> %423, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %425 = extractelement <4 x i64> %418, i32 0
  %426 = shl i64 %425, 3
  %427 = add nuw nsw i64 %426, %416
  %428 = getelementptr i8, i8* %call, i64 %427
  %429 = bitcast i8* %428 to <4 x double>*
  store <4 x double> %424, <4 x double>* %429, align 8, !alias.scope !98, !noalias !100
  %index.next1179 = add i64 %index1178, 4
  %vec.ind.next1183 = add <4 x i64> %vec.ind1182, <i64 4, i64 4, i64 4, i64 4>
  %430 = icmp eq i64 %index.next1179, 32
  br i1 %430, label %polly.loop_exit805.1.1, label %vector.body1176, !llvm.loop !121

polly.loop_exit805.1.1:                           ; preds = %vector.body1176
  %polly.indvar_next801.1.1 = add nuw nsw i64 %polly.indvar800.1.1, 1
  %exitcond1035.1.1.not = icmp eq i64 %polly.indvar_next801.1.1, 32
  br i1 %exitcond1035.1.1.not, label %polly.loop_header797.2.1, label %polly.loop_header797.1.1

polly.loop_header797.2.1:                         ; preds = %polly.loop_exit805.1.1, %polly.loop_exit805.2.1
  %polly.indvar800.2.1 = phi i64 [ %polly.indvar_next801.2.1, %polly.loop_exit805.2.1 ], [ 0, %polly.loop_exit805.1.1 ]
  %431 = add nuw nsw i64 %polly.indvar800.2.1, 32
  %432 = mul nuw nsw i64 %431, 640
  %433 = trunc i64 %431 to i32
  %broadcast.splatinsert1196 = insertelement <4 x i32> poison, i32 %433, i32 0
  %broadcast.splat1197 = shufflevector <4 x i32> %broadcast.splatinsert1196, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1188

vector.body1188:                                  ; preds = %vector.body1188, %polly.loop_header797.2.1
  %index1190 = phi i64 [ 0, %polly.loop_header797.2.1 ], [ %index.next1191, %vector.body1188 ]
  %vec.ind1194 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header797.2.1 ], [ %vec.ind.next1195, %vector.body1188 ]
  %434 = add nuw nsw <4 x i64> %vec.ind1194, <i64 64, i64 64, i64 64, i64 64>
  %435 = trunc <4 x i64> %434 to <4 x i32>
  %436 = mul <4 x i32> %broadcast.splat1197, %435
  %437 = add <4 x i32> %436, <i32 3, i32 3, i32 3, i32 3>
  %438 = urem <4 x i32> %437, <i32 80, i32 80, i32 80, i32 80>
  %439 = sitofp <4 x i32> %438 to <4 x double>
  %440 = fmul fast <4 x double> %439, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %441 = extractelement <4 x i64> %434, i32 0
  %442 = shl i64 %441, 3
  %443 = add nuw nsw i64 %442, %432
  %444 = getelementptr i8, i8* %call, i64 %443
  %445 = bitcast i8* %444 to <4 x double>*
  store <4 x double> %440, <4 x double>* %445, align 8, !alias.scope !98, !noalias !100
  %index.next1191 = add i64 %index1190, 4
  %vec.ind.next1195 = add <4 x i64> %vec.ind1194, <i64 4, i64 4, i64 4, i64 4>
  %446 = icmp eq i64 %index.next1191, 16
  br i1 %446, label %polly.loop_exit805.2.1, label %vector.body1188, !llvm.loop !122

polly.loop_exit805.2.1:                           ; preds = %vector.body1188
  %polly.indvar_next801.2.1 = add nuw nsw i64 %polly.indvar800.2.1, 1
  %exitcond1035.2.1.not = icmp eq i64 %polly.indvar_next801.2.1, 32
  br i1 %exitcond1035.2.1.not, label %polly.loop_header797.21085, label %polly.loop_header797.2.1

polly.loop_header797.21085:                       ; preds = %polly.loop_exit805.2.1, %polly.loop_exit805.21096
  %polly.indvar800.21084 = phi i64 [ %polly.indvar_next801.21094, %polly.loop_exit805.21096 ], [ 0, %polly.loop_exit805.2.1 ]
  %447 = add nuw nsw i64 %polly.indvar800.21084, 64
  %448 = mul nuw nsw i64 %447, 640
  %449 = trunc i64 %447 to i32
  %broadcast.splatinsert1210 = insertelement <4 x i32> poison, i32 %449, i32 0
  %broadcast.splat1211 = shufflevector <4 x i32> %broadcast.splatinsert1210, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1200

vector.body1200:                                  ; preds = %vector.body1200, %polly.loop_header797.21085
  %index1202 = phi i64 [ 0, %polly.loop_header797.21085 ], [ %index.next1203, %vector.body1200 ]
  %vec.ind1208 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header797.21085 ], [ %vec.ind.next1209, %vector.body1200 ]
  %450 = mul <4 x i32> %vec.ind1208, %broadcast.splat1211
  %451 = add <4 x i32> %450, <i32 3, i32 3, i32 3, i32 3>
  %452 = urem <4 x i32> %451, <i32 80, i32 80, i32 80, i32 80>
  %453 = sitofp <4 x i32> %452 to <4 x double>
  %454 = fmul fast <4 x double> %453, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %455 = shl i64 %index1202, 3
  %456 = add nuw nsw i64 %455, %448
  %457 = getelementptr i8, i8* %call, i64 %456
  %458 = bitcast i8* %457 to <4 x double>*
  store <4 x double> %454, <4 x double>* %458, align 8, !alias.scope !98, !noalias !100
  %index.next1203 = add i64 %index1202, 4
  %vec.ind.next1209 = add <4 x i32> %vec.ind1208, <i32 4, i32 4, i32 4, i32 4>
  %459 = icmp eq i64 %index.next1203, 32
  br i1 %459, label %polly.loop_exit805.21096, label %vector.body1200, !llvm.loop !123

polly.loop_exit805.21096:                         ; preds = %vector.body1200
  %polly.indvar_next801.21094 = add nuw nsw i64 %polly.indvar800.21084, 1
  %exitcond1035.21095.not = icmp eq i64 %polly.indvar_next801.21094, 16
  br i1 %exitcond1035.21095.not, label %polly.loop_header797.1.2, label %polly.loop_header797.21085

polly.loop_header797.1.2:                         ; preds = %polly.loop_exit805.21096, %polly.loop_exit805.1.2
  %polly.indvar800.1.2 = phi i64 [ %polly.indvar_next801.1.2, %polly.loop_exit805.1.2 ], [ 0, %polly.loop_exit805.21096 ]
  %460 = add nuw nsw i64 %polly.indvar800.1.2, 64
  %461 = mul nuw nsw i64 %460, 640
  %462 = trunc i64 %460 to i32
  %broadcast.splatinsert1222 = insertelement <4 x i32> poison, i32 %462, i32 0
  %broadcast.splat1223 = shufflevector <4 x i32> %broadcast.splatinsert1222, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1214

vector.body1214:                                  ; preds = %vector.body1214, %polly.loop_header797.1.2
  %index1216 = phi i64 [ 0, %polly.loop_header797.1.2 ], [ %index.next1217, %vector.body1214 ]
  %vec.ind1220 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header797.1.2 ], [ %vec.ind.next1221, %vector.body1214 ]
  %463 = add nuw nsw <4 x i64> %vec.ind1220, <i64 32, i64 32, i64 32, i64 32>
  %464 = trunc <4 x i64> %463 to <4 x i32>
  %465 = mul <4 x i32> %broadcast.splat1223, %464
  %466 = add <4 x i32> %465, <i32 3, i32 3, i32 3, i32 3>
  %467 = urem <4 x i32> %466, <i32 80, i32 80, i32 80, i32 80>
  %468 = sitofp <4 x i32> %467 to <4 x double>
  %469 = fmul fast <4 x double> %468, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %470 = extractelement <4 x i64> %463, i32 0
  %471 = shl i64 %470, 3
  %472 = add nuw nsw i64 %471, %461
  %473 = getelementptr i8, i8* %call, i64 %472
  %474 = bitcast i8* %473 to <4 x double>*
  store <4 x double> %469, <4 x double>* %474, align 8, !alias.scope !98, !noalias !100
  %index.next1217 = add i64 %index1216, 4
  %vec.ind.next1221 = add <4 x i64> %vec.ind1220, <i64 4, i64 4, i64 4, i64 4>
  %475 = icmp eq i64 %index.next1217, 32
  br i1 %475, label %polly.loop_exit805.1.2, label %vector.body1214, !llvm.loop !124

polly.loop_exit805.1.2:                           ; preds = %vector.body1214
  %polly.indvar_next801.1.2 = add nuw nsw i64 %polly.indvar800.1.2, 1
  %exitcond1035.1.2.not = icmp eq i64 %polly.indvar_next801.1.2, 16
  br i1 %exitcond1035.1.2.not, label %polly.loop_header797.2.2, label %polly.loop_header797.1.2

polly.loop_header797.2.2:                         ; preds = %polly.loop_exit805.1.2, %polly.loop_exit805.2.2
  %polly.indvar800.2.2 = phi i64 [ %polly.indvar_next801.2.2, %polly.loop_exit805.2.2 ], [ 0, %polly.loop_exit805.1.2 ]
  %476 = add nuw nsw i64 %polly.indvar800.2.2, 64
  %477 = mul nuw nsw i64 %476, 640
  %478 = trunc i64 %476 to i32
  %broadcast.splatinsert1234 = insertelement <4 x i32> poison, i32 %478, i32 0
  %broadcast.splat1235 = shufflevector <4 x i32> %broadcast.splatinsert1234, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1226

vector.body1226:                                  ; preds = %vector.body1226, %polly.loop_header797.2.2
  %index1228 = phi i64 [ 0, %polly.loop_header797.2.2 ], [ %index.next1229, %vector.body1226 ]
  %vec.ind1232 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header797.2.2 ], [ %vec.ind.next1233, %vector.body1226 ]
  %479 = add nuw nsw <4 x i64> %vec.ind1232, <i64 64, i64 64, i64 64, i64 64>
  %480 = trunc <4 x i64> %479 to <4 x i32>
  %481 = mul <4 x i32> %broadcast.splat1235, %480
  %482 = add <4 x i32> %481, <i32 3, i32 3, i32 3, i32 3>
  %483 = urem <4 x i32> %482, <i32 80, i32 80, i32 80, i32 80>
  %484 = sitofp <4 x i32> %483 to <4 x double>
  %485 = fmul fast <4 x double> %484, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %486 = extractelement <4 x i64> %479, i32 0
  %487 = shl i64 %486, 3
  %488 = add nuw nsw i64 %487, %477
  %489 = getelementptr i8, i8* %call, i64 %488
  %490 = bitcast i8* %489 to <4 x double>*
  store <4 x double> %485, <4 x double>* %490, align 8, !alias.scope !98, !noalias !100
  %index.next1229 = add i64 %index1228, 4
  %vec.ind.next1233 = add <4 x i64> %vec.ind1232, <i64 4, i64 4, i64 4, i64 4>
  %491 = icmp eq i64 %index.next1229, 16
  br i1 %491, label %polly.loop_exit805.2.2, label %vector.body1226, !llvm.loop !125

polly.loop_exit805.2.2:                           ; preds = %vector.body1226
  %polly.indvar_next801.2.2 = add nuw nsw i64 %polly.indvar800.2.2, 1
  %exitcond1035.2.2.not = icmp eq i64 %polly.indvar_next801.2.2, 16
  br i1 %exitcond1035.2.2.not, label %polly.loop_header824, label %polly.loop_header797.2.2
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
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 50}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 2048}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !23, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40, !41}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.loop.interchange.followup_interchanged", !42}
!42 = distinct !{!42, !12, !23, !40, !43, !44, !45}
!43 = !{!"llvm.data.pack.enable", i1 true}
!44 = !{!"llvm.data.pack.array", !21}
!45 = !{!"llvm.data.pack.allocate", !"malloc"}
!46 = distinct !{!46, !12, !23, !47, !48, !49, !25, !50, !56}
!47 = !{!"llvm.loop.id", !"i"}
!48 = !{!"llvm.loop.tile.enable", i1 true}
!49 = !{!"llvm.loop.tile.depth", i32 3}
!50 = !{!"llvm.loop.tile.followup_floor", !51}
!51 = distinct !{!51, !12, !23, !52, !53, !54, !55}
!52 = !{!"llvm.loop.id", !"i1"}
!53 = !{!"llvm.loop.interchange.enable", i1 true}
!54 = !{!"llvm.loop.interchange.depth", i32 5}
!55 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!56 = !{!"llvm.loop.tile.followup_tile", !57}
!57 = distinct !{!57, !12, !23, !58}
!58 = !{!"llvm.loop.id", !"i2"}
!59 = distinct !{!59, !12, !13}
!60 = distinct !{!60, !12, !13}
!61 = distinct !{!61, !12, !13}
!62 = distinct !{!62, !12, !13}
!63 = !{!64, !64, i64 0}
!64 = !{!"any pointer", !4, i64 0}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !68, !"polly.alias.scope.MemRef_call"}
!68 = distinct !{!68, !"polly.alias.scope.domain"}
!69 = !{!70, !71, !72}
!70 = distinct !{!70, !68, !"polly.alias.scope.MemRef_call1"}
!71 = distinct !{!71, !68, !"polly.alias.scope.MemRef_call2"}
!72 = distinct !{!72, !68, !"polly.alias.scope.Packed_MemRef_call1"}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !75, !13}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = !{!67, !71, !72}
!77 = !{!67, !70, !72}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82, !83}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !79, !"polly.alias.scope.Packed_MemRef_call1"}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !75, !13}
!86 = !{!78, !82, !83}
!87 = !{!78, !81, !83}
!88 = distinct !{!88, !89, !"polly.alias.scope.MemRef_call"}
!89 = distinct !{!89, !"polly.alias.scope.domain"}
!90 = !{!91, !92, !93}
!91 = distinct !{!91, !89, !"polly.alias.scope.MemRef_call1"}
!92 = distinct !{!92, !89, !"polly.alias.scope.MemRef_call2"}
!93 = distinct !{!93, !89, !"polly.alias.scope.Packed_MemRef_call1"}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !75, !13}
!96 = !{!88, !92, !93}
!97 = !{!88, !91, !93}
!98 = distinct !{!98, !99, !"polly.alias.scope.MemRef_call"}
!99 = distinct !{!99, !"polly.alias.scope.domain"}
!100 = !{!101, !102}
!101 = distinct !{!101, !99, !"polly.alias.scope.MemRef_call1"}
!102 = distinct !{!102, !99, !"polly.alias.scope.MemRef_call2"}
!103 = distinct !{!103, !13}
!104 = !{!101, !98}
!105 = distinct !{!105, !13}
!106 = !{!102, !98}
!107 = distinct !{!107, !13}
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
