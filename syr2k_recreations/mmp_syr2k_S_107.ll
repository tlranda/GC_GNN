; ModuleID = 'syr2k_recreations//mmp_syr2k_S_107.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_107.c"
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
  %scevgep1187 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1186 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1185 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1184 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1184, %scevgep1187
  %bound1 = icmp ult i8* %scevgep1186, %scevgep1185
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
  br i1 %exitcond18.not.i, label %vector.ph1191, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1191:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1198 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1199 = shufflevector <4 x i64> %broadcast.splatinsert1198, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1190

vector.body1190:                                  ; preds = %vector.body1190, %vector.ph1191
  %index1192 = phi i64 [ 0, %vector.ph1191 ], [ %index.next1193, %vector.body1190 ]
  %vec.ind1196 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1191 ], [ %vec.ind.next1197, %vector.body1190 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1196, %broadcast.splat1199
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call852, i64 %indvars.iv7.i, i64 %index1192
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1193 = add i64 %index1192, 4
  %vec.ind.next1197 = add <4 x i64> %vec.ind1196, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1193, 80
  br i1 %40, label %for.inc41.i, label %vector.body1190, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1190
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1191, !llvm.loop !17

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
  br i1 %min.iters.check, label %for.body3.i46.preheader1612, label %vector.ph1473

vector.ph1473:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1472

vector.body1472:                                  ; preds = %vector.body1472, %vector.ph1473
  %index1474 = phi i64 [ 0, %vector.ph1473 ], [ %index.next1475, %vector.body1472 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call852, i64 %indvars.iv21.i, i64 %index1474
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1475 = add i64 %index1474, 4
  %46 = icmp eq i64 %index.next1475, %n.vec
  br i1 %46, label %middle.block1470, label %vector.body1472, !llvm.loop !18

middle.block1470:                                 ; preds = %vector.body1472
  %cmp.n1477 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1477, label %for.inc6.i, label %for.body3.i46.preheader1612

for.body3.i46.preheader1612:                      ; preds = %for.body3.i46.preheader, %middle.block1470
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1470 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1612, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1612 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call852, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1470, %for.cond1.preheader.i45
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
  %min.iters.check1514 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1514, label %for.body3.i60.preheader1610, label %vector.ph1515

vector.ph1515:                                    ; preds = %for.body3.i60.preheader
  %n.vec1517 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1513

vector.body1513:                                  ; preds = %vector.body1513, %vector.ph1515
  %index1518 = phi i64 [ 0, %vector.ph1515 ], [ %index.next1519, %vector.body1513 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call852, i64 %indvars.iv21.i52, i64 %index1518
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1522 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1522, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1519 = add i64 %index1518, 4
  %57 = icmp eq i64 %index.next1519, %n.vec1517
  br i1 %57, label %middle.block1511, label %vector.body1513, !llvm.loop !57

middle.block1511:                                 ; preds = %vector.body1513
  %cmp.n1521 = icmp eq i64 %indvars.iv21.i52, %n.vec1517
  br i1 %cmp.n1521, label %for.inc6.i63, label %for.body3.i60.preheader1610

for.body3.i60.preheader1610:                      ; preds = %for.body3.i60.preheader, %middle.block1511
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1517, %middle.block1511 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1610, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1610 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call852, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1511, %for.cond1.preheader.i54
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
  %min.iters.check1562 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1562, label %for.body3.i99.preheader1608, label %vector.ph1563

vector.ph1563:                                    ; preds = %for.body3.i99.preheader
  %n.vec1565 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1561

vector.body1561:                                  ; preds = %vector.body1561, %vector.ph1563
  %index1566 = phi i64 [ 0, %vector.ph1563 ], [ %index.next1567, %vector.body1561 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call852, i64 %indvars.iv21.i91, i64 %index1566
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1570 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1570, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1567 = add i64 %index1566, 4
  %68 = icmp eq i64 %index.next1567, %n.vec1565
  br i1 %68, label %middle.block1559, label %vector.body1561, !llvm.loop !59

middle.block1559:                                 ; preds = %vector.body1561
  %cmp.n1569 = icmp eq i64 %indvars.iv21.i91, %n.vec1565
  br i1 %cmp.n1569, label %for.inc6.i102, label %for.body3.i99.preheader1608

for.body3.i99.preheader1608:                      ; preds = %for.body3.i99.preheader, %middle.block1559
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1565, %middle.block1559 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1608, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1608 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call852, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1559, %for.cond1.preheader.i93
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
  %indvar1574 = phi i64 [ %indvar.next1575, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1574, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1576 = icmp ult i64 %88, 4
  br i1 %min.iters.check1576, label %polly.loop_header192.preheader, label %vector.ph1577

vector.ph1577:                                    ; preds = %polly.loop_header
  %n.vec1579 = and i64 %88, -4
  br label %vector.body1573

vector.body1573:                                  ; preds = %vector.body1573, %vector.ph1577
  %index1580 = phi i64 [ 0, %vector.ph1577 ], [ %index.next1581, %vector.body1573 ]
  %90 = shl nuw nsw i64 %index1580, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1584 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1584, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1581 = add i64 %index1580, 4
  %95 = icmp eq i64 %index.next1581, %n.vec1579
  br i1 %95, label %middle.block1571, label %vector.body1573, !llvm.loop !72

middle.block1571:                                 ; preds = %vector.body1573
  %cmp.n1583 = icmp eq i64 %88, %n.vec1579
  br i1 %cmp.n1583, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1571
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1579, %middle.block1571 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1571
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1575 = add i64 %indvar1574, 1
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
  %indvars.iv1029 = phi i64 [ %indvars.iv.next1030, %polly.loop_exit224 ], [ 7, %polly.loop_exit208 ]
  %indvars.iv1018 = phi i64 [ %indvars.iv.next1019, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = mul nsw i64 %polly.indvar219, -32
  %98 = shl nuw nsw i64 %polly.indvar219, 5
  %umin = call i64 @llvm.umin.i64(i64 %indvars.iv1029, i64 19)
  %99 = mul nsw i64 %polly.indvar219, -32
  %100 = icmp slt i64 %99, -48
  %101 = select i1 %100, i64 %99, i64 -48
  %102 = add nsw i64 %101, 79
  %103 = shl nsw i64 %polly.indvar219, 5
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %indvars.iv.next1019 = add nuw nsw i64 %indvars.iv1018, 32
  %indvars.iv.next1030 = add nuw nsw i64 %indvars.iv1029, 8
  %exitcond1032.not = icmp eq i64 %polly.indvar_next220, 3
  br i1 %exitcond1032.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %indvars.iv1020 = phi i64 [ %indvars.iv.next1021, %polly.loop_exit230 ], [ %indvars.iv1018, %polly.loop_header216 ]
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %polly.loop_exit230 ], [ %indvars.iv, %polly.loop_header216 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit230 ], [ 0, %polly.loop_header216 ]
  %104 = shl nuw nsw i64 %polly.indvar225, 2
  %105 = add i64 %97, %104
  %smax1588 = call i64 @llvm.smax.i64(i64 %105, i64 0)
  %106 = mul nsw i64 %polly.indvar225, -4
  %107 = add i64 %98, %106
  %108 = add i64 %smax1588, %107
  %109 = shl nsw i64 %polly.indvar225, 2
  %110 = add nsw i64 %109, %99
  %111 = icmp sgt i64 %110, 0
  %112 = select i1 %111, i64 %110, i64 0
  %polly.loop_guard.not = icmp sgt i64 %112, %102
  br i1 %polly.loop_guard.not, label %polly.loop_exit230, label %polly.loop_header228.preheader

polly.loop_header228.preheader:                   ; preds = %polly.loop_header222
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1016, i64 0)
  %113 = add i64 %smax, %indvars.iv1020
  %114 = sub nsw i64 %103, %109
  %115 = add nuw nsw i64 %109, 4
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit261, %polly.loop_header222
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next1017 = add nsw i64 %indvars.iv1016, 4
  %indvars.iv.next1021 = add nsw i64 %indvars.iv1020, -4
  %exitcond1031.not = icmp eq i64 %polly.indvar225, %umin
  br i1 %exitcond1031.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header228.preheader, %polly.loop_exit261
  %indvar1589 = phi i64 [ 0, %polly.loop_header228.preheader ], [ %indvar.next1590, %polly.loop_exit261 ]
  %indvars.iv1022 = phi i64 [ %113, %polly.loop_header228.preheader ], [ %indvars.iv.next1023, %polly.loop_exit261 ]
  %polly.indvar231 = phi i64 [ %112, %polly.loop_header228.preheader ], [ %polly.indvar_next232, %polly.loop_exit261 ]
  %116 = add i64 %108, %indvar1589
  %smin1591 = call i64 @llvm.smin.i64(i64 %116, i64 3)
  %117 = add nsw i64 %smin1591, 1
  %smin1026 = call i64 @llvm.smin.i64(i64 %indvars.iv1022, i64 3)
  %118 = add nsw i64 %polly.indvar231, %114
  %polly.loop_guard2441173 = icmp sgt i64 %118, -1
  %119 = add nuw nsw i64 %polly.indvar231, %103
  %.not = icmp ult i64 %119, %115
  %polly.access.mul.call1253 = mul nsw i64 %119, 60
  br i1 %polly.loop_guard2441173, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.merge.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.merge.us ], [ 0, %polly.loop_header228 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 80
  br label %polly.loop_header241.us

polly.loop_header241.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header241.us
  %polly.indvar245.us = phi i64 [ %polly.indvar_next246.us, %polly.loop_header241.us ], [ 0, %polly.loop_header234.us ]
  %120 = add nuw nsw i64 %polly.indvar245.us, %109
  %polly.access.mul.call1249.us = mul nuw nsw i64 %120, 60
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
  %polly.access.add.Packed_MemRef_call1257.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %118
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
  %polly.loop_cond233.not.not = icmp ult i64 %polly.indvar231, %102
  %indvars.iv.next1023 = add i64 %indvars.iv1022, 1
  %indvar.next1590 = add i64 %indvar1589, 1
  br i1 %polly.loop_cond233.not.not, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_header234
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_header234 ], [ 0, %polly.loop_header228.split ]
  %polly.access.add.call1254 = add nuw nsw i64 %polly.indvar237, %polly.access.mul.call1253
  %polly.access.call1255 = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1254
  %polly.access.call1255.load = load double, double* %polly.access.call1255, align 8, !alias.scope !68, !noalias !76
  %polly.access.mul.Packed_MemRef_call1256 = mul nuw nsw i64 %polly.indvar237, 80
  %polly.access.add.Packed_MemRef_call1257 = add nsw i64 %polly.access.mul.Packed_MemRef_call1256, %118
  %polly.access.Packed_MemRef_call1258 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257
  store double %polly.access.call1255.load, double* %polly.access.Packed_MemRef_call1258, align 8
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next238, 60
  br i1 %exitcond.not, label %polly.loop_header259.preheader, label %polly.loop_header234

polly.loop_header259.preheader:                   ; preds = %polly.loop_header234, %polly.merge.us
  %121 = mul i64 %119, 640
  br i1 %polly.loop_guard2441173, label %polly.loop_header259.us, label %polly.loop_exit261

polly.loop_header259.us:                          ; preds = %polly.loop_header259.preheader, %polly.loop_exit268.loopexit.us
  %polly.indvar262.us = phi i64 [ %polly.indvar_next263.us, %polly.loop_exit268.loopexit.us ], [ 0, %polly.loop_header259.preheader ]
  %polly.access.mul.Packed_MemRef_call1273.us = mul nuw nsw i64 %polly.indvar262.us, 80
  %polly.access.add.Packed_MemRef_call2278.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1273.us, %119
  %polly.access.Packed_MemRef_call2279.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2278.us
  %_p_scalar_280.us = load double, double* %polly.access.Packed_MemRef_call2279.us, align 8
  %polly.access.add.Packed_MemRef_call1286.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1273.us, %118
  %polly.access.Packed_MemRef_call1287.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call1287.us, align 8
  %min.iters.check1592 = icmp ult i64 %117, 4
  br i1 %min.iters.check1592, label %polly.loop_header266.us.preheader, label %vector.ph1593

vector.ph1593:                                    ; preds = %polly.loop_header259.us
  %n.vec1595 = and i64 %117, -4
  %broadcast.splatinsert1601 = insertelement <4 x double> poison, double %_p_scalar_280.us, i32 0
  %broadcast.splat1602 = shufflevector <4 x double> %broadcast.splatinsert1601, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1604 = insertelement <4 x double> poison, double %_p_scalar_288.us, i32 0
  %broadcast.splat1605 = shufflevector <4 x double> %broadcast.splatinsert1604, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1587

vector.body1587:                                  ; preds = %vector.body1587, %vector.ph1593
  %index1596 = phi i64 [ 0, %vector.ph1593 ], [ %index.next1597, %vector.body1587 ]
  %122 = add nuw nsw i64 %index1596, %109
  %123 = add nuw nsw i64 %index1596, %polly.access.mul.Packed_MemRef_call1273.us
  %124 = getelementptr double, double* %Packed_MemRef_call1, i64 %123
  %125 = bitcast double* %124 to <4 x double>*
  %wide.load1600 = load <4 x double>, <4 x double>* %125, align 8
  %126 = fmul fast <4 x double> %broadcast.splat1602, %wide.load1600
  %127 = add nuw nsw i64 %122, %polly.access.mul.Packed_MemRef_call1273.us
  %128 = getelementptr double, double* %Packed_MemRef_call2, i64 %127
  %129 = bitcast double* %128 to <4 x double>*
  %wide.load1603 = load <4 x double>, <4 x double>* %129, align 8
  %130 = fmul fast <4 x double> %broadcast.splat1605, %wide.load1603
  %131 = shl i64 %122, 3
  %132 = add i64 %131, %121
  %133 = getelementptr i8, i8* %call, i64 %132
  %134 = bitcast i8* %133 to <4 x double>*
  %wide.load1606 = load <4 x double>, <4 x double>* %134, align 8, !alias.scope !65, !noalias !67
  %135 = fadd fast <4 x double> %130, %126
  %136 = fmul fast <4 x double> %135, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %137 = fadd fast <4 x double> %136, %wide.load1606
  %138 = bitcast i8* %133 to <4 x double>*
  store <4 x double> %137, <4 x double>* %138, align 8, !alias.scope !65, !noalias !67
  %index.next1597 = add i64 %index1596, 4
  %139 = icmp eq i64 %index.next1597, %n.vec1595
  br i1 %139, label %middle.block1585, label %vector.body1587, !llvm.loop !77

middle.block1585:                                 ; preds = %vector.body1587
  %cmp.n1599 = icmp eq i64 %117, %n.vec1595
  br i1 %cmp.n1599, label %polly.loop_exit268.loopexit.us, label %polly.loop_header266.us.preheader

polly.loop_header266.us.preheader:                ; preds = %polly.loop_header259.us, %middle.block1585
  %polly.indvar270.us.ph = phi i64 [ 0, %polly.loop_header259.us ], [ %n.vec1595, %middle.block1585 ]
  br label %polly.loop_header266.us

polly.loop_header266.us:                          ; preds = %polly.loop_header266.us.preheader, %polly.loop_header266.us
  %polly.indvar270.us = phi i64 [ %polly.indvar_next271.us, %polly.loop_header266.us ], [ %polly.indvar270.us.ph, %polly.loop_header266.us.preheader ]
  %140 = add nuw nsw i64 %polly.indvar270.us, %109
  %polly.access.add.Packed_MemRef_call1274.us = add nuw nsw i64 %polly.indvar270.us, %polly.access.mul.Packed_MemRef_call1273.us
  %polly.access.Packed_MemRef_call1275.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1274.us
  %_p_scalar_276.us = load double, double* %polly.access.Packed_MemRef_call1275.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_280.us, %_p_scalar_276.us
  %polly.access.add.Packed_MemRef_call2282.us = add nuw nsw i64 %140, %polly.access.mul.Packed_MemRef_call1273.us
  %polly.access.Packed_MemRef_call2283.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us
  %_p_scalar_284.us = load double, double* %polly.access.Packed_MemRef_call2283.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_288.us, %_p_scalar_284.us
  %141 = shl i64 %140, 3
  %142 = add i64 %141, %121
  %scevgep289.us = getelementptr i8, i8* %call, i64 %142
  %scevgep289290.us = bitcast i8* %scevgep289.us to double*
  %_p_scalar_291.us = load double, double* %scevgep289290.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_291.us
  store double %p_add42.i118.us, double* %scevgep289290.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next271.us = add nuw nsw i64 %polly.indvar270.us, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar270.us, %smin1026
  br i1 %exitcond1027.not, label %polly.loop_exit268.loopexit.us, label %polly.loop_header266.us, !llvm.loop !78

polly.loop_exit268.loopexit.us:                   ; preds = %polly.loop_header266.us, %middle.block1585
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
  %indvar1526 = phi i64 [ %indvar.next1527, %polly.loop_exit390 ], [ 0, %polly.start294 ]
  %polly.indvar385 = phi i64 [ %polly.indvar_next386, %polly.loop_exit390 ], [ 1, %polly.start294 ]
  %143 = add i64 %indvar1526, 1
  %144 = mul nuw nsw i64 %polly.indvar385, 640
  %scevgep394 = getelementptr i8, i8* %call, i64 %144
  %min.iters.check1528 = icmp ult i64 %143, 4
  br i1 %min.iters.check1528, label %polly.loop_header388.preheader, label %vector.ph1529

vector.ph1529:                                    ; preds = %polly.loop_header382
  %n.vec1531 = and i64 %143, -4
  br label %vector.body1525

vector.body1525:                                  ; preds = %vector.body1525, %vector.ph1529
  %index1532 = phi i64 [ 0, %vector.ph1529 ], [ %index.next1533, %vector.body1525 ]
  %145 = shl nuw nsw i64 %index1532, 3
  %146 = getelementptr i8, i8* %scevgep394, i64 %145
  %147 = bitcast i8* %146 to <4 x double>*
  %wide.load1536 = load <4 x double>, <4 x double>* %147, align 8, !alias.scope !79, !noalias !81
  %148 = fmul fast <4 x double> %wide.load1536, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %149 = bitcast i8* %146 to <4 x double>*
  store <4 x double> %148, <4 x double>* %149, align 8, !alias.scope !79, !noalias !81
  %index.next1533 = add i64 %index1532, 4
  %150 = icmp eq i64 %index.next1533, %n.vec1531
  br i1 %150, label %middle.block1523, label %vector.body1525, !llvm.loop !86

middle.block1523:                                 ; preds = %vector.body1525
  %cmp.n1535 = icmp eq i64 %143, %n.vec1531
  br i1 %cmp.n1535, label %polly.loop_exit390, label %polly.loop_header388.preheader

polly.loop_header388.preheader:                   ; preds = %polly.loop_header382, %middle.block1523
  %polly.indvar391.ph = phi i64 [ 0, %polly.loop_header382 ], [ %n.vec1531, %middle.block1523 ]
  br label %polly.loop_header388

polly.loop_exit390:                               ; preds = %polly.loop_header388, %middle.block1523
  %polly.indvar_next386 = add nuw nsw i64 %polly.indvar385, 1
  %exitcond1063.not = icmp eq i64 %polly.indvar_next386, 80
  %indvar.next1527 = add i64 %indvar1526, 1
  br i1 %exitcond1063.not, label %polly.loop_header398.preheader, label %polly.loop_header382

polly.loop_header398.preheader:                   ; preds = %polly.loop_exit390
  %Packed_MemRef_call1297 = bitcast i8* %malloccall296 to double*
  %Packed_MemRef_call2299 = bitcast i8* %malloccall298 to double*
  br label %polly.loop_header398

polly.loop_header388:                             ; preds = %polly.loop_header388.preheader, %polly.loop_header388
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_header388 ], [ %polly.indvar391.ph, %polly.loop_header388.preheader ]
  %151 = shl nuw nsw i64 %polly.indvar391, 3
  %scevgep395 = getelementptr i8, i8* %scevgep394, i64 %151
  %scevgep395396 = bitcast i8* %scevgep395 to double*
  %_p_scalar_397 = load double, double* %scevgep395396, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_397, 1.200000e+00
  store double %p_mul.i57, double* %scevgep395396, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar_next392, %polly.indvar385
  br i1 %exitcond1062.not, label %polly.loop_exit390, label %polly.loop_header388, !llvm.loop !87

polly.loop_header398:                             ; preds = %polly.loop_header398.preheader, %polly.loop_exit406
  %polly.indvar401 = phi i64 [ %polly.indvar_next402, %polly.loop_exit406 ], [ 0, %polly.loop_header398.preheader ]
  %polly.access.mul.Packed_MemRef_call2299 = mul nuw nsw i64 %polly.indvar401, 80
  br label %polly.loop_header404

polly.loop_exit406:                               ; preds = %polly.loop_header404
  %polly.indvar_next402 = add nuw nsw i64 %polly.indvar401, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar_next402, 60
  br i1 %exitcond1061.not, label %polly.loop_header414, label %polly.loop_header398

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
  %exitcond1060.not = icmp eq i64 %polly.indvar_next408, 80
  br i1 %exitcond1060.not, label %polly.loop_exit406, label %polly.loop_header404

polly.loop_header414:                             ; preds = %polly.loop_exit406, %polly.loop_exit422
  %indvars.iv1055 = phi i64 [ %indvars.iv.next1056, %polly.loop_exit422 ], [ 7, %polly.loop_exit406 ]
  %indvars.iv1043 = phi i64 [ %indvars.iv.next1044, %polly.loop_exit422 ], [ 0, %polly.loop_exit406 ]
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit422 ], [ 0, %polly.loop_exit406 ]
  %polly.indvar417 = phi i64 [ %polly.indvar_next418, %polly.loop_exit422 ], [ 0, %polly.loop_exit406 ]
  %152 = mul nsw i64 %polly.indvar417, -32
  %153 = shl nuw nsw i64 %polly.indvar417, 5
  %umin1057 = call i64 @llvm.umin.i64(i64 %indvars.iv1055, i64 19)
  %154 = mul nsw i64 %polly.indvar417, -32
  %155 = icmp slt i64 %154, -48
  %156 = select i1 %155, i64 %154, i64 -48
  %157 = add nsw i64 %156, 79
  %158 = shl nsw i64 %polly.indvar417, 5
  br label %polly.loop_header420

polly.loop_exit422:                               ; preds = %polly.loop_exit429
  %polly.indvar_next418 = add nuw nsw i64 %polly.indvar417, 1
  %indvars.iv.next1039 = add nsw i64 %indvars.iv1038, -32
  %indvars.iv.next1044 = add nuw nsw i64 %indvars.iv1043, 32
  %indvars.iv.next1056 = add nuw nsw i64 %indvars.iv1055, 8
  %exitcond1059.not = icmp eq i64 %polly.indvar_next418, 3
  br i1 %exitcond1059.not, label %polly.exiting295, label %polly.loop_header414

polly.loop_header420:                             ; preds = %polly.loop_exit429, %polly.loop_header414
  %indvars.iv1045 = phi i64 [ %indvars.iv.next1046, %polly.loop_exit429 ], [ %indvars.iv1043, %polly.loop_header414 ]
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %polly.loop_exit429 ], [ %indvars.iv1038, %polly.loop_header414 ]
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_exit429 ], [ 0, %polly.loop_header414 ]
  %159 = shl nuw nsw i64 %polly.indvar423, 2
  %160 = add i64 %152, %159
  %smax1540 = call i64 @llvm.smax.i64(i64 %160, i64 0)
  %161 = mul nsw i64 %polly.indvar423, -4
  %162 = add i64 %153, %161
  %163 = add i64 %smax1540, %162
  %164 = shl nsw i64 %polly.indvar423, 2
  %165 = add nsw i64 %164, %154
  %166 = icmp sgt i64 %165, 0
  %167 = select i1 %166, i64 %165, i64 0
  %polly.loop_guard430.not = icmp sgt i64 %167, %157
  br i1 %polly.loop_guard430.not, label %polly.loop_exit429, label %polly.loop_header427.preheader

