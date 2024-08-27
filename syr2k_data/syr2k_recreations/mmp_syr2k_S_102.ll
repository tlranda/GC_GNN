; ModuleID = 'syr2k_recreations//mmp_syr2k_S_102.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_102.c"
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
  %call856 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1708 = bitcast i8* %call1 to double*
  %polly.access.call1717 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2718 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1717, %call2
  %polly.access.call2737 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2737, %call1
  %2 = or i1 %0, %1
  %polly.access.call757 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call757, %call2
  %4 = icmp ule i8* %polly.access.call2737, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call757, %call1
  %8 = icmp ule i8* %polly.access.call1717, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header842, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1085 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1084 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1083 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1082 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1082, %scevgep1085
  %bound1 = icmp ult i8* %scevgep1084, %scevgep1083
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
  br i1 %exitcond18.not.i, label %vector.ph1089, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1089:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1096 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1097 = shufflevector <4 x i64> %broadcast.splatinsert1096, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1088

vector.body1088:                                  ; preds = %vector.body1088, %vector.ph1089
  %index1090 = phi i64 [ 0, %vector.ph1089 ], [ %index.next1091, %vector.body1088 ]
  %vec.ind1094 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1089 ], [ %vec.ind.next1095, %vector.body1088 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1094, %broadcast.splat1097
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call856, i64 %indvars.iv7.i, i64 %index1090
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1091 = add i64 %index1090, 4
  %vec.ind.next1095 = add <4 x i64> %vec.ind1094, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1091, 80
  br i1 %40, label %for.inc41.i, label %vector.body1088, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1088
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1089, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit903.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start502, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1508, label %vector.ph1371

vector.ph1371:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1370

vector.body1370:                                  ; preds = %vector.body1370, %vector.ph1371
  %index1372 = phi i64 [ 0, %vector.ph1371 ], [ %index.next1373, %vector.body1370 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call856, i64 %indvars.iv21.i, i64 %index1372
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1373 = add i64 %index1372, 4
  %46 = icmp eq i64 %index.next1373, %n.vec
  br i1 %46, label %middle.block1368, label %vector.body1370, !llvm.loop !18

middle.block1368:                                 ; preds = %vector.body1370
  %cmp.n1375 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1375, label %for.inc6.i, label %for.body3.i46.preheader1508

for.body3.i46.preheader1508:                      ; preds = %for.body3.i46.preheader, %middle.block1368
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1368 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1508, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1508 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call856, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1368, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call856, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting503
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start298, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1412 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1412, label %for.body3.i60.preheader1506, label %vector.ph1413

vector.ph1413:                                    ; preds = %for.body3.i60.preheader
  %n.vec1415 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1411

vector.body1411:                                  ; preds = %vector.body1411, %vector.ph1413
  %index1416 = phi i64 [ 0, %vector.ph1413 ], [ %index.next1417, %vector.body1411 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call856, i64 %indvars.iv21.i52, i64 %index1416
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1420 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1420, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1417 = add i64 %index1416, 4
  %57 = icmp eq i64 %index.next1417, %n.vec1415
  br i1 %57, label %middle.block1409, label %vector.body1411, !llvm.loop !64

middle.block1409:                                 ; preds = %vector.body1411
  %cmp.n1419 = icmp eq i64 %indvars.iv21.i52, %n.vec1415
  br i1 %cmp.n1419, label %for.inc6.i63, label %for.body3.i60.preheader1506

for.body3.i60.preheader1506:                      ; preds = %for.body3.i60.preheader, %middle.block1409
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1415, %middle.block1409 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1506, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1506 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call856, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1409, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call856, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting299
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
  br i1 %min.iters.check1459, label %for.body3.i99.preheader1504, label %vector.ph1460

vector.ph1460:                                    ; preds = %for.body3.i99.preheader
  %n.vec1462 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1458

vector.body1458:                                  ; preds = %vector.body1458, %vector.ph1460
  %index1463 = phi i64 [ 0, %vector.ph1460 ], [ %index.next1464, %vector.body1458 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call856, i64 %indvars.iv21.i91, i64 %index1463
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
  br i1 %cmp.n1466, label %for.inc6.i102, label %for.body3.i99.preheader1504

for.body3.i99.preheader1504:                      ; preds = %for.body3.i99.preheader, %middle.block1456
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1462, %middle.block1456 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1504, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1504 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call856, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1456, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call856, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call856, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall136 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1471 = phi i64 [ %indvar.next1472, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1471, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
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
  %exitcond953.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1472 = add i64 %indvar1471, 1
  br i1 %exitcond953.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond952.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond952.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit224
  %indvars.iv = phi i64 [ 80, %polly.loop_header200.preheader ], [ %indvars.iv.next, %polly.loop_exit224 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit224 ]
  %97 = shl nsw i64 %polly.indvar203, 5
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit214
  %98 = mul nsw i64 %polly.indvar203, -32
  %99 = shl nuw nsw i64 %polly.indvar203, 1
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit261
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %exitcond951.not = icmp eq i64 %polly.indvar_next204, 3
  br i1 %exitcond951.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit214, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_exit214 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar209, 80
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_header212
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond939.not = icmp eq i64 %polly.indvar_next210, 60
  br i1 %exitcond939.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_header212, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_header212 ]
  %100 = add nuw nsw i64 %polly.indvar215, %97
  %polly.access.mul.call2219 = mul nuw nsw i64 %100, 60
  %polly.access.add.call2220 = add nuw nsw i64 %polly.access.mul.call2219, %polly.indvar209
  %polly.access.call2221 = getelementptr double, double* %polly.access.cast.call2718, i64 %polly.access.add.call2220
  %polly.access.call2221.load = load double, double* %polly.access.call2221, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar215, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2221.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next216, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header222:                             ; preds = %polly.loop_exit261, %polly.loop_exit208
  %indvar1485 = phi i64 [ %indvar.next1486, %polly.loop_exit261 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv943 = phi i64 [ %indvars.iv.next944, %polly.loop_exit261 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit261 ], [ %99, %polly.loop_exit208 ]
  %101 = shl nuw nsw i64 %indvar1485, 4
  %102 = shl nsw i64 %polly.indvar225, 4
  %103 = add nsw i64 %102, %98
  %104 = add nsw i64 %103, -1
  %.inv = icmp ugt i64 %103, 31
  %105 = select i1 %.inv, i64 31, i64 %104
  %polly.loop_guard = icmp sgt i64 %105, -1
  %106 = or i64 %103, 15
  br i1 %polly.loop_guard, label %polly.loop_header228.us, label %polly.loop_header228

polly.loop_header228.us:                          ; preds = %polly.loop_header222, %polly.loop_exit247.us
  %polly.indvar231.us = phi i64 [ %polly.indvar_next232.us, %polly.loop_exit247.us ], [ 0, %polly.loop_header222 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar231.us, 80
  br label %polly.loop_header234.us

polly.loop_header234.us:                          ; preds = %polly.loop_header228.us, %polly.loop_header234.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_header234.us ], [ 0, %polly.loop_header228.us ]
  %107 = add nuw nsw i64 %polly.indvar237.us, %97
  %polly.access.mul.call1241.us = mul nuw nsw i64 %107, 60
  %polly.access.add.call1242.us = add nuw nsw i64 %polly.access.mul.call1241.us, %polly.indvar231.us
  %polly.access.call1243.us = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1242.us
  %polly.access.call1243.load.us = load double, double* %polly.access.call1243.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar237.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1243.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next238.us = add nuw i64 %polly.indvar237.us, 1
  %exitcond941.not = icmp eq i64 %polly.indvar237.us, %105
  br i1 %exitcond941.not, label %polly.loop_header245.us, label %polly.loop_header234.us

polly.loop_header245.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header245.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_header245.us ], [ %103, %polly.loop_header234.us ]
  %108 = add nuw nsw i64 %polly.indvar249.us, %97
  %polly.access.mul.call1253.us = mul nuw nsw i64 %108, 60
  %polly.access.add.call1254.us = add nuw nsw i64 %polly.access.mul.call1253.us, %polly.indvar231.us
  %polly.access.call1255.us = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1254.us
  %polly.access.call1255.load.us = load double, double* %polly.access.call1255.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1257.us = add nuw nsw i64 %polly.indvar249.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1258.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.us
  store double %polly.access.call1255.load.us, double* %polly.access.Packed_MemRef_call1258.us, align 8
  %polly.indvar_next250.us = add nuw nsw i64 %polly.indvar249.us, 1
  %polly.loop_cond251.not.not.us = icmp ult i64 %polly.indvar249.us, %106
  br i1 %polly.loop_cond251.not.not.us, label %polly.loop_header245.us, label %polly.loop_exit247.us

polly.loop_exit247.us:                            ; preds = %polly.loop_header245.us
  %polly.indvar_next232.us = add nuw nsw i64 %polly.indvar231.us, 1
  %exitcond942.not = icmp eq i64 %polly.indvar_next232.us, 60
  br i1 %exitcond942.not, label %polly.loop_header259.preheader, label %polly.loop_header228.us

polly.loop_header259.preheader:                   ; preds = %polly.loop_exit247, %polly.loop_exit247.us
  br label %polly.loop_header259

polly.loop_exit261:                               ; preds = %polly.loop_exit267
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next944 = add nuw nsw i64 %indvars.iv943, 16
  %exitcond950.not = icmp eq i64 %polly.indvar_next226, 5
  %indvar.next1486 = add i64 %indvar1485, 1
  br i1 %exitcond950.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header222, %polly.loop_exit247
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit247 ], [ 0, %polly.loop_header222 ]
  %polly.access.mul.Packed_MemRef_call1256 = mul nuw nsw i64 %polly.indvar231, 80
  br label %polly.loop_header245

polly.loop_exit247:                               ; preds = %polly.loop_header245
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %exitcond940.not = icmp eq i64 %polly.indvar_next232, 60
  br i1 %exitcond940.not, label %polly.loop_header259.preheader, label %polly.loop_header228

polly.loop_header245:                             ; preds = %polly.loop_header228, %polly.loop_header245
  %polly.indvar249 = phi i64 [ %polly.indvar_next250, %polly.loop_header245 ], [ %103, %polly.loop_header228 ]
  %109 = add nuw nsw i64 %polly.indvar249, %97
  %polly.access.mul.call1253 = mul nuw nsw i64 %109, 60
  %polly.access.add.call1254 = add nuw nsw i64 %polly.access.mul.call1253, %polly.indvar231
  %polly.access.call1255 = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1254
  %polly.access.call1255.load = load double, double* %polly.access.call1255, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1257 = add nuw nsw i64 %polly.indvar249, %polly.access.mul.Packed_MemRef_call1256
  %polly.access.Packed_MemRef_call1258 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257
  store double %polly.access.call1255.load, double* %polly.access.Packed_MemRef_call1258, align 8
  %polly.indvar_next250 = add nuw nsw i64 %polly.indvar249, 1
  %polly.loop_cond251.not.not = icmp ult i64 %polly.indvar249, %106
  br i1 %polly.loop_cond251.not.not, label %polly.loop_header245, label %polly.loop_exit247

polly.loop_header259:                             ; preds = %polly.loop_header259.preheader, %polly.loop_exit267
  %polly.indvar262 = phi i64 [ %polly.indvar_next263, %polly.loop_exit267 ], [ 0, %polly.loop_header259.preheader ]
  %polly.access.mul.Packed_MemRef_call1277 = mul nuw nsw i64 %polly.indvar262, 80
  br label %polly.loop_header265

polly.loop_exit267:                               ; preds = %polly.loop_exit273
  %polly.indvar_next263 = add nuw nsw i64 %polly.indvar262, 1
  %exitcond949.not = icmp eq i64 %polly.indvar_next263, 60
  br i1 %exitcond949.not, label %polly.loop_exit261, label %polly.loop_header259

polly.loop_header265:                             ; preds = %polly.loop_exit273, %polly.loop_header259
  %indvars.iv945 = phi i64 [ %indvars.iv.next946, %polly.loop_exit273 ], [ %indvars.iv943, %polly.loop_header259 ]
  %polly.indvar268 = phi i64 [ %polly.indvar_next269, %polly.loop_exit273 ], [ 0, %polly.loop_header259 ]
  %110 = add i64 %101, %polly.indvar268
  %smin1487 = call i64 @llvm.smin.i64(i64 %110, i64 31)
  %111 = add nuw nsw i64 %smin1487, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv945, i64 31)
  %112 = add nuw nsw i64 %polly.indvar268, %103
  %113 = add nuw nsw i64 %polly.indvar268, %102
  %polly.access.add.Packed_MemRef_call2282 = add nuw nsw i64 %112, %polly.access.mul.Packed_MemRef_call1277
  %polly.access.Packed_MemRef_call2283 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282
  %_p_scalar_284 = load double, double* %polly.access.Packed_MemRef_call2283, align 8
  %polly.access.Packed_MemRef_call1291 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2282
  %_p_scalar_292 = load double, double* %polly.access.Packed_MemRef_call1291, align 8
  %114 = mul nuw nsw i64 %113, 640
  %min.iters.check1488 = icmp ult i64 %smin1487, 3
  br i1 %min.iters.check1488, label %polly.loop_header271.preheader, label %vector.ph1489

vector.ph1489:                                    ; preds = %polly.loop_header265
  %n.vec1491 = and i64 %111, -4
  %broadcast.splatinsert1497 = insertelement <4 x double> poison, double %_p_scalar_284, i32 0
  %broadcast.splat1498 = shufflevector <4 x double> %broadcast.splatinsert1497, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1500 = insertelement <4 x double> poison, double %_p_scalar_292, i32 0
  %broadcast.splat1501 = shufflevector <4 x double> %broadcast.splatinsert1500, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1484

vector.body1484:                                  ; preds = %vector.body1484, %vector.ph1489
  %index1492 = phi i64 [ 0, %vector.ph1489 ], [ %index.next1493, %vector.body1484 ]
  %115 = add nuw nsw i64 %index1492, %97
  %116 = add nuw nsw i64 %index1492, %polly.access.mul.Packed_MemRef_call1277
  %117 = getelementptr double, double* %Packed_MemRef_call1, i64 %116
  %118 = bitcast double* %117 to <4 x double>*
  %wide.load1496 = load <4 x double>, <4 x double>* %118, align 8
  %119 = fmul fast <4 x double> %broadcast.splat1498, %wide.load1496
  %120 = getelementptr double, double* %Packed_MemRef_call2, i64 %116
  %121 = bitcast double* %120 to <4 x double>*
  %wide.load1499 = load <4 x double>, <4 x double>* %121, align 8
  %122 = fmul fast <4 x double> %broadcast.splat1501, %wide.load1499
  %123 = shl i64 %115, 3
  %124 = add nuw nsw i64 %123, %114
  %125 = getelementptr i8, i8* %call, i64 %124
  %126 = bitcast i8* %125 to <4 x double>*
  %wide.load1502 = load <4 x double>, <4 x double>* %126, align 8, !alias.scope !72, !noalias !74
  %127 = fadd fast <4 x double> %122, %119
  %128 = fmul fast <4 x double> %127, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %129 = fadd fast <4 x double> %128, %wide.load1502
  %130 = bitcast i8* %125 to <4 x double>*
  store <4 x double> %129, <4 x double>* %130, align 8, !alias.scope !72, !noalias !74
  %index.next1493 = add i64 %index1492, 4
  %131 = icmp eq i64 %index.next1493, %n.vec1491
  br i1 %131, label %middle.block1482, label %vector.body1484, !llvm.loop !84

middle.block1482:                                 ; preds = %vector.body1484
  %cmp.n1495 = icmp eq i64 %111, %n.vec1491
  br i1 %cmp.n1495, label %polly.loop_exit273, label %polly.loop_header271.preheader

polly.loop_header271.preheader:                   ; preds = %polly.loop_header265, %middle.block1482
  %polly.indvar274.ph = phi i64 [ 0, %polly.loop_header265 ], [ %n.vec1491, %middle.block1482 ]
  br label %polly.loop_header271

polly.loop_exit273:                               ; preds = %polly.loop_header271, %middle.block1482
  %polly.indvar_next269 = add nuw nsw i64 %polly.indvar268, 1
  %indvars.iv.next946 = add nuw nsw i64 %indvars.iv945, 1
  %exitcond948.not = icmp eq i64 %polly.indvar_next269, 16
  br i1 %exitcond948.not, label %polly.loop_exit267, label %polly.loop_header265

polly.loop_header271:                             ; preds = %polly.loop_header271.preheader, %polly.loop_header271
  %polly.indvar274 = phi i64 [ %polly.indvar_next275, %polly.loop_header271 ], [ %polly.indvar274.ph, %polly.loop_header271.preheader ]
  %132 = add nuw nsw i64 %polly.indvar274, %97
  %polly.access.add.Packed_MemRef_call1278 = add nuw nsw i64 %polly.indvar274, %polly.access.mul.Packed_MemRef_call1277
  %polly.access.Packed_MemRef_call1279 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1278
  %_p_scalar_280 = load double, double* %polly.access.Packed_MemRef_call1279, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_284, %_p_scalar_280
  %polly.access.Packed_MemRef_call2287 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1278
  %_p_scalar_288 = load double, double* %polly.access.Packed_MemRef_call2287, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_292, %_p_scalar_288
  %133 = shl i64 %132, 3
  %134 = add nuw nsw i64 %133, %114
  %scevgep293 = getelementptr i8, i8* %call, i64 %134
  %scevgep293294 = bitcast i8* %scevgep293 to double*
  %_p_scalar_295 = load double, double* %scevgep293294, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_295
  store double %p_add42.i118, double* %scevgep293294, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next275 = add nuw nsw i64 %polly.indvar274, 1
  %exitcond947.not = icmp eq i64 %polly.indvar274, %smin
  br i1 %exitcond947.not, label %polly.loop_exit273, label %polly.loop_header271, !llvm.loop !85

polly.start298:                                   ; preds = %kernel_syr2k.exit
  %malloccall300 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall302 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header386

polly.exiting299:                                 ; preds = %polly.loop_exit426
  tail call void @free(i8* nonnull %malloccall300)
  tail call void @free(i8* nonnull %malloccall302)
  br label %kernel_syr2k.exit90

polly.loop_header386:                             ; preds = %polly.loop_exit394, %polly.start298
  %indvar1424 = phi i64 [ %indvar.next1425, %polly.loop_exit394 ], [ 0, %polly.start298 ]
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_exit394 ], [ 1, %polly.start298 ]
  %135 = add i64 %indvar1424, 1
  %136 = mul nuw nsw i64 %polly.indvar389, 640
  %scevgep398 = getelementptr i8, i8* %call, i64 %136
  %min.iters.check1426 = icmp ult i64 %135, 4
  br i1 %min.iters.check1426, label %polly.loop_header392.preheader, label %vector.ph1427

vector.ph1427:                                    ; preds = %polly.loop_header386
  %n.vec1429 = and i64 %135, -4
  br label %vector.body1423

vector.body1423:                                  ; preds = %vector.body1423, %vector.ph1427
  %index1430 = phi i64 [ 0, %vector.ph1427 ], [ %index.next1431, %vector.body1423 ]
  %137 = shl nuw nsw i64 %index1430, 3
  %138 = getelementptr i8, i8* %scevgep398, i64 %137
  %139 = bitcast i8* %138 to <4 x double>*
  %wide.load1434 = load <4 x double>, <4 x double>* %139, align 8, !alias.scope !86, !noalias !88
  %140 = fmul fast <4 x double> %wide.load1434, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %141 = bitcast i8* %138 to <4 x double>*
  store <4 x double> %140, <4 x double>* %141, align 8, !alias.scope !86, !noalias !88
  %index.next1431 = add i64 %index1430, 4
  %142 = icmp eq i64 %index.next1431, %n.vec1429
  br i1 %142, label %middle.block1421, label %vector.body1423, !llvm.loop !93

middle.block1421:                                 ; preds = %vector.body1423
  %cmp.n1433 = icmp eq i64 %135, %n.vec1429
  br i1 %cmp.n1433, label %polly.loop_exit394, label %polly.loop_header392.preheader

polly.loop_header392.preheader:                   ; preds = %polly.loop_header386, %middle.block1421
  %polly.indvar395.ph = phi i64 [ 0, %polly.loop_header386 ], [ %n.vec1429, %middle.block1421 ]
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_header392, %middle.block1421
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond972.not = icmp eq i64 %polly.indvar_next390, 80
  %indvar.next1425 = add i64 %indvar1424, 1
  br i1 %exitcond972.not, label %polly.loop_header402.preheader, label %polly.loop_header386

polly.loop_header402.preheader:                   ; preds = %polly.loop_exit394
  %Packed_MemRef_call1301 = bitcast i8* %malloccall300 to double*
  %Packed_MemRef_call2303 = bitcast i8* %malloccall302 to double*
  br label %polly.loop_header402

polly.loop_header392:                             ; preds = %polly.loop_header392.preheader, %polly.loop_header392
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_header392 ], [ %polly.indvar395.ph, %polly.loop_header392.preheader ]
  %143 = shl nuw nsw i64 %polly.indvar395, 3
  %scevgep399 = getelementptr i8, i8* %scevgep398, i64 %143
  %scevgep399400 = bitcast i8* %scevgep399 to double*
  %_p_scalar_401 = load double, double* %scevgep399400, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_401, 1.200000e+00
  store double %p_mul.i57, double* %scevgep399400, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond971.not = icmp eq i64 %polly.indvar_next396, %polly.indvar389
  br i1 %exitcond971.not, label %polly.loop_exit394, label %polly.loop_header392, !llvm.loop !94

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_exit426
  %indvars.iv954 = phi i64 [ 80, %polly.loop_header402.preheader ], [ %indvars.iv.next955, %polly.loop_exit426 ]
  %polly.indvar405 = phi i64 [ 0, %polly.loop_header402.preheader ], [ %polly.indvar_next406, %polly.loop_exit426 ]
  %144 = shl nsw i64 %polly.indvar405, 5
  br label %polly.loop_header408

