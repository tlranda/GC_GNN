; ModuleID = 'syr2k_recreations//mmp_syr2k_S_139.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_139.c"
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
  %call817 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1669 = bitcast i8* %call1 to double*
  %polly.access.call1678 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1678, %call2
  %polly.access.call2698 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2698, %call1
  %2 = or i1 %0, %1
  %polly.access.call718 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call718, %call2
  %4 = icmp ule i8* %polly.access.call2698, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call718, %call1
  %8 = icmp ule i8* %polly.access.call1678, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header803, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1149 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1148 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1147 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1146 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1146, %scevgep1149
  %bound1 = icmp ult i8* %scevgep1148, %scevgep1147
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
  br i1 %exitcond18.not.i, label %vector.ph1153, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1153:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1160 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1161 = shufflevector <4 x i64> %broadcast.splatinsert1160, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1152

vector.body1152:                                  ; preds = %vector.body1152, %vector.ph1153
  %index1154 = phi i64 [ 0, %vector.ph1153 ], [ %index.next1155, %vector.body1152 ]
  %vec.ind1158 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1153 ], [ %vec.ind.next1159, %vector.body1152 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1158, %broadcast.splat1161
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call817, i64 %indvars.iv7.i, i64 %index1154
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1155 = add i64 %index1154, 4
  %vec.ind.next1159 = add <4 x i64> %vec.ind1158, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1155, 80
  br i1 %40, label %for.inc41.i, label %vector.body1152, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1152
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1153, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit864.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start475, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1509, label %vector.ph1435

vector.ph1435:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1434

vector.body1434:                                  ; preds = %vector.body1434, %vector.ph1435
  %index1436 = phi i64 [ 0, %vector.ph1435 ], [ %index.next1437, %vector.body1434 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call817, i64 %indvars.iv21.i, i64 %index1436
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1437 = add i64 %index1436, 4
  %46 = icmp eq i64 %index.next1437, %n.vec
  br i1 %46, label %middle.block1432, label %vector.body1434, !llvm.loop !18

middle.block1432:                                 ; preds = %vector.body1434
  %cmp.n1439 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1439, label %for.inc6.i, label %for.body3.i46.preheader1509

for.body3.i46.preheader1509:                      ; preds = %for.body3.i46.preheader, %middle.block1432
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1432 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1509, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1509 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call817, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1432, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call817, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit585.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start283, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1455 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1455, label %for.body3.i60.preheader1507, label %vector.ph1456

vector.ph1456:                                    ; preds = %for.body3.i60.preheader
  %n.vec1458 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1454

vector.body1454:                                  ; preds = %vector.body1454, %vector.ph1456
  %index1459 = phi i64 [ 0, %vector.ph1456 ], [ %index.next1460, %vector.body1454 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call817, i64 %indvars.iv21.i52, i64 %index1459
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1463 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1463, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1460 = add i64 %index1459, 4
  %57 = icmp eq i64 %index.next1460, %n.vec1458
  br i1 %57, label %middle.block1452, label %vector.body1454, !llvm.loop !60

middle.block1452:                                 ; preds = %vector.body1454
  %cmp.n1462 = icmp eq i64 %indvars.iv21.i52, %n.vec1458
  br i1 %cmp.n1462, label %for.inc6.i63, label %for.body3.i60.preheader1507

for.body3.i60.preheader1507:                      ; preds = %for.body3.i60.preheader, %middle.block1452
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1458, %middle.block1452 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1507, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1507 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call817, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1452, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call817, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit393.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1481 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1481, label %for.body3.i99.preheader1505, label %vector.ph1482

vector.ph1482:                                    ; preds = %for.body3.i99.preheader
  %n.vec1484 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1480

vector.body1480:                                  ; preds = %vector.body1480, %vector.ph1482
  %index1485 = phi i64 [ 0, %vector.ph1482 ], [ %index.next1486, %vector.body1480 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call817, i64 %indvars.iv21.i91, i64 %index1485
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1489 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1489, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1486 = add i64 %index1485, 4
  %68 = icmp eq i64 %index.next1486, %n.vec1484
  br i1 %68, label %middle.block1478, label %vector.body1480, !llvm.loop !62

middle.block1478:                                 ; preds = %vector.body1480
  %cmp.n1488 = icmp eq i64 %indvars.iv21.i91, %n.vec1484
  br i1 %cmp.n1488, label %for.inc6.i102, label %for.body3.i99.preheader1505

for.body3.i99.preheader1505:                      ; preds = %for.body3.i99.preheader, %middle.block1478
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1484, %middle.block1478 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1505, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1505 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call817, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1478, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call817, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call817, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1493 = phi i64 [ %indvar.next1494, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1493, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1495 = icmp ult i64 %88, 4
  br i1 %min.iters.check1495, label %polly.loop_header191.preheader, label %vector.ph1496

vector.ph1496:                                    ; preds = %polly.loop_header
  %n.vec1498 = and i64 %88, -4
  br label %vector.body1492

vector.body1492:                                  ; preds = %vector.body1492, %vector.ph1496
  %index1499 = phi i64 [ 0, %vector.ph1496 ], [ %index.next1500, %vector.body1492 ]
  %90 = shl nuw nsw i64 %index1499, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1503 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1503, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1500 = add i64 %index1499, 4
  %95 = icmp eq i64 %index.next1500, %n.vec1498
  br i1 %95, label %middle.block1490, label %vector.body1492, !llvm.loop !74

middle.block1490:                                 ; preds = %vector.body1492
  %cmp.n1502 = icmp eq i64 %88, %n.vec1498
  br i1 %cmp.n1502, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1490
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1498, %middle.block1490 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1490
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1007.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1494 = add i64 %indvar1493, 1
  br i1 %exitcond1007.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header205

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond1006.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1006.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header205:                             ; preds = %polly.loop_exit244, %polly.loop_header199.preheader
  %indvars.iv1000 = phi i64 [ %indvars.iv.next1001, %polly.loop_exit244 ], [ 0, %polly.loop_header199.preheader ]
  %indvars.iv995 = phi i64 [ %indvars.iv.next996, %polly.loop_exit244 ], [ 0, %polly.loop_header199.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit244 ], [ 0, %polly.loop_header199.preheader ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit244 ], [ 0, %polly.loop_header199.preheader ]
  %smin1002 = call i64 @llvm.smin.i64(i64 %indvars.iv1000, i64 -48)
  %97 = add nsw i64 %smin1002, 79
  %smax = call i64 @llvm.smax.i64(i64 %97, i64 0)
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  %98 = shl nsw i64 %polly.indvar208, 5
  %polly.loop_guard.not = icmp eq i64 %polly.indvar208, 0
  %99 = or i64 %98, 31
  %100 = icmp ult i64 %99, 79
  %101 = select i1 %100, i64 %99, i64 79
  %polly.loop_guard231.not = icmp ugt i64 %98, %101
  br i1 %polly.loop_guard.not, label %polly.loop_header205.split, label %polly.loop_header211.us

polly.loop_header211.us:                          ; preds = %polly.loop_header205, %polly.loop_exit230.us
  %polly.indvar214.us = phi i64 [ %polly.indvar_next215.us, %polly.loop_exit230.us ], [ 0, %polly.loop_header205 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar214.us, 80
  br label %polly.loop_header217.us

polly.loop_header217.us:                          ; preds = %polly.loop_header211.us, %polly.loop_header217.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_header217.us ], [ 0, %polly.loop_header211.us ]
  %polly.access.mul.call1224.us = mul nuw nsw i64 %polly.indvar220.us, 60
  %polly.access.add.call1225.us = add nuw nsw i64 %polly.access.mul.call1224.us, %polly.indvar214.us
  %polly.access.call1226.us = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1225.us
  %polly.access.call1226.load.us = load double, double* %polly.access.call1226.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar220.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1226.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond993.not = icmp eq i64 %polly.indvar_next221.us, %umax
  br i1 %exitcond993.not, label %polly.merge.loopexit.us, label %polly.loop_header217.us

polly.loop_header228.us:                          ; preds = %polly.merge.loopexit.us, %polly.loop_header228.us
  %polly.indvar232.us = phi i64 [ %polly.indvar_next233.us, %polly.loop_header228.us ], [ %98, %polly.merge.loopexit.us ]
  %polly.access.mul.call1236.us = mul nuw nsw i64 %polly.indvar232.us, 60
  %polly.access.add.call1237.us = add nuw nsw i64 %polly.access.mul.call1236.us, %polly.indvar214.us
  %polly.access.call1238.us = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1237.us
  %polly.access.call1238.load.us = load double, double* %polly.access.call1238.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1240.us = add nuw nsw i64 %polly.indvar232.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1241.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.us
  store double %polly.access.call1238.load.us, double* %polly.access.Packed_MemRef_call1241.us, align 8
  %polly.indvar_next233.us = add nuw nsw i64 %polly.indvar232.us, 1
  %polly.loop_cond234.not.not.us = icmp ult i64 %polly.indvar232.us, %101
  br i1 %polly.loop_cond234.not.not.us, label %polly.loop_header228.us, label %polly.loop_exit230.us

polly.loop_exit230.us:                            ; preds = %polly.loop_header228.us, %polly.merge.loopexit.us
  %polly.indvar_next215.us = add nuw nsw i64 %polly.indvar214.us, 1
  %exitcond994.not = icmp eq i64 %polly.indvar_next215.us, 60
  br i1 %exitcond994.not, label %polly.loop_header242.preheader, label %polly.loop_header211.us

polly.merge.loopexit.us:                          ; preds = %polly.loop_header217.us
  br i1 %polly.loop_guard231.not, label %polly.loop_exit230.us, label %polly.loop_header228.us

polly.loop_header205.split:                       ; preds = %polly.loop_header205
  br i1 %polly.loop_guard231.not, label %polly.loop_header242.us.preheader, label %polly.loop_header211

polly.loop_exit244:                               ; preds = %polly.loop_exit251.loopexit.us, %polly.loop_header242.preheader
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %indvars.iv.next996 = add nuw nsw i64 %indvars.iv995, 32
  %indvars.iv.next1001 = add nsw i64 %indvars.iv1000, -32
  %exitcond1005.not = icmp eq i64 %polly.indvar_next209, 3
  br i1 %exitcond1005.not, label %polly.loop_header211.1, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header205.split, %polly.loop_exit230
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit230 ], [ 0, %polly.loop_header205.split ]
  %polly.access.mul.Packed_MemRef_call1239 = mul nuw nsw i64 %polly.indvar214, 80
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_header228
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next215, 60
  br i1 %exitcond.not, label %polly.loop_header242.preheader, label %polly.loop_header211

polly.loop_header242.preheader:                   ; preds = %polly.loop_exit230.us, %polly.loop_exit230
  %102 = mul nsw i64 %polly.indvar208, -32
  %polly.loop_guard2521132 = icmp sgt i64 %102, -80
  br i1 %polly.loop_guard2521132, label %polly.loop_header242.us.preheader, label %polly.loop_exit244

polly.loop_header242.us.preheader:                ; preds = %polly.loop_header205.split, %polly.loop_header242.preheader
  br label %polly.loop_header242.us

polly.loop_header242.us:                          ; preds = %polly.loop_header242.us.preheader, %polly.loop_exit251.loopexit.us
  %polly.indvar245.us = phi i64 [ %polly.indvar_next246.us, %polly.loop_exit251.loopexit.us ], [ 0, %polly.loop_header242.us.preheader ]
  %103 = shl nuw nsw i64 %polly.indvar245.us, 3
  %scevgep266.us = getelementptr i8, i8* %call2, i64 %103
  %polly.access.mul.Packed_MemRef_call1262.us = mul nuw nsw i64 %polly.indvar245.us, 80
  br label %polly.loop_header249.us

polly.loop_header249.us:                          ; preds = %polly.loop_exit258.us, %polly.loop_header242.us
  %indvars.iv997 = phi i64 [ %indvars.iv.next998, %polly.loop_exit258.us ], [ %indvars.iv995, %polly.loop_header242.us ]
  %polly.indvar253.us = phi i64 [ %polly.indvar_next254.us, %polly.loop_exit258.us ], [ 0, %polly.loop_header242.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv997, i64 63)
  %104 = add nuw nsw i64 %polly.indvar253.us, %98
  %105 = mul nuw nsw i64 %104, 480
  %scevgep267.us = getelementptr i8, i8* %scevgep266.us, i64 %105
  %scevgep267268.us = bitcast i8* %scevgep267.us to double*
  %_p_scalar_269.us = load double, double* %scevgep267268.us, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1275.us = add nuw nsw i64 %104, %polly.access.mul.Packed_MemRef_call1262.us
  %polly.access.Packed_MemRef_call1276.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.us
  %_p_scalar_277.us = load double, double* %polly.access.Packed_MemRef_call1276.us, align 8
  %106 = mul nuw nsw i64 %104, 640
  br label %polly.loop_header256.us

polly.loop_header256.us:                          ; preds = %polly.loop_header256.us, %polly.loop_header249.us
  %polly.indvar259.us = phi i64 [ 0, %polly.loop_header249.us ], [ %polly.indvar_next260.us, %polly.loop_header256.us ]
  %polly.access.add.Packed_MemRef_call1263.us = add nuw nsw i64 %polly.indvar259.us, %polly.access.mul.Packed_MemRef_call1262.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  %_p_scalar_265.us = load double, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_269.us, %_p_scalar_265.us
  %107 = mul nuw nsw i64 %polly.indvar259.us, 480
  %scevgep271.us = getelementptr i8, i8* %scevgep266.us, i64 %107
  %scevgep271272.us = bitcast i8* %scevgep271.us to double*
  %_p_scalar_273.us = load double, double* %scevgep271272.us, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114.us = fmul fast double %_p_scalar_277.us, %_p_scalar_273.us
  %108 = shl i64 %polly.indvar259.us, 3
  %109 = add nuw nsw i64 %108, %106
  %scevgep278.us = getelementptr i8, i8* %call, i64 %109
  %scevgep278279.us = bitcast i8* %scevgep278.us to double*
  %_p_scalar_280.us = load double, double* %scevgep278279.us, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_280.us
  store double %p_add42.i118.us, double* %scevgep278279.us, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next260.us = add nuw nsw i64 %polly.indvar259.us, 1
  %exitcond999.not = icmp eq i64 %polly.indvar259.us, %smin
  br i1 %exitcond999.not, label %polly.loop_exit258.us, label %polly.loop_header256.us

polly.loop_exit258.us:                            ; preds = %polly.loop_header256.us
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %indvars.iv.next998 = add nuw nsw i64 %indvars.iv997, 1
  %exitcond1003.not = icmp eq i64 %polly.indvar253.us, %smax
  br i1 %exitcond1003.not, label %polly.loop_exit251.loopexit.us, label %polly.loop_header249.us

polly.loop_exit251.loopexit.us:                   ; preds = %polly.loop_exit258.us
  %polly.indvar_next246.us = add nuw nsw i64 %polly.indvar245.us, 1
  %exitcond1004.not = icmp eq i64 %polly.indvar_next246.us, 60
  br i1 %exitcond1004.not, label %polly.loop_exit244, label %polly.loop_header242.us

polly.loop_header228:                             ; preds = %polly.loop_header211, %polly.loop_header228
  %polly.indvar232 = phi i64 [ %polly.indvar_next233, %polly.loop_header228 ], [ %98, %polly.loop_header211 ]
  %polly.access.mul.call1236 = mul nuw nsw i64 %polly.indvar232, 60
  %polly.access.add.call1237 = add nuw nsw i64 %polly.access.mul.call1236, %polly.indvar214
  %polly.access.call1238 = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1237
  %polly.access.call1238.load = load double, double* %polly.access.call1238, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1240 = add nuw nsw i64 %polly.indvar232, %polly.access.mul.Packed_MemRef_call1239
  %polly.access.Packed_MemRef_call1241 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240
  store double %polly.access.call1238.load, double* %polly.access.Packed_MemRef_call1241, align 8
  %polly.indvar_next233 = add nuw nsw i64 %polly.indvar232, 1
  %polly.loop_cond234.not.not = icmp ult i64 %polly.indvar232, %101
  br i1 %polly.loop_cond234.not.not, label %polly.loop_header228, label %polly.loop_exit230

polly.start283:                                   ; preds = %kernel_syr2k.exit
  %malloccall285 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header369

polly.loop_header369:                             ; preds = %polly.loop_exit377, %polly.start283
  %indvar1467 = phi i64 [ %indvar.next1468, %polly.loop_exit377 ], [ 0, %polly.start283 ]
  %polly.indvar372 = phi i64 [ %polly.indvar_next373, %polly.loop_exit377 ], [ 1, %polly.start283 ]
  %110 = add i64 %indvar1467, 1
  %111 = mul nuw nsw i64 %polly.indvar372, 640
  %scevgep381 = getelementptr i8, i8* %call, i64 %111
  %min.iters.check1469 = icmp ult i64 %110, 4
  br i1 %min.iters.check1469, label %polly.loop_header375.preheader, label %vector.ph1470

vector.ph1470:                                    ; preds = %polly.loop_header369
  %n.vec1472 = and i64 %110, -4
  br label %vector.body1466

vector.body1466:                                  ; preds = %vector.body1466, %vector.ph1470
  %index1473 = phi i64 [ 0, %vector.ph1470 ], [ %index.next1474, %vector.body1466 ]
  %112 = shl nuw nsw i64 %index1473, 3
  %113 = getelementptr i8, i8* %scevgep381, i64 %112
  %114 = bitcast i8* %113 to <4 x double>*
  %wide.load1477 = load <4 x double>, <4 x double>* %114, align 8, !alias.scope !79, !noalias !81
  %115 = fmul fast <4 x double> %wide.load1477, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %116 = bitcast i8* %113 to <4 x double>*
  store <4 x double> %115, <4 x double>* %116, align 8, !alias.scope !79, !noalias !81
  %index.next1474 = add i64 %index1473, 4
  %117 = icmp eq i64 %index.next1474, %n.vec1472
  br i1 %117, label %middle.block1464, label %vector.body1466, !llvm.loop !85

middle.block1464:                                 ; preds = %vector.body1466
  %cmp.n1476 = icmp eq i64 %110, %n.vec1472
  br i1 %cmp.n1476, label %polly.loop_exit377, label %polly.loop_header375.preheader

polly.loop_header375.preheader:                   ; preds = %polly.loop_header369, %middle.block1464
  %polly.indvar378.ph = phi i64 [ 0, %polly.loop_header369 ], [ %n.vec1472, %middle.block1464 ]
  br label %polly.loop_header375

polly.loop_exit377:                               ; preds = %polly.loop_header375, %middle.block1464
  %polly.indvar_next373 = add nuw nsw i64 %polly.indvar372, 1
  %exitcond1028.not = icmp eq i64 %polly.indvar_next373, 80
  %indvar.next1468 = add i64 %indvar1467, 1
  br i1 %exitcond1028.not, label %polly.loop_header385.preheader, label %polly.loop_header369

polly.loop_header385.preheader:                   ; preds = %polly.loop_exit377
  %Packed_MemRef_call1286 = bitcast i8* %malloccall285 to double*
  br label %polly.loop_header391

polly.loop_header375:                             ; preds = %polly.loop_header375.preheader, %polly.loop_header375
  %polly.indvar378 = phi i64 [ %polly.indvar_next379, %polly.loop_header375 ], [ %polly.indvar378.ph, %polly.loop_header375.preheader ]
  %118 = shl nuw nsw i64 %polly.indvar378, 3
  %scevgep382 = getelementptr i8, i8* %scevgep381, i64 %118
  %scevgep382383 = bitcast i8* %scevgep382 to double*
  %_p_scalar_384 = load double, double* %scevgep382383, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_384, 1.200000e+00
  store double %p_mul.i57, double* %scevgep382383, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next379 = add nuw nsw i64 %polly.indvar378, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar_next379, %polly.indvar372
  br i1 %exitcond1027.not, label %polly.loop_exit377, label %polly.loop_header375, !llvm.loop !86

polly.loop_header391:                             ; preds = %polly.loop_exit436, %polly.loop_header385.preheader
  %indvars.iv1020 = phi i64 [ %indvars.iv.next1021, %polly.loop_exit436 ], [ 0, %polly.loop_header385.preheader ]
  %indvars.iv1014 = phi i64 [ %indvars.iv.next1015, %polly.loop_exit436 ], [ 0, %polly.loop_header385.preheader ]
  %indvars.iv1009 = phi i64 [ %indvars.iv.next1010, %polly.loop_exit436 ], [ 0, %polly.loop_header385.preheader ]
  %polly.indvar394 = phi i64 [ %polly.indvar_next395, %polly.loop_exit436 ], [ 0, %polly.loop_header385.preheader ]
  %smin1022 = call i64 @llvm.smin.i64(i64 %indvars.iv1020, i64 -48)
  %119 = add nsw i64 %smin1022, 79
  %smax1023 = call i64 @llvm.smax.i64(i64 %119, i64 0)
  %umax1011 = call i64 @llvm.umax.i64(i64 %indvars.iv1009, i64 1)
  %120 = shl nsw i64 %polly.indvar394, 5
  %polly.loop_guard411.not = icmp eq i64 %polly.indvar394, 0
  %121 = or i64 %120, 31
  %122 = icmp ult i64 %121, 79
  %123 = select i1 %122, i64 %121, i64 79
  %polly.loop_guard423.not = icmp ugt i64 %120, %123
  br i1 %polly.loop_guard411.not, label %polly.loop_header391.split, label %polly.loop_header397.us

polly.loop_header397.us:                          ; preds = %polly.loop_header391, %polly.loop_exit422.us
  %polly.indvar400.us = phi i64 [ %polly.indvar_next401.us, %polly.loop_exit422.us ], [ 0, %polly.loop_header391 ]
  %polly.access.mul.Packed_MemRef_call1286.us = mul nuw nsw i64 %polly.indvar400.us, 80
  br label %polly.loop_header408.us

polly.loop_header408.us:                          ; preds = %polly.loop_header397.us, %polly.loop_header408.us
  %polly.indvar412.us = phi i64 [ %polly.indvar_next413.us, %polly.loop_header408.us ], [ 0, %polly.loop_header397.us ]
  %polly.access.mul.call1416.us = mul nuw nsw i64 %polly.indvar412.us, 60
  %polly.access.add.call1417.us = add nuw nsw i64 %polly.access.mul.call1416.us, %polly.indvar400.us
  %polly.access.call1418.us = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1417.us
  %polly.access.call1418.load.us = load double, double* %polly.access.call1418.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286.us = add nuw nsw i64 %polly.indvar412.us, %polly.access.mul.Packed_MemRef_call1286.us
  %polly.access.Packed_MemRef_call1286.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us
  store double %polly.access.call1418.load.us, double* %polly.access.Packed_MemRef_call1286.us, align 8
  %polly.indvar_next413.us = add nuw nsw i64 %polly.indvar412.us, 1
  %exitcond1012.not = icmp eq i64 %polly.indvar_next413.us, %umax1011
  br i1 %exitcond1012.not, label %polly.merge404.loopexit.us, label %polly.loop_header408.us

polly.loop_header420.us:                          ; preds = %polly.merge404.loopexit.us, %polly.loop_header420.us
  %polly.indvar424.us = phi i64 [ %polly.indvar_next425.us, %polly.loop_header420.us ], [ %120, %polly.merge404.loopexit.us ]
  %polly.access.mul.call1428.us = mul nuw nsw i64 %polly.indvar424.us, 60
  %polly.access.add.call1429.us = add nuw nsw i64 %polly.access.mul.call1428.us, %polly.indvar400.us
  %polly.access.call1430.us = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1429.us
  %polly.access.call1430.load.us = load double, double* %polly.access.call1430.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286432.us = add nuw nsw i64 %polly.indvar424.us, %polly.access.mul.Packed_MemRef_call1286.us
  %polly.access.Packed_MemRef_call1286433.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286432.us
  store double %polly.access.call1430.load.us, double* %polly.access.Packed_MemRef_call1286433.us, align 8
  %polly.indvar_next425.us = add nuw nsw i64 %polly.indvar424.us, 1
  %polly.loop_cond426.not.not.us = icmp ult i64 %polly.indvar424.us, %123
  br i1 %polly.loop_cond426.not.not.us, label %polly.loop_header420.us, label %polly.loop_exit422.us

polly.loop_exit422.us:                            ; preds = %polly.loop_header420.us, %polly.merge404.loopexit.us
  %polly.indvar_next401.us = add nuw nsw i64 %polly.indvar400.us, 1
  %exitcond1013.not = icmp eq i64 %polly.indvar_next401.us, 60
  br i1 %exitcond1013.not, label %polly.loop_header434.preheader, label %polly.loop_header397.us

polly.merge404.loopexit.us:                       ; preds = %polly.loop_header408.us
  br i1 %polly.loop_guard423.not, label %polly.loop_exit422.us, label %polly.loop_header420.us

polly.loop_header391.split:                       ; preds = %polly.loop_header391
  br i1 %polly.loop_guard423.not, label %polly.loop_header434.us.preheader, label %polly.loop_header397

polly.loop_exit436:                               ; preds = %polly.loop_exit443.loopexit.us, %polly.loop_header434.preheader
  %polly.indvar_next395 = add nuw nsw i64 %polly.indvar394, 1
  %indvars.iv.next1010 = add nuw nsw i64 %indvars.iv1009, 32
  %indvars.iv.next1015 = add nuw nsw i64 %indvars.iv1014, 32
  %indvars.iv.next1021 = add nsw i64 %indvars.iv1020, -32
  %exitcond1026.not = icmp eq i64 %polly.indvar_next395, 3
  br i1 %exitcond1026.not, label %polly.loop_header397.1, label %polly.loop_header391

polly.loop_header397:                             ; preds = %polly.loop_header391.split, %polly.loop_exit422
  %polly.indvar400 = phi i64 [ %polly.indvar_next401, %polly.loop_exit422 ], [ 0, %polly.loop_header391.split ]
  %polly.access.mul.Packed_MemRef_call1286431 = mul nuw nsw i64 %polly.indvar400, 80
  br label %polly.loop_header420

polly.loop_exit422:                               ; preds = %polly.loop_header420
  %polly.indvar_next401 = add nuw nsw i64 %polly.indvar400, 1
  %exitcond1008.not = icmp eq i64 %polly.indvar_next401, 60
  br i1 %exitcond1008.not, label %polly.loop_header434.preheader, label %polly.loop_header397

polly.loop_header434.preheader:                   ; preds = %polly.loop_exit422.us, %polly.loop_exit422
  %124 = mul nsw i64 %polly.indvar394, -32
  %polly.loop_guard4441133 = icmp sgt i64 %124, -80
  br i1 %polly.loop_guard4441133, label %polly.loop_header434.us.preheader, label %polly.loop_exit436

polly.loop_header434.us.preheader:                ; preds = %polly.loop_header391.split, %polly.loop_header434.preheader
  br label %polly.loop_header434.us

polly.loop_header434.us:                          ; preds = %polly.loop_header434.us.preheader, %polly.loop_exit443.loopexit.us
  %polly.indvar437.us = phi i64 [ %polly.indvar_next438.us, %polly.loop_exit443.loopexit.us ], [ 0, %polly.loop_header434.us.preheader ]
  %125 = shl nuw nsw i64 %polly.indvar437.us, 3
  %scevgep458.us = getelementptr i8, i8* %call2, i64 %125
  %polly.access.mul.Packed_MemRef_call1286454.us = mul nuw nsw i64 %polly.indvar437.us, 80
  br label %polly.loop_header441.us

polly.loop_header441.us:                          ; preds = %polly.loop_exit450.us, %polly.loop_header434.us
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %polly.loop_exit450.us ], [ %indvars.iv1014, %polly.loop_header434.us ]
  %polly.indvar445.us = phi i64 [ %polly.indvar_next446.us, %polly.loop_exit450.us ], [ 0, %polly.loop_header434.us ]
  %smin1018 = call i64 @llvm.smin.i64(i64 %indvars.iv1016, i64 63)
  %126 = add nuw nsw i64 %polly.indvar445.us, %120
  %127 = mul nuw nsw i64 %126, 480
  %scevgep459.us = getelementptr i8, i8* %scevgep458.us, i64 %127
  %scevgep459460.us = bitcast i8* %scevgep459.us to double*
  %_p_scalar_461.us = load double, double* %scevgep459460.us, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1286467.us = add nuw nsw i64 %126, %polly.access.mul.Packed_MemRef_call1286454.us
  %polly.access.Packed_MemRef_call1286468.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286467.us
  %_p_scalar_469.us = load double, double* %polly.access.Packed_MemRef_call1286468.us, align 8
  %128 = mul nuw nsw i64 %126, 640
  br label %polly.loop_header448.us

polly.loop_header448.us:                          ; preds = %polly.loop_header448.us, %polly.loop_header441.us
  %polly.indvar451.us = phi i64 [ 0, %polly.loop_header441.us ], [ %polly.indvar_next452.us, %polly.loop_header448.us ]
  %polly.access.add.Packed_MemRef_call1286455.us = add nuw nsw i64 %polly.indvar451.us, %polly.access.mul.Packed_MemRef_call1286454.us
  %polly.access.Packed_MemRef_call1286456.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286455.us
  %_p_scalar_457.us = load double, double* %polly.access.Packed_MemRef_call1286456.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_461.us, %_p_scalar_457.us
  %129 = mul nuw nsw i64 %polly.indvar451.us, 480
  %scevgep463.us = getelementptr i8, i8* %scevgep458.us, i64 %129
  %scevgep463464.us = bitcast i8* %scevgep463.us to double*
  %_p_scalar_465.us = load double, double* %scevgep463464.us, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75.us = fmul fast double %_p_scalar_469.us, %_p_scalar_465.us
  %130 = shl i64 %polly.indvar451.us, 3
  %131 = add nuw nsw i64 %130, %128
  %scevgep470.us = getelementptr i8, i8* %call, i64 %131
  %scevgep470471.us = bitcast i8* %scevgep470.us to double*
  %_p_scalar_472.us = load double, double* %scevgep470471.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_472.us
  store double %p_add42.i79.us, double* %scevgep470471.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next452.us = add nuw nsw i64 %polly.indvar451.us, 1
  %exitcond1019.not = icmp eq i64 %polly.indvar451.us, %smin1018
  br i1 %exitcond1019.not, label %polly.loop_exit450.us, label %polly.loop_header448.us

polly.loop_exit450.us:                            ; preds = %polly.loop_header448.us
  %polly.indvar_next446.us = add nuw nsw i64 %polly.indvar445.us, 1
  %indvars.iv.next1017 = add nuw nsw i64 %indvars.iv1016, 1
  %exitcond1024.not = icmp eq i64 %polly.indvar445.us, %smax1023
  br i1 %exitcond1024.not, label %polly.loop_exit443.loopexit.us, label %polly.loop_header441.us

polly.loop_exit443.loopexit.us:                   ; preds = %polly.loop_exit450.us
  %polly.indvar_next438.us = add nuw nsw i64 %polly.indvar437.us, 1
  %exitcond1025.not = icmp eq i64 %polly.indvar_next438.us, 60
  br i1 %exitcond1025.not, label %polly.loop_exit436, label %polly.loop_header434.us

polly.loop_header420:                             ; preds = %polly.loop_header397, %polly.loop_header420
  %polly.indvar424 = phi i64 [ %polly.indvar_next425, %polly.loop_header420 ], [ %120, %polly.loop_header397 ]
  %polly.access.mul.call1428 = mul nuw nsw i64 %polly.indvar424, 60
  %polly.access.add.call1429 = add nuw nsw i64 %polly.access.mul.call1428, %polly.indvar400
  %polly.access.call1430 = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1429
  %polly.access.call1430.load = load double, double* %polly.access.call1430, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286432 = add nuw nsw i64 %polly.indvar424, %polly.access.mul.Packed_MemRef_call1286431
  %polly.access.Packed_MemRef_call1286433 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286432
  store double %polly.access.call1430.load, double* %polly.access.Packed_MemRef_call1286433, align 8
  %polly.indvar_next425 = add nuw nsw i64 %polly.indvar424, 1
  %polly.loop_cond426.not.not = icmp ult i64 %polly.indvar424, %123
  br i1 %polly.loop_cond426.not.not, label %polly.loop_header420, label %polly.loop_exit422

polly.start475:                                   ; preds = %init_array.exit
  %malloccall477 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header561

polly.loop_header561:                             ; preds = %polly.loop_exit569, %polly.start475
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit569 ], [ 0, %polly.start475 ]
  %polly.indvar564 = phi i64 [ %polly.indvar_next565, %polly.loop_exit569 ], [ 1, %polly.start475 ]
  %132 = add i64 %indvar, 1
  %133 = mul nuw nsw i64 %polly.indvar564, 640
  %scevgep573 = getelementptr i8, i8* %call, i64 %133
  %min.iters.check1443 = icmp ult i64 %132, 4
  br i1 %min.iters.check1443, label %polly.loop_header567.preheader, label %vector.ph1444

vector.ph1444:                                    ; preds = %polly.loop_header561
  %n.vec1446 = and i64 %132, -4
  br label %vector.body1442

vector.body1442:                                  ; preds = %vector.body1442, %vector.ph1444
  %index1447 = phi i64 [ 0, %vector.ph1444 ], [ %index.next1448, %vector.body1442 ]
  %134 = shl nuw nsw i64 %index1447, 3
  %135 = getelementptr i8, i8* %scevgep573, i64 %134
  %136 = bitcast i8* %135 to <4 x double>*
  %wide.load1451 = load <4 x double>, <4 x double>* %136, align 8, !alias.scope !89, !noalias !91
  %137 = fmul fast <4 x double> %wide.load1451, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %138 = bitcast i8* %135 to <4 x double>*
  store <4 x double> %137, <4 x double>* %138, align 8, !alias.scope !89, !noalias !91
  %index.next1448 = add i64 %index1447, 4
  %139 = icmp eq i64 %index.next1448, %n.vec1446
  br i1 %139, label %middle.block1440, label %vector.body1442, !llvm.loop !95

middle.block1440:                                 ; preds = %vector.body1442
  %cmp.n1450 = icmp eq i64 %132, %n.vec1446
  br i1 %cmp.n1450, label %polly.loop_exit569, label %polly.loop_header567.preheader

polly.loop_header567.preheader:                   ; preds = %polly.loop_header561, %middle.block1440
  %polly.indvar570.ph = phi i64 [ 0, %polly.loop_header561 ], [ %n.vec1446, %middle.block1440 ]
  br label %polly.loop_header567

polly.loop_exit569:                               ; preds = %polly.loop_header567, %middle.block1440
  %polly.indvar_next565 = add nuw nsw i64 %polly.indvar564, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar_next565, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1049.not, label %polly.loop_header577.preheader, label %polly.loop_header561

polly.loop_header577.preheader:                   ; preds = %polly.loop_exit569
  %Packed_MemRef_call1478 = bitcast i8* %malloccall477 to double*
  br label %polly.loop_header583

polly.loop_header567:                             ; preds = %polly.loop_header567.preheader, %polly.loop_header567
  %polly.indvar570 = phi i64 [ %polly.indvar_next571, %polly.loop_header567 ], [ %polly.indvar570.ph, %polly.loop_header567.preheader ]
  %140 = shl nuw nsw i64 %polly.indvar570, 3
  %scevgep574 = getelementptr i8, i8* %scevgep573, i64 %140
  %scevgep574575 = bitcast i8* %scevgep574 to double*
  %_p_scalar_576 = load double, double* %scevgep574575, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_576, 1.200000e+00
  store double %p_mul.i, double* %scevgep574575, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next571 = add nuw nsw i64 %polly.indvar570, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar_next571, %polly.indvar564
  br i1 %exitcond1048.not, label %polly.loop_exit569, label %polly.loop_header567, !llvm.loop !96

polly.loop_header583:                             ; preds = %polly.loop_exit628, %polly.loop_header577.preheader
  %indvars.iv1041 = phi i64 [ %indvars.iv.next1042, %polly.loop_exit628 ], [ 0, %polly.loop_header577.preheader ]
  %indvars.iv1035 = phi i64 [ %indvars.iv.next1036, %polly.loop_exit628 ], [ 0, %polly.loop_header577.preheader ]
  %indvars.iv1030 = phi i64 [ %indvars.iv.next1031, %polly.loop_exit628 ], [ 0, %polly.loop_header577.preheader ]
  %polly.indvar586 = phi i64 [ %polly.indvar_next587, %polly.loop_exit628 ], [ 0, %polly.loop_header577.preheader ]
  %smin1043 = call i64 @llvm.smin.i64(i64 %indvars.iv1041, i64 -48)
  %141 = add nsw i64 %smin1043, 79
  %smax1044 = call i64 @llvm.smax.i64(i64 %141, i64 0)
  %umax1032 = call i64 @llvm.umax.i64(i64 %indvars.iv1030, i64 1)
  %142 = shl nsw i64 %polly.indvar586, 5
  %polly.loop_guard603.not = icmp eq i64 %polly.indvar586, 0
  %143 = or i64 %142, 31
  %144 = icmp ult i64 %143, 79
  %145 = select i1 %144, i64 %143, i64 79
  %polly.loop_guard615.not = icmp ugt i64 %142, %145
  br i1 %polly.loop_guard603.not, label %polly.loop_header583.split, label %polly.loop_header589.us

polly.loop_header589.us:                          ; preds = %polly.loop_header583, %polly.loop_exit614.us
  %polly.indvar592.us = phi i64 [ %polly.indvar_next593.us, %polly.loop_exit614.us ], [ 0, %polly.loop_header583 ]
  %polly.access.mul.Packed_MemRef_call1478.us = mul nuw nsw i64 %polly.indvar592.us, 80
  br label %polly.loop_header600.us

polly.loop_header600.us:                          ; preds = %polly.loop_header589.us, %polly.loop_header600.us
  %polly.indvar604.us = phi i64 [ %polly.indvar_next605.us, %polly.loop_header600.us ], [ 0, %polly.loop_header589.us ]
  %polly.access.mul.call1608.us = mul nuw nsw i64 %polly.indvar604.us, 60
  %polly.access.add.call1609.us = add nuw nsw i64 %polly.access.mul.call1608.us, %polly.indvar592.us
  %polly.access.call1610.us = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1609.us
  %polly.access.call1610.load.us = load double, double* %polly.access.call1610.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1478.us = add nuw nsw i64 %polly.indvar604.us, %polly.access.mul.Packed_MemRef_call1478.us
  %polly.access.Packed_MemRef_call1478.us = getelementptr double, double* %Packed_MemRef_call1478, i64 %polly.access.add.Packed_MemRef_call1478.us
  store double %polly.access.call1610.load.us, double* %polly.access.Packed_MemRef_call1478.us, align 8
  %polly.indvar_next605.us = add nuw nsw i64 %polly.indvar604.us, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar_next605.us, %umax1032
  br i1 %exitcond1033.not, label %polly.merge596.loopexit.us, label %polly.loop_header600.us

polly.loop_header612.us:                          ; preds = %polly.merge596.loopexit.us, %polly.loop_header612.us
  %polly.indvar616.us = phi i64 [ %polly.indvar_next617.us, %polly.loop_header612.us ], [ %142, %polly.merge596.loopexit.us ]
  %polly.access.mul.call1620.us = mul nuw nsw i64 %polly.indvar616.us, 60
  %polly.access.add.call1621.us = add nuw nsw i64 %polly.access.mul.call1620.us, %polly.indvar592.us
  %polly.access.call1622.us = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1621.us
  %polly.access.call1622.load.us = load double, double* %polly.access.call1622.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1478624.us = add nuw nsw i64 %polly.indvar616.us, %polly.access.mul.Packed_MemRef_call1478.us
  %polly.access.Packed_MemRef_call1478625.us = getelementptr double, double* %Packed_MemRef_call1478, i64 %polly.access.add.Packed_MemRef_call1478624.us
  store double %polly.access.call1622.load.us, double* %polly.access.Packed_MemRef_call1478625.us, align 8
  %polly.indvar_next617.us = add nuw nsw i64 %polly.indvar616.us, 1
  %polly.loop_cond618.not.not.us = icmp ult i64 %polly.indvar616.us, %145
  br i1 %polly.loop_cond618.not.not.us, label %polly.loop_header612.us, label %polly.loop_exit614.us

polly.loop_exit614.us:                            ; preds = %polly.loop_header612.us, %polly.merge596.loopexit.us
  %polly.indvar_next593.us = add nuw nsw i64 %polly.indvar592.us, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar_next593.us, 60
  br i1 %exitcond1034.not, label %polly.loop_header626.preheader, label %polly.loop_header589.us

polly.merge596.loopexit.us:                       ; preds = %polly.loop_header600.us
  br i1 %polly.loop_guard615.not, label %polly.loop_exit614.us, label %polly.loop_header612.us

polly.loop_header583.split:                       ; preds = %polly.loop_header583
  br i1 %polly.loop_guard615.not, label %polly.loop_header626.us.preheader, label %polly.loop_header589

polly.loop_exit628:                               ; preds = %polly.loop_exit635.loopexit.us, %polly.loop_header626.preheader
  %polly.indvar_next587 = add nuw nsw i64 %polly.indvar586, 1
  %indvars.iv.next1031 = add nuw nsw i64 %indvars.iv1030, 32
  %indvars.iv.next1036 = add nuw nsw i64 %indvars.iv1035, 32
  %indvars.iv.next1042 = add nsw i64 %indvars.iv1041, -32
  %exitcond1047.not = icmp eq i64 %polly.indvar_next587, 3
  br i1 %exitcond1047.not, label %polly.loop_header589.1, label %polly.loop_header583

polly.loop_header589:                             ; preds = %polly.loop_header583.split, %polly.loop_exit614
  %polly.indvar592 = phi i64 [ %polly.indvar_next593, %polly.loop_exit614 ], [ 0, %polly.loop_header583.split ]
  %polly.access.mul.Packed_MemRef_call1478623 = mul nuw nsw i64 %polly.indvar592, 80
  br label %polly.loop_header612

polly.loop_exit614:                               ; preds = %polly.loop_header612
  %polly.indvar_next593 = add nuw nsw i64 %polly.indvar592, 1
  %exitcond1029.not = icmp eq i64 %polly.indvar_next593, 60
  br i1 %exitcond1029.not, label %polly.loop_header626.preheader, label %polly.loop_header589

polly.loop_header626.preheader:                   ; preds = %polly.loop_exit614.us, %polly.loop_exit614
  %146 = mul nsw i64 %polly.indvar586, -32
  %polly.loop_guard6361134 = icmp sgt i64 %146, -80
  br i1 %polly.loop_guard6361134, label %polly.loop_header626.us.preheader, label %polly.loop_exit628

polly.loop_header626.us.preheader:                ; preds = %polly.loop_header583.split, %polly.loop_header626.preheader
  br label %polly.loop_header626.us

polly.loop_header626.us:                          ; preds = %polly.loop_header626.us.preheader, %polly.loop_exit635.loopexit.us
  %polly.indvar629.us = phi i64 [ %polly.indvar_next630.us, %polly.loop_exit635.loopexit.us ], [ 0, %polly.loop_header626.us.preheader ]
  %147 = shl nuw nsw i64 %polly.indvar629.us, 3
  %scevgep650.us = getelementptr i8, i8* %call2, i64 %147
  %polly.access.mul.Packed_MemRef_call1478646.us = mul nuw nsw i64 %polly.indvar629.us, 80
  br label %polly.loop_header633.us

polly.loop_header633.us:                          ; preds = %polly.loop_exit642.us, %polly.loop_header626.us
  %indvars.iv1037 = phi i64 [ %indvars.iv.next1038, %polly.loop_exit642.us ], [ %indvars.iv1035, %polly.loop_header626.us ]
  %polly.indvar637.us = phi i64 [ %polly.indvar_next638.us, %polly.loop_exit642.us ], [ 0, %polly.loop_header626.us ]
  %smin1039 = call i64 @llvm.smin.i64(i64 %indvars.iv1037, i64 63)
  %148 = add nuw nsw i64 %polly.indvar637.us, %142
  %149 = mul nuw nsw i64 %148, 480
  %scevgep651.us = getelementptr i8, i8* %scevgep650.us, i64 %149
  %scevgep651652.us = bitcast i8* %scevgep651.us to double*
  %_p_scalar_653.us = load double, double* %scevgep651652.us, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1478659.us = add nuw nsw i64 %148, %polly.access.mul.Packed_MemRef_call1478646.us
  %polly.access.Packed_MemRef_call1478660.us = getelementptr double, double* %Packed_MemRef_call1478, i64 %polly.access.add.Packed_MemRef_call1478659.us
  %_p_scalar_661.us = load double, double* %polly.access.Packed_MemRef_call1478660.us, align 8
  %150 = mul nuw nsw i64 %148, 640
  br label %polly.loop_header640.us

polly.loop_header640.us:                          ; preds = %polly.loop_header640.us, %polly.loop_header633.us
  %polly.indvar643.us = phi i64 [ 0, %polly.loop_header633.us ], [ %polly.indvar_next644.us, %polly.loop_header640.us ]
  %polly.access.add.Packed_MemRef_call1478647.us = add nuw nsw i64 %polly.indvar643.us, %polly.access.mul.Packed_MemRef_call1478646.us
  %polly.access.Packed_MemRef_call1478648.us = getelementptr double, double* %Packed_MemRef_call1478, i64 %polly.access.add.Packed_MemRef_call1478647.us
  %_p_scalar_649.us = load double, double* %polly.access.Packed_MemRef_call1478648.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_653.us, %_p_scalar_649.us
  %151 = mul nuw nsw i64 %polly.indvar643.us, 480
  %scevgep655.us = getelementptr i8, i8* %scevgep650.us, i64 %151
  %scevgep655656.us = bitcast i8* %scevgep655.us to double*
  %_p_scalar_657.us = load double, double* %scevgep655656.us, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i.us = fmul fast double %_p_scalar_661.us, %_p_scalar_657.us
  %152 = shl i64 %polly.indvar643.us, 3
  %153 = add nuw nsw i64 %152, %150
  %scevgep662.us = getelementptr i8, i8* %call, i64 %153
  %scevgep662663.us = bitcast i8* %scevgep662.us to double*
  %_p_scalar_664.us = load double, double* %scevgep662663.us, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_664.us
  store double %p_add42.i.us, double* %scevgep662663.us, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next644.us = add nuw nsw i64 %polly.indvar643.us, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar643.us, %smin1039
  br i1 %exitcond1040.not, label %polly.loop_exit642.us, label %polly.loop_header640.us

polly.loop_exit642.us:                            ; preds = %polly.loop_header640.us
  %polly.indvar_next638.us = add nuw nsw i64 %polly.indvar637.us, 1
  %indvars.iv.next1038 = add nuw nsw i64 %indvars.iv1037, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar637.us, %smax1044
  br i1 %exitcond1045.not, label %polly.loop_exit635.loopexit.us, label %polly.loop_header633.us

polly.loop_exit635.loopexit.us:                   ; preds = %polly.loop_exit642.us
  %polly.indvar_next630.us = add nuw nsw i64 %polly.indvar629.us, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar_next630.us, 60
  br i1 %exitcond1046.not, label %polly.loop_exit628, label %polly.loop_header626.us

polly.loop_header612:                             ; preds = %polly.loop_header589, %polly.loop_header612
  %polly.indvar616 = phi i64 [ %polly.indvar_next617, %polly.loop_header612 ], [ %142, %polly.loop_header589 ]
  %polly.access.mul.call1620 = mul nuw nsw i64 %polly.indvar616, 60
  %polly.access.add.call1621 = add nuw nsw i64 %polly.access.mul.call1620, %polly.indvar592
  %polly.access.call1622 = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1621
  %polly.access.call1622.load = load double, double* %polly.access.call1622, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1478624 = add nuw nsw i64 %polly.indvar616, %polly.access.mul.Packed_MemRef_call1478623
  %polly.access.Packed_MemRef_call1478625 = getelementptr double, double* %Packed_MemRef_call1478, i64 %polly.access.add.Packed_MemRef_call1478624
  store double %polly.access.call1622.load, double* %polly.access.Packed_MemRef_call1478625, align 8
  %polly.indvar_next617 = add nuw nsw i64 %polly.indvar616, 1
  %polly.loop_cond618.not.not = icmp ult i64 %polly.indvar616, %145
  br i1 %polly.loop_cond618.not.not, label %polly.loop_header612, label %polly.loop_exit614

polly.loop_header803:                             ; preds = %entry, %polly.loop_exit811
  %polly.indvar806 = phi i64 [ %polly.indvar_next807, %polly.loop_exit811 ], [ 0, %entry ]
  %154 = mul nuw nsw i64 %polly.indvar806, 640
  %155 = trunc i64 %polly.indvar806 to i32
  %broadcast.splatinsert1174 = insertelement <4 x i32> poison, i32 %155, i32 0
  %broadcast.splat1175 = shufflevector <4 x i32> %broadcast.splatinsert1174, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1164

vector.body1164:                                  ; preds = %vector.body1164, %polly.loop_header803
  %index1166 = phi i64 [ 0, %polly.loop_header803 ], [ %index.next1167, %vector.body1164 ]
  %vec.ind1172 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header803 ], [ %vec.ind.next1173, %vector.body1164 ]
  %156 = mul <4 x i32> %vec.ind1172, %broadcast.splat1175
  %157 = add <4 x i32> %156, <i32 3, i32 3, i32 3, i32 3>
  %158 = urem <4 x i32> %157, <i32 80, i32 80, i32 80, i32 80>
  %159 = sitofp <4 x i32> %158 to <4 x double>
  %160 = fmul fast <4 x double> %159, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %161 = shl i64 %index1166, 3
  %162 = add nuw nsw i64 %161, %154
  %163 = getelementptr i8, i8* %call, i64 %162
  %164 = bitcast i8* %163 to <4 x double>*
  store <4 x double> %160, <4 x double>* %164, align 8, !alias.scope !99, !noalias !101
  %index.next1167 = add i64 %index1166, 4
  %vec.ind.next1173 = add <4 x i32> %vec.ind1172, <i32 4, i32 4, i32 4, i32 4>
  %165 = icmp eq i64 %index.next1167, 32
  br i1 %165, label %polly.loop_exit811, label %vector.body1164, !llvm.loop !104

polly.loop_exit811:                               ; preds = %vector.body1164
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %exitcond1069.not = icmp eq i64 %polly.indvar_next807, 32
  br i1 %exitcond1069.not, label %polly.loop_header803.1, label %polly.loop_header803

polly.loop_header830:                             ; preds = %polly.loop_exit811.2.2, %polly.loop_exit838
  %polly.indvar833 = phi i64 [ %polly.indvar_next834, %polly.loop_exit838 ], [ 0, %polly.loop_exit811.2.2 ]
  %166 = mul nuw nsw i64 %polly.indvar833, 480
  %167 = trunc i64 %polly.indvar833 to i32
  %broadcast.splatinsert1288 = insertelement <4 x i32> poison, i32 %167, i32 0
  %broadcast.splat1289 = shufflevector <4 x i32> %broadcast.splatinsert1288, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1278

vector.body1278:                                  ; preds = %vector.body1278, %polly.loop_header830
  %index1280 = phi i64 [ 0, %polly.loop_header830 ], [ %index.next1281, %vector.body1278 ]
  %vec.ind1286 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header830 ], [ %vec.ind.next1287, %vector.body1278 ]
  %168 = mul <4 x i32> %vec.ind1286, %broadcast.splat1289
  %169 = add <4 x i32> %168, <i32 2, i32 2, i32 2, i32 2>
  %170 = urem <4 x i32> %169, <i32 60, i32 60, i32 60, i32 60>
  %171 = sitofp <4 x i32> %170 to <4 x double>
  %172 = fmul fast <4 x double> %171, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %173 = shl i64 %index1280, 3
  %174 = add i64 %173, %166
  %175 = getelementptr i8, i8* %call2, i64 %174
  %176 = bitcast i8* %175 to <4 x double>*
  store <4 x double> %172, <4 x double>* %176, align 8, !alias.scope !103, !noalias !105
  %index.next1281 = add i64 %index1280, 4
  %vec.ind.next1287 = add <4 x i32> %vec.ind1286, <i32 4, i32 4, i32 4, i32 4>
  %177 = icmp eq i64 %index.next1281, 32
  br i1 %177, label %polly.loop_exit838, label %vector.body1278, !llvm.loop !106

