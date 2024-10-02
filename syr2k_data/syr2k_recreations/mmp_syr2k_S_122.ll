; ModuleID = 'syr2k_recreations//mmp_syr2k_S_122.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_122.c"
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
  %call852 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1704 = bitcast i8* %call1 to double*
  %polly.access.call1713 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2714 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1713, %call2
  %polly.access.call2733 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2733, %call1
  %2 = or i1 %0, %1
  %polly.access.call753 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call753, %call2
  %4 = icmp ule i8* %polly.access.call2733, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call753, %call1
  %8 = icmp ule i8* %polly.access.call1713, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header838, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1176 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1175 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1174 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1173 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1173, %scevgep1176
  %bound1 = icmp ult i8* %scevgep1175, %scevgep1174
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
  br i1 %exitcond18.not.i, label %vector.ph1180, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1180:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1187 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1188 = shufflevector <4 x i64> %broadcast.splatinsert1187, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1179

vector.body1179:                                  ; preds = %vector.body1179, %vector.ph1180
  %index1181 = phi i64 [ 0, %vector.ph1180 ], [ %index.next1182, %vector.body1179 ]
  %vec.ind1185 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1180 ], [ %vec.ind.next1186, %vector.body1179 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1185, %broadcast.splat1188
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call852, i64 %indvars.iv7.i, i64 %index1181
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1182 = add i64 %index1181, 4
  %vec.ind.next1186 = add <4 x i64> %vec.ind1185, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1182, 80
  br i1 %40, label %for.inc41.i, label %vector.body1179, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1179
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1180, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit899.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start498, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1666, label %vector.ph1462

vector.ph1462:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1461

vector.body1461:                                  ; preds = %vector.body1461, %vector.ph1462
  %index1463 = phi i64 [ 0, %vector.ph1462 ], [ %index.next1464, %vector.body1461 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call852, i64 %indvars.iv21.i, i64 %index1463
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1464 = add i64 %index1463, 4
  %46 = icmp eq i64 %index.next1464, %n.vec
  br i1 %46, label %middle.block1459, label %vector.body1461, !llvm.loop !18

middle.block1459:                                 ; preds = %vector.body1461
  %cmp.n1466 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1466, label %for.inc6.i, label %for.body3.i46.preheader1666

for.body3.i46.preheader1666:                      ; preds = %for.body3.i46.preheader, %middle.block1459
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1459 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1666, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1666 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call852, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1459, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call852, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit626.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start294, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1523 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1523, label %for.body3.i60.preheader1663, label %vector.ph1524

vector.ph1524:                                    ; preds = %for.body3.i60.preheader
  %n.vec1526 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1522

vector.body1522:                                  ; preds = %vector.body1522, %vector.ph1524
  %index1527 = phi i64 [ 0, %vector.ph1524 ], [ %index.next1528, %vector.body1522 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call852, i64 %indvars.iv21.i52, i64 %index1527
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1531 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1531, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1528 = add i64 %index1527, 4
  %57 = icmp eq i64 %index.next1528, %n.vec1526
  br i1 %57, label %middle.block1520, label %vector.body1522, !llvm.loop !57

middle.block1520:                                 ; preds = %vector.body1522
  %cmp.n1530 = icmp eq i64 %indvars.iv21.i52, %n.vec1526
  br i1 %cmp.n1530, label %for.inc6.i63, label %for.body3.i60.preheader1663

for.body3.i60.preheader1663:                      ; preds = %for.body3.i60.preheader, %middle.block1520
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1526, %middle.block1520 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1663, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1663 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call852, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1520, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call852, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit422.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1592 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1592, label %for.body3.i99.preheader1660, label %vector.ph1593

vector.ph1593:                                    ; preds = %for.body3.i99.preheader
  %n.vec1595 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1591

vector.body1591:                                  ; preds = %vector.body1591, %vector.ph1593
  %index1596 = phi i64 [ 0, %vector.ph1593 ], [ %index.next1597, %vector.body1591 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call852, i64 %indvars.iv21.i91, i64 %index1596
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1600 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1600, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1597 = add i64 %index1596, 4
  %68 = icmp eq i64 %index.next1597, %n.vec1595
  br i1 %68, label %middle.block1589, label %vector.body1591, !llvm.loop !59

middle.block1589:                                 ; preds = %vector.body1591
  %cmp.n1599 = icmp eq i64 %indvars.iv21.i91, %n.vec1595
  br i1 %cmp.n1599, label %for.inc6.i102, label %for.body3.i99.preheader1660

for.body3.i99.preheader1660:                      ; preds = %for.body3.i99.preheader, %middle.block1589
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1595, %middle.block1589 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1660, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1660 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call852, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1589, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call852, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit224.1
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call852, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall136 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1604 = phi i64 [ %indvar.next1605, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1604, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1606 = icmp ult i64 %88, 4
  br i1 %min.iters.check1606, label %polly.loop_header192.preheader, label %vector.ph1607

vector.ph1607:                                    ; preds = %polly.loop_header
  %n.vec1609 = and i64 %88, -4
  br label %vector.body1603

vector.body1603:                                  ; preds = %vector.body1603, %vector.ph1607
  %index1610 = phi i64 [ 0, %vector.ph1607 ], [ %index.next1611, %vector.body1603 ]
  %90 = shl nuw nsw i64 %index1610, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1614 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1614, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1611 = add i64 %index1610, 4
  %95 = icmp eq i64 %index.next1611, %n.vec1609
  br i1 %95, label %middle.block1601, label %vector.body1603, !llvm.loop !72

middle.block1601:                                 ; preds = %vector.body1603
  %cmp.n1613 = icmp eq i64 %88, %n.vec1609
  br i1 %cmp.n1613, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1601
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1609, %middle.block1601 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1601
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1032.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1605 = add i64 %indvar1604, 1
  br i1 %exitcond1032.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1031.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1031.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 80
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1030.not = icmp eq i64 %polly.indvar_next204, 60
  br i1 %exitcond1030.not, label %polly.loop_header222, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 60
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2714, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !69, !noalias !75
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1029.not = icmp eq i64 %polly.indvar_next210, 80
  br i1 %exitcond1029.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header222:                             ; preds = %polly.loop_exit208, %polly.loop_exit230
  %indvars.iv1019 = phi i64 [ %indvars.iv.next1020, %polly.loop_exit230 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit230 ], [ 0, %polly.loop_exit208 ]
  %97 = mul i64 %polly.indvar225, 20
  %polly.loop_guard.not = icmp sgt i64 %97, 49
  br i1 %polly.loop_guard.not, label %polly.loop_exit230, label %polly.loop_header228.preheader

polly.loop_header228.preheader:                   ; preds = %polly.loop_header222
  %98 = add i64 %indvars.iv, %indvars.iv1019
  %99 = add nuw nsw i64 %97, 20
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit261, %polly.loop_header222
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 20
  %indvars.iv.next1020 = add nsw i64 %indvars.iv1019, -20
  %exitcond1028.not = icmp eq i64 %polly.indvar_next226, 3
  br i1 %exitcond1028.not, label %polly.loop_header222.1, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header228.preheader, %polly.loop_exit261
  %indvar1618 = phi i64 [ 0, %polly.loop_header228.preheader ], [ %indvar.next1619, %polly.loop_exit261 ]
  %indvars.iv1021 = phi i64 [ %98, %polly.loop_header228.preheader ], [ %indvars.iv.next1022, %polly.loop_exit261 ]
  %polly.indvar231 = phi i64 [ %97, %polly.loop_header228.preheader ], [ %polly.indvar_next232, %polly.loop_exit261 ]
  %smin1620 = call i64 @llvm.smin.i64(i64 %indvar1618, i64 19)
  %100 = add nuw nsw i64 %smin1620, 1
  %smin1025 = call i64 @llvm.smin.i64(i64 %indvars.iv1021, i64 19)
  %101 = sub i64 %polly.indvar231, %97
  %polly.loop_guard2441153 = icmp sgt i64 %101, -1
  %.not906 = icmp ult i64 %polly.indvar231, %99
  %polly.access.mul.call1253 = mul nsw i64 %polly.indvar231, 60
  br i1 %polly.loop_guard2441153, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.merge.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.merge.us ], [ 0, %polly.loop_header228 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 80
  br label %polly.loop_header241.us

polly.loop_header241.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header241.us
  %polly.indvar245.us = phi i64 [ %polly.indvar_next246.us, %polly.loop_header241.us ], [ 0, %polly.loop_header234.us ]
  %102 = add nuw nsw i64 %polly.indvar245.us, %97
  %polly.access.mul.call1249.us = mul nuw nsw i64 %102, 60
  %polly.access.add.call1250.us = add nuw nsw i64 %polly.access.mul.call1249.us, %polly.indvar237.us
  %polly.access.call1251.us = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1250.us
  %polly.access.call1251.load.us = load double, double* %polly.access.call1251.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar245.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1251.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next246.us = add nuw nsw i64 %polly.indvar245.us, 1
  %exitcond1023.not = icmp eq i64 %polly.indvar245.us, %smin1025
  br i1 %exitcond1023.not, label %polly.cond.loopexit.us, label %polly.loop_header241.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1254.us = add nuw nsw i64 %polly.indvar237.us, %polly.access.mul.call1253
  %polly.access.call1255.us = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1254.us
  %polly.access.call1255.load.us = load double, double* %polly.access.call1255.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1257.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %101
  %polly.access.Packed_MemRef_call1258.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.us
  store double %polly.access.call1255.load.us, double* %polly.access.Packed_MemRef_call1258.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1024.not = icmp eq i64 %polly.indvar_next238.us, 60
  br i1 %exitcond1024.not, label %polly.loop_header259.preheader, label %polly.loop_header234.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header241.us
  br i1 %.not906, label %polly.merge.us, label %polly.then.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %.not906, label %polly.loop_exit261, label %polly.loop_header234

polly.loop_exit261:                               ; preds = %polly.loop_exit268.loopexit.us, %polly.loop_header228.split, %polly.loop_header259.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %polly.loop_cond233.not.not = icmp ult i64 %polly.indvar231, 49
  %indvars.iv.next1022 = add i64 %indvars.iv1021, 1
  %indvar.next1619 = add i64 %indvar1618, 1
  br i1 %polly.loop_cond233.not.not, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_header234
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_header234 ], [ 0, %polly.loop_header228.split ]
  %polly.access.add.call1254 = add nuw nsw i64 %polly.indvar237, %polly.access.mul.call1253
  %polly.access.call1255 = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1254
  %polly.access.call1255.load = load double, double* %polly.access.call1255, align 8, !alias.scope !68, !noalias !76
  %polly.access.mul.Packed_MemRef_call1256 = mul nuw nsw i64 %polly.indvar237, 80
  %polly.access.add.Packed_MemRef_call1257 = add nsw i64 %polly.access.mul.Packed_MemRef_call1256, %101
  %polly.access.Packed_MemRef_call1258 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257
  store double %polly.access.call1255.load, double* %polly.access.Packed_MemRef_call1258, align 8
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next238, 60
  br i1 %exitcond.not, label %polly.loop_header259.preheader, label %polly.loop_header234

polly.loop_header259.preheader:                   ; preds = %polly.loop_header234, %polly.merge.us
  %103 = mul i64 %polly.indvar231, 640
  br i1 %polly.loop_guard2441153, label %polly.loop_header259.us, label %polly.loop_exit261

polly.loop_header259.us:                          ; preds = %polly.loop_header259.preheader, %polly.loop_exit268.loopexit.us
  %polly.indvar262.us = phi i64 [ %polly.indvar_next263.us, %polly.loop_exit268.loopexit.us ], [ 0, %polly.loop_header259.preheader ]
  %polly.access.mul.Packed_MemRef_call1273.us = mul nuw nsw i64 %polly.indvar262.us, 80
  %polly.access.add.Packed_MemRef_call2278.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1273.us, %polly.indvar231
  %polly.access.Packed_MemRef_call2279.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2278.us
  %_p_scalar_280.us = load double, double* %polly.access.Packed_MemRef_call2279.us, align 8
  %polly.access.add.Packed_MemRef_call1286.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1273.us, %101
  %polly.access.Packed_MemRef_call1287.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call1287.us, align 8
  %min.iters.check1621 = icmp ult i64 %smin1620, 3
  br i1 %min.iters.check1621, label %polly.loop_header266.us.preheader, label %vector.ph1622

vector.ph1622:                                    ; preds = %polly.loop_header259.us
  %n.vec1624 = and i64 %100, -4
  %broadcast.splatinsert1630 = insertelement <4 x double> poison, double %_p_scalar_280.us, i32 0
  %broadcast.splat1631 = shufflevector <4 x double> %broadcast.splatinsert1630, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1633 = insertelement <4 x double> poison, double %_p_scalar_288.us, i32 0
  %broadcast.splat1634 = shufflevector <4 x double> %broadcast.splatinsert1633, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1617

vector.body1617:                                  ; preds = %vector.body1617, %vector.ph1622
  %index1625 = phi i64 [ 0, %vector.ph1622 ], [ %index.next1626, %vector.body1617 ]
  %104 = add nuw nsw i64 %index1625, %97
  %105 = add nuw nsw i64 %index1625, %polly.access.mul.Packed_MemRef_call1273.us
  %106 = getelementptr double, double* %Packed_MemRef_call1, i64 %105
  %107 = bitcast double* %106 to <4 x double>*
  %wide.load1629 = load <4 x double>, <4 x double>* %107, align 8
  %108 = fmul fast <4 x double> %broadcast.splat1631, %wide.load1629
  %109 = add nuw nsw i64 %104, %polly.access.mul.Packed_MemRef_call1273.us
  %110 = getelementptr double, double* %Packed_MemRef_call2, i64 %109
  %111 = bitcast double* %110 to <4 x double>*
  %wide.load1632 = load <4 x double>, <4 x double>* %111, align 8
  %112 = fmul fast <4 x double> %broadcast.splat1634, %wide.load1632
  %113 = shl i64 %104, 3
  %114 = add i64 %113, %103
  %115 = getelementptr i8, i8* %call, i64 %114
  %116 = bitcast i8* %115 to <4 x double>*
  %wide.load1635 = load <4 x double>, <4 x double>* %116, align 8, !alias.scope !65, !noalias !67
  %117 = fadd fast <4 x double> %112, %108
  %118 = fmul fast <4 x double> %117, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %119 = fadd fast <4 x double> %118, %wide.load1635
  %120 = bitcast i8* %115 to <4 x double>*
  store <4 x double> %119, <4 x double>* %120, align 8, !alias.scope !65, !noalias !67
  %index.next1626 = add i64 %index1625, 4
  %121 = icmp eq i64 %index.next1626, %n.vec1624
  br i1 %121, label %middle.block1615, label %vector.body1617, !llvm.loop !77

middle.block1615:                                 ; preds = %vector.body1617
  %cmp.n1628 = icmp eq i64 %100, %n.vec1624
  br i1 %cmp.n1628, label %polly.loop_exit268.loopexit.us, label %polly.loop_header266.us.preheader

polly.loop_header266.us.preheader:                ; preds = %polly.loop_header259.us, %middle.block1615
  %polly.indvar270.us.ph = phi i64 [ 0, %polly.loop_header259.us ], [ %n.vec1624, %middle.block1615 ]
  br label %polly.loop_header266.us

polly.loop_header266.us:                          ; preds = %polly.loop_header266.us.preheader, %polly.loop_header266.us
  %polly.indvar270.us = phi i64 [ %polly.indvar_next271.us, %polly.loop_header266.us ], [ %polly.indvar270.us.ph, %polly.loop_header266.us.preheader ]
  %122 = add nuw nsw i64 %polly.indvar270.us, %97
  %polly.access.add.Packed_MemRef_call1274.us = add nuw nsw i64 %polly.indvar270.us, %polly.access.mul.Packed_MemRef_call1273.us
  %polly.access.Packed_MemRef_call1275.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1274.us
  %_p_scalar_276.us = load double, double* %polly.access.Packed_MemRef_call1275.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_280.us, %_p_scalar_276.us
  %polly.access.add.Packed_MemRef_call2282.us = add nuw nsw i64 %122, %polly.access.mul.Packed_MemRef_call1273.us
  %polly.access.Packed_MemRef_call2283.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us
  %_p_scalar_284.us = load double, double* %polly.access.Packed_MemRef_call2283.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_288.us, %_p_scalar_284.us
  %123 = shl i64 %122, 3
  %124 = add i64 %123, %103
  %scevgep289.us = getelementptr i8, i8* %call, i64 %124
  %scevgep289290.us = bitcast i8* %scevgep289.us to double*
  %_p_scalar_291.us = load double, double* %scevgep289290.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_291.us
  store double %p_add42.i118.us, double* %scevgep289290.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next271.us = add nuw nsw i64 %polly.indvar270.us, 1
  %exitcond1026.not = icmp eq i64 %polly.indvar270.us, %smin1025
  br i1 %exitcond1026.not, label %polly.loop_exit268.loopexit.us, label %polly.loop_header266.us, !llvm.loop !78

polly.loop_exit268.loopexit.us:                   ; preds = %polly.loop_header266.us, %middle.block1615
  %polly.indvar_next263.us = add nuw nsw i64 %polly.indvar262.us, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar_next263.us, 60
  br i1 %exitcond1027.not, label %polly.loop_exit261, label %polly.loop_header259.us

polly.start294:                                   ; preds = %kernel_syr2k.exit
  %malloccall296 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall298 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header382

polly.loop_header382:                             ; preds = %polly.loop_exit390, %polly.start294
  %indvar1535 = phi i64 [ %indvar.next1536, %polly.loop_exit390 ], [ 0, %polly.start294 ]
  %polly.indvar385 = phi i64 [ %polly.indvar_next386, %polly.loop_exit390 ], [ 1, %polly.start294 ]
  %125 = add i64 %indvar1535, 1
  %126 = mul nuw nsw i64 %polly.indvar385, 640
  %scevgep394 = getelementptr i8, i8* %call, i64 %126
  %min.iters.check1537 = icmp ult i64 %125, 4
  br i1 %min.iters.check1537, label %polly.loop_header388.preheader, label %vector.ph1538

vector.ph1538:                                    ; preds = %polly.loop_header382
  %n.vec1540 = and i64 %125, -4
  br label %vector.body1534

vector.body1534:                                  ; preds = %vector.body1534, %vector.ph1538
  %index1541 = phi i64 [ 0, %vector.ph1538 ], [ %index.next1542, %vector.body1534 ]
  %127 = shl nuw nsw i64 %index1541, 3
  %128 = getelementptr i8, i8* %scevgep394, i64 %127
  %129 = bitcast i8* %128 to <4 x double>*
  %wide.load1545 = load <4 x double>, <4 x double>* %129, align 8, !alias.scope !79, !noalias !81
  %130 = fmul fast <4 x double> %wide.load1545, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %131 = bitcast i8* %128 to <4 x double>*
  store <4 x double> %130, <4 x double>* %131, align 8, !alias.scope !79, !noalias !81
  %index.next1542 = add i64 %index1541, 4
  %132 = icmp eq i64 %index.next1542, %n.vec1540
  br i1 %132, label %middle.block1532, label %vector.body1534, !llvm.loop !86

middle.block1532:                                 ; preds = %vector.body1534
  %cmp.n1544 = icmp eq i64 %125, %n.vec1540
  br i1 %cmp.n1544, label %polly.loop_exit390, label %polly.loop_header388.preheader

polly.loop_header388.preheader:                   ; preds = %polly.loop_header382, %middle.block1532
  %polly.indvar391.ph = phi i64 [ 0, %polly.loop_header382 ], [ %n.vec1540, %middle.block1532 ]
  br label %polly.loop_header388

polly.loop_exit390:                               ; preds = %polly.loop_header388, %middle.block1532
  %polly.indvar_next386 = add nuw nsw i64 %polly.indvar385, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar_next386, 80
  %indvar.next1536 = add i64 %indvar1535, 1
  br i1 %exitcond1051.not, label %polly.loop_header398.preheader, label %polly.loop_header382

polly.loop_header398.preheader:                   ; preds = %polly.loop_exit390
  %Packed_MemRef_call1297 = bitcast i8* %malloccall296 to double*
  %Packed_MemRef_call2299 = bitcast i8* %malloccall298 to double*
  br label %polly.loop_header398

polly.loop_header388:                             ; preds = %polly.loop_header388.preheader, %polly.loop_header388
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_header388 ], [ %polly.indvar391.ph, %polly.loop_header388.preheader ]
  %133 = shl nuw nsw i64 %polly.indvar391, 3
  %scevgep395 = getelementptr i8, i8* %scevgep394, i64 %133
  %scevgep395396 = bitcast i8* %scevgep395 to double*
  %_p_scalar_397 = load double, double* %scevgep395396, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_397, 1.200000e+00
  store double %p_mul.i57, double* %scevgep395396, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar_next392, %polly.indvar385
  br i1 %exitcond1050.not, label %polly.loop_exit390, label %polly.loop_header388, !llvm.loop !87

polly.loop_header398:                             ; preds = %polly.loop_header398.preheader, %polly.loop_exit406
  %polly.indvar401 = phi i64 [ %polly.indvar_next402, %polly.loop_exit406 ], [ 0, %polly.loop_header398.preheader ]
  %polly.access.mul.Packed_MemRef_call2299 = mul nuw nsw i64 %polly.indvar401, 80
  br label %polly.loop_header404

polly.loop_exit406:                               ; preds = %polly.loop_header404
  %polly.indvar_next402 = add nuw nsw i64 %polly.indvar401, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar_next402, 60
  br i1 %exitcond1049.not, label %polly.loop_header420, label %polly.loop_header398

polly.loop_header404:                             ; preds = %polly.loop_header404, %polly.loop_header398
  %polly.indvar407 = phi i64 [ 0, %polly.loop_header398 ], [ %polly.indvar_next408, %polly.loop_header404 ]
  %polly.access.mul.call2411 = mul nuw nsw i64 %polly.indvar407, 60
  %polly.access.add.call2412 = add nuw nsw i64 %polly.access.mul.call2411, %polly.indvar401
  %polly.access.call2413 = getelementptr double, double* %polly.access.cast.call2714, i64 %polly.access.add.call2412
  %polly.access.call2413.load = load double, double* %polly.access.call2413, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call2299 = add nuw nsw i64 %polly.indvar407, %polly.access.mul.Packed_MemRef_call2299
  %polly.access.Packed_MemRef_call2299 = getelementptr double, double* %Packed_MemRef_call2299, i64 %polly.access.add.Packed_MemRef_call2299
  store double %polly.access.call2413.load, double* %polly.access.Packed_MemRef_call2299, align 8
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar_next408, 80
  br i1 %exitcond1048.not, label %polly.loop_exit406, label %polly.loop_header404

polly.loop_header420:                             ; preds = %polly.loop_exit406, %polly.loop_exit429
  %indvars.iv1037 = phi i64 [ %indvars.iv.next1038, %polly.loop_exit429 ], [ 0, %polly.loop_exit406 ]
  %indvars.iv1034 = phi i64 [ %indvars.iv.next1035, %polly.loop_exit429 ], [ 0, %polly.loop_exit406 ]
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_exit429 ], [ 0, %polly.loop_exit406 ]
  %134 = mul i64 %polly.indvar423, 20
  %polly.loop_guard430.not = icmp sgt i64 %134, 49
  br i1 %polly.loop_guard430.not, label %polly.loop_exit429, label %polly.loop_header427.preheader

polly.loop_header427.preheader:                   ; preds = %polly.loop_header420
  %135 = add i64 %indvars.iv1034, %indvars.iv1037
  %136 = add nuw nsw i64 %134, 20
  br label %polly.loop_header427

polly.loop_exit429:                               ; preds = %polly.loop_exit465, %polly.loop_header420
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %indvars.iv.next1035 = add nuw nsw i64 %indvars.iv1034, 20
  %indvars.iv.next1038 = add nsw i64 %indvars.iv1037, -20
  %exitcond1047.not = icmp eq i64 %polly.indvar_next424, 3
  br i1 %exitcond1047.not, label %polly.loop_header420.1, label %polly.loop_header420

polly.loop_header427:                             ; preds = %polly.loop_header427.preheader, %polly.loop_exit465
  %indvar1549 = phi i64 [ 0, %polly.loop_header427.preheader ], [ %indvar.next1550, %polly.loop_exit465 ]
  %indvars.iv1039 = phi i64 [ %135, %polly.loop_header427.preheader ], [ %indvars.iv.next1040, %polly.loop_exit465 ]
  %polly.indvar431 = phi i64 [ %134, %polly.loop_header427.preheader ], [ %polly.indvar_next432, %polly.loop_exit465 ]
  %smin1551 = call i64 @llvm.smin.i64(i64 %indvar1549, i64 19)
  %137 = add nuw nsw i64 %smin1551, 1
  %smin1044 = call i64 @llvm.smin.i64(i64 %indvars.iv1039, i64 19)
  %138 = sub i64 %polly.indvar431, %134
  %polly.loop_guard4441155 = icmp sgt i64 %138, -1
  %.not908 = icmp ult i64 %polly.indvar431, %136
  %polly.access.mul.call1457 = mul nsw i64 %polly.indvar431, 60
  br i1 %polly.loop_guard4441155, label %polly.loop_header434.us, label %polly.loop_header427.split

polly.loop_header434.us:                          ; preds = %polly.loop_header427, %polly.merge453.us
  %polly.indvar437.us = phi i64 [ %polly.indvar_next438.us, %polly.merge453.us ], [ 0, %polly.loop_header427 ]
  %polly.access.mul.Packed_MemRef_call1297.us = mul nuw nsw i64 %polly.indvar437.us, 80
  br label %polly.loop_header441.us

polly.loop_header441.us:                          ; preds = %polly.loop_header434.us, %polly.loop_header441.us
  %polly.indvar445.us = phi i64 [ %polly.indvar_next446.us, %polly.loop_header441.us ], [ 0, %polly.loop_header434.us ]
  %139 = add nuw nsw i64 %polly.indvar445.us, %134
  %polly.access.mul.call1449.us = mul nuw nsw i64 %139, 60
  %polly.access.add.call1450.us = add nuw nsw i64 %polly.access.mul.call1449.us, %polly.indvar437.us
  %polly.access.call1451.us = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1450.us
  %polly.access.call1451.load.us = load double, double* %polly.access.call1451.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1297.us = add nuw nsw i64 %polly.indvar445.us, %polly.access.mul.Packed_MemRef_call1297.us
  %polly.access.Packed_MemRef_call1297.us = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297.us
  store double %polly.access.call1451.load.us, double* %polly.access.Packed_MemRef_call1297.us, align 8
  %polly.indvar_next446.us = add nuw nsw i64 %polly.indvar445.us, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar445.us, %smin1044
  br i1 %exitcond1042.not, label %polly.cond452.loopexit.us, label %polly.loop_header441.us

polly.then454.us:                                 ; preds = %polly.cond452.loopexit.us
  %polly.access.add.call1458.us = add nuw nsw i64 %polly.indvar437.us, %polly.access.mul.call1457
  %polly.access.call1459.us = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1458.us
  %polly.access.call1459.load.us = load double, double* %polly.access.call1459.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1297461.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1297.us, %138
  %polly.access.Packed_MemRef_call1297462.us = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297461.us
  store double %polly.access.call1459.load.us, double* %polly.access.Packed_MemRef_call1297462.us, align 8
  br label %polly.merge453.us

polly.merge453.us:                                ; preds = %polly.then454.us, %polly.cond452.loopexit.us
  %polly.indvar_next438.us = add nuw nsw i64 %polly.indvar437.us, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar_next438.us, 60
  br i1 %exitcond1043.not, label %polly.loop_header463.preheader, label %polly.loop_header434.us

polly.cond452.loopexit.us:                        ; preds = %polly.loop_header441.us
  br i1 %.not908, label %polly.merge453.us, label %polly.then454.us

polly.loop_header427.split:                       ; preds = %polly.loop_header427
  br i1 %.not908, label %polly.loop_exit465, label %polly.loop_header434

polly.loop_exit465:                               ; preds = %polly.loop_exit472.loopexit.us, %polly.loop_header427.split, %polly.loop_header463.preheader
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %polly.loop_cond433.not.not = icmp ult i64 %polly.indvar431, 49
  %indvars.iv.next1040 = add i64 %indvars.iv1039, 1
  %indvar.next1550 = add i64 %indvar1549, 1
  br i1 %polly.loop_cond433.not.not, label %polly.loop_header427, label %polly.loop_exit429

polly.loop_header434:                             ; preds = %polly.loop_header427.split, %polly.loop_header434
  %polly.indvar437 = phi i64 [ %polly.indvar_next438, %polly.loop_header434 ], [ 0, %polly.loop_header427.split ]
  %polly.access.add.call1458 = add nuw nsw i64 %polly.indvar437, %polly.access.mul.call1457
  %polly.access.call1459 = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1458
  %polly.access.call1459.load = load double, double* %polly.access.call1459, align 8, !alias.scope !82, !noalias !89
  %polly.access.mul.Packed_MemRef_call1297460 = mul nuw nsw i64 %polly.indvar437, 80
  %polly.access.add.Packed_MemRef_call1297461 = add nsw i64 %polly.access.mul.Packed_MemRef_call1297460, %138
  %polly.access.Packed_MemRef_call1297462 = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297461
  store double %polly.access.call1459.load, double* %polly.access.Packed_MemRef_call1297462, align 8
  %polly.indvar_next438 = add nuw nsw i64 %polly.indvar437, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar_next438, 60
  br i1 %exitcond1033.not, label %polly.loop_header463.preheader, label %polly.loop_header434

polly.loop_header463.preheader:                   ; preds = %polly.loop_header434, %polly.merge453.us
  %140 = mul i64 %polly.indvar431, 640
  br i1 %polly.loop_guard4441155, label %polly.loop_header463.us, label %polly.loop_exit465

polly.loop_header463.us:                          ; preds = %polly.loop_header463.preheader, %polly.loop_exit472.loopexit.us
  %polly.indvar466.us = phi i64 [ %polly.indvar_next467.us, %polly.loop_exit472.loopexit.us ], [ 0, %polly.loop_header463.preheader ]
  %polly.access.mul.Packed_MemRef_call1297477.us = mul nuw nsw i64 %polly.indvar466.us, 80
  %polly.access.add.Packed_MemRef_call2299482.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1297477.us, %polly.indvar431
  %polly.access.Packed_MemRef_call2299483.us = getelementptr double, double* %Packed_MemRef_call2299, i64 %polly.access.add.Packed_MemRef_call2299482.us
  %_p_scalar_484.us = load double, double* %polly.access.Packed_MemRef_call2299483.us, align 8
  %polly.access.add.Packed_MemRef_call1297490.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1297477.us, %138
  %polly.access.Packed_MemRef_call1297491.us = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297490.us
  %_p_scalar_492.us = load double, double* %polly.access.Packed_MemRef_call1297491.us, align 8
  %min.iters.check1552 = icmp ult i64 %smin1551, 3
  br i1 %min.iters.check1552, label %polly.loop_header470.us.preheader, label %vector.ph1553

vector.ph1553:                                    ; preds = %polly.loop_header463.us
  %n.vec1555 = and i64 %137, -4
  %broadcast.splatinsert1561 = insertelement <4 x double> poison, double %_p_scalar_484.us, i32 0
  %broadcast.splat1562 = shufflevector <4 x double> %broadcast.splatinsert1561, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1564 = insertelement <4 x double> poison, double %_p_scalar_492.us, i32 0
  %broadcast.splat1565 = shufflevector <4 x double> %broadcast.splatinsert1564, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1548

vector.body1548:                                  ; preds = %vector.body1548, %vector.ph1553
  %index1556 = phi i64 [ 0, %vector.ph1553 ], [ %index.next1557, %vector.body1548 ]
  %141 = add nuw nsw i64 %index1556, %134
  %142 = add nuw nsw i64 %index1556, %polly.access.mul.Packed_MemRef_call1297477.us
  %143 = getelementptr double, double* %Packed_MemRef_call1297, i64 %142
  %144 = bitcast double* %143 to <4 x double>*
  %wide.load1560 = load <4 x double>, <4 x double>* %144, align 8
  %145 = fmul fast <4 x double> %broadcast.splat1562, %wide.load1560
  %146 = add nuw nsw i64 %141, %polly.access.mul.Packed_MemRef_call1297477.us
  %147 = getelementptr double, double* %Packed_MemRef_call2299, i64 %146
  %148 = bitcast double* %147 to <4 x double>*
  %wide.load1563 = load <4 x double>, <4 x double>* %148, align 8
  %149 = fmul fast <4 x double> %broadcast.splat1565, %wide.load1563
  %150 = shl i64 %141, 3
  %151 = add i64 %150, %140
  %152 = getelementptr i8, i8* %call, i64 %151
  %153 = bitcast i8* %152 to <4 x double>*
  %wide.load1566 = load <4 x double>, <4 x double>* %153, align 8, !alias.scope !79, !noalias !81
  %154 = fadd fast <4 x double> %149, %145
  %155 = fmul fast <4 x double> %154, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %156 = fadd fast <4 x double> %155, %wide.load1566
  %157 = bitcast i8* %152 to <4 x double>*
  store <4 x double> %156, <4 x double>* %157, align 8, !alias.scope !79, !noalias !81
  %index.next1557 = add i64 %index1556, 4
  %158 = icmp eq i64 %index.next1557, %n.vec1555
  br i1 %158, label %middle.block1546, label %vector.body1548, !llvm.loop !90

middle.block1546:                                 ; preds = %vector.body1548
  %cmp.n1559 = icmp eq i64 %137, %n.vec1555
  br i1 %cmp.n1559, label %polly.loop_exit472.loopexit.us, label %polly.loop_header470.us.preheader

polly.loop_header470.us.preheader:                ; preds = %polly.loop_header463.us, %middle.block1546
  %polly.indvar474.us.ph = phi i64 [ 0, %polly.loop_header463.us ], [ %n.vec1555, %middle.block1546 ]
  br label %polly.loop_header470.us

polly.loop_header470.us:                          ; preds = %polly.loop_header470.us.preheader, %polly.loop_header470.us
  %polly.indvar474.us = phi i64 [ %polly.indvar_next475.us, %polly.loop_header470.us ], [ %polly.indvar474.us.ph, %polly.loop_header470.us.preheader ]
  %159 = add nuw nsw i64 %polly.indvar474.us, %134
  %polly.access.add.Packed_MemRef_call1297478.us = add nuw nsw i64 %polly.indvar474.us, %polly.access.mul.Packed_MemRef_call1297477.us
  %polly.access.Packed_MemRef_call1297479.us = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297478.us
  %_p_scalar_480.us = load double, double* %polly.access.Packed_MemRef_call1297479.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_484.us, %_p_scalar_480.us
  %polly.access.add.Packed_MemRef_call2299486.us = add nuw nsw i64 %159, %polly.access.mul.Packed_MemRef_call1297477.us
  %polly.access.Packed_MemRef_call2299487.us = getelementptr double, double* %Packed_MemRef_call2299, i64 %polly.access.add.Packed_MemRef_call2299486.us
  %_p_scalar_488.us = load double, double* %polly.access.Packed_MemRef_call2299487.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_492.us, %_p_scalar_488.us
  %160 = shl i64 %159, 3
  %161 = add i64 %160, %140
  %scevgep493.us = getelementptr i8, i8* %call, i64 %161
  %scevgep493494.us = bitcast i8* %scevgep493.us to double*
  %_p_scalar_495.us = load double, double* %scevgep493494.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_495.us
  store double %p_add42.i79.us, double* %scevgep493494.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next475.us = add nuw nsw i64 %polly.indvar474.us, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar474.us, %smin1044
  br i1 %exitcond1045.not, label %polly.loop_exit472.loopexit.us, label %polly.loop_header470.us, !llvm.loop !91

polly.loop_exit472.loopexit.us:                   ; preds = %polly.loop_header470.us, %middle.block1546
  %polly.indvar_next467.us = add nuw nsw i64 %polly.indvar466.us, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar_next467.us, 60
  br i1 %exitcond1046.not, label %polly.loop_exit465, label %polly.loop_header463.us

polly.start498:                                   ; preds = %init_array.exit
  %malloccall500 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall502 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header586

polly.loop_header586:                             ; preds = %polly.loop_exit594, %polly.start498
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit594 ], [ 0, %polly.start498 ]
  %polly.indvar589 = phi i64 [ %polly.indvar_next590, %polly.loop_exit594 ], [ 1, %polly.start498 ]
  %162 = add i64 %indvar, 1
  %163 = mul nuw nsw i64 %polly.indvar589, 640
  %scevgep598 = getelementptr i8, i8* %call, i64 %163
  %min.iters.check1470 = icmp ult i64 %162, 4
  br i1 %min.iters.check1470, label %polly.loop_header592.preheader, label %vector.ph1471

vector.ph1471:                                    ; preds = %polly.loop_header586
  %n.vec1473 = and i64 %162, -4
  br label %vector.body1469

vector.body1469:                                  ; preds = %vector.body1469, %vector.ph1471
  %index1474 = phi i64 [ 0, %vector.ph1471 ], [ %index.next1475, %vector.body1469 ]
  %164 = shl nuw nsw i64 %index1474, 3
  %165 = getelementptr i8, i8* %scevgep598, i64 %164
  %166 = bitcast i8* %165 to <4 x double>*
  %wide.load1478 = load <4 x double>, <4 x double>* %166, align 8, !alias.scope !92, !noalias !94
  %167 = fmul fast <4 x double> %wide.load1478, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %168 = bitcast i8* %165 to <4 x double>*
  store <4 x double> %167, <4 x double>* %168, align 8, !alias.scope !92, !noalias !94
  %index.next1475 = add i64 %index1474, 4
  %169 = icmp eq i64 %index.next1475, %n.vec1473
  br i1 %169, label %middle.block1467, label %vector.body1469, !llvm.loop !99

middle.block1467:                                 ; preds = %vector.body1469
  %cmp.n1477 = icmp eq i64 %162, %n.vec1473
  br i1 %cmp.n1477, label %polly.loop_exit594, label %polly.loop_header592.preheader

polly.loop_header592.preheader:                   ; preds = %polly.loop_header586, %middle.block1467
  %polly.indvar595.ph = phi i64 [ 0, %polly.loop_header586 ], [ %n.vec1473, %middle.block1467 ]
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_header592, %middle.block1467
  %polly.indvar_next590 = add nuw nsw i64 %polly.indvar589, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar_next590, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1070.not, label %polly.loop_header602.preheader, label %polly.loop_header586

polly.loop_header602.preheader:                   ; preds = %polly.loop_exit594
  %Packed_MemRef_call1501 = bitcast i8* %malloccall500 to double*
  %Packed_MemRef_call2503 = bitcast i8* %malloccall502 to double*
  br label %polly.loop_header602

polly.loop_header592:                             ; preds = %polly.loop_header592.preheader, %polly.loop_header592
  %polly.indvar595 = phi i64 [ %polly.indvar_next596, %polly.loop_header592 ], [ %polly.indvar595.ph, %polly.loop_header592.preheader ]
  %170 = shl nuw nsw i64 %polly.indvar595, 3
  %scevgep599 = getelementptr i8, i8* %scevgep598, i64 %170
  %scevgep599600 = bitcast i8* %scevgep599 to double*
  %_p_scalar_601 = load double, double* %scevgep599600, align 8, !alias.scope !92, !noalias !94
  %p_mul.i = fmul fast double %_p_scalar_601, 1.200000e+00
  store double %p_mul.i, double* %scevgep599600, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next596 = add nuw nsw i64 %polly.indvar595, 1
  %exitcond1069.not = icmp eq i64 %polly.indvar_next596, %polly.indvar589
  br i1 %exitcond1069.not, label %polly.loop_exit594, label %polly.loop_header592, !llvm.loop !100

polly.loop_header602:                             ; preds = %polly.loop_header602.preheader, %polly.loop_exit610
  %polly.indvar605 = phi i64 [ %polly.indvar_next606, %polly.loop_exit610 ], [ 0, %polly.loop_header602.preheader ]
  %polly.access.mul.Packed_MemRef_call2503 = mul nuw nsw i64 %polly.indvar605, 80
  br label %polly.loop_header608

polly.loop_exit610:                               ; preds = %polly.loop_header608
  %polly.indvar_next606 = add nuw nsw i64 %polly.indvar605, 1
  %exitcond1068.not = icmp eq i64 %polly.indvar_next606, 60
  br i1 %exitcond1068.not, label %polly.loop_header624, label %polly.loop_header602

polly.loop_header608:                             ; preds = %polly.loop_header608, %polly.loop_header602
  %polly.indvar611 = phi i64 [ 0, %polly.loop_header602 ], [ %polly.indvar_next612, %polly.loop_header608 ]
  %polly.access.mul.call2615 = mul nuw nsw i64 %polly.indvar611, 60
  %polly.access.add.call2616 = add nuw nsw i64 %polly.access.mul.call2615, %polly.indvar605
  %polly.access.call2617 = getelementptr double, double* %polly.access.cast.call2714, i64 %polly.access.add.call2616
  %polly.access.call2617.load = load double, double* %polly.access.call2617, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2503 = add nuw nsw i64 %polly.indvar611, %polly.access.mul.Packed_MemRef_call2503
  %polly.access.Packed_MemRef_call2503 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503
  store double %polly.access.call2617.load, double* %polly.access.Packed_MemRef_call2503, align 8
  %polly.indvar_next612 = add nuw nsw i64 %polly.indvar611, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar_next612, 80
  br i1 %exitcond1067.not, label %polly.loop_exit610, label %polly.loop_header608

polly.loop_header624:                             ; preds = %polly.loop_exit610, %polly.loop_exit633
  %indvars.iv1056 = phi i64 [ %indvars.iv.next1057, %polly.loop_exit633 ], [ 0, %polly.loop_exit610 ]
  %indvars.iv1053 = phi i64 [ %indvars.iv.next1054, %polly.loop_exit633 ], [ 0, %polly.loop_exit610 ]
  %polly.indvar627 = phi i64 [ %polly.indvar_next628, %polly.loop_exit633 ], [ 0, %polly.loop_exit610 ]
  %171 = mul i64 %polly.indvar627, 20
  %polly.loop_guard634.not = icmp sgt i64 %171, 49
  br i1 %polly.loop_guard634.not, label %polly.loop_exit633, label %polly.loop_header631.preheader

polly.loop_header631.preheader:                   ; preds = %polly.loop_header624
  %172 = add i64 %indvars.iv1053, %indvars.iv1056
  %173 = add nuw nsw i64 %171, 20
  br label %polly.loop_header631

polly.loop_exit633:                               ; preds = %polly.loop_exit669, %polly.loop_header624
  %polly.indvar_next628 = add nuw nsw i64 %polly.indvar627, 1
  %indvars.iv.next1054 = add nuw nsw i64 %indvars.iv1053, 20
  %indvars.iv.next1057 = add nsw i64 %indvars.iv1056, -20
  %exitcond1066.not = icmp eq i64 %polly.indvar_next628, 3
  br i1 %exitcond1066.not, label %polly.loop_header624.1, label %polly.loop_header624

polly.loop_header631:                             ; preds = %polly.loop_header631.preheader, %polly.loop_exit669
  %indvar1482 = phi i64 [ 0, %polly.loop_header631.preheader ], [ %indvar.next1483, %polly.loop_exit669 ]
  %indvars.iv1058 = phi i64 [ %172, %polly.loop_header631.preheader ], [ %indvars.iv.next1059, %polly.loop_exit669 ]
  %polly.indvar635 = phi i64 [ %171, %polly.loop_header631.preheader ], [ %polly.indvar_next636, %polly.loop_exit669 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvar1482, i64 19)
  %174 = add nuw nsw i64 %smin, 1
  %smin1063 = call i64 @llvm.smin.i64(i64 %indvars.iv1058, i64 19)
  %175 = sub i64 %polly.indvar635, %171
  %polly.loop_guard6481157 = icmp sgt i64 %175, -1
  %.not910 = icmp ult i64 %polly.indvar635, %173
  %polly.access.mul.call1661 = mul nsw i64 %polly.indvar635, 60
  br i1 %polly.loop_guard6481157, label %polly.loop_header638.us, label %polly.loop_header631.split

polly.loop_header638.us:                          ; preds = %polly.loop_header631, %polly.merge657.us
  %polly.indvar641.us = phi i64 [ %polly.indvar_next642.us, %polly.merge657.us ], [ 0, %polly.loop_header631 ]
  %polly.access.mul.Packed_MemRef_call1501.us = mul nuw nsw i64 %polly.indvar641.us, 80
  br label %polly.loop_header645.us

polly.loop_header645.us:                          ; preds = %polly.loop_header638.us, %polly.loop_header645.us
  %polly.indvar649.us = phi i64 [ %polly.indvar_next650.us, %polly.loop_header645.us ], [ 0, %polly.loop_header638.us ]
  %176 = add nuw nsw i64 %polly.indvar649.us, %171
  %polly.access.mul.call1653.us = mul nuw nsw i64 %176, 60
  %polly.access.add.call1654.us = add nuw nsw i64 %polly.access.mul.call1653.us, %polly.indvar641.us
  %polly.access.call1655.us = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1654.us
  %polly.access.call1655.load.us = load double, double* %polly.access.call1655.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1501.us = add nuw nsw i64 %polly.indvar649.us, %polly.access.mul.Packed_MemRef_call1501.us
  %polly.access.Packed_MemRef_call1501.us = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501.us
  store double %polly.access.call1655.load.us, double* %polly.access.Packed_MemRef_call1501.us, align 8
  %polly.indvar_next650.us = add nuw nsw i64 %polly.indvar649.us, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar649.us, %smin1063
  br i1 %exitcond1061.not, label %polly.cond656.loopexit.us, label %polly.loop_header645.us

polly.then658.us:                                 ; preds = %polly.cond656.loopexit.us
  %polly.access.add.call1662.us = add nuw nsw i64 %polly.indvar641.us, %polly.access.mul.call1661
  %polly.access.call1663.us = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1662.us
  %polly.access.call1663.load.us = load double, double* %polly.access.call1663.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1501665.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1501.us, %175
  %polly.access.Packed_MemRef_call1501666.us = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501665.us
  store double %polly.access.call1663.load.us, double* %polly.access.Packed_MemRef_call1501666.us, align 8
  br label %polly.merge657.us

polly.merge657.us:                                ; preds = %polly.then658.us, %polly.cond656.loopexit.us
  %polly.indvar_next642.us = add nuw nsw i64 %polly.indvar641.us, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar_next642.us, 60
  br i1 %exitcond1062.not, label %polly.loop_header667.preheader, label %polly.loop_header638.us

polly.cond656.loopexit.us:                        ; preds = %polly.loop_header645.us
  br i1 %.not910, label %polly.merge657.us, label %polly.then658.us

polly.loop_header631.split:                       ; preds = %polly.loop_header631
  br i1 %.not910, label %polly.loop_exit669, label %polly.loop_header638

polly.loop_exit669:                               ; preds = %polly.loop_exit676.loopexit.us, %polly.loop_header631.split, %polly.loop_header667.preheader
  %polly.indvar_next636 = add nuw nsw i64 %polly.indvar635, 1
  %polly.loop_cond637.not.not = icmp ult i64 %polly.indvar635, 49
  %indvars.iv.next1059 = add i64 %indvars.iv1058, 1
  %indvar.next1483 = add i64 %indvar1482, 1
  br i1 %polly.loop_cond637.not.not, label %polly.loop_header631, label %polly.loop_exit633

polly.loop_header638:                             ; preds = %polly.loop_header631.split, %polly.loop_header638
  %polly.indvar641 = phi i64 [ %polly.indvar_next642, %polly.loop_header638 ], [ 0, %polly.loop_header631.split ]
  %polly.access.add.call1662 = add nuw nsw i64 %polly.indvar641, %polly.access.mul.call1661
  %polly.access.call1663 = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1662
  %polly.access.call1663.load = load double, double* %polly.access.call1663, align 8, !alias.scope !95, !noalias !102
  %polly.access.mul.Packed_MemRef_call1501664 = mul nuw nsw i64 %polly.indvar641, 80
  %polly.access.add.Packed_MemRef_call1501665 = add nsw i64 %polly.access.mul.Packed_MemRef_call1501664, %175
  %polly.access.Packed_MemRef_call1501666 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501665
  store double %polly.access.call1663.load, double* %polly.access.Packed_MemRef_call1501666, align 8
  %polly.indvar_next642 = add nuw nsw i64 %polly.indvar641, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next642, 60
  br i1 %exitcond1052.not, label %polly.loop_header667.preheader, label %polly.loop_header638

polly.loop_header667.preheader:                   ; preds = %polly.loop_header638, %polly.merge657.us
  %177 = mul i64 %polly.indvar635, 640
  br i1 %polly.loop_guard6481157, label %polly.loop_header667.us, label %polly.loop_exit669

polly.loop_header667.us:                          ; preds = %polly.loop_header667.preheader, %polly.loop_exit676.loopexit.us
  %polly.indvar670.us = phi i64 [ %polly.indvar_next671.us, %polly.loop_exit676.loopexit.us ], [ 0, %polly.loop_header667.preheader ]
  %polly.access.mul.Packed_MemRef_call1501681.us = mul nuw nsw i64 %polly.indvar670.us, 80
  %polly.access.add.Packed_MemRef_call2503686.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1501681.us, %polly.indvar635
  %polly.access.Packed_MemRef_call2503687.us = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503686.us
  %_p_scalar_688.us = load double, double* %polly.access.Packed_MemRef_call2503687.us, align 8
  %polly.access.add.Packed_MemRef_call1501694.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1501681.us, %175
  %polly.access.Packed_MemRef_call1501695.us = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501694.us
  %_p_scalar_696.us = load double, double* %polly.access.Packed_MemRef_call1501695.us, align 8
  %min.iters.check1484 = icmp ult i64 %smin, 3
  br i1 %min.iters.check1484, label %polly.loop_header674.us.preheader, label %vector.ph1485

vector.ph1485:                                    ; preds = %polly.loop_header667.us
  %n.vec1487 = and i64 %174, -4
  %broadcast.splatinsert1493 = insertelement <4 x double> poison, double %_p_scalar_688.us, i32 0
  %broadcast.splat1494 = shufflevector <4 x double> %broadcast.splatinsert1493, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1496 = insertelement <4 x double> poison, double %_p_scalar_696.us, i32 0
  %broadcast.splat1497 = shufflevector <4 x double> %broadcast.splatinsert1496, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1481

vector.body1481:                                  ; preds = %vector.body1481, %vector.ph1485
  %index1488 = phi i64 [ 0, %vector.ph1485 ], [ %index.next1489, %vector.body1481 ]
  %178 = add nuw nsw i64 %index1488, %171
  %179 = add nuw nsw i64 %index1488, %polly.access.mul.Packed_MemRef_call1501681.us
  %180 = getelementptr double, double* %Packed_MemRef_call1501, i64 %179
  %181 = bitcast double* %180 to <4 x double>*
  %wide.load1492 = load <4 x double>, <4 x double>* %181, align 8
  %182 = fmul fast <4 x double> %broadcast.splat1494, %wide.load1492
  %183 = add nuw nsw i64 %178, %polly.access.mul.Packed_MemRef_call1501681.us
  %184 = getelementptr double, double* %Packed_MemRef_call2503, i64 %183
  %185 = bitcast double* %184 to <4 x double>*
  %wide.load1495 = load <4 x double>, <4 x double>* %185, align 8
  %186 = fmul fast <4 x double> %broadcast.splat1497, %wide.load1495
  %187 = shl i64 %178, 3
  %188 = add i64 %187, %177
  %189 = getelementptr i8, i8* %call, i64 %188
  %190 = bitcast i8* %189 to <4 x double>*
  %wide.load1498 = load <4 x double>, <4 x double>* %190, align 8, !alias.scope !92, !noalias !94
  %191 = fadd fast <4 x double> %186, %182
  %192 = fmul fast <4 x double> %191, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %193 = fadd fast <4 x double> %192, %wide.load1498
  %194 = bitcast i8* %189 to <4 x double>*
  store <4 x double> %193, <4 x double>* %194, align 8, !alias.scope !92, !noalias !94
  %index.next1489 = add i64 %index1488, 4
  %195 = icmp eq i64 %index.next1489, %n.vec1487
  br i1 %195, label %middle.block1479, label %vector.body1481, !llvm.loop !103

middle.block1479:                                 ; preds = %vector.body1481
  %cmp.n1491 = icmp eq i64 %174, %n.vec1487
  br i1 %cmp.n1491, label %polly.loop_exit676.loopexit.us, label %polly.loop_header674.us.preheader

polly.loop_header674.us.preheader:                ; preds = %polly.loop_header667.us, %middle.block1479
  %polly.indvar678.us.ph = phi i64 [ 0, %polly.loop_header667.us ], [ %n.vec1487, %middle.block1479 ]
  br label %polly.loop_header674.us

polly.loop_header674.us:                          ; preds = %polly.loop_header674.us.preheader, %polly.loop_header674.us
  %polly.indvar678.us = phi i64 [ %polly.indvar_next679.us, %polly.loop_header674.us ], [ %polly.indvar678.us.ph, %polly.loop_header674.us.preheader ]
  %196 = add nuw nsw i64 %polly.indvar678.us, %171
  %polly.access.add.Packed_MemRef_call1501682.us = add nuw nsw i64 %polly.indvar678.us, %polly.access.mul.Packed_MemRef_call1501681.us
  %polly.access.Packed_MemRef_call1501683.us = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501682.us
  %_p_scalar_684.us = load double, double* %polly.access.Packed_MemRef_call1501683.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_688.us, %_p_scalar_684.us
  %polly.access.add.Packed_MemRef_call2503690.us = add nuw nsw i64 %196, %polly.access.mul.Packed_MemRef_call1501681.us
  %polly.access.Packed_MemRef_call2503691.us = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503690.us
  %_p_scalar_692.us = load double, double* %polly.access.Packed_MemRef_call2503691.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_696.us, %_p_scalar_692.us
  %197 = shl i64 %196, 3
  %198 = add i64 %197, %177
  %scevgep697.us = getelementptr i8, i8* %call, i64 %198
  %scevgep697698.us = bitcast i8* %scevgep697.us to double*
  %_p_scalar_699.us = load double, double* %scevgep697698.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_699.us
  store double %p_add42.i.us, double* %scevgep697698.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next679.us = add nuw nsw i64 %polly.indvar678.us, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar678.us, %smin1063
  br i1 %exitcond1064.not, label %polly.loop_exit676.loopexit.us, label %polly.loop_header674.us, !llvm.loop !104

polly.loop_exit676.loopexit.us:                   ; preds = %polly.loop_header674.us, %middle.block1479
  %polly.indvar_next671.us = add nuw nsw i64 %polly.indvar670.us, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar_next671.us, 60
  br i1 %exitcond1065.not, label %polly.loop_exit669, label %polly.loop_header667.us

polly.loop_header838:                             ; preds = %entry, %polly.loop_exit846
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_exit846 ], [ 0, %entry ]
  %199 = mul nuw nsw i64 %polly.indvar841, 640
  %200 = trunc i64 %polly.indvar841 to i32
  %broadcast.splatinsert1201 = insertelement <4 x i32> poison, i32 %200, i32 0
  %broadcast.splat1202 = shufflevector <4 x i32> %broadcast.splatinsert1201, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1191

