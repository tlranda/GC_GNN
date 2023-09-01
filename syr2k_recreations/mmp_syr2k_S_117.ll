; ModuleID = 'syr2k_recreations//mmp_syr2k_S_117.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_117.c"
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
  %scevgep1185 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1184 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1183 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1182 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1182, %scevgep1185
  %bound1 = icmp ult i8* %scevgep1184, %scevgep1183
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
  br i1 %exitcond18.not.i, label %vector.ph1189, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1189:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1196 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1197 = shufflevector <4 x i64> %broadcast.splatinsert1196, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1188

vector.body1188:                                  ; preds = %vector.body1188, %vector.ph1189
  %index1190 = phi i64 [ 0, %vector.ph1189 ], [ %index.next1191, %vector.body1188 ]
  %vec.ind1194 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1189 ], [ %vec.ind.next1195, %vector.body1188 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1194, %broadcast.splat1197
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call852, i64 %indvars.iv7.i, i64 %index1190
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1191 = add i64 %index1190, 4
  %vec.ind.next1195 = add <4 x i64> %vec.ind1194, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1191, 80
  br i1 %40, label %for.inc41.i, label %vector.body1188, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1188
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1189, !llvm.loop !17

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
  br i1 %min.iters.check, label %for.body3.i46.preheader1610, label %vector.ph1471

vector.ph1471:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1470

vector.body1470:                                  ; preds = %vector.body1470, %vector.ph1471
  %index1472 = phi i64 [ 0, %vector.ph1471 ], [ %index.next1473, %vector.body1470 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call852, i64 %indvars.iv21.i, i64 %index1472
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1473 = add i64 %index1472, 4
  %46 = icmp eq i64 %index.next1473, %n.vec
  br i1 %46, label %middle.block1468, label %vector.body1470, !llvm.loop !18

middle.block1468:                                 ; preds = %vector.body1470
  %cmp.n1475 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1475, label %for.inc6.i, label %for.body3.i46.preheader1610

for.body3.i46.preheader1610:                      ; preds = %for.body3.i46.preheader, %middle.block1468
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1468 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1610, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1610 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call852, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1468, %for.cond1.preheader.i45
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting499
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start294, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1512 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1512, label %for.body3.i60.preheader1608, label %vector.ph1513

vector.ph1513:                                    ; preds = %for.body3.i60.preheader
  %n.vec1515 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1511

vector.body1511:                                  ; preds = %vector.body1511, %vector.ph1513
  %index1516 = phi i64 [ 0, %vector.ph1513 ], [ %index.next1517, %vector.body1511 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call852, i64 %indvars.iv21.i52, i64 %index1516
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1520 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1520, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1517 = add i64 %index1516, 4
  %57 = icmp eq i64 %index.next1517, %n.vec1515
  br i1 %57, label %middle.block1509, label %vector.body1511, !llvm.loop !57

middle.block1509:                                 ; preds = %vector.body1511
  %cmp.n1519 = icmp eq i64 %indvars.iv21.i52, %n.vec1515
  br i1 %cmp.n1519, label %for.inc6.i63, label %for.body3.i60.preheader1608

for.body3.i60.preheader1608:                      ; preds = %for.body3.i60.preheader, %middle.block1509
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1515, %middle.block1509 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1608, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1608 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call852, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1509, %for.cond1.preheader.i54
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting295
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1560 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1560, label %for.body3.i99.preheader1606, label %vector.ph1561

vector.ph1561:                                    ; preds = %for.body3.i99.preheader
  %n.vec1563 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1559

vector.body1559:                                  ; preds = %vector.body1559, %vector.ph1561
  %index1564 = phi i64 [ 0, %vector.ph1561 ], [ %index.next1565, %vector.body1559 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call852, i64 %indvars.iv21.i91, i64 %index1564
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1568 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1568, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1565 = add i64 %index1564, 4
  %68 = icmp eq i64 %index.next1565, %n.vec1563
  br i1 %68, label %middle.block1557, label %vector.body1559, !llvm.loop !59

middle.block1557:                                 ; preds = %vector.body1559
  %cmp.n1567 = icmp eq i64 %indvars.iv21.i91, %n.vec1563
  br i1 %cmp.n1567, label %for.inc6.i102, label %for.body3.i99.preheader1606

for.body3.i99.preheader1606:                      ; preds = %for.body3.i99.preheader, %middle.block1557
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1563, %middle.block1557 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1606, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1606 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call852, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1557, %for.cond1.preheader.i93
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

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1572 = phi i64 [ %indvar.next1573, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1572, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1574 = icmp ult i64 %88, 4
  br i1 %min.iters.check1574, label %polly.loop_header192.preheader, label %vector.ph1575

vector.ph1575:                                    ; preds = %polly.loop_header
  %n.vec1577 = and i64 %88, -4
  br label %vector.body1571

vector.body1571:                                  ; preds = %vector.body1571, %vector.ph1575
  %index1578 = phi i64 [ 0, %vector.ph1575 ], [ %index.next1579, %vector.body1571 ]
  %90 = shl nuw nsw i64 %index1578, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1582 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1582, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1579 = add i64 %index1578, 4
  %95 = icmp eq i64 %index.next1579, %n.vec1577
  br i1 %95, label %middle.block1569, label %vector.body1571, !llvm.loop !72

middle.block1569:                                 ; preds = %vector.body1571
  %cmp.n1581 = icmp eq i64 %88, %n.vec1577
  br i1 %cmp.n1581, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1569
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1577, %middle.block1569 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1569
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1573 = add i64 %indvar1572, 1
  br i1 %exitcond1036.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1035.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1035.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 80
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar_next204, 60
  br i1 %exitcond1034.not, label %polly.loop_header216, label %polly.loop_header200

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
  %exitcond1033.not = icmp eq i64 %polly.indvar_next210, 80
  br i1 %exitcond1033.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv1029 = phi i64 [ %indvars.iv.next1030, %polly.loop_exit224 ], [ 2, %polly.loop_exit208 ]
  %indvars.iv1018 = phi i64 [ %indvars.iv.next1019, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = mul nsw i64 %polly.indvar219, -8
  %98 = shl nuw nsw i64 %polly.indvar219, 3
  %99 = mul nsw i64 %polly.indvar219, -8
  %100 = shl nsw i64 %polly.indvar219, 3
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -8
  %indvars.iv.next1019 = add nuw nsw i64 %indvars.iv1018, 8
  %indvars.iv.next1030 = add nuw nsw i64 %indvars.iv1029, 2
  %exitcond1032.not = icmp eq i64 %polly.indvar_next220, 10
  br i1 %exitcond1032.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %indvars.iv1020 = phi i64 [ %indvars.iv.next1021, %polly.loop_exit230 ], [ %indvars.iv1018, %polly.loop_header216 ]
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %polly.loop_exit230 ], [ %indvars.iv, %polly.loop_header216 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit230 ], [ 0, %polly.loop_header216 ]
  %101 = shl nuw nsw i64 %polly.indvar225, 2
  %102 = add i64 %97, %101
  %smax1586 = call i64 @llvm.smax.i64(i64 %102, i64 0)
  %103 = mul nsw i64 %polly.indvar225, -4
  %104 = add i64 %98, %103
  %105 = add i64 %smax1586, %104
  %106 = shl nsw i64 %polly.indvar225, 2
  %107 = add nsw i64 %106, %99
  %108 = icmp sgt i64 %107, 0
  %109 = select i1 %108, i64 %107, i64 0
  %polly.loop_guard = icmp slt i64 %109, 8
  br i1 %polly.loop_guard, label %polly.loop_header228.preheader, label %polly.loop_exit230

polly.loop_header228.preheader:                   ; preds = %polly.loop_header222
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1016, i64 0)
  %110 = add i64 %smax, %indvars.iv1020
  %111 = sub nsw i64 %100, %106
  %112 = add nuw nsw i64 %106, 4
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit261, %polly.loop_header222
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next1017 = add nsw i64 %indvars.iv1016, 4
  %indvars.iv.next1021 = add nsw i64 %indvars.iv1020, -4
  %exitcond1031.not = icmp eq i64 %polly.indvar_next226, %indvars.iv1029
  br i1 %exitcond1031.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header228.preheader, %polly.loop_exit261
  %indvar1587 = phi i64 [ 0, %polly.loop_header228.preheader ], [ %indvar.next1588, %polly.loop_exit261 ]
  %indvars.iv1022 = phi i64 [ %110, %polly.loop_header228.preheader ], [ %indvars.iv.next1023, %polly.loop_exit261 ]
  %polly.indvar231 = phi i64 [ %109, %polly.loop_header228.preheader ], [ %polly.indvar_next232, %polly.loop_exit261 ]
  %113 = add i64 %105, %indvar1587
  %smin1589 = call i64 @llvm.smin.i64(i64 %113, i64 3)
  %114 = add nsw i64 %smin1589, 1
  %smin1026 = call i64 @llvm.smin.i64(i64 %indvars.iv1022, i64 3)
  %115 = add nsw i64 %polly.indvar231, %111
  %polly.loop_guard2441171 = icmp sgt i64 %115, -1
  %116 = add nuw nsw i64 %polly.indvar231, %100
  %.not = icmp ult i64 %116, %112
  %polly.access.mul.call1253 = mul nsw i64 %116, 60
  br i1 %polly.loop_guard2441171, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.merge.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.merge.us ], [ 0, %polly.loop_header228 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 80
  br label %polly.loop_header241.us

polly.loop_header241.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header241.us
  %polly.indvar245.us = phi i64 [ %polly.indvar_next246.us, %polly.loop_header241.us ], [ 0, %polly.loop_header234.us ]
  %117 = add nuw nsw i64 %polly.indvar245.us, %106
  %polly.access.mul.call1249.us = mul nuw nsw i64 %117, 60
  %polly.access.add.call1250.us = add nuw nsw i64 %polly.access.mul.call1249.us, %polly.indvar237.us
  %polly.access.call1251.us = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1250.us
  %polly.access.call1251.load.us = load double, double* %polly.access.call1251.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar245.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1251.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next246.us = add nuw nsw i64 %polly.indvar245.us, 1
  %exitcond1024.not = icmp eq i64 %polly.indvar245.us, %smin1026
  br i1 %exitcond1024.not, label %polly.cond.loopexit.us, label %polly.loop_header241.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1254.us = add nuw nsw i64 %polly.indvar237.us, %polly.access.mul.call1253
  %polly.access.call1255.us = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1254.us
  %polly.access.call1255.load.us = load double, double* %polly.access.call1255.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1257.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %115
  %polly.access.Packed_MemRef_call1258.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.us
  store double %polly.access.call1255.load.us, double* %polly.access.Packed_MemRef_call1258.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1025.not = icmp eq i64 %polly.indvar_next238.us, 60
  br i1 %exitcond1025.not, label %polly.loop_header259.preheader, label %polly.loop_header234.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header241.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %.not, label %polly.loop_exit261, label %polly.loop_header234

polly.loop_exit261:                               ; preds = %polly.loop_exit268.loopexit.us, %polly.loop_header228.split, %polly.loop_header259.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %polly.loop_cond233 = icmp ult i64 %polly.indvar231, 7
  %indvars.iv.next1023 = add i64 %indvars.iv1022, 1
  %indvar.next1588 = add i64 %indvar1587, 1
  br i1 %polly.loop_cond233, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_header234
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_header234 ], [ 0, %polly.loop_header228.split ]
  %polly.access.add.call1254 = add nuw nsw i64 %polly.indvar237, %polly.access.mul.call1253
  %polly.access.call1255 = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1254
  %polly.access.call1255.load = load double, double* %polly.access.call1255, align 8, !alias.scope !68, !noalias !76
  %polly.access.mul.Packed_MemRef_call1256 = mul nuw nsw i64 %polly.indvar237, 80
  %polly.access.add.Packed_MemRef_call1257 = add nsw i64 %polly.access.mul.Packed_MemRef_call1256, %115
  %polly.access.Packed_MemRef_call1258 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257
  store double %polly.access.call1255.load, double* %polly.access.Packed_MemRef_call1258, align 8
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next238, 60
  br i1 %exitcond.not, label %polly.loop_header259.preheader, label %polly.loop_header234

polly.loop_header259.preheader:                   ; preds = %polly.loop_header234, %polly.merge.us
  %118 = mul i64 %116, 640
  br i1 %polly.loop_guard2441171, label %polly.loop_header259.us, label %polly.loop_exit261

polly.loop_header259.us:                          ; preds = %polly.loop_header259.preheader, %polly.loop_exit268.loopexit.us
  %polly.indvar262.us = phi i64 [ %polly.indvar_next263.us, %polly.loop_exit268.loopexit.us ], [ 0, %polly.loop_header259.preheader ]
  %polly.access.mul.Packed_MemRef_call1273.us = mul nuw nsw i64 %polly.indvar262.us, 80
  %polly.access.add.Packed_MemRef_call2278.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1273.us, %116
  %polly.access.Packed_MemRef_call2279.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2278.us
  %_p_scalar_280.us = load double, double* %polly.access.Packed_MemRef_call2279.us, align 8
  %polly.access.add.Packed_MemRef_call1286.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1273.us, %115
  %polly.access.Packed_MemRef_call1287.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call1287.us, align 8
  %min.iters.check1590 = icmp ult i64 %114, 4
  br i1 %min.iters.check1590, label %polly.loop_header266.us.preheader, label %vector.ph1591

vector.ph1591:                                    ; preds = %polly.loop_header259.us
  %n.vec1593 = and i64 %114, -4
  %broadcast.splatinsert1599 = insertelement <4 x double> poison, double %_p_scalar_280.us, i32 0
  %broadcast.splat1600 = shufflevector <4 x double> %broadcast.splatinsert1599, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1602 = insertelement <4 x double> poison, double %_p_scalar_288.us, i32 0
  %broadcast.splat1603 = shufflevector <4 x double> %broadcast.splatinsert1602, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1585

vector.body1585:                                  ; preds = %vector.body1585, %vector.ph1591
  %index1594 = phi i64 [ 0, %vector.ph1591 ], [ %index.next1595, %vector.body1585 ]
  %119 = add nuw nsw i64 %index1594, %106
  %120 = add nuw nsw i64 %index1594, %polly.access.mul.Packed_MemRef_call1273.us
  %121 = getelementptr double, double* %Packed_MemRef_call1, i64 %120
  %122 = bitcast double* %121 to <4 x double>*
  %wide.load1598 = load <4 x double>, <4 x double>* %122, align 8
  %123 = fmul fast <4 x double> %broadcast.splat1600, %wide.load1598
  %124 = add nuw nsw i64 %119, %polly.access.mul.Packed_MemRef_call1273.us
  %125 = getelementptr double, double* %Packed_MemRef_call2, i64 %124
  %126 = bitcast double* %125 to <4 x double>*
  %wide.load1601 = load <4 x double>, <4 x double>* %126, align 8
  %127 = fmul fast <4 x double> %broadcast.splat1603, %wide.load1601
  %128 = shl i64 %119, 3
  %129 = add i64 %128, %118
  %130 = getelementptr i8, i8* %call, i64 %129
  %131 = bitcast i8* %130 to <4 x double>*
  %wide.load1604 = load <4 x double>, <4 x double>* %131, align 8, !alias.scope !65, !noalias !67
  %132 = fadd fast <4 x double> %127, %123
  %133 = fmul fast <4 x double> %132, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %134 = fadd fast <4 x double> %133, %wide.load1604
  %135 = bitcast i8* %130 to <4 x double>*
  store <4 x double> %134, <4 x double>* %135, align 8, !alias.scope !65, !noalias !67
  %index.next1595 = add i64 %index1594, 4
  %136 = icmp eq i64 %index.next1595, %n.vec1593
  br i1 %136, label %middle.block1583, label %vector.body1585, !llvm.loop !77

middle.block1583:                                 ; preds = %vector.body1585
  %cmp.n1597 = icmp eq i64 %114, %n.vec1593
  br i1 %cmp.n1597, label %polly.loop_exit268.loopexit.us, label %polly.loop_header266.us.preheader

polly.loop_header266.us.preheader:                ; preds = %polly.loop_header259.us, %middle.block1583
  %polly.indvar270.us.ph = phi i64 [ 0, %polly.loop_header259.us ], [ %n.vec1593, %middle.block1583 ]
  br label %polly.loop_header266.us

polly.loop_header266.us:                          ; preds = %polly.loop_header266.us.preheader, %polly.loop_header266.us
  %polly.indvar270.us = phi i64 [ %polly.indvar_next271.us, %polly.loop_header266.us ], [ %polly.indvar270.us.ph, %polly.loop_header266.us.preheader ]
  %137 = add nuw nsw i64 %polly.indvar270.us, %106
  %polly.access.add.Packed_MemRef_call1274.us = add nuw nsw i64 %polly.indvar270.us, %polly.access.mul.Packed_MemRef_call1273.us
  %polly.access.Packed_MemRef_call1275.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1274.us
  %_p_scalar_276.us = load double, double* %polly.access.Packed_MemRef_call1275.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_280.us, %_p_scalar_276.us
  %polly.access.add.Packed_MemRef_call2282.us = add nuw nsw i64 %137, %polly.access.mul.Packed_MemRef_call1273.us
  %polly.access.Packed_MemRef_call2283.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us
  %_p_scalar_284.us = load double, double* %polly.access.Packed_MemRef_call2283.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_288.us, %_p_scalar_284.us
  %138 = shl i64 %137, 3
  %139 = add i64 %138, %118
  %scevgep289.us = getelementptr i8, i8* %call, i64 %139
  %scevgep289290.us = bitcast i8* %scevgep289.us to double*
  %_p_scalar_291.us = load double, double* %scevgep289290.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_291.us
  store double %p_add42.i118.us, double* %scevgep289290.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next271.us = add nuw nsw i64 %polly.indvar270.us, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar270.us, %smin1026
  br i1 %exitcond1027.not, label %polly.loop_exit268.loopexit.us, label %polly.loop_header266.us, !llvm.loop !78

polly.loop_exit268.loopexit.us:                   ; preds = %polly.loop_header266.us, %middle.block1583
  %polly.indvar_next263.us = add nuw nsw i64 %polly.indvar262.us, 1
  %exitcond1028.not = icmp eq i64 %polly.indvar_next263.us, 60
  br i1 %exitcond1028.not, label %polly.loop_exit261, label %polly.loop_header259.us

polly.start294:                                   ; preds = %kernel_syr2k.exit
  %malloccall296 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall298 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header382

polly.exiting295:                                 ; preds = %polly.loop_exit422
  tail call void @free(i8* %malloccall296)
  tail call void @free(i8* %malloccall298)
  br label %kernel_syr2k.exit90

polly.loop_header382:                             ; preds = %polly.loop_exit390, %polly.start294
  %indvar1524 = phi i64 [ %indvar.next1525, %polly.loop_exit390 ], [ 0, %polly.start294 ]
  %polly.indvar385 = phi i64 [ %polly.indvar_next386, %polly.loop_exit390 ], [ 1, %polly.start294 ]
  %140 = add i64 %indvar1524, 1
  %141 = mul nuw nsw i64 %polly.indvar385, 640
  %scevgep394 = getelementptr i8, i8* %call, i64 %141
  %min.iters.check1526 = icmp ult i64 %140, 4
  br i1 %min.iters.check1526, label %polly.loop_header388.preheader, label %vector.ph1527

vector.ph1527:                                    ; preds = %polly.loop_header382
  %n.vec1529 = and i64 %140, -4
  br label %vector.body1523

vector.body1523:                                  ; preds = %vector.body1523, %vector.ph1527
  %index1530 = phi i64 [ 0, %vector.ph1527 ], [ %index.next1531, %vector.body1523 ]
  %142 = shl nuw nsw i64 %index1530, 3
  %143 = getelementptr i8, i8* %scevgep394, i64 %142
  %144 = bitcast i8* %143 to <4 x double>*
  %wide.load1534 = load <4 x double>, <4 x double>* %144, align 8, !alias.scope !79, !noalias !81
  %145 = fmul fast <4 x double> %wide.load1534, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %146 = bitcast i8* %143 to <4 x double>*
  store <4 x double> %145, <4 x double>* %146, align 8, !alias.scope !79, !noalias !81
  %index.next1531 = add i64 %index1530, 4
  %147 = icmp eq i64 %index.next1531, %n.vec1529
  br i1 %147, label %middle.block1521, label %vector.body1523, !llvm.loop !86

middle.block1521:                                 ; preds = %vector.body1523
  %cmp.n1533 = icmp eq i64 %140, %n.vec1529
  br i1 %cmp.n1533, label %polly.loop_exit390, label %polly.loop_header388.preheader

polly.loop_header388.preheader:                   ; preds = %polly.loop_header382, %middle.block1521
  %polly.indvar391.ph = phi i64 [ 0, %polly.loop_header382 ], [ %n.vec1529, %middle.block1521 ]
  br label %polly.loop_header388

polly.loop_exit390:                               ; preds = %polly.loop_header388, %middle.block1521
  %polly.indvar_next386 = add nuw nsw i64 %polly.indvar385, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar_next386, 80
  %indvar.next1525 = add i64 %indvar1524, 1
  br i1 %exitcond1062.not, label %polly.loop_header398.preheader, label %polly.loop_header382

polly.loop_header398.preheader:                   ; preds = %polly.loop_exit390
  %Packed_MemRef_call1297 = bitcast i8* %malloccall296 to double*
  %Packed_MemRef_call2299 = bitcast i8* %malloccall298 to double*
  br label %polly.loop_header398

polly.loop_header388:                             ; preds = %polly.loop_header388.preheader, %polly.loop_header388
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_header388 ], [ %polly.indvar391.ph, %polly.loop_header388.preheader ]
  %148 = shl nuw nsw i64 %polly.indvar391, 3
  %scevgep395 = getelementptr i8, i8* %scevgep394, i64 %148
  %scevgep395396 = bitcast i8* %scevgep395 to double*
  %_p_scalar_397 = load double, double* %scevgep395396, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_397, 1.200000e+00
  store double %p_mul.i57, double* %scevgep395396, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar_next392, %polly.indvar385
  br i1 %exitcond1061.not, label %polly.loop_exit390, label %polly.loop_header388, !llvm.loop !87

polly.loop_header398:                             ; preds = %polly.loop_header398.preheader, %polly.loop_exit406
  %polly.indvar401 = phi i64 [ %polly.indvar_next402, %polly.loop_exit406 ], [ 0, %polly.loop_header398.preheader ]
  %polly.access.mul.Packed_MemRef_call2299 = mul nuw nsw i64 %polly.indvar401, 80
  br label %polly.loop_header404

polly.loop_exit406:                               ; preds = %polly.loop_header404
  %polly.indvar_next402 = add nuw nsw i64 %polly.indvar401, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar_next402, 60
  br i1 %exitcond1060.not, label %polly.loop_header414, label %polly.loop_header398

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
  %exitcond1059.not = icmp eq i64 %polly.indvar_next408, 80
  br i1 %exitcond1059.not, label %polly.loop_exit406, label %polly.loop_header404

polly.loop_header414:                             ; preds = %polly.loop_exit406, %polly.loop_exit422
  %indvars.iv1055 = phi i64 [ %indvars.iv.next1056, %polly.loop_exit422 ], [ 2, %polly.loop_exit406 ]
  %indvars.iv1043 = phi i64 [ %indvars.iv.next1044, %polly.loop_exit422 ], [ 0, %polly.loop_exit406 ]
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit422 ], [ 0, %polly.loop_exit406 ]
  %polly.indvar417 = phi i64 [ %polly.indvar_next418, %polly.loop_exit422 ], [ 0, %polly.loop_exit406 ]
  %149 = mul nsw i64 %polly.indvar417, -8
  %150 = shl nuw nsw i64 %polly.indvar417, 3
  %151 = mul nsw i64 %polly.indvar417, -8
  %152 = shl nsw i64 %polly.indvar417, 3
  br label %polly.loop_header420

polly.loop_exit422:                               ; preds = %polly.loop_exit429
  %polly.indvar_next418 = add nuw nsw i64 %polly.indvar417, 1
  %indvars.iv.next1039 = add nsw i64 %indvars.iv1038, -8
  %indvars.iv.next1044 = add nuw nsw i64 %indvars.iv1043, 8
  %indvars.iv.next1056 = add nuw nsw i64 %indvars.iv1055, 2
  %exitcond1058.not = icmp eq i64 %polly.indvar_next418, 10
  br i1 %exitcond1058.not, label %polly.exiting295, label %polly.loop_header414

polly.loop_header420:                             ; preds = %polly.loop_exit429, %polly.loop_header414
  %indvars.iv1045 = phi i64 [ %indvars.iv.next1046, %polly.loop_exit429 ], [ %indvars.iv1043, %polly.loop_header414 ]
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %polly.loop_exit429 ], [ %indvars.iv1038, %polly.loop_header414 ]
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_exit429 ], [ 0, %polly.loop_header414 ]
  %153 = shl nuw nsw i64 %polly.indvar423, 2
  %154 = add i64 %149, %153
  %smax1538 = call i64 @llvm.smax.i64(i64 %154, i64 0)
  %155 = mul nsw i64 %polly.indvar423, -4
  %156 = add i64 %150, %155
  %157 = add i64 %smax1538, %156
  %158 = shl nsw i64 %polly.indvar423, 2
  %159 = add nsw i64 %158, %151
  %160 = icmp sgt i64 %159, 0
  %161 = select i1 %160, i64 %159, i64 0
  %polly.loop_guard430 = icmp slt i64 %161, 8
  br i1 %polly.loop_guard430, label %polly.loop_header427.preheader, label %polly.loop_exit429

