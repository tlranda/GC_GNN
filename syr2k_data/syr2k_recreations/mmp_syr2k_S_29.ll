; ModuleID = 'syr2k_recreations//mmp_syr2k_S_29.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_29.c"
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
  %call = tail call i8* @polybench_alloc_data(i64 6400, i32 8) #7
  %call805 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #7
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #7
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1657 = bitcast i8* %call1 to double*
  %polly.access.call1666 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1666, %call2
  %polly.access.call2686 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2686, %call1
  %2 = or i1 %0, %1
  %polly.access.call706 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call706, %call2
  %4 = icmp ule i8* %polly.access.call2686, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call706, %call1
  %8 = icmp ule i8* %polly.access.call1666, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header791, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1136 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1135 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1134 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1133 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1133, %scevgep1136
  %bound1 = icmp ult i8* %scevgep1135, %scevgep1134
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
  br i1 %exitcond18.not.i, label %vector.ph1140, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1140:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1147 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1148 = shufflevector <4 x i64> %broadcast.splatinsert1147, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1139

vector.body1139:                                  ; preds = %vector.body1139, %vector.ph1140
  %index1141 = phi i64 [ 0, %vector.ph1140 ], [ %index.next1142, %vector.body1139 ]
  %vec.ind1145 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1140 ], [ %vec.ind.next1146, %vector.body1139 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1145, %broadcast.splat1148
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call805, i64 %indvars.iv7.i, i64 %index1141
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1142 = add i64 %index1141, 4
  %vec.ind.next1146 = add <4 x i64> %vec.ind1145, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1142, 80
  br i1 %40, label %for.inc41.i, label %vector.body1139, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1139
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1140, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit852.1.2
  tail call void (...) @polybench_timer_start() #7
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start467, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1556, label %vector.ph1422

vector.ph1422:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1421

vector.body1421:                                  ; preds = %vector.body1421, %vector.ph1422
  %index1423 = phi i64 [ 0, %vector.ph1422 ], [ %index.next1424, %vector.body1421 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call805, i64 %indvars.iv21.i, i64 %index1423
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1424 = add i64 %index1423, 4
  %46 = icmp eq i64 %index.next1424, %n.vec
  br i1 %46, label %middle.block1419, label %vector.body1421, !llvm.loop !18

middle.block1419:                                 ; preds = %vector.body1421
  %cmp.n1426 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1426, label %for.inc6.i, label %for.body3.i46.preheader1556

for.body3.i46.preheader1556:                      ; preds = %for.body3.i46.preheader, %middle.block1419
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1419 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1556, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1556 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call805, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1419, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call805, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting468
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  tail call void (...) @polybench_timer_start() #7
  br i1 %41, label %polly.start279, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1459 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1459, label %for.body3.i60.preheader1553, label %vector.ph1460

vector.ph1460:                                    ; preds = %for.body3.i60.preheader
  %n.vec1462 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1458

vector.body1458:                                  ; preds = %vector.body1458, %vector.ph1460
  %index1463 = phi i64 [ 0, %vector.ph1460 ], [ %index.next1464, %vector.body1458 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call805, i64 %indvars.iv21.i52, i64 %index1463
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1467 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1467, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1464 = add i64 %index1463, 4
  %57 = icmp eq i64 %index.next1464, %n.vec1462
  br i1 %57, label %middle.block1456, label %vector.body1458, !llvm.loop !54

middle.block1456:                                 ; preds = %vector.body1458
  %cmp.n1466 = icmp eq i64 %indvars.iv21.i52, %n.vec1462
  br i1 %cmp.n1466, label %for.inc6.i63, label %for.body3.i60.preheader1553

for.body3.i60.preheader1553:                      ; preds = %for.body3.i60.preheader, %middle.block1456
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1462, %middle.block1456 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1553, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1553 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call805, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1456, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call805, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting280
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  tail call void (...) @polybench_timer_start() #7
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1505 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1505, label %for.body3.i99.preheader1550, label %vector.ph1506

vector.ph1506:                                    ; preds = %for.body3.i99.preheader
  %n.vec1508 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1504

vector.body1504:                                  ; preds = %vector.body1504, %vector.ph1506
  %index1509 = phi i64 [ 0, %vector.ph1506 ], [ %index.next1510, %vector.body1504 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call805, i64 %indvars.iv21.i91, i64 %index1509
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1513 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1513, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1510 = add i64 %index1509, 4
  %68 = icmp eq i64 %index.next1510, %n.vec1508
  br i1 %68, label %middle.block1502, label %vector.body1504, !llvm.loop !56

middle.block1502:                                 ; preds = %vector.body1504
  %cmp.n1512 = icmp eq i64 %indvars.iv21.i91, %n.vec1508
  br i1 %cmp.n1512, label %for.inc6.i102, label %for.body3.i99.preheader1550

for.body3.i99.preheader1550:                      ; preds = %for.body3.i99.preheader, %middle.block1502
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1508, %middle.block1502 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1550, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1550 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call805, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1502, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call805, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !58
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #8
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call805, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #8
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !60

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !61

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #8
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #7
  tail call void @free(i8* %call1) #7
  tail call void @free(i8* %call2) #7
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit213.1
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1517 = phi i64 [ %indvar.next1518, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1517, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1519 = icmp ult i64 %88, 4
  br i1 %min.iters.check1519, label %polly.loop_header191.preheader, label %vector.ph1520

vector.ph1520:                                    ; preds = %polly.loop_header
  %n.vec1522 = and i64 %88, -4
  br label %vector.body1516

vector.body1516:                                  ; preds = %vector.body1516, %vector.ph1520
  %index1523 = phi i64 [ 0, %vector.ph1520 ], [ %index.next1524, %vector.body1516 ]
  %90 = shl nuw nsw i64 %index1523, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1527 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1527, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1524 = add i64 %index1523, 4
  %95 = icmp eq i64 %index.next1524, %n.vec1522
  br i1 %95, label %middle.block1514, label %vector.body1516, !llvm.loop !68

middle.block1514:                                 ; preds = %vector.body1516
  %cmp.n1526 = icmp eq i64 %88, %n.vec1522
  br i1 %cmp.n1526, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1514
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1522, %middle.block1514 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1514
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond990.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1518 = add i64 %indvar1517, 1
  br i1 %exitcond990.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond989.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond989.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !69

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit213.1
  %indvars.iv985 = phi i64 [ 1, %polly.loop_header199.preheader ], [ %indvars.iv.next986, %polly.loop_exit213.1 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit213.1 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit213.1 ]
  %97 = shl nsw i64 %polly.indvar202, 3
  br label %polly.loop_header211

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header199
  %indvars.iv975 = phi i64 [ %indvars.iv.next976, %polly.loop_exit219 ], [ %indvars.iv, %polly.loop_header199 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header199 ]
  %98 = shl nsw i64 %polly.indvar214, 3
  %99 = sub nsw i64 %97, %98
  %100 = add nuw nsw i64 %98, 8
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit248
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next976 = add nsw i64 %indvars.iv975, -8
  %exitcond987.not = icmp eq i64 %polly.indvar_next215, %indvars.iv985
  br i1 %exitcond987.not, label %polly.loop_header211.1, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit248, %polly.loop_header211
  %indvars.iv977 = phi i64 [ %indvars.iv.next978, %polly.loop_exit248 ], [ %indvars.iv975, %polly.loop_header211 ]
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit248 ], [ 0, %polly.loop_header211 ]
  %smin981 = call i64 @llvm.smin.i64(i64 %indvars.iv977, i64 7)
  %101 = add nsw i64 %polly.indvar220, %99
  %polly.loop_guard1113 = icmp sgt i64 %101, -1
  %102 = add nuw nsw i64 %polly.indvar220, %97
  %.not = icmp ult i64 %102, %100
  %polly.access.mul.call1240 = mul nuw nsw i64 %102, 60
  br i1 %polly.loop_guard1113, label %polly.loop_header223.us, label %polly.loop_header217.split

polly.loop_header223.us:                          ; preds = %polly.loop_header217, %polly.merge.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.merge.us ], [ 0, %polly.loop_header217 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar226.us, 80
  br label %polly.loop_header229.us

polly.loop_header229.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header229.us
  %polly.indvar232.us = phi i64 [ %polly.indvar_next233.us, %polly.loop_header229.us ], [ 0, %polly.loop_header223.us ]
  %103 = add nuw nsw i64 %polly.indvar232.us, %98
  %polly.access.mul.call1236.us = mul nuw nsw i64 %103, 60
  %polly.access.add.call1237.us = add nuw nsw i64 %polly.indvar226.us, %polly.access.mul.call1236.us
  %polly.access.call1238.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1237.us
  %polly.access.call1238.load.us = load double, double* %polly.access.call1238.us, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar232.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1238.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next233.us = add nuw nsw i64 %polly.indvar232.us, 1
  %exitcond979.not = icmp eq i64 %polly.indvar232.us, %smin981
  br i1 %exitcond979.not, label %polly.cond.loopexit.us, label %polly.loop_header229.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1241.us = add nuw nsw i64 %polly.access.mul.call1240, %polly.indvar226.us
  %polly.access.call1242.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1241.us
  %polly.access.call1242.load.us = load double, double* %polly.access.call1242.us, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1244.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %101
  %polly.access.Packed_MemRef_call1245.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244.us
  store double %polly.access.call1242.load.us, double* %polly.access.Packed_MemRef_call1245.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond980.not = icmp eq i64 %polly.indvar_next227.us, 50
  br i1 %exitcond980.not, label %polly.loop_header246.preheader, label %polly.loop_header223.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header229.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header217.split:                       ; preds = %polly.loop_header217
  br i1 %.not, label %polly.loop_exit248, label %polly.loop_header223

polly.loop_exit248:                               ; preds = %polly.loop_exit255.loopexit.us, %polly.loop_header217.split, %polly.loop_header246.preheader
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %indvars.iv.next978 = add nsw i64 %indvars.iv977, 1
  %exitcond984.not = icmp eq i64 %polly.indvar_next221, 8
  br i1 %exitcond984.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header223:                             ; preds = %polly.loop_header217.split, %polly.loop_header223
  %polly.indvar226 = phi i64 [ %polly.indvar_next227, %polly.loop_header223 ], [ 0, %polly.loop_header217.split ]
  %polly.access.add.call1241 = add nuw nsw i64 %polly.access.mul.call1240, %polly.indvar226
  %polly.access.call1242 = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1241
  %polly.access.call1242.load = load double, double* %polly.access.call1242, align 8, !alias.scope !65, !noalias !71
  %polly.access.mul.Packed_MemRef_call1243 = mul nuw nsw i64 %polly.indvar226, 80
  %polly.access.add.Packed_MemRef_call1244 = add nsw i64 %polly.access.mul.Packed_MemRef_call1243, %101
  %polly.access.Packed_MemRef_call1245 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244
  store double %polly.access.call1242.load, double* %polly.access.Packed_MemRef_call1245, align 8
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next227, 50
  br i1 %exitcond.not, label %polly.loop_header246.preheader, label %polly.loop_header223

polly.loop_header246.preheader:                   ; preds = %polly.loop_header223, %polly.merge.us
  %104 = mul nuw nsw i64 %102, 480
  %105 = mul nuw nsw i64 %102, 640
  br i1 %polly.loop_guard1113, label %polly.loop_header246.us, label %polly.loop_exit248

polly.loop_header246.us:                          ; preds = %polly.loop_header246.preheader, %polly.loop_exit255.loopexit.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_exit255.loopexit.us ], [ 0, %polly.loop_header246.preheader ]
  %polly.access.mul.Packed_MemRef_call1260.us = mul nuw nsw i64 %polly.indvar249.us, 80
  %106 = shl i64 %polly.indvar249.us, 3
  %107 = add i64 %106, %104
  %scevgep264.us = getelementptr i8, i8* %call2, i64 %107
  %scevgep264265.us = bitcast i8* %scevgep264.us to double*
  %_p_scalar_266.us = load double, double* %scevgep264265.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1271.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1260.us, %101
  %polly.access.Packed_MemRef_call1272.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1271.us
  %_p_scalar_273.us = load double, double* %polly.access.Packed_MemRef_call1272.us, align 8
  br label %polly.loop_header253.us

polly.loop_header253.us:                          ; preds = %polly.loop_header246.us, %polly.loop_header253.us
  %polly.indvar257.us = phi i64 [ %polly.indvar_next258.us, %polly.loop_header253.us ], [ 0, %polly.loop_header246.us ]
  %108 = add nuw nsw i64 %polly.indvar257.us, %98
  %polly.access.add.Packed_MemRef_call1261.us = add nuw nsw i64 %polly.indvar257.us, %polly.access.mul.Packed_MemRef_call1260.us
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us
  %_p_scalar_263.us = load double, double* %polly.access.Packed_MemRef_call1262.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_266.us, %_p_scalar_263.us
  %109 = mul nuw nsw i64 %108, 480
  %110 = add nuw nsw i64 %109, %106
  %scevgep267.us = getelementptr i8, i8* %call2, i64 %110
  %scevgep267268.us = bitcast i8* %scevgep267.us to double*
  %_p_scalar_269.us = load double, double* %scevgep267268.us, align 8, !alias.scope !66, !noalias !72
  %p_mul37.i114.us = fmul fast double %_p_scalar_273.us, %_p_scalar_269.us
  %111 = shl i64 %108, 3
  %112 = add nuw nsw i64 %111, %105
  %scevgep274.us = getelementptr i8, i8* %call, i64 %112
  %scevgep274275.us = bitcast i8* %scevgep274.us to double*
  %_p_scalar_276.us = load double, double* %scevgep274275.us, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_276.us
  store double %p_add42.i118.us, double* %scevgep274275.us, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next258.us = add nuw nsw i64 %polly.indvar257.us, 1
  %exitcond982.not = icmp eq i64 %polly.indvar257.us, %smin981
  br i1 %exitcond982.not, label %polly.loop_exit255.loopexit.us, label %polly.loop_header253.us

polly.loop_exit255.loopexit.us:                   ; preds = %polly.loop_header253.us
  %polly.indvar_next250.us = add nuw nsw i64 %polly.indvar249.us, 1
  %exitcond983.not = icmp eq i64 %polly.indvar_next250.us, 50
  br i1 %exitcond983.not, label %polly.loop_exit248, label %polly.loop_header246.us

polly.start279:                                   ; preds = %kernel_syr2k.exit
  %malloccall281 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  br label %polly.loop_header365

polly.exiting280:                                 ; preds = %polly.loop_exit395.1
  tail call void @free(i8* %malloccall281)
  br label %kernel_syr2k.exit90

polly.loop_header365:                             ; preds = %polly.loop_exit373, %polly.start279
  %indvar1471 = phi i64 [ %indvar.next1472, %polly.loop_exit373 ], [ 0, %polly.start279 ]
  %polly.indvar368 = phi i64 [ %polly.indvar_next369, %polly.loop_exit373 ], [ 1, %polly.start279 ]
  %113 = add i64 %indvar1471, 1
  %114 = mul nuw nsw i64 %polly.indvar368, 640
  %scevgep377 = getelementptr i8, i8* %call, i64 %114
  %min.iters.check1473 = icmp ult i64 %113, 4
  br i1 %min.iters.check1473, label %polly.loop_header371.preheader, label %vector.ph1474

vector.ph1474:                                    ; preds = %polly.loop_header365
  %n.vec1476 = and i64 %113, -4
  br label %vector.body1470

vector.body1470:                                  ; preds = %vector.body1470, %vector.ph1474
  %index1477 = phi i64 [ 0, %vector.ph1474 ], [ %index.next1478, %vector.body1470 ]
  %115 = shl nuw nsw i64 %index1477, 3
  %116 = getelementptr i8, i8* %scevgep377, i64 %115
  %117 = bitcast i8* %116 to <4 x double>*
  %wide.load1481 = load <4 x double>, <4 x double>* %117, align 8, !alias.scope !73, !noalias !75
  %118 = fmul fast <4 x double> %wide.load1481, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %119 = bitcast i8* %116 to <4 x double>*
  store <4 x double> %118, <4 x double>* %119, align 8, !alias.scope !73, !noalias !75
  %index.next1478 = add i64 %index1477, 4
  %120 = icmp eq i64 %index.next1478, %n.vec1476
  br i1 %120, label %middle.block1468, label %vector.body1470, !llvm.loop !79

middle.block1468:                                 ; preds = %vector.body1470
  %cmp.n1480 = icmp eq i64 %113, %n.vec1476
  br i1 %cmp.n1480, label %polly.loop_exit373, label %polly.loop_header371.preheader

polly.loop_header371.preheader:                   ; preds = %polly.loop_header365, %middle.block1468
  %polly.indvar374.ph = phi i64 [ 0, %polly.loop_header365 ], [ %n.vec1476, %middle.block1468 ]
  br label %polly.loop_header371

polly.loop_exit373:                               ; preds = %polly.loop_header371, %middle.block1468
  %polly.indvar_next369 = add nuw nsw i64 %polly.indvar368, 1
  %exitcond1010.not = icmp eq i64 %polly.indvar_next369, 80
  %indvar.next1472 = add i64 %indvar1471, 1
  br i1 %exitcond1010.not, label %polly.loop_header381.preheader, label %polly.loop_header365

polly.loop_header381.preheader:                   ; preds = %polly.loop_exit373
  %Packed_MemRef_call1282 = bitcast i8* %malloccall281 to double*
  br label %polly.loop_header381

polly.loop_header371:                             ; preds = %polly.loop_header371.preheader, %polly.loop_header371
  %polly.indvar374 = phi i64 [ %polly.indvar_next375, %polly.loop_header371 ], [ %polly.indvar374.ph, %polly.loop_header371.preheader ]
  %121 = shl nuw nsw i64 %polly.indvar374, 3
  %scevgep378 = getelementptr i8, i8* %scevgep377, i64 %121
  %scevgep378379 = bitcast i8* %scevgep378 to double*
  %_p_scalar_380 = load double, double* %scevgep378379, align 8, !alias.scope !73, !noalias !75
  %p_mul.i57 = fmul fast double %_p_scalar_380, 1.200000e+00
  store double %p_mul.i57, double* %scevgep378379, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next375 = add nuw nsw i64 %polly.indvar374, 1
  %exitcond1009.not = icmp eq i64 %polly.indvar_next375, %polly.indvar368
  br i1 %exitcond1009.not, label %polly.loop_exit373, label %polly.loop_header371, !llvm.loop !80

polly.loop_header381:                             ; preds = %polly.loop_header381.preheader, %polly.loop_exit395.1
  %indvars.iv1005 = phi i64 [ 1, %polly.loop_header381.preheader ], [ %indvars.iv.next1006, %polly.loop_exit395.1 ]
  %indvars.iv992 = phi i64 [ 0, %polly.loop_header381.preheader ], [ %indvars.iv.next993, %polly.loop_exit395.1 ]
  %polly.indvar384 = phi i64 [ 0, %polly.loop_header381.preheader ], [ %polly.indvar_next385, %polly.loop_exit395.1 ]
  %122 = shl nsw i64 %polly.indvar384, 3
  br label %polly.loop_header393

polly.loop_header393:                             ; preds = %polly.loop_exit401, %polly.loop_header381
  %indvars.iv994 = phi i64 [ %indvars.iv.next995, %polly.loop_exit401 ], [ %indvars.iv992, %polly.loop_header381 ]
  %polly.indvar396 = phi i64 [ %polly.indvar_next397, %polly.loop_exit401 ], [ 0, %polly.loop_header381 ]
  %123 = shl nsw i64 %polly.indvar396, 3
  %124 = sub nsw i64 %122, %123
  %125 = add nuw nsw i64 %123, 8
  br label %polly.loop_header399

polly.loop_exit401:                               ; preds = %polly.loop_exit436
  %polly.indvar_next397 = add nuw nsw i64 %polly.indvar396, 1
  %indvars.iv.next995 = add nsw i64 %indvars.iv994, -8
  %exitcond1007.not = icmp eq i64 %polly.indvar_next397, %indvars.iv1005
  br i1 %exitcond1007.not, label %polly.loop_header393.1, label %polly.loop_header393

polly.loop_header399:                             ; preds = %polly.loop_exit436, %polly.loop_header393
  %indvars.iv996 = phi i64 [ %indvars.iv.next997, %polly.loop_exit436 ], [ %indvars.iv994, %polly.loop_header393 ]
  %polly.indvar402 = phi i64 [ %polly.indvar_next403, %polly.loop_exit436 ], [ 0, %polly.loop_header393 ]
  %smin1001 = call i64 @llvm.smin.i64(i64 %indvars.iv996, i64 7)
  %126 = add nsw i64 %polly.indvar402, %124
  %polly.loop_guard4151115 = icmp sgt i64 %126, -1
  %127 = add nuw nsw i64 %polly.indvar402, %122
  %.not859 = icmp ult i64 %127, %125
  %polly.access.mul.call1428 = mul nuw nsw i64 %127, 60
  br i1 %polly.loop_guard4151115, label %polly.loop_header405.us, label %polly.loop_header399.split

polly.loop_header405.us:                          ; preds = %polly.loop_header399, %polly.merge424.us
  %polly.indvar408.us = phi i64 [ %polly.indvar_next409.us, %polly.merge424.us ], [ 0, %polly.loop_header399 ]
  %polly.access.mul.Packed_MemRef_call1282.us = mul nuw nsw i64 %polly.indvar408.us, 80
  br label %polly.loop_header412.us

polly.loop_header412.us:                          ; preds = %polly.loop_header405.us, %polly.loop_header412.us
  %polly.indvar416.us = phi i64 [ %polly.indvar_next417.us, %polly.loop_header412.us ], [ 0, %polly.loop_header405.us ]
  %128 = add nuw nsw i64 %polly.indvar416.us, %123
  %polly.access.mul.call1420.us = mul nuw nsw i64 %128, 60
  %polly.access.add.call1421.us = add nuw nsw i64 %polly.indvar408.us, %polly.access.mul.call1420.us
  %polly.access.call1422.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1421.us
  %polly.access.call1422.load.us = load double, double* %polly.access.call1422.us, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1282.us = add nuw nsw i64 %polly.indvar416.us, %polly.access.mul.Packed_MemRef_call1282.us
  %polly.access.Packed_MemRef_call1282.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282.us
  store double %polly.access.call1422.load.us, double* %polly.access.Packed_MemRef_call1282.us, align 8
  %polly.indvar_next417.us = add nuw nsw i64 %polly.indvar416.us, 1
  %exitcond999.not = icmp eq i64 %polly.indvar416.us, %smin1001
  br i1 %exitcond999.not, label %polly.cond423.loopexit.us, label %polly.loop_header412.us

polly.then425.us:                                 ; preds = %polly.cond423.loopexit.us
  %polly.access.add.call1429.us = add nuw nsw i64 %polly.access.mul.call1428, %polly.indvar408.us
  %polly.access.call1430.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1429.us
  %polly.access.call1430.load.us = load double, double* %polly.access.call1430.us, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1282432.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1282.us, %126
  %polly.access.Packed_MemRef_call1282433.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282432.us
  store double %polly.access.call1430.load.us, double* %polly.access.Packed_MemRef_call1282433.us, align 8
  br label %polly.merge424.us

polly.merge424.us:                                ; preds = %polly.then425.us, %polly.cond423.loopexit.us
  %polly.indvar_next409.us = add nuw nsw i64 %polly.indvar408.us, 1
  %exitcond1000.not = icmp eq i64 %polly.indvar_next409.us, 50
  br i1 %exitcond1000.not, label %polly.loop_header434.preheader, label %polly.loop_header405.us

polly.cond423.loopexit.us:                        ; preds = %polly.loop_header412.us
  br i1 %.not859, label %polly.merge424.us, label %polly.then425.us

polly.loop_header399.split:                       ; preds = %polly.loop_header399
  br i1 %.not859, label %polly.loop_exit436, label %polly.loop_header405

polly.loop_exit436:                               ; preds = %polly.loop_exit443.loopexit.us, %polly.loop_header399.split, %polly.loop_header434.preheader
  %polly.indvar_next403 = add nuw nsw i64 %polly.indvar402, 1
  %indvars.iv.next997 = add nsw i64 %indvars.iv996, 1
  %exitcond1004.not = icmp eq i64 %polly.indvar_next403, 8
  br i1 %exitcond1004.not, label %polly.loop_exit401, label %polly.loop_header399

polly.loop_header405:                             ; preds = %polly.loop_header399.split, %polly.loop_header405
  %polly.indvar408 = phi i64 [ %polly.indvar_next409, %polly.loop_header405 ], [ 0, %polly.loop_header399.split ]
  %polly.access.add.call1429 = add nuw nsw i64 %polly.access.mul.call1428, %polly.indvar408
  %polly.access.call1430 = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1429
  %polly.access.call1430.load = load double, double* %polly.access.call1430, align 8, !alias.scope !76, !noalias !81
  %polly.access.mul.Packed_MemRef_call1282431 = mul nuw nsw i64 %polly.indvar408, 80
  %polly.access.add.Packed_MemRef_call1282432 = add nsw i64 %polly.access.mul.Packed_MemRef_call1282431, %126
  %polly.access.Packed_MemRef_call1282433 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282432
  store double %polly.access.call1430.load, double* %polly.access.Packed_MemRef_call1282433, align 8
  %polly.indvar_next409 = add nuw nsw i64 %polly.indvar408, 1
  %exitcond991.not = icmp eq i64 %polly.indvar_next409, 50
  br i1 %exitcond991.not, label %polly.loop_header434.preheader, label %polly.loop_header405

polly.loop_header434.preheader:                   ; preds = %polly.loop_header405, %polly.merge424.us
  %129 = mul nuw nsw i64 %127, 480
  %130 = mul nuw nsw i64 %127, 640
  br i1 %polly.loop_guard4151115, label %polly.loop_header434.us, label %polly.loop_exit436

polly.loop_header434.us:                          ; preds = %polly.loop_header434.preheader, %polly.loop_exit443.loopexit.us
  %polly.indvar437.us = phi i64 [ %polly.indvar_next438.us, %polly.loop_exit443.loopexit.us ], [ 0, %polly.loop_header434.preheader ]
  %polly.access.mul.Packed_MemRef_call1282448.us = mul nuw nsw i64 %polly.indvar437.us, 80
  %131 = shl i64 %polly.indvar437.us, 3
  %132 = add i64 %131, %129
  %scevgep452.us = getelementptr i8, i8* %call2, i64 %132
  %scevgep452453.us = bitcast i8* %scevgep452.us to double*
  %_p_scalar_454.us = load double, double* %scevgep452453.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1282459.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1282448.us, %126
  %polly.access.Packed_MemRef_call1282460.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282459.us
  %_p_scalar_461.us = load double, double* %polly.access.Packed_MemRef_call1282460.us, align 8
  br label %polly.loop_header441.us

polly.loop_header441.us:                          ; preds = %polly.loop_header434.us, %polly.loop_header441.us
  %polly.indvar445.us = phi i64 [ %polly.indvar_next446.us, %polly.loop_header441.us ], [ 0, %polly.loop_header434.us ]
  %133 = add nuw nsw i64 %polly.indvar445.us, %123
  %polly.access.add.Packed_MemRef_call1282449.us = add nuw nsw i64 %polly.indvar445.us, %polly.access.mul.Packed_MemRef_call1282448.us
  %polly.access.Packed_MemRef_call1282450.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282449.us
  %_p_scalar_451.us = load double, double* %polly.access.Packed_MemRef_call1282450.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_454.us, %_p_scalar_451.us
  %134 = mul nuw nsw i64 %133, 480
  %135 = add nuw nsw i64 %134, %131
  %scevgep455.us = getelementptr i8, i8* %call2, i64 %135
  %scevgep455456.us = bitcast i8* %scevgep455.us to double*
  %_p_scalar_457.us = load double, double* %scevgep455456.us, align 8, !alias.scope !77, !noalias !82
  %p_mul37.i75.us = fmul fast double %_p_scalar_461.us, %_p_scalar_457.us
  %136 = shl i64 %133, 3
  %137 = add nuw nsw i64 %136, %130
  %scevgep462.us = getelementptr i8, i8* %call, i64 %137
  %scevgep462463.us = bitcast i8* %scevgep462.us to double*
  %_p_scalar_464.us = load double, double* %scevgep462463.us, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_464.us
  store double %p_add42.i79.us, double* %scevgep462463.us, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next446.us = add nuw nsw i64 %polly.indvar445.us, 1
  %exitcond1002.not = icmp eq i64 %polly.indvar445.us, %smin1001
  br i1 %exitcond1002.not, label %polly.loop_exit443.loopexit.us, label %polly.loop_header441.us

polly.loop_exit443.loopexit.us:                   ; preds = %polly.loop_header441.us
  %polly.indvar_next438.us = add nuw nsw i64 %polly.indvar437.us, 1
  %exitcond1003.not = icmp eq i64 %polly.indvar_next438.us, 50
  br i1 %exitcond1003.not, label %polly.loop_exit436, label %polly.loop_header434.us

polly.start467:                                   ; preds = %init_array.exit
  %malloccall469 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  br label %polly.loop_header553

polly.exiting468:                                 ; preds = %polly.loop_exit583.1
  tail call void @free(i8* %malloccall469)
  br label %kernel_syr2k.exit

polly.loop_header553:                             ; preds = %polly.loop_exit561, %polly.start467
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit561 ], [ 0, %polly.start467 ]
  %polly.indvar556 = phi i64 [ %polly.indvar_next557, %polly.loop_exit561 ], [ 1, %polly.start467 ]
  %138 = add i64 %indvar, 1
  %139 = mul nuw nsw i64 %polly.indvar556, 640
  %scevgep565 = getelementptr i8, i8* %call, i64 %139
  %min.iters.check1430 = icmp ult i64 %138, 4
  br i1 %min.iters.check1430, label %polly.loop_header559.preheader, label %vector.ph1431

vector.ph1431:                                    ; preds = %polly.loop_header553
  %n.vec1433 = and i64 %138, -4
  br label %vector.body1429

vector.body1429:                                  ; preds = %vector.body1429, %vector.ph1431
  %index1434 = phi i64 [ 0, %vector.ph1431 ], [ %index.next1435, %vector.body1429 ]
  %140 = shl nuw nsw i64 %index1434, 3
  %141 = getelementptr i8, i8* %scevgep565, i64 %140
  %142 = bitcast i8* %141 to <4 x double>*
  %wide.load1438 = load <4 x double>, <4 x double>* %142, align 8, !alias.scope !83, !noalias !85
  %143 = fmul fast <4 x double> %wide.load1438, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %144 = bitcast i8* %141 to <4 x double>*
  store <4 x double> %143, <4 x double>* %144, align 8, !alias.scope !83, !noalias !85
  %index.next1435 = add i64 %index1434, 4
  %145 = icmp eq i64 %index.next1435, %n.vec1433
  br i1 %145, label %middle.block1427, label %vector.body1429, !llvm.loop !89

middle.block1427:                                 ; preds = %vector.body1429
  %cmp.n1437 = icmp eq i64 %138, %n.vec1433
  br i1 %cmp.n1437, label %polly.loop_exit561, label %polly.loop_header559.preheader

polly.loop_header559.preheader:                   ; preds = %polly.loop_header553, %middle.block1427
  %polly.indvar562.ph = phi i64 [ 0, %polly.loop_header553 ], [ %n.vec1433, %middle.block1427 ]
  br label %polly.loop_header559

polly.loop_exit561:                               ; preds = %polly.loop_header559, %middle.block1427
  %polly.indvar_next557 = add nuw nsw i64 %polly.indvar556, 1
  %exitcond1030.not = icmp eq i64 %polly.indvar_next557, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1030.not, label %polly.loop_header569.preheader, label %polly.loop_header553

polly.loop_header569.preheader:                   ; preds = %polly.loop_exit561
  %Packed_MemRef_call1470 = bitcast i8* %malloccall469 to double*
  br label %polly.loop_header569

polly.loop_header559:                             ; preds = %polly.loop_header559.preheader, %polly.loop_header559
  %polly.indvar562 = phi i64 [ %polly.indvar_next563, %polly.loop_header559 ], [ %polly.indvar562.ph, %polly.loop_header559.preheader ]
  %146 = shl nuw nsw i64 %polly.indvar562, 3
  %scevgep566 = getelementptr i8, i8* %scevgep565, i64 %146
  %scevgep566567 = bitcast i8* %scevgep566 to double*
  %_p_scalar_568 = load double, double* %scevgep566567, align 8, !alias.scope !83, !noalias !85
  %p_mul.i = fmul fast double %_p_scalar_568, 1.200000e+00
  store double %p_mul.i, double* %scevgep566567, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next563 = add nuw nsw i64 %polly.indvar562, 1
  %exitcond1029.not = icmp eq i64 %polly.indvar_next563, %polly.indvar556
  br i1 %exitcond1029.not, label %polly.loop_exit561, label %polly.loop_header559, !llvm.loop !90

polly.loop_header569:                             ; preds = %polly.loop_header569.preheader, %polly.loop_exit583.1
  %indvars.iv1025 = phi i64 [ 1, %polly.loop_header569.preheader ], [ %indvars.iv.next1026, %polly.loop_exit583.1 ]
  %indvars.iv1012 = phi i64 [ 0, %polly.loop_header569.preheader ], [ %indvars.iv.next1013, %polly.loop_exit583.1 ]
  %polly.indvar572 = phi i64 [ 0, %polly.loop_header569.preheader ], [ %polly.indvar_next573, %polly.loop_exit583.1 ]
  %147 = shl nsw i64 %polly.indvar572, 3
  br label %polly.loop_header581

polly.loop_header581:                             ; preds = %polly.loop_exit589, %polly.loop_header569
  %indvars.iv1014 = phi i64 [ %indvars.iv.next1015, %polly.loop_exit589 ], [ %indvars.iv1012, %polly.loop_header569 ]
  %polly.indvar584 = phi i64 [ %polly.indvar_next585, %polly.loop_exit589 ], [ 0, %polly.loop_header569 ]
  %148 = shl nsw i64 %polly.indvar584, 3
  %149 = sub nsw i64 %147, %148
  %150 = add nuw nsw i64 %148, 8
  br label %polly.loop_header587

polly.loop_exit589:                               ; preds = %polly.loop_exit624
  %polly.indvar_next585 = add nuw nsw i64 %polly.indvar584, 1
  %indvars.iv.next1015 = add nsw i64 %indvars.iv1014, -8
  %exitcond1027.not = icmp eq i64 %polly.indvar_next585, %indvars.iv1025
  br i1 %exitcond1027.not, label %polly.loop_header581.1, label %polly.loop_header581

polly.loop_header587:                             ; preds = %polly.loop_exit624, %polly.loop_header581
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %polly.loop_exit624 ], [ %indvars.iv1014, %polly.loop_header581 ]
  %polly.indvar590 = phi i64 [ %polly.indvar_next591, %polly.loop_exit624 ], [ 0, %polly.loop_header581 ]
  %smin1021 = call i64 @llvm.smin.i64(i64 %indvars.iv1016, i64 7)
  %151 = add nsw i64 %polly.indvar590, %149
  %polly.loop_guard6031117 = icmp sgt i64 %151, -1
  %152 = add nuw nsw i64 %polly.indvar590, %147
  %.not860 = icmp ult i64 %152, %150
  %polly.access.mul.call1616 = mul nuw nsw i64 %152, 60
  br i1 %polly.loop_guard6031117, label %polly.loop_header593.us, label %polly.loop_header587.split

polly.loop_header593.us:                          ; preds = %polly.loop_header587, %polly.merge612.us
  %polly.indvar596.us = phi i64 [ %polly.indvar_next597.us, %polly.merge612.us ], [ 0, %polly.loop_header587 ]
  %polly.access.mul.Packed_MemRef_call1470.us = mul nuw nsw i64 %polly.indvar596.us, 80
  br label %polly.loop_header600.us

polly.loop_header600.us:                          ; preds = %polly.loop_header593.us, %polly.loop_header600.us
  %polly.indvar604.us = phi i64 [ %polly.indvar_next605.us, %polly.loop_header600.us ], [ 0, %polly.loop_header593.us ]
  %153 = add nuw nsw i64 %polly.indvar604.us, %148
  %polly.access.mul.call1608.us = mul nuw nsw i64 %153, 60
  %polly.access.add.call1609.us = add nuw nsw i64 %polly.indvar596.us, %polly.access.mul.call1608.us
  %polly.access.call1610.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1609.us
  %polly.access.call1610.load.us = load double, double* %polly.access.call1610.us, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1470.us = add nuw nsw i64 %polly.indvar604.us, %polly.access.mul.Packed_MemRef_call1470.us
  %polly.access.Packed_MemRef_call1470.us = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470.us
  store double %polly.access.call1610.load.us, double* %polly.access.Packed_MemRef_call1470.us, align 8
  %polly.indvar_next605.us = add nuw nsw i64 %polly.indvar604.us, 1
  %exitcond1019.not = icmp eq i64 %polly.indvar604.us, %smin1021
  br i1 %exitcond1019.not, label %polly.cond611.loopexit.us, label %polly.loop_header600.us

polly.then613.us:                                 ; preds = %polly.cond611.loopexit.us
  %polly.access.add.call1617.us = add nuw nsw i64 %polly.access.mul.call1616, %polly.indvar596.us
  %polly.access.call1618.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1617.us
  %polly.access.call1618.load.us = load double, double* %polly.access.call1618.us, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1470620.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1470.us, %151
  %polly.access.Packed_MemRef_call1470621.us = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470620.us
  store double %polly.access.call1618.load.us, double* %polly.access.Packed_MemRef_call1470621.us, align 8
  br label %polly.merge612.us

polly.merge612.us:                                ; preds = %polly.then613.us, %polly.cond611.loopexit.us
  %polly.indvar_next597.us = add nuw nsw i64 %polly.indvar596.us, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar_next597.us, 50
  br i1 %exitcond1020.not, label %polly.loop_header622.preheader, label %polly.loop_header593.us

polly.cond611.loopexit.us:                        ; preds = %polly.loop_header600.us
  br i1 %.not860, label %polly.merge612.us, label %polly.then613.us

polly.loop_header587.split:                       ; preds = %polly.loop_header587
  br i1 %.not860, label %polly.loop_exit624, label %polly.loop_header593

polly.loop_exit624:                               ; preds = %polly.loop_exit631.loopexit.us, %polly.loop_header587.split, %polly.loop_header622.preheader
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %indvars.iv.next1017 = add nsw i64 %indvars.iv1016, 1
  %exitcond1024.not = icmp eq i64 %polly.indvar_next591, 8
  br i1 %exitcond1024.not, label %polly.loop_exit589, label %polly.loop_header587

polly.loop_header593:                             ; preds = %polly.loop_header587.split, %polly.loop_header593
  %polly.indvar596 = phi i64 [ %polly.indvar_next597, %polly.loop_header593 ], [ 0, %polly.loop_header587.split ]
  %polly.access.add.call1617 = add nuw nsw i64 %polly.access.mul.call1616, %polly.indvar596
  %polly.access.call1618 = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1617
  %polly.access.call1618.load = load double, double* %polly.access.call1618, align 8, !alias.scope !86, !noalias !91
  %polly.access.mul.Packed_MemRef_call1470619 = mul nuw nsw i64 %polly.indvar596, 80
  %polly.access.add.Packed_MemRef_call1470620 = add nsw i64 %polly.access.mul.Packed_MemRef_call1470619, %151
  %polly.access.Packed_MemRef_call1470621 = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470620
  store double %polly.access.call1618.load, double* %polly.access.Packed_MemRef_call1470621, align 8
  %polly.indvar_next597 = add nuw nsw i64 %polly.indvar596, 1
  %exitcond1011.not = icmp eq i64 %polly.indvar_next597, 50
  br i1 %exitcond1011.not, label %polly.loop_header622.preheader, label %polly.loop_header593

polly.loop_header622.preheader:                   ; preds = %polly.loop_header593, %polly.merge612.us
  %154 = mul nuw nsw i64 %152, 480
  %155 = mul nuw nsw i64 %152, 640
  br i1 %polly.loop_guard6031117, label %polly.loop_header622.us, label %polly.loop_exit624

polly.loop_header622.us:                          ; preds = %polly.loop_header622.preheader, %polly.loop_exit631.loopexit.us
  %polly.indvar625.us = phi i64 [ %polly.indvar_next626.us, %polly.loop_exit631.loopexit.us ], [ 0, %polly.loop_header622.preheader ]
  %polly.access.mul.Packed_MemRef_call1470636.us = mul nuw nsw i64 %polly.indvar625.us, 80
  %156 = shl i64 %polly.indvar625.us, 3
  %157 = add i64 %156, %154
  %scevgep640.us = getelementptr i8, i8* %call2, i64 %157
  %scevgep640641.us = bitcast i8* %scevgep640.us to double*
  %_p_scalar_642.us = load double, double* %scevgep640641.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1470647.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1470636.us, %151
  %polly.access.Packed_MemRef_call1470648.us = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470647.us
  %_p_scalar_649.us = load double, double* %polly.access.Packed_MemRef_call1470648.us, align 8
  br label %polly.loop_header629.us

polly.loop_header629.us:                          ; preds = %polly.loop_header622.us, %polly.loop_header629.us
  %polly.indvar633.us = phi i64 [ %polly.indvar_next634.us, %polly.loop_header629.us ], [ 0, %polly.loop_header622.us ]
  %158 = add nuw nsw i64 %polly.indvar633.us, %148
  %polly.access.add.Packed_MemRef_call1470637.us = add nuw nsw i64 %polly.indvar633.us, %polly.access.mul.Packed_MemRef_call1470636.us
  %polly.access.Packed_MemRef_call1470638.us = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470637.us
  %_p_scalar_639.us = load double, double* %polly.access.Packed_MemRef_call1470638.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_642.us, %_p_scalar_639.us
  %159 = mul nuw nsw i64 %158, 480
  %160 = add nuw nsw i64 %159, %156
  %scevgep643.us = getelementptr i8, i8* %call2, i64 %160
  %scevgep643644.us = bitcast i8* %scevgep643.us to double*
  %_p_scalar_645.us = load double, double* %scevgep643644.us, align 8, !alias.scope !87, !noalias !92
  %p_mul37.i.us = fmul fast double %_p_scalar_649.us, %_p_scalar_645.us
  %161 = shl i64 %158, 3
  %162 = add nuw nsw i64 %161, %155
  %scevgep650.us = getelementptr i8, i8* %call, i64 %162
  %scevgep650651.us = bitcast i8* %scevgep650.us to double*
  %_p_scalar_652.us = load double, double* %scevgep650651.us, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_652.us
  store double %p_add42.i.us, double* %scevgep650651.us, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next634.us = add nuw nsw i64 %polly.indvar633.us, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar633.us, %smin1021
  br i1 %exitcond1022.not, label %polly.loop_exit631.loopexit.us, label %polly.loop_header629.us

polly.loop_exit631.loopexit.us:                   ; preds = %polly.loop_header629.us
  %polly.indvar_next626.us = add nuw nsw i64 %polly.indvar625.us, 1
  %exitcond1023.not = icmp eq i64 %polly.indvar_next626.us, 50
  br i1 %exitcond1023.not, label %polly.loop_exit624, label %polly.loop_header622.us

polly.loop_header791:                             ; preds = %entry, %polly.loop_exit799
  %polly.indvar794 = phi i64 [ %polly.indvar_next795, %polly.loop_exit799 ], [ 0, %entry ]
  %163 = mul nuw nsw i64 %polly.indvar794, 640
  %164 = trunc i64 %polly.indvar794 to i32
  %broadcast.splatinsert1161 = insertelement <4 x i32> poison, i32 %164, i32 0
  %broadcast.splat1162 = shufflevector <4 x i32> %broadcast.splatinsert1161, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1151

vector.body1151:                                  ; preds = %vector.body1151, %polly.loop_header791
  %index1153 = phi i64 [ 0, %polly.loop_header791 ], [ %index.next1154, %vector.body1151 ]
  %vec.ind1159 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header791 ], [ %vec.ind.next1160, %vector.body1151 ]
  %165 = mul <4 x i32> %vec.ind1159, %broadcast.splat1162
  %166 = add <4 x i32> %165, <i32 3, i32 3, i32 3, i32 3>
  %167 = urem <4 x i32> %166, <i32 80, i32 80, i32 80, i32 80>
  %168 = sitofp <4 x i32> %167 to <4 x double>
  %169 = fmul fast <4 x double> %168, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %170 = shl i64 %index1153, 3
  %171 = add nuw nsw i64 %170, %163
  %172 = getelementptr i8, i8* %call, i64 %171
  %173 = bitcast i8* %172 to <4 x double>*
  store <4 x double> %169, <4 x double>* %173, align 8, !alias.scope !93, !noalias !95
  %index.next1154 = add i64 %index1153, 4
  %vec.ind.next1160 = add <4 x i32> %vec.ind1159, <i32 4, i32 4, i32 4, i32 4>
  %174 = icmp eq i64 %index.next1154, 32
  br i1 %174, label %polly.loop_exit799, label %vector.body1151, !llvm.loop !98

