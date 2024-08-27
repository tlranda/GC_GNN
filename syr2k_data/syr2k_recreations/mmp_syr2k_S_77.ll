; ModuleID = 'syr2k_recreations//mmp_syr2k_S_77.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_77.c"
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
  %call718 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1579 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1579, %call2
  %polly.access.call2599 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2599, %call1
  %2 = or i1 %0, %1
  %polly.access.call619 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call619, %call2
  %4 = icmp ule i8* %polly.access.call2599, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call619, %call1
  %8 = icmp ule i8* %polly.access.call1579, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header704, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1040 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1039 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1038 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1037 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1037, %scevgep1040
  %bound1 = icmp ult i8* %scevgep1039, %scevgep1038
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
  br i1 %exitcond18.not.i, label %vector.ph1044, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1044:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1051 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1052 = shufflevector <4 x i64> %broadcast.splatinsert1051, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1043

vector.body1043:                                  ; preds = %vector.body1043, %vector.ph1044
  %index1045 = phi i64 [ 0, %vector.ph1044 ], [ %index.next1046, %vector.body1043 ]
  %vec.ind1049 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1044 ], [ %vec.ind.next1050, %vector.body1043 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1049, %broadcast.splat1052
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call718, i64 %indvars.iv7.i, i64 %index1045
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1046 = add i64 %index1045, 4
  %vec.ind.next1050 = add <4 x i64> %vec.ind1049, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1046, 80
  br i1 %40, label %for.inc41.i, label %vector.body1043, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1043
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1044, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit765.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header495, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1400, label %vector.ph1326

vector.ph1326:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1325

vector.body1325:                                  ; preds = %vector.body1325, %vector.ph1326
  %index1327 = phi i64 [ 0, %vector.ph1326 ], [ %index.next1328, %vector.body1325 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call718, i64 %indvars.iv21.i, i64 %index1327
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1328 = add i64 %index1327, 4
  %46 = icmp eq i64 %index.next1328, %n.vec
  br i1 %46, label %middle.block1323, label %vector.body1325, !llvm.loop !18

middle.block1323:                                 ; preds = %vector.body1325
  %cmp.n1330 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1330, label %for.inc6.i, label %for.body3.i46.preheader1400

for.body3.i46.preheader1400:                      ; preds = %for.body3.i46.preheader, %middle.block1323
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1323 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1400, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1400 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call718, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1323, %for.cond1.preheader.i45
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
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call718, i64 %indvars.iv15.i, i64 %indvars.iv.i48
  %52 = load double, double* %arrayidx41.i, align 8, !tbaa !2
  %reass.add.i = fadd fast double %mul37.i, %mul27.i
  %reass.mul.i = fmul fast double %reass.add.i, 1.500000e+00
  %add42.i = fadd fast double %reass.mul.i, %52
  store double %add42.i, double* %arrayidx41.i, align 8, !tbaa !2
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %indvars.iv13.i
  br i1 %exitcond.not.i50, label %for.inc46.i, label %for.body17.i, !llvm.loop !21

for.inc46.i:                                      ; preds = %for.body17.i
  %indvars.iv.next11.i51 = add nuw nsw i64 %indvars.iv10.i47, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 60
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !31

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 80
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !40

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit538.1.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header338, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1346 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1346, label %for.body3.i60.preheader1398, label %vector.ph1347

vector.ph1347:                                    ; preds = %for.body3.i60.preheader
  %n.vec1349 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1345

vector.body1345:                                  ; preds = %vector.body1345, %vector.ph1347
  %index1350 = phi i64 [ 0, %vector.ph1347 ], [ %index.next1351, %vector.body1345 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call718, i64 %indvars.iv21.i52, i64 %index1350
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1354 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1354, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1351 = add i64 %index1350, 4
  %57 = icmp eq i64 %index.next1351, %n.vec1349
  br i1 %57, label %middle.block1343, label %vector.body1345, !llvm.loop !53

middle.block1343:                                 ; preds = %vector.body1345
  %cmp.n1353 = icmp eq i64 %indvars.iv21.i52, %n.vec1349
  br i1 %cmp.n1353, label %for.inc6.i63, label %for.body3.i60.preheader1398

for.body3.i60.preheader1398:                      ; preds = %for.body3.i60.preheader, %middle.block1343
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1349, %middle.block1343 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1398, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1398 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call718, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !54

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1343, %for.cond1.preheader.i54
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
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call718, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
  %63 = load double, double* %arrayidx41.i76, align 8, !tbaa !2
  %reass.add.i77 = fadd fast double %mul37.i75, %mul27.i73
  %reass.mul.i78 = fmul fast double %reass.add.i77, 1.500000e+00
  %add42.i79 = fadd fast double %reass.mul.i78, %63
  store double %add42.i79, double* %arrayidx41.i76, align 8, !tbaa !2
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i71, 1
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %indvars.iv13.i65
  br i1 %exitcond.not.i81, label %for.inc46.i85, label %for.body17.i82, !llvm.loop !21

for.inc46.i85:                                    ; preds = %for.body17.i82
  %indvars.iv.next11.i83 = add nuw nsw i64 %indvars.iv10.i67, 1
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 60
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !31

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 80
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !40

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit381.1.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1372 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1372, label %for.body3.i99.preheader1396, label %vector.ph1373

vector.ph1373:                                    ; preds = %for.body3.i99.preheader
  %n.vec1375 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1371

vector.body1371:                                  ; preds = %vector.body1371, %vector.ph1373
  %index1376 = phi i64 [ 0, %vector.ph1373 ], [ %index.next1377, %vector.body1371 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call718, i64 %indvars.iv21.i91, i64 %index1376
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1380 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1380, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1377 = add i64 %index1376, 4
  %68 = icmp eq i64 %index.next1377, %n.vec1375
  br i1 %68, label %middle.block1369, label %vector.body1371, !llvm.loop !55

middle.block1369:                                 ; preds = %vector.body1371
  %cmp.n1379 = icmp eq i64 %indvars.iv21.i91, %n.vec1375
  br i1 %cmp.n1379, label %for.inc6.i102, label %for.body3.i99.preheader1396

for.body3.i99.preheader1396:                      ; preds = %for.body3.i99.preheader, %middle.block1369
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1375, %middle.block1369 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1396, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1396 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call718, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !56

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1369, %for.cond1.preheader.i93
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
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call718, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
  %74 = load double, double* %arrayidx41.i115, align 8, !tbaa !2
  %reass.add.i116 = fadd fast double %mul37.i114, %mul27.i112
  %reass.mul.i117 = fmul fast double %reass.add.i116, 1.500000e+00
  %add42.i118 = fadd fast double %reass.mul.i117, %74
  store double %add42.i118, double* %arrayidx41.i115, align 8, !tbaa !2
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i110, 1
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, %indvars.iv13.i104
  br i1 %exitcond.not.i120, label %for.inc46.i124, label %for.body17.i121, !llvm.loop !21

for.inc46.i124:                                   ; preds = %for.body17.i121
  %indvars.iv.next11.i122 = add nuw nsw i64 %indvars.iv10.i106, 1
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 60
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !31

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 80
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !40

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit225.1.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !57
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call718, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !59

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !60

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar1384 = phi i64 [ %indvar.next1385, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1384, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1386 = icmp ult i64 %88, 4
  br i1 %min.iters.check1386, label %polly.loop_header191.preheader, label %vector.ph1387

vector.ph1387:                                    ; preds = %polly.loop_header
  %n.vec1389 = and i64 %88, -4
  br label %vector.body1383

vector.body1383:                                  ; preds = %vector.body1383, %vector.ph1387
  %index1390 = phi i64 [ 0, %vector.ph1387 ], [ %index.next1391, %vector.body1383 ]
  %90 = shl nuw nsw i64 %index1390, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1394 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !61, !noalias !63
  %93 = fmul fast <4 x double> %wide.load1394, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !61, !noalias !63
  %index.next1391 = add i64 %index1390, 4
  %95 = icmp eq i64 %index.next1391, %n.vec1389
  br i1 %95, label %middle.block1381, label %vector.body1383, !llvm.loop !66

middle.block1381:                                 ; preds = %vector.body1383
  %cmp.n1393 = icmp eq i64 %88, %n.vec1389
  br i1 %cmp.n1393, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1381
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1389, %middle.block1381 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1381
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond785.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1385 = add i64 %indvar1384, 1
  br i1 %exitcond785.not, label %polly.loop_header217.preheader, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !61, !noalias !63
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond784.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond784.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !67

polly.loop_header217.preheader:                   ; preds = %polly.loop_exit193, %polly.loop_exit219
  %polly.loop_cond216 = phi i1 [ false, %polly.loop_exit219 ], [ true, %polly.loop_exit193 ]
  %polly.indvar214 = phi i64 [ 1, %polly.loop_exit219 ], [ 0, %polly.loop_exit193 ]
  %97 = mul nuw nsw i64 %polly.indvar214, 50
  %98 = mul nuw nsw i64 %polly.indvar214, -50
  %99 = icmp slt i64 %98, -30
  %100 = select i1 %99, i64 %98, i64 -30
  %101 = add nsw i64 %100, 79
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit225
  br i1 %polly.loop_cond216, label %polly.loop_header217.preheader, label %polly.loop_header217.1

polly.loop_header217:                             ; preds = %polly.loop_header217.preheader, %polly.loop_exit225
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit225 ], [ 0, %polly.loop_header217.preheader ]
  %102 = shl i64 %polly.indvar220, 3
  br label %polly.loop_header223

polly.loop_exit225:                               ; preds = %polly.loop_exit232
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond783.not = icmp eq i64 %polly.indvar_next221, 50
  br i1 %exitcond783.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header223:                             ; preds = %polly.loop_header217, %polly.loop_exit232
  %indvars.iv = phi i64 [ %97, %polly.loop_header217 ], [ %indvars.iv.next, %polly.loop_exit232 ]
  %polly.indvar226 = phi i64 [ 0, %polly.loop_header217 ], [ %polly.indvar_next227, %polly.loop_exit232 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 63)
  %103 = add nuw i64 %polly.indvar226, %97
  %polly.loop_guard2331017 = icmp sgt i64 %103, -1
  br i1 %polly.loop_guard2331017, label %polly.loop_header230.preheader, label %polly.loop_exit232

polly.loop_header230.preheader:                   ; preds = %polly.loop_header223
  %104 = mul i64 %103, 480
  %105 = add i64 %104, %102
  %scevgep240 = getelementptr i8, i8* %call2, i64 %105
  %scevgep240241 = bitcast i8* %scevgep240 to double*
  %_p_scalar_242 = load double, double* %scevgep240241, align 8, !alias.scope !65, !noalias !69
  %scevgep246 = getelementptr i8, i8* %call1, i64 %105
  %scevgep246247 = bitcast i8* %scevgep246 to double*
  %_p_scalar_248 = load double, double* %scevgep246247, align 8, !alias.scope !64, !noalias !70
  %106 = mul i64 %103, 640
  br label %polly.loop_header230

polly.loop_exit232:                               ; preds = %polly.loop_header230, %polly.loop_header223
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %polly.loop_cond228.not.not = icmp ult i64 %polly.indvar226, %101
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %polly.loop_cond228.not.not, label %polly.loop_header223, label %polly.loop_exit225

polly.loop_header230:                             ; preds = %polly.loop_header230.preheader, %polly.loop_header230
  %polly.indvar234 = phi i64 [ %polly.indvar_next235, %polly.loop_header230 ], [ 0, %polly.loop_header230.preheader ]
  %107 = mul nuw nsw i64 %polly.indvar234, 480
  %108 = add i64 %107, %102
  %scevgep237 = getelementptr i8, i8* %call1, i64 %108
  %scevgep237238 = bitcast i8* %scevgep237 to double*
  %_p_scalar_239 = load double, double* %scevgep237238, align 8, !alias.scope !64, !noalias !70
  %p_mul27.i112 = fmul fast double %_p_scalar_242, %_p_scalar_239
  %scevgep243 = getelementptr i8, i8* %call2, i64 %108
  %scevgep243244 = bitcast i8* %scevgep243 to double*
  %_p_scalar_245 = load double, double* %scevgep243244, align 8, !alias.scope !65, !noalias !69
  %p_mul37.i114 = fmul fast double %_p_scalar_248, %_p_scalar_245
  %109 = shl i64 %polly.indvar234, 3
  %110 = add i64 %109, %106
  %scevgep249 = getelementptr i8, i8* %call, i64 %110
  %scevgep249250 = bitcast i8* %scevgep249 to double*
  %_p_scalar_251 = load double, double* %scevgep249250, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_251
  store double %p_add42.i118, double* %scevgep249250, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next235 = add nuw nsw i64 %polly.indvar234, 1
  %exitcond.not = icmp eq i64 %polly.indvar234, %smin
  br i1 %exitcond.not, label %polly.loop_exit232, label %polly.loop_header230

polly.loop_header338:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit346
  %indvar1358 = phi i64 [ %indvar.next1359, %polly.loop_exit346 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar341 = phi i64 [ %polly.indvar_next342, %polly.loop_exit346 ], [ 1, %kernel_syr2k.exit ]
  %111 = add i64 %indvar1358, 1
  %112 = mul nuw nsw i64 %polly.indvar341, 640
  %scevgep350 = getelementptr i8, i8* %call, i64 %112
  %min.iters.check1360 = icmp ult i64 %111, 4
  br i1 %min.iters.check1360, label %polly.loop_header344.preheader, label %vector.ph1361

vector.ph1361:                                    ; preds = %polly.loop_header338
  %n.vec1363 = and i64 %111, -4
  br label %vector.body1357

vector.body1357:                                  ; preds = %vector.body1357, %vector.ph1361
  %index1364 = phi i64 [ 0, %vector.ph1361 ], [ %index.next1365, %vector.body1357 ]
  %113 = shl nuw nsw i64 %index1364, 3
  %114 = getelementptr i8, i8* %scevgep350, i64 %113
  %115 = bitcast i8* %114 to <4 x double>*
  %wide.load1368 = load <4 x double>, <4 x double>* %115, align 8, !alias.scope !71, !noalias !73
  %116 = fmul fast <4 x double> %wide.load1368, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %117 = bitcast i8* %114 to <4 x double>*
  store <4 x double> %116, <4 x double>* %117, align 8, !alias.scope !71, !noalias !73
  %index.next1365 = add i64 %index1364, 4
  %118 = icmp eq i64 %index.next1365, %n.vec1363
  br i1 %118, label %middle.block1355, label %vector.body1357, !llvm.loop !76

middle.block1355:                                 ; preds = %vector.body1357
  %cmp.n1367 = icmp eq i64 %111, %n.vec1363
  br i1 %cmp.n1367, label %polly.loop_exit346, label %polly.loop_header344.preheader

polly.loop_header344.preheader:                   ; preds = %polly.loop_header338, %middle.block1355
  %polly.indvar347.ph = phi i64 [ 0, %polly.loop_header338 ], [ %n.vec1363, %middle.block1355 ]
  br label %polly.loop_header344

polly.loop_exit346:                               ; preds = %polly.loop_header344, %middle.block1355
  %polly.indvar_next342 = add nuw nsw i64 %polly.indvar341, 1
  %exitcond792.not = icmp eq i64 %polly.indvar_next342, 80
  %indvar.next1359 = add i64 %indvar1358, 1
  br i1 %exitcond792.not, label %polly.loop_header372.preheader, label %polly.loop_header338

polly.loop_header344:                             ; preds = %polly.loop_header344.preheader, %polly.loop_header344
  %polly.indvar347 = phi i64 [ %polly.indvar_next348, %polly.loop_header344 ], [ %polly.indvar347.ph, %polly.loop_header344.preheader ]
  %119 = shl nuw nsw i64 %polly.indvar347, 3
  %scevgep351 = getelementptr i8, i8* %scevgep350, i64 %119
  %scevgep351352 = bitcast i8* %scevgep351 to double*
  %_p_scalar_353 = load double, double* %scevgep351352, align 8, !alias.scope !71, !noalias !73
  %p_mul.i57 = fmul fast double %_p_scalar_353, 1.200000e+00
  store double %p_mul.i57, double* %scevgep351352, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next348 = add nuw nsw i64 %polly.indvar347, 1
  %exitcond791.not = icmp eq i64 %polly.indvar_next348, %polly.indvar341
  br i1 %exitcond791.not, label %polly.loop_exit346, label %polly.loop_header344, !llvm.loop !77

polly.loop_header372.preheader:                   ; preds = %polly.loop_exit346, %polly.loop_exit374
  %polly.loop_cond371 = phi i1 [ false, %polly.loop_exit374 ], [ true, %polly.loop_exit346 ]
  %polly.indvar369 = phi i64 [ 1, %polly.loop_exit374 ], [ 0, %polly.loop_exit346 ]
  %120 = mul nuw nsw i64 %polly.indvar369, 50
  %121 = mul nuw nsw i64 %polly.indvar369, -50
  %122 = icmp slt i64 %121, -30
  %123 = select i1 %122, i64 %121, i64 -30
  %124 = add nsw i64 %123, 79
  br label %polly.loop_header372

polly.loop_exit374:                               ; preds = %polly.loop_exit381
  br i1 %polly.loop_cond371, label %polly.loop_header372.preheader, label %polly.loop_header372.1

polly.loop_header372:                             ; preds = %polly.loop_header372.preheader, %polly.loop_exit381
  %polly.indvar375 = phi i64 [ %polly.indvar_next376, %polly.loop_exit381 ], [ 0, %polly.loop_header372.preheader ]
  %125 = shl i64 %polly.indvar375, 3
  br label %polly.loop_header379

polly.loop_exit381:                               ; preds = %polly.loop_exit389
  %polly.indvar_next376 = add nuw nsw i64 %polly.indvar375, 1
  %exitcond790.not = icmp eq i64 %polly.indvar_next376, 50
  br i1 %exitcond790.not, label %polly.loop_exit374, label %polly.loop_header372

polly.loop_header379:                             ; preds = %polly.loop_header372, %polly.loop_exit389
  %indvars.iv786 = phi i64 [ %120, %polly.loop_header372 ], [ %indvars.iv.next787, %polly.loop_exit389 ]
  %polly.indvar383 = phi i64 [ 0, %polly.loop_header372 ], [ %polly.indvar_next384, %polly.loop_exit389 ]
  %smin788 = call i64 @llvm.smin.i64(i64 %indvars.iv786, i64 63)
  %126 = add nuw i64 %polly.indvar383, %120
  %polly.loop_guard3901021 = icmp sgt i64 %126, -1
  br i1 %polly.loop_guard3901021, label %polly.loop_header387.preheader, label %polly.loop_exit389

polly.loop_header387.preheader:                   ; preds = %polly.loop_header379
  %127 = mul i64 %126, 480
  %128 = add i64 %127, %125
  %scevgep397 = getelementptr i8, i8* %call2, i64 %128
  %scevgep397398 = bitcast i8* %scevgep397 to double*
  %_p_scalar_399 = load double, double* %scevgep397398, align 8, !alias.scope !75, !noalias !78
  %scevgep403 = getelementptr i8, i8* %call1, i64 %128
  %scevgep403404 = bitcast i8* %scevgep403 to double*
  %_p_scalar_405 = load double, double* %scevgep403404, align 8, !alias.scope !74, !noalias !79
  %129 = mul i64 %126, 640
  br label %polly.loop_header387

polly.loop_exit389:                               ; preds = %polly.loop_header387, %polly.loop_header379
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %polly.loop_cond385.not.not = icmp ult i64 %polly.indvar383, %124
  %indvars.iv.next787 = add nuw nsw i64 %indvars.iv786, 1
  br i1 %polly.loop_cond385.not.not, label %polly.loop_header379, label %polly.loop_exit381

polly.loop_header387:                             ; preds = %polly.loop_header387.preheader, %polly.loop_header387
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_header387 ], [ 0, %polly.loop_header387.preheader ]
  %130 = mul nuw nsw i64 %polly.indvar391, 480
  %131 = add i64 %130, %125
  %scevgep394 = getelementptr i8, i8* %call1, i64 %131
  %scevgep394395 = bitcast i8* %scevgep394 to double*
  %_p_scalar_396 = load double, double* %scevgep394395, align 8, !alias.scope !74, !noalias !79
  %p_mul27.i73 = fmul fast double %_p_scalar_399, %_p_scalar_396
  %scevgep400 = getelementptr i8, i8* %call2, i64 %131
  %scevgep400401 = bitcast i8* %scevgep400 to double*
  %_p_scalar_402 = load double, double* %scevgep400401, align 8, !alias.scope !75, !noalias !78
  %p_mul37.i75 = fmul fast double %_p_scalar_405, %_p_scalar_402
  %132 = shl i64 %polly.indvar391, 3
  %133 = add i64 %132, %129
  %scevgep406 = getelementptr i8, i8* %call, i64 %133
  %scevgep406407 = bitcast i8* %scevgep406 to double*
  %_p_scalar_408 = load double, double* %scevgep406407, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_408
  store double %p_add42.i79, double* %scevgep406407, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond789.not = icmp eq i64 %polly.indvar391, %smin788
  br i1 %exitcond789.not, label %polly.loop_exit389, label %polly.loop_header387

polly.loop_header495:                             ; preds = %init_array.exit, %polly.loop_exit503
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit503 ], [ 0, %init_array.exit ]
  %polly.indvar498 = phi i64 [ %polly.indvar_next499, %polly.loop_exit503 ], [ 1, %init_array.exit ]
  %134 = add i64 %indvar, 1
  %135 = mul nuw nsw i64 %polly.indvar498, 640
  %scevgep507 = getelementptr i8, i8* %call, i64 %135
  %min.iters.check1334 = icmp ult i64 %134, 4
  br i1 %min.iters.check1334, label %polly.loop_header501.preheader, label %vector.ph1335

vector.ph1335:                                    ; preds = %polly.loop_header495
  %n.vec1337 = and i64 %134, -4
  br label %vector.body1333

vector.body1333:                                  ; preds = %vector.body1333, %vector.ph1335
  %index1338 = phi i64 [ 0, %vector.ph1335 ], [ %index.next1339, %vector.body1333 ]
  %136 = shl nuw nsw i64 %index1338, 3
  %137 = getelementptr i8, i8* %scevgep507, i64 %136
  %138 = bitcast i8* %137 to <4 x double>*
  %wide.load1342 = load <4 x double>, <4 x double>* %138, align 8, !alias.scope !80, !noalias !82
  %139 = fmul fast <4 x double> %wide.load1342, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %140 = bitcast i8* %137 to <4 x double>*
  store <4 x double> %139, <4 x double>* %140, align 8, !alias.scope !80, !noalias !82
  %index.next1339 = add i64 %index1338, 4
  %141 = icmp eq i64 %index.next1339, %n.vec1337
  br i1 %141, label %middle.block1331, label %vector.body1333, !llvm.loop !85

middle.block1331:                                 ; preds = %vector.body1333
  %cmp.n1341 = icmp eq i64 %134, %n.vec1337
  br i1 %cmp.n1341, label %polly.loop_exit503, label %polly.loop_header501.preheader

polly.loop_header501.preheader:                   ; preds = %polly.loop_header495, %middle.block1331
  %polly.indvar504.ph = phi i64 [ 0, %polly.loop_header495 ], [ %n.vec1337, %middle.block1331 ]
  br label %polly.loop_header501

polly.loop_exit503:                               ; preds = %polly.loop_header501, %middle.block1331
  %polly.indvar_next499 = add nuw nsw i64 %polly.indvar498, 1
  %exitcond799.not = icmp eq i64 %polly.indvar_next499, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond799.not, label %polly.loop_header529.preheader, label %polly.loop_header495

polly.loop_header501:                             ; preds = %polly.loop_header501.preheader, %polly.loop_header501
  %polly.indvar504 = phi i64 [ %polly.indvar_next505, %polly.loop_header501 ], [ %polly.indvar504.ph, %polly.loop_header501.preheader ]
  %142 = shl nuw nsw i64 %polly.indvar504, 3
  %scevgep508 = getelementptr i8, i8* %scevgep507, i64 %142
  %scevgep508509 = bitcast i8* %scevgep508 to double*
  %_p_scalar_510 = load double, double* %scevgep508509, align 8, !alias.scope !80, !noalias !82
  %p_mul.i = fmul fast double %_p_scalar_510, 1.200000e+00
  store double %p_mul.i, double* %scevgep508509, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next505 = add nuw nsw i64 %polly.indvar504, 1
  %exitcond798.not = icmp eq i64 %polly.indvar_next505, %polly.indvar498
  br i1 %exitcond798.not, label %polly.loop_exit503, label %polly.loop_header501, !llvm.loop !86

polly.loop_header529.preheader:                   ; preds = %polly.loop_exit503, %polly.loop_exit531
  %polly.loop_cond528 = phi i1 [ false, %polly.loop_exit531 ], [ true, %polly.loop_exit503 ]
  %polly.indvar526 = phi i64 [ 1, %polly.loop_exit531 ], [ 0, %polly.loop_exit503 ]
  %143 = mul nuw nsw i64 %polly.indvar526, 50
  %144 = mul nuw nsw i64 %polly.indvar526, -50
  %145 = icmp slt i64 %144, -30
  %146 = select i1 %145, i64 %144, i64 -30
  %147 = add nsw i64 %146, 79
  br label %polly.loop_header529

polly.loop_exit531:                               ; preds = %polly.loop_exit538
  br i1 %polly.loop_cond528, label %polly.loop_header529.preheader, label %polly.loop_header529.1

polly.loop_header529:                             ; preds = %polly.loop_header529.preheader, %polly.loop_exit538
  %polly.indvar532 = phi i64 [ %polly.indvar_next533, %polly.loop_exit538 ], [ 0, %polly.loop_header529.preheader ]
  %148 = shl i64 %polly.indvar532, 3
  br label %polly.loop_header536

polly.loop_exit538:                               ; preds = %polly.loop_exit546
  %polly.indvar_next533 = add nuw nsw i64 %polly.indvar532, 1
  %exitcond797.not = icmp eq i64 %polly.indvar_next533, 50
  br i1 %exitcond797.not, label %polly.loop_exit531, label %polly.loop_header529

polly.loop_header536:                             ; preds = %polly.loop_header529, %polly.loop_exit546
  %indvars.iv793 = phi i64 [ %143, %polly.loop_header529 ], [ %indvars.iv.next794, %polly.loop_exit546 ]
  %polly.indvar540 = phi i64 [ 0, %polly.loop_header529 ], [ %polly.indvar_next541, %polly.loop_exit546 ]
  %smin795 = call i64 @llvm.smin.i64(i64 %indvars.iv793, i64 63)
  %149 = add nuw i64 %polly.indvar540, %143
  %polly.loop_guard5471025 = icmp sgt i64 %149, -1
  br i1 %polly.loop_guard5471025, label %polly.loop_header544.preheader, label %polly.loop_exit546

polly.loop_header544.preheader:                   ; preds = %polly.loop_header536
  %150 = mul i64 %149, 480
  %151 = add i64 %150, %148
  %scevgep554 = getelementptr i8, i8* %call2, i64 %151
  %scevgep554555 = bitcast i8* %scevgep554 to double*
  %_p_scalar_556 = load double, double* %scevgep554555, align 8, !alias.scope !84, !noalias !87
  %scevgep560 = getelementptr i8, i8* %call1, i64 %151
  %scevgep560561 = bitcast i8* %scevgep560 to double*
  %_p_scalar_562 = load double, double* %scevgep560561, align 8, !alias.scope !83, !noalias !88
  %152 = mul i64 %149, 640
  br label %polly.loop_header544

polly.loop_exit546:                               ; preds = %polly.loop_header544, %polly.loop_header536
  %polly.indvar_next541 = add nuw nsw i64 %polly.indvar540, 1
  %polly.loop_cond542.not.not = icmp ult i64 %polly.indvar540, %147
  %indvars.iv.next794 = add nuw nsw i64 %indvars.iv793, 1
  br i1 %polly.loop_cond542.not.not, label %polly.loop_header536, label %polly.loop_exit538

polly.loop_header544:                             ; preds = %polly.loop_header544.preheader, %polly.loop_header544
  %polly.indvar548 = phi i64 [ %polly.indvar_next549, %polly.loop_header544 ], [ 0, %polly.loop_header544.preheader ]
  %153 = mul nuw nsw i64 %polly.indvar548, 480
  %154 = add i64 %153, %148
  %scevgep551 = getelementptr i8, i8* %call1, i64 %154
  %scevgep551552 = bitcast i8* %scevgep551 to double*
  %_p_scalar_553 = load double, double* %scevgep551552, align 8, !alias.scope !83, !noalias !88
  %p_mul27.i = fmul fast double %_p_scalar_556, %_p_scalar_553
  %scevgep557 = getelementptr i8, i8* %call2, i64 %154
  %scevgep557558 = bitcast i8* %scevgep557 to double*
  %_p_scalar_559 = load double, double* %scevgep557558, align 8, !alias.scope !84, !noalias !87
  %p_mul37.i = fmul fast double %_p_scalar_562, %_p_scalar_559
  %155 = shl i64 %polly.indvar548, 3
  %156 = add i64 %155, %152
  %scevgep563 = getelementptr i8, i8* %call, i64 %156
  %scevgep563564 = bitcast i8* %scevgep563 to double*
  %_p_scalar_565 = load double, double* %scevgep563564, align 8, !alias.scope !80, !noalias !82
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_565
  store double %p_add42.i, double* %scevgep563564, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next549 = add nuw nsw i64 %polly.indvar548, 1
  %exitcond796.not = icmp eq i64 %polly.indvar548, %smin795
  br i1 %exitcond796.not, label %polly.loop_exit546, label %polly.loop_header544

polly.loop_header704:                             ; preds = %entry, %polly.loop_exit712
  %polly.indvar707 = phi i64 [ %polly.indvar_next708, %polly.loop_exit712 ], [ 0, %entry ]
  %157 = mul nuw nsw i64 %polly.indvar707, 640
  %158 = trunc i64 %polly.indvar707 to i32
  %broadcast.splatinsert1065 = insertelement <4 x i32> poison, i32 %158, i32 0
  %broadcast.splat1066 = shufflevector <4 x i32> %broadcast.splatinsert1065, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1055

vector.body1055:                                  ; preds = %vector.body1055, %polly.loop_header704
  %index1057 = phi i64 [ 0, %polly.loop_header704 ], [ %index.next1058, %vector.body1055 ]
  %vec.ind1063 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header704 ], [ %vec.ind.next1064, %vector.body1055 ]
  %159 = mul <4 x i32> %vec.ind1063, %broadcast.splat1066
  %160 = add <4 x i32> %159, <i32 3, i32 3, i32 3, i32 3>
  %161 = urem <4 x i32> %160, <i32 80, i32 80, i32 80, i32 80>
  %162 = sitofp <4 x i32> %161 to <4 x double>
  %163 = fmul fast <4 x double> %162, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %164 = shl i64 %index1057, 3
  %165 = add nuw nsw i64 %164, %157
  %166 = getelementptr i8, i8* %call, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %163, <4 x double>* %167, align 8, !alias.scope !89, !noalias !91
  %index.next1058 = add i64 %index1057, 4
  %vec.ind.next1064 = add <4 x i32> %vec.ind1063, <i32 4, i32 4, i32 4, i32 4>
  %168 = icmp eq i64 %index.next1058, 32
  br i1 %168, label %polly.loop_exit712, label %vector.body1055, !llvm.loop !94

polly.loop_exit712:                               ; preds = %vector.body1055
  %polly.indvar_next708 = add nuw nsw i64 %polly.indvar707, 1
  %exitcond819.not = icmp eq i64 %polly.indvar_next708, 32
  br i1 %exitcond819.not, label %polly.loop_header704.1, label %polly.loop_header704

polly.loop_header731:                             ; preds = %polly.loop_exit712.2.2, %polly.loop_exit739
  %polly.indvar734 = phi i64 [ %polly.indvar_next735, %polly.loop_exit739 ], [ 0, %polly.loop_exit712.2.2 ]
  %169 = mul nuw nsw i64 %polly.indvar734, 480
  %170 = trunc i64 %polly.indvar734 to i32
  %broadcast.splatinsert1179 = insertelement <4 x i32> poison, i32 %170, i32 0
  %broadcast.splat1180 = shufflevector <4 x i32> %broadcast.splatinsert1179, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1169

vector.body1169:                                  ; preds = %vector.body1169, %polly.loop_header731
  %index1171 = phi i64 [ 0, %polly.loop_header731 ], [ %index.next1172, %vector.body1169 ]
  %vec.ind1177 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header731 ], [ %vec.ind.next1178, %vector.body1169 ]
  %171 = mul <4 x i32> %vec.ind1177, %broadcast.splat1180
  %172 = add <4 x i32> %171, <i32 2, i32 2, i32 2, i32 2>
  %173 = urem <4 x i32> %172, <i32 60, i32 60, i32 60, i32 60>
  %174 = sitofp <4 x i32> %173 to <4 x double>
  %175 = fmul fast <4 x double> %174, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %176 = shl i64 %index1171, 3
  %177 = add i64 %176, %169
  %178 = getelementptr i8, i8* %call2, i64 %177
  %179 = bitcast i8* %178 to <4 x double>*
  store <4 x double> %175, <4 x double>* %179, align 8, !alias.scope !93, !noalias !95
  %index.next1172 = add i64 %index1171, 4
  %vec.ind.next1178 = add <4 x i32> %vec.ind1177, <i32 4, i32 4, i32 4, i32 4>
  %180 = icmp eq i64 %index.next1172, 32
  br i1 %180, label %polly.loop_exit739, label %vector.body1169, !llvm.loop !96

polly.loop_exit739:                               ; preds = %vector.body1169
  %polly.indvar_next735 = add nuw nsw i64 %polly.indvar734, 1
  %exitcond810.not = icmp eq i64 %polly.indvar_next735, 32
  br i1 %exitcond810.not, label %polly.loop_header731.1, label %polly.loop_header731

polly.loop_header757:                             ; preds = %polly.loop_exit739.1.2, %polly.loop_exit765
  %polly.indvar760 = phi i64 [ %polly.indvar_next761, %polly.loop_exit765 ], [ 0, %polly.loop_exit739.1.2 ]
  %181 = mul nuw nsw i64 %polly.indvar760, 480
  %182 = trunc i64 %polly.indvar760 to i32
  %broadcast.splatinsert1257 = insertelement <4 x i32> poison, i32 %182, i32 0
  %broadcast.splat1258 = shufflevector <4 x i32> %broadcast.splatinsert1257, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1247

vector.body1247:                                  ; preds = %vector.body1247, %polly.loop_header757
  %index1249 = phi i64 [ 0, %polly.loop_header757 ], [ %index.next1250, %vector.body1247 ]
  %vec.ind1255 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header757 ], [ %vec.ind.next1256, %vector.body1247 ]
  %183 = mul <4 x i32> %vec.ind1255, %broadcast.splat1258
  %184 = add <4 x i32> %183, <i32 1, i32 1, i32 1, i32 1>
  %185 = urem <4 x i32> %184, <i32 80, i32 80, i32 80, i32 80>
  %186 = sitofp <4 x i32> %185 to <4 x double>
  %187 = fmul fast <4 x double> %186, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %188 = shl i64 %index1249, 3
  %189 = add i64 %188, %181
  %190 = getelementptr i8, i8* %call1, i64 %189
  %191 = bitcast i8* %190 to <4 x double>*
  store <4 x double> %187, <4 x double>* %191, align 8, !alias.scope !92, !noalias !97
  %index.next1250 = add i64 %index1249, 4
  %vec.ind.next1256 = add <4 x i32> %vec.ind1255, <i32 4, i32 4, i32 4, i32 4>
  %192 = icmp eq i64 %index.next1250, 32
  br i1 %192, label %polly.loop_exit765, label %vector.body1247, !llvm.loop !98

