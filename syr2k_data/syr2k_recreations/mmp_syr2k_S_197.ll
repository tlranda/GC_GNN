; ModuleID = 'syr2k_recreations//mmp_syr2k_S_197.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_197.c"
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
  %call821 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1673 = bitcast i8* %call1 to double*
  %polly.access.call1682 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1682, %call2
  %polly.access.call2702 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2702, %call1
  %2 = or i1 %0, %1
  %polly.access.call722 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call722, %call2
  %4 = icmp ule i8* %polly.access.call2702, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call722, %call1
  %8 = icmp ule i8* %polly.access.call1682, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header807, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1160 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1159 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1158 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1157 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1157, %scevgep1160
  %bound1 = icmp ult i8* %scevgep1159, %scevgep1158
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
  br i1 %exitcond18.not.i, label %vector.ph1164, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1164:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1171 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1172 = shufflevector <4 x i64> %broadcast.splatinsert1171, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1163

vector.body1163:                                  ; preds = %vector.body1163, %vector.ph1164
  %index1165 = phi i64 [ 0, %vector.ph1164 ], [ %index.next1166, %vector.body1163 ]
  %vec.ind1169 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1164 ], [ %vec.ind.next1170, %vector.body1163 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1169, %broadcast.splat1172
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call821, i64 %indvars.iv7.i, i64 %index1165
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1166 = add i64 %index1165, 4
  %vec.ind.next1170 = add <4 x i64> %vec.ind1169, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1166, 80
  br i1 %40, label %for.inc41.i, label %vector.body1163, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1163
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1164, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit868.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start479, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1523, label %vector.ph1446

vector.ph1446:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1445

vector.body1445:                                  ; preds = %vector.body1445, %vector.ph1446
  %index1447 = phi i64 [ 0, %vector.ph1446 ], [ %index.next1448, %vector.body1445 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call821, i64 %indvars.iv21.i, i64 %index1447
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1448 = add i64 %index1447, 4
  %46 = icmp eq i64 %index.next1448, %n.vec
  br i1 %46, label %middle.block1443, label %vector.body1445, !llvm.loop !18

middle.block1443:                                 ; preds = %vector.body1445
  %cmp.n1450 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1450, label %for.inc6.i, label %for.body3.i46.preheader1523

for.body3.i46.preheader1523:                      ; preds = %for.body3.i46.preheader, %middle.block1443
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1443 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1523, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1523 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call821, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1443, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call821, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit589.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start287, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1466 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1466, label %for.body3.i60.preheader1520, label %vector.ph1467

vector.ph1467:                                    ; preds = %for.body3.i60.preheader
  %n.vec1469 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1465

vector.body1465:                                  ; preds = %vector.body1465, %vector.ph1467
  %index1470 = phi i64 [ 0, %vector.ph1467 ], [ %index.next1471, %vector.body1465 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call821, i64 %indvars.iv21.i52, i64 %index1470
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1474 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1474, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1471 = add i64 %index1470, 4
  %57 = icmp eq i64 %index.next1471, %n.vec1469
  br i1 %57, label %middle.block1463, label %vector.body1465, !llvm.loop !59

middle.block1463:                                 ; preds = %vector.body1465
  %cmp.n1473 = icmp eq i64 %indvars.iv21.i52, %n.vec1469
  br i1 %cmp.n1473, label %for.inc6.i63, label %for.body3.i60.preheader1520

for.body3.i60.preheader1520:                      ; preds = %for.body3.i60.preheader, %middle.block1463
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1469, %middle.block1463 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1520, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1520 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call821, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !60

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1463, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call821, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit397.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1492 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1492, label %for.body3.i99.preheader1517, label %vector.ph1493

vector.ph1493:                                    ; preds = %for.body3.i99.preheader
  %n.vec1495 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1491

vector.body1491:                                  ; preds = %vector.body1491, %vector.ph1493
  %index1496 = phi i64 [ 0, %vector.ph1493 ], [ %index.next1497, %vector.body1491 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call821, i64 %indvars.iv21.i91, i64 %index1496
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1500 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1500, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1497 = add i64 %index1496, 4
  %68 = icmp eq i64 %index.next1497, %n.vec1495
  br i1 %68, label %middle.block1489, label %vector.body1491, !llvm.loop !61

middle.block1489:                                 ; preds = %vector.body1491
  %cmp.n1499 = icmp eq i64 %indvars.iv21.i91, %n.vec1495
  br i1 %cmp.n1499, label %for.inc6.i102, label %for.body3.i99.preheader1517

for.body3.i99.preheader1517:                      ; preds = %for.body3.i99.preheader, %middle.block1489
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1495, %middle.block1489 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1517, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1517 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call821, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !62

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1489, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call821, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call821, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  br label %polly.loop_header

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1504 = phi i64 [ %indvar.next1505, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1504, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1506 = icmp ult i64 %88, 4
  br i1 %min.iters.check1506, label %polly.loop_header191.preheader, label %vector.ph1507

vector.ph1507:                                    ; preds = %polly.loop_header
  %n.vec1509 = and i64 %88, -4
  br label %vector.body1503

vector.body1503:                                  ; preds = %vector.body1503, %vector.ph1507
  %index1510 = phi i64 [ 0, %vector.ph1507 ], [ %index.next1511, %vector.body1503 ]
  %90 = shl nuw nsw i64 %index1510, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1514 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !67, !noalias !69
  %93 = fmul fast <4 x double> %wide.load1514, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !67, !noalias !69
  %index.next1511 = add i64 %index1510, 4
  %95 = icmp eq i64 %index.next1511, %n.vec1509
  br i1 %95, label %middle.block1501, label %vector.body1503, !llvm.loop !73

middle.block1501:                                 ; preds = %vector.body1503
  %cmp.n1513 = icmp eq i64 %88, %n.vec1509
  br i1 %cmp.n1513, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1501
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1509, %middle.block1501 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1501
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1012.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1505 = add i64 %indvar1504, 1
  br i1 %exitcond1012.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond1011.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1011.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !74

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199.preheader
  %indvars.iv1002 = phi i64 [ %indvars.iv.next1003, %polly.loop_exit213 ], [ 0, %polly.loop_header199.preheader ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199.preheader ]
  %97 = mul nsw i64 %polly.indvar208, -32
  %98 = shl nsw i64 %polly.indvar208, 5
  %99 = add nsw i64 %97, 79
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit250
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next1003 = add nsw i64 %indvars.iv1002, -32
  %exitcond1010.not = icmp eq i64 %polly.indvar_next209, 3
  br i1 %exitcond1010.not, label %polly.loop_header205.1, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit250, %polly.loop_header205
  %indvars.iv1004 = phi i64 [ %indvars.iv.next1005, %polly.loop_exit250 ], [ %indvars.iv1002, %polly.loop_header205 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit250 ], [ 0, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit250 ], [ %polly.indvar208, %polly.loop_header205 ]
  %smin1006 = call i64 @llvm.smin.i64(i64 %indvars.iv1004, i64 -48)
  %100 = add nsw i64 %smin1006, 79
  %smax = call i64 @llvm.smax.i64(i64 %100, i64 0)
  %101 = shl nsw i64 %polly.indvar214, 5
  %102 = add nsw i64 %101, %97
  %.inv.not = icmp eq i64 %102, 0
  %103 = or i64 %102, 31
  %104 = icmp ult i64 %99, %103
  %105 = select i1 %104, i64 %99, i64 %103
  %polly.loop_guard237.not = icmp ugt i64 %102, %105
  br i1 %.inv.not, label %polly.loop_header211.split, label %polly.loop_header217.us

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.loop_exit236.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit236.us ], [ 0, %polly.loop_header211 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 80
  br label %polly.loop_header223.us

polly.loop_header223.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header223.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_header223.us ], [ 0, %polly.loop_header217.us ]
  %106 = add nuw nsw i64 %polly.indvar226.us, %98
  %polly.access.mul.call1230.us = mul nuw nsw i64 %106, 60
  %polly.access.add.call1231.us = add nuw nsw i64 %polly.indvar220.us, %polly.access.mul.call1230.us
  %polly.access.call1232.us = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1231.us
  %polly.access.call1232.load.us = load double, double* %polly.access.call1232.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar226.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1232.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next227.us = add nuw i64 %polly.indvar226.us, 1
  %exitcond997.not = icmp eq i64 %polly.indvar_next227.us, 32
  br i1 %exitcond997.not, label %polly.loop_exit225.loopexit.us, label %polly.loop_header223.us

polly.loop_header234.us:                          ; preds = %polly.loop_exit225.loopexit.us, %polly.loop_header234.us
  %polly.indvar238.us = phi i64 [ %polly.indvar_next239.us, %polly.loop_header234.us ], [ %102, %polly.loop_exit225.loopexit.us ]
  %107 = add nuw nsw i64 %polly.indvar238.us, %98
  %polly.access.mul.call1242.us = mul nuw nsw i64 %107, 60
  %polly.access.add.call1243.us = add nuw nsw i64 %polly.indvar220.us, %polly.access.mul.call1242.us
  %polly.access.call1244.us = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1243.us
  %polly.access.call1244.load.us = load double, double* %polly.access.call1244.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1246.us = add nuw nsw i64 %polly.indvar238.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1247.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us
  store double %polly.access.call1244.load.us, double* %polly.access.Packed_MemRef_call1247.us, align 8
  %polly.indvar_next239.us = add nuw nsw i64 %polly.indvar238.us, 1
  %polly.loop_cond240.not.not.us = icmp ult i64 %polly.indvar238.us, %105
  br i1 %polly.loop_cond240.not.not.us, label %polly.loop_header234.us, label %polly.loop_exit236.us

polly.loop_exit236.us:                            ; preds = %polly.loop_header234.us, %polly.loop_exit225.loopexit.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond998.not = icmp eq i64 %polly.indvar_next221.us, 50
  br i1 %exitcond998.not, label %polly.loop_header248.preheader, label %polly.loop_header217.us

polly.loop_exit225.loopexit.us:                   ; preds = %polly.loop_header223.us
  br i1 %polly.loop_guard237.not, label %polly.loop_exit236.us, label %polly.loop_header234.us

polly.loop_header211.split:                       ; preds = %polly.loop_header211
  br i1 %polly.loop_guard237.not, label %polly.loop_header248.preheader, label %polly.loop_header217

polly.loop_exit250:                               ; preds = %polly.loop_exit257.loopexit.us, %polly.loop_header248.preheader
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %indvars.iv.next1005 = add nsw i64 %indvars.iv1004, -32
  %exitcond1009.not = icmp eq i64 %polly.indvar_next215, 3
  br i1 %exitcond1009.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header211.split, %polly.loop_exit236
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit236 ], [ 0, %polly.loop_header211.split ]
  %polly.access.mul.Packed_MemRef_call1245 = mul nuw nsw i64 %polly.indvar220, 80
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_header234
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, 50
  br i1 %exitcond.not, label %polly.loop_header248.preheader, label %polly.loop_header217

polly.loop_header248.preheader:                   ; preds = %polly.loop_exit236.us, %polly.loop_exit236, %polly.loop_header211.split
  %108 = mul nsw i64 %polly.indvar214, -32
  %polly.loop_guard2581137 = icmp sgt i64 %108, -80
  br i1 %polly.loop_guard2581137, label %polly.loop_header248.us, label %polly.loop_exit250

polly.loop_header248.us:                          ; preds = %polly.loop_header248.preheader, %polly.loop_exit257.loopexit.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_exit257.loopexit.us ], [ 0, %polly.loop_header248.preheader ]
  %polly.access.mul.Packed_MemRef_call1268.us = mul nuw nsw i64 %polly.indvar251.us, 80
  %109 = shl i64 %polly.indvar251.us, 3
  br label %polly.loop_header255.us

polly.loop_header255.us:                          ; preds = %polly.loop_header248.us, %polly.loop_exit264.us
  %indvars.iv999 = phi i64 [ %indvars.iv, %polly.loop_header248.us ], [ %indvars.iv.next1000, %polly.loop_exit264.us ]
  %polly.indvar259.us = phi i64 [ 0, %polly.loop_header248.us ], [ %polly.indvar_next260.us, %polly.loop_exit264.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv999, i64 31)
  %110 = add nuw nsw i64 %polly.indvar259.us, %102
  %111 = add nuw nsw i64 %polly.indvar259.us, %101
  %112 = mul nuw nsw i64 %111, 480
  %113 = add nuw nsw i64 %112, %109
  %scevgep272.us = getelementptr i8, i8* %call2, i64 %113
  %scevgep272273.us = bitcast i8* %scevgep272.us to double*
  %_p_scalar_274.us = load double, double* %scevgep272273.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1279.us = add nuw nsw i64 %110, %polly.access.mul.Packed_MemRef_call1268.us
  %polly.access.Packed_MemRef_call1280.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1279.us
  %_p_scalar_281.us = load double, double* %polly.access.Packed_MemRef_call1280.us, align 8
  %114 = mul nuw nsw i64 %111, 640
  br label %polly.loop_header262.us

polly.loop_header262.us:                          ; preds = %polly.loop_header262.us, %polly.loop_header255.us
  %polly.indvar265.us = phi i64 [ 0, %polly.loop_header255.us ], [ %polly.indvar_next266.us, %polly.loop_header262.us ]
  %115 = add nuw nsw i64 %polly.indvar265.us, %98
  %polly.access.add.Packed_MemRef_call1269.us = add nuw nsw i64 %polly.indvar265.us, %polly.access.mul.Packed_MemRef_call1268.us
  %polly.access.Packed_MemRef_call1270.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1269.us
  %_p_scalar_271.us = load double, double* %polly.access.Packed_MemRef_call1270.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_274.us, %_p_scalar_271.us
  %116 = mul nuw nsw i64 %115, 480
  %117 = add nuw nsw i64 %116, %109
  %scevgep275.us = getelementptr i8, i8* %call2, i64 %117
  %scevgep275276.us = bitcast i8* %scevgep275.us to double*
  %_p_scalar_277.us = load double, double* %scevgep275276.us, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.us = fmul fast double %_p_scalar_281.us, %_p_scalar_277.us
  %118 = shl i64 %115, 3
  %119 = add nuw nsw i64 %118, %114
  %scevgep282.us = getelementptr i8, i8* %call, i64 %119
  %scevgep282283.us = bitcast i8* %scevgep282.us to double*
  %_p_scalar_284.us = load double, double* %scevgep282283.us, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_284.us
  store double %p_add42.i118.us, double* %scevgep282283.us, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next266.us = add nuw nsw i64 %polly.indvar265.us, 1
  %exitcond1001.not = icmp eq i64 %polly.indvar265.us, %smin
  br i1 %exitcond1001.not, label %polly.loop_exit264.us, label %polly.loop_header262.us

polly.loop_exit264.us:                            ; preds = %polly.loop_header262.us
  %polly.indvar_next260.us = add nuw nsw i64 %polly.indvar259.us, 1
  %indvars.iv.next1000 = add nuw nsw i64 %indvars.iv999, 1
  %exitcond1007.not = icmp eq i64 %polly.indvar259.us, %smax
  br i1 %exitcond1007.not, label %polly.loop_exit257.loopexit.us, label %polly.loop_header255.us

polly.loop_exit257.loopexit.us:                   ; preds = %polly.loop_exit264.us
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond1008.not = icmp eq i64 %polly.indvar_next252.us, 50
  br i1 %exitcond1008.not, label %polly.loop_exit250, label %polly.loop_header248.us

polly.loop_header234:                             ; preds = %polly.loop_header217, %polly.loop_header234
  %polly.indvar238 = phi i64 [ %polly.indvar_next239, %polly.loop_header234 ], [ %102, %polly.loop_header217 ]
  %120 = add nuw nsw i64 %polly.indvar238, %98
  %polly.access.mul.call1242 = mul nuw nsw i64 %120, 60
  %polly.access.add.call1243 = add nuw nsw i64 %polly.indvar220, %polly.access.mul.call1242
  %polly.access.call1244 = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1243
  %polly.access.call1244.load = load double, double* %polly.access.call1244, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1246 = add nuw nsw i64 %polly.indvar238, %polly.access.mul.Packed_MemRef_call1245
  %polly.access.Packed_MemRef_call1247 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246
  store double %polly.access.call1244.load, double* %polly.access.Packed_MemRef_call1247, align 8
  %polly.indvar_next239 = add nuw nsw i64 %polly.indvar238, 1
  %polly.loop_cond240.not.not = icmp ult i64 %polly.indvar238, %105
  br i1 %polly.loop_cond240.not.not, label %polly.loop_header234, label %polly.loop_exit236

polly.start287:                                   ; preds = %kernel_syr2k.exit
  %malloccall289 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  br label %polly.loop_header373

polly.loop_header373:                             ; preds = %polly.loop_exit381, %polly.start287
  %indvar1478 = phi i64 [ %indvar.next1479, %polly.loop_exit381 ], [ 0, %polly.start287 ]
  %polly.indvar376 = phi i64 [ %polly.indvar_next377, %polly.loop_exit381 ], [ 1, %polly.start287 ]
  %121 = add i64 %indvar1478, 1
  %122 = mul nuw nsw i64 %polly.indvar376, 640
  %scevgep385 = getelementptr i8, i8* %call, i64 %122
  %min.iters.check1480 = icmp ult i64 %121, 4
  br i1 %min.iters.check1480, label %polly.loop_header379.preheader, label %vector.ph1481

vector.ph1481:                                    ; preds = %polly.loop_header373
  %n.vec1483 = and i64 %121, -4
  br label %vector.body1477

vector.body1477:                                  ; preds = %vector.body1477, %vector.ph1481
  %index1484 = phi i64 [ 0, %vector.ph1481 ], [ %index.next1485, %vector.body1477 ]
  %123 = shl nuw nsw i64 %index1484, 3
  %124 = getelementptr i8, i8* %scevgep385, i64 %123
  %125 = bitcast i8* %124 to <4 x double>*
  %wide.load1488 = load <4 x double>, <4 x double>* %125, align 8, !alias.scope !78, !noalias !80
  %126 = fmul fast <4 x double> %wide.load1488, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %127 = bitcast i8* %124 to <4 x double>*
  store <4 x double> %126, <4 x double>* %127, align 8, !alias.scope !78, !noalias !80
  %index.next1485 = add i64 %index1484, 4
  %128 = icmp eq i64 %index.next1485, %n.vec1483
  br i1 %128, label %middle.block1475, label %vector.body1477, !llvm.loop !84

middle.block1475:                                 ; preds = %vector.body1477
  %cmp.n1487 = icmp eq i64 %121, %n.vec1483
  br i1 %cmp.n1487, label %polly.loop_exit381, label %polly.loop_header379.preheader

polly.loop_header379.preheader:                   ; preds = %polly.loop_header373, %middle.block1475
  %polly.indvar382.ph = phi i64 [ 0, %polly.loop_header373 ], [ %n.vec1483, %middle.block1475 ]
  br label %polly.loop_header379

polly.loop_exit381:                               ; preds = %polly.loop_header379, %middle.block1475
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar_next377, 80
  %indvar.next1479 = add i64 %indvar1478, 1
  br i1 %exitcond1033.not, label %polly.loop_header389.preheader, label %polly.loop_header373

polly.loop_header389.preheader:                   ; preds = %polly.loop_exit381
  %Packed_MemRef_call1290 = bitcast i8* %malloccall289 to double*
  br label %polly.loop_header395

polly.loop_header379:                             ; preds = %polly.loop_header379.preheader, %polly.loop_header379
  %polly.indvar382 = phi i64 [ %polly.indvar_next383, %polly.loop_header379 ], [ %polly.indvar382.ph, %polly.loop_header379.preheader ]
  %129 = shl nuw nsw i64 %polly.indvar382, 3
  %scevgep386 = getelementptr i8, i8* %scevgep385, i64 %129
  %scevgep386387 = bitcast i8* %scevgep386 to double*
  %_p_scalar_388 = load double, double* %scevgep386387, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_388, 1.200000e+00
  store double %p_mul.i57, double* %scevgep386387, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next383 = add nuw nsw i64 %polly.indvar382, 1
  %exitcond1032.not = icmp eq i64 %polly.indvar_next383, %polly.indvar376
  br i1 %exitcond1032.not, label %polly.loop_exit381, label %polly.loop_header379, !llvm.loop !85

polly.loop_header395:                             ; preds = %polly.loop_exit403, %polly.loop_header389.preheader
  %indvars.iv1022 = phi i64 [ %indvars.iv.next1023, %polly.loop_exit403 ], [ 0, %polly.loop_header389.preheader ]
  %polly.indvar398 = phi i64 [ %polly.indvar_next399, %polly.loop_exit403 ], [ 0, %polly.loop_header389.preheader ]
  %130 = mul nsw i64 %polly.indvar398, -32
  %131 = shl nsw i64 %polly.indvar398, 5
  %132 = add nsw i64 %130, 79
  br label %polly.loop_header401

polly.loop_exit403:                               ; preds = %polly.loop_exit442
  %polly.indvar_next399 = add nuw nsw i64 %polly.indvar398, 1
  %indvars.iv.next1023 = add nsw i64 %indvars.iv1022, -32
  %exitcond1031.not = icmp eq i64 %polly.indvar_next399, 3
  br i1 %exitcond1031.not, label %polly.loop_header395.1, label %polly.loop_header395

polly.loop_header401:                             ; preds = %polly.loop_exit442, %polly.loop_header395
  %indvars.iv1024 = phi i64 [ %indvars.iv.next1025, %polly.loop_exit442 ], [ %indvars.iv1022, %polly.loop_header395 ]
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %polly.loop_exit442 ], [ 0, %polly.loop_header395 ]
  %polly.indvar404 = phi i64 [ %polly.indvar_next405, %polly.loop_exit442 ], [ %polly.indvar398, %polly.loop_header395 ]
  %smin1026 = call i64 @llvm.smin.i64(i64 %indvars.iv1024, i64 -48)
  %133 = add nsw i64 %smin1026, 79
  %smax1027 = call i64 @llvm.smax.i64(i64 %133, i64 0)
  %134 = shl nsw i64 %polly.indvar404, 5
  %135 = add nsw i64 %134, %130
  %.inv875.not = icmp eq i64 %135, 0
  %136 = or i64 %135, 31
  %137 = icmp ult i64 %132, %136
  %138 = select i1 %137, i64 %132, i64 %136
  %polly.loop_guard429.not = icmp ugt i64 %135, %138
  br i1 %.inv875.not, label %polly.loop_header401.split, label %polly.loop_header407.us

polly.loop_header407.us:                          ; preds = %polly.loop_header401, %polly.loop_exit428.us
  %polly.indvar410.us = phi i64 [ %polly.indvar_next411.us, %polly.loop_exit428.us ], [ 0, %polly.loop_header401 ]
  %polly.access.mul.Packed_MemRef_call1290.us = mul nuw nsw i64 %polly.indvar410.us, 80
  br label %polly.loop_header414.us

polly.loop_header414.us:                          ; preds = %polly.loop_header407.us, %polly.loop_header414.us
  %polly.indvar418.us = phi i64 [ %polly.indvar_next419.us, %polly.loop_header414.us ], [ 0, %polly.loop_header407.us ]
  %139 = add nuw nsw i64 %polly.indvar418.us, %131
  %polly.access.mul.call1422.us = mul nuw nsw i64 %139, 60
  %polly.access.add.call1423.us = add nuw nsw i64 %polly.indvar410.us, %polly.access.mul.call1422.us
  %polly.access.call1424.us = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1423.us
  %polly.access.call1424.load.us = load double, double* %polly.access.call1424.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290.us = add nuw nsw i64 %polly.indvar418.us, %polly.access.mul.Packed_MemRef_call1290.us
  %polly.access.Packed_MemRef_call1290.us = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us
  store double %polly.access.call1424.load.us, double* %polly.access.Packed_MemRef_call1290.us, align 8
  %polly.indvar_next419.us = add nuw i64 %polly.indvar418.us, 1
  %exitcond1014.not = icmp eq i64 %polly.indvar_next419.us, 32
  br i1 %exitcond1014.not, label %polly.loop_exit416.loopexit.us, label %polly.loop_header414.us

polly.loop_header426.us:                          ; preds = %polly.loop_exit416.loopexit.us, %polly.loop_header426.us
  %polly.indvar430.us = phi i64 [ %polly.indvar_next431.us, %polly.loop_header426.us ], [ %135, %polly.loop_exit416.loopexit.us ]
  %140 = add nuw nsw i64 %polly.indvar430.us, %131
  %polly.access.mul.call1434.us = mul nuw nsw i64 %140, 60
  %polly.access.add.call1435.us = add nuw nsw i64 %polly.indvar410.us, %polly.access.mul.call1434.us
  %polly.access.call1436.us = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1435.us
  %polly.access.call1436.load.us = load double, double* %polly.access.call1436.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290438.us = add nuw nsw i64 %polly.indvar430.us, %polly.access.mul.Packed_MemRef_call1290.us
  %polly.access.Packed_MemRef_call1290439.us = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290438.us
  store double %polly.access.call1436.load.us, double* %polly.access.Packed_MemRef_call1290439.us, align 8
  %polly.indvar_next431.us = add nuw nsw i64 %polly.indvar430.us, 1
  %polly.loop_cond432.not.not.us = icmp ult i64 %polly.indvar430.us, %138
  br i1 %polly.loop_cond432.not.not.us, label %polly.loop_header426.us, label %polly.loop_exit428.us

polly.loop_exit428.us:                            ; preds = %polly.loop_header426.us, %polly.loop_exit416.loopexit.us
  %polly.indvar_next411.us = add nuw nsw i64 %polly.indvar410.us, 1
  %exitcond1015.not = icmp eq i64 %polly.indvar_next411.us, 50
  br i1 %exitcond1015.not, label %polly.loop_header440.preheader, label %polly.loop_header407.us

polly.loop_exit416.loopexit.us:                   ; preds = %polly.loop_header414.us
  br i1 %polly.loop_guard429.not, label %polly.loop_exit428.us, label %polly.loop_header426.us

polly.loop_header401.split:                       ; preds = %polly.loop_header401
  br i1 %polly.loop_guard429.not, label %polly.loop_header440.preheader, label %polly.loop_header407

polly.loop_exit442:                               ; preds = %polly.loop_exit449.loopexit.us, %polly.loop_header440.preheader
  %polly.indvar_next405 = add nuw nsw i64 %polly.indvar404, 1
  %indvars.iv.next1017 = add nuw nsw i64 %indvars.iv1016, 32
  %indvars.iv.next1025 = add nsw i64 %indvars.iv1024, -32
  %exitcond1030.not = icmp eq i64 %polly.indvar_next405, 3
  br i1 %exitcond1030.not, label %polly.loop_exit403, label %polly.loop_header401

polly.loop_header407:                             ; preds = %polly.loop_header401.split, %polly.loop_exit428
  %polly.indvar410 = phi i64 [ %polly.indvar_next411, %polly.loop_exit428 ], [ 0, %polly.loop_header401.split ]
  %polly.access.mul.Packed_MemRef_call1290437 = mul nuw nsw i64 %polly.indvar410, 80
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_header426
  %polly.indvar_next411 = add nuw nsw i64 %polly.indvar410, 1
  %exitcond1013.not = icmp eq i64 %polly.indvar_next411, 50
  br i1 %exitcond1013.not, label %polly.loop_header440.preheader, label %polly.loop_header407

polly.loop_header440.preheader:                   ; preds = %polly.loop_exit428.us, %polly.loop_exit428, %polly.loop_header401.split
  %141 = mul nsw i64 %polly.indvar404, -32
  %polly.loop_guard4501139 = icmp sgt i64 %141, -80
  br i1 %polly.loop_guard4501139, label %polly.loop_header440.us, label %polly.loop_exit442

polly.loop_header440.us:                          ; preds = %polly.loop_header440.preheader, %polly.loop_exit449.loopexit.us
  %polly.indvar443.us = phi i64 [ %polly.indvar_next444.us, %polly.loop_exit449.loopexit.us ], [ 0, %polly.loop_header440.preheader ]
  %polly.access.mul.Packed_MemRef_call1290460.us = mul nuw nsw i64 %polly.indvar443.us, 80
  %142 = shl i64 %polly.indvar443.us, 3
  br label %polly.loop_header447.us

polly.loop_header447.us:                          ; preds = %polly.loop_header440.us, %polly.loop_exit456.us
  %indvars.iv1018 = phi i64 [ %indvars.iv1016, %polly.loop_header440.us ], [ %indvars.iv.next1019, %polly.loop_exit456.us ]
  %polly.indvar451.us = phi i64 [ 0, %polly.loop_header440.us ], [ %polly.indvar_next452.us, %polly.loop_exit456.us ]
  %smin1020 = call i64 @llvm.smin.i64(i64 %indvars.iv1018, i64 31)
  %143 = add nuw nsw i64 %polly.indvar451.us, %135
  %144 = add nuw nsw i64 %polly.indvar451.us, %134
  %145 = mul nuw nsw i64 %144, 480
  %146 = add nuw nsw i64 %145, %142
  %scevgep464.us = getelementptr i8, i8* %call2, i64 %146
  %scevgep464465.us = bitcast i8* %scevgep464.us to double*
  %_p_scalar_466.us = load double, double* %scevgep464465.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290471.us = add nuw nsw i64 %143, %polly.access.mul.Packed_MemRef_call1290460.us
  %polly.access.Packed_MemRef_call1290472.us = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290471.us
  %_p_scalar_473.us = load double, double* %polly.access.Packed_MemRef_call1290472.us, align 8
  %147 = mul nuw nsw i64 %144, 640
  br label %polly.loop_header454.us

polly.loop_header454.us:                          ; preds = %polly.loop_header454.us, %polly.loop_header447.us
  %polly.indvar457.us = phi i64 [ 0, %polly.loop_header447.us ], [ %polly.indvar_next458.us, %polly.loop_header454.us ]
  %148 = add nuw nsw i64 %polly.indvar457.us, %131
  %polly.access.add.Packed_MemRef_call1290461.us = add nuw nsw i64 %polly.indvar457.us, %polly.access.mul.Packed_MemRef_call1290460.us
  %polly.access.Packed_MemRef_call1290462.us = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290461.us
  %_p_scalar_463.us = load double, double* %polly.access.Packed_MemRef_call1290462.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_466.us, %_p_scalar_463.us
  %149 = mul nuw nsw i64 %148, 480
  %150 = add nuw nsw i64 %149, %142
  %scevgep467.us = getelementptr i8, i8* %call2, i64 %150
  %scevgep467468.us = bitcast i8* %scevgep467.us to double*
  %_p_scalar_469.us = load double, double* %scevgep467468.us, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.us = fmul fast double %_p_scalar_473.us, %_p_scalar_469.us
  %151 = shl i64 %148, 3
  %152 = add nuw nsw i64 %151, %147
  %scevgep474.us = getelementptr i8, i8* %call, i64 %152
  %scevgep474475.us = bitcast i8* %scevgep474.us to double*
  %_p_scalar_476.us = load double, double* %scevgep474475.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_476.us
  store double %p_add42.i79.us, double* %scevgep474475.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next458.us = add nuw nsw i64 %polly.indvar457.us, 1
  %exitcond1021.not = icmp eq i64 %polly.indvar457.us, %smin1020
  br i1 %exitcond1021.not, label %polly.loop_exit456.us, label %polly.loop_header454.us

polly.loop_exit456.us:                            ; preds = %polly.loop_header454.us
  %polly.indvar_next452.us = add nuw nsw i64 %polly.indvar451.us, 1
  %indvars.iv.next1019 = add nuw nsw i64 %indvars.iv1018, 1
  %exitcond1028.not = icmp eq i64 %polly.indvar451.us, %smax1027
  br i1 %exitcond1028.not, label %polly.loop_exit449.loopexit.us, label %polly.loop_header447.us

polly.loop_exit449.loopexit.us:                   ; preds = %polly.loop_exit456.us
  %polly.indvar_next444.us = add nuw nsw i64 %polly.indvar443.us, 1
  %exitcond1029.not = icmp eq i64 %polly.indvar_next444.us, 50
  br i1 %exitcond1029.not, label %polly.loop_exit442, label %polly.loop_header440.us

polly.loop_header426:                             ; preds = %polly.loop_header407, %polly.loop_header426
  %polly.indvar430 = phi i64 [ %polly.indvar_next431, %polly.loop_header426 ], [ %135, %polly.loop_header407 ]
  %153 = add nuw nsw i64 %polly.indvar430, %131
  %polly.access.mul.call1434 = mul nuw nsw i64 %153, 60
  %polly.access.add.call1435 = add nuw nsw i64 %polly.indvar410, %polly.access.mul.call1434
  %polly.access.call1436 = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1435
  %polly.access.call1436.load = load double, double* %polly.access.call1436, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290438 = add nuw nsw i64 %polly.indvar430, %polly.access.mul.Packed_MemRef_call1290437
  %polly.access.Packed_MemRef_call1290439 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290438
  store double %polly.access.call1436.load, double* %polly.access.Packed_MemRef_call1290439, align 8
  %polly.indvar_next431 = add nuw nsw i64 %polly.indvar430, 1
  %polly.loop_cond432.not.not = icmp ult i64 %polly.indvar430, %138
  br i1 %polly.loop_cond432.not.not, label %polly.loop_header426, label %polly.loop_exit428

polly.start479:                                   ; preds = %init_array.exit
  %malloccall481 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  br label %polly.loop_header565

polly.loop_header565:                             ; preds = %polly.loop_exit573, %polly.start479
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit573 ], [ 0, %polly.start479 ]
  %polly.indvar568 = phi i64 [ %polly.indvar_next569, %polly.loop_exit573 ], [ 1, %polly.start479 ]
  %154 = add i64 %indvar, 1
  %155 = mul nuw nsw i64 %polly.indvar568, 640
  %scevgep577 = getelementptr i8, i8* %call, i64 %155
  %min.iters.check1454 = icmp ult i64 %154, 4
  br i1 %min.iters.check1454, label %polly.loop_header571.preheader, label %vector.ph1455