polly.loop_exit799:                               ; preds = %vector.body1151
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar_next795, 32
  br i1 %exitcond1050.not, label %polly.loop_header791.1, label %polly.loop_header791

polly.loop_header818:                             ; preds = %polly.loop_exit799.2.2, %polly.loop_exit826
  %polly.indvar821 = phi i64 [ %polly.indvar_next822, %polly.loop_exit826 ], [ 0, %polly.loop_exit799.2.2 ]
  %175 = mul nuw nsw i64 %polly.indvar821, 480
  %176 = trunc i64 %polly.indvar821 to i32
  %broadcast.splatinsert1275 = insertelement <4 x i32> poison, i32 %176, i32 0
  %broadcast.splat1276 = shufflevector <4 x i32> %broadcast.splatinsert1275, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1265

vector.body1265:                                  ; preds = %vector.body1265, %polly.loop_header818
  %index1267 = phi i64 [ 0, %polly.loop_header818 ], [ %index.next1268, %vector.body1265 ]
  %vec.ind1273 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header818 ], [ %vec.ind.next1274, %vector.body1265 ]
  %177 = mul <4 x i32> %vec.ind1273, %broadcast.splat1276
  %178 = add <4 x i32> %177, <i32 2, i32 2, i32 2, i32 2>
  %179 = urem <4 x i32> %178, <i32 60, i32 60, i32 60, i32 60>
  %180 = sitofp <4 x i32> %179 to <4 x double>
  %181 = fmul fast <4 x double> %180, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %182 = shl i64 %index1267, 3
  %183 = add i64 %182, %175
  %184 = getelementptr i8, i8* %call2, i64 %183
  %185 = bitcast i8* %184 to <4 x double>*
  store <4 x double> %181, <4 x double>* %185, align 8, !alias.scope !97, !noalias !99
  %index.next1268 = add i64 %index1267, 4
  %vec.ind.next1274 = add <4 x i32> %vec.ind1273, <i32 4, i32 4, i32 4, i32 4>
  %186 = icmp eq i64 %index.next1268, 32
  br i1 %186, label %polly.loop_exit826, label %vector.body1265, !llvm.loop !100