polly.loop_exit838:                               ; preds = %vector.body1278
  %polly.indvar_next834 = add nuw nsw i64 %polly.indvar833, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar_next834, 32
  br i1 %exitcond1060.not, label %polly.loop_header830.1, label %polly.loop_header830

polly.loop_header856:                             ; preds = %polly.loop_exit838.1.2, %polly.loop_exit864
  %polly.indvar859 = phi i64 [ %polly.indvar_next860, %polly.loop_exit864 ], [ 0, %polly.loop_exit838.1.2 ]
  %178 = mul nuw nsw i64 %polly.indvar859, 480
  %179 = trunc i64 %polly.indvar859 to i32
  %broadcast.splatinsert1366 = insertelement <4 x i32> poison, i32 %179, i32 0
  %broadcast.splat1367 = shufflevector <4 x i32> %broadcast.splatinsert1366, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1356

vector.body1356:                                  ; preds = %vector.body1356, %polly.loop_header856
  %index1358 = phi i64 [ 0, %polly.loop_header856 ], [ %index.next1359, %vector.body1356 ]
  %vec.ind1364 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header856 ], [ %vec.ind.next1365, %vector.body1356 ]
  %180 = mul <4 x i32> %vec.ind1364, %broadcast.splat1367
  %181 = add <4 x i32> %180, <i32 1, i32 1, i32 1, i32 1>
  %182 = urem <4 x i32> %181, <i32 80, i32 80, i32 80, i32 80>
  %183 = sitofp <4 x i32> %182 to <4 x double>
  %184 = fmul fast <4 x double> %183, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %185 = shl i64 %index1358, 3
  %186 = add i64 %185, %178
  %187 = getelementptr i8, i8* %call1, i64 %186
  %188 = bitcast i8* %187 to <4 x double>*
  store <4 x double> %184, <4 x double>* %188, align 8, !alias.scope !102, !noalias !107
  %index.next1359 = add i64 %index1358, 4
  %vec.ind.next1365 = add <4 x i32> %vec.ind1364, <i32 4, i32 4, i32 4, i32 4>
  %189 = icmp eq i64 %index.next1359, 32
  br i1 %189, label %polly.loop_exit864, label %vector.body1356, !llvm.loop !108

