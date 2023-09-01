; ModuleID = 'syr2k_recreations//mmp_syr2k_S_162.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_162.c"
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
  %call799 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1651 = bitcast i8* %call1 to double*
  %polly.access.call1660 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1660, %call2
  %polly.access.call2680 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2680, %call1
  %2 = or i1 %0, %1
  %polly.access.call700 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call700, %call2
  %4 = icmp ule i8* %polly.access.call2680, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call700, %call1
  %8 = icmp ule i8* %polly.access.call1660, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header785, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1117 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1116 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1115 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1114 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1114, %scevgep1117
  %bound1 = icmp ult i8* %scevgep1116, %scevgep1115
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
  br i1 %exitcond18.not.i, label %vector.ph1121, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1121:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1128 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1129 = shufflevector <4 x i64> %broadcast.splatinsert1128, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1120

vector.body1120:                                  ; preds = %vector.body1120, %vector.ph1121
  %index1122 = phi i64 [ 0, %vector.ph1121 ], [ %index.next1123, %vector.body1120 ]
  %vec.ind1126 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1121 ], [ %vec.ind.next1127, %vector.body1120 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1126, %broadcast.splat1129
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call799, i64 %indvars.iv7.i, i64 %index1122
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1123 = add i64 %index1122, 4
  %vec.ind.next1127 = add <4 x i64> %vec.ind1126, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1123, 80
  br i1 %40, label %for.inc41.i, label %vector.body1120, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1120
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1121, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit846.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start463, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1480, label %vector.ph1403

vector.ph1403:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1402

vector.body1402:                                  ; preds = %vector.body1402, %vector.ph1403
  %index1404 = phi i64 [ 0, %vector.ph1403 ], [ %index.next1405, %vector.body1402 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call799, i64 %indvars.iv21.i, i64 %index1404
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1405 = add i64 %index1404, 4
  %46 = icmp eq i64 %index.next1405, %n.vec
  br i1 %46, label %middle.block1400, label %vector.body1402, !llvm.loop !18

middle.block1400:                                 ; preds = %vector.body1402
  %cmp.n1407 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1407, label %for.inc6.i, label %for.body3.i46.preheader1480

for.body3.i46.preheader1480:                      ; preds = %for.body3.i46.preheader, %middle.block1400
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1400 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1480, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1480 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call799, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1400, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call799, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !44

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit573.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start277, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1423 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1423, label %for.body3.i60.preheader1477, label %vector.ph1424

vector.ph1424:                                    ; preds = %for.body3.i60.preheader
  %n.vec1426 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1422

vector.body1422:                                  ; preds = %vector.body1422, %vector.ph1424
  %index1427 = phi i64 [ 0, %vector.ph1424 ], [ %index.next1428, %vector.body1422 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call799, i64 %indvars.iv21.i52, i64 %index1427
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1431 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1431, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1428 = add i64 %index1427, 4
  %57 = icmp eq i64 %index.next1428, %n.vec1426
  br i1 %57, label %middle.block1420, label %vector.body1422, !llvm.loop !55

middle.block1420:                                 ; preds = %vector.body1422
  %cmp.n1430 = icmp eq i64 %indvars.iv21.i52, %n.vec1426
  br i1 %cmp.n1430, label %for.inc6.i63, label %for.body3.i60.preheader1477

for.body3.i60.preheader1477:                      ; preds = %for.body3.i60.preheader, %middle.block1420
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1426, %middle.block1420 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1477, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1477 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call799, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1420, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call799, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !44

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit387.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1449 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1449, label %for.body3.i99.preheader1474, label %vector.ph1450

vector.ph1450:                                    ; preds = %for.body3.i99.preheader
  %n.vec1452 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1448

vector.body1448:                                  ; preds = %vector.body1448, %vector.ph1450
  %index1453 = phi i64 [ 0, %vector.ph1450 ], [ %index.next1454, %vector.body1448 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call799, i64 %indvars.iv21.i91, i64 %index1453
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1457 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1457, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1454 = add i64 %index1453, 4
  %68 = icmp eq i64 %index.next1454, %n.vec1452
  br i1 %68, label %middle.block1446, label %vector.body1448, !llvm.loop !57

middle.block1446:                                 ; preds = %vector.body1448
  %cmp.n1456 = icmp eq i64 %indvars.iv21.i91, %n.vec1452
  br i1 %cmp.n1456, label %for.inc6.i102, label %for.body3.i99.preheader1474

for.body3.i99.preheader1474:                      ; preds = %for.body3.i99.preheader, %middle.block1446
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1452, %middle.block1446 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1474, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1474 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call799, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1446, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call799, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !44

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit207.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !59
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call799, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !61

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !62

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
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
  %indvar1461 = phi i64 [ %indvar.next1462, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1461, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1463 = icmp ult i64 %88, 4
  br i1 %min.iters.check1463, label %polly.loop_header191.preheader, label %vector.ph1464

vector.ph1464:                                    ; preds = %polly.loop_header
  %n.vec1466 = and i64 %88, -4
  br label %vector.body1460

vector.body1460:                                  ; preds = %vector.body1460, %vector.ph1464
  %index1467 = phi i64 [ 0, %vector.ph1464 ], [ %index.next1468, %vector.body1460 ]
  %90 = shl nuw nsw i64 %index1467, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1471 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1471, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1468 = add i64 %index1467, 4
  %95 = icmp eq i64 %index.next1468, %n.vec1466
  br i1 %95, label %middle.block1458, label %vector.body1460, !llvm.loop !69

middle.block1458:                                 ; preds = %vector.body1460
  %cmp.n1470 = icmp eq i64 %88, %n.vec1466
  br i1 %cmp.n1470, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1458
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1466, %middle.block1458 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1458
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond974.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1462 = add i64 %indvar1461, 1
  br i1 %exitcond974.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header205

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond973.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond973.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199.preheader
  %indvars.iv963 = phi i64 [ %indvars.iv.next964, %polly.loop_exit213 ], [ 0, %polly.loop_header199.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 0, %polly.loop_header199.preheader ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199.preheader ]
  %97 = shl i64 %polly.indvar208, 5
  %polly.loop_guard.not = icmp sgt i64 %97, 49
  br i1 %polly.loop_guard.not, label %polly.loop_exit213, label %polly.loop_header211.preheader

polly.loop_header211.preheader:                   ; preds = %polly.loop_header205
  %98 = add i64 %indvars.iv, %indvars.iv963
  %99 = add nuw nsw i64 %97, 32
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit244, %polly.loop_header205
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %indvars.iv.next964 = add nsw i64 %indvars.iv963, -32
  %exitcond972.not = icmp eq i64 %polly.indvar_next209, 2
  br i1 %exitcond972.not, label %polly.loop_header205.1, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211.preheader, %polly.loop_exit244
  %indvars.iv965 = phi i64 [ %98, %polly.loop_header211.preheader ], [ %indvars.iv.next966, %polly.loop_exit244 ]
  %polly.indvar214 = phi i64 [ %97, %polly.loop_header211.preheader ], [ %polly.indvar_next215, %polly.loop_exit244 ]
  %smin969 = call i64 @llvm.smin.i64(i64 %indvars.iv965, i64 31)
  %100 = sub i64 %polly.indvar214, %97
  %polly.loop_guard2271092 = icmp sgt i64 %100, -1
  %.not = icmp ult i64 %polly.indvar214, %99
  %polly.access.mul.call1236 = mul nsw i64 %polly.indvar214, 60
  br i1 %polly.loop_guard2271092, label %polly.loop_header217.us, label %polly.loop_header211.split

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.merge.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.merge.us ], [ 0, %polly.loop_header211 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 80
  br label %polly.loop_header224.us

polly.loop_header224.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header224.us
  %polly.indvar228.us = phi i64 [ %polly.indvar_next229.us, %polly.loop_header224.us ], [ 0, %polly.loop_header217.us ]
  %101 = add nuw nsw i64 %polly.indvar228.us, %97
  %polly.access.mul.call1232.us = mul nuw nsw i64 %101, 60
  %polly.access.add.call1233.us = add nuw nsw i64 %polly.access.mul.call1232.us, %polly.indvar220.us
  %polly.access.call1234.us = getelementptr double, double* %polly.access.cast.call1651, i64 %polly.access.add.call1233.us
  %polly.access.call1234.load.us = load double, double* %polly.access.call1234.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar228.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1234.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next229.us = add nuw nsw i64 %polly.indvar228.us, 1
  %exitcond967.not = icmp eq i64 %polly.indvar228.us, %smin969
  br i1 %exitcond967.not, label %polly.cond.loopexit.us, label %polly.loop_header224.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1237.us = add nuw nsw i64 %polly.indvar220.us, %polly.access.mul.call1236
  %polly.access.call1238.us = getelementptr double, double* %polly.access.cast.call1651, i64 %polly.access.add.call1237.us
  %polly.access.call1238.load.us = load double, double* %polly.access.call1238.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1240.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %100
  %polly.access.Packed_MemRef_call1241.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.us
  store double %polly.access.call1238.load.us, double* %polly.access.Packed_MemRef_call1241.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond968.not = icmp eq i64 %polly.indvar_next221.us, 60
  br i1 %exitcond968.not, label %polly.loop_header242.preheader, label %polly.loop_header217.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header224.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header211.split:                       ; preds = %polly.loop_header211
  br i1 %.not, label %polly.loop_exit244, label %polly.loop_header217

polly.loop_exit244:                               ; preds = %polly.loop_exit251.loopexit.us, %polly.loop_header211.split, %polly.loop_header242.preheader
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %polly.loop_cond216.not.not = icmp ult i64 %polly.indvar214, 49
  %indvars.iv.next966 = add i64 %indvars.iv965, 1
  br i1 %polly.loop_cond216.not.not, label %polly.loop_header211, label %polly.loop_exit213

polly.loop_header217:                             ; preds = %polly.loop_header211.split, %polly.loop_header217
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_header217 ], [ 0, %polly.loop_header211.split ]
  %polly.access.add.call1237 = add nuw nsw i64 %polly.indvar220, %polly.access.mul.call1236
  %polly.access.call1238 = getelementptr double, double* %polly.access.cast.call1651, i64 %polly.access.add.call1237
  %polly.access.call1238.load = load double, double* %polly.access.call1238, align 8, !alias.scope !66, !noalias !72
  %polly.access.mul.Packed_MemRef_call1239 = mul nuw nsw i64 %polly.indvar220, 80
  %polly.access.add.Packed_MemRef_call1240 = add nsw i64 %polly.access.mul.Packed_MemRef_call1239, %100
  %polly.access.Packed_MemRef_call1241 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240
  store double %polly.access.call1238.load, double* %polly.access.Packed_MemRef_call1241, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, 60
  br i1 %exitcond.not, label %polly.loop_header242.preheader, label %polly.loop_header217

polly.loop_header242.preheader:                   ; preds = %polly.loop_header217, %polly.merge.us
  %102 = mul i64 %polly.indvar214, 480
  %103 = mul i64 %polly.indvar214, 640
  br i1 %polly.loop_guard2271092, label %polly.loop_header242.us, label %polly.loop_exit244

polly.loop_header242.us:                          ; preds = %polly.loop_header242.preheader, %polly.loop_exit251.loopexit.us
  %polly.indvar245.us = phi i64 [ %polly.indvar_next246.us, %polly.loop_exit251.loopexit.us ], [ 0, %polly.loop_header242.preheader ]
  %104 = shl nuw nsw i64 %polly.indvar245.us, 3
  %scevgep260.us = getelementptr i8, i8* %call2, i64 %104
  %polly.access.mul.Packed_MemRef_call1256.us = mul nuw nsw i64 %polly.indvar245.us, 80
  %scevgep261.us = getelementptr i8, i8* %scevgep260.us, i64 %102
  %scevgep261262.us = bitcast i8* %scevgep261.us to double*
  %_p_scalar_263.us = load double, double* %scevgep261262.us, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1269.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1256.us, %100
  %polly.access.Packed_MemRef_call1270.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1269.us
  %_p_scalar_271.us = load double, double* %polly.access.Packed_MemRef_call1270.us, align 8
  br label %polly.loop_header249.us

polly.loop_header249.us:                          ; preds = %polly.loop_header249.us, %polly.loop_header242.us
  %polly.indvar253.us = phi i64 [ 0, %polly.loop_header242.us ], [ %polly.indvar_next254.us, %polly.loop_header249.us ]
  %105 = add nuw nsw i64 %polly.indvar253.us, %97
  %polly.access.add.Packed_MemRef_call1257.us = add nuw nsw i64 %polly.indvar253.us, %polly.access.mul.Packed_MemRef_call1256.us
  %polly.access.Packed_MemRef_call1258.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.us
  %_p_scalar_259.us = load double, double* %polly.access.Packed_MemRef_call1258.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_263.us, %_p_scalar_259.us
  %106 = mul nuw nsw i64 %105, 480
  %scevgep265.us = getelementptr i8, i8* %scevgep260.us, i64 %106
  %scevgep265266.us = bitcast i8* %scevgep265.us to double*
  %_p_scalar_267.us = load double, double* %scevgep265266.us, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us = fmul fast double %_p_scalar_271.us, %_p_scalar_267.us
  %107 = shl i64 %105, 3
  %108 = add i64 %107, %103
  %scevgep272.us = getelementptr i8, i8* %call, i64 %108
  %scevgep272273.us = bitcast i8* %scevgep272.us to double*
  %_p_scalar_274.us = load double, double* %scevgep272273.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_274.us
  store double %p_add42.i118.us, double* %scevgep272273.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %exitcond970.not = icmp eq i64 %polly.indvar253.us, %smin969
  br i1 %exitcond970.not, label %polly.loop_exit251.loopexit.us, label %polly.loop_header249.us

polly.loop_exit251.loopexit.us:                   ; preds = %polly.loop_header249.us
  %polly.indvar_next246.us = add nuw nsw i64 %polly.indvar245.us, 1
  %exitcond971.not = icmp eq i64 %polly.indvar_next246.us, 60
  br i1 %exitcond971.not, label %polly.loop_exit244, label %polly.loop_header242.us

polly.start277:                                   ; preds = %kernel_syr2k.exit
  %malloccall279 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header363

polly.loop_header363:                             ; preds = %polly.loop_exit371, %polly.start277
  %indvar1435 = phi i64 [ %indvar.next1436, %polly.loop_exit371 ], [ 0, %polly.start277 ]
  %polly.indvar366 = phi i64 [ %polly.indvar_next367, %polly.loop_exit371 ], [ 1, %polly.start277 ]
  %109 = add i64 %indvar1435, 1
  %110 = mul nuw nsw i64 %polly.indvar366, 640
  %scevgep375 = getelementptr i8, i8* %call, i64 %110
  %min.iters.check1437 = icmp ult i64 %109, 4
  br i1 %min.iters.check1437, label %polly.loop_header369.preheader, label %vector.ph1438

vector.ph1438:                                    ; preds = %polly.loop_header363
  %n.vec1440 = and i64 %109, -4
  br label %vector.body1434

vector.body1434:                                  ; preds = %vector.body1434, %vector.ph1438
  %index1441 = phi i64 [ 0, %vector.ph1438 ], [ %index.next1442, %vector.body1434 ]
  %111 = shl nuw nsw i64 %index1441, 3
  %112 = getelementptr i8, i8* %scevgep375, i64 %111
  %113 = bitcast i8* %112 to <4 x double>*
  %wide.load1445 = load <4 x double>, <4 x double>* %113, align 8, !alias.scope !74, !noalias !76
  %114 = fmul fast <4 x double> %wide.load1445, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %115 = bitcast i8* %112 to <4 x double>*
  store <4 x double> %114, <4 x double>* %115, align 8, !alias.scope !74, !noalias !76
  %index.next1442 = add i64 %index1441, 4
  %116 = icmp eq i64 %index.next1442, %n.vec1440
  br i1 %116, label %middle.block1432, label %vector.body1434, !llvm.loop !80

middle.block1432:                                 ; preds = %vector.body1434
  %cmp.n1444 = icmp eq i64 %109, %n.vec1440
  br i1 %cmp.n1444, label %polly.loop_exit371, label %polly.loop_header369.preheader

polly.loop_header369.preheader:                   ; preds = %polly.loop_header363, %middle.block1432
  %polly.indvar372.ph = phi i64 [ 0, %polly.loop_header363 ], [ %n.vec1440, %middle.block1432 ]
  br label %polly.loop_header369

polly.loop_exit371:                               ; preds = %polly.loop_header369, %middle.block1432
  %polly.indvar_next367 = add nuw nsw i64 %polly.indvar366, 1
  %exitcond991.not = icmp eq i64 %polly.indvar_next367, 80
  %indvar.next1436 = add i64 %indvar1435, 1
  br i1 %exitcond991.not, label %polly.loop_header379.preheader, label %polly.loop_header363

polly.loop_header379.preheader:                   ; preds = %polly.loop_exit371
  %Packed_MemRef_call1280 = bitcast i8* %malloccall279 to double*
  br label %polly.loop_header385

polly.loop_header369:                             ; preds = %polly.loop_header369.preheader, %polly.loop_header369
  %polly.indvar372 = phi i64 [ %polly.indvar_next373, %polly.loop_header369 ], [ %polly.indvar372.ph, %polly.loop_header369.preheader ]
  %117 = shl nuw nsw i64 %polly.indvar372, 3
  %scevgep376 = getelementptr i8, i8* %scevgep375, i64 %117
  %scevgep376377 = bitcast i8* %scevgep376 to double*
  %_p_scalar_378 = load double, double* %scevgep376377, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_378, 1.200000e+00
  store double %p_mul.i57, double* %scevgep376377, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next373 = add nuw nsw i64 %polly.indvar372, 1
  %exitcond990.not = icmp eq i64 %polly.indvar_next373, %polly.indvar366
  br i1 %exitcond990.not, label %polly.loop_exit371, label %polly.loop_header369, !llvm.loop !81

polly.loop_header385:                             ; preds = %polly.loop_exit394, %polly.loop_header379.preheader
  %indvars.iv979 = phi i64 [ %indvars.iv.next980, %polly.loop_exit394 ], [ 0, %polly.loop_header379.preheader ]
  %indvars.iv976 = phi i64 [ %indvars.iv.next977, %polly.loop_exit394 ], [ 0, %polly.loop_header379.preheader ]
  %polly.indvar388 = phi i64 [ %polly.indvar_next389, %polly.loop_exit394 ], [ 0, %polly.loop_header379.preheader ]
  %118 = shl i64 %polly.indvar388, 5
  %polly.loop_guard395.not = icmp sgt i64 %118, 49
  br i1 %polly.loop_guard395.not, label %polly.loop_exit394, label %polly.loop_header392.preheader

polly.loop_header392.preheader:                   ; preds = %polly.loop_header385
  %119 = add i64 %indvars.iv976, %indvars.iv979
  %120 = add nuw nsw i64 %118, 32
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_exit430, %polly.loop_header385
  %polly.indvar_next389 = add nuw nsw i64 %polly.indvar388, 1
  %indvars.iv.next977 = add nuw nsw i64 %indvars.iv976, 32
  %indvars.iv.next980 = add nsw i64 %indvars.iv979, -32
  %exitcond989.not = icmp eq i64 %polly.indvar_next389, 2
  br i1 %exitcond989.not, label %polly.loop_header385.1, label %polly.loop_header385

polly.loop_header392:                             ; preds = %polly.loop_header392.preheader, %polly.loop_exit430
  %indvars.iv981 = phi i64 [ %119, %polly.loop_header392.preheader ], [ %indvars.iv.next982, %polly.loop_exit430 ]
  %polly.indvar396 = phi i64 [ %118, %polly.loop_header392.preheader ], [ %polly.indvar_next397, %polly.loop_exit430 ]
  %smin986 = call i64 @llvm.smin.i64(i64 %indvars.iv981, i64 31)
  %121 = sub i64 %polly.indvar396, %118
  %polly.loop_guard4091095 = icmp sgt i64 %121, -1
  %.not853 = icmp ult i64 %polly.indvar396, %120
  %polly.access.mul.call1422 = mul nsw i64 %polly.indvar396, 60
  br i1 %polly.loop_guard4091095, label %polly.loop_header399.us, label %polly.loop_header392.split

polly.loop_header399.us:                          ; preds = %polly.loop_header392, %polly.merge418.us
  %polly.indvar402.us = phi i64 [ %polly.indvar_next403.us, %polly.merge418.us ], [ 0, %polly.loop_header392 ]
  %polly.access.mul.Packed_MemRef_call1280.us = mul nuw nsw i64 %polly.indvar402.us, 80
  br label %polly.loop_header406.us

polly.loop_header406.us:                          ; preds = %polly.loop_header399.us, %polly.loop_header406.us
  %polly.indvar410.us = phi i64 [ %polly.indvar_next411.us, %polly.loop_header406.us ], [ 0, %polly.loop_header399.us ]
  %122 = add nuw nsw i64 %polly.indvar410.us, %118
  %polly.access.mul.call1414.us = mul nuw nsw i64 %122, 60
  %polly.access.add.call1415.us = add nuw nsw i64 %polly.access.mul.call1414.us, %polly.indvar402.us
  %polly.access.call1416.us = getelementptr double, double* %polly.access.cast.call1651, i64 %polly.access.add.call1415.us
  %polly.access.call1416.load.us = load double, double* %polly.access.call1416.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1280.us = add nuw nsw i64 %polly.indvar410.us, %polly.access.mul.Packed_MemRef_call1280.us
  %polly.access.Packed_MemRef_call1280.us = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280.us
  store double %polly.access.call1416.load.us, double* %polly.access.Packed_MemRef_call1280.us, align 8
  %polly.indvar_next411.us = add nuw nsw i64 %polly.indvar410.us, 1
  %exitcond984.not = icmp eq i64 %polly.indvar410.us, %smin986
  br i1 %exitcond984.not, label %polly.cond417.loopexit.us, label %polly.loop_header406.us

polly.then419.us:                                 ; preds = %polly.cond417.loopexit.us
  %polly.access.add.call1423.us = add nuw nsw i64 %polly.indvar402.us, %polly.access.mul.call1422
  %polly.access.call1424.us = getelementptr double, double* %polly.access.cast.call1651, i64 %polly.access.add.call1423.us
  %polly.access.call1424.load.us = load double, double* %polly.access.call1424.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1280426.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1280.us, %121
  %polly.access.Packed_MemRef_call1280427.us = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280426.us
  store double %polly.access.call1424.load.us, double* %polly.access.Packed_MemRef_call1280427.us, align 8
  br label %polly.merge418.us

polly.merge418.us:                                ; preds = %polly.then419.us, %polly.cond417.loopexit.us
  %polly.indvar_next403.us = add nuw nsw i64 %polly.indvar402.us, 1
  %exitcond985.not = icmp eq i64 %polly.indvar_next403.us, 60
  br i1 %exitcond985.not, label %polly.loop_header428.preheader, label %polly.loop_header399.us

polly.cond417.loopexit.us:                        ; preds = %polly.loop_header406.us
  br i1 %.not853, label %polly.merge418.us, label %polly.then419.us

polly.loop_header392.split:                       ; preds = %polly.loop_header392
  br i1 %.not853, label %polly.loop_exit430, label %polly.loop_header399

polly.loop_exit430:                               ; preds = %polly.loop_exit437.loopexit.us, %polly.loop_header392.split, %polly.loop_header428.preheader
  %polly.indvar_next397 = add nuw nsw i64 %polly.indvar396, 1
  %polly.loop_cond398.not.not = icmp ult i64 %polly.indvar396, 49
  %indvars.iv.next982 = add i64 %indvars.iv981, 1
  br i1 %polly.loop_cond398.not.not, label %polly.loop_header392, label %polly.loop_exit394

polly.loop_header399:                             ; preds = %polly.loop_header392.split, %polly.loop_header399
  %polly.indvar402 = phi i64 [ %polly.indvar_next403, %polly.loop_header399 ], [ 0, %polly.loop_header392.split ]
  %polly.access.add.call1423 = add nuw nsw i64 %polly.indvar402, %polly.access.mul.call1422
  %polly.access.call1424 = getelementptr double, double* %polly.access.cast.call1651, i64 %polly.access.add.call1423
  %polly.access.call1424.load = load double, double* %polly.access.call1424, align 8, !alias.scope !77, !noalias !82
  %polly.access.mul.Packed_MemRef_call1280425 = mul nuw nsw i64 %polly.indvar402, 80
  %polly.access.add.Packed_MemRef_call1280426 = add nsw i64 %polly.access.mul.Packed_MemRef_call1280425, %121
  %polly.access.Packed_MemRef_call1280427 = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280426
  store double %polly.access.call1424.load, double* %polly.access.Packed_MemRef_call1280427, align 8
  %polly.indvar_next403 = add nuw nsw i64 %polly.indvar402, 1
  %exitcond975.not = icmp eq i64 %polly.indvar_next403, 60
  br i1 %exitcond975.not, label %polly.loop_header428.preheader, label %polly.loop_header399

polly.loop_header428.preheader:                   ; preds = %polly.loop_header399, %polly.merge418.us
  %123 = mul i64 %polly.indvar396, 480
  %124 = mul i64 %polly.indvar396, 640
  br i1 %polly.loop_guard4091095, label %polly.loop_header428.us, label %polly.loop_exit430

polly.loop_header428.us:                          ; preds = %polly.loop_header428.preheader, %polly.loop_exit437.loopexit.us
  %polly.indvar431.us = phi i64 [ %polly.indvar_next432.us, %polly.loop_exit437.loopexit.us ], [ 0, %polly.loop_header428.preheader ]
  %125 = shl nuw nsw i64 %polly.indvar431.us, 3
  %scevgep446.us = getelementptr i8, i8* %call2, i64 %125
  %polly.access.mul.Packed_MemRef_call1280442.us = mul nuw nsw i64 %polly.indvar431.us, 80
  %scevgep447.us = getelementptr i8, i8* %scevgep446.us, i64 %123
  %scevgep447448.us = bitcast i8* %scevgep447.us to double*
  %_p_scalar_449.us = load double, double* %scevgep447448.us, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1280455.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1280442.us, %121
  %polly.access.Packed_MemRef_call1280456.us = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280455.us
  %_p_scalar_457.us = load double, double* %polly.access.Packed_MemRef_call1280456.us, align 8
  br label %polly.loop_header435.us

polly.loop_header435.us:                          ; preds = %polly.loop_header435.us, %polly.loop_header428.us
  %polly.indvar439.us = phi i64 [ 0, %polly.loop_header428.us ], [ %polly.indvar_next440.us, %polly.loop_header435.us ]
  %126 = add nuw nsw i64 %polly.indvar439.us, %118
  %polly.access.add.Packed_MemRef_call1280443.us = add nuw nsw i64 %polly.indvar439.us, %polly.access.mul.Packed_MemRef_call1280442.us
  %polly.access.Packed_MemRef_call1280444.us = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280443.us
  %_p_scalar_445.us = load double, double* %polly.access.Packed_MemRef_call1280444.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_449.us, %_p_scalar_445.us
  %127 = mul nuw nsw i64 %126, 480
  %scevgep451.us = getelementptr i8, i8* %scevgep446.us, i64 %127
  %scevgep451452.us = bitcast i8* %scevgep451.us to double*
  %_p_scalar_453.us = load double, double* %scevgep451452.us, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us = fmul fast double %_p_scalar_457.us, %_p_scalar_453.us
  %128 = shl i64 %126, 3
  %129 = add i64 %128, %124
  %scevgep458.us = getelementptr i8, i8* %call, i64 %129
  %scevgep458459.us = bitcast i8* %scevgep458.us to double*
  %_p_scalar_460.us = load double, double* %scevgep458459.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_460.us
  store double %p_add42.i79.us, double* %scevgep458459.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next440.us = add nuw nsw i64 %polly.indvar439.us, 1
  %exitcond987.not = icmp eq i64 %polly.indvar439.us, %smin986
  br i1 %exitcond987.not, label %polly.loop_exit437.loopexit.us, label %polly.loop_header435.us

polly.loop_exit437.loopexit.us:                   ; preds = %polly.loop_header435.us
  %polly.indvar_next432.us = add nuw nsw i64 %polly.indvar431.us, 1
  %exitcond988.not = icmp eq i64 %polly.indvar_next432.us, 60
  br i1 %exitcond988.not, label %polly.loop_exit430, label %polly.loop_header428.us

polly.start463:                                   ; preds = %init_array.exit
  %malloccall465 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header549

polly.loop_header549:                             ; preds = %polly.loop_exit557, %polly.start463
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit557 ], [ 0, %polly.start463 ]
  %polly.indvar552 = phi i64 [ %polly.indvar_next553, %polly.loop_exit557 ], [ 1, %polly.start463 ]
  %130 = add i64 %indvar, 1
  %131 = mul nuw nsw i64 %polly.indvar552, 640
  %scevgep561 = getelementptr i8, i8* %call, i64 %131
  %min.iters.check1411 = icmp ult i64 %130, 4
  br i1 %min.iters.check1411, label %polly.loop_header555.preheader, label %vector.ph1412

vector.ph1412:                                    ; preds = %polly.loop_header549
  %n.vec1414 = and i64 %130, -4
  br label %vector.body1410

vector.body1410:                                  ; preds = %vector.body1410, %vector.ph1412
  %index1415 = phi i64 [ 0, %vector.ph1412 ], [ %index.next1416, %vector.body1410 ]
  %132 = shl nuw nsw i64 %index1415, 3
  %133 = getelementptr i8, i8* %scevgep561, i64 %132
  %134 = bitcast i8* %133 to <4 x double>*
  %wide.load1419 = load <4 x double>, <4 x double>* %134, align 8, !alias.scope !84, !noalias !86
  %135 = fmul fast <4 x double> %wide.load1419, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %136 = bitcast i8* %133 to <4 x double>*
  store <4 x double> %135, <4 x double>* %136, align 8, !alias.scope !84, !noalias !86
  %index.next1416 = add i64 %index1415, 4
  %137 = icmp eq i64 %index.next1416, %n.vec1414
  br i1 %137, label %middle.block1408, label %vector.body1410, !llvm.loop !90

middle.block1408:                                 ; preds = %vector.body1410
  %cmp.n1418 = icmp eq i64 %130, %n.vec1414
  br i1 %cmp.n1418, label %polly.loop_exit557, label %polly.loop_header555.preheader

polly.loop_header555.preheader:                   ; preds = %polly.loop_header549, %middle.block1408
  %polly.indvar558.ph = phi i64 [ 0, %polly.loop_header549 ], [ %n.vec1414, %middle.block1408 ]
  br label %polly.loop_header555

polly.loop_exit557:                               ; preds = %polly.loop_header555, %middle.block1408
  %polly.indvar_next553 = add nuw nsw i64 %polly.indvar552, 1
  %exitcond1008.not = icmp eq i64 %polly.indvar_next553, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1008.not, label %polly.loop_header565.preheader, label %polly.loop_header549

polly.loop_header565.preheader:                   ; preds = %polly.loop_exit557
  %Packed_MemRef_call1466 = bitcast i8* %malloccall465 to double*
  br label %polly.loop_header571

polly.loop_header555:                             ; preds = %polly.loop_header555.preheader, %polly.loop_header555
  %polly.indvar558 = phi i64 [ %polly.indvar_next559, %polly.loop_header555 ], [ %polly.indvar558.ph, %polly.loop_header555.preheader ]
  %138 = shl nuw nsw i64 %polly.indvar558, 3
  %scevgep562 = getelementptr i8, i8* %scevgep561, i64 %138
  %scevgep562563 = bitcast i8* %scevgep562 to double*
  %_p_scalar_564 = load double, double* %scevgep562563, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_564, 1.200000e+00
  store double %p_mul.i, double* %scevgep562563, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next559 = add nuw nsw i64 %polly.indvar558, 1
  %exitcond1007.not = icmp eq i64 %polly.indvar_next559, %polly.indvar552
  br i1 %exitcond1007.not, label %polly.loop_exit557, label %polly.loop_header555, !llvm.loop !91

polly.loop_header571:                             ; preds = %polly.loop_exit580, %polly.loop_header565.preheader
  %indvars.iv996 = phi i64 [ %indvars.iv.next997, %polly.loop_exit580 ], [ 0, %polly.loop_header565.preheader ]
  %indvars.iv993 = phi i64 [ %indvars.iv.next994, %polly.loop_exit580 ], [ 0, %polly.loop_header565.preheader ]
  %polly.indvar574 = phi i64 [ %polly.indvar_next575, %polly.loop_exit580 ], [ 0, %polly.loop_header565.preheader ]
  %139 = shl i64 %polly.indvar574, 5
  %polly.loop_guard581.not = icmp sgt i64 %139, 49
  br i1 %polly.loop_guard581.not, label %polly.loop_exit580, label %polly.loop_header578.preheader

polly.loop_header578.preheader:                   ; preds = %polly.loop_header571
  %140 = add i64 %indvars.iv993, %indvars.iv996
  %141 = add nuw nsw i64 %139, 32
  br label %polly.loop_header578

polly.loop_exit580:                               ; preds = %polly.loop_exit616, %polly.loop_header571
  %polly.indvar_next575 = add nuw nsw i64 %polly.indvar574, 1
  %indvars.iv.next994 = add nuw nsw i64 %indvars.iv993, 32
  %indvars.iv.next997 = add nsw i64 %indvars.iv996, -32
  %exitcond1006.not = icmp eq i64 %polly.indvar_next575, 2
  br i1 %exitcond1006.not, label %polly.loop_header571.1, label %polly.loop_header571

polly.loop_header578:                             ; preds = %polly.loop_header578.preheader, %polly.loop_exit616
  %indvars.iv998 = phi i64 [ %140, %polly.loop_header578.preheader ], [ %indvars.iv.next999, %polly.loop_exit616 ]
  %polly.indvar582 = phi i64 [ %139, %polly.loop_header578.preheader ], [ %polly.indvar_next583, %polly.loop_exit616 ]
  %smin1003 = call i64 @llvm.smin.i64(i64 %indvars.iv998, i64 31)
  %142 = sub i64 %polly.indvar582, %139
  %polly.loop_guard5951098 = icmp sgt i64 %142, -1
  %.not854 = icmp ult i64 %polly.indvar582, %141
  %polly.access.mul.call1608 = mul nsw i64 %polly.indvar582, 60
  br i1 %polly.loop_guard5951098, label %polly.loop_header585.us, label %polly.loop_header578.split

polly.loop_header585.us:                          ; preds = %polly.loop_header578, %polly.merge604.us
  %polly.indvar588.us = phi i64 [ %polly.indvar_next589.us, %polly.merge604.us ], [ 0, %polly.loop_header578 ]
  %polly.access.mul.Packed_MemRef_call1466.us = mul nuw nsw i64 %polly.indvar588.us, 80
  br label %polly.loop_header592.us

polly.loop_header592.us:                          ; preds = %polly.loop_header585.us, %polly.loop_header592.us
  %polly.indvar596.us = phi i64 [ %polly.indvar_next597.us, %polly.loop_header592.us ], [ 0, %polly.loop_header585.us ]
  %143 = add nuw nsw i64 %polly.indvar596.us, %139
  %polly.access.mul.call1600.us = mul nuw nsw i64 %143, 60
  %polly.access.add.call1601.us = add nuw nsw i64 %polly.access.mul.call1600.us, %polly.indvar588.us
  %polly.access.call1602.us = getelementptr double, double* %polly.access.cast.call1651, i64 %polly.access.add.call1601.us
  %polly.access.call1602.load.us = load double, double* %polly.access.call1602.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1466.us = add nuw nsw i64 %polly.indvar596.us, %polly.access.mul.Packed_MemRef_call1466.us
  %polly.access.Packed_MemRef_call1466.us = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466.us
  store double %polly.access.call1602.load.us, double* %polly.access.Packed_MemRef_call1466.us, align 8
  %polly.indvar_next597.us = add nuw nsw i64 %polly.indvar596.us, 1
  %exitcond1001.not = icmp eq i64 %polly.indvar596.us, %smin1003
  br i1 %exitcond1001.not, label %polly.cond603.loopexit.us, label %polly.loop_header592.us

polly.then605.us:                                 ; preds = %polly.cond603.loopexit.us
  %polly.access.add.call1609.us = add nuw nsw i64 %polly.indvar588.us, %polly.access.mul.call1608
  %polly.access.call1610.us = getelementptr double, double* %polly.access.cast.call1651, i64 %polly.access.add.call1609.us
  %polly.access.call1610.load.us = load double, double* %polly.access.call1610.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1466612.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1466.us, %142
  %polly.access.Packed_MemRef_call1466613.us = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466612.us
  store double %polly.access.call1610.load.us, double* %polly.access.Packed_MemRef_call1466613.us, align 8
  br label %polly.merge604.us

polly.merge604.us:                                ; preds = %polly.then605.us, %polly.cond603.loopexit.us
  %polly.indvar_next589.us = add nuw nsw i64 %polly.indvar588.us, 1
  %exitcond1002.not = icmp eq i64 %polly.indvar_next589.us, 60
  br i1 %exitcond1002.not, label %polly.loop_header614.preheader, label %polly.loop_header585.us

polly.cond603.loopexit.us:                        ; preds = %polly.loop_header592.us
  br i1 %.not854, label %polly.merge604.us, label %polly.then605.us

polly.loop_header578.split:                       ; preds = %polly.loop_header578
  br i1 %.not854, label %polly.loop_exit616, label %polly.loop_header585

polly.loop_exit616:                               ; preds = %polly.loop_exit623.loopexit.us, %polly.loop_header578.split, %polly.loop_header614.preheader
  %polly.indvar_next583 = add nuw nsw i64 %polly.indvar582, 1
  %polly.loop_cond584.not.not = icmp ult i64 %polly.indvar582, 49
  %indvars.iv.next999 = add i64 %indvars.iv998, 1
  br i1 %polly.loop_cond584.not.not, label %polly.loop_header578, label %polly.loop_exit580

polly.loop_header585:                             ; preds = %polly.loop_header578.split, %polly.loop_header585
  %polly.indvar588 = phi i64 [ %polly.indvar_next589, %polly.loop_header585 ], [ 0, %polly.loop_header578.split ]
  %polly.access.add.call1609 = add nuw nsw i64 %polly.indvar588, %polly.access.mul.call1608
  %polly.access.call1610 = getelementptr double, double* %polly.access.cast.call1651, i64 %polly.access.add.call1609
  %polly.access.call1610.load = load double, double* %polly.access.call1610, align 8, !alias.scope !87, !noalias !92
  %polly.access.mul.Packed_MemRef_call1466611 = mul nuw nsw i64 %polly.indvar588, 80
  %polly.access.add.Packed_MemRef_call1466612 = add nsw i64 %polly.access.mul.Packed_MemRef_call1466611, %142
  %polly.access.Packed_MemRef_call1466613 = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466612
  store double %polly.access.call1610.load, double* %polly.access.Packed_MemRef_call1466613, align 8
  %polly.indvar_next589 = add nuw nsw i64 %polly.indvar588, 1
  %exitcond992.not = icmp eq i64 %polly.indvar_next589, 60
  br i1 %exitcond992.not, label %polly.loop_header614.preheader, label %polly.loop_header585

polly.loop_header614.preheader:                   ; preds = %polly.loop_header585, %polly.merge604.us
  %144 = mul i64 %polly.indvar582, 480
  %145 = mul i64 %polly.indvar582, 640
  br i1 %polly.loop_guard5951098, label %polly.loop_header614.us, label %polly.loop_exit616

polly.loop_header614.us:                          ; preds = %polly.loop_header614.preheader, %polly.loop_exit623.loopexit.us
  %polly.indvar617.us = phi i64 [ %polly.indvar_next618.us, %polly.loop_exit623.loopexit.us ], [ 0, %polly.loop_header614.preheader ]
  %146 = shl nuw nsw i64 %polly.indvar617.us, 3
  %scevgep632.us = getelementptr i8, i8* %call2, i64 %146
  %polly.access.mul.Packed_MemRef_call1466628.us = mul nuw nsw i64 %polly.indvar617.us, 80
  %scevgep633.us = getelementptr i8, i8* %scevgep632.us, i64 %144
  %scevgep633634.us = bitcast i8* %scevgep633.us to double*
  %_p_scalar_635.us = load double, double* %scevgep633634.us, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1466641.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1466628.us, %142
  %polly.access.Packed_MemRef_call1466642.us = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466641.us
  %_p_scalar_643.us = load double, double* %polly.access.Packed_MemRef_call1466642.us, align 8
  br label %polly.loop_header621.us

polly.loop_header621.us:                          ; preds = %polly.loop_header621.us, %polly.loop_header614.us
  %polly.indvar625.us = phi i64 [ 0, %polly.loop_header614.us ], [ %polly.indvar_next626.us, %polly.loop_header621.us ]
  %147 = add nuw nsw i64 %polly.indvar625.us, %139
  %polly.access.add.Packed_MemRef_call1466629.us = add nuw nsw i64 %polly.indvar625.us, %polly.access.mul.Packed_MemRef_call1466628.us
  %polly.access.Packed_MemRef_call1466630.us = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466629.us
  %_p_scalar_631.us = load double, double* %polly.access.Packed_MemRef_call1466630.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_635.us, %_p_scalar_631.us
  %148 = mul nuw nsw i64 %147, 480
  %scevgep637.us = getelementptr i8, i8* %scevgep632.us, i64 %148
  %scevgep637638.us = bitcast i8* %scevgep637.us to double*
  %_p_scalar_639.us = load double, double* %scevgep637638.us, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us = fmul fast double %_p_scalar_643.us, %_p_scalar_639.us
  %149 = shl i64 %147, 3
  %150 = add i64 %149, %145
  %scevgep644.us = getelementptr i8, i8* %call, i64 %150
  %scevgep644645.us = bitcast i8* %scevgep644.us to double*
  %_p_scalar_646.us = load double, double* %scevgep644645.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_646.us
  store double %p_add42.i.us, double* %scevgep644645.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next626.us = add nuw nsw i64 %polly.indvar625.us, 1
  %exitcond1004.not = icmp eq i64 %polly.indvar625.us, %smin1003
  br i1 %exitcond1004.not, label %polly.loop_exit623.loopexit.us, label %polly.loop_header621.us

polly.loop_exit623.loopexit.us:                   ; preds = %polly.loop_header621.us
  %polly.indvar_next618.us = add nuw nsw i64 %polly.indvar617.us, 1
  %exitcond1005.not = icmp eq i64 %polly.indvar_next618.us, 60
  br i1 %exitcond1005.not, label %polly.loop_exit616, label %polly.loop_header614.us

polly.loop_header785:                             ; preds = %entry, %polly.loop_exit793
  %polly.indvar788 = phi i64 [ %polly.indvar_next789, %polly.loop_exit793 ], [ 0, %entry ]
  %151 = mul nuw nsw i64 %polly.indvar788, 640
  %152 = trunc i64 %polly.indvar788 to i32
  %broadcast.splatinsert1142 = insertelement <4 x i32> poison, i32 %152, i32 0
  %broadcast.splat1143 = shufflevector <4 x i32> %broadcast.splatinsert1142, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1132

vector.body1132:                                  ; preds = %vector.body1132, %polly.loop_header785
  %index1134 = phi i64 [ 0, %polly.loop_header785 ], [ %index.next1135, %vector.body1132 ]
  %vec.ind1140 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header785 ], [ %vec.ind.next1141, %vector.body1132 ]
  %153 = mul <4 x i32> %vec.ind1140, %broadcast.splat1143
  %154 = add <4 x i32> %153, <i32 3, i32 3, i32 3, i32 3>
  %155 = urem <4 x i32> %154, <i32 80, i32 80, i32 80, i32 80>
  %156 = sitofp <4 x i32> %155 to <4 x double>
  %157 = fmul fast <4 x double> %156, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %158 = shl i64 %index1134, 3
  %159 = add nuw nsw i64 %158, %151
  %160 = getelementptr i8, i8* %call, i64 %159
  %161 = bitcast i8* %160 to <4 x double>*
  store <4 x double> %157, <4 x double>* %161, align 8, !alias.scope !94, !noalias !96
  %index.next1135 = add i64 %index1134, 4
  %vec.ind.next1141 = add <4 x i32> %vec.ind1140, <i32 4, i32 4, i32 4, i32 4>
  %162 = icmp eq i64 %index.next1135, 32
  br i1 %162, label %polly.loop_exit793, label %vector.body1132, !llvm.loop !99

polly.loop_exit793:                               ; preds = %vector.body1132
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %exitcond1028.not = icmp eq i64 %polly.indvar_next789, 32
  br i1 %exitcond1028.not, label %polly.loop_header785.1, label %polly.loop_header785

polly.loop_header812:                             ; preds = %polly.loop_exit793.2.2, %polly.loop_exit820
  %polly.indvar815 = phi i64 [ %polly.indvar_next816, %polly.loop_exit820 ], [ 0, %polly.loop_exit793.2.2 ]
  %163 = mul nuw nsw i64 %polly.indvar815, 480
  %164 = trunc i64 %polly.indvar815 to i32
  %broadcast.splatinsert1256 = insertelement <4 x i32> poison, i32 %164, i32 0
  %broadcast.splat1257 = shufflevector <4 x i32> %broadcast.splatinsert1256, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1246

vector.body1246:                                  ; preds = %vector.body1246, %polly.loop_header812
  %index1248 = phi i64 [ 0, %polly.loop_header812 ], [ %index.next1249, %vector.body1246 ]
  %vec.ind1254 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header812 ], [ %vec.ind.next1255, %vector.body1246 ]
  %165 = mul <4 x i32> %vec.ind1254, %broadcast.splat1257
  %166 = add <4 x i32> %165, <i32 2, i32 2, i32 2, i32 2>
  %167 = urem <4 x i32> %166, <i32 60, i32 60, i32 60, i32 60>
  %168 = sitofp <4 x i32> %167 to <4 x double>
  %169 = fmul fast <4 x double> %168, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %170 = shl i64 %index1248, 3
  %171 = add i64 %170, %163
  %172 = getelementptr i8, i8* %call2, i64 %171
  %173 = bitcast i8* %172 to <4 x double>*
  store <4 x double> %169, <4 x double>* %173, align 8, !alias.scope !98, !noalias !100
  %index.next1249 = add i64 %index1248, 4
  %vec.ind.next1255 = add <4 x i32> %vec.ind1254, <i32 4, i32 4, i32 4, i32 4>
  %174 = icmp eq i64 %index.next1249, 32
  br i1 %174, label %polly.loop_exit820, label %vector.body1246, !llvm.loop !101

polly.loop_exit820:                               ; preds = %vector.body1246
  %polly.indvar_next816 = add nuw nsw i64 %polly.indvar815, 1
  %exitcond1019.not = icmp eq i64 %polly.indvar_next816, 32
  br i1 %exitcond1019.not, label %polly.loop_header812.1, label %polly.loop_header812

polly.loop_header838:                             ; preds = %polly.loop_exit820.1.2, %polly.loop_exit846
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_exit846 ], [ 0, %polly.loop_exit820.1.2 ]
  %175 = mul nuw nsw i64 %polly.indvar841, 480
  %176 = trunc i64 %polly.indvar841 to i32
  %broadcast.splatinsert1334 = insertelement <4 x i32> poison, i32 %176, i32 0
  %broadcast.splat1335 = shufflevector <4 x i32> %broadcast.splatinsert1334, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1324