polly.loop_exit826:                               ; preds = %vector.body1265
  %polly.indvar_next822 = add nuw nsw i64 %polly.indvar821, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar_next822, 32
  br i1 %exitcond1041.not, label %polly.loop_header818.1, label %polly.loop_header818

polly.loop_header844:                             ; preds = %polly.loop_exit826.1.2, %polly.loop_exit852
  %polly.indvar847 = phi i64 [ %polly.indvar_next848, %polly.loop_exit852 ], [ 0, %polly.loop_exit826.1.2 ]
  %187 = mul nuw nsw i64 %polly.indvar847, 480
  %188 = trunc i64 %polly.indvar847 to i32
  %broadcast.splatinsert1353 = insertelement <4 x i32> poison, i32 %188, i32 0
  %broadcast.splat1354 = shufflevector <4 x i32> %broadcast.splatinsert1353, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1343

vector.body1343:                                  ; preds = %vector.body1343, %polly.loop_header844
  %index1345 = phi i64 [ 0, %polly.loop_header844 ], [ %index.next1346, %vector.body1343 ]
  %vec.ind1351 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header844 ], [ %vec.ind.next1352, %vector.body1343 ]
  %189 = mul <4 x i32> %vec.ind1351, %broadcast.splat1354
  %190 = add <4 x i32> %189, <i32 1, i32 1, i32 1, i32 1>
  %191 = urem <4 x i32> %190, <i32 80, i32 80, i32 80, i32 80>
  %192 = sitofp <4 x i32> %191 to <4 x double>
  %193 = fmul fast <4 x double> %192, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %194 = shl i64 %index1345, 3
  %195 = add i64 %194, %187
  %196 = getelementptr i8, i8* %call1, i64 %195
  %197 = bitcast i8* %196 to <4 x double>*
  store <4 x double> %193, <4 x double>* %197, align 8, !alias.scope !96, !noalias !101
  %index.next1346 = add i64 %index1345, 4
  %vec.ind.next1352 = add <4 x i32> %vec.ind1351, <i32 4, i32 4, i32 4, i32 4>
  %198 = icmp eq i64 %index.next1346, 32
  br i1 %198, label %polly.loop_exit852, label %vector.body1343, !llvm.loop !102

polly.loop_exit852:                               ; preds = %vector.body1343
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar_next848, 32
  br i1 %exitcond1035.not, label %polly.loop_header844.1, label %polly.loop_header844

polly.loop_header211.1:                           ; preds = %polly.loop_exit219, %polly.loop_exit219.1
  %indvars.iv975.1 = phi i64 [ %indvars.iv.next976.1, %polly.loop_exit219.1 ], [ %indvars.iv, %polly.loop_exit219 ]
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit219.1 ], [ 0, %polly.loop_exit219 ]
  %199 = shl nsw i64 %polly.indvar214.1, 3
  %200 = sub nsw i64 %97, %199
  %201 = add nuw nsw i64 %199, 8
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_exit248.1, %polly.loop_header211.1
  %indvars.iv977.1 = phi i64 [ %indvars.iv.next978.1, %polly.loop_exit248.1 ], [ %indvars.iv975.1, %polly.loop_header211.1 ]
  %polly.indvar220.1 = phi i64 [ %polly.indvar_next221.1, %polly.loop_exit248.1 ], [ 0, %polly.loop_header211.1 ]
  %smin981.1 = call i64 @llvm.smin.i64(i64 %indvars.iv977.1, i64 7)
  %202 = add nsw i64 %polly.indvar220.1, %200
  %polly.loop_guard.11114 = icmp sgt i64 %202, -1
  %203 = add nuw nsw i64 %polly.indvar220.1, %97
  %.not.1 = icmp ult i64 %203, %201
  %polly.access.mul.call1240.1 = mul nuw nsw i64 %203, 60
  %204 = add nuw i64 %polly.access.mul.call1240.1, 50
  br i1 %polly.loop_guard.11114, label %polly.loop_header223.us.1, label %polly.loop_header217.split.1

polly.loop_header217.split.1:                     ; preds = %polly.loop_header217.1
  br i1 %.not.1, label %polly.loop_exit248.1, label %vector.ph1531

vector.ph1531:                                    ; preds = %polly.loop_header217.split.1
  %broadcast.splatinsert1538 = insertelement <4 x i64> poison, i64 %202, i32 0
  %broadcast.splat1539 = shufflevector <4 x i64> %broadcast.splatinsert1538, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1530

vector.body1530:                                  ; preds = %pred.store.continue1547, %vector.ph1531
  %index1532 = phi i64 [ 0, %vector.ph1531 ], [ %index.next1533, %pred.store.continue1547 ]
  %vec.ind1535 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1531 ], [ %vec.ind.next1536, %pred.store.continue1547 ]
  %205 = icmp ult <4 x i64> %vec.ind1535, <i64 10, i64 10, i64 10, i64 10>
  %206 = add nuw nsw i64 %204, %index1532
  %207 = getelementptr double, double* %polly.access.cast.call1657, i64 %206
  %208 = bitcast double* %207 to <4 x double>*
  %wide.masked.load1537 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %208, i32 8, <4 x i1> %205, <4 x double> poison), !alias.scope !65, !noalias !71
  %209 = mul nuw nsw <4 x i64> %vec.ind1535, <i64 80, i64 80, i64 80, i64 80>
  %210 = add nsw <4 x i64> %209, %broadcast.splat1539
  %211 = extractelement <4 x i1> %205, i32 0
  br i1 %211, label %pred.store.if1540, label %pred.store.continue1541