polly.loop_exit864:                               ; preds = %vector.body1356
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar_next860, 32
  br i1 %exitcond1054.not, label %polly.loop_header856.1, label %polly.loop_header856

polly.loop_header211.1:                           ; preds = %polly.loop_exit244, %polly.loop_exit230.1
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit230.1 ], [ 0, %polly.loop_exit244 ]
  %polly.access.mul.Packed_MemRef_call1239.1 = mul nuw nsw i64 %polly.indvar214.1, 80
  br label %polly.loop_header228.1

polly.loop_header228.1:                           ; preds = %polly.loop_header228.1, %polly.loop_header211.1
  %polly.indvar232.1 = phi i64 [ %polly.indvar_next233.1, %polly.loop_header228.1 ], [ 0, %polly.loop_header211.1 ]
  %190 = mul nuw nsw i64 %polly.indvar232.1, 60
  %polly.access.mul.call1236.1 = add nuw nsw i64 %190, 3840
  %polly.access.add.call1237.1 = add nuw nsw i64 %polly.access.mul.call1236.1, %polly.indvar214.1
  %polly.access.call1238.1 = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1237.1
  %polly.access.call1238.load.1 = load double, double* %polly.access.call1238.1, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1240.1 = add nuw nsw i64 %polly.indvar232.1, %polly.access.mul.Packed_MemRef_call1239.1
  %polly.access.Packed_MemRef_call1241.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.1
  store double %polly.access.call1238.load.1, double* %polly.access.Packed_MemRef_call1241.1, align 8
  %polly.indvar_next233.1 = add nuw nsw i64 %polly.indvar232.1, 1
  %polly.loop_cond234.not.not.1 = icmp ult i64 %polly.indvar232.1, 15
  br i1 %polly.loop_cond234.not.not.1, label %polly.loop_header228.1, label %polly.loop_exit230.1