polly.loop_exit765:                               ; preds = %vector.body1247
  %polly.indvar_next761 = add nuw nsw i64 %polly.indvar760, 1
  %exitcond804.not = icmp eq i64 %polly.indvar_next761, 32
  br i1 %exitcond804.not, label %polly.loop_header757.1, label %polly.loop_header757

polly.loop_header217.1:                           ; preds = %polly.loop_exit219, %polly.loop_exit225.1
  %polly.indvar220.1 = phi i64 [ %polly.indvar_next221.1, %polly.loop_exit225.1 ], [ 0, %polly.loop_exit219 ]
  %193 = shl i64 %polly.indvar220.1, 3
  br label %polly.loop_header223.1

polly.loop_header223.1:                           ; preds = %polly.loop_exit232.1, %polly.loop_header217.1
  %indvars.iv.1 = phi i64 [ 0, %polly.loop_header217.1 ], [ %indvars.iv.next.1, %polly.loop_exit232.1 ]
  %polly.indvar226.1 = phi i64 [ 14, %polly.loop_header217.1 ], [ %polly.indvar_next227.1, %polly.loop_exit232.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.1, i64 63)
  %194 = add nuw nsw i64 %polly.indvar226.1, 50
  %polly.loop_guard233.11018 = icmp ugt i64 %polly.indvar226.1, 13
  br i1 %polly.loop_guard233.11018, label %polly.loop_header230.preheader.1, label %polly.loop_exit232.1