vector.body1191:                                  ; preds = %vector.body1191, %polly.loop_header838
  %index1193 = phi i64 [ 0, %polly.loop_header838 ], [ %index.next1194, %vector.body1191 ]
  %vec.ind1199 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header838 ], [ %vec.ind.next1200, %vector.body1191 ]
  %201 = mul <4 x i32> %vec.ind1199, %broadcast.splat1202
  %202 = add <4 x i32> %201, <i32 3, i32 3, i32 3, i32 3>
  %203 = urem <4 x i32> %202, <i32 80, i32 80, i32 80, i32 80>
  %204 = sitofp <4 x i32> %203 to <4 x double>
  %205 = fmul fast <4 x double> %204, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %206 = shl i64 %index1193, 3
  %207 = add nuw nsw i64 %206, %199
  %208 = getelementptr i8, i8* %call, i64 %207
  %209 = bitcast i8* %208 to <4 x double>*
  store <4 x double> %205, <4 x double>* %209, align 8, !alias.scope !105, !noalias !107
  %index.next1194 = add i64 %index1193, 4
  %vec.ind.next1200 = add <4 x i32> %vec.ind1199, <i32 4, i32 4, i32 4, i32 4>
  %210 = icmp eq i64 %index.next1194, 32
  br i1 %210, label %polly.loop_exit846, label %vector.body1191, !llvm.loop !110