vector.body1324:                                  ; preds = %vector.body1324, %polly.loop_header838
  %index1326 = phi i64 [ 0, %polly.loop_header838 ], [ %index.next1327, %vector.body1324 ]
  %vec.ind1332 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header838 ], [ %vec.ind.next1333, %vector.body1324 ]
  %177 = mul <4 x i32> %vec.ind1332, %broadcast.splat1335
  %178 = add <4 x i32> %177, <i32 1, i32 1, i32 1, i32 1>
  %179 = urem <4 x i32> %178, <i32 80, i32 80, i32 80, i32 80>
  %180 = sitofp <4 x i32> %179 to <4 x double>
  %181 = fmul fast <4 x double> %180, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %182 = shl i64 %index1326, 3
  %183 = add i64 %182, %175
  %184 = getelementptr i8, i8* %call1, i64 %183
  %185 = bitcast i8* %184 to <4 x double>*
  store <4 x double> %181, <4 x double>* %185, align 8, !alias.scope !97, !noalias !102
  %index.next1327 = add i64 %index1326, 4
  %vec.ind.next1333 = add <4 x i32> %vec.ind1332, <i32 4, i32 4, i32 4, i32 4>
  %186 = icmp eq i64 %index.next1327, 32
  br i1 %186, label %polly.loop_exit846, label %vector.body1324, !llvm.loop !103