polly.loop_header427.preheader:                   ; preds = %polly.loop_header420
  %smax1042 = call i64 @llvm.smax.i64(i64 %indvars.iv1040, i64 0)
  %162 = add i64 %smax1042, %indvars.iv1045
  %163 = sub nsw i64 %152, %158
  %164 = add nuw nsw i64 %158, 4
  br label %polly.loop_header427

polly.loop_exit429:                               ; preds = %polly.loop_exit465, %polly.loop_header420
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %indvars.iv.next1041 = add nsw i64 %indvars.iv1040, 4
  %indvars.iv.next1046 = add nsw i64 %indvars.iv1045, -4
  %exitcond1057.not = icmp eq i64 %polly.indvar_next424, %indvars.iv1055
  br i1 %exitcond1057.not, label %polly.loop_exit422, label %polly.loop_header420

polly.loop_header427:                             ; preds = %polly.loop_header427.preheader, %polly.loop_exit465
  %indvar1539 = phi i64 [ 0, %polly.loop_header427.preheader ], [ %indvar.next1540, %polly.loop_exit465 ]
  %indvars.iv1047 = phi i64 [ %162, %polly.loop_header427.preheader ], [ %indvars.iv.next1048, %polly.loop_exit465 ]
  %polly.indvar431 = phi i64 [ %161, %polly.loop_header427.preheader ], [ %polly.indvar_next432, %polly.loop_exit465 ]
  %165 = add i64 %157, %indvar1539
  %smin1541 = call i64 @llvm.smin.i64(i64 %165, i64 3)
  %166 = add nsw i64 %smin1541, 1
  %smin1052 = call i64 @llvm.smin.i64(i64 %indvars.iv1047, i64 3)
  %167 = add nsw i64 %polly.indvar431, %163
  %polly.loop_guard4441172 = icmp sgt i64 %167, -1
  %168 = add nuw nsw i64 %polly.indvar431, %152
  %.not906 = icmp ult i64 %168, %164
  %polly.access.mul.call1457 = mul nsw i64 %168, 60
  br i1 %polly.loop_guard4441172, label %polly.loop_header434.us, label %polly.loop_header427.split