vector.ph1455:                                    ; preds = %polly.loop_header565
  %n.vec1457 = and i64 %154, -4
  br label %vector.body1453

vector.body1453:                                  ; preds = %vector.body1453, %vector.ph1455
  %index1458 = phi i64 [ 0, %vector.ph1455 ], [ %index.next1459, %vector.body1453 ]
  %156 = shl nuw nsw i64 %index1458, 3
  %157 = getelementptr i8, i8* %scevgep577, i64 %156
  %158 = bitcast i8* %157 to <4 x double>*
  %wide.load1462 = load <4 x double>, <4 x double>* %158, align 8, !alias.scope !88, !noalias !90
  %159 = fmul fast <4 x double> %wide.load1462, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %160 = bitcast i8* %157 to <4 x double>*
  store <4 x double> %159, <4 x double>* %160, align 8, !alias.scope !88, !noalias !90
  %index.next1459 = add i64 %index1458, 4
  %161 = icmp eq i64 %index.next1459, %n.vec1457
  br i1 %161, label %middle.block1451, label %vector.body1453, !llvm.loop !94

middle.block1451:                                 ; preds = %vector.body1453
  %cmp.n1461 = icmp eq i64 %154, %n.vec1457
  br i1 %cmp.n1461, label %polly.loop_exit573, label %polly.loop_header571.preheader

polly.loop_header571.preheader:                   ; preds = %polly.loop_header565, %middle.block1451
  %polly.indvar574.ph = phi i64 [ 0, %polly.loop_header565 ], [ %n.vec1457, %middle.block1451 ]
  br label %polly.loop_header571

polly.loop_exit573:                               ; preds = %polly.loop_header571, %middle.block1451
  %polly.indvar_next569 = add nuw nsw i64 %polly.indvar568, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar_next569, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1054.not, label %polly.loop_header581.preheader, label %polly.loop_header565

polly.loop_header581.preheader:                   ; preds = %polly.loop_exit573
  %Packed_MemRef_call1482 = bitcast i8* %malloccall481 to double*
  br label %polly.loop_header587

polly.loop_header571:                             ; preds = %polly.loop_header571.preheader, %polly.loop_header571
  %polly.indvar574 = phi i64 [ %polly.indvar_next575, %polly.loop_header571 ], [ %polly.indvar574.ph, %polly.loop_header571.preheader ]
  %162 = shl nuw nsw i64 %polly.indvar574, 3
  %scevgep578 = getelementptr i8, i8* %scevgep577, i64 %162
  %scevgep578579 = bitcast i8* %scevgep578 to double*
  %_p_scalar_580 = load double, double* %scevgep578579, align 8, !alias.scope !88, !noalias !90
  %p_mul.i = fmul fast double %_p_scalar_580, 1.200000e+00
  store double %p_mul.i, double* %scevgep578579, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next575 = add nuw nsw i64 %polly.indvar574, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar_next575, %polly.indvar568
  br i1 %exitcond1053.not, label %polly.loop_exit573, label %polly.loop_header571, !llvm.loop !95