polly.loop_exit846:                               ; preds = %vector.body1191
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar_next842, 32
  br i1 %exitcond1090.not, label %polly.loop_header838.1, label %polly.loop_header838

polly.loop_header865:                             ; preds = %polly.loop_exit846.2.2, %polly.loop_exit873
  %polly.indvar868 = phi i64 [ %polly.indvar_next869, %polly.loop_exit873 ], [ 0, %polly.loop_exit846.2.2 ]
  %211 = mul nuw nsw i64 %polly.indvar868, 480
  %212 = trunc i64 %polly.indvar868 to i32
  %broadcast.splatinsert1315 = insertelement <4 x i32> poison, i32 %212, i32 0
  %broadcast.splat1316 = shufflevector <4 x i32> %broadcast.splatinsert1315, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1305

vector.body1305:                                  ; preds = %vector.body1305, %polly.loop_header865
  %index1307 = phi i64 [ 0, %polly.loop_header865 ], [ %index.next1308, %vector.body1305 ]
  %vec.ind1313 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header865 ], [ %vec.ind.next1314, %vector.body1305 ]
  %213 = mul <4 x i32> %vec.ind1313, %broadcast.splat1316
  %214 = add <4 x i32> %213, <i32 2, i32 2, i32 2, i32 2>
  %215 = urem <4 x i32> %214, <i32 60, i32 60, i32 60, i32 60>
  %216 = sitofp <4 x i32> %215 to <4 x double>
  %217 = fmul fast <4 x double> %216, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %218 = shl i64 %index1307, 3
  %219 = add i64 %218, %211
  %220 = getelementptr i8, i8* %call2, i64 %219
  %221 = bitcast i8* %220 to <4 x double>*
  store <4 x double> %217, <4 x double>* %221, align 8, !alias.scope !109, !noalias !111
  %index.next1308 = add i64 %index1307, 4
  %vec.ind.next1314 = add <4 x i32> %vec.ind1313, <i32 4, i32 4, i32 4, i32 4>
  %222 = icmp eq i64 %index.next1308, 32
  br i1 %222, label %polly.loop_exit873, label %vector.body1305, !llvm.loop !112