polly.loop_header230.preheader.1:                 ; preds = %polly.loop_header223.1
  %195 = mul nuw nsw i64 %194, 480
  %196 = add i64 %195, %193
  %scevgep240.1 = getelementptr i8, i8* %call2, i64 %196
  %scevgep240241.1 = bitcast i8* %scevgep240.1 to double*
  %_p_scalar_242.1 = load double, double* %scevgep240241.1, align 8, !alias.scope !65, !noalias !69
  %scevgep246.1 = getelementptr i8, i8* %call1, i64 %196
  %scevgep246247.1 = bitcast i8* %scevgep246.1 to double*
  %_p_scalar_248.1 = load double, double* %scevgep246247.1, align 8, !alias.scope !64, !noalias !70
  %197 = mul nuw nsw i64 %194, 640
  br label %polly.loop_header230.1

polly.loop_header230.1:                           ; preds = %polly.loop_header230.1, %polly.loop_header230.preheader.1
  %polly.indvar234.1 = phi i64 [ %polly.indvar_next235.1, %polly.loop_header230.1 ], [ 0, %polly.loop_header230.preheader.1 ]
  %198 = add nuw nsw i64 %polly.indvar234.1, 64
  %199 = mul nuw nsw i64 %198, 480
  %200 = add i64 %199, %193
  %scevgep237.1 = getelementptr i8, i8* %call1, i64 %200
  %scevgep237238.1 = bitcast i8* %scevgep237.1 to double*
  %_p_scalar_239.1 = load double, double* %scevgep237238.1, align 8, !alias.scope !64, !noalias !70
  %p_mul27.i112.1 = fmul fast double %_p_scalar_242.1, %_p_scalar_239.1
  %scevgep243.1 = getelementptr i8, i8* %call2, i64 %200
  %scevgep243244.1 = bitcast i8* %scevgep243.1 to double*
  %_p_scalar_245.1 = load double, double* %scevgep243244.1, align 8, !alias.scope !65, !noalias !69
  %p_mul37.i114.1 = fmul fast double %_p_scalar_248.1, %_p_scalar_245.1
  %201 = shl i64 %198, 3
  %202 = add i64 %201, %197
  %scevgep249.1 = getelementptr i8, i8* %call, i64 %202
  %scevgep249250.1 = bitcast i8* %scevgep249.1 to double*
  %_p_scalar_251.1 = load double, double* %scevgep249250.1, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_251.1
  store double %p_add42.i118.1, double* %scevgep249250.1, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next235.1 = add nuw nsw i64 %polly.indvar234.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar234.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit232.1, label %polly.loop_header230.1

polly.loop_exit232.1:                             ; preds = %polly.loop_header230.1, %polly.loop_header223.1
  %polly.indvar_next227.1 = add nuw nsw i64 %polly.indvar226.1, 1
  %polly.loop_cond228.not.not.1 = icmp ult i64 %polly.indvar226.1, 29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  br i1 %polly.loop_cond228.not.not.1, label %polly.loop_header223.1, label %polly.loop_exit225.1

polly.loop_exit225.1:                             ; preds = %polly.loop_exit232.1
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %exitcond783.1.not = icmp eq i64 %polly.indvar_next221.1, 50
  br i1 %exitcond783.1.not, label %polly.loop_header217.preheader.1827, label %polly.loop_header217.1

polly.loop_header217.preheader.1827:              ; preds = %polly.loop_exit225.1, %polly.loop_exit219.1869
  %polly.loop_cond216.1 = phi i1 [ false, %polly.loop_exit219.1869 ], [ true, %polly.loop_exit225.1 ]
  %polly.indvar214.1 = phi i64 [ 1, %polly.loop_exit219.1869 ], [ 0, %polly.loop_exit225.1 ]
  %203 = mul nuw nsw i64 %polly.indvar214.1, 50
  %204 = mul nuw nsw i64 %polly.indvar214.1, -50
  %205 = icmp slt i64 %204, -30
  %206 = select i1 %205, i64 %204, i64 -30
  %207 = add nsw i64 %206, 79
  br label %polly.loop_header217.1829

polly.loop_header217.1829:                        ; preds = %polly.loop_exit225.1867, %polly.loop_header217.preheader.1827
  %polly.indvar220.1828 = phi i64 [ %polly.indvar_next221.1865, %polly.loop_exit225.1867 ], [ 0, %polly.loop_header217.preheader.1827 ]
  %208 = shl i64 %polly.indvar220.1828, 3
  %209 = add i64 %208, 400
  br label %polly.loop_header223.1834

polly.loop_header223.1834:                        ; preds = %polly.loop_exit232.1864, %polly.loop_header217.1829
  %indvars.iv.1830 = phi i64 [ %203, %polly.loop_header217.1829 ], [ %indvars.iv.next.1863, %polly.loop_exit232.1864 ]
  %polly.indvar226.1831 = phi i64 [ 0, %polly.loop_header217.1829 ], [ %polly.indvar_next227.1861, %polly.loop_exit232.1864 ]
  %smin.1832 = call i64 @llvm.smin.i64(i64 %indvars.iv.1830, i64 63)
  %210 = add nuw i64 %polly.indvar226.1831, %203
  %polly.loop_guard233.18331019 = icmp sgt i64 %210, -1
  br i1 %polly.loop_guard233.18331019, label %polly.loop_header230.preheader.1841, label %polly.loop_exit232.1864

polly.loop_header230.preheader.1841:              ; preds = %polly.loop_header223.1834
  %211 = mul i64 %210, 480
  %212 = add i64 %211, %209
  %scevgep240.1835 = getelementptr i8, i8* %call2, i64 %212
  %scevgep240241.1836 = bitcast i8* %scevgep240.1835 to double*
  %_p_scalar_242.1837 = load double, double* %scevgep240241.1836, align 8, !alias.scope !65, !noalias !69
  %scevgep246.1838 = getelementptr i8, i8* %call1, i64 %212
  %scevgep246247.1839 = bitcast i8* %scevgep246.1838 to double*
  %_p_scalar_248.1840 = load double, double* %scevgep246247.1839, align 8, !alias.scope !64, !noalias !70
  %213 = mul i64 %210, 640
  br label %polly.loop_header230.1859

polly.loop_header230.1859:                        ; preds = %polly.loop_header230.1859, %polly.loop_header230.preheader.1841
  %polly.indvar234.1842 = phi i64 [ %polly.indvar_next235.1857, %polly.loop_header230.1859 ], [ 0, %polly.loop_header230.preheader.1841 ]
  %214 = mul nuw nsw i64 %polly.indvar234.1842, 480
  %215 = add i64 %214, %209
  %scevgep237.1843 = getelementptr i8, i8* %call1, i64 %215
  %scevgep237238.1844 = bitcast i8* %scevgep237.1843 to double*
  %_p_scalar_239.1845 = load double, double* %scevgep237238.1844, align 8, !alias.scope !64, !noalias !70
  %p_mul27.i112.1846 = fmul fast double %_p_scalar_242.1837, %_p_scalar_239.1845
  %scevgep243.1847 = getelementptr i8, i8* %call2, i64 %215
  %scevgep243244.1848 = bitcast i8* %scevgep243.1847 to double*
  %_p_scalar_245.1849 = load double, double* %scevgep243244.1848, align 8, !alias.scope !65, !noalias !69
  %p_mul37.i114.1850 = fmul fast double %_p_scalar_248.1840, %_p_scalar_245.1849
  %216 = shl i64 %polly.indvar234.1842, 3
  %217 = add i64 %216, %213
  %scevgep249.1851 = getelementptr i8, i8* %call, i64 %217
  %scevgep249250.1852 = bitcast i8* %scevgep249.1851 to double*
  %_p_scalar_251.1853 = load double, double* %scevgep249250.1852, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116.1854 = fadd fast double %p_mul37.i114.1850, %p_mul27.i112.1846
  %p_reass.mul.i117.1855 = fmul fast double %p_reass.add.i116.1854, 1.500000e+00
  %p_add42.i118.1856 = fadd fast double %p_reass.mul.i117.1855, %_p_scalar_251.1853
  store double %p_add42.i118.1856, double* %scevgep249250.1852, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next235.1857 = add nuw nsw i64 %polly.indvar234.1842, 1
  %exitcond.1858.not = icmp eq i64 %polly.indvar234.1842, %smin.1832
  br i1 %exitcond.1858.not, label %polly.loop_exit232.1864, label %polly.loop_header230.1859

polly.loop_exit232.1864:                          ; preds = %polly.loop_header230.1859, %polly.loop_header223.1834
  %polly.indvar_next227.1861 = add nuw nsw i64 %polly.indvar226.1831, 1
  %polly.loop_cond228.not.not.1862 = icmp ult i64 %polly.indvar226.1831, %207
  %indvars.iv.next.1863 = add nuw nsw i64 %indvars.iv.1830, 1
  br i1 %polly.loop_cond228.not.not.1862, label %polly.loop_header223.1834, label %polly.loop_exit225.1867

polly.loop_exit225.1867:                          ; preds = %polly.loop_exit232.1864
  %polly.indvar_next221.1865 = add nuw nsw i64 %polly.indvar220.1828, 1
  %exitcond783.1866.not = icmp eq i64 %polly.indvar_next221.1865, 10
  br i1 %exitcond783.1866.not, label %polly.loop_exit219.1869, label %polly.loop_header217.1829

polly.loop_exit219.1869:                          ; preds = %polly.loop_exit225.1867
  br i1 %polly.loop_cond216.1, label %polly.loop_header217.preheader.1827, label %polly.loop_header217.1.1

polly.loop_header217.1.1:                         ; preds = %polly.loop_exit219.1869, %polly.loop_exit225.1.1
  %polly.indvar220.1.1 = phi i64 [ %polly.indvar_next221.1.1, %polly.loop_exit225.1.1 ], [ 0, %polly.loop_exit219.1869 ]
  %218 = shl i64 %polly.indvar220.1.1, 3
  %219 = add i64 %218, 400
  br label %polly.loop_header223.1.1

polly.loop_header223.1.1:                         ; preds = %polly.loop_exit232.1.1, %polly.loop_header217.1.1
  %indvars.iv.1.1 = phi i64 [ 0, %polly.loop_header217.1.1 ], [ %indvars.iv.next.1.1, %polly.loop_exit232.1.1 ]
  %polly.indvar226.1.1 = phi i64 [ 14, %polly.loop_header217.1.1 ], [ %polly.indvar_next227.1.1, %polly.loop_exit232.1.1 ]
  %smin.1.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.1.1, i64 63)
  %220 = add nuw nsw i64 %polly.indvar226.1.1, 50
  %polly.loop_guard233.1.11020 = icmp ugt i64 %polly.indvar226.1.1, 13
  br i1 %polly.loop_guard233.1.11020, label %polly.loop_header230.preheader.1.1, label %polly.loop_exit232.1.1

polly.loop_header230.preheader.1.1:               ; preds = %polly.loop_header223.1.1
  %221 = mul nuw nsw i64 %220, 480
  %222 = add i64 %221, %219
  %scevgep240.1.1 = getelementptr i8, i8* %call2, i64 %222
  %scevgep240241.1.1 = bitcast i8* %scevgep240.1.1 to double*
  %_p_scalar_242.1.1 = load double, double* %scevgep240241.1.1, align 8, !alias.scope !65, !noalias !69
  %scevgep246.1.1 = getelementptr i8, i8* %call1, i64 %222
  %scevgep246247.1.1 = bitcast i8* %scevgep246.1.1 to double*
  %_p_scalar_248.1.1 = load double, double* %scevgep246247.1.1, align 8, !alias.scope !64, !noalias !70
  %223 = mul nuw nsw i64 %220, 640
  br label %polly.loop_header230.1.1

polly.loop_header230.1.1:                         ; preds = %polly.loop_header230.1.1, %polly.loop_header230.preheader.1.1
  %polly.indvar234.1.1 = phi i64 [ %polly.indvar_next235.1.1, %polly.loop_header230.1.1 ], [ 0, %polly.loop_header230.preheader.1.1 ]
  %224 = add nuw nsw i64 %polly.indvar234.1.1, 64
  %225 = mul nuw nsw i64 %224, 480
  %226 = add i64 %225, %219
  %scevgep237.1.1 = getelementptr i8, i8* %call1, i64 %226
  %scevgep237238.1.1 = bitcast i8* %scevgep237.1.1 to double*
  %_p_scalar_239.1.1 = load double, double* %scevgep237238.1.1, align 8, !alias.scope !64, !noalias !70
  %p_mul27.i112.1.1 = fmul fast double %_p_scalar_242.1.1, %_p_scalar_239.1.1
  %scevgep243.1.1 = getelementptr i8, i8* %call2, i64 %226
  %scevgep243244.1.1 = bitcast i8* %scevgep243.1.1 to double*
  %_p_scalar_245.1.1 = load double, double* %scevgep243244.1.1, align 8, !alias.scope !65, !noalias !69
  %p_mul37.i114.1.1 = fmul fast double %_p_scalar_248.1.1, %_p_scalar_245.1.1
  %227 = shl i64 %224, 3
  %228 = add i64 %227, %223
  %scevgep249.1.1 = getelementptr i8, i8* %call, i64 %228
  %scevgep249250.1.1 = bitcast i8* %scevgep249.1.1 to double*
  %_p_scalar_251.1.1 = load double, double* %scevgep249250.1.1, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116.1.1 = fadd fast double %p_mul37.i114.1.1, %p_mul27.i112.1.1
  %p_reass.mul.i117.1.1 = fmul fast double %p_reass.add.i116.1.1, 1.500000e+00
  %p_add42.i118.1.1 = fadd fast double %p_reass.mul.i117.1.1, %_p_scalar_251.1.1
  store double %p_add42.i118.1.1, double* %scevgep249250.1.1, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next235.1.1 = add nuw nsw i64 %polly.indvar234.1.1, 1
  %exitcond.1.1.not = icmp eq i64 %polly.indvar234.1.1, %smin.1.1
  br i1 %exitcond.1.1.not, label %polly.loop_exit232.1.1, label %polly.loop_header230.1.1