polly.loop_exit410:                               ; preds = %polly.loop_exit416
  %145 = mul nsw i64 %polly.indvar405, -32
  %146 = shl nuw nsw i64 %polly.indvar405, 1
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_exit465
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %indvars.iv.next955 = add nsw i64 %indvars.iv954, -32
  %exitcond970.not = icmp eq i64 %polly.indvar_next406, 3
  br i1 %exitcond970.not, label %polly.exiting299, label %polly.loop_header402

polly.loop_header408:                             ; preds = %polly.loop_exit416, %polly.loop_header402
  %polly.indvar411 = phi i64 [ 0, %polly.loop_header402 ], [ %polly.indvar_next412, %polly.loop_exit416 ]
  %polly.access.mul.Packed_MemRef_call2303 = mul nuw nsw i64 %polly.indvar411, 80
  br label %polly.loop_header414

polly.loop_exit416:                               ; preds = %polly.loop_header414
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond957.not = icmp eq i64 %polly.indvar_next412, 60
  br i1 %exitcond957.not, label %polly.loop_exit410, label %polly.loop_header408

polly.loop_header414:                             ; preds = %polly.loop_header414, %polly.loop_header408
  %polly.indvar417 = phi i64 [ 0, %polly.loop_header408 ], [ %polly.indvar_next418, %polly.loop_header414 ]
  %147 = add nuw nsw i64 %polly.indvar417, %144
  %polly.access.mul.call2421 = mul nuw nsw i64 %147, 60
  %polly.access.add.call2422 = add nuw nsw i64 %polly.access.mul.call2421, %polly.indvar411
  %polly.access.call2423 = getelementptr double, double* %polly.access.cast.call2718, i64 %polly.access.add.call2422
  %polly.access.call2423.load = load double, double* %polly.access.call2423, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2303 = add nuw nsw i64 %polly.indvar417, %polly.access.mul.Packed_MemRef_call2303
  %polly.access.Packed_MemRef_call2303 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303
  store double %polly.access.call2423.load, double* %polly.access.Packed_MemRef_call2303, align 8
  %polly.indvar_next418 = add nuw nsw i64 %polly.indvar417, 1
  %exitcond956.not = icmp eq i64 %polly.indvar_next418, %indvars.iv954
  br i1 %exitcond956.not, label %polly.loop_exit416, label %polly.loop_header414

polly.loop_header424:                             ; preds = %polly.loop_exit465, %polly.loop_exit410
  %indvar1438 = phi i64 [ %indvar.next1439, %polly.loop_exit465 ], [ 0, %polly.loop_exit410 ]
  %indvars.iv961 = phi i64 [ %indvars.iv.next962, %polly.loop_exit465 ], [ 0, %polly.loop_exit410 ]
  %polly.indvar427 = phi i64 [ %polly.indvar_next428, %polly.loop_exit465 ], [ %146, %polly.loop_exit410 ]
  %148 = shl nuw nsw i64 %indvar1438, 4
  %149 = shl nsw i64 %polly.indvar427, 4
  %150 = add nsw i64 %149, %145
  %151 = add nsw i64 %150, -1
  %.inv910 = icmp ugt i64 %150, 31
  %152 = select i1 %.inv910, i64 31, i64 %151
  %polly.loop_guard440 = icmp sgt i64 %152, -1
  %153 = or i64 %150, 15
  br i1 %polly.loop_guard440, label %polly.loop_header430.us, label %polly.loop_header430

polly.loop_header430.us:                          ; preds = %polly.loop_header424, %polly.loop_exit451.us
  %polly.indvar433.us = phi i64 [ %polly.indvar_next434.us, %polly.loop_exit451.us ], [ 0, %polly.loop_header424 ]
  %polly.access.mul.Packed_MemRef_call1301.us = mul nuw nsw i64 %polly.indvar433.us, 80
  br label %polly.loop_header437.us

polly.loop_header437.us:                          ; preds = %polly.loop_header430.us, %polly.loop_header437.us
  %polly.indvar441.us = phi i64 [ %polly.indvar_next442.us, %polly.loop_header437.us ], [ 0, %polly.loop_header430.us ]
  %154 = add nuw nsw i64 %polly.indvar441.us, %144
  %polly.access.mul.call1445.us = mul nuw nsw i64 %154, 60
  %polly.access.add.call1446.us = add nuw nsw i64 %polly.access.mul.call1445.us, %polly.indvar433.us
  %polly.access.call1447.us = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1446.us
  %polly.access.call1447.load.us = load double, double* %polly.access.call1447.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1301.us = add nuw nsw i64 %polly.indvar441.us, %polly.access.mul.Packed_MemRef_call1301.us
  %polly.access.Packed_MemRef_call1301.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us
  store double %polly.access.call1447.load.us, double* %polly.access.Packed_MemRef_call1301.us, align 8
  %polly.indvar_next442.us = add nuw i64 %polly.indvar441.us, 1
  %exitcond959.not = icmp eq i64 %polly.indvar441.us, %152
  br i1 %exitcond959.not, label %polly.loop_header449.us, label %polly.loop_header437.us

polly.loop_header449.us:                          ; preds = %polly.loop_header437.us, %polly.loop_header449.us
  %polly.indvar453.us = phi i64 [ %polly.indvar_next454.us, %polly.loop_header449.us ], [ %150, %polly.loop_header437.us ]
  %155 = add nuw nsw i64 %polly.indvar453.us, %144
  %polly.access.mul.call1457.us = mul nuw nsw i64 %155, 60
  %polly.access.add.call1458.us = add nuw nsw i64 %polly.access.mul.call1457.us, %polly.indvar433.us
  %polly.access.call1459.us = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1458.us
  %polly.access.call1459.load.us = load double, double* %polly.access.call1459.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1301461.us = add nuw nsw i64 %polly.indvar453.us, %polly.access.mul.Packed_MemRef_call1301.us
  %polly.access.Packed_MemRef_call1301462.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301461.us
  store double %polly.access.call1459.load.us, double* %polly.access.Packed_MemRef_call1301462.us, align 8
  %polly.indvar_next454.us = add nuw nsw i64 %polly.indvar453.us, 1
  %polly.loop_cond455.not.not.us = icmp ult i64 %polly.indvar453.us, %153
  br i1 %polly.loop_cond455.not.not.us, label %polly.loop_header449.us, label %polly.loop_exit451.us