polly.loop_header434.us:                          ; preds = %polly.loop_header427, %polly.merge453.us
  %polly.indvar437.us = phi i64 [ %polly.indvar_next438.us, %polly.merge453.us ], [ 0, %polly.loop_header427 ]
  %polly.access.mul.Packed_MemRef_call1297.us = mul nuw nsw i64 %polly.indvar437.us, 80
  br label %polly.loop_header441.us

polly.loop_header441.us:                          ; preds = %polly.loop_header434.us, %polly.loop_header441.us
  %polly.indvar445.us = phi i64 [ %polly.indvar_next446.us, %polly.loop_header441.us ], [ 0, %polly.loop_header434.us ]
  %169 = add nuw nsw i64 %polly.indvar445.us, %158
  %polly.access.mul.call1449.us = mul nuw nsw i64 %169, 60
  %polly.access.add.call1450.us = add nuw nsw i64 %polly.access.mul.call1449.us, %polly.indvar437.us
  %polly.access.call1451.us = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1450.us
  %polly.access.call1451.load.us = load double, double* %polly.access.call1451.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1297.us = add nuw nsw i64 %polly.indvar445.us, %polly.access.mul.Packed_MemRef_call1297.us
  %polly.access.Packed_MemRef_call1297.us = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297.us
  store double %polly.access.call1451.load.us, double* %polly.access.Packed_MemRef_call1297.us, align 8
  %polly.indvar_next446.us = add nuw nsw i64 %polly.indvar445.us, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar445.us, %smin1052
  br i1 %exitcond1050.not, label %polly.cond452.loopexit.us, label %polly.loop_header441.us

polly.then454.us:                                 ; preds = %polly.cond452.loopexit.us
  %polly.access.add.call1458.us = add nuw nsw i64 %polly.indvar437.us, %polly.access.mul.call1457
  %polly.access.call1459.us = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1458.us
  %polly.access.call1459.load.us = load double, double* %polly.access.call1459.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1297461.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1297.us, %167
  %polly.access.Packed_MemRef_call1297462.us = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297461.us
  store double %polly.access.call1459.load.us, double* %polly.access.Packed_MemRef_call1297462.us, align 8
  br label %polly.merge453.us

polly.merge453.us:                                ; preds = %polly.then454.us, %polly.cond452.loopexit.us
  %polly.indvar_next438.us = add nuw nsw i64 %polly.indvar437.us, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar_next438.us, 60
  br i1 %exitcond1051.not, label %polly.loop_header463.preheader, label %polly.loop_header434.us

polly.cond452.loopexit.us:                        ; preds = %polly.loop_header441.us
  br i1 %.not906, label %polly.merge453.us, label %polly.then454.us

polly.loop_header427.split:                       ; preds = %polly.loop_header427
  br i1 %.not906, label %polly.loop_exit465, label %polly.loop_header434

polly.loop_exit465:                               ; preds = %polly.loop_exit472.loopexit.us, %polly.loop_header427.split, %polly.loop_header463.preheader
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %polly.loop_cond433 = icmp ult i64 %polly.indvar431, 7
  %indvars.iv.next1048 = add i64 %indvars.iv1047, 1
  %indvar.next1540 = add i64 %indvar1539, 1
  br i1 %polly.loop_cond433, label %polly.loop_header427, label %polly.loop_exit429

polly.loop_header434:                             ; preds = %polly.loop_header427.split, %polly.loop_header434
  %polly.indvar437 = phi i64 [ %polly.indvar_next438, %polly.loop_header434 ], [ 0, %polly.loop_header427.split ]
  %polly.access.add.call1458 = add nuw nsw i64 %polly.indvar437, %polly.access.mul.call1457
  %polly.access.call1459 = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1458
  %polly.access.call1459.load = load double, double* %polly.access.call1459, align 8, !alias.scope !82, !noalias !89
  %polly.access.mul.Packed_MemRef_call1297460 = mul nuw nsw i64 %polly.indvar437, 80
  %polly.access.add.Packed_MemRef_call1297461 = add nsw i64 %polly.access.mul.Packed_MemRef_call1297460, %167
  %polly.access.Packed_MemRef_call1297462 = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297461
  store double %polly.access.call1459.load, double* %polly.access.Packed_MemRef_call1297462, align 8
  %polly.indvar_next438 = add nuw nsw i64 %polly.indvar437, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar_next438, 60
  br i1 %exitcond1037.not, label %polly.loop_header463.preheader, label %polly.loop_header434

polly.loop_header463.preheader:                   ; preds = %polly.loop_header434, %polly.merge453.us
  %170 = mul i64 %168, 640
  br i1 %polly.loop_guard4441172, label %polly.loop_header463.us, label %polly.loop_exit465

polly.loop_header463.us:                          ; preds = %polly.loop_header463.preheader, %polly.loop_exit472.loopexit.us
  %polly.indvar466.us = phi i64 [ %polly.indvar_next467.us, %polly.loop_exit472.loopexit.us ], [ 0, %polly.loop_header463.preheader ]
  %polly.access.mul.Packed_MemRef_call1297477.us = mul nuw nsw i64 %polly.indvar466.us, 80
  %polly.access.add.Packed_MemRef_call2299482.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1297477.us, %168
  %polly.access.Packed_MemRef_call2299483.us = getelementptr double, double* %Packed_MemRef_call2299, i64 %polly.access.add.Packed_MemRef_call2299482.us
  %_p_scalar_484.us = load double, double* %polly.access.Packed_MemRef_call2299483.us, align 8
  %polly.access.add.Packed_MemRef_call1297490.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1297477.us, %167
  %polly.access.Packed_MemRef_call1297491.us = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297490.us
  %_p_scalar_492.us = load double, double* %polly.access.Packed_MemRef_call1297491.us, align 8
  %min.iters.check1542 = icmp ult i64 %166, 4
  br i1 %min.iters.check1542, label %polly.loop_header470.us.preheader, label %vector.ph1543

vector.ph1543:                                    ; preds = %polly.loop_header463.us
  %n.vec1545 = and i64 %166, -4
  %broadcast.splatinsert1551 = insertelement <4 x double> poison, double %_p_scalar_484.us, i32 0
  %broadcast.splat1552 = shufflevector <4 x double> %broadcast.splatinsert1551, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1554 = insertelement <4 x double> poison, double %_p_scalar_492.us, i32 0
  %broadcast.splat1555 = shufflevector <4 x double> %broadcast.splatinsert1554, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1537

vector.body1537:                                  ; preds = %vector.body1537, %vector.ph1543
  %index1546 = phi i64 [ 0, %vector.ph1543 ], [ %index.next1547, %vector.body1537 ]
  %171 = add nuw nsw i64 %index1546, %158
  %172 = add nuw nsw i64 %index1546, %polly.access.mul.Packed_MemRef_call1297477.us
  %173 = getelementptr double, double* %Packed_MemRef_call1297, i64 %172
  %174 = bitcast double* %173 to <4 x double>*
  %wide.load1550 = load <4 x double>, <4 x double>* %174, align 8
  %175 = fmul fast <4 x double> %broadcast.splat1552, %wide.load1550
  %176 = add nuw nsw i64 %171, %polly.access.mul.Packed_MemRef_call1297477.us
  %177 = getelementptr double, double* %Packed_MemRef_call2299, i64 %176
  %178 = bitcast double* %177 to <4 x double>*
  %wide.load1553 = load <4 x double>, <4 x double>* %178, align 8
  %179 = fmul fast <4 x double> %broadcast.splat1555, %wide.load1553
  %180 = shl i64 %171, 3
  %181 = add i64 %180, %170
  %182 = getelementptr i8, i8* %call, i64 %181
  %183 = bitcast i8* %182 to <4 x double>*
  %wide.load1556 = load <4 x double>, <4 x double>* %183, align 8, !alias.scope !79, !noalias !81
  %184 = fadd fast <4 x double> %179, %175
  %185 = fmul fast <4 x double> %184, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %186 = fadd fast <4 x double> %185, %wide.load1556
  %187 = bitcast i8* %182 to <4 x double>*
  store <4 x double> %186, <4 x double>* %187, align 8, !alias.scope !79, !noalias !81
  %index.next1547 = add i64 %index1546, 4
  %188 = icmp eq i64 %index.next1547, %n.vec1545
  br i1 %188, label %middle.block1535, label %vector.body1537, !llvm.loop !90

middle.block1535:                                 ; preds = %vector.body1537
  %cmp.n1549 = icmp eq i64 %166, %n.vec1545
  br i1 %cmp.n1549, label %polly.loop_exit472.loopexit.us, label %polly.loop_header470.us.preheader

polly.loop_header470.us.preheader:                ; preds = %polly.loop_header463.us, %middle.block1535
  %polly.indvar474.us.ph = phi i64 [ 0, %polly.loop_header463.us ], [ %n.vec1545, %middle.block1535 ]
  br label %polly.loop_header470.us

polly.loop_header470.us:                          ; preds = %polly.loop_header470.us.preheader, %polly.loop_header470.us
  %polly.indvar474.us = phi i64 [ %polly.indvar_next475.us, %polly.loop_header470.us ], [ %polly.indvar474.us.ph, %polly.loop_header470.us.preheader ]
  %189 = add nuw nsw i64 %polly.indvar474.us, %158
  %polly.access.add.Packed_MemRef_call1297478.us = add nuw nsw i64 %polly.indvar474.us, %polly.access.mul.Packed_MemRef_call1297477.us
  %polly.access.Packed_MemRef_call1297479.us = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297478.us
  %_p_scalar_480.us = load double, double* %polly.access.Packed_MemRef_call1297479.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_484.us, %_p_scalar_480.us
  %polly.access.add.Packed_MemRef_call2299486.us = add nuw nsw i64 %189, %polly.access.mul.Packed_MemRef_call1297477.us
  %polly.access.Packed_MemRef_call2299487.us = getelementptr double, double* %Packed_MemRef_call2299, i64 %polly.access.add.Packed_MemRef_call2299486.us
  %_p_scalar_488.us = load double, double* %polly.access.Packed_MemRef_call2299487.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_492.us, %_p_scalar_488.us
  %190 = shl i64 %189, 3
  %191 = add i64 %190, %170
  %scevgep493.us = getelementptr i8, i8* %call, i64 %191
  %scevgep493494.us = bitcast i8* %scevgep493.us to double*
  %_p_scalar_495.us = load double, double* %scevgep493494.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_495.us
  store double %p_add42.i79.us, double* %scevgep493494.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next475.us = add nuw nsw i64 %polly.indvar474.us, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar474.us, %smin1052
  br i1 %exitcond1053.not, label %polly.loop_exit472.loopexit.us, label %polly.loop_header470.us, !llvm.loop !91

polly.loop_exit472.loopexit.us:                   ; preds = %polly.loop_header470.us, %middle.block1535
  %polly.indvar_next467.us = add nuw nsw i64 %polly.indvar466.us, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar_next467.us, 60
  br i1 %exitcond1054.not, label %polly.loop_exit465, label %polly.loop_header463.us

polly.start498:                                   ; preds = %init_array.exit
  %malloccall500 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall502 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header586

polly.exiting499:                                 ; preds = %polly.loop_exit626
  tail call void @free(i8* %malloccall500)
  tail call void @free(i8* %malloccall502)
  br label %kernel_syr2k.exit

polly.loop_header586:                             ; preds = %polly.loop_exit594, %polly.start498
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit594 ], [ 0, %polly.start498 ]
  %polly.indvar589 = phi i64 [ %polly.indvar_next590, %polly.loop_exit594 ], [ 1, %polly.start498 ]
  %192 = add i64 %indvar, 1
  %193 = mul nuw nsw i64 %polly.indvar589, 640
  %scevgep598 = getelementptr i8, i8* %call, i64 %193
  %min.iters.check1479 = icmp ult i64 %192, 4
  br i1 %min.iters.check1479, label %polly.loop_header592.preheader, label %vector.ph1480

vector.ph1480:                                    ; preds = %polly.loop_header586
  %n.vec1482 = and i64 %192, -4
  br label %vector.body1478

vector.body1478:                                  ; preds = %vector.body1478, %vector.ph1480
  %index1483 = phi i64 [ 0, %vector.ph1480 ], [ %index.next1484, %vector.body1478 ]
  %194 = shl nuw nsw i64 %index1483, 3
  %195 = getelementptr i8, i8* %scevgep598, i64 %194
  %196 = bitcast i8* %195 to <4 x double>*
  %wide.load1487 = load <4 x double>, <4 x double>* %196, align 8, !alias.scope !92, !noalias !94
  %197 = fmul fast <4 x double> %wide.load1487, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %198 = bitcast i8* %195 to <4 x double>*
  store <4 x double> %197, <4 x double>* %198, align 8, !alias.scope !92, !noalias !94
  %index.next1484 = add i64 %index1483, 4
  %199 = icmp eq i64 %index.next1484, %n.vec1482
  br i1 %199, label %middle.block1476, label %vector.body1478, !llvm.loop !99

middle.block1476:                                 ; preds = %vector.body1478
  %cmp.n1486 = icmp eq i64 %192, %n.vec1482
  br i1 %cmp.n1486, label %polly.loop_exit594, label %polly.loop_header592.preheader

polly.loop_header592.preheader:                   ; preds = %polly.loop_header586, %middle.block1476
  %polly.indvar595.ph = phi i64 [ 0, %polly.loop_header586 ], [ %n.vec1482, %middle.block1476 ]
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_header592, %middle.block1476
  %polly.indvar_next590 = add nuw nsw i64 %polly.indvar589, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar_next590, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1088.not, label %polly.loop_header602.preheader, label %polly.loop_header586

polly.loop_header602.preheader:                   ; preds = %polly.loop_exit594
  %Packed_MemRef_call1501 = bitcast i8* %malloccall500 to double*
  %Packed_MemRef_call2503 = bitcast i8* %malloccall502 to double*
  br label %polly.loop_header602