polly.loop_exit230.1:                             ; preds = %polly.loop_header228.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next215.1, 60
  br i1 %exitcond.1.not, label %polly.loop_header242.us.1, label %polly.loop_header211.1

polly.loop_header242.us.1:                        ; preds = %polly.loop_exit230.1, %polly.loop_exit251.loopexit.us.1
  %polly.indvar245.us.1 = phi i64 [ %polly.indvar_next246.us.1, %polly.loop_exit251.loopexit.us.1 ], [ 0, %polly.loop_exit230.1 ]
  %191 = shl nuw nsw i64 %polly.indvar245.us.1, 3
  %scevgep266.us.1 = getelementptr i8, i8* %call2, i64 %191
  %polly.access.mul.Packed_MemRef_call1262.us.1 = mul nuw nsw i64 %polly.indvar245.us.1, 80
  br label %polly.loop_header249.us.1

polly.loop_header249.us.1:                        ; preds = %polly.loop_exit258.us.1, %polly.loop_header242.us.1
  %indvars.iv997.1 = phi i64 [ %indvars.iv.next998.1, %polly.loop_exit258.us.1 ], [ 0, %polly.loop_header242.us.1 ]
  %polly.indvar253.us.1 = phi i64 [ %polly.indvar_next254.us.1, %polly.loop_exit258.us.1 ], [ 0, %polly.loop_header242.us.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv997.1, i64 63)
  %192 = add nuw nsw i64 %polly.indvar253.us.1, 64
  %193 = mul nuw nsw i64 %192, 480
  %scevgep267.us.1 = getelementptr i8, i8* %scevgep266.us.1, i64 %193
  %scevgep267268.us.1 = bitcast i8* %scevgep267.us.1 to double*
  %_p_scalar_269.us.1 = load double, double* %scevgep267268.us.1, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1275.us.1 = add nuw nsw i64 %polly.indvar253.us.1, %polly.access.mul.Packed_MemRef_call1262.us.1
  %polly.access.Packed_MemRef_call1276.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.us.1
  %_p_scalar_277.us.1 = load double, double* %polly.access.Packed_MemRef_call1276.us.1, align 8
  %194 = mul nuw nsw i64 %192, 640
  br label %polly.loop_header256.us.1

polly.loop_header256.us.1:                        ; preds = %polly.loop_header256.us.1, %polly.loop_header249.us.1
  %polly.indvar259.us.1 = phi i64 [ 0, %polly.loop_header249.us.1 ], [ %polly.indvar_next260.us.1, %polly.loop_header256.us.1 ]
  %195 = add nuw nsw i64 %polly.indvar259.us.1, 64
  %polly.access.add.Packed_MemRef_call1263.us.1 = add nuw nsw i64 %polly.indvar259.us.1, %polly.access.mul.Packed_MemRef_call1262.us.1
  %polly.access.Packed_MemRef_call1264.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.1
  %_p_scalar_265.us.1 = load double, double* %polly.access.Packed_MemRef_call1264.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_269.us.1, %_p_scalar_265.us.1
  %196 = mul nuw nsw i64 %195, 480
  %scevgep271.us.1 = getelementptr i8, i8* %scevgep266.us.1, i64 %196
  %scevgep271272.us.1 = bitcast i8* %scevgep271.us.1 to double*
  %_p_scalar_273.us.1 = load double, double* %scevgep271272.us.1, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_277.us.1, %_p_scalar_273.us.1
  %197 = shl i64 %195, 3
  %198 = add nuw nsw i64 %197, %194
  %scevgep278.us.1 = getelementptr i8, i8* %call, i64 %198
  %scevgep278279.us.1 = bitcast i8* %scevgep278.us.1 to double*
  %_p_scalar_280.us.1 = load double, double* %scevgep278279.us.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_280.us.1
  store double %p_add42.i118.us.1, double* %scevgep278279.us.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next260.us.1 = add nuw nsw i64 %polly.indvar259.us.1, 1
  %exitcond999.1.not = icmp eq i64 %polly.indvar259.us.1, %smin.1
  br i1 %exitcond999.1.not, label %polly.loop_exit258.us.1, label %polly.loop_header256.us.1

polly.loop_exit258.us.1:                          ; preds = %polly.loop_header256.us.1
  %polly.indvar_next254.us.1 = add nuw nsw i64 %polly.indvar253.us.1, 1
  %indvars.iv.next998.1 = add nuw nsw i64 %indvars.iv997.1, 1
  %exitcond1003.1.not = icmp eq i64 %polly.indvar_next254.us.1, 16
  br i1 %exitcond1003.1.not, label %polly.loop_exit251.loopexit.us.1, label %polly.loop_header249.us.1

polly.loop_exit251.loopexit.us.1:                 ; preds = %polly.loop_exit258.us.1
  %polly.indvar_next246.us.1 = add nuw nsw i64 %polly.indvar245.us.1, 1
  %exitcond1004.1.not = icmp eq i64 %polly.indvar_next246.us.1, 60
  br i1 %exitcond1004.1.not, label %polly.loop_exit207.1, label %polly.loop_header242.us.1

polly.loop_exit207.1:                             ; preds = %polly.loop_exit251.loopexit.us.1
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header397.1:                           ; preds = %polly.loop_exit436, %polly.loop_exit422.1
  %polly.indvar400.1 = phi i64 [ %polly.indvar_next401.1, %polly.loop_exit422.1 ], [ 0, %polly.loop_exit436 ]
  %polly.access.mul.Packed_MemRef_call1286431.1 = mul nuw nsw i64 %polly.indvar400.1, 80
  br label %polly.loop_header420.1