polly.loop_exit451.us:                            ; preds = %polly.loop_header449.us
  %polly.indvar_next434.us = add nuw nsw i64 %polly.indvar433.us, 1
  %exitcond960.not = icmp eq i64 %polly.indvar_next434.us, 60
  br i1 %exitcond960.not, label %polly.loop_header463.preheader, label %polly.loop_header430.us

polly.loop_header463.preheader:                   ; preds = %polly.loop_exit451, %polly.loop_exit451.us
  br label %polly.loop_header463

polly.loop_exit465:                               ; preds = %polly.loop_exit471
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %indvars.iv.next962 = add nuw nsw i64 %indvars.iv961, 16
  %exitcond969.not = icmp eq i64 %polly.indvar_next428, 5
  %indvar.next1439 = add i64 %indvar1438, 1
  br i1 %exitcond969.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header430:                             ; preds = %polly.loop_header424, %polly.loop_exit451
  %polly.indvar433 = phi i64 [ %polly.indvar_next434, %polly.loop_exit451 ], [ 0, %polly.loop_header424 ]
  %polly.access.mul.Packed_MemRef_call1301460 = mul nuw nsw i64 %polly.indvar433, 80
  br label %polly.loop_header449

polly.loop_exit451:                               ; preds = %polly.loop_header449
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %exitcond958.not = icmp eq i64 %polly.indvar_next434, 60
  br i1 %exitcond958.not, label %polly.loop_header463.preheader, label %polly.loop_header430

polly.loop_header449:                             ; preds = %polly.loop_header430, %polly.loop_header449
  %polly.indvar453 = phi i64 [ %polly.indvar_next454, %polly.loop_header449 ], [ %150, %polly.loop_header430 ]
  %156 = add nuw nsw i64 %polly.indvar453, %144
  %polly.access.mul.call1457 = mul nuw nsw i64 %156, 60
  %polly.access.add.call1458 = add nuw nsw i64 %polly.access.mul.call1457, %polly.indvar433
  %polly.access.call1459 = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1458
  %polly.access.call1459.load = load double, double* %polly.access.call1459, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1301461 = add nuw nsw i64 %polly.indvar453, %polly.access.mul.Packed_MemRef_call1301460
  %polly.access.Packed_MemRef_call1301462 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301461
  store double %polly.access.call1459.load, double* %polly.access.Packed_MemRef_call1301462, align 8
  %polly.indvar_next454 = add nuw nsw i64 %polly.indvar453, 1
  %polly.loop_cond455.not.not = icmp ult i64 %polly.indvar453, %153
  br i1 %polly.loop_cond455.not.not, label %polly.loop_header449, label %polly.loop_exit451

polly.loop_header463:                             ; preds = %polly.loop_header463.preheader, %polly.loop_exit471
  %polly.indvar466 = phi i64 [ %polly.indvar_next467, %polly.loop_exit471 ], [ 0, %polly.loop_header463.preheader ]
  %polly.access.mul.Packed_MemRef_call1301481 = mul nuw nsw i64 %polly.indvar466, 80
  br label %polly.loop_header469

polly.loop_exit471:                               ; preds = %polly.loop_exit477
  %polly.indvar_next467 = add nuw nsw i64 %polly.indvar466, 1
  %exitcond968.not = icmp eq i64 %polly.indvar_next467, 60
  br i1 %exitcond968.not, label %polly.loop_exit465, label %polly.loop_header463

polly.loop_header469:                             ; preds = %polly.loop_exit477, %polly.loop_header463
  %indvars.iv963 = phi i64 [ %indvars.iv.next964, %polly.loop_exit477 ], [ %indvars.iv961, %polly.loop_header463 ]
  %polly.indvar472 = phi i64 [ %polly.indvar_next473, %polly.loop_exit477 ], [ 0, %polly.loop_header463 ]
  %157 = add i64 %148, %polly.indvar472
  %smin1440 = call i64 @llvm.smin.i64(i64 %157, i64 31)
  %158 = add nuw nsw i64 %smin1440, 1
  %smin965 = call i64 @llvm.smin.i64(i64 %indvars.iv963, i64 31)
  %159 = add nuw nsw i64 %polly.indvar472, %150
  %160 = add nuw nsw i64 %polly.indvar472, %149
  %polly.access.add.Packed_MemRef_call2303486 = add nuw nsw i64 %159, %polly.access.mul.Packed_MemRef_call1301481
  %polly.access.Packed_MemRef_call2303487 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303486
  %_p_scalar_488 = load double, double* %polly.access.Packed_MemRef_call2303487, align 8
  %polly.access.Packed_MemRef_call1301495 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call2303486
  %_p_scalar_496 = load double, double* %polly.access.Packed_MemRef_call1301495, align 8
  %161 = mul nuw nsw i64 %160, 640
  %min.iters.check1441 = icmp ult i64 %smin1440, 3
  br i1 %min.iters.check1441, label %polly.loop_header475.preheader, label %vector.ph1442

vector.ph1442:                                    ; preds = %polly.loop_header469
  %n.vec1444 = and i64 %158, -4
  %broadcast.splatinsert1450 = insertelement <4 x double> poison, double %_p_scalar_488, i32 0
  %broadcast.splat1451 = shufflevector <4 x double> %broadcast.splatinsert1450, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1453 = insertelement <4 x double> poison, double %_p_scalar_496, i32 0
  %broadcast.splat1454 = shufflevector <4 x double> %broadcast.splatinsert1453, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1437

vector.body1437:                                  ; preds = %vector.body1437, %vector.ph1442
  %index1445 = phi i64 [ 0, %vector.ph1442 ], [ %index.next1446, %vector.body1437 ]
  %162 = add nuw nsw i64 %index1445, %144
  %163 = add nuw nsw i64 %index1445, %polly.access.mul.Packed_MemRef_call1301481
  %164 = getelementptr double, double* %Packed_MemRef_call1301, i64 %163
  %165 = bitcast double* %164 to <4 x double>*
  %wide.load1449 = load <4 x double>, <4 x double>* %165, align 8
  %166 = fmul fast <4 x double> %broadcast.splat1451, %wide.load1449
  %167 = getelementptr double, double* %Packed_MemRef_call2303, i64 %163
  %168 = bitcast double* %167 to <4 x double>*
  %wide.load1452 = load <4 x double>, <4 x double>* %168, align 8
  %169 = fmul fast <4 x double> %broadcast.splat1454, %wide.load1452
  %170 = shl i64 %162, 3
  %171 = add nuw nsw i64 %170, %161
  %172 = getelementptr i8, i8* %call, i64 %171
  %173 = bitcast i8* %172 to <4 x double>*
  %wide.load1455 = load <4 x double>, <4 x double>* %173, align 8, !alias.scope !86, !noalias !88
  %174 = fadd fast <4 x double> %169, %166
  %175 = fmul fast <4 x double> %174, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %176 = fadd fast <4 x double> %175, %wide.load1455
  %177 = bitcast i8* %172 to <4 x double>*
  store <4 x double> %176, <4 x double>* %177, align 8, !alias.scope !86, !noalias !88
  %index.next1446 = add i64 %index1445, 4
  %178 = icmp eq i64 %index.next1446, %n.vec1444
  br i1 %178, label %middle.block1435, label %vector.body1437, !llvm.loop !97

middle.block1435:                                 ; preds = %vector.body1437
  %cmp.n1448 = icmp eq i64 %158, %n.vec1444
  br i1 %cmp.n1448, label %polly.loop_exit477, label %polly.loop_header475.preheader

polly.loop_header475.preheader:                   ; preds = %polly.loop_header469, %middle.block1435
  %polly.indvar478.ph = phi i64 [ 0, %polly.loop_header469 ], [ %n.vec1444, %middle.block1435 ]
  br label %polly.loop_header475

polly.loop_exit477:                               ; preds = %polly.loop_header475, %middle.block1435
  %polly.indvar_next473 = add nuw nsw i64 %polly.indvar472, 1
  %indvars.iv.next964 = add nuw nsw i64 %indvars.iv963, 1
  %exitcond967.not = icmp eq i64 %polly.indvar_next473, 16
  br i1 %exitcond967.not, label %polly.loop_exit471, label %polly.loop_header469

polly.loop_header475:                             ; preds = %polly.loop_header475.preheader, %polly.loop_header475
  %polly.indvar478 = phi i64 [ %polly.indvar_next479, %polly.loop_header475 ], [ %polly.indvar478.ph, %polly.loop_header475.preheader ]
  %179 = add nuw nsw i64 %polly.indvar478, %144
  %polly.access.add.Packed_MemRef_call1301482 = add nuw nsw i64 %polly.indvar478, %polly.access.mul.Packed_MemRef_call1301481
  %polly.access.Packed_MemRef_call1301483 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301482
  %_p_scalar_484 = load double, double* %polly.access.Packed_MemRef_call1301483, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_488, %_p_scalar_484
  %polly.access.Packed_MemRef_call2303491 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call1301482
  %_p_scalar_492 = load double, double* %polly.access.Packed_MemRef_call2303491, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_496, %_p_scalar_492
  %180 = shl i64 %179, 3
  %181 = add nuw nsw i64 %180, %161
  %scevgep497 = getelementptr i8, i8* %call, i64 %181
  %scevgep497498 = bitcast i8* %scevgep497 to double*
  %_p_scalar_499 = load double, double* %scevgep497498, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_499
  store double %p_add42.i79, double* %scevgep497498, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next479 = add nuw nsw i64 %polly.indvar478, 1
  %exitcond966.not = icmp eq i64 %polly.indvar478, %smin965
  br i1 %exitcond966.not, label %polly.loop_exit477, label %polly.loop_header475, !llvm.loop !98

polly.start502:                                   ; preds = %init_array.exit
  %malloccall504 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall506 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header590

polly.exiting503:                                 ; preds = %polly.loop_exit630
  tail call void @free(i8* nonnull %malloccall504)
  tail call void @free(i8* nonnull %malloccall506)
  br label %kernel_syr2k.exit

polly.loop_header590:                             ; preds = %polly.loop_exit598, %polly.start502
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit598 ], [ 0, %polly.start502 ]
  %polly.indvar593 = phi i64 [ %polly.indvar_next594, %polly.loop_exit598 ], [ 1, %polly.start502 ]
  %182 = add i64 %indvar, 1
  %183 = mul nuw nsw i64 %polly.indvar593, 640
  %scevgep602 = getelementptr i8, i8* %call, i64 %183
  %min.iters.check1379 = icmp ult i64 %182, 4
  br i1 %min.iters.check1379, label %polly.loop_header596.preheader, label %vector.ph1380

vector.ph1380:                                    ; preds = %polly.loop_header590
  %n.vec1382 = and i64 %182, -4
  br label %vector.body1378

vector.body1378:                                  ; preds = %vector.body1378, %vector.ph1380
  %index1383 = phi i64 [ 0, %vector.ph1380 ], [ %index.next1384, %vector.body1378 ]
  %184 = shl nuw nsw i64 %index1383, 3
  %185 = getelementptr i8, i8* %scevgep602, i64 %184
  %186 = bitcast i8* %185 to <4 x double>*
  %wide.load1387 = load <4 x double>, <4 x double>* %186, align 8, !alias.scope !99, !noalias !101
  %187 = fmul fast <4 x double> %wide.load1387, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %188 = bitcast i8* %185 to <4 x double>*
  store <4 x double> %187, <4 x double>* %188, align 8, !alias.scope !99, !noalias !101
  %index.next1384 = add i64 %index1383, 4
  %189 = icmp eq i64 %index.next1384, %n.vec1382
  br i1 %189, label %middle.block1376, label %vector.body1378, !llvm.loop !106

middle.block1376:                                 ; preds = %vector.body1378
  %cmp.n1386 = icmp eq i64 %182, %n.vec1382
  br i1 %cmp.n1386, label %polly.loop_exit598, label %polly.loop_header596.preheader

polly.loop_header596.preheader:                   ; preds = %polly.loop_header590, %middle.block1376
  %polly.indvar599.ph = phi i64 [ 0, %polly.loop_header590 ], [ %n.vec1382, %middle.block1376 ]
  br label %polly.loop_header596

polly.loop_exit598:                               ; preds = %polly.loop_header596, %middle.block1376
  %polly.indvar_next594 = add nuw nsw i64 %polly.indvar593, 1
  %exitcond991.not = icmp eq i64 %polly.indvar_next594, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond991.not, label %polly.loop_header606.preheader, label %polly.loop_header590

polly.loop_header606.preheader:                   ; preds = %polly.loop_exit598
  %Packed_MemRef_call1505 = bitcast i8* %malloccall504 to double*
  %Packed_MemRef_call2507 = bitcast i8* %malloccall506 to double*
  br label %polly.loop_header606

polly.loop_header596:                             ; preds = %polly.loop_header596.preheader, %polly.loop_header596
  %polly.indvar599 = phi i64 [ %polly.indvar_next600, %polly.loop_header596 ], [ %polly.indvar599.ph, %polly.loop_header596.preheader ]
  %190 = shl nuw nsw i64 %polly.indvar599, 3
  %scevgep603 = getelementptr i8, i8* %scevgep602, i64 %190
  %scevgep603604 = bitcast i8* %scevgep603 to double*
  %_p_scalar_605 = load double, double* %scevgep603604, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_605, 1.200000e+00
  store double %p_mul.i, double* %scevgep603604, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next600 = add nuw nsw i64 %polly.indvar599, 1
  %exitcond990.not = icmp eq i64 %polly.indvar_next600, %polly.indvar593
  br i1 %exitcond990.not, label %polly.loop_exit598, label %polly.loop_header596, !llvm.loop !107

polly.loop_header606:                             ; preds = %polly.loop_header606.preheader, %polly.loop_exit630
  %indvars.iv973 = phi i64 [ 80, %polly.loop_header606.preheader ], [ %indvars.iv.next974, %polly.loop_exit630 ]
  %polly.indvar609 = phi i64 [ 0, %polly.loop_header606.preheader ], [ %polly.indvar_next610, %polly.loop_exit630 ]
  %191 = shl nsw i64 %polly.indvar609, 5
  br label %polly.loop_header612