polly.loop_exit846:                               ; preds = %vector.body1324
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %exitcond1013.not = icmp eq i64 %polly.indvar_next842, 32
  br i1 %exitcond1013.not, label %polly.loop_header838.1, label %polly.loop_header838

polly.loop_header205.1:                           ; preds = %polly.loop_exit213, %polly.loop_exit213.1
  %indvars.iv963.1 = phi i64 [ %indvars.iv.next964.1, %polly.loop_exit213.1 ], [ 50, %polly.loop_exit213 ]
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit213.1 ], [ -50, %polly.loop_exit213 ]
  %polly.indvar208.1 = phi i64 [ %polly.indvar_next209.1, %polly.loop_exit213.1 ], [ 0, %polly.loop_exit213 ]
  %187 = shl nsw i64 %polly.indvar208.1, 5
  %188 = icmp ugt i64 %187, 50
  %189 = select i1 %188, i64 %187, i64 50
  %polly.loop_guard.not.1 = icmp sgt i64 %189, 79
  br i1 %polly.loop_guard.not.1, label %polly.loop_exit213.1, label %polly.loop_header211.preheader.1

polly.loop_header211.preheader.1:                 ; preds = %polly.loop_header205.1
  %190 = add nsw i64 %189, -50
  %smax.1 = call i64 @llvm.smax.i64(i64 %indvars.iv.1, i64 0)
  %191 = add i64 %smax.1, %indvars.iv963.1
  %192 = sub nsw i64 50, %187
  %193 = add nuw nsw i64 %187, 32
  br label %polly.loop_header211.1