polly.loop_header592:                             ; preds = %polly.loop_header592.preheader, %polly.loop_header592
  %polly.indvar595 = phi i64 [ %polly.indvar_next596, %polly.loop_header592 ], [ %polly.indvar595.ph, %polly.loop_header592.preheader ]
  %200 = shl nuw nsw i64 %polly.indvar595, 3
  %scevgep599 = getelementptr i8, i8* %scevgep598, i64 %200
  %scevgep599600 = bitcast i8* %scevgep599 to double*
  %_p_scalar_601 = load double, double* %scevgep599600, align 8, !alias.scope !92, !noalias !94
  %p_mul.i = fmul fast double %_p_scalar_601, 1.200000e+00
  store double %p_mul.i, double* %scevgep599600, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next596 = add nuw nsw i64 %polly.indvar595, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar_next596, %polly.indvar589
  br i1 %exitcond1087.not, label %polly.loop_exit594, label %polly.loop_header592, !llvm.loop !100

polly.loop_header602:                             ; preds = %polly.loop_header602.preheader, %polly.loop_exit610
  %polly.indvar605 = phi i64 [ %polly.indvar_next606, %polly.loop_exit610 ], [ 0, %polly.loop_header602.preheader ]
  %polly.access.mul.Packed_MemRef_call2503 = mul nuw nsw i64 %polly.indvar605, 80
  br label %polly.loop_header608

polly.loop_exit610:                               ; preds = %polly.loop_header608
  %polly.indvar_next606 = add nuw nsw i64 %polly.indvar605, 1
  %exitcond1086.not = icmp eq i64 %polly.indvar_next606, 60
  br i1 %exitcond1086.not, label %polly.loop_header618, label %polly.loop_header602

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
  %exitcond1085.not = icmp eq i64 %polly.indvar_next612, 80
  br i1 %exitcond1085.not, label %polly.loop_exit610, label %polly.loop_header608

polly.loop_header618:                             ; preds = %polly.loop_exit610, %polly.loop_exit626
  %indvars.iv1081 = phi i64 [ %indvars.iv.next1082, %polly.loop_exit626 ], [ 2, %polly.loop_exit610 ]
  %indvars.iv1069 = phi i64 [ %indvars.iv.next1070, %polly.loop_exit626 ], [ 0, %polly.loop_exit610 ]
  %indvars.iv1064 = phi i64 [ %indvars.iv.next1065, %polly.loop_exit626 ], [ 0, %polly.loop_exit610 ]
  %polly.indvar621 = phi i64 [ %polly.indvar_next622, %polly.loop_exit626 ], [ 0, %polly.loop_exit610 ]
  %201 = mul nsw i64 %polly.indvar621, -8
  %202 = shl nuw nsw i64 %polly.indvar621, 3
  %203 = mul nsw i64 %polly.indvar621, -8
  %204 = shl nsw i64 %polly.indvar621, 3
  br label %polly.loop_header624

polly.loop_exit626:                               ; preds = %polly.loop_exit633
  %polly.indvar_next622 = add nuw nsw i64 %polly.indvar621, 1
  %indvars.iv.next1065 = add nsw i64 %indvars.iv1064, -8
  %indvars.iv.next1070 = add nuw nsw i64 %indvars.iv1069, 8
  %indvars.iv.next1082 = add nuw nsw i64 %indvars.iv1081, 2
  %exitcond1084.not = icmp eq i64 %polly.indvar_next622, 10
  br i1 %exitcond1084.not, label %polly.exiting499, label %polly.loop_header618

polly.loop_header624:                             ; preds = %polly.loop_exit633, %polly.loop_header618
  %indvars.iv1071 = phi i64 [ %indvars.iv.next1072, %polly.loop_exit633 ], [ %indvars.iv1069, %polly.loop_header618 ]
  %indvars.iv1066 = phi i64 [ %indvars.iv.next1067, %polly.loop_exit633 ], [ %indvars.iv1064, %polly.loop_header618 ]
  %polly.indvar627 = phi i64 [ %polly.indvar_next628, %polly.loop_exit633 ], [ 0, %polly.loop_header618 ]
  %205 = shl nuw nsw i64 %polly.indvar627, 2
  %206 = add i64 %201, %205
  %smax1491 = call i64 @llvm.smax.i64(i64 %206, i64 0)
  %207 = mul nsw i64 %polly.indvar627, -4
  %208 = add i64 %202, %207
  %209 = add i64 %smax1491, %208
  %210 = shl nsw i64 %polly.indvar627, 2
  %211 = add nsw i64 %210, %203
  %212 = icmp sgt i64 %211, 0
  %213 = select i1 %212, i64 %211, i64 0
  %polly.loop_guard634 = icmp slt i64 %213, 8
  br i1 %polly.loop_guard634, label %polly.loop_header631.preheader, label %polly.loop_exit633

polly.loop_header631.preheader:                   ; preds = %polly.loop_header624
  %smax1068 = call i64 @llvm.smax.i64(i64 %indvars.iv1066, i64 0)
  %214 = add i64 %smax1068, %indvars.iv1071
  %215 = sub nsw i64 %204, %210
  %216 = add nuw nsw i64 %210, 4
  br label %polly.loop_header631

polly.loop_exit633:                               ; preds = %polly.loop_exit669, %polly.loop_header624
  %polly.indvar_next628 = add nuw nsw i64 %polly.indvar627, 1
  %indvars.iv.next1067 = add nsw i64 %indvars.iv1066, 4
  %indvars.iv.next1072 = add nsw i64 %indvars.iv1071, -4
  %exitcond1083.not = icmp eq i64 %polly.indvar_next628, %indvars.iv1081
  br i1 %exitcond1083.not, label %polly.loop_exit626, label %polly.loop_header624

polly.loop_header631:                             ; preds = %polly.loop_header631.preheader, %polly.loop_exit669
  %indvar1492 = phi i64 [ 0, %polly.loop_header631.preheader ], [ %indvar.next1493, %polly.loop_exit669 ]
  %indvars.iv1073 = phi i64 [ %214, %polly.loop_header631.preheader ], [ %indvars.iv.next1074, %polly.loop_exit669 ]
  %polly.indvar635 = phi i64 [ %213, %polly.loop_header631.preheader ], [ %polly.indvar_next636, %polly.loop_exit669 ]
  %217 = add i64 %209, %indvar1492
  %smin = call i64 @llvm.smin.i64(i64 %217, i64 3)
  %218 = add nsw i64 %smin, 1
  %smin1078 = call i64 @llvm.smin.i64(i64 %indvars.iv1073, i64 3)
  %219 = add nsw i64 %polly.indvar635, %215
  %polly.loop_guard6481173 = icmp sgt i64 %219, -1
  %220 = add nuw nsw i64 %polly.indvar635, %204
  %.not907 = icmp ult i64 %220, %216
  %polly.access.mul.call1661 = mul nsw i64 %220, 60
  br i1 %polly.loop_guard6481173, label %polly.loop_header638.us, label %polly.loop_header631.split

polly.loop_header638.us:                          ; preds = %polly.loop_header631, %polly.merge657.us
  %polly.indvar641.us = phi i64 [ %polly.indvar_next642.us, %polly.merge657.us ], [ 0, %polly.loop_header631 ]
  %polly.access.mul.Packed_MemRef_call1501.us = mul nuw nsw i64 %polly.indvar641.us, 80
  br label %polly.loop_header645.us

polly.loop_header645.us:                          ; preds = %polly.loop_header638.us, %polly.loop_header645.us
  %polly.indvar649.us = phi i64 [ %polly.indvar_next650.us, %polly.loop_header645.us ], [ 0, %polly.loop_header638.us ]
  %221 = add nuw nsw i64 %polly.indvar649.us, %210
  %polly.access.mul.call1653.us = mul nuw nsw i64 %221, 60
  %polly.access.add.call1654.us = add nuw nsw i64 %polly.access.mul.call1653.us, %polly.indvar641.us
  %polly.access.call1655.us = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1654.us
  %polly.access.call1655.load.us = load double, double* %polly.access.call1655.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1501.us = add nuw nsw i64 %polly.indvar649.us, %polly.access.mul.Packed_MemRef_call1501.us
  %polly.access.Packed_MemRef_call1501.us = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501.us
  store double %polly.access.call1655.load.us, double* %polly.access.Packed_MemRef_call1501.us, align 8
  %polly.indvar_next650.us = add nuw nsw i64 %polly.indvar649.us, 1
  %exitcond1076.not = icmp eq i64 %polly.indvar649.us, %smin1078
  br i1 %exitcond1076.not, label %polly.cond656.loopexit.us, label %polly.loop_header645.us

polly.then658.us:                                 ; preds = %polly.cond656.loopexit.us
  %polly.access.add.call1662.us = add nuw nsw i64 %polly.indvar641.us, %polly.access.mul.call1661
  %polly.access.call1663.us = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1662.us
  %polly.access.call1663.load.us = load double, double* %polly.access.call1663.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1501665.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1501.us, %219
  %polly.access.Packed_MemRef_call1501666.us = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501665.us
  store double %polly.access.call1663.load.us, double* %polly.access.Packed_MemRef_call1501666.us, align 8
  br label %polly.merge657.us

polly.merge657.us:                                ; preds = %polly.then658.us, %polly.cond656.loopexit.us
  %polly.indvar_next642.us = add nuw nsw i64 %polly.indvar641.us, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar_next642.us, 60
  br i1 %exitcond1077.not, label %polly.loop_header667.preheader, label %polly.loop_header638.us

polly.cond656.loopexit.us:                        ; preds = %polly.loop_header645.us
  br i1 %.not907, label %polly.merge657.us, label %polly.then658.us

polly.loop_header631.split:                       ; preds = %polly.loop_header631
  br i1 %.not907, label %polly.loop_exit669, label %polly.loop_header638

polly.loop_exit669:                               ; preds = %polly.loop_exit676.loopexit.us, %polly.loop_header631.split, %polly.loop_header667.preheader
  %polly.indvar_next636 = add nuw nsw i64 %polly.indvar635, 1
  %polly.loop_cond637 = icmp ult i64 %polly.indvar635, 7
  %indvars.iv.next1074 = add i64 %indvars.iv1073, 1
  %indvar.next1493 = add i64 %indvar1492, 1
  br i1 %polly.loop_cond637, label %polly.loop_header631, label %polly.loop_exit633

polly.loop_header638:                             ; preds = %polly.loop_header631.split, %polly.loop_header638
  %polly.indvar641 = phi i64 [ %polly.indvar_next642, %polly.loop_header638 ], [ 0, %polly.loop_header631.split ]
  %polly.access.add.call1662 = add nuw nsw i64 %polly.indvar641, %polly.access.mul.call1661
  %polly.access.call1663 = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1662
  %polly.access.call1663.load = load double, double* %polly.access.call1663, align 8, !alias.scope !95, !noalias !102
  %polly.access.mul.Packed_MemRef_call1501664 = mul nuw nsw i64 %polly.indvar641, 80
  %polly.access.add.Packed_MemRef_call1501665 = add nsw i64 %polly.access.mul.Packed_MemRef_call1501664, %219
  %polly.access.Packed_MemRef_call1501666 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501665
  store double %polly.access.call1663.load, double* %polly.access.Packed_MemRef_call1501666, align 8
  %polly.indvar_next642 = add nuw nsw i64 %polly.indvar641, 1
  %exitcond1063.not = icmp eq i64 %polly.indvar_next642, 60
  br i1 %exitcond1063.not, label %polly.loop_header667.preheader, label %polly.loop_header638

polly.loop_header667.preheader:                   ; preds = %polly.loop_header638, %polly.merge657.us
  %222 = mul i64 %220, 640
  br i1 %polly.loop_guard6481173, label %polly.loop_header667.us, label %polly.loop_exit669

polly.loop_header667.us:                          ; preds = %polly.loop_header667.preheader, %polly.loop_exit676.loopexit.us
  %polly.indvar670.us = phi i64 [ %polly.indvar_next671.us, %polly.loop_exit676.loopexit.us ], [ 0, %polly.loop_header667.preheader ]
  %polly.access.mul.Packed_MemRef_call1501681.us = mul nuw nsw i64 %polly.indvar670.us, 80
  %polly.access.add.Packed_MemRef_call2503686.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1501681.us, %220
  %polly.access.Packed_MemRef_call2503687.us = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503686.us
  %_p_scalar_688.us = load double, double* %polly.access.Packed_MemRef_call2503687.us, align 8
  %polly.access.add.Packed_MemRef_call1501694.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1501681.us, %219
  %polly.access.Packed_MemRef_call1501695.us = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501694.us
  %_p_scalar_696.us = load double, double* %polly.access.Packed_MemRef_call1501695.us, align 8
  %min.iters.check1494 = icmp ult i64 %218, 4
  br i1 %min.iters.check1494, label %polly.loop_header674.us.preheader, label %vector.ph1495

vector.ph1495:                                    ; preds = %polly.loop_header667.us
  %n.vec1497 = and i64 %218, -4
  %broadcast.splatinsert1503 = insertelement <4 x double> poison, double %_p_scalar_688.us, i32 0
  %broadcast.splat1504 = shufflevector <4 x double> %broadcast.splatinsert1503, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1506 = insertelement <4 x double> poison, double %_p_scalar_696.us, i32 0
  %broadcast.splat1507 = shufflevector <4 x double> %broadcast.splatinsert1506, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1490