polly.loop_exit614:                               ; preds = %polly.loop_exit620
  %192 = mul nsw i64 %polly.indvar609, -32
  %193 = shl nuw nsw i64 %polly.indvar609, 1
  br label %polly.loop_header628

polly.loop_exit630:                               ; preds = %polly.loop_exit669
  %polly.indvar_next610 = add nuw nsw i64 %polly.indvar609, 1
  %indvars.iv.next974 = add nsw i64 %indvars.iv973, -32
  %exitcond989.not = icmp eq i64 %polly.indvar_next610, 3
  br i1 %exitcond989.not, label %polly.exiting503, label %polly.loop_header606

polly.loop_header612:                             ; preds = %polly.loop_exit620, %polly.loop_header606
  %polly.indvar615 = phi i64 [ 0, %polly.loop_header606 ], [ %polly.indvar_next616, %polly.loop_exit620 ]
  %polly.access.mul.Packed_MemRef_call2507 = mul nuw nsw i64 %polly.indvar615, 80
  br label %polly.loop_header618

polly.loop_exit620:                               ; preds = %polly.loop_header618
  %polly.indvar_next616 = add nuw nsw i64 %polly.indvar615, 1
  %exitcond976.not = icmp eq i64 %polly.indvar_next616, 60
  br i1 %exitcond976.not, label %polly.loop_exit614, label %polly.loop_header612

polly.loop_header618:                             ; preds = %polly.loop_header618, %polly.loop_header612
  %polly.indvar621 = phi i64 [ 0, %polly.loop_header612 ], [ %polly.indvar_next622, %polly.loop_header618 ]
  %194 = add nuw nsw i64 %polly.indvar621, %191
  %polly.access.mul.call2625 = mul nuw nsw i64 %194, 60
  %polly.access.add.call2626 = add nuw nsw i64 %polly.access.mul.call2625, %polly.indvar615
  %polly.access.call2627 = getelementptr double, double* %polly.access.cast.call2718, i64 %polly.access.add.call2626
  %polly.access.call2627.load = load double, double* %polly.access.call2627, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2507 = add nuw nsw i64 %polly.indvar621, %polly.access.mul.Packed_MemRef_call2507
  %polly.access.Packed_MemRef_call2507 = getelementptr double, double* %Packed_MemRef_call2507, i64 %polly.access.add.Packed_MemRef_call2507
  store double %polly.access.call2627.load, double* %polly.access.Packed_MemRef_call2507, align 8
  %polly.indvar_next622 = add nuw nsw i64 %polly.indvar621, 1
  %exitcond975.not = icmp eq i64 %polly.indvar_next622, %indvars.iv973
  br i1 %exitcond975.not, label %polly.loop_exit620, label %polly.loop_header618

polly.loop_header628:                             ; preds = %polly.loop_exit669, %polly.loop_exit614
  %indvar1391 = phi i64 [ %indvar.next1392, %polly.loop_exit669 ], [ 0, %polly.loop_exit614 ]
  %indvars.iv980 = phi i64 [ %indvars.iv.next981, %polly.loop_exit669 ], [ 0, %polly.loop_exit614 ]
  %polly.indvar631 = phi i64 [ %polly.indvar_next632, %polly.loop_exit669 ], [ %193, %polly.loop_exit614 ]
  %195 = shl nuw nsw i64 %indvar1391, 4
  %196 = shl nsw i64 %polly.indvar631, 4
  %197 = add nsw i64 %196, %192
  %198 = add nsw i64 %197, -1
  %.inv911 = icmp ugt i64 %197, 31
  %199 = select i1 %.inv911, i64 31, i64 %198
  %polly.loop_guard644 = icmp sgt i64 %199, -1
  %200 = or i64 %197, 15
  br i1 %polly.loop_guard644, label %polly.loop_header634.us, label %polly.loop_header634

polly.loop_header634.us:                          ; preds = %polly.loop_header628, %polly.loop_exit655.us
  %polly.indvar637.us = phi i64 [ %polly.indvar_next638.us, %polly.loop_exit655.us ], [ 0, %polly.loop_header628 ]
  %polly.access.mul.Packed_MemRef_call1505.us = mul nuw nsw i64 %polly.indvar637.us, 80
  br label %polly.loop_header641.us

polly.loop_header641.us:                          ; preds = %polly.loop_header634.us, %polly.loop_header641.us
  %polly.indvar645.us = phi i64 [ %polly.indvar_next646.us, %polly.loop_header641.us ], [ 0, %polly.loop_header634.us ]
  %201 = add nuw nsw i64 %polly.indvar645.us, %191
  %polly.access.mul.call1649.us = mul nuw nsw i64 %201, 60
  %polly.access.add.call1650.us = add nuw nsw i64 %polly.access.mul.call1649.us, %polly.indvar637.us
  %polly.access.call1651.us = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1650.us
  %polly.access.call1651.load.us = load double, double* %polly.access.call1651.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1505.us = add nuw nsw i64 %polly.indvar645.us, %polly.access.mul.Packed_MemRef_call1505.us
  %polly.access.Packed_MemRef_call1505.us = getelementptr double, double* %Packed_MemRef_call1505, i64 %polly.access.add.Packed_MemRef_call1505.us
  store double %polly.access.call1651.load.us, double* %polly.access.Packed_MemRef_call1505.us, align 8
  %polly.indvar_next646.us = add nuw i64 %polly.indvar645.us, 1
  %exitcond978.not = icmp eq i64 %polly.indvar645.us, %199
  br i1 %exitcond978.not, label %polly.loop_header653.us, label %polly.loop_header641.us

polly.loop_header653.us:                          ; preds = %polly.loop_header641.us, %polly.loop_header653.us
  %polly.indvar657.us = phi i64 [ %polly.indvar_next658.us, %polly.loop_header653.us ], [ %197, %polly.loop_header641.us ]
  %202 = add nuw nsw i64 %polly.indvar657.us, %191
  %polly.access.mul.call1661.us = mul nuw nsw i64 %202, 60
  %polly.access.add.call1662.us = add nuw nsw i64 %polly.access.mul.call1661.us, %polly.indvar637.us
  %polly.access.call1663.us = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1662.us
  %polly.access.call1663.load.us = load double, double* %polly.access.call1663.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1505665.us = add nuw nsw i64 %polly.indvar657.us, %polly.access.mul.Packed_MemRef_call1505.us
  %polly.access.Packed_MemRef_call1505666.us = getelementptr double, double* %Packed_MemRef_call1505, i64 %polly.access.add.Packed_MemRef_call1505665.us
  store double %polly.access.call1663.load.us, double* %polly.access.Packed_MemRef_call1505666.us, align 8
  %polly.indvar_next658.us = add nuw nsw i64 %polly.indvar657.us, 1
  %polly.loop_cond659.not.not.us = icmp ult i64 %polly.indvar657.us, %200
  br i1 %polly.loop_cond659.not.not.us, label %polly.loop_header653.us, label %polly.loop_exit655.us

polly.loop_exit655.us:                            ; preds = %polly.loop_header653.us
  %polly.indvar_next638.us = add nuw nsw i64 %polly.indvar637.us, 1
  %exitcond979.not = icmp eq i64 %polly.indvar_next638.us, 60
  br i1 %exitcond979.not, label %polly.loop_header667.preheader, label %polly.loop_header634.us

polly.loop_header667.preheader:                   ; preds = %polly.loop_exit655, %polly.loop_exit655.us
  br label %polly.loop_header667

polly.loop_exit669:                               ; preds = %polly.loop_exit675
  %polly.indvar_next632 = add nuw nsw i64 %polly.indvar631, 1
  %indvars.iv.next981 = add nuw nsw i64 %indvars.iv980, 16
  %exitcond988.not = icmp eq i64 %polly.indvar_next632, 5
  %indvar.next1392 = add i64 %indvar1391, 1
  br i1 %exitcond988.not, label %polly.loop_exit630, label %polly.loop_header628

polly.loop_header634:                             ; preds = %polly.loop_header628, %polly.loop_exit655
  %polly.indvar637 = phi i64 [ %polly.indvar_next638, %polly.loop_exit655 ], [ 0, %polly.loop_header628 ]
  %polly.access.mul.Packed_MemRef_call1505664 = mul nuw nsw i64 %polly.indvar637, 80
  br label %polly.loop_header653

polly.loop_exit655:                               ; preds = %polly.loop_header653
  %polly.indvar_next638 = add nuw nsw i64 %polly.indvar637, 1
  %exitcond977.not = icmp eq i64 %polly.indvar_next638, 60
  br i1 %exitcond977.not, label %polly.loop_header667.preheader, label %polly.loop_header634

polly.loop_header653:                             ; preds = %polly.loop_header634, %polly.loop_header653
  %polly.indvar657 = phi i64 [ %polly.indvar_next658, %polly.loop_header653 ], [ %197, %polly.loop_header634 ]
  %203 = add nuw nsw i64 %polly.indvar657, %191
  %polly.access.mul.call1661 = mul nuw nsw i64 %203, 60
  %polly.access.add.call1662 = add nuw nsw i64 %polly.access.mul.call1661, %polly.indvar637
  %polly.access.call1663 = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1662
  %polly.access.call1663.load = load double, double* %polly.access.call1663, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1505665 = add nuw nsw i64 %polly.indvar657, %polly.access.mul.Packed_MemRef_call1505664
  %polly.access.Packed_MemRef_call1505666 = getelementptr double, double* %Packed_MemRef_call1505, i64 %polly.access.add.Packed_MemRef_call1505665
  store double %polly.access.call1663.load, double* %polly.access.Packed_MemRef_call1505666, align 8
  %polly.indvar_next658 = add nuw nsw i64 %polly.indvar657, 1
  %polly.loop_cond659.not.not = icmp ult i64 %polly.indvar657, %200
  br i1 %polly.loop_cond659.not.not, label %polly.loop_header653, label %polly.loop_exit655

polly.loop_header667:                             ; preds = %polly.loop_header667.preheader, %polly.loop_exit675
  %polly.indvar670 = phi i64 [ %polly.indvar_next671, %polly.loop_exit675 ], [ 0, %polly.loop_header667.preheader ]
  %polly.access.mul.Packed_MemRef_call1505685 = mul nuw nsw i64 %polly.indvar670, 80
  br label %polly.loop_header673

polly.loop_exit675:                               ; preds = %polly.loop_exit681
  %polly.indvar_next671 = add nuw nsw i64 %polly.indvar670, 1
  %exitcond987.not = icmp eq i64 %polly.indvar_next671, 60
  br i1 %exitcond987.not, label %polly.loop_exit669, label %polly.loop_header667

polly.loop_header673:                             ; preds = %polly.loop_exit681, %polly.loop_header667
  %indvars.iv982 = phi i64 [ %indvars.iv.next983, %polly.loop_exit681 ], [ %indvars.iv980, %polly.loop_header667 ]
  %polly.indvar676 = phi i64 [ %polly.indvar_next677, %polly.loop_exit681 ], [ 0, %polly.loop_header667 ]
  %204 = add i64 %195, %polly.indvar676
  %smin1393 = call i64 @llvm.smin.i64(i64 %204, i64 31)
  %205 = add nuw nsw i64 %smin1393, 1
  %smin984 = call i64 @llvm.smin.i64(i64 %indvars.iv982, i64 31)
  %206 = add nuw nsw i64 %polly.indvar676, %197
  %207 = add nuw nsw i64 %polly.indvar676, %196
  %polly.access.add.Packed_MemRef_call2507690 = add nuw nsw i64 %206, %polly.access.mul.Packed_MemRef_call1505685
  %polly.access.Packed_MemRef_call2507691 = getelementptr double, double* %Packed_MemRef_call2507, i64 %polly.access.add.Packed_MemRef_call2507690
  %_p_scalar_692 = load double, double* %polly.access.Packed_MemRef_call2507691, align 8
  %polly.access.Packed_MemRef_call1505699 = getelementptr double, double* %Packed_MemRef_call1505, i64 %polly.access.add.Packed_MemRef_call2507690
  %_p_scalar_700 = load double, double* %polly.access.Packed_MemRef_call1505699, align 8
  %208 = mul nuw nsw i64 %207, 640
  %min.iters.check1394 = icmp ult i64 %smin1393, 3
  br i1 %min.iters.check1394, label %polly.loop_header679.preheader, label %vector.ph1395

vector.ph1395:                                    ; preds = %polly.loop_header673
  %n.vec1397 = and i64 %205, -4
  %broadcast.splatinsert1403 = insertelement <4 x double> poison, double %_p_scalar_692, i32 0
  %broadcast.splat1404 = shufflevector <4 x double> %broadcast.splatinsert1403, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1406 = insertelement <4 x double> poison, double %_p_scalar_700, i32 0
  %broadcast.splat1407 = shufflevector <4 x double> %broadcast.splatinsert1406, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1390

vector.body1390:                                  ; preds = %vector.body1390, %vector.ph1395
  %index1398 = phi i64 [ 0, %vector.ph1395 ], [ %index.next1399, %vector.body1390 ]
  %209 = add nuw nsw i64 %index1398, %191
  %210 = add nuw nsw i64 %index1398, %polly.access.mul.Packed_MemRef_call1505685
  %211 = getelementptr double, double* %Packed_MemRef_call1505, i64 %210
  %212 = bitcast double* %211 to <4 x double>*
  %wide.load1402 = load <4 x double>, <4 x double>* %212, align 8
  %213 = fmul fast <4 x double> %broadcast.splat1404, %wide.load1402
  %214 = getelementptr double, double* %Packed_MemRef_call2507, i64 %210
  %215 = bitcast double* %214 to <4 x double>*
  %wide.load1405 = load <4 x double>, <4 x double>* %215, align 8
  %216 = fmul fast <4 x double> %broadcast.splat1407, %wide.load1405
  %217 = shl i64 %209, 3
  %218 = add nuw nsw i64 %217, %208
  %219 = getelementptr i8, i8* %call, i64 %218
  %220 = bitcast i8* %219 to <4 x double>*
  %wide.load1408 = load <4 x double>, <4 x double>* %220, align 8, !alias.scope !99, !noalias !101
  %221 = fadd fast <4 x double> %216, %213
  %222 = fmul fast <4 x double> %221, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %223 = fadd fast <4 x double> %222, %wide.load1408
  %224 = bitcast i8* %219 to <4 x double>*
  store <4 x double> %223, <4 x double>* %224, align 8, !alias.scope !99, !noalias !101
  %index.next1399 = add i64 %index1398, 4
  %225 = icmp eq i64 %index.next1399, %n.vec1397
  br i1 %225, label %middle.block1388, label %vector.body1390, !llvm.loop !110