polly.loop_header427.preheader:                   ; preds = %polly.loop_header420
  %smax1042 = call i64 @llvm.smax.i64(i64 %indvars.iv1040, i64 0)
  %168 = add i64 %smax1042, %indvars.iv1045
  %169 = sub nsw i64 %158, %164
  %170 = add nuw nsw i64 %164, 4
  br label %polly.loop_header427

polly.loop_exit429:                               ; preds = %polly.loop_exit465, %polly.loop_header420
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %indvars.iv.next1041 = add nsw i64 %indvars.iv1040, 4
  %indvars.iv.next1046 = add nsw i64 %indvars.iv1045, -4
  %exitcond1058.not = icmp eq i64 %polly.indvar423, %umin1057
  br i1 %exitcond1058.not, label %polly.loop_exit422, label %polly.loop_header420

polly.loop_header427:                             ; preds = %polly.loop_header427.preheader, %polly.loop_exit465
  %indvar1541 = phi i64 [ 0, %polly.loop_header427.preheader ], [ %indvar.next1542, %polly.loop_exit465 ]
  %indvars.iv1047 = phi i64 [ %168, %polly.loop_header427.preheader ], [ %indvars.iv.next1048, %polly.loop_exit465 ]
  %polly.indvar431 = phi i64 [ %167, %polly.loop_header427.preheader ], [ %polly.indvar_next432, %polly.loop_exit465 ]
  %171 = add i64 %163, %indvar1541
  %smin1543 = call i64 @llvm.smin.i64(i64 %171, i64 3)
  %172 = add nsw i64 %smin1543, 1
  %smin1052 = call i64 @llvm.smin.i64(i64 %indvars.iv1047, i64 3)
  %173 = add nsw i64 %polly.indvar431, %169
  %polly.loop_guard4441174 = icmp sgt i64 %173, -1
  %174 = add nuw nsw i64 %polly.indvar431, %158
  %.not906 = icmp ult i64 %174, %170
  %polly.access.mul.call1457 = mul nsw i64 %174, 60
  br i1 %polly.loop_guard4441174, label %polly.loop_header434.us, label %polly.loop_header427.split

polly.loop_header434.us:                          ; preds = %polly.loop_header427, %polly.merge453.us
  %polly.indvar437.us = phi i64 [ %polly.indvar_next438.us, %polly.merge453.us ], [ 0, %polly.loop_header427 ]
  %polly.access.mul.Packed_MemRef_call1297.us = mul nuw nsw i64 %polly.indvar437.us, 80
  br label %polly.loop_header441.us