polly.loop_header587:                             ; preds = %polly.loop_exit595, %polly.loop_header581.preheader
  %indvars.iv1043 = phi i64 [ %indvars.iv.next1044, %polly.loop_exit595 ], [ 0, %polly.loop_header581.preheader ]
  %polly.indvar590 = phi i64 [ %polly.indvar_next591, %polly.loop_exit595 ], [ 0, %polly.loop_header581.preheader ]
  %163 = mul nsw i64 %polly.indvar590, -32
  %164 = shl nsw i64 %polly.indvar590, 5
  %165 = add nsw i64 %163, 79
  br label %polly.loop_header593

polly.loop_exit595:                               ; preds = %polly.loop_exit634
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %indvars.iv.next1044 = add nsw i64 %indvars.iv1043, -32
  %exitcond1052.not = icmp eq i64 %polly.indvar_next591, 3
  br i1 %exitcond1052.not, label %polly.loop_header587.1, label %polly.loop_header587

polly.loop_header593:                             ; preds = %polly.loop_exit634, %polly.loop_header587
  %indvars.iv1045 = phi i64 [ %indvars.iv.next1046, %polly.loop_exit634 ], [ %indvars.iv1043, %polly.loop_header587 ]
  %indvars.iv1037 = phi i64 [ %indvars.iv.next1038, %polly.loop_exit634 ], [ 0, %polly.loop_header587 ]
  %polly.indvar596 = phi i64 [ %polly.indvar_next597, %polly.loop_exit634 ], [ %polly.indvar590, %polly.loop_header587 ]
  %smin1047 = call i64 @llvm.smin.i64(i64 %indvars.iv1045, i64 -48)
  %166 = add nsw i64 %smin1047, 79
  %smax1048 = call i64 @llvm.smax.i64(i64 %166, i64 0)
  %167 = shl nsw i64 %polly.indvar596, 5
  %168 = add nsw i64 %167, %163
  %.inv876.not = icmp eq i64 %168, 0
  %169 = or i64 %168, 31
  %170 = icmp ult i64 %165, %169
  %171 = select i1 %170, i64 %165, i64 %169
  %polly.loop_guard621.not = icmp ugt i64 %168, %171
  br i1 %.inv876.not, label %polly.loop_header593.split, label %polly.loop_header599.us

polly.loop_header599.us:                          ; preds = %polly.loop_header593, %polly.loop_exit620.us
  %polly.indvar602.us = phi i64 [ %polly.indvar_next603.us, %polly.loop_exit620.us ], [ 0, %polly.loop_header593 ]
  %polly.access.mul.Packed_MemRef_call1482.us = mul nuw nsw i64 %polly.indvar602.us, 80
  br label %polly.loop_header606.us

polly.loop_header606.us:                          ; preds = %polly.loop_header599.us, %polly.loop_header606.us
  %polly.indvar610.us = phi i64 [ %polly.indvar_next611.us, %polly.loop_header606.us ], [ 0, %polly.loop_header599.us ]
  %172 = add nuw nsw i64 %polly.indvar610.us, %164
  %polly.access.mul.call1614.us = mul nuw nsw i64 %172, 60
  %polly.access.add.call1615.us = add nuw nsw i64 %polly.indvar602.us, %polly.access.mul.call1614.us
  %polly.access.call1616.us = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1615.us
  %polly.access.call1616.load.us = load double, double* %polly.access.call1616.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1482.us = add nuw nsw i64 %polly.indvar610.us, %polly.access.mul.Packed_MemRef_call1482.us
  %polly.access.Packed_MemRef_call1482.us = getelementptr double, double* %Packed_MemRef_call1482, i64 %polly.access.add.Packed_MemRef_call1482.us
  store double %polly.access.call1616.load.us, double* %polly.access.Packed_MemRef_call1482.us, align 8
  %polly.indvar_next611.us = add nuw i64 %polly.indvar610.us, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar_next611.us, 32
  br i1 %exitcond1035.not, label %polly.loop_exit608.loopexit.us, label %polly.loop_header606.us

polly.loop_header618.us:                          ; preds = %polly.loop_exit608.loopexit.us, %polly.loop_header618.us
  %polly.indvar622.us = phi i64 [ %polly.indvar_next623.us, %polly.loop_header618.us ], [ %168, %polly.loop_exit608.loopexit.us ]
  %173 = add nuw nsw i64 %polly.indvar622.us, %164
  %polly.access.mul.call1626.us = mul nuw nsw i64 %173, 60
  %polly.access.add.call1627.us = add nuw nsw i64 %polly.indvar602.us, %polly.access.mul.call1626.us
  %polly.access.call1628.us = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1627.us
  %polly.access.call1628.load.us = load double, double* %polly.access.call1628.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1482630.us = add nuw nsw i64 %polly.indvar622.us, %polly.access.mul.Packed_MemRef_call1482.us
  %polly.access.Packed_MemRef_call1482631.us = getelementptr double, double* %Packed_MemRef_call1482, i64 %polly.access.add.Packed_MemRef_call1482630.us
  store double %polly.access.call1628.load.us, double* %polly.access.Packed_MemRef_call1482631.us, align 8
  %polly.indvar_next623.us = add nuw nsw i64 %polly.indvar622.us, 1
  %polly.loop_cond624.not.not.us = icmp ult i64 %polly.indvar622.us, %171
  br i1 %polly.loop_cond624.not.not.us, label %polly.loop_header618.us, label %polly.loop_exit620.us

polly.loop_exit620.us:                            ; preds = %polly.loop_header618.us, %polly.loop_exit608.loopexit.us
  %polly.indvar_next603.us = add nuw nsw i64 %polly.indvar602.us, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar_next603.us, 50
  br i1 %exitcond1036.not, label %polly.loop_header632.preheader, label %polly.loop_header599.us

polly.loop_exit608.loopexit.us:                   ; preds = %polly.loop_header606.us
  br i1 %polly.loop_guard621.not, label %polly.loop_exit620.us, label %polly.loop_header618.us

polly.loop_header593.split:                       ; preds = %polly.loop_header593
  br i1 %polly.loop_guard621.not, label %polly.loop_header632.preheader, label %polly.loop_header599

polly.loop_exit634:                               ; preds = %polly.loop_exit641.loopexit.us, %polly.loop_header632.preheader
  %polly.indvar_next597 = add nuw nsw i64 %polly.indvar596, 1
  %indvars.iv.next1038 = add nuw nsw i64 %indvars.iv1037, 32
  %indvars.iv.next1046 = add nsw i64 %indvars.iv1045, -32
  %exitcond1051.not = icmp eq i64 %polly.indvar_next597, 3
  br i1 %exitcond1051.not, label %polly.loop_exit595, label %polly.loop_header593

polly.loop_header599:                             ; preds = %polly.loop_header593.split, %polly.loop_exit620
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_exit620 ], [ 0, %polly.loop_header593.split ]
  %polly.access.mul.Packed_MemRef_call1482629 = mul nuw nsw i64 %polly.indvar602, 80
  br label %polly.loop_header618

polly.loop_exit620:                               ; preds = %polly.loop_header618
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar_next603, 50
  br i1 %exitcond1034.not, label %polly.loop_header632.preheader, label %polly.loop_header599

polly.loop_header632.preheader:                   ; preds = %polly.loop_exit620.us, %polly.loop_exit620, %polly.loop_header593.split
  %174 = mul nsw i64 %polly.indvar596, -32
  %polly.loop_guard6421141 = icmp sgt i64 %174, -80
  br i1 %polly.loop_guard6421141, label %polly.loop_header632.us, label %polly.loop_exit634

polly.loop_header632.us:                          ; preds = %polly.loop_header632.preheader, %polly.loop_exit641.loopexit.us
  %polly.indvar635.us = phi i64 [ %polly.indvar_next636.us, %polly.loop_exit641.loopexit.us ], [ 0, %polly.loop_header632.preheader ]
  %polly.access.mul.Packed_MemRef_call1482652.us = mul nuw nsw i64 %polly.indvar635.us, 80
  %175 = shl i64 %polly.indvar635.us, 3
  br label %polly.loop_header639.us

polly.loop_header639.us:                          ; preds = %polly.loop_header632.us, %polly.loop_exit648.us
  %indvars.iv1039 = phi i64 [ %indvars.iv1037, %polly.loop_header632.us ], [ %indvars.iv.next1040, %polly.loop_exit648.us ]
  %polly.indvar643.us = phi i64 [ 0, %polly.loop_header632.us ], [ %polly.indvar_next644.us, %polly.loop_exit648.us ]
  %smin1041 = call i64 @llvm.smin.i64(i64 %indvars.iv1039, i64 31)
  %176 = add nuw nsw i64 %polly.indvar643.us, %168
  %177 = add nuw nsw i64 %polly.indvar643.us, %167
  %178 = mul nuw nsw i64 %177, 480
  %179 = add nuw nsw i64 %178, %175
  %scevgep656.us = getelementptr i8, i8* %call2, i64 %179
  %scevgep656657.us = bitcast i8* %scevgep656.us to double*
  %_p_scalar_658.us = load double, double* %scevgep656657.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1482663.us = add nuw nsw i64 %176, %polly.access.mul.Packed_MemRef_call1482652.us
  %polly.access.Packed_MemRef_call1482664.us = getelementptr double, double* %Packed_MemRef_call1482, i64 %polly.access.add.Packed_MemRef_call1482663.us
  %_p_scalar_665.us = load double, double* %polly.access.Packed_MemRef_call1482664.us, align 8
  %180 = mul nuw nsw i64 %177, 640
  br label %polly.loop_header646.us

polly.loop_header646.us:                          ; preds = %polly.loop_header646.us, %polly.loop_header639.us
  %polly.indvar649.us = phi i64 [ 0, %polly.loop_header639.us ], [ %polly.indvar_next650.us, %polly.loop_header646.us ]
  %181 = add nuw nsw i64 %polly.indvar649.us, %164
  %polly.access.add.Packed_MemRef_call1482653.us = add nuw nsw i64 %polly.indvar649.us, %polly.access.mul.Packed_MemRef_call1482652.us
  %polly.access.Packed_MemRef_call1482654.us = getelementptr double, double* %Packed_MemRef_call1482, i64 %polly.access.add.Packed_MemRef_call1482653.us
  %_p_scalar_655.us = load double, double* %polly.access.Packed_MemRef_call1482654.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_658.us, %_p_scalar_655.us
  %182 = mul nuw nsw i64 %181, 480
  %183 = add nuw nsw i64 %182, %175
  %scevgep659.us = getelementptr i8, i8* %call2, i64 %183
  %scevgep659660.us = bitcast i8* %scevgep659.us to double*
  %_p_scalar_661.us = load double, double* %scevgep659660.us, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.us = fmul fast double %_p_scalar_665.us, %_p_scalar_661.us
  %184 = shl i64 %181, 3
  %185 = add nuw nsw i64 %184, %180
  %scevgep666.us = getelementptr i8, i8* %call, i64 %185
  %scevgep666667.us = bitcast i8* %scevgep666.us to double*
  %_p_scalar_668.us = load double, double* %scevgep666667.us, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_668.us
  store double %p_add42.i.us, double* %scevgep666667.us, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next650.us = add nuw nsw i64 %polly.indvar649.us, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar649.us, %smin1041
  br i1 %exitcond1042.not, label %polly.loop_exit648.us, label %polly.loop_header646.us

polly.loop_exit648.us:                            ; preds = %polly.loop_header646.us
  %polly.indvar_next644.us = add nuw nsw i64 %polly.indvar643.us, 1
  %indvars.iv.next1040 = add nuw nsw i64 %indvars.iv1039, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar643.us, %smax1048
  br i1 %exitcond1049.not, label %polly.loop_exit641.loopexit.us, label %polly.loop_header639.us

polly.loop_exit641.loopexit.us:                   ; preds = %polly.loop_exit648.us
  %polly.indvar_next636.us = add nuw nsw i64 %polly.indvar635.us, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar_next636.us, 50
  br i1 %exitcond1050.not, label %polly.loop_exit634, label %polly.loop_header632.us

polly.loop_header618:                             ; preds = %polly.loop_header599, %polly.loop_header618
  %polly.indvar622 = phi i64 [ %polly.indvar_next623, %polly.loop_header618 ], [ %168, %polly.loop_header599 ]
  %186 = add nuw nsw i64 %polly.indvar622, %164
  %polly.access.mul.call1626 = mul nuw nsw i64 %186, 60
  %polly.access.add.call1627 = add nuw nsw i64 %polly.indvar602, %polly.access.mul.call1626
  %polly.access.call1628 = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1627
  %polly.access.call1628.load = load double, double* %polly.access.call1628, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1482630 = add nuw nsw i64 %polly.indvar622, %polly.access.mul.Packed_MemRef_call1482629
  %polly.access.Packed_MemRef_call1482631 = getelementptr double, double* %Packed_MemRef_call1482, i64 %polly.access.add.Packed_MemRef_call1482630
  store double %polly.access.call1628.load, double* %polly.access.Packed_MemRef_call1482631, align 8
  %polly.indvar_next623 = add nuw nsw i64 %polly.indvar622, 1
  %polly.loop_cond624.not.not = icmp ult i64 %polly.indvar622, %171
  br i1 %polly.loop_cond624.not.not, label %polly.loop_header618, label %polly.loop_exit620

polly.loop_header807:                             ; preds = %entry, %polly.loop_exit815
  %polly.indvar810 = phi i64 [ %polly.indvar_next811, %polly.loop_exit815 ], [ 0, %entry ]
  %187 = mul nuw nsw i64 %polly.indvar810, 640
  %188 = trunc i64 %polly.indvar810 to i32
  %broadcast.splatinsert1185 = insertelement <4 x i32> poison, i32 %188, i32 0
  %broadcast.splat1186 = shufflevector <4 x i32> %broadcast.splatinsert1185, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1175

vector.body1175:                                  ; preds = %vector.body1175, %polly.loop_header807
  %index1177 = phi i64 [ 0, %polly.loop_header807 ], [ %index.next1178, %vector.body1175 ]
  %vec.ind1183 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header807 ], [ %vec.ind.next1184, %vector.body1175 ]
  %189 = mul <4 x i32> %vec.ind1183, %broadcast.splat1186
  %190 = add <4 x i32> %189, <i32 3, i32 3, i32 3, i32 3>
  %191 = urem <4 x i32> %190, <i32 80, i32 80, i32 80, i32 80>
  %192 = sitofp <4 x i32> %191 to <4 x double>
  %193 = fmul fast <4 x double> %192, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %194 = shl i64 %index1177, 3
  %195 = add nuw nsw i64 %194, %187
  %196 = getelementptr i8, i8* %call, i64 %195
  %197 = bitcast i8* %196 to <4 x double>*
  store <4 x double> %193, <4 x double>* %197, align 8, !alias.scope !98, !noalias !100
  %index.next1178 = add i64 %index1177, 4
  %vec.ind.next1184 = add <4 x i32> %vec.ind1183, <i32 4, i32 4, i32 4, i32 4>
  %198 = icmp eq i64 %index.next1178, 32
  br i1 %198, label %polly.loop_exit815, label %vector.body1175, !llvm.loop !103

polly.loop_exit815:                               ; preds = %vector.body1175
  %polly.indvar_next811 = add nuw nsw i64 %polly.indvar810, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar_next811, 32
  br i1 %exitcond1074.not, label %polly.loop_header807.1, label %polly.loop_header807

polly.loop_header834:                             ; preds = %polly.loop_exit815.2.2, %polly.loop_exit842
  %polly.indvar837 = phi i64 [ %polly.indvar_next838, %polly.loop_exit842 ], [ 0, %polly.loop_exit815.2.2 ]
  %199 = mul nuw nsw i64 %polly.indvar837, 480
  %200 = trunc i64 %polly.indvar837 to i32
  %broadcast.splatinsert1299 = insertelement <4 x i32> poison, i32 %200, i32 0
  %broadcast.splat1300 = shufflevector <4 x i32> %broadcast.splatinsert1299, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1289

vector.body1289:                                  ; preds = %vector.body1289, %polly.loop_header834
  %index1291 = phi i64 [ 0, %polly.loop_header834 ], [ %index.next1292, %vector.body1289 ]
  %vec.ind1297 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header834 ], [ %vec.ind.next1298, %vector.body1289 ]
  %201 = mul <4 x i32> %vec.ind1297, %broadcast.splat1300
  %202 = add <4 x i32> %201, <i32 2, i32 2, i32 2, i32 2>
  %203 = urem <4 x i32> %202, <i32 60, i32 60, i32 60, i32 60>
  %204 = sitofp <4 x i32> %203 to <4 x double>
  %205 = fmul fast <4 x double> %204, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %206 = shl i64 %index1291, 3
  %207 = add i64 %206, %199
  %208 = getelementptr i8, i8* %call2, i64 %207
  %209 = bitcast i8* %208 to <4 x double>*
  store <4 x double> %205, <4 x double>* %209, align 8, !alias.scope !102, !noalias !104
  %index.next1292 = add i64 %index1291, 4
  %vec.ind.next1298 = add <4 x i32> %vec.ind1297, <i32 4, i32 4, i32 4, i32 4>
  %210 = icmp eq i64 %index.next1292, 32
  br i1 %210, label %polly.loop_exit842, label %vector.body1289, !llvm.loop !105

polly.loop_exit842:                               ; preds = %vector.body1289
  %polly.indvar_next838 = add nuw nsw i64 %polly.indvar837, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar_next838, 32
  br i1 %exitcond1065.not, label %polly.loop_header834.1, label %polly.loop_header834

polly.loop_header860:                             ; preds = %polly.loop_exit842.1.2, %polly.loop_exit868
  %polly.indvar863 = phi i64 [ %polly.indvar_next864, %polly.loop_exit868 ], [ 0, %polly.loop_exit842.1.2 ]
  %211 = mul nuw nsw i64 %polly.indvar863, 480
  %212 = trunc i64 %polly.indvar863 to i32
  %broadcast.splatinsert1377 = insertelement <4 x i32> poison, i32 %212, i32 0
  %broadcast.splat1378 = shufflevector <4 x i32> %broadcast.splatinsert1377, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1367