pred.store.if1540:                                ; preds = %vector.body1530
  %212 = extractelement <4 x i64> %210, i32 0
  %213 = getelementptr double, double* %Packed_MemRef_call1, i64 %212
  %214 = extractelement <4 x double> %wide.masked.load1537, i32 0
  store double %214, double* %213, align 8
  br label %pred.store.continue1541

pred.store.continue1541:                          ; preds = %pred.store.if1540, %vector.body1530
  %215 = extractelement <4 x i1> %205, i32 1
  br i1 %215, label %pred.store.if1542, label %pred.store.continue1543

pred.store.if1542:                                ; preds = %pred.store.continue1541
  %216 = extractelement <4 x i64> %210, i32 1
  %217 = getelementptr double, double* %Packed_MemRef_call1, i64 %216
  %218 = extractelement <4 x double> %wide.masked.load1537, i32 1
  store double %218, double* %217, align 8
  br label %pred.store.continue1543

pred.store.continue1543:                          ; preds = %pred.store.if1542, %pred.store.continue1541
  %219 = extractelement <4 x i1> %205, i32 2
  br i1 %219, label %pred.store.if1544, label %pred.store.continue1545

pred.store.if1544:                                ; preds = %pred.store.continue1543
  %220 = extractelement <4 x i64> %210, i32 2
  %221 = getelementptr double, double* %Packed_MemRef_call1, i64 %220
  %222 = extractelement <4 x double> %wide.masked.load1537, i32 2
  store double %222, double* %221, align 8
  br label %pred.store.continue1545

pred.store.continue1545:                          ; preds = %pred.store.if1544, %pred.store.continue1543
  %223 = extractelement <4 x i1> %205, i32 3
  br i1 %223, label %pred.store.if1546, label %pred.store.continue1547

pred.store.if1546:                                ; preds = %pred.store.continue1545
  %224 = extractelement <4 x i64> %210, i32 3
  %225 = getelementptr double, double* %Packed_MemRef_call1, i64 %224
  %226 = extractelement <4 x double> %wide.masked.load1537, i32 3
  store double %226, double* %225, align 8
  br label %pred.store.continue1547

pred.store.continue1547:                          ; preds = %pred.store.if1546, %pred.store.continue1545
  %index.next1533 = add i64 %index1532, 4
  %vec.ind.next1536 = add <4 x i64> %vec.ind1535, <i64 4, i64 4, i64 4, i64 4>
  %227 = icmp eq i64 %index.next1533, 12
  br i1 %227, label %polly.loop_header246.preheader.1, label %vector.body1530, !llvm.loop !103

polly.loop_header223.us.1:                        ; preds = %polly.loop_header217.1, %polly.merge.us.1
  %polly.indvar226.us.1 = phi i64 [ %polly.indvar_next227.us.1, %polly.merge.us.1 ], [ 0, %polly.loop_header217.1 ]
  %228 = add nuw nsw i64 %polly.indvar226.us.1, 50
  %polly.access.mul.Packed_MemRef_call1.us.1 = mul nuw nsw i64 %polly.indvar226.us.1, 80
  br label %polly.loop_header229.us.1

polly.loop_header229.us.1:                        ; preds = %polly.loop_header229.us.1, %polly.loop_header223.us.1
  %polly.indvar232.us.1 = phi i64 [ %polly.indvar_next233.us.1, %polly.loop_header229.us.1 ], [ 0, %polly.loop_header223.us.1 ]
  %229 = add nuw nsw i64 %polly.indvar232.us.1, %199
  %polly.access.mul.call1236.us.1 = mul nuw nsw i64 %229, 60
  %polly.access.add.call1237.us.1 = add nuw nsw i64 %228, %polly.access.mul.call1236.us.1
  %polly.access.call1238.us.1 = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1237.us.1
  %polly.access.call1238.load.us.1 = load double, double* %polly.access.call1238.us.1, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar232.us.1, %polly.access.mul.Packed_MemRef_call1.us.1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1238.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next233.us.1 = add nuw nsw i64 %polly.indvar232.us.1, 1
  %exitcond979.1.not = icmp eq i64 %polly.indvar232.us.1, %smin981.1
  br i1 %exitcond979.1.not, label %polly.cond.loopexit.us.1, label %polly.loop_header229.us.1

polly.cond.loopexit.us.1:                         ; preds = %polly.loop_header229.us.1
  br i1 %.not.1, label %polly.merge.us.1, label %polly.then.us.1

polly.then.us.1:                                  ; preds = %polly.cond.loopexit.us.1
  %polly.access.add.call1241.us.1 = add nuw nsw i64 %204, %polly.indvar226.us.1
  %polly.access.call1242.us.1 = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1241.us.1
  %polly.access.call1242.load.us.1 = load double, double* %polly.access.call1242.us.1, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1244.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us.1, %202
  %polly.access.Packed_MemRef_call1245.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244.us.1
  store double %polly.access.call1242.load.us.1, double* %polly.access.Packed_MemRef_call1245.us.1, align 8
  br label %polly.merge.us.1

polly.merge.us.1:                                 ; preds = %polly.then.us.1, %polly.cond.loopexit.us.1
  %polly.indvar_next227.us.1 = add nuw nsw i64 %polly.indvar226.us.1, 1
  %exitcond980.1.not = icmp eq i64 %polly.indvar_next227.us.1, 10
  br i1 %exitcond980.1.not, label %polly.loop_header246.preheader.1, label %polly.loop_header223.us.1

polly.loop_header246.preheader.1:                 ; preds = %pred.store.continue1547, %polly.merge.us.1
  %230 = mul nuw nsw i64 %203, 480
  %231 = mul nuw nsw i64 %203, 640
  br i1 %polly.loop_guard.11114, label %polly.loop_header246.us.1, label %polly.loop_exit248.1

polly.loop_header246.us.1:                        ; preds = %polly.loop_header246.preheader.1, %polly.loop_exit255.loopexit.us.1
  %polly.indvar249.us.1 = phi i64 [ %polly.indvar_next250.us.1, %polly.loop_exit255.loopexit.us.1 ], [ 0, %polly.loop_header246.preheader.1 ]
  %polly.access.mul.Packed_MemRef_call1260.us.1 = mul nuw nsw i64 %polly.indvar249.us.1, 80
  %232 = shl i64 %polly.indvar249.us.1, 3
  %233 = add i64 %232, 400
  %234 = add i64 %233, %230
  %scevgep264.us.1 = getelementptr i8, i8* %call2, i64 %234
  %scevgep264265.us.1 = bitcast i8* %scevgep264.us.1 to double*
  %_p_scalar_266.us.1 = load double, double* %scevgep264265.us.1, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1271.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1260.us.1, %202
  %polly.access.Packed_MemRef_call1272.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1271.us.1
  %_p_scalar_273.us.1 = load double, double* %polly.access.Packed_MemRef_call1272.us.1, align 8
  br label %polly.loop_header253.us.1

polly.loop_header253.us.1:                        ; preds = %polly.loop_header253.us.1, %polly.loop_header246.us.1
  %polly.indvar257.us.1 = phi i64 [ %polly.indvar_next258.us.1, %polly.loop_header253.us.1 ], [ 0, %polly.loop_header246.us.1 ]
  %235 = add nuw nsw i64 %polly.indvar257.us.1, %199
  %polly.access.add.Packed_MemRef_call1261.us.1 = add nuw nsw i64 %polly.indvar257.us.1, %polly.access.mul.Packed_MemRef_call1260.us.1
  %polly.access.Packed_MemRef_call1262.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us.1
  %_p_scalar_263.us.1 = load double, double* %polly.access.Packed_MemRef_call1262.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_266.us.1, %_p_scalar_263.us.1
  %236 = mul nuw nsw i64 %235, 480
  %237 = add nuw nsw i64 %236, %233
  %scevgep267.us.1 = getelementptr i8, i8* %call2, i64 %237
  %scevgep267268.us.1 = bitcast i8* %scevgep267.us.1 to double*
  %_p_scalar_269.us.1 = load double, double* %scevgep267268.us.1, align 8, !alias.scope !66, !noalias !72
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_273.us.1, %_p_scalar_269.us.1
  %238 = shl i64 %235, 3
  %239 = add nuw nsw i64 %238, %231
  %scevgep274.us.1 = getelementptr i8, i8* %call, i64 %239
  %scevgep274275.us.1 = bitcast i8* %scevgep274.us.1 to double*
  %_p_scalar_276.us.1 = load double, double* %scevgep274275.us.1, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_276.us.1
  store double %p_add42.i118.us.1, double* %scevgep274275.us.1, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next258.us.1 = add nuw nsw i64 %polly.indvar257.us.1, 1
  %exitcond982.1.not = icmp eq i64 %polly.indvar257.us.1, %smin981.1
  br i1 %exitcond982.1.not, label %polly.loop_exit255.loopexit.us.1, label %polly.loop_header253.us.1

polly.loop_exit255.loopexit.us.1:                 ; preds = %polly.loop_header253.us.1
  %polly.indvar_next250.us.1 = add nuw nsw i64 %polly.indvar249.us.1, 1
  %exitcond983.1.not = icmp eq i64 %polly.indvar_next250.us.1, 10
  br i1 %exitcond983.1.not, label %polly.loop_exit248.1, label %polly.loop_header246.us.1

polly.loop_exit248.1:                             ; preds = %polly.loop_exit255.loopexit.us.1, %polly.loop_header217.split.1, %polly.loop_header246.preheader.1
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %indvars.iv.next978.1 = add nsw i64 %indvars.iv977.1, 1
  %exitcond984.1.not = icmp eq i64 %polly.indvar_next221.1, 8
  br i1 %exitcond984.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.1

polly.loop_exit219.1:                             ; preds = %polly.loop_exit248.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %indvars.iv.next976.1 = add nsw i64 %indvars.iv975.1, -8
  %exitcond987.1.not = icmp eq i64 %polly.indvar_next215.1, %indvars.iv985
  br i1 %exitcond987.1.not, label %polly.loop_exit213.1, label %polly.loop_header211.1

polly.loop_exit213.1:                             ; preds = %polly.loop_exit219.1
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %indvars.iv.next986 = add nuw nsw i64 %indvars.iv985, 1
  %exitcond988.not = icmp eq i64 %polly.indvar_next203, 10
  br i1 %exitcond988.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header393.1:                           ; preds = %polly.loop_exit401, %polly.loop_exit401.1
  %indvars.iv994.1 = phi i64 [ %indvars.iv.next995.1, %polly.loop_exit401.1 ], [ %indvars.iv992, %polly.loop_exit401 ]
  %polly.indvar396.1 = phi i64 [ %polly.indvar_next397.1, %polly.loop_exit401.1 ], [ 0, %polly.loop_exit401 ]
  %240 = shl nsw i64 %polly.indvar396.1, 3
  %241 = sub nsw i64 %122, %240
  %242 = add nuw nsw i64 %240, 8
  br label %polly.loop_header399.1

polly.loop_header399.1:                           ; preds = %polly.loop_exit436.1, %polly.loop_header393.1
  %indvars.iv996.1 = phi i64 [ %indvars.iv.next997.1, %polly.loop_exit436.1 ], [ %indvars.iv994.1, %polly.loop_header393.1 ]
  %polly.indvar402.1 = phi i64 [ %polly.indvar_next403.1, %polly.loop_exit436.1 ], [ 0, %polly.loop_header393.1 ]
  %smin1001.1 = call i64 @llvm.smin.i64(i64 %indvars.iv996.1, i64 7)
  %243 = add nsw i64 %polly.indvar402.1, %241
  %polly.loop_guard415.11116 = icmp sgt i64 %243, -1
  %244 = add nuw nsw i64 %polly.indvar402.1, %122
  %.not859.1 = icmp ult i64 %244, %242
  %polly.access.mul.call1428.1 = mul nuw nsw i64 %244, 60
  %245 = add nuw i64 %polly.access.mul.call1428.1, 50
  br i1 %polly.loop_guard415.11116, label %polly.loop_header405.us.1, label %polly.loop_header399.split.1

polly.loop_header399.split.1:                     ; preds = %polly.loop_header399.1
  br i1 %.not859.1, label %polly.loop_exit436.1, label %vector.ph1485

vector.ph1485:                                    ; preds = %polly.loop_header399.split.1
  %broadcast.splatinsert1492 = insertelement <4 x i64> poison, i64 %243, i32 0
  %broadcast.splat1493 = shufflevector <4 x i64> %broadcast.splatinsert1492, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1484

vector.body1484:                                  ; preds = %pred.store.continue1501, %vector.ph1485
  %index1486 = phi i64 [ 0, %vector.ph1485 ], [ %index.next1487, %pred.store.continue1501 ]
  %vec.ind1489 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1485 ], [ %vec.ind.next1490, %pred.store.continue1501 ]
  %246 = icmp ult <4 x i64> %vec.ind1489, <i64 10, i64 10, i64 10, i64 10>
  %247 = add nuw nsw i64 %245, %index1486
  %248 = getelementptr double, double* %polly.access.cast.call1657, i64 %247
  %249 = bitcast double* %248 to <4 x double>*
  %wide.masked.load1491 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %249, i32 8, <4 x i1> %246, <4 x double> poison), !alias.scope !76, !noalias !81
  %250 = mul nuw nsw <4 x i64> %vec.ind1489, <i64 80, i64 80, i64 80, i64 80>
  %251 = add nsw <4 x i64> %250, %broadcast.splat1493
  %252 = extractelement <4 x i1> %246, i32 0
  br i1 %252, label %pred.store.if1494, label %pred.store.continue1495

pred.store.if1494:                                ; preds = %vector.body1484
  %253 = extractelement <4 x i64> %251, i32 0
  %254 = getelementptr double, double* %Packed_MemRef_call1282, i64 %253
  %255 = extractelement <4 x double> %wide.masked.load1491, i32 0
  store double %255, double* %254, align 8
  br label %pred.store.continue1495

pred.store.continue1495:                          ; preds = %pred.store.if1494, %vector.body1484
  %256 = extractelement <4 x i1> %246, i32 1
  br i1 %256, label %pred.store.if1496, label %pred.store.continue1497

pred.store.if1496:                                ; preds = %pred.store.continue1495
  %257 = extractelement <4 x i64> %251, i32 1
  %258 = getelementptr double, double* %Packed_MemRef_call1282, i64 %257
  %259 = extractelement <4 x double> %wide.masked.load1491, i32 1
  store double %259, double* %258, align 8
  br label %pred.store.continue1497

pred.store.continue1497:                          ; preds = %pred.store.if1496, %pred.store.continue1495
  %260 = extractelement <4 x i1> %246, i32 2
  br i1 %260, label %pred.store.if1498, label %pred.store.continue1499

pred.store.if1498:                                ; preds = %pred.store.continue1497
  %261 = extractelement <4 x i64> %251, i32 2
  %262 = getelementptr double, double* %Packed_MemRef_call1282, i64 %261
  %263 = extractelement <4 x double> %wide.masked.load1491, i32 2
  store double %263, double* %262, align 8
  br label %pred.store.continue1499

pred.store.continue1499:                          ; preds = %pred.store.if1498, %pred.store.continue1497
  %264 = extractelement <4 x i1> %246, i32 3
  br i1 %264, label %pred.store.if1500, label %pred.store.continue1501

pred.store.if1500:                                ; preds = %pred.store.continue1499
  %265 = extractelement <4 x i64> %251, i32 3
  %266 = getelementptr double, double* %Packed_MemRef_call1282, i64 %265
  %267 = extractelement <4 x double> %wide.masked.load1491, i32 3
  store double %267, double* %266, align 8
  br label %pred.store.continue1501

pred.store.continue1501:                          ; preds = %pred.store.if1500, %pred.store.continue1499
  %index.next1487 = add i64 %index1486, 4
  %vec.ind.next1490 = add <4 x i64> %vec.ind1489, <i64 4, i64 4, i64 4, i64 4>
  %268 = icmp eq i64 %index.next1487, 12
  br i1 %268, label %polly.loop_header434.preheader.1, label %vector.body1484, !llvm.loop !104

polly.loop_header405.us.1:                        ; preds = %polly.loop_header399.1, %polly.merge424.us.1
  %polly.indvar408.us.1 = phi i64 [ %polly.indvar_next409.us.1, %polly.merge424.us.1 ], [ 0, %polly.loop_header399.1 ]
  %269 = add nuw nsw i64 %polly.indvar408.us.1, 50
  %polly.access.mul.Packed_MemRef_call1282.us.1 = mul nuw nsw i64 %polly.indvar408.us.1, 80
  br label %polly.loop_header412.us.1

polly.loop_header412.us.1:                        ; preds = %polly.loop_header412.us.1, %polly.loop_header405.us.1
  %polly.indvar416.us.1 = phi i64 [ %polly.indvar_next417.us.1, %polly.loop_header412.us.1 ], [ 0, %polly.loop_header405.us.1 ]
  %270 = add nuw nsw i64 %polly.indvar416.us.1, %240
  %polly.access.mul.call1420.us.1 = mul nuw nsw i64 %270, 60
  %polly.access.add.call1421.us.1 = add nuw nsw i64 %269, %polly.access.mul.call1420.us.1
  %polly.access.call1422.us.1 = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1421.us.1
  %polly.access.call1422.load.us.1 = load double, double* %polly.access.call1422.us.1, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1282.us.1 = add nuw nsw i64 %polly.indvar416.us.1, %polly.access.mul.Packed_MemRef_call1282.us.1
  %polly.access.Packed_MemRef_call1282.us.1 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282.us.1
  store double %polly.access.call1422.load.us.1, double* %polly.access.Packed_MemRef_call1282.us.1, align 8
  %polly.indvar_next417.us.1 = add nuw nsw i64 %polly.indvar416.us.1, 1
  %exitcond999.1.not = icmp eq i64 %polly.indvar416.us.1, %smin1001.1
  br i1 %exitcond999.1.not, label %polly.cond423.loopexit.us.1, label %polly.loop_header412.us.1