polly.loop_header441.us:                          ; preds = %polly.loop_header434.us, %polly.loop_header441.us
  %polly.indvar445.us = phi i64 [ %polly.indvar_next446.us, %polly.loop_header441.us ], [ 0, %polly.loop_header434.us ]
  %175 = add nuw nsw i64 %polly.indvar445.us, %164
  %polly.access.mul.call1449.us = mul nuw nsw i64 %175, 60
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
  %polly.access.add.Packed_MemRef_call1297461.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1297.us, %173
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
  %polly.loop_cond433.not.not = icmp ult i64 %polly.indvar431, %157
  %indvars.iv.next1048 = add i64 %indvars.iv1047, 1
  %indvar.next1542 = add i64 %indvar1541, 1
  br i1 %polly.loop_cond433.not.not, label %polly.loop_header427, label %polly.loop_exit429

polly.loop_header434:                             ; preds = %polly.loop_header427.split, %polly.loop_header434
  %polly.indvar437 = phi i64 [ %polly.indvar_next438, %polly.loop_header434 ], [ 0, %polly.loop_header427.split ]
  %polly.access.add.call1458 = add nuw nsw i64 %polly.indvar437, %polly.access.mul.call1457
  %polly.access.call1459 = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1458
  %polly.access.call1459.load = load double, double* %polly.access.call1459, align 8, !alias.scope !82, !noalias !89
  %polly.access.mul.Packed_MemRef_call1297460 = mul nuw nsw i64 %polly.indvar437, 80
  %polly.access.add.Packed_MemRef_call1297461 = add nsw i64 %polly.access.mul.Packed_MemRef_call1297460, %173
  %polly.access.Packed_MemRef_call1297462 = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297461
  store double %polly.access.call1459.load, double* %polly.access.Packed_MemRef_call1297462, align 8
  %polly.indvar_next438 = add nuw nsw i64 %polly.indvar437, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar_next438, 60
  br i1 %exitcond1037.not, label %polly.loop_header463.preheader, label %polly.loop_header434

polly.loop_header463.preheader:                   ; preds = %polly.loop_header434, %polly.merge453.us
  %176 = mul i64 %174, 640
  br i1 %polly.loop_guard4441174, label %polly.loop_header463.us, label %polly.loop_exit465

polly.loop_header463.us:                          ; preds = %polly.loop_header463.preheader, %polly.loop_exit472.loopexit.us
  %polly.indvar466.us = phi i64 [ %polly.indvar_next467.us, %polly.loop_exit472.loopexit.us ], [ 0, %polly.loop_header463.preheader ]
  %polly.access.mul.Packed_MemRef_call1297477.us = mul nuw nsw i64 %polly.indvar466.us, 80
  %polly.access.add.Packed_MemRef_call2299482.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1297477.us, %174
  %polly.access.Packed_MemRef_call2299483.us = getelementptr double, double* %Packed_MemRef_call2299, i64 %polly.access.add.Packed_MemRef_call2299482.us
  %_p_scalar_484.us = load double, double* %polly.access.Packed_MemRef_call2299483.us, align 8
  %polly.access.add.Packed_MemRef_call1297490.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1297477.us, %173
  %polly.access.Packed_MemRef_call1297491.us = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297490.us
  %_p_scalar_492.us = load double, double* %polly.access.Packed_MemRef_call1297491.us, align 8
  %min.iters.check1544 = icmp ult i64 %172, 4
  br i1 %min.iters.check1544, label %polly.loop_header470.us.preheader, label %vector.ph1545

vector.ph1545:                                    ; preds = %polly.loop_header463.us
  %n.vec1547 = and i64 %172, -4
  %broadcast.splatinsert1553 = insertelement <4 x double> poison, double %_p_scalar_484.us, i32 0
  %broadcast.splat1554 = shufflevector <4 x double> %broadcast.splatinsert1553, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1556 = insertelement <4 x double> poison, double %_p_scalar_492.us, i32 0
  %broadcast.splat1557 = shufflevector <4 x double> %broadcast.splatinsert1556, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1539

vector.body1539:                                  ; preds = %vector.body1539, %vector.ph1545
  %index1548 = phi i64 [ 0, %vector.ph1545 ], [ %index.next1549, %vector.body1539 ]
  %177 = add nuw nsw i64 %index1548, %164
  %178 = add nuw nsw i64 %index1548, %polly.access.mul.Packed_MemRef_call1297477.us
  %179 = getelementptr double, double* %Packed_MemRef_call1297, i64 %178
  %180 = bitcast double* %179 to <4 x double>*
  %wide.load1552 = load <4 x double>, <4 x double>* %180, align 8
  %181 = fmul fast <4 x double> %broadcast.splat1554, %wide.load1552
  %182 = add nuw nsw i64 %177, %polly.access.mul.Packed_MemRef_call1297477.us
  %183 = getelementptr double, double* %Packed_MemRef_call2299, i64 %182
  %184 = bitcast double* %183 to <4 x double>*
  %wide.load1555 = load <4 x double>, <4 x double>* %184, align 8
  %185 = fmul fast <4 x double> %broadcast.splat1557, %wide.load1555
  %186 = shl i64 %177, 3
  %187 = add i64 %186, %176
  %188 = getelementptr i8, i8* %call, i64 %187
  %189 = bitcast i8* %188 to <4 x double>*
  %wide.load1558 = load <4 x double>, <4 x double>* %189, align 8, !alias.scope !79, !noalias !81
  %190 = fadd fast <4 x double> %185, %181
  %191 = fmul fast <4 x double> %190, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %192 = fadd fast <4 x double> %191, %wide.load1558
  %193 = bitcast i8* %188 to <4 x double>*
  store <4 x double> %192, <4 x double>* %193, align 8, !alias.scope !79, !noalias !81
  %index.next1549 = add i64 %index1548, 4
  %194 = icmp eq i64 %index.next1549, %n.vec1547
  br i1 %194, label %middle.block1537, label %vector.body1539, !llvm.loop !90

middle.block1537:                                 ; preds = %vector.body1539
  %cmp.n1551 = icmp eq i64 %172, %n.vec1547
  br i1 %cmp.n1551, label %polly.loop_exit472.loopexit.us, label %polly.loop_header470.us.preheader

polly.loop_header470.us.preheader:                ; preds = %polly.loop_header463.us, %middle.block1537
  %polly.indvar474.us.ph = phi i64 [ 0, %polly.loop_header463.us ], [ %n.vec1547, %middle.block1537 ]
  br label %polly.loop_header470.us

polly.loop_header470.us:                          ; preds = %polly.loop_header470.us.preheader, %polly.loop_header470.us
  %polly.indvar474.us = phi i64 [ %polly.indvar_next475.us, %polly.loop_header470.us ], [ %polly.indvar474.us.ph, %polly.loop_header470.us.preheader ]
  %195 = add nuw nsw i64 %polly.indvar474.us, %164
  %polly.access.add.Packed_MemRef_call1297478.us = add nuw nsw i64 %polly.indvar474.us, %polly.access.mul.Packed_MemRef_call1297477.us
  %polly.access.Packed_MemRef_call1297479.us = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297478.us
  %_p_scalar_480.us = load double, double* %polly.access.Packed_MemRef_call1297479.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_484.us, %_p_scalar_480.us
  %polly.access.add.Packed_MemRef_call2299486.us = add nuw nsw i64 %195, %polly.access.mul.Packed_MemRef_call1297477.us
  %polly.access.Packed_MemRef_call2299487.us = getelementptr double, double* %Packed_MemRef_call2299, i64 %polly.access.add.Packed_MemRef_call2299486.us
  %_p_scalar_488.us = load double, double* %polly.access.Packed_MemRef_call2299487.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_492.us, %_p_scalar_488.us
  %196 = shl i64 %195, 3
  %197 = add i64 %196, %176
  %scevgep493.us = getelementptr i8, i8* %call, i64 %197
  %scevgep493494.us = bitcast i8* %scevgep493.us to double*
  %_p_scalar_495.us = load double, double* %scevgep493494.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_495.us
  store double %p_add42.i79.us, double* %scevgep493494.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next475.us = add nuw nsw i64 %polly.indvar474.us, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar474.us, %smin1052
  br i1 %exitcond1053.not, label %polly.loop_exit472.loopexit.us, label %polly.loop_header470.us, !llvm.loop !91

polly.loop_exit472.loopexit.us:                   ; preds = %polly.loop_header470.us, %middle.block1537
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
  %198 = add i64 %indvar, 1
  %199 = mul nuw nsw i64 %polly.indvar589, 640
  %scevgep598 = getelementptr i8, i8* %call, i64 %199
  %min.iters.check1481 = icmp ult i64 %198, 4
  br i1 %min.iters.check1481, label %polly.loop_header592.preheader, label %vector.ph1482

vector.ph1482:                                    ; preds = %polly.loop_header586
  %n.vec1484 = and i64 %198, -4
  br label %vector.body1480

vector.body1480:                                  ; preds = %vector.body1480, %vector.ph1482
  %index1485 = phi i64 [ 0, %vector.ph1482 ], [ %index.next1486, %vector.body1480 ]
  %200 = shl nuw nsw i64 %index1485, 3
  %201 = getelementptr i8, i8* %scevgep598, i64 %200
  %202 = bitcast i8* %201 to <4 x double>*
  %wide.load1489 = load <4 x double>, <4 x double>* %202, align 8, !alias.scope !92, !noalias !94
  %203 = fmul fast <4 x double> %wide.load1489, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %204 = bitcast i8* %201 to <4 x double>*
  store <4 x double> %203, <4 x double>* %204, align 8, !alias.scope !92, !noalias !94
  %index.next1486 = add i64 %index1485, 4
  %205 = icmp eq i64 %index.next1486, %n.vec1484
  br i1 %205, label %middle.block1478, label %vector.body1480, !llvm.loop !99

middle.block1478:                                 ; preds = %vector.body1480
  %cmp.n1488 = icmp eq i64 %198, %n.vec1484
  br i1 %cmp.n1488, label %polly.loop_exit594, label %polly.loop_header592.preheader

polly.loop_header592.preheader:                   ; preds = %polly.loop_header586, %middle.block1478
  %polly.indvar595.ph = phi i64 [ 0, %polly.loop_header586 ], [ %n.vec1484, %middle.block1478 ]
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_header592, %middle.block1478
  %polly.indvar_next590 = add nuw nsw i64 %polly.indvar589, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar_next590, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1090.not, label %polly.loop_header602.preheader, label %polly.loop_header586

polly.loop_header602.preheader:                   ; preds = %polly.loop_exit594
  %Packed_MemRef_call1501 = bitcast i8* %malloccall500 to double*
  %Packed_MemRef_call2503 = bitcast i8* %malloccall502 to double*
  br label %polly.loop_header602

polly.loop_header592:                             ; preds = %polly.loop_header592.preheader, %polly.loop_header592
  %polly.indvar595 = phi i64 [ %polly.indvar_next596, %polly.loop_header592 ], [ %polly.indvar595.ph, %polly.loop_header592.preheader ]
  %206 = shl nuw nsw i64 %polly.indvar595, 3
  %scevgep599 = getelementptr i8, i8* %scevgep598, i64 %206
  %scevgep599600 = bitcast i8* %scevgep599 to double*
  %_p_scalar_601 = load double, double* %scevgep599600, align 8, !alias.scope !92, !noalias !94
  %p_mul.i = fmul fast double %_p_scalar_601, 1.200000e+00
  store double %p_mul.i, double* %scevgep599600, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next596 = add nuw nsw i64 %polly.indvar595, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next596, %polly.indvar589
  br i1 %exitcond1089.not, label %polly.loop_exit594, label %polly.loop_header592, !llvm.loop !100

polly.loop_header602:                             ; preds = %polly.loop_header602.preheader, %polly.loop_exit610
  %polly.indvar605 = phi i64 [ %polly.indvar_next606, %polly.loop_exit610 ], [ 0, %polly.loop_header602.preheader ]
  %polly.access.mul.Packed_MemRef_call2503 = mul nuw nsw i64 %polly.indvar605, 80
  br label %polly.loop_header608

polly.loop_exit610:                               ; preds = %polly.loop_header608
  %polly.indvar_next606 = add nuw nsw i64 %polly.indvar605, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar_next606, 60
  br i1 %exitcond1088.not, label %polly.loop_header618, label %polly.loop_header602

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
  %exitcond1087.not = icmp eq i64 %polly.indvar_next612, 80
  br i1 %exitcond1087.not, label %polly.loop_exit610, label %polly.loop_header608

polly.loop_header618:                             ; preds = %polly.loop_exit610, %polly.loop_exit626
  %indvars.iv1082 = phi i64 [ %indvars.iv.next1083, %polly.loop_exit626 ], [ 7, %polly.loop_exit610 ]
  %indvars.iv1070 = phi i64 [ %indvars.iv.next1071, %polly.loop_exit626 ], [ 0, %polly.loop_exit610 ]
  %indvars.iv1065 = phi i64 [ %indvars.iv.next1066, %polly.loop_exit626 ], [ 0, %polly.loop_exit610 ]
  %polly.indvar621 = phi i64 [ %polly.indvar_next622, %polly.loop_exit626 ], [ 0, %polly.loop_exit610 ]
  %207 = mul nsw i64 %polly.indvar621, -32
  %208 = shl nuw nsw i64 %polly.indvar621, 5
  %umin1084 = call i64 @llvm.umin.i64(i64 %indvars.iv1082, i64 19)
  %209 = mul nsw i64 %polly.indvar621, -32
  %210 = icmp slt i64 %209, -48
  %211 = select i1 %210, i64 %209, i64 -48
  %212 = add nsw i64 %211, 79
  %213 = shl nsw i64 %polly.indvar621, 5
  br label %polly.loop_header624