middle.block1388:                                 ; preds = %vector.body1390
  %cmp.n1401 = icmp eq i64 %205, %n.vec1397
  br i1 %cmp.n1401, label %polly.loop_exit681, label %polly.loop_header679.preheader

polly.loop_header679.preheader:                   ; preds = %polly.loop_header673, %middle.block1388
  %polly.indvar682.ph = phi i64 [ 0, %polly.loop_header673 ], [ %n.vec1397, %middle.block1388 ]
  br label %polly.loop_header679

polly.loop_exit681:                               ; preds = %polly.loop_header679, %middle.block1388
  %polly.indvar_next677 = add nuw nsw i64 %polly.indvar676, 1
  %indvars.iv.next983 = add nuw nsw i64 %indvars.iv982, 1
  %exitcond986.not = icmp eq i64 %polly.indvar_next677, 16
  br i1 %exitcond986.not, label %polly.loop_exit675, label %polly.loop_header673

polly.loop_header679:                             ; preds = %polly.loop_header679.preheader, %polly.loop_header679
  %polly.indvar682 = phi i64 [ %polly.indvar_next683, %polly.loop_header679 ], [ %polly.indvar682.ph, %polly.loop_header679.preheader ]
  %226 = add nuw nsw i64 %polly.indvar682, %191
  %polly.access.add.Packed_MemRef_call1505686 = add nuw nsw i64 %polly.indvar682, %polly.access.mul.Packed_MemRef_call1505685
  %polly.access.Packed_MemRef_call1505687 = getelementptr double, double* %Packed_MemRef_call1505, i64 %polly.access.add.Packed_MemRef_call1505686
  %_p_scalar_688 = load double, double* %polly.access.Packed_MemRef_call1505687, align 8
  %p_mul27.i = fmul fast double %_p_scalar_692, %_p_scalar_688
  %polly.access.Packed_MemRef_call2507695 = getelementptr double, double* %Packed_MemRef_call2507, i64 %polly.access.add.Packed_MemRef_call1505686
  %_p_scalar_696 = load double, double* %polly.access.Packed_MemRef_call2507695, align 8
  %p_mul37.i = fmul fast double %_p_scalar_700, %_p_scalar_696
  %227 = shl i64 %226, 3
  %228 = add nuw nsw i64 %227, %208
  %scevgep701 = getelementptr i8, i8* %call, i64 %228
  %scevgep701702 = bitcast i8* %scevgep701 to double*
  %_p_scalar_703 = load double, double* %scevgep701702, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_703
  store double %p_add42.i, double* %scevgep701702, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next683 = add nuw nsw i64 %polly.indvar682, 1
  %exitcond985.not = icmp eq i64 %polly.indvar682, %smin984
  br i1 %exitcond985.not, label %polly.loop_exit681, label %polly.loop_header679, !llvm.loop !111

polly.loop_header842:                             ; preds = %entry, %polly.loop_exit850
  %polly.indvar845 = phi i64 [ %polly.indvar_next846, %polly.loop_exit850 ], [ 0, %entry ]
  %229 = mul nuw nsw i64 %polly.indvar845, 640
  %230 = trunc i64 %polly.indvar845 to i32
  %broadcast.splatinsert1110 = insertelement <4 x i32> poison, i32 %230, i32 0
  %broadcast.splat1111 = shufflevector <4 x i32> %broadcast.splatinsert1110, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1100

vector.body1100:                                  ; preds = %vector.body1100, %polly.loop_header842
  %index1102 = phi i64 [ 0, %polly.loop_header842 ], [ %index.next1103, %vector.body1100 ]
  %vec.ind1108 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header842 ], [ %vec.ind.next1109, %vector.body1100 ]
  %231 = mul <4 x i32> %vec.ind1108, %broadcast.splat1111
  %232 = add <4 x i32> %231, <i32 3, i32 3, i32 3, i32 3>
  %233 = urem <4 x i32> %232, <i32 80, i32 80, i32 80, i32 80>
  %234 = sitofp <4 x i32> %233 to <4 x double>
  %235 = fmul fast <4 x double> %234, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %236 = shl i64 %index1102, 3
  %237 = add nuw nsw i64 %236, %229
  %238 = getelementptr i8, i8* %call, i64 %237
  %239 = bitcast i8* %238 to <4 x double>*
  store <4 x double> %235, <4 x double>* %239, align 8, !alias.scope !112, !noalias !114
  %index.next1103 = add i64 %index1102, 4
  %vec.ind.next1109 = add <4 x i32> %vec.ind1108, <i32 4, i32 4, i32 4, i32 4>
  %240 = icmp eq i64 %index.next1103, 32
  br i1 %240, label %polly.loop_exit850, label %vector.body1100, !llvm.loop !117

polly.loop_exit850:                               ; preds = %vector.body1100
  %polly.indvar_next846 = add nuw nsw i64 %polly.indvar845, 1
  %exitcond1011.not = icmp eq i64 %polly.indvar_next846, 32
  br i1 %exitcond1011.not, label %polly.loop_header842.1, label %polly.loop_header842

polly.loop_header869:                             ; preds = %polly.loop_exit850.2.2, %polly.loop_exit877
  %polly.indvar872 = phi i64 [ %polly.indvar_next873, %polly.loop_exit877 ], [ 0, %polly.loop_exit850.2.2 ]
  %241 = mul nuw nsw i64 %polly.indvar872, 480
  %242 = trunc i64 %polly.indvar872 to i32
  %broadcast.splatinsert1224 = insertelement <4 x i32> poison, i32 %242, i32 0
  %broadcast.splat1225 = shufflevector <4 x i32> %broadcast.splatinsert1224, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1214

vector.body1214:                                  ; preds = %vector.body1214, %polly.loop_header869
  %index1216 = phi i64 [ 0, %polly.loop_header869 ], [ %index.next1217, %vector.body1214 ]
  %vec.ind1222 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header869 ], [ %vec.ind.next1223, %vector.body1214 ]
  %243 = mul <4 x i32> %vec.ind1222, %broadcast.splat1225
  %244 = add <4 x i32> %243, <i32 2, i32 2, i32 2, i32 2>
  %245 = urem <4 x i32> %244, <i32 60, i32 60, i32 60, i32 60>
  %246 = sitofp <4 x i32> %245 to <4 x double>
  %247 = fmul fast <4 x double> %246, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %248 = shl i64 %index1216, 3
  %249 = add i64 %248, %241
  %250 = getelementptr i8, i8* %call2, i64 %249
  %251 = bitcast i8* %250 to <4 x double>*
  store <4 x double> %247, <4 x double>* %251, align 8, !alias.scope !116, !noalias !118
  %index.next1217 = add i64 %index1216, 4
  %vec.ind.next1223 = add <4 x i32> %vec.ind1222, <i32 4, i32 4, i32 4, i32 4>
  %252 = icmp eq i64 %index.next1217, 32
  br i1 %252, label %polly.loop_exit877, label %vector.body1214, !llvm.loop !119

polly.loop_exit877:                               ; preds = %vector.body1214
  %polly.indvar_next873 = add nuw nsw i64 %polly.indvar872, 1
  %exitcond1002.not = icmp eq i64 %polly.indvar_next873, 32
  br i1 %exitcond1002.not, label %polly.loop_header869.1, label %polly.loop_header869

polly.loop_header895:                             ; preds = %polly.loop_exit877.1.2, %polly.loop_exit903
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_exit903 ], [ 0, %polly.loop_exit877.1.2 ]
  %253 = mul nuw nsw i64 %polly.indvar898, 480
  %254 = trunc i64 %polly.indvar898 to i32
  %broadcast.splatinsert1302 = insertelement <4 x i32> poison, i32 %254, i32 0
  %broadcast.splat1303 = shufflevector <4 x i32> %broadcast.splatinsert1302, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1292

vector.body1292:                                  ; preds = %vector.body1292, %polly.loop_header895
  %index1294 = phi i64 [ 0, %polly.loop_header895 ], [ %index.next1295, %vector.body1292 ]
  %vec.ind1300 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header895 ], [ %vec.ind.next1301, %vector.body1292 ]
  %255 = mul <4 x i32> %vec.ind1300, %broadcast.splat1303
  %256 = add <4 x i32> %255, <i32 1, i32 1, i32 1, i32 1>
  %257 = urem <4 x i32> %256, <i32 80, i32 80, i32 80, i32 80>
  %258 = sitofp <4 x i32> %257 to <4 x double>
  %259 = fmul fast <4 x double> %258, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %260 = shl i64 %index1294, 3
  %261 = add i64 %260, %253
  %262 = getelementptr i8, i8* %call1, i64 %261
  %263 = bitcast i8* %262 to <4 x double>*
  store <4 x double> %259, <4 x double>* %263, align 8, !alias.scope !115, !noalias !120
  %index.next1295 = add i64 %index1294, 4
  %vec.ind.next1301 = add <4 x i32> %vec.ind1300, <i32 4, i32 4, i32 4, i32 4>
  %264 = icmp eq i64 %index.next1295, 32
  br i1 %264, label %polly.loop_exit903, label %vector.body1292, !llvm.loop !121

polly.loop_exit903:                               ; preds = %vector.body1292
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %exitcond996.not = icmp eq i64 %polly.indvar_next899, 32
  br i1 %exitcond996.not, label %polly.loop_header895.1, label %polly.loop_header895

polly.loop_header895.1:                           ; preds = %polly.loop_exit903, %polly.loop_exit903.1
  %polly.indvar898.1 = phi i64 [ %polly.indvar_next899.1, %polly.loop_exit903.1 ], [ 0, %polly.loop_exit903 ]
  %265 = mul nuw nsw i64 %polly.indvar898.1, 480
  %266 = trunc i64 %polly.indvar898.1 to i32
  %broadcast.splatinsert1314 = insertelement <4 x i32> poison, i32 %266, i32 0
  %broadcast.splat1315 = shufflevector <4 x i32> %broadcast.splatinsert1314, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1306

vector.body1306:                                  ; preds = %vector.body1306, %polly.loop_header895.1
  %index1308 = phi i64 [ 0, %polly.loop_header895.1 ], [ %index.next1309, %vector.body1306 ]
  %vec.ind1312 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header895.1 ], [ %vec.ind.next1313, %vector.body1306 ]
  %267 = add nuw nsw <4 x i64> %vec.ind1312, <i64 32, i64 32, i64 32, i64 32>
  %268 = trunc <4 x i64> %267 to <4 x i32>
  %269 = mul <4 x i32> %broadcast.splat1315, %268
  %270 = add <4 x i32> %269, <i32 1, i32 1, i32 1, i32 1>
  %271 = urem <4 x i32> %270, <i32 80, i32 80, i32 80, i32 80>
  %272 = sitofp <4 x i32> %271 to <4 x double>
  %273 = fmul fast <4 x double> %272, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %274 = extractelement <4 x i64> %267, i32 0
  %275 = shl i64 %274, 3
  %276 = add i64 %275, %265
  %277 = getelementptr i8, i8* %call1, i64 %276
  %278 = bitcast i8* %277 to <4 x double>*
  store <4 x double> %273, <4 x double>* %278, align 8, !alias.scope !115, !noalias !120
  %index.next1309 = add i64 %index1308, 4
  %vec.ind.next1313 = add <4 x i64> %vec.ind1312, <i64 4, i64 4, i64 4, i64 4>
  %279 = icmp eq i64 %index.next1309, 28
  br i1 %279, label %polly.loop_exit903.1, label %vector.body1306, !llvm.loop !122

polly.loop_exit903.1:                             ; preds = %vector.body1306
  %polly.indvar_next899.1 = add nuw nsw i64 %polly.indvar898.1, 1
  %exitcond996.1.not = icmp eq i64 %polly.indvar_next899.1, 32
  br i1 %exitcond996.1.not, label %polly.loop_header895.11019, label %polly.loop_header895.1

polly.loop_header895.11019:                       ; preds = %polly.loop_exit903.1, %polly.loop_exit903.11030
  %polly.indvar898.11018 = phi i64 [ %polly.indvar_next899.11028, %polly.loop_exit903.11030 ], [ 0, %polly.loop_exit903.1 ]
  %280 = add nuw nsw i64 %polly.indvar898.11018, 32
  %281 = mul nuw nsw i64 %280, 480
  %282 = trunc i64 %280 to i32
  %broadcast.splatinsert1328 = insertelement <4 x i32> poison, i32 %282, i32 0
  %broadcast.splat1329 = shufflevector <4 x i32> %broadcast.splatinsert1328, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1318

vector.body1318:                                  ; preds = %vector.body1318, %polly.loop_header895.11019
  %index1320 = phi i64 [ 0, %polly.loop_header895.11019 ], [ %index.next1321, %vector.body1318 ]
  %vec.ind1326 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header895.11019 ], [ %vec.ind.next1327, %vector.body1318 ]
  %283 = mul <4 x i32> %vec.ind1326, %broadcast.splat1329
  %284 = add <4 x i32> %283, <i32 1, i32 1, i32 1, i32 1>
  %285 = urem <4 x i32> %284, <i32 80, i32 80, i32 80, i32 80>
  %286 = sitofp <4 x i32> %285 to <4 x double>
  %287 = fmul fast <4 x double> %286, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %288 = shl i64 %index1320, 3
  %289 = add i64 %288, %281
  %290 = getelementptr i8, i8* %call1, i64 %289
  %291 = bitcast i8* %290 to <4 x double>*
  store <4 x double> %287, <4 x double>* %291, align 8, !alias.scope !115, !noalias !120
  %index.next1321 = add i64 %index1320, 4
  %vec.ind.next1327 = add <4 x i32> %vec.ind1326, <i32 4, i32 4, i32 4, i32 4>
  %292 = icmp eq i64 %index.next1321, 32
  br i1 %292, label %polly.loop_exit903.11030, label %vector.body1318, !llvm.loop !123