polly.cond423.loopexit.us.1:                      ; preds = %polly.loop_header412.us.1
  br i1 %.not859.1, label %polly.merge424.us.1, label %polly.then425.us.1

polly.then425.us.1:                               ; preds = %polly.cond423.loopexit.us.1
  %polly.access.add.call1429.us.1 = add nuw nsw i64 %245, %polly.indvar408.us.1
  %polly.access.call1430.us.1 = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1429.us.1
  %polly.access.call1430.load.us.1 = load double, double* %polly.access.call1430.us.1, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1282432.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1282.us.1, %243
  %polly.access.Packed_MemRef_call1282433.us.1 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282432.us.1
  store double %polly.access.call1430.load.us.1, double* %polly.access.Packed_MemRef_call1282433.us.1, align 8
  br label %polly.merge424.us.1

polly.merge424.us.1:                              ; preds = %polly.then425.us.1, %polly.cond423.loopexit.us.1
  %polly.indvar_next409.us.1 = add nuw nsw i64 %polly.indvar408.us.1, 1
  %exitcond1000.1.not = icmp eq i64 %polly.indvar_next409.us.1, 10
  br i1 %exitcond1000.1.not, label %polly.loop_header434.preheader.1, label %polly.loop_header405.us.1

polly.loop_header434.preheader.1:                 ; preds = %pred.store.continue1501, %polly.merge424.us.1
  %271 = mul nuw nsw i64 %244, 480
  %272 = mul nuw nsw i64 %244, 640
  br i1 %polly.loop_guard415.11116, label %polly.loop_header434.us.1, label %polly.loop_exit436.1

polly.loop_header434.us.1:                        ; preds = %polly.loop_header434.preheader.1, %polly.loop_exit443.loopexit.us.1
  %polly.indvar437.us.1 = phi i64 [ %polly.indvar_next438.us.1, %polly.loop_exit443.loopexit.us.1 ], [ 0, %polly.loop_header434.preheader.1 ]
  %polly.access.mul.Packed_MemRef_call1282448.us.1 = mul nuw nsw i64 %polly.indvar437.us.1, 80
  %273 = shl i64 %polly.indvar437.us.1, 3
  %274 = add i64 %273, 400
  %275 = add i64 %274, %271
  %scevgep452.us.1 = getelementptr i8, i8* %call2, i64 %275
  %scevgep452453.us.1 = bitcast i8* %scevgep452.us.1 to double*
  %_p_scalar_454.us.1 = load double, double* %scevgep452453.us.1, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1282459.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1282448.us.1, %243
  %polly.access.Packed_MemRef_call1282460.us.1 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282459.us.1
  %_p_scalar_461.us.1 = load double, double* %polly.access.Packed_MemRef_call1282460.us.1, align 8
  br label %polly.loop_header441.us.1

polly.loop_header441.us.1:                        ; preds = %polly.loop_header441.us.1, %polly.loop_header434.us.1
  %polly.indvar445.us.1 = phi i64 [ %polly.indvar_next446.us.1, %polly.loop_header441.us.1 ], [ 0, %polly.loop_header434.us.1 ]
  %276 = add nuw nsw i64 %polly.indvar445.us.1, %240
  %polly.access.add.Packed_MemRef_call1282449.us.1 = add nuw nsw i64 %polly.indvar445.us.1, %polly.access.mul.Packed_MemRef_call1282448.us.1
  %polly.access.Packed_MemRef_call1282450.us.1 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282449.us.1
  %_p_scalar_451.us.1 = load double, double* %polly.access.Packed_MemRef_call1282450.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_454.us.1, %_p_scalar_451.us.1
  %277 = mul nuw nsw i64 %276, 480
  %278 = add nuw nsw i64 %277, %274
  %scevgep455.us.1 = getelementptr i8, i8* %call2, i64 %278
  %scevgep455456.us.1 = bitcast i8* %scevgep455.us.1 to double*
  %_p_scalar_457.us.1 = load double, double* %scevgep455456.us.1, align 8, !alias.scope !77, !noalias !82
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_461.us.1, %_p_scalar_457.us.1
  %279 = shl i64 %276, 3
  %280 = add nuw nsw i64 %279, %272
  %scevgep462.us.1 = getelementptr i8, i8* %call, i64 %280
  %scevgep462463.us.1 = bitcast i8* %scevgep462.us.1 to double*
  %_p_scalar_464.us.1 = load double, double* %scevgep462463.us.1, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_464.us.1
  store double %p_add42.i79.us.1, double* %scevgep462463.us.1, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next446.us.1 = add nuw nsw i64 %polly.indvar445.us.1, 1
  %exitcond1002.1.not = icmp eq i64 %polly.indvar445.us.1, %smin1001.1
  br i1 %exitcond1002.1.not, label %polly.loop_exit443.loopexit.us.1, label %polly.loop_header441.us.1

polly.loop_exit443.loopexit.us.1:                 ; preds = %polly.loop_header441.us.1
  %polly.indvar_next438.us.1 = add nuw nsw i64 %polly.indvar437.us.1, 1
  %exitcond1003.1.not = icmp eq i64 %polly.indvar_next438.us.1, 10
  br i1 %exitcond1003.1.not, label %polly.loop_exit436.1, label %polly.loop_header434.us.1

polly.loop_exit436.1:                             ; preds = %polly.loop_exit443.loopexit.us.1, %polly.loop_header399.split.1, %polly.loop_header434.preheader.1
  %polly.indvar_next403.1 = add nuw nsw i64 %polly.indvar402.1, 1
  %indvars.iv.next997.1 = add nsw i64 %indvars.iv996.1, 1
  %exitcond1004.1.not = icmp eq i64 %polly.indvar_next403.1, 8
  br i1 %exitcond1004.1.not, label %polly.loop_exit401.1, label %polly.loop_header399.1

polly.loop_exit401.1:                             ; preds = %polly.loop_exit436.1
  %polly.indvar_next397.1 = add nuw nsw i64 %polly.indvar396.1, 1
  %indvars.iv.next995.1 = add nsw i64 %indvars.iv994.1, -8
  %exitcond1007.1.not = icmp eq i64 %polly.indvar_next397.1, %indvars.iv1005
  br i1 %exitcond1007.1.not, label %polly.loop_exit395.1, label %polly.loop_header393.1

polly.loop_exit395.1:                             ; preds = %polly.loop_exit401.1
  %polly.indvar_next385 = add nuw nsw i64 %polly.indvar384, 1
  %indvars.iv.next993 = add nuw nsw i64 %indvars.iv992, 8
  %indvars.iv.next1006 = add nuw nsw i64 %indvars.iv1005, 1
  %exitcond1008.not = icmp eq i64 %polly.indvar_next385, 10
  br i1 %exitcond1008.not, label %polly.exiting280, label %polly.loop_header381

polly.loop_header581.1:                           ; preds = %polly.loop_exit589, %polly.loop_exit589.1
  %indvars.iv1014.1 = phi i64 [ %indvars.iv.next1015.1, %polly.loop_exit589.1 ], [ %indvars.iv1012, %polly.loop_exit589 ]
  %polly.indvar584.1 = phi i64 [ %polly.indvar_next585.1, %polly.loop_exit589.1 ], [ 0, %polly.loop_exit589 ]
  %281 = shl nsw i64 %polly.indvar584.1, 3
  %282 = sub nsw i64 %147, %281
  %283 = add nuw nsw i64 %281, 8
  br label %polly.loop_header587.1

polly.loop_header587.1:                           ; preds = %polly.loop_exit624.1, %polly.loop_header581.1
  %indvars.iv1016.1 = phi i64 [ %indvars.iv.next1017.1, %polly.loop_exit624.1 ], [ %indvars.iv1014.1, %polly.loop_header581.1 ]
  %polly.indvar590.1 = phi i64 [ %polly.indvar_next591.1, %polly.loop_exit624.1 ], [ 0, %polly.loop_header581.1 ]
  %smin1021.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1016.1, i64 7)
  %284 = add nsw i64 %polly.indvar590.1, %282
  %polly.loop_guard603.11118 = icmp sgt i64 %284, -1
  %285 = add nuw nsw i64 %polly.indvar590.1, %147
  %.not860.1 = icmp ult i64 %285, %283
  %polly.access.mul.call1616.1 = mul nuw nsw i64 %285, 60
  %286 = add nuw i64 %polly.access.mul.call1616.1, 50
  br i1 %polly.loop_guard603.11118, label %polly.loop_header593.us.1, label %polly.loop_header587.split.1

polly.loop_header587.split.1:                     ; preds = %polly.loop_header587.1
  br i1 %.not860.1, label %polly.loop_exit624.1, label %vector.ph1442

vector.ph1442:                                    ; preds = %polly.loop_header587.split.1
  %broadcast.splatinsert1448 = insertelement <4 x i64> poison, i64 %284, i32 0
  %broadcast.splat1449 = shufflevector <4 x i64> %broadcast.splatinsert1448, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1441

vector.body1441:                                  ; preds = %pred.store.continue1455, %vector.ph1442
  %index1443 = phi i64 [ 0, %vector.ph1442 ], [ %index.next1444, %pred.store.continue1455 ]
  %vec.ind1446 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1442 ], [ %vec.ind.next1447, %pred.store.continue1455 ]
  %287 = icmp ult <4 x i64> %vec.ind1446, <i64 10, i64 10, i64 10, i64 10>
  %288 = add nuw nsw i64 %286, %index1443
  %289 = getelementptr double, double* %polly.access.cast.call1657, i64 %288
  %290 = bitcast double* %289 to <4 x double>*
  %wide.masked.load = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %290, i32 8, <4 x i1> %287, <4 x double> poison), !alias.scope !86, !noalias !91
  %291 = mul nuw nsw <4 x i64> %vec.ind1446, <i64 80, i64 80, i64 80, i64 80>
  %292 = add nsw <4 x i64> %291, %broadcast.splat1449
  %293 = extractelement <4 x i1> %287, i32 0
  br i1 %293, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body1441
  %294 = extractelement <4 x i64> %292, i32 0
  %295 = getelementptr double, double* %Packed_MemRef_call1470, i64 %294
  %296 = extractelement <4 x double> %wide.masked.load, i32 0
  store double %296, double* %295, align 8
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body1441
  %297 = extractelement <4 x i1> %287, i32 1
  br i1 %297, label %pred.store.if1450, label %pred.store.continue1451

pred.store.if1450:                                ; preds = %pred.store.continue
  %298 = extractelement <4 x i64> %292, i32 1
  %299 = getelementptr double, double* %Packed_MemRef_call1470, i64 %298
  %300 = extractelement <4 x double> %wide.masked.load, i32 1
  store double %300, double* %299, align 8
  br label %pred.store.continue1451

pred.store.continue1451:                          ; preds = %pred.store.if1450, %pred.store.continue
  %301 = extractelement <4 x i1> %287, i32 2
  br i1 %301, label %pred.store.if1452, label %pred.store.continue1453

pred.store.if1452:                                ; preds = %pred.store.continue1451
  %302 = extractelement <4 x i64> %292, i32 2
  %303 = getelementptr double, double* %Packed_MemRef_call1470, i64 %302
  %304 = extractelement <4 x double> %wide.masked.load, i32 2
  store double %304, double* %303, align 8
  br label %pred.store.continue1453

pred.store.continue1453:                          ; preds = %pred.store.if1452, %pred.store.continue1451
  %305 = extractelement <4 x i1> %287, i32 3
  br i1 %305, label %pred.store.if1454, label %pred.store.continue1455

pred.store.if1454:                                ; preds = %pred.store.continue1453
  %306 = extractelement <4 x i64> %292, i32 3
  %307 = getelementptr double, double* %Packed_MemRef_call1470, i64 %306
  %308 = extractelement <4 x double> %wide.masked.load, i32 3
  store double %308, double* %307, align 8
  br label %pred.store.continue1455

pred.store.continue1455:                          ; preds = %pred.store.if1454, %pred.store.continue1453
  %index.next1444 = add i64 %index1443, 4
  %vec.ind.next1447 = add <4 x i64> %vec.ind1446, <i64 4, i64 4, i64 4, i64 4>
  %309 = icmp eq i64 %index.next1444, 12
  br i1 %309, label %polly.loop_header622.preheader.1, label %vector.body1441, !llvm.loop !105

polly.loop_header593.us.1:                        ; preds = %polly.loop_header587.1, %polly.merge612.us.1
  %polly.indvar596.us.1 = phi i64 [ %polly.indvar_next597.us.1, %polly.merge612.us.1 ], [ 0, %polly.loop_header587.1 ]
  %310 = add nuw nsw i64 %polly.indvar596.us.1, 50
  %polly.access.mul.Packed_MemRef_call1470.us.1 = mul nuw nsw i64 %polly.indvar596.us.1, 80
  br label %polly.loop_header600.us.1

polly.loop_header600.us.1:                        ; preds = %polly.loop_header600.us.1, %polly.loop_header593.us.1
  %polly.indvar604.us.1 = phi i64 [ %polly.indvar_next605.us.1, %polly.loop_header600.us.1 ], [ 0, %polly.loop_header593.us.1 ]
  %311 = add nuw nsw i64 %polly.indvar604.us.1, %281
  %polly.access.mul.call1608.us.1 = mul nuw nsw i64 %311, 60
  %polly.access.add.call1609.us.1 = add nuw nsw i64 %310, %polly.access.mul.call1608.us.1
  %polly.access.call1610.us.1 = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1609.us.1
  %polly.access.call1610.load.us.1 = load double, double* %polly.access.call1610.us.1, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1470.us.1 = add nuw nsw i64 %polly.indvar604.us.1, %polly.access.mul.Packed_MemRef_call1470.us.1
  %polly.access.Packed_MemRef_call1470.us.1 = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470.us.1
  store double %polly.access.call1610.load.us.1, double* %polly.access.Packed_MemRef_call1470.us.1, align 8
  %polly.indvar_next605.us.1 = add nuw nsw i64 %polly.indvar604.us.1, 1
  %exitcond1019.1.not = icmp eq i64 %polly.indvar604.us.1, %smin1021.1
  br i1 %exitcond1019.1.not, label %polly.cond611.loopexit.us.1, label %polly.loop_header600.us.1

polly.cond611.loopexit.us.1:                      ; preds = %polly.loop_header600.us.1
  br i1 %.not860.1, label %polly.merge612.us.1, label %polly.then613.us.1

polly.then613.us.1:                               ; preds = %polly.cond611.loopexit.us.1
  %polly.access.add.call1617.us.1 = add nuw nsw i64 %286, %polly.indvar596.us.1
  %polly.access.call1618.us.1 = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1617.us.1
  %polly.access.call1618.load.us.1 = load double, double* %polly.access.call1618.us.1, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1470620.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1470.us.1, %284
  %polly.access.Packed_MemRef_call1470621.us.1 = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470620.us.1
  store double %polly.access.call1618.load.us.1, double* %polly.access.Packed_MemRef_call1470621.us.1, align 8
  br label %polly.merge612.us.1

polly.merge612.us.1:                              ; preds = %polly.then613.us.1, %polly.cond611.loopexit.us.1
  %polly.indvar_next597.us.1 = add nuw nsw i64 %polly.indvar596.us.1, 1
  %exitcond1020.1.not = icmp eq i64 %polly.indvar_next597.us.1, 10
  br i1 %exitcond1020.1.not, label %polly.loop_header622.preheader.1, label %polly.loop_header593.us.1

polly.loop_header622.preheader.1:                 ; preds = %pred.store.continue1455, %polly.merge612.us.1
  %312 = mul nuw nsw i64 %285, 480
  %313 = mul nuw nsw i64 %285, 640
  br i1 %polly.loop_guard603.11118, label %polly.loop_header622.us.1, label %polly.loop_exit624.1

polly.loop_header622.us.1:                        ; preds = %polly.loop_header622.preheader.1, %polly.loop_exit631.loopexit.us.1
  %polly.indvar625.us.1 = phi i64 [ %polly.indvar_next626.us.1, %polly.loop_exit631.loopexit.us.1 ], [ 0, %polly.loop_header622.preheader.1 ]
  %polly.access.mul.Packed_MemRef_call1470636.us.1 = mul nuw nsw i64 %polly.indvar625.us.1, 80
  %314 = shl i64 %polly.indvar625.us.1, 3
  %315 = add i64 %314, 400
  %316 = add i64 %315, %312
  %scevgep640.us.1 = getelementptr i8, i8* %call2, i64 %316
  %scevgep640641.us.1 = bitcast i8* %scevgep640.us.1 to double*
  %_p_scalar_642.us.1 = load double, double* %scevgep640641.us.1, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1470647.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1470636.us.1, %284
  %polly.access.Packed_MemRef_call1470648.us.1 = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470647.us.1
  %_p_scalar_649.us.1 = load double, double* %polly.access.Packed_MemRef_call1470648.us.1, align 8
  br label %polly.loop_header629.us.1