polly.loop_exit232.1.1:                           ; preds = %polly.loop_header230.1.1, %polly.loop_header223.1.1
  %polly.indvar_next227.1.1 = add nuw nsw i64 %polly.indvar226.1.1, 1
  %polly.loop_cond228.not.not.1.1 = icmp ult i64 %polly.indvar226.1.1, 29
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1.1, 1
  br i1 %polly.loop_cond228.not.not.1.1, label %polly.loop_header223.1.1, label %polly.loop_exit225.1.1

polly.loop_exit225.1.1:                           ; preds = %polly.loop_exit232.1.1
  %polly.indvar_next221.1.1 = add nuw nsw i64 %polly.indvar220.1.1, 1
  %exitcond783.1.1.not = icmp eq i64 %polly.indvar_next221.1.1, 10
  br i1 %exitcond783.1.1.not, label %kernel_syr2k.exit129, label %polly.loop_header217.1.1

polly.loop_header372.1:                           ; preds = %polly.loop_exit374, %polly.loop_exit381.1
  %polly.indvar375.1 = phi i64 [ %polly.indvar_next376.1, %polly.loop_exit381.1 ], [ 0, %polly.loop_exit374 ]
  %229 = shl i64 %polly.indvar375.1, 3
  br label %polly.loop_header379.1

polly.loop_header379.1:                           ; preds = %polly.loop_exit389.1, %polly.loop_header372.1
  %indvars.iv786.1 = phi i64 [ 0, %polly.loop_header372.1 ], [ %indvars.iv.next787.1, %polly.loop_exit389.1 ]
  %polly.indvar383.1 = phi i64 [ 14, %polly.loop_header372.1 ], [ %polly.indvar_next384.1, %polly.loop_exit389.1 ]
  %smin788.1 = call i64 @llvm.smin.i64(i64 %indvars.iv786.1, i64 63)
  %230 = add nuw nsw i64 %polly.indvar383.1, 50
  %polly.loop_guard390.11022 = icmp ugt i64 %polly.indvar383.1, 13
  br i1 %polly.loop_guard390.11022, label %polly.loop_header387.preheader.1, label %polly.loop_exit389.1

polly.loop_header387.preheader.1:                 ; preds = %polly.loop_header379.1
  %231 = mul nuw nsw i64 %230, 480
  %232 = add i64 %231, %229
  %scevgep397.1 = getelementptr i8, i8* %call2, i64 %232
  %scevgep397398.1 = bitcast i8* %scevgep397.1 to double*
  %_p_scalar_399.1 = load double, double* %scevgep397398.1, align 8, !alias.scope !75, !noalias !78
  %scevgep403.1 = getelementptr i8, i8* %call1, i64 %232
  %scevgep403404.1 = bitcast i8* %scevgep403.1 to double*
  %_p_scalar_405.1 = load double, double* %scevgep403404.1, align 8, !alias.scope !74, !noalias !79
  %233 = mul nuw nsw i64 %230, 640
  br label %polly.loop_header387.1

polly.loop_header387.1:                           ; preds = %polly.loop_header387.1, %polly.loop_header387.preheader.1
  %polly.indvar391.1 = phi i64 [ %polly.indvar_next392.1, %polly.loop_header387.1 ], [ 0, %polly.loop_header387.preheader.1 ]
  %234 = add nuw nsw i64 %polly.indvar391.1, 64
  %235 = mul nuw nsw i64 %234, 480
  %236 = add i64 %235, %229
  %scevgep394.1 = getelementptr i8, i8* %call1, i64 %236
  %scevgep394395.1 = bitcast i8* %scevgep394.1 to double*
  %_p_scalar_396.1 = load double, double* %scevgep394395.1, align 8, !alias.scope !74, !noalias !79
  %p_mul27.i73.1 = fmul fast double %_p_scalar_399.1, %_p_scalar_396.1
  %scevgep400.1 = getelementptr i8, i8* %call2, i64 %236
  %scevgep400401.1 = bitcast i8* %scevgep400.1 to double*
  %_p_scalar_402.1 = load double, double* %scevgep400401.1, align 8, !alias.scope !75, !noalias !78
  %p_mul37.i75.1 = fmul fast double %_p_scalar_405.1, %_p_scalar_402.1
  %237 = shl i64 %234, 3
  %238 = add i64 %237, %233
  %scevgep406.1 = getelementptr i8, i8* %call, i64 %238
  %scevgep406407.1 = bitcast i8* %scevgep406.1 to double*
  %_p_scalar_408.1 = load double, double* %scevgep406407.1, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_408.1
  store double %p_add42.i79.1, double* %scevgep406407.1, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next392.1 = add nuw nsw i64 %polly.indvar391.1, 1
  %exitcond789.1.not = icmp eq i64 %polly.indvar391.1, %smin788.1
  br i1 %exitcond789.1.not, label %polly.loop_exit389.1, label %polly.loop_header387.1

polly.loop_exit389.1:                             ; preds = %polly.loop_header387.1, %polly.loop_header379.1
  %polly.indvar_next384.1 = add nuw nsw i64 %polly.indvar383.1, 1
  %polly.loop_cond385.not.not.1 = icmp ult i64 %polly.indvar383.1, 29
  %indvars.iv.next787.1 = add nuw nsw i64 %indvars.iv786.1, 1
  br i1 %polly.loop_cond385.not.not.1, label %polly.loop_header379.1, label %polly.loop_exit381.1

polly.loop_exit381.1:                             ; preds = %polly.loop_exit389.1
  %polly.indvar_next376.1 = add nuw nsw i64 %polly.indvar375.1, 1
  %exitcond790.1.not = icmp eq i64 %polly.indvar_next376.1, 50
  br i1 %exitcond790.1.not, label %polly.loop_header372.preheader.1872, label %polly.loop_header372.1

polly.loop_header372.preheader.1872:              ; preds = %polly.loop_exit381.1, %polly.loop_exit374.1914
  %polly.loop_cond371.1 = phi i1 [ false, %polly.loop_exit374.1914 ], [ true, %polly.loop_exit381.1 ]
  %polly.indvar369.1 = phi i64 [ 1, %polly.loop_exit374.1914 ], [ 0, %polly.loop_exit381.1 ]
  %239 = mul nuw nsw i64 %polly.indvar369.1, 50
  %240 = mul nuw nsw i64 %polly.indvar369.1, -50
  %241 = icmp slt i64 %240, -30
  %242 = select i1 %241, i64 %240, i64 -30
  %243 = add nsw i64 %242, 79
  br label %polly.loop_header372.1874

polly.loop_header372.1874:                        ; preds = %polly.loop_exit381.1912, %polly.loop_header372.preheader.1872
  %polly.indvar375.1873 = phi i64 [ %polly.indvar_next376.1910, %polly.loop_exit381.1912 ], [ 0, %polly.loop_header372.preheader.1872 ]
  %244 = shl i64 %polly.indvar375.1873, 3
  %245 = add i64 %244, 400
  br label %polly.loop_header379.1879

polly.loop_header379.1879:                        ; preds = %polly.loop_exit389.1909, %polly.loop_header372.1874
  %indvars.iv786.1875 = phi i64 [ %239, %polly.loop_header372.1874 ], [ %indvars.iv.next787.1908, %polly.loop_exit389.1909 ]
  %polly.indvar383.1876 = phi i64 [ 0, %polly.loop_header372.1874 ], [ %polly.indvar_next384.1906, %polly.loop_exit389.1909 ]
  %smin788.1877 = call i64 @llvm.smin.i64(i64 %indvars.iv786.1875, i64 63)
  %246 = add nuw i64 %polly.indvar383.1876, %239
  %polly.loop_guard390.18781023 = icmp sgt i64 %246, -1
  br i1 %polly.loop_guard390.18781023, label %polly.loop_header387.preheader.1886, label %polly.loop_exit389.1909

polly.loop_header387.preheader.1886:              ; preds = %polly.loop_header379.1879
  %247 = mul i64 %246, 480
  %248 = add i64 %247, %245
  %scevgep397.1880 = getelementptr i8, i8* %call2, i64 %248
  %scevgep397398.1881 = bitcast i8* %scevgep397.1880 to double*
  %_p_scalar_399.1882 = load double, double* %scevgep397398.1881, align 8, !alias.scope !75, !noalias !78
  %scevgep403.1883 = getelementptr i8, i8* %call1, i64 %248
  %scevgep403404.1884 = bitcast i8* %scevgep403.1883 to double*
  %_p_scalar_405.1885 = load double, double* %scevgep403404.1884, align 8, !alias.scope !74, !noalias !79
  %249 = mul i64 %246, 640
  br label %polly.loop_header387.1904

polly.loop_header387.1904:                        ; preds = %polly.loop_header387.1904, %polly.loop_header387.preheader.1886
  %polly.indvar391.1887 = phi i64 [ %polly.indvar_next392.1902, %polly.loop_header387.1904 ], [ 0, %polly.loop_header387.preheader.1886 ]
  %250 = mul nuw nsw i64 %polly.indvar391.1887, 480
  %251 = add i64 %250, %245
  %scevgep394.1888 = getelementptr i8, i8* %call1, i64 %251
  %scevgep394395.1889 = bitcast i8* %scevgep394.1888 to double*
  %_p_scalar_396.1890 = load double, double* %scevgep394395.1889, align 8, !alias.scope !74, !noalias !79
  %p_mul27.i73.1891 = fmul fast double %_p_scalar_399.1882, %_p_scalar_396.1890
  %scevgep400.1892 = getelementptr i8, i8* %call2, i64 %251
  %scevgep400401.1893 = bitcast i8* %scevgep400.1892 to double*
  %_p_scalar_402.1894 = load double, double* %scevgep400401.1893, align 8, !alias.scope !75, !noalias !78
  %p_mul37.i75.1895 = fmul fast double %_p_scalar_405.1885, %_p_scalar_402.1894
  %252 = shl i64 %polly.indvar391.1887, 3
  %253 = add i64 %252, %249
  %scevgep406.1896 = getelementptr i8, i8* %call, i64 %253
  %scevgep406407.1897 = bitcast i8* %scevgep406.1896 to double*
  %_p_scalar_408.1898 = load double, double* %scevgep406407.1897, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i77.1899 = fadd fast double %p_mul37.i75.1895, %p_mul27.i73.1891
  %p_reass.mul.i78.1900 = fmul fast double %p_reass.add.i77.1899, 1.500000e+00
  %p_add42.i79.1901 = fadd fast double %p_reass.mul.i78.1900, %_p_scalar_408.1898
  store double %p_add42.i79.1901, double* %scevgep406407.1897, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next392.1902 = add nuw nsw i64 %polly.indvar391.1887, 1
  %exitcond789.1903.not = icmp eq i64 %polly.indvar391.1887, %smin788.1877
  br i1 %exitcond789.1903.not, label %polly.loop_exit389.1909, label %polly.loop_header387.1904

polly.loop_exit389.1909:                          ; preds = %polly.loop_header387.1904, %polly.loop_header379.1879
  %polly.indvar_next384.1906 = add nuw nsw i64 %polly.indvar383.1876, 1
  %polly.loop_cond385.not.not.1907 = icmp ult i64 %polly.indvar383.1876, %243
  %indvars.iv.next787.1908 = add nuw nsw i64 %indvars.iv786.1875, 1
  br i1 %polly.loop_cond385.not.not.1907, label %polly.loop_header379.1879, label %polly.loop_exit381.1912

polly.loop_exit381.1912:                          ; preds = %polly.loop_exit389.1909
  %polly.indvar_next376.1910 = add nuw nsw i64 %polly.indvar375.1873, 1
  %exitcond790.1911.not = icmp eq i64 %polly.indvar_next376.1910, 10
  br i1 %exitcond790.1911.not, label %polly.loop_exit374.1914, label %polly.loop_header372.1874

polly.loop_exit374.1914:                          ; preds = %polly.loop_exit381.1912
  br i1 %polly.loop_cond371.1, label %polly.loop_header372.preheader.1872, label %polly.loop_header372.1.1

polly.loop_header372.1.1:                         ; preds = %polly.loop_exit374.1914, %polly.loop_exit381.1.1
  %polly.indvar375.1.1 = phi i64 [ %polly.indvar_next376.1.1, %polly.loop_exit381.1.1 ], [ 0, %polly.loop_exit374.1914 ]
  %254 = shl i64 %polly.indvar375.1.1, 3
  %255 = add i64 %254, 400
  br label %polly.loop_header379.1.1

polly.loop_header379.1.1:                         ; preds = %polly.loop_exit389.1.1, %polly.loop_header372.1.1
  %indvars.iv786.1.1 = phi i64 [ 0, %polly.loop_header372.1.1 ], [ %indvars.iv.next787.1.1, %polly.loop_exit389.1.1 ]
  %polly.indvar383.1.1 = phi i64 [ 14, %polly.loop_header372.1.1 ], [ %polly.indvar_next384.1.1, %polly.loop_exit389.1.1 ]
  %smin788.1.1 = call i64 @llvm.smin.i64(i64 %indvars.iv786.1.1, i64 63)
  %256 = add nuw nsw i64 %polly.indvar383.1.1, 50
  %polly.loop_guard390.1.11024 = icmp ugt i64 %polly.indvar383.1.1, 13
  br i1 %polly.loop_guard390.1.11024, label %polly.loop_header387.preheader.1.1, label %polly.loop_exit389.1.1

polly.loop_header387.preheader.1.1:               ; preds = %polly.loop_header379.1.1
  %257 = mul nuw nsw i64 %256, 480
  %258 = add i64 %257, %255
  %scevgep397.1.1 = getelementptr i8, i8* %call2, i64 %258
  %scevgep397398.1.1 = bitcast i8* %scevgep397.1.1 to double*
  %_p_scalar_399.1.1 = load double, double* %scevgep397398.1.1, align 8, !alias.scope !75, !noalias !78
  %scevgep403.1.1 = getelementptr i8, i8* %call1, i64 %258
  %scevgep403404.1.1 = bitcast i8* %scevgep403.1.1 to double*
  %_p_scalar_405.1.1 = load double, double* %scevgep403404.1.1, align 8, !alias.scope !74, !noalias !79
  %259 = mul nuw nsw i64 %256, 640
  br label %polly.loop_header387.1.1

polly.loop_header387.1.1:                         ; preds = %polly.loop_header387.1.1, %polly.loop_header387.preheader.1.1
  %polly.indvar391.1.1 = phi i64 [ %polly.indvar_next392.1.1, %polly.loop_header387.1.1 ], [ 0, %polly.loop_header387.preheader.1.1 ]
  %260 = add nuw nsw i64 %polly.indvar391.1.1, 64
  %261 = mul nuw nsw i64 %260, 480
  %262 = add i64 %261, %255
  %scevgep394.1.1 = getelementptr i8, i8* %call1, i64 %262
  %scevgep394395.1.1 = bitcast i8* %scevgep394.1.1 to double*
  %_p_scalar_396.1.1 = load double, double* %scevgep394395.1.1, align 8, !alias.scope !74, !noalias !79
  %p_mul27.i73.1.1 = fmul fast double %_p_scalar_399.1.1, %_p_scalar_396.1.1
  %scevgep400.1.1 = getelementptr i8, i8* %call2, i64 %262
  %scevgep400401.1.1 = bitcast i8* %scevgep400.1.1 to double*
  %_p_scalar_402.1.1 = load double, double* %scevgep400401.1.1, align 8, !alias.scope !75, !noalias !78
  %p_mul37.i75.1.1 = fmul fast double %_p_scalar_405.1.1, %_p_scalar_402.1.1
  %263 = shl i64 %260, 3
  %264 = add i64 %263, %259
  %scevgep406.1.1 = getelementptr i8, i8* %call, i64 %264
  %scevgep406407.1.1 = bitcast i8* %scevgep406.1.1 to double*
  %_p_scalar_408.1.1 = load double, double* %scevgep406407.1.1, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i77.1.1 = fadd fast double %p_mul37.i75.1.1, %p_mul27.i73.1.1
  %p_reass.mul.i78.1.1 = fmul fast double %p_reass.add.i77.1.1, 1.500000e+00
  %p_add42.i79.1.1 = fadd fast double %p_reass.mul.i78.1.1, %_p_scalar_408.1.1
  store double %p_add42.i79.1.1, double* %scevgep406407.1.1, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next392.1.1 = add nuw nsw i64 %polly.indvar391.1.1, 1
  %exitcond789.1.1.not = icmp eq i64 %polly.indvar391.1.1, %smin788.1.1
  br i1 %exitcond789.1.1.not, label %polly.loop_exit389.1.1, label %polly.loop_header387.1.1