polly.loop_exit873:                               ; preds = %vector.body1305
  %polly.indvar_next869 = add nuw nsw i64 %polly.indvar868, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar_next869, 32
  br i1 %exitcond1081.not, label %polly.loop_header865.1, label %polly.loop_header865

polly.loop_header891:                             ; preds = %polly.loop_exit873.1.2, %polly.loop_exit899
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_exit899 ], [ 0, %polly.loop_exit873.1.2 ]
  %223 = mul nuw nsw i64 %polly.indvar894, 480
  %224 = trunc i64 %polly.indvar894 to i32
  %broadcast.splatinsert1393 = insertelement <4 x i32> poison, i32 %224, i32 0
  %broadcast.splat1394 = shufflevector <4 x i32> %broadcast.splatinsert1393, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1383

vector.body1383:                                  ; preds = %vector.body1383, %polly.loop_header891
  %index1385 = phi i64 [ 0, %polly.loop_header891 ], [ %index.next1386, %vector.body1383 ]
  %vec.ind1391 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header891 ], [ %vec.ind.next1392, %vector.body1383 ]
  %225 = mul <4 x i32> %vec.ind1391, %broadcast.splat1394
  %226 = add <4 x i32> %225, <i32 1, i32 1, i32 1, i32 1>
  %227 = urem <4 x i32> %226, <i32 80, i32 80, i32 80, i32 80>
  %228 = sitofp <4 x i32> %227 to <4 x double>
  %229 = fmul fast <4 x double> %228, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %230 = shl i64 %index1385, 3
  %231 = add i64 %230, %223
  %232 = getelementptr i8, i8* %call1, i64 %231
  %233 = bitcast i8* %232 to <4 x double>*
  store <4 x double> %229, <4 x double>* %233, align 8, !alias.scope !108, !noalias !113
  %index.next1386 = add i64 %index1385, 4
  %vec.ind.next1392 = add <4 x i32> %vec.ind1391, <i32 4, i32 4, i32 4, i32 4>
  %234 = icmp eq i64 %index.next1386, 32
  br i1 %234, label %polly.loop_exit899, label %vector.body1383, !llvm.loop !114

polly.loop_exit899:                               ; preds = %vector.body1383
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %exitcond1075.not = icmp eq i64 %polly.indvar_next895, 32
  br i1 %exitcond1075.not, label %polly.loop_header891.1, label %polly.loop_header891

polly.loop_header222.1:                           ; preds = %polly.loop_exit230, %polly.loop_exit230.1
  %indvars.iv1019.1 = phi i64 [ %indvars.iv.next1020.1, %polly.loop_exit230.1 ], [ 50, %polly.loop_exit230 ]
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit230.1 ], [ -50, %polly.loop_exit230 ]
  %polly.indvar225.1 = phi i64 [ %polly.indvar_next226.1, %polly.loop_exit230.1 ], [ 0, %polly.loop_exit230 ]
  %235 = mul nuw nsw i64 %polly.indvar225.1, 20
  %236 = add nsw i64 %235, -50
  %smax1639 = call i64 @llvm.smax.i64(i64 %236, i64 0)
  %237 = mul nsw i64 %polly.indvar225.1, -20
  %238 = add i64 %237, 50
  %239 = add i64 %smax1639, %238
  %240 = mul nuw nsw i64 %polly.indvar225.1, 20
  %241 = icmp ugt i64 %240, 50
  %242 = select i1 %241, i64 %240, i64 50
  %polly.loop_guard.not.1 = icmp sgt i64 %242, 79
  br i1 %polly.loop_guard.not.1, label %polly.loop_exit230.1, label %polly.loop_header228.preheader.1

polly.loop_header228.preheader.1:                 ; preds = %polly.loop_header222.1
  %243 = add nsw i64 %242, -50
  %smax.1 = call i64 @llvm.smax.i64(i64 %indvars.iv.1, i64 0)
  %244 = add i64 %smax.1, %indvars.iv1019.1
  %245 = sub nsw i64 50, %240
  %246 = add nuw nsw i64 %240, 20
  br label %polly.loop_header228.1

polly.loop_header228.1:                           ; preds = %polly.loop_exit261.1, %polly.loop_header228.preheader.1
  %indvar1640 = phi i64 [ %indvar.next1641, %polly.loop_exit261.1 ], [ 0, %polly.loop_header228.preheader.1 ]
  %indvars.iv1021.1 = phi i64 [ %indvars.iv.next1022.1, %polly.loop_exit261.1 ], [ %244, %polly.loop_header228.preheader.1 ]
  %polly.indvar231.1 = phi i64 [ %polly.indvar_next232.1, %polly.loop_exit261.1 ], [ %243, %polly.loop_header228.preheader.1 ]
  %247 = add i64 %239, %indvar1640
  %smin1642 = call i64 @llvm.smin.i64(i64 %247, i64 19)
  %248 = add nsw i64 %smin1642, 1
  %smin1025.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1021.1, i64 19)
  %249 = add nsw i64 %polly.indvar231.1, %245
  %polly.loop_guard244.11154 = icmp sgt i64 %249, -1
  %250 = add nuw nsw i64 %polly.indvar231.1, 50
  %.not906.1 = icmp ult i64 %250, %246
  %polly.access.mul.call1253.1 = mul nsw i64 %250, 60
  br i1 %polly.loop_guard244.11154, label %polly.loop_header234.us.1, label %polly.loop_header228.split.1

polly.loop_header228.split.1:                     ; preds = %polly.loop_header228.1
  br i1 %.not906.1, label %polly.loop_exit261.1, label %polly.loop_header234.1

polly.loop_header234.1:                           ; preds = %polly.loop_header228.split.1, %polly.loop_header234.1
  %polly.indvar237.1 = phi i64 [ %polly.indvar_next238.1, %polly.loop_header234.1 ], [ 0, %polly.loop_header228.split.1 ]
  %polly.access.add.call1254.1 = add nuw nsw i64 %polly.indvar237.1, %polly.access.mul.call1253.1
  %polly.access.call1255.1 = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1254.1
  %polly.access.call1255.load.1 = load double, double* %polly.access.call1255.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.mul.Packed_MemRef_call1256.1 = mul nuw nsw i64 %polly.indvar237.1, 80
  %polly.access.add.Packed_MemRef_call1257.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1256.1, %249
  %polly.access.Packed_MemRef_call1258.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.1
  store double %polly.access.call1255.load.1, double* %polly.access.Packed_MemRef_call1258.1, align 8
  %polly.indvar_next238.1 = add nuw nsw i64 %polly.indvar237.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next238.1, 60
  br i1 %exitcond.1.not, label %polly.loop_header259.preheader.1, label %polly.loop_header234.1

polly.loop_header234.us.1:                        ; preds = %polly.loop_header228.1, %polly.merge.us.1
  %polly.indvar237.us.1 = phi i64 [ %polly.indvar_next238.us.1, %polly.merge.us.1 ], [ 0, %polly.loop_header228.1 ]
  %polly.access.mul.Packed_MemRef_call1.us.1 = mul nuw nsw i64 %polly.indvar237.us.1, 80
  br label %polly.loop_header241.us.1

polly.loop_header241.us.1:                        ; preds = %polly.loop_header241.us.1, %polly.loop_header234.us.1
  %polly.indvar245.us.1 = phi i64 [ %polly.indvar_next246.us.1, %polly.loop_header241.us.1 ], [ 0, %polly.loop_header234.us.1 ]
  %251 = add nuw nsw i64 %polly.indvar245.us.1, %240
  %polly.access.mul.call1249.us.1 = mul nuw nsw i64 %251, 60
  %polly.access.add.call1250.us.1 = add nuw nsw i64 %polly.access.mul.call1249.us.1, %polly.indvar237.us.1
  %polly.access.call1251.us.1 = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1250.us.1
  %polly.access.call1251.load.us.1 = load double, double* %polly.access.call1251.us.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar245.us.1, %polly.access.mul.Packed_MemRef_call1.us.1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1251.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next246.us.1 = add nuw nsw i64 %polly.indvar245.us.1, 1
  %exitcond1023.1.not = icmp eq i64 %polly.indvar245.us.1, %smin1025.1
  br i1 %exitcond1023.1.not, label %polly.cond.loopexit.us.1, label %polly.loop_header241.us.1

polly.cond.loopexit.us.1:                         ; preds = %polly.loop_header241.us.1
  br i1 %.not906.1, label %polly.merge.us.1, label %polly.then.us.1

polly.then.us.1:                                  ; preds = %polly.cond.loopexit.us.1
  %polly.access.add.call1254.us.1 = add nuw nsw i64 %polly.indvar237.us.1, %polly.access.mul.call1253.1
  %polly.access.call1255.us.1 = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1254.us.1
  %polly.access.call1255.load.us.1 = load double, double* %polly.access.call1255.us.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1257.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us.1, %249
  %polly.access.Packed_MemRef_call1258.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.us.1
  store double %polly.access.call1255.load.us.1, double* %polly.access.Packed_MemRef_call1258.us.1, align 8
  br label %polly.merge.us.1

polly.merge.us.1:                                 ; preds = %polly.then.us.1, %polly.cond.loopexit.us.1
  %polly.indvar_next238.us.1 = add nuw nsw i64 %polly.indvar237.us.1, 1
  %exitcond1024.1.not = icmp eq i64 %polly.indvar_next238.us.1, 60
  br i1 %exitcond1024.1.not, label %polly.loop_header259.preheader.1, label %polly.loop_header234.us.1

polly.loop_header259.preheader.1:                 ; preds = %polly.loop_header234.1, %polly.merge.us.1
  %252 = mul i64 %250, 640
  br i1 %polly.loop_guard244.11154, label %polly.loop_header259.us.1, label %polly.loop_exit261.1

polly.loop_header259.us.1:                        ; preds = %polly.loop_header259.preheader.1, %polly.loop_exit268.loopexit.us.1
  %polly.indvar262.us.1 = phi i64 [ %polly.indvar_next263.us.1, %polly.loop_exit268.loopexit.us.1 ], [ 0, %polly.loop_header259.preheader.1 ]
  %polly.access.mul.Packed_MemRef_call1273.us.1 = mul nuw nsw i64 %polly.indvar262.us.1, 80
  %polly.access.add.Packed_MemRef_call2278.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1273.us.1, %250
  %polly.access.Packed_MemRef_call2279.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2278.us.1
  %_p_scalar_280.us.1 = load double, double* %polly.access.Packed_MemRef_call2279.us.1, align 8
  %polly.access.add.Packed_MemRef_call1286.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1273.us.1, %249
  %polly.access.Packed_MemRef_call1287.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.us.1
  %_p_scalar_288.us.1 = load double, double* %polly.access.Packed_MemRef_call1287.us.1, align 8
  %min.iters.check1643 = icmp ult i64 %248, 4
  br i1 %min.iters.check1643, label %polly.loop_header266.us.1.preheader, label %vector.ph1644

vector.ph1644:                                    ; preds = %polly.loop_header259.us.1
  %n.vec1646 = and i64 %248, -4
  %broadcast.splatinsert1652 = insertelement <4 x double> poison, double %_p_scalar_280.us.1, i32 0
  %broadcast.splat1653 = shufflevector <4 x double> %broadcast.splatinsert1652, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1655 = insertelement <4 x double> poison, double %_p_scalar_288.us.1, i32 0
  %broadcast.splat1656 = shufflevector <4 x double> %broadcast.splatinsert1655, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1638

vector.body1638:                                  ; preds = %vector.body1638, %vector.ph1644
  %index1647 = phi i64 [ 0, %vector.ph1644 ], [ %index.next1648, %vector.body1638 ]
  %253 = add nuw nsw i64 %index1647, %240
  %254 = add nuw nsw i64 %index1647, %polly.access.mul.Packed_MemRef_call1273.us.1
  %255 = getelementptr double, double* %Packed_MemRef_call1, i64 %254
  %256 = bitcast double* %255 to <4 x double>*
  %wide.load1651 = load <4 x double>, <4 x double>* %256, align 8
  %257 = fmul fast <4 x double> %broadcast.splat1653, %wide.load1651
  %258 = add nuw nsw i64 %253, %polly.access.mul.Packed_MemRef_call1273.us.1
  %259 = getelementptr double, double* %Packed_MemRef_call2, i64 %258
  %260 = bitcast double* %259 to <4 x double>*
  %wide.load1654 = load <4 x double>, <4 x double>* %260, align 8
  %261 = fmul fast <4 x double> %broadcast.splat1656, %wide.load1654
  %262 = shl i64 %253, 3
  %263 = add i64 %262, %252
  %264 = getelementptr i8, i8* %call, i64 %263
  %265 = bitcast i8* %264 to <4 x double>*
  %wide.load1657 = load <4 x double>, <4 x double>* %265, align 8, !alias.scope !65, !noalias !67
  %266 = fadd fast <4 x double> %261, %257
  %267 = fmul fast <4 x double> %266, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %268 = fadd fast <4 x double> %267, %wide.load1657
  %269 = bitcast i8* %264 to <4 x double>*
  store <4 x double> %268, <4 x double>* %269, align 8, !alias.scope !65, !noalias !67
  %index.next1648 = add i64 %index1647, 4
  %270 = icmp eq i64 %index.next1648, %n.vec1646
  br i1 %270, label %middle.block1636, label %vector.body1638, !llvm.loop !115

middle.block1636:                                 ; preds = %vector.body1638
  %cmp.n1650 = icmp eq i64 %248, %n.vec1646
  br i1 %cmp.n1650, label %polly.loop_exit268.loopexit.us.1, label %polly.loop_header266.us.1.preheader

polly.loop_header266.us.1.preheader:              ; preds = %polly.loop_header259.us.1, %middle.block1636
  %polly.indvar270.us.1.ph = phi i64 [ 0, %polly.loop_header259.us.1 ], [ %n.vec1646, %middle.block1636 ]
  br label %polly.loop_header266.us.1

polly.loop_header266.us.1:                        ; preds = %polly.loop_header266.us.1.preheader, %polly.loop_header266.us.1
  %polly.indvar270.us.1 = phi i64 [ %polly.indvar_next271.us.1, %polly.loop_header266.us.1 ], [ %polly.indvar270.us.1.ph, %polly.loop_header266.us.1.preheader ]
  %271 = add nuw nsw i64 %polly.indvar270.us.1, %240
  %polly.access.add.Packed_MemRef_call1274.us.1 = add nuw nsw i64 %polly.indvar270.us.1, %polly.access.mul.Packed_MemRef_call1273.us.1
  %polly.access.Packed_MemRef_call1275.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1274.us.1
  %_p_scalar_276.us.1 = load double, double* %polly.access.Packed_MemRef_call1275.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_280.us.1, %_p_scalar_276.us.1
  %polly.access.add.Packed_MemRef_call2282.us.1 = add nuw nsw i64 %271, %polly.access.mul.Packed_MemRef_call1273.us.1
  %polly.access.Packed_MemRef_call2283.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us.1
  %_p_scalar_284.us.1 = load double, double* %polly.access.Packed_MemRef_call2283.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_288.us.1, %_p_scalar_284.us.1
  %272 = shl i64 %271, 3
  %273 = add i64 %272, %252
  %scevgep289.us.1 = getelementptr i8, i8* %call, i64 %273
  %scevgep289290.us.1 = bitcast i8* %scevgep289.us.1 to double*
  %_p_scalar_291.us.1 = load double, double* %scevgep289290.us.1, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_291.us.1
  store double %p_add42.i118.us.1, double* %scevgep289290.us.1, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next271.us.1 = add nuw nsw i64 %polly.indvar270.us.1, 1
  %exitcond1026.1.not = icmp eq i64 %polly.indvar270.us.1, %smin1025.1
  br i1 %exitcond1026.1.not, label %polly.loop_exit268.loopexit.us.1, label %polly.loop_header266.us.1, !llvm.loop !116

polly.loop_exit268.loopexit.us.1:                 ; preds = %polly.loop_header266.us.1, %middle.block1636
  %polly.indvar_next263.us.1 = add nuw nsw i64 %polly.indvar262.us.1, 1
  %exitcond1027.1.not = icmp eq i64 %polly.indvar_next263.us.1, 60
  br i1 %exitcond1027.1.not, label %polly.loop_exit261.1, label %polly.loop_header259.us.1

polly.loop_exit261.1:                             ; preds = %polly.loop_exit268.loopexit.us.1, %polly.loop_header228.split.1, %polly.loop_header259.preheader.1
  %polly.indvar_next232.1 = add nuw nsw i64 %polly.indvar231.1, 1
  %polly.loop_cond233.not.not.1 = icmp ult i64 %polly.indvar231.1, 29
  %indvars.iv.next1022.1 = add i64 %indvars.iv1021.1, 1
  %indvar.next1641 = add i64 %indvar1640, 1
  br i1 %polly.loop_cond233.not.not.1, label %polly.loop_header228.1, label %polly.loop_exit230.1

polly.loop_exit230.1:                             ; preds = %polly.loop_exit261.1, %polly.loop_header222.1
  %polly.indvar_next226.1 = add nuw nsw i64 %polly.indvar225.1, 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, 20
  %indvars.iv.next1020.1 = add nsw i64 %indvars.iv1019.1, -20
  %exitcond1028.1.not = icmp eq i64 %polly.indvar_next226.1, 4
  br i1 %exitcond1028.1.not, label %polly.loop_exit224.1, label %polly.loop_header222.1

polly.loop_exit224.1:                             ; preds = %polly.loop_exit230.1
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header420.1:                           ; preds = %polly.loop_exit429, %polly.loop_exit429.1
  %indvars.iv1037.1 = phi i64 [ %indvars.iv.next1038.1, %polly.loop_exit429.1 ], [ 50, %polly.loop_exit429 ]
  %indvars.iv1034.1 = phi i64 [ %indvars.iv.next1035.1, %polly.loop_exit429.1 ], [ -50, %polly.loop_exit429 ]
  %polly.indvar423.1 = phi i64 [ %polly.indvar_next424.1, %polly.loop_exit429.1 ], [ 0, %polly.loop_exit429 ]
  %274 = mul nuw nsw i64 %polly.indvar423.1, 20
  %275 = add nsw i64 %274, -50
  %smax1570 = call i64 @llvm.smax.i64(i64 %275, i64 0)
  %276 = mul nsw i64 %polly.indvar423.1, -20
  %277 = add i64 %276, 50
  %278 = add i64 %smax1570, %277
  %279 = mul nuw nsw i64 %polly.indvar423.1, 20
  %280 = icmp ugt i64 %279, 50
  %281 = select i1 %280, i64 %279, i64 50
  %polly.loop_guard430.not.1 = icmp sgt i64 %281, 79
  br i1 %polly.loop_guard430.not.1, label %polly.loop_exit429.1, label %polly.loop_header427.preheader.1