vector.body1490:                                  ; preds = %vector.body1490, %vector.ph1495
  %index1498 = phi i64 [ 0, %vector.ph1495 ], [ %index.next1499, %vector.body1490 ]
  %223 = add nuw nsw i64 %index1498, %210
  %224 = add nuw nsw i64 %index1498, %polly.access.mul.Packed_MemRef_call1501681.us
  %225 = getelementptr double, double* %Packed_MemRef_call1501, i64 %224
  %226 = bitcast double* %225 to <4 x double>*
  %wide.load1502 = load <4 x double>, <4 x double>* %226, align 8
  %227 = fmul fast <4 x double> %broadcast.splat1504, %wide.load1502
  %228 = add nuw nsw i64 %223, %polly.access.mul.Packed_MemRef_call1501681.us
  %229 = getelementptr double, double* %Packed_MemRef_call2503, i64 %228
  %230 = bitcast double* %229 to <4 x double>*
  %wide.load1505 = load <4 x double>, <4 x double>* %230, align 8
  %231 = fmul fast <4 x double> %broadcast.splat1507, %wide.load1505
  %232 = shl i64 %223, 3
  %233 = add i64 %232, %222
  %234 = getelementptr i8, i8* %call, i64 %233
  %235 = bitcast i8* %234 to <4 x double>*
  %wide.load1508 = load <4 x double>, <4 x double>* %235, align 8, !alias.scope !92, !noalias !94
  %236 = fadd fast <4 x double> %231, %227
  %237 = fmul fast <4 x double> %236, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %238 = fadd fast <4 x double> %237, %wide.load1508
  %239 = bitcast i8* %234 to <4 x double>*
  store <4 x double> %238, <4 x double>* %239, align 8, !alias.scope !92, !noalias !94
  %index.next1499 = add i64 %index1498, 4
  %240 = icmp eq i64 %index.next1499, %n.vec1497
  br i1 %240, label %middle.block1488, label %vector.body1490, !llvm.loop !103

middle.block1488:                                 ; preds = %vector.body1490
  %cmp.n1501 = icmp eq i64 %218, %n.vec1497
  br i1 %cmp.n1501, label %polly.loop_exit676.loopexit.us, label %polly.loop_header674.us.preheader

polly.loop_header674.us.preheader:                ; preds = %polly.loop_header667.us, %middle.block1488
  %polly.indvar678.us.ph = phi i64 [ 0, %polly.loop_header667.us ], [ %n.vec1497, %middle.block1488 ]
  br label %polly.loop_header674.us

polly.loop_header674.us:                          ; preds = %polly.loop_header674.us.preheader, %polly.loop_header674.us
  %polly.indvar678.us = phi i64 [ %polly.indvar_next679.us, %polly.loop_header674.us ], [ %polly.indvar678.us.ph, %polly.loop_header674.us.preheader ]
  %241 = add nuw nsw i64 %polly.indvar678.us, %210
  %polly.access.add.Packed_MemRef_call1501682.us = add nuw nsw i64 %polly.indvar678.us, %polly.access.mul.Packed_MemRef_call1501681.us
  %polly.access.Packed_MemRef_call1501683.us = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501682.us
  %_p_scalar_684.us = load double, double* %polly.access.Packed_MemRef_call1501683.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_688.us, %_p_scalar_684.us
  %polly.access.add.Packed_MemRef_call2503690.us = add nuw nsw i64 %241, %polly.access.mul.Packed_MemRef_call1501681.us
  %polly.access.Packed_MemRef_call2503691.us = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503690.us
  %_p_scalar_692.us = load double, double* %polly.access.Packed_MemRef_call2503691.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_696.us, %_p_scalar_692.us
  %242 = shl i64 %241, 3
  %243 = add i64 %242, %222
  %scevgep697.us = getelementptr i8, i8* %call, i64 %243
  %scevgep697698.us = bitcast i8* %scevgep697.us to double*
  %_p_scalar_699.us = load double, double* %scevgep697698.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_699.us
  store double %p_add42.i.us, double* %scevgep697698.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next679.us = add nuw nsw i64 %polly.indvar678.us, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar678.us, %smin1078
  br i1 %exitcond1079.not, label %polly.loop_exit676.loopexit.us, label %polly.loop_header674.us, !llvm.loop !104

polly.loop_exit676.loopexit.us:                   ; preds = %polly.loop_header674.us, %middle.block1488
  %polly.indvar_next671.us = add nuw nsw i64 %polly.indvar670.us, 1
  %exitcond1080.not = icmp eq i64 %polly.indvar_next671.us, 60
  br i1 %exitcond1080.not, label %polly.loop_exit669, label %polly.loop_header667.us

polly.loop_header838:                             ; preds = %entry, %polly.loop_exit846
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_exit846 ], [ 0, %entry ]
  %244 = mul nuw nsw i64 %polly.indvar841, 640
  %245 = trunc i64 %polly.indvar841 to i32
  %broadcast.splatinsert1210 = insertelement <4 x i32> poison, i32 %245, i32 0
  %broadcast.splat1211 = shufflevector <4 x i32> %broadcast.splatinsert1210, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1200

vector.body1200:                                  ; preds = %vector.body1200, %polly.loop_header838
  %index1202 = phi i64 [ 0, %polly.loop_header838 ], [ %index.next1203, %vector.body1200 ]
  %vec.ind1208 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header838 ], [ %vec.ind.next1209, %vector.body1200 ]
  %246 = mul <4 x i32> %vec.ind1208, %broadcast.splat1211
  %247 = add <4 x i32> %246, <i32 3, i32 3, i32 3, i32 3>
  %248 = urem <4 x i32> %247, <i32 80, i32 80, i32 80, i32 80>
  %249 = sitofp <4 x i32> %248 to <4 x double>
  %250 = fmul fast <4 x double> %249, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %251 = shl i64 %index1202, 3
  %252 = add nuw nsw i64 %251, %244
  %253 = getelementptr i8, i8* %call, i64 %252
  %254 = bitcast i8* %253 to <4 x double>*
  store <4 x double> %250, <4 x double>* %254, align 8, !alias.scope !105, !noalias !107
  %index.next1203 = add i64 %index1202, 4
  %vec.ind.next1209 = add <4 x i32> %vec.ind1208, <i32 4, i32 4, i32 4, i32 4>
  %255 = icmp eq i64 %index.next1203, 32
  br i1 %255, label %polly.loop_exit846, label %vector.body1200, !llvm.loop !110

polly.loop_exit846:                               ; preds = %vector.body1200
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %exitcond1108.not = icmp eq i64 %polly.indvar_next842, 32
  br i1 %exitcond1108.not, label %polly.loop_header838.1, label %polly.loop_header838

polly.loop_header865:                             ; preds = %polly.loop_exit846.2.2, %polly.loop_exit873
  %polly.indvar868 = phi i64 [ %polly.indvar_next869, %polly.loop_exit873 ], [ 0, %polly.loop_exit846.2.2 ]
  %256 = mul nuw nsw i64 %polly.indvar868, 480
  %257 = trunc i64 %polly.indvar868 to i32
  %broadcast.splatinsert1324 = insertelement <4 x i32> poison, i32 %257, i32 0
  %broadcast.splat1325 = shufflevector <4 x i32> %broadcast.splatinsert1324, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1314

vector.body1314:                                  ; preds = %vector.body1314, %polly.loop_header865
  %index1316 = phi i64 [ 0, %polly.loop_header865 ], [ %index.next1317, %vector.body1314 ]
  %vec.ind1322 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header865 ], [ %vec.ind.next1323, %vector.body1314 ]
  %258 = mul <4 x i32> %vec.ind1322, %broadcast.splat1325
  %259 = add <4 x i32> %258, <i32 2, i32 2, i32 2, i32 2>
  %260 = urem <4 x i32> %259, <i32 60, i32 60, i32 60, i32 60>
  %261 = sitofp <4 x i32> %260 to <4 x double>
  %262 = fmul fast <4 x double> %261, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %263 = shl i64 %index1316, 3
  %264 = add i64 %263, %256
  %265 = getelementptr i8, i8* %call2, i64 %264
  %266 = bitcast i8* %265 to <4 x double>*
  store <4 x double> %262, <4 x double>* %266, align 8, !alias.scope !109, !noalias !111
  %index.next1317 = add i64 %index1316, 4
  %vec.ind.next1323 = add <4 x i32> %vec.ind1322, <i32 4, i32 4, i32 4, i32 4>
  %267 = icmp eq i64 %index.next1317, 32
  br i1 %267, label %polly.loop_exit873, label %vector.body1314, !llvm.loop !112

polly.loop_exit873:                               ; preds = %vector.body1314
  %polly.indvar_next869 = add nuw nsw i64 %polly.indvar868, 1
  %exitcond1099.not = icmp eq i64 %polly.indvar_next869, 32
  br i1 %exitcond1099.not, label %polly.loop_header865.1, label %polly.loop_header865

polly.loop_header891:                             ; preds = %polly.loop_exit873.1.2, %polly.loop_exit899
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_exit899 ], [ 0, %polly.loop_exit873.1.2 ]
  %268 = mul nuw nsw i64 %polly.indvar894, 480
  %269 = trunc i64 %polly.indvar894 to i32
  %broadcast.splatinsert1402 = insertelement <4 x i32> poison, i32 %269, i32 0
  %broadcast.splat1403 = shufflevector <4 x i32> %broadcast.splatinsert1402, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1392

vector.body1392:                                  ; preds = %vector.body1392, %polly.loop_header891
  %index1394 = phi i64 [ 0, %polly.loop_header891 ], [ %index.next1395, %vector.body1392 ]
  %vec.ind1400 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header891 ], [ %vec.ind.next1401, %vector.body1392 ]
  %270 = mul <4 x i32> %vec.ind1400, %broadcast.splat1403
  %271 = add <4 x i32> %270, <i32 1, i32 1, i32 1, i32 1>
  %272 = urem <4 x i32> %271, <i32 80, i32 80, i32 80, i32 80>
  %273 = sitofp <4 x i32> %272 to <4 x double>
  %274 = fmul fast <4 x double> %273, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %275 = shl i64 %index1394, 3
  %276 = add i64 %275, %268
  %277 = getelementptr i8, i8* %call1, i64 %276
  %278 = bitcast i8* %277 to <4 x double>*
  store <4 x double> %274, <4 x double>* %278, align 8, !alias.scope !108, !noalias !113
  %index.next1395 = add i64 %index1394, 4
  %vec.ind.next1401 = add <4 x i32> %vec.ind1400, <i32 4, i32 4, i32 4, i32 4>
  %279 = icmp eq i64 %index.next1395, 32
  br i1 %279, label %polly.loop_exit899, label %vector.body1392, !llvm.loop !114

polly.loop_exit899:                               ; preds = %vector.body1392
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar_next895, 32
  br i1 %exitcond1093.not, label %polly.loop_header891.1, label %polly.loop_header891

polly.loop_header891.1:                           ; preds = %polly.loop_exit899, %polly.loop_exit899.1
  %polly.indvar894.1 = phi i64 [ %polly.indvar_next895.1, %polly.loop_exit899.1 ], [ 0, %polly.loop_exit899 ]
  %280 = mul nuw nsw i64 %polly.indvar894.1, 480
  %281 = trunc i64 %polly.indvar894.1 to i32
  %broadcast.splatinsert1414 = insertelement <4 x i32> poison, i32 %281, i32 0
  %broadcast.splat1415 = shufflevector <4 x i32> %broadcast.splatinsert1414, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1406

vector.body1406:                                  ; preds = %vector.body1406, %polly.loop_header891.1
  %index1408 = phi i64 [ 0, %polly.loop_header891.1 ], [ %index.next1409, %vector.body1406 ]
  %vec.ind1412 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header891.1 ], [ %vec.ind.next1413, %vector.body1406 ]
  %282 = add nuw nsw <4 x i64> %vec.ind1412, <i64 32, i64 32, i64 32, i64 32>
  %283 = trunc <4 x i64> %282 to <4 x i32>
  %284 = mul <4 x i32> %broadcast.splat1415, %283
  %285 = add <4 x i32> %284, <i32 1, i32 1, i32 1, i32 1>
  %286 = urem <4 x i32> %285, <i32 80, i32 80, i32 80, i32 80>
  %287 = sitofp <4 x i32> %286 to <4 x double>
  %288 = fmul fast <4 x double> %287, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %289 = extractelement <4 x i64> %282, i32 0
  %290 = shl i64 %289, 3
  %291 = add i64 %290, %280
  %292 = getelementptr i8, i8* %call1, i64 %291
  %293 = bitcast i8* %292 to <4 x double>*
  store <4 x double> %288, <4 x double>* %293, align 8, !alias.scope !108, !noalias !113
  %index.next1409 = add i64 %index1408, 4
  %vec.ind.next1413 = add <4 x i64> %vec.ind1412, <i64 4, i64 4, i64 4, i64 4>
  %294 = icmp eq i64 %index.next1409, 28
  br i1 %294, label %polly.loop_exit899.1, label %vector.body1406, !llvm.loop !115

polly.loop_exit899.1:                             ; preds = %vector.body1406
  %polly.indvar_next895.1 = add nuw nsw i64 %polly.indvar894.1, 1
  %exitcond1093.1.not = icmp eq i64 %polly.indvar_next895.1, 32
  br i1 %exitcond1093.1.not, label %polly.loop_header891.11116, label %polly.loop_header891.1

polly.loop_header891.11116:                       ; preds = %polly.loop_exit899.1, %polly.loop_exit899.11127
  %polly.indvar894.11115 = phi i64 [ %polly.indvar_next895.11125, %polly.loop_exit899.11127 ], [ 0, %polly.loop_exit899.1 ]
  %295 = add nuw nsw i64 %polly.indvar894.11115, 32
  %296 = mul nuw nsw i64 %295, 480
  %297 = trunc i64 %295 to i32
  %broadcast.splatinsert1428 = insertelement <4 x i32> poison, i32 %297, i32 0
  %broadcast.splat1429 = shufflevector <4 x i32> %broadcast.splatinsert1428, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1418

vector.body1418:                                  ; preds = %vector.body1418, %polly.loop_header891.11116
  %index1420 = phi i64 [ 0, %polly.loop_header891.11116 ], [ %index.next1421, %vector.body1418 ]
  %vec.ind1426 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header891.11116 ], [ %vec.ind.next1427, %vector.body1418 ]
  %298 = mul <4 x i32> %vec.ind1426, %broadcast.splat1429
  %299 = add <4 x i32> %298, <i32 1, i32 1, i32 1, i32 1>
  %300 = urem <4 x i32> %299, <i32 80, i32 80, i32 80, i32 80>
  %301 = sitofp <4 x i32> %300 to <4 x double>
  %302 = fmul fast <4 x double> %301, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %303 = shl i64 %index1420, 3
  %304 = add i64 %303, %296
  %305 = getelementptr i8, i8* %call1, i64 %304
  %306 = bitcast i8* %305 to <4 x double>*
  store <4 x double> %302, <4 x double>* %306, align 8, !alias.scope !108, !noalias !113
  %index.next1421 = add i64 %index1420, 4
  %vec.ind.next1427 = add <4 x i32> %vec.ind1426, <i32 4, i32 4, i32 4, i32 4>
  %307 = icmp eq i64 %index.next1421, 32
  br i1 %307, label %polly.loop_exit899.11127, label %vector.body1418, !llvm.loop !116