polly.loop_header211.1:                           ; preds = %polly.loop_exit244.1, %polly.loop_header211.preheader.1
  %indvars.iv965.1 = phi i64 [ %191, %polly.loop_header211.preheader.1 ], [ %indvars.iv.next966.1, %polly.loop_exit244.1 ]
  %polly.indvar214.1 = phi i64 [ %190, %polly.loop_header211.preheader.1 ], [ %polly.indvar_next215.1, %polly.loop_exit244.1 ]
  %smin969.1 = call i64 @llvm.smin.i64(i64 %indvars.iv965.1, i64 31)
  %194 = add nsw i64 %polly.indvar214.1, %192
  %polly.loop_guard227.11093 = icmp sgt i64 %194, -1
  %195 = add nuw nsw i64 %polly.indvar214.1, 50
  %.not.1 = icmp ult i64 %195, %193
  %polly.access.mul.call1236.1 = mul nsw i64 %195, 60
  br i1 %polly.loop_guard227.11093, label %polly.loop_header217.us.1, label %polly.loop_header211.split.1

polly.loop_header211.split.1:                     ; preds = %polly.loop_header211.1
  br i1 %.not.1, label %polly.loop_exit244.1, label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_header211.split.1, %polly.loop_header217.1
  %polly.indvar220.1 = phi i64 [ %polly.indvar_next221.1, %polly.loop_header217.1 ], [ 0, %polly.loop_header211.split.1 ]
  %polly.access.add.call1237.1 = add nuw nsw i64 %polly.indvar220.1, %polly.access.mul.call1236.1
  %polly.access.call1238.1 = getelementptr double, double* %polly.access.cast.call1651, i64 %polly.access.add.call1237.1
  %polly.access.call1238.load.1 = load double, double* %polly.access.call1238.1, align 8, !alias.scope !66, !noalias !72
  %polly.access.mul.Packed_MemRef_call1239.1 = mul nuw nsw i64 %polly.indvar220.1, 80
  %polly.access.add.Packed_MemRef_call1240.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1239.1, %194
  %polly.access.Packed_MemRef_call1241.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.1
  store double %polly.access.call1238.load.1, double* %polly.access.Packed_MemRef_call1241.1, align 8
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next221.1, 60
  br i1 %exitcond.1.not, label %polly.loop_header242.preheader.1, label %polly.loop_header217.1

polly.loop_header217.us.1:                        ; preds = %polly.loop_header211.1, %polly.merge.us.1
  %polly.indvar220.us.1 = phi i64 [ %polly.indvar_next221.us.1, %polly.merge.us.1 ], [ 0, %polly.loop_header211.1 ]
  %polly.access.mul.Packed_MemRef_call1.us.1 = mul nuw nsw i64 %polly.indvar220.us.1, 80
  br label %polly.loop_header224.us.1

polly.loop_header224.us.1:                        ; preds = %polly.loop_header224.us.1, %polly.loop_header217.us.1
  %polly.indvar228.us.1 = phi i64 [ %polly.indvar_next229.us.1, %polly.loop_header224.us.1 ], [ 0, %polly.loop_header217.us.1 ]
  %196 = add nuw nsw i64 %polly.indvar228.us.1, %187
  %polly.access.mul.call1232.us.1 = mul nuw nsw i64 %196, 60
  %polly.access.add.call1233.us.1 = add nuw nsw i64 %polly.access.mul.call1232.us.1, %polly.indvar220.us.1
  %polly.access.call1234.us.1 = getelementptr double, double* %polly.access.cast.call1651, i64 %polly.access.add.call1233.us.1
  %polly.access.call1234.load.us.1 = load double, double* %polly.access.call1234.us.1, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar228.us.1, %polly.access.mul.Packed_MemRef_call1.us.1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1234.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next229.us.1 = add nuw nsw i64 %polly.indvar228.us.1, 1
  %exitcond967.1.not = icmp eq i64 %polly.indvar228.us.1, %smin969.1
  br i1 %exitcond967.1.not, label %polly.cond.loopexit.us.1, label %polly.loop_header224.us.1

polly.cond.loopexit.us.1:                         ; preds = %polly.loop_header224.us.1
  br i1 %.not.1, label %polly.merge.us.1, label %polly.then.us.1

polly.then.us.1:                                  ; preds = %polly.cond.loopexit.us.1
  %polly.access.add.call1237.us.1 = add nuw nsw i64 %polly.indvar220.us.1, %polly.access.mul.call1236.1
  %polly.access.call1238.us.1 = getelementptr double, double* %polly.access.cast.call1651, i64 %polly.access.add.call1237.us.1
  %polly.access.call1238.load.us.1 = load double, double* %polly.access.call1238.us.1, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1240.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us.1, %194
  %polly.access.Packed_MemRef_call1241.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.us.1
  store double %polly.access.call1238.load.us.1, double* %polly.access.Packed_MemRef_call1241.us.1, align 8
  br label %polly.merge.us.1

polly.merge.us.1:                                 ; preds = %polly.then.us.1, %polly.cond.loopexit.us.1
  %polly.indvar_next221.us.1 = add nuw nsw i64 %polly.indvar220.us.1, 1
  %exitcond968.1.not = icmp eq i64 %polly.indvar_next221.us.1, 60
  br i1 %exitcond968.1.not, label %polly.loop_header242.preheader.1, label %polly.loop_header217.us.1

polly.loop_header242.preheader.1:                 ; preds = %polly.loop_header217.1, %polly.merge.us.1
  %197 = mul i64 %195, 480
  %198 = mul i64 %195, 640
  br i1 %polly.loop_guard227.11093, label %polly.loop_header242.us.1, label %polly.loop_exit244.1

polly.loop_header242.us.1:                        ; preds = %polly.loop_header242.preheader.1, %polly.loop_exit251.loopexit.us.1
  %polly.indvar245.us.1 = phi i64 [ %polly.indvar_next246.us.1, %polly.loop_exit251.loopexit.us.1 ], [ 0, %polly.loop_header242.preheader.1 ]
  %199 = shl nuw nsw i64 %polly.indvar245.us.1, 3
  %scevgep260.us.1 = getelementptr i8, i8* %call2, i64 %199
  %polly.access.mul.Packed_MemRef_call1256.us.1 = mul nuw nsw i64 %polly.indvar245.us.1, 80
  %scevgep261.us.1 = getelementptr i8, i8* %scevgep260.us.1, i64 %197
  %scevgep261262.us.1 = bitcast i8* %scevgep261.us.1 to double*
  %_p_scalar_263.us.1 = load double, double* %scevgep261262.us.1, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1269.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1256.us.1, %194
  %polly.access.Packed_MemRef_call1270.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1269.us.1
  %_p_scalar_271.us.1 = load double, double* %polly.access.Packed_MemRef_call1270.us.1, align 8
  br label %polly.loop_header249.us.1

polly.loop_header249.us.1:                        ; preds = %polly.loop_header249.us.1, %polly.loop_header242.us.1
  %polly.indvar253.us.1 = phi i64 [ 0, %polly.loop_header242.us.1 ], [ %polly.indvar_next254.us.1, %polly.loop_header249.us.1 ]
  %200 = add nuw nsw i64 %polly.indvar253.us.1, %187
  %polly.access.add.Packed_MemRef_call1257.us.1 = add nuw nsw i64 %polly.indvar253.us.1, %polly.access.mul.Packed_MemRef_call1256.us.1
  %polly.access.Packed_MemRef_call1258.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.us.1
  %_p_scalar_259.us.1 = load double, double* %polly.access.Packed_MemRef_call1258.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_263.us.1, %_p_scalar_259.us.1
  %201 = mul nuw nsw i64 %200, 480
  %scevgep265.us.1 = getelementptr i8, i8* %scevgep260.us.1, i64 %201
  %scevgep265266.us.1 = bitcast i8* %scevgep265.us.1 to double*
  %_p_scalar_267.us.1 = load double, double* %scevgep265266.us.1, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_271.us.1, %_p_scalar_267.us.1
  %202 = shl i64 %200, 3
  %203 = add i64 %202, %198
  %scevgep272.us.1 = getelementptr i8, i8* %call, i64 %203
  %scevgep272273.us.1 = bitcast i8* %scevgep272.us.1 to double*
  %_p_scalar_274.us.1 = load double, double* %scevgep272273.us.1, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_274.us.1
  store double %p_add42.i118.us.1, double* %scevgep272273.us.1, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next254.us.1 = add nuw nsw i64 %polly.indvar253.us.1, 1
  %exitcond970.1.not = icmp eq i64 %polly.indvar253.us.1, %smin969.1
  br i1 %exitcond970.1.not, label %polly.loop_exit251.loopexit.us.1, label %polly.loop_header249.us.1

polly.loop_exit251.loopexit.us.1:                 ; preds = %polly.loop_header249.us.1
  %polly.indvar_next246.us.1 = add nuw nsw i64 %polly.indvar245.us.1, 1
  %exitcond971.1.not = icmp eq i64 %polly.indvar_next246.us.1, 60
  br i1 %exitcond971.1.not, label %polly.loop_exit244.1, label %polly.loop_header242.us.1

polly.loop_exit244.1:                             ; preds = %polly.loop_exit251.loopexit.us.1, %polly.loop_header211.split.1, %polly.loop_header242.preheader.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %polly.loop_cond216.not.not.1 = icmp ult i64 %polly.indvar214.1, 29
  %indvars.iv.next966.1 = add i64 %indvars.iv965.1, 1
  br i1 %polly.loop_cond216.not.not.1, label %polly.loop_header211.1, label %polly.loop_exit213.1

polly.loop_exit213.1:                             ; preds = %polly.loop_exit244.1, %polly.loop_header205.1
  %polly.indvar_next209.1 = add nuw nsw i64 %polly.indvar208.1, 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, 32
  %indvars.iv.next964.1 = add nsw i64 %indvars.iv963.1, -32
  %exitcond972.1.not = icmp eq i64 %polly.indvar_next209.1, 3
  br i1 %exitcond972.1.not, label %polly.loop_exit207.1, label %polly.loop_header205.1

polly.loop_exit207.1:                             ; preds = %polly.loop_exit213.1
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header385.1:                           ; preds = %polly.loop_exit394, %polly.loop_exit394.1
  %indvars.iv979.1 = phi i64 [ %indvars.iv.next980.1, %polly.loop_exit394.1 ], [ 50, %polly.loop_exit394 ]
  %indvars.iv976.1 = phi i64 [ %indvars.iv.next977.1, %polly.loop_exit394.1 ], [ -50, %polly.loop_exit394 ]
  %polly.indvar388.1 = phi i64 [ %polly.indvar_next389.1, %polly.loop_exit394.1 ], [ 0, %polly.loop_exit394 ]
  %204 = shl nsw i64 %polly.indvar388.1, 5
  %205 = icmp ugt i64 %204, 50
  %206 = select i1 %205, i64 %204, i64 50
  %polly.loop_guard395.not.1 = icmp sgt i64 %206, 79
  br i1 %polly.loop_guard395.not.1, label %polly.loop_exit394.1, label %polly.loop_header392.preheader.1

polly.loop_header392.preheader.1:                 ; preds = %polly.loop_header385.1
  %207 = add nsw i64 %206, -50
  %smax978.1 = call i64 @llvm.smax.i64(i64 %indvars.iv976.1, i64 0)
  %208 = add i64 %smax978.1, %indvars.iv979.1
  %209 = sub nsw i64 50, %204
  %210 = add nuw nsw i64 %204, 32
  br label %polly.loop_header392.1

polly.loop_header392.1:                           ; preds = %polly.loop_exit430.1, %polly.loop_header392.preheader.1
  %indvars.iv981.1 = phi i64 [ %208, %polly.loop_header392.preheader.1 ], [ %indvars.iv.next982.1, %polly.loop_exit430.1 ]
  %polly.indvar396.1 = phi i64 [ %207, %polly.loop_header392.preheader.1 ], [ %polly.indvar_next397.1, %polly.loop_exit430.1 ]
  %smin986.1 = call i64 @llvm.smin.i64(i64 %indvars.iv981.1, i64 31)
  %211 = add nsw i64 %polly.indvar396.1, %209
  %polly.loop_guard409.11096 = icmp sgt i64 %211, -1
  %212 = add nuw nsw i64 %polly.indvar396.1, 50
  %.not853.1 = icmp ult i64 %212, %210
  %polly.access.mul.call1422.1 = mul nsw i64 %212, 60
  br i1 %polly.loop_guard409.11096, label %polly.loop_header399.us.1, label %polly.loop_header392.split.1

polly.loop_header392.split.1:                     ; preds = %polly.loop_header392.1
  br i1 %.not853.1, label %polly.loop_exit430.1, label %polly.loop_header399.1

polly.loop_header399.1:                           ; preds = %polly.loop_header392.split.1, %polly.loop_header399.1
  %polly.indvar402.1 = phi i64 [ %polly.indvar_next403.1, %polly.loop_header399.1 ], [ 0, %polly.loop_header392.split.1 ]
  %polly.access.add.call1423.1 = add nuw nsw i64 %polly.indvar402.1, %polly.access.mul.call1422.1
  %polly.access.call1424.1 = getelementptr double, double* %polly.access.cast.call1651, i64 %polly.access.add.call1423.1
  %polly.access.call1424.load.1 = load double, double* %polly.access.call1424.1, align 8, !alias.scope !77, !noalias !82
  %polly.access.mul.Packed_MemRef_call1280425.1 = mul nuw nsw i64 %polly.indvar402.1, 80
  %polly.access.add.Packed_MemRef_call1280426.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1280425.1, %211
  %polly.access.Packed_MemRef_call1280427.1 = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280426.1
  store double %polly.access.call1424.load.1, double* %polly.access.Packed_MemRef_call1280427.1, align 8
  %polly.indvar_next403.1 = add nuw nsw i64 %polly.indvar402.1, 1
  %exitcond975.1.not = icmp eq i64 %polly.indvar_next403.1, 60
  br i1 %exitcond975.1.not, label %polly.loop_header428.preheader.1, label %polly.loop_header399.1

polly.loop_header399.us.1:                        ; preds = %polly.loop_header392.1, %polly.merge418.us.1
  %polly.indvar402.us.1 = phi i64 [ %polly.indvar_next403.us.1, %polly.merge418.us.1 ], [ 0, %polly.loop_header392.1 ]
  %polly.access.mul.Packed_MemRef_call1280.us.1 = mul nuw nsw i64 %polly.indvar402.us.1, 80
  br label %polly.loop_header406.us.1

polly.loop_header406.us.1:                        ; preds = %polly.loop_header406.us.1, %polly.loop_header399.us.1
  %polly.indvar410.us.1 = phi i64 [ %polly.indvar_next411.us.1, %polly.loop_header406.us.1 ], [ 0, %polly.loop_header399.us.1 ]
  %213 = add nuw nsw i64 %polly.indvar410.us.1, %204
  %polly.access.mul.call1414.us.1 = mul nuw nsw i64 %213, 60
  %polly.access.add.call1415.us.1 = add nuw nsw i64 %polly.access.mul.call1414.us.1, %polly.indvar402.us.1
  %polly.access.call1416.us.1 = getelementptr double, double* %polly.access.cast.call1651, i64 %polly.access.add.call1415.us.1
  %polly.access.call1416.load.us.1 = load double, double* %polly.access.call1416.us.1, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1280.us.1 = add nuw nsw i64 %polly.indvar410.us.1, %polly.access.mul.Packed_MemRef_call1280.us.1
  %polly.access.Packed_MemRef_call1280.us.1 = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280.us.1
  store double %polly.access.call1416.load.us.1, double* %polly.access.Packed_MemRef_call1280.us.1, align 8
  %polly.indvar_next411.us.1 = add nuw nsw i64 %polly.indvar410.us.1, 1
  %exitcond984.1.not = icmp eq i64 %polly.indvar410.us.1, %smin986.1
  br i1 %exitcond984.1.not, label %polly.cond417.loopexit.us.1, label %polly.loop_header406.us.1

polly.cond417.loopexit.us.1:                      ; preds = %polly.loop_header406.us.1
  br i1 %.not853.1, label %polly.merge418.us.1, label %polly.then419.us.1

polly.then419.us.1:                               ; preds = %polly.cond417.loopexit.us.1
  %polly.access.add.call1423.us.1 = add nuw nsw i64 %polly.indvar402.us.1, %polly.access.mul.call1422.1
  %polly.access.call1424.us.1 = getelementptr double, double* %polly.access.cast.call1651, i64 %polly.access.add.call1423.us.1
  %polly.access.call1424.load.us.1 = load double, double* %polly.access.call1424.us.1, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1280426.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1280.us.1, %211
  %polly.access.Packed_MemRef_call1280427.us.1 = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280426.us.1
  store double %polly.access.call1424.load.us.1, double* %polly.access.Packed_MemRef_call1280427.us.1, align 8
  br label %polly.merge418.us.1