polly.loop_exit903.11030:                         ; preds = %vector.body1318
  %polly.indvar_next899.11028 = add nuw nsw i64 %polly.indvar898.11018, 1
  %exitcond996.11029.not = icmp eq i64 %polly.indvar_next899.11028, 32
  br i1 %exitcond996.11029.not, label %polly.loop_header895.1.1, label %polly.loop_header895.11019

polly.loop_header895.1.1:                         ; preds = %polly.loop_exit903.11030, %polly.loop_exit903.1.1
  %polly.indvar898.1.1 = phi i64 [ %polly.indvar_next899.1.1, %polly.loop_exit903.1.1 ], [ 0, %polly.loop_exit903.11030 ]
  %293 = add nuw nsw i64 %polly.indvar898.1.1, 32
  %294 = mul nuw nsw i64 %293, 480
  %295 = trunc i64 %293 to i32
  %broadcast.splatinsert1340 = insertelement <4 x i32> poison, i32 %295, i32 0
  %broadcast.splat1341 = shufflevector <4 x i32> %broadcast.splatinsert1340, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1332

vector.body1332:                                  ; preds = %vector.body1332, %polly.loop_header895.1.1
  %index1334 = phi i64 [ 0, %polly.loop_header895.1.1 ], [ %index.next1335, %vector.body1332 ]
  %vec.ind1338 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header895.1.1 ], [ %vec.ind.next1339, %vector.body1332 ]
  %296 = add nuw nsw <4 x i64> %vec.ind1338, <i64 32, i64 32, i64 32, i64 32>
  %297 = trunc <4 x i64> %296 to <4 x i32>
  %298 = mul <4 x i32> %broadcast.splat1341, %297
  %299 = add <4 x i32> %298, <i32 1, i32 1, i32 1, i32 1>
  %300 = urem <4 x i32> %299, <i32 80, i32 80, i32 80, i32 80>
  %301 = sitofp <4 x i32> %300 to <4 x double>
  %302 = fmul fast <4 x double> %301, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %303 = extractelement <4 x i64> %296, i32 0
  %304 = shl i64 %303, 3
  %305 = add i64 %304, %294
  %306 = getelementptr i8, i8* %call1, i64 %305
  %307 = bitcast i8* %306 to <4 x double>*
  store <4 x double> %302, <4 x double>* %307, align 8, !alias.scope !115, !noalias !120
  %index.next1335 = add i64 %index1334, 4
  %vec.ind.next1339 = add <4 x i64> %vec.ind1338, <i64 4, i64 4, i64 4, i64 4>
  %308 = icmp eq i64 %index.next1335, 28
  br i1 %308, label %polly.loop_exit903.1.1, label %vector.body1332, !llvm.loop !124

polly.loop_exit903.1.1:                           ; preds = %vector.body1332
  %polly.indvar_next899.1.1 = add nuw nsw i64 %polly.indvar898.1.1, 1
  %exitcond996.1.1.not = icmp eq i64 %polly.indvar_next899.1.1, 32
  br i1 %exitcond996.1.1.not, label %polly.loop_header895.2, label %polly.loop_header895.1.1

polly.loop_header895.2:                           ; preds = %polly.loop_exit903.1.1, %polly.loop_exit903.2
  %polly.indvar898.2 = phi i64 [ %polly.indvar_next899.2, %polly.loop_exit903.2 ], [ 0, %polly.loop_exit903.1.1 ]
  %309 = add nuw nsw i64 %polly.indvar898.2, 64
  %310 = mul nuw nsw i64 %309, 480
  %311 = trunc i64 %309 to i32
  %broadcast.splatinsert1354 = insertelement <4 x i32> poison, i32 %311, i32 0
  %broadcast.splat1355 = shufflevector <4 x i32> %broadcast.splatinsert1354, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1344

vector.body1344:                                  ; preds = %vector.body1344, %polly.loop_header895.2
  %index1346 = phi i64 [ 0, %polly.loop_header895.2 ], [ %index.next1347, %vector.body1344 ]
  %vec.ind1352 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header895.2 ], [ %vec.ind.next1353, %vector.body1344 ]
  %312 = mul <4 x i32> %vec.ind1352, %broadcast.splat1355
  %313 = add <4 x i32> %312, <i32 1, i32 1, i32 1, i32 1>
  %314 = urem <4 x i32> %313, <i32 80, i32 80, i32 80, i32 80>
  %315 = sitofp <4 x i32> %314 to <4 x double>
  %316 = fmul fast <4 x double> %315, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %317 = shl i64 %index1346, 3
  %318 = add i64 %317, %310
  %319 = getelementptr i8, i8* %call1, i64 %318
  %320 = bitcast i8* %319 to <4 x double>*
  store <4 x double> %316, <4 x double>* %320, align 8, !alias.scope !115, !noalias !120
  %index.next1347 = add i64 %index1346, 4
  %vec.ind.next1353 = add <4 x i32> %vec.ind1352, <i32 4, i32 4, i32 4, i32 4>
  %321 = icmp eq i64 %index.next1347, 32
  br i1 %321, label %polly.loop_exit903.2, label %vector.body1344, !llvm.loop !125

polly.loop_exit903.2:                             ; preds = %vector.body1344
  %polly.indvar_next899.2 = add nuw nsw i64 %polly.indvar898.2, 1
  %exitcond996.2.not = icmp eq i64 %polly.indvar_next899.2, 16
  br i1 %exitcond996.2.not, label %polly.loop_header895.1.2, label %polly.loop_header895.2

polly.loop_header895.1.2:                         ; preds = %polly.loop_exit903.2, %polly.loop_exit903.1.2
  %polly.indvar898.1.2 = phi i64 [ %polly.indvar_next899.1.2, %polly.loop_exit903.1.2 ], [ 0, %polly.loop_exit903.2 ]
  %322 = add nuw nsw i64 %polly.indvar898.1.2, 64
  %323 = mul nuw nsw i64 %322, 480
  %324 = trunc i64 %322 to i32
  %broadcast.splatinsert1366 = insertelement <4 x i32> poison, i32 %324, i32 0
  %broadcast.splat1367 = shufflevector <4 x i32> %broadcast.splatinsert1366, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1358

vector.body1358:                                  ; preds = %vector.body1358, %polly.loop_header895.1.2
  %index1360 = phi i64 [ 0, %polly.loop_header895.1.2 ], [ %index.next1361, %vector.body1358 ]
  %vec.ind1364 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header895.1.2 ], [ %vec.ind.next1365, %vector.body1358 ]
  %325 = add nuw nsw <4 x i64> %vec.ind1364, <i64 32, i64 32, i64 32, i64 32>
  %326 = trunc <4 x i64> %325 to <4 x i32>
  %327 = mul <4 x i32> %broadcast.splat1367, %326
  %328 = add <4 x i32> %327, <i32 1, i32 1, i32 1, i32 1>
  %329 = urem <4 x i32> %328, <i32 80, i32 80, i32 80, i32 80>
  %330 = sitofp <4 x i32> %329 to <4 x double>
  %331 = fmul fast <4 x double> %330, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %332 = extractelement <4 x i64> %325, i32 0
  %333 = shl i64 %332, 3
  %334 = add i64 %333, %323
  %335 = getelementptr i8, i8* %call1, i64 %334
  %336 = bitcast i8* %335 to <4 x double>*
  store <4 x double> %331, <4 x double>* %336, align 8, !alias.scope !115, !noalias !120
  %index.next1361 = add i64 %index1360, 4
  %vec.ind.next1365 = add <4 x i64> %vec.ind1364, <i64 4, i64 4, i64 4, i64 4>
  %337 = icmp eq i64 %index.next1361, 28
  br i1 %337, label %polly.loop_exit903.1.2, label %vector.body1358, !llvm.loop !126

polly.loop_exit903.1.2:                           ; preds = %vector.body1358
  %polly.indvar_next899.1.2 = add nuw nsw i64 %polly.indvar898.1.2, 1
  %exitcond996.1.2.not = icmp eq i64 %polly.indvar_next899.1.2, 16
  br i1 %exitcond996.1.2.not, label %init_array.exit, label %polly.loop_header895.1.2

polly.loop_header869.1:                           ; preds = %polly.loop_exit877, %polly.loop_exit877.1
  %polly.indvar872.1 = phi i64 [ %polly.indvar_next873.1, %polly.loop_exit877.1 ], [ 0, %polly.loop_exit877 ]
  %338 = mul nuw nsw i64 %polly.indvar872.1, 480
  %339 = trunc i64 %polly.indvar872.1 to i32
  %broadcast.splatinsert1236 = insertelement <4 x i32> poison, i32 %339, i32 0
  %broadcast.splat1237 = shufflevector <4 x i32> %broadcast.splatinsert1236, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1228

vector.body1228:                                  ; preds = %vector.body1228, %polly.loop_header869.1
  %index1230 = phi i64 [ 0, %polly.loop_header869.1 ], [ %index.next1231, %vector.body1228 ]
  %vec.ind1234 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header869.1 ], [ %vec.ind.next1235, %vector.body1228 ]
  %340 = add nuw nsw <4 x i64> %vec.ind1234, <i64 32, i64 32, i64 32, i64 32>
  %341 = trunc <4 x i64> %340 to <4 x i32>
  %342 = mul <4 x i32> %broadcast.splat1237, %341
  %343 = add <4 x i32> %342, <i32 2, i32 2, i32 2, i32 2>
  %344 = urem <4 x i32> %343, <i32 60, i32 60, i32 60, i32 60>
  %345 = sitofp <4 x i32> %344 to <4 x double>
  %346 = fmul fast <4 x double> %345, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %347 = extractelement <4 x i64> %340, i32 0
  %348 = shl i64 %347, 3
  %349 = add i64 %348, %338
  %350 = getelementptr i8, i8* %call2, i64 %349
  %351 = bitcast i8* %350 to <4 x double>*
  store <4 x double> %346, <4 x double>* %351, align 8, !alias.scope !116, !noalias !118
  %index.next1231 = add i64 %index1230, 4
  %vec.ind.next1235 = add <4 x i64> %vec.ind1234, <i64 4, i64 4, i64 4, i64 4>
  %352 = icmp eq i64 %index.next1231, 28
  br i1 %352, label %polly.loop_exit877.1, label %vector.body1228, !llvm.loop !127

polly.loop_exit877.1:                             ; preds = %vector.body1228
  %polly.indvar_next873.1 = add nuw nsw i64 %polly.indvar872.1, 1
  %exitcond1002.1.not = icmp eq i64 %polly.indvar_next873.1, 32
  br i1 %exitcond1002.1.not, label %polly.loop_header869.11033, label %polly.loop_header869.1

polly.loop_header869.11033:                       ; preds = %polly.loop_exit877.1, %polly.loop_exit877.11044
  %polly.indvar872.11032 = phi i64 [ %polly.indvar_next873.11042, %polly.loop_exit877.11044 ], [ 0, %polly.loop_exit877.1 ]
  %353 = add nuw nsw i64 %polly.indvar872.11032, 32
  %354 = mul nuw nsw i64 %353, 480
  %355 = trunc i64 %353 to i32
  %broadcast.splatinsert1250 = insertelement <4 x i32> poison, i32 %355, i32 0
  %broadcast.splat1251 = shufflevector <4 x i32> %broadcast.splatinsert1250, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1240

vector.body1240:                                  ; preds = %vector.body1240, %polly.loop_header869.11033
  %index1242 = phi i64 [ 0, %polly.loop_header869.11033 ], [ %index.next1243, %vector.body1240 ]
  %vec.ind1248 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header869.11033 ], [ %vec.ind.next1249, %vector.body1240 ]
  %356 = mul <4 x i32> %vec.ind1248, %broadcast.splat1251
  %357 = add <4 x i32> %356, <i32 2, i32 2, i32 2, i32 2>
  %358 = urem <4 x i32> %357, <i32 60, i32 60, i32 60, i32 60>
  %359 = sitofp <4 x i32> %358 to <4 x double>
  %360 = fmul fast <4 x double> %359, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %361 = shl i64 %index1242, 3
  %362 = add i64 %361, %354
  %363 = getelementptr i8, i8* %call2, i64 %362
  %364 = bitcast i8* %363 to <4 x double>*
  store <4 x double> %360, <4 x double>* %364, align 8, !alias.scope !116, !noalias !118
  %index.next1243 = add i64 %index1242, 4
  %vec.ind.next1249 = add <4 x i32> %vec.ind1248, <i32 4, i32 4, i32 4, i32 4>
  %365 = icmp eq i64 %index.next1243, 32
  br i1 %365, label %polly.loop_exit877.11044, label %vector.body1240, !llvm.loop !128

polly.loop_exit877.11044:                         ; preds = %vector.body1240
  %polly.indvar_next873.11042 = add nuw nsw i64 %polly.indvar872.11032, 1
  %exitcond1002.11043.not = icmp eq i64 %polly.indvar_next873.11042, 32
  br i1 %exitcond1002.11043.not, label %polly.loop_header869.1.1, label %polly.loop_header869.11033

polly.loop_header869.1.1:                         ; preds = %polly.loop_exit877.11044, %polly.loop_exit877.1.1
  %polly.indvar872.1.1 = phi i64 [ %polly.indvar_next873.1.1, %polly.loop_exit877.1.1 ], [ 0, %polly.loop_exit877.11044 ]
  %366 = add nuw nsw i64 %polly.indvar872.1.1, 32
  %367 = mul nuw nsw i64 %366, 480
  %368 = trunc i64 %366 to i32
  %broadcast.splatinsert1262 = insertelement <4 x i32> poison, i32 %368, i32 0
  %broadcast.splat1263 = shufflevector <4 x i32> %broadcast.splatinsert1262, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1254