vector.body1367:                                  ; preds = %vector.body1367, %polly.loop_header860
  %index1369 = phi i64 [ 0, %polly.loop_header860 ], [ %index.next1370, %vector.body1367 ]
  %vec.ind1375 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header860 ], [ %vec.ind.next1376, %vector.body1367 ]
  %213 = mul <4 x i32> %vec.ind1375, %broadcast.splat1378
  %214 = add <4 x i32> %213, <i32 1, i32 1, i32 1, i32 1>
  %215 = urem <4 x i32> %214, <i32 80, i32 80, i32 80, i32 80>
  %216 = sitofp <4 x i32> %215 to <4 x double>
  %217 = fmul fast <4 x double> %216, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %218 = shl i64 %index1369, 3
  %219 = add i64 %218, %211
  %220 = getelementptr i8, i8* %call1, i64 %219
  %221 = bitcast i8* %220 to <4 x double>*
  store <4 x double> %217, <4 x double>* %221, align 8, !alias.scope !101, !noalias !106
  %index.next1370 = add i64 %index1369, 4
  %vec.ind.next1376 = add <4 x i32> %vec.ind1375, <i32 4, i32 4, i32 4, i32 4>
  %222 = icmp eq i64 %index.next1370, 32
  br i1 %222, label %polly.loop_exit868, label %vector.body1367, !llvm.loop !107

polly.loop_exit868:                               ; preds = %vector.body1367
  %polly.indvar_next864 = add nuw nsw i64 %polly.indvar863, 1
  %exitcond1059.not = icmp eq i64 %polly.indvar_next864, 32
  br i1 %exitcond1059.not, label %polly.loop_header860.1, label %polly.loop_header860

polly.loop_header205.1:                           ; preds = %polly.loop_exit213, %polly.loop_exit213.1
  %indvars.iv1002.1 = phi i64 [ %indvars.iv.next1003.1, %polly.loop_exit213.1 ], [ 0, %polly.loop_exit213 ]
  %polly.indvar208.1 = phi i64 [ %polly.indvar_next209.1, %polly.loop_exit213.1 ], [ 0, %polly.loop_exit213 ]
  %223 = mul nsw i64 %polly.indvar208.1, -32
  %224 = shl nsw i64 %polly.indvar208.1, 5
  %225 = add nsw i64 %223, 79
  br label %polly.loop_header211.1

polly.loop_header211.1:                           ; preds = %polly.loop_exit250.1, %polly.loop_header205.1
  %indvars.iv1004.1 = phi i64 [ %indvars.iv.next1005.1, %polly.loop_exit250.1 ], [ %indvars.iv1002.1, %polly.loop_header205.1 ]
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit250.1 ], [ 0, %polly.loop_header205.1 ]
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit250.1 ], [ %polly.indvar208.1, %polly.loop_header205.1 ]
  %smin1006.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1004.1, i64 -48)
  %226 = add nsw i64 %smin1006.1, 79
  %smax.1 = call i64 @llvm.smax.i64(i64 %226, i64 0)
  %227 = shl nsw i64 %polly.indvar214.1, 5
  %228 = add nsw i64 %227, %223
  %.inv.1.not = icmp eq i64 %228, 0
  %229 = or i64 %228, 31
  %230 = icmp ult i64 %225, %229
  %231 = select i1 %230, i64 %225, i64 %229
  %polly.loop_guard237.not.1 = icmp ugt i64 %228, %231
  br i1 %.inv.1.not, label %polly.loop_header211.split.1, label %polly.loop_header217.us.1

polly.loop_header211.split.1:                     ; preds = %polly.loop_header211.1
  br i1 %polly.loop_guard237.not.1, label %polly.loop_header248.preheader.1, label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_header211.split.1, %polly.loop_exit236.1
  %polly.indvar220.1 = phi i64 [ %polly.indvar_next221.1, %polly.loop_exit236.1 ], [ 0, %polly.loop_header211.split.1 ]
  %232 = add nuw nsw i64 %polly.indvar220.1, 50
  %polly.access.mul.Packed_MemRef_call1245.1 = mul nuw nsw i64 %polly.indvar220.1, 80
  br label %polly.loop_header234.1

polly.loop_header234.1:                           ; preds = %polly.loop_header234.1, %polly.loop_header217.1
  %polly.indvar238.1 = phi i64 [ %polly.indvar_next239.1, %polly.loop_header234.1 ], [ %228, %polly.loop_header217.1 ]
  %233 = add nuw nsw i64 %polly.indvar238.1, %224
  %polly.access.mul.call1242.1 = mul nuw nsw i64 %233, 60
  %polly.access.add.call1243.1 = add nuw nsw i64 %232, %polly.access.mul.call1242.1
  %polly.access.call1244.1 = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1243.1
  %polly.access.call1244.load.1 = load double, double* %polly.access.call1244.1, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1246.1 = add nuw nsw i64 %polly.indvar238.1, %polly.access.mul.Packed_MemRef_call1245.1
  %polly.access.Packed_MemRef_call1247.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.1
  store double %polly.access.call1244.load.1, double* %polly.access.Packed_MemRef_call1247.1, align 8
  %polly.indvar_next239.1 = add nuw nsw i64 %polly.indvar238.1, 1
  %polly.loop_cond240.not.not.1 = icmp ult i64 %polly.indvar238.1, %231
  br i1 %polly.loop_cond240.not.not.1, label %polly.loop_header234.1, label %polly.loop_exit236.1

polly.loop_exit236.1:                             ; preds = %polly.loop_header234.1
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next221.1, 10
  br i1 %exitcond.1.not, label %polly.loop_header248.preheader.1, label %polly.loop_header217.1

polly.loop_header217.us.1:                        ; preds = %polly.loop_header211.1, %polly.loop_exit236.us.1
  %polly.indvar220.us.1 = phi i64 [ %polly.indvar_next221.us.1, %polly.loop_exit236.us.1 ], [ 0, %polly.loop_header211.1 ]
  %234 = add nuw nsw i64 %polly.indvar220.us.1, 50
  %polly.access.mul.Packed_MemRef_call1.us.1 = mul nuw nsw i64 %polly.indvar220.us.1, 80
  br label %polly.loop_header223.us.1

polly.loop_header223.us.1:                        ; preds = %polly.loop_header223.us.1, %polly.loop_header217.us.1
  %polly.indvar226.us.1 = phi i64 [ %polly.indvar_next227.us.1, %polly.loop_header223.us.1 ], [ 0, %polly.loop_header217.us.1 ]
  %235 = add nuw nsw i64 %polly.indvar226.us.1, %224
  %polly.access.mul.call1230.us.1 = mul nuw nsw i64 %235, 60
  %polly.access.add.call1231.us.1 = add nuw nsw i64 %234, %polly.access.mul.call1230.us.1
  %polly.access.call1232.us.1 = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1231.us.1
  %polly.access.call1232.load.us.1 = load double, double* %polly.access.call1232.us.1, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar226.us.1, %polly.access.mul.Packed_MemRef_call1.us.1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1232.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next227.us.1 = add nuw i64 %polly.indvar226.us.1, 1
  %exitcond997.1.not = icmp eq i64 %polly.indvar_next227.us.1, 32
  br i1 %exitcond997.1.not, label %polly.loop_exit225.loopexit.us.1, label %polly.loop_header223.us.1

polly.loop_exit225.loopexit.us.1:                 ; preds = %polly.loop_header223.us.1
  br i1 %polly.loop_guard237.not.1, label %polly.loop_exit236.us.1, label %polly.loop_header234.us.1

polly.loop_header234.us.1:                        ; preds = %polly.loop_exit225.loopexit.us.1, %polly.loop_header234.us.1
  %polly.indvar238.us.1 = phi i64 [ %polly.indvar_next239.us.1, %polly.loop_header234.us.1 ], [ %228, %polly.loop_exit225.loopexit.us.1 ]
  %236 = add nuw nsw i64 %polly.indvar238.us.1, %224
  %polly.access.mul.call1242.us.1 = mul nuw nsw i64 %236, 60
  %polly.access.add.call1243.us.1 = add nuw nsw i64 %234, %polly.access.mul.call1242.us.1
  %polly.access.call1244.us.1 = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1243.us.1
  %polly.access.call1244.load.us.1 = load double, double* %polly.access.call1244.us.1, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1246.us.1 = add nuw nsw i64 %polly.indvar238.us.1, %polly.access.mul.Packed_MemRef_call1.us.1
  %polly.access.Packed_MemRef_call1247.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us.1
  store double %polly.access.call1244.load.us.1, double* %polly.access.Packed_MemRef_call1247.us.1, align 8
  %polly.indvar_next239.us.1 = add nuw nsw i64 %polly.indvar238.us.1, 1
  %polly.loop_cond240.not.not.us.1 = icmp ult i64 %polly.indvar238.us.1, %231
  br i1 %polly.loop_cond240.not.not.us.1, label %polly.loop_header234.us.1, label %polly.loop_exit236.us.1

polly.loop_exit236.us.1:                          ; preds = %polly.loop_header234.us.1, %polly.loop_exit225.loopexit.us.1
  %polly.indvar_next221.us.1 = add nuw nsw i64 %polly.indvar220.us.1, 1
  %exitcond998.1.not = icmp eq i64 %polly.indvar_next221.us.1, 10
  br i1 %exitcond998.1.not, label %polly.loop_header248.preheader.1, label %polly.loop_header217.us.1

polly.loop_header248.preheader.1:                 ; preds = %polly.loop_exit236.us.1, %polly.loop_exit236.1, %polly.loop_header211.split.1
  %237 = mul nsw i64 %polly.indvar214.1, -32
  %polly.loop_guard258.11138 = icmp sgt i64 %237, -80
  br i1 %polly.loop_guard258.11138, label %polly.loop_header248.us.1, label %polly.loop_exit250.1

polly.loop_header248.us.1:                        ; preds = %polly.loop_header248.preheader.1, %polly.loop_exit257.loopexit.us.1
  %polly.indvar251.us.1 = phi i64 [ %polly.indvar_next252.us.1, %polly.loop_exit257.loopexit.us.1 ], [ 0, %polly.loop_header248.preheader.1 ]
  %polly.access.mul.Packed_MemRef_call1268.us.1 = mul nuw nsw i64 %polly.indvar251.us.1, 80
  %238 = shl i64 %polly.indvar251.us.1, 3
  %239 = add i64 %238, 400
  br label %polly.loop_header255.us.1

polly.loop_header255.us.1:                        ; preds = %polly.loop_exit264.us.1, %polly.loop_header248.us.1
  %indvars.iv999.1 = phi i64 [ %indvars.iv.1, %polly.loop_header248.us.1 ], [ %indvars.iv.next1000.1, %polly.loop_exit264.us.1 ]
  %polly.indvar259.us.1 = phi i64 [ 0, %polly.loop_header248.us.1 ], [ %polly.indvar_next260.us.1, %polly.loop_exit264.us.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv999.1, i64 31)
  %240 = add nuw nsw i64 %polly.indvar259.us.1, %228
  %241 = add nuw nsw i64 %polly.indvar259.us.1, %227
  %242 = mul nuw nsw i64 %241, 480
  %243 = add nuw nsw i64 %242, %239
  %scevgep272.us.1 = getelementptr i8, i8* %call2, i64 %243
  %scevgep272273.us.1 = bitcast i8* %scevgep272.us.1 to double*
  %_p_scalar_274.us.1 = load double, double* %scevgep272273.us.1, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1279.us.1 = add nuw nsw i64 %240, %polly.access.mul.Packed_MemRef_call1268.us.1
  %polly.access.Packed_MemRef_call1280.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1279.us.1
  %_p_scalar_281.us.1 = load double, double* %polly.access.Packed_MemRef_call1280.us.1, align 8
  %244 = mul nuw nsw i64 %241, 640
  br label %polly.loop_header262.us.1

polly.loop_header262.us.1:                        ; preds = %polly.loop_header262.us.1, %polly.loop_header255.us.1
  %polly.indvar265.us.1 = phi i64 [ 0, %polly.loop_header255.us.1 ], [ %polly.indvar_next266.us.1, %polly.loop_header262.us.1 ]
  %245 = add nuw nsw i64 %polly.indvar265.us.1, %224
  %polly.access.add.Packed_MemRef_call1269.us.1 = add nuw nsw i64 %polly.indvar265.us.1, %polly.access.mul.Packed_MemRef_call1268.us.1
  %polly.access.Packed_MemRef_call1270.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1269.us.1
  %_p_scalar_271.us.1 = load double, double* %polly.access.Packed_MemRef_call1270.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_274.us.1, %_p_scalar_271.us.1
  %246 = mul nuw nsw i64 %245, 480
  %247 = add nuw nsw i64 %246, %239
  %scevgep275.us.1 = getelementptr i8, i8* %call2, i64 %247
  %scevgep275276.us.1 = bitcast i8* %scevgep275.us.1 to double*
  %_p_scalar_277.us.1 = load double, double* %scevgep275276.us.1, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_281.us.1, %_p_scalar_277.us.1
  %248 = shl i64 %245, 3
  %249 = add nuw nsw i64 %248, %244
  %scevgep282.us.1 = getelementptr i8, i8* %call, i64 %249
  %scevgep282283.us.1 = bitcast i8* %scevgep282.us.1 to double*
  %_p_scalar_284.us.1 = load double, double* %scevgep282283.us.1, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_284.us.1
  store double %p_add42.i118.us.1, double* %scevgep282283.us.1, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next266.us.1 = add nuw nsw i64 %polly.indvar265.us.1, 1
  %exitcond1001.1.not = icmp eq i64 %polly.indvar265.us.1, %smin.1
  br i1 %exitcond1001.1.not, label %polly.loop_exit264.us.1, label %polly.loop_header262.us.1

polly.loop_exit264.us.1:                          ; preds = %polly.loop_header262.us.1
  %polly.indvar_next260.us.1 = add nuw nsw i64 %polly.indvar259.us.1, 1
  %indvars.iv.next1000.1 = add nuw nsw i64 %indvars.iv999.1, 1
  %exitcond1007.1.not = icmp eq i64 %polly.indvar259.us.1, %smax.1
  br i1 %exitcond1007.1.not, label %polly.loop_exit257.loopexit.us.1, label %polly.loop_header255.us.1

polly.loop_exit257.loopexit.us.1:                 ; preds = %polly.loop_exit264.us.1
  %polly.indvar_next252.us.1 = add nuw nsw i64 %polly.indvar251.us.1, 1
  %exitcond1008.1.not = icmp eq i64 %polly.indvar_next252.us.1, 10
  br i1 %exitcond1008.1.not, label %polly.loop_exit250.1, label %polly.loop_header248.us.1

polly.loop_exit250.1:                             ; preds = %polly.loop_exit257.loopexit.us.1, %polly.loop_header248.preheader.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 32
  %indvars.iv.next1005.1 = add nsw i64 %indvars.iv1004.1, -32
  %exitcond1009.1.not = icmp eq i64 %polly.indvar_next215.1, 3
  br i1 %exitcond1009.1.not, label %polly.loop_exit213.1, label %polly.loop_header211.1

polly.loop_exit213.1:                             ; preds = %polly.loop_exit250.1
  %polly.indvar_next209.1 = add nuw nsw i64 %polly.indvar208.1, 1
  %indvars.iv.next1003.1 = add nsw i64 %indvars.iv1002.1, -32
  %exitcond1010.1.not = icmp eq i64 %polly.indvar_next209.1, 3
  br i1 %exitcond1010.1.not, label %polly.loop_exit207.1, label %polly.loop_header205.1

polly.loop_exit207.1:                             ; preds = %polly.loop_exit213.1
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header395.1:                           ; preds = %polly.loop_exit403, %polly.loop_exit403.1
  %indvars.iv1022.1 = phi i64 [ %indvars.iv.next1023.1, %polly.loop_exit403.1 ], [ 0, %polly.loop_exit403 ]
  %polly.indvar398.1 = phi i64 [ %polly.indvar_next399.1, %polly.loop_exit403.1 ], [ 0, %polly.loop_exit403 ]
  %250 = mul nsw i64 %polly.indvar398.1, -32
  %251 = shl nsw i64 %polly.indvar398.1, 5
  %252 = add nsw i64 %250, 79
  br label %polly.loop_header401.1

polly.loop_header401.1:                           ; preds = %polly.loop_exit442.1, %polly.loop_header395.1
  %indvars.iv1024.1 = phi i64 [ %indvars.iv.next1025.1, %polly.loop_exit442.1 ], [ %indvars.iv1022.1, %polly.loop_header395.1 ]
  %indvars.iv1016.1 = phi i64 [ %indvars.iv.next1017.1, %polly.loop_exit442.1 ], [ 0, %polly.loop_header395.1 ]
  %polly.indvar404.1 = phi i64 [ %polly.indvar_next405.1, %polly.loop_exit442.1 ], [ %polly.indvar398.1, %polly.loop_header395.1 ]
  %smin1026.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1024.1, i64 -48)
  %253 = add nsw i64 %smin1026.1, 79
  %smax1027.1 = call i64 @llvm.smax.i64(i64 %253, i64 0)
  %254 = shl nsw i64 %polly.indvar404.1, 5
  %255 = add nsw i64 %254, %250
  %.inv875.1.not = icmp eq i64 %255, 0
  %256 = or i64 %255, 31
  %257 = icmp ult i64 %252, %256
  %258 = select i1 %257, i64 %252, i64 %256
  %polly.loop_guard429.not.1 = icmp ugt i64 %255, %258
  br i1 %.inv875.1.not, label %polly.loop_header401.split.1, label %polly.loop_header407.us.1

polly.loop_header401.split.1:                     ; preds = %polly.loop_header401.1
  br i1 %polly.loop_guard429.not.1, label %polly.loop_header440.preheader.1, label %polly.loop_header407.1

polly.loop_header407.1:                           ; preds = %polly.loop_header401.split.1, %polly.loop_exit428.1
  %polly.indvar410.1 = phi i64 [ %polly.indvar_next411.1, %polly.loop_exit428.1 ], [ 0, %polly.loop_header401.split.1 ]
  %259 = add nuw nsw i64 %polly.indvar410.1, 50
  %polly.access.mul.Packed_MemRef_call1290437.1 = mul nuw nsw i64 %polly.indvar410.1, 80
  br label %polly.loop_header426.1