polly.loop_exit899.11127:                         ; preds = %vector.body1418
  %polly.indvar_next895.11125 = add nuw nsw i64 %polly.indvar894.11115, 1
  %exitcond1093.11126.not = icmp eq i64 %polly.indvar_next895.11125, 32
  br i1 %exitcond1093.11126.not, label %polly.loop_header891.1.1, label %polly.loop_header891.11116

polly.loop_header891.1.1:                         ; preds = %polly.loop_exit899.11127, %polly.loop_exit899.1.1
  %polly.indvar894.1.1 = phi i64 [ %polly.indvar_next895.1.1, %polly.loop_exit899.1.1 ], [ 0, %polly.loop_exit899.11127 ]
  %308 = add nuw nsw i64 %polly.indvar894.1.1, 32
  %309 = mul nuw nsw i64 %308, 480
  %310 = trunc i64 %308 to i32
  %broadcast.splatinsert1440 = insertelement <4 x i32> poison, i32 %310, i32 0
  %broadcast.splat1441 = shufflevector <4 x i32> %broadcast.splatinsert1440, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1432

vector.body1432:                                  ; preds = %vector.body1432, %polly.loop_header891.1.1
  %index1434 = phi i64 [ 0, %polly.loop_header891.1.1 ], [ %index.next1435, %vector.body1432 ]
  %vec.ind1438 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header891.1.1 ], [ %vec.ind.next1439, %vector.body1432 ]
  %311 = add nuw nsw <4 x i64> %vec.ind1438, <i64 32, i64 32, i64 32, i64 32>
  %312 = trunc <4 x i64> %311 to <4 x i32>
  %313 = mul <4 x i32> %broadcast.splat1441, %312
  %314 = add <4 x i32> %313, <i32 1, i32 1, i32 1, i32 1>
  %315 = urem <4 x i32> %314, <i32 80, i32 80, i32 80, i32 80>
  %316 = sitofp <4 x i32> %315 to <4 x double>
  %317 = fmul fast <4 x double> %316, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %318 = extractelement <4 x i64> %311, i32 0
  %319 = shl i64 %318, 3
  %320 = add i64 %319, %309
  %321 = getelementptr i8, i8* %call1, i64 %320
  %322 = bitcast i8* %321 to <4 x double>*
  store <4 x double> %317, <4 x double>* %322, align 8, !alias.scope !108, !noalias !113
  %index.next1435 = add i64 %index1434, 4
  %vec.ind.next1439 = add <4 x i64> %vec.ind1438, <i64 4, i64 4, i64 4, i64 4>
  %323 = icmp eq i64 %index.next1435, 28
  br i1 %323, label %polly.loop_exit899.1.1, label %vector.body1432, !llvm.loop !117

polly.loop_exit899.1.1:                           ; preds = %vector.body1432
  %polly.indvar_next895.1.1 = add nuw nsw i64 %polly.indvar894.1.1, 1
  %exitcond1093.1.1.not = icmp eq i64 %polly.indvar_next895.1.1, 32
  br i1 %exitcond1093.1.1.not, label %polly.loop_header891.2, label %polly.loop_header891.1.1

polly.loop_header891.2:                           ; preds = %polly.loop_exit899.1.1, %polly.loop_exit899.2
  %polly.indvar894.2 = phi i64 [ %polly.indvar_next895.2, %polly.loop_exit899.2 ], [ 0, %polly.loop_exit899.1.1 ]
  %324 = add nuw nsw i64 %polly.indvar894.2, 64
  %325 = mul nuw nsw i64 %324, 480
  %326 = trunc i64 %324 to i32
  %broadcast.splatinsert1454 = insertelement <4 x i32> poison, i32 %326, i32 0
  %broadcast.splat1455 = shufflevector <4 x i32> %broadcast.splatinsert1454, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1444

vector.body1444:                                  ; preds = %vector.body1444, %polly.loop_header891.2
  %index1446 = phi i64 [ 0, %polly.loop_header891.2 ], [ %index.next1447, %vector.body1444 ]
  %vec.ind1452 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header891.2 ], [ %vec.ind.next1453, %vector.body1444 ]
  %327 = mul <4 x i32> %vec.ind1452, %broadcast.splat1455
  %328 = add <4 x i32> %327, <i32 1, i32 1, i32 1, i32 1>
  %329 = urem <4 x i32> %328, <i32 80, i32 80, i32 80, i32 80>
  %330 = sitofp <4 x i32> %329 to <4 x double>
  %331 = fmul fast <4 x double> %330, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %332 = shl i64 %index1446, 3
  %333 = add i64 %332, %325
  %334 = getelementptr i8, i8* %call1, i64 %333
  %335 = bitcast i8* %334 to <4 x double>*
  store <4 x double> %331, <4 x double>* %335, align 8, !alias.scope !108, !noalias !113
  %index.next1447 = add i64 %index1446, 4
  %vec.ind.next1453 = add <4 x i32> %vec.ind1452, <i32 4, i32 4, i32 4, i32 4>
  %336 = icmp eq i64 %index.next1447, 32
  br i1 %336, label %polly.loop_exit899.2, label %vector.body1444, !llvm.loop !118

polly.loop_exit899.2:                             ; preds = %vector.body1444
  %polly.indvar_next895.2 = add nuw nsw i64 %polly.indvar894.2, 1
  %exitcond1093.2.not = icmp eq i64 %polly.indvar_next895.2, 16
  br i1 %exitcond1093.2.not, label %polly.loop_header891.1.2, label %polly.loop_header891.2

polly.loop_header891.1.2:                         ; preds = %polly.loop_exit899.2, %polly.loop_exit899.1.2
  %polly.indvar894.1.2 = phi i64 [ %polly.indvar_next895.1.2, %polly.loop_exit899.1.2 ], [ 0, %polly.loop_exit899.2 ]
  %337 = add nuw nsw i64 %polly.indvar894.1.2, 64
  %338 = mul nuw nsw i64 %337, 480
  %339 = trunc i64 %337 to i32
  %broadcast.splatinsert1466 = insertelement <4 x i32> poison, i32 %339, i32 0
  %broadcast.splat1467 = shufflevector <4 x i32> %broadcast.splatinsert1466, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1458

vector.body1458:                                  ; preds = %vector.body1458, %polly.loop_header891.1.2
  %index1460 = phi i64 [ 0, %polly.loop_header891.1.2 ], [ %index.next1461, %vector.body1458 ]
  %vec.ind1464 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header891.1.2 ], [ %vec.ind.next1465, %vector.body1458 ]
  %340 = add nuw nsw <4 x i64> %vec.ind1464, <i64 32, i64 32, i64 32, i64 32>
  %341 = trunc <4 x i64> %340 to <4 x i32>
  %342 = mul <4 x i32> %broadcast.splat1467, %341
  %343 = add <4 x i32> %342, <i32 1, i32 1, i32 1, i32 1>
  %344 = urem <4 x i32> %343, <i32 80, i32 80, i32 80, i32 80>
  %345 = sitofp <4 x i32> %344 to <4 x double>
  %346 = fmul fast <4 x double> %345, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %347 = extractelement <4 x i64> %340, i32 0
  %348 = shl i64 %347, 3
  %349 = add i64 %348, %338
  %350 = getelementptr i8, i8* %call1, i64 %349
  %351 = bitcast i8* %350 to <4 x double>*
  store <4 x double> %346, <4 x double>* %351, align 8, !alias.scope !108, !noalias !113
  %index.next1461 = add i64 %index1460, 4
  %vec.ind.next1465 = add <4 x i64> %vec.ind1464, <i64 4, i64 4, i64 4, i64 4>
  %352 = icmp eq i64 %index.next1461, 28
  br i1 %352, label %polly.loop_exit899.1.2, label %vector.body1458, !llvm.loop !119

polly.loop_exit899.1.2:                           ; preds = %vector.body1458
  %polly.indvar_next895.1.2 = add nuw nsw i64 %polly.indvar894.1.2, 1
  %exitcond1093.1.2.not = icmp eq i64 %polly.indvar_next895.1.2, 16
  br i1 %exitcond1093.1.2.not, label %init_array.exit, label %polly.loop_header891.1.2

polly.loop_header865.1:                           ; preds = %polly.loop_exit873, %polly.loop_exit873.1
  %polly.indvar868.1 = phi i64 [ %polly.indvar_next869.1, %polly.loop_exit873.1 ], [ 0, %polly.loop_exit873 ]
  %353 = mul nuw nsw i64 %polly.indvar868.1, 480
  %354 = trunc i64 %polly.indvar868.1 to i32
  %broadcast.splatinsert1336 = insertelement <4 x i32> poison, i32 %354, i32 0
  %broadcast.splat1337 = shufflevector <4 x i32> %broadcast.splatinsert1336, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1328

vector.body1328:                                  ; preds = %vector.body1328, %polly.loop_header865.1
  %index1330 = phi i64 [ 0, %polly.loop_header865.1 ], [ %index.next1331, %vector.body1328 ]
  %vec.ind1334 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header865.1 ], [ %vec.ind.next1335, %vector.body1328 ]
  %355 = add nuw nsw <4 x i64> %vec.ind1334, <i64 32, i64 32, i64 32, i64 32>
  %356 = trunc <4 x i64> %355 to <4 x i32>
  %357 = mul <4 x i32> %broadcast.splat1337, %356
  %358 = add <4 x i32> %357, <i32 2, i32 2, i32 2, i32 2>
  %359 = urem <4 x i32> %358, <i32 60, i32 60, i32 60, i32 60>
  %360 = sitofp <4 x i32> %359 to <4 x double>
  %361 = fmul fast <4 x double> %360, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %362 = extractelement <4 x i64> %355, i32 0
  %363 = shl i64 %362, 3
  %364 = add i64 %363, %353
  %365 = getelementptr i8, i8* %call2, i64 %364
  %366 = bitcast i8* %365 to <4 x double>*
  store <4 x double> %361, <4 x double>* %366, align 8, !alias.scope !109, !noalias !111
  %index.next1331 = add i64 %index1330, 4
  %vec.ind.next1335 = add <4 x i64> %vec.ind1334, <i64 4, i64 4, i64 4, i64 4>
  %367 = icmp eq i64 %index.next1331, 28
  br i1 %367, label %polly.loop_exit873.1, label %vector.body1328, !llvm.loop !120

polly.loop_exit873.1:                             ; preds = %vector.body1328
  %polly.indvar_next869.1 = add nuw nsw i64 %polly.indvar868.1, 1
  %exitcond1099.1.not = icmp eq i64 %polly.indvar_next869.1, 32
  br i1 %exitcond1099.1.not, label %polly.loop_header865.11130, label %polly.loop_header865.1

polly.loop_header865.11130:                       ; preds = %polly.loop_exit873.1, %polly.loop_exit873.11141
  %polly.indvar868.11129 = phi i64 [ %polly.indvar_next869.11139, %polly.loop_exit873.11141 ], [ 0, %polly.loop_exit873.1 ]
  %368 = add nuw nsw i64 %polly.indvar868.11129, 32
  %369 = mul nuw nsw i64 %368, 480
  %370 = trunc i64 %368 to i32
  %broadcast.splatinsert1350 = insertelement <4 x i32> poison, i32 %370, i32 0
  %broadcast.splat1351 = shufflevector <4 x i32> %broadcast.splatinsert1350, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1340

vector.body1340:                                  ; preds = %vector.body1340, %polly.loop_header865.11130
  %index1342 = phi i64 [ 0, %polly.loop_header865.11130 ], [ %index.next1343, %vector.body1340 ]
  %vec.ind1348 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header865.11130 ], [ %vec.ind.next1349, %vector.body1340 ]
  %371 = mul <4 x i32> %vec.ind1348, %broadcast.splat1351
  %372 = add <4 x i32> %371, <i32 2, i32 2, i32 2, i32 2>
  %373 = urem <4 x i32> %372, <i32 60, i32 60, i32 60, i32 60>
  %374 = sitofp <4 x i32> %373 to <4 x double>
  %375 = fmul fast <4 x double> %374, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %376 = shl i64 %index1342, 3
  %377 = add i64 %376, %369
  %378 = getelementptr i8, i8* %call2, i64 %377
  %379 = bitcast i8* %378 to <4 x double>*
  store <4 x double> %375, <4 x double>* %379, align 8, !alias.scope !109, !noalias !111
  %index.next1343 = add i64 %index1342, 4
  %vec.ind.next1349 = add <4 x i32> %vec.ind1348, <i32 4, i32 4, i32 4, i32 4>
  %380 = icmp eq i64 %index.next1343, 32
  br i1 %380, label %polly.loop_exit873.11141, label %vector.body1340, !llvm.loop !121

polly.loop_exit873.11141:                         ; preds = %vector.body1340
  %polly.indvar_next869.11139 = add nuw nsw i64 %polly.indvar868.11129, 1
  %exitcond1099.11140.not = icmp eq i64 %polly.indvar_next869.11139, 32
  br i1 %exitcond1099.11140.not, label %polly.loop_header865.1.1, label %polly.loop_header865.11130

polly.loop_header865.1.1:                         ; preds = %polly.loop_exit873.11141, %polly.loop_exit873.1.1
  %polly.indvar868.1.1 = phi i64 [ %polly.indvar_next869.1.1, %polly.loop_exit873.1.1 ], [ 0, %polly.loop_exit873.11141 ]
  %381 = add nuw nsw i64 %polly.indvar868.1.1, 32
  %382 = mul nuw nsw i64 %381, 480
  %383 = trunc i64 %381 to i32
  %broadcast.splatinsert1362 = insertelement <4 x i32> poison, i32 %383, i32 0
  %broadcast.splat1363 = shufflevector <4 x i32> %broadcast.splatinsert1362, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1354