polly.loop_header427.preheader.1:                 ; preds = %polly.loop_header420.1
  %282 = add nsw i64 %281, -50
  %smax1036.1 = call i64 @llvm.smax.i64(i64 %indvars.iv1034.1, i64 0)
  %283 = add i64 %smax1036.1, %indvars.iv1037.1
  %284 = sub nsw i64 50, %279
  %285 = add nuw nsw i64 %279, 20
  br label %polly.loop_header427.1

polly.loop_header427.1:                           ; preds = %polly.loop_exit465.1, %polly.loop_header427.preheader.1
  %indvar1571 = phi i64 [ %indvar.next1572, %polly.loop_exit465.1 ], [ 0, %polly.loop_header427.preheader.1 ]
  %indvars.iv1039.1 = phi i64 [ %indvars.iv.next1040.1, %polly.loop_exit465.1 ], [ %283, %polly.loop_header427.preheader.1 ]
  %polly.indvar431.1 = phi i64 [ %polly.indvar_next432.1, %polly.loop_exit465.1 ], [ %282, %polly.loop_header427.preheader.1 ]
  %286 = add i64 %278, %indvar1571
  %smin1573 = call i64 @llvm.smin.i64(i64 %286, i64 19)
  %287 = add nsw i64 %smin1573, 1
  %smin1044.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1039.1, i64 19)
  %288 = add nsw i64 %polly.indvar431.1, %284
  %polly.loop_guard444.11156 = icmp sgt i64 %288, -1
  %289 = add nuw nsw i64 %polly.indvar431.1, 50
  %.not908.1 = icmp ult i64 %289, %285
  %polly.access.mul.call1457.1 = mul nsw i64 %289, 60
  br i1 %polly.loop_guard444.11156, label %polly.loop_header434.us.1, label %polly.loop_header427.split.1

polly.loop_header427.split.1:                     ; preds = %polly.loop_header427.1
  br i1 %.not908.1, label %polly.loop_exit465.1, label %polly.loop_header434.1

polly.loop_header434.1:                           ; preds = %polly.loop_header427.split.1, %polly.loop_header434.1
  %polly.indvar437.1 = phi i64 [ %polly.indvar_next438.1, %polly.loop_header434.1 ], [ 0, %polly.loop_header427.split.1 ]
  %polly.access.add.call1458.1 = add nuw nsw i64 %polly.indvar437.1, %polly.access.mul.call1457.1
  %polly.access.call1459.1 = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1458.1
  %polly.access.call1459.load.1 = load double, double* %polly.access.call1459.1, align 8, !alias.scope !82, !noalias !89
  %polly.access.mul.Packed_MemRef_call1297460.1 = mul nuw nsw i64 %polly.indvar437.1, 80
  %polly.access.add.Packed_MemRef_call1297461.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1297460.1, %288
  %polly.access.Packed_MemRef_call1297462.1 = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297461.1
  store double %polly.access.call1459.load.1, double* %polly.access.Packed_MemRef_call1297462.1, align 8
  %polly.indvar_next438.1 = add nuw nsw i64 %polly.indvar437.1, 1
  %exitcond1033.1.not = icmp eq i64 %polly.indvar_next438.1, 60
  br i1 %exitcond1033.1.not, label %polly.loop_header463.preheader.1, label %polly.loop_header434.1

polly.loop_header434.us.1:                        ; preds = %polly.loop_header427.1, %polly.merge453.us.1
  %polly.indvar437.us.1 = phi i64 [ %polly.indvar_next438.us.1, %polly.merge453.us.1 ], [ 0, %polly.loop_header427.1 ]
  %polly.access.mul.Packed_MemRef_call1297.us.1 = mul nuw nsw i64 %polly.indvar437.us.1, 80
  br label %polly.loop_header441.us.1

polly.loop_header441.us.1:                        ; preds = %polly.loop_header441.us.1, %polly.loop_header434.us.1
  %polly.indvar445.us.1 = phi i64 [ %polly.indvar_next446.us.1, %polly.loop_header441.us.1 ], [ 0, %polly.loop_header434.us.1 ]
  %290 = add nuw nsw i64 %polly.indvar445.us.1, %279
  %polly.access.mul.call1449.us.1 = mul nuw nsw i64 %290, 60
  %polly.access.add.call1450.us.1 = add nuw nsw i64 %polly.access.mul.call1449.us.1, %polly.indvar437.us.1
  %polly.access.call1451.us.1 = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1450.us.1
  %polly.access.call1451.load.us.1 = load double, double* %polly.access.call1451.us.1, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1297.us.1 = add nuw nsw i64 %polly.indvar445.us.1, %polly.access.mul.Packed_MemRef_call1297.us.1
  %polly.access.Packed_MemRef_call1297.us.1 = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297.us.1
  store double %polly.access.call1451.load.us.1, double* %polly.access.Packed_MemRef_call1297.us.1, align 8
  %polly.indvar_next446.us.1 = add nuw nsw i64 %polly.indvar445.us.1, 1
  %exitcond1042.1.not = icmp eq i64 %polly.indvar445.us.1, %smin1044.1
  br i1 %exitcond1042.1.not, label %polly.cond452.loopexit.us.1, label %polly.loop_header441.us.1

polly.cond452.loopexit.us.1:                      ; preds = %polly.loop_header441.us.1
  br i1 %.not908.1, label %polly.merge453.us.1, label %polly.then454.us.1

polly.then454.us.1:                               ; preds = %polly.cond452.loopexit.us.1
  %polly.access.add.call1458.us.1 = add nuw nsw i64 %polly.indvar437.us.1, %polly.access.mul.call1457.1
  %polly.access.call1459.us.1 = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1458.us.1
  %polly.access.call1459.load.us.1 = load double, double* %polly.access.call1459.us.1, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1297461.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1297.us.1, %288
  %polly.access.Packed_MemRef_call1297462.us.1 = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297461.us.1
  store double %polly.access.call1459.load.us.1, double* %polly.access.Packed_MemRef_call1297462.us.1, align 8
  br label %polly.merge453.us.1

polly.merge453.us.1:                              ; preds = %polly.then454.us.1, %polly.cond452.loopexit.us.1
  %polly.indvar_next438.us.1 = add nuw nsw i64 %polly.indvar437.us.1, 1
  %exitcond1043.1.not = icmp eq i64 %polly.indvar_next438.us.1, 60
  br i1 %exitcond1043.1.not, label %polly.loop_header463.preheader.1, label %polly.loop_header434.us.1

polly.loop_header463.preheader.1:                 ; preds = %polly.loop_header434.1, %polly.merge453.us.1
  %291 = mul i64 %289, 640
  br i1 %polly.loop_guard444.11156, label %polly.loop_header463.us.1, label %polly.loop_exit465.1

polly.loop_header463.us.1:                        ; preds = %polly.loop_header463.preheader.1, %polly.loop_exit472.loopexit.us.1
  %polly.indvar466.us.1 = phi i64 [ %polly.indvar_next467.us.1, %polly.loop_exit472.loopexit.us.1 ], [ 0, %polly.loop_header463.preheader.1 ]
  %polly.access.mul.Packed_MemRef_call1297477.us.1 = mul nuw nsw i64 %polly.indvar466.us.1, 80
  %polly.access.add.Packed_MemRef_call2299482.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1297477.us.1, %289
  %polly.access.Packed_MemRef_call2299483.us.1 = getelementptr double, double* %Packed_MemRef_call2299, i64 %polly.access.add.Packed_MemRef_call2299482.us.1
  %_p_scalar_484.us.1 = load double, double* %polly.access.Packed_MemRef_call2299483.us.1, align 8
  %polly.access.add.Packed_MemRef_call1297490.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1297477.us.1, %288
  %polly.access.Packed_MemRef_call1297491.us.1 = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297490.us.1
  %_p_scalar_492.us.1 = load double, double* %polly.access.Packed_MemRef_call1297491.us.1, align 8
  %min.iters.check1574 = icmp ult i64 %287, 4
  br i1 %min.iters.check1574, label %polly.loop_header470.us.1.preheader, label %vector.ph1575

vector.ph1575:                                    ; preds = %polly.loop_header463.us.1
  %n.vec1577 = and i64 %287, -4
  %broadcast.splatinsert1583 = insertelement <4 x double> poison, double %_p_scalar_484.us.1, i32 0
  %broadcast.splat1584 = shufflevector <4 x double> %broadcast.splatinsert1583, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1586 = insertelement <4 x double> poison, double %_p_scalar_492.us.1, i32 0
  %broadcast.splat1587 = shufflevector <4 x double> %broadcast.splatinsert1586, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1569

vector.body1569:                                  ; preds = %vector.body1569, %vector.ph1575
  %index1578 = phi i64 [ 0, %vector.ph1575 ], [ %index.next1579, %vector.body1569 ]
  %292 = add nuw nsw i64 %index1578, %279
  %293 = add nuw nsw i64 %index1578, %polly.access.mul.Packed_MemRef_call1297477.us.1
  %294 = getelementptr double, double* %Packed_MemRef_call1297, i64 %293
  %295 = bitcast double* %294 to <4 x double>*
  %wide.load1582 = load <4 x double>, <4 x double>* %295, align 8
  %296 = fmul fast <4 x double> %broadcast.splat1584, %wide.load1582
  %297 = add nuw nsw i64 %292, %polly.access.mul.Packed_MemRef_call1297477.us.1
  %298 = getelementptr double, double* %Packed_MemRef_call2299, i64 %297
  %299 = bitcast double* %298 to <4 x double>*
  %wide.load1585 = load <4 x double>, <4 x double>* %299, align 8
  %300 = fmul fast <4 x double> %broadcast.splat1587, %wide.load1585
  %301 = shl i64 %292, 3
  %302 = add i64 %301, %291
  %303 = getelementptr i8, i8* %call, i64 %302
  %304 = bitcast i8* %303 to <4 x double>*
  %wide.load1588 = load <4 x double>, <4 x double>* %304, align 8, !alias.scope !79, !noalias !81
  %305 = fadd fast <4 x double> %300, %296
  %306 = fmul fast <4 x double> %305, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %307 = fadd fast <4 x double> %306, %wide.load1588
  %308 = bitcast i8* %303 to <4 x double>*
  store <4 x double> %307, <4 x double>* %308, align 8, !alias.scope !79, !noalias !81
  %index.next1579 = add i64 %index1578, 4
  %309 = icmp eq i64 %index.next1579, %n.vec1577
  br i1 %309, label %middle.block1567, label %vector.body1569, !llvm.loop !117

middle.block1567:                                 ; preds = %vector.body1569
  %cmp.n1581 = icmp eq i64 %287, %n.vec1577
  br i1 %cmp.n1581, label %polly.loop_exit472.loopexit.us.1, label %polly.loop_header470.us.1.preheader

polly.loop_header470.us.1.preheader:              ; preds = %polly.loop_header463.us.1, %middle.block1567
  %polly.indvar474.us.1.ph = phi i64 [ 0, %polly.loop_header463.us.1 ], [ %n.vec1577, %middle.block1567 ]
  br label %polly.loop_header470.us.1

polly.loop_header470.us.1:                        ; preds = %polly.loop_header470.us.1.preheader, %polly.loop_header470.us.1
  %polly.indvar474.us.1 = phi i64 [ %polly.indvar_next475.us.1, %polly.loop_header470.us.1 ], [ %polly.indvar474.us.1.ph, %polly.loop_header470.us.1.preheader ]
  %310 = add nuw nsw i64 %polly.indvar474.us.1, %279
  %polly.access.add.Packed_MemRef_call1297478.us.1 = add nuw nsw i64 %polly.indvar474.us.1, %polly.access.mul.Packed_MemRef_call1297477.us.1
  %polly.access.Packed_MemRef_call1297479.us.1 = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297478.us.1
  %_p_scalar_480.us.1 = load double, double* %polly.access.Packed_MemRef_call1297479.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_484.us.1, %_p_scalar_480.us.1
  %polly.access.add.Packed_MemRef_call2299486.us.1 = add nuw nsw i64 %310, %polly.access.mul.Packed_MemRef_call1297477.us.1
  %polly.access.Packed_MemRef_call2299487.us.1 = getelementptr double, double* %Packed_MemRef_call2299, i64 %polly.access.add.Packed_MemRef_call2299486.us.1
  %_p_scalar_488.us.1 = load double, double* %polly.access.Packed_MemRef_call2299487.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_492.us.1, %_p_scalar_488.us.1
  %311 = shl i64 %310, 3
  %312 = add i64 %311, %291
  %scevgep493.us.1 = getelementptr i8, i8* %call, i64 %312
  %scevgep493494.us.1 = bitcast i8* %scevgep493.us.1 to double*
  %_p_scalar_495.us.1 = load double, double* %scevgep493494.us.1, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_495.us.1
  store double %p_add42.i79.us.1, double* %scevgep493494.us.1, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next475.us.1 = add nuw nsw i64 %polly.indvar474.us.1, 1
  %exitcond1045.1.not = icmp eq i64 %polly.indvar474.us.1, %smin1044.1
  br i1 %exitcond1045.1.not, label %polly.loop_exit472.loopexit.us.1, label %polly.loop_header470.us.1, !llvm.loop !118

polly.loop_exit472.loopexit.us.1:                 ; preds = %polly.loop_header470.us.1, %middle.block1567
  %polly.indvar_next467.us.1 = add nuw nsw i64 %polly.indvar466.us.1, 1
  %exitcond1046.1.not = icmp eq i64 %polly.indvar_next467.us.1, 60
  br i1 %exitcond1046.1.not, label %polly.loop_exit465.1, label %polly.loop_header463.us.1

polly.loop_exit465.1:                             ; preds = %polly.loop_exit472.loopexit.us.1, %polly.loop_header427.split.1, %polly.loop_header463.preheader.1
  %polly.indvar_next432.1 = add nuw nsw i64 %polly.indvar431.1, 1
  %polly.loop_cond433.not.not.1 = icmp ult i64 %polly.indvar431.1, 29
  %indvars.iv.next1040.1 = add i64 %indvars.iv1039.1, 1
  %indvar.next1572 = add i64 %indvar1571, 1
  br i1 %polly.loop_cond433.not.not.1, label %polly.loop_header427.1, label %polly.loop_exit429.1

polly.loop_exit429.1:                             ; preds = %polly.loop_exit465.1, %polly.loop_header420.1
  %polly.indvar_next424.1 = add nuw nsw i64 %polly.indvar423.1, 1
  %indvars.iv.next1035.1 = add nsw i64 %indvars.iv1034.1, 20
  %indvars.iv.next1038.1 = add nsw i64 %indvars.iv1037.1, -20
  %exitcond1047.1.not = icmp eq i64 %polly.indvar_next424.1, 4
  br i1 %exitcond1047.1.not, label %polly.loop_exit422.1, label %polly.loop_header420.1

polly.loop_exit422.1:                             ; preds = %polly.loop_exit429.1
  tail call void @free(i8* %malloccall296)
  tail call void @free(i8* %malloccall298)
  br label %kernel_syr2k.exit90

polly.loop_header624.1:                           ; preds = %polly.loop_exit633, %polly.loop_exit633.1
  %indvars.iv1056.1 = phi i64 [ %indvars.iv.next1057.1, %polly.loop_exit633.1 ], [ 50, %polly.loop_exit633 ]
  %indvars.iv1053.1 = phi i64 [ %indvars.iv.next1054.1, %polly.loop_exit633.1 ], [ -50, %polly.loop_exit633 ]
  %polly.indvar627.1 = phi i64 [ %polly.indvar_next628.1, %polly.loop_exit633.1 ], [ 0, %polly.loop_exit633 ]
  %313 = mul nuw nsw i64 %polly.indvar627.1, 20
  %314 = add nsw i64 %313, -50
  %smax = call i64 @llvm.smax.i64(i64 %314, i64 0)
  %315 = mul nsw i64 %polly.indvar627.1, -20
  %316 = add i64 %315, 50
  %317 = add i64 %smax, %316
  %318 = mul nuw nsw i64 %polly.indvar627.1, 20
  %319 = icmp ugt i64 %318, 50
  %320 = select i1 %319, i64 %318, i64 50
  %polly.loop_guard634.not.1 = icmp sgt i64 %320, 79
  br i1 %polly.loop_guard634.not.1, label %polly.loop_exit633.1, label %polly.loop_header631.preheader.1

polly.loop_header631.preheader.1:                 ; preds = %polly.loop_header624.1
  %321 = add nsw i64 %320, -50
  %smax1055.1 = call i64 @llvm.smax.i64(i64 %indvars.iv1053.1, i64 0)
  %322 = add i64 %smax1055.1, %indvars.iv1056.1
  %323 = sub nsw i64 50, %318
  %324 = add nuw nsw i64 %318, 20
  br label %polly.loop_header631.1

polly.loop_header631.1:                           ; preds = %polly.loop_exit669.1, %polly.loop_header631.preheader.1
  %indvar1502 = phi i64 [ %indvar.next1503, %polly.loop_exit669.1 ], [ 0, %polly.loop_header631.preheader.1 ]
  %indvars.iv1058.1 = phi i64 [ %indvars.iv.next1059.1, %polly.loop_exit669.1 ], [ %322, %polly.loop_header631.preheader.1 ]
  %polly.indvar635.1 = phi i64 [ %polly.indvar_next636.1, %polly.loop_exit669.1 ], [ %321, %polly.loop_header631.preheader.1 ]
  %325 = add i64 %317, %indvar1502
  %smin1504 = call i64 @llvm.smin.i64(i64 %325, i64 19)
  %326 = add nsw i64 %smin1504, 1
  %smin1063.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1058.1, i64 19)
  %327 = add nsw i64 %polly.indvar635.1, %323
  %polly.loop_guard648.11158 = icmp sgt i64 %327, -1
  %328 = add nuw nsw i64 %polly.indvar635.1, 50
  %.not910.1 = icmp ult i64 %328, %324
  %polly.access.mul.call1661.1 = mul nsw i64 %328, 60
  br i1 %polly.loop_guard648.11158, label %polly.loop_header638.us.1, label %polly.loop_header631.split.1

polly.loop_header631.split.1:                     ; preds = %polly.loop_header631.1
  br i1 %.not910.1, label %polly.loop_exit669.1, label %polly.loop_header638.1

polly.loop_header638.1:                           ; preds = %polly.loop_header631.split.1, %polly.loop_header638.1
  %polly.indvar641.1 = phi i64 [ %polly.indvar_next642.1, %polly.loop_header638.1 ], [ 0, %polly.loop_header631.split.1 ]
  %polly.access.add.call1662.1 = add nuw nsw i64 %polly.indvar641.1, %polly.access.mul.call1661.1
  %polly.access.call1663.1 = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1662.1
  %polly.access.call1663.load.1 = load double, double* %polly.access.call1663.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.mul.Packed_MemRef_call1501664.1 = mul nuw nsw i64 %polly.indvar641.1, 80
  %polly.access.add.Packed_MemRef_call1501665.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1501664.1, %327
  %polly.access.Packed_MemRef_call1501666.1 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501665.1
  store double %polly.access.call1663.load.1, double* %polly.access.Packed_MemRef_call1501666.1, align 8
  %polly.indvar_next642.1 = add nuw nsw i64 %polly.indvar641.1, 1
  %exitcond1052.1.not = icmp eq i64 %polly.indvar_next642.1, 60
  br i1 %exitcond1052.1.not, label %polly.loop_header667.preheader.1, label %polly.loop_header638.1