vector.body1254:                                  ; preds = %vector.body1254, %polly.loop_header869.1.1
  %index1256 = phi i64 [ 0, %polly.loop_header869.1.1 ], [ %index.next1257, %vector.body1254 ]
  %vec.ind1260 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header869.1.1 ], [ %vec.ind.next1261, %vector.body1254 ]
  %369 = add nuw nsw <4 x i64> %vec.ind1260, <i64 32, i64 32, i64 32, i64 32>
  %370 = trunc <4 x i64> %369 to <4 x i32>
  %371 = mul <4 x i32> %broadcast.splat1263, %370
  %372 = add <4 x i32> %371, <i32 2, i32 2, i32 2, i32 2>
  %373 = urem <4 x i32> %372, <i32 60, i32 60, i32 60, i32 60>
  %374 = sitofp <4 x i32> %373 to <4 x double>
  %375 = fmul fast <4 x double> %374, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %376 = extractelement <4 x i64> %369, i32 0
  %377 = shl i64 %376, 3
  %378 = add i64 %377, %367
  %379 = getelementptr i8, i8* %call2, i64 %378
  %380 = bitcast i8* %379 to <4 x double>*
  store <4 x double> %375, <4 x double>* %380, align 8, !alias.scope !116, !noalias !118
  %index.next1257 = add i64 %index1256, 4
  %vec.ind.next1261 = add <4 x i64> %vec.ind1260, <i64 4, i64 4, i64 4, i64 4>
  %381 = icmp eq i64 %index.next1257, 28
  br i1 %381, label %polly.loop_exit877.1.1, label %vector.body1254, !llvm.loop !129

polly.loop_exit877.1.1:                           ; preds = %vector.body1254
  %polly.indvar_next873.1.1 = add nuw nsw i64 %polly.indvar872.1.1, 1
  %exitcond1002.1.1.not = icmp eq i64 %polly.indvar_next873.1.1, 32
  br i1 %exitcond1002.1.1.not, label %polly.loop_header869.2, label %polly.loop_header869.1.1

polly.loop_header869.2:                           ; preds = %polly.loop_exit877.1.1, %polly.loop_exit877.2
  %polly.indvar872.2 = phi i64 [ %polly.indvar_next873.2, %polly.loop_exit877.2 ], [ 0, %polly.loop_exit877.1.1 ]
  %382 = add nuw nsw i64 %polly.indvar872.2, 64
  %383 = mul nuw nsw i64 %382, 480
  %384 = trunc i64 %382 to i32
  %broadcast.splatinsert1276 = insertelement <4 x i32> poison, i32 %384, i32 0
  %broadcast.splat1277 = shufflevector <4 x i32> %broadcast.splatinsert1276, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1266

vector.body1266:                                  ; preds = %vector.body1266, %polly.loop_header869.2
  %index1268 = phi i64 [ 0, %polly.loop_header869.2 ], [ %index.next1269, %vector.body1266 ]
  %vec.ind1274 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header869.2 ], [ %vec.ind.next1275, %vector.body1266 ]
  %385 = mul <4 x i32> %vec.ind1274, %broadcast.splat1277
  %386 = add <4 x i32> %385, <i32 2, i32 2, i32 2, i32 2>
  %387 = urem <4 x i32> %386, <i32 60, i32 60, i32 60, i32 60>
  %388 = sitofp <4 x i32> %387 to <4 x double>
  %389 = fmul fast <4 x double> %388, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %390 = shl i64 %index1268, 3
  %391 = add i64 %390, %383
  %392 = getelementptr i8, i8* %call2, i64 %391
  %393 = bitcast i8* %392 to <4 x double>*
  store <4 x double> %389, <4 x double>* %393, align 8, !alias.scope !116, !noalias !118
  %index.next1269 = add i64 %index1268, 4
  %vec.ind.next1275 = add <4 x i32> %vec.ind1274, <i32 4, i32 4, i32 4, i32 4>
  %394 = icmp eq i64 %index.next1269, 32
  br i1 %394, label %polly.loop_exit877.2, label %vector.body1266, !llvm.loop !130

polly.loop_exit877.2:                             ; preds = %vector.body1266
  %polly.indvar_next873.2 = add nuw nsw i64 %polly.indvar872.2, 1
  %exitcond1002.2.not = icmp eq i64 %polly.indvar_next873.2, 16
  br i1 %exitcond1002.2.not, label %polly.loop_header869.1.2, label %polly.loop_header869.2

polly.loop_header869.1.2:                         ; preds = %polly.loop_exit877.2, %polly.loop_exit877.1.2
  %polly.indvar872.1.2 = phi i64 [ %polly.indvar_next873.1.2, %polly.loop_exit877.1.2 ], [ 0, %polly.loop_exit877.2 ]
  %395 = add nuw nsw i64 %polly.indvar872.1.2, 64
  %396 = mul nuw nsw i64 %395, 480
  %397 = trunc i64 %395 to i32
  %broadcast.splatinsert1288 = insertelement <4 x i32> poison, i32 %397, i32 0
  %broadcast.splat1289 = shufflevector <4 x i32> %broadcast.splatinsert1288, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1280

vector.body1280:                                  ; preds = %vector.body1280, %polly.loop_header869.1.2
  %index1282 = phi i64 [ 0, %polly.loop_header869.1.2 ], [ %index.next1283, %vector.body1280 ]
  %vec.ind1286 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header869.1.2 ], [ %vec.ind.next1287, %vector.body1280 ]
  %398 = add nuw nsw <4 x i64> %vec.ind1286, <i64 32, i64 32, i64 32, i64 32>
  %399 = trunc <4 x i64> %398 to <4 x i32>
  %400 = mul <4 x i32> %broadcast.splat1289, %399
  %401 = add <4 x i32> %400, <i32 2, i32 2, i32 2, i32 2>
  %402 = urem <4 x i32> %401, <i32 60, i32 60, i32 60, i32 60>
  %403 = sitofp <4 x i32> %402 to <4 x double>
  %404 = fmul fast <4 x double> %403, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %405 = extractelement <4 x i64> %398, i32 0
  %406 = shl i64 %405, 3
  %407 = add i64 %406, %396
  %408 = getelementptr i8, i8* %call2, i64 %407
  %409 = bitcast i8* %408 to <4 x double>*
  store <4 x double> %404, <4 x double>* %409, align 8, !alias.scope !116, !noalias !118
  %index.next1283 = add i64 %index1282, 4
  %vec.ind.next1287 = add <4 x i64> %vec.ind1286, <i64 4, i64 4, i64 4, i64 4>
  %410 = icmp eq i64 %index.next1283, 28
  br i1 %410, label %polly.loop_exit877.1.2, label %vector.body1280, !llvm.loop !131

polly.loop_exit877.1.2:                           ; preds = %vector.body1280
  %polly.indvar_next873.1.2 = add nuw nsw i64 %polly.indvar872.1.2, 1
  %exitcond1002.1.2.not = icmp eq i64 %polly.indvar_next873.1.2, 16
  br i1 %exitcond1002.1.2.not, label %polly.loop_header895, label %polly.loop_header869.1.2

polly.loop_header842.1:                           ; preds = %polly.loop_exit850, %polly.loop_exit850.1
  %polly.indvar845.1 = phi i64 [ %polly.indvar_next846.1, %polly.loop_exit850.1 ], [ 0, %polly.loop_exit850 ]
  %411 = mul nuw nsw i64 %polly.indvar845.1, 640
  %412 = trunc i64 %polly.indvar845.1 to i32
  %broadcast.splatinsert1122 = insertelement <4 x i32> poison, i32 %412, i32 0
  %broadcast.splat1123 = shufflevector <4 x i32> %broadcast.splatinsert1122, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1114

vector.body1114:                                  ; preds = %vector.body1114, %polly.loop_header842.1
  %index1116 = phi i64 [ 0, %polly.loop_header842.1 ], [ %index.next1117, %vector.body1114 ]
  %vec.ind1120 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header842.1 ], [ %vec.ind.next1121, %vector.body1114 ]
  %413 = add nuw nsw <4 x i64> %vec.ind1120, <i64 32, i64 32, i64 32, i64 32>
  %414 = trunc <4 x i64> %413 to <4 x i32>
  %415 = mul <4 x i32> %broadcast.splat1123, %414
  %416 = add <4 x i32> %415, <i32 3, i32 3, i32 3, i32 3>
  %417 = urem <4 x i32> %416, <i32 80, i32 80, i32 80, i32 80>
  %418 = sitofp <4 x i32> %417 to <4 x double>
  %419 = fmul fast <4 x double> %418, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %420 = extractelement <4 x i64> %413, i32 0
  %421 = shl i64 %420, 3
  %422 = add nuw nsw i64 %421, %411
  %423 = getelementptr i8, i8* %call, i64 %422
  %424 = bitcast i8* %423 to <4 x double>*
  store <4 x double> %419, <4 x double>* %424, align 8, !alias.scope !112, !noalias !114
  %index.next1117 = add i64 %index1116, 4
  %vec.ind.next1121 = add <4 x i64> %vec.ind1120, <i64 4, i64 4, i64 4, i64 4>
  %425 = icmp eq i64 %index.next1117, 32
  br i1 %425, label %polly.loop_exit850.1, label %vector.body1114, !llvm.loop !132

polly.loop_exit850.1:                             ; preds = %vector.body1114
  %polly.indvar_next846.1 = add nuw nsw i64 %polly.indvar845.1, 1
  %exitcond1011.1.not = icmp eq i64 %polly.indvar_next846.1, 32
  br i1 %exitcond1011.1.not, label %polly.loop_header842.2, label %polly.loop_header842.1

polly.loop_header842.2:                           ; preds = %polly.loop_exit850.1, %polly.loop_exit850.2
  %polly.indvar845.2 = phi i64 [ %polly.indvar_next846.2, %polly.loop_exit850.2 ], [ 0, %polly.loop_exit850.1 ]
  %426 = mul nuw nsw i64 %polly.indvar845.2, 640
  %427 = trunc i64 %polly.indvar845.2 to i32
  %broadcast.splatinsert1134 = insertelement <4 x i32> poison, i32 %427, i32 0
  %broadcast.splat1135 = shufflevector <4 x i32> %broadcast.splatinsert1134, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1126

vector.body1126:                                  ; preds = %vector.body1126, %polly.loop_header842.2
  %index1128 = phi i64 [ 0, %polly.loop_header842.2 ], [ %index.next1129, %vector.body1126 ]
  %vec.ind1132 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header842.2 ], [ %vec.ind.next1133, %vector.body1126 ]
  %428 = add nuw nsw <4 x i64> %vec.ind1132, <i64 64, i64 64, i64 64, i64 64>
  %429 = trunc <4 x i64> %428 to <4 x i32>
  %430 = mul <4 x i32> %broadcast.splat1135, %429
  %431 = add <4 x i32> %430, <i32 3, i32 3, i32 3, i32 3>
  %432 = urem <4 x i32> %431, <i32 80, i32 80, i32 80, i32 80>
  %433 = sitofp <4 x i32> %432 to <4 x double>
  %434 = fmul fast <4 x double> %433, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %435 = extractelement <4 x i64> %428, i32 0
  %436 = shl i64 %435, 3
  %437 = add nuw nsw i64 %436, %426
  %438 = getelementptr i8, i8* %call, i64 %437
  %439 = bitcast i8* %438 to <4 x double>*
  store <4 x double> %434, <4 x double>* %439, align 8, !alias.scope !112, !noalias !114
  %index.next1129 = add i64 %index1128, 4
  %vec.ind.next1133 = add <4 x i64> %vec.ind1132, <i64 4, i64 4, i64 4, i64 4>
  %440 = icmp eq i64 %index.next1129, 16
  br i1 %440, label %polly.loop_exit850.2, label %vector.body1126, !llvm.loop !133

polly.loop_exit850.2:                             ; preds = %vector.body1126
  %polly.indvar_next846.2 = add nuw nsw i64 %polly.indvar845.2, 1
  %exitcond1011.2.not = icmp eq i64 %polly.indvar_next846.2, 32
  br i1 %exitcond1011.2.not, label %polly.loop_header842.11047, label %polly.loop_header842.2

polly.loop_header842.11047:                       ; preds = %polly.loop_exit850.2, %polly.loop_exit850.11058
  %polly.indvar845.11046 = phi i64 [ %polly.indvar_next846.11056, %polly.loop_exit850.11058 ], [ 0, %polly.loop_exit850.2 ]
  %441 = add nuw nsw i64 %polly.indvar845.11046, 32
  %442 = mul nuw nsw i64 %441, 640
  %443 = trunc i64 %441 to i32
  %broadcast.splatinsert1148 = insertelement <4 x i32> poison, i32 %443, i32 0
  %broadcast.splat1149 = shufflevector <4 x i32> %broadcast.splatinsert1148, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1138

vector.body1138:                                  ; preds = %vector.body1138, %polly.loop_header842.11047
  %index1140 = phi i64 [ 0, %polly.loop_header842.11047 ], [ %index.next1141, %vector.body1138 ]
  %vec.ind1146 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header842.11047 ], [ %vec.ind.next1147, %vector.body1138 ]
  %444 = mul <4 x i32> %vec.ind1146, %broadcast.splat1149
  %445 = add <4 x i32> %444, <i32 3, i32 3, i32 3, i32 3>
  %446 = urem <4 x i32> %445, <i32 80, i32 80, i32 80, i32 80>
  %447 = sitofp <4 x i32> %446 to <4 x double>
  %448 = fmul fast <4 x double> %447, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %449 = shl i64 %index1140, 3
  %450 = add nuw nsw i64 %449, %442
  %451 = getelementptr i8, i8* %call, i64 %450
  %452 = bitcast i8* %451 to <4 x double>*
  store <4 x double> %448, <4 x double>* %452, align 8, !alias.scope !112, !noalias !114
  %index.next1141 = add i64 %index1140, 4
  %vec.ind.next1147 = add <4 x i32> %vec.ind1146, <i32 4, i32 4, i32 4, i32 4>
  %453 = icmp eq i64 %index.next1141, 32
  br i1 %453, label %polly.loop_exit850.11058, label %vector.body1138, !llvm.loop !134

polly.loop_exit850.11058:                         ; preds = %vector.body1138
  %polly.indvar_next846.11056 = add nuw nsw i64 %polly.indvar845.11046, 1
  %exitcond1011.11057.not = icmp eq i64 %polly.indvar_next846.11056, 32
  br i1 %exitcond1011.11057.not, label %polly.loop_header842.1.1, label %polly.loop_header842.11047