vector.body1354:                                  ; preds = %vector.body1354, %polly.loop_header865.1.1
  %index1356 = phi i64 [ 0, %polly.loop_header865.1.1 ], [ %index.next1357, %vector.body1354 ]
  %vec.ind1360 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header865.1.1 ], [ %vec.ind.next1361, %vector.body1354 ]
  %384 = add nuw nsw <4 x i64> %vec.ind1360, <i64 32, i64 32, i64 32, i64 32>
  %385 = trunc <4 x i64> %384 to <4 x i32>
  %386 = mul <4 x i32> %broadcast.splat1363, %385
  %387 = add <4 x i32> %386, <i32 2, i32 2, i32 2, i32 2>
  %388 = urem <4 x i32> %387, <i32 60, i32 60, i32 60, i32 60>
  %389 = sitofp <4 x i32> %388 to <4 x double>
  %390 = fmul fast <4 x double> %389, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %391 = extractelement <4 x i64> %384, i32 0
  %392 = shl i64 %391, 3
  %393 = add i64 %392, %382
  %394 = getelementptr i8, i8* %call2, i64 %393
  %395 = bitcast i8* %394 to <4 x double>*
  store <4 x double> %390, <4 x double>* %395, align 8, !alias.scope !109, !noalias !111
  %index.next1357 = add i64 %index1356, 4
  %vec.ind.next1361 = add <4 x i64> %vec.ind1360, <i64 4, i64 4, i64 4, i64 4>
  %396 = icmp eq i64 %index.next1357, 28
  br i1 %396, label %polly.loop_exit873.1.1, label %vector.body1354, !llvm.loop !122

polly.loop_exit873.1.1:                           ; preds = %vector.body1354
  %polly.indvar_next869.1.1 = add nuw nsw i64 %polly.indvar868.1.1, 1
  %exitcond1099.1.1.not = icmp eq i64 %polly.indvar_next869.1.1, 32
  br i1 %exitcond1099.1.1.not, label %polly.loop_header865.2, label %polly.loop_header865.1.1

polly.loop_header865.2:                           ; preds = %polly.loop_exit873.1.1, %polly.loop_exit873.2
  %polly.indvar868.2 = phi i64 [ %polly.indvar_next869.2, %polly.loop_exit873.2 ], [ 0, %polly.loop_exit873.1.1 ]
  %397 = add nuw nsw i64 %polly.indvar868.2, 64
  %398 = mul nuw nsw i64 %397, 480
  %399 = trunc i64 %397 to i32
  %broadcast.splatinsert1376 = insertelement <4 x i32> poison, i32 %399, i32 0
  %broadcast.splat1377 = shufflevector <4 x i32> %broadcast.splatinsert1376, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1366

vector.body1366:                                  ; preds = %vector.body1366, %polly.loop_header865.2
  %index1368 = phi i64 [ 0, %polly.loop_header865.2 ], [ %index.next1369, %vector.body1366 ]
  %vec.ind1374 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header865.2 ], [ %vec.ind.next1375, %vector.body1366 ]
  %400 = mul <4 x i32> %vec.ind1374, %broadcast.splat1377
  %401 = add <4 x i32> %400, <i32 2, i32 2, i32 2, i32 2>
  %402 = urem <4 x i32> %401, <i32 60, i32 60, i32 60, i32 60>
  %403 = sitofp <4 x i32> %402 to <4 x double>
  %404 = fmul fast <4 x double> %403, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %405 = shl i64 %index1368, 3
  %406 = add i64 %405, %398
  %407 = getelementptr i8, i8* %call2, i64 %406
  %408 = bitcast i8* %407 to <4 x double>*
  store <4 x double> %404, <4 x double>* %408, align 8, !alias.scope !109, !noalias !111
  %index.next1369 = add i64 %index1368, 4
  %vec.ind.next1375 = add <4 x i32> %vec.ind1374, <i32 4, i32 4, i32 4, i32 4>
  %409 = icmp eq i64 %index.next1369, 32
  br i1 %409, label %polly.loop_exit873.2, label %vector.body1366, !llvm.loop !123

polly.loop_exit873.2:                             ; preds = %vector.body1366
  %polly.indvar_next869.2 = add nuw nsw i64 %polly.indvar868.2, 1
  %exitcond1099.2.not = icmp eq i64 %polly.indvar_next869.2, 16
  br i1 %exitcond1099.2.not, label %polly.loop_header865.1.2, label %polly.loop_header865.2

polly.loop_header865.1.2:                         ; preds = %polly.loop_exit873.2, %polly.loop_exit873.1.2
  %polly.indvar868.1.2 = phi i64 [ %polly.indvar_next869.1.2, %polly.loop_exit873.1.2 ], [ 0, %polly.loop_exit873.2 ]
  %410 = add nuw nsw i64 %polly.indvar868.1.2, 64
  %411 = mul nuw nsw i64 %410, 480
  %412 = trunc i64 %410 to i32
  %broadcast.splatinsert1388 = insertelement <4 x i32> poison, i32 %412, i32 0
  %broadcast.splat1389 = shufflevector <4 x i32> %broadcast.splatinsert1388, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1380

vector.body1380:                                  ; preds = %vector.body1380, %polly.loop_header865.1.2
  %index1382 = phi i64 [ 0, %polly.loop_header865.1.2 ], [ %index.next1383, %vector.body1380 ]
  %vec.ind1386 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header865.1.2 ], [ %vec.ind.next1387, %vector.body1380 ]
  %413 = add nuw nsw <4 x i64> %vec.ind1386, <i64 32, i64 32, i64 32, i64 32>
  %414 = trunc <4 x i64> %413 to <4 x i32>
  %415 = mul <4 x i32> %broadcast.splat1389, %414
  %416 = add <4 x i32> %415, <i32 2, i32 2, i32 2, i32 2>
  %417 = urem <4 x i32> %416, <i32 60, i32 60, i32 60, i32 60>
  %418 = sitofp <4 x i32> %417 to <4 x double>
  %419 = fmul fast <4 x double> %418, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %420 = extractelement <4 x i64> %413, i32 0
  %421 = shl i64 %420, 3
  %422 = add i64 %421, %411
  %423 = getelementptr i8, i8* %call2, i64 %422
  %424 = bitcast i8* %423 to <4 x double>*
  store <4 x double> %419, <4 x double>* %424, align 8, !alias.scope !109, !noalias !111
  %index.next1383 = add i64 %index1382, 4
  %vec.ind.next1387 = add <4 x i64> %vec.ind1386, <i64 4, i64 4, i64 4, i64 4>
  %425 = icmp eq i64 %index.next1383, 28
  br i1 %425, label %polly.loop_exit873.1.2, label %vector.body1380, !llvm.loop !124

polly.loop_exit873.1.2:                           ; preds = %vector.body1380
  %polly.indvar_next869.1.2 = add nuw nsw i64 %polly.indvar868.1.2, 1
  %exitcond1099.1.2.not = icmp eq i64 %polly.indvar_next869.1.2, 16
  br i1 %exitcond1099.1.2.not, label %polly.loop_header891, label %polly.loop_header865.1.2

polly.loop_header838.1:                           ; preds = %polly.loop_exit846, %polly.loop_exit846.1
  %polly.indvar841.1 = phi i64 [ %polly.indvar_next842.1, %polly.loop_exit846.1 ], [ 0, %polly.loop_exit846 ]
  %426 = mul nuw nsw i64 %polly.indvar841.1, 640
  %427 = trunc i64 %polly.indvar841.1 to i32
  %broadcast.splatinsert1222 = insertelement <4 x i32> poison, i32 %427, i32 0
  %broadcast.splat1223 = shufflevector <4 x i32> %broadcast.splatinsert1222, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1214

vector.body1214:                                  ; preds = %vector.body1214, %polly.loop_header838.1
  %index1216 = phi i64 [ 0, %polly.loop_header838.1 ], [ %index.next1217, %vector.body1214 ]
  %vec.ind1220 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header838.1 ], [ %vec.ind.next1221, %vector.body1214 ]
  %428 = add nuw nsw <4 x i64> %vec.ind1220, <i64 32, i64 32, i64 32, i64 32>
  %429 = trunc <4 x i64> %428 to <4 x i32>
  %430 = mul <4 x i32> %broadcast.splat1223, %429
  %431 = add <4 x i32> %430, <i32 3, i32 3, i32 3, i32 3>
  %432 = urem <4 x i32> %431, <i32 80, i32 80, i32 80, i32 80>
  %433 = sitofp <4 x i32> %432 to <4 x double>
  %434 = fmul fast <4 x double> %433, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %435 = extractelement <4 x i64> %428, i32 0
  %436 = shl i64 %435, 3
  %437 = add nuw nsw i64 %436, %426
  %438 = getelementptr i8, i8* %call, i64 %437
  %439 = bitcast i8* %438 to <4 x double>*
  store <4 x double> %434, <4 x double>* %439, align 8, !alias.scope !105, !noalias !107
  %index.next1217 = add i64 %index1216, 4
  %vec.ind.next1221 = add <4 x i64> %vec.ind1220, <i64 4, i64 4, i64 4, i64 4>
  %440 = icmp eq i64 %index.next1217, 32
  br i1 %440, label %polly.loop_exit846.1, label %vector.body1214, !llvm.loop !125

polly.loop_exit846.1:                             ; preds = %vector.body1214
  %polly.indvar_next842.1 = add nuw nsw i64 %polly.indvar841.1, 1
  %exitcond1108.1.not = icmp eq i64 %polly.indvar_next842.1, 32
  br i1 %exitcond1108.1.not, label %polly.loop_header838.2, label %polly.loop_header838.1

polly.loop_header838.2:                           ; preds = %polly.loop_exit846.1, %polly.loop_exit846.2
  %polly.indvar841.2 = phi i64 [ %polly.indvar_next842.2, %polly.loop_exit846.2 ], [ 0, %polly.loop_exit846.1 ]
  %441 = mul nuw nsw i64 %polly.indvar841.2, 640
  %442 = trunc i64 %polly.indvar841.2 to i32
  %broadcast.splatinsert1234 = insertelement <4 x i32> poison, i32 %442, i32 0
  %broadcast.splat1235 = shufflevector <4 x i32> %broadcast.splatinsert1234, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1226

vector.body1226:                                  ; preds = %vector.body1226, %polly.loop_header838.2
  %index1228 = phi i64 [ 0, %polly.loop_header838.2 ], [ %index.next1229, %vector.body1226 ]
  %vec.ind1232 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header838.2 ], [ %vec.ind.next1233, %vector.body1226 ]
  %443 = add nuw nsw <4 x i64> %vec.ind1232, <i64 64, i64 64, i64 64, i64 64>
  %444 = trunc <4 x i64> %443 to <4 x i32>
  %445 = mul <4 x i32> %broadcast.splat1235, %444
  %446 = add <4 x i32> %445, <i32 3, i32 3, i32 3, i32 3>
  %447 = urem <4 x i32> %446, <i32 80, i32 80, i32 80, i32 80>
  %448 = sitofp <4 x i32> %447 to <4 x double>
  %449 = fmul fast <4 x double> %448, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %450 = extractelement <4 x i64> %443, i32 0
  %451 = shl i64 %450, 3
  %452 = add nuw nsw i64 %451, %441
  %453 = getelementptr i8, i8* %call, i64 %452
  %454 = bitcast i8* %453 to <4 x double>*
  store <4 x double> %449, <4 x double>* %454, align 8, !alias.scope !105, !noalias !107
  %index.next1229 = add i64 %index1228, 4
  %vec.ind.next1233 = add <4 x i64> %vec.ind1232, <i64 4, i64 4, i64 4, i64 4>
  %455 = icmp eq i64 %index.next1229, 16
  br i1 %455, label %polly.loop_exit846.2, label %vector.body1226, !llvm.loop !126

polly.loop_exit846.2:                             ; preds = %vector.body1226
  %polly.indvar_next842.2 = add nuw nsw i64 %polly.indvar841.2, 1
  %exitcond1108.2.not = icmp eq i64 %polly.indvar_next842.2, 32
  br i1 %exitcond1108.2.not, label %polly.loop_header838.11144, label %polly.loop_header838.2

polly.loop_header838.11144:                       ; preds = %polly.loop_exit846.2, %polly.loop_exit846.11155
  %polly.indvar841.11143 = phi i64 [ %polly.indvar_next842.11153, %polly.loop_exit846.11155 ], [ 0, %polly.loop_exit846.2 ]
  %456 = add nuw nsw i64 %polly.indvar841.11143, 32
  %457 = mul nuw nsw i64 %456, 640
  %458 = trunc i64 %456 to i32
  %broadcast.splatinsert1248 = insertelement <4 x i32> poison, i32 %458, i32 0
  %broadcast.splat1249 = shufflevector <4 x i32> %broadcast.splatinsert1248, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1238

vector.body1238:                                  ; preds = %vector.body1238, %polly.loop_header838.11144
  %index1240 = phi i64 [ 0, %polly.loop_header838.11144 ], [ %index.next1241, %vector.body1238 ]
  %vec.ind1246 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header838.11144 ], [ %vec.ind.next1247, %vector.body1238 ]
  %459 = mul <4 x i32> %vec.ind1246, %broadcast.splat1249
  %460 = add <4 x i32> %459, <i32 3, i32 3, i32 3, i32 3>
  %461 = urem <4 x i32> %460, <i32 80, i32 80, i32 80, i32 80>
  %462 = sitofp <4 x i32> %461 to <4 x double>
  %463 = fmul fast <4 x double> %462, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %464 = shl i64 %index1240, 3
  %465 = add nuw nsw i64 %464, %457
  %466 = getelementptr i8, i8* %call, i64 %465
  %467 = bitcast i8* %466 to <4 x double>*
  store <4 x double> %463, <4 x double>* %467, align 8, !alias.scope !105, !noalias !107
  %index.next1241 = add i64 %index1240, 4
  %vec.ind.next1247 = add <4 x i32> %vec.ind1246, <i32 4, i32 4, i32 4, i32 4>
  %468 = icmp eq i64 %index.next1241, 32
  br i1 %468, label %polly.loop_exit846.11155, label %vector.body1238, !llvm.loop !127