polly.loop_header629.us.1:                        ; preds = %polly.loop_header629.us.1, %polly.loop_header622.us.1
  %polly.indvar633.us.1 = phi i64 [ %polly.indvar_next634.us.1, %polly.loop_header629.us.1 ], [ 0, %polly.loop_header622.us.1 ]
  %317 = add nuw nsw i64 %polly.indvar633.us.1, %281
  %polly.access.add.Packed_MemRef_call1470637.us.1 = add nuw nsw i64 %polly.indvar633.us.1, %polly.access.mul.Packed_MemRef_call1470636.us.1
  %polly.access.Packed_MemRef_call1470638.us.1 = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470637.us.1
  %_p_scalar_639.us.1 = load double, double* %polly.access.Packed_MemRef_call1470638.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_642.us.1, %_p_scalar_639.us.1
  %318 = mul nuw nsw i64 %317, 480
  %319 = add nuw nsw i64 %318, %315
  %scevgep643.us.1 = getelementptr i8, i8* %call2, i64 %319
  %scevgep643644.us.1 = bitcast i8* %scevgep643.us.1 to double*
  %_p_scalar_645.us.1 = load double, double* %scevgep643644.us.1, align 8, !alias.scope !87, !noalias !92
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_649.us.1, %_p_scalar_645.us.1
  %320 = shl i64 %317, 3
  %321 = add nuw nsw i64 %320, %313
  %scevgep650.us.1 = getelementptr i8, i8* %call, i64 %321
  %scevgep650651.us.1 = bitcast i8* %scevgep650.us.1 to double*
  %_p_scalar_652.us.1 = load double, double* %scevgep650651.us.1, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_652.us.1
  store double %p_add42.i.us.1, double* %scevgep650651.us.1, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next634.us.1 = add nuw nsw i64 %polly.indvar633.us.1, 1
  %exitcond1022.1.not = icmp eq i64 %polly.indvar633.us.1, %smin1021.1
  br i1 %exitcond1022.1.not, label %polly.loop_exit631.loopexit.us.1, label %polly.loop_header629.us.1

polly.loop_exit631.loopexit.us.1:                 ; preds = %polly.loop_header629.us.1
  %polly.indvar_next626.us.1 = add nuw nsw i64 %polly.indvar625.us.1, 1
  %exitcond1023.1.not = icmp eq i64 %polly.indvar_next626.us.1, 10
  br i1 %exitcond1023.1.not, label %polly.loop_exit624.1, label %polly.loop_header622.us.1

polly.loop_exit624.1:                             ; preds = %polly.loop_exit631.loopexit.us.1, %polly.loop_header587.split.1, %polly.loop_header622.preheader.1
  %polly.indvar_next591.1 = add nuw nsw i64 %polly.indvar590.1, 1
  %indvars.iv.next1017.1 = add nsw i64 %indvars.iv1016.1, 1
  %exitcond1024.1.not = icmp eq i64 %polly.indvar_next591.1, 8
  br i1 %exitcond1024.1.not, label %polly.loop_exit589.1, label %polly.loop_header587.1

polly.loop_exit589.1:                             ; preds = %polly.loop_exit624.1
  %polly.indvar_next585.1 = add nuw nsw i64 %polly.indvar584.1, 1
  %indvars.iv.next1015.1 = add nsw i64 %indvars.iv1014.1, -8
  %exitcond1027.1.not = icmp eq i64 %polly.indvar_next585.1, %indvars.iv1025
  br i1 %exitcond1027.1.not, label %polly.loop_exit583.1, label %polly.loop_header581.1

polly.loop_exit583.1:                             ; preds = %polly.loop_exit589.1
  %polly.indvar_next573 = add nuw nsw i64 %polly.indvar572, 1
  %indvars.iv.next1013 = add nuw nsw i64 %indvars.iv1012, 8
  %indvars.iv.next1026 = add nuw nsw i64 %indvars.iv1025, 1
  %exitcond1028.not = icmp eq i64 %polly.indvar_next573, 10
  br i1 %exitcond1028.not, label %polly.exiting468, label %polly.loop_header569

polly.loop_header844.1:                           ; preds = %polly.loop_exit852, %polly.loop_exit852.1
  %polly.indvar847.1 = phi i64 [ %polly.indvar_next848.1, %polly.loop_exit852.1 ], [ 0, %polly.loop_exit852 ]
  %322 = mul nuw nsw i64 %polly.indvar847.1, 480
  %323 = trunc i64 %polly.indvar847.1 to i32
  %broadcast.splatinsert1365 = insertelement <4 x i32> poison, i32 %323, i32 0
  %broadcast.splat1366 = shufflevector <4 x i32> %broadcast.splatinsert1365, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1357

vector.body1357:                                  ; preds = %vector.body1357, %polly.loop_header844.1
  %index1359 = phi i64 [ 0, %polly.loop_header844.1 ], [ %index.next1360, %vector.body1357 ]
  %vec.ind1363 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header844.1 ], [ %vec.ind.next1364, %vector.body1357 ]
  %324 = add nuw nsw <4 x i64> %vec.ind1363, <i64 32, i64 32, i64 32, i64 32>
  %325 = trunc <4 x i64> %324 to <4 x i32>
  %326 = mul <4 x i32> %broadcast.splat1366, %325
  %327 = add <4 x i32> %326, <i32 1, i32 1, i32 1, i32 1>
  %328 = urem <4 x i32> %327, <i32 80, i32 80, i32 80, i32 80>
  %329 = sitofp <4 x i32> %328 to <4 x double>
  %330 = fmul fast <4 x double> %329, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %331 = extractelement <4 x i64> %324, i32 0
  %332 = shl i64 %331, 3
  %333 = add i64 %332, %322
  %334 = getelementptr i8, i8* %call1, i64 %333
  %335 = bitcast i8* %334 to <4 x double>*
  store <4 x double> %330, <4 x double>* %335, align 8, !alias.scope !96, !noalias !101
  %index.next1360 = add i64 %index1359, 4
  %vec.ind.next1364 = add <4 x i64> %vec.ind1363, <i64 4, i64 4, i64 4, i64 4>
  %336 = icmp eq i64 %index.next1360, 28
  br i1 %336, label %polly.loop_exit852.1, label %vector.body1357, !llvm.loop !106

polly.loop_exit852.1:                             ; preds = %vector.body1357
  %polly.indvar_next848.1 = add nuw nsw i64 %polly.indvar847.1, 1
  %exitcond1035.1.not = icmp eq i64 %polly.indvar_next848.1, 32
  br i1 %exitcond1035.1.not, label %polly.loop_header844.11058, label %polly.loop_header844.1

polly.loop_header844.11058:                       ; preds = %polly.loop_exit852.1, %polly.loop_exit852.11069
  %polly.indvar847.11057 = phi i64 [ %polly.indvar_next848.11067, %polly.loop_exit852.11069 ], [ 0, %polly.loop_exit852.1 ]
  %337 = add nuw nsw i64 %polly.indvar847.11057, 32
  %338 = mul nuw nsw i64 %337, 480
  %339 = trunc i64 %337 to i32
  %broadcast.splatinsert1379 = insertelement <4 x i32> poison, i32 %339, i32 0
  %broadcast.splat1380 = shufflevector <4 x i32> %broadcast.splatinsert1379, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1369

vector.body1369:                                  ; preds = %vector.body1369, %polly.loop_header844.11058
  %index1371 = phi i64 [ 0, %polly.loop_header844.11058 ], [ %index.next1372, %vector.body1369 ]
  %vec.ind1377 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header844.11058 ], [ %vec.ind.next1378, %vector.body1369 ]
  %340 = mul <4 x i32> %vec.ind1377, %broadcast.splat1380
  %341 = add <4 x i32> %340, <i32 1, i32 1, i32 1, i32 1>
  %342 = urem <4 x i32> %341, <i32 80, i32 80, i32 80, i32 80>
  %343 = sitofp <4 x i32> %342 to <4 x double>
  %344 = fmul fast <4 x double> %343, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %345 = shl i64 %index1371, 3
  %346 = add i64 %345, %338
  %347 = getelementptr i8, i8* %call1, i64 %346
  %348 = bitcast i8* %347 to <4 x double>*
  store <4 x double> %344, <4 x double>* %348, align 8, !alias.scope !96, !noalias !101
  %index.next1372 = add i64 %index1371, 4
  %vec.ind.next1378 = add <4 x i32> %vec.ind1377, <i32 4, i32 4, i32 4, i32 4>
  %349 = icmp eq i64 %index.next1372, 32
  br i1 %349, label %polly.loop_exit852.11069, label %vector.body1369, !llvm.loop !107

polly.loop_exit852.11069:                         ; preds = %vector.body1369
  %polly.indvar_next848.11067 = add nuw nsw i64 %polly.indvar847.11057, 1
  %exitcond1035.11068.not = icmp eq i64 %polly.indvar_next848.11067, 32
  br i1 %exitcond1035.11068.not, label %polly.loop_header844.1.1, label %polly.loop_header844.11058

polly.loop_header844.1.1:                         ; preds = %polly.loop_exit852.11069, %polly.loop_exit852.1.1
  %polly.indvar847.1.1 = phi i64 [ %polly.indvar_next848.1.1, %polly.loop_exit852.1.1 ], [ 0, %polly.loop_exit852.11069 ]
  %350 = add nuw nsw i64 %polly.indvar847.1.1, 32
  %351 = mul nuw nsw i64 %350, 480
  %352 = trunc i64 %350 to i32
  %broadcast.splatinsert1391 = insertelement <4 x i32> poison, i32 %352, i32 0
  %broadcast.splat1392 = shufflevector <4 x i32> %broadcast.splatinsert1391, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1383

vector.body1383:                                  ; preds = %vector.body1383, %polly.loop_header844.1.1
  %index1385 = phi i64 [ 0, %polly.loop_header844.1.1 ], [ %index.next1386, %vector.body1383 ]
  %vec.ind1389 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header844.1.1 ], [ %vec.ind.next1390, %vector.body1383 ]
  %353 = add nuw nsw <4 x i64> %vec.ind1389, <i64 32, i64 32, i64 32, i64 32>
  %354 = trunc <4 x i64> %353 to <4 x i32>
  %355 = mul <4 x i32> %broadcast.splat1392, %354
  %356 = add <4 x i32> %355, <i32 1, i32 1, i32 1, i32 1>
  %357 = urem <4 x i32> %356, <i32 80, i32 80, i32 80, i32 80>
  %358 = sitofp <4 x i32> %357 to <4 x double>
  %359 = fmul fast <4 x double> %358, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %360 = extractelement <4 x i64> %353, i32 0
  %361 = shl i64 %360, 3
  %362 = add i64 %361, %351
  %363 = getelementptr i8, i8* %call1, i64 %362
  %364 = bitcast i8* %363 to <4 x double>*
  store <4 x double> %359, <4 x double>* %364, align 8, !alias.scope !96, !noalias !101
  %index.next1386 = add i64 %index1385, 4
  %vec.ind.next1390 = add <4 x i64> %vec.ind1389, <i64 4, i64 4, i64 4, i64 4>
  %365 = icmp eq i64 %index.next1386, 28
  br i1 %365, label %polly.loop_exit852.1.1, label %vector.body1383, !llvm.loop !108

polly.loop_exit852.1.1:                           ; preds = %vector.body1383
  %polly.indvar_next848.1.1 = add nuw nsw i64 %polly.indvar847.1.1, 1
  %exitcond1035.1.1.not = icmp eq i64 %polly.indvar_next848.1.1, 32
  br i1 %exitcond1035.1.1.not, label %polly.loop_header844.2, label %polly.loop_header844.1.1

polly.loop_header844.2:                           ; preds = %polly.loop_exit852.1.1, %polly.loop_exit852.2
  %polly.indvar847.2 = phi i64 [ %polly.indvar_next848.2, %polly.loop_exit852.2 ], [ 0, %polly.loop_exit852.1.1 ]
  %366 = add nuw nsw i64 %polly.indvar847.2, 64
  %367 = mul nuw nsw i64 %366, 480
  %368 = trunc i64 %366 to i32
  %broadcast.splatinsert1405 = insertelement <4 x i32> poison, i32 %368, i32 0
  %broadcast.splat1406 = shufflevector <4 x i32> %broadcast.splatinsert1405, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1395

vector.body1395:                                  ; preds = %vector.body1395, %polly.loop_header844.2
  %index1397 = phi i64 [ 0, %polly.loop_header844.2 ], [ %index.next1398, %vector.body1395 ]
  %vec.ind1403 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header844.2 ], [ %vec.ind.next1404, %vector.body1395 ]
  %369 = mul <4 x i32> %vec.ind1403, %broadcast.splat1406
  %370 = add <4 x i32> %369, <i32 1, i32 1, i32 1, i32 1>
  %371 = urem <4 x i32> %370, <i32 80, i32 80, i32 80, i32 80>
  %372 = sitofp <4 x i32> %371 to <4 x double>
  %373 = fmul fast <4 x double> %372, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %374 = shl i64 %index1397, 3
  %375 = add i64 %374, %367
  %376 = getelementptr i8, i8* %call1, i64 %375
  %377 = bitcast i8* %376 to <4 x double>*
  store <4 x double> %373, <4 x double>* %377, align 8, !alias.scope !96, !noalias !101
  %index.next1398 = add i64 %index1397, 4
  %vec.ind.next1404 = add <4 x i32> %vec.ind1403, <i32 4, i32 4, i32 4, i32 4>
  %378 = icmp eq i64 %index.next1398, 32
  br i1 %378, label %polly.loop_exit852.2, label %vector.body1395, !llvm.loop !109

polly.loop_exit852.2:                             ; preds = %vector.body1395
  %polly.indvar_next848.2 = add nuw nsw i64 %polly.indvar847.2, 1
  %exitcond1035.2.not = icmp eq i64 %polly.indvar_next848.2, 16
  br i1 %exitcond1035.2.not, label %polly.loop_header844.1.2, label %polly.loop_header844.2

polly.loop_header844.1.2:                         ; preds = %polly.loop_exit852.2, %polly.loop_exit852.1.2
  %polly.indvar847.1.2 = phi i64 [ %polly.indvar_next848.1.2, %polly.loop_exit852.1.2 ], [ 0, %polly.loop_exit852.2 ]
  %379 = add nuw nsw i64 %polly.indvar847.1.2, 64
  %380 = mul nuw nsw i64 %379, 480
  %381 = trunc i64 %379 to i32
  %broadcast.splatinsert1417 = insertelement <4 x i32> poison, i32 %381, i32 0
  %broadcast.splat1418 = shufflevector <4 x i32> %broadcast.splatinsert1417, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1409

vector.body1409:                                  ; preds = %vector.body1409, %polly.loop_header844.1.2
  %index1411 = phi i64 [ 0, %polly.loop_header844.1.2 ], [ %index.next1412, %vector.body1409 ]
  %vec.ind1415 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header844.1.2 ], [ %vec.ind.next1416, %vector.body1409 ]
  %382 = add nuw nsw <4 x i64> %vec.ind1415, <i64 32, i64 32, i64 32, i64 32>
  %383 = trunc <4 x i64> %382 to <4 x i32>
  %384 = mul <4 x i32> %broadcast.splat1418, %383
  %385 = add <4 x i32> %384, <i32 1, i32 1, i32 1, i32 1>
  %386 = urem <4 x i32> %385, <i32 80, i32 80, i32 80, i32 80>
  %387 = sitofp <4 x i32> %386 to <4 x double>
  %388 = fmul fast <4 x double> %387, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %389 = extractelement <4 x i64> %382, i32 0
  %390 = shl i64 %389, 3
  %391 = add i64 %390, %380
  %392 = getelementptr i8, i8* %call1, i64 %391
  %393 = bitcast i8* %392 to <4 x double>*
  store <4 x double> %388, <4 x double>* %393, align 8, !alias.scope !96, !noalias !101
  %index.next1412 = add i64 %index1411, 4
  %vec.ind.next1416 = add <4 x i64> %vec.ind1415, <i64 4, i64 4, i64 4, i64 4>
  %394 = icmp eq i64 %index.next1412, 28
  br i1 %394, label %polly.loop_exit852.1.2, label %vector.body1409, !llvm.loop !110

polly.loop_exit852.1.2:                           ; preds = %vector.body1409
  %polly.indvar_next848.1.2 = add nuw nsw i64 %polly.indvar847.1.2, 1
  %exitcond1035.1.2.not = icmp eq i64 %polly.indvar_next848.1.2, 16
  br i1 %exitcond1035.1.2.not, label %init_array.exit, label %polly.loop_header844.1.2

polly.loop_header818.1:                           ; preds = %polly.loop_exit826, %polly.loop_exit826.1
  %polly.indvar821.1 = phi i64 [ %polly.indvar_next822.1, %polly.loop_exit826.1 ], [ 0, %polly.loop_exit826 ]
  %395 = mul nuw nsw i64 %polly.indvar821.1, 480
  %396 = trunc i64 %polly.indvar821.1 to i32
  %broadcast.splatinsert1287 = insertelement <4 x i32> poison, i32 %396, i32 0
  %broadcast.splat1288 = shufflevector <4 x i32> %broadcast.splatinsert1287, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1279