polly.loop_header420.1:                           ; preds = %polly.loop_header420.1, %polly.loop_header397.1
  %polly.indvar424.1 = phi i64 [ %polly.indvar_next425.1, %polly.loop_header420.1 ], [ 0, %polly.loop_header397.1 ]
  %199 = mul nuw nsw i64 %polly.indvar424.1, 60
  %polly.access.mul.call1428.1 = add nuw nsw i64 %199, 3840
  %polly.access.add.call1429.1 = add nuw nsw i64 %polly.access.mul.call1428.1, %polly.indvar400.1
  %polly.access.call1430.1 = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1429.1
  %polly.access.call1430.load.1 = load double, double* %polly.access.call1430.1, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286432.1 = add nuw nsw i64 %polly.indvar424.1, %polly.access.mul.Packed_MemRef_call1286431.1
  %polly.access.Packed_MemRef_call1286433.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286432.1
  store double %polly.access.call1430.load.1, double* %polly.access.Packed_MemRef_call1286433.1, align 8
  %polly.indvar_next425.1 = add nuw nsw i64 %polly.indvar424.1, 1
  %polly.loop_cond426.not.not.1 = icmp ult i64 %polly.indvar424.1, 15
  br i1 %polly.loop_cond426.not.not.1, label %polly.loop_header420.1, label %polly.loop_exit422.1

polly.loop_exit422.1:                             ; preds = %polly.loop_header420.1
  %polly.indvar_next401.1 = add nuw nsw i64 %polly.indvar400.1, 1
  %exitcond1008.1.not = icmp eq i64 %polly.indvar_next401.1, 60
  br i1 %exitcond1008.1.not, label %polly.loop_header434.us.1, label %polly.loop_header397.1

polly.loop_header434.us.1:                        ; preds = %polly.loop_exit422.1, %polly.loop_exit443.loopexit.us.1
  %polly.indvar437.us.1 = phi i64 [ %polly.indvar_next438.us.1, %polly.loop_exit443.loopexit.us.1 ], [ 0, %polly.loop_exit422.1 ]
  %200 = shl nuw nsw i64 %polly.indvar437.us.1, 3
  %scevgep458.us.1 = getelementptr i8, i8* %call2, i64 %200
  %polly.access.mul.Packed_MemRef_call1286454.us.1 = mul nuw nsw i64 %polly.indvar437.us.1, 80
  br label %polly.loop_header441.us.1

polly.loop_header441.us.1:                        ; preds = %polly.loop_exit450.us.1, %polly.loop_header434.us.1
  %indvars.iv1016.1 = phi i64 [ %indvars.iv.next1017.1, %polly.loop_exit450.us.1 ], [ 0, %polly.loop_header434.us.1 ]
  %polly.indvar445.us.1 = phi i64 [ %polly.indvar_next446.us.1, %polly.loop_exit450.us.1 ], [ 0, %polly.loop_header434.us.1 ]
  %smin1018.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1016.1, i64 63)
  %201 = add nuw nsw i64 %polly.indvar445.us.1, 64
  %202 = mul nuw nsw i64 %201, 480
  %scevgep459.us.1 = getelementptr i8, i8* %scevgep458.us.1, i64 %202
  %scevgep459460.us.1 = bitcast i8* %scevgep459.us.1 to double*
  %_p_scalar_461.us.1 = load double, double* %scevgep459460.us.1, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1286467.us.1 = add nuw nsw i64 %polly.indvar445.us.1, %polly.access.mul.Packed_MemRef_call1286454.us.1
  %polly.access.Packed_MemRef_call1286468.us.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286467.us.1
  %_p_scalar_469.us.1 = load double, double* %polly.access.Packed_MemRef_call1286468.us.1, align 8
  %203 = mul nuw nsw i64 %201, 640
  br label %polly.loop_header448.us.1

polly.loop_header448.us.1:                        ; preds = %polly.loop_header448.us.1, %polly.loop_header441.us.1
  %polly.indvar451.us.1 = phi i64 [ 0, %polly.loop_header441.us.1 ], [ %polly.indvar_next452.us.1, %polly.loop_header448.us.1 ]
  %204 = add nuw nsw i64 %polly.indvar451.us.1, 64
  %polly.access.add.Packed_MemRef_call1286455.us.1 = add nuw nsw i64 %polly.indvar451.us.1, %polly.access.mul.Packed_MemRef_call1286454.us.1
  %polly.access.Packed_MemRef_call1286456.us.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286455.us.1
  %_p_scalar_457.us.1 = load double, double* %polly.access.Packed_MemRef_call1286456.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_461.us.1, %_p_scalar_457.us.1
  %205 = mul nuw nsw i64 %204, 480
  %scevgep463.us.1 = getelementptr i8, i8* %scevgep458.us.1, i64 %205
  %scevgep463464.us.1 = bitcast i8* %scevgep463.us.1 to double*
  %_p_scalar_465.us.1 = load double, double* %scevgep463464.us.1, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_469.us.1, %_p_scalar_465.us.1
  %206 = shl i64 %204, 3
  %207 = add nuw nsw i64 %206, %203
  %scevgep470.us.1 = getelementptr i8, i8* %call, i64 %207
  %scevgep470471.us.1 = bitcast i8* %scevgep470.us.1 to double*
  %_p_scalar_472.us.1 = load double, double* %scevgep470471.us.1, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_472.us.1
  store double %p_add42.i79.us.1, double* %scevgep470471.us.1, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next452.us.1 = add nuw nsw i64 %polly.indvar451.us.1, 1
  %exitcond1019.1.not = icmp eq i64 %polly.indvar451.us.1, %smin1018.1
  br i1 %exitcond1019.1.not, label %polly.loop_exit450.us.1, label %polly.loop_header448.us.1

polly.loop_exit450.us.1:                          ; preds = %polly.loop_header448.us.1
  %polly.indvar_next446.us.1 = add nuw nsw i64 %polly.indvar445.us.1, 1
  %indvars.iv.next1017.1 = add nuw nsw i64 %indvars.iv1016.1, 1
  %exitcond1024.1.not = icmp eq i64 %polly.indvar_next446.us.1, 16
  br i1 %exitcond1024.1.not, label %polly.loop_exit443.loopexit.us.1, label %polly.loop_header441.us.1

polly.loop_exit443.loopexit.us.1:                 ; preds = %polly.loop_exit450.us.1
  %polly.indvar_next438.us.1 = add nuw nsw i64 %polly.indvar437.us.1, 1
  %exitcond1025.1.not = icmp eq i64 %polly.indvar_next438.us.1, 60
  br i1 %exitcond1025.1.not, label %polly.loop_exit393.1, label %polly.loop_header434.us.1

polly.loop_exit393.1:                             ; preds = %polly.loop_exit443.loopexit.us.1
  tail call void @free(i8* nonnull %malloccall285)
  br label %kernel_syr2k.exit90

polly.loop_header589.1:                           ; preds = %polly.loop_exit628, %polly.loop_exit614.1
  %polly.indvar592.1 = phi i64 [ %polly.indvar_next593.1, %polly.loop_exit614.1 ], [ 0, %polly.loop_exit628 ]
  %polly.access.mul.Packed_MemRef_call1478623.1 = mul nuw nsw i64 %polly.indvar592.1, 80
  br label %polly.loop_header612.1

polly.loop_header612.1:                           ; preds = %polly.loop_header612.1, %polly.loop_header589.1
  %polly.indvar616.1 = phi i64 [ %polly.indvar_next617.1, %polly.loop_header612.1 ], [ 0, %polly.loop_header589.1 ]
  %208 = mul nuw nsw i64 %polly.indvar616.1, 60
  %polly.access.mul.call1620.1 = add nuw nsw i64 %208, 3840
  %polly.access.add.call1621.1 = add nuw nsw i64 %polly.access.mul.call1620.1, %polly.indvar592.1
  %polly.access.call1622.1 = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1621.1
  %polly.access.call1622.load.1 = load double, double* %polly.access.call1622.1, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1478624.1 = add nuw nsw i64 %polly.indvar616.1, %polly.access.mul.Packed_MemRef_call1478623.1
  %polly.access.Packed_MemRef_call1478625.1 = getelementptr double, double* %Packed_MemRef_call1478, i64 %polly.access.add.Packed_MemRef_call1478624.1
  store double %polly.access.call1622.load.1, double* %polly.access.Packed_MemRef_call1478625.1, align 8
  %polly.indvar_next617.1 = add nuw nsw i64 %polly.indvar616.1, 1
  %polly.loop_cond618.not.not.1 = icmp ult i64 %polly.indvar616.1, 15
  br i1 %polly.loop_cond618.not.not.1, label %polly.loop_header612.1, label %polly.loop_exit614.1

polly.loop_exit614.1:                             ; preds = %polly.loop_header612.1
  %polly.indvar_next593.1 = add nuw nsw i64 %polly.indvar592.1, 1
  %exitcond1029.1.not = icmp eq i64 %polly.indvar_next593.1, 60
  br i1 %exitcond1029.1.not, label %polly.loop_header626.us.1, label %polly.loop_header589.1

polly.loop_header626.us.1:                        ; preds = %polly.loop_exit614.1, %polly.loop_exit635.loopexit.us.1
  %polly.indvar629.us.1 = phi i64 [ %polly.indvar_next630.us.1, %polly.loop_exit635.loopexit.us.1 ], [ 0, %polly.loop_exit614.1 ]
  %209 = shl nuw nsw i64 %polly.indvar629.us.1, 3
  %scevgep650.us.1 = getelementptr i8, i8* %call2, i64 %209
  %polly.access.mul.Packed_MemRef_call1478646.us.1 = mul nuw nsw i64 %polly.indvar629.us.1, 80
  br label %polly.loop_header633.us.1

polly.loop_header633.us.1:                        ; preds = %polly.loop_exit642.us.1, %polly.loop_header626.us.1
  %indvars.iv1037.1 = phi i64 [ %indvars.iv.next1038.1, %polly.loop_exit642.us.1 ], [ 0, %polly.loop_header626.us.1 ]
  %polly.indvar637.us.1 = phi i64 [ %polly.indvar_next638.us.1, %polly.loop_exit642.us.1 ], [ 0, %polly.loop_header626.us.1 ]
  %smin1039.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1037.1, i64 63)
  %210 = add nuw nsw i64 %polly.indvar637.us.1, 64
  %211 = mul nuw nsw i64 %210, 480
  %scevgep651.us.1 = getelementptr i8, i8* %scevgep650.us.1, i64 %211
  %scevgep651652.us.1 = bitcast i8* %scevgep651.us.1 to double*
  %_p_scalar_653.us.1 = load double, double* %scevgep651652.us.1, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1478659.us.1 = add nuw nsw i64 %polly.indvar637.us.1, %polly.access.mul.Packed_MemRef_call1478646.us.1
  %polly.access.Packed_MemRef_call1478660.us.1 = getelementptr double, double* %Packed_MemRef_call1478, i64 %polly.access.add.Packed_MemRef_call1478659.us.1
  %_p_scalar_661.us.1 = load double, double* %polly.access.Packed_MemRef_call1478660.us.1, align 8
  %212 = mul nuw nsw i64 %210, 640
  br label %polly.loop_header640.us.1

polly.loop_header640.us.1:                        ; preds = %polly.loop_header640.us.1, %polly.loop_header633.us.1
  %polly.indvar643.us.1 = phi i64 [ 0, %polly.loop_header633.us.1 ], [ %polly.indvar_next644.us.1, %polly.loop_header640.us.1 ]
  %213 = add nuw nsw i64 %polly.indvar643.us.1, 64
  %polly.access.add.Packed_MemRef_call1478647.us.1 = add nuw nsw i64 %polly.indvar643.us.1, %polly.access.mul.Packed_MemRef_call1478646.us.1
  %polly.access.Packed_MemRef_call1478648.us.1 = getelementptr double, double* %Packed_MemRef_call1478, i64 %polly.access.add.Packed_MemRef_call1478647.us.1
  %_p_scalar_649.us.1 = load double, double* %polly.access.Packed_MemRef_call1478648.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_653.us.1, %_p_scalar_649.us.1
  %214 = mul nuw nsw i64 %213, 480
  %scevgep655.us.1 = getelementptr i8, i8* %scevgep650.us.1, i64 %214
  %scevgep655656.us.1 = bitcast i8* %scevgep655.us.1 to double*
  %_p_scalar_657.us.1 = load double, double* %scevgep655656.us.1, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_661.us.1, %_p_scalar_657.us.1
  %215 = shl i64 %213, 3
  %216 = add nuw nsw i64 %215, %212
  %scevgep662.us.1 = getelementptr i8, i8* %call, i64 %216
  %scevgep662663.us.1 = bitcast i8* %scevgep662.us.1 to double*
  %_p_scalar_664.us.1 = load double, double* %scevgep662663.us.1, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_664.us.1
  store double %p_add42.i.us.1, double* %scevgep662663.us.1, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next644.us.1 = add nuw nsw i64 %polly.indvar643.us.1, 1
  %exitcond1040.1.not = icmp eq i64 %polly.indvar643.us.1, %smin1039.1
  br i1 %exitcond1040.1.not, label %polly.loop_exit642.us.1, label %polly.loop_header640.us.1

polly.loop_exit642.us.1:                          ; preds = %polly.loop_header640.us.1
  %polly.indvar_next638.us.1 = add nuw nsw i64 %polly.indvar637.us.1, 1
  %indvars.iv.next1038.1 = add nuw nsw i64 %indvars.iv1037.1, 1
  %exitcond1045.1.not = icmp eq i64 %polly.indvar_next638.us.1, 16
  br i1 %exitcond1045.1.not, label %polly.loop_exit635.loopexit.us.1, label %polly.loop_header633.us.1

polly.loop_exit635.loopexit.us.1:                 ; preds = %polly.loop_exit642.us.1
  %polly.indvar_next630.us.1 = add nuw nsw i64 %polly.indvar629.us.1, 1
  %exitcond1046.1.not = icmp eq i64 %polly.indvar_next630.us.1, 60
  br i1 %exitcond1046.1.not, label %polly.loop_exit585.1, label %polly.loop_header626.us.1

polly.loop_exit585.1:                             ; preds = %polly.loop_exit635.loopexit.us.1
  tail call void @free(i8* nonnull %malloccall477)
  br label %kernel_syr2k.exit

polly.loop_header856.1:                           ; preds = %polly.loop_exit864, %polly.loop_exit864.1
  %polly.indvar859.1 = phi i64 [ %polly.indvar_next860.1, %polly.loop_exit864.1 ], [ 0, %polly.loop_exit864 ]
  %217 = mul nuw nsw i64 %polly.indvar859.1, 480
  %218 = trunc i64 %polly.indvar859.1 to i32
  %broadcast.splatinsert1378 = insertelement <4 x i32> poison, i32 %218, i32 0
  %broadcast.splat1379 = shufflevector <4 x i32> %broadcast.splatinsert1378, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1370