polly.merge418.us.1:                              ; preds = %polly.then419.us.1, %polly.cond417.loopexit.us.1
  %polly.indvar_next403.us.1 = add nuw nsw i64 %polly.indvar402.us.1, 1
  %exitcond985.1.not = icmp eq i64 %polly.indvar_next403.us.1, 60
  br i1 %exitcond985.1.not, label %polly.loop_header428.preheader.1, label %polly.loop_header399.us.1

polly.loop_header428.preheader.1:                 ; preds = %polly.loop_header399.1, %polly.merge418.us.1
  %214 = mul i64 %212, 480
  %215 = mul i64 %212, 640
  br i1 %polly.loop_guard409.11096, label %polly.loop_header428.us.1, label %polly.loop_exit430.1

polly.loop_header428.us.1:                        ; preds = %polly.loop_header428.preheader.1, %polly.loop_exit437.loopexit.us.1
  %polly.indvar431.us.1 = phi i64 [ %polly.indvar_next432.us.1, %polly.loop_exit437.loopexit.us.1 ], [ 0, %polly.loop_header428.preheader.1 ]
  %216 = shl nuw nsw i64 %polly.indvar431.us.1, 3
  %scevgep446.us.1 = getelementptr i8, i8* %call2, i64 %216
  %polly.access.mul.Packed_MemRef_call1280442.us.1 = mul nuw nsw i64 %polly.indvar431.us.1, 80
  %scevgep447.us.1 = getelementptr i8, i8* %scevgep446.us.1, i64 %214
  %scevgep447448.us.1 = bitcast i8* %scevgep447.us.1 to double*
  %_p_scalar_449.us.1 = load double, double* %scevgep447448.us.1, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1280455.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1280442.us.1, %211
  %polly.access.Packed_MemRef_call1280456.us.1 = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280455.us.1
  %_p_scalar_457.us.1 = load double, double* %polly.access.Packed_MemRef_call1280456.us.1, align 8
  br label %polly.loop_header435.us.1

polly.loop_header435.us.1:                        ; preds = %polly.loop_header435.us.1, %polly.loop_header428.us.1
  %polly.indvar439.us.1 = phi i64 [ 0, %polly.loop_header428.us.1 ], [ %polly.indvar_next440.us.1, %polly.loop_header435.us.1 ]
  %217 = add nuw nsw i64 %polly.indvar439.us.1, %204
  %polly.access.add.Packed_MemRef_call1280443.us.1 = add nuw nsw i64 %polly.indvar439.us.1, %polly.access.mul.Packed_MemRef_call1280442.us.1
  %polly.access.Packed_MemRef_call1280444.us.1 = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280443.us.1
  %_p_scalar_445.us.1 = load double, double* %polly.access.Packed_MemRef_call1280444.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_449.us.1, %_p_scalar_445.us.1
  %218 = mul nuw nsw i64 %217, 480
  %scevgep451.us.1 = getelementptr i8, i8* %scevgep446.us.1, i64 %218
  %scevgep451452.us.1 = bitcast i8* %scevgep451.us.1 to double*
  %_p_scalar_453.us.1 = load double, double* %scevgep451452.us.1, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_457.us.1, %_p_scalar_453.us.1
  %219 = shl i64 %217, 3
  %220 = add i64 %219, %215
  %scevgep458.us.1 = getelementptr i8, i8* %call, i64 %220
  %scevgep458459.us.1 = bitcast i8* %scevgep458.us.1 to double*
  %_p_scalar_460.us.1 = load double, double* %scevgep458459.us.1, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_460.us.1
  store double %p_add42.i79.us.1, double* %scevgep458459.us.1, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next440.us.1 = add nuw nsw i64 %polly.indvar439.us.1, 1
  %exitcond987.1.not = icmp eq i64 %polly.indvar439.us.1, %smin986.1
  br i1 %exitcond987.1.not, label %polly.loop_exit437.loopexit.us.1, label %polly.loop_header435.us.1

polly.loop_exit437.loopexit.us.1:                 ; preds = %polly.loop_header435.us.1
  %polly.indvar_next432.us.1 = add nuw nsw i64 %polly.indvar431.us.1, 1
  %exitcond988.1.not = icmp eq i64 %polly.indvar_next432.us.1, 60
  br i1 %exitcond988.1.not, label %polly.loop_exit430.1, label %polly.loop_header428.us.1

polly.loop_exit430.1:                             ; preds = %polly.loop_exit437.loopexit.us.1, %polly.loop_header392.split.1, %polly.loop_header428.preheader.1
  %polly.indvar_next397.1 = add nuw nsw i64 %polly.indvar396.1, 1
  %polly.loop_cond398.not.not.1 = icmp ult i64 %polly.indvar396.1, 29
  %indvars.iv.next982.1 = add i64 %indvars.iv981.1, 1
  br i1 %polly.loop_cond398.not.not.1, label %polly.loop_header392.1, label %polly.loop_exit394.1

polly.loop_exit394.1:                             ; preds = %polly.loop_exit430.1, %polly.loop_header385.1
  %polly.indvar_next389.1 = add nuw nsw i64 %polly.indvar388.1, 1
  %indvars.iv.next977.1 = add nsw i64 %indvars.iv976.1, 32
  %indvars.iv.next980.1 = add nsw i64 %indvars.iv979.1, -32
  %exitcond989.1.not = icmp eq i64 %polly.indvar_next389.1, 3
  br i1 %exitcond989.1.not, label %polly.loop_exit387.1, label %polly.loop_header385.1

polly.loop_exit387.1:                             ; preds = %polly.loop_exit394.1
  tail call void @free(i8* %malloccall279)
  br label %kernel_syr2k.exit90

polly.loop_header571.1:                           ; preds = %polly.loop_exit580, %polly.loop_exit580.1
  %indvars.iv996.1 = phi i64 [ %indvars.iv.next997.1, %polly.loop_exit580.1 ], [ 50, %polly.loop_exit580 ]
  %indvars.iv993.1 = phi i64 [ %indvars.iv.next994.1, %polly.loop_exit580.1 ], [ -50, %polly.loop_exit580 ]
  %polly.indvar574.1 = phi i64 [ %polly.indvar_next575.1, %polly.loop_exit580.1 ], [ 0, %polly.loop_exit580 ]
  %221 = shl nsw i64 %polly.indvar574.1, 5
  %222 = icmp ugt i64 %221, 50
  %223 = select i1 %222, i64 %221, i64 50
  %polly.loop_guard581.not.1 = icmp sgt i64 %223, 79
  br i1 %polly.loop_guard581.not.1, label %polly.loop_exit580.1, label %polly.loop_header578.preheader.1

polly.loop_header578.preheader.1:                 ; preds = %polly.loop_header571.1
  %224 = add nsw i64 %223, -50
  %smax995.1 = call i64 @llvm.smax.i64(i64 %indvars.iv993.1, i64 0)
  %225 = add i64 %smax995.1, %indvars.iv996.1
  %226 = sub nsw i64 50, %221
  %227 = add nuw nsw i64 %221, 32
  br label %polly.loop_header578.1

polly.loop_header578.1:                           ; preds = %polly.loop_exit616.1, %polly.loop_header578.preheader.1
  %indvars.iv998.1 = phi i64 [ %225, %polly.loop_header578.preheader.1 ], [ %indvars.iv.next999.1, %polly.loop_exit616.1 ]
  %polly.indvar582.1 = phi i64 [ %224, %polly.loop_header578.preheader.1 ], [ %polly.indvar_next583.1, %polly.loop_exit616.1 ]
  %smin1003.1 = call i64 @llvm.smin.i64(i64 %indvars.iv998.1, i64 31)
  %228 = add nsw i64 %polly.indvar582.1, %226
  %polly.loop_guard595.11099 = icmp sgt i64 %228, -1
  %229 = add nuw nsw i64 %polly.indvar582.1, 50
  %.not854.1 = icmp ult i64 %229, %227
  %polly.access.mul.call1608.1 = mul nsw i64 %229, 60
  br i1 %polly.loop_guard595.11099, label %polly.loop_header585.us.1, label %polly.loop_header578.split.1

polly.loop_header578.split.1:                     ; preds = %polly.loop_header578.1
  br i1 %.not854.1, label %polly.loop_exit616.1, label %polly.loop_header585.1

polly.loop_header585.1:                           ; preds = %polly.loop_header578.split.1, %polly.loop_header585.1
  %polly.indvar588.1 = phi i64 [ %polly.indvar_next589.1, %polly.loop_header585.1 ], [ 0, %polly.loop_header578.split.1 ]
  %polly.access.add.call1609.1 = add nuw nsw i64 %polly.indvar588.1, %polly.access.mul.call1608.1
  %polly.access.call1610.1 = getelementptr double, double* %polly.access.cast.call1651, i64 %polly.access.add.call1609.1
  %polly.access.call1610.load.1 = load double, double* %polly.access.call1610.1, align 8, !alias.scope !87, !noalias !92
  %polly.access.mul.Packed_MemRef_call1466611.1 = mul nuw nsw i64 %polly.indvar588.1, 80
  %polly.access.add.Packed_MemRef_call1466612.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1466611.1, %228
  %polly.access.Packed_MemRef_call1466613.1 = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466612.1
  store double %polly.access.call1610.load.1, double* %polly.access.Packed_MemRef_call1466613.1, align 8
  %polly.indvar_next589.1 = add nuw nsw i64 %polly.indvar588.1, 1
  %exitcond992.1.not = icmp eq i64 %polly.indvar_next589.1, 60
  br i1 %exitcond992.1.not, label %polly.loop_header614.preheader.1, label %polly.loop_header585.1

polly.loop_header585.us.1:                        ; preds = %polly.loop_header578.1, %polly.merge604.us.1
  %polly.indvar588.us.1 = phi i64 [ %polly.indvar_next589.us.1, %polly.merge604.us.1 ], [ 0, %polly.loop_header578.1 ]
  %polly.access.mul.Packed_MemRef_call1466.us.1 = mul nuw nsw i64 %polly.indvar588.us.1, 80
  br label %polly.loop_header592.us.1

polly.loop_header592.us.1:                        ; preds = %polly.loop_header592.us.1, %polly.loop_header585.us.1
  %polly.indvar596.us.1 = phi i64 [ %polly.indvar_next597.us.1, %polly.loop_header592.us.1 ], [ 0, %polly.loop_header585.us.1 ]
  %230 = add nuw nsw i64 %polly.indvar596.us.1, %221
  %polly.access.mul.call1600.us.1 = mul nuw nsw i64 %230, 60
  %polly.access.add.call1601.us.1 = add nuw nsw i64 %polly.access.mul.call1600.us.1, %polly.indvar588.us.1
  %polly.access.call1602.us.1 = getelementptr double, double* %polly.access.cast.call1651, i64 %polly.access.add.call1601.us.1
  %polly.access.call1602.load.us.1 = load double, double* %polly.access.call1602.us.1, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1466.us.1 = add nuw nsw i64 %polly.indvar596.us.1, %polly.access.mul.Packed_MemRef_call1466.us.1
  %polly.access.Packed_MemRef_call1466.us.1 = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466.us.1
  store double %polly.access.call1602.load.us.1, double* %polly.access.Packed_MemRef_call1466.us.1, align 8
  %polly.indvar_next597.us.1 = add nuw nsw i64 %polly.indvar596.us.1, 1
  %exitcond1001.1.not = icmp eq i64 %polly.indvar596.us.1, %smin1003.1
  br i1 %exitcond1001.1.not, label %polly.cond603.loopexit.us.1, label %polly.loop_header592.us.1

polly.cond603.loopexit.us.1:                      ; preds = %polly.loop_header592.us.1
  br i1 %.not854.1, label %polly.merge604.us.1, label %polly.then605.us.1

polly.then605.us.1:                               ; preds = %polly.cond603.loopexit.us.1
  %polly.access.add.call1609.us.1 = add nuw nsw i64 %polly.indvar588.us.1, %polly.access.mul.call1608.1
  %polly.access.call1610.us.1 = getelementptr double, double* %polly.access.cast.call1651, i64 %polly.access.add.call1609.us.1
  %polly.access.call1610.load.us.1 = load double, double* %polly.access.call1610.us.1, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1466612.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1466.us.1, %228
  %polly.access.Packed_MemRef_call1466613.us.1 = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466612.us.1
  store double %polly.access.call1610.load.us.1, double* %polly.access.Packed_MemRef_call1466613.us.1, align 8
  br label %polly.merge604.us.1

polly.merge604.us.1:                              ; preds = %polly.then605.us.1, %polly.cond603.loopexit.us.1
  %polly.indvar_next589.us.1 = add nuw nsw i64 %polly.indvar588.us.1, 1
  %exitcond1002.1.not = icmp eq i64 %polly.indvar_next589.us.1, 60
  br i1 %exitcond1002.1.not, label %polly.loop_header614.preheader.1, label %polly.loop_header585.us.1

polly.loop_header614.preheader.1:                 ; preds = %polly.loop_header585.1, %polly.merge604.us.1
  %231 = mul i64 %229, 480
  %232 = mul i64 %229, 640
  br i1 %polly.loop_guard595.11099, label %polly.loop_header614.us.1, label %polly.loop_exit616.1

polly.loop_header614.us.1:                        ; preds = %polly.loop_header614.preheader.1, %polly.loop_exit623.loopexit.us.1
  %polly.indvar617.us.1 = phi i64 [ %polly.indvar_next618.us.1, %polly.loop_exit623.loopexit.us.1 ], [ 0, %polly.loop_header614.preheader.1 ]
  %233 = shl nuw nsw i64 %polly.indvar617.us.1, 3
  %scevgep632.us.1 = getelementptr i8, i8* %call2, i64 %233
  %polly.access.mul.Packed_MemRef_call1466628.us.1 = mul nuw nsw i64 %polly.indvar617.us.1, 80
  %scevgep633.us.1 = getelementptr i8, i8* %scevgep632.us.1, i64 %231
  %scevgep633634.us.1 = bitcast i8* %scevgep633.us.1 to double*
  %_p_scalar_635.us.1 = load double, double* %scevgep633634.us.1, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1466641.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1466628.us.1, %228
  %polly.access.Packed_MemRef_call1466642.us.1 = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466641.us.1
  %_p_scalar_643.us.1 = load double, double* %polly.access.Packed_MemRef_call1466642.us.1, align 8
  br label %polly.loop_header621.us.1

polly.loop_header621.us.1:                        ; preds = %polly.loop_header621.us.1, %polly.loop_header614.us.1
  %polly.indvar625.us.1 = phi i64 [ 0, %polly.loop_header614.us.1 ], [ %polly.indvar_next626.us.1, %polly.loop_header621.us.1 ]
  %234 = add nuw nsw i64 %polly.indvar625.us.1, %221
  %polly.access.add.Packed_MemRef_call1466629.us.1 = add nuw nsw i64 %polly.indvar625.us.1, %polly.access.mul.Packed_MemRef_call1466628.us.1
  %polly.access.Packed_MemRef_call1466630.us.1 = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466629.us.1
  %_p_scalar_631.us.1 = load double, double* %polly.access.Packed_MemRef_call1466630.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_635.us.1, %_p_scalar_631.us.1
  %235 = mul nuw nsw i64 %234, 480
  %scevgep637.us.1 = getelementptr i8, i8* %scevgep632.us.1, i64 %235
  %scevgep637638.us.1 = bitcast i8* %scevgep637.us.1 to double*
  %_p_scalar_639.us.1 = load double, double* %scevgep637638.us.1, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_643.us.1, %_p_scalar_639.us.1
  %236 = shl i64 %234, 3
  %237 = add i64 %236, %232
  %scevgep644.us.1 = getelementptr i8, i8* %call, i64 %237
  %scevgep644645.us.1 = bitcast i8* %scevgep644.us.1 to double*
  %_p_scalar_646.us.1 = load double, double* %scevgep644645.us.1, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_646.us.1
  store double %p_add42.i.us.1, double* %scevgep644645.us.1, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next626.us.1 = add nuw nsw i64 %polly.indvar625.us.1, 1
  %exitcond1004.1.not = icmp eq i64 %polly.indvar625.us.1, %smin1003.1
  br i1 %exitcond1004.1.not, label %polly.loop_exit623.loopexit.us.1, label %polly.loop_header621.us.1

polly.loop_exit623.loopexit.us.1:                 ; preds = %polly.loop_header621.us.1
  %polly.indvar_next618.us.1 = add nuw nsw i64 %polly.indvar617.us.1, 1
  %exitcond1005.1.not = icmp eq i64 %polly.indvar_next618.us.1, 60
  br i1 %exitcond1005.1.not, label %polly.loop_exit616.1, label %polly.loop_header614.us.1