polly.loop_header426.1:                           ; preds = %polly.loop_header426.1, %polly.loop_header407.1
  %polly.indvar430.1 = phi i64 [ %polly.indvar_next431.1, %polly.loop_header426.1 ], [ %255, %polly.loop_header407.1 ]
  %260 = add nuw nsw i64 %polly.indvar430.1, %251
  %polly.access.mul.call1434.1 = mul nuw nsw i64 %260, 60
  %polly.access.add.call1435.1 = add nuw nsw i64 %259, %polly.access.mul.call1434.1
  %polly.access.call1436.1 = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1435.1
  %polly.access.call1436.load.1 = load double, double* %polly.access.call1436.1, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290438.1 = add nuw nsw i64 %polly.indvar430.1, %polly.access.mul.Packed_MemRef_call1290437.1
  %polly.access.Packed_MemRef_call1290439.1 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290438.1
  store double %polly.access.call1436.load.1, double* %polly.access.Packed_MemRef_call1290439.1, align 8
  %polly.indvar_next431.1 = add nuw nsw i64 %polly.indvar430.1, 1
  %polly.loop_cond432.not.not.1 = icmp ult i64 %polly.indvar430.1, %258
  br i1 %polly.loop_cond432.not.not.1, label %polly.loop_header426.1, label %polly.loop_exit428.1

polly.loop_exit428.1:                             ; preds = %polly.loop_header426.1
  %polly.indvar_next411.1 = add nuw nsw i64 %polly.indvar410.1, 1
  %exitcond1013.1.not = icmp eq i64 %polly.indvar_next411.1, 10
  br i1 %exitcond1013.1.not, label %polly.loop_header440.preheader.1, label %polly.loop_header407.1

polly.loop_header407.us.1:                        ; preds = %polly.loop_header401.1, %polly.loop_exit428.us.1
  %polly.indvar410.us.1 = phi i64 [ %polly.indvar_next411.us.1, %polly.loop_exit428.us.1 ], [ 0, %polly.loop_header401.1 ]
  %261 = add nuw nsw i64 %polly.indvar410.us.1, 50
  %polly.access.mul.Packed_MemRef_call1290.us.1 = mul nuw nsw i64 %polly.indvar410.us.1, 80
  br label %polly.loop_header414.us.1

polly.loop_header414.us.1:                        ; preds = %polly.loop_header414.us.1, %polly.loop_header407.us.1
  %polly.indvar418.us.1 = phi i64 [ %polly.indvar_next419.us.1, %polly.loop_header414.us.1 ], [ 0, %polly.loop_header407.us.1 ]
  %262 = add nuw nsw i64 %polly.indvar418.us.1, %251
  %polly.access.mul.call1422.us.1 = mul nuw nsw i64 %262, 60
  %polly.access.add.call1423.us.1 = add nuw nsw i64 %261, %polly.access.mul.call1422.us.1
  %polly.access.call1424.us.1 = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1423.us.1
  %polly.access.call1424.load.us.1 = load double, double* %polly.access.call1424.us.1, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290.us.1 = add nuw nsw i64 %polly.indvar418.us.1, %polly.access.mul.Packed_MemRef_call1290.us.1
  %polly.access.Packed_MemRef_call1290.us.1 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.1
  store double %polly.access.call1424.load.us.1, double* %polly.access.Packed_MemRef_call1290.us.1, align 8
  %polly.indvar_next419.us.1 = add nuw i64 %polly.indvar418.us.1, 1
  %exitcond1014.1.not = icmp eq i64 %polly.indvar_next419.us.1, 32
  br i1 %exitcond1014.1.not, label %polly.loop_exit416.loopexit.us.1, label %polly.loop_header414.us.1

polly.loop_exit416.loopexit.us.1:                 ; preds = %polly.loop_header414.us.1
  br i1 %polly.loop_guard429.not.1, label %polly.loop_exit428.us.1, label %polly.loop_header426.us.1

polly.loop_header426.us.1:                        ; preds = %polly.loop_exit416.loopexit.us.1, %polly.loop_header426.us.1
  %polly.indvar430.us.1 = phi i64 [ %polly.indvar_next431.us.1, %polly.loop_header426.us.1 ], [ %255, %polly.loop_exit416.loopexit.us.1 ]
  %263 = add nuw nsw i64 %polly.indvar430.us.1, %251
  %polly.access.mul.call1434.us.1 = mul nuw nsw i64 %263, 60
  %polly.access.add.call1435.us.1 = add nuw nsw i64 %261, %polly.access.mul.call1434.us.1
  %polly.access.call1436.us.1 = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1435.us.1
  %polly.access.call1436.load.us.1 = load double, double* %polly.access.call1436.us.1, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290438.us.1 = add nuw nsw i64 %polly.indvar430.us.1, %polly.access.mul.Packed_MemRef_call1290.us.1
  %polly.access.Packed_MemRef_call1290439.us.1 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290438.us.1
  store double %polly.access.call1436.load.us.1, double* %polly.access.Packed_MemRef_call1290439.us.1, align 8
  %polly.indvar_next431.us.1 = add nuw nsw i64 %polly.indvar430.us.1, 1
  %polly.loop_cond432.not.not.us.1 = icmp ult i64 %polly.indvar430.us.1, %258
  br i1 %polly.loop_cond432.not.not.us.1, label %polly.loop_header426.us.1, label %polly.loop_exit428.us.1

polly.loop_exit428.us.1:                          ; preds = %polly.loop_header426.us.1, %polly.loop_exit416.loopexit.us.1
  %polly.indvar_next411.us.1 = add nuw nsw i64 %polly.indvar410.us.1, 1
  %exitcond1015.1.not = icmp eq i64 %polly.indvar_next411.us.1, 10
  br i1 %exitcond1015.1.not, label %polly.loop_header440.preheader.1, label %polly.loop_header407.us.1

polly.loop_header440.preheader.1:                 ; preds = %polly.loop_exit428.us.1, %polly.loop_exit428.1, %polly.loop_header401.split.1
  %264 = mul nsw i64 %polly.indvar404.1, -32
  %polly.loop_guard450.11140 = icmp sgt i64 %264, -80
  br i1 %polly.loop_guard450.11140, label %polly.loop_header440.us.1, label %polly.loop_exit442.1

polly.loop_header440.us.1:                        ; preds = %polly.loop_header440.preheader.1, %polly.loop_exit449.loopexit.us.1
  %polly.indvar443.us.1 = phi i64 [ %polly.indvar_next444.us.1, %polly.loop_exit449.loopexit.us.1 ], [ 0, %polly.loop_header440.preheader.1 ]
  %polly.access.mul.Packed_MemRef_call1290460.us.1 = mul nuw nsw i64 %polly.indvar443.us.1, 80
  %265 = shl i64 %polly.indvar443.us.1, 3
  %266 = add i64 %265, 400
  br label %polly.loop_header447.us.1

polly.loop_header447.us.1:                        ; preds = %polly.loop_exit456.us.1, %polly.loop_header440.us.1
  %indvars.iv1018.1 = phi i64 [ %indvars.iv1016.1, %polly.loop_header440.us.1 ], [ %indvars.iv.next1019.1, %polly.loop_exit456.us.1 ]
  %polly.indvar451.us.1 = phi i64 [ 0, %polly.loop_header440.us.1 ], [ %polly.indvar_next452.us.1, %polly.loop_exit456.us.1 ]
  %smin1020.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1018.1, i64 31)
  %267 = add nuw nsw i64 %polly.indvar451.us.1, %255
  %268 = add nuw nsw i64 %polly.indvar451.us.1, %254
  %269 = mul nuw nsw i64 %268, 480
  %270 = add nuw nsw i64 %269, %266
  %scevgep464.us.1 = getelementptr i8, i8* %call2, i64 %270
  %scevgep464465.us.1 = bitcast i8* %scevgep464.us.1 to double*
  %_p_scalar_466.us.1 = load double, double* %scevgep464465.us.1, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290471.us.1 = add nuw nsw i64 %267, %polly.access.mul.Packed_MemRef_call1290460.us.1
  %polly.access.Packed_MemRef_call1290472.us.1 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290471.us.1
  %_p_scalar_473.us.1 = load double, double* %polly.access.Packed_MemRef_call1290472.us.1, align 8
  %271 = mul nuw nsw i64 %268, 640
  br label %polly.loop_header454.us.1

polly.loop_header454.us.1:                        ; preds = %polly.loop_header454.us.1, %polly.loop_header447.us.1
  %polly.indvar457.us.1 = phi i64 [ 0, %polly.loop_header447.us.1 ], [ %polly.indvar_next458.us.1, %polly.loop_header454.us.1 ]
  %272 = add nuw nsw i64 %polly.indvar457.us.1, %251
  %polly.access.add.Packed_MemRef_call1290461.us.1 = add nuw nsw i64 %polly.indvar457.us.1, %polly.access.mul.Packed_MemRef_call1290460.us.1
  %polly.access.Packed_MemRef_call1290462.us.1 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290461.us.1
  %_p_scalar_463.us.1 = load double, double* %polly.access.Packed_MemRef_call1290462.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_466.us.1, %_p_scalar_463.us.1
  %273 = mul nuw nsw i64 %272, 480
  %274 = add nuw nsw i64 %273, %266
  %scevgep467.us.1 = getelementptr i8, i8* %call2, i64 %274
  %scevgep467468.us.1 = bitcast i8* %scevgep467.us.1 to double*
  %_p_scalar_469.us.1 = load double, double* %scevgep467468.us.1, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_473.us.1, %_p_scalar_469.us.1
  %275 = shl i64 %272, 3
  %276 = add nuw nsw i64 %275, %271
  %scevgep474.us.1 = getelementptr i8, i8* %call, i64 %276
  %scevgep474475.us.1 = bitcast i8* %scevgep474.us.1 to double*
  %_p_scalar_476.us.1 = load double, double* %scevgep474475.us.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_476.us.1
  store double %p_add42.i79.us.1, double* %scevgep474475.us.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next458.us.1 = add nuw nsw i64 %polly.indvar457.us.1, 1
  %exitcond1021.1.not = icmp eq i64 %polly.indvar457.us.1, %smin1020.1
  br i1 %exitcond1021.1.not, label %polly.loop_exit456.us.1, label %polly.loop_header454.us.1

polly.loop_exit456.us.1:                          ; preds = %polly.loop_header454.us.1
  %polly.indvar_next452.us.1 = add nuw nsw i64 %polly.indvar451.us.1, 1
  %indvars.iv.next1019.1 = add nuw nsw i64 %indvars.iv1018.1, 1
  %exitcond1028.1.not = icmp eq i64 %polly.indvar451.us.1, %smax1027.1
  br i1 %exitcond1028.1.not, label %polly.loop_exit449.loopexit.us.1, label %polly.loop_header447.us.1

polly.loop_exit449.loopexit.us.1:                 ; preds = %polly.loop_exit456.us.1
  %polly.indvar_next444.us.1 = add nuw nsw i64 %polly.indvar443.us.1, 1
  %exitcond1029.1.not = icmp eq i64 %polly.indvar_next444.us.1, 10
  br i1 %exitcond1029.1.not, label %polly.loop_exit442.1, label %polly.loop_header440.us.1

polly.loop_exit442.1:                             ; preds = %polly.loop_exit449.loopexit.us.1, %polly.loop_header440.preheader.1
  %polly.indvar_next405.1 = add nuw nsw i64 %polly.indvar404.1, 1
  %indvars.iv.next1017.1 = add nuw nsw i64 %indvars.iv1016.1, 32
  %indvars.iv.next1025.1 = add nsw i64 %indvars.iv1024.1, -32
  %exitcond1030.1.not = icmp eq i64 %polly.indvar_next405.1, 3
  br i1 %exitcond1030.1.not, label %polly.loop_exit403.1, label %polly.loop_header401.1

polly.loop_exit403.1:                             ; preds = %polly.loop_exit442.1
  %polly.indvar_next399.1 = add nuw nsw i64 %polly.indvar398.1, 1
  %indvars.iv.next1023.1 = add nsw i64 %indvars.iv1022.1, -32
  %exitcond1031.1.not = icmp eq i64 %polly.indvar_next399.1, 3
  br i1 %exitcond1031.1.not, label %polly.loop_exit397.1, label %polly.loop_header395.1

polly.loop_exit397.1:                             ; preds = %polly.loop_exit403.1
  tail call void @free(i8* %malloccall289)
  br label %kernel_syr2k.exit90

polly.loop_header587.1:                           ; preds = %polly.loop_exit595, %polly.loop_exit595.1
  %indvars.iv1043.1 = phi i64 [ %indvars.iv.next1044.1, %polly.loop_exit595.1 ], [ 0, %polly.loop_exit595 ]
  %polly.indvar590.1 = phi i64 [ %polly.indvar_next591.1, %polly.loop_exit595.1 ], [ 0, %polly.loop_exit595 ]
  %277 = mul nsw i64 %polly.indvar590.1, -32
  %278 = shl nsw i64 %polly.indvar590.1, 5
  %279 = add nsw i64 %277, 79
  br label %polly.loop_header593.1

polly.loop_header593.1:                           ; preds = %polly.loop_exit634.1, %polly.loop_header587.1
  %indvars.iv1045.1 = phi i64 [ %indvars.iv.next1046.1, %polly.loop_exit634.1 ], [ %indvars.iv1043.1, %polly.loop_header587.1 ]
  %indvars.iv1037.1 = phi i64 [ %indvars.iv.next1038.1, %polly.loop_exit634.1 ], [ 0, %polly.loop_header587.1 ]
  %polly.indvar596.1 = phi i64 [ %polly.indvar_next597.1, %polly.loop_exit634.1 ], [ %polly.indvar590.1, %polly.loop_header587.1 ]
  %smin1047.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1045.1, i64 -48)
  %280 = add nsw i64 %smin1047.1, 79
  %smax1048.1 = call i64 @llvm.smax.i64(i64 %280, i64 0)
  %281 = shl nsw i64 %polly.indvar596.1, 5
  %282 = add nsw i64 %281, %277
  %.inv876.1.not = icmp eq i64 %282, 0
  %283 = or i64 %282, 31
  %284 = icmp ult i64 %279, %283
  %285 = select i1 %284, i64 %279, i64 %283
  %polly.loop_guard621.not.1 = icmp ugt i64 %282, %285
  br i1 %.inv876.1.not, label %polly.loop_header593.split.1, label %polly.loop_header599.us.1

polly.loop_header593.split.1:                     ; preds = %polly.loop_header593.1
  br i1 %polly.loop_guard621.not.1, label %polly.loop_header632.preheader.1, label %polly.loop_header599.1

polly.loop_header599.1:                           ; preds = %polly.loop_header593.split.1, %polly.loop_exit620.1
  %polly.indvar602.1 = phi i64 [ %polly.indvar_next603.1, %polly.loop_exit620.1 ], [ 0, %polly.loop_header593.split.1 ]
  %286 = add nuw nsw i64 %polly.indvar602.1, 50
  %polly.access.mul.Packed_MemRef_call1482629.1 = mul nuw nsw i64 %polly.indvar602.1, 80
  br label %polly.loop_header618.1

polly.loop_header618.1:                           ; preds = %polly.loop_header618.1, %polly.loop_header599.1
  %polly.indvar622.1 = phi i64 [ %polly.indvar_next623.1, %polly.loop_header618.1 ], [ %282, %polly.loop_header599.1 ]
  %287 = add nuw nsw i64 %polly.indvar622.1, %278
  %polly.access.mul.call1626.1 = mul nuw nsw i64 %287, 60
  %polly.access.add.call1627.1 = add nuw nsw i64 %286, %polly.access.mul.call1626.1
  %polly.access.call1628.1 = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1627.1
  %polly.access.call1628.load.1 = load double, double* %polly.access.call1628.1, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1482630.1 = add nuw nsw i64 %polly.indvar622.1, %polly.access.mul.Packed_MemRef_call1482629.1
  %polly.access.Packed_MemRef_call1482631.1 = getelementptr double, double* %Packed_MemRef_call1482, i64 %polly.access.add.Packed_MemRef_call1482630.1
  store double %polly.access.call1628.load.1, double* %polly.access.Packed_MemRef_call1482631.1, align 8
  %polly.indvar_next623.1 = add nuw nsw i64 %polly.indvar622.1, 1
  %polly.loop_cond624.not.not.1 = icmp ult i64 %polly.indvar622.1, %285
  br i1 %polly.loop_cond624.not.not.1, label %polly.loop_header618.1, label %polly.loop_exit620.1

polly.loop_exit620.1:                             ; preds = %polly.loop_header618.1
  %polly.indvar_next603.1 = add nuw nsw i64 %polly.indvar602.1, 1
  %exitcond1034.1.not = icmp eq i64 %polly.indvar_next603.1, 10
  br i1 %exitcond1034.1.not, label %polly.loop_header632.preheader.1, label %polly.loop_header599.1

polly.loop_header599.us.1:                        ; preds = %polly.loop_header593.1, %polly.loop_exit620.us.1
  %polly.indvar602.us.1 = phi i64 [ %polly.indvar_next603.us.1, %polly.loop_exit620.us.1 ], [ 0, %polly.loop_header593.1 ]
  %288 = add nuw nsw i64 %polly.indvar602.us.1, 50
  %polly.access.mul.Packed_MemRef_call1482.us.1 = mul nuw nsw i64 %polly.indvar602.us.1, 80
  br label %polly.loop_header606.us.1

polly.loop_header606.us.1:                        ; preds = %polly.loop_header606.us.1, %polly.loop_header599.us.1
  %polly.indvar610.us.1 = phi i64 [ %polly.indvar_next611.us.1, %polly.loop_header606.us.1 ], [ 0, %polly.loop_header599.us.1 ]
  %289 = add nuw nsw i64 %polly.indvar610.us.1, %278
  %polly.access.mul.call1614.us.1 = mul nuw nsw i64 %289, 60
  %polly.access.add.call1615.us.1 = add nuw nsw i64 %288, %polly.access.mul.call1614.us.1
  %polly.access.call1616.us.1 = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1615.us.1
  %polly.access.call1616.load.us.1 = load double, double* %polly.access.call1616.us.1, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1482.us.1 = add nuw nsw i64 %polly.indvar610.us.1, %polly.access.mul.Packed_MemRef_call1482.us.1
  %polly.access.Packed_MemRef_call1482.us.1 = getelementptr double, double* %Packed_MemRef_call1482, i64 %polly.access.add.Packed_MemRef_call1482.us.1
  store double %polly.access.call1616.load.us.1, double* %polly.access.Packed_MemRef_call1482.us.1, align 8
  %polly.indvar_next611.us.1 = add nuw i64 %polly.indvar610.us.1, 1
  %exitcond1035.1.not = icmp eq i64 %polly.indvar_next611.us.1, 32
  br i1 %exitcond1035.1.not, label %polly.loop_exit608.loopexit.us.1, label %polly.loop_header606.us.1