polly.loop_exit626:                               ; preds = %polly.loop_exit633
  %polly.indvar_next622 = add nuw nsw i64 %polly.indvar621, 1
  %indvars.iv.next1066 = add nsw i64 %indvars.iv1065, -32
  %indvars.iv.next1071 = add nuw nsw i64 %indvars.iv1070, 32
  %indvars.iv.next1083 = add nuw nsw i64 %indvars.iv1082, 8
  %exitcond1086.not = icmp eq i64 %polly.indvar_next622, 3
  br i1 %exitcond1086.not, label %polly.exiting499, label %polly.loop_header618

polly.loop_header624:                             ; preds = %polly.loop_exit633, %polly.loop_header618
  %indvars.iv1072 = phi i64 [ %indvars.iv.next1073, %polly.loop_exit633 ], [ %indvars.iv1070, %polly.loop_header618 ]
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068, %polly.loop_exit633 ], [ %indvars.iv1065, %polly.loop_header618 ]
  %polly.indvar627 = phi i64 [ %polly.indvar_next628, %polly.loop_exit633 ], [ 0, %polly.loop_header618 ]
  %214 = shl nuw nsw i64 %polly.indvar627, 2
  %215 = add i64 %207, %214
  %smax1493 = call i64 @llvm.smax.i64(i64 %215, i64 0)
  %216 = mul nsw i64 %polly.indvar627, -4
  %217 = add i64 %208, %216
  %218 = add i64 %smax1493, %217
  %219 = shl nsw i64 %polly.indvar627, 2
  %220 = add nsw i64 %219, %209
  %221 = icmp sgt i64 %220, 0
  %222 = select i1 %221, i64 %220, i64 0
  %polly.loop_guard634.not = icmp sgt i64 %222, %212
  br i1 %polly.loop_guard634.not, label %polly.loop_exit633, label %polly.loop_header631.preheader

polly.loop_header631.preheader:                   ; preds = %polly.loop_header624
  %smax1069 = call i64 @llvm.smax.i64(i64 %indvars.iv1067, i64 0)
  %223 = add i64 %smax1069, %indvars.iv1072
  %224 = sub nsw i64 %213, %219
  %225 = add nuw nsw i64 %219, 4
  br label %polly.loop_header631

polly.loop_exit633:                               ; preds = %polly.loop_exit669, %polly.loop_header624
  %polly.indvar_next628 = add nuw nsw i64 %polly.indvar627, 1
  %indvars.iv.next1068 = add nsw i64 %indvars.iv1067, 4
  %indvars.iv.next1073 = add nsw i64 %indvars.iv1072, -4
  %exitcond1085.not = icmp eq i64 %polly.indvar627, %umin1084
  br i1 %exitcond1085.not, label %polly.loop_exit626, label %polly.loop_header624

polly.loop_header631:                             ; preds = %polly.loop_header631.preheader, %polly.loop_exit669
  %indvar1494 = phi i64 [ 0, %polly.loop_header631.preheader ], [ %indvar.next1495, %polly.loop_exit669 ]
  %indvars.iv1074 = phi i64 [ %223, %polly.loop_header631.preheader ], [ %indvars.iv.next1075, %polly.loop_exit669 ]
  %polly.indvar635 = phi i64 [ %222, %polly.loop_header631.preheader ], [ %polly.indvar_next636, %polly.loop_exit669 ]
  %226 = add i64 %218, %indvar1494
  %smin = call i64 @llvm.smin.i64(i64 %226, i64 3)
  %227 = add nsw i64 %smin, 1
  %smin1079 = call i64 @llvm.smin.i64(i64 %indvars.iv1074, i64 3)
  %228 = add nsw i64 %polly.indvar635, %224
  %polly.loop_guard6481175 = icmp sgt i64 %228, -1
  %229 = add nuw nsw i64 %polly.indvar635, %213
  %.not907 = icmp ult i64 %229, %225
  %polly.access.mul.call1661 = mul nsw i64 %229, 60
  br i1 %polly.loop_guard6481175, label %polly.loop_header638.us, label %polly.loop_header631.split

polly.loop_header638.us:                          ; preds = %polly.loop_header631, %polly.merge657.us
  %polly.indvar641.us = phi i64 [ %polly.indvar_next642.us, %polly.merge657.us ], [ 0, %polly.loop_header631 ]
  %polly.access.mul.Packed_MemRef_call1501.us = mul nuw nsw i64 %polly.indvar641.us, 80
  br label %polly.loop_header645.us

polly.loop_header645.us:                          ; preds = %polly.loop_header638.us, %polly.loop_header645.us
  %polly.indvar649.us = phi i64 [ %polly.indvar_next650.us, %polly.loop_header645.us ], [ 0, %polly.loop_header638.us ]
  %230 = add nuw nsw i64 %polly.indvar649.us, %219
  %polly.access.mul.call1653.us = mul nuw nsw i64 %230, 60
  %polly.access.add.call1654.us = add nuw nsw i64 %polly.access.mul.call1653.us, %polly.indvar641.us
  %polly.access.call1655.us = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1654.us
  %polly.access.call1655.load.us = load double, double* %polly.access.call1655.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1501.us = add nuw nsw i64 %polly.indvar649.us, %polly.access.mul.Packed_MemRef_call1501.us
  %polly.access.Packed_MemRef_call1501.us = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501.us
  store double %polly.access.call1655.load.us, double* %polly.access.Packed_MemRef_call1501.us, align 8
  %polly.indvar_next650.us = add nuw nsw i64 %polly.indvar649.us, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar649.us, %smin1079
  br i1 %exitcond1077.not, label %polly.cond656.loopexit.us, label %polly.loop_header645.us

polly.then658.us:                                 ; preds = %polly.cond656.loopexit.us
  %polly.access.add.call1662.us = add nuw nsw i64 %polly.indvar641.us, %polly.access.mul.call1661
  %polly.access.call1663.us = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1662.us
  %polly.access.call1663.load.us = load double, double* %polly.access.call1663.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1501665.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1501.us, %228
  %polly.access.Packed_MemRef_call1501666.us = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501665.us
  store double %polly.access.call1663.load.us, double* %polly.access.Packed_MemRef_call1501666.us, align 8
  br label %polly.merge657.us

polly.merge657.us:                                ; preds = %polly.then658.us, %polly.cond656.loopexit.us
  %polly.indvar_next642.us = add nuw nsw i64 %polly.indvar641.us, 1
  %exitcond1078.not = icmp eq i64 %polly.indvar_next642.us, 60
  br i1 %exitcond1078.not, label %polly.loop_header667.preheader, label %polly.loop_header638.us

polly.cond656.loopexit.us:                        ; preds = %polly.loop_header645.us
  br i1 %.not907, label %polly.merge657.us, label %polly.then658.us

polly.loop_header631.split:                       ; preds = %polly.loop_header631
  br i1 %.not907, label %polly.loop_exit669, label %polly.loop_header638

polly.loop_exit669:                               ; preds = %polly.loop_exit676.loopexit.us, %polly.loop_header631.split, %polly.loop_header667.preheader
  %polly.indvar_next636 = add nuw nsw i64 %polly.indvar635, 1
  %polly.loop_cond637.not.not = icmp ult i64 %polly.indvar635, %212
  %indvars.iv.next1075 = add i64 %indvars.iv1074, 1
  %indvar.next1495 = add i64 %indvar1494, 1
  br i1 %polly.loop_cond637.not.not, label %polly.loop_header631, label %polly.loop_exit633

polly.loop_header638:                             ; preds = %polly.loop_header631.split, %polly.loop_header638
  %polly.indvar641 = phi i64 [ %polly.indvar_next642, %polly.loop_header638 ], [ 0, %polly.loop_header631.split ]
  %polly.access.add.call1662 = add nuw nsw i64 %polly.indvar641, %polly.access.mul.call1661
  %polly.access.call1663 = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1662
  %polly.access.call1663.load = load double, double* %polly.access.call1663, align 8, !alias.scope !95, !noalias !102
  %polly.access.mul.Packed_MemRef_call1501664 = mul nuw nsw i64 %polly.indvar641, 80
  %polly.access.add.Packed_MemRef_call1501665 = add nsw i64 %polly.access.mul.Packed_MemRef_call1501664, %228
  %polly.access.Packed_MemRef_call1501666 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501665
  store double %polly.access.call1663.load, double* %polly.access.Packed_MemRef_call1501666, align 8
  %polly.indvar_next642 = add nuw nsw i64 %polly.indvar641, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar_next642, 60
  br i1 %exitcond1064.not, label %polly.loop_header667.preheader, label %polly.loop_header638

polly.loop_header667.preheader:                   ; preds = %polly.loop_header638, %polly.merge657.us
  %231 = mul i64 %229, 640
  br i1 %polly.loop_guard6481175, label %polly.loop_header667.us, label %polly.loop_exit669

polly.loop_header667.us:                          ; preds = %polly.loop_header667.preheader, %polly.loop_exit676.loopexit.us
  %polly.indvar670.us = phi i64 [ %polly.indvar_next671.us, %polly.loop_exit676.loopexit.us ], [ 0, %polly.loop_header667.preheader ]
  %polly.access.mul.Packed_MemRef_call1501681.us = mul nuw nsw i64 %polly.indvar670.us, 80
  %polly.access.add.Packed_MemRef_call2503686.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1501681.us, %229
  %polly.access.Packed_MemRef_call2503687.us = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503686.us
  %_p_scalar_688.us = load double, double* %polly.access.Packed_MemRef_call2503687.us, align 8
  %polly.access.add.Packed_MemRef_call1501694.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1501681.us, %228
  %polly.access.Packed_MemRef_call1501695.us = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501694.us
  %_p_scalar_696.us = load double, double* %polly.access.Packed_MemRef_call1501695.us, align 8
  %min.iters.check1496 = icmp ult i64 %227, 4
  br i1 %min.iters.check1496, label %polly.loop_header674.us.preheader, label %vector.ph1497

vector.ph1497:                                    ; preds = %polly.loop_header667.us
  %n.vec1499 = and i64 %227, -4
  %broadcast.splatinsert1505 = insertelement <4 x double> poison, double %_p_scalar_688.us, i32 0
  %broadcast.splat1506 = shufflevector <4 x double> %broadcast.splatinsert1505, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1508 = insertelement <4 x double> poison, double %_p_scalar_696.us, i32 0
  %broadcast.splat1509 = shufflevector <4 x double> %broadcast.splatinsert1508, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1492

vector.body1492:                                  ; preds = %vector.body1492, %vector.ph1497
  %index1500 = phi i64 [ 0, %vector.ph1497 ], [ %index.next1501, %vector.body1492 ]
  %232 = add nuw nsw i64 %index1500, %219
  %233 = add nuw nsw i64 %index1500, %polly.access.mul.Packed_MemRef_call1501681.us
  %234 = getelementptr double, double* %Packed_MemRef_call1501, i64 %233
  %235 = bitcast double* %234 to <4 x double>*
  %wide.load1504 = load <4 x double>, <4 x double>* %235, align 8
  %236 = fmul fast <4 x double> %broadcast.splat1506, %wide.load1504
  %237 = add nuw nsw i64 %232, %polly.access.mul.Packed_MemRef_call1501681.us
  %238 = getelementptr double, double* %Packed_MemRef_call2503, i64 %237
  %239 = bitcast double* %238 to <4 x double>*
  %wide.load1507 = load <4 x double>, <4 x double>* %239, align 8
  %240 = fmul fast <4 x double> %broadcast.splat1509, %wide.load1507
  %241 = shl i64 %232, 3
  %242 = add i64 %241, %231
  %243 = getelementptr i8, i8* %call, i64 %242
  %244 = bitcast i8* %243 to <4 x double>*
  %wide.load1510 = load <4 x double>, <4 x double>* %244, align 8, !alias.scope !92, !noalias !94
  %245 = fadd fast <4 x double> %240, %236
  %246 = fmul fast <4 x double> %245, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %247 = fadd fast <4 x double> %246, %wide.load1510
  %248 = bitcast i8* %243 to <4 x double>*
  store <4 x double> %247, <4 x double>* %248, align 8, !alias.scope !92, !noalias !94
  %index.next1501 = add i64 %index1500, 4
  %249 = icmp eq i64 %index.next1501, %n.vec1499
  br i1 %249, label %middle.block1490, label %vector.body1492, !llvm.loop !103

middle.block1490:                                 ; preds = %vector.body1492
  %cmp.n1503 = icmp eq i64 %227, %n.vec1499
  br i1 %cmp.n1503, label %polly.loop_exit676.loopexit.us, label %polly.loop_header674.us.preheader

polly.loop_header674.us.preheader:                ; preds = %polly.loop_header667.us, %middle.block1490
  %polly.indvar678.us.ph = phi i64 [ 0, %polly.loop_header667.us ], [ %n.vec1499, %middle.block1490 ]
  br label %polly.loop_header674.us