vector.body1370:                                  ; preds = %vector.body1370, %polly.loop_header856.1
  %index1372 = phi i64 [ 0, %polly.loop_header856.1 ], [ %index.next1373, %vector.body1370 ]
  %vec.ind1376 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header856.1 ], [ %vec.ind.next1377, %vector.body1370 ]
  %219 = add nuw nsw <4 x i64> %vec.ind1376, <i64 32, i64 32, i64 32, i64 32>
  %220 = trunc <4 x i64> %219 to <4 x i32>
  %221 = mul <4 x i32> %broadcast.splat1379, %220
  %222 = add <4 x i32> %221, <i32 1, i32 1, i32 1, i32 1>
  %223 = urem <4 x i32> %222, <i32 80, i32 80, i32 80, i32 80>
  %224 = sitofp <4 x i32> %223 to <4 x double>
  %225 = fmul fast <4 x double> %224, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %226 = extractelement <4 x i64> %219, i32 0
  %227 = shl i64 %226, 3
  %228 = add i64 %227, %217
  %229 = getelementptr i8, i8* %call1, i64 %228
  %230 = bitcast i8* %229 to <4 x double>*
  store <4 x double> %225, <4 x double>* %230, align 8, !alias.scope !102, !noalias !107
  %index.next1373 = add i64 %index1372, 4
  %vec.ind.next1377 = add <4 x i64> %vec.ind1376, <i64 4, i64 4, i64 4, i64 4>
  %231 = icmp eq i64 %index.next1373, 28
  br i1 %231, label %polly.loop_exit864.1, label %vector.body1370, !llvm.loop !109

polly.loop_exit864.1:                             ; preds = %vector.body1370
  %polly.indvar_next860.1 = add nuw nsw i64 %polly.indvar859.1, 1
  %exitcond1054.1.not = icmp eq i64 %polly.indvar_next860.1, 32
  br i1 %exitcond1054.1.not, label %polly.loop_header856.11077, label %polly.loop_header856.1

polly.loop_header856.11077:                       ; preds = %polly.loop_exit864.1, %polly.loop_exit864.11088
  %polly.indvar859.11076 = phi i64 [ %polly.indvar_next860.11086, %polly.loop_exit864.11088 ], [ 0, %polly.loop_exit864.1 ]
  %232 = add nuw nsw i64 %polly.indvar859.11076, 32
  %233 = mul nuw nsw i64 %232, 480
  %234 = trunc i64 %232 to i32
  %broadcast.splatinsert1392 = insertelement <4 x i32> poison, i32 %234, i32 0
  %broadcast.splat1393 = shufflevector <4 x i32> %broadcast.splatinsert1392, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1382

vector.body1382:                                  ; preds = %vector.body1382, %polly.loop_header856.11077
  %index1384 = phi i64 [ 0, %polly.loop_header856.11077 ], [ %index.next1385, %vector.body1382 ]
  %vec.ind1390 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header856.11077 ], [ %vec.ind.next1391, %vector.body1382 ]
  %235 = mul <4 x i32> %vec.ind1390, %broadcast.splat1393
  %236 = add <4 x i32> %235, <i32 1, i32 1, i32 1, i32 1>
  %237 = urem <4 x i32> %236, <i32 80, i32 80, i32 80, i32 80>
  %238 = sitofp <4 x i32> %237 to <4 x double>
  %239 = fmul fast <4 x double> %238, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %240 = shl i64 %index1384, 3
  %241 = add i64 %240, %233
  %242 = getelementptr i8, i8* %call1, i64 %241
  %243 = bitcast i8* %242 to <4 x double>*
  store <4 x double> %239, <4 x double>* %243, align 8, !alias.scope !102, !noalias !107
  %index.next1385 = add i64 %index1384, 4
  %vec.ind.next1391 = add <4 x i32> %vec.ind1390, <i32 4, i32 4, i32 4, i32 4>
  %244 = icmp eq i64 %index.next1385, 32
  br i1 %244, label %polly.loop_exit864.11088, label %vector.body1382, !llvm.loop !110

polly.loop_exit864.11088:                         ; preds = %vector.body1382
  %polly.indvar_next860.11086 = add nuw nsw i64 %polly.indvar859.11076, 1
  %exitcond1054.11087.not = icmp eq i64 %polly.indvar_next860.11086, 32
  br i1 %exitcond1054.11087.not, label %polly.loop_header856.1.1, label %polly.loop_header856.11077

polly.loop_header856.1.1:                         ; preds = %polly.loop_exit864.11088, %polly.loop_exit864.1.1
  %polly.indvar859.1.1 = phi i64 [ %polly.indvar_next860.1.1, %polly.loop_exit864.1.1 ], [ 0, %polly.loop_exit864.11088 ]
  %245 = add nuw nsw i64 %polly.indvar859.1.1, 32
  %246 = mul nuw nsw i64 %245, 480
  %247 = trunc i64 %245 to i32
  %broadcast.splatinsert1404 = insertelement <4 x i32> poison, i32 %247, i32 0
  %broadcast.splat1405 = shufflevector <4 x i32> %broadcast.splatinsert1404, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1396

vector.body1396:                                  ; preds = %vector.body1396, %polly.loop_header856.1.1
  %index1398 = phi i64 [ 0, %polly.loop_header856.1.1 ], [ %index.next1399, %vector.body1396 ]
  %vec.ind1402 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header856.1.1 ], [ %vec.ind.next1403, %vector.body1396 ]
  %248 = add nuw nsw <4 x i64> %vec.ind1402, <i64 32, i64 32, i64 32, i64 32>
  %249 = trunc <4 x i64> %248 to <4 x i32>
  %250 = mul <4 x i32> %broadcast.splat1405, %249
  %251 = add <4 x i32> %250, <i32 1, i32 1, i32 1, i32 1>
  %252 = urem <4 x i32> %251, <i32 80, i32 80, i32 80, i32 80>
  %253 = sitofp <4 x i32> %252 to <4 x double>
  %254 = fmul fast <4 x double> %253, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %255 = extractelement <4 x i64> %248, i32 0
  %256 = shl i64 %255, 3
  %257 = add i64 %256, %246
  %258 = getelementptr i8, i8* %call1, i64 %257
  %259 = bitcast i8* %258 to <4 x double>*
  store <4 x double> %254, <4 x double>* %259, align 8, !alias.scope !102, !noalias !107
  %index.next1399 = add i64 %index1398, 4
  %vec.ind.next1403 = add <4 x i64> %vec.ind1402, <i64 4, i64 4, i64 4, i64 4>
  %260 = icmp eq i64 %index.next1399, 28
  br i1 %260, label %polly.loop_exit864.1.1, label %vector.body1396, !llvm.loop !111

polly.loop_exit864.1.1:                           ; preds = %vector.body1396
  %polly.indvar_next860.1.1 = add nuw nsw i64 %polly.indvar859.1.1, 1
  %exitcond1054.1.1.not = icmp eq i64 %polly.indvar_next860.1.1, 32
  br i1 %exitcond1054.1.1.not, label %polly.loop_header856.2, label %polly.loop_header856.1.1

polly.loop_header856.2:                           ; preds = %polly.loop_exit864.1.1, %polly.loop_exit864.2
  %polly.indvar859.2 = phi i64 [ %polly.indvar_next860.2, %polly.loop_exit864.2 ], [ 0, %polly.loop_exit864.1.1 ]
  %261 = add nuw nsw i64 %polly.indvar859.2, 64
  %262 = mul nuw nsw i64 %261, 480
  %263 = trunc i64 %261 to i32
  %broadcast.splatinsert1418 = insertelement <4 x i32> poison, i32 %263, i32 0
  %broadcast.splat1419 = shufflevector <4 x i32> %broadcast.splatinsert1418, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1408

vector.body1408:                                  ; preds = %vector.body1408, %polly.loop_header856.2
  %index1410 = phi i64 [ 0, %polly.loop_header856.2 ], [ %index.next1411, %vector.body1408 ]
  %vec.ind1416 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header856.2 ], [ %vec.ind.next1417, %vector.body1408 ]
  %264 = mul <4 x i32> %vec.ind1416, %broadcast.splat1419
  %265 = add <4 x i32> %264, <i32 1, i32 1, i32 1, i32 1>
  %266 = urem <4 x i32> %265, <i32 80, i32 80, i32 80, i32 80>
  %267 = sitofp <4 x i32> %266 to <4 x double>
  %268 = fmul fast <4 x double> %267, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %269 = shl i64 %index1410, 3
  %270 = add i64 %269, %262
  %271 = getelementptr i8, i8* %call1, i64 %270
  %272 = bitcast i8* %271 to <4 x double>*
  store <4 x double> %268, <4 x double>* %272, align 8, !alias.scope !102, !noalias !107
  %index.next1411 = add i64 %index1410, 4
  %vec.ind.next1417 = add <4 x i32> %vec.ind1416, <i32 4, i32 4, i32 4, i32 4>
  %273 = icmp eq i64 %index.next1411, 32
  br i1 %273, label %polly.loop_exit864.2, label %vector.body1408, !llvm.loop !112

polly.loop_exit864.2:                             ; preds = %vector.body1408
  %polly.indvar_next860.2 = add nuw nsw i64 %polly.indvar859.2, 1
  %exitcond1054.2.not = icmp eq i64 %polly.indvar_next860.2, 16
  br i1 %exitcond1054.2.not, label %polly.loop_header856.1.2, label %polly.loop_header856.2

polly.loop_header856.1.2:                         ; preds = %polly.loop_exit864.2, %polly.loop_exit864.1.2
  %polly.indvar859.1.2 = phi i64 [ %polly.indvar_next860.1.2, %polly.loop_exit864.1.2 ], [ 0, %polly.loop_exit864.2 ]
  %274 = add nuw nsw i64 %polly.indvar859.1.2, 64
  %275 = mul nuw nsw i64 %274, 480
  %276 = trunc i64 %274 to i32
  %broadcast.splatinsert1430 = insertelement <4 x i32> poison, i32 %276, i32 0
  %broadcast.splat1431 = shufflevector <4 x i32> %broadcast.splatinsert1430, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1422

vector.body1422:                                  ; preds = %vector.body1422, %polly.loop_header856.1.2
  %index1424 = phi i64 [ 0, %polly.loop_header856.1.2 ], [ %index.next1425, %vector.body1422 ]
  %vec.ind1428 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header856.1.2 ], [ %vec.ind.next1429, %vector.body1422 ]
  %277 = add nuw nsw <4 x i64> %vec.ind1428, <i64 32, i64 32, i64 32, i64 32>
  %278 = trunc <4 x i64> %277 to <4 x i32>
  %279 = mul <4 x i32> %broadcast.splat1431, %278
  %280 = add <4 x i32> %279, <i32 1, i32 1, i32 1, i32 1>
  %281 = urem <4 x i32> %280, <i32 80, i32 80, i32 80, i32 80>
  %282 = sitofp <4 x i32> %281 to <4 x double>
  %283 = fmul fast <4 x double> %282, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %284 = extractelement <4 x i64> %277, i32 0
  %285 = shl i64 %284, 3
  %286 = add i64 %285, %275
  %287 = getelementptr i8, i8* %call1, i64 %286
  %288 = bitcast i8* %287 to <4 x double>*
  store <4 x double> %283, <4 x double>* %288, align 8, !alias.scope !102, !noalias !107
  %index.next1425 = add i64 %index1424, 4
  %vec.ind.next1429 = add <4 x i64> %vec.ind1428, <i64 4, i64 4, i64 4, i64 4>
  %289 = icmp eq i64 %index.next1425, 28
  br i1 %289, label %polly.loop_exit864.1.2, label %vector.body1422, !llvm.loop !113

polly.loop_exit864.1.2:                           ; preds = %vector.body1422
  %polly.indvar_next860.1.2 = add nuw nsw i64 %polly.indvar859.1.2, 1
  %exitcond1054.1.2.not = icmp eq i64 %polly.indvar_next860.1.2, 16
  br i1 %exitcond1054.1.2.not, label %init_array.exit, label %polly.loop_header856.1.2

polly.loop_header830.1:                           ; preds = %polly.loop_exit838, %polly.loop_exit838.1
  %polly.indvar833.1 = phi i64 [ %polly.indvar_next834.1, %polly.loop_exit838.1 ], [ 0, %polly.loop_exit838 ]
  %290 = mul nuw nsw i64 %polly.indvar833.1, 480
  %291 = trunc i64 %polly.indvar833.1 to i32
  %broadcast.splatinsert1300 = insertelement <4 x i32> poison, i32 %291, i32 0
  %broadcast.splat1301 = shufflevector <4 x i32> %broadcast.splatinsert1300, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1292

vector.body1292:                                  ; preds = %vector.body1292, %polly.loop_header830.1
  %index1294 = phi i64 [ 0, %polly.loop_header830.1 ], [ %index.next1295, %vector.body1292 ]
  %vec.ind1298 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header830.1 ], [ %vec.ind.next1299, %vector.body1292 ]
  %292 = add nuw nsw <4 x i64> %vec.ind1298, <i64 32, i64 32, i64 32, i64 32>
  %293 = trunc <4 x i64> %292 to <4 x i32>
  %294 = mul <4 x i32> %broadcast.splat1301, %293
  %295 = add <4 x i32> %294, <i32 2, i32 2, i32 2, i32 2>
  %296 = urem <4 x i32> %295, <i32 60, i32 60, i32 60, i32 60>
  %297 = sitofp <4 x i32> %296 to <4 x double>
  %298 = fmul fast <4 x double> %297, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %299 = extractelement <4 x i64> %292, i32 0
  %300 = shl i64 %299, 3
  %301 = add i64 %300, %290
  %302 = getelementptr i8, i8* %call2, i64 %301
  %303 = bitcast i8* %302 to <4 x double>*
  store <4 x double> %298, <4 x double>* %303, align 8, !alias.scope !103, !noalias !105
  %index.next1295 = add i64 %index1294, 4
  %vec.ind.next1299 = add <4 x i64> %vec.ind1298, <i64 4, i64 4, i64 4, i64 4>
  %304 = icmp eq i64 %index.next1295, 28
  br i1 %304, label %polly.loop_exit838.1, label %vector.body1292, !llvm.loop !114

polly.loop_exit838.1:                             ; preds = %vector.body1292
  %polly.indvar_next834.1 = add nuw nsw i64 %polly.indvar833.1, 1
  %exitcond1060.1.not = icmp eq i64 %polly.indvar_next834.1, 32
  br i1 %exitcond1060.1.not, label %polly.loop_header830.11091, label %polly.loop_header830.1

polly.loop_header830.11091:                       ; preds = %polly.loop_exit838.1, %polly.loop_exit838.11102
  %polly.indvar833.11090 = phi i64 [ %polly.indvar_next834.11100, %polly.loop_exit838.11102 ], [ 0, %polly.loop_exit838.1 ]
  %305 = add nuw nsw i64 %polly.indvar833.11090, 32
  %306 = mul nuw nsw i64 %305, 480
  %307 = trunc i64 %305 to i32
  %broadcast.splatinsert1314 = insertelement <4 x i32> poison, i32 %307, i32 0
  %broadcast.splat1315 = shufflevector <4 x i32> %broadcast.splatinsert1314, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1304

vector.body1304:                                  ; preds = %vector.body1304, %polly.loop_header830.11091
  %index1306 = phi i64 [ 0, %polly.loop_header830.11091 ], [ %index.next1307, %vector.body1304 ]
  %vec.ind1312 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header830.11091 ], [ %vec.ind.next1313, %vector.body1304 ]
  %308 = mul <4 x i32> %vec.ind1312, %broadcast.splat1315
  %309 = add <4 x i32> %308, <i32 2, i32 2, i32 2, i32 2>
  %310 = urem <4 x i32> %309, <i32 60, i32 60, i32 60, i32 60>
  %311 = sitofp <4 x i32> %310 to <4 x double>
  %312 = fmul fast <4 x double> %311, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %313 = shl i64 %index1306, 3
  %314 = add i64 %313, %306
  %315 = getelementptr i8, i8* %call2, i64 %314
  %316 = bitcast i8* %315 to <4 x double>*
  store <4 x double> %312, <4 x double>* %316, align 8, !alias.scope !103, !noalias !105
  %index.next1307 = add i64 %index1306, 4
  %vec.ind.next1313 = add <4 x i32> %vec.ind1312, <i32 4, i32 4, i32 4, i32 4>
  %317 = icmp eq i64 %index.next1307, 32
  br i1 %317, label %polly.loop_exit838.11102, label %vector.body1304, !llvm.loop !115