vector.body1279:                                  ; preds = %vector.body1279, %polly.loop_header818.1
  %index1281 = phi i64 [ 0, %polly.loop_header818.1 ], [ %index.next1282, %vector.body1279 ]
  %vec.ind1285 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header818.1 ], [ %vec.ind.next1286, %vector.body1279 ]
  %397 = add nuw nsw <4 x i64> %vec.ind1285, <i64 32, i64 32, i64 32, i64 32>
  %398 = trunc <4 x i64> %397 to <4 x i32>
  %399 = mul <4 x i32> %broadcast.splat1288, %398
  %400 = add <4 x i32> %399, <i32 2, i32 2, i32 2, i32 2>
  %401 = urem <4 x i32> %400, <i32 60, i32 60, i32 60, i32 60>
  %402 = sitofp <4 x i32> %401 to <4 x double>
  %403 = fmul fast <4 x double> %402, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %404 = extractelement <4 x i64> %397, i32 0
  %405 = shl i64 %404, 3
  %406 = add i64 %405, %395
  %407 = getelementptr i8, i8* %call2, i64 %406
  %408 = bitcast i8* %407 to <4 x double>*
  store <4 x double> %403, <4 x double>* %408, align 8, !alias.scope !97, !noalias !99
  %index.next1282 = add i64 %index1281, 4
  %vec.ind.next1286 = add <4 x i64> %vec.ind1285, <i64 4, i64 4, i64 4, i64 4>
  %409 = icmp eq i64 %index.next1282, 28
  br i1 %409, label %polly.loop_exit826.1, label %vector.body1279, !llvm.loop !111

polly.loop_exit826.1:                             ; preds = %vector.body1279
  %polly.indvar_next822.1 = add nuw nsw i64 %polly.indvar821.1, 1
  %exitcond1041.1.not = icmp eq i64 %polly.indvar_next822.1, 32
  br i1 %exitcond1041.1.not, label %polly.loop_header818.11072, label %polly.loop_header818.1

polly.loop_header818.11072:                       ; preds = %polly.loop_exit826.1, %polly.loop_exit826.11083
  %polly.indvar821.11071 = phi i64 [ %polly.indvar_next822.11081, %polly.loop_exit826.11083 ], [ 0, %polly.loop_exit826.1 ]
  %410 = add nuw nsw i64 %polly.indvar821.11071, 32
  %411 = mul nuw nsw i64 %410, 480
  %412 = trunc i64 %410 to i32
  %broadcast.splatinsert1301 = insertelement <4 x i32> poison, i32 %412, i32 0
  %broadcast.splat1302 = shufflevector <4 x i32> %broadcast.splatinsert1301, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1291

vector.body1291:                                  ; preds = %vector.body1291, %polly.loop_header818.11072
  %index1293 = phi i64 [ 0, %polly.loop_header818.11072 ], [ %index.next1294, %vector.body1291 ]
  %vec.ind1299 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header818.11072 ], [ %vec.ind.next1300, %vector.body1291 ]
  %413 = mul <4 x i32> %vec.ind1299, %broadcast.splat1302
  %414 = add <4 x i32> %413, <i32 2, i32 2, i32 2, i32 2>
  %415 = urem <4 x i32> %414, <i32 60, i32 60, i32 60, i32 60>
  %416 = sitofp <4 x i32> %415 to <4 x double>
  %417 = fmul fast <4 x double> %416, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %418 = shl i64 %index1293, 3
  %419 = add i64 %418, %411
  %420 = getelementptr i8, i8* %call2, i64 %419
  %421 = bitcast i8* %420 to <4 x double>*
  store <4 x double> %417, <4 x double>* %421, align 8, !alias.scope !97, !noalias !99
  %index.next1294 = add i64 %index1293, 4
  %vec.ind.next1300 = add <4 x i32> %vec.ind1299, <i32 4, i32 4, i32 4, i32 4>
  %422 = icmp eq i64 %index.next1294, 32
  br i1 %422, label %polly.loop_exit826.11083, label %vector.body1291, !llvm.loop !112

polly.loop_exit826.11083:                         ; preds = %vector.body1291
  %polly.indvar_next822.11081 = add nuw nsw i64 %polly.indvar821.11071, 1
  %exitcond1041.11082.not = icmp eq i64 %polly.indvar_next822.11081, 32
  br i1 %exitcond1041.11082.not, label %polly.loop_header818.1.1, label %polly.loop_header818.11072

polly.loop_header818.1.1:                         ; preds = %polly.loop_exit826.11083, %polly.loop_exit826.1.1
  %polly.indvar821.1.1 = phi i64 [ %polly.indvar_next822.1.1, %polly.loop_exit826.1.1 ], [ 0, %polly.loop_exit826.11083 ]
  %423 = add nuw nsw i64 %polly.indvar821.1.1, 32
  %424 = mul nuw nsw i64 %423, 480
  %425 = trunc i64 %423 to i32
  %broadcast.splatinsert1313 = insertelement <4 x i32> poison, i32 %425, i32 0
  %broadcast.splat1314 = shufflevector <4 x i32> %broadcast.splatinsert1313, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1305

vector.body1305:                                  ; preds = %vector.body1305, %polly.loop_header818.1.1
  %index1307 = phi i64 [ 0, %polly.loop_header818.1.1 ], [ %index.next1308, %vector.body1305 ]
  %vec.ind1311 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header818.1.1 ], [ %vec.ind.next1312, %vector.body1305 ]
  %426 = add nuw nsw <4 x i64> %vec.ind1311, <i64 32, i64 32, i64 32, i64 32>
  %427 = trunc <4 x i64> %426 to <4 x i32>
  %428 = mul <4 x i32> %broadcast.splat1314, %427
  %429 = add <4 x i32> %428, <i32 2, i32 2, i32 2, i32 2>
  %430 = urem <4 x i32> %429, <i32 60, i32 60, i32 60, i32 60>
  %431 = sitofp <4 x i32> %430 to <4 x double>
  %432 = fmul fast <4 x double> %431, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %433 = extractelement <4 x i64> %426, i32 0
  %434 = shl i64 %433, 3
  %435 = add i64 %434, %424
  %436 = getelementptr i8, i8* %call2, i64 %435
  %437 = bitcast i8* %436 to <4 x double>*
  store <4 x double> %432, <4 x double>* %437, align 8, !alias.scope !97, !noalias !99
  %index.next1308 = add i64 %index1307, 4
  %vec.ind.next1312 = add <4 x i64> %vec.ind1311, <i64 4, i64 4, i64 4, i64 4>
  %438 = icmp eq i64 %index.next1308, 28
  br i1 %438, label %polly.loop_exit826.1.1, label %vector.body1305, !llvm.loop !113

polly.loop_exit826.1.1:                           ; preds = %vector.body1305
  %polly.indvar_next822.1.1 = add nuw nsw i64 %polly.indvar821.1.1, 1
  %exitcond1041.1.1.not = icmp eq i64 %polly.indvar_next822.1.1, 32
  br i1 %exitcond1041.1.1.not, label %polly.loop_header818.2, label %polly.loop_header818.1.1

polly.loop_header818.2:                           ; preds = %polly.loop_exit826.1.1, %polly.loop_exit826.2
  %polly.indvar821.2 = phi i64 [ %polly.indvar_next822.2, %polly.loop_exit826.2 ], [ 0, %polly.loop_exit826.1.1 ]
  %439 = add nuw nsw i64 %polly.indvar821.2, 64
  %440 = mul nuw nsw i64 %439, 480
  %441 = trunc i64 %439 to i32
  %broadcast.splatinsert1327 = insertelement <4 x i32> poison, i32 %441, i32 0
  %broadcast.splat1328 = shufflevector <4 x i32> %broadcast.splatinsert1327, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1317

vector.body1317:                                  ; preds = %vector.body1317, %polly.loop_header818.2
  %index1319 = phi i64 [ 0, %polly.loop_header818.2 ], [ %index.next1320, %vector.body1317 ]
  %vec.ind1325 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header818.2 ], [ %vec.ind.next1326, %vector.body1317 ]
  %442 = mul <4 x i32> %vec.ind1325, %broadcast.splat1328
  %443 = add <4 x i32> %442, <i32 2, i32 2, i32 2, i32 2>
  %444 = urem <4 x i32> %443, <i32 60, i32 60, i32 60, i32 60>
  %445 = sitofp <4 x i32> %444 to <4 x double>
  %446 = fmul fast <4 x double> %445, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %447 = shl i64 %index1319, 3
  %448 = add i64 %447, %440
  %449 = getelementptr i8, i8* %call2, i64 %448
  %450 = bitcast i8* %449 to <4 x double>*
  store <4 x double> %446, <4 x double>* %450, align 8, !alias.scope !97, !noalias !99
  %index.next1320 = add i64 %index1319, 4
  %vec.ind.next1326 = add <4 x i32> %vec.ind1325, <i32 4, i32 4, i32 4, i32 4>
  %451 = icmp eq i64 %index.next1320, 32
  br i1 %451, label %polly.loop_exit826.2, label %vector.body1317, !llvm.loop !114

polly.loop_exit826.2:                             ; preds = %vector.body1317
  %polly.indvar_next822.2 = add nuw nsw i64 %polly.indvar821.2, 1
  %exitcond1041.2.not = icmp eq i64 %polly.indvar_next822.2, 16
  br i1 %exitcond1041.2.not, label %polly.loop_header818.1.2, label %polly.loop_header818.2

polly.loop_header818.1.2:                         ; preds = %polly.loop_exit826.2, %polly.loop_exit826.1.2
  %polly.indvar821.1.2 = phi i64 [ %polly.indvar_next822.1.2, %polly.loop_exit826.1.2 ], [ 0, %polly.loop_exit826.2 ]
  %452 = add nuw nsw i64 %polly.indvar821.1.2, 64
  %453 = mul nuw nsw i64 %452, 480
  %454 = trunc i64 %452 to i32
  %broadcast.splatinsert1339 = insertelement <4 x i32> poison, i32 %454, i32 0
  %broadcast.splat1340 = shufflevector <4 x i32> %broadcast.splatinsert1339, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1331

vector.body1331:                                  ; preds = %vector.body1331, %polly.loop_header818.1.2
  %index1333 = phi i64 [ 0, %polly.loop_header818.1.2 ], [ %index.next1334, %vector.body1331 ]
  %vec.ind1337 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header818.1.2 ], [ %vec.ind.next1338, %vector.body1331 ]
  %455 = add nuw nsw <4 x i64> %vec.ind1337, <i64 32, i64 32, i64 32, i64 32>
  %456 = trunc <4 x i64> %455 to <4 x i32>
  %457 = mul <4 x i32> %broadcast.splat1340, %456
  %458 = add <4 x i32> %457, <i32 2, i32 2, i32 2, i32 2>
  %459 = urem <4 x i32> %458, <i32 60, i32 60, i32 60, i32 60>
  %460 = sitofp <4 x i32> %459 to <4 x double>
  %461 = fmul fast <4 x double> %460, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %462 = extractelement <4 x i64> %455, i32 0
  %463 = shl i64 %462, 3
  %464 = add i64 %463, %453
  %465 = getelementptr i8, i8* %call2, i64 %464
  %466 = bitcast i8* %465 to <4 x double>*
  store <4 x double> %461, <4 x double>* %466, align 8, !alias.scope !97, !noalias !99
  %index.next1334 = add i64 %index1333, 4
  %vec.ind.next1338 = add <4 x i64> %vec.ind1337, <i64 4, i64 4, i64 4, i64 4>
  %467 = icmp eq i64 %index.next1334, 28
  br i1 %467, label %polly.loop_exit826.1.2, label %vector.body1331, !llvm.loop !115

polly.loop_exit826.1.2:                           ; preds = %vector.body1331
  %polly.indvar_next822.1.2 = add nuw nsw i64 %polly.indvar821.1.2, 1
  %exitcond1041.1.2.not = icmp eq i64 %polly.indvar_next822.1.2, 16
  br i1 %exitcond1041.1.2.not, label %polly.loop_header844, label %polly.loop_header818.1.2

polly.loop_header791.1:                           ; preds = %polly.loop_exit799, %polly.loop_exit799.1
  %polly.indvar794.1 = phi i64 [ %polly.indvar_next795.1, %polly.loop_exit799.1 ], [ 0, %polly.loop_exit799 ]
  %468 = mul nuw nsw i64 %polly.indvar794.1, 640
  %469 = trunc i64 %polly.indvar794.1 to i32
  %broadcast.splatinsert1173 = insertelement <4 x i32> poison, i32 %469, i32 0
  %broadcast.splat1174 = shufflevector <4 x i32> %broadcast.splatinsert1173, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1165

vector.body1165:                                  ; preds = %vector.body1165, %polly.loop_header791.1
  %index1167 = phi i64 [ 0, %polly.loop_header791.1 ], [ %index.next1168, %vector.body1165 ]
  %vec.ind1171 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header791.1 ], [ %vec.ind.next1172, %vector.body1165 ]
  %470 = add nuw nsw <4 x i64> %vec.ind1171, <i64 32, i64 32, i64 32, i64 32>
  %471 = trunc <4 x i64> %470 to <4 x i32>
  %472 = mul <4 x i32> %broadcast.splat1174, %471
  %473 = add <4 x i32> %472, <i32 3, i32 3, i32 3, i32 3>
  %474 = urem <4 x i32> %473, <i32 80, i32 80, i32 80, i32 80>
  %475 = sitofp <4 x i32> %474 to <4 x double>
  %476 = fmul fast <4 x double> %475, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %477 = extractelement <4 x i64> %470, i32 0
  %478 = shl i64 %477, 3
  %479 = add nuw nsw i64 %478, %468
  %480 = getelementptr i8, i8* %call, i64 %479
  %481 = bitcast i8* %480 to <4 x double>*
  store <4 x double> %476, <4 x double>* %481, align 8, !alias.scope !93, !noalias !95
  %index.next1168 = add i64 %index1167, 4
  %vec.ind.next1172 = add <4 x i64> %vec.ind1171, <i64 4, i64 4, i64 4, i64 4>
  %482 = icmp eq i64 %index.next1168, 32
  br i1 %482, label %polly.loop_exit799.1, label %vector.body1165, !llvm.loop !116

polly.loop_exit799.1:                             ; preds = %vector.body1165
  %polly.indvar_next795.1 = add nuw nsw i64 %polly.indvar794.1, 1
  %exitcond1050.1.not = icmp eq i64 %polly.indvar_next795.1, 32
  br i1 %exitcond1050.1.not, label %polly.loop_header791.2, label %polly.loop_header791.1

polly.loop_header791.2:                           ; preds = %polly.loop_exit799.1, %polly.loop_exit799.2
  %polly.indvar794.2 = phi i64 [ %polly.indvar_next795.2, %polly.loop_exit799.2 ], [ 0, %polly.loop_exit799.1 ]
  %483 = mul nuw nsw i64 %polly.indvar794.2, 640
  %484 = trunc i64 %polly.indvar794.2 to i32
  %broadcast.splatinsert1185 = insertelement <4 x i32> poison, i32 %484, i32 0
  %broadcast.splat1186 = shufflevector <4 x i32> %broadcast.splatinsert1185, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1177

vector.body1177:                                  ; preds = %vector.body1177, %polly.loop_header791.2
  %index1179 = phi i64 [ 0, %polly.loop_header791.2 ], [ %index.next1180, %vector.body1177 ]
  %vec.ind1183 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header791.2 ], [ %vec.ind.next1184, %vector.body1177 ]
  %485 = add nuw nsw <4 x i64> %vec.ind1183, <i64 64, i64 64, i64 64, i64 64>
  %486 = trunc <4 x i64> %485 to <4 x i32>
  %487 = mul <4 x i32> %broadcast.splat1186, %486
  %488 = add <4 x i32> %487, <i32 3, i32 3, i32 3, i32 3>
  %489 = urem <4 x i32> %488, <i32 80, i32 80, i32 80, i32 80>
  %490 = sitofp <4 x i32> %489 to <4 x double>
  %491 = fmul fast <4 x double> %490, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %492 = extractelement <4 x i64> %485, i32 0
  %493 = shl i64 %492, 3
  %494 = add nuw nsw i64 %493, %483
  %495 = getelementptr i8, i8* %call, i64 %494
  %496 = bitcast i8* %495 to <4 x double>*
  store <4 x double> %491, <4 x double>* %496, align 8, !alias.scope !93, !noalias !95
  %index.next1180 = add i64 %index1179, 4
  %vec.ind.next1184 = add <4 x i64> %vec.ind1183, <i64 4, i64 4, i64 4, i64 4>
  %497 = icmp eq i64 %index.next1180, 16
  br i1 %497, label %polly.loop_exit799.2, label %vector.body1177, !llvm.loop !117

polly.loop_exit799.2:                             ; preds = %vector.body1177
  %polly.indvar_next795.2 = add nuw nsw i64 %polly.indvar794.2, 1
  %exitcond1050.2.not = icmp eq i64 %polly.indvar_next795.2, 32
  br i1 %exitcond1050.2.not, label %polly.loop_header791.11086, label %polly.loop_header791.2

polly.loop_header791.11086:                       ; preds = %polly.loop_exit799.2, %polly.loop_exit799.11097
  %polly.indvar794.11085 = phi i64 [ %polly.indvar_next795.11095, %polly.loop_exit799.11097 ], [ 0, %polly.loop_exit799.2 ]
  %498 = add nuw nsw i64 %polly.indvar794.11085, 32
  %499 = mul nuw nsw i64 %498, 640
  %500 = trunc i64 %498 to i32
  %broadcast.splatinsert1199 = insertelement <4 x i32> poison, i32 %500, i32 0
  %broadcast.splat1200 = shufflevector <4 x i32> %broadcast.splatinsert1199, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1189