polly.loop_exit389.1.1:                           ; preds = %polly.loop_header387.1.1, %polly.loop_header379.1.1
  %polly.indvar_next384.1.1 = add nuw nsw i64 %polly.indvar383.1.1, 1
  %polly.loop_cond385.not.not.1.1 = icmp ult i64 %polly.indvar383.1.1, 29
  %indvars.iv.next787.1.1 = add nuw nsw i64 %indvars.iv786.1.1, 1
  br i1 %polly.loop_cond385.not.not.1.1, label %polly.loop_header379.1.1, label %polly.loop_exit381.1.1

polly.loop_exit381.1.1:                           ; preds = %polly.loop_exit389.1.1
  %polly.indvar_next376.1.1 = add nuw nsw i64 %polly.indvar375.1.1, 1
  %exitcond790.1.1.not = icmp eq i64 %polly.indvar_next376.1.1, 10
  br i1 %exitcond790.1.1.not, label %kernel_syr2k.exit90, label %polly.loop_header372.1.1

polly.loop_header529.1:                           ; preds = %polly.loop_exit531, %polly.loop_exit538.1
  %polly.indvar532.1 = phi i64 [ %polly.indvar_next533.1, %polly.loop_exit538.1 ], [ 0, %polly.loop_exit531 ]
  %265 = shl i64 %polly.indvar532.1, 3
  br label %polly.loop_header536.1

polly.loop_header536.1:                           ; preds = %polly.loop_exit546.1, %polly.loop_header529.1
  %indvars.iv793.1 = phi i64 [ 0, %polly.loop_header529.1 ], [ %indvars.iv.next794.1, %polly.loop_exit546.1 ]
  %polly.indvar540.1 = phi i64 [ 14, %polly.loop_header529.1 ], [ %polly.indvar_next541.1, %polly.loop_exit546.1 ]
  %smin795.1 = call i64 @llvm.smin.i64(i64 %indvars.iv793.1, i64 63)
  %266 = add nuw nsw i64 %polly.indvar540.1, 50
  %polly.loop_guard547.11026 = icmp ugt i64 %polly.indvar540.1, 13
  br i1 %polly.loop_guard547.11026, label %polly.loop_header544.preheader.1, label %polly.loop_exit546.1

polly.loop_header544.preheader.1:                 ; preds = %polly.loop_header536.1
  %267 = mul nuw nsw i64 %266, 480
  %268 = add i64 %267, %265
  %scevgep554.1 = getelementptr i8, i8* %call2, i64 %268
  %scevgep554555.1 = bitcast i8* %scevgep554.1 to double*
  %_p_scalar_556.1 = load double, double* %scevgep554555.1, align 8, !alias.scope !84, !noalias !87
  %scevgep560.1 = getelementptr i8, i8* %call1, i64 %268
  %scevgep560561.1 = bitcast i8* %scevgep560.1 to double*
  %_p_scalar_562.1 = load double, double* %scevgep560561.1, align 8, !alias.scope !83, !noalias !88
  %269 = mul nuw nsw i64 %266, 640
  br label %polly.loop_header544.1

polly.loop_header544.1:                           ; preds = %polly.loop_header544.1, %polly.loop_header544.preheader.1
  %polly.indvar548.1 = phi i64 [ %polly.indvar_next549.1, %polly.loop_header544.1 ], [ 0, %polly.loop_header544.preheader.1 ]
  %270 = add nuw nsw i64 %polly.indvar548.1, 64
  %271 = mul nuw nsw i64 %270, 480
  %272 = add i64 %271, %265
  %scevgep551.1 = getelementptr i8, i8* %call1, i64 %272
  %scevgep551552.1 = bitcast i8* %scevgep551.1 to double*
  %_p_scalar_553.1 = load double, double* %scevgep551552.1, align 8, !alias.scope !83, !noalias !88
  %p_mul27.i.1 = fmul fast double %_p_scalar_556.1, %_p_scalar_553.1
  %scevgep557.1 = getelementptr i8, i8* %call2, i64 %272
  %scevgep557558.1 = bitcast i8* %scevgep557.1 to double*
  %_p_scalar_559.1 = load double, double* %scevgep557558.1, align 8, !alias.scope !84, !noalias !87
  %p_mul37.i.1 = fmul fast double %_p_scalar_562.1, %_p_scalar_559.1
  %273 = shl i64 %270, 3
  %274 = add i64 %273, %269
  %scevgep563.1 = getelementptr i8, i8* %call, i64 %274
  %scevgep563564.1 = bitcast i8* %scevgep563.1 to double*
  %_p_scalar_565.1 = load double, double* %scevgep563564.1, align 8, !alias.scope !80, !noalias !82
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_565.1
  store double %p_add42.i.1, double* %scevgep563564.1, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next549.1 = add nuw nsw i64 %polly.indvar548.1, 1
  %exitcond796.1.not = icmp eq i64 %polly.indvar548.1, %smin795.1
  br i1 %exitcond796.1.not, label %polly.loop_exit546.1, label %polly.loop_header544.1

polly.loop_exit546.1:                             ; preds = %polly.loop_header544.1, %polly.loop_header536.1
  %polly.indvar_next541.1 = add nuw nsw i64 %polly.indvar540.1, 1
  %polly.loop_cond542.not.not.1 = icmp ult i64 %polly.indvar540.1, 29
  %indvars.iv.next794.1 = add nuw nsw i64 %indvars.iv793.1, 1
  br i1 %polly.loop_cond542.not.not.1, label %polly.loop_header536.1, label %polly.loop_exit538.1

polly.loop_exit538.1:                             ; preds = %polly.loop_exit546.1
  %polly.indvar_next533.1 = add nuw nsw i64 %polly.indvar532.1, 1
  %exitcond797.1.not = icmp eq i64 %polly.indvar_next533.1, 50
  br i1 %exitcond797.1.not, label %polly.loop_header529.preheader.1917, label %polly.loop_header529.1

polly.loop_header529.preheader.1917:              ; preds = %polly.loop_exit538.1, %polly.loop_exit531.1959
  %polly.loop_cond528.1 = phi i1 [ false, %polly.loop_exit531.1959 ], [ true, %polly.loop_exit538.1 ]
  %polly.indvar526.1 = phi i64 [ 1, %polly.loop_exit531.1959 ], [ 0, %polly.loop_exit538.1 ]
  %275 = mul nuw nsw i64 %polly.indvar526.1, 50
  %276 = mul nuw nsw i64 %polly.indvar526.1, -50
  %277 = icmp slt i64 %276, -30
  %278 = select i1 %277, i64 %276, i64 -30
  %279 = add nsw i64 %278, 79
  br label %polly.loop_header529.1919

polly.loop_header529.1919:                        ; preds = %polly.loop_exit538.1957, %polly.loop_header529.preheader.1917
  %polly.indvar532.1918 = phi i64 [ %polly.indvar_next533.1955, %polly.loop_exit538.1957 ], [ 0, %polly.loop_header529.preheader.1917 ]
  %280 = shl i64 %polly.indvar532.1918, 3
  %281 = add i64 %280, 400
  br label %polly.loop_header536.1924

polly.loop_header536.1924:                        ; preds = %polly.loop_exit546.1954, %polly.loop_header529.1919
  %indvars.iv793.1920 = phi i64 [ %275, %polly.loop_header529.1919 ], [ %indvars.iv.next794.1953, %polly.loop_exit546.1954 ]
  %polly.indvar540.1921 = phi i64 [ 0, %polly.loop_header529.1919 ], [ %polly.indvar_next541.1951, %polly.loop_exit546.1954 ]
  %smin795.1922 = call i64 @llvm.smin.i64(i64 %indvars.iv793.1920, i64 63)
  %282 = add nuw i64 %polly.indvar540.1921, %275
  %polly.loop_guard547.19231027 = icmp sgt i64 %282, -1
  br i1 %polly.loop_guard547.19231027, label %polly.loop_header544.preheader.1931, label %polly.loop_exit546.1954

polly.loop_header544.preheader.1931:              ; preds = %polly.loop_header536.1924
  %283 = mul i64 %282, 480
  %284 = add i64 %283, %281
  %scevgep554.1925 = getelementptr i8, i8* %call2, i64 %284
  %scevgep554555.1926 = bitcast i8* %scevgep554.1925 to double*
  %_p_scalar_556.1927 = load double, double* %scevgep554555.1926, align 8, !alias.scope !84, !noalias !87
  %scevgep560.1928 = getelementptr i8, i8* %call1, i64 %284
  %scevgep560561.1929 = bitcast i8* %scevgep560.1928 to double*
  %_p_scalar_562.1930 = load double, double* %scevgep560561.1929, align 8, !alias.scope !83, !noalias !88
  %285 = mul i64 %282, 640
  br label %polly.loop_header544.1949

polly.loop_header544.1949:                        ; preds = %polly.loop_header544.1949, %polly.loop_header544.preheader.1931
  %polly.indvar548.1932 = phi i64 [ %polly.indvar_next549.1947, %polly.loop_header544.1949 ], [ 0, %polly.loop_header544.preheader.1931 ]
  %286 = mul nuw nsw i64 %polly.indvar548.1932, 480
  %287 = add i64 %286, %281
  %scevgep551.1933 = getelementptr i8, i8* %call1, i64 %287
  %scevgep551552.1934 = bitcast i8* %scevgep551.1933 to double*
  %_p_scalar_553.1935 = load double, double* %scevgep551552.1934, align 8, !alias.scope !83, !noalias !88
  %p_mul27.i.1936 = fmul fast double %_p_scalar_556.1927, %_p_scalar_553.1935
  %scevgep557.1937 = getelementptr i8, i8* %call2, i64 %287
  %scevgep557558.1938 = bitcast i8* %scevgep557.1937 to double*
  %_p_scalar_559.1939 = load double, double* %scevgep557558.1938, align 8, !alias.scope !84, !noalias !87
  %p_mul37.i.1940 = fmul fast double %_p_scalar_562.1930, %_p_scalar_559.1939
  %288 = shl i64 %polly.indvar548.1932, 3
  %289 = add i64 %288, %285
  %scevgep563.1941 = getelementptr i8, i8* %call, i64 %289
  %scevgep563564.1942 = bitcast i8* %scevgep563.1941 to double*
  %_p_scalar_565.1943 = load double, double* %scevgep563564.1942, align 8, !alias.scope !80, !noalias !82
  %p_reass.add.i.1944 = fadd fast double %p_mul37.i.1940, %p_mul27.i.1936
  %p_reass.mul.i.1945 = fmul fast double %p_reass.add.i.1944, 1.500000e+00
  %p_add42.i.1946 = fadd fast double %p_reass.mul.i.1945, %_p_scalar_565.1943
  store double %p_add42.i.1946, double* %scevgep563564.1942, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next549.1947 = add nuw nsw i64 %polly.indvar548.1932, 1
  %exitcond796.1948.not = icmp eq i64 %polly.indvar548.1932, %smin795.1922
  br i1 %exitcond796.1948.not, label %polly.loop_exit546.1954, label %polly.loop_header544.1949

polly.loop_exit546.1954:                          ; preds = %polly.loop_header544.1949, %polly.loop_header536.1924
  %polly.indvar_next541.1951 = add nuw nsw i64 %polly.indvar540.1921, 1
  %polly.loop_cond542.not.not.1952 = icmp ult i64 %polly.indvar540.1921, %279
  %indvars.iv.next794.1953 = add nuw nsw i64 %indvars.iv793.1920, 1
  br i1 %polly.loop_cond542.not.not.1952, label %polly.loop_header536.1924, label %polly.loop_exit538.1957

polly.loop_exit538.1957:                          ; preds = %polly.loop_exit546.1954
  %polly.indvar_next533.1955 = add nuw nsw i64 %polly.indvar532.1918, 1
  %exitcond797.1956.not = icmp eq i64 %polly.indvar_next533.1955, 10
  br i1 %exitcond797.1956.not, label %polly.loop_exit531.1959, label %polly.loop_header529.1919

polly.loop_exit531.1959:                          ; preds = %polly.loop_exit538.1957
  br i1 %polly.loop_cond528.1, label %polly.loop_header529.preheader.1917, label %polly.loop_header529.1.1

polly.loop_header529.1.1:                         ; preds = %polly.loop_exit531.1959, %polly.loop_exit538.1.1
  %polly.indvar532.1.1 = phi i64 [ %polly.indvar_next533.1.1, %polly.loop_exit538.1.1 ], [ 0, %polly.loop_exit531.1959 ]
  %290 = shl i64 %polly.indvar532.1.1, 3
  %291 = add i64 %290, 400
  br label %polly.loop_header536.1.1

polly.loop_header536.1.1:                         ; preds = %polly.loop_exit546.1.1, %polly.loop_header529.1.1
  %indvars.iv793.1.1 = phi i64 [ 0, %polly.loop_header529.1.1 ], [ %indvars.iv.next794.1.1, %polly.loop_exit546.1.1 ]
  %polly.indvar540.1.1 = phi i64 [ 14, %polly.loop_header529.1.1 ], [ %polly.indvar_next541.1.1, %polly.loop_exit546.1.1 ]
  %smin795.1.1 = call i64 @llvm.smin.i64(i64 %indvars.iv793.1.1, i64 63)
  %292 = add nuw nsw i64 %polly.indvar540.1.1, 50
  %polly.loop_guard547.1.11028 = icmp ugt i64 %polly.indvar540.1.1, 13
  br i1 %polly.loop_guard547.1.11028, label %polly.loop_header544.preheader.1.1, label %polly.loop_exit546.1.1

polly.loop_header544.preheader.1.1:               ; preds = %polly.loop_header536.1.1
  %293 = mul nuw nsw i64 %292, 480
  %294 = add i64 %293, %291
  %scevgep554.1.1 = getelementptr i8, i8* %call2, i64 %294
  %scevgep554555.1.1 = bitcast i8* %scevgep554.1.1 to double*
  %_p_scalar_556.1.1 = load double, double* %scevgep554555.1.1, align 8, !alias.scope !84, !noalias !87
  %scevgep560.1.1 = getelementptr i8, i8* %call1, i64 %294
  %scevgep560561.1.1 = bitcast i8* %scevgep560.1.1 to double*
  %_p_scalar_562.1.1 = load double, double* %scevgep560561.1.1, align 8, !alias.scope !83, !noalias !88
  %295 = mul nuw nsw i64 %292, 640
  br label %polly.loop_header544.1.1

polly.loop_header544.1.1:                         ; preds = %polly.loop_header544.1.1, %polly.loop_header544.preheader.1.1
  %polly.indvar548.1.1 = phi i64 [ %polly.indvar_next549.1.1, %polly.loop_header544.1.1 ], [ 0, %polly.loop_header544.preheader.1.1 ]
  %296 = add nuw nsw i64 %polly.indvar548.1.1, 64
  %297 = mul nuw nsw i64 %296, 480
  %298 = add i64 %297, %291
  %scevgep551.1.1 = getelementptr i8, i8* %call1, i64 %298
  %scevgep551552.1.1 = bitcast i8* %scevgep551.1.1 to double*
  %_p_scalar_553.1.1 = load double, double* %scevgep551552.1.1, align 8, !alias.scope !83, !noalias !88
  %p_mul27.i.1.1 = fmul fast double %_p_scalar_556.1.1, %_p_scalar_553.1.1
  %scevgep557.1.1 = getelementptr i8, i8* %call2, i64 %298
  %scevgep557558.1.1 = bitcast i8* %scevgep557.1.1 to double*
  %_p_scalar_559.1.1 = load double, double* %scevgep557558.1.1, align 8, !alias.scope !84, !noalias !87
  %p_mul37.i.1.1 = fmul fast double %_p_scalar_562.1.1, %_p_scalar_559.1.1
  %299 = shl i64 %296, 3
  %300 = add i64 %299, %295
  %scevgep563.1.1 = getelementptr i8, i8* %call, i64 %300
  %scevgep563564.1.1 = bitcast i8* %scevgep563.1.1 to double*
  %_p_scalar_565.1.1 = load double, double* %scevgep563564.1.1, align 8, !alias.scope !80, !noalias !82
  %p_reass.add.i.1.1 = fadd fast double %p_mul37.i.1.1, %p_mul27.i.1.1
  %p_reass.mul.i.1.1 = fmul fast double %p_reass.add.i.1.1, 1.500000e+00
  %p_add42.i.1.1 = fadd fast double %p_reass.mul.i.1.1, %_p_scalar_565.1.1
  store double %p_add42.i.1.1, double* %scevgep563564.1.1, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next549.1.1 = add nuw nsw i64 %polly.indvar548.1.1, 1
  %exitcond796.1.1.not = icmp eq i64 %polly.indvar548.1.1, %smin795.1.1
  br i1 %exitcond796.1.1.not, label %polly.loop_exit546.1.1, label %polly.loop_header544.1.1