polly.loop_exit616.1:                             ; preds = %polly.loop_exit623.loopexit.us.1, %polly.loop_header578.split.1, %polly.loop_header614.preheader.1
  %polly.indvar_next583.1 = add nuw nsw i64 %polly.indvar582.1, 1
  %polly.loop_cond584.not.not.1 = icmp ult i64 %polly.indvar582.1, 29
  %indvars.iv.next999.1 = add i64 %indvars.iv998.1, 1
  br i1 %polly.loop_cond584.not.not.1, label %polly.loop_header578.1, label %polly.loop_exit580.1

polly.loop_exit580.1:                             ; preds = %polly.loop_exit616.1, %polly.loop_header571.1
  %polly.indvar_next575.1 = add nuw nsw i64 %polly.indvar574.1, 1
  %indvars.iv.next994.1 = add nsw i64 %indvars.iv993.1, 32
  %indvars.iv.next997.1 = add nsw i64 %indvars.iv996.1, -32
  %exitcond1006.1.not = icmp eq i64 %polly.indvar_next575.1, 3
  br i1 %exitcond1006.1.not, label %polly.loop_exit573.1, label %polly.loop_header571.1

polly.loop_exit573.1:                             ; preds = %polly.loop_exit580.1
  tail call void @free(i8* %malloccall465)
  br label %kernel_syr2k.exit

polly.loop_header838.1:                           ; preds = %polly.loop_exit846, %polly.loop_exit846.1
  %polly.indvar841.1 = phi i64 [ %polly.indvar_next842.1, %polly.loop_exit846.1 ], [ 0, %polly.loop_exit846 ]
  %238 = mul nuw nsw i64 %polly.indvar841.1, 480
  %239 = trunc i64 %polly.indvar841.1 to i32
  %broadcast.splatinsert1346 = insertelement <4 x i32> poison, i32 %239, i32 0
  %broadcast.splat1347 = shufflevector <4 x i32> %broadcast.splatinsert1346, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1338

vector.body1338:                                  ; preds = %vector.body1338, %polly.loop_header838.1
  %index1340 = phi i64 [ 0, %polly.loop_header838.1 ], [ %index.next1341, %vector.body1338 ]
  %vec.ind1344 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header838.1 ], [ %vec.ind.next1345, %vector.body1338 ]
  %240 = add nuw nsw <4 x i64> %vec.ind1344, <i64 32, i64 32, i64 32, i64 32>
  %241 = trunc <4 x i64> %240 to <4 x i32>
  %242 = mul <4 x i32> %broadcast.splat1347, %241
  %243 = add <4 x i32> %242, <i32 1, i32 1, i32 1, i32 1>
  %244 = urem <4 x i32> %243, <i32 80, i32 80, i32 80, i32 80>
  %245 = sitofp <4 x i32> %244 to <4 x double>
  %246 = fmul fast <4 x double> %245, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %247 = extractelement <4 x i64> %240, i32 0
  %248 = shl i64 %247, 3
  %249 = add i64 %248, %238
  %250 = getelementptr i8, i8* %call1, i64 %249
  %251 = bitcast i8* %250 to <4 x double>*
  store <4 x double> %246, <4 x double>* %251, align 8, !alias.scope !97, !noalias !102
  %index.next1341 = add i64 %index1340, 4
  %vec.ind.next1345 = add <4 x i64> %vec.ind1344, <i64 4, i64 4, i64 4, i64 4>
  %252 = icmp eq i64 %index.next1341, 28
  br i1 %252, label %polly.loop_exit846.1, label %vector.body1338, !llvm.loop !104

polly.loop_exit846.1:                             ; preds = %vector.body1338
  %polly.indvar_next842.1 = add nuw nsw i64 %polly.indvar841.1, 1
  %exitcond1013.1.not = icmp eq i64 %polly.indvar_next842.1, 32
  br i1 %exitcond1013.1.not, label %polly.loop_header838.11036, label %polly.loop_header838.1

polly.loop_header838.11036:                       ; preds = %polly.loop_exit846.1, %polly.loop_exit846.11047
  %polly.indvar841.11035 = phi i64 [ %polly.indvar_next842.11045, %polly.loop_exit846.11047 ], [ 0, %polly.loop_exit846.1 ]
  %253 = add nuw nsw i64 %polly.indvar841.11035, 32
  %254 = mul nuw nsw i64 %253, 480
  %255 = trunc i64 %253 to i32
  %broadcast.splatinsert1360 = insertelement <4 x i32> poison, i32 %255, i32 0
  %broadcast.splat1361 = shufflevector <4 x i32> %broadcast.splatinsert1360, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1350

vector.body1350:                                  ; preds = %vector.body1350, %polly.loop_header838.11036
  %index1352 = phi i64 [ 0, %polly.loop_header838.11036 ], [ %index.next1353, %vector.body1350 ]
  %vec.ind1358 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header838.11036 ], [ %vec.ind.next1359, %vector.body1350 ]
  %256 = mul <4 x i32> %vec.ind1358, %broadcast.splat1361
  %257 = add <4 x i32> %256, <i32 1, i32 1, i32 1, i32 1>
  %258 = urem <4 x i32> %257, <i32 80, i32 80, i32 80, i32 80>
  %259 = sitofp <4 x i32> %258 to <4 x double>
  %260 = fmul fast <4 x double> %259, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %261 = shl i64 %index1352, 3
  %262 = add i64 %261, %254
  %263 = getelementptr i8, i8* %call1, i64 %262
  %264 = bitcast i8* %263 to <4 x double>*
  store <4 x double> %260, <4 x double>* %264, align 8, !alias.scope !97, !noalias !102
  %index.next1353 = add i64 %index1352, 4
  %vec.ind.next1359 = add <4 x i32> %vec.ind1358, <i32 4, i32 4, i32 4, i32 4>
  %265 = icmp eq i64 %index.next1353, 32
  br i1 %265, label %polly.loop_exit846.11047, label %vector.body1350, !llvm.loop !105

polly.loop_exit846.11047:                         ; preds = %vector.body1350
  %polly.indvar_next842.11045 = add nuw nsw i64 %polly.indvar841.11035, 1
  %exitcond1013.11046.not = icmp eq i64 %polly.indvar_next842.11045, 32
  br i1 %exitcond1013.11046.not, label %polly.loop_header838.1.1, label %polly.loop_header838.11036

polly.loop_header838.1.1:                         ; preds = %polly.loop_exit846.11047, %polly.loop_exit846.1.1
  %polly.indvar841.1.1 = phi i64 [ %polly.indvar_next842.1.1, %polly.loop_exit846.1.1 ], [ 0, %polly.loop_exit846.11047 ]
  %266 = add nuw nsw i64 %polly.indvar841.1.1, 32
  %267 = mul nuw nsw i64 %266, 480
  %268 = trunc i64 %266 to i32
  %broadcast.splatinsert1372 = insertelement <4 x i32> poison, i32 %268, i32 0
  %broadcast.splat1373 = shufflevector <4 x i32> %broadcast.splatinsert1372, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1364

vector.body1364:                                  ; preds = %vector.body1364, %polly.loop_header838.1.1
  %index1366 = phi i64 [ 0, %polly.loop_header838.1.1 ], [ %index.next1367, %vector.body1364 ]
  %vec.ind1370 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header838.1.1 ], [ %vec.ind.next1371, %vector.body1364 ]
  %269 = add nuw nsw <4 x i64> %vec.ind1370, <i64 32, i64 32, i64 32, i64 32>
  %270 = trunc <4 x i64> %269 to <4 x i32>
  %271 = mul <4 x i32> %broadcast.splat1373, %270
  %272 = add <4 x i32> %271, <i32 1, i32 1, i32 1, i32 1>
  %273 = urem <4 x i32> %272, <i32 80, i32 80, i32 80, i32 80>
  %274 = sitofp <4 x i32> %273 to <4 x double>
  %275 = fmul fast <4 x double> %274, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %276 = extractelement <4 x i64> %269, i32 0
  %277 = shl i64 %276, 3
  %278 = add i64 %277, %267
  %279 = getelementptr i8, i8* %call1, i64 %278
  %280 = bitcast i8* %279 to <4 x double>*
  store <4 x double> %275, <4 x double>* %280, align 8, !alias.scope !97, !noalias !102
  %index.next1367 = add i64 %index1366, 4
  %vec.ind.next1371 = add <4 x i64> %vec.ind1370, <i64 4, i64 4, i64 4, i64 4>
  %281 = icmp eq i64 %index.next1367, 28
  br i1 %281, label %polly.loop_exit846.1.1, label %vector.body1364, !llvm.loop !106

polly.loop_exit846.1.1:                           ; preds = %vector.body1364
  %polly.indvar_next842.1.1 = add nuw nsw i64 %polly.indvar841.1.1, 1
  %exitcond1013.1.1.not = icmp eq i64 %polly.indvar_next842.1.1, 32
  br i1 %exitcond1013.1.1.not, label %polly.loop_header838.2, label %polly.loop_header838.1.1

polly.loop_header838.2:                           ; preds = %polly.loop_exit846.1.1, %polly.loop_exit846.2
  %polly.indvar841.2 = phi i64 [ %polly.indvar_next842.2, %polly.loop_exit846.2 ], [ 0, %polly.loop_exit846.1.1 ]
  %282 = add nuw nsw i64 %polly.indvar841.2, 64
  %283 = mul nuw nsw i64 %282, 480
  %284 = trunc i64 %282 to i32
  %broadcast.splatinsert1386 = insertelement <4 x i32> poison, i32 %284, i32 0
  %broadcast.splat1387 = shufflevector <4 x i32> %broadcast.splatinsert1386, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1376

vector.body1376:                                  ; preds = %vector.body1376, %polly.loop_header838.2
  %index1378 = phi i64 [ 0, %polly.loop_header838.2 ], [ %index.next1379, %vector.body1376 ]
  %vec.ind1384 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header838.2 ], [ %vec.ind.next1385, %vector.body1376 ]
  %285 = mul <4 x i32> %vec.ind1384, %broadcast.splat1387
  %286 = add <4 x i32> %285, <i32 1, i32 1, i32 1, i32 1>
  %287 = urem <4 x i32> %286, <i32 80, i32 80, i32 80, i32 80>
  %288 = sitofp <4 x i32> %287 to <4 x double>
  %289 = fmul fast <4 x double> %288, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %290 = shl i64 %index1378, 3
  %291 = add i64 %290, %283
  %292 = getelementptr i8, i8* %call1, i64 %291
  %293 = bitcast i8* %292 to <4 x double>*
  store <4 x double> %289, <4 x double>* %293, align 8, !alias.scope !97, !noalias !102
  %index.next1379 = add i64 %index1378, 4
  %vec.ind.next1385 = add <4 x i32> %vec.ind1384, <i32 4, i32 4, i32 4, i32 4>
  %294 = icmp eq i64 %index.next1379, 32
  br i1 %294, label %polly.loop_exit846.2, label %vector.body1376, !llvm.loop !107

polly.loop_exit846.2:                             ; preds = %vector.body1376
  %polly.indvar_next842.2 = add nuw nsw i64 %polly.indvar841.2, 1
  %exitcond1013.2.not = icmp eq i64 %polly.indvar_next842.2, 16
  br i1 %exitcond1013.2.not, label %polly.loop_header838.1.2, label %polly.loop_header838.2

polly.loop_header838.1.2:                         ; preds = %polly.loop_exit846.2, %polly.loop_exit846.1.2
  %polly.indvar841.1.2 = phi i64 [ %polly.indvar_next842.1.2, %polly.loop_exit846.1.2 ], [ 0, %polly.loop_exit846.2 ]
  %295 = add nuw nsw i64 %polly.indvar841.1.2, 64
  %296 = mul nuw nsw i64 %295, 480
  %297 = trunc i64 %295 to i32
  %broadcast.splatinsert1398 = insertelement <4 x i32> poison, i32 %297, i32 0
  %broadcast.splat1399 = shufflevector <4 x i32> %broadcast.splatinsert1398, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1390

vector.body1390:                                  ; preds = %vector.body1390, %polly.loop_header838.1.2
  %index1392 = phi i64 [ 0, %polly.loop_header838.1.2 ], [ %index.next1393, %vector.body1390 ]
  %vec.ind1396 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header838.1.2 ], [ %vec.ind.next1397, %vector.body1390 ]
  %298 = add nuw nsw <4 x i64> %vec.ind1396, <i64 32, i64 32, i64 32, i64 32>
  %299 = trunc <4 x i64> %298 to <4 x i32>
  %300 = mul <4 x i32> %broadcast.splat1399, %299
  %301 = add <4 x i32> %300, <i32 1, i32 1, i32 1, i32 1>
  %302 = urem <4 x i32> %301, <i32 80, i32 80, i32 80, i32 80>
  %303 = sitofp <4 x i32> %302 to <4 x double>
  %304 = fmul fast <4 x double> %303, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %305 = extractelement <4 x i64> %298, i32 0
  %306 = shl i64 %305, 3
  %307 = add i64 %306, %296
  %308 = getelementptr i8, i8* %call1, i64 %307
  %309 = bitcast i8* %308 to <4 x double>*
  store <4 x double> %304, <4 x double>* %309, align 8, !alias.scope !97, !noalias !102
  %index.next1393 = add i64 %index1392, 4
  %vec.ind.next1397 = add <4 x i64> %vec.ind1396, <i64 4, i64 4, i64 4, i64 4>
  %310 = icmp eq i64 %index.next1393, 28
  br i1 %310, label %polly.loop_exit846.1.2, label %vector.body1390, !llvm.loop !108

polly.loop_exit846.1.2:                           ; preds = %vector.body1390
  %polly.indvar_next842.1.2 = add nuw nsw i64 %polly.indvar841.1.2, 1
  %exitcond1013.1.2.not = icmp eq i64 %polly.indvar_next842.1.2, 16
  br i1 %exitcond1013.1.2.not, label %init_array.exit, label %polly.loop_header838.1.2

polly.loop_header812.1:                           ; preds = %polly.loop_exit820, %polly.loop_exit820.1
  %polly.indvar815.1 = phi i64 [ %polly.indvar_next816.1, %polly.loop_exit820.1 ], [ 0, %polly.loop_exit820 ]
  %311 = mul nuw nsw i64 %polly.indvar815.1, 480
  %312 = trunc i64 %polly.indvar815.1 to i32
  %broadcast.splatinsert1268 = insertelement <4 x i32> poison, i32 %312, i32 0
  %broadcast.splat1269 = shufflevector <4 x i32> %broadcast.splatinsert1268, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1260

vector.body1260:                                  ; preds = %vector.body1260, %polly.loop_header812.1
  %index1262 = phi i64 [ 0, %polly.loop_header812.1 ], [ %index.next1263, %vector.body1260 ]
  %vec.ind1266 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header812.1 ], [ %vec.ind.next1267, %vector.body1260 ]
  %313 = add nuw nsw <4 x i64> %vec.ind1266, <i64 32, i64 32, i64 32, i64 32>
  %314 = trunc <4 x i64> %313 to <4 x i32>
  %315 = mul <4 x i32> %broadcast.splat1269, %314
  %316 = add <4 x i32> %315, <i32 2, i32 2, i32 2, i32 2>
  %317 = urem <4 x i32> %316, <i32 60, i32 60, i32 60, i32 60>
  %318 = sitofp <4 x i32> %317 to <4 x double>
  %319 = fmul fast <4 x double> %318, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %320 = extractelement <4 x i64> %313, i32 0
  %321 = shl i64 %320, 3
  %322 = add i64 %321, %311
  %323 = getelementptr i8, i8* %call2, i64 %322
  %324 = bitcast i8* %323 to <4 x double>*
  store <4 x double> %319, <4 x double>* %324, align 8, !alias.scope !98, !noalias !100
  %index.next1263 = add i64 %index1262, 4
  %vec.ind.next1267 = add <4 x i64> %vec.ind1266, <i64 4, i64 4, i64 4, i64 4>
  %325 = icmp eq i64 %index.next1263, 28
  br i1 %325, label %polly.loop_exit820.1, label %vector.body1260, !llvm.loop !109

polly.loop_exit820.1:                             ; preds = %vector.body1260
  %polly.indvar_next816.1 = add nuw nsw i64 %polly.indvar815.1, 1
  %exitcond1019.1.not = icmp eq i64 %polly.indvar_next816.1, 32
  br i1 %exitcond1019.1.not, label %polly.loop_header812.11050, label %polly.loop_header812.1