polly.loop_exit608.loopexit.us.1:                 ; preds = %polly.loop_header606.us.1
  br i1 %polly.loop_guard621.not.1, label %polly.loop_exit620.us.1, label %polly.loop_header618.us.1

polly.loop_header618.us.1:                        ; preds = %polly.loop_exit608.loopexit.us.1, %polly.loop_header618.us.1
  %polly.indvar622.us.1 = phi i64 [ %polly.indvar_next623.us.1, %polly.loop_header618.us.1 ], [ %282, %polly.loop_exit608.loopexit.us.1 ]
  %290 = add nuw nsw i64 %polly.indvar622.us.1, %278
  %polly.access.mul.call1626.us.1 = mul nuw nsw i64 %290, 60
  %polly.access.add.call1627.us.1 = add nuw nsw i64 %288, %polly.access.mul.call1626.us.1
  %polly.access.call1628.us.1 = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1627.us.1
  %polly.access.call1628.load.us.1 = load double, double* %polly.access.call1628.us.1, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1482630.us.1 = add nuw nsw i64 %polly.indvar622.us.1, %polly.access.mul.Packed_MemRef_call1482.us.1
  %polly.access.Packed_MemRef_call1482631.us.1 = getelementptr double, double* %Packed_MemRef_call1482, i64 %polly.access.add.Packed_MemRef_call1482630.us.1
  store double %polly.access.call1628.load.us.1, double* %polly.access.Packed_MemRef_call1482631.us.1, align 8
  %polly.indvar_next623.us.1 = add nuw nsw i64 %polly.indvar622.us.1, 1
  %polly.loop_cond624.not.not.us.1 = icmp ult i64 %polly.indvar622.us.1, %285
  br i1 %polly.loop_cond624.not.not.us.1, label %polly.loop_header618.us.1, label %polly.loop_exit620.us.1

polly.loop_exit620.us.1:                          ; preds = %polly.loop_header618.us.1, %polly.loop_exit608.loopexit.us.1
  %polly.indvar_next603.us.1 = add nuw nsw i64 %polly.indvar602.us.1, 1
  %exitcond1036.1.not = icmp eq i64 %polly.indvar_next603.us.1, 10
  br i1 %exitcond1036.1.not, label %polly.loop_header632.preheader.1, label %polly.loop_header599.us.1

polly.loop_header632.preheader.1:                 ; preds = %polly.loop_exit620.us.1, %polly.loop_exit620.1, %polly.loop_header593.split.1
  %291 = mul nsw i64 %polly.indvar596.1, -32
  %polly.loop_guard642.11142 = icmp sgt i64 %291, -80
  br i1 %polly.loop_guard642.11142, label %polly.loop_header632.us.1, label %polly.loop_exit634.1

polly.loop_header632.us.1:                        ; preds = %polly.loop_header632.preheader.1, %polly.loop_exit641.loopexit.us.1
  %polly.indvar635.us.1 = phi i64 [ %polly.indvar_next636.us.1, %polly.loop_exit641.loopexit.us.1 ], [ 0, %polly.loop_header632.preheader.1 ]
  %polly.access.mul.Packed_MemRef_call1482652.us.1 = mul nuw nsw i64 %polly.indvar635.us.1, 80
  %292 = shl i64 %polly.indvar635.us.1, 3
  %293 = add i64 %292, 400
  br label %polly.loop_header639.us.1

polly.loop_header639.us.1:                        ; preds = %polly.loop_exit648.us.1, %polly.loop_header632.us.1
  %indvars.iv1039.1 = phi i64 [ %indvars.iv1037.1, %polly.loop_header632.us.1 ], [ %indvars.iv.next1040.1, %polly.loop_exit648.us.1 ]
  %polly.indvar643.us.1 = phi i64 [ 0, %polly.loop_header632.us.1 ], [ %polly.indvar_next644.us.1, %polly.loop_exit648.us.1 ]
  %smin1041.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1039.1, i64 31)
  %294 = add nuw nsw i64 %polly.indvar643.us.1, %282
  %295 = add nuw nsw i64 %polly.indvar643.us.1, %281
  %296 = mul nuw nsw i64 %295, 480
  %297 = add nuw nsw i64 %296, %293
  %scevgep656.us.1 = getelementptr i8, i8* %call2, i64 %297
  %scevgep656657.us.1 = bitcast i8* %scevgep656.us.1 to double*
  %_p_scalar_658.us.1 = load double, double* %scevgep656657.us.1, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1482663.us.1 = add nuw nsw i64 %294, %polly.access.mul.Packed_MemRef_call1482652.us.1
  %polly.access.Packed_MemRef_call1482664.us.1 = getelementptr double, double* %Packed_MemRef_call1482, i64 %polly.access.add.Packed_MemRef_call1482663.us.1
  %_p_scalar_665.us.1 = load double, double* %polly.access.Packed_MemRef_call1482664.us.1, align 8
  %298 = mul nuw nsw i64 %295, 640
  br label %polly.loop_header646.us.1

polly.loop_header646.us.1:                        ; preds = %polly.loop_header646.us.1, %polly.loop_header639.us.1
  %polly.indvar649.us.1 = phi i64 [ 0, %polly.loop_header639.us.1 ], [ %polly.indvar_next650.us.1, %polly.loop_header646.us.1 ]
  %299 = add nuw nsw i64 %polly.indvar649.us.1, %278
  %polly.access.add.Packed_MemRef_call1482653.us.1 = add nuw nsw i64 %polly.indvar649.us.1, %polly.access.mul.Packed_MemRef_call1482652.us.1
  %polly.access.Packed_MemRef_call1482654.us.1 = getelementptr double, double* %Packed_MemRef_call1482, i64 %polly.access.add.Packed_MemRef_call1482653.us.1
  %_p_scalar_655.us.1 = load double, double* %polly.access.Packed_MemRef_call1482654.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_658.us.1, %_p_scalar_655.us.1
  %300 = mul nuw nsw i64 %299, 480
  %301 = add nuw nsw i64 %300, %293
  %scevgep659.us.1 = getelementptr i8, i8* %call2, i64 %301
  %scevgep659660.us.1 = bitcast i8* %scevgep659.us.1 to double*
  %_p_scalar_661.us.1 = load double, double* %scevgep659660.us.1, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_665.us.1, %_p_scalar_661.us.1
  %302 = shl i64 %299, 3
  %303 = add nuw nsw i64 %302, %298
  %scevgep666.us.1 = getelementptr i8, i8* %call, i64 %303
  %scevgep666667.us.1 = bitcast i8* %scevgep666.us.1 to double*
  %_p_scalar_668.us.1 = load double, double* %scevgep666667.us.1, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_668.us.1
  store double %p_add42.i.us.1, double* %scevgep666667.us.1, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next650.us.1 = add nuw nsw i64 %polly.indvar649.us.1, 1
  %exitcond1042.1.not = icmp eq i64 %polly.indvar649.us.1, %smin1041.1
  br i1 %exitcond1042.1.not, label %polly.loop_exit648.us.1, label %polly.loop_header646.us.1

polly.loop_exit648.us.1:                          ; preds = %polly.loop_header646.us.1
  %polly.indvar_next644.us.1 = add nuw nsw i64 %polly.indvar643.us.1, 1
  %indvars.iv.next1040.1 = add nuw nsw i64 %indvars.iv1039.1, 1
  %exitcond1049.1.not = icmp eq i64 %polly.indvar643.us.1, %smax1048.1
  br i1 %exitcond1049.1.not, label %polly.loop_exit641.loopexit.us.1, label %polly.loop_header639.us.1

polly.loop_exit641.loopexit.us.1:                 ; preds = %polly.loop_exit648.us.1
  %polly.indvar_next636.us.1 = add nuw nsw i64 %polly.indvar635.us.1, 1
  %exitcond1050.1.not = icmp eq i64 %polly.indvar_next636.us.1, 10
  br i1 %exitcond1050.1.not, label %polly.loop_exit634.1, label %polly.loop_header632.us.1

polly.loop_exit634.1:                             ; preds = %polly.loop_exit641.loopexit.us.1, %polly.loop_header632.preheader.1
  %polly.indvar_next597.1 = add nuw nsw i64 %polly.indvar596.1, 1
  %indvars.iv.next1038.1 = add nuw nsw i64 %indvars.iv1037.1, 32
  %indvars.iv.next1046.1 = add nsw i64 %indvars.iv1045.1, -32
  %exitcond1051.1.not = icmp eq i64 %polly.indvar_next597.1, 3
  br i1 %exitcond1051.1.not, label %polly.loop_exit595.1, label %polly.loop_header593.1

polly.loop_exit595.1:                             ; preds = %polly.loop_exit634.1
  %polly.indvar_next591.1 = add nuw nsw i64 %polly.indvar590.1, 1
  %indvars.iv.next1044.1 = add nsw i64 %indvars.iv1043.1, -32
  %exitcond1052.1.not = icmp eq i64 %polly.indvar_next591.1, 3
  br i1 %exitcond1052.1.not, label %polly.loop_exit589.1, label %polly.loop_header587.1

polly.loop_exit589.1:                             ; preds = %polly.loop_exit595.1
  tail call void @free(i8* %malloccall481)
  br label %kernel_syr2k.exit

polly.loop_header860.1:                           ; preds = %polly.loop_exit868, %polly.loop_exit868.1
  %polly.indvar863.1 = phi i64 [ %polly.indvar_next864.1, %polly.loop_exit868.1 ], [ 0, %polly.loop_exit868 ]
  %304 = mul nuw nsw i64 %polly.indvar863.1, 480
  %305 = trunc i64 %polly.indvar863.1 to i32
  %broadcast.splatinsert1389 = insertelement <4 x i32> poison, i32 %305, i32 0
  %broadcast.splat1390 = shufflevector <4 x i32> %broadcast.splatinsert1389, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1381

vector.body1381:                                  ; preds = %vector.body1381, %polly.loop_header860.1
  %index1383 = phi i64 [ 0, %polly.loop_header860.1 ], [ %index.next1384, %vector.body1381 ]
  %vec.ind1387 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header860.1 ], [ %vec.ind.next1388, %vector.body1381 ]
  %306 = add nuw nsw <4 x i64> %vec.ind1387, <i64 32, i64 32, i64 32, i64 32>
  %307 = trunc <4 x i64> %306 to <4 x i32>
  %308 = mul <4 x i32> %broadcast.splat1390, %307
  %309 = add <4 x i32> %308, <i32 1, i32 1, i32 1, i32 1>
  %310 = urem <4 x i32> %309, <i32 80, i32 80, i32 80, i32 80>
  %311 = sitofp <4 x i32> %310 to <4 x double>
  %312 = fmul fast <4 x double> %311, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %313 = extractelement <4 x i64> %306, i32 0
  %314 = shl i64 %313, 3
  %315 = add i64 %314, %304
  %316 = getelementptr i8, i8* %call1, i64 %315
  %317 = bitcast i8* %316 to <4 x double>*
  store <4 x double> %312, <4 x double>* %317, align 8, !alias.scope !101, !noalias !106
  %index.next1384 = add i64 %index1383, 4
  %vec.ind.next1388 = add <4 x i64> %vec.ind1387, <i64 4, i64 4, i64 4, i64 4>
  %318 = icmp eq i64 %index.next1384, 28
  br i1 %318, label %polly.loop_exit868.1, label %vector.body1381, !llvm.loop !108

polly.loop_exit868.1:                             ; preds = %vector.body1381
  %polly.indvar_next864.1 = add nuw nsw i64 %polly.indvar863.1, 1
  %exitcond1059.1.not = icmp eq i64 %polly.indvar_next864.1, 32
  br i1 %exitcond1059.1.not, label %polly.loop_header860.11082, label %polly.loop_header860.1

polly.loop_header860.11082:                       ; preds = %polly.loop_exit868.1, %polly.loop_exit868.11093
  %polly.indvar863.11081 = phi i64 [ %polly.indvar_next864.11091, %polly.loop_exit868.11093 ], [ 0, %polly.loop_exit868.1 ]
  %319 = add nuw nsw i64 %polly.indvar863.11081, 32
  %320 = mul nuw nsw i64 %319, 480
  %321 = trunc i64 %319 to i32
  %broadcast.splatinsert1403 = insertelement <4 x i32> poison, i32 %321, i32 0
  %broadcast.splat1404 = shufflevector <4 x i32> %broadcast.splatinsert1403, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1393

vector.body1393:                                  ; preds = %vector.body1393, %polly.loop_header860.11082
  %index1395 = phi i64 [ 0, %polly.loop_header860.11082 ], [ %index.next1396, %vector.body1393 ]
  %vec.ind1401 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header860.11082 ], [ %vec.ind.next1402, %vector.body1393 ]
  %322 = mul <4 x i32> %vec.ind1401, %broadcast.splat1404
  %323 = add <4 x i32> %322, <i32 1, i32 1, i32 1, i32 1>
  %324 = urem <4 x i32> %323, <i32 80, i32 80, i32 80, i32 80>
  %325 = sitofp <4 x i32> %324 to <4 x double>
  %326 = fmul fast <4 x double> %325, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %327 = shl i64 %index1395, 3
  %328 = add i64 %327, %320
  %329 = getelementptr i8, i8* %call1, i64 %328
  %330 = bitcast i8* %329 to <4 x double>*
  store <4 x double> %326, <4 x double>* %330, align 8, !alias.scope !101, !noalias !106
  %index.next1396 = add i64 %index1395, 4
  %vec.ind.next1402 = add <4 x i32> %vec.ind1401, <i32 4, i32 4, i32 4, i32 4>
  %331 = icmp eq i64 %index.next1396, 32
  br i1 %331, label %polly.loop_exit868.11093, label %vector.body1393, !llvm.loop !109

polly.loop_exit868.11093:                         ; preds = %vector.body1393
  %polly.indvar_next864.11091 = add nuw nsw i64 %polly.indvar863.11081, 1
  %exitcond1059.11092.not = icmp eq i64 %polly.indvar_next864.11091, 32
  br i1 %exitcond1059.11092.not, label %polly.loop_header860.1.1, label %polly.loop_header860.11082

polly.loop_header860.1.1:                         ; preds = %polly.loop_exit868.11093, %polly.loop_exit868.1.1
  %polly.indvar863.1.1 = phi i64 [ %polly.indvar_next864.1.1, %polly.loop_exit868.1.1 ], [ 0, %polly.loop_exit868.11093 ]
  %332 = add nuw nsw i64 %polly.indvar863.1.1, 32
  %333 = mul nuw nsw i64 %332, 480
  %334 = trunc i64 %332 to i32
  %broadcast.splatinsert1415 = insertelement <4 x i32> poison, i32 %334, i32 0
  %broadcast.splat1416 = shufflevector <4 x i32> %broadcast.splatinsert1415, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1407

vector.body1407:                                  ; preds = %vector.body1407, %polly.loop_header860.1.1
  %index1409 = phi i64 [ 0, %polly.loop_header860.1.1 ], [ %index.next1410, %vector.body1407 ]
  %vec.ind1413 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header860.1.1 ], [ %vec.ind.next1414, %vector.body1407 ]
  %335 = add nuw nsw <4 x i64> %vec.ind1413, <i64 32, i64 32, i64 32, i64 32>
  %336 = trunc <4 x i64> %335 to <4 x i32>
  %337 = mul <4 x i32> %broadcast.splat1416, %336
  %338 = add <4 x i32> %337, <i32 1, i32 1, i32 1, i32 1>
  %339 = urem <4 x i32> %338, <i32 80, i32 80, i32 80, i32 80>
  %340 = sitofp <4 x i32> %339 to <4 x double>
  %341 = fmul fast <4 x double> %340, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %342 = extractelement <4 x i64> %335, i32 0
  %343 = shl i64 %342, 3
  %344 = add i64 %343, %333
  %345 = getelementptr i8, i8* %call1, i64 %344
  %346 = bitcast i8* %345 to <4 x double>*
  store <4 x double> %341, <4 x double>* %346, align 8, !alias.scope !101, !noalias !106
  %index.next1410 = add i64 %index1409, 4
  %vec.ind.next1414 = add <4 x i64> %vec.ind1413, <i64 4, i64 4, i64 4, i64 4>
  %347 = icmp eq i64 %index.next1410, 28
  br i1 %347, label %polly.loop_exit868.1.1, label %vector.body1407, !llvm.loop !110

polly.loop_exit868.1.1:                           ; preds = %vector.body1407
  %polly.indvar_next864.1.1 = add nuw nsw i64 %polly.indvar863.1.1, 1
  %exitcond1059.1.1.not = icmp eq i64 %polly.indvar_next864.1.1, 32
  br i1 %exitcond1059.1.1.not, label %polly.loop_header860.2, label %polly.loop_header860.1.1

polly.loop_header860.2:                           ; preds = %polly.loop_exit868.1.1, %polly.loop_exit868.2
  %polly.indvar863.2 = phi i64 [ %polly.indvar_next864.2, %polly.loop_exit868.2 ], [ 0, %polly.loop_exit868.1.1 ]
  %348 = add nuw nsw i64 %polly.indvar863.2, 64
  %349 = mul nuw nsw i64 %348, 480
  %350 = trunc i64 %348 to i32
  %broadcast.splatinsert1429 = insertelement <4 x i32> poison, i32 %350, i32 0
  %broadcast.splat1430 = shufflevector <4 x i32> %broadcast.splatinsert1429, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1419

vector.body1419:                                  ; preds = %vector.body1419, %polly.loop_header860.2
  %index1421 = phi i64 [ 0, %polly.loop_header860.2 ], [ %index.next1422, %vector.body1419 ]
  %vec.ind1427 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header860.2 ], [ %vec.ind.next1428, %vector.body1419 ]
  %351 = mul <4 x i32> %vec.ind1427, %broadcast.splat1430
  %352 = add <4 x i32> %351, <i32 1, i32 1, i32 1, i32 1>
  %353 = urem <4 x i32> %352, <i32 80, i32 80, i32 80, i32 80>
  %354 = sitofp <4 x i32> %353 to <4 x double>
  %355 = fmul fast <4 x double> %354, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %356 = shl i64 %index1421, 3
  %357 = add i64 %356, %349
  %358 = getelementptr i8, i8* %call1, i64 %357
  %359 = bitcast i8* %358 to <4 x double>*
  store <4 x double> %355, <4 x double>* %359, align 8, !alias.scope !101, !noalias !106
  %index.next1422 = add i64 %index1421, 4
  %vec.ind.next1428 = add <4 x i32> %vec.ind1427, <i32 4, i32 4, i32 4, i32 4>
  %360 = icmp eq i64 %index.next1422, 32
  br i1 %360, label %polly.loop_exit868.2, label %vector.body1419, !llvm.loop !111