polly.loop_header638.us.1:                        ; preds = %polly.loop_header631.1, %polly.merge657.us.1
  %polly.indvar641.us.1 = phi i64 [ %polly.indvar_next642.us.1, %polly.merge657.us.1 ], [ 0, %polly.loop_header631.1 ]
  %polly.access.mul.Packed_MemRef_call1501.us.1 = mul nuw nsw i64 %polly.indvar641.us.1, 80
  br label %polly.loop_header645.us.1

polly.loop_header645.us.1:                        ; preds = %polly.loop_header645.us.1, %polly.loop_header638.us.1
  %polly.indvar649.us.1 = phi i64 [ %polly.indvar_next650.us.1, %polly.loop_header645.us.1 ], [ 0, %polly.loop_header638.us.1 ]
  %329 = add nuw nsw i64 %polly.indvar649.us.1, %318
  %polly.access.mul.call1653.us.1 = mul nuw nsw i64 %329, 60
  %polly.access.add.call1654.us.1 = add nuw nsw i64 %polly.access.mul.call1653.us.1, %polly.indvar641.us.1
  %polly.access.call1655.us.1 = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1654.us.1
  %polly.access.call1655.load.us.1 = load double, double* %polly.access.call1655.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1501.us.1 = add nuw nsw i64 %polly.indvar649.us.1, %polly.access.mul.Packed_MemRef_call1501.us.1
  %polly.access.Packed_MemRef_call1501.us.1 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501.us.1
  store double %polly.access.call1655.load.us.1, double* %polly.access.Packed_MemRef_call1501.us.1, align 8
  %polly.indvar_next650.us.1 = add nuw nsw i64 %polly.indvar649.us.1, 1
  %exitcond1061.1.not = icmp eq i64 %polly.indvar649.us.1, %smin1063.1
  br i1 %exitcond1061.1.not, label %polly.cond656.loopexit.us.1, label %polly.loop_header645.us.1

polly.cond656.loopexit.us.1:                      ; preds = %polly.loop_header645.us.1
  br i1 %.not910.1, label %polly.merge657.us.1, label %polly.then658.us.1

polly.then658.us.1:                               ; preds = %polly.cond656.loopexit.us.1
  %polly.access.add.call1662.us.1 = add nuw nsw i64 %polly.indvar641.us.1, %polly.access.mul.call1661.1
  %polly.access.call1663.us.1 = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1662.us.1
  %polly.access.call1663.load.us.1 = load double, double* %polly.access.call1663.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1501665.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1501.us.1, %327
  %polly.access.Packed_MemRef_call1501666.us.1 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501665.us.1
  store double %polly.access.call1663.load.us.1, double* %polly.access.Packed_MemRef_call1501666.us.1, align 8
  br label %polly.merge657.us.1

polly.merge657.us.1:                              ; preds = %polly.then658.us.1, %polly.cond656.loopexit.us.1
  %polly.indvar_next642.us.1 = add nuw nsw i64 %polly.indvar641.us.1, 1
  %exitcond1062.1.not = icmp eq i64 %polly.indvar_next642.us.1, 60
  br i1 %exitcond1062.1.not, label %polly.loop_header667.preheader.1, label %polly.loop_header638.us.1

polly.loop_header667.preheader.1:                 ; preds = %polly.loop_header638.1, %polly.merge657.us.1
  %330 = mul i64 %328, 640
  br i1 %polly.loop_guard648.11158, label %polly.loop_header667.us.1, label %polly.loop_exit669.1

polly.loop_header667.us.1:                        ; preds = %polly.loop_header667.preheader.1, %polly.loop_exit676.loopexit.us.1
  %polly.indvar670.us.1 = phi i64 [ %polly.indvar_next671.us.1, %polly.loop_exit676.loopexit.us.1 ], [ 0, %polly.loop_header667.preheader.1 ]
  %polly.access.mul.Packed_MemRef_call1501681.us.1 = mul nuw nsw i64 %polly.indvar670.us.1, 80
  %polly.access.add.Packed_MemRef_call2503686.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1501681.us.1, %328
  %polly.access.Packed_MemRef_call2503687.us.1 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503686.us.1
  %_p_scalar_688.us.1 = load double, double* %polly.access.Packed_MemRef_call2503687.us.1, align 8
  %polly.access.add.Packed_MemRef_call1501694.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1501681.us.1, %327
  %polly.access.Packed_MemRef_call1501695.us.1 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501694.us.1
  %_p_scalar_696.us.1 = load double, double* %polly.access.Packed_MemRef_call1501695.us.1, align 8
  %min.iters.check1505 = icmp ult i64 %326, 4
  br i1 %min.iters.check1505, label %polly.loop_header674.us.1.preheader, label %vector.ph1506

vector.ph1506:                                    ; preds = %polly.loop_header667.us.1
  %n.vec1508 = and i64 %326, -4
  %broadcast.splatinsert1514 = insertelement <4 x double> poison, double %_p_scalar_688.us.1, i32 0
  %broadcast.splat1515 = shufflevector <4 x double> %broadcast.splatinsert1514, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1517 = insertelement <4 x double> poison, double %_p_scalar_696.us.1, i32 0
  %broadcast.splat1518 = shufflevector <4 x double> %broadcast.splatinsert1517, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1501

vector.body1501:                                  ; preds = %vector.body1501, %vector.ph1506
  %index1509 = phi i64 [ 0, %vector.ph1506 ], [ %index.next1510, %vector.body1501 ]
  %331 = add nuw nsw i64 %index1509, %318
  %332 = add nuw nsw i64 %index1509, %polly.access.mul.Packed_MemRef_call1501681.us.1
  %333 = getelementptr double, double* %Packed_MemRef_call1501, i64 %332
  %334 = bitcast double* %333 to <4 x double>*
  %wide.load1513 = load <4 x double>, <4 x double>* %334, align 8
  %335 = fmul fast <4 x double> %broadcast.splat1515, %wide.load1513
  %336 = add nuw nsw i64 %331, %polly.access.mul.Packed_MemRef_call1501681.us.1
  %337 = getelementptr double, double* %Packed_MemRef_call2503, i64 %336
  %338 = bitcast double* %337 to <4 x double>*
  %wide.load1516 = load <4 x double>, <4 x double>* %338, align 8
  %339 = fmul fast <4 x double> %broadcast.splat1518, %wide.load1516
  %340 = shl i64 %331, 3
  %341 = add i64 %340, %330
  %342 = getelementptr i8, i8* %call, i64 %341
  %343 = bitcast i8* %342 to <4 x double>*
  %wide.load1519 = load <4 x double>, <4 x double>* %343, align 8, !alias.scope !92, !noalias !94
  %344 = fadd fast <4 x double> %339, %335
  %345 = fmul fast <4 x double> %344, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %346 = fadd fast <4 x double> %345, %wide.load1519
  %347 = bitcast i8* %342 to <4 x double>*
  store <4 x double> %346, <4 x double>* %347, align 8, !alias.scope !92, !noalias !94
  %index.next1510 = add i64 %index1509, 4
  %348 = icmp eq i64 %index.next1510, %n.vec1508
  br i1 %348, label %middle.block1499, label %vector.body1501, !llvm.loop !119

middle.block1499:                                 ; preds = %vector.body1501
  %cmp.n1512 = icmp eq i64 %326, %n.vec1508
  br i1 %cmp.n1512, label %polly.loop_exit676.loopexit.us.1, label %polly.loop_header674.us.1.preheader

polly.loop_header674.us.1.preheader:              ; preds = %polly.loop_header667.us.1, %middle.block1499
  %polly.indvar678.us.1.ph = phi i64 [ 0, %polly.loop_header667.us.1 ], [ %n.vec1508, %middle.block1499 ]
  br label %polly.loop_header674.us.1

polly.loop_header674.us.1:                        ; preds = %polly.loop_header674.us.1.preheader, %polly.loop_header674.us.1
  %polly.indvar678.us.1 = phi i64 [ %polly.indvar_next679.us.1, %polly.loop_header674.us.1 ], [ %polly.indvar678.us.1.ph, %polly.loop_header674.us.1.preheader ]
  %349 = add nuw nsw i64 %polly.indvar678.us.1, %318
  %polly.access.add.Packed_MemRef_call1501682.us.1 = add nuw nsw i64 %polly.indvar678.us.1, %polly.access.mul.Packed_MemRef_call1501681.us.1
  %polly.access.Packed_MemRef_call1501683.us.1 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501682.us.1
  %_p_scalar_684.us.1 = load double, double* %polly.access.Packed_MemRef_call1501683.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_688.us.1, %_p_scalar_684.us.1
  %polly.access.add.Packed_MemRef_call2503690.us.1 = add nuw nsw i64 %349, %polly.access.mul.Packed_MemRef_call1501681.us.1
  %polly.access.Packed_MemRef_call2503691.us.1 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503690.us.1
  %_p_scalar_692.us.1 = load double, double* %polly.access.Packed_MemRef_call2503691.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_696.us.1, %_p_scalar_692.us.1
  %350 = shl i64 %349, 3
  %351 = add i64 %350, %330
  %scevgep697.us.1 = getelementptr i8, i8* %call, i64 %351
  %scevgep697698.us.1 = bitcast i8* %scevgep697.us.1 to double*
  %_p_scalar_699.us.1 = load double, double* %scevgep697698.us.1, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_699.us.1
  store double %p_add42.i.us.1, double* %scevgep697698.us.1, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next679.us.1 = add nuw nsw i64 %polly.indvar678.us.1, 1
  %exitcond1064.1.not = icmp eq i64 %polly.indvar678.us.1, %smin1063.1
  br i1 %exitcond1064.1.not, label %polly.loop_exit676.loopexit.us.1, label %polly.loop_header674.us.1, !llvm.loop !120

polly.loop_exit676.loopexit.us.1:                 ; preds = %polly.loop_header674.us.1, %middle.block1499
  %polly.indvar_next671.us.1 = add nuw nsw i64 %polly.indvar670.us.1, 1
  %exitcond1065.1.not = icmp eq i64 %polly.indvar_next671.us.1, 60
  br i1 %exitcond1065.1.not, label %polly.loop_exit669.1, label %polly.loop_header667.us.1

polly.loop_exit669.1:                             ; preds = %polly.loop_exit676.loopexit.us.1, %polly.loop_header631.split.1, %polly.loop_header667.preheader.1
  %polly.indvar_next636.1 = add nuw nsw i64 %polly.indvar635.1, 1
  %polly.loop_cond637.not.not.1 = icmp ult i64 %polly.indvar635.1, 29
  %indvars.iv.next1059.1 = add i64 %indvars.iv1058.1, 1
  %indvar.next1503 = add i64 %indvar1502, 1
  br i1 %polly.loop_cond637.not.not.1, label %polly.loop_header631.1, label %polly.loop_exit633.1

polly.loop_exit633.1:                             ; preds = %polly.loop_exit669.1, %polly.loop_header624.1
  %polly.indvar_next628.1 = add nuw nsw i64 %polly.indvar627.1, 1
  %indvars.iv.next1054.1 = add nsw i64 %indvars.iv1053.1, 20
  %indvars.iv.next1057.1 = add nsw i64 %indvars.iv1056.1, -20
  %exitcond1066.1.not = icmp eq i64 %polly.indvar_next628.1, 4
  br i1 %exitcond1066.1.not, label %polly.loop_exit626.1, label %polly.loop_header624.1

polly.loop_exit626.1:                             ; preds = %polly.loop_exit633.1
  tail call void @free(i8* %malloccall500)
  tail call void @free(i8* %malloccall502)
  br label %kernel_syr2k.exit

polly.loop_header891.1:                           ; preds = %polly.loop_exit899, %polly.loop_exit899.1
  %polly.indvar894.1 = phi i64 [ %polly.indvar_next895.1, %polly.loop_exit899.1 ], [ 0, %polly.loop_exit899 ]
  %352 = mul nuw nsw i64 %polly.indvar894.1, 480
  %353 = trunc i64 %polly.indvar894.1 to i32
  %broadcast.splatinsert1405 = insertelement <4 x i32> poison, i32 %353, i32 0
  %broadcast.splat1406 = shufflevector <4 x i32> %broadcast.splatinsert1405, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1397

vector.body1397:                                  ; preds = %vector.body1397, %polly.loop_header891.1
  %index1399 = phi i64 [ 0, %polly.loop_header891.1 ], [ %index.next1400, %vector.body1397 ]
  %vec.ind1403 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header891.1 ], [ %vec.ind.next1404, %vector.body1397 ]
  %354 = add nuw nsw <4 x i64> %vec.ind1403, <i64 32, i64 32, i64 32, i64 32>
  %355 = trunc <4 x i64> %354 to <4 x i32>
  %356 = mul <4 x i32> %broadcast.splat1406, %355
  %357 = add <4 x i32> %356, <i32 1, i32 1, i32 1, i32 1>
  %358 = urem <4 x i32> %357, <i32 80, i32 80, i32 80, i32 80>
  %359 = sitofp <4 x i32> %358 to <4 x double>
  %360 = fmul fast <4 x double> %359, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %361 = extractelement <4 x i64> %354, i32 0
  %362 = shl i64 %361, 3
  %363 = add i64 %362, %352
  %364 = getelementptr i8, i8* %call1, i64 %363
  %365 = bitcast i8* %364 to <4 x double>*
  store <4 x double> %360, <4 x double>* %365, align 8, !alias.scope !108, !noalias !113
  %index.next1400 = add i64 %index1399, 4
  %vec.ind.next1404 = add <4 x i64> %vec.ind1403, <i64 4, i64 4, i64 4, i64 4>
  %366 = icmp eq i64 %index.next1400, 28
  br i1 %366, label %polly.loop_exit899.1, label %vector.body1397, !llvm.loop !121

polly.loop_exit899.1:                             ; preds = %vector.body1397
  %polly.indvar_next895.1 = add nuw nsw i64 %polly.indvar894.1, 1
  %exitcond1075.1.not = icmp eq i64 %polly.indvar_next895.1, 32
  br i1 %exitcond1075.1.not, label %polly.loop_header891.11098, label %polly.loop_header891.1

polly.loop_header891.11098:                       ; preds = %polly.loop_exit899.1, %polly.loop_exit899.11109
  %polly.indvar894.11097 = phi i64 [ %polly.indvar_next895.11107, %polly.loop_exit899.11109 ], [ 0, %polly.loop_exit899.1 ]
  %367 = add nuw nsw i64 %polly.indvar894.11097, 32
  %368 = mul nuw nsw i64 %367, 480
  %369 = trunc i64 %367 to i32
  %broadcast.splatinsert1419 = insertelement <4 x i32> poison, i32 %369, i32 0
  %broadcast.splat1420 = shufflevector <4 x i32> %broadcast.splatinsert1419, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1409

vector.body1409:                                  ; preds = %vector.body1409, %polly.loop_header891.11098
  %index1411 = phi i64 [ 0, %polly.loop_header891.11098 ], [ %index.next1412, %vector.body1409 ]
  %vec.ind1417 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header891.11098 ], [ %vec.ind.next1418, %vector.body1409 ]
  %370 = mul <4 x i32> %vec.ind1417, %broadcast.splat1420
  %371 = add <4 x i32> %370, <i32 1, i32 1, i32 1, i32 1>
  %372 = urem <4 x i32> %371, <i32 80, i32 80, i32 80, i32 80>
  %373 = sitofp <4 x i32> %372 to <4 x double>
  %374 = fmul fast <4 x double> %373, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %375 = shl i64 %index1411, 3
  %376 = add i64 %375, %368
  %377 = getelementptr i8, i8* %call1, i64 %376
  %378 = bitcast i8* %377 to <4 x double>*
  store <4 x double> %374, <4 x double>* %378, align 8, !alias.scope !108, !noalias !113
  %index.next1412 = add i64 %index1411, 4
  %vec.ind.next1418 = add <4 x i32> %vec.ind1417, <i32 4, i32 4, i32 4, i32 4>
  %379 = icmp eq i64 %index.next1412, 32
  br i1 %379, label %polly.loop_exit899.11109, label %vector.body1409, !llvm.loop !122

polly.loop_exit899.11109:                         ; preds = %vector.body1409
  %polly.indvar_next895.11107 = add nuw nsw i64 %polly.indvar894.11097, 1
  %exitcond1075.11108.not = icmp eq i64 %polly.indvar_next895.11107, 32
  br i1 %exitcond1075.11108.not, label %polly.loop_header891.1.1, label %polly.loop_header891.11098

polly.loop_header891.1.1:                         ; preds = %polly.loop_exit899.11109, %polly.loop_exit899.1.1
  %polly.indvar894.1.1 = phi i64 [ %polly.indvar_next895.1.1, %polly.loop_exit899.1.1 ], [ 0, %polly.loop_exit899.11109 ]
  %380 = add nuw nsw i64 %polly.indvar894.1.1, 32
  %381 = mul nuw nsw i64 %380, 480
  %382 = trunc i64 %380 to i32
  %broadcast.splatinsert1431 = insertelement <4 x i32> poison, i32 %382, i32 0
  %broadcast.splat1432 = shufflevector <4 x i32> %broadcast.splatinsert1431, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1423

vector.body1423:                                  ; preds = %vector.body1423, %polly.loop_header891.1.1
  %index1425 = phi i64 [ 0, %polly.loop_header891.1.1 ], [ %index.next1426, %vector.body1423 ]
  %vec.ind1429 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header891.1.1 ], [ %vec.ind.next1430, %vector.body1423 ]
  %383 = add nuw nsw <4 x i64> %vec.ind1429, <i64 32, i64 32, i64 32, i64 32>
  %384 = trunc <4 x i64> %383 to <4 x i32>
  %385 = mul <4 x i32> %broadcast.splat1432, %384
  %386 = add <4 x i32> %385, <i32 1, i32 1, i32 1, i32 1>
  %387 = urem <4 x i32> %386, <i32 80, i32 80, i32 80, i32 80>
  %388 = sitofp <4 x i32> %387 to <4 x double>
  %389 = fmul fast <4 x double> %388, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %390 = extractelement <4 x i64> %383, i32 0
  %391 = shl i64 %390, 3
  %392 = add i64 %391, %381
  %393 = getelementptr i8, i8* %call1, i64 %392
  %394 = bitcast i8* %393 to <4 x double>*
  store <4 x double> %389, <4 x double>* %394, align 8, !alias.scope !108, !noalias !113
  %index.next1426 = add i64 %index1425, 4
  %vec.ind.next1430 = add <4 x i64> %vec.ind1429, <i64 4, i64 4, i64 4, i64 4>
  %395 = icmp eq i64 %index.next1426, 28
  br i1 %395, label %polly.loop_exit899.1.1, label %vector.body1423, !llvm.loop !123