polly.loop_header812.11050:                       ; preds = %polly.loop_exit820.1, %polly.loop_exit820.11061
  %polly.indvar815.11049 = phi i64 [ %polly.indvar_next816.11059, %polly.loop_exit820.11061 ], [ 0, %polly.loop_exit820.1 ]
  %326 = add nuw nsw i64 %polly.indvar815.11049, 32
  %327 = mul nuw nsw i64 %326, 480
  %328 = trunc i64 %326 to i32
  %broadcast.splatinsert1282 = insertelement <4 x i32> poison, i32 %328, i32 0
  %broadcast.splat1283 = shufflevector <4 x i32> %broadcast.splatinsert1282, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1272

vector.body1272:                                  ; preds = %vector.body1272, %polly.loop_header812.11050
  %index1274 = phi i64 [ 0, %polly.loop_header812.11050 ], [ %index.next1275, %vector.body1272 ]
  %vec.ind1280 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header812.11050 ], [ %vec.ind.next1281, %vector.body1272 ]
  %329 = mul <4 x i32> %vec.ind1280, %broadcast.splat1283
  %330 = add <4 x i32> %329, <i32 2, i32 2, i32 2, i32 2>
  %331 = urem <4 x i32> %330, <i32 60, i32 60, i32 60, i32 60>
  %332 = sitofp <4 x i32> %331 to <4 x double>
  %333 = fmul fast <4 x double> %332, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %334 = shl i64 %index1274, 3
  %335 = add i64 %334, %327
  %336 = getelementptr i8, i8* %call2, i64 %335
  %337 = bitcast i8* %336 to <4 x double>*
  store <4 x double> %333, <4 x double>* %337, align 8, !alias.scope !98, !noalias !100
  %index.next1275 = add i64 %index1274, 4
  %vec.ind.next1281 = add <4 x i32> %vec.ind1280, <i32 4, i32 4, i32 4, i32 4>
  %338 = icmp eq i64 %index.next1275, 32
  br i1 %338, label %polly.loop_exit820.11061, label %vector.body1272, !llvm.loop !110

polly.loop_exit820.11061:                         ; preds = %vector.body1272
  %polly.indvar_next816.11059 = add nuw nsw i64 %polly.indvar815.11049, 1
  %exitcond1019.11060.not = icmp eq i64 %polly.indvar_next816.11059, 32
  br i1 %exitcond1019.11060.not, label %polly.loop_header812.1.1, label %polly.loop_header812.11050

polly.loop_header812.1.1:                         ; preds = %polly.loop_exit820.11061, %polly.loop_exit820.1.1
  %polly.indvar815.1.1 = phi i64 [ %polly.indvar_next816.1.1, %polly.loop_exit820.1.1 ], [ 0, %polly.loop_exit820.11061 ]
  %339 = add nuw nsw i64 %polly.indvar815.1.1, 32
  %340 = mul nuw nsw i64 %339, 480
  %341 = trunc i64 %339 to i32
  %broadcast.splatinsert1294 = insertelement <4 x i32> poison, i32 %341, i32 0
  %broadcast.splat1295 = shufflevector <4 x i32> %broadcast.splatinsert1294, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1286

vector.body1286:                                  ; preds = %vector.body1286, %polly.loop_header812.1.1
  %index1288 = phi i64 [ 0, %polly.loop_header812.1.1 ], [ %index.next1289, %vector.body1286 ]
  %vec.ind1292 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header812.1.1 ], [ %vec.ind.next1293, %vector.body1286 ]
  %342 = add nuw nsw <4 x i64> %vec.ind1292, <i64 32, i64 32, i64 32, i64 32>
  %343 = trunc <4 x i64> %342 to <4 x i32>
  %344 = mul <4 x i32> %broadcast.splat1295, %343
  %345 = add <4 x i32> %344, <i32 2, i32 2, i32 2, i32 2>
  %346 = urem <4 x i32> %345, <i32 60, i32 60, i32 60, i32 60>
  %347 = sitofp <4 x i32> %346 to <4 x double>
  %348 = fmul fast <4 x double> %347, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %349 = extractelement <4 x i64> %342, i32 0
  %350 = shl i64 %349, 3
  %351 = add i64 %350, %340
  %352 = getelementptr i8, i8* %call2, i64 %351
  %353 = bitcast i8* %352 to <4 x double>*
  store <4 x double> %348, <4 x double>* %353, align 8, !alias.scope !98, !noalias !100
  %index.next1289 = add i64 %index1288, 4
  %vec.ind.next1293 = add <4 x i64> %vec.ind1292, <i64 4, i64 4, i64 4, i64 4>
  %354 = icmp eq i64 %index.next1289, 28
  br i1 %354, label %polly.loop_exit820.1.1, label %vector.body1286, !llvm.loop !111

polly.loop_exit820.1.1:                           ; preds = %vector.body1286
  %polly.indvar_next816.1.1 = add nuw nsw i64 %polly.indvar815.1.1, 1
  %exitcond1019.1.1.not = icmp eq i64 %polly.indvar_next816.1.1, 32
  br i1 %exitcond1019.1.1.not, label %polly.loop_header812.2, label %polly.loop_header812.1.1

polly.loop_header812.2:                           ; preds = %polly.loop_exit820.1.1, %polly.loop_exit820.2
  %polly.indvar815.2 = phi i64 [ %polly.indvar_next816.2, %polly.loop_exit820.2 ], [ 0, %polly.loop_exit820.1.1 ]
  %355 = add nuw nsw i64 %polly.indvar815.2, 64
  %356 = mul nuw nsw i64 %355, 480
  %357 = trunc i64 %355 to i32
  %broadcast.splatinsert1308 = insertelement <4 x i32> poison, i32 %357, i32 0
  %broadcast.splat1309 = shufflevector <4 x i32> %broadcast.splatinsert1308, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1298

vector.body1298:                                  ; preds = %vector.body1298, %polly.loop_header812.2
  %index1300 = phi i64 [ 0, %polly.loop_header812.2 ], [ %index.next1301, %vector.body1298 ]
  %vec.ind1306 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header812.2 ], [ %vec.ind.next1307, %vector.body1298 ]
  %358 = mul <4 x i32> %vec.ind1306, %broadcast.splat1309
  %359 = add <4 x i32> %358, <i32 2, i32 2, i32 2, i32 2>
  %360 = urem <4 x i32> %359, <i32 60, i32 60, i32 60, i32 60>
  %361 = sitofp <4 x i32> %360 to <4 x double>
  %362 = fmul fast <4 x double> %361, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %363 = shl i64 %index1300, 3
  %364 = add i64 %363, %356
  %365 = getelementptr i8, i8* %call2, i64 %364
  %366 = bitcast i8* %365 to <4 x double>*
  store <4 x double> %362, <4 x double>* %366, align 8, !alias.scope !98, !noalias !100
  %index.next1301 = add i64 %index1300, 4
  %vec.ind.next1307 = add <4 x i32> %vec.ind1306, <i32 4, i32 4, i32 4, i32 4>
  %367 = icmp eq i64 %index.next1301, 32
  br i1 %367, label %polly.loop_exit820.2, label %vector.body1298, !llvm.loop !112

polly.loop_exit820.2:                             ; preds = %vector.body1298
  %polly.indvar_next816.2 = add nuw nsw i64 %polly.indvar815.2, 1
  %exitcond1019.2.not = icmp eq i64 %polly.indvar_next816.2, 16
  br i1 %exitcond1019.2.not, label %polly.loop_header812.1.2, label %polly.loop_header812.2

polly.loop_header812.1.2:                         ; preds = %polly.loop_exit820.2, %polly.loop_exit820.1.2
  %polly.indvar815.1.2 = phi i64 [ %polly.indvar_next816.1.2, %polly.loop_exit820.1.2 ], [ 0, %polly.loop_exit820.2 ]
  %368 = add nuw nsw i64 %polly.indvar815.1.2, 64
  %369 = mul nuw nsw i64 %368, 480
  %370 = trunc i64 %368 to i32
  %broadcast.splatinsert1320 = insertelement <4 x i32> poison, i32 %370, i32 0
  %broadcast.splat1321 = shufflevector <4 x i32> %broadcast.splatinsert1320, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1312

vector.body1312:                                  ; preds = %vector.body1312, %polly.loop_header812.1.2
  %index1314 = phi i64 [ 0, %polly.loop_header812.1.2 ], [ %index.next1315, %vector.body1312 ]
  %vec.ind1318 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header812.1.2 ], [ %vec.ind.next1319, %vector.body1312 ]
  %371 = add nuw nsw <4 x i64> %vec.ind1318, <i64 32, i64 32, i64 32, i64 32>
  %372 = trunc <4 x i64> %371 to <4 x i32>
  %373 = mul <4 x i32> %broadcast.splat1321, %372
  %374 = add <4 x i32> %373, <i32 2, i32 2, i32 2, i32 2>
  %375 = urem <4 x i32> %374, <i32 60, i32 60, i32 60, i32 60>
  %376 = sitofp <4 x i32> %375 to <4 x double>
  %377 = fmul fast <4 x double> %376, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %378 = extractelement <4 x i64> %371, i32 0
  %379 = shl i64 %378, 3
  %380 = add i64 %379, %369
  %381 = getelementptr i8, i8* %call2, i64 %380
  %382 = bitcast i8* %381 to <4 x double>*
  store <4 x double> %377, <4 x double>* %382, align 8, !alias.scope !98, !noalias !100
  %index.next1315 = add i64 %index1314, 4
  %vec.ind.next1319 = add <4 x i64> %vec.ind1318, <i64 4, i64 4, i64 4, i64 4>
  %383 = icmp eq i64 %index.next1315, 28
  br i1 %383, label %polly.loop_exit820.1.2, label %vector.body1312, !llvm.loop !113

polly.loop_exit820.1.2:                           ; preds = %vector.body1312
  %polly.indvar_next816.1.2 = add nuw nsw i64 %polly.indvar815.1.2, 1
  %exitcond1019.1.2.not = icmp eq i64 %polly.indvar_next816.1.2, 16
  br i1 %exitcond1019.1.2.not, label %polly.loop_header838, label %polly.loop_header812.1.2

polly.loop_header785.1:                           ; preds = %polly.loop_exit793, %polly.loop_exit793.1
  %polly.indvar788.1 = phi i64 [ %polly.indvar_next789.1, %polly.loop_exit793.1 ], [ 0, %polly.loop_exit793 ]
  %384 = mul nuw nsw i64 %polly.indvar788.1, 640
  %385 = trunc i64 %polly.indvar788.1 to i32
  %broadcast.splatinsert1154 = insertelement <4 x i32> poison, i32 %385, i32 0
  %broadcast.splat1155 = shufflevector <4 x i32> %broadcast.splatinsert1154, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1146

vector.body1146:                                  ; preds = %vector.body1146, %polly.loop_header785.1
  %index1148 = phi i64 [ 0, %polly.loop_header785.1 ], [ %index.next1149, %vector.body1146 ]
  %vec.ind1152 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header785.1 ], [ %vec.ind.next1153, %vector.body1146 ]
  %386 = add nuw nsw <4 x i64> %vec.ind1152, <i64 32, i64 32, i64 32, i64 32>
  %387 = trunc <4 x i64> %386 to <4 x i32>
  %388 = mul <4 x i32> %broadcast.splat1155, %387
  %389 = add <4 x i32> %388, <i32 3, i32 3, i32 3, i32 3>
  %390 = urem <4 x i32> %389, <i32 80, i32 80, i32 80, i32 80>
  %391 = sitofp <4 x i32> %390 to <4 x double>
  %392 = fmul fast <4 x double> %391, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %393 = extractelement <4 x i64> %386, i32 0
  %394 = shl i64 %393, 3
  %395 = add nuw nsw i64 %394, %384
  %396 = getelementptr i8, i8* %call, i64 %395
  %397 = bitcast i8* %396 to <4 x double>*
  store <4 x double> %392, <4 x double>* %397, align 8, !alias.scope !94, !noalias !96
  %index.next1149 = add i64 %index1148, 4
  %vec.ind.next1153 = add <4 x i64> %vec.ind1152, <i64 4, i64 4, i64 4, i64 4>
  %398 = icmp eq i64 %index.next1149, 32
  br i1 %398, label %polly.loop_exit793.1, label %vector.body1146, !llvm.loop !114

polly.loop_exit793.1:                             ; preds = %vector.body1146
  %polly.indvar_next789.1 = add nuw nsw i64 %polly.indvar788.1, 1
  %exitcond1028.1.not = icmp eq i64 %polly.indvar_next789.1, 32
  br i1 %exitcond1028.1.not, label %polly.loop_header785.2, label %polly.loop_header785.1

polly.loop_header785.2:                           ; preds = %polly.loop_exit793.1, %polly.loop_exit793.2
  %polly.indvar788.2 = phi i64 [ %polly.indvar_next789.2, %polly.loop_exit793.2 ], [ 0, %polly.loop_exit793.1 ]
  %399 = mul nuw nsw i64 %polly.indvar788.2, 640
  %400 = trunc i64 %polly.indvar788.2 to i32
  %broadcast.splatinsert1166 = insertelement <4 x i32> poison, i32 %400, i32 0
  %broadcast.splat1167 = shufflevector <4 x i32> %broadcast.splatinsert1166, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1158

vector.body1158:                                  ; preds = %vector.body1158, %polly.loop_header785.2
  %index1160 = phi i64 [ 0, %polly.loop_header785.2 ], [ %index.next1161, %vector.body1158 ]
  %vec.ind1164 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header785.2 ], [ %vec.ind.next1165, %vector.body1158 ]
  %401 = add nuw nsw <4 x i64> %vec.ind1164, <i64 64, i64 64, i64 64, i64 64>
  %402 = trunc <4 x i64> %401 to <4 x i32>
  %403 = mul <4 x i32> %broadcast.splat1167, %402
  %404 = add <4 x i32> %403, <i32 3, i32 3, i32 3, i32 3>
  %405 = urem <4 x i32> %404, <i32 80, i32 80, i32 80, i32 80>
  %406 = sitofp <4 x i32> %405 to <4 x double>
  %407 = fmul fast <4 x double> %406, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %408 = extractelement <4 x i64> %401, i32 0
  %409 = shl i64 %408, 3
  %410 = add nuw nsw i64 %409, %399
  %411 = getelementptr i8, i8* %call, i64 %410
  %412 = bitcast i8* %411 to <4 x double>*
  store <4 x double> %407, <4 x double>* %412, align 8, !alias.scope !94, !noalias !96
  %index.next1161 = add i64 %index1160, 4
  %vec.ind.next1165 = add <4 x i64> %vec.ind1164, <i64 4, i64 4, i64 4, i64 4>
  %413 = icmp eq i64 %index.next1161, 16
  br i1 %413, label %polly.loop_exit793.2, label %vector.body1158, !llvm.loop !115

polly.loop_exit793.2:                             ; preds = %vector.body1158
  %polly.indvar_next789.2 = add nuw nsw i64 %polly.indvar788.2, 1
  %exitcond1028.2.not = icmp eq i64 %polly.indvar_next789.2, 32
  br i1 %exitcond1028.2.not, label %polly.loop_header785.11064, label %polly.loop_header785.2

polly.loop_header785.11064:                       ; preds = %polly.loop_exit793.2, %polly.loop_exit793.11075
  %polly.indvar788.11063 = phi i64 [ %polly.indvar_next789.11073, %polly.loop_exit793.11075 ], [ 0, %polly.loop_exit793.2 ]
  %414 = add nuw nsw i64 %polly.indvar788.11063, 32
  %415 = mul nuw nsw i64 %414, 640
  %416 = trunc i64 %414 to i32
  %broadcast.splatinsert1180 = insertelement <4 x i32> poison, i32 %416, i32 0
  %broadcast.splat1181 = shufflevector <4 x i32> %broadcast.splatinsert1180, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1170

vector.body1170:                                  ; preds = %vector.body1170, %polly.loop_header785.11064
  %index1172 = phi i64 [ 0, %polly.loop_header785.11064 ], [ %index.next1173, %vector.body1170 ]
  %vec.ind1178 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header785.11064 ], [ %vec.ind.next1179, %vector.body1170 ]
  %417 = mul <4 x i32> %vec.ind1178, %broadcast.splat1181
  %418 = add <4 x i32> %417, <i32 3, i32 3, i32 3, i32 3>
  %419 = urem <4 x i32> %418, <i32 80, i32 80, i32 80, i32 80>
  %420 = sitofp <4 x i32> %419 to <4 x double>
  %421 = fmul fast <4 x double> %420, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %422 = shl i64 %index1172, 3
  %423 = add nuw nsw i64 %422, %415
  %424 = getelementptr i8, i8* %call, i64 %423
  %425 = bitcast i8* %424 to <4 x double>*
  store <4 x double> %421, <4 x double>* %425, align 8, !alias.scope !94, !noalias !96
  %index.next1173 = add i64 %index1172, 4
  %vec.ind.next1179 = add <4 x i32> %vec.ind1178, <i32 4, i32 4, i32 4, i32 4>
  %426 = icmp eq i64 %index.next1173, 32
  br i1 %426, label %polly.loop_exit793.11075, label %vector.body1170, !llvm.loop !116