polly.loop_exit868.2:                             ; preds = %vector.body1419
  %polly.indvar_next864.2 = add nuw nsw i64 %polly.indvar863.2, 1
  %exitcond1059.2.not = icmp eq i64 %polly.indvar_next864.2, 16
  br i1 %exitcond1059.2.not, label %polly.loop_header860.1.2, label %polly.loop_header860.2

polly.loop_header860.1.2:                         ; preds = %polly.loop_exit868.2, %polly.loop_exit868.1.2
  %polly.indvar863.1.2 = phi i64 [ %polly.indvar_next864.1.2, %polly.loop_exit868.1.2 ], [ 0, %polly.loop_exit868.2 ]
  %361 = add nuw nsw i64 %polly.indvar863.1.2, 64
  %362 = mul nuw nsw i64 %361, 480
  %363 = trunc i64 %361 to i32
  %broadcast.splatinsert1441 = insertelement <4 x i32> poison, i32 %363, i32 0
  %broadcast.splat1442 = shufflevector <4 x i32> %broadcast.splatinsert1441, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1433

vector.body1433:                                  ; preds = %vector.body1433, %polly.loop_header860.1.2
  %index1435 = phi i64 [ 0, %polly.loop_header860.1.2 ], [ %index.next1436, %vector.body1433 ]
  %vec.ind1439 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header860.1.2 ], [ %vec.ind.next1440, %vector.body1433 ]
  %364 = add nuw nsw <4 x i64> %vec.ind1439, <i64 32, i64 32, i64 32, i64 32>
  %365 = trunc <4 x i64> %364 to <4 x i32>
  %366 = mul <4 x i32> %broadcast.splat1442, %365
  %367 = add <4 x i32> %366, <i32 1, i32 1, i32 1, i32 1>
  %368 = urem <4 x i32> %367, <i32 80, i32 80, i32 80, i32 80>
  %369 = sitofp <4 x i32> %368 to <4 x double>
  %370 = fmul fast <4 x double> %369, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %371 = extractelement <4 x i64> %364, i32 0
  %372 = shl i64 %371, 3
  %373 = add i64 %372, %362
  %374 = getelementptr i8, i8* %call1, i64 %373
  %375 = bitcast i8* %374 to <4 x double>*
  store <4 x double> %370, <4 x double>* %375, align 8, !alias.scope !101, !noalias !106
  %index.next1436 = add i64 %index1435, 4
  %vec.ind.next1440 = add <4 x i64> %vec.ind1439, <i64 4, i64 4, i64 4, i64 4>
  %376 = icmp eq i64 %index.next1436, 28
  br i1 %376, label %polly.loop_exit868.1.2, label %vector.body1433, !llvm.loop !112

polly.loop_exit868.1.2:                           ; preds = %vector.body1433
  %polly.indvar_next864.1.2 = add nuw nsw i64 %polly.indvar863.1.2, 1
  %exitcond1059.1.2.not = icmp eq i64 %polly.indvar_next864.1.2, 16
  br i1 %exitcond1059.1.2.not, label %init_array.exit, label %polly.loop_header860.1.2

polly.loop_header834.1:                           ; preds = %polly.loop_exit842, %polly.loop_exit842.1
  %polly.indvar837.1 = phi i64 [ %polly.indvar_next838.1, %polly.loop_exit842.1 ], [ 0, %polly.loop_exit842 ]
  %377 = mul nuw nsw i64 %polly.indvar837.1, 480
  %378 = trunc i64 %polly.indvar837.1 to i32
  %broadcast.splatinsert1311 = insertelement <4 x i32> poison, i32 %378, i32 0
  %broadcast.splat1312 = shufflevector <4 x i32> %broadcast.splatinsert1311, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1303

vector.body1303:                                  ; preds = %vector.body1303, %polly.loop_header834.1
  %index1305 = phi i64 [ 0, %polly.loop_header834.1 ], [ %index.next1306, %vector.body1303 ]
  %vec.ind1309 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header834.1 ], [ %vec.ind.next1310, %vector.body1303 ]
  %379 = add nuw nsw <4 x i64> %vec.ind1309, <i64 32, i64 32, i64 32, i64 32>
  %380 = trunc <4 x i64> %379 to <4 x i32>
  %381 = mul <4 x i32> %broadcast.splat1312, %380
  %382 = add <4 x i32> %381, <i32 2, i32 2, i32 2, i32 2>
  %383 = urem <4 x i32> %382, <i32 60, i32 60, i32 60, i32 60>
  %384 = sitofp <4 x i32> %383 to <4 x double>
  %385 = fmul fast <4 x double> %384, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %386 = extractelement <4 x i64> %379, i32 0
  %387 = shl i64 %386, 3
  %388 = add i64 %387, %377
  %389 = getelementptr i8, i8* %call2, i64 %388
  %390 = bitcast i8* %389 to <4 x double>*
  store <4 x double> %385, <4 x double>* %390, align 8, !alias.scope !102, !noalias !104
  %index.next1306 = add i64 %index1305, 4
  %vec.ind.next1310 = add <4 x i64> %vec.ind1309, <i64 4, i64 4, i64 4, i64 4>
  %391 = icmp eq i64 %index.next1306, 28
  br i1 %391, label %polly.loop_exit842.1, label %vector.body1303, !llvm.loop !113

polly.loop_exit842.1:                             ; preds = %vector.body1303
  %polly.indvar_next838.1 = add nuw nsw i64 %polly.indvar837.1, 1
  %exitcond1065.1.not = icmp eq i64 %polly.indvar_next838.1, 32
  br i1 %exitcond1065.1.not, label %polly.loop_header834.11096, label %polly.loop_header834.1

polly.loop_header834.11096:                       ; preds = %polly.loop_exit842.1, %polly.loop_exit842.11107
  %polly.indvar837.11095 = phi i64 [ %polly.indvar_next838.11105, %polly.loop_exit842.11107 ], [ 0, %polly.loop_exit842.1 ]
  %392 = add nuw nsw i64 %polly.indvar837.11095, 32
  %393 = mul nuw nsw i64 %392, 480
  %394 = trunc i64 %392 to i32
  %broadcast.splatinsert1325 = insertelement <4 x i32> poison, i32 %394, i32 0
  %broadcast.splat1326 = shufflevector <4 x i32> %broadcast.splatinsert1325, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1315

vector.body1315:                                  ; preds = %vector.body1315, %polly.loop_header834.11096
  %index1317 = phi i64 [ 0, %polly.loop_header834.11096 ], [ %index.next1318, %vector.body1315 ]
  %vec.ind1323 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header834.11096 ], [ %vec.ind.next1324, %vector.body1315 ]
  %395 = mul <4 x i32> %vec.ind1323, %broadcast.splat1326
  %396 = add <4 x i32> %395, <i32 2, i32 2, i32 2, i32 2>
  %397 = urem <4 x i32> %396, <i32 60, i32 60, i32 60, i32 60>
  %398 = sitofp <4 x i32> %397 to <4 x double>
  %399 = fmul fast <4 x double> %398, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %400 = shl i64 %index1317, 3
  %401 = add i64 %400, %393
  %402 = getelementptr i8, i8* %call2, i64 %401
  %403 = bitcast i8* %402 to <4 x double>*
  store <4 x double> %399, <4 x double>* %403, align 8, !alias.scope !102, !noalias !104
  %index.next1318 = add i64 %index1317, 4
  %vec.ind.next1324 = add <4 x i32> %vec.ind1323, <i32 4, i32 4, i32 4, i32 4>
  %404 = icmp eq i64 %index.next1318, 32
  br i1 %404, label %polly.loop_exit842.11107, label %vector.body1315, !llvm.loop !114

polly.loop_exit842.11107:                         ; preds = %vector.body1315
  %polly.indvar_next838.11105 = add nuw nsw i64 %polly.indvar837.11095, 1
  %exitcond1065.11106.not = icmp eq i64 %polly.indvar_next838.11105, 32
  br i1 %exitcond1065.11106.not, label %polly.loop_header834.1.1, label %polly.loop_header834.11096

polly.loop_header834.1.1:                         ; preds = %polly.loop_exit842.11107, %polly.loop_exit842.1.1
  %polly.indvar837.1.1 = phi i64 [ %polly.indvar_next838.1.1, %polly.loop_exit842.1.1 ], [ 0, %polly.loop_exit842.11107 ]
  %405 = add nuw nsw i64 %polly.indvar837.1.1, 32
  %406 = mul nuw nsw i64 %405, 480
  %407 = trunc i64 %405 to i32
  %broadcast.splatinsert1337 = insertelement <4 x i32> poison, i32 %407, i32 0
  %broadcast.splat1338 = shufflevector <4 x i32> %broadcast.splatinsert1337, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1329

vector.body1329:                                  ; preds = %vector.body1329, %polly.loop_header834.1.1
  %index1331 = phi i64 [ 0, %polly.loop_header834.1.1 ], [ %index.next1332, %vector.body1329 ]
  %vec.ind1335 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header834.1.1 ], [ %vec.ind.next1336, %vector.body1329 ]
  %408 = add nuw nsw <4 x i64> %vec.ind1335, <i64 32, i64 32, i64 32, i64 32>
  %409 = trunc <4 x i64> %408 to <4 x i32>
  %410 = mul <4 x i32> %broadcast.splat1338, %409
  %411 = add <4 x i32> %410, <i32 2, i32 2, i32 2, i32 2>
  %412 = urem <4 x i32> %411, <i32 60, i32 60, i32 60, i32 60>
  %413 = sitofp <4 x i32> %412 to <4 x double>
  %414 = fmul fast <4 x double> %413, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %415 = extractelement <4 x i64> %408, i32 0
  %416 = shl i64 %415, 3
  %417 = add i64 %416, %406
  %418 = getelementptr i8, i8* %call2, i64 %417
  %419 = bitcast i8* %418 to <4 x double>*
  store <4 x double> %414, <4 x double>* %419, align 8, !alias.scope !102, !noalias !104
  %index.next1332 = add i64 %index1331, 4
  %vec.ind.next1336 = add <4 x i64> %vec.ind1335, <i64 4, i64 4, i64 4, i64 4>
  %420 = icmp eq i64 %index.next1332, 28
  br i1 %420, label %polly.loop_exit842.1.1, label %vector.body1329, !llvm.loop !115

polly.loop_exit842.1.1:                           ; preds = %vector.body1329
  %polly.indvar_next838.1.1 = add nuw nsw i64 %polly.indvar837.1.1, 1
  %exitcond1065.1.1.not = icmp eq i64 %polly.indvar_next838.1.1, 32
  br i1 %exitcond1065.1.1.not, label %polly.loop_header834.2, label %polly.loop_header834.1.1

polly.loop_header834.2:                           ; preds = %polly.loop_exit842.1.1, %polly.loop_exit842.2
  %polly.indvar837.2 = phi i64 [ %polly.indvar_next838.2, %polly.loop_exit842.2 ], [ 0, %polly.loop_exit842.1.1 ]
  %421 = add nuw nsw i64 %polly.indvar837.2, 64
  %422 = mul nuw nsw i64 %421, 480
  %423 = trunc i64 %421 to i32
  %broadcast.splatinsert1351 = insertelement <4 x i32> poison, i32 %423, i32 0
  %broadcast.splat1352 = shufflevector <4 x i32> %broadcast.splatinsert1351, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1341

vector.body1341:                                  ; preds = %vector.body1341, %polly.loop_header834.2
  %index1343 = phi i64 [ 0, %polly.loop_header834.2 ], [ %index.next1344, %vector.body1341 ]
  %vec.ind1349 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header834.2 ], [ %vec.ind.next1350, %vector.body1341 ]
  %424 = mul <4 x i32> %vec.ind1349, %broadcast.splat1352
  %425 = add <4 x i32> %424, <i32 2, i32 2, i32 2, i32 2>
  %426 = urem <4 x i32> %425, <i32 60, i32 60, i32 60, i32 60>
  %427 = sitofp <4 x i32> %426 to <4 x double>
  %428 = fmul fast <4 x double> %427, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %429 = shl i64 %index1343, 3
  %430 = add i64 %429, %422
  %431 = getelementptr i8, i8* %call2, i64 %430
  %432 = bitcast i8* %431 to <4 x double>*
  store <4 x double> %428, <4 x double>* %432, align 8, !alias.scope !102, !noalias !104
  %index.next1344 = add i64 %index1343, 4
  %vec.ind.next1350 = add <4 x i32> %vec.ind1349, <i32 4, i32 4, i32 4, i32 4>
  %433 = icmp eq i64 %index.next1344, 32
  br i1 %433, label %polly.loop_exit842.2, label %vector.body1341, !llvm.loop !116

polly.loop_exit842.2:                             ; preds = %vector.body1341
  %polly.indvar_next838.2 = add nuw nsw i64 %polly.indvar837.2, 1
  %exitcond1065.2.not = icmp eq i64 %polly.indvar_next838.2, 16
  br i1 %exitcond1065.2.not, label %polly.loop_header834.1.2, label %polly.loop_header834.2

polly.loop_header834.1.2:                         ; preds = %polly.loop_exit842.2, %polly.loop_exit842.1.2
  %polly.indvar837.1.2 = phi i64 [ %polly.indvar_next838.1.2, %polly.loop_exit842.1.2 ], [ 0, %polly.loop_exit842.2 ]
  %434 = add nuw nsw i64 %polly.indvar837.1.2, 64
  %435 = mul nuw nsw i64 %434, 480
  %436 = trunc i64 %434 to i32
  %broadcast.splatinsert1363 = insertelement <4 x i32> poison, i32 %436, i32 0
  %broadcast.splat1364 = shufflevector <4 x i32> %broadcast.splatinsert1363, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1355

vector.body1355:                                  ; preds = %vector.body1355, %polly.loop_header834.1.2
  %index1357 = phi i64 [ 0, %polly.loop_header834.1.2 ], [ %index.next1358, %vector.body1355 ]
  %vec.ind1361 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header834.1.2 ], [ %vec.ind.next1362, %vector.body1355 ]
  %437 = add nuw nsw <4 x i64> %vec.ind1361, <i64 32, i64 32, i64 32, i64 32>
  %438 = trunc <4 x i64> %437 to <4 x i32>
  %439 = mul <4 x i32> %broadcast.splat1364, %438
  %440 = add <4 x i32> %439, <i32 2, i32 2, i32 2, i32 2>
  %441 = urem <4 x i32> %440, <i32 60, i32 60, i32 60, i32 60>
  %442 = sitofp <4 x i32> %441 to <4 x double>
  %443 = fmul fast <4 x double> %442, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %444 = extractelement <4 x i64> %437, i32 0
  %445 = shl i64 %444, 3
  %446 = add i64 %445, %435
  %447 = getelementptr i8, i8* %call2, i64 %446
  %448 = bitcast i8* %447 to <4 x double>*
  store <4 x double> %443, <4 x double>* %448, align 8, !alias.scope !102, !noalias !104
  %index.next1358 = add i64 %index1357, 4
  %vec.ind.next1362 = add <4 x i64> %vec.ind1361, <i64 4, i64 4, i64 4, i64 4>
  %449 = icmp eq i64 %index.next1358, 28
  br i1 %449, label %polly.loop_exit842.1.2, label %vector.body1355, !llvm.loop !117

polly.loop_exit842.1.2:                           ; preds = %vector.body1355
  %polly.indvar_next838.1.2 = add nuw nsw i64 %polly.indvar837.1.2, 1
  %exitcond1065.1.2.not = icmp eq i64 %polly.indvar_next838.1.2, 16
  br i1 %exitcond1065.1.2.not, label %polly.loop_header860, label %polly.loop_header834.1.2

polly.loop_header807.1:                           ; preds = %polly.loop_exit815, %polly.loop_exit815.1
  %polly.indvar810.1 = phi i64 [ %polly.indvar_next811.1, %polly.loop_exit815.1 ], [ 0, %polly.loop_exit815 ]
  %450 = mul nuw nsw i64 %polly.indvar810.1, 640
  %451 = trunc i64 %polly.indvar810.1 to i32
  %broadcast.splatinsert1197 = insertelement <4 x i32> poison, i32 %451, i32 0
  %broadcast.splat1198 = shufflevector <4 x i32> %broadcast.splatinsert1197, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1189

vector.body1189:                                  ; preds = %vector.body1189, %polly.loop_header807.1
  %index1191 = phi i64 [ 0, %polly.loop_header807.1 ], [ %index.next1192, %vector.body1189 ]
  %vec.ind1195 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header807.1 ], [ %vec.ind.next1196, %vector.body1189 ]
  %452 = add nuw nsw <4 x i64> %vec.ind1195, <i64 32, i64 32, i64 32, i64 32>
  %453 = trunc <4 x i64> %452 to <4 x i32>
  %454 = mul <4 x i32> %broadcast.splat1198, %453
  %455 = add <4 x i32> %454, <i32 3, i32 3, i32 3, i32 3>
  %456 = urem <4 x i32> %455, <i32 80, i32 80, i32 80, i32 80>
  %457 = sitofp <4 x i32> %456 to <4 x double>
  %458 = fmul fast <4 x double> %457, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %459 = extractelement <4 x i64> %452, i32 0
  %460 = shl i64 %459, 3
  %461 = add nuw nsw i64 %460, %450
  %462 = getelementptr i8, i8* %call, i64 %461
  %463 = bitcast i8* %462 to <4 x double>*
  store <4 x double> %458, <4 x double>* %463, align 8, !alias.scope !98, !noalias !100
  %index.next1192 = add i64 %index1191, 4
  %vec.ind.next1196 = add <4 x i64> %vec.ind1195, <i64 4, i64 4, i64 4, i64 4>
  %464 = icmp eq i64 %index.next1192, 32
  br i1 %464, label %polly.loop_exit815.1, label %vector.body1189, !llvm.loop !118