polly.loop_header674.us:                          ; preds = %polly.loop_header674.us.preheader, %polly.loop_header674.us
  %polly.indvar678.us = phi i64 [ %polly.indvar_next679.us, %polly.loop_header674.us ], [ %polly.indvar678.us.ph, %polly.loop_header674.us.preheader ]
  %250 = add nuw nsw i64 %polly.indvar678.us, %219
  %polly.access.add.Packed_MemRef_call1501682.us = add nuw nsw i64 %polly.indvar678.us, %polly.access.mul.Packed_MemRef_call1501681.us
  %polly.access.Packed_MemRef_call1501683.us = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501682.us
  %_p_scalar_684.us = load double, double* %polly.access.Packed_MemRef_call1501683.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_688.us, %_p_scalar_684.us
  %polly.access.add.Packed_MemRef_call2503690.us = add nuw nsw i64 %250, %polly.access.mul.Packed_MemRef_call1501681.us
  %polly.access.Packed_MemRef_call2503691.us = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503690.us
  %_p_scalar_692.us = load double, double* %polly.access.Packed_MemRef_call2503691.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_696.us, %_p_scalar_692.us
  %251 = shl i64 %250, 3
  %252 = add i64 %251, %231
  %scevgep697.us = getelementptr i8, i8* %call, i64 %252
  %scevgep697698.us = bitcast i8* %scevgep697.us to double*
  %_p_scalar_699.us = load double, double* %scevgep697698.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_699.us
  store double %p_add42.i.us, double* %scevgep697698.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next679.us = add nuw nsw i64 %polly.indvar678.us, 1
  %exitcond1080.not = icmp eq i64 %polly.indvar678.us, %smin1079
  br i1 %exitcond1080.not, label %polly.loop_exit676.loopexit.us, label %polly.loop_header674.us, !llvm.loop !104

polly.loop_exit676.loopexit.us:                   ; preds = %polly.loop_header674.us, %middle.block1490
  %polly.indvar_next671.us = add nuw nsw i64 %polly.indvar670.us, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar_next671.us, 60
  br i1 %exitcond1081.not, label %polly.loop_exit669, label %polly.loop_header667.us

polly.loop_header838:                             ; preds = %entry, %polly.loop_exit846
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_exit846 ], [ 0, %entry ]
  %253 = mul nuw nsw i64 %polly.indvar841, 640
  %254 = trunc i64 %polly.indvar841 to i32
  %broadcast.splatinsert1212 = insertelement <4 x i32> poison, i32 %254, i32 0
  %broadcast.splat1213 = shufflevector <4 x i32> %broadcast.splatinsert1212, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1202

vector.body1202:                                  ; preds = %vector.body1202, %polly.loop_header838
  %index1204 = phi i64 [ 0, %polly.loop_header838 ], [ %index.next1205, %vector.body1202 ]
  %vec.ind1210 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header838 ], [ %vec.ind.next1211, %vector.body1202 ]
  %255 = mul <4 x i32> %vec.ind1210, %broadcast.splat1213
  %256 = add <4 x i32> %255, <i32 3, i32 3, i32 3, i32 3>
  %257 = urem <4 x i32> %256, <i32 80, i32 80, i32 80, i32 80>
  %258 = sitofp <4 x i32> %257 to <4 x double>
  %259 = fmul fast <4 x double> %258, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %260 = shl i64 %index1204, 3
  %261 = add nuw nsw i64 %260, %253
  %262 = getelementptr i8, i8* %call, i64 %261
  %263 = bitcast i8* %262 to <4 x double>*
  store <4 x double> %259, <4 x double>* %263, align 8, !alias.scope !105, !noalias !107
  %index.next1205 = add i64 %index1204, 4
  %vec.ind.next1211 = add <4 x i32> %vec.ind1210, <i32 4, i32 4, i32 4, i32 4>
  %264 = icmp eq i64 %index.next1205, 32
  br i1 %264, label %polly.loop_exit846, label %vector.body1202, !llvm.loop !110

polly.loop_exit846:                               ; preds = %vector.body1202
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar_next842, 32
  br i1 %exitcond1110.not, label %polly.loop_header838.1, label %polly.loop_header838

polly.loop_header865:                             ; preds = %polly.loop_exit846.2.2, %polly.loop_exit873
  %polly.indvar868 = phi i64 [ %polly.indvar_next869, %polly.loop_exit873 ], [ 0, %polly.loop_exit846.2.2 ]
  %265 = mul nuw nsw i64 %polly.indvar868, 480
  %266 = trunc i64 %polly.indvar868 to i32
  %broadcast.splatinsert1326 = insertelement <4 x i32> poison, i32 %266, i32 0
  %broadcast.splat1327 = shufflevector <4 x i32> %broadcast.splatinsert1326, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1316

vector.body1316:                                  ; preds = %vector.body1316, %polly.loop_header865
  %index1318 = phi i64 [ 0, %polly.loop_header865 ], [ %index.next1319, %vector.body1316 ]
  %vec.ind1324 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header865 ], [ %vec.ind.next1325, %vector.body1316 ]
  %267 = mul <4 x i32> %vec.ind1324, %broadcast.splat1327
  %268 = add <4 x i32> %267, <i32 2, i32 2, i32 2, i32 2>
  %269 = urem <4 x i32> %268, <i32 60, i32 60, i32 60, i32 60>
  %270 = sitofp <4 x i32> %269 to <4 x double>
  %271 = fmul fast <4 x double> %270, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %272 = shl i64 %index1318, 3
  %273 = add i64 %272, %265
  %274 = getelementptr i8, i8* %call2, i64 %273
  %275 = bitcast i8* %274 to <4 x double>*
  store <4 x double> %271, <4 x double>* %275, align 8, !alias.scope !109, !noalias !111
  %index.next1319 = add i64 %index1318, 4
  %vec.ind.next1325 = add <4 x i32> %vec.ind1324, <i32 4, i32 4, i32 4, i32 4>
  %276 = icmp eq i64 %index.next1319, 32
  br i1 %276, label %polly.loop_exit873, label %vector.body1316, !llvm.loop !112

polly.loop_exit873:                               ; preds = %vector.body1316
  %polly.indvar_next869 = add nuw nsw i64 %polly.indvar868, 1
  %exitcond1101.not = icmp eq i64 %polly.indvar_next869, 32
  br i1 %exitcond1101.not, label %polly.loop_header865.1, label %polly.loop_header865

polly.loop_header891:                             ; preds = %polly.loop_exit873.1.2, %polly.loop_exit899
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_exit899 ], [ 0, %polly.loop_exit873.1.2 ]
  %277 = mul nuw nsw i64 %polly.indvar894, 480
  %278 = trunc i64 %polly.indvar894 to i32
  %broadcast.splatinsert1404 = insertelement <4 x i32> poison, i32 %278, i32 0
  %broadcast.splat1405 = shufflevector <4 x i32> %broadcast.splatinsert1404, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1394

vector.body1394:                                  ; preds = %vector.body1394, %polly.loop_header891
  %index1396 = phi i64 [ 0, %polly.loop_header891 ], [ %index.next1397, %vector.body1394 ]
  %vec.ind1402 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header891 ], [ %vec.ind.next1403, %vector.body1394 ]
  %279 = mul <4 x i32> %vec.ind1402, %broadcast.splat1405
  %280 = add <4 x i32> %279, <i32 1, i32 1, i32 1, i32 1>
  %281 = urem <4 x i32> %280, <i32 80, i32 80, i32 80, i32 80>
  %282 = sitofp <4 x i32> %281 to <4 x double>
  %283 = fmul fast <4 x double> %282, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %284 = shl i64 %index1396, 3
  %285 = add i64 %284, %277
  %286 = getelementptr i8, i8* %call1, i64 %285
  %287 = bitcast i8* %286 to <4 x double>*
  store <4 x double> %283, <4 x double>* %287, align 8, !alias.scope !108, !noalias !113
  %index.next1397 = add i64 %index1396, 4
  %vec.ind.next1403 = add <4 x i32> %vec.ind1402, <i32 4, i32 4, i32 4, i32 4>
  %288 = icmp eq i64 %index.next1397, 32
  br i1 %288, label %polly.loop_exit899, label %vector.body1394, !llvm.loop !114

polly.loop_exit899:                               ; preds = %vector.body1394
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %exitcond1095.not = icmp eq i64 %polly.indvar_next895, 32
  br i1 %exitcond1095.not, label %polly.loop_header891.1, label %polly.loop_header891

polly.loop_header891.1:                           ; preds = %polly.loop_exit899, %polly.loop_exit899.1
  %polly.indvar894.1 = phi i64 [ %polly.indvar_next895.1, %polly.loop_exit899.1 ], [ 0, %polly.loop_exit899 ]
  %289 = mul nuw nsw i64 %polly.indvar894.1, 480
  %290 = trunc i64 %polly.indvar894.1 to i32
  %broadcast.splatinsert1416 = insertelement <4 x i32> poison, i32 %290, i32 0
  %broadcast.splat1417 = shufflevector <4 x i32> %broadcast.splatinsert1416, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1408

vector.body1408:                                  ; preds = %vector.body1408, %polly.loop_header891.1
  %index1410 = phi i64 [ 0, %polly.loop_header891.1 ], [ %index.next1411, %vector.body1408 ]
  %vec.ind1414 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header891.1 ], [ %vec.ind.next1415, %vector.body1408 ]
  %291 = add nuw nsw <4 x i64> %vec.ind1414, <i64 32, i64 32, i64 32, i64 32>
  %292 = trunc <4 x i64> %291 to <4 x i32>
  %293 = mul <4 x i32> %broadcast.splat1417, %292
  %294 = add <4 x i32> %293, <i32 1, i32 1, i32 1, i32 1>
  %295 = urem <4 x i32> %294, <i32 80, i32 80, i32 80, i32 80>
  %296 = sitofp <4 x i32> %295 to <4 x double>
  %297 = fmul fast <4 x double> %296, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %298 = extractelement <4 x i64> %291, i32 0
  %299 = shl i64 %298, 3
  %300 = add i64 %299, %289
  %301 = getelementptr i8, i8* %call1, i64 %300
  %302 = bitcast i8* %301 to <4 x double>*
  store <4 x double> %297, <4 x double>* %302, align 8, !alias.scope !108, !noalias !113
  %index.next1411 = add i64 %index1410, 4
  %vec.ind.next1415 = add <4 x i64> %vec.ind1414, <i64 4, i64 4, i64 4, i64 4>
  %303 = icmp eq i64 %index.next1411, 28
  br i1 %303, label %polly.loop_exit899.1, label %vector.body1408, !llvm.loop !115

polly.loop_exit899.1:                             ; preds = %vector.body1408
  %polly.indvar_next895.1 = add nuw nsw i64 %polly.indvar894.1, 1
  %exitcond1095.1.not = icmp eq i64 %polly.indvar_next895.1, 32
  br i1 %exitcond1095.1.not, label %polly.loop_header891.11118, label %polly.loop_header891.1

polly.loop_header891.11118:                       ; preds = %polly.loop_exit899.1, %polly.loop_exit899.11129
  %polly.indvar894.11117 = phi i64 [ %polly.indvar_next895.11127, %polly.loop_exit899.11129 ], [ 0, %polly.loop_exit899.1 ]
  %304 = add nuw nsw i64 %polly.indvar894.11117, 32
  %305 = mul nuw nsw i64 %304, 480
  %306 = trunc i64 %304 to i32
  %broadcast.splatinsert1430 = insertelement <4 x i32> poison, i32 %306, i32 0
  %broadcast.splat1431 = shufflevector <4 x i32> %broadcast.splatinsert1430, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1420

vector.body1420:                                  ; preds = %vector.body1420, %polly.loop_header891.11118
  %index1422 = phi i64 [ 0, %polly.loop_header891.11118 ], [ %index.next1423, %vector.body1420 ]
  %vec.ind1428 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header891.11118 ], [ %vec.ind.next1429, %vector.body1420 ]
  %307 = mul <4 x i32> %vec.ind1428, %broadcast.splat1431
  %308 = add <4 x i32> %307, <i32 1, i32 1, i32 1, i32 1>
  %309 = urem <4 x i32> %308, <i32 80, i32 80, i32 80, i32 80>
  %310 = sitofp <4 x i32> %309 to <4 x double>
  %311 = fmul fast <4 x double> %310, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %312 = shl i64 %index1422, 3
  %313 = add i64 %312, %305
  %314 = getelementptr i8, i8* %call1, i64 %313
  %315 = bitcast i8* %314 to <4 x double>*
  store <4 x double> %311, <4 x double>* %315, align 8, !alias.scope !108, !noalias !113
  %index.next1423 = add i64 %index1422, 4
  %vec.ind.next1429 = add <4 x i32> %vec.ind1428, <i32 4, i32 4, i32 4, i32 4>
  %316 = icmp eq i64 %index.next1423, 32
  br i1 %316, label %polly.loop_exit899.11129, label %vector.body1420, !llvm.loop !116

polly.loop_exit899.11129:                         ; preds = %vector.body1420
  %polly.indvar_next895.11127 = add nuw nsw i64 %polly.indvar894.11117, 1
  %exitcond1095.11128.not = icmp eq i64 %polly.indvar_next895.11127, 32
  br i1 %exitcond1095.11128.not, label %polly.loop_header891.1.1, label %polly.loop_header891.11118

polly.loop_header891.1.1:                         ; preds = %polly.loop_exit899.11129, %polly.loop_exit899.1.1
  %polly.indvar894.1.1 = phi i64 [ %polly.indvar_next895.1.1, %polly.loop_exit899.1.1 ], [ 0, %polly.loop_exit899.11129 ]
  %317 = add nuw nsw i64 %polly.indvar894.1.1, 32
  %318 = mul nuw nsw i64 %317, 480
  %319 = trunc i64 %317 to i32
  %broadcast.splatinsert1442 = insertelement <4 x i32> poison, i32 %319, i32 0
  %broadcast.splat1443 = shufflevector <4 x i32> %broadcast.splatinsert1442, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1434