polly.loop_exit546.1.1:                           ; preds = %polly.loop_header544.1.1, %polly.loop_header536.1.1
  %polly.indvar_next541.1.1 = add nuw nsw i64 %polly.indvar540.1.1, 1
  %polly.loop_cond542.not.not.1.1 = icmp ult i64 %polly.indvar540.1.1, 29
  %indvars.iv.next794.1.1 = add nuw nsw i64 %indvars.iv793.1.1, 1
  br i1 %polly.loop_cond542.not.not.1.1, label %polly.loop_header536.1.1, label %polly.loop_exit538.1.1

polly.loop_exit538.1.1:                           ; preds = %polly.loop_exit546.1.1
  %polly.indvar_next533.1.1 = add nuw nsw i64 %polly.indvar532.1.1, 1
  %exitcond797.1.1.not = icmp eq i64 %polly.indvar_next533.1.1, 10
  br i1 %exitcond797.1.1.not, label %kernel_syr2k.exit, label %polly.loop_header529.1.1

polly.loop_header757.1:                           ; preds = %polly.loop_exit765, %polly.loop_exit765.1
  %polly.indvar760.1 = phi i64 [ %polly.indvar_next761.1, %polly.loop_exit765.1 ], [ 0, %polly.loop_exit765 ]
  %301 = mul nuw nsw i64 %polly.indvar760.1, 480
  %302 = trunc i64 %polly.indvar760.1 to i32
  %broadcast.splatinsert1269 = insertelement <4 x i32> poison, i32 %302, i32 0
  %broadcast.splat1270 = shufflevector <4 x i32> %broadcast.splatinsert1269, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1261

vector.body1261:                                  ; preds = %vector.body1261, %polly.loop_header757.1
  %index1263 = phi i64 [ 0, %polly.loop_header757.1 ], [ %index.next1264, %vector.body1261 ]
  %vec.ind1267 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header757.1 ], [ %vec.ind.next1268, %vector.body1261 ]
  %303 = add nuw nsw <4 x i64> %vec.ind1267, <i64 32, i64 32, i64 32, i64 32>
  %304 = trunc <4 x i64> %303 to <4 x i32>
  %305 = mul <4 x i32> %broadcast.splat1270, %304
  %306 = add <4 x i32> %305, <i32 1, i32 1, i32 1, i32 1>
  %307 = urem <4 x i32> %306, <i32 80, i32 80, i32 80, i32 80>
  %308 = sitofp <4 x i32> %307 to <4 x double>
  %309 = fmul fast <4 x double> %308, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %310 = extractelement <4 x i64> %303, i32 0
  %311 = shl i64 %310, 3
  %312 = add i64 %311, %301
  %313 = getelementptr i8, i8* %call1, i64 %312
  %314 = bitcast i8* %313 to <4 x double>*
  store <4 x double> %309, <4 x double>* %314, align 8, !alias.scope !92, !noalias !97
  %index.next1264 = add i64 %index1263, 4
  %vec.ind.next1268 = add <4 x i64> %vec.ind1267, <i64 4, i64 4, i64 4, i64 4>
  %315 = icmp eq i64 %index.next1264, 28
  br i1 %315, label %polly.loop_exit765.1, label %vector.body1261, !llvm.loop !99

polly.loop_exit765.1:                             ; preds = %vector.body1261
  %polly.indvar_next761.1 = add nuw nsw i64 %polly.indvar760.1, 1
  %exitcond804.1.not = icmp eq i64 %polly.indvar_next761.1, 32
  br i1 %exitcond804.1.not, label %polly.loop_header757.1962, label %polly.loop_header757.1

polly.loop_header757.1962:                        ; preds = %polly.loop_exit765.1, %polly.loop_exit765.1973
  %polly.indvar760.1961 = phi i64 [ %polly.indvar_next761.1971, %polly.loop_exit765.1973 ], [ 0, %polly.loop_exit765.1 ]
  %316 = add nuw nsw i64 %polly.indvar760.1961, 32
  %317 = mul nuw nsw i64 %316, 480
  %318 = trunc i64 %316 to i32
  %broadcast.splatinsert1283 = insertelement <4 x i32> poison, i32 %318, i32 0
  %broadcast.splat1284 = shufflevector <4 x i32> %broadcast.splatinsert1283, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1273

vector.body1273:                                  ; preds = %vector.body1273, %polly.loop_header757.1962
  %index1275 = phi i64 [ 0, %polly.loop_header757.1962 ], [ %index.next1276, %vector.body1273 ]
  %vec.ind1281 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header757.1962 ], [ %vec.ind.next1282, %vector.body1273 ]
  %319 = mul <4 x i32> %vec.ind1281, %broadcast.splat1284
  %320 = add <4 x i32> %319, <i32 1, i32 1, i32 1, i32 1>
  %321 = urem <4 x i32> %320, <i32 80, i32 80, i32 80, i32 80>
  %322 = sitofp <4 x i32> %321 to <4 x double>
  %323 = fmul fast <4 x double> %322, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %324 = shl i64 %index1275, 3
  %325 = add i64 %324, %317
  %326 = getelementptr i8, i8* %call1, i64 %325
  %327 = bitcast i8* %326 to <4 x double>*
  store <4 x double> %323, <4 x double>* %327, align 8, !alias.scope !92, !noalias !97
  %index.next1276 = add i64 %index1275, 4
  %vec.ind.next1282 = add <4 x i32> %vec.ind1281, <i32 4, i32 4, i32 4, i32 4>
  %328 = icmp eq i64 %index.next1276, 32
  br i1 %328, label %polly.loop_exit765.1973, label %vector.body1273, !llvm.loop !100

polly.loop_exit765.1973:                          ; preds = %vector.body1273
  %polly.indvar_next761.1971 = add nuw nsw i64 %polly.indvar760.1961, 1
  %exitcond804.1972.not = icmp eq i64 %polly.indvar_next761.1971, 32
  br i1 %exitcond804.1972.not, label %polly.loop_header757.1.1, label %polly.loop_header757.1962

polly.loop_header757.1.1:                         ; preds = %polly.loop_exit765.1973, %polly.loop_exit765.1.1
  %polly.indvar760.1.1 = phi i64 [ %polly.indvar_next761.1.1, %polly.loop_exit765.1.1 ], [ 0, %polly.loop_exit765.1973 ]
  %329 = add nuw nsw i64 %polly.indvar760.1.1, 32
  %330 = mul nuw nsw i64 %329, 480
  %331 = trunc i64 %329 to i32
  %broadcast.splatinsert1295 = insertelement <4 x i32> poison, i32 %331, i32 0
  %broadcast.splat1296 = shufflevector <4 x i32> %broadcast.splatinsert1295, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1287

vector.body1287:                                  ; preds = %vector.body1287, %polly.loop_header757.1.1
  %index1289 = phi i64 [ 0, %polly.loop_header757.1.1 ], [ %index.next1290, %vector.body1287 ]
  %vec.ind1293 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header757.1.1 ], [ %vec.ind.next1294, %vector.body1287 ]
  %332 = add nuw nsw <4 x i64> %vec.ind1293, <i64 32, i64 32, i64 32, i64 32>
  %333 = trunc <4 x i64> %332 to <4 x i32>
  %334 = mul <4 x i32> %broadcast.splat1296, %333
  %335 = add <4 x i32> %334, <i32 1, i32 1, i32 1, i32 1>
  %336 = urem <4 x i32> %335, <i32 80, i32 80, i32 80, i32 80>
  %337 = sitofp <4 x i32> %336 to <4 x double>
  %338 = fmul fast <4 x double> %337, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %339 = extractelement <4 x i64> %332, i32 0
  %340 = shl i64 %339, 3
  %341 = add i64 %340, %330
  %342 = getelementptr i8, i8* %call1, i64 %341
  %343 = bitcast i8* %342 to <4 x double>*
  store <4 x double> %338, <4 x double>* %343, align 8, !alias.scope !92, !noalias !97
  %index.next1290 = add i64 %index1289, 4
  %vec.ind.next1294 = add <4 x i64> %vec.ind1293, <i64 4, i64 4, i64 4, i64 4>
  %344 = icmp eq i64 %index.next1290, 28
  br i1 %344, label %polly.loop_exit765.1.1, label %vector.body1287, !llvm.loop !101

polly.loop_exit765.1.1:                           ; preds = %vector.body1287
  %polly.indvar_next761.1.1 = add nuw nsw i64 %polly.indvar760.1.1, 1
  %exitcond804.1.1.not = icmp eq i64 %polly.indvar_next761.1.1, 32
  br i1 %exitcond804.1.1.not, label %polly.loop_header757.2, label %polly.loop_header757.1.1

polly.loop_header757.2:                           ; preds = %polly.loop_exit765.1.1, %polly.loop_exit765.2
  %polly.indvar760.2 = phi i64 [ %polly.indvar_next761.2, %polly.loop_exit765.2 ], [ 0, %polly.loop_exit765.1.1 ]
  %345 = add nuw nsw i64 %polly.indvar760.2, 64
  %346 = mul nuw nsw i64 %345, 480
  %347 = trunc i64 %345 to i32
  %broadcast.splatinsert1309 = insertelement <4 x i32> poison, i32 %347, i32 0
  %broadcast.splat1310 = shufflevector <4 x i32> %broadcast.splatinsert1309, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1299

vector.body1299:                                  ; preds = %vector.body1299, %polly.loop_header757.2
  %index1301 = phi i64 [ 0, %polly.loop_header757.2 ], [ %index.next1302, %vector.body1299 ]
  %vec.ind1307 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header757.2 ], [ %vec.ind.next1308, %vector.body1299 ]
  %348 = mul <4 x i32> %vec.ind1307, %broadcast.splat1310
  %349 = add <4 x i32> %348, <i32 1, i32 1, i32 1, i32 1>
  %350 = urem <4 x i32> %349, <i32 80, i32 80, i32 80, i32 80>
  %351 = sitofp <4 x i32> %350 to <4 x double>
  %352 = fmul fast <4 x double> %351, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %353 = shl i64 %index1301, 3
  %354 = add i64 %353, %346
  %355 = getelementptr i8, i8* %call1, i64 %354
  %356 = bitcast i8* %355 to <4 x double>*
  store <4 x double> %352, <4 x double>* %356, align 8, !alias.scope !92, !noalias !97
  %index.next1302 = add i64 %index1301, 4
  %vec.ind.next1308 = add <4 x i32> %vec.ind1307, <i32 4, i32 4, i32 4, i32 4>
  %357 = icmp eq i64 %index.next1302, 32
  br i1 %357, label %polly.loop_exit765.2, label %vector.body1299, !llvm.loop !102

polly.loop_exit765.2:                             ; preds = %vector.body1299
  %polly.indvar_next761.2 = add nuw nsw i64 %polly.indvar760.2, 1
  %exitcond804.2.not = icmp eq i64 %polly.indvar_next761.2, 16
  br i1 %exitcond804.2.not, label %polly.loop_header757.1.2, label %polly.loop_header757.2

polly.loop_header757.1.2:                         ; preds = %polly.loop_exit765.2, %polly.loop_exit765.1.2
  %polly.indvar760.1.2 = phi i64 [ %polly.indvar_next761.1.2, %polly.loop_exit765.1.2 ], [ 0, %polly.loop_exit765.2 ]
  %358 = add nuw nsw i64 %polly.indvar760.1.2, 64
  %359 = mul nuw nsw i64 %358, 480
  %360 = trunc i64 %358 to i32
  %broadcast.splatinsert1321 = insertelement <4 x i32> poison, i32 %360, i32 0
  %broadcast.splat1322 = shufflevector <4 x i32> %broadcast.splatinsert1321, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1313

vector.body1313:                                  ; preds = %vector.body1313, %polly.loop_header757.1.2
  %index1315 = phi i64 [ 0, %polly.loop_header757.1.2 ], [ %index.next1316, %vector.body1313 ]
  %vec.ind1319 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header757.1.2 ], [ %vec.ind.next1320, %vector.body1313 ]
  %361 = add nuw nsw <4 x i64> %vec.ind1319, <i64 32, i64 32, i64 32, i64 32>
  %362 = trunc <4 x i64> %361 to <4 x i32>
  %363 = mul <4 x i32> %broadcast.splat1322, %362
  %364 = add <4 x i32> %363, <i32 1, i32 1, i32 1, i32 1>
  %365 = urem <4 x i32> %364, <i32 80, i32 80, i32 80, i32 80>
  %366 = sitofp <4 x i32> %365 to <4 x double>
  %367 = fmul fast <4 x double> %366, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %368 = extractelement <4 x i64> %361, i32 0
  %369 = shl i64 %368, 3
  %370 = add i64 %369, %359
  %371 = getelementptr i8, i8* %call1, i64 %370
  %372 = bitcast i8* %371 to <4 x double>*
  store <4 x double> %367, <4 x double>* %372, align 8, !alias.scope !92, !noalias !97
  %index.next1316 = add i64 %index1315, 4
  %vec.ind.next1320 = add <4 x i64> %vec.ind1319, <i64 4, i64 4, i64 4, i64 4>
  %373 = icmp eq i64 %index.next1316, 28
  br i1 %373, label %polly.loop_exit765.1.2, label %vector.body1313, !llvm.loop !103

polly.loop_exit765.1.2:                           ; preds = %vector.body1313
  %polly.indvar_next761.1.2 = add nuw nsw i64 %polly.indvar760.1.2, 1
  %exitcond804.1.2.not = icmp eq i64 %polly.indvar_next761.1.2, 16
  br i1 %exitcond804.1.2.not, label %init_array.exit, label %polly.loop_header757.1.2

polly.loop_header731.1:                           ; preds = %polly.loop_exit739, %polly.loop_exit739.1
  %polly.indvar734.1 = phi i64 [ %polly.indvar_next735.1, %polly.loop_exit739.1 ], [ 0, %polly.loop_exit739 ]
  %374 = mul nuw nsw i64 %polly.indvar734.1, 480
  %375 = trunc i64 %polly.indvar734.1 to i32
  %broadcast.splatinsert1191 = insertelement <4 x i32> poison, i32 %375, i32 0
  %broadcast.splat1192 = shufflevector <4 x i32> %broadcast.splatinsert1191, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1183

vector.body1183:                                  ; preds = %vector.body1183, %polly.loop_header731.1
  %index1185 = phi i64 [ 0, %polly.loop_header731.1 ], [ %index.next1186, %vector.body1183 ]
  %vec.ind1189 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header731.1 ], [ %vec.ind.next1190, %vector.body1183 ]
  %376 = add nuw nsw <4 x i64> %vec.ind1189, <i64 32, i64 32, i64 32, i64 32>
  %377 = trunc <4 x i64> %376 to <4 x i32>
  %378 = mul <4 x i32> %broadcast.splat1192, %377
  %379 = add <4 x i32> %378, <i32 2, i32 2, i32 2, i32 2>
  %380 = urem <4 x i32> %379, <i32 60, i32 60, i32 60, i32 60>
  %381 = sitofp <4 x i32> %380 to <4 x double>
  %382 = fmul fast <4 x double> %381, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %383 = extractelement <4 x i64> %376, i32 0
  %384 = shl i64 %383, 3
  %385 = add i64 %384, %374
  %386 = getelementptr i8, i8* %call2, i64 %385
  %387 = bitcast i8* %386 to <4 x double>*
  store <4 x double> %382, <4 x double>* %387, align 8, !alias.scope !93, !noalias !95
  %index.next1186 = add i64 %index1185, 4
  %vec.ind.next1190 = add <4 x i64> %vec.ind1189, <i64 4, i64 4, i64 4, i64 4>
  %388 = icmp eq i64 %index.next1186, 28
  br i1 %388, label %polly.loop_exit739.1, label %vector.body1183, !llvm.loop !104

polly.loop_exit739.1:                             ; preds = %vector.body1183
  %polly.indvar_next735.1 = add nuw nsw i64 %polly.indvar734.1, 1
  %exitcond810.1.not = icmp eq i64 %polly.indvar_next735.1, 32
  br i1 %exitcond810.1.not, label %polly.loop_header731.1976, label %polly.loop_header731.1