polly.loop_exit838.11102:                         ; preds = %vector.body1304
  %polly.indvar_next834.11100 = add nuw nsw i64 %polly.indvar833.11090, 1
  %exitcond1060.11101.not = icmp eq i64 %polly.indvar_next834.11100, 32
  br i1 %exitcond1060.11101.not, label %polly.loop_header830.1.1, label %polly.loop_header830.11091

polly.loop_header830.1.1:                         ; preds = %polly.loop_exit838.11102, %polly.loop_exit838.1.1
  %polly.indvar833.1.1 = phi i64 [ %polly.indvar_next834.1.1, %polly.loop_exit838.1.1 ], [ 0, %polly.loop_exit838.11102 ]
  %318 = add nuw nsw i64 %polly.indvar833.1.1, 32
  %319 = mul nuw nsw i64 %318, 480
  %320 = trunc i64 %318 to i32
  %broadcast.splatinsert1326 = insertelement <4 x i32> poison, i32 %320, i32 0
  %broadcast.splat1327 = shufflevector <4 x i32> %broadcast.splatinsert1326, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1318

vector.body1318:                                  ; preds = %vector.body1318, %polly.loop_header830.1.1
  %index1320 = phi i64 [ 0, %polly.loop_header830.1.1 ], [ %index.next1321, %vector.body1318 ]
  %vec.ind1324 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header830.1.1 ], [ %vec.ind.next1325, %vector.body1318 ]
  %321 = add nuw nsw <4 x i64> %vec.ind1324, <i64 32, i64 32, i64 32, i64 32>
  %322 = trunc <4 x i64> %321 to <4 x i32>
  %323 = mul <4 x i32> %broadcast.splat1327, %322
  %324 = add <4 x i32> %323, <i32 2, i32 2, i32 2, i32 2>
  %325 = urem <4 x i32> %324, <i32 60, i32 60, i32 60, i32 60>
  %326 = sitofp <4 x i32> %325 to <4 x double>
  %327 = fmul fast <4 x double> %326, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %328 = extractelement <4 x i64> %321, i32 0
  %329 = shl i64 %328, 3
  %330 = add i64 %329, %319
  %331 = getelementptr i8, i8* %call2, i64 %330
  %332 = bitcast i8* %331 to <4 x double>*
  store <4 x double> %327, <4 x double>* %332, align 8, !alias.scope !103, !noalias !105
  %index.next1321 = add i64 %index1320, 4
  %vec.ind.next1325 = add <4 x i64> %vec.ind1324, <i64 4, i64 4, i64 4, i64 4>
  %333 = icmp eq i64 %index.next1321, 28
  br i1 %333, label %polly.loop_exit838.1.1, label %vector.body1318, !llvm.loop !116

polly.loop_exit838.1.1:                           ; preds = %vector.body1318
  %polly.indvar_next834.1.1 = add nuw nsw i64 %polly.indvar833.1.1, 1
  %exitcond1060.1.1.not = icmp eq i64 %polly.indvar_next834.1.1, 32
  br i1 %exitcond1060.1.1.not, label %polly.loop_header830.2, label %polly.loop_header830.1.1

polly.loop_header830.2:                           ; preds = %polly.loop_exit838.1.1, %polly.loop_exit838.2
  %polly.indvar833.2 = phi i64 [ %polly.indvar_next834.2, %polly.loop_exit838.2 ], [ 0, %polly.loop_exit838.1.1 ]
  %334 = add nuw nsw i64 %polly.indvar833.2, 64
  %335 = mul nuw nsw i64 %334, 480
  %336 = trunc i64 %334 to i32
  %broadcast.splatinsert1340 = insertelement <4 x i32> poison, i32 %336, i32 0
  %broadcast.splat1341 = shufflevector <4 x i32> %broadcast.splatinsert1340, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1330

vector.body1330:                                  ; preds = %vector.body1330, %polly.loop_header830.2
  %index1332 = phi i64 [ 0, %polly.loop_header830.2 ], [ %index.next1333, %vector.body1330 ]
  %vec.ind1338 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header830.2 ], [ %vec.ind.next1339, %vector.body1330 ]
  %337 = mul <4 x i32> %vec.ind1338, %broadcast.splat1341
  %338 = add <4 x i32> %337, <i32 2, i32 2, i32 2, i32 2>
  %339 = urem <4 x i32> %338, <i32 60, i32 60, i32 60, i32 60>
  %340 = sitofp <4 x i32> %339 to <4 x double>
  %341 = fmul fast <4 x double> %340, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %342 = shl i64 %index1332, 3
  %343 = add i64 %342, %335
  %344 = getelementptr i8, i8* %call2, i64 %343
  %345 = bitcast i8* %344 to <4 x double>*
  store <4 x double> %341, <4 x double>* %345, align 8, !alias.scope !103, !noalias !105
  %index.next1333 = add i64 %index1332, 4
  %vec.ind.next1339 = add <4 x i32> %vec.ind1338, <i32 4, i32 4, i32 4, i32 4>
  %346 = icmp eq i64 %index.next1333, 32
  br i1 %346, label %polly.loop_exit838.2, label %vector.body1330, !llvm.loop !117

polly.loop_exit838.2:                             ; preds = %vector.body1330
  %polly.indvar_next834.2 = add nuw nsw i64 %polly.indvar833.2, 1
  %exitcond1060.2.not = icmp eq i64 %polly.indvar_next834.2, 16
  br i1 %exitcond1060.2.not, label %polly.loop_header830.1.2, label %polly.loop_header830.2

polly.loop_header830.1.2:                         ; preds = %polly.loop_exit838.2, %polly.loop_exit838.1.2
  %polly.indvar833.1.2 = phi i64 [ %polly.indvar_next834.1.2, %polly.loop_exit838.1.2 ], [ 0, %polly.loop_exit838.2 ]
  %347 = add nuw nsw i64 %polly.indvar833.1.2, 64
  %348 = mul nuw nsw i64 %347, 480
  %349 = trunc i64 %347 to i32
  %broadcast.splatinsert1352 = insertelement <4 x i32> poison, i32 %349, i32 0
  %broadcast.splat1353 = shufflevector <4 x i32> %broadcast.splatinsert1352, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1344

vector.body1344:                                  ; preds = %vector.body1344, %polly.loop_header830.1.2
  %index1346 = phi i64 [ 0, %polly.loop_header830.1.2 ], [ %index.next1347, %vector.body1344 ]
  %vec.ind1350 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header830.1.2 ], [ %vec.ind.next1351, %vector.body1344 ]
  %350 = add nuw nsw <4 x i64> %vec.ind1350, <i64 32, i64 32, i64 32, i64 32>
  %351 = trunc <4 x i64> %350 to <4 x i32>
  %352 = mul <4 x i32> %broadcast.splat1353, %351
  %353 = add <4 x i32> %352, <i32 2, i32 2, i32 2, i32 2>
  %354 = urem <4 x i32> %353, <i32 60, i32 60, i32 60, i32 60>
  %355 = sitofp <4 x i32> %354 to <4 x double>
  %356 = fmul fast <4 x double> %355, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %357 = extractelement <4 x i64> %350, i32 0
  %358 = shl i64 %357, 3
  %359 = add i64 %358, %348
  %360 = getelementptr i8, i8* %call2, i64 %359
  %361 = bitcast i8* %360 to <4 x double>*
  store <4 x double> %356, <4 x double>* %361, align 8, !alias.scope !103, !noalias !105
  %index.next1347 = add i64 %index1346, 4
  %vec.ind.next1351 = add <4 x i64> %vec.ind1350, <i64 4, i64 4, i64 4, i64 4>
  %362 = icmp eq i64 %index.next1347, 28
  br i1 %362, label %polly.loop_exit838.1.2, label %vector.body1344, !llvm.loop !118

polly.loop_exit838.1.2:                           ; preds = %vector.body1344
  %polly.indvar_next834.1.2 = add nuw nsw i64 %polly.indvar833.1.2, 1
  %exitcond1060.1.2.not = icmp eq i64 %polly.indvar_next834.1.2, 16
  br i1 %exitcond1060.1.2.not, label %polly.loop_header856, label %polly.loop_header830.1.2

polly.loop_header803.1:                           ; preds = %polly.loop_exit811, %polly.loop_exit811.1
  %polly.indvar806.1 = phi i64 [ %polly.indvar_next807.1, %polly.loop_exit811.1 ], [ 0, %polly.loop_exit811 ]
  %363 = mul nuw nsw i64 %polly.indvar806.1, 640
  %364 = trunc i64 %polly.indvar806.1 to i32
  %broadcast.splatinsert1186 = insertelement <4 x i32> poison, i32 %364, i32 0
  %broadcast.splat1187 = shufflevector <4 x i32> %broadcast.splatinsert1186, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1178

vector.body1178:                                  ; preds = %vector.body1178, %polly.loop_header803.1
  %index1180 = phi i64 [ 0, %polly.loop_header803.1 ], [ %index.next1181, %vector.body1178 ]
  %vec.ind1184 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header803.1 ], [ %vec.ind.next1185, %vector.body1178 ]
  %365 = add nuw nsw <4 x i64> %vec.ind1184, <i64 32, i64 32, i64 32, i64 32>
  %366 = trunc <4 x i64> %365 to <4 x i32>
  %367 = mul <4 x i32> %broadcast.splat1187, %366
  %368 = add <4 x i32> %367, <i32 3, i32 3, i32 3, i32 3>
  %369 = urem <4 x i32> %368, <i32 80, i32 80, i32 80, i32 80>
  %370 = sitofp <4 x i32> %369 to <4 x double>
  %371 = fmul fast <4 x double> %370, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %372 = extractelement <4 x i64> %365, i32 0
  %373 = shl i64 %372, 3
  %374 = add nuw nsw i64 %373, %363
  %375 = getelementptr i8, i8* %call, i64 %374
  %376 = bitcast i8* %375 to <4 x double>*
  store <4 x double> %371, <4 x double>* %376, align 8, !alias.scope !99, !noalias !101
  %index.next1181 = add i64 %index1180, 4
  %vec.ind.next1185 = add <4 x i64> %vec.ind1184, <i64 4, i64 4, i64 4, i64 4>
  %377 = icmp eq i64 %index.next1181, 32
  br i1 %377, label %polly.loop_exit811.1, label %vector.body1178, !llvm.loop !119

polly.loop_exit811.1:                             ; preds = %vector.body1178
  %polly.indvar_next807.1 = add nuw nsw i64 %polly.indvar806.1, 1
  %exitcond1069.1.not = icmp eq i64 %polly.indvar_next807.1, 32
  br i1 %exitcond1069.1.not, label %polly.loop_header803.2, label %polly.loop_header803.1

polly.loop_header803.2:                           ; preds = %polly.loop_exit811.1, %polly.loop_exit811.2
  %polly.indvar806.2 = phi i64 [ %polly.indvar_next807.2, %polly.loop_exit811.2 ], [ 0, %polly.loop_exit811.1 ]
  %378 = mul nuw nsw i64 %polly.indvar806.2, 640
  %379 = trunc i64 %polly.indvar806.2 to i32
  %broadcast.splatinsert1198 = insertelement <4 x i32> poison, i32 %379, i32 0
  %broadcast.splat1199 = shufflevector <4 x i32> %broadcast.splatinsert1198, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1190

vector.body1190:                                  ; preds = %vector.body1190, %polly.loop_header803.2
  %index1192 = phi i64 [ 0, %polly.loop_header803.2 ], [ %index.next1193, %vector.body1190 ]
  %vec.ind1196 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header803.2 ], [ %vec.ind.next1197, %vector.body1190 ]
  %380 = add nuw nsw <4 x i64> %vec.ind1196, <i64 64, i64 64, i64 64, i64 64>
  %381 = trunc <4 x i64> %380 to <4 x i32>
  %382 = mul <4 x i32> %broadcast.splat1199, %381
  %383 = add <4 x i32> %382, <i32 3, i32 3, i32 3, i32 3>
  %384 = urem <4 x i32> %383, <i32 80, i32 80, i32 80, i32 80>
  %385 = sitofp <4 x i32> %384 to <4 x double>
  %386 = fmul fast <4 x double> %385, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %387 = extractelement <4 x i64> %380, i32 0
  %388 = shl i64 %387, 3
  %389 = add nuw nsw i64 %388, %378
  %390 = getelementptr i8, i8* %call, i64 %389
  %391 = bitcast i8* %390 to <4 x double>*
  store <4 x double> %386, <4 x double>* %391, align 8, !alias.scope !99, !noalias !101
  %index.next1193 = add i64 %index1192, 4
  %vec.ind.next1197 = add <4 x i64> %vec.ind1196, <i64 4, i64 4, i64 4, i64 4>
  %392 = icmp eq i64 %index.next1193, 16
  br i1 %392, label %polly.loop_exit811.2, label %vector.body1190, !llvm.loop !120

polly.loop_exit811.2:                             ; preds = %vector.body1190
  %polly.indvar_next807.2 = add nuw nsw i64 %polly.indvar806.2, 1
  %exitcond1069.2.not = icmp eq i64 %polly.indvar_next807.2, 32
  br i1 %exitcond1069.2.not, label %polly.loop_header803.11105, label %polly.loop_header803.2

polly.loop_header803.11105:                       ; preds = %polly.loop_exit811.2, %polly.loop_exit811.11116
  %polly.indvar806.11104 = phi i64 [ %polly.indvar_next807.11114, %polly.loop_exit811.11116 ], [ 0, %polly.loop_exit811.2 ]
  %393 = add nuw nsw i64 %polly.indvar806.11104, 32
  %394 = mul nuw nsw i64 %393, 640
  %395 = trunc i64 %393 to i32
  %broadcast.splatinsert1212 = insertelement <4 x i32> poison, i32 %395, i32 0
  %broadcast.splat1213 = shufflevector <4 x i32> %broadcast.splatinsert1212, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1202

vector.body1202:                                  ; preds = %vector.body1202, %polly.loop_header803.11105
  %index1204 = phi i64 [ 0, %polly.loop_header803.11105 ], [ %index.next1205, %vector.body1202 ]
  %vec.ind1210 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header803.11105 ], [ %vec.ind.next1211, %vector.body1202 ]
  %396 = mul <4 x i32> %vec.ind1210, %broadcast.splat1213
  %397 = add <4 x i32> %396, <i32 3, i32 3, i32 3, i32 3>
  %398 = urem <4 x i32> %397, <i32 80, i32 80, i32 80, i32 80>
  %399 = sitofp <4 x i32> %398 to <4 x double>
  %400 = fmul fast <4 x double> %399, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %401 = shl i64 %index1204, 3
  %402 = add nuw nsw i64 %401, %394
  %403 = getelementptr i8, i8* %call, i64 %402
  %404 = bitcast i8* %403 to <4 x double>*
  store <4 x double> %400, <4 x double>* %404, align 8, !alias.scope !99, !noalias !101
  %index.next1205 = add i64 %index1204, 4
  %vec.ind.next1211 = add <4 x i32> %vec.ind1210, <i32 4, i32 4, i32 4, i32 4>
  %405 = icmp eq i64 %index.next1205, 32
  br i1 %405, label %polly.loop_exit811.11116, label %vector.body1202, !llvm.loop !121