polly.loop_exit793.11075:                         ; preds = %vector.body1170
  %polly.indvar_next789.11073 = add nuw nsw i64 %polly.indvar788.11063, 1
  %exitcond1028.11074.not = icmp eq i64 %polly.indvar_next789.11073, 32
  br i1 %exitcond1028.11074.not, label %polly.loop_header785.1.1, label %polly.loop_header785.11064

polly.loop_header785.1.1:                         ; preds = %polly.loop_exit793.11075, %polly.loop_exit793.1.1
  %polly.indvar788.1.1 = phi i64 [ %polly.indvar_next789.1.1, %polly.loop_exit793.1.1 ], [ 0, %polly.loop_exit793.11075 ]
  %427 = add nuw nsw i64 %polly.indvar788.1.1, 32
  %428 = mul nuw nsw i64 %427, 640
  %429 = trunc i64 %427 to i32
  %broadcast.splatinsert1192 = insertelement <4 x i32> poison, i32 %429, i32 0
  %broadcast.splat1193 = shufflevector <4 x i32> %broadcast.splatinsert1192, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1184

vector.body1184:                                  ; preds = %vector.body1184, %polly.loop_header785.1.1
  %index1186 = phi i64 [ 0, %polly.loop_header785.1.1 ], [ %index.next1187, %vector.body1184 ]
  %vec.ind1190 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header785.1.1 ], [ %vec.ind.next1191, %vector.body1184 ]
  %430 = add nuw nsw <4 x i64> %vec.ind1190, <i64 32, i64 32, i64 32, i64 32>
  %431 = trunc <4 x i64> %430 to <4 x i32>
  %432 = mul <4 x i32> %broadcast.splat1193, %431
  %433 = add <4 x i32> %432, <i32 3, i32 3, i32 3, i32 3>
  %434 = urem <4 x i32> %433, <i32 80, i32 80, i32 80, i32 80>
  %435 = sitofp <4 x i32> %434 to <4 x double>
  %436 = fmul fast <4 x double> %435, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %437 = extractelement <4 x i64> %430, i32 0
  %438 = shl i64 %437, 3
  %439 = add nuw nsw i64 %438, %428
  %440 = getelementptr i8, i8* %call, i64 %439
  %441 = bitcast i8* %440 to <4 x double>*
  store <4 x double> %436, <4 x double>* %441, align 8, !alias.scope !94, !noalias !96
  %index.next1187 = add i64 %index1186, 4
  %vec.ind.next1191 = add <4 x i64> %vec.ind1190, <i64 4, i64 4, i64 4, i64 4>
  %442 = icmp eq i64 %index.next1187, 32
  br i1 %442, label %polly.loop_exit793.1.1, label %vector.body1184, !llvm.loop !117

polly.loop_exit793.1.1:                           ; preds = %vector.body1184
  %polly.indvar_next789.1.1 = add nuw nsw i64 %polly.indvar788.1.1, 1
  %exitcond1028.1.1.not = icmp eq i64 %polly.indvar_next789.1.1, 32
  br i1 %exitcond1028.1.1.not, label %polly.loop_header785.2.1, label %polly.loop_header785.1.1

polly.loop_header785.2.1:                         ; preds = %polly.loop_exit793.1.1, %polly.loop_exit793.2.1
  %polly.indvar788.2.1 = phi i64 [ %polly.indvar_next789.2.1, %polly.loop_exit793.2.1 ], [ 0, %polly.loop_exit793.1.1 ]
  %443 = add nuw nsw i64 %polly.indvar788.2.1, 32
  %444 = mul nuw nsw i64 %443, 640
  %445 = trunc i64 %443 to i32
  %broadcast.splatinsert1204 = insertelement <4 x i32> poison, i32 %445, i32 0
  %broadcast.splat1205 = shufflevector <4 x i32> %broadcast.splatinsert1204, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1196

vector.body1196:                                  ; preds = %vector.body1196, %polly.loop_header785.2.1
  %index1198 = phi i64 [ 0, %polly.loop_header785.2.1 ], [ %index.next1199, %vector.body1196 ]
  %vec.ind1202 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header785.2.1 ], [ %vec.ind.next1203, %vector.body1196 ]
  %446 = add nuw nsw <4 x i64> %vec.ind1202, <i64 64, i64 64, i64 64, i64 64>
  %447 = trunc <4 x i64> %446 to <4 x i32>
  %448 = mul <4 x i32> %broadcast.splat1205, %447
  %449 = add <4 x i32> %448, <i32 3, i32 3, i32 3, i32 3>
  %450 = urem <4 x i32> %449, <i32 80, i32 80, i32 80, i32 80>
  %451 = sitofp <4 x i32> %450 to <4 x double>
  %452 = fmul fast <4 x double> %451, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %453 = extractelement <4 x i64> %446, i32 0
  %454 = shl i64 %453, 3
  %455 = add nuw nsw i64 %454, %444
  %456 = getelementptr i8, i8* %call, i64 %455
  %457 = bitcast i8* %456 to <4 x double>*
  store <4 x double> %452, <4 x double>* %457, align 8, !alias.scope !94, !noalias !96
  %index.next1199 = add i64 %index1198, 4
  %vec.ind.next1203 = add <4 x i64> %vec.ind1202, <i64 4, i64 4, i64 4, i64 4>
  %458 = icmp eq i64 %index.next1199, 16
  br i1 %458, label %polly.loop_exit793.2.1, label %vector.body1196, !llvm.loop !118

polly.loop_exit793.2.1:                           ; preds = %vector.body1196
  %polly.indvar_next789.2.1 = add nuw nsw i64 %polly.indvar788.2.1, 1
  %exitcond1028.2.1.not = icmp eq i64 %polly.indvar_next789.2.1, 32
  br i1 %exitcond1028.2.1.not, label %polly.loop_header785.21078, label %polly.loop_header785.2.1

polly.loop_header785.21078:                       ; preds = %polly.loop_exit793.2.1, %polly.loop_exit793.21089
  %polly.indvar788.21077 = phi i64 [ %polly.indvar_next789.21087, %polly.loop_exit793.21089 ], [ 0, %polly.loop_exit793.2.1 ]
  %459 = add nuw nsw i64 %polly.indvar788.21077, 64
  %460 = mul nuw nsw i64 %459, 640
  %461 = trunc i64 %459 to i32
  %broadcast.splatinsert1218 = insertelement <4 x i32> poison, i32 %461, i32 0
  %broadcast.splat1219 = shufflevector <4 x i32> %broadcast.splatinsert1218, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1208

vector.body1208:                                  ; preds = %vector.body1208, %polly.loop_header785.21078
  %index1210 = phi i64 [ 0, %polly.loop_header785.21078 ], [ %index.next1211, %vector.body1208 ]
  %vec.ind1216 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header785.21078 ], [ %vec.ind.next1217, %vector.body1208 ]
  %462 = mul <4 x i32> %vec.ind1216, %broadcast.splat1219
  %463 = add <4 x i32> %462, <i32 3, i32 3, i32 3, i32 3>
  %464 = urem <4 x i32> %463, <i32 80, i32 80, i32 80, i32 80>
  %465 = sitofp <4 x i32> %464 to <4 x double>
  %466 = fmul fast <4 x double> %465, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %467 = shl i64 %index1210, 3
  %468 = add nuw nsw i64 %467, %460
  %469 = getelementptr i8, i8* %call, i64 %468
  %470 = bitcast i8* %469 to <4 x double>*
  store <4 x double> %466, <4 x double>* %470, align 8, !alias.scope !94, !noalias !96
  %index.next1211 = add i64 %index1210, 4
  %vec.ind.next1217 = add <4 x i32> %vec.ind1216, <i32 4, i32 4, i32 4, i32 4>
  %471 = icmp eq i64 %index.next1211, 32
  br i1 %471, label %polly.loop_exit793.21089, label %vector.body1208, !llvm.loop !119

polly.loop_exit793.21089:                         ; preds = %vector.body1208
  %polly.indvar_next789.21087 = add nuw nsw i64 %polly.indvar788.21077, 1
  %exitcond1028.21088.not = icmp eq i64 %polly.indvar_next789.21087, 16
  br i1 %exitcond1028.21088.not, label %polly.loop_header785.1.2, label %polly.loop_header785.21078

polly.loop_header785.1.2:                         ; preds = %polly.loop_exit793.21089, %polly.loop_exit793.1.2
  %polly.indvar788.1.2 = phi i64 [ %polly.indvar_next789.1.2, %polly.loop_exit793.1.2 ], [ 0, %polly.loop_exit793.21089 ]
  %472 = add nuw nsw i64 %polly.indvar788.1.2, 64
  %473 = mul nuw nsw i64 %472, 640
  %474 = trunc i64 %472 to i32
  %broadcast.splatinsert1230 = insertelement <4 x i32> poison, i32 %474, i32 0
  %broadcast.splat1231 = shufflevector <4 x i32> %broadcast.splatinsert1230, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1222

vector.body1222:                                  ; preds = %vector.body1222, %polly.loop_header785.1.2
  %index1224 = phi i64 [ 0, %polly.loop_header785.1.2 ], [ %index.next1225, %vector.body1222 ]
  %vec.ind1228 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header785.1.2 ], [ %vec.ind.next1229, %vector.body1222 ]
  %475 = add nuw nsw <4 x i64> %vec.ind1228, <i64 32, i64 32, i64 32, i64 32>
  %476 = trunc <4 x i64> %475 to <4 x i32>
  %477 = mul <4 x i32> %broadcast.splat1231, %476
  %478 = add <4 x i32> %477, <i32 3, i32 3, i32 3, i32 3>
  %479 = urem <4 x i32> %478, <i32 80, i32 80, i32 80, i32 80>
  %480 = sitofp <4 x i32> %479 to <4 x double>
  %481 = fmul fast <4 x double> %480, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %482 = extractelement <4 x i64> %475, i32 0
  %483 = shl i64 %482, 3
  %484 = add nuw nsw i64 %483, %473
  %485 = getelementptr i8, i8* %call, i64 %484
  %486 = bitcast i8* %485 to <4 x double>*
  store <4 x double> %481, <4 x double>* %486, align 8, !alias.scope !94, !noalias !96
  %index.next1225 = add i64 %index1224, 4
  %vec.ind.next1229 = add <4 x i64> %vec.ind1228, <i64 4, i64 4, i64 4, i64 4>
  %487 = icmp eq i64 %index.next1225, 32
  br i1 %487, label %polly.loop_exit793.1.2, label %vector.body1222, !llvm.loop !120

polly.loop_exit793.1.2:                           ; preds = %vector.body1222
  %polly.indvar_next789.1.2 = add nuw nsw i64 %polly.indvar788.1.2, 1
  %exitcond1028.1.2.not = icmp eq i64 %polly.indvar_next789.1.2, 16
  br i1 %exitcond1028.1.2.not, label %polly.loop_header785.2.2, label %polly.loop_header785.1.2

polly.loop_header785.2.2:                         ; preds = %polly.loop_exit793.1.2, %polly.loop_exit793.2.2
  %polly.indvar788.2.2 = phi i64 [ %polly.indvar_next789.2.2, %polly.loop_exit793.2.2 ], [ 0, %polly.loop_exit793.1.2 ]
  %488 = add nuw nsw i64 %polly.indvar788.2.2, 64
  %489 = mul nuw nsw i64 %488, 640
  %490 = trunc i64 %488 to i32
  %broadcast.splatinsert1242 = insertelement <4 x i32> poison, i32 %490, i32 0
  %broadcast.splat1243 = shufflevector <4 x i32> %broadcast.splatinsert1242, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1234

vector.body1234:                                  ; preds = %vector.body1234, %polly.loop_header785.2.2
  %index1236 = phi i64 [ 0, %polly.loop_header785.2.2 ], [ %index.next1237, %vector.body1234 ]
  %vec.ind1240 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header785.2.2 ], [ %vec.ind.next1241, %vector.body1234 ]
  %491 = add nuw nsw <4 x i64> %vec.ind1240, <i64 64, i64 64, i64 64, i64 64>
  %492 = trunc <4 x i64> %491 to <4 x i32>
  %493 = mul <4 x i32> %broadcast.splat1243, %492
  %494 = add <4 x i32> %493, <i32 3, i32 3, i32 3, i32 3>
  %495 = urem <4 x i32> %494, <i32 80, i32 80, i32 80, i32 80>
  %496 = sitofp <4 x i32> %495 to <4 x double>
  %497 = fmul fast <4 x double> %496, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %498 = extractelement <4 x i64> %491, i32 0
  %499 = shl i64 %498, 3
  %500 = add nuw nsw i64 %499, %489
  %501 = getelementptr i8, i8* %call, i64 %500
  %502 = bitcast i8* %501 to <4 x double>*
  store <4 x double> %497, <4 x double>* %502, align 8, !alias.scope !94, !noalias !96
  %index.next1237 = add i64 %index1236, 4
  %vec.ind.next1241 = add <4 x i64> %vec.ind1240, <i64 4, i64 4, i64 4, i64 4>
  %503 = icmp eq i64 %index.next1237, 16
  br i1 %503, label %polly.loop_exit793.2.2, label %vector.body1234, !llvm.loop !121

polly.loop_exit793.2.2:                           ; preds = %vector.body1234
  %polly.indvar_next789.2.2 = add nuw nsw i64 %polly.indvar788.2.2, 1
  %exitcond1028.2.2.not = icmp eq i64 %polly.indvar_next789.2.2, 16
  br i1 %exitcond1028.2.2.not, label %polly.loop_header812, label %polly.loop_header785.2.2
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
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 32}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 128}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40, !41, !42, !43}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.data.pack.enable", i1 true}
!42 = !{!"llvm.data.pack.array", !21}
!43 = !{!"llvm.data.pack.allocate", !"malloc"}
!44 = distinct !{!44, !12, !23, !45, !46, !47, !48, !49, !52}
!45 = !{!"llvm.loop.id", !"i"}
!46 = !{!"llvm.loop.tile.enable", i1 true}
!47 = !{!"llvm.loop.tile.depth", i32 3}
!48 = !{!"llvm.loop.tile.size", i32 50}
!49 = !{!"llvm.loop.tile.followup_floor", !50}
!50 = distinct !{!50, !12, !51}
!51 = !{!"llvm.loop.id", !"i1"}
!52 = !{!"llvm.loop.tile.followup_tile", !53}
!53 = distinct !{!53, !12, !54}
!54 = !{!"llvm.loop.id", !"i2"}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = !{!60, !60, i64 0}
!60 = !{!"any pointer", !4, i64 0}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !64, !"polly.alias.scope.MemRef_call"}
!64 = distinct !{!64, !"polly.alias.scope.domain"}
!65 = !{!66, !67, !68}
!66 = distinct !{!66, !64, !"polly.alias.scope.MemRef_call1"}
!67 = distinct !{!67, !64, !"polly.alias.scope.MemRef_call2"}
!68 = distinct !{!68, !64, !"polly.alias.scope.Packed_MemRef_call1"}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !71, !13}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!63, !67, !68}
!73 = !{!63, !66, !68}
!74 = distinct !{!74, !75, !"polly.alias.scope.MemRef_call"}
!75 = distinct !{!75, !"polly.alias.scope.domain"}
!76 = !{!77, !78, !79}
!77 = distinct !{!77, !75, !"polly.alias.scope.MemRef_call1"}
!78 = distinct !{!78, !75, !"polly.alias.scope.MemRef_call2"}
!79 = distinct !{!79, !75, !"polly.alias.scope.Packed_MemRef_call1"}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !71, !13}
!82 = !{!74, !78, !79}
!83 = !{!74, !77, !79}
!84 = distinct !{!84, !85, !"polly.alias.scope.MemRef_call"}
!85 = distinct !{!85, !"polly.alias.scope.domain"}
!86 = !{!87, !88, !89}
!87 = distinct !{!87, !85, !"polly.alias.scope.MemRef_call1"}
!88 = distinct !{!88, !85, !"polly.alias.scope.MemRef_call2"}
!89 = distinct !{!89, !85, !"polly.alias.scope.Packed_MemRef_call1"}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !71, !13}
!92 = !{!84, !88, !89}
!93 = !{!84, !87, !89}
!94 = distinct !{!94, !95, !"polly.alias.scope.MemRef_call"}
!95 = distinct !{!95, !"polly.alias.scope.domain"}
!96 = !{!97, !98}
!97 = distinct !{!97, !95, !"polly.alias.scope.MemRef_call1"}
!98 = distinct !{!98, !95, !"polly.alias.scope.MemRef_call2"}
!99 = distinct !{!99, !13}
!100 = !{!97, !94}
!101 = distinct !{!101, !13}
!102 = !{!98, !94}
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
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !13}