polly.loop_header731.1976:                        ; preds = %polly.loop_exit739.1, %polly.loop_exit739.1987
  %polly.indvar734.1975 = phi i64 [ %polly.indvar_next735.1985, %polly.loop_exit739.1987 ], [ 0, %polly.loop_exit739.1 ]
  %389 = add nuw nsw i64 %polly.indvar734.1975, 32
  %390 = mul nuw nsw i64 %389, 480
  %391 = trunc i64 %389 to i32
  %broadcast.splatinsert1205 = insertelement <4 x i32> poison, i32 %391, i32 0
  %broadcast.splat1206 = shufflevector <4 x i32> %broadcast.splatinsert1205, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1195

vector.body1195:                                  ; preds = %vector.body1195, %polly.loop_header731.1976
  %index1197 = phi i64 [ 0, %polly.loop_header731.1976 ], [ %index.next1198, %vector.body1195 ]
  %vec.ind1203 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header731.1976 ], [ %vec.ind.next1204, %vector.body1195 ]
  %392 = mul <4 x i32> %vec.ind1203, %broadcast.splat1206
  %393 = add <4 x i32> %392, <i32 2, i32 2, i32 2, i32 2>
  %394 = urem <4 x i32> %393, <i32 60, i32 60, i32 60, i32 60>
  %395 = sitofp <4 x i32> %394 to <4 x double>
  %396 = fmul fast <4 x double> %395, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %397 = shl i64 %index1197, 3
  %398 = add i64 %397, %390
  %399 = getelementptr i8, i8* %call2, i64 %398
  %400 = bitcast i8* %399 to <4 x double>*
  store <4 x double> %396, <4 x double>* %400, align 8, !alias.scope !93, !noalias !95
  %index.next1198 = add i64 %index1197, 4
  %vec.ind.next1204 = add <4 x i32> %vec.ind1203, <i32 4, i32 4, i32 4, i32 4>
  %401 = icmp eq i64 %index.next1198, 32
  br i1 %401, label %polly.loop_exit739.1987, label %vector.body1195, !llvm.loop !105

polly.loop_exit739.1987:                          ; preds = %vector.body1195
  %polly.indvar_next735.1985 = add nuw nsw i64 %polly.indvar734.1975, 1
  %exitcond810.1986.not = icmp eq i64 %polly.indvar_next735.1985, 32
  br i1 %exitcond810.1986.not, label %polly.loop_header731.1.1, label %polly.loop_header731.1976

polly.loop_header731.1.1:                         ; preds = %polly.loop_exit739.1987, %polly.loop_exit739.1.1
  %polly.indvar734.1.1 = phi i64 [ %polly.indvar_next735.1.1, %polly.loop_exit739.1.1 ], [ 0, %polly.loop_exit739.1987 ]
  %402 = add nuw nsw i64 %polly.indvar734.1.1, 32
  %403 = mul nuw nsw i64 %402, 480
  %404 = trunc i64 %402 to i32
  %broadcast.splatinsert1217 = insertelement <4 x i32> poison, i32 %404, i32 0
  %broadcast.splat1218 = shufflevector <4 x i32> %broadcast.splatinsert1217, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1209

vector.body1209:                                  ; preds = %vector.body1209, %polly.loop_header731.1.1
  %index1211 = phi i64 [ 0, %polly.loop_header731.1.1 ], [ %index.next1212, %vector.body1209 ]
  %vec.ind1215 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header731.1.1 ], [ %vec.ind.next1216, %vector.body1209 ]
  %405 = add nuw nsw <4 x i64> %vec.ind1215, <i64 32, i64 32, i64 32, i64 32>
  %406 = trunc <4 x i64> %405 to <4 x i32>
  %407 = mul <4 x i32> %broadcast.splat1218, %406
  %408 = add <4 x i32> %407, <i32 2, i32 2, i32 2, i32 2>
  %409 = urem <4 x i32> %408, <i32 60, i32 60, i32 60, i32 60>
  %410 = sitofp <4 x i32> %409 to <4 x double>
  %411 = fmul fast <4 x double> %410, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %412 = extractelement <4 x i64> %405, i32 0
  %413 = shl i64 %412, 3
  %414 = add i64 %413, %403
  %415 = getelementptr i8, i8* %call2, i64 %414
  %416 = bitcast i8* %415 to <4 x double>*
  store <4 x double> %411, <4 x double>* %416, align 8, !alias.scope !93, !noalias !95
  %index.next1212 = add i64 %index1211, 4
  %vec.ind.next1216 = add <4 x i64> %vec.ind1215, <i64 4, i64 4, i64 4, i64 4>
  %417 = icmp eq i64 %index.next1212, 28
  br i1 %417, label %polly.loop_exit739.1.1, label %vector.body1209, !llvm.loop !106

polly.loop_exit739.1.1:                           ; preds = %vector.body1209
  %polly.indvar_next735.1.1 = add nuw nsw i64 %polly.indvar734.1.1, 1
  %exitcond810.1.1.not = icmp eq i64 %polly.indvar_next735.1.1, 32
  br i1 %exitcond810.1.1.not, label %polly.loop_header731.2, label %polly.loop_header731.1.1

polly.loop_header731.2:                           ; preds = %polly.loop_exit739.1.1, %polly.loop_exit739.2
  %polly.indvar734.2 = phi i64 [ %polly.indvar_next735.2, %polly.loop_exit739.2 ], [ 0, %polly.loop_exit739.1.1 ]
  %418 = add nuw nsw i64 %polly.indvar734.2, 64
  %419 = mul nuw nsw i64 %418, 480
  %420 = trunc i64 %418 to i32
  %broadcast.splatinsert1231 = insertelement <4 x i32> poison, i32 %420, i32 0
  %broadcast.splat1232 = shufflevector <4 x i32> %broadcast.splatinsert1231, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1221

vector.body1221:                                  ; preds = %vector.body1221, %polly.loop_header731.2
  %index1223 = phi i64 [ 0, %polly.loop_header731.2 ], [ %index.next1224, %vector.body1221 ]
  %vec.ind1229 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header731.2 ], [ %vec.ind.next1230, %vector.body1221 ]
  %421 = mul <4 x i32> %vec.ind1229, %broadcast.splat1232
  %422 = add <4 x i32> %421, <i32 2, i32 2, i32 2, i32 2>
  %423 = urem <4 x i32> %422, <i32 60, i32 60, i32 60, i32 60>
  %424 = sitofp <4 x i32> %423 to <4 x double>
  %425 = fmul fast <4 x double> %424, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %426 = shl i64 %index1223, 3
  %427 = add i64 %426, %419
  %428 = getelementptr i8, i8* %call2, i64 %427
  %429 = bitcast i8* %428 to <4 x double>*
  store <4 x double> %425, <4 x double>* %429, align 8, !alias.scope !93, !noalias !95
  %index.next1224 = add i64 %index1223, 4
  %vec.ind.next1230 = add <4 x i32> %vec.ind1229, <i32 4, i32 4, i32 4, i32 4>
  %430 = icmp eq i64 %index.next1224, 32
  br i1 %430, label %polly.loop_exit739.2, label %vector.body1221, !llvm.loop !107

polly.loop_exit739.2:                             ; preds = %vector.body1221
  %polly.indvar_next735.2 = add nuw nsw i64 %polly.indvar734.2, 1
  %exitcond810.2.not = icmp eq i64 %polly.indvar_next735.2, 16
  br i1 %exitcond810.2.not, label %polly.loop_header731.1.2, label %polly.loop_header731.2

polly.loop_header731.1.2:                         ; preds = %polly.loop_exit739.2, %polly.loop_exit739.1.2
  %polly.indvar734.1.2 = phi i64 [ %polly.indvar_next735.1.2, %polly.loop_exit739.1.2 ], [ 0, %polly.loop_exit739.2 ]
  %431 = add nuw nsw i64 %polly.indvar734.1.2, 64
  %432 = mul nuw nsw i64 %431, 480
  %433 = trunc i64 %431 to i32
  %broadcast.splatinsert1243 = insertelement <4 x i32> poison, i32 %433, i32 0
  %broadcast.splat1244 = shufflevector <4 x i32> %broadcast.splatinsert1243, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1235

vector.body1235:                                  ; preds = %vector.body1235, %polly.loop_header731.1.2
  %index1237 = phi i64 [ 0, %polly.loop_header731.1.2 ], [ %index.next1238, %vector.body1235 ]
  %vec.ind1241 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header731.1.2 ], [ %vec.ind.next1242, %vector.body1235 ]
  %434 = add nuw nsw <4 x i64> %vec.ind1241, <i64 32, i64 32, i64 32, i64 32>
  %435 = trunc <4 x i64> %434 to <4 x i32>
  %436 = mul <4 x i32> %broadcast.splat1244, %435
  %437 = add <4 x i32> %436, <i32 2, i32 2, i32 2, i32 2>
  %438 = urem <4 x i32> %437, <i32 60, i32 60, i32 60, i32 60>
  %439 = sitofp <4 x i32> %438 to <4 x double>
  %440 = fmul fast <4 x double> %439, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %441 = extractelement <4 x i64> %434, i32 0
  %442 = shl i64 %441, 3
  %443 = add i64 %442, %432
  %444 = getelementptr i8, i8* %call2, i64 %443
  %445 = bitcast i8* %444 to <4 x double>*
  store <4 x double> %440, <4 x double>* %445, align 8, !alias.scope !93, !noalias !95
  %index.next1238 = add i64 %index1237, 4
  %vec.ind.next1242 = add <4 x i64> %vec.ind1241, <i64 4, i64 4, i64 4, i64 4>
  %446 = icmp eq i64 %index.next1238, 28
  br i1 %446, label %polly.loop_exit739.1.2, label %vector.body1235, !llvm.loop !108

polly.loop_exit739.1.2:                           ; preds = %vector.body1235
  %polly.indvar_next735.1.2 = add nuw nsw i64 %polly.indvar734.1.2, 1
  %exitcond810.1.2.not = icmp eq i64 %polly.indvar_next735.1.2, 16
  br i1 %exitcond810.1.2.not, label %polly.loop_header757, label %polly.loop_header731.1.2

polly.loop_header704.1:                           ; preds = %polly.loop_exit712, %polly.loop_exit712.1
  %polly.indvar707.1 = phi i64 [ %polly.indvar_next708.1, %polly.loop_exit712.1 ], [ 0, %polly.loop_exit712 ]
  %447 = mul nuw nsw i64 %polly.indvar707.1, 640
  %448 = trunc i64 %polly.indvar707.1 to i32
  %broadcast.splatinsert1077 = insertelement <4 x i32> poison, i32 %448, i32 0
  %broadcast.splat1078 = shufflevector <4 x i32> %broadcast.splatinsert1077, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1069

vector.body1069:                                  ; preds = %vector.body1069, %polly.loop_header704.1
  %index1071 = phi i64 [ 0, %polly.loop_header704.1 ], [ %index.next1072, %vector.body1069 ]
  %vec.ind1075 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header704.1 ], [ %vec.ind.next1076, %vector.body1069 ]
  %449 = add nuw nsw <4 x i64> %vec.ind1075, <i64 32, i64 32, i64 32, i64 32>
  %450 = trunc <4 x i64> %449 to <4 x i32>
  %451 = mul <4 x i32> %broadcast.splat1078, %450
  %452 = add <4 x i32> %451, <i32 3, i32 3, i32 3, i32 3>
  %453 = urem <4 x i32> %452, <i32 80, i32 80, i32 80, i32 80>
  %454 = sitofp <4 x i32> %453 to <4 x double>
  %455 = fmul fast <4 x double> %454, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %456 = extractelement <4 x i64> %449, i32 0
  %457 = shl i64 %456, 3
  %458 = add nuw nsw i64 %457, %447
  %459 = getelementptr i8, i8* %call, i64 %458
  %460 = bitcast i8* %459 to <4 x double>*
  store <4 x double> %455, <4 x double>* %460, align 8, !alias.scope !89, !noalias !91
  %index.next1072 = add i64 %index1071, 4
  %vec.ind.next1076 = add <4 x i64> %vec.ind1075, <i64 4, i64 4, i64 4, i64 4>
  %461 = icmp eq i64 %index.next1072, 32
  br i1 %461, label %polly.loop_exit712.1, label %vector.body1069, !llvm.loop !109

polly.loop_exit712.1:                             ; preds = %vector.body1069
  %polly.indvar_next708.1 = add nuw nsw i64 %polly.indvar707.1, 1
  %exitcond819.1.not = icmp eq i64 %polly.indvar_next708.1, 32
  br i1 %exitcond819.1.not, label %polly.loop_header704.2, label %polly.loop_header704.1

polly.loop_header704.2:                           ; preds = %polly.loop_exit712.1, %polly.loop_exit712.2
  %polly.indvar707.2 = phi i64 [ %polly.indvar_next708.2, %polly.loop_exit712.2 ], [ 0, %polly.loop_exit712.1 ]
  %462 = mul nuw nsw i64 %polly.indvar707.2, 640
  %463 = trunc i64 %polly.indvar707.2 to i32
  %broadcast.splatinsert1089 = insertelement <4 x i32> poison, i32 %463, i32 0
  %broadcast.splat1090 = shufflevector <4 x i32> %broadcast.splatinsert1089, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1081

vector.body1081:                                  ; preds = %vector.body1081, %polly.loop_header704.2
  %index1083 = phi i64 [ 0, %polly.loop_header704.2 ], [ %index.next1084, %vector.body1081 ]
  %vec.ind1087 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header704.2 ], [ %vec.ind.next1088, %vector.body1081 ]
  %464 = add nuw nsw <4 x i64> %vec.ind1087, <i64 64, i64 64, i64 64, i64 64>
  %465 = trunc <4 x i64> %464 to <4 x i32>
  %466 = mul <4 x i32> %broadcast.splat1090, %465
  %467 = add <4 x i32> %466, <i32 3, i32 3, i32 3, i32 3>
  %468 = urem <4 x i32> %467, <i32 80, i32 80, i32 80, i32 80>
  %469 = sitofp <4 x i32> %468 to <4 x double>
  %470 = fmul fast <4 x double> %469, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %471 = extractelement <4 x i64> %464, i32 0
  %472 = shl i64 %471, 3
  %473 = add nuw nsw i64 %472, %462
  %474 = getelementptr i8, i8* %call, i64 %473
  %475 = bitcast i8* %474 to <4 x double>*
  store <4 x double> %470, <4 x double>* %475, align 8, !alias.scope !89, !noalias !91
  %index.next1084 = add i64 %index1083, 4
  %vec.ind.next1088 = add <4 x i64> %vec.ind1087, <i64 4, i64 4, i64 4, i64 4>
  %476 = icmp eq i64 %index.next1084, 16
  br i1 %476, label %polly.loop_exit712.2, label %vector.body1081, !llvm.loop !110

polly.loop_exit712.2:                             ; preds = %vector.body1081
  %polly.indvar_next708.2 = add nuw nsw i64 %polly.indvar707.2, 1
  %exitcond819.2.not = icmp eq i64 %polly.indvar_next708.2, 32
  br i1 %exitcond819.2.not, label %polly.loop_header704.1990, label %polly.loop_header704.2

polly.loop_header704.1990:                        ; preds = %polly.loop_exit712.2, %polly.loop_exit712.11001
  %polly.indvar707.1989 = phi i64 [ %polly.indvar_next708.1999, %polly.loop_exit712.11001 ], [ 0, %polly.loop_exit712.2 ]
  %477 = add nuw nsw i64 %polly.indvar707.1989, 32
  %478 = mul nuw nsw i64 %477, 640
  %479 = trunc i64 %477 to i32
  %broadcast.splatinsert1103 = insertelement <4 x i32> poison, i32 %479, i32 0
  %broadcast.splat1104 = shufflevector <4 x i32> %broadcast.splatinsert1103, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1093

vector.body1093:                                  ; preds = %vector.body1093, %polly.loop_header704.1990
  %index1095 = phi i64 [ 0, %polly.loop_header704.1990 ], [ %index.next1096, %vector.body1093 ]
  %vec.ind1101 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header704.1990 ], [ %vec.ind.next1102, %vector.body1093 ]
  %480 = mul <4 x i32> %vec.ind1101, %broadcast.splat1104
  %481 = add <4 x i32> %480, <i32 3, i32 3, i32 3, i32 3>
  %482 = urem <4 x i32> %481, <i32 80, i32 80, i32 80, i32 80>
  %483 = sitofp <4 x i32> %482 to <4 x double>
  %484 = fmul fast <4 x double> %483, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %485 = shl i64 %index1095, 3
  %486 = add nuw nsw i64 %485, %478
  %487 = getelementptr i8, i8* %call, i64 %486
  %488 = bitcast i8* %487 to <4 x double>*
  store <4 x double> %484, <4 x double>* %488, align 8, !alias.scope !89, !noalias !91
  %index.next1096 = add i64 %index1095, 4
  %vec.ind.next1102 = add <4 x i32> %vec.ind1101, <i32 4, i32 4, i32 4, i32 4>
  %489 = icmp eq i64 %index.next1096, 32
  br i1 %489, label %polly.loop_exit712.11001, label %vector.body1093, !llvm.loop !111