polly.loop_exit815.1:                             ; preds = %vector.body1189
  %polly.indvar_next811.1 = add nuw nsw i64 %polly.indvar810.1, 1
  %exitcond1074.1.not = icmp eq i64 %polly.indvar_next811.1, 32
  br i1 %exitcond1074.1.not, label %polly.loop_header807.2, label %polly.loop_header807.1

polly.loop_header807.2:                           ; preds = %polly.loop_exit815.1, %polly.loop_exit815.2
  %polly.indvar810.2 = phi i64 [ %polly.indvar_next811.2, %polly.loop_exit815.2 ], [ 0, %polly.loop_exit815.1 ]
  %465 = mul nuw nsw i64 %polly.indvar810.2, 640
  %466 = trunc i64 %polly.indvar810.2 to i32
  %broadcast.splatinsert1209 = insertelement <4 x i32> poison, i32 %466, i32 0
  %broadcast.splat1210 = shufflevector <4 x i32> %broadcast.splatinsert1209, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1201

vector.body1201:                                  ; preds = %vector.body1201, %polly.loop_header807.2
  %index1203 = phi i64 [ 0, %polly.loop_header807.2 ], [ %index.next1204, %vector.body1201 ]
  %vec.ind1207 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header807.2 ], [ %vec.ind.next1208, %vector.body1201 ]
  %467 = add nuw nsw <4 x i64> %vec.ind1207, <i64 64, i64 64, i64 64, i64 64>
  %468 = trunc <4 x i64> %467 to <4 x i32>
  %469 = mul <4 x i32> %broadcast.splat1210, %468
  %470 = add <4 x i32> %469, <i32 3, i32 3, i32 3, i32 3>
  %471 = urem <4 x i32> %470, <i32 80, i32 80, i32 80, i32 80>
  %472 = sitofp <4 x i32> %471 to <4 x double>
  %473 = fmul fast <4 x double> %472, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %474 = extractelement <4 x i64> %467, i32 0
  %475 = shl i64 %474, 3
  %476 = add nuw nsw i64 %475, %465
  %477 = getelementptr i8, i8* %call, i64 %476
  %478 = bitcast i8* %477 to <4 x double>*
  store <4 x double> %473, <4 x double>* %478, align 8, !alias.scope !98, !noalias !100
  %index.next1204 = add i64 %index1203, 4
  %vec.ind.next1208 = add <4 x i64> %vec.ind1207, <i64 4, i64 4, i64 4, i64 4>
  %479 = icmp eq i64 %index.next1204, 16
  br i1 %479, label %polly.loop_exit815.2, label %vector.body1201, !llvm.loop !119

polly.loop_exit815.2:                             ; preds = %vector.body1201
  %polly.indvar_next811.2 = add nuw nsw i64 %polly.indvar810.2, 1
  %exitcond1074.2.not = icmp eq i64 %polly.indvar_next811.2, 32
  br i1 %exitcond1074.2.not, label %polly.loop_header807.11110, label %polly.loop_header807.2

polly.loop_header807.11110:                       ; preds = %polly.loop_exit815.2, %polly.loop_exit815.11121
  %polly.indvar810.11109 = phi i64 [ %polly.indvar_next811.11119, %polly.loop_exit815.11121 ], [ 0, %polly.loop_exit815.2 ]
  %480 = add nuw nsw i64 %polly.indvar810.11109, 32
  %481 = mul nuw nsw i64 %480, 640
  %482 = trunc i64 %480 to i32
  %broadcast.splatinsert1223 = insertelement <4 x i32> poison, i32 %482, i32 0
  %broadcast.splat1224 = shufflevector <4 x i32> %broadcast.splatinsert1223, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1213

vector.body1213:                                  ; preds = %vector.body1213, %polly.loop_header807.11110
  %index1215 = phi i64 [ 0, %polly.loop_header807.11110 ], [ %index.next1216, %vector.body1213 ]
  %vec.ind1221 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header807.11110 ], [ %vec.ind.next1222, %vector.body1213 ]
  %483 = mul <4 x i32> %vec.ind1221, %broadcast.splat1224
  %484 = add <4 x i32> %483, <i32 3, i32 3, i32 3, i32 3>
  %485 = urem <4 x i32> %484, <i32 80, i32 80, i32 80, i32 80>
  %486 = sitofp <4 x i32> %485 to <4 x double>
  %487 = fmul fast <4 x double> %486, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %488 = shl i64 %index1215, 3
  %489 = add nuw nsw i64 %488, %481
  %490 = getelementptr i8, i8* %call, i64 %489
  %491 = bitcast i8* %490 to <4 x double>*
  store <4 x double> %487, <4 x double>* %491, align 8, !alias.scope !98, !noalias !100
  %index.next1216 = add i64 %index1215, 4
  %vec.ind.next1222 = add <4 x i32> %vec.ind1221, <i32 4, i32 4, i32 4, i32 4>
  %492 = icmp eq i64 %index.next1216, 32
  br i1 %492, label %polly.loop_exit815.11121, label %vector.body1213, !llvm.loop !120

polly.loop_exit815.11121:                         ; preds = %vector.body1213
  %polly.indvar_next811.11119 = add nuw nsw i64 %polly.indvar810.11109, 1
  %exitcond1074.11120.not = icmp eq i64 %polly.indvar_next811.11119, 32
  br i1 %exitcond1074.11120.not, label %polly.loop_header807.1.1, label %polly.loop_header807.11110

polly.loop_header807.1.1:                         ; preds = %polly.loop_exit815.11121, %polly.loop_exit815.1.1
  %polly.indvar810.1.1 = phi i64 [ %polly.indvar_next811.1.1, %polly.loop_exit815.1.1 ], [ 0, %polly.loop_exit815.11121 ]
  %493 = add nuw nsw i64 %polly.indvar810.1.1, 32
  %494 = mul nuw nsw i64 %493, 640
  %495 = trunc i64 %493 to i32
  %broadcast.splatinsert1235 = insertelement <4 x i32> poison, i32 %495, i32 0
  %broadcast.splat1236 = shufflevector <4 x i32> %broadcast.splatinsert1235, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1227

vector.body1227:                                  ; preds = %vector.body1227, %polly.loop_header807.1.1
  %index1229 = phi i64 [ 0, %polly.loop_header807.1.1 ], [ %index.next1230, %vector.body1227 ]
  %vec.ind1233 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header807.1.1 ], [ %vec.ind.next1234, %vector.body1227 ]
  %496 = add nuw nsw <4 x i64> %vec.ind1233, <i64 32, i64 32, i64 32, i64 32>
  %497 = trunc <4 x i64> %496 to <4 x i32>
  %498 = mul <4 x i32> %broadcast.splat1236, %497
  %499 = add <4 x i32> %498, <i32 3, i32 3, i32 3, i32 3>
  %500 = urem <4 x i32> %499, <i32 80, i32 80, i32 80, i32 80>
  %501 = sitofp <4 x i32> %500 to <4 x double>
  %502 = fmul fast <4 x double> %501, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %503 = extractelement <4 x i64> %496, i32 0
  %504 = shl i64 %503, 3
  %505 = add nuw nsw i64 %504, %494
  %506 = getelementptr i8, i8* %call, i64 %505
  %507 = bitcast i8* %506 to <4 x double>*
  store <4 x double> %502, <4 x double>* %507, align 8, !alias.scope !98, !noalias !100
  %index.next1230 = add i64 %index1229, 4
  %vec.ind.next1234 = add <4 x i64> %vec.ind1233, <i64 4, i64 4, i64 4, i64 4>
  %508 = icmp eq i64 %index.next1230, 32
  br i1 %508, label %polly.loop_exit815.1.1, label %vector.body1227, !llvm.loop !121

polly.loop_exit815.1.1:                           ; preds = %vector.body1227
  %polly.indvar_next811.1.1 = add nuw nsw i64 %polly.indvar810.1.1, 1
  %exitcond1074.1.1.not = icmp eq i64 %polly.indvar_next811.1.1, 32
  br i1 %exitcond1074.1.1.not, label %polly.loop_header807.2.1, label %polly.loop_header807.1.1

polly.loop_header807.2.1:                         ; preds = %polly.loop_exit815.1.1, %polly.loop_exit815.2.1
  %polly.indvar810.2.1 = phi i64 [ %polly.indvar_next811.2.1, %polly.loop_exit815.2.1 ], [ 0, %polly.loop_exit815.1.1 ]
  %509 = add nuw nsw i64 %polly.indvar810.2.1, 32
  %510 = mul nuw nsw i64 %509, 640
  %511 = trunc i64 %509 to i32
  %broadcast.splatinsert1247 = insertelement <4 x i32> poison, i32 %511, i32 0
  %broadcast.splat1248 = shufflevector <4 x i32> %broadcast.splatinsert1247, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1239

vector.body1239:                                  ; preds = %vector.body1239, %polly.loop_header807.2.1
  %index1241 = phi i64 [ 0, %polly.loop_header807.2.1 ], [ %index.next1242, %vector.body1239 ]
  %vec.ind1245 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header807.2.1 ], [ %vec.ind.next1246, %vector.body1239 ]
  %512 = add nuw nsw <4 x i64> %vec.ind1245, <i64 64, i64 64, i64 64, i64 64>
  %513 = trunc <4 x i64> %512 to <4 x i32>
  %514 = mul <4 x i32> %broadcast.splat1248, %513
  %515 = add <4 x i32> %514, <i32 3, i32 3, i32 3, i32 3>
  %516 = urem <4 x i32> %515, <i32 80, i32 80, i32 80, i32 80>
  %517 = sitofp <4 x i32> %516 to <4 x double>
  %518 = fmul fast <4 x double> %517, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %519 = extractelement <4 x i64> %512, i32 0
  %520 = shl i64 %519, 3
  %521 = add nuw nsw i64 %520, %510
  %522 = getelementptr i8, i8* %call, i64 %521
  %523 = bitcast i8* %522 to <4 x double>*
  store <4 x double> %518, <4 x double>* %523, align 8, !alias.scope !98, !noalias !100
  %index.next1242 = add i64 %index1241, 4
  %vec.ind.next1246 = add <4 x i64> %vec.ind1245, <i64 4, i64 4, i64 4, i64 4>
  %524 = icmp eq i64 %index.next1242, 16
  br i1 %524, label %polly.loop_exit815.2.1, label %vector.body1239, !llvm.loop !122

polly.loop_exit815.2.1:                           ; preds = %vector.body1239
  %polly.indvar_next811.2.1 = add nuw nsw i64 %polly.indvar810.2.1, 1
  %exitcond1074.2.1.not = icmp eq i64 %polly.indvar_next811.2.1, 32
  br i1 %exitcond1074.2.1.not, label %polly.loop_header807.21124, label %polly.loop_header807.2.1

polly.loop_header807.21124:                       ; preds = %polly.loop_exit815.2.1, %polly.loop_exit815.21135
  %polly.indvar810.21123 = phi i64 [ %polly.indvar_next811.21133, %polly.loop_exit815.21135 ], [ 0, %polly.loop_exit815.2.1 ]
  %525 = add nuw nsw i64 %polly.indvar810.21123, 64
  %526 = mul nuw nsw i64 %525, 640
  %527 = trunc i64 %525 to i32
  %broadcast.splatinsert1261 = insertelement <4 x i32> poison, i32 %527, i32 0
  %broadcast.splat1262 = shufflevector <4 x i32> %broadcast.splatinsert1261, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1251

vector.body1251:                                  ; preds = %vector.body1251, %polly.loop_header807.21124
  %index1253 = phi i64 [ 0, %polly.loop_header807.21124 ], [ %index.next1254, %vector.body1251 ]
  %vec.ind1259 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header807.21124 ], [ %vec.ind.next1260, %vector.body1251 ]
  %528 = mul <4 x i32> %vec.ind1259, %broadcast.splat1262
  %529 = add <4 x i32> %528, <i32 3, i32 3, i32 3, i32 3>
  %530 = urem <4 x i32> %529, <i32 80, i32 80, i32 80, i32 80>
  %531 = sitofp <4 x i32> %530 to <4 x double>
  %532 = fmul fast <4 x double> %531, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %533 = shl i64 %index1253, 3
  %534 = add nuw nsw i64 %533, %526
  %535 = getelementptr i8, i8* %call, i64 %534
  %536 = bitcast i8* %535 to <4 x double>*
  store <4 x double> %532, <4 x double>* %536, align 8, !alias.scope !98, !noalias !100
  %index.next1254 = add i64 %index1253, 4
  %vec.ind.next1260 = add <4 x i32> %vec.ind1259, <i32 4, i32 4, i32 4, i32 4>
  %537 = icmp eq i64 %index.next1254, 32
  br i1 %537, label %polly.loop_exit815.21135, label %vector.body1251, !llvm.loop !123

polly.loop_exit815.21135:                         ; preds = %vector.body1251
  %polly.indvar_next811.21133 = add nuw nsw i64 %polly.indvar810.21123, 1
  %exitcond1074.21134.not = icmp eq i64 %polly.indvar_next811.21133, 16
  br i1 %exitcond1074.21134.not, label %polly.loop_header807.1.2, label %polly.loop_header807.21124

polly.loop_header807.1.2:                         ; preds = %polly.loop_exit815.21135, %polly.loop_exit815.1.2
  %polly.indvar810.1.2 = phi i64 [ %polly.indvar_next811.1.2, %polly.loop_exit815.1.2 ], [ 0, %polly.loop_exit815.21135 ]
  %538 = add nuw nsw i64 %polly.indvar810.1.2, 64
  %539 = mul nuw nsw i64 %538, 640
  %540 = trunc i64 %538 to i32
  %broadcast.splatinsert1273 = insertelement <4 x i32> poison, i32 %540, i32 0
  %broadcast.splat1274 = shufflevector <4 x i32> %broadcast.splatinsert1273, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1265

vector.body1265:                                  ; preds = %vector.body1265, %polly.loop_header807.1.2
  %index1267 = phi i64 [ 0, %polly.loop_header807.1.2 ], [ %index.next1268, %vector.body1265 ]
  %vec.ind1271 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header807.1.2 ], [ %vec.ind.next1272, %vector.body1265 ]
  %541 = add nuw nsw <4 x i64> %vec.ind1271, <i64 32, i64 32, i64 32, i64 32>
  %542 = trunc <4 x i64> %541 to <4 x i32>
  %543 = mul <4 x i32> %broadcast.splat1274, %542
  %544 = add <4 x i32> %543, <i32 3, i32 3, i32 3, i32 3>
  %545 = urem <4 x i32> %544, <i32 80, i32 80, i32 80, i32 80>
  %546 = sitofp <4 x i32> %545 to <4 x double>
  %547 = fmul fast <4 x double> %546, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %548 = extractelement <4 x i64> %541, i32 0
  %549 = shl i64 %548, 3
  %550 = add nuw nsw i64 %549, %539
  %551 = getelementptr i8, i8* %call, i64 %550
  %552 = bitcast i8* %551 to <4 x double>*
  store <4 x double> %547, <4 x double>* %552, align 8, !alias.scope !98, !noalias !100
  %index.next1268 = add i64 %index1267, 4
  %vec.ind.next1272 = add <4 x i64> %vec.ind1271, <i64 4, i64 4, i64 4, i64 4>
  %553 = icmp eq i64 %index.next1268, 32
  br i1 %553, label %polly.loop_exit815.1.2, label %vector.body1265, !llvm.loop !124

polly.loop_exit815.1.2:                           ; preds = %vector.body1265
  %polly.indvar_next811.1.2 = add nuw nsw i64 %polly.indvar810.1.2, 1
  %exitcond1074.1.2.not = icmp eq i64 %polly.indvar_next811.1.2, 16
  br i1 %exitcond1074.1.2.not, label %polly.loop_header807.2.2, label %polly.loop_header807.1.2

polly.loop_header807.2.2:                         ; preds = %polly.loop_exit815.1.2, %polly.loop_exit815.2.2
  %polly.indvar810.2.2 = phi i64 [ %polly.indvar_next811.2.2, %polly.loop_exit815.2.2 ], [ 0, %polly.loop_exit815.1.2 ]
  %554 = add nuw nsw i64 %polly.indvar810.2.2, 64
  %555 = mul nuw nsw i64 %554, 640
  %556 = trunc i64 %554 to i32
  %broadcast.splatinsert1285 = insertelement <4 x i32> poison, i32 %556, i32 0
  %broadcast.splat1286 = shufflevector <4 x i32> %broadcast.splatinsert1285, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1277

vector.body1277:                                  ; preds = %vector.body1277, %polly.loop_header807.2.2
  %index1279 = phi i64 [ 0, %polly.loop_header807.2.2 ], [ %index.next1280, %vector.body1277 ]
  %vec.ind1283 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header807.2.2 ], [ %vec.ind.next1284, %vector.body1277 ]
  %557 = add nuw nsw <4 x i64> %vec.ind1283, <i64 64, i64 64, i64 64, i64 64>
  %558 = trunc <4 x i64> %557 to <4 x i32>
  %559 = mul <4 x i32> %broadcast.splat1286, %558
  %560 = add <4 x i32> %559, <i32 3, i32 3, i32 3, i32 3>
  %561 = urem <4 x i32> %560, <i32 80, i32 80, i32 80, i32 80>
  %562 = sitofp <4 x i32> %561 to <4 x double>
  %563 = fmul fast <4 x double> %562, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %564 = extractelement <4 x i64> %557, i32 0
  %565 = shl i64 %564, 3
  %566 = add nuw nsw i64 %565, %555
  %567 = getelementptr i8, i8* %call, i64 %566
  %568 = bitcast i8* %567 to <4 x double>*
  store <4 x double> %563, <4 x double>* %568, align 8, !alias.scope !98, !noalias !100
  %index.next1280 = add i64 %index1279, 4
  %vec.ind.next1284 = add <4 x i64> %vec.ind1283, <i64 4, i64 4, i64 4, i64 4>
  %569 = icmp eq i64 %index.next1280, 16
  br i1 %569, label %polly.loop_exit815.2.2, label %vector.body1277, !llvm.loop !125

polly.loop_exit815.2.2:                           ; preds = %vector.body1277
  %polly.indvar_next811.2.2 = add nuw nsw i64 %polly.indvar810.2.2, 1
  %exitcond1074.2.2.not = icmp eq i64 %polly.indvar_next811.2.2, 16
  br i1 %exitcond1074.2.2.not, label %polly.loop_header834, label %polly.loop_header807.2.2
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
!34 = !{!"llvm.loop.tile.size", i32 50}
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