polly.loop_exit811.11116:                         ; preds = %vector.body1202
  %polly.indvar_next807.11114 = add nuw nsw i64 %polly.indvar806.11104, 1
  %exitcond1069.11115.not = icmp eq i64 %polly.indvar_next807.11114, 32
  br i1 %exitcond1069.11115.not, label %polly.loop_header803.1.1, label %polly.loop_header803.11105

polly.loop_header803.1.1:                         ; preds = %polly.loop_exit811.11116, %polly.loop_exit811.1.1
  %polly.indvar806.1.1 = phi i64 [ %polly.indvar_next807.1.1, %polly.loop_exit811.1.1 ], [ 0, %polly.loop_exit811.11116 ]
  %406 = add nuw nsw i64 %polly.indvar806.1.1, 32
  %407 = mul nuw nsw i64 %406, 640
  %408 = trunc i64 %406 to i32
  %broadcast.splatinsert1224 = insertelement <4 x i32> poison, i32 %408, i32 0
  %broadcast.splat1225 = shufflevector <4 x i32> %broadcast.splatinsert1224, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1216

vector.body1216:                                  ; preds = %vector.body1216, %polly.loop_header803.1.1
  %index1218 = phi i64 [ 0, %polly.loop_header803.1.1 ], [ %index.next1219, %vector.body1216 ]
  %vec.ind1222 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header803.1.1 ], [ %vec.ind.next1223, %vector.body1216 ]
  %409 = add nuw nsw <4 x i64> %vec.ind1222, <i64 32, i64 32, i64 32, i64 32>
  %410 = trunc <4 x i64> %409 to <4 x i32>
  %411 = mul <4 x i32> %broadcast.splat1225, %410
  %412 = add <4 x i32> %411, <i32 3, i32 3, i32 3, i32 3>
  %413 = urem <4 x i32> %412, <i32 80, i32 80, i32 80, i32 80>
  %414 = sitofp <4 x i32> %413 to <4 x double>
  %415 = fmul fast <4 x double> %414, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %416 = extractelement <4 x i64> %409, i32 0
  %417 = shl i64 %416, 3
  %418 = add nuw nsw i64 %417, %407
  %419 = getelementptr i8, i8* %call, i64 %418
  %420 = bitcast i8* %419 to <4 x double>*
  store <4 x double> %415, <4 x double>* %420, align 8, !alias.scope !99, !noalias !101
  %index.next1219 = add i64 %index1218, 4
  %vec.ind.next1223 = add <4 x i64> %vec.ind1222, <i64 4, i64 4, i64 4, i64 4>
  %421 = icmp eq i64 %index.next1219, 32
  br i1 %421, label %polly.loop_exit811.1.1, label %vector.body1216, !llvm.loop !122

polly.loop_exit811.1.1:                           ; preds = %vector.body1216
  %polly.indvar_next807.1.1 = add nuw nsw i64 %polly.indvar806.1.1, 1
  %exitcond1069.1.1.not = icmp eq i64 %polly.indvar_next807.1.1, 32
  br i1 %exitcond1069.1.1.not, label %polly.loop_header803.2.1, label %polly.loop_header803.1.1

polly.loop_header803.2.1:                         ; preds = %polly.loop_exit811.1.1, %polly.loop_exit811.2.1
  %polly.indvar806.2.1 = phi i64 [ %polly.indvar_next807.2.1, %polly.loop_exit811.2.1 ], [ 0, %polly.loop_exit811.1.1 ]
  %422 = add nuw nsw i64 %polly.indvar806.2.1, 32
  %423 = mul nuw nsw i64 %422, 640
  %424 = trunc i64 %422 to i32
  %broadcast.splatinsert1236 = insertelement <4 x i32> poison, i32 %424, i32 0
  %broadcast.splat1237 = shufflevector <4 x i32> %broadcast.splatinsert1236, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1228

vector.body1228:                                  ; preds = %vector.body1228, %polly.loop_header803.2.1
  %index1230 = phi i64 [ 0, %polly.loop_header803.2.1 ], [ %index.next1231, %vector.body1228 ]
  %vec.ind1234 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header803.2.1 ], [ %vec.ind.next1235, %vector.body1228 ]
  %425 = add nuw nsw <4 x i64> %vec.ind1234, <i64 64, i64 64, i64 64, i64 64>
  %426 = trunc <4 x i64> %425 to <4 x i32>
  %427 = mul <4 x i32> %broadcast.splat1237, %426
  %428 = add <4 x i32> %427, <i32 3, i32 3, i32 3, i32 3>
  %429 = urem <4 x i32> %428, <i32 80, i32 80, i32 80, i32 80>
  %430 = sitofp <4 x i32> %429 to <4 x double>
  %431 = fmul fast <4 x double> %430, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %432 = extractelement <4 x i64> %425, i32 0
  %433 = shl i64 %432, 3
  %434 = add nuw nsw i64 %433, %423
  %435 = getelementptr i8, i8* %call, i64 %434
  %436 = bitcast i8* %435 to <4 x double>*
  store <4 x double> %431, <4 x double>* %436, align 8, !alias.scope !99, !noalias !101
  %index.next1231 = add i64 %index1230, 4
  %vec.ind.next1235 = add <4 x i64> %vec.ind1234, <i64 4, i64 4, i64 4, i64 4>
  %437 = icmp eq i64 %index.next1231, 16
  br i1 %437, label %polly.loop_exit811.2.1, label %vector.body1228, !llvm.loop !123

polly.loop_exit811.2.1:                           ; preds = %vector.body1228
  %polly.indvar_next807.2.1 = add nuw nsw i64 %polly.indvar806.2.1, 1
  %exitcond1069.2.1.not = icmp eq i64 %polly.indvar_next807.2.1, 32
  br i1 %exitcond1069.2.1.not, label %polly.loop_header803.21119, label %polly.loop_header803.2.1

polly.loop_header803.21119:                       ; preds = %polly.loop_exit811.2.1, %polly.loop_exit811.21130
  %polly.indvar806.21118 = phi i64 [ %polly.indvar_next807.21128, %polly.loop_exit811.21130 ], [ 0, %polly.loop_exit811.2.1 ]
  %438 = add nuw nsw i64 %polly.indvar806.21118, 64
  %439 = mul nuw nsw i64 %438, 640
  %440 = trunc i64 %438 to i32
  %broadcast.splatinsert1250 = insertelement <4 x i32> poison, i32 %440, i32 0
  %broadcast.splat1251 = shufflevector <4 x i32> %broadcast.splatinsert1250, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1240

vector.body1240:                                  ; preds = %vector.body1240, %polly.loop_header803.21119
  %index1242 = phi i64 [ 0, %polly.loop_header803.21119 ], [ %index.next1243, %vector.body1240 ]
  %vec.ind1248 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header803.21119 ], [ %vec.ind.next1249, %vector.body1240 ]
  %441 = mul <4 x i32> %vec.ind1248, %broadcast.splat1251
  %442 = add <4 x i32> %441, <i32 3, i32 3, i32 3, i32 3>
  %443 = urem <4 x i32> %442, <i32 80, i32 80, i32 80, i32 80>
  %444 = sitofp <4 x i32> %443 to <4 x double>
  %445 = fmul fast <4 x double> %444, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %446 = shl i64 %index1242, 3
  %447 = add nuw nsw i64 %446, %439
  %448 = getelementptr i8, i8* %call, i64 %447
  %449 = bitcast i8* %448 to <4 x double>*
  store <4 x double> %445, <4 x double>* %449, align 8, !alias.scope !99, !noalias !101
  %index.next1243 = add i64 %index1242, 4
  %vec.ind.next1249 = add <4 x i32> %vec.ind1248, <i32 4, i32 4, i32 4, i32 4>
  %450 = icmp eq i64 %index.next1243, 32
  br i1 %450, label %polly.loop_exit811.21130, label %vector.body1240, !llvm.loop !124

polly.loop_exit811.21130:                         ; preds = %vector.body1240
  %polly.indvar_next807.21128 = add nuw nsw i64 %polly.indvar806.21118, 1
  %exitcond1069.21129.not = icmp eq i64 %polly.indvar_next807.21128, 16
  br i1 %exitcond1069.21129.not, label %polly.loop_header803.1.2, label %polly.loop_header803.21119

polly.loop_header803.1.2:                         ; preds = %polly.loop_exit811.21130, %polly.loop_exit811.1.2
  %polly.indvar806.1.2 = phi i64 [ %polly.indvar_next807.1.2, %polly.loop_exit811.1.2 ], [ 0, %polly.loop_exit811.21130 ]
  %451 = add nuw nsw i64 %polly.indvar806.1.2, 64
  %452 = mul nuw nsw i64 %451, 640
  %453 = trunc i64 %451 to i32
  %broadcast.splatinsert1262 = insertelement <4 x i32> poison, i32 %453, i32 0
  %broadcast.splat1263 = shufflevector <4 x i32> %broadcast.splatinsert1262, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1254

vector.body1254:                                  ; preds = %vector.body1254, %polly.loop_header803.1.2
  %index1256 = phi i64 [ 0, %polly.loop_header803.1.2 ], [ %index.next1257, %vector.body1254 ]
  %vec.ind1260 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header803.1.2 ], [ %vec.ind.next1261, %vector.body1254 ]
  %454 = add nuw nsw <4 x i64> %vec.ind1260, <i64 32, i64 32, i64 32, i64 32>
  %455 = trunc <4 x i64> %454 to <4 x i32>
  %456 = mul <4 x i32> %broadcast.splat1263, %455
  %457 = add <4 x i32> %456, <i32 3, i32 3, i32 3, i32 3>
  %458 = urem <4 x i32> %457, <i32 80, i32 80, i32 80, i32 80>
  %459 = sitofp <4 x i32> %458 to <4 x double>
  %460 = fmul fast <4 x double> %459, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %461 = extractelement <4 x i64> %454, i32 0
  %462 = shl i64 %461, 3
  %463 = add nuw nsw i64 %462, %452
  %464 = getelementptr i8, i8* %call, i64 %463
  %465 = bitcast i8* %464 to <4 x double>*
  store <4 x double> %460, <4 x double>* %465, align 8, !alias.scope !99, !noalias !101
  %index.next1257 = add i64 %index1256, 4
  %vec.ind.next1261 = add <4 x i64> %vec.ind1260, <i64 4, i64 4, i64 4, i64 4>
  %466 = icmp eq i64 %index.next1257, 32
  br i1 %466, label %polly.loop_exit811.1.2, label %vector.body1254, !llvm.loop !125

polly.loop_exit811.1.2:                           ; preds = %vector.body1254
  %polly.indvar_next807.1.2 = add nuw nsw i64 %polly.indvar806.1.2, 1
  %exitcond1069.1.2.not = icmp eq i64 %polly.indvar_next807.1.2, 16
  br i1 %exitcond1069.1.2.not, label %polly.loop_header803.2.2, label %polly.loop_header803.1.2

polly.loop_header803.2.2:                         ; preds = %polly.loop_exit811.1.2, %polly.loop_exit811.2.2
  %polly.indvar806.2.2 = phi i64 [ %polly.indvar_next807.2.2, %polly.loop_exit811.2.2 ], [ 0, %polly.loop_exit811.1.2 ]
  %467 = add nuw nsw i64 %polly.indvar806.2.2, 64
  %468 = mul nuw nsw i64 %467, 640
  %469 = trunc i64 %467 to i32
  %broadcast.splatinsert1274 = insertelement <4 x i32> poison, i32 %469, i32 0
  %broadcast.splat1275 = shufflevector <4 x i32> %broadcast.splatinsert1274, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1266

vector.body1266:                                  ; preds = %vector.body1266, %polly.loop_header803.2.2
  %index1268 = phi i64 [ 0, %polly.loop_header803.2.2 ], [ %index.next1269, %vector.body1266 ]
  %vec.ind1272 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header803.2.2 ], [ %vec.ind.next1273, %vector.body1266 ]
  %470 = add nuw nsw <4 x i64> %vec.ind1272, <i64 64, i64 64, i64 64, i64 64>
  %471 = trunc <4 x i64> %470 to <4 x i32>
  %472 = mul <4 x i32> %broadcast.splat1275, %471
  %473 = add <4 x i32> %472, <i32 3, i32 3, i32 3, i32 3>
  %474 = urem <4 x i32> %473, <i32 80, i32 80, i32 80, i32 80>
  %475 = sitofp <4 x i32> %474 to <4 x double>
  %476 = fmul fast <4 x double> %475, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %477 = extractelement <4 x i64> %470, i32 0
  %478 = shl i64 %477, 3
  %479 = add nuw nsw i64 %478, %468
  %480 = getelementptr i8, i8* %call, i64 %479
  %481 = bitcast i8* %480 to <4 x double>*
  store <4 x double> %476, <4 x double>* %481, align 8, !alias.scope !99, !noalias !101
  %index.next1269 = add i64 %index1268, 4
  %vec.ind.next1273 = add <4 x i64> %vec.ind1272, <i64 4, i64 4, i64 4, i64 4>
  %482 = icmp eq i64 %index.next1269, 16
  br i1 %482, label %polly.loop_exit811.2.2, label %vector.body1266, !llvm.loop !126

polly.loop_exit811.2.2:                           ; preds = %vector.body1266
  %polly.indvar_next807.2.2 = add nuw nsw i64 %polly.indvar806.2.2, 1
  %exitcond1069.2.2.not = icmp eq i64 %polly.indvar_next807.2.2, 16
  br i1 %exitcond1069.2.2.not, label %polly.loop_header830, label %polly.loop_header803.2.2
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
declare i64 @llvm.umax.i64(i64, i64) #5

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
!25 = !{!"llvm.loop.tile.size", i32 64}
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
!46 = distinct !{!46, !12, !23, !47, !48, !49, !50, !51, !57}
!47 = !{!"llvm.loop.id", !"i"}
!48 = !{!"llvm.loop.tile.enable", i1 true}
!49 = !{!"llvm.loop.tile.depth", i32 3}
!50 = !{!"llvm.loop.tile.size", i32 32}
!51 = !{!"llvm.loop.tile.followup_floor", !52}
!52 = distinct !{!52, !12, !23, !53, !54, !55, !56}
!53 = !{!"llvm.loop.id", !"i1"}
!54 = !{!"llvm.loop.interchange.enable", i1 true}
!55 = !{!"llvm.loop.interchange.depth", i32 5}
!56 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
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
!73 = distinct !{!73, !69, !"polly.alias.scope.Packed_MemRef_call1"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !76, !13}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!68, !72, !73}
!78 = !{!68, !71, !73}
!79 = distinct !{!79, !80, !"polly.alias.scope.MemRef_call"}
!80 = distinct !{!80, !"polly.alias.scope.domain"}
!81 = !{!82, !83, !84}
!82 = distinct !{!82, !80, !"polly.alias.scope.MemRef_call1"}
!83 = distinct !{!83, !80, !"polly.alias.scope.MemRef_call2"}
!84 = distinct !{!84, !80, !"polly.alias.scope.Packed_MemRef_call1"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !76, !13}
!87 = !{!79, !83, !84}
!88 = !{!79, !82, !84}
!89 = distinct !{!89, !90, !"polly.alias.scope.MemRef_call"}
!90 = distinct !{!90, !"polly.alias.scope.domain"}
!91 = !{!92, !93, !94}
!92 = distinct !{!92, !90, !"polly.alias.scope.MemRef_call1"}
!93 = distinct !{!93, !90, !"polly.alias.scope.MemRef_call2"}
!94 = distinct !{!94, !90, !"polly.alias.scope.Packed_MemRef_call1"}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !76, !13}
!97 = !{!89, !93, !94}
!98 = !{!89, !92, !94}
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