polly.loop_exit712.11001:                         ; preds = %vector.body1093
  %polly.indvar_next708.1999 = add nuw nsw i64 %polly.indvar707.1989, 1
  %exitcond819.11000.not = icmp eq i64 %polly.indvar_next708.1999, 32
  br i1 %exitcond819.11000.not, label %polly.loop_header704.1.1, label %polly.loop_header704.1990

polly.loop_header704.1.1:                         ; preds = %polly.loop_exit712.11001, %polly.loop_exit712.1.1
  %polly.indvar707.1.1 = phi i64 [ %polly.indvar_next708.1.1, %polly.loop_exit712.1.1 ], [ 0, %polly.loop_exit712.11001 ]
  %490 = add nuw nsw i64 %polly.indvar707.1.1, 32
  %491 = mul nuw nsw i64 %490, 640
  %492 = trunc i64 %490 to i32
  %broadcast.splatinsert1115 = insertelement <4 x i32> poison, i32 %492, i32 0
  %broadcast.splat1116 = shufflevector <4 x i32> %broadcast.splatinsert1115, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1107

vector.body1107:                                  ; preds = %vector.body1107, %polly.loop_header704.1.1
  %index1109 = phi i64 [ 0, %polly.loop_header704.1.1 ], [ %index.next1110, %vector.body1107 ]
  %vec.ind1113 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header704.1.1 ], [ %vec.ind.next1114, %vector.body1107 ]
  %493 = add nuw nsw <4 x i64> %vec.ind1113, <i64 32, i64 32, i64 32, i64 32>
  %494 = trunc <4 x i64> %493 to <4 x i32>
  %495 = mul <4 x i32> %broadcast.splat1116, %494
  %496 = add <4 x i32> %495, <i32 3, i32 3, i32 3, i32 3>
  %497 = urem <4 x i32> %496, <i32 80, i32 80, i32 80, i32 80>
  %498 = sitofp <4 x i32> %497 to <4 x double>
  %499 = fmul fast <4 x double> %498, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %500 = extractelement <4 x i64> %493, i32 0
  %501 = shl i64 %500, 3
  %502 = add nuw nsw i64 %501, %491
  %503 = getelementptr i8, i8* %call, i64 %502
  %504 = bitcast i8* %503 to <4 x double>*
  store <4 x double> %499, <4 x double>* %504, align 8, !alias.scope !89, !noalias !91
  %index.next1110 = add i64 %index1109, 4
  %vec.ind.next1114 = add <4 x i64> %vec.ind1113, <i64 4, i64 4, i64 4, i64 4>
  %505 = icmp eq i64 %index.next1110, 32
  br i1 %505, label %polly.loop_exit712.1.1, label %vector.body1107, !llvm.loop !112

polly.loop_exit712.1.1:                           ; preds = %vector.body1107
  %polly.indvar_next708.1.1 = add nuw nsw i64 %polly.indvar707.1.1, 1
  %exitcond819.1.1.not = icmp eq i64 %polly.indvar_next708.1.1, 32
  br i1 %exitcond819.1.1.not, label %polly.loop_header704.2.1, label %polly.loop_header704.1.1

polly.loop_header704.2.1:                         ; preds = %polly.loop_exit712.1.1, %polly.loop_exit712.2.1
  %polly.indvar707.2.1 = phi i64 [ %polly.indvar_next708.2.1, %polly.loop_exit712.2.1 ], [ 0, %polly.loop_exit712.1.1 ]
  %506 = add nuw nsw i64 %polly.indvar707.2.1, 32
  %507 = mul nuw nsw i64 %506, 640
  %508 = trunc i64 %506 to i32
  %broadcast.splatinsert1127 = insertelement <4 x i32> poison, i32 %508, i32 0
  %broadcast.splat1128 = shufflevector <4 x i32> %broadcast.splatinsert1127, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1119

vector.body1119:                                  ; preds = %vector.body1119, %polly.loop_header704.2.1
  %index1121 = phi i64 [ 0, %polly.loop_header704.2.1 ], [ %index.next1122, %vector.body1119 ]
  %vec.ind1125 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header704.2.1 ], [ %vec.ind.next1126, %vector.body1119 ]
  %509 = add nuw nsw <4 x i64> %vec.ind1125, <i64 64, i64 64, i64 64, i64 64>
  %510 = trunc <4 x i64> %509 to <4 x i32>
  %511 = mul <4 x i32> %broadcast.splat1128, %510
  %512 = add <4 x i32> %511, <i32 3, i32 3, i32 3, i32 3>
  %513 = urem <4 x i32> %512, <i32 80, i32 80, i32 80, i32 80>
  %514 = sitofp <4 x i32> %513 to <4 x double>
  %515 = fmul fast <4 x double> %514, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %516 = extractelement <4 x i64> %509, i32 0
  %517 = shl i64 %516, 3
  %518 = add nuw nsw i64 %517, %507
  %519 = getelementptr i8, i8* %call, i64 %518
  %520 = bitcast i8* %519 to <4 x double>*
  store <4 x double> %515, <4 x double>* %520, align 8, !alias.scope !89, !noalias !91
  %index.next1122 = add i64 %index1121, 4
  %vec.ind.next1126 = add <4 x i64> %vec.ind1125, <i64 4, i64 4, i64 4, i64 4>
  %521 = icmp eq i64 %index.next1122, 16
  br i1 %521, label %polly.loop_exit712.2.1, label %vector.body1119, !llvm.loop !113

polly.loop_exit712.2.1:                           ; preds = %vector.body1119
  %polly.indvar_next708.2.1 = add nuw nsw i64 %polly.indvar707.2.1, 1
  %exitcond819.2.1.not = icmp eq i64 %polly.indvar_next708.2.1, 32
  br i1 %exitcond819.2.1.not, label %polly.loop_header704.21004, label %polly.loop_header704.2.1

polly.loop_header704.21004:                       ; preds = %polly.loop_exit712.2.1, %polly.loop_exit712.21015
  %polly.indvar707.21003 = phi i64 [ %polly.indvar_next708.21013, %polly.loop_exit712.21015 ], [ 0, %polly.loop_exit712.2.1 ]
  %522 = add nuw nsw i64 %polly.indvar707.21003, 64
  %523 = mul nuw nsw i64 %522, 640
  %524 = trunc i64 %522 to i32
  %broadcast.splatinsert1141 = insertelement <4 x i32> poison, i32 %524, i32 0
  %broadcast.splat1142 = shufflevector <4 x i32> %broadcast.splatinsert1141, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1131

vector.body1131:                                  ; preds = %vector.body1131, %polly.loop_header704.21004
  %index1133 = phi i64 [ 0, %polly.loop_header704.21004 ], [ %index.next1134, %vector.body1131 ]
  %vec.ind1139 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header704.21004 ], [ %vec.ind.next1140, %vector.body1131 ]
  %525 = mul <4 x i32> %vec.ind1139, %broadcast.splat1142
  %526 = add <4 x i32> %525, <i32 3, i32 3, i32 3, i32 3>
  %527 = urem <4 x i32> %526, <i32 80, i32 80, i32 80, i32 80>
  %528 = sitofp <4 x i32> %527 to <4 x double>
  %529 = fmul fast <4 x double> %528, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %530 = shl i64 %index1133, 3
  %531 = add nuw nsw i64 %530, %523
  %532 = getelementptr i8, i8* %call, i64 %531
  %533 = bitcast i8* %532 to <4 x double>*
  store <4 x double> %529, <4 x double>* %533, align 8, !alias.scope !89, !noalias !91
  %index.next1134 = add i64 %index1133, 4
  %vec.ind.next1140 = add <4 x i32> %vec.ind1139, <i32 4, i32 4, i32 4, i32 4>
  %534 = icmp eq i64 %index.next1134, 32
  br i1 %534, label %polly.loop_exit712.21015, label %vector.body1131, !llvm.loop !114

polly.loop_exit712.21015:                         ; preds = %vector.body1131
  %polly.indvar_next708.21013 = add nuw nsw i64 %polly.indvar707.21003, 1
  %exitcond819.21014.not = icmp eq i64 %polly.indvar_next708.21013, 16
  br i1 %exitcond819.21014.not, label %polly.loop_header704.1.2, label %polly.loop_header704.21004

polly.loop_header704.1.2:                         ; preds = %polly.loop_exit712.21015, %polly.loop_exit712.1.2
  %polly.indvar707.1.2 = phi i64 [ %polly.indvar_next708.1.2, %polly.loop_exit712.1.2 ], [ 0, %polly.loop_exit712.21015 ]
  %535 = add nuw nsw i64 %polly.indvar707.1.2, 64
  %536 = mul nuw nsw i64 %535, 640
  %537 = trunc i64 %535 to i32
  %broadcast.splatinsert1153 = insertelement <4 x i32> poison, i32 %537, i32 0
  %broadcast.splat1154 = shufflevector <4 x i32> %broadcast.splatinsert1153, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1145

vector.body1145:                                  ; preds = %vector.body1145, %polly.loop_header704.1.2
  %index1147 = phi i64 [ 0, %polly.loop_header704.1.2 ], [ %index.next1148, %vector.body1145 ]
  %vec.ind1151 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header704.1.2 ], [ %vec.ind.next1152, %vector.body1145 ]
  %538 = add nuw nsw <4 x i64> %vec.ind1151, <i64 32, i64 32, i64 32, i64 32>
  %539 = trunc <4 x i64> %538 to <4 x i32>
  %540 = mul <4 x i32> %broadcast.splat1154, %539
  %541 = add <4 x i32> %540, <i32 3, i32 3, i32 3, i32 3>
  %542 = urem <4 x i32> %541, <i32 80, i32 80, i32 80, i32 80>
  %543 = sitofp <4 x i32> %542 to <4 x double>
  %544 = fmul fast <4 x double> %543, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %545 = extractelement <4 x i64> %538, i32 0
  %546 = shl i64 %545, 3
  %547 = add nuw nsw i64 %546, %536
  %548 = getelementptr i8, i8* %call, i64 %547
  %549 = bitcast i8* %548 to <4 x double>*
  store <4 x double> %544, <4 x double>* %549, align 8, !alias.scope !89, !noalias !91
  %index.next1148 = add i64 %index1147, 4
  %vec.ind.next1152 = add <4 x i64> %vec.ind1151, <i64 4, i64 4, i64 4, i64 4>
  %550 = icmp eq i64 %index.next1148, 32
  br i1 %550, label %polly.loop_exit712.1.2, label %vector.body1145, !llvm.loop !115

polly.loop_exit712.1.2:                           ; preds = %vector.body1145
  %polly.indvar_next708.1.2 = add nuw nsw i64 %polly.indvar707.1.2, 1
  %exitcond819.1.2.not = icmp eq i64 %polly.indvar_next708.1.2, 16
  br i1 %exitcond819.1.2.not, label %polly.loop_header704.2.2, label %polly.loop_header704.1.2

polly.loop_header704.2.2:                         ; preds = %polly.loop_exit712.1.2, %polly.loop_exit712.2.2
  %polly.indvar707.2.2 = phi i64 [ %polly.indvar_next708.2.2, %polly.loop_exit712.2.2 ], [ 0, %polly.loop_exit712.1.2 ]
  %551 = add nuw nsw i64 %polly.indvar707.2.2, 64
  %552 = mul nuw nsw i64 %551, 640
  %553 = trunc i64 %551 to i32
  %broadcast.splatinsert1165 = insertelement <4 x i32> poison, i32 %553, i32 0
  %broadcast.splat1166 = shufflevector <4 x i32> %broadcast.splatinsert1165, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1157

vector.body1157:                                  ; preds = %vector.body1157, %polly.loop_header704.2.2
  %index1159 = phi i64 [ 0, %polly.loop_header704.2.2 ], [ %index.next1160, %vector.body1157 ]
  %vec.ind1163 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header704.2.2 ], [ %vec.ind.next1164, %vector.body1157 ]
  %554 = add nuw nsw <4 x i64> %vec.ind1163, <i64 64, i64 64, i64 64, i64 64>
  %555 = trunc <4 x i64> %554 to <4 x i32>
  %556 = mul <4 x i32> %broadcast.splat1166, %555
  %557 = add <4 x i32> %556, <i32 3, i32 3, i32 3, i32 3>
  %558 = urem <4 x i32> %557, <i32 80, i32 80, i32 80, i32 80>
  %559 = sitofp <4 x i32> %558 to <4 x double>
  %560 = fmul fast <4 x double> %559, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %561 = extractelement <4 x i64> %554, i32 0
  %562 = shl i64 %561, 3
  %563 = add nuw nsw i64 %562, %552
  %564 = getelementptr i8, i8* %call, i64 %563
  %565 = bitcast i8* %564 to <4 x double>*
  store <4 x double> %560, <4 x double>* %565, align 8, !alias.scope !89, !noalias !91
  %index.next1160 = add i64 %index1159, 4
  %vec.ind.next1164 = add <4 x i64> %vec.ind1163, <i64 4, i64 4, i64 4, i64 4>
  %566 = icmp eq i64 %index.next1160, 16
  br i1 %566, label %polly.loop_exit712.2.2, label %vector.body1157, !llvm.loop !116

polly.loop_exit712.2.2:                           ; preds = %vector.body1157
  %polly.indvar_next708.2.2 = add nuw nsw i64 %polly.indvar707.2.2, 1
  %exitcond819.2.2.not = icmp eq i64 %polly.indvar_next708.2.2, 16
  br i1 %exitcond819.2.2.not, label %polly.loop_header731, label %polly.loop_header704.2.2
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
!21 = distinct !{!21, !12, !22, !23, !24, !25, !28}
!22 = !{!"llvm.loop.disable_nonforced"}
!23 = !{!"llvm.loop.id", !"k"}
!24 = !{!"llvm.loop.tile.size", i32 64}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !22, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 50}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !22, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !22, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !22, !41, !42, !43, !33, !44, !50}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.followup_floor", !45}
!45 = distinct !{!45, !12, !22, !46, !47, !48, !49}
!46 = !{!"llvm.loop.id", !"i1"}
!47 = !{!"llvm.loop.interchange.enable", i1 true}
!48 = !{!"llvm.loop.interchange.depth", i32 5}
!49 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!50 = !{!"llvm.loop.tile.followup_tile", !51}
!51 = distinct !{!51, !12, !22, !52}
!52 = !{!"llvm.loop.id", !"i2"}
!53 = distinct !{!53, !12, !13}
!54 = distinct !{!54, !12, !13}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = !{!58, !58, i64 0}
!58 = !{!"any pointer", !4, i64 0}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !62, !"polly.alias.scope.MemRef_call"}
!62 = distinct !{!62, !"polly.alias.scope.domain"}
!63 = !{!64, !65}
!64 = distinct !{!64, !62, !"polly.alias.scope.MemRef_call1"}
!65 = distinct !{!65, !62, !"polly.alias.scope.MemRef_call2"}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !68, !13}
!68 = !{!"llvm.loop.unroll.runtime.disable"}
!69 = !{!61, !64}
!70 = !{!61, !65}
!71 = distinct !{!71, !72, !"polly.alias.scope.MemRef_call"}
!72 = distinct !{!72, !"polly.alias.scope.domain"}
!73 = !{!74, !75}
!74 = distinct !{!74, !72, !"polly.alias.scope.MemRef_call1"}
!75 = distinct !{!75, !72, !"polly.alias.scope.MemRef_call2"}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !68, !13}
!78 = !{!71, !74}
!79 = !{!71, !75}
!80 = distinct !{!80, !81, !"polly.alias.scope.MemRef_call"}
!81 = distinct !{!81, !"polly.alias.scope.domain"}
!82 = !{!83, !84}
!83 = distinct !{!83, !81, !"polly.alias.scope.MemRef_call1"}
!84 = distinct !{!84, !81, !"polly.alias.scope.MemRef_call2"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !68, !13}
!87 = !{!80, !83}
!88 = !{!80, !84}
!89 = distinct !{!89, !90, !"polly.alias.scope.MemRef_call"}
!90 = distinct !{!90, !"polly.alias.scope.domain"}
!91 = !{!92, !93}
!92 = distinct !{!92, !90, !"polly.alias.scope.MemRef_call1"}
!93 = distinct !{!93, !90, !"polly.alias.scope.MemRef_call2"}
!94 = distinct !{!94, !13}
!95 = !{!92, !89}
!96 = distinct !{!96, !13}
!97 = !{!93, !89}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !13}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, !13}
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