vector.body1434:                                  ; preds = %vector.body1434, %polly.loop_header891.1.1
  %index1436 = phi i64 [ 0, %polly.loop_header891.1.1 ], [ %index.next1437, %vector.body1434 ]
  %vec.ind1440 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header891.1.1 ], [ %vec.ind.next1441, %vector.body1434 ]
  %320 = add nuw nsw <4 x i64> %vec.ind1440, <i64 32, i64 32, i64 32, i64 32>
  %321 = trunc <4 x i64> %320 to <4 x i32>
  %322 = mul <4 x i32> %broadcast.splat1443, %321
  %323 = add <4 x i32> %322, <i32 1, i32 1, i32 1, i32 1>
  %324 = urem <4 x i32> %323, <i32 80, i32 80, i32 80, i32 80>
  %325 = sitofp <4 x i32> %324 to <4 x double>
  %326 = fmul fast <4 x double> %325, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %327 = extractelement <4 x i64> %320, i32 0
  %328 = shl i64 %327, 3
  %329 = add i64 %328, %318
  %330 = getelementptr i8, i8* %call1, i64 %329
  %331 = bitcast i8* %330 to <4 x double>*
  store <4 x double> %326, <4 x double>* %331, align 8, !alias.scope !108, !noalias !113
  %index.next1437 = add i64 %index1436, 4
  %vec.ind.next1441 = add <4 x i64> %vec.ind1440, <i64 4, i64 4, i64 4, i64 4>
  %332 = icmp eq i64 %index.next1437, 28
  br i1 %332, label %polly.loop_exit899.1.1, label %vector.body1434, !llvm.loop !117

polly.loop_exit899.1.1:                           ; preds = %vector.body1434
  %polly.indvar_next895.1.1 = add nuw nsw i64 %polly.indvar894.1.1, 1
  %exitcond1095.1.1.not = icmp eq i64 %polly.indvar_next895.1.1, 32
  br i1 %exitcond1095.1.1.not, label %polly.loop_header891.2, label %polly.loop_header891.1.1

polly.loop_header891.2:                           ; preds = %polly.loop_exit899.1.1, %polly.loop_exit899.2
  %polly.indvar894.2 = phi i64 [ %polly.indvar_next895.2, %polly.loop_exit899.2 ], [ 0, %polly.loop_exit899.1.1 ]
  %333 = add nuw nsw i64 %polly.indvar894.2, 64
  %334 = mul nuw nsw i64 %333, 480
  %335 = trunc i64 %333 to i32
  %broadcast.splatinsert1456 = insertelement <4 x i32> poison, i32 %335, i32 0
  %broadcast.splat1457 = shufflevector <4 x i32> %broadcast.splatinsert1456, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1446

vector.body1446:                                  ; preds = %vector.body1446, %polly.loop_header891.2
  %index1448 = phi i64 [ 0, %polly.loop_header891.2 ], [ %index.next1449, %vector.body1446 ]
  %vec.ind1454 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header891.2 ], [ %vec.ind.next1455, %vector.body1446 ]
  %336 = mul <4 x i32> %vec.ind1454, %broadcast.splat1457
  %337 = add <4 x i32> %336, <i32 1, i32 1, i32 1, i32 1>
  %338 = urem <4 x i32> %337, <i32 80, i32 80, i32 80, i32 80>
  %339 = sitofp <4 x i32> %338 to <4 x double>
  %340 = fmul fast <4 x double> %339, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %341 = shl i64 %index1448, 3
  %342 = add i64 %341, %334
  %343 = getelementptr i8, i8* %call1, i64 %342
  %344 = bitcast i8* %343 to <4 x double>*
  store <4 x double> %340, <4 x double>* %344, align 8, !alias.scope !108, !noalias !113
  %index.next1449 = add i64 %index1448, 4
  %vec.ind.next1455 = add <4 x i32> %vec.ind1454, <i32 4, i32 4, i32 4, i32 4>
  %345 = icmp eq i64 %index.next1449, 32
  br i1 %345, label %polly.loop_exit899.2, label %vector.body1446, !llvm.loop !118

polly.loop_exit899.2:                             ; preds = %vector.body1446
  %polly.indvar_next895.2 = add nuw nsw i64 %polly.indvar894.2, 1
  %exitcond1095.2.not = icmp eq i64 %polly.indvar_next895.2, 16
  br i1 %exitcond1095.2.not, label %polly.loop_header891.1.2, label %polly.loop_header891.2

polly.loop_header891.1.2:                         ; preds = %polly.loop_exit899.2, %polly.loop_exit899.1.2
  %polly.indvar894.1.2 = phi i64 [ %polly.indvar_next895.1.2, %polly.loop_exit899.1.2 ], [ 0, %polly.loop_exit899.2 ]
  %346 = add nuw nsw i64 %polly.indvar894.1.2, 64
  %347 = mul nuw nsw i64 %346, 480
  %348 = trunc i64 %346 to i32
  %broadcast.splatinsert1468 = insertelement <4 x i32> poison, i32 %348, i32 0
  %broadcast.splat1469 = shufflevector <4 x i32> %broadcast.splatinsert1468, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1460

vector.body1460:                                  ; preds = %vector.body1460, %polly.loop_header891.1.2
  %index1462 = phi i64 [ 0, %polly.loop_header891.1.2 ], [ %index.next1463, %vector.body1460 ]
  %vec.ind1466 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header891.1.2 ], [ %vec.ind.next1467, %vector.body1460 ]
  %349 = add nuw nsw <4 x i64> %vec.ind1466, <i64 32, i64 32, i64 32, i64 32>
  %350 = trunc <4 x i64> %349 to <4 x i32>
  %351 = mul <4 x i32> %broadcast.splat1469, %350
  %352 = add <4 x i32> %351, <i32 1, i32 1, i32 1, i32 1>
  %353 = urem <4 x i32> %352, <i32 80, i32 80, i32 80, i32 80>
  %354 = sitofp <4 x i32> %353 to <4 x double>
  %355 = fmul fast <4 x double> %354, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %356 = extractelement <4 x i64> %349, i32 0
  %357 = shl i64 %356, 3
  %358 = add i64 %357, %347
  %359 = getelementptr i8, i8* %call1, i64 %358
  %360 = bitcast i8* %359 to <4 x double>*
  store <4 x double> %355, <4 x double>* %360, align 8, !alias.scope !108, !noalias !113
  %index.next1463 = add i64 %index1462, 4
  %vec.ind.next1467 = add <4 x i64> %vec.ind1466, <i64 4, i64 4, i64 4, i64 4>
  %361 = icmp eq i64 %index.next1463, 28
  br i1 %361, label %polly.loop_exit899.1.2, label %vector.body1460, !llvm.loop !119

polly.loop_exit899.1.2:                           ; preds = %vector.body1460
  %polly.indvar_next895.1.2 = add nuw nsw i64 %polly.indvar894.1.2, 1
  %exitcond1095.1.2.not = icmp eq i64 %polly.indvar_next895.1.2, 16
  br i1 %exitcond1095.1.2.not, label %init_array.exit, label %polly.loop_header891.1.2

polly.loop_header865.1:                           ; preds = %polly.loop_exit873, %polly.loop_exit873.1
  %polly.indvar868.1 = phi i64 [ %polly.indvar_next869.1, %polly.loop_exit873.1 ], [ 0, %polly.loop_exit873 ]
  %362 = mul nuw nsw i64 %polly.indvar868.1, 480
  %363 = trunc i64 %polly.indvar868.1 to i32
  %broadcast.splatinsert1338 = insertelement <4 x i32> poison, i32 %363, i32 0
  %broadcast.splat1339 = shufflevector <4 x i32> %broadcast.splatinsert1338, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1330

vector.body1330:                                  ; preds = %vector.body1330, %polly.loop_header865.1
  %index1332 = phi i64 [ 0, %polly.loop_header865.1 ], [ %index.next1333, %vector.body1330 ]
  %vec.ind1336 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header865.1 ], [ %vec.ind.next1337, %vector.body1330 ]
  %364 = add nuw nsw <4 x i64> %vec.ind1336, <i64 32, i64 32, i64 32, i64 32>
  %365 = trunc <4 x i64> %364 to <4 x i32>
  %366 = mul <4 x i32> %broadcast.splat1339, %365
  %367 = add <4 x i32> %366, <i32 2, i32 2, i32 2, i32 2>
  %368 = urem <4 x i32> %367, <i32 60, i32 60, i32 60, i32 60>
  %369 = sitofp <4 x i32> %368 to <4 x double>
  %370 = fmul fast <4 x double> %369, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %371 = extractelement <4 x i64> %364, i32 0
  %372 = shl i64 %371, 3
  %373 = add i64 %372, %362
  %374 = getelementptr i8, i8* %call2, i64 %373
  %375 = bitcast i8* %374 to <4 x double>*
  store <4 x double> %370, <4 x double>* %375, align 8, !alias.scope !109, !noalias !111
  %index.next1333 = add i64 %index1332, 4
  %vec.ind.next1337 = add <4 x i64> %vec.ind1336, <i64 4, i64 4, i64 4, i64 4>
  %376 = icmp eq i64 %index.next1333, 28
  br i1 %376, label %polly.loop_exit873.1, label %vector.body1330, !llvm.loop !120

polly.loop_exit873.1:                             ; preds = %vector.body1330
  %polly.indvar_next869.1 = add nuw nsw i64 %polly.indvar868.1, 1
  %exitcond1101.1.not = icmp eq i64 %polly.indvar_next869.1, 32
  br i1 %exitcond1101.1.not, label %polly.loop_header865.11132, label %polly.loop_header865.1

polly.loop_header865.11132:                       ; preds = %polly.loop_exit873.1, %polly.loop_exit873.11143
  %polly.indvar868.11131 = phi i64 [ %polly.indvar_next869.11141, %polly.loop_exit873.11143 ], [ 0, %polly.loop_exit873.1 ]
  %377 = add nuw nsw i64 %polly.indvar868.11131, 32
  %378 = mul nuw nsw i64 %377, 480
  %379 = trunc i64 %377 to i32
  %broadcast.splatinsert1352 = insertelement <4 x i32> poison, i32 %379, i32 0
  %broadcast.splat1353 = shufflevector <4 x i32> %broadcast.splatinsert1352, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1342

vector.body1342:                                  ; preds = %vector.body1342, %polly.loop_header865.11132
  %index1344 = phi i64 [ 0, %polly.loop_header865.11132 ], [ %index.next1345, %vector.body1342 ]
  %vec.ind1350 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header865.11132 ], [ %vec.ind.next1351, %vector.body1342 ]
  %380 = mul <4 x i32> %vec.ind1350, %broadcast.splat1353
  %381 = add <4 x i32> %380, <i32 2, i32 2, i32 2, i32 2>
  %382 = urem <4 x i32> %381, <i32 60, i32 60, i32 60, i32 60>
  %383 = sitofp <4 x i32> %382 to <4 x double>
  %384 = fmul fast <4 x double> %383, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %385 = shl i64 %index1344, 3
  %386 = add i64 %385, %378
  %387 = getelementptr i8, i8* %call2, i64 %386
  %388 = bitcast i8* %387 to <4 x double>*
  store <4 x double> %384, <4 x double>* %388, align 8, !alias.scope !109, !noalias !111
  %index.next1345 = add i64 %index1344, 4
  %vec.ind.next1351 = add <4 x i32> %vec.ind1350, <i32 4, i32 4, i32 4, i32 4>
  %389 = icmp eq i64 %index.next1345, 32
  br i1 %389, label %polly.loop_exit873.11143, label %vector.body1342, !llvm.loop !121

polly.loop_exit873.11143:                         ; preds = %vector.body1342
  %polly.indvar_next869.11141 = add nuw nsw i64 %polly.indvar868.11131, 1
  %exitcond1101.11142.not = icmp eq i64 %polly.indvar_next869.11141, 32
  br i1 %exitcond1101.11142.not, label %polly.loop_header865.1.1, label %polly.loop_header865.11132

polly.loop_header865.1.1:                         ; preds = %polly.loop_exit873.11143, %polly.loop_exit873.1.1
  %polly.indvar868.1.1 = phi i64 [ %polly.indvar_next869.1.1, %polly.loop_exit873.1.1 ], [ 0, %polly.loop_exit873.11143 ]
  %390 = add nuw nsw i64 %polly.indvar868.1.1, 32
  %391 = mul nuw nsw i64 %390, 480
  %392 = trunc i64 %390 to i32
  %broadcast.splatinsert1364 = insertelement <4 x i32> poison, i32 %392, i32 0
  %broadcast.splat1365 = shufflevector <4 x i32> %broadcast.splatinsert1364, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1356

vector.body1356:                                  ; preds = %vector.body1356, %polly.loop_header865.1.1
  %index1358 = phi i64 [ 0, %polly.loop_header865.1.1 ], [ %index.next1359, %vector.body1356 ]
  %vec.ind1362 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header865.1.1 ], [ %vec.ind.next1363, %vector.body1356 ]
  %393 = add nuw nsw <4 x i64> %vec.ind1362, <i64 32, i64 32, i64 32, i64 32>
  %394 = trunc <4 x i64> %393 to <4 x i32>
  %395 = mul <4 x i32> %broadcast.splat1365, %394
  %396 = add <4 x i32> %395, <i32 2, i32 2, i32 2, i32 2>
  %397 = urem <4 x i32> %396, <i32 60, i32 60, i32 60, i32 60>
  %398 = sitofp <4 x i32> %397 to <4 x double>
  %399 = fmul fast <4 x double> %398, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %400 = extractelement <4 x i64> %393, i32 0
  %401 = shl i64 %400, 3
  %402 = add i64 %401, %391
  %403 = getelementptr i8, i8* %call2, i64 %402
  %404 = bitcast i8* %403 to <4 x double>*
  store <4 x double> %399, <4 x double>* %404, align 8, !alias.scope !109, !noalias !111
  %index.next1359 = add i64 %index1358, 4
  %vec.ind.next1363 = add <4 x i64> %vec.ind1362, <i64 4, i64 4, i64 4, i64 4>
  %405 = icmp eq i64 %index.next1359, 28
  br i1 %405, label %polly.loop_exit873.1.1, label %vector.body1356, !llvm.loop !122