polly.loop_exit899.1.1:                           ; preds = %vector.body1423
  %polly.indvar_next895.1.1 = add nuw nsw i64 %polly.indvar894.1.1, 1
  %exitcond1075.1.1.not = icmp eq i64 %polly.indvar_next895.1.1, 32
  br i1 %exitcond1075.1.1.not, label %polly.loop_header891.2, label %polly.loop_header891.1.1

polly.loop_header891.2:                           ; preds = %polly.loop_exit899.1.1, %polly.loop_exit899.2
  %polly.indvar894.2 = phi i64 [ %polly.indvar_next895.2, %polly.loop_exit899.2 ], [ 0, %polly.loop_exit899.1.1 ]
  %396 = add nuw nsw i64 %polly.indvar894.2, 64
  %397 = mul nuw nsw i64 %396, 480
  %398 = trunc i64 %396 to i32
  %broadcast.splatinsert1445 = insertelement <4 x i32> poison, i32 %398, i32 0
  %broadcast.splat1446 = shufflevector <4 x i32> %broadcast.splatinsert1445, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1435

vector.body1435:                                  ; preds = %vector.body1435, %polly.loop_header891.2
  %index1437 = phi i64 [ 0, %polly.loop_header891.2 ], [ %index.next1438, %vector.body1435 ]
  %vec.ind1443 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header891.2 ], [ %vec.ind.next1444, %vector.body1435 ]
  %399 = mul <4 x i32> %vec.ind1443, %broadcast.splat1446
  %400 = add <4 x i32> %399, <i32 1, i32 1, i32 1, i32 1>
  %401 = urem <4 x i32> %400, <i32 80, i32 80, i32 80, i32 80>
  %402 = sitofp <4 x i32> %401 to <4 x double>
  %403 = fmul fast <4 x double> %402, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %404 = shl i64 %index1437, 3
  %405 = add i64 %404, %397
  %406 = getelementptr i8, i8* %call1, i64 %405
  %407 = bitcast i8* %406 to <4 x double>*
  store <4 x double> %403, <4 x double>* %407, align 8, !alias.scope !108, !noalias !113
  %index.next1438 = add i64 %index1437, 4
  %vec.ind.next1444 = add <4 x i32> %vec.ind1443, <i32 4, i32 4, i32 4, i32 4>
  %408 = icmp eq i64 %index.next1438, 32
  br i1 %408, label %polly.loop_exit899.2, label %vector.body1435, !llvm.loop !124

polly.loop_exit899.2:                             ; preds = %vector.body1435
  %polly.indvar_next895.2 = add nuw nsw i64 %polly.indvar894.2, 1
  %exitcond1075.2.not = icmp eq i64 %polly.indvar_next895.2, 16
  br i1 %exitcond1075.2.not, label %polly.loop_header891.1.2, label %polly.loop_header891.2

polly.loop_header891.1.2:                         ; preds = %polly.loop_exit899.2, %polly.loop_exit899.1.2
  %polly.indvar894.1.2 = phi i64 [ %polly.indvar_next895.1.2, %polly.loop_exit899.1.2 ], [ 0, %polly.loop_exit899.2 ]
  %409 = add nuw nsw i64 %polly.indvar894.1.2, 64
  %410 = mul nuw nsw i64 %409, 480
  %411 = trunc i64 %409 to i32
  %broadcast.splatinsert1457 = insertelement <4 x i32> poison, i32 %411, i32 0
  %broadcast.splat1458 = shufflevector <4 x i32> %broadcast.splatinsert1457, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1449

vector.body1449:                                  ; preds = %vector.body1449, %polly.loop_header891.1.2
  %index1451 = phi i64 [ 0, %polly.loop_header891.1.2 ], [ %index.next1452, %vector.body1449 ]
  %vec.ind1455 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header891.1.2 ], [ %vec.ind.next1456, %vector.body1449 ]
  %412 = add nuw nsw <4 x i64> %vec.ind1455, <i64 32, i64 32, i64 32, i64 32>
  %413 = trunc <4 x i64> %412 to <4 x i32>
  %414 = mul <4 x i32> %broadcast.splat1458, %413
  %415 = add <4 x i32> %414, <i32 1, i32 1, i32 1, i32 1>
  %416 = urem <4 x i32> %415, <i32 80, i32 80, i32 80, i32 80>
  %417 = sitofp <4 x i32> %416 to <4 x double>
  %418 = fmul fast <4 x double> %417, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %419 = extractelement <4 x i64> %412, i32 0
  %420 = shl i64 %419, 3
  %421 = add i64 %420, %410
  %422 = getelementptr i8, i8* %call1, i64 %421
  %423 = bitcast i8* %422 to <4 x double>*
  store <4 x double> %418, <4 x double>* %423, align 8, !alias.scope !108, !noalias !113
  %index.next1452 = add i64 %index1451, 4
  %vec.ind.next1456 = add <4 x i64> %vec.ind1455, <i64 4, i64 4, i64 4, i64 4>
  %424 = icmp eq i64 %index.next1452, 28
  br i1 %424, label %polly.loop_exit899.1.2, label %vector.body1449, !llvm.loop !125

polly.loop_exit899.1.2:                           ; preds = %vector.body1449
  %polly.indvar_next895.1.2 = add nuw nsw i64 %polly.indvar894.1.2, 1
  %exitcond1075.1.2.not = icmp eq i64 %polly.indvar_next895.1.2, 16
  br i1 %exitcond1075.1.2.not, label %init_array.exit, label %polly.loop_header891.1.2

polly.loop_header865.1:                           ; preds = %polly.loop_exit873, %polly.loop_exit873.1
  %polly.indvar868.1 = phi i64 [ %polly.indvar_next869.1, %polly.loop_exit873.1 ], [ 0, %polly.loop_exit873 ]
  %425 = mul nuw nsw i64 %polly.indvar868.1, 480
  %426 = trunc i64 %polly.indvar868.1 to i32
  %broadcast.splatinsert1327 = insertelement <4 x i32> poison, i32 %426, i32 0
  %broadcast.splat1328 = shufflevector <4 x i32> %broadcast.splatinsert1327, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1319

vector.body1319:                                  ; preds = %vector.body1319, %polly.loop_header865.1
  %index1321 = phi i64 [ 0, %polly.loop_header865.1 ], [ %index.next1322, %vector.body1319 ]
  %vec.ind1325 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header865.1 ], [ %vec.ind.next1326, %vector.body1319 ]
  %427 = add nuw nsw <4 x i64> %vec.ind1325, <i64 32, i64 32, i64 32, i64 32>
  %428 = trunc <4 x i64> %427 to <4 x i32>
  %429 = mul <4 x i32> %broadcast.splat1328, %428
  %430 = add <4 x i32> %429, <i32 2, i32 2, i32 2, i32 2>
  %431 = urem <4 x i32> %430, <i32 60, i32 60, i32 60, i32 60>
  %432 = sitofp <4 x i32> %431 to <4 x double>
  %433 = fmul fast <4 x double> %432, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %434 = extractelement <4 x i64> %427, i32 0
  %435 = shl i64 %434, 3
  %436 = add i64 %435, %425
  %437 = getelementptr i8, i8* %call2, i64 %436
  %438 = bitcast i8* %437 to <4 x double>*
  store <4 x double> %433, <4 x double>* %438, align 8, !alias.scope !109, !noalias !111
  %index.next1322 = add i64 %index1321, 4
  %vec.ind.next1326 = add <4 x i64> %vec.ind1325, <i64 4, i64 4, i64 4, i64 4>
  %439 = icmp eq i64 %index.next1322, 28
  br i1 %439, label %polly.loop_exit873.1, label %vector.body1319, !llvm.loop !126

polly.loop_exit873.1:                             ; preds = %vector.body1319
  %polly.indvar_next869.1 = add nuw nsw i64 %polly.indvar868.1, 1
  %exitcond1081.1.not = icmp eq i64 %polly.indvar_next869.1, 32
  br i1 %exitcond1081.1.not, label %polly.loop_header865.11112, label %polly.loop_header865.1

polly.loop_header865.11112:                       ; preds = %polly.loop_exit873.1, %polly.loop_exit873.11123
  %polly.indvar868.11111 = phi i64 [ %polly.indvar_next869.11121, %polly.loop_exit873.11123 ], [ 0, %polly.loop_exit873.1 ]
  %440 = add nuw nsw i64 %polly.indvar868.11111, 32
  %441 = mul nuw nsw i64 %440, 480
  %442 = trunc i64 %440 to i32
  %broadcast.splatinsert1341 = insertelement <4 x i32> poison, i32 %442, i32 0
  %broadcast.splat1342 = shufflevector <4 x i32> %broadcast.splatinsert1341, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1331

vector.body1331:                                  ; preds = %vector.body1331, %polly.loop_header865.11112
  %index1333 = phi i64 [ 0, %polly.loop_header865.11112 ], [ %index.next1334, %vector.body1331 ]
  %vec.ind1339 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header865.11112 ], [ %vec.ind.next1340, %vector.body1331 ]
  %443 = mul <4 x i32> %vec.ind1339, %broadcast.splat1342
  %444 = add <4 x i32> %443, <i32 2, i32 2, i32 2, i32 2>
  %445 = urem <4 x i32> %444, <i32 60, i32 60, i32 60, i32 60>
  %446 = sitofp <4 x i32> %445 to <4 x double>
  %447 = fmul fast <4 x double> %446, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %448 = shl i64 %index1333, 3
  %449 = add i64 %448, %441
  %450 = getelementptr i8, i8* %call2, i64 %449
  %451 = bitcast i8* %450 to <4 x double>*
  store <4 x double> %447, <4 x double>* %451, align 8, !alias.scope !109, !noalias !111
  %index.next1334 = add i64 %index1333, 4
  %vec.ind.next1340 = add <4 x i32> %vec.ind1339, <i32 4, i32 4, i32 4, i32 4>
  %452 = icmp eq i64 %index.next1334, 32
  br i1 %452, label %polly.loop_exit873.11123, label %vector.body1331, !llvm.loop !127

polly.loop_exit873.11123:                         ; preds = %vector.body1331
  %polly.indvar_next869.11121 = add nuw nsw i64 %polly.indvar868.11111, 1
  %exitcond1081.11122.not = icmp eq i64 %polly.indvar_next869.11121, 32
  br i1 %exitcond1081.11122.not, label %polly.loop_header865.1.1, label %polly.loop_header865.11112

polly.loop_header865.1.1:                         ; preds = %polly.loop_exit873.11123, %polly.loop_exit873.1.1
  %polly.indvar868.1.1 = phi i64 [ %polly.indvar_next869.1.1, %polly.loop_exit873.1.1 ], [ 0, %polly.loop_exit873.11123 ]
  %453 = add nuw nsw i64 %polly.indvar868.1.1, 32
  %454 = mul nuw nsw i64 %453, 480
  %455 = trunc i64 %453 to i32
  %broadcast.splatinsert1353 = insertelement <4 x i32> poison, i32 %455, i32 0
  %broadcast.splat1354 = shufflevector <4 x i32> %broadcast.splatinsert1353, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1345

vector.body1345:                                  ; preds = %vector.body1345, %polly.loop_header865.1.1
  %index1347 = phi i64 [ 0, %polly.loop_header865.1.1 ], [ %index.next1348, %vector.body1345 ]
  %vec.ind1351 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header865.1.1 ], [ %vec.ind.next1352, %vector.body1345 ]
  %456 = add nuw nsw <4 x i64> %vec.ind1351, <i64 32, i64 32, i64 32, i64 32>
  %457 = trunc <4 x i64> %456 to <4 x i32>
  %458 = mul <4 x i32> %broadcast.splat1354, %457
  %459 = add <4 x i32> %458, <i32 2, i32 2, i32 2, i32 2>
  %460 = urem <4 x i32> %459, <i32 60, i32 60, i32 60, i32 60>
  %461 = sitofp <4 x i32> %460 to <4 x double>
  %462 = fmul fast <4 x double> %461, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %463 = extractelement <4 x i64> %456, i32 0
  %464 = shl i64 %463, 3
  %465 = add i64 %464, %454
  %466 = getelementptr i8, i8* %call2, i64 %465
  %467 = bitcast i8* %466 to <4 x double>*
  store <4 x double> %462, <4 x double>* %467, align 8, !alias.scope !109, !noalias !111
  %index.next1348 = add i64 %index1347, 4
  %vec.ind.next1352 = add <4 x i64> %vec.ind1351, <i64 4, i64 4, i64 4, i64 4>
  %468 = icmp eq i64 %index.next1348, 28
  br i1 %468, label %polly.loop_exit873.1.1, label %vector.body1345, !llvm.loop !128

polly.loop_exit873.1.1:                           ; preds = %vector.body1345
  %polly.indvar_next869.1.1 = add nuw nsw i64 %polly.indvar868.1.1, 1
  %exitcond1081.1.1.not = icmp eq i64 %polly.indvar_next869.1.1, 32
  br i1 %exitcond1081.1.1.not, label %polly.loop_header865.2, label %polly.loop_header865.1.1

polly.loop_header865.2:                           ; preds = %polly.loop_exit873.1.1, %polly.loop_exit873.2
  %polly.indvar868.2 = phi i64 [ %polly.indvar_next869.2, %polly.loop_exit873.2 ], [ 0, %polly.loop_exit873.1.1 ]
  %469 = add nuw nsw i64 %polly.indvar868.2, 64
  %470 = mul nuw nsw i64 %469, 480
  %471 = trunc i64 %469 to i32
  %broadcast.splatinsert1367 = insertelement <4 x i32> poison, i32 %471, i32 0
  %broadcast.splat1368 = shufflevector <4 x i32> %broadcast.splatinsert1367, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1357

vector.body1357:                                  ; preds = %vector.body1357, %polly.loop_header865.2
  %index1359 = phi i64 [ 0, %polly.loop_header865.2 ], [ %index.next1360, %vector.body1357 ]
  %vec.ind1365 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header865.2 ], [ %vec.ind.next1366, %vector.body1357 ]
  %472 = mul <4 x i32> %vec.ind1365, %broadcast.splat1368
  %473 = add <4 x i32> %472, <i32 2, i32 2, i32 2, i32 2>
  %474 = urem <4 x i32> %473, <i32 60, i32 60, i32 60, i32 60>
  %475 = sitofp <4 x i32> %474 to <4 x double>
  %476 = fmul fast <4 x double> %475, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %477 = shl i64 %index1359, 3
  %478 = add i64 %477, %470
  %479 = getelementptr i8, i8* %call2, i64 %478
  %480 = bitcast i8* %479 to <4 x double>*
  store <4 x double> %476, <4 x double>* %480, align 8, !alias.scope !109, !noalias !111
  %index.next1360 = add i64 %index1359, 4
  %vec.ind.next1366 = add <4 x i32> %vec.ind1365, <i32 4, i32 4, i32 4, i32 4>
  %481 = icmp eq i64 %index.next1360, 32
  br i1 %481, label %polly.loop_exit873.2, label %vector.body1357, !llvm.loop !129

polly.loop_exit873.2:                             ; preds = %vector.body1357
  %polly.indvar_next869.2 = add nuw nsw i64 %polly.indvar868.2, 1
  %exitcond1081.2.not = icmp eq i64 %polly.indvar_next869.2, 16
  br i1 %exitcond1081.2.not, label %polly.loop_header865.1.2, label %polly.loop_header865.2

polly.loop_header865.1.2:                         ; preds = %polly.loop_exit873.2, %polly.loop_exit873.1.2
  %polly.indvar868.1.2 = phi i64 [ %polly.indvar_next869.1.2, %polly.loop_exit873.1.2 ], [ 0, %polly.loop_exit873.2 ]
  %482 = add nuw nsw i64 %polly.indvar868.1.2, 64
  %483 = mul nuw nsw i64 %482, 480
  %484 = trunc i64 %482 to i32
  %broadcast.splatinsert1379 = insertelement <4 x i32> poison, i32 %484, i32 0
  %broadcast.splat1380 = shufflevector <4 x i32> %broadcast.splatinsert1379, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1371

vector.body1371:                                  ; preds = %vector.body1371, %polly.loop_header865.1.2
  %index1373 = phi i64 [ 0, %polly.loop_header865.1.2 ], [ %index.next1374, %vector.body1371 ]
  %vec.ind1377 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header865.1.2 ], [ %vec.ind.next1378, %vector.body1371 ]
  %485 = add nuw nsw <4 x i64> %vec.ind1377, <i64 32, i64 32, i64 32, i64 32>
  %486 = trunc <4 x i64> %485 to <4 x i32>
  %487 = mul <4 x i32> %broadcast.splat1380, %486
  %488 = add <4 x i32> %487, <i32 2, i32 2, i32 2, i32 2>
  %489 = urem <4 x i32> %488, <i32 60, i32 60, i32 60, i32 60>
  %490 = sitofp <4 x i32> %489 to <4 x double>
  %491 = fmul fast <4 x double> %490, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %492 = extractelement <4 x i64> %485, i32 0
  %493 = shl i64 %492, 3
  %494 = add i64 %493, %483
  %495 = getelementptr i8, i8* %call2, i64 %494
  %496 = bitcast i8* %495 to <4 x double>*
  store <4 x double> %491, <4 x double>* %496, align 8, !alias.scope !109, !noalias !111
  %index.next1374 = add i64 %index1373, 4
  %vec.ind.next1378 = add <4 x i64> %vec.ind1377, <i64 4, i64 4, i64 4, i64 4>
  %497 = icmp eq i64 %index.next1374, 28
  br i1 %497, label %polly.loop_exit873.1.2, label %vector.body1371, !llvm.loop !130

polly.loop_exit873.1.2:                           ; preds = %vector.body1371
  %polly.indvar_next869.1.2 = add nuw nsw i64 %polly.indvar868.1.2, 1
  %exitcond1081.1.2.not = icmp eq i64 %polly.indvar_next869.1.2, 16
  br i1 %exitcond1081.1.2.not, label %polly.loop_header891, label %polly.loop_header865.1.2

polly.loop_header838.1:                           ; preds = %polly.loop_exit846, %polly.loop_exit846.1
  %polly.indvar841.1 = phi i64 [ %polly.indvar_next842.1, %polly.loop_exit846.1 ], [ 0, %polly.loop_exit846 ]
  %498 = mul nuw nsw i64 %polly.indvar841.1, 640
  %499 = trunc i64 %polly.indvar841.1 to i32
  %broadcast.splatinsert1213 = insertelement <4 x i32> poison, i32 %499, i32 0
  %broadcast.splat1214 = shufflevector <4 x i32> %broadcast.splatinsert1213, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1205

vector.body1205:                                  ; preds = %vector.body1205, %polly.loop_header838.1
  %index1207 = phi i64 [ 0, %polly.loop_header838.1 ], [ %index.next1208, %vector.body1205 ]
  %vec.ind1211 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header838.1 ], [ %vec.ind.next1212, %vector.body1205 ]
  %500 = add nuw nsw <4 x i64> %vec.ind1211, <i64 32, i64 32, i64 32, i64 32>
  %501 = trunc <4 x i64> %500 to <4 x i32>
  %502 = mul <4 x i32> %broadcast.splat1214, %501
  %503 = add <4 x i32> %502, <i32 3, i32 3, i32 3, i32 3>
  %504 = urem <4 x i32> %503, <i32 80, i32 80, i32 80, i32 80>
  %505 = sitofp <4 x i32> %504 to <4 x double>
  %506 = fmul fast <4 x double> %505, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %507 = extractelement <4 x i64> %500, i32 0
  %508 = shl i64 %507, 3
  %509 = add nuw nsw i64 %508, %498
  %510 = getelementptr i8, i8* %call, i64 %509
  %511 = bitcast i8* %510 to <4 x double>*
  store <4 x double> %506, <4 x double>* %511, align 8, !alias.scope !105, !noalias !107
  %index.next1208 = add i64 %index1207, 4
  %vec.ind.next1212 = add <4 x i64> %vec.ind1211, <i64 4, i64 4, i64 4, i64 4>
  %512 = icmp eq i64 %index.next1208, 32
  br i1 %512, label %polly.loop_exit846.1, label %vector.body1205, !llvm.loop !131