polly.loop_exit846.11155:                         ; preds = %vector.body1238
  %polly.indvar_next842.11153 = add nuw nsw i64 %polly.indvar841.11143, 1
  %exitcond1108.11154.not = icmp eq i64 %polly.indvar_next842.11153, 32
  br i1 %exitcond1108.11154.not, label %polly.loop_header838.1.1, label %polly.loop_header838.11144

polly.loop_header838.1.1:                         ; preds = %polly.loop_exit846.11155, %polly.loop_exit846.1.1
  %polly.indvar841.1.1 = phi i64 [ %polly.indvar_next842.1.1, %polly.loop_exit846.1.1 ], [ 0, %polly.loop_exit846.11155 ]
  %469 = add nuw nsw i64 %polly.indvar841.1.1, 32
  %470 = mul nuw nsw i64 %469, 640
  %471 = trunc i64 %469 to i32
  %broadcast.splatinsert1260 = insertelement <4 x i32> poison, i32 %471, i32 0
  %broadcast.splat1261 = shufflevector <4 x i32> %broadcast.splatinsert1260, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1252

vector.body1252:                                  ; preds = %vector.body1252, %polly.loop_header838.1.1
  %index1254 = phi i64 [ 0, %polly.loop_header838.1.1 ], [ %index.next1255, %vector.body1252 ]
  %vec.ind1258 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header838.1.1 ], [ %vec.ind.next1259, %vector.body1252 ]
  %472 = add nuw nsw <4 x i64> %vec.ind1258, <i64 32, i64 32, i64 32, i64 32>
  %473 = trunc <4 x i64> %472 to <4 x i32>
  %474 = mul <4 x i32> %broadcast.splat1261, %473
  %475 = add <4 x i32> %474, <i32 3, i32 3, i32 3, i32 3>
  %476 = urem <4 x i32> %475, <i32 80, i32 80, i32 80, i32 80>
  %477 = sitofp <4 x i32> %476 to <4 x double>
  %478 = fmul fast <4 x double> %477, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %479 = extractelement <4 x i64> %472, i32 0
  %480 = shl i64 %479, 3
  %481 = add nuw nsw i64 %480, %470
  %482 = getelementptr i8, i8* %call, i64 %481
  %483 = bitcast i8* %482 to <4 x double>*
  store <4 x double> %478, <4 x double>* %483, align 8, !alias.scope !105, !noalias !107
  %index.next1255 = add i64 %index1254, 4
  %vec.ind.next1259 = add <4 x i64> %vec.ind1258, <i64 4, i64 4, i64 4, i64 4>
  %484 = icmp eq i64 %index.next1255, 32
  br i1 %484, label %polly.loop_exit846.1.1, label %vector.body1252, !llvm.loop !128

polly.loop_exit846.1.1:                           ; preds = %vector.body1252
  %polly.indvar_next842.1.1 = add nuw nsw i64 %polly.indvar841.1.1, 1
  %exitcond1108.1.1.not = icmp eq i64 %polly.indvar_next842.1.1, 32
  br i1 %exitcond1108.1.1.not, label %polly.loop_header838.2.1, label %polly.loop_header838.1.1

polly.loop_header838.2.1:                         ; preds = %polly.loop_exit846.1.1, %polly.loop_exit846.2.1
  %polly.indvar841.2.1 = phi i64 [ %polly.indvar_next842.2.1, %polly.loop_exit846.2.1 ], [ 0, %polly.loop_exit846.1.1 ]
  %485 = add nuw nsw i64 %polly.indvar841.2.1, 32
  %486 = mul nuw nsw i64 %485, 640
  %487 = trunc i64 %485 to i32
  %broadcast.splatinsert1272 = insertelement <4 x i32> poison, i32 %487, i32 0
  %broadcast.splat1273 = shufflevector <4 x i32> %broadcast.splatinsert1272, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1264

vector.body1264:                                  ; preds = %vector.body1264, %polly.loop_header838.2.1
  %index1266 = phi i64 [ 0, %polly.loop_header838.2.1 ], [ %index.next1267, %vector.body1264 ]
  %vec.ind1270 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header838.2.1 ], [ %vec.ind.next1271, %vector.body1264 ]
  %488 = add nuw nsw <4 x i64> %vec.ind1270, <i64 64, i64 64, i64 64, i64 64>
  %489 = trunc <4 x i64> %488 to <4 x i32>
  %490 = mul <4 x i32> %broadcast.splat1273, %489
  %491 = add <4 x i32> %490, <i32 3, i32 3, i32 3, i32 3>
  %492 = urem <4 x i32> %491, <i32 80, i32 80, i32 80, i32 80>
  %493 = sitofp <4 x i32> %492 to <4 x double>
  %494 = fmul fast <4 x double> %493, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %495 = extractelement <4 x i64> %488, i32 0
  %496 = shl i64 %495, 3
  %497 = add nuw nsw i64 %496, %486
  %498 = getelementptr i8, i8* %call, i64 %497
  %499 = bitcast i8* %498 to <4 x double>*
  store <4 x double> %494, <4 x double>* %499, align 8, !alias.scope !105, !noalias !107
  %index.next1267 = add i64 %index1266, 4
  %vec.ind.next1271 = add <4 x i64> %vec.ind1270, <i64 4, i64 4, i64 4, i64 4>
  %500 = icmp eq i64 %index.next1267, 16
  br i1 %500, label %polly.loop_exit846.2.1, label %vector.body1264, !llvm.loop !129

polly.loop_exit846.2.1:                           ; preds = %vector.body1264
  %polly.indvar_next842.2.1 = add nuw nsw i64 %polly.indvar841.2.1, 1
  %exitcond1108.2.1.not = icmp eq i64 %polly.indvar_next842.2.1, 32
  br i1 %exitcond1108.2.1.not, label %polly.loop_header838.21158, label %polly.loop_header838.2.1

polly.loop_header838.21158:                       ; preds = %polly.loop_exit846.2.1, %polly.loop_exit846.21169
  %polly.indvar841.21157 = phi i64 [ %polly.indvar_next842.21167, %polly.loop_exit846.21169 ], [ 0, %polly.loop_exit846.2.1 ]
  %501 = add nuw nsw i64 %polly.indvar841.21157, 64
  %502 = mul nuw nsw i64 %501, 640
  %503 = trunc i64 %501 to i32
  %broadcast.splatinsert1286 = insertelement <4 x i32> poison, i32 %503, i32 0
  %broadcast.splat1287 = shufflevector <4 x i32> %broadcast.splatinsert1286, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1276

vector.body1276:                                  ; preds = %vector.body1276, %polly.loop_header838.21158
  %index1278 = phi i64 [ 0, %polly.loop_header838.21158 ], [ %index.next1279, %vector.body1276 ]
  %vec.ind1284 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header838.21158 ], [ %vec.ind.next1285, %vector.body1276 ]
  %504 = mul <4 x i32> %vec.ind1284, %broadcast.splat1287
  %505 = add <4 x i32> %504, <i32 3, i32 3, i32 3, i32 3>
  %506 = urem <4 x i32> %505, <i32 80, i32 80, i32 80, i32 80>
  %507 = sitofp <4 x i32> %506 to <4 x double>
  %508 = fmul fast <4 x double> %507, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %509 = shl i64 %index1278, 3
  %510 = add nuw nsw i64 %509, %502
  %511 = getelementptr i8, i8* %call, i64 %510
  %512 = bitcast i8* %511 to <4 x double>*
  store <4 x double> %508, <4 x double>* %512, align 8, !alias.scope !105, !noalias !107
  %index.next1279 = add i64 %index1278, 4
  %vec.ind.next1285 = add <4 x i32> %vec.ind1284, <i32 4, i32 4, i32 4, i32 4>
  %513 = icmp eq i64 %index.next1279, 32
  br i1 %513, label %polly.loop_exit846.21169, label %vector.body1276, !llvm.loop !130

polly.loop_exit846.21169:                         ; preds = %vector.body1276
  %polly.indvar_next842.21167 = add nuw nsw i64 %polly.indvar841.21157, 1
  %exitcond1108.21168.not = icmp eq i64 %polly.indvar_next842.21167, 16
  br i1 %exitcond1108.21168.not, label %polly.loop_header838.1.2, label %polly.loop_header838.21158

polly.loop_header838.1.2:                         ; preds = %polly.loop_exit846.21169, %polly.loop_exit846.1.2
  %polly.indvar841.1.2 = phi i64 [ %polly.indvar_next842.1.2, %polly.loop_exit846.1.2 ], [ 0, %polly.loop_exit846.21169 ]
  %514 = add nuw nsw i64 %polly.indvar841.1.2, 64
  %515 = mul nuw nsw i64 %514, 640
  %516 = trunc i64 %514 to i32
  %broadcast.splatinsert1298 = insertelement <4 x i32> poison, i32 %516, i32 0
  %broadcast.splat1299 = shufflevector <4 x i32> %broadcast.splatinsert1298, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1290

vector.body1290:                                  ; preds = %vector.body1290, %polly.loop_header838.1.2
  %index1292 = phi i64 [ 0, %polly.loop_header838.1.2 ], [ %index.next1293, %vector.body1290 ]
  %vec.ind1296 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header838.1.2 ], [ %vec.ind.next1297, %vector.body1290 ]
  %517 = add nuw nsw <4 x i64> %vec.ind1296, <i64 32, i64 32, i64 32, i64 32>
  %518 = trunc <4 x i64> %517 to <4 x i32>
  %519 = mul <4 x i32> %broadcast.splat1299, %518
  %520 = add <4 x i32> %519, <i32 3, i32 3, i32 3, i32 3>
  %521 = urem <4 x i32> %520, <i32 80, i32 80, i32 80, i32 80>
  %522 = sitofp <4 x i32> %521 to <4 x double>
  %523 = fmul fast <4 x double> %522, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %524 = extractelement <4 x i64> %517, i32 0
  %525 = shl i64 %524, 3
  %526 = add nuw nsw i64 %525, %515
  %527 = getelementptr i8, i8* %call, i64 %526
  %528 = bitcast i8* %527 to <4 x double>*
  store <4 x double> %523, <4 x double>* %528, align 8, !alias.scope !105, !noalias !107
  %index.next1293 = add i64 %index1292, 4
  %vec.ind.next1297 = add <4 x i64> %vec.ind1296, <i64 4, i64 4, i64 4, i64 4>
  %529 = icmp eq i64 %index.next1293, 32
  br i1 %529, label %polly.loop_exit846.1.2, label %vector.body1290, !llvm.loop !131

polly.loop_exit846.1.2:                           ; preds = %vector.body1290
  %polly.indvar_next842.1.2 = add nuw nsw i64 %polly.indvar841.1.2, 1
  %exitcond1108.1.2.not = icmp eq i64 %polly.indvar_next842.1.2, 16
  br i1 %exitcond1108.1.2.not, label %polly.loop_header838.2.2, label %polly.loop_header838.1.2

polly.loop_header838.2.2:                         ; preds = %polly.loop_exit846.1.2, %polly.loop_exit846.2.2
  %polly.indvar841.2.2 = phi i64 [ %polly.indvar_next842.2.2, %polly.loop_exit846.2.2 ], [ 0, %polly.loop_exit846.1.2 ]
  %530 = add nuw nsw i64 %polly.indvar841.2.2, 64
  %531 = mul nuw nsw i64 %530, 640
  %532 = trunc i64 %530 to i32
  %broadcast.splatinsert1310 = insertelement <4 x i32> poison, i32 %532, i32 0
  %broadcast.splat1311 = shufflevector <4 x i32> %broadcast.splatinsert1310, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1302

vector.body1302:                                  ; preds = %vector.body1302, %polly.loop_header838.2.2
  %index1304 = phi i64 [ 0, %polly.loop_header838.2.2 ], [ %index.next1305, %vector.body1302 ]
  %vec.ind1308 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header838.2.2 ], [ %vec.ind.next1309, %vector.body1302 ]
  %533 = add nuw nsw <4 x i64> %vec.ind1308, <i64 64, i64 64, i64 64, i64 64>
  %534 = trunc <4 x i64> %533 to <4 x i32>
  %535 = mul <4 x i32> %broadcast.splat1311, %534
  %536 = add <4 x i32> %535, <i32 3, i32 3, i32 3, i32 3>
  %537 = urem <4 x i32> %536, <i32 80, i32 80, i32 80, i32 80>
  %538 = sitofp <4 x i32> %537 to <4 x double>
  %539 = fmul fast <4 x double> %538, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %540 = extractelement <4 x i64> %533, i32 0
  %541 = shl i64 %540, 3
  %542 = add nuw nsw i64 %541, %531
  %543 = getelementptr i8, i8* %call, i64 %542
  %544 = bitcast i8* %543 to <4 x double>*
  store <4 x double> %539, <4 x double>* %544, align 8, !alias.scope !105, !noalias !107
  %index.next1305 = add i64 %index1304, 4
  %vec.ind.next1309 = add <4 x i64> %vec.ind1308, <i64 4, i64 4, i64 4, i64 4>
  %545 = icmp eq i64 %index.next1305, 16
  br i1 %545, label %polly.loop_exit846.2.2, label %vector.body1302, !llvm.loop !132

polly.loop_exit846.2.2:                           ; preds = %vector.body1302
  %polly.indvar_next842.2.2 = add nuw nsw i64 %polly.indvar841.2.2, 1
  %exitcond1108.2.2.not = icmp eq i64 %polly.indvar_next842.2.2, 16
  br i1 %exitcond1108.2.2.not, label %polly.loop_header865, label %polly.loop_header838.2.2
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
!26 = !{!"llvm.loop.tile.size", i32 4}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 2048}
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
!49 = !{!"llvm.loop.tile.size", i32 8}
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