polly.loop_exit873.1.1:                           ; preds = %vector.body1356
  %polly.indvar_next869.1.1 = add nuw nsw i64 %polly.indvar868.1.1, 1
  %exitcond1101.1.1.not = icmp eq i64 %polly.indvar_next869.1.1, 32
  br i1 %exitcond1101.1.1.not, label %polly.loop_header865.2, label %polly.loop_header865.1.1

polly.loop_header865.2:                           ; preds = %polly.loop_exit873.1.1, %polly.loop_exit873.2
  %polly.indvar868.2 = phi i64 [ %polly.indvar_next869.2, %polly.loop_exit873.2 ], [ 0, %polly.loop_exit873.1.1 ]
  %406 = add nuw nsw i64 %polly.indvar868.2, 64
  %407 = mul nuw nsw i64 %406, 480
  %408 = trunc i64 %406 to i32
  %broadcast.splatinsert1378 = insertelement <4 x i32> poison, i32 %408, i32 0
  %broadcast.splat1379 = shufflevector <4 x i32> %broadcast.splatinsert1378, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1368

vector.body1368:                                  ; preds = %vector.body1368, %polly.loop_header865.2
  %index1370 = phi i64 [ 0, %polly.loop_header865.2 ], [ %index.next1371, %vector.body1368 ]
  %vec.ind1376 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header865.2 ], [ %vec.ind.next1377, %vector.body1368 ]
  %409 = mul <4 x i32> %vec.ind1376, %broadcast.splat1379
  %410 = add <4 x i32> %409, <i32 2, i32 2, i32 2, i32 2>
  %411 = urem <4 x i32> %410, <i32 60, i32 60, i32 60, i32 60>
  %412 = sitofp <4 x i32> %411 to <4 x double>
  %413 = fmul fast <4 x double> %412, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %414 = shl i64 %index1370, 3
  %415 = add i64 %414, %407
  %416 = getelementptr i8, i8* %call2, i64 %415
  %417 = bitcast i8* %416 to <4 x double>*
  store <4 x double> %413, <4 x double>* %417, align 8, !alias.scope !109, !noalias !111
  %index.next1371 = add i64 %index1370, 4
  %vec.ind.next1377 = add <4 x i32> %vec.ind1376, <i32 4, i32 4, i32 4, i32 4>
  %418 = icmp eq i64 %index.next1371, 32
  br i1 %418, label %polly.loop_exit873.2, label %vector.body1368, !llvm.loop !123

polly.loop_exit873.2:                             ; preds = %vector.body1368
  %polly.indvar_next869.2 = add nuw nsw i64 %polly.indvar868.2, 1
  %exitcond1101.2.not = icmp eq i64 %polly.indvar_next869.2, 16
  br i1 %exitcond1101.2.not, label %polly.loop_header865.1.2, label %polly.loop_header865.2

polly.loop_header865.1.2:                         ; preds = %polly.loop_exit873.2, %polly.loop_exit873.1.2
  %polly.indvar868.1.2 = phi i64 [ %polly.indvar_next869.1.2, %polly.loop_exit873.1.2 ], [ 0, %polly.loop_exit873.2 ]
  %419 = add nuw nsw i64 %polly.indvar868.1.2, 64
  %420 = mul nuw nsw i64 %419, 480
  %421 = trunc i64 %419 to i32
  %broadcast.splatinsert1390 = insertelement <4 x i32> poison, i32 %421, i32 0
  %broadcast.splat1391 = shufflevector <4 x i32> %broadcast.splatinsert1390, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1382

vector.body1382:                                  ; preds = %vector.body1382, %polly.loop_header865.1.2
  %index1384 = phi i64 [ 0, %polly.loop_header865.1.2 ], [ %index.next1385, %vector.body1382 ]
  %vec.ind1388 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header865.1.2 ], [ %vec.ind.next1389, %vector.body1382 ]
  %422 = add nuw nsw <4 x i64> %vec.ind1388, <i64 32, i64 32, i64 32, i64 32>
  %423 = trunc <4 x i64> %422 to <4 x i32>
  %424 = mul <4 x i32> %broadcast.splat1391, %423
  %425 = add <4 x i32> %424, <i32 2, i32 2, i32 2, i32 2>
  %426 = urem <4 x i32> %425, <i32 60, i32 60, i32 60, i32 60>
  %427 = sitofp <4 x i32> %426 to <4 x double>
  %428 = fmul fast <4 x double> %427, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %429 = extractelement <4 x i64> %422, i32 0
  %430 = shl i64 %429, 3
  %431 = add i64 %430, %420
  %432 = getelementptr i8, i8* %call2, i64 %431
  %433 = bitcast i8* %432 to <4 x double>*
  store <4 x double> %428, <4 x double>* %433, align 8, !alias.scope !109, !noalias !111
  %index.next1385 = add i64 %index1384, 4
  %vec.ind.next1389 = add <4 x i64> %vec.ind1388, <i64 4, i64 4, i64 4, i64 4>
  %434 = icmp eq i64 %index.next1385, 28
  br i1 %434, label %polly.loop_exit873.1.2, label %vector.body1382, !llvm.loop !124

polly.loop_exit873.1.2:                           ; preds = %vector.body1382
  %polly.indvar_next869.1.2 = add nuw nsw i64 %polly.indvar868.1.2, 1
  %exitcond1101.1.2.not = icmp eq i64 %polly.indvar_next869.1.2, 16
  br i1 %exitcond1101.1.2.not, label %polly.loop_header891, label %polly.loop_header865.1.2

polly.loop_header838.1:                           ; preds = %polly.loop_exit846, %polly.loop_exit846.1
  %polly.indvar841.1 = phi i64 [ %polly.indvar_next842.1, %polly.loop_exit846.1 ], [ 0, %polly.loop_exit846 ]
  %435 = mul nuw nsw i64 %polly.indvar841.1, 640
  %436 = trunc i64 %polly.indvar841.1 to i32
  %broadcast.splatinsert1224 = insertelement <4 x i32> poison, i32 %436, i32 0
  %broadcast.splat1225 = shufflevector <4 x i32> %broadcast.splatinsert1224, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1216

vector.body1216:                                  ; preds = %vector.body1216, %polly.loop_header838.1
  %index1218 = phi i64 [ 0, %polly.loop_header838.1 ], [ %index.next1219, %vector.body1216 ]
  %vec.ind1222 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header838.1 ], [ %vec.ind.next1223, %vector.body1216 ]
  %437 = add nuw nsw <4 x i64> %vec.ind1222, <i64 32, i64 32, i64 32, i64 32>
  %438 = trunc <4 x i64> %437 to <4 x i32>
  %439 = mul <4 x i32> %broadcast.splat1225, %438
  %440 = add <4 x i32> %439, <i32 3, i32 3, i32 3, i32 3>
  %441 = urem <4 x i32> %440, <i32 80, i32 80, i32 80, i32 80>
  %442 = sitofp <4 x i32> %441 to <4 x double>
  %443 = fmul fast <4 x double> %442, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %444 = extractelement <4 x i64> %437, i32 0
  %445 = shl i64 %444, 3
  %446 = add nuw nsw i64 %445, %435
  %447 = getelementptr i8, i8* %call, i64 %446
  %448 = bitcast i8* %447 to <4 x double>*
  store <4 x double> %443, <4 x double>* %448, align 8, !alias.scope !105, !noalias !107
  %index.next1219 = add i64 %index1218, 4
  %vec.ind.next1223 = add <4 x i64> %vec.ind1222, <i64 4, i64 4, i64 4, i64 4>
  %449 = icmp eq i64 %index.next1219, 32
  br i1 %449, label %polly.loop_exit846.1, label %vector.body1216, !llvm.loop !125

polly.loop_exit846.1:                             ; preds = %vector.body1216
  %polly.indvar_next842.1 = add nuw nsw i64 %polly.indvar841.1, 1
  %exitcond1110.1.not = icmp eq i64 %polly.indvar_next842.1, 32
  br i1 %exitcond1110.1.not, label %polly.loop_header838.2, label %polly.loop_header838.1

polly.loop_header838.2:                           ; preds = %polly.loop_exit846.1, %polly.loop_exit846.2
  %polly.indvar841.2 = phi i64 [ %polly.indvar_next842.2, %polly.loop_exit846.2 ], [ 0, %polly.loop_exit846.1 ]
  %450 = mul nuw nsw i64 %polly.indvar841.2, 640
  %451 = trunc i64 %polly.indvar841.2 to i32
  %broadcast.splatinsert1236 = insertelement <4 x i32> poison, i32 %451, i32 0
  %broadcast.splat1237 = shufflevector <4 x i32> %broadcast.splatinsert1236, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1228

vector.body1228:                                  ; preds = %vector.body1228, %polly.loop_header838.2
  %index1230 = phi i64 [ 0, %polly.loop_header838.2 ], [ %index.next1231, %vector.body1228 ]
  %vec.ind1234 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header838.2 ], [ %vec.ind.next1235, %vector.body1228 ]
  %452 = add nuw nsw <4 x i64> %vec.ind1234, <i64 64, i64 64, i64 64, i64 64>
  %453 = trunc <4 x i64> %452 to <4 x i32>
  %454 = mul <4 x i32> %broadcast.splat1237, %453
  %455 = add <4 x i32> %454, <i32 3, i32 3, i32 3, i32 3>
  %456 = urem <4 x i32> %455, <i32 80, i32 80, i32 80, i32 80>
  %457 = sitofp <4 x i32> %456 to <4 x double>
  %458 = fmul fast <4 x double> %457, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %459 = extractelement <4 x i64> %452, i32 0
  %460 = shl i64 %459, 3
  %461 = add nuw nsw i64 %460, %450
  %462 = getelementptr i8, i8* %call, i64 %461
  %463 = bitcast i8* %462 to <4 x double>*
  store <4 x double> %458, <4 x double>* %463, align 8, !alias.scope !105, !noalias !107
  %index.next1231 = add i64 %index1230, 4
  %vec.ind.next1235 = add <4 x i64> %vec.ind1234, <i64 4, i64 4, i64 4, i64 4>
  %464 = icmp eq i64 %index.next1231, 16
  br i1 %464, label %polly.loop_exit846.2, label %vector.body1228, !llvm.loop !126

polly.loop_exit846.2:                             ; preds = %vector.body1228
  %polly.indvar_next842.2 = add nuw nsw i64 %polly.indvar841.2, 1
  %exitcond1110.2.not = icmp eq i64 %polly.indvar_next842.2, 32
  br i1 %exitcond1110.2.not, label %polly.loop_header838.11146, label %polly.loop_header838.2

polly.loop_header838.11146:                       ; preds = %polly.loop_exit846.2, %polly.loop_exit846.11157
  %polly.indvar841.11145 = phi i64 [ %polly.indvar_next842.11155, %polly.loop_exit846.11157 ], [ 0, %polly.loop_exit846.2 ]
  %465 = add nuw nsw i64 %polly.indvar841.11145, 32
  %466 = mul nuw nsw i64 %465, 640
  %467 = trunc i64 %465 to i32
  %broadcast.splatinsert1250 = insertelement <4 x i32> poison, i32 %467, i32 0
  %broadcast.splat1251 = shufflevector <4 x i32> %broadcast.splatinsert1250, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1240

vector.body1240:                                  ; preds = %vector.body1240, %polly.loop_header838.11146
  %index1242 = phi i64 [ 0, %polly.loop_header838.11146 ], [ %index.next1243, %vector.body1240 ]
  %vec.ind1248 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header838.11146 ], [ %vec.ind.next1249, %vector.body1240 ]
  %468 = mul <4 x i32> %vec.ind1248, %broadcast.splat1251
  %469 = add <4 x i32> %468, <i32 3, i32 3, i32 3, i32 3>
  %470 = urem <4 x i32> %469, <i32 80, i32 80, i32 80, i32 80>
  %471 = sitofp <4 x i32> %470 to <4 x double>
  %472 = fmul fast <4 x double> %471, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %473 = shl i64 %index1242, 3
  %474 = add nuw nsw i64 %473, %466
  %475 = getelementptr i8, i8* %call, i64 %474
  %476 = bitcast i8* %475 to <4 x double>*
  store <4 x double> %472, <4 x double>* %476, align 8, !alias.scope !105, !noalias !107
  %index.next1243 = add i64 %index1242, 4
  %vec.ind.next1249 = add <4 x i32> %vec.ind1248, <i32 4, i32 4, i32 4, i32 4>
  %477 = icmp eq i64 %index.next1243, 32
  br i1 %477, label %polly.loop_exit846.11157, label %vector.body1240, !llvm.loop !127

polly.loop_exit846.11157:                         ; preds = %vector.body1240
  %polly.indvar_next842.11155 = add nuw nsw i64 %polly.indvar841.11145, 1
  %exitcond1110.11156.not = icmp eq i64 %polly.indvar_next842.11155, 32
  br i1 %exitcond1110.11156.not, label %polly.loop_header838.1.1, label %polly.loop_header838.11146