polly.loop_exit846.1:                             ; preds = %vector.body1205
  %polly.indvar_next842.1 = add nuw nsw i64 %polly.indvar841.1, 1
  %exitcond1090.1.not = icmp eq i64 %polly.indvar_next842.1, 32
  br i1 %exitcond1090.1.not, label %polly.loop_header838.2, label %polly.loop_header838.1

polly.loop_header838.2:                           ; preds = %polly.loop_exit846.1, %polly.loop_exit846.2
  %polly.indvar841.2 = phi i64 [ %polly.indvar_next842.2, %polly.loop_exit846.2 ], [ 0, %polly.loop_exit846.1 ]
  %513 = mul nuw nsw i64 %polly.indvar841.2, 640
  %514 = trunc i64 %polly.indvar841.2 to i32
  %broadcast.splatinsert1225 = insertelement <4 x i32> poison, i32 %514, i32 0
  %broadcast.splat1226 = shufflevector <4 x i32> %broadcast.splatinsert1225, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1217

vector.body1217:                                  ; preds = %vector.body1217, %polly.loop_header838.2
  %index1219 = phi i64 [ 0, %polly.loop_header838.2 ], [ %index.next1220, %vector.body1217 ]
  %vec.ind1223 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header838.2 ], [ %vec.ind.next1224, %vector.body1217 ]
  %515 = add nuw nsw <4 x i64> %vec.ind1223, <i64 64, i64 64, i64 64, i64 64>
  %516 = trunc <4 x i64> %515 to <4 x i32>
  %517 = mul <4 x i32> %broadcast.splat1226, %516
  %518 = add <4 x i32> %517, <i32 3, i32 3, i32 3, i32 3>
  %519 = urem <4 x i32> %518, <i32 80, i32 80, i32 80, i32 80>
  %520 = sitofp <4 x i32> %519 to <4 x double>
  %521 = fmul fast <4 x double> %520, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %522 = extractelement <4 x i64> %515, i32 0
  %523 = shl i64 %522, 3
  %524 = add nuw nsw i64 %523, %513
  %525 = getelementptr i8, i8* %call, i64 %524
  %526 = bitcast i8* %525 to <4 x double>*
  store <4 x double> %521, <4 x double>* %526, align 8, !alias.scope !105, !noalias !107
  %index.next1220 = add i64 %index1219, 4
  %vec.ind.next1224 = add <4 x i64> %vec.ind1223, <i64 4, i64 4, i64 4, i64 4>
  %527 = icmp eq i64 %index.next1220, 16
  br i1 %527, label %polly.loop_exit846.2, label %vector.body1217, !llvm.loop !132

polly.loop_exit846.2:                             ; preds = %vector.body1217
  %polly.indvar_next842.2 = add nuw nsw i64 %polly.indvar841.2, 1
  %exitcond1090.2.not = icmp eq i64 %polly.indvar_next842.2, 32
  br i1 %exitcond1090.2.not, label %polly.loop_header838.11126, label %polly.loop_header838.2

polly.loop_header838.11126:                       ; preds = %polly.loop_exit846.2, %polly.loop_exit846.11137
  %polly.indvar841.11125 = phi i64 [ %polly.indvar_next842.11135, %polly.loop_exit846.11137 ], [ 0, %polly.loop_exit846.2 ]
  %528 = add nuw nsw i64 %polly.indvar841.11125, 32
  %529 = mul nuw nsw i64 %528, 640
  %530 = trunc i64 %528 to i32
  %broadcast.splatinsert1239 = insertelement <4 x i32> poison, i32 %530, i32 0
  %broadcast.splat1240 = shufflevector <4 x i32> %broadcast.splatinsert1239, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1229

vector.body1229:                                  ; preds = %vector.body1229, %polly.loop_header838.11126
  %index1231 = phi i64 [ 0, %polly.loop_header838.11126 ], [ %index.next1232, %vector.body1229 ]
  %vec.ind1237 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header838.11126 ], [ %vec.ind.next1238, %vector.body1229 ]
  %531 = mul <4 x i32> %vec.ind1237, %broadcast.splat1240
  %532 = add <4 x i32> %531, <i32 3, i32 3, i32 3, i32 3>
  %533 = urem <4 x i32> %532, <i32 80, i32 80, i32 80, i32 80>
  %534 = sitofp <4 x i32> %533 to <4 x double>
  %535 = fmul fast <4 x double> %534, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %536 = shl i64 %index1231, 3
  %537 = add nuw nsw i64 %536, %529
  %538 = getelementptr i8, i8* %call, i64 %537
  %539 = bitcast i8* %538 to <4 x double>*
  store <4 x double> %535, <4 x double>* %539, align 8, !alias.scope !105, !noalias !107
  %index.next1232 = add i64 %index1231, 4
  %vec.ind.next1238 = add <4 x i32> %vec.ind1237, <i32 4, i32 4, i32 4, i32 4>
  %540 = icmp eq i64 %index.next1232, 32
  br i1 %540, label %polly.loop_exit846.11137, label %vector.body1229, !llvm.loop !133

polly.loop_exit846.11137:                         ; preds = %vector.body1229
  %polly.indvar_next842.11135 = add nuw nsw i64 %polly.indvar841.11125, 1
  %exitcond1090.11136.not = icmp eq i64 %polly.indvar_next842.11135, 32
  br i1 %exitcond1090.11136.not, label %polly.loop_header838.1.1, label %polly.loop_header838.11126

polly.loop_header838.1.1:                         ; preds = %polly.loop_exit846.11137, %polly.loop_exit846.1.1
  %polly.indvar841.1.1 = phi i64 [ %polly.indvar_next842.1.1, %polly.loop_exit846.1.1 ], [ 0, %polly.loop_exit846.11137 ]
  %541 = add nuw nsw i64 %polly.indvar841.1.1, 32
  %542 = mul nuw nsw i64 %541, 640
  %543 = trunc i64 %541 to i32
  %broadcast.splatinsert1251 = insertelement <4 x i32> poison, i32 %543, i32 0
  %broadcast.splat1252 = shufflevector <4 x i32> %broadcast.splatinsert1251, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1243

vector.body1243:                                  ; preds = %vector.body1243, %polly.loop_header838.1.1
  %index1245 = phi i64 [ 0, %polly.loop_header838.1.1 ], [ %index.next1246, %vector.body1243 ]
  %vec.ind1249 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header838.1.1 ], [ %vec.ind.next1250, %vector.body1243 ]
  %544 = add nuw nsw <4 x i64> %vec.ind1249, <i64 32, i64 32, i64 32, i64 32>
  %545 = trunc <4 x i64> %544 to <4 x i32>
  %546 = mul <4 x i32> %broadcast.splat1252, %545
  %547 = add <4 x i32> %546, <i32 3, i32 3, i32 3, i32 3>
  %548 = urem <4 x i32> %547, <i32 80, i32 80, i32 80, i32 80>
  %549 = sitofp <4 x i32> %548 to <4 x double>
  %550 = fmul fast <4 x double> %549, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %551 = extractelement <4 x i64> %544, i32 0
  %552 = shl i64 %551, 3
  %553 = add nuw nsw i64 %552, %542
  %554 = getelementptr i8, i8* %call, i64 %553
  %555 = bitcast i8* %554 to <4 x double>*
  store <4 x double> %550, <4 x double>* %555, align 8, !alias.scope !105, !noalias !107
  %index.next1246 = add i64 %index1245, 4
  %vec.ind.next1250 = add <4 x i64> %vec.ind1249, <i64 4, i64 4, i64 4, i64 4>
  %556 = icmp eq i64 %index.next1246, 32
  br i1 %556, label %polly.loop_exit846.1.1, label %vector.body1243, !llvm.loop !134

polly.loop_exit846.1.1:                           ; preds = %vector.body1243
  %polly.indvar_next842.1.1 = add nuw nsw i64 %polly.indvar841.1.1, 1
  %exitcond1090.1.1.not = icmp eq i64 %polly.indvar_next842.1.1, 32
  br i1 %exitcond1090.1.1.not, label %polly.loop_header838.2.1, label %polly.loop_header838.1.1

polly.loop_header838.2.1:                         ; preds = %polly.loop_exit846.1.1, %polly.loop_exit846.2.1
  %polly.indvar841.2.1 = phi i64 [ %polly.indvar_next842.2.1, %polly.loop_exit846.2.1 ], [ 0, %polly.loop_exit846.1.1 ]
  %557 = add nuw nsw i64 %polly.indvar841.2.1, 32
  %558 = mul nuw nsw i64 %557, 640
  %559 = trunc i64 %557 to i32
  %broadcast.splatinsert1263 = insertelement <4 x i32> poison, i32 %559, i32 0
  %broadcast.splat1264 = shufflevector <4 x i32> %broadcast.splatinsert1263, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1255

vector.body1255:                                  ; preds = %vector.body1255, %polly.loop_header838.2.1
  %index1257 = phi i64 [ 0, %polly.loop_header838.2.1 ], [ %index.next1258, %vector.body1255 ]
  %vec.ind1261 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header838.2.1 ], [ %vec.ind.next1262, %vector.body1255 ]
  %560 = add nuw nsw <4 x i64> %vec.ind1261, <i64 64, i64 64, i64 64, i64 64>
  %561 = trunc <4 x i64> %560 to <4 x i32>
  %562 = mul <4 x i32> %broadcast.splat1264, %561
  %563 = add <4 x i32> %562, <i32 3, i32 3, i32 3, i32 3>
  %564 = urem <4 x i32> %563, <i32 80, i32 80, i32 80, i32 80>
  %565 = sitofp <4 x i32> %564 to <4 x double>
  %566 = fmul fast <4 x double> %565, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %567 = extractelement <4 x i64> %560, i32 0
  %568 = shl i64 %567, 3
  %569 = add nuw nsw i64 %568, %558
  %570 = getelementptr i8, i8* %call, i64 %569
  %571 = bitcast i8* %570 to <4 x double>*
  store <4 x double> %566, <4 x double>* %571, align 8, !alias.scope !105, !noalias !107
  %index.next1258 = add i64 %index1257, 4
  %vec.ind.next1262 = add <4 x i64> %vec.ind1261, <i64 4, i64 4, i64 4, i64 4>
  %572 = icmp eq i64 %index.next1258, 16
  br i1 %572, label %polly.loop_exit846.2.1, label %vector.body1255, !llvm.loop !135

polly.loop_exit846.2.1:                           ; preds = %vector.body1255
  %polly.indvar_next842.2.1 = add nuw nsw i64 %polly.indvar841.2.1, 1
  %exitcond1090.2.1.not = icmp eq i64 %polly.indvar_next842.2.1, 32
  br i1 %exitcond1090.2.1.not, label %polly.loop_header838.21140, label %polly.loop_header838.2.1

polly.loop_header838.21140:                       ; preds = %polly.loop_exit846.2.1, %polly.loop_exit846.21151
  %polly.indvar841.21139 = phi i64 [ %polly.indvar_next842.21149, %polly.loop_exit846.21151 ], [ 0, %polly.loop_exit846.2.1 ]
  %573 = add nuw nsw i64 %polly.indvar841.21139, 64
  %574 = mul nuw nsw i64 %573, 640
  %575 = trunc i64 %573 to i32
  %broadcast.splatinsert1277 = insertelement <4 x i32> poison, i32 %575, i32 0
  %broadcast.splat1278 = shufflevector <4 x i32> %broadcast.splatinsert1277, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1267

vector.body1267:                                  ; preds = %vector.body1267, %polly.loop_header838.21140
  %index1269 = phi i64 [ 0, %polly.loop_header838.21140 ], [ %index.next1270, %vector.body1267 ]
  %vec.ind1275 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header838.21140 ], [ %vec.ind.next1276, %vector.body1267 ]
  %576 = mul <4 x i32> %vec.ind1275, %broadcast.splat1278
  %577 = add <4 x i32> %576, <i32 3, i32 3, i32 3, i32 3>
  %578 = urem <4 x i32> %577, <i32 80, i32 80, i32 80, i32 80>
  %579 = sitofp <4 x i32> %578 to <4 x double>
  %580 = fmul fast <4 x double> %579, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %581 = shl i64 %index1269, 3
  %582 = add nuw nsw i64 %581, %574
  %583 = getelementptr i8, i8* %call, i64 %582
  %584 = bitcast i8* %583 to <4 x double>*
  store <4 x double> %580, <4 x double>* %584, align 8, !alias.scope !105, !noalias !107
  %index.next1270 = add i64 %index1269, 4
  %vec.ind.next1276 = add <4 x i32> %vec.ind1275, <i32 4, i32 4, i32 4, i32 4>
  %585 = icmp eq i64 %index.next1270, 32
  br i1 %585, label %polly.loop_exit846.21151, label %vector.body1267, !llvm.loop !136

polly.loop_exit846.21151:                         ; preds = %vector.body1267
  %polly.indvar_next842.21149 = add nuw nsw i64 %polly.indvar841.21139, 1
  %exitcond1090.21150.not = icmp eq i64 %polly.indvar_next842.21149, 16
  br i1 %exitcond1090.21150.not, label %polly.loop_header838.1.2, label %polly.loop_header838.21140

polly.loop_header838.1.2:                         ; preds = %polly.loop_exit846.21151, %polly.loop_exit846.1.2
  %polly.indvar841.1.2 = phi i64 [ %polly.indvar_next842.1.2, %polly.loop_exit846.1.2 ], [ 0, %polly.loop_exit846.21151 ]
  %586 = add nuw nsw i64 %polly.indvar841.1.2, 64
  %587 = mul nuw nsw i64 %586, 640
  %588 = trunc i64 %586 to i32
  %broadcast.splatinsert1289 = insertelement <4 x i32> poison, i32 %588, i32 0
  %broadcast.splat1290 = shufflevector <4 x i32> %broadcast.splatinsert1289, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1281

vector.body1281:                                  ; preds = %vector.body1281, %polly.loop_header838.1.2
  %index1283 = phi i64 [ 0, %polly.loop_header838.1.2 ], [ %index.next1284, %vector.body1281 ]
  %vec.ind1287 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header838.1.2 ], [ %vec.ind.next1288, %vector.body1281 ]
  %589 = add nuw nsw <4 x i64> %vec.ind1287, <i64 32, i64 32, i64 32, i64 32>
  %590 = trunc <4 x i64> %589 to <4 x i32>
  %591 = mul <4 x i32> %broadcast.splat1290, %590
  %592 = add <4 x i32> %591, <i32 3, i32 3, i32 3, i32 3>
  %593 = urem <4 x i32> %592, <i32 80, i32 80, i32 80, i32 80>
  %594 = sitofp <4 x i32> %593 to <4 x double>
  %595 = fmul fast <4 x double> %594, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %596 = extractelement <4 x i64> %589, i32 0
  %597 = shl i64 %596, 3
  %598 = add nuw nsw i64 %597, %587
  %599 = getelementptr i8, i8* %call, i64 %598
  %600 = bitcast i8* %599 to <4 x double>*
  store <4 x double> %595, <4 x double>* %600, align 8, !alias.scope !105, !noalias !107
  %index.next1284 = add i64 %index1283, 4
  %vec.ind.next1288 = add <4 x i64> %vec.ind1287, <i64 4, i64 4, i64 4, i64 4>
  %601 = icmp eq i64 %index.next1284, 32
  br i1 %601, label %polly.loop_exit846.1.2, label %vector.body1281, !llvm.loop !137

polly.loop_exit846.1.2:                           ; preds = %vector.body1281
  %polly.indvar_next842.1.2 = add nuw nsw i64 %polly.indvar841.1.2, 1
  %exitcond1090.1.2.not = icmp eq i64 %polly.indvar_next842.1.2, 16
  br i1 %exitcond1090.1.2.not, label %polly.loop_header838.2.2, label %polly.loop_header838.1.2

polly.loop_header838.2.2:                         ; preds = %polly.loop_exit846.1.2, %polly.loop_exit846.2.2
  %polly.indvar841.2.2 = phi i64 [ %polly.indvar_next842.2.2, %polly.loop_exit846.2.2 ], [ 0, %polly.loop_exit846.1.2 ]
  %602 = add nuw nsw i64 %polly.indvar841.2.2, 64
  %603 = mul nuw nsw i64 %602, 640
  %604 = trunc i64 %602 to i32
  %broadcast.splatinsert1301 = insertelement <4 x i32> poison, i32 %604, i32 0
  %broadcast.splat1302 = shufflevector <4 x i32> %broadcast.splatinsert1301, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1293

vector.body1293:                                  ; preds = %vector.body1293, %polly.loop_header838.2.2
  %index1295 = phi i64 [ 0, %polly.loop_header838.2.2 ], [ %index.next1296, %vector.body1293 ]
  %vec.ind1299 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header838.2.2 ], [ %vec.ind.next1300, %vector.body1293 ]
  %605 = add nuw nsw <4 x i64> %vec.ind1299, <i64 64, i64 64, i64 64, i64 64>
  %606 = trunc <4 x i64> %605 to <4 x i32>
  %607 = mul <4 x i32> %broadcast.splat1302, %606
  %608 = add <4 x i32> %607, <i32 3, i32 3, i32 3, i32 3>
  %609 = urem <4 x i32> %608, <i32 80, i32 80, i32 80, i32 80>
  %610 = sitofp <4 x i32> %609 to <4 x double>
  %611 = fmul fast <4 x double> %610, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %612 = extractelement <4 x i64> %605, i32 0
  %613 = shl i64 %612, 3
  %614 = add nuw nsw i64 %613, %603
  %615 = getelementptr i8, i8* %call, i64 %614
  %616 = bitcast i8* %615 to <4 x double>*
  store <4 x double> %611, <4 x double>* %616, align 8, !alias.scope !105, !noalias !107
  %index.next1296 = add i64 %index1295, 4
  %vec.ind.next1300 = add <4 x i64> %vec.ind1299, <i64 4, i64 4, i64 4, i64 4>
  %617 = icmp eq i64 %index.next1296, 16
  br i1 %617, label %polly.loop_exit846.2.2, label %vector.body1293, !llvm.loop !138

polly.loop_exit846.2.2:                           ; preds = %vector.body1293
  %polly.indvar_next842.2.2 = add nuw nsw i64 %polly.indvar841.2.2, 1
  %exitcond1090.2.2.not = icmp eq i64 %polly.indvar_next842.2.2, 16
  br i1 %exitcond1090.2.2.not, label %polly.loop_header865, label %polly.loop_header838.2.2
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
!26 = !{!"llvm.loop.tile.size", i32 20}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 100}
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
!49 = !{!"llvm.loop.tile.size", i32 50}
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
!116 = distinct !{!116, !74, !13}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !74, !13}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !74, !13}
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