polly.loop_header842.1.1:                         ; preds = %polly.loop_exit850.11058, %polly.loop_exit850.1.1
  %polly.indvar845.1.1 = phi i64 [ %polly.indvar_next846.1.1, %polly.loop_exit850.1.1 ], [ 0, %polly.loop_exit850.11058 ]
  %454 = add nuw nsw i64 %polly.indvar845.1.1, 32
  %455 = mul nuw nsw i64 %454, 640
  %456 = trunc i64 %454 to i32
  %broadcast.splatinsert1160 = insertelement <4 x i32> poison, i32 %456, i32 0
  %broadcast.splat1161 = shufflevector <4 x i32> %broadcast.splatinsert1160, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1152

vector.body1152:                                  ; preds = %vector.body1152, %polly.loop_header842.1.1
  %index1154 = phi i64 [ 0, %polly.loop_header842.1.1 ], [ %index.next1155, %vector.body1152 ]
  %vec.ind1158 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header842.1.1 ], [ %vec.ind.next1159, %vector.body1152 ]
  %457 = add nuw nsw <4 x i64> %vec.ind1158, <i64 32, i64 32, i64 32, i64 32>
  %458 = trunc <4 x i64> %457 to <4 x i32>
  %459 = mul <4 x i32> %broadcast.splat1161, %458
  %460 = add <4 x i32> %459, <i32 3, i32 3, i32 3, i32 3>
  %461 = urem <4 x i32> %460, <i32 80, i32 80, i32 80, i32 80>
  %462 = sitofp <4 x i32> %461 to <4 x double>
  %463 = fmul fast <4 x double> %462, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %464 = extractelement <4 x i64> %457, i32 0
  %465 = shl i64 %464, 3
  %466 = add nuw nsw i64 %465, %455
  %467 = getelementptr i8, i8* %call, i64 %466
  %468 = bitcast i8* %467 to <4 x double>*
  store <4 x double> %463, <4 x double>* %468, align 8, !alias.scope !112, !noalias !114
  %index.next1155 = add i64 %index1154, 4
  %vec.ind.next1159 = add <4 x i64> %vec.ind1158, <i64 4, i64 4, i64 4, i64 4>
  %469 = icmp eq i64 %index.next1155, 32
  br i1 %469, label %polly.loop_exit850.1.1, label %vector.body1152, !llvm.loop !135

polly.loop_exit850.1.1:                           ; preds = %vector.body1152
  %polly.indvar_next846.1.1 = add nuw nsw i64 %polly.indvar845.1.1, 1
  %exitcond1011.1.1.not = icmp eq i64 %polly.indvar_next846.1.1, 32
  br i1 %exitcond1011.1.1.not, label %polly.loop_header842.2.1, label %polly.loop_header842.1.1

polly.loop_header842.2.1:                         ; preds = %polly.loop_exit850.1.1, %polly.loop_exit850.2.1
  %polly.indvar845.2.1 = phi i64 [ %polly.indvar_next846.2.1, %polly.loop_exit850.2.1 ], [ 0, %polly.loop_exit850.1.1 ]
  %470 = add nuw nsw i64 %polly.indvar845.2.1, 32
  %471 = mul nuw nsw i64 %470, 640
  %472 = trunc i64 %470 to i32
  %broadcast.splatinsert1172 = insertelement <4 x i32> poison, i32 %472, i32 0
  %broadcast.splat1173 = shufflevector <4 x i32> %broadcast.splatinsert1172, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1164

vector.body1164:                                  ; preds = %vector.body1164, %polly.loop_header842.2.1
  %index1166 = phi i64 [ 0, %polly.loop_header842.2.1 ], [ %index.next1167, %vector.body1164 ]
  %vec.ind1170 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header842.2.1 ], [ %vec.ind.next1171, %vector.body1164 ]
  %473 = add nuw nsw <4 x i64> %vec.ind1170, <i64 64, i64 64, i64 64, i64 64>
  %474 = trunc <4 x i64> %473 to <4 x i32>
  %475 = mul <4 x i32> %broadcast.splat1173, %474
  %476 = add <4 x i32> %475, <i32 3, i32 3, i32 3, i32 3>
  %477 = urem <4 x i32> %476, <i32 80, i32 80, i32 80, i32 80>
  %478 = sitofp <4 x i32> %477 to <4 x double>
  %479 = fmul fast <4 x double> %478, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %480 = extractelement <4 x i64> %473, i32 0
  %481 = shl i64 %480, 3
  %482 = add nuw nsw i64 %481, %471
  %483 = getelementptr i8, i8* %call, i64 %482
  %484 = bitcast i8* %483 to <4 x double>*
  store <4 x double> %479, <4 x double>* %484, align 8, !alias.scope !112, !noalias !114
  %index.next1167 = add i64 %index1166, 4
  %vec.ind.next1171 = add <4 x i64> %vec.ind1170, <i64 4, i64 4, i64 4, i64 4>
  %485 = icmp eq i64 %index.next1167, 16
  br i1 %485, label %polly.loop_exit850.2.1, label %vector.body1164, !llvm.loop !136

polly.loop_exit850.2.1:                           ; preds = %vector.body1164
  %polly.indvar_next846.2.1 = add nuw nsw i64 %polly.indvar845.2.1, 1
  %exitcond1011.2.1.not = icmp eq i64 %polly.indvar_next846.2.1, 32
  br i1 %exitcond1011.2.1.not, label %polly.loop_header842.21061, label %polly.loop_header842.2.1

polly.loop_header842.21061:                       ; preds = %polly.loop_exit850.2.1, %polly.loop_exit850.21072
  %polly.indvar845.21060 = phi i64 [ %polly.indvar_next846.21070, %polly.loop_exit850.21072 ], [ 0, %polly.loop_exit850.2.1 ]
  %486 = add nuw nsw i64 %polly.indvar845.21060, 64
  %487 = mul nuw nsw i64 %486, 640
  %488 = trunc i64 %486 to i32
  %broadcast.splatinsert1186 = insertelement <4 x i32> poison, i32 %488, i32 0
  %broadcast.splat1187 = shufflevector <4 x i32> %broadcast.splatinsert1186, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1176

vector.body1176:                                  ; preds = %vector.body1176, %polly.loop_header842.21061
  %index1178 = phi i64 [ 0, %polly.loop_header842.21061 ], [ %index.next1179, %vector.body1176 ]
  %vec.ind1184 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header842.21061 ], [ %vec.ind.next1185, %vector.body1176 ]
  %489 = mul <4 x i32> %vec.ind1184, %broadcast.splat1187
  %490 = add <4 x i32> %489, <i32 3, i32 3, i32 3, i32 3>
  %491 = urem <4 x i32> %490, <i32 80, i32 80, i32 80, i32 80>
  %492 = sitofp <4 x i32> %491 to <4 x double>
  %493 = fmul fast <4 x double> %492, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %494 = shl i64 %index1178, 3
  %495 = add nuw nsw i64 %494, %487
  %496 = getelementptr i8, i8* %call, i64 %495
  %497 = bitcast i8* %496 to <4 x double>*
  store <4 x double> %493, <4 x double>* %497, align 8, !alias.scope !112, !noalias !114
  %index.next1179 = add i64 %index1178, 4
  %vec.ind.next1185 = add <4 x i32> %vec.ind1184, <i32 4, i32 4, i32 4, i32 4>
  %498 = icmp eq i64 %index.next1179, 32
  br i1 %498, label %polly.loop_exit850.21072, label %vector.body1176, !llvm.loop !137

polly.loop_exit850.21072:                         ; preds = %vector.body1176
  %polly.indvar_next846.21070 = add nuw nsw i64 %polly.indvar845.21060, 1
  %exitcond1011.21071.not = icmp eq i64 %polly.indvar_next846.21070, 16
  br i1 %exitcond1011.21071.not, label %polly.loop_header842.1.2, label %polly.loop_header842.21061

polly.loop_header842.1.2:                         ; preds = %polly.loop_exit850.21072, %polly.loop_exit850.1.2
  %polly.indvar845.1.2 = phi i64 [ %polly.indvar_next846.1.2, %polly.loop_exit850.1.2 ], [ 0, %polly.loop_exit850.21072 ]
  %499 = add nuw nsw i64 %polly.indvar845.1.2, 64
  %500 = mul nuw nsw i64 %499, 640
  %501 = trunc i64 %499 to i32
  %broadcast.splatinsert1198 = insertelement <4 x i32> poison, i32 %501, i32 0
  %broadcast.splat1199 = shufflevector <4 x i32> %broadcast.splatinsert1198, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1190

vector.body1190:                                  ; preds = %vector.body1190, %polly.loop_header842.1.2
  %index1192 = phi i64 [ 0, %polly.loop_header842.1.2 ], [ %index.next1193, %vector.body1190 ]
  %vec.ind1196 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header842.1.2 ], [ %vec.ind.next1197, %vector.body1190 ]
  %502 = add nuw nsw <4 x i64> %vec.ind1196, <i64 32, i64 32, i64 32, i64 32>
  %503 = trunc <4 x i64> %502 to <4 x i32>
  %504 = mul <4 x i32> %broadcast.splat1199, %503
  %505 = add <4 x i32> %504, <i32 3, i32 3, i32 3, i32 3>
  %506 = urem <4 x i32> %505, <i32 80, i32 80, i32 80, i32 80>
  %507 = sitofp <4 x i32> %506 to <4 x double>
  %508 = fmul fast <4 x double> %507, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %509 = extractelement <4 x i64> %502, i32 0
  %510 = shl i64 %509, 3
  %511 = add nuw nsw i64 %510, %500
  %512 = getelementptr i8, i8* %call, i64 %511
  %513 = bitcast i8* %512 to <4 x double>*
  store <4 x double> %508, <4 x double>* %513, align 8, !alias.scope !112, !noalias !114
  %index.next1193 = add i64 %index1192, 4
  %vec.ind.next1197 = add <4 x i64> %vec.ind1196, <i64 4, i64 4, i64 4, i64 4>
  %514 = icmp eq i64 %index.next1193, 32
  br i1 %514, label %polly.loop_exit850.1.2, label %vector.body1190, !llvm.loop !138

polly.loop_exit850.1.2:                           ; preds = %vector.body1190
  %polly.indvar_next846.1.2 = add nuw nsw i64 %polly.indvar845.1.2, 1
  %exitcond1011.1.2.not = icmp eq i64 %polly.indvar_next846.1.2, 16
  br i1 %exitcond1011.1.2.not, label %polly.loop_header842.2.2, label %polly.loop_header842.1.2

polly.loop_header842.2.2:                         ; preds = %polly.loop_exit850.1.2, %polly.loop_exit850.2.2
  %polly.indvar845.2.2 = phi i64 [ %polly.indvar_next846.2.2, %polly.loop_exit850.2.2 ], [ 0, %polly.loop_exit850.1.2 ]
  %515 = add nuw nsw i64 %polly.indvar845.2.2, 64
  %516 = mul nuw nsw i64 %515, 640
  %517 = trunc i64 %515 to i32
  %broadcast.splatinsert1210 = insertelement <4 x i32> poison, i32 %517, i32 0
  %broadcast.splat1211 = shufflevector <4 x i32> %broadcast.splatinsert1210, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1202

vector.body1202:                                  ; preds = %vector.body1202, %polly.loop_header842.2.2
  %index1204 = phi i64 [ 0, %polly.loop_header842.2.2 ], [ %index.next1205, %vector.body1202 ]
  %vec.ind1208 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header842.2.2 ], [ %vec.ind.next1209, %vector.body1202 ]
  %518 = add nuw nsw <4 x i64> %vec.ind1208, <i64 64, i64 64, i64 64, i64 64>
  %519 = trunc <4 x i64> %518 to <4 x i32>
  %520 = mul <4 x i32> %broadcast.splat1211, %519
  %521 = add <4 x i32> %520, <i32 3, i32 3, i32 3, i32 3>
  %522 = urem <4 x i32> %521, <i32 80, i32 80, i32 80, i32 80>
  %523 = sitofp <4 x i32> %522 to <4 x double>
  %524 = fmul fast <4 x double> %523, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %525 = extractelement <4 x i64> %518, i32 0
  %526 = shl i64 %525, 3
  %527 = add nuw nsw i64 %526, %516
  %528 = getelementptr i8, i8* %call, i64 %527
  %529 = bitcast i8* %528 to <4 x double>*
  store <4 x double> %524, <4 x double>* %529, align 8, !alias.scope !112, !noalias !114
  %index.next1205 = add i64 %index1204, 4
  %vec.ind.next1209 = add <4 x i64> %vec.ind1208, <i64 4, i64 4, i64 4, i64 4>
  %530 = icmp eq i64 %index.next1205, 16
  br i1 %530, label %polly.loop_exit850.2.2, label %vector.body1202, !llvm.loop !139

polly.loop_exit850.2.2:                           ; preds = %vector.body1202
  %polly.indvar_next846.2.2 = add nuw nsw i64 %polly.indvar845.2.2, 1
  %exitcond1011.2.2.not = icmp eq i64 %polly.indvar_next846.2.2, 16
  br i1 %exitcond1011.2.2.not, label %polly.loop_header869, label %polly.loop_header842.2.2
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
!22 = distinct !{!"B"}
!23 = distinct !{!23, !12, !24, !25, !26, !27, !30}
!24 = !{!"llvm.loop.disable_nonforced"}
!25 = !{!"llvm.loop.id", !"k"}
!26 = !{!"llvm.loop.tile.size", i32 32}
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
!51 = !{!"llvm.loop.tile.size", i32 16}
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
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !81, !13}
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
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !81, !13}
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
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !81, !13}
!112 = distinct !{!112, !113, !"polly.alias.scope.MemRef_call"}
!113 = distinct !{!113, !"polly.alias.scope.domain"}
!114 = !{!115, !116}
!115 = distinct !{!115, !113, !"polly.alias.scope.MemRef_call1"}
!116 = distinct !{!116, !113, !"polly.alias.scope.MemRef_call2"}
!117 = distinct !{!117, !13}
!118 = !{!115, !112}
!119 = distinct !{!119, !13}
!120 = !{!116, !112}
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
!133 = distinct !{!133, !13}
!134 = distinct !{!134, !13}
!135 = distinct !{!135, !13}
!136 = distinct !{!136, !13}
!137 = distinct !{!137, !13}
!138 = distinct !{!138, !13}
!139 = distinct !{!139, !13}