polly.loop_header838.1.1:                         ; preds = %polly.loop_exit846.11157, %polly.loop_exit846.1.1
  %polly.indvar841.1.1 = phi i64 [ %polly.indvar_next842.1.1, %polly.loop_exit846.1.1 ], [ 0, %polly.loop_exit846.11157 ]
  %478 = add nuw nsw i64 %polly.indvar841.1.1, 32
  %479 = mul nuw nsw i64 %478, 640
  %480 = trunc i64 %478 to i32
  %broadcast.splatinsert1262 = insertelement <4 x i32> poison, i32 %480, i32 0
  %broadcast.splat1263 = shufflevector <4 x i32> %broadcast.splatinsert1262, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1254

vector.body1254:                                  ; preds = %vector.body1254, %polly.loop_header838.1.1
  %index1256 = phi i64 [ 0, %polly.loop_header838.1.1 ], [ %index.next1257, %vector.body1254 ]
  %vec.ind1260 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header838.1.1 ], [ %vec.ind.next1261, %vector.body1254 ]
  %481 = add nuw nsw <4 x i64> %vec.ind1260, <i64 32, i64 32, i64 32, i64 32>
  %482 = trunc <4 x i64> %481 to <4 x i32>
  %483 = mul <4 x i32> %broadcast.splat1263, %482
  %484 = add <4 x i32> %483, <i32 3, i32 3, i32 3, i32 3>
  %485 = urem <4 x i32> %484, <i32 80, i32 80, i32 80, i32 80>
  %486 = sitofp <4 x i32> %485 to <4 x double>
  %487 = fmul fast <4 x double> %486, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %488 = extractelement <4 x i64> %481, i32 0
  %489 = shl i64 %488, 3
  %490 = add nuw nsw i64 %489, %479
  %491 = getelementptr i8, i8* %call, i64 %490
  %492 = bitcast i8* %491 to <4 x double>*
  store <4 x double> %487, <4 x double>* %492, align 8, !alias.scope !105, !noalias !107
  %index.next1257 = add i64 %index1256, 4
  %vec.ind.next1261 = add <4 x i64> %vec.ind1260, <i64 4, i64 4, i64 4, i64 4>
  %493 = icmp eq i64 %index.next1257, 32
  br i1 %493, label %polly.loop_exit846.1.1, label %vector.body1254, !llvm.loop !128

polly.loop_exit846.1.1:                           ; preds = %vector.body1254
  %polly.indvar_next842.1.1 = add nuw nsw i64 %polly.indvar841.1.1, 1
  %exitcond1110.1.1.not = icmp eq i64 %polly.indvar_next842.1.1, 32
  br i1 %exitcond1110.1.1.not, label %polly.loop_header838.2.1, label %polly.loop_header838.1.1

polly.loop_header838.2.1:                         ; preds = %polly.loop_exit846.1.1, %polly.loop_exit846.2.1
  %polly.indvar841.2.1 = phi i64 [ %polly.indvar_next842.2.1, %polly.loop_exit846.2.1 ], [ 0, %polly.loop_exit846.1.1 ]
  %494 = add nuw nsw i64 %polly.indvar841.2.1, 32
  %495 = mul nuw nsw i64 %494, 640
  %496 = trunc i64 %494 to i32
  %broadcast.splatinsert1274 = insertelement <4 x i32> poison, i32 %496, i32 0
  %broadcast.splat1275 = shufflevector <4 x i32> %broadcast.splatinsert1274, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1266

vector.body1266:                                  ; preds = %vector.body1266, %polly.loop_header838.2.1
  %index1268 = phi i64 [ 0, %polly.loop_header838.2.1 ], [ %index.next1269, %vector.body1266 ]
  %vec.ind1272 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header838.2.1 ], [ %vec.ind.next1273, %vector.body1266 ]
  %497 = add nuw nsw <4 x i64> %vec.ind1272, <i64 64, i64 64, i64 64, i64 64>
  %498 = trunc <4 x i64> %497 to <4 x i32>
  %499 = mul <4 x i32> %broadcast.splat1275, %498
  %500 = add <4 x i32> %499, <i32 3, i32 3, i32 3, i32 3>
  %501 = urem <4 x i32> %500, <i32 80, i32 80, i32 80, i32 80>
  %502 = sitofp <4 x i32> %501 to <4 x double>
  %503 = fmul fast <4 x double> %502, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %504 = extractelement <4 x i64> %497, i32 0
  %505 = shl i64 %504, 3
  %506 = add nuw nsw i64 %505, %495
  %507 = getelementptr i8, i8* %call, i64 %506
  %508 = bitcast i8* %507 to <4 x double>*
  store <4 x double> %503, <4 x double>* %508, align 8, !alias.scope !105, !noalias !107
  %index.next1269 = add i64 %index1268, 4
  %vec.ind.next1273 = add <4 x i64> %vec.ind1272, <i64 4, i64 4, i64 4, i64 4>
  %509 = icmp eq i64 %index.next1269, 16
  br i1 %509, label %polly.loop_exit846.2.1, label %vector.body1266, !llvm.loop !129

polly.loop_exit846.2.1:                           ; preds = %vector.body1266
  %polly.indvar_next842.2.1 = add nuw nsw i64 %polly.indvar841.2.1, 1
  %exitcond1110.2.1.not = icmp eq i64 %polly.indvar_next842.2.1, 32
  br i1 %exitcond1110.2.1.not, label %polly.loop_header838.21160, label %polly.loop_header838.2.1

polly.loop_header838.21160:                       ; preds = %polly.loop_exit846.2.1, %polly.loop_exit846.21171
  %polly.indvar841.21159 = phi i64 [ %polly.indvar_next842.21169, %polly.loop_exit846.21171 ], [ 0, %polly.loop_exit846.2.1 ]
  %510 = add nuw nsw i64 %polly.indvar841.21159, 64
  %511 = mul nuw nsw i64 %510, 640
  %512 = trunc i64 %510 to i32
  %broadcast.splatinsert1288 = insertelement <4 x i32> poison, i32 %512, i32 0
  %broadcast.splat1289 = shufflevector <4 x i32> %broadcast.splatinsert1288, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1278

vector.body1278:                                  ; preds = %vector.body1278, %polly.loop_header838.21160
  %index1280 = phi i64 [ 0, %polly.loop_header838.21160 ], [ %index.next1281, %vector.body1278 ]
  %vec.ind1286 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header838.21160 ], [ %vec.ind.next1287, %vector.body1278 ]
  %513 = mul <4 x i32> %vec.ind1286, %broadcast.splat1289
  %514 = add <4 x i32> %513, <i32 3, i32 3, i32 3, i32 3>
  %515 = urem <4 x i32> %514, <i32 80, i32 80, i32 80, i32 80>
  %516 = sitofp <4 x i32> %515 to <4 x double>
  %517 = fmul fast <4 x double> %516, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %518 = shl i64 %index1280, 3
  %519 = add nuw nsw i64 %518, %511
  %520 = getelementptr i8, i8* %call, i64 %519
  %521 = bitcast i8* %520 to <4 x double>*
  store <4 x double> %517, <4 x double>* %521, align 8, !alias.scope !105, !noalias !107
  %index.next1281 = add i64 %index1280, 4
  %vec.ind.next1287 = add <4 x i32> %vec.ind1286, <i32 4, i32 4, i32 4, i32 4>
  %522 = icmp eq i64 %index.next1281, 32
  br i1 %522, label %polly.loop_exit846.21171, label %vector.body1278, !llvm.loop !130

polly.loop_exit846.21171:                         ; preds = %vector.body1278
  %polly.indvar_next842.21169 = add nuw nsw i64 %polly.indvar841.21159, 1
  %exitcond1110.21170.not = icmp eq i64 %polly.indvar_next842.21169, 16
  br i1 %exitcond1110.21170.not, label %polly.loop_header838.1.2, label %polly.loop_header838.21160

polly.loop_header838.1.2:                         ; preds = %polly.loop_exit846.21171, %polly.loop_exit846.1.2
  %polly.indvar841.1.2 = phi i64 [ %polly.indvar_next842.1.2, %polly.loop_exit846.1.2 ], [ 0, %polly.loop_exit846.21171 ]
  %523 = add nuw nsw i64 %polly.indvar841.1.2, 64
  %524 = mul nuw nsw i64 %523, 640
  %525 = trunc i64 %523 to i32
  %broadcast.splatinsert1300 = insertelement <4 x i32> poison, i32 %525, i32 0
  %broadcast.splat1301 = shufflevector <4 x i32> %broadcast.splatinsert1300, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1292

vector.body1292:                                  ; preds = %vector.body1292, %polly.loop_header838.1.2
  %index1294 = phi i64 [ 0, %polly.loop_header838.1.2 ], [ %index.next1295, %vector.body1292 ]
  %vec.ind1298 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header838.1.2 ], [ %vec.ind.next1299, %vector.body1292 ]
  %526 = add nuw nsw <4 x i64> %vec.ind1298, <i64 32, i64 32, i64 32, i64 32>
  %527 = trunc <4 x i64> %526 to <4 x i32>
  %528 = mul <4 x i32> %broadcast.splat1301, %527
  %529 = add <4 x i32> %528, <i32 3, i32 3, i32 3, i32 3>
  %530 = urem <4 x i32> %529, <i32 80, i32 80, i32 80, i32 80>
  %531 = sitofp <4 x i32> %530 to <4 x double>
  %532 = fmul fast <4 x double> %531, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %533 = extractelement <4 x i64> %526, i32 0
  %534 = shl i64 %533, 3
  %535 = add nuw nsw i64 %534, %524
  %536 = getelementptr i8, i8* %call, i64 %535
  %537 = bitcast i8* %536 to <4 x double>*
  store <4 x double> %532, <4 x double>* %537, align 8, !alias.scope !105, !noalias !107
  %index.next1295 = add i64 %index1294, 4
  %vec.ind.next1299 = add <4 x i64> %vec.ind1298, <i64 4, i64 4, i64 4, i64 4>
  %538 = icmp eq i64 %index.next1295, 32
  br i1 %538, label %polly.loop_exit846.1.2, label %vector.body1292, !llvm.loop !131

polly.loop_exit846.1.2:                           ; preds = %vector.body1292
  %polly.indvar_next842.1.2 = add nuw nsw i64 %polly.indvar841.1.2, 1
  %exitcond1110.1.2.not = icmp eq i64 %polly.indvar_next842.1.2, 16
  br i1 %exitcond1110.1.2.not, label %polly.loop_header838.2.2, label %polly.loop_header838.1.2

polly.loop_header838.2.2:                         ; preds = %polly.loop_exit846.1.2, %polly.loop_exit846.2.2
  %polly.indvar841.2.2 = phi i64 [ %polly.indvar_next842.2.2, %polly.loop_exit846.2.2 ], [ 0, %polly.loop_exit846.1.2 ]
  %539 = add nuw nsw i64 %polly.indvar841.2.2, 64
  %540 = mul nuw nsw i64 %539, 640
  %541 = trunc i64 %539 to i32
  %broadcast.splatinsert1312 = insertelement <4 x i32> poison, i32 %541, i32 0
  %broadcast.splat1313 = shufflevector <4 x i32> %broadcast.splatinsert1312, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1304

vector.body1304:                                  ; preds = %vector.body1304, %polly.loop_header838.2.2
  %index1306 = phi i64 [ 0, %polly.loop_header838.2.2 ], [ %index.next1307, %vector.body1304 ]
  %vec.ind1310 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header838.2.2 ], [ %vec.ind.next1311, %vector.body1304 ]
  %542 = add nuw nsw <4 x i64> %vec.ind1310, <i64 64, i64 64, i64 64, i64 64>
  %543 = trunc <4 x i64> %542 to <4 x i32>
  %544 = mul <4 x i32> %broadcast.splat1313, %543
  %545 = add <4 x i32> %544, <i32 3, i32 3, i32 3, i32 3>
  %546 = urem <4 x i32> %545, <i32 80, i32 80, i32 80, i32 80>
  %547 = sitofp <4 x i32> %546 to <4 x double>
  %548 = fmul fast <4 x double> %547, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %549 = extractelement <4 x i64> %542, i32 0
  %550 = shl i64 %549, 3
  %551 = add nuw nsw i64 %550, %540
  %552 = getelementptr i8, i8* %call, i64 %551
  %553 = bitcast i8* %552 to <4 x double>*
  store <4 x double> %548, <4 x double>* %553, align 8, !alias.scope !105, !noalias !107
  %index.next1307 = add i64 %index1306, 4
  %vec.ind.next1311 = add <4 x i64> %vec.ind1310, <i64 4, i64 4, i64 4, i64 4>
  %554 = icmp eq i64 %index.next1307, 16
  br i1 %554, label %polly.loop_exit846.2.2, label %vector.body1304, !llvm.loop !132

polly.loop_exit846.2.2:                           ; preds = %vector.body1304
  %polly.indvar_next842.2.2 = add nuw nsw i64 %polly.indvar841.2.2, 1
  %exitcond1110.2.2.not = icmp eq i64 %polly.indvar_next842.2.2, 16
  br i1 %exitcond1110.2.2.not, label %polly.loop_header865, label %polly.loop_header838.2.2
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

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
!35 = !{!"llvm.loop.tile.size", i32 64}
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
!49 = !{!"llvm.loop.tile.size", i32 32}
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