vector.body1189:                                  ; preds = %vector.body1189, %polly.loop_header791.11086
  %index1191 = phi i64 [ 0, %polly.loop_header791.11086 ], [ %index.next1192, %vector.body1189 ]
  %vec.ind1197 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header791.11086 ], [ %vec.ind.next1198, %vector.body1189 ]
  %501 = mul <4 x i32> %vec.ind1197, %broadcast.splat1200
  %502 = add <4 x i32> %501, <i32 3, i32 3, i32 3, i32 3>
  %503 = urem <4 x i32> %502, <i32 80, i32 80, i32 80, i32 80>
  %504 = sitofp <4 x i32> %503 to <4 x double>
  %505 = fmul fast <4 x double> %504, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %506 = shl i64 %index1191, 3
  %507 = add nuw nsw i64 %506, %499
  %508 = getelementptr i8, i8* %call, i64 %507
  %509 = bitcast i8* %508 to <4 x double>*
  store <4 x double> %505, <4 x double>* %509, align 8, !alias.scope !93, !noalias !95
  %index.next1192 = add i64 %index1191, 4
  %vec.ind.next1198 = add <4 x i32> %vec.ind1197, <i32 4, i32 4, i32 4, i32 4>
  %510 = icmp eq i64 %index.next1192, 32
  br i1 %510, label %polly.loop_exit799.11097, label %vector.body1189, !llvm.loop !118

polly.loop_exit799.11097:                         ; preds = %vector.body1189
  %polly.indvar_next795.11095 = add nuw nsw i64 %polly.indvar794.11085, 1
  %exitcond1050.11096.not = icmp eq i64 %polly.indvar_next795.11095, 32
  br i1 %exitcond1050.11096.not, label %polly.loop_header791.1.1, label %polly.loop_header791.11086

polly.loop_header791.1.1:                         ; preds = %polly.loop_exit799.11097, %polly.loop_exit799.1.1
  %polly.indvar794.1.1 = phi i64 [ %polly.indvar_next795.1.1, %polly.loop_exit799.1.1 ], [ 0, %polly.loop_exit799.11097 ]
  %511 = add nuw nsw i64 %polly.indvar794.1.1, 32
  %512 = mul nuw nsw i64 %511, 640
  %513 = trunc i64 %511 to i32
  %broadcast.splatinsert1211 = insertelement <4 x i32> poison, i32 %513, i32 0
  %broadcast.splat1212 = shufflevector <4 x i32> %broadcast.splatinsert1211, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1203

vector.body1203:                                  ; preds = %vector.body1203, %polly.loop_header791.1.1
  %index1205 = phi i64 [ 0, %polly.loop_header791.1.1 ], [ %index.next1206, %vector.body1203 ]
  %vec.ind1209 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header791.1.1 ], [ %vec.ind.next1210, %vector.body1203 ]
  %514 = add nuw nsw <4 x i64> %vec.ind1209, <i64 32, i64 32, i64 32, i64 32>
  %515 = trunc <4 x i64> %514 to <4 x i32>
  %516 = mul <4 x i32> %broadcast.splat1212, %515
  %517 = add <4 x i32> %516, <i32 3, i32 3, i32 3, i32 3>
  %518 = urem <4 x i32> %517, <i32 80, i32 80, i32 80, i32 80>
  %519 = sitofp <4 x i32> %518 to <4 x double>
  %520 = fmul fast <4 x double> %519, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %521 = extractelement <4 x i64> %514, i32 0
  %522 = shl i64 %521, 3
  %523 = add nuw nsw i64 %522, %512
  %524 = getelementptr i8, i8* %call, i64 %523
  %525 = bitcast i8* %524 to <4 x double>*
  store <4 x double> %520, <4 x double>* %525, align 8, !alias.scope !93, !noalias !95
  %index.next1206 = add i64 %index1205, 4
  %vec.ind.next1210 = add <4 x i64> %vec.ind1209, <i64 4, i64 4, i64 4, i64 4>
  %526 = icmp eq i64 %index.next1206, 32
  br i1 %526, label %polly.loop_exit799.1.1, label %vector.body1203, !llvm.loop !119

polly.loop_exit799.1.1:                           ; preds = %vector.body1203
  %polly.indvar_next795.1.1 = add nuw nsw i64 %polly.indvar794.1.1, 1
  %exitcond1050.1.1.not = icmp eq i64 %polly.indvar_next795.1.1, 32
  br i1 %exitcond1050.1.1.not, label %polly.loop_header791.2.1, label %polly.loop_header791.1.1

polly.loop_header791.2.1:                         ; preds = %polly.loop_exit799.1.1, %polly.loop_exit799.2.1
  %polly.indvar794.2.1 = phi i64 [ %polly.indvar_next795.2.1, %polly.loop_exit799.2.1 ], [ 0, %polly.loop_exit799.1.1 ]
  %527 = add nuw nsw i64 %polly.indvar794.2.1, 32
  %528 = mul nuw nsw i64 %527, 640
  %529 = trunc i64 %527 to i32
  %broadcast.splatinsert1223 = insertelement <4 x i32> poison, i32 %529, i32 0
  %broadcast.splat1224 = shufflevector <4 x i32> %broadcast.splatinsert1223, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1215

vector.body1215:                                  ; preds = %vector.body1215, %polly.loop_header791.2.1
  %index1217 = phi i64 [ 0, %polly.loop_header791.2.1 ], [ %index.next1218, %vector.body1215 ]
  %vec.ind1221 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header791.2.1 ], [ %vec.ind.next1222, %vector.body1215 ]
  %530 = add nuw nsw <4 x i64> %vec.ind1221, <i64 64, i64 64, i64 64, i64 64>
  %531 = trunc <4 x i64> %530 to <4 x i32>
  %532 = mul <4 x i32> %broadcast.splat1224, %531
  %533 = add <4 x i32> %532, <i32 3, i32 3, i32 3, i32 3>
  %534 = urem <4 x i32> %533, <i32 80, i32 80, i32 80, i32 80>
  %535 = sitofp <4 x i32> %534 to <4 x double>
  %536 = fmul fast <4 x double> %535, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %537 = extractelement <4 x i64> %530, i32 0
  %538 = shl i64 %537, 3
  %539 = add nuw nsw i64 %538, %528
  %540 = getelementptr i8, i8* %call, i64 %539
  %541 = bitcast i8* %540 to <4 x double>*
  store <4 x double> %536, <4 x double>* %541, align 8, !alias.scope !93, !noalias !95
  %index.next1218 = add i64 %index1217, 4
  %vec.ind.next1222 = add <4 x i64> %vec.ind1221, <i64 4, i64 4, i64 4, i64 4>
  %542 = icmp eq i64 %index.next1218, 16
  br i1 %542, label %polly.loop_exit799.2.1, label %vector.body1215, !llvm.loop !120

polly.loop_exit799.2.1:                           ; preds = %vector.body1215
  %polly.indvar_next795.2.1 = add nuw nsw i64 %polly.indvar794.2.1, 1
  %exitcond1050.2.1.not = icmp eq i64 %polly.indvar_next795.2.1, 32
  br i1 %exitcond1050.2.1.not, label %polly.loop_header791.21100, label %polly.loop_header791.2.1

polly.loop_header791.21100:                       ; preds = %polly.loop_exit799.2.1, %polly.loop_exit799.21111
  %polly.indvar794.21099 = phi i64 [ %polly.indvar_next795.21109, %polly.loop_exit799.21111 ], [ 0, %polly.loop_exit799.2.1 ]
  %543 = add nuw nsw i64 %polly.indvar794.21099, 64
  %544 = mul nuw nsw i64 %543, 640
  %545 = trunc i64 %543 to i32
  %broadcast.splatinsert1237 = insertelement <4 x i32> poison, i32 %545, i32 0
  %broadcast.splat1238 = shufflevector <4 x i32> %broadcast.splatinsert1237, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1227

vector.body1227:                                  ; preds = %vector.body1227, %polly.loop_header791.21100
  %index1229 = phi i64 [ 0, %polly.loop_header791.21100 ], [ %index.next1230, %vector.body1227 ]
  %vec.ind1235 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header791.21100 ], [ %vec.ind.next1236, %vector.body1227 ]
  %546 = mul <4 x i32> %vec.ind1235, %broadcast.splat1238
  %547 = add <4 x i32> %546, <i32 3, i32 3, i32 3, i32 3>
  %548 = urem <4 x i32> %547, <i32 80, i32 80, i32 80, i32 80>
  %549 = sitofp <4 x i32> %548 to <4 x double>
  %550 = fmul fast <4 x double> %549, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %551 = shl i64 %index1229, 3
  %552 = add nuw nsw i64 %551, %544
  %553 = getelementptr i8, i8* %call, i64 %552
  %554 = bitcast i8* %553 to <4 x double>*
  store <4 x double> %550, <4 x double>* %554, align 8, !alias.scope !93, !noalias !95
  %index.next1230 = add i64 %index1229, 4
  %vec.ind.next1236 = add <4 x i32> %vec.ind1235, <i32 4, i32 4, i32 4, i32 4>
  %555 = icmp eq i64 %index.next1230, 32
  br i1 %555, label %polly.loop_exit799.21111, label %vector.body1227, !llvm.loop !121

polly.loop_exit799.21111:                         ; preds = %vector.body1227
  %polly.indvar_next795.21109 = add nuw nsw i64 %polly.indvar794.21099, 1
  %exitcond1050.21110.not = icmp eq i64 %polly.indvar_next795.21109, 16
  br i1 %exitcond1050.21110.not, label %polly.loop_header791.1.2, label %polly.loop_header791.21100

polly.loop_header791.1.2:                         ; preds = %polly.loop_exit799.21111, %polly.loop_exit799.1.2
  %polly.indvar794.1.2 = phi i64 [ %polly.indvar_next795.1.2, %polly.loop_exit799.1.2 ], [ 0, %polly.loop_exit799.21111 ]
  %556 = add nuw nsw i64 %polly.indvar794.1.2, 64
  %557 = mul nuw nsw i64 %556, 640
  %558 = trunc i64 %556 to i32
  %broadcast.splatinsert1249 = insertelement <4 x i32> poison, i32 %558, i32 0
  %broadcast.splat1250 = shufflevector <4 x i32> %broadcast.splatinsert1249, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1241

vector.body1241:                                  ; preds = %vector.body1241, %polly.loop_header791.1.2
  %index1243 = phi i64 [ 0, %polly.loop_header791.1.2 ], [ %index.next1244, %vector.body1241 ]
  %vec.ind1247 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header791.1.2 ], [ %vec.ind.next1248, %vector.body1241 ]
  %559 = add nuw nsw <4 x i64> %vec.ind1247, <i64 32, i64 32, i64 32, i64 32>
  %560 = trunc <4 x i64> %559 to <4 x i32>
  %561 = mul <4 x i32> %broadcast.splat1250, %560
  %562 = add <4 x i32> %561, <i32 3, i32 3, i32 3, i32 3>
  %563 = urem <4 x i32> %562, <i32 80, i32 80, i32 80, i32 80>
  %564 = sitofp <4 x i32> %563 to <4 x double>
  %565 = fmul fast <4 x double> %564, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %566 = extractelement <4 x i64> %559, i32 0
  %567 = shl i64 %566, 3
  %568 = add nuw nsw i64 %567, %557
  %569 = getelementptr i8, i8* %call, i64 %568
  %570 = bitcast i8* %569 to <4 x double>*
  store <4 x double> %565, <4 x double>* %570, align 8, !alias.scope !93, !noalias !95
  %index.next1244 = add i64 %index1243, 4
  %vec.ind.next1248 = add <4 x i64> %vec.ind1247, <i64 4, i64 4, i64 4, i64 4>
  %571 = icmp eq i64 %index.next1244, 32
  br i1 %571, label %polly.loop_exit799.1.2, label %vector.body1241, !llvm.loop !122

polly.loop_exit799.1.2:                           ; preds = %vector.body1241
  %polly.indvar_next795.1.2 = add nuw nsw i64 %polly.indvar794.1.2, 1
  %exitcond1050.1.2.not = icmp eq i64 %polly.indvar_next795.1.2, 16
  br i1 %exitcond1050.1.2.not, label %polly.loop_header791.2.2, label %polly.loop_header791.1.2

polly.loop_header791.2.2:                         ; preds = %polly.loop_exit799.1.2, %polly.loop_exit799.2.2
  %polly.indvar794.2.2 = phi i64 [ %polly.indvar_next795.2.2, %polly.loop_exit799.2.2 ], [ 0, %polly.loop_exit799.1.2 ]
  %572 = add nuw nsw i64 %polly.indvar794.2.2, 64
  %573 = mul nuw nsw i64 %572, 640
  %574 = trunc i64 %572 to i32
  %broadcast.splatinsert1261 = insertelement <4 x i32> poison, i32 %574, i32 0
  %broadcast.splat1262 = shufflevector <4 x i32> %broadcast.splatinsert1261, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1253

vector.body1253:                                  ; preds = %vector.body1253, %polly.loop_header791.2.2
  %index1255 = phi i64 [ 0, %polly.loop_header791.2.2 ], [ %index.next1256, %vector.body1253 ]
  %vec.ind1259 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header791.2.2 ], [ %vec.ind.next1260, %vector.body1253 ]
  %575 = add nuw nsw <4 x i64> %vec.ind1259, <i64 64, i64 64, i64 64, i64 64>
  %576 = trunc <4 x i64> %575 to <4 x i32>
  %577 = mul <4 x i32> %broadcast.splat1262, %576
  %578 = add <4 x i32> %577, <i32 3, i32 3, i32 3, i32 3>
  %579 = urem <4 x i32> %578, <i32 80, i32 80, i32 80, i32 80>
  %580 = sitofp <4 x i32> %579 to <4 x double>
  %581 = fmul fast <4 x double> %580, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %582 = extractelement <4 x i64> %575, i32 0
  %583 = shl i64 %582, 3
  %584 = add nuw nsw i64 %583, %573
  %585 = getelementptr i8, i8* %call, i64 %584
  %586 = bitcast i8* %585 to <4 x double>*
  store <4 x double> %581, <4 x double>* %586, align 8, !alias.scope !93, !noalias !95
  %index.next1256 = add i64 %index1255, 4
  %vec.ind.next1260 = add <4 x i64> %vec.ind1259, <i64 4, i64 4, i64 4, i64 4>
  %587 = icmp eq i64 %index.next1256, 16
  br i1 %587, label %polly.loop_exit799.2.2, label %vector.body1253, !llvm.loop !123

polly.loop_exit799.2.2:                           ; preds = %vector.body1253
  %polly.indvar_next795.2.2 = add nuw nsw i64 %polly.indvar794.2.2, 1
  %exitcond1050.2.2.not = icmp eq i64 %polly.indvar_next795.2.2, 16
  br i1 %exitcond1050.2.2.not, label %polly.loop_header818, label %polly.loop_header791.2.2
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

; Function Attrs: argmemonly nofree nosync nounwind readonly willreturn
declare <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>*, i32 immarg, <4 x i1>, <4 x double>) #6

attributes #0 = { nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #1 = { "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #3 = { nofree nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #4 = { nofree nounwind }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nosync nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!25 = !{!"llvm.loop.tile.size", i32 8}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 50}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40, !41, !42, !43}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.data.pack.enable", i1 true}
!42 = !{!"llvm.data.pack.array", !21}
!43 = !{!"llvm.data.pack.allocate", !"malloc"}
!44 = distinct !{!44, !12, !23, !45, !46, !47, !25, !48, !51}
!45 = !{!"llvm.loop.id", !"i"}
!46 = !{!"llvm.loop.tile.enable", i1 true}
!47 = !{!"llvm.loop.tile.depth", i32 3}
!48 = !{!"llvm.loop.tile.followup_floor", !49}
!49 = distinct !{!49, !12, !50}
!50 = !{!"llvm.loop.id", !"i1"}
!51 = !{!"llvm.loop.tile.followup_tile", !52}
!52 = distinct !{!52, !12, !53}
!53 = !{!"llvm.loop.id", !"i2"}
!54 = distinct !{!54, !12, !13}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !4, i64 0}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !63, !"polly.alias.scope.MemRef_call"}
!63 = distinct !{!63, !"polly.alias.scope.domain"}
!64 = !{!65, !66, !67}
!65 = distinct !{!65, !63, !"polly.alias.scope.MemRef_call1"}
!66 = distinct !{!66, !63, !"polly.alias.scope.MemRef_call2"}
!67 = distinct !{!67, !63, !"polly.alias.scope.Packed_MemRef_call1"}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !70, !13}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!62, !66, !67}
!72 = !{!62, !65, !67}
!73 = distinct !{!73, !74, !"polly.alias.scope.MemRef_call"}
!74 = distinct !{!74, !"polly.alias.scope.domain"}
!75 = !{!76, !77, !78}
!76 = distinct !{!76, !74, !"polly.alias.scope.MemRef_call1"}
!77 = distinct !{!77, !74, !"polly.alias.scope.MemRef_call2"}
!78 = distinct !{!78, !74, !"polly.alias.scope.Packed_MemRef_call1"}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !70, !13}
!81 = !{!73, !77, !78}
!82 = !{!73, !76, !78}
!83 = distinct !{!83, !84, !"polly.alias.scope.MemRef_call"}
!84 = distinct !{!84, !"polly.alias.scope.domain"}
!85 = !{!86, !87, !88}
!86 = distinct !{!86, !84, !"polly.alias.scope.MemRef_call1"}
!87 = distinct !{!87, !84, !"polly.alias.scope.MemRef_call2"}
!88 = distinct !{!88, !84, !"polly.alias.scope.Packed_MemRef_call1"}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !70, !13}
!91 = !{!83, !87, !88}
!92 = !{!83, !86, !88}
!93 = distinct !{!93, !94, !"polly.alias.scope.MemRef_call"}
!94 = distinct !{!94, !"polly.alias.scope.domain"}
!95 = !{!96, !97}
!96 = distinct !{!96, !94, !"polly.alias.scope.MemRef_call1"}
!97 = distinct !{!97, !94, !"polly.alias.scope.MemRef_call2"}
!98 = distinct !{!98, !13}
!99 = !{!96, !93}
!100 = distinct !{!100, !13}
!101 = !{!97, !93}
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
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
